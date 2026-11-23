unit CursosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCursosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSCursos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYCursos: TFDQuery;
    TRCursos: TFDTransaction;
    QYCursosCUR_CODIGO: TIntegerField;
    QYCursosCUR_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCursosLoc: TFormCursosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormCursosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormCursosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCursos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCursosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCursos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCursosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCursos.Active:=False;
    QYCursos.SQL.Clear;
    QYCursos.SQL.Add('select CUR_CODIGO, CUR_DESCRICAO from CURSOS where CUR_CODIGO='+QuotedStr(Edit1.Text)+' order by CUR_CODIGO');
    QYCursos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormCursosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCursos.Active:=False;
    QYCursos.SQL.Clear;
    QYCursos.SQL.Add('select CUR_CODIGO, CUR_DESCRICAO from CURSOS where CUR_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by CUR_DESCRICAO');
    QYCursos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormCursosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormCursosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormCursosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCursosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Cursos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormCursosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
