unit ComprasQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormComprasQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText25: TQRDBText;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRDBText43: TQRDBText;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape2: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel2: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText27: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1COM_BAIRRO: TIBStringField;
    IBQuery1COM_CEP: TIBStringField;
    IBQuery1COM_CIDADE: TIBStringField;
    IBQuery1COM_CODIGO: TIntegerField;
    IBQuery1COM_CONDICAO: TIntegerField;
    IBQuery1COM_CONTATO: TIBStringField;
    IBQuery1COM_CNPJ: TIBStringField;
    IBQuery1COM_DESCPORC: TFMTBCDField;
    IBQuery1COM_DESCVALOR: TFMTBCDField;
    IBQuery1COM_DTCADASTRO: TDateField;
    IBQuery1COM_ENDERECO: TIBStringField;
    IBQuery1COM_ESTADO: TIBStringField;
    IBQuery1COM_FONE1: TIBStringField;
    IBQuery1COM_FORNECEDOR: TIntegerField;
    IBQuery1COM_FRETE: TIBStringField;
    IBQuery1COM_IE: TIBStringField;
    IBQuery1COM_NOME: TIBStringField;
    IBQuery1COM_NUMERO: TIBStringField;
    IBQuery1COM_OBSERVACOES: TWideMemoField;
    IBQuery1COM_PESOBRUTO: TIBBCDField;
    IBQuery1COM_PESOLIQ: TIBBCDField;
    IBQuery1COM_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1COM_TOTALSERVICOS: TFMTBCDField;
    IBQuery1COM_TRANSPORTADORA: TIntegerField;
    IBQuery1COM_VALORFRETE: TFMTBCDField;
    IBQuery1COM_VALORTOTAL: TFMTBCDField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1COM_CPF: TIBStringField;
    IBQuery2COI_CODIGO: TIntegerField;
    IBQuery2COI_COMPRA: TIntegerField;
    IBQuery2COI_DESCRICAO: TIBStringField;
    IBQuery2COI_PRODUTO: TIntegerField;
    IBQuery2COI_QUANTIDADE: TFMTBCDField;
    IBQuery2COI_TIPO: TIBStringField;
    IBQuery2COI_UNIDADE: TIBStringField;
    IBQuery2COI_VALORTOTAL: TFMTBCDField;
    IBQuery2COI_VALORUNIT: TFMTBCDField;
    IBQuery2PRO_CODIGOFAB: TIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasQ02: TFormComprasQ02;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormComprasQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
