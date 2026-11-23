unit Atividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, DBCtrls, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormAtividades = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
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
  FormAtividades: TFormAtividades;

implementation
uses DataMod, Main, DB, AtividadesLoc, Funcoes1, AtividadesFast;

{$R *.dfm}

procedure TFormAtividades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAtividades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBAtividades.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAtividades.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtividadesLoc, FormAtividadesLoc);
  FormAtividadesLoc.ShowModal;
  if AtividadesLoc.Procurar then
  begin
    DM.TBAtividades.Close;
    DM.TBAtividades.ParamByName('codigo').AsInteger:=FormAtividadesLoc.QYAtividadesATI_CODIGO.Value;
    DM.TBAtividades.Open;
  end;
  FormAtividadesLoc.Free;
  FormAtividadesLoc:=nil;
end;

procedure TFormAtividades.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtividadesFast, FormAtividadesFast);
  FormAtividadesFast.QY01.Close;
  FormAtividadesFast.QY01.Open;
  FormAtividadesFast.frxReport1.Variables['TITULO']:=QuotedStr('Ramos de Atividades');
  FormAtividadesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormAtividadesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormAtividadesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormAtividadesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormAtividadesFast.frxReport1.ShowReport;
  FormAtividadesFast.Free;
  FormAtividadesFast:=nil;
end;

procedure TFormAtividades.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAtividades.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAtividades);
end;

procedure TFormAtividades.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormAtividades);

finalization
  UnRegisterClass(TFormAtividades);

end.
