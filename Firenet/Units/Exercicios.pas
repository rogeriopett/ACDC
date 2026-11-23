unit Exercicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, DBSBtn, ExtCtrls,
  Menus, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormExercicios = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
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
    Localizar1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit32: TDBEdit;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    PngImageList1: TPngImageList;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExercicios: TFormExercicios;

implementation
uses DataMod2, Funcoes1, MatriculasLoc, Main;
{$R *.dfm}

procedure TFormExercicios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBExercicios.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormExercicios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormExercicios.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormExercicios);
end;

procedure TFormExercicios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormExercicios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormExercicios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasLoc, FormMatriculasLoc);
  FormMatriculasLoc.ShowModal;
  if MatriculasLoc.Procurar then
  begin
    DM2.TBMatriculas.Close;
    DM2.TBMatriculas.ParamByName('codigo').AsInteger:=FormMatriculasLoc.QYMatriculasMAT_CODIGO.Value;
    DM2.TBMatriculas.Open;
  end;
  FormMatriculasLoc.Free;
  FormMatriculasLoc:=nil;
end;

initialization
  RegisterClass(TFormExercicios);

finalization
  UnRegisterClass(TFormExercicios);

end.
