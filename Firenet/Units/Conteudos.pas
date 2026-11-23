unit Conteudos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBSBtn, StdCtrls, DBCtrls, Buttons, ExtCtrls, Menus, Grids,
  DBGrids, Mask, ImgList, PngImageList, PngSpeedButton, Data.DB, System.UITypes,
  System.ImageList;

type
  TFormConteudos = class(TForm)
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    PngImageList1: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConteudos: TFormConteudos;

implementation
uses DataMod2, TurmasLoc, Funcoes1, Main;
{$R *.dfm}

procedure TFormConteudos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBConteudos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormConteudos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormConteudos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormConteudos);
end;

procedure TFormConteudos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConteudos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasLoc, FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    DM2.TBTurmas.Close;
    DM2.TBTurmas.ParamByName('codigo').AsInteger:=FormTurmasLoc.QYTurmasTUR_CODIGO.Value;
    DM2.TBTurmas.Open;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormConteudos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormConteudos);

finalization
  UnRegisterClass(TFormConteudos);

end.
