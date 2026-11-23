unit Despesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, StdCtrls, Mask, Menus,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormDespesas = class(TForm)
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
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    SpeedButton10: TPngSpeedButton;
    N1: TMenuItem;
    CadastroDeAgrupadores1: TMenuItem;
    Bevel2: TBevel;
    CadastroDeAgrupadores1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Fechar1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit33KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton10Click(Sender: TObject);
    procedure CadastroDeAgrupadores1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit33Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDespesas: TFormDespesas;

implementation
uses DataMod, DespesasLoc, DespesasFast, Agrupadores, Funcoes1,
  DataModSearch, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormDespesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBDespesas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormDespesas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDespesas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormDespesas);
end;

procedure TFormDespesas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDespesas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDespesasLoc, FormDespesasLoc);
  FormDespesasLoc.ShowModal;
  if DespesasLoc.Procurar then
  begin
    DM.TBDespesas.Close;
    DM.TBDespesas.ParamByName('codigo').AsInteger:=FormDespesasLoc.QYDespesasDES_CODIGO.Value;
    DM.TBDespesas.Open;
  end;
  FormDespesasLoc.Free;
  FormDespesasLoc:=nil;
end;

procedure TFormDespesas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormDespesasFast, FormDespesasFast);
  FormDespesasFast.QY01.Close;
  FormDespesasFast.QY01.Open;
  FormDespesasFast.frxReport1.Variables['TITULO']:=QuotedStr('Despesas');
  FormDespesasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormDespesasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormDespesasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormDespesasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormDespesasFast.frxReport1.ShowReport;
  FormDespesasFast.Free;
  FormDespesasFast:=nil;
end;

procedure TFormDespesas.DBEdit33Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDespesas.DBEdit33Exit(Sender: TObject);
begin
  LocAgrupadoresExit(DBEdit33,DBEdit34,DM.TBDespesas);
end;

procedure TFormDespesas.DBEdit33KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormDespesas.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDespesas.SpeedButton10Click(Sender: TObject);
begin
  LocAgrupadoresBotao(DBEdit33,DBEdit34,DM.TBDespesas);
end;

procedure TFormDespesas.CadastroDeAgrupadores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadores, FormAgrupadores);
  FormAgrupadores.ShowModal;
  FormAgrupadores.Free;
  FormAgrupadores:=nil;
end;

procedure TFormDespesas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormDespesas);

finalization
  UnRegisterClass(TFormDespesas);

end.
