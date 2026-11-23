unit MetasLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMetasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DSMetas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYMetas: TFDQuery;
    TRMetas: TFDTransaction;
    QYMetasMET_CODIGO: TIntegerField;
    QYMetasMET_DTFIM: TDateField;
    QYMetasMET_DTINICIO: TDateField;
    QYMetasMET_METAATINGIDA: TFMTBCDField;
    QYMetasMET_METAVALOR: TFMTBCDField;
    QYMetasMET_STATUS: TStringField;
    QYMetasMET_VENDEDOR: TIntegerField;
    QYMetasVEN_NOME: TStringField;
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
  FormMetasLoc: TFormMetasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;
  Campos: String = 'MET_CODIGO, MET_DTFIM, MET_DTINICIO, MET_METAATINGIDA, MET_METAVALOR, MET_STATUS, MET_VENDEDOR, VEN_NOME';

const
  NomeArquivoFormTxt='FormMetasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormMetasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMetas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMetasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYMetas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMetasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMetas.Active:=False;
    QYMetas.SQL.Clear;
    QYMetas.SQL.Add(
      'select '+Campos+' from METAS '+
      'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO '+
      'where MET_CODIGO='+Edit1.Text);
    QYMetas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMetas.SQL.Text);
  end;
end;

procedure TFormMetasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYMetas.Active:=False;
    QYMetas.SQL.Clear;
    QYMetas.SQL.Add(
      'select '+Campos+' from METAS '+
      'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO '+
      'where MET_VENDEDOR='+Edit2.Text+' '+
      'order by MET_VENDEDOR, MET_CODIGO desc');
    QYMetas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMetas.SQL.Text);
  end;
end;

procedure TFormMetasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYMetas.Active:=False;
    QYMetas.SQL.Clear;
    QYMetas.SQL.Add(
      'select '+Campos+' from METAS '+
      'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO '+
      'where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' '+
      'order by VEN_NOME, MET_CODIGO desc');
    QYMetas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMetas.SQL.Text);
  end;
end;

procedure TFormMetasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMetasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYMetas.Close;
    QYMetas.SQL.Clear;
    QYMetas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYMEtas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormMetasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMetasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Metas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO VENDEDOR' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit3.SetFocus;
end;

procedure TFormMetasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
