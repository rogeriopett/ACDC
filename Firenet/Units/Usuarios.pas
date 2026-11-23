unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls,
  Menus, DBSBtn, CheckLst, DB, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, System.UITypes;

type
  TFormUsuarios = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;             
    Arquivo1: TMenuItem;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    ControleDeAcessos1Button: TPngSpeedButton;
    ControleDeAcessos1: TMenuItem;
    Localizar1Button: TPngSpeedButton;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Ajuda2Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Label5: TLabel;
    SpeedButton9: TPngSpeedButton;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    PngImageList1: TPngImageList;
    AlterarSenha1: TMenuItem;
    AlterarSenha1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    N3: TMenuItem;
    CadastrodeVendedores1: TMenuItem;
    Label2: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBComboBox3: TDBComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure ControleDeAcessos1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure CadastrodeVendedores1Click(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;

implementation
uses DataMod, UsuariosLoc, UsuariosAcessos, Main, Funcoes1,
  AlterarSenha, Vendedores, DataModSearch, UsuariosFast, FuncoesFirenet;
{$R *.DFM}

procedure TFormUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBUsuarios.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormUsuarios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuarios.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosFast, FormUsuariosFast);
  FormUsuariosFast.QY01.Close;
  FormUsuariosFast.QY01.Open;
  FormUsuariosFast.frxReport1.Variables['TITULO']:=QuotedStr('Usuários');
  FormUsuariosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormUsuariosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormUsuariosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormUsuariosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormUsuariosFast.frxReport1.ShowReport;
  FormUsuariosFast.Free;
  FormUsuariosFast:=nil;
end;

procedure TFormUsuarios.ControleDeAcessos1Click(Sender: TObject);
begin
  //DM.TBAcessos.DataSource:=DM.DSUsuarios;
  Application.CreateForm(TFormUsuariosAcessos, FormUsuariosAcessos);
  FormUsuariosAcessos.ShowModal;
  FormUsuariosAcessos.Free;
  FormUsuariosAcessos:=nil;
  //DM.TBAcessos.DataSource:=nil;
end;

procedure TFormUsuarios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuariosLoc, FormUsuariosLoc);
  FormUsuariosLoc.ShowModal;
  if UsuariosLoc.Procurar then
  begin
    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=FormUsuariosLoc.QYUsuariosUSU_CODIGO.Value;
    DM.TBUsuarios.Open;

    DM.TBAcessos.Close;
    DM.TBAcessos.Open;
  end;
  FormUsuariosLoc.Free;
  FormUsuariosLoc:=nil;
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
  //FormMain.DesabilitarControles2(FormUsuarios);
end;

procedure TFormUsuarios.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#32 then Key:=#0; //nao deixa digitar espaço.
  if Key<>#13 then
  DM.TBUsuarios.Edit else
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormUsuarios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormUsuarios.AlterarSenha1Click(Sender: TObject);
begin
  //neste caso, não localiza o usuario antes.
  Application.CreateForm(TFormAlterarSenha, FormAlterarSenha);
  FormAlterarSenha.CancelarFecharAplicacao:=False; //se cancelar NAO fecha a aplicação.
  FormAlterarSenha.BitBtn1.Visible:=False;
  FormAlterarSenha.BitBtn1.Enabled:=False;
  FormAlterarSenha.Edit1.Enabled:=False;
  FormAlterarSenha.Edit1.Visible:=False;
  FormAlterarSenha.Label1.Visible:=False;
  FormAlterarSenha.PngBitBtn1.Left:=FormAlterarSenha.BitBtn1.Left;
  FormAlterarSenha.PngBitBtn1.Top:=FormAlterarSenha.BitBtn1.Top;
  FormAlterarSenha.PngBitBtn1.Enabled:=True;
  FormAlterarSenha.PngBitBtn1.Visible:=True;
  FormAlterarSenha.ShowModal;
  FormAlterarSenha.Free;
  FormAlterarSenha:=nil;
end;

procedure TFormUsuarios.CadastrodeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormUsuarios.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormUsuarios.DBEdit31Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit31,DBEdit32,nil,DM.TBUsuarios);
end;

procedure TFormUsuarios.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormUsuarios.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormUsuarios.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit31,DBEdit32,nil,DM.TBUsuarios);
end;

procedure TFormUsuarios.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#32 then Key:=#0; //nao deixa digitar espaço.
end;

initialization
  RegisterClass(TFormUsuarios);

finalization
  UnRegisterClass(TFormUsuarios);

end.
