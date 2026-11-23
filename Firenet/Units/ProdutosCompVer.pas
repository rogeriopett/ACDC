unit ProdutosCompVer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBSBtn, ExtCtrls, Menus, DB, Grids, DBGrids, DBCtrls,
  StdCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList;

type
  TFormProdutosCompVer = class(TForm)
    Label2: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton3: TPngSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosCompVer: TFormProdutosCompVer;

implementation
uses Funcoes1;
{$R *.dfm}

procedure TFormProdutosCompVer.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosCompVer.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosCompVer.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
