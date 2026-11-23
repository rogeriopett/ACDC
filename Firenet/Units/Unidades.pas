unit Unidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, ImgList,
  PngImageList, Menus, StdCtrls, Mask, System.ImageList, System.UITypes;

type
  TFormUnidades = class(TForm)
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
  FormUnidades: TFormUnidades;

implementation
uses DataMod2, Funcoes1, DB, Main, UnidadesLoc, UnidadesFast, DataMod;
{$R *.dfm}

procedure TFormUnidades.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormUnidades.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBUnidades.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormUnidades.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormUnidades);
end;

procedure TFormUnidades.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUnidadesLoc , FormUnidadesLoc);
  FormUnidadesLoc.ShowModal;
  if UnidadesLoc.Procurar then
  begin
    DM2.TBUnidades.Close;
    DM2.TBUnidades.ParamByName('codigo').AsString:=FormUnidadesLoc.QYUnidadesUNI_CODIGO.Value;
    DM2.TBUnidades.Open;
  end;
  FormUnidadesLoc.Free;
  FormUnidadesLoc:=nil;
end;

procedure TFormUnidades.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormUnidadesFast, FormUnidadesFast);
  FormUnidadesFast.QY01.Close;
  FormUnidadesFast.QY01.Open;
  FormUnidadesFast.frxReport1.Variables['TITULO']:=QuotedStr('Unidades de Medida');
  FormUnidadesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormUnidadesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormUnidadesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormUnidadesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormUnidadesFast.frxReport1.ShowReport;
  FormUnidadesFast.Free;
  FormUnidadesFast:=nil;
end;

initialization
  RegisterClass(TFormUnidades);

finalization
  UnRegisterClass(TFormUnidades);

end.
