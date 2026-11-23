unit ExamesTipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.Mask;

type
  TFormExamesTipos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    PngImageList1: TPngImageList;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExamesTipos: TFormExamesTipos;

implementation
uses DataMod2, Funcoes1, ExamesTiposLoc, DB, ExamesTiposFast, Main, DataMod;
{$R *.dfm}

procedure TFormExamesTipos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormExamesTipos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormExamesTipos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormExamesTipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBExamesTipos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormExamesTipos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormExamesTipos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormExamesTipos);
end;

procedure TFormExamesTipos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormExamesTiposLoc, FormExamesTiposLoc);
  FormExamesTiposLoc.ShowModal;
  if ExamesTiposLoc.Procurar then
  begin
    DM2.TBExamesTipos.Close;
    DM2.TBExamesTipos.ParamByName('codigo').AsInteger:=FormExamesTiposLoc.QYExamesTiposEXT_CODIGO.Value;
    DM2.TBExamesTipos.Open;
  end;
  FormExamesTiposLoc.Free;
  FormExamesTiposLoc:=nil;
end;

procedure TFormExamesTipos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormExamesTiposFast, FormExamesTiposFast);
  FormExamesTiposFast.QY01.Close;
  FormExamesTiposFast.QY01.Open;
  FormExamesTiposFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de Exames');
  FormExamesTiposFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormExamesTiposFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormExamesTiposFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormExamesTiposFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormExamesTiposFast.frxReport1.ShowReport;
  FormExamesTiposFast.Free;
  FormExamesTiposFast:=nil;
end;

initialization
  RegisterClass(TFormExamesTipos);

finalization
  UnRegisterClass(TFormExamesTipos);

end.
