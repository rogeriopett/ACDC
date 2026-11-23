unit Grupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormGrupos = class(TForm)
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    PngImageList1: TPngImageList;
    Label66: TLabel;
    DBComboBox6: TDBComboBox;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
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
  FormGrupos: TFormGrupos;

implementation
uses DataMod, Main, DB, GruposLoc, GruposFast, Funcoes1;
{$R *.dfm}

procedure TFormGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBGrupos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormGrupos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGruposLoc, FormGruposLoc);
  FormGruposLoc.ShowModal;
  if GruposLoc.Procurar then
  begin
    DM.TBGrupos.Close;
    DM.TBGrupos.ParamByName('codigo').AsInteger:=FormGruposLoc.QYGruposGRU_CODIGO.Value;
    DM.TBGrupos.Open;
  end;
  FormGruposLoc.Free;
  FormGruposLoc:=nil;
end;

procedure TFormGrupos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormGruposFast, FormGruposFast);
  FormGruposFast.QY01.Close;
  FormGruposFast.QY01.Open;
  FormGruposFast.frxReport1.Variables['TITULO']:=QuotedStr('Grupos');
  FormGruposFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormGruposFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormGruposFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormGruposFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormGruposFast.frxReport1.ShowReport;
  FormGruposFast.Free;
  FormGruposFast:=nil;
end;

procedure TFormGrupos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormGrupos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormGrupos);
end;

procedure TFormGrupos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormGrupos);

finalization
  UnRegisterClass(TFormGrupos);

end.
