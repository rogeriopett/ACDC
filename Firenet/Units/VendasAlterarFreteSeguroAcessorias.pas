unit VendasAlterarFreteSeguroAcessorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVendasAlterarFreteSeguroAcessorias = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYVendasItens: TFDQuery;
    TRVendasItens: TFDTransaction;
    QYVendasItensQTDEITENS: TLargeintField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasAlterarFreteSeguroAcessorias: TFormVendasAlterarFreteSeguroAcessorias;
  Campo: String;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormVendasAlterarFreteSeguroAcessorias.BitBtn1Click(Sender: TObject);
var Valor: Extended;
begin
  QYVendasItens.Close;
  QYVendasItens.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  QYVendasItens.Open;

  //CAMPO FRETE.
  if Campo='FRETE' then
  begin
    if MessageDlg('Confirma alteração do valor do frete?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYVendasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBVendasItens.DisableControls;
      DM.TBVendas.DisableControls;
      DM.TBVendasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBVendasItens.Eof do
      begin
        DM.TBVendasItens.Edit;
        DM.TBVendasItensVEI_VALORFRETE.Value:=Valor;
        DM.TBVendasItens.Post;
        DM.TBVendasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBVendas.EnableControls;
      DM.TBVendasItens.EnableControls;
      DM.CalcularTotaisVenda(False);
    end;
  end;

  //CAMPO SEGURO.
  if Campo='SEGURO' then
  begin
    if MessageDlg('Confirma alteração do valor do seguro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYVendasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBVendasItens.DisableControls;
      DM.TBVendas.DisableControls;
      DM.TBVendasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBVendasItens.Eof do
      begin
        DM.TBVendasItens.Edit;
        DM.TBVendasItensVEI_VALORSEGURO.Value:=Valor;
        DM.TBVendasItens.Post;
        DM.TBVendasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBVendas.EnableControls;
      DM.TBVendasItens.EnableControls;
      DM.CalcularTotaisVenda(False);
    end;
  end;


  //CAMPO ACESSORIAS.
  if Campo='ACESSORIAS' then
  begin
    if MessageDlg('Confirma alteração do valor das despesas acessórias',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYVendasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBVendasItens.DisableControls;
      DM.TBVendas.DisableControls;
      DM.TBVendasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBVendasItens.Eof do
      begin
        DM.TBVendasItens.Edit;
        DM.TBVendasItensVEI_VALORACESSORIAS.Value:=Valor;
        DM.TBVendasItens.Post;
        DM.TBVendasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBVendas.EnableControls;
      DM.TBVendasItens.EnableControls;
      DM.CalcularTotaisVenda(False);
    end;
  end;

  QYVendasItens.Close;
  Close;
end;

procedure TFormVendasAlterarFreteSeguroAcessorias.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasAlterarFreteSeguroAcessorias.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormVendasAlterarFreteSeguroAcessorias.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
