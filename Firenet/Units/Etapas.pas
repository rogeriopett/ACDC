unit Etapas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls;

type
  TFormEtapas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtapas: TFormEtapas;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, EtapasLoc, DB, Main;
{$R *.dfm}

procedure TFormEtapas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEtapas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEtapas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBEtapas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEtapas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEtapas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEtapas);
end;

procedure TFormEtapas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtapasLoc, FormEtapasLoc);
  FormEtapasLoc.ShowModal;
  if EtapasLoc.Procurar then
  begin
    DM.TBEtapas.Close;
    DM.TBEtapas.ParamByName('codigo').AsInteger:=FormEtapasLoc.QYEtapasETP_CODIGO.Value;
    DM.TBEtapas.Open;
  end;
  FormEtapasLoc.Free;
  FormEtapasLoc:=nil;
end;

procedure TFormEtapas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda nao',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormEtapas);

finalization
  UnRegisterClass(TFormEtapas);

end.
