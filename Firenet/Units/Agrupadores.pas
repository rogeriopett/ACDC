unit Agrupadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormAgrupadores = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
    Agrupadores1: TMenuItem;
    AgrupadoresEReceitas1: TMenuItem;
    AgrupadoresEDespesas1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Agrupadores1Click(Sender: TObject);
    procedure AgrupadoresEReceitas1Click(Sender: TObject);
    procedure AgrupadoresEDespesas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgrupadores: TFormAgrupadores;

implementation
uses DataMod, DB, AgrupadoresLoc, AgrupadoresRel, Funcoes1, Main;
{$R *.dfm}

procedure TFormAgrupadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBAgrupadores.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAgrupadores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAgrupadores.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAgrupadores.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadoresLoc, FormAgrupadoresLoc);
  FormAgrupadoresLoc.ShowModal;
  if FormAgrupadoresLoc.Procurar then
  begin
    DM.TBAgrupadores.Close;
    DM.TBAgrupadores.ParamByName('codigo').AsInteger:=FormAgrupadoresLoc.QYAgrupadoresAGR_CODIGO.Value;
    DM.TBAgrupadores.Open;
  end;
  FormAgrupadoresLoc.Free;
  FormAgrupadoresLoc:=nil;
end;

procedure TFormAgrupadores.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadoresRel, FormAgrupadoresRel);
  FormAgrupadoresRel.ShowModal;
  FormAgrupadoresRel.Free;
  FormAgrupadoresRel:=nil;
end;

procedure TFormAgrupadores.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAgrupadores.Agrupadores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadoresRel, FormAgrupadoresRel);
  FormAgrupadoresRel.ComboBox1.Enabled:=False;
  FormAgrupadoresRel.ComboBox1.ItemIndex:=0;
  //FormAgrupadoresRel.ComboBox1Change(Self);
  FormAgrupadoresRel.ShowModal;
  FormAgrupadoresRel.Free;
  FormAgrupadoresRel:=nil;
end;

procedure TFormAgrupadores.AgrupadoresEReceitas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadoresRel, FormAgrupadoresRel);
  FormAgrupadoresRel.ComboBox1.Enabled:=False;
  FormAgrupadoresRel.ComboBox1.ItemIndex:=1;
  //FormAgrupadoresRel.ComboBox1Change(Self);
  FormAgrupadoresRel.ShowModal;
  FormAgrupadoresRel.Free;
  FormAgrupadoresRel:=nil;
end;

procedure TFormAgrupadores.AgrupadoresEDespesas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadoresRel, FormAgrupadoresRel);
  FormAgrupadoresRel.ComboBox1.Enabled:=False;
  FormAgrupadoresRel.ComboBox1.ItemIndex:=2;
  //FormAgrupadoresRel.ComboBox1Change(Self);
  FormAgrupadoresRel.ShowModal;
  FormAgrupadoresRel.Free;
  FormAgrupadoresRel:=nil;
end;

procedure TFormAgrupadores.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAgrupadores);
end;

initialization
  RegisterClass(TFormAgrupadores);

finalization
  UnRegisterClass(TFormAgrupadores);

end.
