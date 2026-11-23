unit Equipamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  TFormEquipamentos = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
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
    PngImageList1: TPngImageList;
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
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    ConsultarPlaca1: TMenuItem;
    ConsultarPlaca1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConsultarPlaca1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InserirNovo: Boolean;
  end;

var
  FormEquipamentos: TFormEquipamentos;

implementation
uses DataMod, Funcoes1, DB, EquipamentosLoc, Main, ConsultarPlaca;
{$R *.dfm}

procedure TFormEquipamentos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEquipamentos.ConsultarPlaca1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarPlaca, FormConsultarPlaca);
  FormConsultarPlaca.AtualizarOS:=False;
  FormConsultarPlaca.Cliente:=DM.TBEquipamentosEQP_CLIENTE.Value;
  FormConsultarPlaca.MaskEdit1.Text:=DM.TBEquipamentosEQP_SERIE.Value;
  FormConsultarPlaca.ShowModal;
  FormConsultarPlaca.Free;
  FormConsultarPlaca:=nil;
end;

procedure TFormEquipamentos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEquipamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBEquipamentos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEquipamentos.FormCreate(Sender: TObject);
begin
  InserirNovo:=False;
end;

procedure TFormEquipamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEquipamentos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEquipamentos);
  if InserirNovo=True then
  begin
    DM.TBEquipamentos.Insert;
    if not DM.TBClientes.IsEmpty then
    begin
      DM.TBEquipamentosEQP_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
      DM.TBEquipamentosCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
      DBEdit2.SetFocus;
    end;
  end;
end;

procedure TFormEquipamentos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEquipamentosLoc, FormEquipamentosLoc);
  FormEquipamentosLoc.ShowModal;
  if EquipamentosLoc.Procurar then
  begin
    DM.TBEquipamentos.Close;
    DM.TBEquipamentos.ParamByName('codigo').AsInteger:=FormEquipamentosLoc.QYEquipamentosEQP_CODIGO.Value;
    DM.TBEquipamentos.Open;
  end;
  FormEquipamentosLoc.Free;
  FormEquipamentosLoc:=nil;
end;

procedure TFormEquipamentos.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormEquipamentos);

finalization
  UnRegisterClass(TFormEquipamentos);

end.
