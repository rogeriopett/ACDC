unit EstoqueLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEstoqueLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DSEstoque: TDataSource;
    Edit2: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYEstoque: TFDQuery;
    TREstoque: TFDTransaction;
    QYEstoqueEST_CLIENTE: TIntegerField;
    QYEstoqueEST_CODIGO: TIntegerField;
    QYEstoqueEST_DATA: TDateField;
    QYEstoqueEST_DESCRICAO: TStringField;
    QYEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField;
    QYEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField;
    QYEstoqueEST_NUMDOCTO: TStringField;
    QYEstoqueEST_PRODUTO: TIntegerField;
    QYEstoqueEST_QUANTIDADE: TFMTBCDField;
    QYEstoqueEST_TRANSACAO: TStringField;
    QYEstoqueEST_VALORUNIT: TFMTBCDField;
    QYEstoquePRO_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueLoc: TFormEstoqueLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEstoqueLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormEstoqueLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEstoqueLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEstoque.Close;
    QYEstoque.SQL.Clear;
    QYEstoque.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEstoque.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEstoqueLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEstoqueLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEstoque.Active:=False;
    QYEstoque.SQL.Clear;
    QYEstoque.SQL.Add(
      'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
      'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where EST_CODIGO='+Edit1.Text+' order by EST_CODIGO');
    QYEstoque.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstoque.SQL.Text);
  end;
end;

procedure TFormEstoqueLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYEstoque.Active:=False;
    QYEstoque.SQL.Clear;
    QYEstoque.SQL.Add(
      'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
      'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where EST_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by EST_NUMDOCTO, EST_CODIGO desc');
    QYEstoque.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstoque.SQL.Text);
  end;
end;

procedure TFormEstoqueLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormEstoqueLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    QYEstoque.Active:=False;
    QYEstoque.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYEstoque.SQL.Add(
      'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
      'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where (EST_DATA between '+Where+') '+
      'order by EST_DATA, EST_CODIGO');
    QYEstoque.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstoque.SQL.Text);
  end;
end;

procedure TFormEstoqueLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormEstoqueLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEstoque.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEstoqueLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEstoque.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEstoqueLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Movimentacao do Estoque',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO PRODUTO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME PRODUTO' then Edit4.SetFocus;
end;

procedure TFormEstoqueLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    QYEstoque.Active:=False;
    QYEstoque.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYEstoque.SQL.Add(
      'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
      'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where (EST_DATA between '+Where+') '+
      'and EST_PRODUTO='+Edit2.Text+' order by EST_DATA, EST_CODIGO');
    QYEstoque.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstoque.SQL.Text);
  end;
end;

procedure TFormEstoqueLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    QYEstoque.Active:=False;
    QYEstoque.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYEstoque.SQL.Add(
      'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
      'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where (EST_DATA between '+Where+') '+
      'and PRO_NOME like '+QuotedStr(Edit4.Text+'%')+' order by EST_DATA, EST_CODIGO');
    //QYEstoque.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    //QYEstoque.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYEstoque.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstoque.SQL.Text);
  end;
end;

end.

