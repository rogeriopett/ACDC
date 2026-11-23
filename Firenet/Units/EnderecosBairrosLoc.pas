unit EnderecosBairrosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, Mask, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEnderecosBairrosLoc = class(TForm)
    DSBairros: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    QYBairros: TFDQuery;
    TRBairros: TFDTransaction;
    QYBairrosBAI_CODIGO: TIntegerField;
    QYBairrosBAI_NOME: TStringField;
    QYBairrosBAI_CIDADE: TIntegerField;
    QYBairrosBAI_ESTADO: TIntegerField;
    QYBairrosBAI_PAIS: TIntegerField;
    QYBairrosCID_NOME: TStringField;
    QYBairrosESD_NOME: TStringField;
    QYBairrosESD_SIGLA: TStringField;
    QYBairrosPAI_SIGLA: TStringField;
    QYBairrosPAI_NOME: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosBairrosLoc: TFormEnderecosBairrosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEnderecosBairrosLoc.txt';

implementation
uses DataMod, EnderecosCidadesLoc, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosBairrosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEnderecosBairrosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEnderecosBairrosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosBairrosLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYBairros.Active:=False;
    QYBairros.SQL.Clear;
    QYBairros.SQL.Add('select BAI_CODIGO, BAI_NOME, BAI_CIDADE, BAI_ESTADO, BAI_PAIS, CID_NOME, ESD_NOME, ESD_SIGLA, PAI_SIGLA, PAI_NOME from BAIRROS '+
                      'left join CIDADES on BAI_CIDADE=CID_CODIGO '+
                      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO '+
                      'left join PAISES on ESD_PAIS=PAI_CODIGO '+
                      'where BAI_CODIGO like '+QuotedStr(Edit1.Text)+' order by BAI_CODIGO');
    QYBairros.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosBairrosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYBairros.Active:=False;
    QYBairros.SQL.Clear;
    QYBairros.SQL.Add('select BAI_CODIGO, BAI_NOME, BAI_CIDADE, BAI_ESTADO, BAI_PAIS, CID_NOME, ESD_NOME, ESD_SIGLA, PAI_SIGLA, PAI_NOME from BAIRROS '+
                      'left join CIDADES on BAI_CIDADE=CID_CODIGO '+
                      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO '+
                      'left join PAISES on ESD_PAIS=PAI_CODIGO '+
                      'where BAI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by BAI_NOME, CID_NOME');
    QYBairros.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosBairrosLoc.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYBairros.Active:=False;
    QYBairros.SQL.Clear;
    QYBairros.SQL.Add('select BAI_CODIGO, BAI_NOME, BAI_CIDADE, BAI_ESTADO, BAI_PAIS, CID_NOME, ESD_NOME, ESD_SIGLA, PAI_SIGLA, PAI_NOME from BAIRROS '+
                      'left join CIDADES on BAI_CIDADE=CID_CODIGO '+
                      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO '+
                      'left join PAISES on ESD_PAIS=PAI_CODIGO '+
                      'where CID_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CID_NOME, BAI_NOME');
    QYBairros.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosBairrosLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYBairros.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosBairrosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYBairros.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosBairrosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Bairros',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CIDADE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='ESTADO' then MaskEdit1.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Bairro Padrao',[]);
  Edit2.Text:=DM.TBLocsLOS_CAMPO.Value;
end;

procedure TFormEnderecosBairrosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit1.Text)='' then Exit;
    QYBairros.Active:=False;
    QYBairros.SQL.Clear;
    QYBairros.SQL.Add('select BAI_CODIGO, BAI_NOME, BAI_CIDADE, BAI_ESTADO, BAI_PAIS, CID_NOME, ESD_NOME, ESD_SIGLA, PAI_SIGLA, PAI_NOME from BAIRROS '+
                      'left join CIDADES on BAI_CIDADE=CID_CODIGO '+
                      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO '+
                      'left join PAISES on ESD_PAIS=PAI_CODIGO '+
                      'where ESD_SIGLA='+QuotedStr(MaskEdit1.Text)+' order by ESD_SIGLA, CID_NOME, BAI_NOME');
    QYBairros.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosBairrosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
