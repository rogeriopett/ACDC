unit AvaliacoesTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormAvaliacoesTipo = class(TForm)
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
  FormAvaliacoesTipo: TFormAvaliacoesTipo;

implementation
uses DataMod, Funcoes1, Main, DB, AvaliacoesTipoLoc, AvaliacoesTipoFast, DataMod2;
{$R *.dfm}

procedure TFormAvaliacoesTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBAvaliacoesTipo.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAvaliacoesTipo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAvaliacoesTipo.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAvaliacoesTipo.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipoLoc, FormAvaliacoesTipoLoc);
  FormAvaliacoesTipoLoc.ShowModal;
  if AvaliacoesTipoLoc.Procurar then
  begin
    DM2.TBAvaliacoesTipo.Close;
    DM2.TBAvaliacoesTipo.ParamByName('codigo').AsInteger:=FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_CODIGO.Value;
    DM2.TBAvaliacoesTipo.Open;
  end;
  FormAvaliacoesTipoLoc.Free;
  FormAvaliacoesTipoLoc:=nil;
end;

procedure TFormAvaliacoesTipo.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipoFast, FormAvaliacoesTipoFast);
  FormAvaliacoesTipoFast.QY01.Close;
  FormAvaliacoesTipoFast.QY01.Open;
  FormAvaliacoesTipoFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de Avaliações');
  FormAvaliacoesTipoFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormAvaliacoesTipoFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormAvaliacoesTipoFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormAvaliacoesTipoFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormAvaliacoesTipoFast.frxReport1.ShowReport;
  FormAvaliacoesTipoFast.Free;
  FormAvaliacoesTipoFast:=nil;
end;

procedure TFormAvaliacoesTipo.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAvaliacoesTipo.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAvaliacoesTipo);
end;

initialization
  RegisterClass(TFormAvaliacoesTipo);

finalization
  UnRegisterClass(TFormAvaliacoesTipo);

end.
