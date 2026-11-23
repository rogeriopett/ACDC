unit Cst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFormCst = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Label5: TLabel;
    DBComboBox4: TDBComboBox;
    Label7: TLabel;
    DBComboBox5: TDBComboBox;
    Label8: TLabel;
    DBComboBox6: TDBComboBox;
    Label9: TLabel;
    DBComboBox7: TDBComboBox;
    Label10: TLabel;
    DBComboBox8: TDBComboBox;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCst: TFormCst;

implementation
uses DataMod, Funcoes1, Main, DB, CstLoc;
{$R *.dfm}

procedure TFormCst.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCst.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBCst.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCst.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCst.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCst);
end;

procedure TFormCst.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCstLoc, FormCstLoc);
  FormCstLoc.ShowModal;
  if CstLoc.Procurar then
  begin
    DM.TBCst.Close;
    DM.TBCst.ParamByName('codigo').AsString:=FormCstLoc.QYCstCST_CODIGO.Value;
    DM.TBCst.Open;
  end;
  FormCstLoc.Free;
  FormCstLoc:=nil;
end;

procedure TFormCst.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormCst);

finalization
  UnRegisterClass(TFormCst);

end.
