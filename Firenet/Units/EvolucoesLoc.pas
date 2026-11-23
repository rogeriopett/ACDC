unit EvolucoesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEvolucoesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSEvolucoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    QYEvolucoes: TFDQuery;
    TREvolucoes: TFDTransaction;
    QYEvolucoesEVO_CLIENTE: TIntegerField;
    QYEvolucoesEVO_CODIGO: TIntegerField;
    QYEvolucoesEVO_DTCADASTRO: TDateField;
    QYEvolucoesEVO_STATUS: TStringField;
    QYEvolucoesEVO_VENDEDOR: TIntegerField;
    QYEvolucoesCLI_NOME: TStringField;
    QYEvolucoesVEN_NOME: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvolucoesLoc: TFormEvolucoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEvolucoesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormEvolucoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEvolucoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEvolucoesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEvolucoes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEvolucoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEvolucoes.Active:=False;
    QYEvolucoes.SQL.Clear;
    QYEvolucoes.SQL.Add('select EVO_CLIENTE, EVO_CODIGO, EVO_DTCADASTRO, EVO_STATUS, '+
                        'EVO_VENDEDOR, CLI_NOME, VEN_NOME from EVOLUCOES '+
                        'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO '+
                        'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO '+
                        'where EVO_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by EVO_CODIGO');
    QYEvolucoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEvolucoes.SQL.Text);
  end;
end;

procedure TFormEvolucoesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEvolucoes.Active:=False;
    QYEvolucoes.SQL.Clear;
    QYEvolucoes.SQL.Add('select EVO_CLIENTE, EVO_CODIGO, EVO_DTCADASTRO, EVO_STATUS, '+
                        'EVO_VENDEDOR, CLI_NOME, VEN_NOME from EVOLUCOES '+
                        'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO '+
                        'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO '+
                        'where EVO_CLIENTE='+Edit2.Text+' order by EVO_CODIGO desc');
    QYEvolucoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEvolucoes.SQL.Text);
  end;
end;

procedure TFormEvolucoesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYEvolucoes.Active:=False;
    QYEvolucoes.SQL.Clear;
    QYEvolucoes.SQL.Add('select EVO_CLIENTE, EVO_CODIGO, EVO_DTCADASTRO, EVO_STATUS, '+
                        'EVO_VENDEDOR, CLI_NOME, VEN_NOME from EVOLUCOES '+
                        'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO '+
                        'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO '+
                        'where CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CLI_NOME, EVO_CODIGO desc');
    QYEvolucoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEvolucoes.SQL.Text);
  end;
end;

procedure TFormEvolucoesLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEvolucoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEvolucoes.Close;
    QYEvolucoes.SQL.Clear;
    QYEvolucoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEvolucoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEvolucoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEvolucoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Evolucoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit3.SetFocus;
end;

procedure TFormEvolucoesLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormEvolucoesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    Key:=#0;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYEvolucoes.Active:=False;
    QYEvolucoes.SQL.Clear;
    QYEvolucoes.SQL.Add('select EVO_CLIENTE, EVO_CODIGO, EVO_DTCADASTRO, EVO_STATUS, EVO_VENDEDOR, '+
                        'CLI_NOME, VEN_NOME from EVOLUCOES '+
                        'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO '+
                        'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO '+
                        'where EVO_DTCADASTRO between '+Where+' order by EVO_DTCADASTRO desc, CLI_NOME');
    QYEvolucoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEvolucoes.SQL.Text);
  end;
end;

procedure TFormEvolucoesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
