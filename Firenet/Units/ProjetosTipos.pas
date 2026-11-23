unit ProjetosTipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormProjetosTipos = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosTipos: TFormProjetosTipos;

implementation
uses DataMod, Main, DB, Funcoes1, ProjetosTiposLoc, ProjetosTiposFast,
  DataMod2;
{$R *.dfm}

procedure TFormProjetosTipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProjetosTipos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProjetosTipos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosTipos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProjetosTipos);
end;

procedure TFormProjetosTipos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProjetosTipos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosTiposLoc, FormProjetosTiposLoc);
  FormProjetosTiposLoc.ShowModal;
  if ProjetosTiposLoc.Procurar then
  begin
    DM2.TBProjetosTipos.Close;
    DM2.TBProjetosTipos.ParamByName('codigo').AsInteger:=FormProjetosTiposLoc.QYProjetosTiposPJT_CODIGO.Value;
    DM2.TBProjetosTipos.Open;
  end;
  FormProjetosTiposLoc.Free;
  FormProjetosTiposLoc:=nil;
end;

procedure TFormProjetosTipos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetosTipos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosTiposFast, FormProjetosTiposFast);
  FormProjetosTiposFast.QY01.Close;
  FormProjetosTiposFast.QY01.Open;
  FormProjetosTiposFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de Projetos');
  FormProjetosTiposFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormProjetosTiposFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormProjetosTiposFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormProjetosTiposFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormProjetosTiposFast.frxReport1.ShowReport;
  FormProjetosTiposFast.Free;
  FormProjetosTiposFast:=nil;
end;

initialization
  RegisterClass(TFormProjetosTipos);

finalization
  UnRegisterClass(TFormProjetosTipos);

end.
