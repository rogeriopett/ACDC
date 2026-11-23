unit Prontuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormProntuarios = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label66: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    DBText4: TDBText;
    ArquivosDoProntuario1Button: TPngSpeedButton;
    ArquivosDoProntuario1: TMenuItem;
    InformarObito1: TMenuItem;
    FinalizarProntuario1: TMenuItem;
    N1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ReabrirProntuario1: TMenuItem;
    ReabrirProntuario1Button: TPngSpeedButton;
    FinalizarProntuario1Button: TPngSpeedButton;
    InformarObito1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    RemoverObito1: TMenuItem;
    N6: TMenuItem;
    RemoverObito1Button: TPngSpeedButton;
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ArquivosDoProntuario1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure InformarObito1Click(Sender: TObject);
    procedure FinalizarProntuario1Click(Sender: TObject);
    procedure ReabrirProntuario1Click(Sender: TObject);
    procedure RemoverObito1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProntuarios: TFormProntuarios;

implementation
uses DataMod, DataMod2, DataModSearch, ClientesLoc, Main, Funcoes1, DB,
  ProntuariosLoc, ProntuariosArquivos, Clientes;
{$R *.dfm}

procedure TFormProntuarios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProntuarios.ArquivosDoProntuario1Click(Sender: TObject);
var Pasta: String;
  D,M,A: Word;
begin
  AbortIf(DM2.TBProntuarios.IsEmpty,'Nenhum prontuário selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALPRONTUARIOS.Value='','Parâmetro de localização dos prontuários não definido.'+#13+'Defina em Parâmetros do Sistema.');

  DecodeDate(DM2.TBProntuariosPEP_DTCADASTRO.Value,A,M,D);
  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALPRONTUARIOS.Value);
  Pasta:=Pasta+A.ToString+'\'+AlignText(IntToStr(DM2.TBProntuariosPEP_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormProntuariosArquivos, FormProntuariosArquivos);
  FormProntuariosArquivos.Pasta:=Pasta;
  FormProntuariosArquivos.FileListBox1.Directory:=Pasta;
  FormProntuariosArquivos.FileListBox1.ItemIndex:=0;
  FormProntuariosArquivos.ShowModal;
  FormProntuariosArquivos.Free;
  FormProntuariosArquivos:=nil;
end;

procedure TFormProntuarios.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormProntuarios.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    DM2.TBProntuariosPEP_DTATENDIMENTO.Clear;
  end;
end;

procedure TFormProntuarios.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProntuarios.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBProntuarios.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProntuariosCLI_CNS.Clear;
    DM2.TBProntuariosCLI_NOME.Clear;
    DM2.TBProntuariosCLI_SAME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProntuarios.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      if DMS.QYClientesCLI_OBITO.Value='S' then
      begin
        MessageDlg('Este cliente já tem óbito informado.',mtWarning,[mbOk],0);
      end;
      DM2.TBProntuariosCLI_CNS.Value:=DMS.QYClientesCLI_CNS.Value;
      DM2.TBProntuariosCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBProntuariosCLI_SAME.Value:=DMS.QYClientesCLI_SAME.Value;
    end else
    begin
      DM2.TBProntuariosCLI_CNS.Clear;
      DM2.TBProntuariosCLI_NOME.Clear;
      DM2.TBProntuariosCLI_SAME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormProntuarios.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormProntuarios.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProntuarios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProntuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBProntuarios.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormProntuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProntuarios.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProntuarios);
end;

procedure TFormProntuarios.InformarObito1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProntuarios.IsEmpty,'Nenhum prontuário selecionado.');
  AbortIf(DM2.TBProntuariosPEP_OBITO.Value='S','Já está informado o óbito neste prontuário.');

  if MessageDlg('Deseja informar o óbito neste prontuário?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProntuarios.Edit;
    DM2.TBProntuariosPEP_OBITO.Value:='S';
    DM2.TBProntuarios.Post;

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBProntuariosPEP_CLIENTE.Value;
    DM.TBClientes.Open;
    DM.TBClientes.Edit;
    DM.TBClientesCLI_OBITO.Value:='S';
    DM.TBClientesCLI_DTOBITO.Value:=DM2.TBProntuariosPEP_DTATENDIMENTO.Value;
    DM.TBClientes.Post;
    MessageDlg('Informação de óbito alterada com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProntuarios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProntuariosLoc, FormProntuariosLoc);
  FormProntuariosLoc.ShowModal;
  if ProntuariosLoc.Procurar then
  begin
    DM2.TBProntuarios.Close;
    DM2.TBProntuarios.ParamByName('codigo').AsInteger:=FormProntuariosLoc.QYProntuariosPEP_CODIGO.Value;
    DM2.TBProntuarios.Open;
  end;
  FormProntuariosLoc.Free;
  FormProntuariosLoc:=nil;
end;

procedure TFormProntuarios.FinalizarProntuario1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBProntuarios.IsEmpty,'Nenhum prontuário selecionado.');
  AbortIf(DM2.TBProntuariosPEP_STATUS.Value='F','Este prontuário já está finalizado.');

  if MessageDlg('Deseja finalizar esse prontuário?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProntuarios.Edit;
    DM2.TBProntuariosPEP_STATUS.Value:='F';
    DM2.TBProntuarios.Post;
  end;
end;

procedure TFormProntuarios.ReabrirProntuario1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProntuarios.IsEmpty,'Nenhum prontuário selecionado.');
  AbortIf(DM2.TBProntuariosPEP_STATUS.Value='A','Este prontuário ainda está em aberto.');

  if MessageDlg('Deseja reabrir esse prontuario?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProntuarios.Edit;
    DM2.TBProntuariosPEP_STATUS.Value:='A';
    DM2.TBProntuarios.Post;
  end;
end;

procedure TFormProntuarios.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormProntuarios.RemoverObito1Click(Sender: TObject);
begin
  AbortIf(DM2.TBProntuarios.IsEmpty,'Nenhum prontuário selecionado.');
  AbortIf(DM2.TBProntuariosPEP_OBITO.Value='N','Não está informado óbito neste prontuário.');

  if MessageDlg('Deseja remover o óbito neste prontuário?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBProntuarios.Edit;
    DM2.TBProntuariosPEP_OBITO.Value:='N';
    DM2.TBProntuarios.Post;
    MessageDlg('Óbito do prontuário removido.'+#13#10+#13#10+'A informação de óbito no cadastro do cliente também deve ser removida.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProntuarios.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if FormClientesLoc.QYClientesCLI_OBITO.Value='S' then
    begin
      MessageDlg('Este cliente já tem óbito informado.',mtWarning,[mbOk],0);
    end;
    DM2.TBProntuarios.Edit;
    DM2.TBProntuariosPEP_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBProntuariosCLI_CNS.Value:=FormClientesLoc.QYClientesCLI_CNS.Value;
    DM2.TBProntuariosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBProntuariosCLI_SAME.Value:=FormClientesLoc.QYClientesCLI_SAME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormProntuarios);

finalization
  UnRegisterClass(TFormProntuarios);

end.
