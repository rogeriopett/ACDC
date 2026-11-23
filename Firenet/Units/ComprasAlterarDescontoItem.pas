unit ComprasAlterarDescontoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls;

type
  TFormComprasAlterarDescontoItem = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasAlterarDescontoItem: TFormComprasAlterarDescontoItem;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormComprasAlterarDescontoItem.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then //calcula a porcentagem caso seja informado em valor.
    Porcentagem:=(100.0 / (DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_VALORUNIT.AsExtended) ) * StrToFloat(Edit1.Text);
    //acho q tá incorreto calcular a porcentagem com frete seguro e acessorias.
    //    Porcentagem:=(100.0/((DM.TBVendasItensVEI_QUANTIDADE.Value*DM.TBVendasItensVEI_VALORUNIT.Value)+
    //                          DM.TBVendasItensVEI_VALORFRETE.Value+
    //                          DM.TBVendasItensVEI_VALORSEGURO.Value+
    //                          DM.TBVendasItensVEI_VALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //nao tem desconto maximo para compras.
    //if Porcentagem > DM.TBComprasItensCOI_DESCMAX.Value then
    //begin
    //  MessageDlg('O desconto máximo permitido para este item é de '+DM.TBProdutosPRO_DESCMAX.AsString+'%.',mtWarning,[mbOk],0);
    //  Porcentagem:=DM.TBComprasItensCOI_DESCMAX.AsFloat;
    //end;
    DM.TBComprasItensCOI_DESCPORC.Value:=Porcentagem;
    DM.CalcularTotaisCompraItens(False);
    Close;
  end;
end;

procedure TFormComprasAlterarDescontoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasAlterarDescontoItem.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarDescontoItem.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormComprasAlterarDescontoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
