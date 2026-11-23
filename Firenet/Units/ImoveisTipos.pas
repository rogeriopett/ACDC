unit ImoveisTipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ImgList, PngImageList, Menus, Mask, System.ImageList, System.UITypes;

type
  TFormImoveisTipos = class(TForm)
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
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  FormImoveisTipos: TFormImoveisTipos;

implementation
uses DataMod2, Funcoes1, DB, ImoveisTiposLoc, ImoveisTiposFast, Main, DataMod;
{$R *.dfm}

procedure TFormImoveisTipos.Ajuda2Click(Sender: TObject);
begin
   MostrarAjuda('');
end;

procedure TFormImoveisTipos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormImoveisTipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBImoveisTipos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormImoveisTipos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormImoveisTipos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormImoveisTipos);
end;

procedure TFormImoveisTipos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisTiposLoc, FormImoveisTiposLoc);
  FormImoveisTiposLoc.ShowModal;
  if ImoveisTiposLoc.Procurar then
  begin
    DM2.TBImoveisTipos.Close;
    DM2.TBImoveisTipos.ParamByName('codigo').AsInteger:=FormImoveisTiposLoc.QYImoveisTiposIMT_CODIGO.Value;
    DM2.TBImoveisTipos.Open;
  end;
  FormImoveisTiposLoc.Free;
  FormImoveisTiposLoc:=nil;
end;

procedure TFormImoveisTipos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisTiposFast, FormImoveisTiposFast);
  FormImoveisTiposFast.QY01.Close;
  FormImoveisTiposFast.QY01.Open;
  FormImoveisTiposFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de imóveis');
  FormImoveisTiposFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormImoveisTiposFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormImoveisTiposFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormImoveisTiposFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormImoveisTiposFast.frxReport1.ShowReport;
  FormImoveisTiposFast.Free;
  FormImoveisTiposFast:=nil;
end;

initialization
  RegisterClass(TFormImoveisTipos);

finalization
  UnRegisterClass(TFormImoveisTipos);

end.
