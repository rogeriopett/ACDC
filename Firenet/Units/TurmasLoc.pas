unit TurmasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTurmasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSTurmas: TDataSource;
    Edit3: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYTurmas: TFDQuery;
    TRTurmas: TFDTransaction;
    QYTurmasTUR_CODIGO: TIntegerField;
    QYTurmasTUR_DESCRICAO: TStringField;
    QYTurmasTUR_DOMINGO: TStringField;
    QYTurmasTUR_DTATUALIZACAO: TDateField;
    QYTurmasTUR_DTCADASTRO: TDateField;
    QYTurmasTUR_DTINICIO: TDateField;
    QYTurmasTUR_DTTERMINO: TDateField;
    QYTurmasTUR_ENCONTROS: TIntegerField;
    QYTurmasTUR_PROFESSOR: TIntegerField;
    QYTurmasTUR_QUARTA: TStringField;
    QYTurmasTUR_QUINTA: TStringField;
    QYTurmasTUR_SABADO: TStringField;
    QYTurmasTUR_SEGUNDA: TStringField;
    QYTurmasTUR_SEXTA: TStringField;
    QYTurmasTUR_STATUS: TStringField;
    QYTurmasTUR_TERCA: TStringField;
    QYTurmasTUR_USUARIO: TStringField;
    QYTurmasVEN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasLoc: TFormTurmasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormTurmasLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormTurmasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormTurmasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTurmasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYTurmas.Active:=False;
    QYTurmas.SQL.Clear;
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where TUR_CODIGO='+QuotedStr(Edit1.Text)+' order by TUR_CODIGO');
    QYTurmas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTurmasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYTurmas.Active:=False;
    QYTurmas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where TUR_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by TUR_DESCRICAO') else
    if ComboBox1.Text='ABERTAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where TUR_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' and TUR_STATUS=''A'' order by TUR_DESCRICAO') else
    if ComboBox1.Text='BAIXADAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where TUR_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' and TUR_STATUS=''B'' order by TUR_DESCRICAO');
    QYTurmas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTurmasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYTurmas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTurmasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYTurmas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTurmasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Turmas',[]);
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD PROFESSOR' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PROFESSOR' then Edit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Turmas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormTurmasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormTurmasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYTurmas.Active:=False;
    QYTurmas.SQL.Clear;
    if ComboBox1.Text='TODAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' order by VEN_NOME, TUR_CODIGO desc') else
    if ComboBox1.Text='ABERTAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' and TUR_STATUS=''A'' order by VEN_NOME, TUR_CODIGO desc') else
    if ComboBox1.Text='BAIXADAS' then
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' and TUR_STATUS=''B'' order by VEN_NOME, TUR_CODIGO desc');
    QYTurmas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTurmasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYTurmas.Active:=False;
    QYTurmas.SQL.Clear;
    QYTurmas.SQL.Add('select * from TURMAS left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO where TUR_PROFESSOR='+QuotedStr(Edit4.Text)+' order by TUR_DESCRICAO');
    QYTurmas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
