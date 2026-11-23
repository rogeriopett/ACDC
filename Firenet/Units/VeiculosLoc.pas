unit VeiculosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosLoc = class(TForm)
    DSVeiculos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYVeiculos: TFDQuery;
    TRVeiculos: TFDTransaction;
    QYVeiculosVEL_CODIGO: TIntegerField;
    QYVeiculosVEL_DESCRICAO: TStringField;
    QYVeiculosVEL_DTATUALIZACAO: TDateField;
    QYVeiculosVEL_DTCADASTRO: TDateField;
    QYVeiculosVEL_HRATUALIZACAO: TTimeField;
    QYVeiculosVEL_HRCADASTRO: TTimeField;
    QYVeiculosVEL_STATUS: TStringField;
    QYVeiculosVEL_USUARIO: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
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
  FormVeiculosLoc: TFormVeiculosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormVeiculosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormVeiculosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormVeiculosLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVeiculosLoc.DBGrid1DblClick(Sender: TObject);
begin
  Procurar:=True;
  Close;
end;

procedure TFormVeiculosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    QYVeiculos.Active:=False;
    QYVeiculos.SQL.Clear;
    if CheckBox1.Checked then
    QYVeiculos.SQL.Add('select * from VEICULOS where VEL_CODIGO='+QuotedStr(Edit1.Text)+' and VEL_STATUS=''A'' order by VEL_CODIGO') else
    QYVeiculos.SQL.Add('select * from VEICULOS where VEL_CODIGO='+QuotedStr(Edit1.Text)+' order by VEL_CODIGO');
    QYVeiculos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVeiculosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYVeiculos.Active:=False;
    QYVeiculos.SQL.Clear;
    if CheckBox1.Checked then
    QYVeiculos.SQL.Add('select * from VEICULOS where VEL_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' and VEL_STATUS=''A'' order by VEL_DESCRICAO') else
    QYVeiculos.SQL.Add('select * from VEICULOS where VEL_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by VEL_DESCRICAO');
    QYVeiculos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVeiculosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Veiculos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormVeiculosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
