unit MetasConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, PngImageList,
  Vcl.Menus, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls;

type
  TFormMetasConfig = class(TForm)
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
    Bevel1: TBevel;
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
    PngImageList1: TPngImageList;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    dbSBtnEdit: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMetasConfig: TFormMetasConfig;

implementation
uses DataMod, Main;

{$R *.dfm}

procedure TFormMetasConfig.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMetasConfig.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMetasConfig.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMetasConfig.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMetasConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBMetasConfig.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMetasConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMetasConfig.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMetasConfig);
end;

initialization
  RegisterClass(TFormMetasConfig);

finalization
  UnRegisterClass(TFormMetasConfig);

end.
