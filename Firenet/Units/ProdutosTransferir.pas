unit ProdutosTransferir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, PngSpeedButton, DBCtrls,
  System.UITypes, Data.DB;

type
  TFormProdutosTransferir = class(TForm)
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit7: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosTransferir: TFormProdutosTransferir;

implementation
uses DataMod, DataModSearch, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosTransferir.BitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit6.Text='','Informe o almoxarifado de origem.');
  AbortIf(Edit2.Text='','Informe o almoxarifado de destino.');
  AbortIf(Edit6.Text=Edit2.Text,'Os almoxarifados de origem e destino não podem ser os mesmos.');
  AbortIf(Edit3.Text='','Informe a quantidade.');
  AbortIf(StrToFloat(Edit3.Text) > StrToFloat(Edit4.Text),'A quantidade não pode ser maior do que a quantidade disponível no almoxarifado.');  //quantidade maior do que tem no almoxarifado.
  AbortIf(StrToFloat(Edit3.Text)<=0,'A quantidade não pode ser menor ou igual a zero.');

  if MessageDlg('Transferir '+Edit3.Text+' do almoxarifado '+Edit6.Text+' para '+Edit2.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //saida de um almoxarifado.
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=StrToInt(Edit5.Text);
    DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBEstoqueEST_TRANSACAO.Value:='S';
    DM.TBEstoqueEST_DESCRICAO.Value:='TRANSFERENCIA ENTRE ALMOXARIFADOS';
    DM.TBEstoqueEST_QUANTIDADE.Value:=StrToFloat(Edit3.Text);
    DM.TBEstoque.Post;

    //entrada em outro almoxarifado.
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=StrToInt(Edit1.Text);
    DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBEstoqueEST_TRANSACAO.Value:='E';
    DM.TBEstoqueEST_DESCRICAO.Value:='TRANSFERENCIA ENTRE ALMOXARIFADOS';
    DM.TBEstoqueEST_QUANTIDADE.Value:=StrToFloat(Edit3.Text);
    DM.TBEstoque.Post;
    MessageDlg('Quantidade transferida com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormProdutosTransferir.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosTransferir.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosTransferir.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosTransferir.Edit1Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(Edit1,Edit2);
  if Edit2.Text<>'' then
  begin
    DM.TBProdutosQtde.Locate('PRQ_PRODUTO;PRQ_ALMOXARIFADO',VarArrayOf([DM.TBProdutosPRO_CODIGO.Value,Edit1.Text]),[]);
    Edit7.Text:=DM.TBProdutosQtdePRQ_QUANTIDADE.AsString;
  end else
  Edit7.Clear;
end;

procedure TFormProdutosTransferir.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProdutosTransferir.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosTransferir.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosTransferir.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosTransferir.Edit5Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(Edit5,Edit6);
  if Edit6.Text<>'' then
  begin
    DM.TBProdutosQtde.Locate('PRQ_PRODUTO;PRQ_ALMOXARIFADO',VarArrayOf([DM.TBProdutosPRO_CODIGO.Value,Edit5.Text]),[]);
    Edit4.Text:=DM.TBProdutosQtdePRQ_QUANTIDADE.AsString;
  end else
  Edit4.Clear;
end;

procedure TFormProdutosTransferir.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosTransferir.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosTransferir.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosTransferir.PngSpeedButton1Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(Edit1,Edit2);
  if Edit2.Text<>'' then
  begin
    DM.TBProdutosQtde.Locate('PRQ_PRODUTO;PRQ_ALMOXARIFADO',VarArrayOf([DM.TBProdutosPRO_CODIGO.Value,Edit1.Text]),[]);
    Edit7.Text:=DM.TBProdutosQtdePRQ_QUANTIDADE.AsString;
  end else
  Edit7.Clear;
end;

procedure TFormProdutosTransferir.SpeedButton2Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(Edit5,Edit6);
  if Edit6.Text<>'' then
  begin
    DM.TBProdutosQtde.Locate('PRQ_PRODUTO;PRQ_ALMOXARIFADO',VarArrayOf([DM.TBProdutosPRO_CODIGO.Value,Edit5.Text]),[]);
    Edit4.Text:=DM.TBProdutosQtdePRQ_QUANTIDADE.AsString;
  end else
  Edit4.Clear;
end;

end.
