unit NfeAlterarDescontoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormNfeAlterarDescontoItem = class(TForm)
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
  FormNfeAlterarDescontoItem: TFormNfeAlterarDescontoItem;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormNfeAlterarDescontoItem.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then //calcula a porcentagem caso seja informado em valor.
    Porcentagem:=(100.0 / (DM.TBNfeItensNFI_QUANTIDADE.AsExtended*DM.TBNfeItensNFI_VALORUNIT.AsExtended) ) * StrToFloat(Edit1.Text);
    //acho q tá incorreto calcular a porcentagem com frete seguro e acessorias.
    //    Porcentagem:=(100.0/((DM.TBNfeItensNFI_QUANTIDADE.Value*DM.TBNfeItensNFI_VALORUNIT.Value)+
    //                          DM.TBNfeItensNFI_VALORFRETE.Value+
    //                          DM.TBNfeItensNFI_VALORSEGURO.Value+
    //                          DM.TBNfeItensNFI_VALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
    DM.TBProdutos.Open;
    if Porcentagem > DM.TBProdutosPRO_DESCMAX.Value then
    begin
      MessageDlg('O desconto máximo permitido para este item é de '+DM.TBProdutosPRO_DESCMAX.AsString+'%.',mtWarning,[mbOk],0);
      Porcentagem:=DM.TBProdutosPRO_DESCMAX.AsExtended;
    end;
    DM.TBNfeItensNFI_DESCPORC.Value:=Porcentagem;
    DM.CalcularTotaisNfeItens(False);
    Close;
  end;
end;

procedure TFormNfeAlterarDescontoItem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeAlterarDescontoItem.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarDescontoItem.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormNfeAlterarDescontoItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
