unit VendedoresHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TFormVendedoresHist = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
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
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBText3: TDBText;
    DBText2: TDBText;
    Label34: TLabel;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    TiposDeHistorico1: TMenuItem;
    N1: TMenuItem;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure TiposDeHistorico1Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendedoresHist: TFormVendedoresHist;

implementation
uses DataMod, Funcoes1, Main, VendedoresHistTipos, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendedoresHist.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendedoresHist.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendedoresHist.DBEdit30Exit(Sender: TObject);
begin
  LocVendedoresHistTiposExit(DBEdit30,DBEdit29,DM.TBVendedoresHist);
end;

procedure TFormVendedoresHist.DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormVendedoresHist.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendedoresHist.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendedoresHist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBVendedoresHist.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormVendedoresHist.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendedoresHist.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVendedoresHist);
end;

procedure TFormVendedoresHist.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormVendedoresHist.SpeedButton7Click(Sender: TObject);
begin
  LocVendedoresHistTiposBotao(DBEdit30,DBEdit29,DM.TBVendedoresHist);
end;

procedure TFormVendedoresHist.TiposDeHistorico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresHistTipos, FormVendedoresHistTipos);
  FormVendedoresHistTipos.ShowModal;
  FormVendedoresHistTipos.Free;
  FormVendedoresHistTipos:=nil;
end;

initialization
  RegisterClass(TFormVendedoresHist);

finalization
  UnRegisterClass(TFormVendedoresHist);

end.

