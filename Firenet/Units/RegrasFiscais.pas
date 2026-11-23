unit RegrasFiscais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, DBSBtn, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, PngSpeedButton;

type
  TFormRegrasFiscais = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    SpeedButton10: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    CadastroDeCst1: TMenuItem;
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
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    CadastroDeCST1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    CadastroDeClassificacoesTributarias1: TMenuItem;
    CadastroDeCreditoPresumido1: TMenuItem;
    Label4: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    CadastroDeClassificacoesTributarias1Button: TPngSpeedButton;
    CadastroDeCreditoPresumido1Button: TPngSpeedButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label22: TLabel;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit35: TDBEdit;
    Label32: TLabel;
    DBEdit36: TDBEdit;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeCst1Click(Sender: TObject);
    procedure CadastroDeClassificacoesTributarias1Click(Sender: TObject);
    procedure CadastroDeCreditoPresumido1Click(Sender: TObject);
    procedure DBEdit33Enter(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit33KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton10Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegrasFiscais: TFormRegrasFiscais;

implementation
uses DataMod, Funcoes1, Cst, ClassTrib, CreditoPresumido, RegrasFiscaisLoc, DB,
  FuncoesFirenet;
{$R *.dfm}

procedure TFormRegrasFiscais.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormRegrasFiscais.CadastroDeClassificacoesTributarias1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormClassTrib, FormClassTrib);
  FormClassTrib.ShowModal;
  FormClassTrib.Free;
  FormClassTrib:=nil;
end;

procedure TFormRegrasFiscais.CadastroDeCreditoPresumido1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCreditoPresumido, FormCreditoPresumido);
  FormCreditoPresumido.ShowModal;
  FormCreditoPresumido.Free;
  FormCreditoPresumido:=nil;
end;

procedure TFormRegrasFiscais.CadastroDeCst1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCst, FormCst);
  FormCst.ShowModal;
  FormCst.Free;
  FormCst:=nil;
end;

procedure TFormRegrasFiscais.DBEdit33Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormRegrasFiscais.DBEdit33Exit(Sender: TObject);
begin
  LocClassTribExit(DBEdit33,DBEdit34,DBEdit24,DBEdit23,DBEdit17,DBEdit16,DBEdit18,DBEdit19,DBEdit20,DBEdit21,DBEdit22,DM.TBRegrasFiscais);
end;

procedure TFormRegrasFiscais.DBEdit33KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormRegrasFiscais.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormRegrasFiscais.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormRegrasFiscais.DBEdit4Exit(Sender: TObject);
begin
  LocClassTribExit(DBEdit4,DBEdit5,DBEdit35,DBEdit32,DBEdit25,DBEdit26,DBEdit27,DBEdit28,DBEdit29,DBEdit30,DBEdit31,DM.TBRegrasFiscais);
end;

procedure TFormRegrasFiscais.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormRegrasFiscais.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormRegrasFiscais.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormRegrasFiscais.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormRegrasFiscais.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormRegrasFiscais.DBEdit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormRegrasFiscais.DBEdit9Exit(Sender: TObject);
begin
  LocCreditoPresumidoExit(DBEdit9,DBEdit10,DBEdit13,DBEdit14,DBEdit11,DBEdit12,DBEdit15,DM.TBRegrasFiscais);
end;

procedure TFormRegrasFiscais.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormRegrasFiscais.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormRegrasFiscais.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRegrasFiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBRegrasFiscais.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormRegrasFiscais.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormRegrasFiscais.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar then
  begin
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value;
    DM.TBRegrasFiscais.Open;
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure TFormRegrasFiscais.PngSpeedButton1Click(Sender: TObject);
begin
  LocClassTribBotao(DBEdit4,DBEdit5,DBEdit35,DBEdit32,DBEdit25,DBEdit26,DBEdit27,DBEdit28,DBEdit29,DBEdit30,DBEdit31,DM.TBRegrasFiscais);
end;

procedure TFormRegrasFiscais.PngSpeedButton2Click(Sender: TObject);
begin
  LocCreditoPresumidoBotao(DBEdit9,DBEdit10,DBEdit13,DBEdit14,DBEdit11,DBEdit12,DBEdit15,DM.TBRegrasFiscais);
end;

procedure TFormRegrasFiscais.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormRegrasFiscais.SpeedButton10Click(Sender: TObject);
begin
  LocClassTribBotao(DBEdit33,DBEdit34,DBEdit24,DBEdit23,DBEdit17,DBEdit16,DBEdit18,DBEdit19,DBEdit20,DBEdit21,DBEdit22,DM.TBRegrasFiscais);
end;

initialization
  RegisterClass(TFormRegrasFiscais);

finalization
  UnRegisterClass(TFormRegrasFiscais);

end.
