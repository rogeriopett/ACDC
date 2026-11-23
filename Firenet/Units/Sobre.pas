unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, jpeg, Menus, System.UITypes;

type
  TFormSobre = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText4: TDBText;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    Telas1: TMenuItem;
    Modulos1: TMenuItem;
    Reordenador1: TMenuItem;
    ZerarBasedeDados1: TMenuItem;
    Label7: TLabel;
    Timer1: TTimer;
    Locs1: TMenuItem;
    ConexesAtivas1: TMenuItem;
    SQLEditor1: TMenuItem;
    Label8: TLabel;
    SenhaPeriodica1: TMenuItem;
    procedure DBText2Click(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image1DblClick(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Telas1Click(Sender: TObject);
    procedure Modulos1Click(Sender: TObject);
    procedure Reordenador1Click(Sender: TObject);
    procedure ZerarBasedeDados1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Locs1Click(Sender: TObject);
    procedure ConexesAtivas1Click(Sender: TObject);
    procedure SQLEditor1Click(Sender: TObject);
    procedure SenhaPeriodica1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSobre: TFormSobre;

implementation
uses ShellAPI, DataMod, Funcoes1, Cadastro, Telas, Modulos, Reorder,
  ZerarBase, Locs, ConexoesAtivas, SQLEditor, SenhaPeriodica;
{$R *.DFM}

procedure TFormSobre.DBText2Click(Sender: TObject);
begin //Chama Programa de Email Padrão.
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBEmpresaEMP_NOSSOEMAIL.Value+'?Subject=Sobre Sistemas'),nil,nil,sw_ShowNormal);
end;

procedure TFormSobre.ConexesAtivas1Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Application.CreateForm(TFormConexoesAtivas, FormConexoesAtivas);
  FormConexoesAtivas.ShowModal;
  FormConexoesAtivas.Free;
  FormConexoesAtivas:=nil;
  Timer1.Enabled:=True;
end;

procedure TFormSobre.DBText1Click(Sender: TObject);
begin //Chama o Navegador Padrão.
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBEmpresaEMP_NOSSOSITE.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled:=False;
end;

procedure TFormSobre.FormCreate(Sender: TObject);
var
  D,M,A: Word;
  Data: TDate;
begin //pega a versao do arquivo. nao esquecer de habilitar esse recurso no delphi. Project -> Options -> VersionInfo.
  Label2.Caption:='Versão Sistema: '+FileVersion(Application.ExeName);
  Label6.Caption:='Versão Base de Dados: '+DM.TBVersaoVER_VERSAOBASE.Value;
  Data:=StrToDate(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenhaNEW),FS);
  Data:=Data+StrToInt(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenhaNEW));
  Label3.Caption:='Data Expiração: '+DateToStr(Data,FS);
  DecodeDate(Date,A,M,D);
  Label1.Caption:='Local da base de dados: '+DM.BaseServidor+':'+DM.BaseBase;
  Label4.Caption:='© Copyright 1995 - '+IntToStr(A)+' - Todos os Direitos Reservados';

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from MON$ATTACHMENTS where MON$SYSTEM_FLAG=0');
  DM.QYAux.Open;
  Label7.Caption:='Usuários Conectados: '+DM.QYAux.FieldByName('QTDE').AsString;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select rdb$get_context(''SYSTEM'',''ENGINE_VERSION'') from rdb$database');
  DM.QYAux.Open;
  Label8.Caption:='Versão do Firebird: '+DM.QYAux.FieldByName('RDB$GET_CONTEXT').AsString;
  DM.QYAux.Close;

  Timer1.Enabled:=True;
end;

procedure TFormSobre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormSobre.Image1DblClick(Sender: TObject);
var PT: TPoint;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin
    GetCursorPos(PT);
    PopupMenu1.Popup(PT.X,PT.Y);
  end;
end;

procedure TFormSobre.Locs1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormLocs, FormLocs);
    FormLocs.ShowModal;
    FormLocs.Free;
    FormLocs:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.Cadastro1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormCadastro, FormCadastro);
    FormCadastro.ShowModal;
    FormCadastro.Free;
    FormCadastro:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.Telas1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormTelas, FormTelas);
    FormTelas.ShowModal;
    FormTelas.Free;
    FormTelas:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.Modulos1Click(Sender: TObject);
var Senha: String;
begin
  repeat //a tela de módulos será utilizada pelo pimpolho.
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if (not (Senha=TodaysPassword)) and (not (Senha='completta')) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='') or (Senha='completta');
  if (Senha=TodaysPassword) or (Senha='completta') then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormModulos, FormModulos);
    FormModulos.ShowModal;
    FormModulos.Free;
    FormModulos:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.Reordenador1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormReorder, FormReorder);
    FormReorder.ShowModal;
    FormReorder.Free;
    FormReorder:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.SenhaPeriodica1Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Application.CreateForm(TFormSenhaPeriodica, FormSenhaPeriodica);
  FormSenhaPeriodica.ShowModal;
  FormSenhaPeriodica.Free;
  FormSenhaPeriodica:=nil;
  Timer1.Enabled:=True;
end;

procedure TFormSobre.SQLEditor1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormSQLEditor, FormSQLEditor);
    FormSQLEditor.ShowModal;
    FormSQLEditor.Free;
    FormSQLEditor:=nil;
    Timer1.Enabled:=True;
  end;
end;

procedure TFormSobre.Timer1Timer(Sender: TObject);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from MON$ATTACHMENTS where MON$SYSTEM_FLAG=0');
  DM.QYAux.Open;
  Label7.Caption:='Usuários Conectados: '+DM.QYAux.FieldByName('QTDE').AsString;
  DM.QYAux.Close;
end;

procedure TFormSobre.ZerarBasedeDados1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Timer1.Enabled:=False;
    Application.CreateForm(TFormZerarBase, FormZerarBase);
    FormZerarBase.ShowModal;
    FormZerarBase.Free;
    FormZerarBase:=nil;
    Timer1.Enabled:=True;
  end;
end;

end.
