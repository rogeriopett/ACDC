unit ZapMensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons, PngSpeedButton, DBSBtn;

type
  TFormZapMensagens = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
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
    PngImageList1: TPngImageList;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    SpeedButton9: TPngSpeedButton;
    Label12: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZapMensagens: TFormZapMensagens;

implementation
uses DataMod, DataMod2, Funcoes1, DB, ZapMensagensLoc, Main, FuncoesFirenet;
{$R *.dfm}

procedure TFormZapMensagens.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormZapMensagens.DBEdit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormZapMensagens.DBEdit12Exit(Sender: TObject);
begin
  LocZapInstanciasExit(DBEdit31,DBEdit32,DM2.TBZapMensagens);
end;

procedure TFormZapMensagens.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormZapMensagens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormZapMensagens.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormZapMensagens.DBEdit31Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit31,DBEdit32,nil,DM2.TBZapMensagens);
end;

procedure TFormZapMensagens.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormZapMensagens.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormZapMensagens.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormZapMensagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBZapMensagens.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormZapMensagens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormZapMensagens.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormZapMensagens);
end;

procedure TFormZapMensagens.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZapMensagensLoc, FormZapMensagensLoc);
  FormZapMensagensLoc.ShowModal;
  if FormZapMensagensLoc.Procurar then
  begin
    DM2.TBZapMensagens.Close;
    DM2.TBZapMensagens.ParamByName('codigo').AsInteger:=FormZapMensagensLoc.QYZapMensagensZAM_CODIGO.Value;
    DM2.TBZapMensagens.Open;
  end;
  FormZapMensagensLoc.Free;
  FormZapMensagensLoc:=nil;
end;

procedure TFormZapMensagens.PngSpeedButton1Click(Sender: TObject);
begin
  LocZapInstanciasBotao(DBEdit12,DBEdit13,DM2.TBZapMensagens);
end;

procedure TFormZapMensagens.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormZapMensagens.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit31,DBEdit32,nil,DM2.TBZapMensagens);
end;

initialization
  RegisterClass(TFormZapMensagens);

finalization
  UnRegisterClass(TFormZapMensagens);

end.
