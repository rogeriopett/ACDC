unit ProdutosQ14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRCtrls, QuickRpt, qrBarcode, BarCode, ExtCtrls;

type
  TFormProdutosQ14 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText4: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ14: TFormProdutosQ14;

implementation
uses DataMod, ProdutosEtiquetas, Funcoes1;

{$R *.dfm}

procedure TFormProdutosQ14.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{  if FormProdutosEtiquetas.TBProdutosPrintPRO_NOME.Value='' then
  begin
    QRDBText1.Font.Color:=clWhite;
    QRDBText3.Font.Color:=clWhite;
    QRDBText4.Font.Color:=clWhite;
    QRAsBarCode1.ColorBar:=clWhite;
  end else
  begin
    QRDBText1.Font.Color:=clBlack;
    QRDBText3.Font.Color:=clBlack;
    if FormProdutosEtiquetas.ComboBox3.Text='SIM' then
    QRDBText4.Font.Color:=clBlack else
    QRDBText4.Font.Color:=clWhite;
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

  QRAsBarcode1.Refresh;      }
end;

procedure TFormProdutosQ14.FormCreate(Sender: TObject);
begin
  case FormProdutosEtiquetas.ComboBox1.ItemIndex of
    00: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode_2_5_industrial;
    01: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode_2_5_interleaved;
    02: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode_2_5_matrix;
    03: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode128A;
    04: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode128B;
    05: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode128C;
    06: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode39;
    07: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode39Extended;
    08: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode93;
    09: FormProdutosQ14.QRAsBarcode1.Typ:=bcCode93Extended;
    10: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeCodabar;
    11: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeEAN128A;
    12: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeEAN128B;
    13: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeEAN128C;
    14: begin
          FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeEAN13;
          FormProdutosQ14.QRDBText3.Mask:='0000000000000';
        end;
    15: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeEAN8;
    16: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeMSI;
    17: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodePostNet;
    18: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeUPC_A;
    19: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeUPC_E0;
    20: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeUPC_E1;
    21: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeUPC_Supp2;
    22: FormProdutosQ14.QRAsBarcode1.Typ:=bcCodeUPC_Supp5;
  end;
end;

end.
