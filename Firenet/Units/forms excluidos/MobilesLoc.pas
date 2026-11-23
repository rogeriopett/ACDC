unit MobilesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMobilesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit1: TEdit;
    DSMobiles: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYMobiles: TFDQuery;
    TRMobiles: TFDTransaction;
    QYMobilesMOB_CODIGO: TIntegerField;
    QYMobilesMOB_DESCRICAO: TStringField;
    QYMobilesMOB_IMEI: TStringField;
    QYMobilesMOB_STATUS: TStringField;
    QYMobilesMOB_VENDEDOR: TIntegerField;
    QYMobilesVEN_NOME: TStringField;
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
  FormMobilesLoc: TFormMobilesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormMobilesLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormMobilesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMobiles.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMobilesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYMobiles.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMobilesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMobiles.Active:=False;
    QYMobiles.SQL.Clear;
    QYMobiles.SQL.Add('select MOB_CODIGO, MOB_DESCRICAO, MOB_IMEI, MOB_STATUS, MOB_VENDEDOR, VEN_NOME from MOBILES '+
                      'left join VENDEDORES on MOB_VENDEDOR=VEN_CODIGO '+
                      'where MOB_CODIGO='+QuotedStr(Edit1.Text)+' order by MOB_CODIGO');
    QYMobiles.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,UsuarioLogado,QYMobiles.SQL.Text);
  end;
end;

procedure TFormMobilesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYMobiles.Active:=False;
    QYMobiles.SQL.Clear;
    QYMobiles.SQL.Add('select MOB_CODIGO, MOB_DESCRICAO, MOB_IMEI, MOB_STATUS, MOB_VENDEDOR, VEN_NOME from MOBILES '+
                      'left join VENDEDORES on MOB_VENDEDOR=VEN_CODIGO '+
                      'where MOB_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by MOB_DESCRICAO');
    QYMobiles.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,UsuarioLogado,QYMobiles.SQL.Text);
  end;
end;

procedure TFormMobilesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMobilesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,UsuarioLogado]),[]) then
  begin
    QYMobiles.Close;
    QYMobiles.SQL.Clear;
    QYMobiles.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYMobiles.Open;
  end;
  RestaurarTamanhoForm(Self,UsuarioLogado);
end;

procedure TFormMobilesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMobilesLoc.FormShow(Sender: TObject);
begin
  //DM.TBLocs.Locate('LOS_TELA','Mobiles',[]);
  //if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  //if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormMobilesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
