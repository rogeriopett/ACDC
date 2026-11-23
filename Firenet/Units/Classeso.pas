unit Classeso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormClasses = class(TForm)
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
  FormClasses: TFormClasses;

implementation
uses DataMod, DataMod2, DB, ClassesLoc, ClassesFast, Funcoes1, Main;
{$R *.dfm}

procedure TFormClasses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBClasses.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormClasses.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClasses.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClasses.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassesLoc , FormClassesLoc);
  FormClassesLoc.ShowModal;
  if ClassesLoc.Procurar then
  begin
    DM2.TBClasses.Close;
    DM2.TBClasses.ParamByName('codigo').AsInteger:=FormClassesLoc.QYClassesCLS_CODIGO.Value;
    DM2.TBClasses.Open;
  end;
  FormClassesLoc.Free;
  FormClassesLoc:=nil;
end;

procedure TFormClasses.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassesFast, FormClassesFast);
  FormClassesFast.QY01.Close;
  FormClassesFast.QY01.Open;
  FormClassesFast.frxReport1.Variables['TITULO']:=QuotedStr('Classes');
  FormClassesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormClassesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormClassesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormClassesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormClassesFast.frxReport1.ShowReport;
  FormClassesFast.Free;
  FormClassesFast:=nil;
end;

procedure TFormClasses.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClasses.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClasses);
end;

initialization
  RegisterClass(TFormClasses);

finalization
  UnRegisterClass(TFormClasses);

end.
