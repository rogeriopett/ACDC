unit ProdutosQ24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, qrBarcode, BarCode, Vcl.ExtCtrls;

type
  TFormProdutosQ24 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ24: TFormProdutosQ24;

implementation
uses DataMod, ProdutosEtiquetas, Funcoes1;
{$R *.dfm}

procedure TFormProdutosQ24.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  if FormProdutosEtiquetas.TBProdutosPrintPRO_NOME.Value='' then
  begin
    QRDBText1.Font.Color:=clWhite;
    QRDBText2.Font.Color:=clWhite;
    QRDBText3.Font.Color:=clWhite;
    QRDBText4.Font.Color:=clWhite;
    QRDBText5.Font.Color:=clWhite;
    QRLabel1.Font.Color:=clWhite;
    QRLabel2.Font.Color:=clWhite;
    QRLabel3.Font.Color:=clWhite;
    QRAsBarCode1.ColorBar:=clWhite;
  end else
  begin
    QRDBText1.Font.Color:=clBlack;
    QRDBText2.Font.Color:=clBlack;
    QRDBText3.Font.Color:=clBlack;
    QRLabel1.Font.Color:=clBlack;
    QRLabel2.Font.Color:=clBlack;
    QRLabel3.Font.Color:=clBlack;
    if FormProdutosEtiquetas.ComboBox3.Text='SIM' then
    begin
      QRDBText4.Font.Color:=clBlack;
    end else
    begin
      QRDBText4.Font.Color:=clWhite;
    end;
    QRAsBarCode1.ColorBar:=clBlack;
  end;
  if FormProdutosEtiquetas.ComboBox2.Text='SISTEMA' then
  begin
    QRAsBarCode1.Text:=IntToStr(FormProdutosEtiquetas.TBProdutosPrintPRO_CODIGO.Value);
    if FormProdutosEtiquetas.ComboBox1.Text='EAN 13' then
    QRAsBarCode1.Text:=AlignText(IntToStr(FormProdutosEtiquetas.TBProdutosPrintPRO_CODIGO.Value),'0',13,taRight);
  end;

  if FormProdutosEtiquetas.ComboBox2.Text='FABRICANTE' then
  QRAsBarCode1.Text:=FormProdutosEtiquetas.TBProdutosPrintPRO_CODIGOFAB.Value;

  if FormProdutosEtiquetas.ComboBox2.Text='BARRAS' then
  QRAsBarCode1.Text:=FormProdutosEtiquetas.TBProdutosPrintPRO_CODIGOBARRAS.Value;

  QRAsBarcode1.Refresh;  }
end;

procedure TFormProdutosQ24.FormCreate(Sender: TObject);
begin
  case FormProdutosEtiquetas.ComboBox1.ItemIndex of
    00: QRAsBarcode1.Typ:=bcCode_2_5_industrial;
    01: QRAsBarcode1.Typ:=bcCode_2_5_interleaved;
    02: QRAsBarcode1.Typ:=bcCode_2_5_matrix;
    03: QRAsBarcode1.Typ:=bcCode128A;
    04: QRAsBarcode1.Typ:=bcCode128B;
    05: QRAsBarcode1.Typ:=bcCode128C;
    06: QRAsBarcode1.Typ:=bcCode39;
    07: QRAsBarcode1.Typ:=bcCode39Extended;
    08: QRAsBarcode1.Typ:=bcCode93;
    09: QRAsBarcode1.Typ:=bcCode93Extended;
    10: QRAsBarcode1.Typ:=bcCodeCodabar;
    11: QRAsBarcode1.Typ:=bcCodeEAN128A;
    12: QRAsBarcode1.Typ:=bcCodeEAN128B;
    13: QRAsBarcode1.Typ:=bcCodeEAN128C;
    14: begin
          QRAsBarcode1.Typ:=bcCodeEAN13;
          QRDBText3.Mask:='0000000000000';
        end;
    15: QRAsBarcode1.Typ:=bcCodeEAN8;
    16: QRAsBarcode1.Typ:=bcCodeMSI;
    17: QRAsBarcode1.Typ:=bcCodePostNet;
    18: QRAsBarcode1.Typ:=bcCodeUPC_A;
    19: QRAsBarcode1.Typ:=bcCodeUPC_E0;
    20: QRAsBarcode1.Typ:=bcCodeUPC_E1;
    21: QRAsBarcode1.Typ:=bcCodeUPC_Supp2;
    22: QRAsBarcode1.Typ:=bcCodeUPC_Supp5;
  end;
end;

end.
