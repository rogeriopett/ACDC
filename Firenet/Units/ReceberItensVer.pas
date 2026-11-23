unit ReceberItensVer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, Menus, ImgList,
  PngImageList, DBCtrls, StdCtrls, Grids, DBGrids, Data.DB, System.ImageList;

type
  TFormReceberItensVer = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    PngImageList1: TPngImageList;
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
    SpeedButton12: TPngSpeedButton;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberItensVer: TFormReceberItensVer;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormReceberItensVer.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormReceberItensVer.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberItensVer.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
