unit Ipi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormIpi = class(TForm)
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
  FormIpi: TFormIpi;

implementation
uses DataMod, DB, Funcoes1, Main, IpiLoc, IpiFast;
{$R *.dfm}

procedure TFormIpi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBIpi.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormIpi.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormIpi.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormIpi.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpiLoc, FormIpiLoc);
  FormIpiLoc.ShowModal;
  if IpiLoc.Procurar then
  begin
    DM.TBIpi.Close;
    DM.TBIpi.ParamByName('codigo').AsInteger:=FormIpiLoc.QYIpiIPI_CODIGO.Value;
    DM.TBIpi.Open;
  end;
  FormIpiLoc.Free;
  FormIpiLoc:=nil;
end;

procedure TFormIpi.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpiFast, FormIpiFast);
  FormIpiFast.QY01.Close;
  FormIpiFast.QY01.Open;
  FormIpiFast.frxReport1.Variables['TITULO']:=QuotedStr('IPI');
  FormIpiFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormIpiFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormIpiFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormIpiFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormIpiFast.frxReport1.ShowReport;
  FormIpiFast.Free;
  FormIpiFast:=nil;
end;

procedure TFormIpi.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormIpi.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormIpi);
end;

initialization
  RegisterClass(TFormIpi);

finalization
  UnRegisterClass(TFormIpi);

end.
