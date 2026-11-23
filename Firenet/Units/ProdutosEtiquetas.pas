unit ProdutosEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, Buttons, DBSBtn, ExtCtrls, DB, DBClient,
  ImgList, PngImageList, PngSpeedButton, StdCtrls, Spin, System.ImageList,
  System.UITypes, Vcl.Mask, Vcl.DBCtrls;

type
  TFormProdutosEtiquetas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    DBGrid1: TDBGrid;
    TBProdutos: TClientDataSet;
    DSProdutos: TDataSource;
    ReiniciarSelecao1: TMenuItem;
    SpeedButton2: TPngSpeedButton;
    PngImageList1: TPngImageList;
    SpeedButton1: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    EtiquetasPPLBModelo011: TMenuItem;
    EtiquetasPimaco3: TMenuItem;
    ComboBox1: TComboBox;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox3: TComboBox;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_NOME: TStringField;
    TBProdutosPRO_CODIGOBARRAS: TStringField;
    TBProdutosPRO_CODIGOFAB: TStringField;
    TBProdutosPRO_QUANTIDADE: TIntegerField;
    TBProdutosPRO_PRECO: TCurrencyField;
    TBProdutosLOT_LOTE: TStringField;
    TBProdutosLOT_VALIDADE: TDateField;
    TBProdutosLOT_FABRICACAO: TDateField;
    TBProdutosPRO_LOCALIZACAO: TStringField;
    EtiquetasPimaco1: TMenuItem;
    EtiquetasPimaco2: TMenuItem;
    N2: TMenuItem;
    CadastroDeEtiquetas1: TMenuItem;
    SelecionarOutraEtiqueta1: TMenuItem;
    N3: TMenuItem;
    TBProdutosMAR_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure TBProdutosAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ReiniciarSelecao1Click(Sender: TObject);
    procedure TBProdutosBeforePost(DataSet: TDataSet);
    procedure Ajuda2Click(Sender: TObject);
    procedure EtiquetasPPLBModelo011Click(Sender: TObject);
    procedure EtiquetasPimaco3Click(Sender: TObject);
    procedure DSProdutosStateChange(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure EtiquetasPimaco1Click(Sender: TObject);
    procedure EtiquetasPimaco2Click(Sender: TObject);
    procedure CadastroDeEtiquetas1Click(Sender: TObject);
    procedure SelecionarOutraEtiqueta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosEtiquetas: TFormProdutosEtiquetas;

implementation
uses ProdutosLoc, Funcoes1, FuncoesFirenet, DataMod, LotesLoc, ProdutosFast, Etiquetas, EtiquetasLoc;

{$R *.dfm}

procedure TFormProdutosEtiquetas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if TBProdutos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
    Exit;
  end;
  TBProdutos.Destroy;
end;

procedure TFormProdutosEtiquetas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormProdutosEtiquetas.PngSpeedButton1Click(Sender: TObject);
begin
  AbortIf(TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=TBProdutosPRO_CODIGO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    if FormLotesLoc.QYLotesLOT_PRODUTO.Value<>DM.TBVendasItensVEI_PRODUTO.Value then
    MessageDlg('O lote selecionado não é do produto selecionado.',mtError,[mbOk],0) else
    begin
      TBProdutos.Edit;
      TBProdutosLOT_LOTE.Value:=FormLotesLoc.QYLotesLOT_LOTE.Value;
      TBProdutosLOT_FABRICACAO.Value:=FormLotesLoc.QYLotesLOT_FABRICACAO.Value;
      TBProdutosLOT_VALIDADE.Value:=FormLotesLoc.QYLotesLOT_VALIDADE.Value;
    end;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormProdutosEtiquetas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosEtiquetas.CadastroDeEtiquetas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtiquetas, FormEtiquetas);
  FormEtiquetas.ShowModal;
  FormEtiquetas.Free;
  FormEtiquetas:=nil;
end;

procedure TFormProdutosEtiquetas.DSProdutosStateChange(Sender: TObject);
begin
  if TBProdutos.State in [dsInsert, dsEdit] then
  begin
    CadastroDeEtiquetas1.Enabled:=False;
    SpeedButton2.Enabled:=False;
    Imprimir1.Enabled:=False;
    ReiniciarSelecao1.Enabled:=False;
    SelecionarOutraEtiqueta1.Enabled:=False;
  end else
  begin
    CadastroDeEtiquetas1.Enabled:=True;
    SpeedButton2.Enabled:=True;
    Imprimir1.Enabled:=True;
    ReiniciarSelecao1.Enabled:=True;
    SelecionarOutraEtiqueta1.Enabled:=True;
  end;
end;

procedure TFormProdutosEtiquetas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosEtiquetas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosEtiquetas.EtiquetasPimaco1Click(Sender: TObject);
var I: Integer;
begin
  Application.CreateForm(TFormProdutosFast, FormProdutosFast);
  FormProdutosFast.TBProdutosPrint.EmptyDataSet;
  FormProdutosFast.TBProdutosPrint.Open;
  FormProdutosFast.TBProdutosPrint.IndexFieldNames:='PRO_NOME';

  //inclui etiquetas em branco... para pular.
  if StrToInt(Edit2.Text) > 0 then
  begin
    for I:=1 to StrToInt(Edit2.Text) do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:='';
      FormProdutosFast.TBProdutosPrint.Post;
    end;
  end;

  //Multiplica a quantidade de etiquetas, gerando outro table compilado.
  TBProdutos.First;
  while not TBProdutos.Eof do
  begin
    for I:=1 to TBProdutosPRO_QUANTIDADE.Value do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=TBProdutosPRO_CODIGO.Value;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:=TBProdutosPRO_NOME.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:=TBProdutosPRO_CODIGOBARRAS.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:=TBProdutosPRO_CODIGOFAB.Value;
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=TBProdutosPRO_PRECO.Value;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:=TBProdutosPRO_LOCALIZACAO.Value;
      FormProdutosFast.TBProdutosPrint.Post;
    end;
    TBProdutos.Next;
  end;

  FormProdutosFast.frxReport14.Variables['BARTYPE']:=QuotedStr(ComboBox1.Text);
  FormProdutosFast.frxReport14.Variables['CAMPOCODIGO']:=QuotedStr(ComboBox2.Text);
  FormProdutosFast.frxReport14.Variables['MOSTRARPRECO']:=QuotedStr(ComboBox3.Text);
  FormProdutosFast.frxReport14.ShowReport;
  FormProdutosFast.Free;
  FormProdutosFast:=nil;
end;

procedure TFormProdutosEtiquetas.EtiquetasPimaco2Click(Sender: TObject);
var I: Integer;
begin
  Application.CreateForm(TFormProdutosFast, FormProdutosFast);
  FormProdutosFast.TBProdutosPrint.EmptyDataSet;
  FormProdutosFast.TBProdutosPrint.Open;
  FormProdutosFast.TBProdutosPrint.IndexFieldNames:='PRO_NOME';

  //inclui etiquetas em branco... para pular.
  if StrToInt(Edit2.Text) > 0 then
  begin
    for I:=1 to StrToInt(Edit2.Text) do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:='';
      FormProdutosFast.TBProdutosPrint.Post;
    end;
  end;

  //Multiplica a quantidade de etiquetas, gerando outro table compilado.
  TBProdutos.First;
  while not TBProdutos.Eof do
  begin
    for I:=1 to TBProdutosPRO_QUANTIDADE.Value do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=TBProdutosPRO_CODIGO.Value;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:=TBProdutosPRO_NOME.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:=TBProdutosPRO_CODIGOBARRAS.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:=TBProdutosPRO_CODIGOFAB.Value;
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=TBProdutosPRO_PRECO.Value;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:=TBProdutosPRO_LOCALIZACAO.Value;
      FormProdutosFast.TBProdutosPrint.Post;
    end;
    TBProdutos.Next;
  end;

  FormProdutosFast.frxReport15.Variables['BARTYPE']:=QuotedStr(ComboBox1.Text);
  FormProdutosFast.frxReport15.Variables['CAMPOCODIGO']:=QuotedStr(ComboBox2.Text);
  FormProdutosFast.frxReport15.Variables['MOSTRARPRECO']:=QuotedStr(ComboBox3.Text);
  FormProdutosFast.frxReport15.ShowReport;
  FormProdutosFast.Free;
  FormProdutosFast:=nil;
end;

procedure TFormProdutosEtiquetas.EtiquetasPimaco3Click(Sender: TObject);
var I: Integer;
begin
  Application.CreateForm(TFormProdutosFast, FormProdutosFast);
  FormProdutosFast.TBProdutosPrint.EmptyDataSet;
  FormProdutosFast.TBProdutosPrint.Open;
  FormProdutosFast.TBProdutosPrint.IndexFieldNames:='PRO_NOME';

  //inclui etiquetas em branco... para pular.
  if StrToInt(Edit2.Text) > 0 then
  begin
    for I:=1 to StrToInt(Edit2.Text) do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:='';
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:='';
      FormProdutosFast.TBProdutosPrint.Post;
    end;
  end;

  //Multiplica a quantidade de etiquetas, gerando outro table compilado.
  TBProdutos.First;
  while not TBProdutos.Eof do
  begin
    for I:=1 to TBProdutosPRO_QUANTIDADE.Value do
    begin
      FormProdutosFast.TBProdutosPrint.Insert;
      FormProdutosFast.TBProdutosPrintPRO_CODIGO.Value:=TBProdutosPRO_CODIGO.Value;
      FormProdutosFast.TBProdutosPrintPRO_NOME.Value:=TBProdutosPRO_NOME.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOBARRAS.Value:=TBProdutosPRO_CODIGOBARRAS.Value;
      FormProdutosFast.TBProdutosPrintPRO_CODIGOFAB.Value:=TBProdutosPRO_CODIGOFAB.Value;
      FormProdutosFast.TBProdutosPrintPRO_PRECO.Value:=TBProdutosPRO_PRECO.Value;
      FormProdutosFast.TBProdutosPrintPRO_QUANTIDADE.Value:=0;
      FormProdutosFast.TBProdutosPrintPRO_LOCALIZACAO.Value:=TBProdutosPRO_LOCALIZACAO.Value;
      FormProdutosFast.TBProdutosPrint.Post;
    end;
    TBProdutos.Next;
  end;

  FormProdutosFast.frxReport16.Variables['BARTYPE']:=QuotedStr(ComboBox1.Text);
  FormProdutosFast.frxReport16.Variables['CAMPOCODIGO']:=QuotedStr(ComboBox2.Text);
  FormProdutosFast.frxReport16.Variables['MOSTRARPRECO']:=QuotedStr(ComboBox3.Text);
  FormProdutosFast.frxReport16.ShowReport;
  FormProdutosFast.Free;
  FormProdutosFast:=nil;
end;

procedure TFormProdutosEtiquetas.EtiquetasPPLBModelo011Click(Sender: TObject);
begin
  DM.TBEtiquetas.Close;
  DM.TBEtiquetas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_ETIQUETAMODELO1.Value;
  DM.TBEtiquetas.Open;
  AbortIf(DM.TBEtiquetas.IsEmpty,'A configuração de etiqueta não foi encontrada.'+#13#10+'É necessário configurá-la nos Parâmetos do sistema. Certifique-se também que a configuração da etiqueta existe no cadastro de etiquetas.');

  TBProdutos.DisableControls;
  TBProdutos.First;
  while not TBProdutos.Eof do
  begin
    ImprimirEtiquetasPPLB_Novo;
    Sleep(500); //tempo para fechar o arquivo e enviar para a impressora.
    TBProdutos.Next;
  end;
  TBProdutos.EnableControls;
end;

procedure TFormProdutosEtiquetas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosEtiquetas.TBProdutosAfterInsert(DataSet: TDataSet);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      TBProdutosPRO_CODIGO.Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
      TBProdutosPRO_CODIGOBARRAS.Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGOBARRAS.Value;
      TBProdutosPRO_CODIGOFAB.Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGOFAB.Value;
      TBProdutosPRO_LOCALIZACAO.Value:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
      TBProdutosPRO_NOME.Value:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
      TBProdutosPRO_PRECO.Value:=FormProdutosLoc.QYProdutosCodigosPRO_PRECOVENDA.AsExtended;
      TBProdutosMAR_DESCRICAO.Value:=FormProdutosLoc.QYProdutosCodigosMAR_DESCRICAO.Value;
    end else
    begin
      TBProdutosPRO_CODIGO.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      TBProdutosPRO_CODIGOBARRAS.Value:=FormProdutosLoc.QYProdutosPRO_CODIGOBARRAS.Value;
      TBProdutosPRO_CODIGOFAB.Value:=FormProdutosLoc.QYProdutosPRO_CODIGOFAB.Value;
      TBProdutosPRO_LOCALIZACAO.Value:=FormProdutosLoc.QYProdutosPRO_LOCALIZACAO.Value;
      TBProdutosPRO_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
      TBProdutosPRO_PRECO.Value:=FormProdutosLoc.QYProdutosPRO_PRECOVENDA.AsExtended;
      TBProdutosMAR_DESCRICAO.Value:=FormProdutosLoc.QYProdutosMAR_DESCRICAO.Value;
    end;
  end else
  TBProdutos.Cancel;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProdutosEtiquetas.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1; //2 de 5 intercadado.
  ComboBox2.ItemIndex:=0; //codigo barras
  ComboBox3.ItemIndex:=0; //preco

  TBProdutos.EmptyDataSet;
  TBProdutos.Open;

  DBGrid1.Columns[0].Width:=57;
  DBGrid1.Columns[1].Width:=290;
  DBGrid1.Columns[2].Width:=120;
  DBGrid1.Columns[3].Width:=120;
  DBGrid1.Columns[4].Width:=64;
  DBGrid1.Columns[5].Width:=74;
end;

procedure TFormProdutosEtiquetas.ReiniciarSelecao1Click(
  Sender: TObject);
begin
  AbortIf(TBProdutos.IsEmpty,'Nenhum item selecionado.');

  if MessageDlg('Reiniciar seleção de produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  TBProdutos.EmptyDataSet;
end;

procedure TFormProdutosEtiquetas.SelecionarOutraEtiqueta1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtiquetasLoc, FormEtiquetasLoc);
  FormEtiquetasLoc.ShowModal;
  if EtiquetasLoc.Procurar then
  begin
    DM.TBEtiquetas.Close;
    DM.TBEtiquetas.ParamByName('codigo').AsInteger:=FormEtiquetasLoc.QYEtiquetasETQ_CODIGO.Value;
    DM.TBEtiquetas.Open;

    TBProdutos.DisableControls;
    TBProdutos.First;
    while not TBProdutos.Eof do
    begin
      ImprimirEtiquetasPPLB_Novo;
      Sleep(500); //tempo para fechar o arquivo e enviar para a impressora.
      TBProdutos.Next;
    end;
    TBProdutos.EnableControls;
  end;
  FormEtiquetasLoc.Free;
  FormEtiquetasLoc:=nil;
end;

procedure TFormProdutosEtiquetas.TBProdutosBeforePost(DataSet: TDataSet);
begin
  TBProdutosPRO_QUANTIDADE.Value:=StrToInt(InputBox('Quantidade','Digite a quantidade de etiquetas','1'));
end;

end.
