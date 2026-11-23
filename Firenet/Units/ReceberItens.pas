unit ReceberItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, ImgList, PngImageList, StdCtrls, DBCtrls,
  Buttons, PngSpeedButton, DBSBtn, ExtCtrls, Mask, System.UITypes, Data.DB,
  System.ImageList;

type
  TFormReceberItens = class(TForm)
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberItens: TFormReceberItens;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormReceberItens.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormReceberItens.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBReceberItens.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormReceberItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormReceberItens);

finalization
  UnRegisterClass(TFormReceberItens);

end.
