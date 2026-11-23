unit Motivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask,
  PngSpeedButton, ImgList, PngImageList, System.ImageList, System.UITypes;

type
  TFormMotivos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
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
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivos: TFormMotivos;

implementation
uses DataMod, Main, DB, MotivosLoc, MotivosFast, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormMotivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMotivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMotivos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMotivos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivosLoc, FormMotivosLoc);
  FormMotivosLoc.ShowModal;
  if MotivosLoc.Procurar then
  begin
    DM2.TBMotivos.Close;
    DM2.TBMotivos.ParamByName('codigo').AsInteger:=FormMotivosLoc.QYMotivosMOT_CODIGO.Value;
    DM2.TBMotivos.Open;
  end;
  FormMotivosLoc.Free;
  FormMotivosLoc:=nil;
end;

procedure TFormMotivos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivosFast, FormMotivosFast);
  FormMotivosFast.QY01.Close;
  FormMotivosFast.QY01.Open;
  FormMotivosFast.frxReport1.Variables['TITULO']:=QuotedStr('Motivos');
  FormMotivosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormMotivosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMotivosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMotivosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMotivosFast.frxReport1.ShowReport;
  FormMotivosFast.Free;
  FormMotivosFast:=nil;
end;

procedure TFormMotivos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMotivos);
end;

procedure TFormMotivos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMotivos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormMotivos);

finalization
  UnRegisterClass(TFormMotivos);

end.
