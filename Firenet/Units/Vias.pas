unit Vias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask;

type
  TFormVias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    Relatorios1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
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
  FormVias: TFormVias;

implementation
uses DataMod, Funcoes1, ViasLoc, ViasFast, Main, DB;
{$R *.dfm}

procedure TFormVias.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVias.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBVias.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormVias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVias.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVias);
end;

procedure TFormVias.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormViasLoc, FormViasLoc);
  FormViasLoc.ShowModal;
  if ViasLoc.Procurar then
  begin
    DM.TBVias.Close;
    DM.TBVias.ParamByName('codigo').AsInteger:=FormViasLoc.QYViasVIA_CODIGO.Value;
    DM.TBVias.Open;
  end;
  FormViasLoc.Free;
  FormViasLoc:=nil;
end;

procedure TFormVias.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormViasFast, FormViasFast);
  FormViasFast.QY01.Close;
  FormViasFast.QY01.Open;
  FormViasFast.frxReport1.Variables['TITULO']:=QuotedStr('Vias de Contato');
  FormViasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormViasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormViasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormViasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormViasFast.frxReport1.ShowReport;
  FormViasFast.Free;
  FormViasFast:=nil;
end;

initialization
  RegisterClass(TFormVias);

finalization
  UnRegisterClass(TFormVias);

end.
