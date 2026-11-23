unit ProcessosHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, ImgList, PngImageList,
  Menus, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Data.DB, System.ImageList,
  System.UITypes;

type
  TFormProcessosHistorico = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
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
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBText3: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosHistorico: TFormProcessosHistorico;

implementation
uses DataMod, DataMod2, Funcoes1, Main;
{$R *.dfm}

procedure TFormProcessosHistorico.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessosHistorico.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessosHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBProcessosHistorico.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProcessosHistorico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosHistorico.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProcessosHistorico);
end;

procedure TFormProcessosHistorico.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormProcessosHistorico);

finalization
  UnRegisterClass(TFormProcessosHistorico);

end.
