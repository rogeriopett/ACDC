unit Classes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask;

type
  TFormClasses = class(TForm)
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
    Relatrios1: TMenuItem;
    Relatorios1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton1: TSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClasses: TFormClasses;

implementation
uses DataMod, DB, ClassesLoc, ClassesQ01, Funcoes1, Main;
{$R *.dfm}

procedure TFormClasses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBClasses.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormClasses.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClasses.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClasses.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassesLoc , FormClassesLoc);
  FormClassesLoc.ShowModal;
  if ClassesLoc.Procurar then
  begin
    DM.TBClasses.Close;
    DM.TBClasses.ParamByName('codigo').AsInteger:=FormClassesLoc.QYClassesCLS_CODIGO.Value;
    DM.TBClasses.Open;
  end;
  FormClassesLoc.Free;
  FormClassesLoc:=nil;
end;

procedure TFormClasses.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassesQ01, FormClassesQ01);
  FormClassesQ01.IBQuery1.Open;
  FormClassesQ01.QuickRep1.PreviewModal;
  FormClassesQ01.Free;
  FormClassesQ01:=nil;
end;

procedure TFormClasses.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClasses.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClasses);
end;

end.
