unit EnderecosRuasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEnderecosRuasLoc = class(TForm)
    DSRuas: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    QYRuas: TFDQuery;
    TRRuas: TFDTransaction;
    QYRuasRUA_BAIRRO: TIntegerField;
    QYRuasRUA_CEP: TStringField;
    QYRuasRUA_CIDADE: TIntegerField;
    QYRuasRUA_CODIGO: TIntegerField;
    QYRuasRUA_ESTADO: TIntegerField;
    QYRuasRUA_NOME: TStringField;
    QYRuasRUA_PAIS: TIntegerField;
    QYRuasBAI_CODIGO: TIntegerField;
    QYRuasBAI_NOME: TStringField;
    QYRuasCID_CODIGO: TIntegerField;
    QYRuasCID_DIMOB: TIntegerField;
    QYRuasCID_NOME: TStringField;
    QYRuasESD_SIGLA: TStringField;
    QYRuasPAI_CODIGO: TIntegerField;
    QYRuasPAI_NOME: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosRuasLoc: TFormEnderecosRuasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;
  FocoNoGrid: Boolean = False;

const
  NomeArquivoFormTxt='FormEnderecosRuasLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosRuasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEnderecosRuasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  FocoNoGrid:=False;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEnderecosRuasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosRuasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYRuas.Active:=False;
    QYRuas.SQL.Clear;
    QYRuas.SQL.Add('select * from RUAS '+
                   'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                   'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                   'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                   'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                   'where CID_NOME like '+QuotedStr(Edit1.Text+'%')+' order by CID_NOME, RUA_NOME');
    QYRuas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosRuasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYRuas.Active:=False;
    QYRuas.SQL.Clear;
    QYRuas.SQL.Add('select * from RUAS '+
                   'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                   'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                   'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                   'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                   'where RUA_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CID_NOME, RUA_NOME');
    QYRuas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosRuasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYRuas.Active:=False;
    QYRuas.SQL.Clear;
    QYRuas.SQL.Add('select * from RUAS '+
                   'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                   'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                   'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                   'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                   'where CID_CODIGO='+QuotedStr(Edit3.Text)+' order by RUA_NOME');
    QYRuas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosRuasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit1.Text<>'     -   ' then
    begin
      QYRuas.Active:=False;
      QYRuas.SQL.Clear;
      QYRuas.SQL.Add('select * from RUAS '+
                     'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                     'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                     'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                     'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                     'where RUA_CEP like '+QuotedStr('%'+MaskEdit1.Text+'%')+' order by RUA_NOME');
      QYRuas.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormEnderecosRuasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormEnderecosRuasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYRuas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosRuasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYRuas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosRuasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Ruas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CEP' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD.v CIDADE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CIDADE' then Edit1.SetFocus;

  if FocoNoGrid then
  DBGrid1.SetFocus;
end;

end.
