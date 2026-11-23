unit Mobiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Buttons, System.UITypes,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormMobiles = class(TForm)
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
    CadastroDeVendedores1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios1: TMenuItem;
    N2: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    N1: TMenuItem;
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
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMobiles: TFormMobiles;

implementation
uses DataMod, DataModSearch, Funcoes1, Vendedores, MobilesLoc, MobilesFast, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormMobiles.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMobiles.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormMobiles.DBEdit31Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMobiles.DBEdit31Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit31,DBEdit32,DM.TBMobiles);
end;

procedure TFormMobiles.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormMobiles.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormMobiles.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMobiles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBMobiles.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMobiles.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMobiles.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMobiles);
end;

procedure TFormMobiles.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMobilesLoc, FormMobilesLoc);
  FormMobilesLoc.ShowModal;
  if MobilesLoc.Procurar then
  begin
    DM.TBMobiles.Close;
    DM.TBMobiles.ParamByName('codigo').AsInteger:=FormMobilesLoc.QYMobilesMOB_CODIGO.Value;
    DM.TBMobiles.Open;
  end;
  FormMobilesLoc.Free;
  FormMobilesLoc:=nil;
end;

procedure TFormMobiles.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMobilesFast, FormMobilesFast);
  FormMobilesFast.QY01.Close;
  FormMobilesFast.QY01.Open;
  FormMobilesFast.frxReport1.Variables['TITULO']:=QuotedStr('Dispositivos Mobiles');
  FormMobilesFast.frxReport1.Variables['USUARIO']:=QuotedStr(UsuarioLogin);
  FormMobilesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMobilesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMobilesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMobilesFast.frxReport1.ShowReport;
  FormMobilesFast.Free;
  FormMobilesFast:=nil;
end;

procedure TFormMobiles.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit31,DBEdit32,DM.TBMobiles);
end;

initialization
  RegisterClass(TFormMobiles);

finalization
  UnRegisterClass(TFormMobiles);

end.
