unit AtendimentosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DB, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAtendimentosLoc = class(TForm)
    DBGrid1: TDBGrid;
    DSAtendimentos: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRAtendimentos: TFDTransaction;
    QYAtendimentos: TFDQuery;
    QYAtendimentosATE_AULA: TStringField;
    QYAtendimentosATE_CLIENTE: TIntegerField;
    QYAtendimentosATE_CODIGO: TIntegerField;
    QYAtendimentosATE_CURSO: TIntegerField;
    QYAtendimentosATE_DTCADASTRO: TDateField;
    QYAtendimentosATE_TESTEESCRITO: TStringField;
    QYAtendimentosATE_TESTEORAL: TStringField;
    QYAtendimentosATE_VENDEDOR: TIntegerField;
    QYAtendimentosCLI_NOME: TStringField;
    QYAtendimentosCUR_DESCRICAO: TStringField;
    QYAtendimentosVEN_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentosLoc: TFormAtendimentosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormAtendimentosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormAtendimentosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYAtendimentos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAtendimentosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYAtendimentos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAtendimentosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYAtendimentos.Active:=False;
    QYAtendimentos.SQL.Clear;
    QYAtendimentos.SQL.Add('select ATE_AULA, ATE_CLIENTE, ATE_CODIGO, ATE_CURSO, ATE_DTCADASTRO, ATE_TESTEESCRITO, '+
                           'ATE_TESTEORAL, ATE_VENDEDOR, CLI_NOME, CUR_DESCRICAO, VEN_NOME from ATENDIMENTOS '+
                           'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO '+
                           'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO '+
                           'left join CURSOS on ATE_CURSO=CUR_CODIGO '+
                           'where ATE_CODIGO='+QuotedStr(Edit1.Text)+' order by ATE_CODIGO');
    QYAtendimentos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAtendimentosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYAtendimentos.Active:=False;
    QYAtendimentos.SQL.Clear;
    QYAtendimentos.SQL.Add('select ATE_AULA, ATE_CLIENTE, ATE_CODIGO, ATE_CURSO, ATE_DTCADASTRO, ATE_TESTEESCRITO, '+
                           'ATE_TESTEORAL, ATE_VENDEDOR, CLI_NOME, CUR_DESCRICAO, VEN_NOME from ATENDIMENTOS '+
                           'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO '+
                           'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO '+
                           'left join CURSOS on ATE_CURSO=CUR_CODIGO '+
                           'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME');
    QYAtendimentos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAtendimentosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYAtendimentos.Active:=False;
    QYAtendimentos.SQL.Clear;
    QYAtendimentos.SQL.Add('select ATE_AULA, ATE_CLIENTE, ATE_CODIGO, ATE_CURSO, ATE_DTCADASTRO, ATE_TESTEESCRITO, '+
                           'ATE_TESTEORAL, ATE_VENDEDOR, CLI_NOME, CUR_DESCRICAO, VEN_NOME from ATENDIMENTOS '+
                           'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO '+
                           'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO '+
                           'left join CURSOS on ATE_CURSO=CUR_CODIGO '+
                           'where ATE_CLIENTE='+QuotedStr(Edit5.Text)+' order by ATE_CLIENTE');
    QYAtendimentos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAtendimentosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormAtendimentosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormAtendimentosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAtendimentosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Atendimentos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD CLIENTE' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus;
end;

procedure TFormAtendimentosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormAtendimentosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYAtendimentos.Active:=False;
    QYAtendimentos.SQL.Clear;
    QYAtendimentos.SQL.Add('select ATE_AULA, ATE_CLIENTE, ATE_CODIGO, ATE_CURSO, ATE_DTCADASTRO, ATE_TESTEESCRITO, '+
                           'ATE_TESTEORAL, ATE_VENDEDOR, CLI_NOME, CUR_DESCRICAO, VEN_NOME from ATENDIMENTOS '+
                           'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO '+
                           'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO '+
                           'left join CURSOS on ATE_CURSO=CUR_CODIGO '+
                           'where ATE_DTCADASTRO between :datainicial and :datafinal order by ATE_DTCADASTRO, CLI_NOME');
    QYAtendimentos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYAtendimentos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYAtendimentos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAtendimentosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
