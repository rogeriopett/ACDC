unit EtapasLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEtapasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSEtapas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    QYEtapas: TFDQuery;
    TREtapas: TFDTransaction;
    QYEtapasETP_CODIGO: TIntegerField;
    QYEtapasETP_DESCRICAO: TStringField;
    QYEtapasETP_SIGLA: TStringField;
    QYEtapasETP_TEMPO: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtapasLoc: TFormEtapasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEtapasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormEtapasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEtapas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEtapasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEtapas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEtapasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEtapas.Active:=False;
    QYEtapas.SQL.Clear;
    QYEtapas.SQL.Add('select ETP_CODIGO, ETP_DESCRICAO, ETP_SIGLA, ETP_TEMPO from ETAPAS where ETP_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by ETP_CODIGO');
    QYEtapas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEtapas.SQL.Text);
  end;
end;

procedure TFormEtapasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEtapas.Active:=False;
    QYEtapas.SQL.Clear;
    QYEtapas.SQL.Add('select ETP_CODIGO, ETP_DESCRICAO, ETP_SIGLA, ETP_TEMPO from ETAPAS where ETP_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ETP_DESCRICAO');
    QYEtapas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEtapas.SQL.Text);
  end;
end;

procedure TFormEtapasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEtapas.Active:=False;
    QYEtapas.SQL.Clear;
    QYEtapas.SQL.Add('select ETP_CODIGO, ETP_DESCRICAO, ETP_SIGLA, ETP_TEMPO from ETAPAS where ETP_SIGLA like '+QuotedStr(Edit2.Text+'%')+' order by ETP_SIGLA');
    QYEtapas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEtapas.SQL.Text);
  end;
end;

procedure TFormEtapasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEtapasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEtapas.Close;
    QYEtapas.SQL.Clear;
    QYEtapas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEtapas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEtapasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEtapasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Etapas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SIGLA' then Edit2.SetFocus;
end;

procedure TFormEtapasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
