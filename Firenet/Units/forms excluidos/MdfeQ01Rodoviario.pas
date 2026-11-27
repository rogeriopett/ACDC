unit MdfeQ01Rodoviario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrBarcode, DB, QRPDFFilt, pngimage, qrFramelines,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMdfeQ01Rodoviario = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape6: TQRShape;
    IMAGEM: TQRImage;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape10: TQRShape;
    QRLabel17: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    DataSource1: TDataSource;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape88: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel125: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel127: TQRLabel;
    QRDBText6: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel132: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel35: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel85: TQRLabel;
    QRShape26: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape18: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape22: TQRShape;
    QRLabel30: TQRLabel;
    QRShape24: TQRShape;
    QRLabel32: TQRLabel;
    QRShape20: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRShape25: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel128: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel5: TQRLabel;
    QRShape55: TQRShape;
    QRLabel133: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel36: TQRLabel;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel45: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMdfeQ01Rodoviario: TFormMdfeQ01Rodoviario;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormMdfeQ01Rodoviario.FormCreate(Sender: TObject);
begin
//  QRLabel35.Font.Color:=clWhite;
//  QRLabel14.Font.Color:=clWhite;
//  QRLabel6.Font.Color:=clWhite;
//  QRLabel16.Font.Color:=clWhite;
//  QRLabel11.Font.Color:=clWhite;
//  QRLabel21.Font.Color:=clWhite;
//  QRLabel12.Font.Color:=clWhite;
//  QRLabel23.Font.Color:=clWhite;
//  QRLabel13.Font.Color:=clWhite;
//  QRLabel24.Font.Color:=clWhite;

  QRLabel35.Caption:='';
  QRLabel14.Caption:='';
  QRLabel6.Caption:='';
  QRLabel16.Caption:='';
  QRLabel11.Caption:='';
  QRLabel21.Caption:='';
  QRLabel12.Caption:='';
  QRLabel23.Caption:='';
  QRLabel13.Caption:='';
  QRLabel24.Caption:='';

  QRLabel122.Caption:='';
  QRLabel128.Caption:='';
  QRLabel36.Caption:='';
  LogoTipo(FormMdfeQ01Rodoviario);
  QRLabel45.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value;
end;

procedure TFormMdfeQ01Rodoviario.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var I: Byte;
begin
  I:=0;
  FDQuery2.First;
  while not FDQuery2.Eof do
  begin
    Inc(I);
    case I of
      01: begin QRLabel35.Caption:=FDQuery2.FieldByName('MDM_CPF').AsString; QRLabel14.Caption:=FDQuery2.FieldByName('MDM_NOME').AsString; end;
      02: begin QRLabel6.Caption :=FDQuery2.FieldByName('MDM_CPF').AsString; QRLabel16.Caption:=FDQuery2.FieldByName('MDM_NOME').AsString; end;
      03: begin QRLabel11.Caption:=FDQuery2.FieldByName('MDM_CPF').AsString; QRLabel21.Caption:=FDQuery2.FieldByName('MDM_NOME').AsString; end;
      04: begin QRLabel12.Caption:=FDQuery2.FieldByName('MDM_CPF').AsString; QRLabel23.Caption:=FDQuery2.FieldByName('MDM_NOME').AsString; end;
      05: begin QRLabel13.Caption:=FDQuery2.FieldByName('MDM_CPF').AsString; QRLabel24.Caption:=FDQuery2.FieldByName('MDM_NOME').AsString; end;
    end;
    FDQuery2.Next;
  end;

  QRLabel133.Caption:=DeleteLineBreaks(FDQuery1.FieldByName('MDF_INFOADICFISCO').AsString);
end;

end.
