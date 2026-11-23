unit Cursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ImgList, PngImageList, Menus, Mask, System.ImageList, System.UITypes;

type
  TFormCursos = class(TForm)
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
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  FormCursos: TFormCursos;

implementation
uses DataMod2, Funcoes1, CursosLoc, CursosFast, DB, Main, DataMod;
{$R *.dfm}

procedure TFormCursos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCursos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCursos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBCursos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCursos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCursos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCursos);
end;

procedure TFormCursos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursosLoc, FormCursosLoc);
  FormCursosLoc.ShowModal;
  if CursosLoc.Procurar then
  begin
    DM2.TBCursos.Close;
    DM2.TBCursos.ParamByName('codigo').AsInteger:=FormCursosLoc.QYCursosCUR_CODIGO.Value;
    DM2.TBCursos.Open;
  end;
  FormCursosLoc.Free;
  FormCursosLoc:=nil;
end;

procedure TFormCursos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursosFast, FormCursosFast);
  FormCursosFast.QY01.Close;
  FormCursosFast.QY01.Open;
  FormCursosFast.frxReport1.Variables['TITULO']:=QuotedStr('Cursos');
  FormCursosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormCursosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormCursosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormCursosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormCursosFast.frxReport1.ShowReport;
  FormCursosFast.Free;
  FormCursosFast:=nil;
end;

initialization
  RegisterClass(TFormCursos);

finalization
  UnRegisterClass(TFormCursos);

end.
