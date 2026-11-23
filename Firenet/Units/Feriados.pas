unit Feriados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormFeriados = class(TForm)
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
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
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFeriados: TFormFeriados;

implementation
uses DataMod2, DB, FeriadosLoc, FeriadosRel, Funcoes1, Main;

{$R *.dfm}

procedure TFormFeriados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBFeriados.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormFeriados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFeriados.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFeriados.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFeriadosLoc, FormFeriadosLoc);
  FormFeriadosLoc.ShowModal;
  if FeriadosLoc.Procurar then
  begin
    DM2.TBFeriados.Close;
    DM2.TBFeriados.ParamByName('codigo').AsDate:=FormFeriadosLoc.QYFeriadosFRD_DATA.Value;
    DM2.TBFeriados.Open;
  end;
  FormFeriadosLoc.Free;
  FormFeriadosLoc:=nil;
end;

procedure TFormFeriados.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFeriadosRel, FormFeriadosRel);
  FormFeriadosRel.ShowModal;
  FormFeriadosRel.Free;
  FormFeriadosRel:=nil;
end;

procedure TFormFeriados.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormFeriados.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFeriados);
end;

initialization
  RegisterClass(TFormFeriados);

finalization
  UnRegisterClass(TFormFeriados);

end.
