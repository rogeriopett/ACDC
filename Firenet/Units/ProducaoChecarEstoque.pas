unit ProducaoChecarEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormProducaoChecarEstoque = class(TForm)
    DBGrid1: TDBGrid;
    TBProdutos: TClientDataSet;
    DSProdutos: TDataSource;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_NOME: TStringField;
    Label1: TLabel;
    TBProdutosPRO_ESTOQUEATUAL: TFMTBCDField;
    TBProdutosPDC_QUANTIDADE: TFMTBCDField;
    TBProdutosFALTA: TFMTBCDField;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoChecarEstoque: TFormProducaoChecarEstoque;

implementation

{$R *.dfm}

procedure TFormProducaoChecarEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProducaoChecarEstoque.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
