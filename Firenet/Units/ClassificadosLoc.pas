unit ClassificadosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormClassificadosLoc = class(TForm)
    DSClassificados: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRClassificados: TFDTransaction;
    QYClassificados: TFDQuery;
    QYClassificadosCLA_ANOFAB: TStringField;
    QYClassificadosCLA_ANOMOD: TStringField;
    QYClassificadosCLA_CATEGORIA: TStringField;
    QYClassificadosCLA_CODIGO: TIntegerField;
    QYClassificadosCLA_NOME: TStringField;
    QYClassificadosCLA_OBJETIVO: TStringField;
    QYClassificadosVEL_DESCRICAO: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassificadosLoc: TFormClassificadosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormClassificadosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormClassificadosLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassificadosLoc.DBGrid1DblClick(Sender: TObject);
begin
  Procurar:=True;
  Close;
end;

procedure TFormClassificadosLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Edit1.Text='' then Exit;
    QYClassificados.Active:=False;
    QYClassificados.SQL.Clear;
    QYClassificados.SQL.Add('select CLA_CODIGO, CLA_NOME, VEL_DESCRICAO, CLA_OBJETIVO, CLA_CATEGORIA, CLA_ANOFAB, CLA_ANOMOD from CLASSIFICADOS '+
                            'left join VEICULOS on CLA_VEICULO=VEL_CODIGO where CLA_CODIGO='+QuotedStr(Edit1.Text)+' order by CLA_CODIGO');
    QYClassificados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClassificadosLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Edit2.Text='' then Exit;
    QYClassificados.Active:=False;
    QYClassificados.SQL.Clear;
    QYClassificados.SQL.Add('select CLA_CODIGO, CLA_NOME, VEL_DESCRICAO, CLA_OBJETIVO, CLA_CATEGORIA, CLA_ANOFAB, CLA_ANOMOD from CLASSIFICADOS '+
                            'left join VEICULOS on CLA_VEICULO=VEL_CODIGO where CLA_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLA_NOME');
    QYClassificados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClassificadosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormClassificadosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormClassificadosLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassificadosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Classificados',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VEICULO' then Edit3.SetFocus;
end;

procedure TFormClassificadosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormClassificadosLoc.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Edit3.Text='' then Exit;
    QYClassificados.Active:=False;
    QYClassificados.SQL.Clear;
    QYClassificados.SQL.Add('select CLA_CODIGO, CLA_NOME, VEL_DESCRICAO, CLA_OBJETIVO, CLA_CATEGORIA, CLA_ANOFAB, CLA_ANOMOD from CLASSIFICADOS '+
                            'left join VEICULOS on CLA_VEICULO=VEL_CODIGO where VEL_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' order by VEL_DESCRICAO');
    QYClassificados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
