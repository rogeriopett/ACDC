unit VendasAlterarDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormVendasAlterarDescontoItem = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasAlterarDescontoItem: TFormVendasAlterarDescontoItem;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormVendasAlterarDescontoItem.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then //calcula a porcentagem caso seja informado em valor.
    Porcentagem:=(100.0 / (DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_VALORUNIT.AsExtended) ) * StrToFloat(Edit1.Text);
    //acho q tá incorreto calcular a porcentagem com frete seguro e acessorias.
    //    Porcentagem:=(100.0/((DM.TBVendasItensVEI_QUANTIDADE.Value*DM.TBVendasItensVEI_VALORUNIT.Value)+
    //                          DM.TBVendasItensVEI_VALORFRETE.Value+
    //                          DM.TBVendasItensVEI_VALORSEGURO.Value+
    //                          DM.TBVendasItensVEI_VALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBProdutos.Open;
    if Porcentagem > DM.TBVendasItensVEI_DESCMAX.Value then
    begin
      MessageDlg('O desconto máximo permitido para este item é de '+DM.TBProdutosPRO_DESCMAX.AsString+'%.',mtWarning,[mbOk],0);
      Porcentagem:=DM.TBVendasItensVEI_DESCMAX.AsFloat;
    end;
    DM.TBVendasItensVEI_DESCPORC.Value:=Porcentagem;
    DM.CalcularTotaisVendaItens(False);
    Close;
  end;
end;

procedure TFormVendasAlterarDescontoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasAlterarDescontoItem.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormVendasAlterarDescontoItem.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormVendasAlterarDescontoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
