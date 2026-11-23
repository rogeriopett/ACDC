unit ProcessosCustas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, PngSpeedButton, DBSBtn,
  ExtCtrls, Menus, ImgList, PngImageList, Mask, Data.DB, System.ImageList,
  System.UITypes;

type
  TFormProcessosCustas = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    PngImageList1: TPngImageList;
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
    DBGrid1: TDBGrid;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosCustas: TFormProcessosCustas;

implementation
uses DataMod, DataMod2, Funcoes1, Main;
{$R *.dfm}

procedure TFormProcessosCustas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProcessosCustas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProcessosCustas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProcessosCustas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProcessosCustas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProcessosCustas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProcessosCustas);
end;

procedure TFormProcessosCustas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormProcessosCustas);

finalization
  UnRegisterClass(TFormProcessosCustas);

end.
