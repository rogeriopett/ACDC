unit Familias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormFamilias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Relatorios1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    PngImageList1: TPngImageList;
    Label66: TLabel;
    DBComboBox6: TDBComboBox;
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
  FormFamilias: TFormFamilias;

implementation
uses DataMod, Main, DB, FamiliasLoc, FamiliasFast, Funcoes1;
{$R *.dfm}

procedure TFormFamilias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFamilias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBFamilias.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormFamilias.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamiliasLoc, FormFamiliasLoc);
  FormFamiliasLoc.ShowModal;
  if FamiliasLoc.Procurar then
  begin
    DM.TBFamilias.Close;
    DM.TBFamilias.ParamByName('codigo').AsInteger:=FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value;
    DM.TBFamilias.Open;
  end;
  FormFamiliasLoc.Free;
  FormFamiliasLoc:=nil;
end;

procedure TFormFamilias.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamiliasFast, FormFamiliasFast);
  FormFamiliasFast.QY01.Close;
  FormFamiliasFast.QY01.Open;
  FormFamiliasFast.frxReport1.Variables['TITULO']:=QuotedStr('Famílias');
  FormFamiliasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormFamiliasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormFamiliasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormFamiliasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormFamiliasFast.frxReport1.ShowReport;
  FormFamiliasFast.Free;
  FormFamiliasFast:=nil;
end;

procedure TFormFamilias.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFamilias.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFamilias);
end;

procedure TFormFamilias.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormFamilias);

finalization
  UnRegisterClass(TFormFamilias);

end.
