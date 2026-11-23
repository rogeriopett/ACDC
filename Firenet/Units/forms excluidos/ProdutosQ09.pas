unit ProdutosQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, qrBarcode, BarCode, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ09 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ09: TFormProdutosQ09;

implementation
uses DataMod, ProdutosEtiquetas, Funcoes1, ProdutosFast;
{$R *.dfm}

procedure TFormProdutosQ09.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //if FormProdutosEtiquetas.TBProdutosPrintPRO_NOME.Value='' then
{  if FormProdutosFast.TBProdutosPrintPRO_NOME.Value='' then
  begin
    QRDBText1.Font.Color:=clWhite;
    QRDBText2.Font.Color:=clWhite;
    QRDBText3.Font.Color:=clWhite;
    QRDBText4.Font.Color:=clWhite;
    QRDBText5.Font.Color:=clWhite;
    QRLabel1.Font.Color:=clWhite;
    QRLabel2.Font.Color:=clWhite;
    QRLabel3.Font.Color:=clWhite;
    QRLabel4.Font.Color:=clWhite;
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
      QRLabel4.Font.Color:=clBlack;
      QRDBText4.Font.Color:=clBlack;
    end else
    begin
      QRLabel4.Font.Color:=clWhite;
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

  QRAsBarcode1.Refresh;   }
end;

procedure TFormProdutosQ09.FormCreate(Sender: TObject);
begin
  case FormProdutosEtiquetas.ComboBox1.ItemIndex of
    00: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode_2_5_industrial;
    01: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode_2_5_interleaved;
    02: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode_2_5_matrix;
    03: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode128A;
    04: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode128B;
    05: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode128C;
    06: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode39;
    07: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode39Extended;
    08: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode93;
    09: FormProdutosQ09.QRAsBarcode1.Typ:=bcCode93Extended;
    10: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeCodabar;
    11: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeEAN128A;
    12: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeEAN128B;
    13: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeEAN128C;
    14: begin
          FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeEAN13;
          FormProdutosQ09.QRDBText3.Mask:='0000000000000';
        end;
    15: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeEAN8;
    16: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeMSI;
    17: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodePostNet;
    18: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeUPC_A;
    19: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeUPC_E0;
    20: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeUPC_E1;
    21: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeUPC_Supp2;
    22: FormProdutosQ09.QRAsBarcode1.Typ:=bcCodeUPC_Supp5;
  end;
end;

end.
