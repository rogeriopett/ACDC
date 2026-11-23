unit ServicosAlterarDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormServicosAlterarDescontoItem = class(TForm)
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
  FormServicosAlterarDescontoItem: TFormServicosAlterarDescontoItem;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormServicosAlterarDescontoItem.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then //calcula a porcentagem caso seja informado em valor.
    Porcentagem:=(100.0 / (DM.TBServicosItensSEI_QUANTIDADE.AsExtended*DM.TBServicosItensSEI_VALORUNIT.AsExtended) ) * StrToFloat(Edit1.Text);
    //acho q tá incorreto calcular a porcentagem com frete seguro e acessorias.
    //    Porcentagem:=(100.0/((DM.TBServicosItensSEI_QUANTIDADE.Value*DM.TBServicosItensSEI_VALORUNIT.Value)+
    //                          DM.TBServicosItensSEI_VALORFRETE.Value+
    //                          DM.TBServicosItensSEI_VALORSEGURO.Value+
    //                          DM.TBServicosItensSEI_VALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBServicosItensSEI_PRODUTO.Value;
    DM.TBProdutos.Open;
    if Porcentagem > DM.TBProdutosPRO_DESCMAX.Value then
    begin
      MessageDlg('O desconto máximo permitido para este item é de '+DM.TBProdutosPRO_DESCMAX.AsString+'%.',mtWarning,[mbOk],0);
      Porcentagem:=DM.TBProdutosPRO_DESCMAX.AsExtended;
    end;
    DM.TBServicosItensSEI_DESCPORC.Value:=Porcentagem;
    DM.CalcularTotaisServicosItens(False);
    Close;
  end;
end;

procedure TFormServicosAlterarDescontoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicosAlterarDescontoItem.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormServicosAlterarDescontoItem.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormServicosAlterarDescontoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
