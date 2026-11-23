unit ServicosHoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask,
  DB, Grids, DBGrids, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes;

type
  TFormServicosHoras = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    SpeedButton18: TPngSpeedButton;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    Label1: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBText6: TDBText;
    DBGrid1: TDBGrid;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N1: TMenuItem;
    DBText7: TDBText;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosHoras: TFormServicosHoras;

implementation
uses DataMod, Funcoes1, Main, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosHoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBServicosHoras.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormServicosHoras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicosHoras.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicosHoras.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormServicosHoras.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosHoras.DBEdit2Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit2,DBEdit6,nil,DM.TBServicosHoras);
end;

procedure TFormServicosHoras.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton18.Click;
end;

procedure TFormServicosHoras.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosHoras.SpeedButton18Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit2,DBEdit6,nil,DM.TBServicosHoras);
end;

procedure TFormServicosHoras.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormServicosHoras);
end;

procedure TFormServicosHoras.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBServicosHorasSEH_HORAINICIO.Clear;
end;

procedure TFormServicosHoras.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBServicosHorasSEH_HORAFIM.Clear;
end;

procedure TFormServicosHoras.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBServicosHorasSEH_DATA.Clear;
end;

initialization
  RegisterClass(TFormServicosHoras);

finalization
  UnRegisterClass(TFormServicosHoras);

end.
