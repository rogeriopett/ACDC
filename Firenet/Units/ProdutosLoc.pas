unit ProdutosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.ExtCtrls;

type
  TFormProdutosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DSProdutos: TDataSource;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    DSProdutosCodigos: TDataSource;
    Edit8: TEdit;
    Label8: TLabel;
    QYProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    QYProdutosCodigos: TFDQuery;
    TRProdutosCodigos: TFDTransaction;
    QYProdutosCodigosPCO_PRODUTO: TIntegerField;
    QYProdutosCodigosPCO_FORNECEDOR: TIntegerField;
    QYProdutosCodigosPCO_CODIGOFORNECEDOR: TStringField;
    QYProdutosCodigosPRO_CODIGO: TIntegerField;
    QYProdutosCodigosPRO_CODIGOBARRAS: TStringField;
    QYProdutosCodigosPRO_CODIGOFAB: TStringField;
    QYProdutosCodigosPRO_ESTOQUEATUAL: TFMTBCDField;
    QYProdutosCodigosPRO_LOCALIZACAO: TStringField;
    QYProdutosCodigosPRO_NOME: TStringField;
    QYProdutosCodigosPRO_PRECOCUSTO: TFMTBCDField;
    QYProdutosCodigosPRO_PRECOVENDA: TFMTBCDField;
    QYProdutosCodigosPRO_PRODUTOREAL: TIntegerField;
    QYProdutosCodigosFOR_NOME: TStringField;
    QYProdutosCodigosMAR_DESCRICAO: TStringField;
    QYProdutosPRO_ALIQISS: TFMTBCDField;
    QYProdutosPRO_CEST: TStringField;
    QYProdutosPRO_CLASSFISCAL: TStringField;
    QYProdutosPRO_CODIGO: TIntegerField;
    QYProdutosPRO_CODIGOBARRAS: TStringField;
    QYProdutosPRO_CODIGOFAB: TStringField;
    QYProdutosPRO_COMPOSTO: TStringField;
    QYProdutosPRO_ESTOQUEATUAL: TFMTBCDField;
    QYProdutosPRO_LOCALIZACAO: TStringField;
    QYProdutosPRO_NOME: TStringField;
    QYProdutosPRO_PRECOCUSTO: TFMTBCDField;
    QYProdutosPRO_PRECOVENDA: TFMTBCDField;
    QYProdutosPRO_PRODUTOREAL: TIntegerField;
    QYProdutosPRO_TIPOISS: TStringField;
    QYProdutosPRO_TIPOITEM: TStringField;
    QYProdutosPRO_UNIDADE: TStringField;
    QYProdutosGRU_DESCRICAO: TStringField;
    QYProdutosISS_DESCRICAO: TStringField;
    QYProdutosMAR_DESCRICAO: TStringField;
    QYProdutosPRO_PRECO1: TFMTBCDField;
    QYProdutosPRO_PRECO2: TFMTBCDField;
    QYProdutosPRO_PRECO3: TFMTBCDField;
    QYProdutosPRO_PRECO4: TFMTBCDField;
    QYProdutosPRO_PRECO5: TFMTBCDField;
    QYProdutosPRO_PRECO6: TFMTBCDField;
    QYProdutosPRO_PALAVRASCHAVE: TStringField;
    Label9: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    QYProdutosPRO_NBS: TStringField;
    QYProdutosNBS_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosLoc: TFormProdutosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;
  CodigoNoFornecedor: Boolean = False;
  FocoNoGrid: Boolean = False;

const
  NomeArquivoFormTxt='FormProdutosLoc.txt';
  Campos='PRO_ALIQISS, PRO_CEST, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMPOSTO, PRO_ESTOQUEATUAL, '+
    'PRO_LOCALIZACAO, PRO_NBS, PRO_NOME, PRO_PALAVRASCHAVE, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, '+
    'PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_PRODUTOREAL, PRO_TIPOISS, PRO_TIPOITEM, PRO_UNIDADE, GRU_DESCRICAO, ISS_DESCRICAO, MAR_DESCRICAO, NBS_DESCRICAO';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProdutosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  FocoNoGrid:=False;
  ComboBox1.ItemIndex:=0;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM.TBParametrosPAR_LOCPRODUTOSPRECOS.Value='N' then
  begin
    DBGrid1.Columns[6].Visible:=False; //preco venda.
    DBGrid1.Columns[9].Visible:=False; //tabelas 1 a 6...
    DBGrid1.Columns[10].Visible:=False;
    DBGrid1.Columns[11].Visible:=False;
    DBGrid1.Columns[12].Visible:=False;
    DBGrid1.Columns[13].Visible:=False;
    DBGrid1.Columns[14].Visible:=False;
  end;
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYProdutos.Close;
    QYProdutos.SQL.Clear;
    QYProdutos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYProdutos.Open;
  end;

  DBGrid2.Visible:=False;
  Splitter1.Visible:=False;

  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProdutosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
//  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    //FormProdutosLoc.Height-152 -> valor para ocupar o restante do form quando faz pesquisa que nao seja pelo codigo.
    //DBGrid1.Height:=(FormProdutosLoc.Height-152) - (DBGrid2.Height+8); //8=espaço entre os componentes. // 239;
    DBGrid2.Visible:=True;
    Splitter1.Visible:=True;
    if Trim(Edit1.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_CODIGO like '+QuotedStr(Edit1.Text)+' '+Where+' '+
      'order by PRO_CODIGO'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);

    QYProdutosCodigos.Active:=False;
    QYProdutosCodigos.SQL.Clear;
    QYProdutosCodigos.SQL.Add(
      'select PCO_PRODUTO, PCO_FORNECEDOR, PCO_CODIGOFORNECEDOR, PRO_CODIGO, PRO_NOME, PRO_CODIGOBARRAS, PRO_LOCALIZACAO, '+
      'PRO_CODIGOFAB, PRO_ESTOQUEATUAL, PRO_PRECOVENDA, PRO_PRECOCUSTO, PRO_PRODUTOREAL, FOR_NOME, MAR_DESCRICAO from PRODUTOSCODIGOS '+
      'left join PRODUTOS on PCO_PRODUTO=PRO_CODIGO '+
      'left join FORNECEDORES on PCO_FORNECEDOR=FOR_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'where PCO_CODIGOFORNECEDOR like '+QuotedStr(Edit1.Text+'%')+Where+' '+
      'order by PCO_CODIGOFORNECEDOR'
    );
    QYProdutosCodigos.Open;
  end;
end;

procedure TFormProdutosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit2.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' '+
      'order by PRO_NOME'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProdutos.IsEmpty) then
  begin
    CodigoNoFornecedor:=False;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.DBGrid2DblClick(Sender: TObject);
begin
  if not QYProdutosCodigos.IsEmpty then
  begin
    CodigoNoFornecedor:=True;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProdutosCodigos.IsEmpty) then
  begin
    CodigoNoFornecedor:=True;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProdutos.IsEmpty then
  begin
    CodigoNoFornecedor:=False;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProdutosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Produtos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PALAVRAS CHAVE' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='GRUPO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MARCA' then Edit7.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD. FAB.' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD. BARRAS' then Edit5.SetFocus;
  if DM.TBLocsLOS_CAMPO.Value='LOCALIZACAO' then Edit8.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Produtos com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ATIVOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='INATIVOS' then ComboBox1.ItemIndex:=2;

  if FocoNoGrid then
  DBGrid1.SetFocus;
end;

procedure TFormProdutosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormProdutosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit3.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where GRU_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+Where+' '+
      'order by PRO_GRUPO, PRO_NOME'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit4.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_CODIGOFAB like '+QuotedStr(Edit4.Text+'%')+Where+' '+
      'order by PRO_CODIGOFAB, PRO_NOME'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit5.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_CODIGOBARRAS like '+QuotedStr(Edit5.Text+'%')+Where+' '+
      'order by PRO_CODIGOBARRAS, PRO_NOME'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit6.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_PALAVRASCHAVE like '+QuotedStr(Edit6.Text+'%')+Where+' '+
      'order by PRO_PALAVRASCHAVE'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit7.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where MAR_DESCRICAO like '+QuotedStr(Edit7.Text+'%')+Where+' '+
      'order by MAR_DESCRICAO, PRO_NOME'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

procedure TFormProdutosLoc.Edit8KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1.Height:=FormProdutosLoc.Height-152; // 423;
    DBGrid2.Visible:=False;
    if Trim(Edit8.Text)='' then Exit;
    QYProdutos.Active:=False;
    QYProdutos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
    QYProdutos.SQL.Add(
      'select '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join NBS on PRO_NBS=NBS_CODIGO '+
      'where PRO_LOCALIZACAO like '+QuotedStr(Edit8.Text+'%')+Where+' '+
      'order by PRO_LOCALIZACAO'
    );
    QYProdutos.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProdutos.SQL.Text);
  end;
end;

end.
