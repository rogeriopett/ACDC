unit IssLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormIssLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSIss: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYIss: TFDQuery;
    TRIss: TFDTransaction;
    QYIssISS_ALIQUOTAESTADUAL: TFMTBCDField;
    QYIssISS_ALIQUOTAIMPORTACAO: TFMTBCDField;
    QYIssISS_ALIQUOTAMUNICIPAL: TFMTBCDField;
    QYIssISS_ALIQUOTANACIONAL: TFMTBCDField;
    QYIssISS_CODIGO: TStringField;
    QYIssISS_DESCRICAO: TStringField;
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
  FormIssLoc: TFormIssLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormIssLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormIssLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormIssLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYIss.Close;
    QYIss.SQL.Clear;
    QYIss.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYIss.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormIssLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormIssLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9','.',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYIss.Active:=False;
    QYIss.SQL.Clear;
    QYIss.SQL.Add('select ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO from ISS where ISS_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by ISS_CODIGO');
    QYIss.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYIss.SQL.Text);
  end;
end;

procedure TFormIssLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYIss.Active:=False;
    QYIss.SQL.Clear;
    QYIss.SQL.Add('select ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO from ISS where ISS_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ISS_DESCRICAO');
    QYIss.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYIss.SQL.Text);
  end;
end;

procedure TFormIssLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYIss.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormIssLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYIss.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormIssLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','ISS',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormIssLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
