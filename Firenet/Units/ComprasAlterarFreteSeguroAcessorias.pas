unit ComprasAlterarFreteSeguroAcessorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.UITypes, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormComprasAlterarFreteseguroAcessorias = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYComprasItens: TFDQuery;
    TRComprasItens: TFDTransaction;
    QYComprasItensQTDEITENS: TLargeintField;
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
  FormComprasAlterarFreteseguroAcessorias: TFormComprasAlterarFreteseguroAcessorias;
  Campo: String;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormComprasAlterarFreteseguroAcessorias.BitBtn1Click(Sender: TObject);
var Valor: Currency;
begin
  QYComprasItens.Close;
  QYComprasItens.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
  QYComprasItens.Open;

  //CAMPO FRETE.
  if Campo='FRETE' then
  begin
    if MessageDlg('Confirma alteração do valor do frete?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYComprasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBComprasItens.DisableControls;
      DM.TBCompras.DisableControls;
      DM.TBComprasItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBComprasItens.Eof do
      begin
        DM.TBComprasItens.Edit;
        DM.TBComprasItensCOI_VALORFRETE.Value:=Valor;
        DM.TBComprasItens.Post;
        DM.TBComprasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBCompras.EnableControls;
      DM.TBComprasItens.EnableControls;
      DM.CalcularTotaisCompra(False);
    end;
  end;

  //CAMPO SEGURO.
  if Campo='SEGURO' then
  begin
    if MessageDlg('Confirma alteração do valor do seguro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYComprasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBComprasItens.DisableControls;
      DM.TBCompras.DisableControls;
      DM.TBComprasItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBComprasItens.Eof do
      begin
        DM.TBComprasItens.Edit;
        DM.TBComprasItensCOI_VALORSEGURO.Value:=Valor;
        DM.TBComprasItens.Post;
        DM.TBComprasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBCompras.EnableControls;
      DM.TBComprasItens.EnableControls;
      DM.CalcularTotaisCompra(False);
    end;
  end;


  //CAMPO ACESSORIAS.
  if Campo='ACESSORIAS' then
  begin
    if MessageDlg('Confirma alteração do valor das despesas acessórias',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYComprasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBComprasItens.DisableControls;
      DM.TBCompras.DisableControls;
      DM.TBComprasItens.First;
      DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBComprasItens.Eof do
      begin
        DM.TBComprasItens.Edit;
        DM.TBComprasItensCOI_VALORACESSORIAS.Value:=Valor;
        DM.TBComprasItens.Post;
        DM.TBComprasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBCompras.EnableControls;
      DM.TBComprasItens.EnableControls;
      DM.CalcularTotaisCompra(False);
    end;
  end;

  QYComprasItens.Close;
  Close;
end;

procedure TFormComprasAlterarFreteseguroAcessorias.BitBtn2Click(
  Sender: TObject);
begin
  Close;
end;

procedure TFormComprasAlterarFreteseguroAcessorias.Edit1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarFreteseguroAcessorias.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
