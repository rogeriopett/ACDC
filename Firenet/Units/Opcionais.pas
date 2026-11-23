unit Opcionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Menus, Buttons, DBSBtn,
  ExtCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes;

type
  TFormOpcionais = class(TForm)
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
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOpcionais: TFormOpcionais;

implementation
uses DataMod, Main, DB, OpcionaisFast, OpcionaisLoc, Funcoes1, DataMod2;
{$R *.dfm}

procedure TFormOpcionais.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormOpcionais.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOpcionaisLoc, FormOpcionaisLoc);
  FormOpcionaisLoc.ShowModal;
  if OpcionaisLoc.Procurar then
  begin
    DM2.TBOpcionais.Close;
    DM2.TBOpcionais.ParamByName('codigo').AsInteger:=FormOpcionaisLoc.QYOpcionaisOPC_CODIGO.Value;
    DM2.TBOpcionais.Open;
  end;
  FormOpcionaisLoc.Free;
  FormOpcionaisLoc:=nil;
end;

procedure TFormOpcionais.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormOpcionaisFast, FormOpcionaisFast);
  FormOpcionaisFast.QY01.Close;
  FormOpcionaisFast.QY01.Open;
  FormOpcionaisFast.frxReport1.Variables['TITULO']:=QuotedStr('Opcionais');
  FormOpcionaisFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormOpcionaisFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormOpcionaisFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormOpcionaisFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormOpcionaisFast.frxReport1.ShowReport;
  FormOpcionaisFast.Free;
  FormOpcionaisFast:=nil;
end;

procedure TFormOpcionais.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormOpcionais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBOpcionais.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormOpcionais.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormOpcionais);
end;

procedure TFormOpcionais.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormOpcionais);

finalization
  UnRegisterClass(TFormOpcionais);

end.
