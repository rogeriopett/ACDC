unit NfceAlterarDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfceAlterarDesconto = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    QYNfceItens: TFDQuery;
    TRNfceItens: TFDTransaction;
    QYNfceItensVALORTOTALBRUTO: TFMTBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceAlterarDesconto: TFormNfceAlterarDesconto;
  DescontoEmValor: Boolean=False;
implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfceAlterarDesconto.BitBtn1Click(Sender: TObject);
var ValorDescontoTotal, Porcentagem, TotalBruto, ValorDescontoItem, SomaDescontosJaAtribuidos: Extended;
begin
  QYNfceItens.Close;
  QYNfceItens.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  QYNfceItens.Open;
  TotalBruto:=QYNfceItensVALORTOTALBRUTO.AsExtended; //TEM SUM(*) NO SQL.
  QYNfceItens.Close;

  //zera o acrescimo se tiver.
  if DM.TBNfceNFC_ACREVALOR.Value>0 then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEITENS set NCI_VALORACESSORIAS=0 where NCI_NOTA=:nota');
    DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_ACREPORC.Value:=0;
    DM.TBNfceNFC_ACREVALOR.Value:=0;
    DM.TBNfce.Post;
  end;

  //digitou em porcentagem por padrao.
  Porcentagem:=StrToFloat(Edit1.Text);
  ValorDescontoTotal:=Decimais((TotalBruto / 100.0) * Porcentagem, 2);

  //se for em valor, calcula a nova porcentagem.
  if RadioButton1.Checked=True then
  begin
    Porcentagem:=Decimais( (100.0/TotalBruto) * StrToFloat(Edit1.Text), 8);
    ValorDescontoTotal:=Decimais(StrToFloat(Edit1.Text),2);
  end;

  //distribui a nova porcentagem entre os itens.
  SomaDescontosJaAtribuidos:=0;
  DM.TBNfceItens.First;
  DM.TBNfceItens.FetchAll;
  DM.TBNfceItens.DisableControls;
  while not DM.TBNfceItens.Eof do
  begin
    DM.TBNfceItens.Edit;

    // 1. Se NÃO for o último item da lista
    if DM.TBNfceItens.RecNo < DM.TBNfceItens.RecordCount then
    begin
      // Calculamos o desconto proporcional ao peso deste item no total da nota
      // Sempre arredondando para 2 casas (o que o XML aceita)
      ValorDescontoItem:=Decimais((DM.TBNfceItensNCI_VALORTOTALBRUTO.AsExtended / TotalBruto) * ValorDescontoTotal, 2);
      SomaDescontosJaAtribuidos:=SomaDescontosJaAtribuidos + ValorDescontoItem;
    end else
    begin
      // 2. SE FOR O ÚLTIMO ITEM: Não calcula, apenas joga a diferença (o resíduo)
      // Isso garante que 10,00 - 9,99 = 0,01 vá para o último item e feche a conta.
      ValorDescontoItem:=ValorDescontoTotal - SomaDescontosJaAtribuidos;
    end;

    // Atualiza os campos
    DM.TBNfceItensNCI_DESCVALOR.AsFloat:=ValorDescontoItem;

    // Recalcula a porcentagem "real" desse item (para o banco/relatórios)
    if DM.TBNfceItensNCI_VALORTOTALBRUTO.AsExtended > 0 then
    DM.TBNfceItensNCI_DESCPORC.AsExtended:=(ValorDescontoItem / DM.TBNfceItensNCI_VALORTOTALBRUTO.AsExtended) * 100 else
    DM.TBNfceItensNCI_DESCPORC.AsExtended:=0;

    DM.TBNfceItens.Post;
    DM.TBNfceItens.Next;
  end;
  DM.TBNfceItens.EnableControls;
//  DM.QYAux.Close;
//  DM.QYAux.SQL.Clear;
//  DM.QYAux.SQL.Add(
//    'update NFCEITENS set '+
//    'NCI_DESCPORC=:porcentagem, '+
//    'NCI_DESCVALOR = (NCI_VALORTOTALBRUTO / 100.0) * :porcentagem '+
//    'where NCI_NOTA=:codigo'
//  );
//  DM.QYAux.ParamByName('porcentagem').AsFloat:=Porcentagem;
//  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
//  DM.QYAux.ExecSQL;

  DM.CalcularTotaisNFCe(True);
  DM.TBNfceItens.Close;
  DM.TBNfceItens.Open;
  Close;
end;

procedure TFormNfceAlterarDesconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceAlterarDesconto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfceAlterarDesconto.FormCreate(Sender: TObject);
begin
  RadioButton1.Checked:=True;
end;

procedure TFormNfceAlterarDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
