unit NfeAlterarFreteSeguroAcessorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, DB, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfeAlterarFreteSeguroAcessorias = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYNfeItens: TFDQuery;
    TRNfeItens: TFDTransaction;
    QYNfeItensQTDEITENS: TLargeintField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeAlterarFreteSeguroAcessorias: TFormNfeAlterarFreteSeguroAcessorias;
  Campo: String;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormNfeAlterarFreteSeguroAcessorias.BitBtn1Click(Sender: TObject);
var Valor: Extended;
begin
  QYNfeItens.Close;
  QYNfeItens.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  QYNfeItens.Open;

  //CAMPO FRETE.
  if Campo='FRETE' then
  begin
    if MessageDlg('Confirma alteração do valor do frete?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNfeItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNfeItens.DisableControls;
      DM.TBNfe.DisableControls;
      DM.TBNfeItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNfeItens.Eof do
      begin
        DM.TBNfeItens.Edit;
        DM.TBNfeItensNFI_VALORFRETE.Value:=Valor;
        DM.TBNfeItens.Post;
        DM.TBNfeItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNfe.EnableControls;
      DM.TBNfeItens.EnableControls;
      DM.CalcularTotaisNFe(False);
    end;
  end;

  //CAMPO SEGURO.
  if Campo='SEGURO' then
  begin
    if MessageDlg('Confirma alteração do valor do seguro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNfeItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNfeItens.DisableControls;
      DM.TBNfe.DisableControls;
      DM.TBNfeItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNfeItens.Eof do
      begin
        DM.TBNfeItens.Edit;
        DM.TBNfeItensNFI_VALORSEGURO.Value:=Valor;
        DM.TBNfeItens.Post;
        DM.TBNfeItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNfe.EnableControls;
      DM.TBNfeItens.EnableControls;
      DM.CalcularTotaisNFe(False);
    end;
  end;


  //CAMPO ACESSORIAS.
  if Campo='ACESSORIAS' then
  begin
    if MessageDlg('Confirma alteração do valor das despesas acessórias',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNfeItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNfeItens.DisableControls;
      DM.TBNfe.DisableControls;
      DM.TBNfeItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNfeItens.Eof do
      begin
        DM.TBNfeItens.Edit;
        DM.TBNfeItensNFI_VALORACESSORIAS.Value:=Valor;
        DM.TBNfeItens.Post;
        DM.TBNfeItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNfe.EnableControls;
      DM.TBNfeItens.EnableControls;
      DM.CalcularTotaisNFe(False);
    end;
  end;

  QYNfeItens.Close;
  Close;
end;

procedure TFormNfeAlterarFreteSeguroAcessorias.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeAlterarFreteSeguroAcessorias.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarFreteSeguroAcessorias.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
