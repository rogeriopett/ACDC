unit CreditoPresumido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList,
  Vcl.Buttons, PngSpeedButton, DBSBtn;

type
  TFormCreditoPresumido = class(TForm)
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
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBComboBox2: TDBComboBox;
    Label3: TLabel;
    DBComboBox3: TDBComboBox;
    Label4: TLabel;
    DBComboBox4: TDBComboBox;
    Label5: TLabel;
    Label7: TLabel;
    DBComboBox5: TDBComboBox;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreditoPresumido: TFormCreditoPresumido;

implementation
uses DataMod, Funcoes1, Main, DB, CreditoPresumidoLoc;
{$R *.dfm}

procedure TFormCreditoPresumido.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCreditoPresumido.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCreditoPresumido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBCreditoPres.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCreditoPresumido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCreditoPresumido.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCreditoPresumido);
end;

procedure TFormCreditoPresumido.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCreditoPresumidoLoc, FormCreditoPresumidoLoc);
  FormCreditoPresumidoLoc.ShowModal;
  if CreditoPresumidoLoc.Procurar then
  begin
    DM.TBCreditoPres.Close;
    DM.TBCreditoPres.ParamByName('codigo').AsInteger:=FormCreditoPresumidoLoc.QYCreditoPresCPR_CODIGO.Value;
    DM.TBCreditoPres.Open;
  end;
  FormCreditoPresumidoLoc.Free;
  FormCreditoPresumidoLoc:=nil;
end;

procedure TFormCreditoPresumido.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormCreditoPresumido);

finalization
  UnRegisterClass(TFormCreditoPresumido);

end.
