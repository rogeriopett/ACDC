unit Piscofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormPiscofins = class(TForm)
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPiscofins: TFormPiscofins;

implementation
uses DataMod, DB, Funcoes1, Main, PiscofinsLoc, PiscofinsFast;
{$R *.dfm}

procedure TFormPiscofins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBPiscofins.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormPiscofins.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPiscofins.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPiscofins.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofinsLoc, FormPiscofinsLoc);
  FormPiscofinsLoc.ShowModal;
  if PiscofinsLoc.Procurar then
  begin
    DM.TBPiscofins.Close;
    DM.TBPiscofins.ParamByName('codigo').AsInteger:=FormPiscofinsLoc.QYPiscofinsPIS_CODIGO.Value;
    DM.TBPiscofins.Open;
  end;
  FormPiscofinsLoc.Free;
  FormPiscofinsLoc:=nil;
end;

procedure TFormPiscofins.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofinsFast, FormPiscofinsFast);
  FormPiscofinsFast.QY01.Close;
  FormPiscofinsFast.QY01.Open;
  FormPiscofinsFast.frxReport1.Variables['TITULO']:=QuotedStr('PIS / COFINS');
  FormPiscofinsFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormPiscofinsFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormPiscofinsFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormPiscofinsFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormPiscofinsFast.frxReport1.ShowReport;
  FormPiscofinsFast.Free;
  FormPiscofinsFast:=nil;
end;

procedure TFormPiscofins.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormPiscofins.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormPiscofins);
end;

initialization
  RegisterClass(TFormPiscofins);

finalization
  UnRegisterClass(TFormPiscofins);

end.
