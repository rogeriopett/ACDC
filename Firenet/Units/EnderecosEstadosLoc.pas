unit EnderecosEstadosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormEnderecosEstadosLoc = class(TForm)
    DSEstados: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TREstados: TFDTransaction;
    QYEstados: TFDQuery;
    QYEstadosESD_CODIGO: TIntegerField;
    QYEstadosESD_NOME: TStringField;
    QYEstadosESD_PAIS: TIntegerField;
    QYEstadosESD_SIGLA: TStringField;
    QYEstadosPAI_CODIGO: TIntegerField;
    QYEstadosPAI_NOME: TStringField;
    QYEstadosPAI_SIGLA: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosEstadosLoc: TFormEnderecosEstadosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEnderecosEstadosLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosEstadosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEnderecosEstadosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEstados.Close;
    QYEstados.SQL.Clear;
    QYEstados.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEstados.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEnderecosEstadosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosEstadosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEstados.Active:=False;
    QYEstados.SQL.Clear;
    QYEstados.SQL.Add('select * from ESTADOS left join PAISES on ESD_PAIS=PAI_CODIGO where ESD_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by ESD_CODIGO');
    QYEstados.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstados.SQL.Text);
  end;
end;

procedure TFormEnderecosEstadosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEstados.Active:=False;
    QYEstados.SQL.Clear;
    QYEstados.SQL.Add('select * from ESTADOS left join PAISES on ESD_PAIS=PAI_CODIGO where ESD_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by ESD_NOME');
    QYEstados.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEstados.SQL.Text);
  end;
end;

procedure TFormEnderecosEstadosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEstados.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosEstadosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEstados.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosEstadosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Estados',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Estado Padrao',[]);
  Edit2.Text:=DM.TBLocsLOS_CAMPO.Value;
  Edit2.SelectAll;
end;

procedure TFormEnderecosEstadosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
