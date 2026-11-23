unit Taxas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask;

type
  TFormTaxas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label66: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox6: TDBComboBox;
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
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBEdit4: TDBEdit;
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
  FormTaxas: TFormTaxas;

implementation

{$R *.dfm}

uses DataMod, Main, TaxasLoc, TaxasFast, Funcoes1, DB;

procedure TFormTaxas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTaxas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTaxas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBTaxas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormTaxas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTaxas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormTaxas);
end;

procedure TFormTaxas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxasLoc, FormTaxasLoc);
  FormTaxasLoc.ShowModal;
  if TaxasLoc.Procurar then
  begin
    DM.TBTaxas.Close;
    DM.TBTaxas.ParamByName('codigo').AsInteger:=FormTaxasLoc.QYTaxasTAX_CODIGO.Value;
    DM.TBTaxas.Open;
  end;
  FormTaxasLoc.Free;
  FormTaxasLoc:=nil;
end;

procedure TFormTaxas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxasFast, FormTaxasFast);
  FormTaxasFast.QY01.Close;
  FormTaxasFast.QY01.Open;
  FormTaxasFast.frxReport1.Variables['TITULO']:=QuotedStr('Taxas');
  FormTaxasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormTaxasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormTaxasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormTaxasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormTaxasFast.frxReport1.ShowReport;
  FormTaxasFast.Free;
  FormTaxasFast:=nil;
end;

initialization
  RegisterClass(TFormTaxas);

finalization
  UnRegisterClass(TFormTaxas);

end.
