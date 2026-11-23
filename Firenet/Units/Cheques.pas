unit Cheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, StdCtrls, Menus, Mask, DB,
  ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormCheques = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    Label4: TLabel;
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
    Label56: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    SpeedButton18: TPngSpeedButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBComboBox3: TDBComboBox;
    N1: TMenuItem;
    ChequesPorCliente1: TMenuItem;
    ChequesPorBanco1: TMenuItem;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    PngImageList1: TPngImageList;
    N3: TMenuItem;
    LerBandaMagnetica1: TMenuItem;
    LerBandaMagnetica1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeBancos1Button: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    CadastroDeBancos1: TMenuItem;
    N4: TMenuItem;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    N6: TMenuItem;
    AlterarChequeParaAberto1: TMenuItem;
    AlterarChequeParaCompensado1: TMenuItem;
    AlterarChequeParaDevolvido1: TMenuItem;
    DBText3: TDBText;
    Bevel2: TBevel;
    AlterarChequeParaAberto1Button: TPngSpeedButton;
    AlterarChequeParaCompensado1Button: TPngSpeedButton;
    AlterarChequeParaDevolvido1Button: TPngSpeedButton;
    Bevel3: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ChequesPorCliente1Click(
      Sender: TObject);
    procedure ChequesPorBanco1Click(
      Sender: TObject);
    procedure LerBandaMagnetica1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeBancos1Click(Sender: TObject);
    procedure AlterarChequeParaAberto1Click(Sender: TObject);
    procedure AlterarChequeParaCompensado1Click(Sender: TObject);
    procedure AlterarChequeParaDevolvido1Click(Sender: TObject);
    procedure DBEdit52Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheques: TFormCheques;

implementation
uses DataMod, DataMod2, DataModSearch, Main, Funcoes1, ChequesLoc, ChequesRel, ChequesLerBanda, Bancos, Clientes, FuncoesFirenet;
{$R *.dfm}

procedure TFormCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBCheques.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCheques.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCheques);
end;

procedure TFormCheques.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCheques.LerBandaMagnetica1Click(Sender: TObject);
begin
  if DM2.TBCheques.State in [dsBrowse] then
  DM2.TBCheques.Insert;
  Application.CreateForm(TFormChequesLerBanda, FormChequesLerBanda);
  FormChequesLerBanda.ShowModal;
  FormChequesLerBanda.Free;
  FormChequesLerBanda:=nil;
end;

procedure TFormCheques.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChequesLoc, FormChequesLoc);
  FormChequesLoc.ShowModal;
  if ChequesLoc.Procurar then
  begin
    DM2.TBCheques.Close;
    DM2.TBCheques.ParamByName('codigo').AsInteger:=FormChequesLoc.QYChequesCHE_CODIGO.Value;
    DM2.TBCheques.Open;
  end;
  FormChequesLoc.Free;
  FormChequesLoc:=nil;
end;

procedure TFormCheques.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormChequesRel, FormChequesRel);
  FormChequesRel.ShowModal;
  FormChequesRel.Free;
  FormChequesRel:=nil;
end;

procedure TFormCheques.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCheques.DBEdit52Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCheques.DBEdit52Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit52,DBEdit53,DM2.TBCheques);
end;

procedure TFormCheques.DBEdit52KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton18.Click;
end;

procedure TFormCheques.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCheques.SpeedButton18Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit52,DBEdit53,DM2.TBCheques);
end;

procedure TFormCheques.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCheques.DBEdit4Exit(Sender: TObject);
begin
  LocBancosExit(DBEdit4,DBEdit5,DM2.TBCheques);
end;

procedure TFormCheques.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormCheques.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCheques.SpeedButton3Click(Sender: TObject);
begin
  LocBancosBotao(DBEdit4,DBEdit5,DM2.TBCheques);
end;

procedure TFormCheques.AlterarChequeParaAberto1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCheques.IsEmpty,'Nenhum cheque selecionado.');
  AbortIf(DM2.TBChequesCHE_STATUS.Value='A','Este cheque já está em aberto.');

  if MessageDlg('Alterar status do cheque para Aberto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCheques.Edit;
    DM2.TBChequesCHE_STATUS.Value:='A';
    DM2.TBCheques.Post;
  end;
end;

procedure TFormCheques.AlterarChequeParaCompensado1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCheques.IsEmpty,'Nenhum cheque selecionado.');
  AbortIf(DM2.TBChequesCHE_STATUS.Value='C','Este cheque já está compensado.');

  if MessageDlg('Alterar status do cheque para Compensado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCheques.Edit;
    DM2.TBChequesCHE_STATUS.Value:='C';
    DM2.TBCheques.Post;
  end;
end;

procedure TFormCheques.AlterarChequeParaDevolvido1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCheques.IsEmpty,'Nenhum cheque selecionado.');
  AbortIf(DM2.TBChequesCHE_STATUS.Value='D','Este cheque já está como devolvido.');

  if MessageDlg('Alterar status do cheque para Devolvido?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCheques.Edit;
    DM2.TBChequesCHE_STATUS.Value:='D';
    DM2.TBCheques.Post;
  end;
end;

procedure TFormCheques.CadastroDeBancos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBancos, FormBancos);
  FormBancos.ShowModal;
  FormBancos.Free;
  FormBancos:=nil;
end;

procedure TFormCheques.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormCheques.ChequesPorCliente1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormChequesRel, FormChequesRel);
  FormChequesRel.ComboBox2.Enabled:=False;
  FormChequesRel.ComboBox2.ItemIndex:=0;
  FormChequesRel.ComboBox2Change(Self);
  FormChequesRel.ShowModal;
  FormChequesRel.Free;
  FormChequesRel:=nil;
end;

procedure TFormCheques.ChequesPorBanco1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormChequesRel, FormChequesRel);
  FormChequesRel.ComboBox2.Enabled:=False;
  FormChequesRel.ComboBox2.ItemIndex:=1;
  FormChequesRel.ComboBox2Change(Self);
  FormChequesRel.ShowModal;
  FormChequesRel.Free;
  FormChequesRel:=nil;
end;

initialization
  RegisterClass(TFormCheques);

finalization
  UnRegisterClass(TFormCheques);

end.

