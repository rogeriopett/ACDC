unit ProdutosEstoqueAtual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls, Vcl.ExtCtrls, PngSpeedButton;

type
  TFormProdutosEstoqueAtual = class(TForm)
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label24: TLabel;
    ComboBox1: TComboBox;
    DBText3: TDBText;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosEstoqueAtual: TFormProdutosEstoqueAtual;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosEstoqueAtual.BitBtn1Click(Sender: TObject);
begin
  if Edit3.Text<>'' then
  begin
    if ComboBox1.Text='ENTRADA' then
    begin
      if MessageDlg('Confirma a entrada de mais '+Edit3.Text+' neste produto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=StrToInt(Edit5.Text);
        DM.TBEstoqueEST_DESCRICAO.Value:='LANCAMENTO DE AJUSTE DE ESTOQUE VIA CADASTRO DE PRODUTO.';
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
        DM.TBEstoqueEST_QUANTIDADE.Value:=StrToFloat(Edit3.Text);
        DM.TBEstoqueEST_TRANSACAO.Value:='E';
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
        DM.TBEstoque.Post;
        Close;
      end;
    end;

    if ComboBox1.Text='SAIDA' then
    begin
      if MessageDlg('Confirma a saída de mais '+Edit3.Text+' neste produto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=StrToInt(Edit5.Text);
        DM.TBEstoqueEST_DESCRICAO.Value:='LANCAMENTO DE AJUSTE DE ESTOQUE VIA CADASTRO DE PRODUTO.';
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
        DM.TBEstoqueEST_QUANTIDADE.Value:=StrToFloat(Edit3.Text);
        DM.TBEstoqueEST_TRANSACAO.Value:='S';
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
        DM.TBEstoque.Post;
        Close;
      end;
    end;

  end;
end;

procedure TFormProdutosEstoqueAtual.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosEstoqueAtual.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosEstoqueAtual.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosEstoqueAtual.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosEstoqueAtual.Edit5Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(Edit5,Edit6);
end;

procedure TFormProdutosEstoqueAtual.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosEstoqueAtual.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosEstoqueAtual.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  DM.TBAlmoxarifados.Close;
  DM.TBAlmoxarifados.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  DM.TBAlmoxarifados.Open;
  Edit5.Text:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value.ToString;
  Edit6.Text:=DM.TBAlmoxarifadosALM_DESCRICAO.Value;
end;

procedure TFormProdutosEstoqueAtual.SpeedButton2Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(Edit5,Edit6);
end;

end.
