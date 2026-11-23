unit Mensalidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, DBSBtn, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, PngSpeedButton, System.UITypes;

type
  TFormMensalidades = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    SpeedButton10: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
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
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label4: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    CadastroDeContas1Button: TPngSpeedButton;
    CadastroDeReceitas1Button: TPngSpeedButton;
    CadastroDeContas1: TMenuItem;
    CadastroDeReceitas1: TMenuItem;
    N3: TMenuItem;
    GerarContasAReceber1: TMenuItem;
    Bevel3: TBevel;
    GerarContasAReceber1Button: TPngSpeedButton;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit4: TDBEdit;
    N4: TMenuItem;
    MensalidadesPorReceita1: TMenuItem;
    MensalidadesPorPeriodo1: TMenuItem;
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeContas1Click(Sender: TObject);
    procedure CadastroDeReceitas1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GerarContasAReceber1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure MensalidadesPorReceita1Click(Sender: TObject);
    procedure MensalidadesPorPeriodo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensalidades: TFormMensalidades;

implementation
uses DataMod2, Funcoes1, Clientes, Contas, Receitas, DataModSearch,
  DataMod, MensalidadesLoc, DB, Main, MensalidadesGerar, FuncoesFirenet, MensalidadesRel;

{$R *.dfm}

procedure TFormMensalidades.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMensalidades.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormMensalidades.CadastroDeContas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormMensalidades.CadastroDeReceitas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceitas, FormReceitas);
  FormReceitas.ShowModal;
  FormReceitas.Free;
  FormReceitas:=nil;
end;

procedure TFormMensalidades.DBEdit11Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMensalidades.DBEdit11Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit4,DBEdit5,DM2.TBMensalidades);
end;

procedure TFormMensalidades.DBEdit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormMensalidades.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidades.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMensalidades.DBEdit4Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit4,DBEdit5,DM2.TBMensalidades);
end;

procedure TFormMensalidades.DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormMensalidades.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidades.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMensalidades.DBEdit6Exit(Sender: TObject);
begin
  LocContasExit(DBEdit6,DBEdit7,DM2.TBMensalidades);
end;

procedure TFormMensalidades.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormMensalidades.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidades.DBEdit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMensalidades.DBEdit8Exit(Sender: TObject);
begin
  LocReceitasExit(DBEdit8,DBEdit9,DM2.TBMensalidades);
end;

procedure TFormMensalidades.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormMensalidades.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMensalidades.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMensalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMensalidades.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMensalidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMensalidades.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMensalidades);
end;

procedure TFormMensalidades.GerarContasAReceber1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidadesGerar, FormMensalidadesGerar);
  FormMensalidadesGerar.ShowModal;
  FormMensalidadesGerar.Free;
  FormMensalidadesGerar:=nil;
end;

procedure TFormMensalidades.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidadesLoc, FormMensalidadesLoc);
  FormMensalidadesLoc.ShowModal;
  if MensalidadesLoc.Procurar then
  begin
    DM2.TBMensalidades.Close;
    DM2.TBMensalidades.ParamByName('codigo').AsInteger:=FormMensalidadesLoc.QYMensalidadesMNS_CODIGO.Value;
    DM2.TBMensalidades.Open;
  end;
  FormMensalidadesLoc.Free;
  FormMensalidadesLoc:=nil;
end;

procedure TFormMensalidades.MensalidadesPorPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidadesRel, FormMensalidadesRel);
  FormMensalidadesRel.ComboBox1.Enabled:=False;
  FormMensalidadesRel.ComboBox1.ItemIndex:=1;
  FormMensalidadesRel.ComboBox1Change(Self);
  FormMensalidadesRel.ShowModal;
  FormMensalidadesRel.Free;
  FormMensalidadesRel:=nil;
end;

procedure TFormMensalidades.MensalidadesPorReceita1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidadesRel, FormMensalidadesRel);
  FormMensalidadesRel.ComboBox1.Enabled:=False;
  FormMensalidadesRel.ComboBox1.ItemIndex:=0;
  FormMensalidadesRel.ComboBox1Change(Self);
  FormMensalidadesRel.ShowModal;
  FormMensalidadesRel.Free;
  FormMensalidadesRel:=nil;
end;

procedure TFormMensalidades.PngSpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(DBEdit6,DBEdit7,DM2.TBMensalidades);
end;

procedure TFormMensalidades.PngSpeedButton2Click(Sender: TObject);
begin
  LocReceitasBotao(DBEdit8,DBEdit9,DM2.TBMensalidades);
end;

procedure TFormMensalidades.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidadesRel, FormMensalidadesRel);
  FormMensalidadesRel.ShowModal;
  FormMensalidadesRel.Free;
  FormMensalidadesRel:=nil;
end;

procedure TFormMensalidades.SpeedButton10Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit4,DBEdit5,DM2.TBMensalidades);
end;

initialization
  RegisterClass(TFormMensalidades);

finalization
  UnRegisterClass(TFormMensalidades);

end.
