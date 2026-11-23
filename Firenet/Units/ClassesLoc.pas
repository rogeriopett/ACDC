unit ClassesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormClassesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSClasses: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRClasses: TFDTransaction;
    QYClasses: TFDQuery;
    QYClassesCLS_CODIGO: TIntegerField;
    QYClassesCLS_DESCRICAO: TStringField;
    QYClassesCLS_DTATUALIZACAO: TDateField;
    QYClassesCLS_DTCADASTRO: TDateField;
    QYClassesCLS_HRATUALIZACAO: TTimeField;
    QYClassesCLS_HRCADASTRO: TTimeField;
    QYClassesCLS_USUARIO: TStringField;
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
  FormClassesLoc: TFormClassesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormClassesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormClassesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormClassesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormClassesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClasses.Active:=False;
    QYClasses.SQL.Clear;
    QYClasses.SQL.Add('select * from CLASSES where CLS_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by CLS_CODIGO');
    QYClasses.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClassesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYClasses.Active:=False;
    QYClasses.SQL.Clear;
    QYClasses.SQL.Add('select * from CLASSES where CLS_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by CLS_DESCRICAO');
    QYClasses.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormClassesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYClasses.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClasses.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Classes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormClassesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
