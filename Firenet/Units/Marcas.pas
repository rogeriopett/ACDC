unit Marcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormMarcas = class(TForm)
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
  FormMarcas: TFormMarcas;

implementation
uses DataMod, DataMod2, DB, MarcasLoc, MarcasFast, Funcoes1, Main;
{$R *.dfm}

procedure TFormMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBMarcas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMarcas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMarcas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMarcas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcasLoc , FormMarcasLoc);
  FormMarcasLoc.ShowModal;
  if MarcasLoc.Procurar then
  begin
    DM2.TBMarcas.Close;
    DM2.TBMarcas.ParamByName('codigo').AsInteger:=FormMarcasLoc.QYMarcasMAR_CODIGO.Value;
    DM2.TBMarcas.Open;
  end;
  FormMarcasLoc.Free;
  FormMarcasLoc:=nil;
end;

procedure TFormMarcas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcasFast, FormMarcasFast);
  FormMarcasFast.QY01.Close;
  FormMarcasFast.QY01.Open;
  FormMarcasFast.frxReport1.Variables['TITULO']:=QuotedStr('Marcas');
  FormMarcasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormMarcasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMarcasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMarcasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMarcasFast.frxReport1.ShowReport;
  FormMarcasFast.Free;
  FormMarcasFast:=nil;
end;

procedure TFormMarcas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMarcas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMarcas);
end;

initialization
  RegisterClass(TFormMarcas);

finalization
  UnRegisterClass(TFormMarcas);

end.
