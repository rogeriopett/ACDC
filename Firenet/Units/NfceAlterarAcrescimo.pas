unit NfceAlterarAcrescimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls;

type
  TFormNfceAlterarAcrescimo = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    QYNfceItens: TFDQuery;
    QYNfceItensVALORTOTALBRUTO: TFMTBCDField;
    TRNfceItens: TFDTransaction;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceAlterarAcrescimo: TFormNfceAlterarAcrescimo;
  DescontoEmValor: Boolean=False;
implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfceAlterarAcrescimo.BitBtn1Click(Sender: TObject);
var QtdeItens, CodigoItemAleatorio: Integer;
  ValorAcrescimo, ValorPoritem, ValorDiferenca: Extended;
begin
  //zera o desconto se tiver.
  if DM.TBNfceNFC_DESCVALOR.Value>0 then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEITENS set NCI_DESCPORC=0, NCI_DESCVALOR=0 where NCI_NOTA=:nota');
    DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_DESCPORC.Value:=0;
    DM.TBNfceNFC_DESCVALOR.Value:=0;
    DM.TBNfce.Post;
  end;

  ValorAcrescimo:=StrToFloat(Edit1.Text);

  //se for em valor, calcula a nova porcentagem.
  //if RadioButton1.Checked=True then
  //begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE, min(NCI_CODIGO) as ITEM from NFCEITENS where NCI_NOTA=:nota');
    DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.Open;
    QtdeItens:=DM.QYAux.FieldByName('QTDE').AsInteger;
    CodigoItemAleatorio:=DM.QYAux.FieldByName('ITEM').AsInteger;
    DM.QYAux.Close;
    ValorPorItem:=Decimais(ValorAcrescimo / QtdeItens,2);
    ValorDiferenca:=0;
    if (ValorPorItem * QtdeItens) <> ValorAcrescimo then
    begin
      if (ValorPorItem * QtdeItens) > ValorAcrescimo then
      ValorDiferenca:=(ValorPorItem * QtdeItens) - ValorAcrescimo else
      ValorDiferenca:=ValorAcrescimo - (ValorPorItem * QtdeItens);
    end;
  //end;

  //distribui o acrescimo entre os itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update NFCEITENS set NCI_VALORACESSORIAS=:valor where NCI_NOTA=:codigo');
  DM.QYAux.ParamByName('valor').AsFloat:=ValorPorItem;
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  DM.QYAux.ExecSQL;

  //verifica se tem diferença no total.
  if ValorDiferenca<>0 then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEITENS set NCI_VALORACESSORIAS=:valor where NCI_NOTA=:codigo and NCI_CODIGO=:item');
    DM.QYAux.ParamByName('valor').AsFloat:=ValorPorItem + ValorDiferenca;
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ParamByName('item').AsInteger:=CodigoItemAleatorio;
    DM.QYAux.ExecSQL;
  end;

  DM.CalcularTotaisNFCe(True);
  DM.TBNfceItens.Close;
  DM.TBNfceItens.Open;
  Close;
end;

procedure TFormNfceAlterarAcrescimo.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceAlterarAcrescimo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfceAlterarAcrescimo.FormCreate(Sender: TObject);
begin
  RadioButton1.Checked:=True;
end;

procedure TFormNfceAlterarAcrescimo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
