unit EnderecosCidadesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB;

type
  TFormEnderecosCidadesLoc = class(TForm)
    DSCidades: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYCidades: TFDQuery;
    TRCidades: TFDTransaction;
    QYCidadesCID_CODIGO: TIntegerField;
    QYCidadesCID_DIMOB: TIntegerField;
    QYCidadesCID_ESTADO: TIntegerField;
    QYCidadesCID_NOME: TStringField;
    QYCidadesCID_PAIS: TIntegerField;
    QYCidadesESD_CODIGO: TIntegerField;
    QYCidadesESD_NOME: TStringField;
    QYCidadesESD_SIGLA: TStringField;
    QYCidadesPAI_NOME: TStringField;
    QYCidadesPAI_SIGLA: TStringField;
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
  FormEnderecosCidadesLoc: TFormEnderecosCidadesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEnderecosCidadesLoc.txt';

implementation
uses DataMod, DataMod2, EnderecosEstadosLoc, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosCidadesLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEnderecosCidadesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCidades.Close;
    QYCidades.SQL.Clear;
    QYCidades.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCidades.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEnderecosCidadesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosCidadesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCidades.Active:=False;
    QYCidades.SQL.Clear;
    QYCidades.SQL.Add('select * from CIDADES '+
                      'left join ESTADOS on CID_ESTADO=ESD_CODIGO '+
                      'left join PAISES on CID_PAIS=PAI_CODIGO '+
                      'where CID_CODIGO like '+QuotedStr(Edit1.Text)+' order by CID_CODIGO');
    QYCidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCidades.SQL.Text);
  end;
end;

procedure TFormEnderecosCidadesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCidades.Active:=False;
    QYCidades.SQL.Clear;
    QYCidades.SQL.Add('select * from CIDADES '+
                      'left join ESTADOS on CID_ESTADO=ESD_CODIGO '+
                      'left join PAISES on CID_PAIS=PAI_CODIGO '+
                      'where CID_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CID_NOME');
    QYCidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCidades.SQL.Text);
  end;
end;

procedure TFormEnderecosCidadesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCidades.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosCidadesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCidades.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosCidadesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Cidades',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Cidade Padrao',[]);
  Edit2.Text:=DM.TBLocsLOS_CAMPO.Value;
  Edit2.SelectAll;
end;

procedure TFormEnderecosCidadesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
