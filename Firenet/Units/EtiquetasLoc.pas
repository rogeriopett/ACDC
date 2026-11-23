unit EtiquetasLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEtiquetasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSEtiquetas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYEtiquetas: TFDQuery;
    TREtiquetas: TFDTransaction;
    QYEtiquetasETQ_CODIGO: TIntegerField;
    QYEtiquetasETQ_DESCRICAO: TStringField;
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
  FormEtiquetasLoc: TFormEtiquetasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEtiquetasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;

{$R *.dfm}

procedure TFormEtiquetasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEtiquetas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEtiquetasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEtiquetas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEtiquetasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEtiquetas.Active:=False;
    QYEtiquetas.SQL.Clear;
    QYEtiquetas.SQL.Add('select ETQ_CODIGO, ETQ_DESCRICAO from ETIQUETAS where ETQ_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by ETQ_CODIGO');
    QYEtiquetas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEtiquetas.SQL.Text);
  end;
end;

procedure TFormEtiquetasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEtiquetas.Active:=False;
    QYEtiquetas.SQL.Clear;
    QYEtiquetas.SQL.Add('select ETQ_CODIGO, ETQ_DESCRICAO from ETIQUETAS where ETQ_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ETQ_DESCRICAO');
    QYEtiquetas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEtiquetas.SQL.Text);
  end;
end;

procedure TFormEtiquetasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEtiquetasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEtiquetas.Close;
    QYEtiquetas.SQL.Clear;
    QYEtiquetas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEtiquetas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEtiquetasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEtiquetasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Etiquetas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormEtiquetasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
