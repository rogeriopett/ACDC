unit Receitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, StdCtrls, Mask, Menus,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormReceitas = class(TForm)
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
    Fechar1Button: TPngSpeedButton;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  FormReceitas: TFormReceitas;

implementation
uses DataMod, ReceitasLoc, ReceitasFast, Agrupadores, Funcoes1,
  DataModSearch, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceitas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceitas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormReceitas);
end;

procedure TFormReceitas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceitas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceitasLoc, FormReceitasLoc);
  FormReceitasLoc.ShowModal;
  if ReceitasLoc.Procurar then
  begin
    DM.TBReceitas.Close;
    DM.TBReceitas.ParamByName('codigo').AsInteger:=FormReceitasLoc.QYReceitasREC_CODIGO.Value;
    DM.TBReceitas.Open;
  end;
  FormReceitasLoc.Free;
  FormReceitasLoc:=nil;
end;

procedure TFormReceitas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceitasFast, FormReceitasFast);
  FormReceitasFast.QY01.Close;
  FormReceitasFast.QY01.Open;
  FormReceitasFast.frxReport1.Variables['TITULO']:=QuotedStr('Receitas');
  FormReceitasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormReceitasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormReceitasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormReceitasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormReceitasFast.frxReport1.ShowReport;
  FormReceitasFast.Free;
  FormReceitasFast:=nil;
end;

procedure TFormReceitas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBReceitas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormReceitas.DBEdit33Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceitas.DBEdit33Exit(Sender: TObject);
begin
  LocAgrupadoresExit(DBEdit33,DBEdit34,DM.TBReceitas);
end;

procedure TFormReceitas.DBEdit33KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton10.Click;
end;

procedure TFormReceitas.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceitas.SpeedButton10Click(Sender: TObject);
begin
  LocAgrupadoresBotao(DBEdit33,DBEdit34,DM.TBReceitas);
end;

procedure TFormReceitas.CadastroDeAgrupadores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadores, FormAgrupadores);
  FormAgrupadores.ShowModal;
  FormAgrupadores.Free;
  FormAgrupadores:=nil;
end;

procedure TFormReceitas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormReceitas);

finalization
  UnRegisterClass(TFormReceitas);

end.
