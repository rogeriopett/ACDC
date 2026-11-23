unit CTeCampos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  DBSBtn, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, System.UITypes,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus;

type
  TFormCteCampos = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
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
    PngImageList1: TPngImageList;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    Bevel1: TBevel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCteCampos: TFormCteCampos;

implementation
uses DataMod2;
{$R *.dfm}

procedure TFormCteCampos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCteCampos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBCteCampos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCteCampos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCteCampos.Imprimir1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormCteCampos.Localizar1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormCteCampos);

finalization
  UnRegisterClass(TFormCteCampos);

end.
