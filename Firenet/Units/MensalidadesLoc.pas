unit MensalidadesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMensalidadesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    DSMensalidades: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    QYMensalidades: TFDQuery;
    TRMensalidades: TFDTransaction;
    QYMensalidadesMNS_CLIENTE: TIntegerField;
    QYMensalidadesMNS_CODIGO: TIntegerField;
    QYMensalidadesMNS_CONTA: TIntegerField;
    QYMensalidadesMNS_DESCRICAO: TStringField;
    QYMensalidadesMNS_DTCADASTRO: TDateField;
    QYMensalidadesMNS_PERIODO: TStringField;
    QYMensalidadesMNS_RECEITA: TIntegerField;
    QYMensalidadesMNS_STATUS: TStringField;
    QYMensalidadesMNS_VALOR: TFMTBCDField;
    QYMensalidadesMNS_VENCIMENTO: TIntegerField;
    QYMensalidadesCLI_NOME: TStringField;
    QYMensalidadesCON_NOME: TStringField;
    QYMensalidadesREC_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    const Campos='MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS_DTCADASTRO, MNS_PERIODO, '+
                 'MNS_RECEITA, MNS_STATUS, MNS_VALOR, MNS_VENCIMENTO, CLI_NOME, CON_NOME, REC_DESCRICAO';
  public
    { Public declarations }
  end;

var
  FormMensalidadesLoc: TFormMensalidadesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormMensalidadesLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormMensalidadesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMensalidades.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMensalidadesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYMensalidades.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMensalidadesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where MNS_CODIGO='+QuotedStr(Edit1.Text)+' order by MNS_CODIGO');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where MNS_CLIENTE='+QuotedStr(Edit3.Text)+Where+' order by MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where REC_DESCRICAO like '+QuotedStr(Edit4.Text+'%')+Where+' order by REC_DESCRICAO, MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where MNS_RECEITA='+QuotedStr(Edit5.Text)+Where+' order by MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where MNS_CONTA='+QuotedStr(Edit6.Text)+Where+' order by MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then
    Where:=' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where MNS_DESCRICAO like '+QuotedStr(Edit7.Text+'%')+Where+' order by MNS_DESCRICAO, MNS_CODIGO desc');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMensalidadesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYMensalidades.Close;
    QYMensalidades.SQL.Clear;
    QYMensalidades.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYMensalidades.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormMensalidadesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMensalidadesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Mensalidades',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CONTA' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO RECEITA' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='RECEITA' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit7.SetFocus
end;

procedure TFormMensalidadesLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormMensalidadesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYMensalidades.Active:=False;
    QYMensalidades.SQL.Clear;
    Where:=' (MNS_DTCADASTRO between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)))+')';
    if CheckBox1.Checked then
    Where:=Where+' and MNS_STATUS='+QuotedStr('A');
    QYMensalidades.SQL.Add('select '+Campos+' from MENSALIDADES '+
                           'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO '+
                           'left join CONTAS on MNS_CONTA=CON_CODIGO '+
                           'left join RECEITAS on MNS_RECEITA=REC_CODIGO '+
                           'where '+Where+' order by MNS_DTCADASTRO desc, MNS_CODIGO');
    QYMensalidades.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMensalidades.SQL.Text);
  end;
end;

procedure TFormMensalidadesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
