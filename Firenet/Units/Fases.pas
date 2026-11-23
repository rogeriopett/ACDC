unit Fases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormFases = class(TForm)
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFases: TFormFases;

implementation
uses DataMod, FasesLoc, FasesFast, Main, DB, Funcoes1, DataMod2;
{$R *.dfm}

procedure TFormFases.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBFases.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormFases.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFasesLoc, FormFasesLoc);
  FormFasesLoc.ShowModal;
  if FasesLoc.Procurar then
  begin
    DM2.TBFases.Close;
    DM2.TBFases.ParamByName('codigo').AsInteger:=FormFasesLoc.QYFasesFAS_CODIGO.Value;
    DM2.TBFases.Open;
  end;
  FormFasesLoc.Free;
  FormFasesLoc:=nil;
end;

procedure TFormFases.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFasesFast, FormFasesFast);
  FormFasesFast.QY01.Close;
  FormFasesFast.QY01.Open;
  FormFasesFast.frxReport1.Variables['TITULO']:=QuotedStr('Fases');
  FormFasesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormFasesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormFasesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormFasesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormFasesFast.frxReport1.ShowReport;
  FormFasesFast.Free;
  FormFasesFast:=nil;
end;

procedure TFormFases.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFases.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFases);
end;

procedure TFormFases.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormFases);

finalization
  UnRegisterClass(TFormFases);

end.
