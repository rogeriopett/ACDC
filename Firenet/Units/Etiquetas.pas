unit Etiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, System.UITypes;

type
  TFormEtiquetas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    PngImageList1: TPngImageList;
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
    Bevel2: TBevel;
    ImprimirEtiqueta1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    DBComboBox4: TDBComboBox;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    N2: TMenuItem;
    ImprimirEtiqueta1: TMenuItem;
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ImprimirEtiqueta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtiquetas: TFormEtiquetas;

implementation
uses DataMod, Funcoes1, Main, DB, EtiquetasLoc;
{$R *.dfm}

procedure TFormEtiquetas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('http://firenet.runtimesistemas.com.br/configuracao-de-etiquetas-pplb/');
end;

procedure TFormEtiquetas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBEtiquetas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEtiquetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEtiquetas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEtiquetas);
end;

procedure TFormEtiquetas.ImprimirEtiqueta1Click(Sender: TObject);
var F: TextFile;
begin
  AbortIf(DM.TBEtiquetas.IsEmpty,'Nenhuma etiqueta selecionada.');

  if MessageDlg('Deseja imprimir a etiqueta selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas'+IntToStr(DM.TBEtiquetasETQ_CODIGO.Value)+'.txt');
    Rewrite(F);
    WriteLn(F,DM.TBEtiquetasETQ_CONTEUDO.Value);
    CloseFile(F);
    { TODO -orogerio : Parametrizar outras portas }
    PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas'+IntToStr(DM.TBEtiquetasETQ_CODIGO.Value)+'.txt',DM.EtiquetasEmbalagemPorta); //parametrizar outras portas?!
  end;
end;

procedure TFormEtiquetas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtiquetasLoc, FormEtiquetasLoc);
  FormEtiquetasLoc.ShowModal;
  if EtiquetasLoc.Procurar then
  begin
    DM.TBEtiquetas.Close;
    DM.TBEtiquetas.ParamByName('codigo').AsInteger:=FormEtiquetasLoc.QYEtiquetasETQ_CODIGO.Value;
    DM.TBEtiquetas.Open;
  end;
  FormEtiquetasLoc.Free;
  FormEtiquetasLoc:=nil;
end;

procedure TFormEtiquetas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível. Solicite o relatório desejado para o suporte técnico.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormEtiquetas);

finalization
  UnRegisterClass(TFormEtiquetas);

end.
