unit Medicamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, System.UITypes;

type
  TFormMedicamentos = class(TForm)
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
  FormMedicamentos: TFormMedicamentos;

implementation
uses DataMod, Main, DB, MedicamentosLoc, MedicamentosFast, Funcoes1, DataMod2;
{$R *.dfm}

procedure TFormMedicamentos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMedicamentos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMedicamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMedicamentos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMedicamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMedicamentos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMedicamentos);
end;

procedure TFormMedicamentos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicamentosLoc, FormMedicamentosLoc);
  FormMedicamentosLoc.ShowModal;
  if MedicamentosLoc.Procurar then
  begin
    DM2.TBMedicamentos.Close;
    DM2.TBMedicamentos.ParamByName('codigo').AsInteger:=FormMedicamentosLoc.QYMedicamentosMTO_CODIGO.Value;
    DM2.TBMedicamentos.Open;
  end;
  FormMedicamentosLoc.Free;
  FormMedicamentosLoc:=nil;
end;

procedure TFormMedicamentos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicamentosFast, FormMedicamentosFast);
  FormMedicamentosFast.QY01.Close;
  FormMedicamentosFast.QY01.Open;
  FormMedicamentosFast.frxReport1.Variables['TITULO']:=QuotedStr('Medicamentos');
  FormMedicamentosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormMedicamentosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMedicamentosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMedicamentosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMedicamentosFast.frxReport1.ShowReport;
  FormMedicamentosFast.Free;
  FormMedicamentosFast:=nil;
end;

initialization
  RegisterClass(TFormMedicamentos);

finalization
  UnRegisterClass(TFormMedicamentos);

end.
