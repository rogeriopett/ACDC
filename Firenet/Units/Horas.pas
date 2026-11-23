unit Horas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormHoras = class(TForm)
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
    DBText2: TDBText;
    DBText1: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit32: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBText4: TDBText;
    SaldoDeHorasPorVendedor1: TMenuItem;
    HistoricoDeHorasPorVendedor1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure SaldoDeHorasPorVendedor1Click(Sender: TObject);
    procedure HistoricoDeHorasPorVendedor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHoras: TFormHoras;

implementation
uses Datamod, Funcoes1, DB, DataModSearch, HorasLoc, HorasRel, FuncoesFirenet;
{$R *.dfm}

procedure TFormHoras.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormHoras.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormHoras.DBEdit3Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit3,DBEdit32,nil,DM.TBHoras);
end;

procedure TFormHoras.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormHoras.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormHoras.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormHoras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBHoras.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormHoras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormHoras.HistoricoDeHorasPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormHorasRel, FormHorasRel);
  FormHorasRel.ComboBox1.Enabled:=False;
  FormHorasRel.ComboBox1.ItemIndex:=1;
  FormHorasRel.ComboBox1Change(Self);
  FormHorasRel.ShowModal;
  FormHorasRel.Free;
  FormHorasRel:=nil;
end;

procedure TFormHoras.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormHorasLoc, FormHorasLoc);
  FormHorasLoc.ShowModal;
  if HorasLoc.Procurar then
  begin
    DM.TBHoras.Close;
    DM.TBHoras.ParamByName('codigo').AsInteger:=FormHorasLoc.QYHorasHOR_CODIGO.Value;
    DM.TBHoras.Open;
  end;
  FormHorasLoc.Free;
  FormHorasLoc:=nil;
end;

procedure TFormHoras.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormHorasRel, FormHorasRel);
  FormHorasRel.ShowModal;
  FormHorasRel.Free;
  FormHorasRel:=nil;
end;

procedure TFormHoras.SaldoDeHorasPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormHorasRel, FormHorasRel);
  FormHorasRel.ComboBox1.Enabled:=False;
  FormHorasRel.ComboBox1.ItemIndex:=0;
  FormHorasRel.ComboBox1Change(Self);
  FormHorasRel.ShowModal;
  FormHorasRel.Free;
  FormHorasRel:=nil;
end;

procedure TFormHoras.SpeedButton3Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit3,DBEdit32,nil,DM.TBHoras);
end;

initialization
  RegisterClass(TFormHoras);

finalization
  UnRegisterClass(TFormHoras);

end.
