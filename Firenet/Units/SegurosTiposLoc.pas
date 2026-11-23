unit SegurosTiposLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSegurosTiposLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSSegurosTipos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYSegurosTipos: TFDQuery;
    TRSegurosTipos: TFDTransaction;
    QYSegurosTiposSGT_CODIGO: TIntegerField;
    QYSegurosTiposSGT_DESCRICAO: TStringField;
    QYSegurosTiposSGT_STATUS: TStringField;
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
  FormSegurosTiposLoc: TFormSegurosTiposLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormSegurosTiposLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormSegurosTiposLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYSegurosTipos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormSegurosTiposLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYSegurosTipos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormSegurosTiposLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYSegurosTipos.Active:=False;
    QYSegurosTipos.SQL.Clear;
    QYSegurosTipos.SQL.Add('select SGT_CODIGO, SGT_DESCRICAO, SGT_STATUS from SEGUROSTIPOS where SGT_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by SGT_CODIGO');
    QYSegurosTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSegurosTipos.SQL.Text);
  end;
end;

procedure TFormSegurosTiposLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYSegurosTipos.Active:=False;
    QYSegurosTipos.SQL.Clear;
    QYSegurosTipos.SQL.Add('select SGT_CODIGO, SGT_DESCRICAO, SGT_STATUS from SEGUROSTIPOS where SGT_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by SGT_DESCRICAO');
    QYSegurosTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSegurosTipos.SQL.Text);
  end;
end;

procedure TFormSegurosTiposLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormSegurosTiposLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYSegurosTipos.Close;
    QYsegurosTipos.SQL.Clear;
    QYSegurosTipos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYSegurosTipos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormSegurosTiposLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSegurosTiposLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','SegurosTipos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormSegurosTiposLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
