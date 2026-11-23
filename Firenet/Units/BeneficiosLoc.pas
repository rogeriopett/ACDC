unit BeneficiosLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBeneficiosLoc = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DSBeneficios: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRBeneficios: TFDTransaction;
    QYBeneficios: TFDQuery;
    QYBeneficiosBEN_CODIGO: TStringField;
    QYBeneficiosBEN_TIPO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
  FormBeneficiosLoc: TFormBeneficiosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormBeneficiosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormBeneficiosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYBeneficios.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormBeneficiosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYBeneficios.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormBeneficiosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  //if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYBeneficios.Active:=False;
    QYBeneficios.SQL.Clear;
    QYBeneficios.SQL.Add('select BEN_CODIGO, BEN_TIPO from BENEFICIOS where BEN_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by BEN_CODIGO');
    QYBeneficios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYBeneficios.SQL.Text);
  end;
end;

procedure TFormBeneficiosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormBeneficiosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYBeneficios.Close;
    QYBeneficios.SQL.Clear;
    QYBeneficios.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYBeneficios.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormBeneficiosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBeneficiosLoc.FormShow(Sender: TObject);
begin
//  DM.TBLocs.Locate('LOS_TELA','BENEFICIOS',[]);
//  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
//  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormBeneficiosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
