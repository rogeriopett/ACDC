unit EcfLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormEcfLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit1: TEdit;
    DSEcf: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    TREcf: TFDTransaction;
    QYEcf: TFDQuery;
    QYEcfECF_CODIGO: TIntegerField;
    QYEcfECF_DESCRICAO: TStringField;
    QYEcfECF_MARCA: TStringField;
    QYEcfECF_MODELO: TStringField;
    QYEcfECF_SERIAL: TStringField;
    QYEcfECF_STATUS: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
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
  FormEcfLoc: TFormEcfLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEcfLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEcfLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEcf.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEcfLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEcf.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEcfLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add('select ECF_CODIGO, ECF_DESCRICAO, ECF_MARCA, ECF_MODELO, ECF_SERIAL, ECF_STATUS '+
                  'from ECF where ECF_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by ECF_CODIGO');
    QYEcf.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEcf.SQL.Text);
  end;
end;

procedure TFormEcfLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add('select ECF_CODIGO, ECF_DESCRICAO, ECF_MARCA, ECF_MODELO, ECF_SERIAL, ECF_STATUS '+
                  'from ECF where ECF_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ECF_DESCRICAO');
    QYEcf.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEcf.SQL.Text);
  end;
end;

procedure TFormEcfLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add('select ECF_CODIGO, ECF_DESCRICAO, ECF_MARCA, ECF_MODELO, ECF_SERIAL, ECF_STATUS '+
                  'from ECF where ECF_SERIAL like '+QuotedStr(Edit3.Text+'%')+' order by ECF_SERIAL');
    QYEcf.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEcf.SQL.Text);
  end;
end;

procedure TFormEcfLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add('select ECF_CODIGO, ECF_DESCRICAO, ECF_MARCA, ECF_MODELO, ECF_SERIAL, ECF_STATUS '+
                  'from ECF where ECF_MARCA like '+QuotedStr(Edit4.Text+'%')+' order by ECF_MARCA');
    QYEcf.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEcf.SQL.Text);
  end;
end;

procedure TFormEcfLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add('select ECF_CODIGO, ECF_DESCRICAO, ECF_MARCA, ECF_MODELO, ECF_SERIAL, ECF_STATUS '+
                  'from ECF where ECF_MODELO like '+QuotedStr(Edit5.Text+'%')+' order by ECF_MODELO');
    QYEcf.Open;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEcf.SQL.Text);
  end;
end;

procedure TFormEcfLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEcfLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEcf.Close;
    QYEcf.SQL.Clear;
    QYEcf.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEcf.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEcfLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEcfLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','ECFs',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SERIAL' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MARCA' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MODELO' then Edit5.SetFocus;
end;

procedure TFormEcfLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
