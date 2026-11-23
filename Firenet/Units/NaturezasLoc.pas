unit NaturezasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormNaturezasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSNaturezas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYNaturezas: TFDQuery;
    TRNaturezas: TFDTransaction;
    QYNaturezasNAT_CALCULACOMISSAO: TStringField;
    QYNaturezasNAT_CALCULACREDITOSN: TStringField;
    QYNaturezasNAT_CODIGO: TIntegerField;
    QYNaturezasNAT_DESCRICAO: TStringField;
    QYNaturezasNAT_DESTACARIMPOSTOS: TStringField;
    QYNaturezasNAT_ENTRADASAIDA: TStringField;
    QYNaturezasNAT_MOVIMENTAESTOQUE: TStringField;
    QYNaturezasNAT_MOVIMENTAFINANCEIRO: TStringField;
    QYNaturezasNAT_OBSERVACOES: TMemoField;
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
  FormNaturezasLoc: TFormNaturezasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNaturezasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormNaturezasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormNaturezasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYNaturezas.Close;
    QYNaturezas.SQL.Clear;
    QYNaturezas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYNaturezas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormNaturezasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNaturezasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYNaturezas.Active:=False;
    QYNaturezas.SQL.Clear;
    QYNaturezas.SQL.Add('select NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NAT_DESCRICAO, NAT_ENTRADASAIDA, NAT_DESTACARIMPOSTOS, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO, NAT_OBSERVACOES from NATUREZAS where NAT_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by NAT_CODIGO');
    QYNaturezas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNaturezas.SQL.Text);
  end;
end;

procedure TFormNaturezasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYNaturezas.Active:=False;
    QYNaturezas.SQL.Clear;
    QYNaturezas.SQL.Add('select NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NAT_DESCRICAO, NAT_ENTRADASAIDA, NAT_DESTACARIMPOSTOS, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO, NAT_OBSERVACOES from NATUREZAS where NAT_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by NAT_DESCRICAO');
    QYNaturezas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNaturezas.SQL.Text);
  end;
end;

procedure TFormNaturezasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYNaturezas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNaturezasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYNaturezas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNaturezasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','CFOP',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormNaturezasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.

