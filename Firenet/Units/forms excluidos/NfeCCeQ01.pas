unit NfeCCeQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, qrBarcode;

type
  TFormNfeCCeQ01 = class(TForm)
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    IMAGEM: TQRImage;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape10: TQRShape;
    QRLabel27: TQRLabel;
    QRShape11: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText9: TQRDBText;
    QRAsBarcode1: TQRAsBarcode;
    QRShape12: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape88: TQRShape;
    QRShape13: TQRShape;
    QRDBText19: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText24: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel106: TQRLabel;
    QRShape55: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel107: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRShape26: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel119: TQRLabel;
    QRShape18: TQRShape;
    QRLabel120: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape22: TQRShape;
    QRLabel121: TQRLabel;
    QRDBText51: TQRDBText;
    QRShape24: TQRShape;
    QRDBText52: TQRDBText;
    QRLabel122: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText55: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape27: TQRShape;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel125: TQRLabel;
    QRLabel1: TQRLabel;
    IBQuery1NCC_CODIGO: TIntegerField;
    IBQuery1NCC_SEQUENCIAL: TIntegerField;
    IBQuery1NCC_DATA: TDateField;
    IBQuery1NCC_HORA: TTimeField;
    IBQuery1NCC_PROTOCOLO: TIBStringField;
    IBQuery1NCC_PROTOCOLODH: TIBStringField;
    IBQuery1NCC_TEXTO: TIBStringField;
    IBQuery1NFE_CLIENTE: TIntegerField;
    IBQuery1NFE_CHAVEACESSO: TIBStringField;
    IBQuery1NFE_CODIGO: TIntegerField;
    IBQuery1NFE_MODELO: TIntegerField;
    IBQuery1NFE_SERIE: TIntegerField;
    IBQuery1NFE_DTEMISSAO: TDateField;
    IBQuery1NFE_NOME: TIBStringField;
    IBQuery1NFE_CNPJ: TIBStringField;
    IBQuery1NFE_ENDERECO: TIBStringField;
    IBQuery1NFE_BAIRRO: TIBStringField;
    IBQuery1NFE_CIDADE: TIBStringField;
    IBQuery1NFE_ESTADO: TIBStringField;
    IBQuery1NFE_CEP: TIBStringField;
    IBQuery1NFE_FONE1: TIBStringField;
    IBQuery1NFE_IE: TIBStringField;
    IBQuery1NFE_CPF: TIBStringField;
    IBQuery1NFE_NUMERO: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeCCeQ01: TFormNfeCCeQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeCCeQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfeCCeQ01);
  QRLabel6.Caption:='Usuário: '+UsuarioLogado;
end;

end.
