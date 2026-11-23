unit Ecf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormEcf = class(TForm)
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios1: TMenuItem;
    N2: TMenuItem;
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
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label39: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit37: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
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
  FormEcf: TFormEcf;

implementation
uses DataMod, Funcoes1, Main, DB, EcfLoc, EcfFast;
{$R *.dfm}

procedure TFormEcf.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEcf.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEcf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBEcf.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEcf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEcf.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEcf);
end;

procedure TFormEcf.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEcfLoc, FormEcfLoc);
  FormEcfLoc.ShowModal;
  if EcfLoc.Procurar then
  begin
    DM.TBEcf.Close;
    DM.TBEcf.ParamByName('codigo').AsInteger:=FormEcfLoc.QYEcfECF_CODIGO.Value;
    DM.TBEcf.Open;
  end;
  FormEcfLoc.Free;
  FormEcfLoc:=nil;
end;

procedure TFormEcf.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEcfFast, FormEcfFast);
  FormEcfFast.QY01.Close;
  FormEcfFast.QY01.Open;
  FormEcfFast.frxReport1.Variables['TITULO']:=QuotedStr('Relação de ECFs');
  FormEcfFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormEcfFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormEcfFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormEcfFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormEcfFast.frxReport1.ShowReport;
  FormEcfFast.Free;
  FormEcfFast:=nil;
end;

initialization
  RegisterClass(TFormEcf);

finalization
  UnRegisterClass(TFormEcf);

end.
