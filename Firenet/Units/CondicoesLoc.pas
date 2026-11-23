unit CondicoesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCondicoesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSCondicoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYCondicoes: TFDQuery;
    TRCondicoes: TFDTransaction;
    QYCondicoesCPG_CODIGO: TIntegerField;
    QYCondicoesCPG_DESCRICAO: TStringField;
    QYCondicoesCPG_DESCPORC: TFMTBCDField;
    QYCondicoesCPG_FORMAPAGTO: TStringField;
    QYCondicoesCPG_MEIOPAGAMENTO: TStringField;
    QYCondicoesCPG_TIPOINTEGRACAO: TStringField;
    QYCondicoesCPG_TOTALPARCELAS: TIntegerField;
    QYCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField;
    QYCondicoesCPG_TIPOPAGAMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondicoesLoc: TFormCondicoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormCondicoesLoc.txt';
  Campos='CPG_CODIGO, CPG_DESCRICAO, CPG_DESCPORC, CPG_FORMAPAGTO, CPG_MEIOPAGAMENTO, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormCondicoesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormCondicoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCondicoes.Close;
    QYCondicoes.SQL.Clear;
    QYCondicoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCondicoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormCondicoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCondicoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCondicoes.Active:=False;
    QYCondicoes.SQL.Clear;
    QYCondicoes.SQL.Add('select '+Campos+' from CONDICOES where CPG_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by CPG_CODIGO');
    QYCondicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCondicoes.SQL.Text);
  end;
end;

procedure TFormCondicoesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCondicoes.Active:=False;
    QYCondicoes.SQL.Clear;
    QYCondicoes.SQL.Add('select '+Campos+' from CONDICOES where CPG_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by CPG_DESCRICAO');
    QYCondicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCondicoes.SQL.Text);
  end;
end;

procedure TFormCondicoesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCondicoes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCondicoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCondicoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCondicoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Condicoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormCondicoesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
