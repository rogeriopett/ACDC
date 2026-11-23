unit OpcionaisSelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB,
  PngBitBtn, PngSpeedButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormOpcionaisSelecionar = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TPngSpeedButton;
    DSOpcionais: TDataSource;
    QYOpcionais: TFDQuery;
    TROpcionais: TFDTransaction;
    QYOpcionaisOPC_DESCRICAO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOpcionaisSelecionar: TFormOpcionaisSelecionar;
  Acao: String;
implementation
uses DataMod, Opcionais, Main;
{$R *.dfm}

procedure TFormOpcionaisSelecionar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Acao:='CANCELAR';
    Close;
  end;
end;

procedure TFormOpcionaisSelecionar.BitBtn1Click(Sender: TObject);
begin
  Acao:='OK';
  Close;
end;

procedure TFormOpcionaisSelecionar.BitBtn2Click(Sender: TObject);
begin
  Acao:='CANCELAR';
  Close;
end;

procedure TFormOpcionaisSelecionar.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormOpcionaisSelecionar);
end;

procedure TFormOpcionaisSelecionar.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOpcionais, FormOpcionais);
  FormOpcionais.ShowModal;
  FormOpcionais.Free;
  FormOpcionais:=nil;
end;

procedure TFormOpcionaisSelecionar.FormCreate(Sender: TObject);
begin
  QYOpcionais.Open;
end;

end.
