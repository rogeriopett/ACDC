unit Beneficios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Mask;

type
  TFormBeneficios = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
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
    Relatorios: TMenuItem;
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
    Relatorios1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Relatorios1: TMenuItem;
    procedure Relatorios1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBeneficios: TFormBeneficios;

implementation
uses DataMod, Funcoes1, Db, BeneficiosLoc;

{$R *.dfm}

procedure TFormBeneficios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBeneficios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBeneficios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBBeneficios.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormBeneficios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBeneficios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBBeneficios.Close;
    DM.TBBeneficios.ParamByName('codigo').AsString:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
    DM.TBBeneficios.Open;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormBeneficios.Relatorios1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormBeneficios);

finalization
  UnRegisterClass(TFormBeneficios);

end.
