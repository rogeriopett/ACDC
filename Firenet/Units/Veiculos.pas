unit Veiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Menus, Buttons, DBSBtn,
  ExtCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormVeiculos = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculos: TFormVeiculos;

implementation
uses DB, DataMod, Main, VeiculosLoc, VeiculosFast, Funcoes1, DataMod2;
{$R *.dfm}

procedure TFormVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBVeiculos.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#27) then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosLoc, FormVeiculosLoc);
  FormVeiculosLoc.ShowModal;
  if VeiculosLoc.Procurar then
  begin
    DM2.TBVeiculos.Close;
    DM2.TBVeiculos.ParamByName('codigo').asInteger:=FormVeiculosLoc.QYVeiculosVEL_CODIGO.Value;
    DM2.TBVeiculos.Open;
  end;
  FormVeiculosLoc.Free;
  FormVeiculosLoc:=nil;
end;

procedure TFormVeiculos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosFast, FormVeiculosFast);
  FormVeiculosFast.QY01.Close;
  FormVeiculosFast.QY01.Open;
  FormVeiculosFast.frxReport1.Variables['TITULO']:=QuotedStr('Veículos');
  FormVeiculosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormVeiculosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormVeiculosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormVeiculosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormVeiculosFast.frxReport1.ShowReport;
  FormVeiculosFast.Free;
  FormVeiculosFast:=nil;
end;

procedure TFormVeiculos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVeiculos);
end;

procedure TFormVeiculos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormVeiculos);

finalization
  UnRegisterClass(TFormVeiculos);

end.
