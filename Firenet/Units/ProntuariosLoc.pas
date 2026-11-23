unit ProntuariosLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProntuariosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSProntuarios: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    QYProntuarios: TFDQuery;
    TRProntuarios: TFDTransaction;
    QYProntuariosPEP_ATENDIMENTO: TIntegerField;
    QYProntuariosPEP_CODIGO: TIntegerField;
    QYProntuariosPEP_CLIENTE: TIntegerField;
    QYProntuariosPEP_DTATENDIMENTO: TDateField;
    QYProntuariosPEP_DTCADASTRO: TDateField;
    QYProntuariosPEP_STATUS: TStringField;
    QYProntuariosPEP_OBITO: TStringField;
    QYProntuariosCLI_NOME: TStringField;
    QYProntuariosCLI_CNS: TStringField;
    QYProntuariosCLI_SAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProntuariosLoc: TFormProntuariosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormProntuariosLoc.txt';
  Campos='PEP_ATENDIMENTO, PEP_CODIGO, PEP_CLIENTE, PEP_DTATENDIMENTO, PEP_DTCADASTRO, PEP_STATUS, PEP_OBITO, CLI_NOME, CLI_CNS, CLI_SAME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;

{$R *.dfm}

procedure TFormProntuariosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProntuarios.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProntuariosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProntuarios.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProntuariosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where PEP_CODIGO='+QuotedStr(Edit1.Text)+' order by PEP_CODIGO');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME, PEP_CODIGO desc');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where PEP_ATENDIMENTO like '+QuotedStr(Edit3.Text+'%')+' order by PEP_ATENDIMENTO');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where PEP_CLIENTE='+QuotedStr(Edit4.Text)+' order by PEP_CODIGO');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where CLI_CNS like '+QuotedStr(Edit5.Text+'%')+' order by CLI_CNS');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where CLI_SAME like '+QuotedStr(Edit6.Text+'%')+' order by CLI_SAME');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProntuariosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYProntuarios.Close;
    QYProntuarios.SQL.Clear;
    QYProntuarios.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYProntuarios.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProntuariosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProntuariosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Prontuarios',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO ATENDIMENTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO CNS' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUMERO SAME' then Edit6.SetFocus;
end;

procedure TFormProntuariosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormProntuariosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
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
    QYProntuarios.Active:=False;
    QYProntuarios.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYProntuarios.SQL.Add('select '+Campos+' from PRONTUARIOS '+
                          'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO '+
                          'where PEP_DTATENDIMENTO between '+Where+' order by PEP_DTATENDIMENTO');
    QYProntuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYProntuarios.SQL.Text);
  end;
end;

procedure TFormProntuariosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
