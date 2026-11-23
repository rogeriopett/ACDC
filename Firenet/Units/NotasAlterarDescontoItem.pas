unit NotasAlterarDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormNotasAlterarDescontoItem = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotasAlterarDescontoItem: TFormNotasAlterarDescontoItem;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormNotasAlterarDescontoItem.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then //calcula a porcentagem caso seja informado em valor.
    Porcentagem:=(100.0 / (DM.TBNotasItensNOI_QUANTIDADE.AsExtended*DM.TBNotasItensNOI_VALORUNIT.AsExtended) ) * StrToFloat(Edit1.Text);
    //acho q tá incorreto calcular a porcentagem com frete seguro e acessorias.
    //    Porcentagem:=(100.0/((DM.TBNotasItensNOI_QUANTIDADE.Value*DM.TBNotasItensNOI_VALORUNIT.Value)+
    //                          DM.TBNotasItensNOI_VALORFRETE.Value+
    //                          DM.TBNotasItensNOI_VALORSEGURO.Value+
    //                          DM.TBNotasItensNOI_VALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value;
    DM.TBProdutos.Open;
    if Porcentagem > DM.TBProdutosPRO_DESCMAX.Value then
    begin
      MessageDlg('O desconto máximo permitido para este item é de '+DM.TBProdutosPRO_DESCMAX.AsString+'%.',mtWarning,[mbOk],0);
      Porcentagem:=DM.TBProdutosPRO_DESCMAX.AsExtended;
    end;
    DM.TBNotasItensNOI_DESCPORC.Value:=Porcentagem;
    DM.CalcularTotaisNotaItens(False);
    Close;
  end;
end;

procedure TFormNotasAlterarDescontoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotasAlterarDescontoItem.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNotasAlterarDescontoItem.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormNotasAlterarDescontoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
