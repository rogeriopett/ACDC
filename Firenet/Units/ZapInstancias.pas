unit ZapInstancias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask;

type
  TFormZapInstancias = class(TForm)
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
    N1: TMenuItem;
    Instancias1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
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
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    GerarWebHookToken1Button: TPngSpeedButton;
    N3: TMenuItem;
    GerarWebHookToken1: TMenuItem;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Instancias1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure GerarWebHookToken1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZapInstancias: TFormZapInstancias;

implementation
uses DataMod, DataMod2, Funcoes1, DB, ZapInstanciasLoc, Main, MD5;
{$R *.dfm}

procedure TFormZapInstancias.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormZapInstancias.DBEdit7Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormZapInstancias.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormZapInstancias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBZapInstancias.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormZapInstancias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormZapInstancias.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormZapInstancias);
end;

procedure TFormZapInstancias.Instancias1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
//  Application.CreateForm(TFormZapInstanciasRel, FormZapInstanciasRel);
//  FormZapInstanciasRel.ComboBox1.Enabled:=False;
//  FormZapInstanciasRel.ComboBox1.ItemIndex:=0;
//  //FormZapInstanciasRel.ComboBox1Change(Self);
//  FormZapInstanciasRel.ShowModal;
//  FormZapInstanciasRel.Free;
//  FormZapInstanciasRel:=nil;
end;

procedure TFormZapInstancias.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZapInstanciasLoc, FormZapInstanciasLoc);
  FormZapInstanciasLoc.ShowModal;
  if ZapInstanciasLoc.Procurar then
  begin
    DM2.TBZapInstancias.Close;
    DM2.TBZapInstancias.ParamByName('codigo').AsInteger:=FormZapInstanciasLoc.QYZapInstanciasZIN_CODIGO.Value;
    DM2.TBZapInstancias.Open;
  end;
  FormZapInstanciasLoc.Free;
  FormZapInstanciasLoc:=nil;
end;

procedure TFormZapInstancias.GerarWebHookToken1Click(Sender: TObject);
begin
  AbortIf(DM2.TBZapInstancias.IsEmpty,'Nenhuma instância selecionada.');

  if MessageDlg('Gerar novo WebHook Token?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBZapInstancias.Edit;
    DM2.TBZapInstanciasZIN_WEBHOOKTOKEN.Value:=MD5Print(MD5String(DateTimeToStr(Now)));
  end;
end;

procedure TFormZapInstancias.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormZapInstancias);

finalization
  UnRegisterClass(TFormZapInstancias);

end.
