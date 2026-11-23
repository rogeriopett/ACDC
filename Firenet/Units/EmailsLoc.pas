unit EmailsLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Mask, StdCtrls, Grids, DBGrids, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEmailsLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DSEmails: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label7: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label12: TLabel;
    QYEmails: TFDQuery;
    TREmails: TFDTransaction;
    QYEmailsEMA_ASSUNTO: TIntegerField;
    QYEmailsEMA_CLIENTE: TIntegerField;
    QYEmailsEMA_CODIGO: TIntegerField;
    QYEmailsEMA_DESTINATARIOS: TStringField;
    QYEmailsEMA_DTCADASTRO: TDateField;
    QYEmailsEMA_DTULTENVIO: TDateField;
    QYEmailsEMA_EMAILCONTA: TIntegerField;
    QYEmailsEMA_VENDEDOR: TIntegerField;
    QYEmailsASS_DESCRICAO: TStringField;
    QYEmailsCLI_NOME: TStringField;
    QYEmailsEMC_NOME: TStringField;
    QYEmailsVEN_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmailsLoc: TFormEmailsLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEmailsLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, EmailsEnviar, FuncoesFirenet;
{$R *.dfm}

procedure TFormEmailsLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEmails.IsEmpty then
  begin
    Procurar:=True;
    //Close;
    DM2.TBEmails.Close;
    DM2.TBEmails.ParamByName('codigo').AsInteger:=FormEmailsLoc.QYEmailsEMA_CODIGO.Value;
    DM2.TBEmails.Open;
    DM2.TBEmails.Edit;
    Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
    EmailsEnviar.CriarNovoEmail:=False;
    FormEmailsEnviar.ShowModal;
    FormEmailsEnviar.Free;
    FormEmailsEnviar:=nil;
  end;
end;

procedure TFormEmailsLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEmails.IsEmpty) then
  begin
    Procurar:=True;
    //Close;
    DM2.TBEmails.Close;
    DM2.TBEmails.ParamByName('codigo').AsInteger:=FormEmailsLoc.QYEmailsEMA_CODIGO.Value;
    DM2.TBEmails.Open;
    DM2.TBEmails.Edit;
    Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
    EmailsEnviar.CriarNovoEmail:=False;
    FormEmailsEnviar.ShowModal;
    FormEmailsEnviar.Free;
    FormEmailsEnviar:=nil;
  end;
end;

procedure TFormEmailsLoc.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit10.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_DESTINATARIOS like '+QuotedStr(Edit10.Text+'%')+'order by EMA_DESTINATARIOS, EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_CODIGO='+Edit1.Text);
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMC_NOME like '+QuotedStr(Edit2.Text+'%')+'order by EMC_NOME, EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_CLIENTE='+Edit3.Text+' order by EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where CLI_NOME like '+QuotedStr(Edit4.Text+'%')+'order by CLI_NOME, EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_EMAILCONTA='+Edit5.Text+' order by EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_ASSUNTO='+Edit6.Text+' order by EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where ASS_DESCRICAO like '+QuotedStr(Edit7.Text+'%')+'order by ASS_DESCRICAO, EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit8.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_VENDEDOR='+Edit8.Text+' order by EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit9.Text)='' then Exit;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where VEN_NOME like '+QuotedStr(Edit9.Text+'%')+'order by VEN_NOME, EMA_CODIGO desc');
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEmailsLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEmailsLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEmailsLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Emails',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD ASS' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='ASSUNTO' then Edit7.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESTINATARIOS' then Edit10.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD REM' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='REMETENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD CLI' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD VEND' then Edit8.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit9.SetFocus;
end;

procedure TFormEmailsLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormEmailsLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYEmails.Active:=False;
    QYEmails.SQL.Clear;
    QYEmails.SQL.Add('select EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_DESTINATARIOS, EMA_DTCADASTRO, EMA_DTULTENVIO, '+
                     'EMA_EMAILCONTA, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, EMC_NOME, VEN_NOME from EMAILS '+
                     'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                     'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                     'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                     'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                     'where EMA_DTCADASTRO between :datainicial and :datafinal order by EMA_CODIGO desc');
    QYEmails.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYEmails.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYEmails.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEmailsLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
