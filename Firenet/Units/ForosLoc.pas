unit ForosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormForosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSForos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    QYForos: TFDQuery;
    TRForos: TFDTransaction;
    QYForosFRS_CODIGO: TIntegerField;
    QYForosFRS_NOME: TStringField;
    QYForosFRS_SIGLA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormForosLoc: TFormForosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormForosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormForosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYForos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormForosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYForos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormForosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYForos.Active:=False;
    QYForos.SQL.Clear;
    QYForos.SQL.Add('select FRS_CODIGO, FRS_NOME, FRS_SIGLA from FOROS where FRS_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by FRS_CODIGO');
    QYForos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormForosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYForos.Active:=False;
    QYForos.SQL.Clear;
    QYForos.SQL.Add('select FRS_CODIGO, FRS_NOME, FRS_SIGLA from FOROS where FRS_NOME like '+QuotedStr(Edit2.Text+'%')+' order by FRS_NOME');
    QYForos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormForosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYForos.Active:=False;
    QYForos.SQL.Clear;
    QYForos.SQL.Add('select FRS_CODIGO, FRS_NOME, FRS_SIGLA from FOROS where FRS_SIGLA like '+QuotedStr(Edit3.Text+'%')+' order by FRS_SIGLA');
    QYForos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormForosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormForosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormForosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormForosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Foros',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SIGLA' then Edit3.SetFocus;
end;

procedure TFormForosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
