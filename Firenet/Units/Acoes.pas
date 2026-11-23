unit Acoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Menus, ImgList, PngImageList, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, Mask, System.ImageList, System.UITypes;

type
  TFormAcoes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcoes: TFormAcoes;

implementation
uses DataMod, DataMod2, Funcoes1, AcoesLoc, DB, Main, AcoesFast;
{$R *.dfm}

procedure TFormAcoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAcoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAcoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBAcoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAcoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAcoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAcoes);
end;

procedure TFormAcoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoesLoc, FormAcoesLoc);
  FormAcoesLoc.ShowModal;
  if AcoesLoc.Procurar then
  begin
    DM2.TBAcoes.Close;
    DM2.TBAcoes.ParamByName('codigo').AsInteger:=FormAcoesLoc.QYAcoesACO_CODIGO.Value;
    DM2.TBAcoes.Open;
  end;
  FormAcoesLoc.Free;
  FormAcoesLoc:=nil;
end;

procedure TFormAcoes.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoesFast, FormAcoesFast);
  FormAcoesFast.QY01.Close;
  FormAcoesFast.QY01.Open;
  FormAcoesFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de Ações');
  FormAcoesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormAcoesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormAcoesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormAcoesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormAcoesFast.frxReport1.ShowReport;
  FormAcoesFast.Free;
  FormAcoesFast:=nil;
end;

initialization
  RegisterClass(TFormAcoes);

finalization
  UnRegisterClass(TFormAcoes);

end.
