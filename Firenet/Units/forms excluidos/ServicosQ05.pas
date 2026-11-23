unit ServicosQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRExport, QRCtrls, ExtCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, QRPDFFilt;

type
  TFormServicosQ05 = class(TForm)
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText43: TQRDBText;
    QRDBText39: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText38: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel53: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel11: TQRLabel;
    QRShape34: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape38: TQRShape;
    QRLabel42: TQRLabel;
    QRShape39: TQRShape;
    QRLabel27: TQRLabel;
    QRShape35: TQRShape;
    QRLabel50: TQRLabel;
    QRShape40: TQRShape;
    QRLabel28: TQRLabel;
    QRShape36: TQRShape;
    QRLabel23: TQRLabel;
    QRShape31: TQRShape;
    QRLabel20: TQRLabel;
    QRShape28: TQRShape;
    QRLabel24: TQRLabel;
    QRShape32: TQRShape;
    QRLabel25: TQRLabel;
    QRShape33: TQRShape;
    QRLabel29: TQRLabel;
    QRShape37: TQRShape;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    QRLabel52: TQRLabel;
    QRShape41: TQRShape;
    QRLabel22: TQRLabel;
    QRShape30: TQRShape;
    QRLabel21: TQRLabel;
    QRShape29: TQRShape;
    QRLabel19: TQRLabel;
    QRShape27: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel54: TQRLabel;
    QRShape42: TQRShape;
    QRShape18: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape19: TQRShape;
    QRLabel8: TQRLabel;
    QRShape20: TQRShape;
    QRLabel12: TQRLabel;
    QRShape21: TQRShape;
    QRLabel13: TQRLabel;
    QRShape22: TQRShape;
    QRLabel15: TQRLabel;
    QRShape23: TQRShape;
    QRLabel31: TQRLabel;
    QRShape24: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRShape43: TQRShape;
    QRLabel18: TQRLabel;
    QRShape46: TQRShape;
    QRLabel33: TQRLabel;
    QRShape47: TQRShape;
    QRShape44: TQRShape;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_PRODUTO: TIBStringField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_SERIE: TIBStringField;
    IBQuery1SER_ACESSORIOS: TIBStringField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    IBQuery1SER_TECNICO: TIntegerField;
    IBQuery1SER_LOCALIZACAO: TIBStringField;
    IBQuery1SER_DEFEITO: TWideMemoField;
    IBQuery1SER_CONSERTO: TWideMemoField;
    IBQuery1SER_SENHAONLINE: TIBStringField;
    IBQuery1SER_STATUS: TIBStringField;
    IBQuery1SER_TOTALHORAS: TIBStringField;
    IBQuery1CLI_CNPJ: TIBStringField;
    IBQuery1CLI_CPF: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_ENDERECO: TIBStringField;
    IBQuery1CLI_CIDADE: TIBStringField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1CLI_FONE1: TIBStringField;
    IBQuery1CLI_CONTATO: TIBStringField;
    IBQuery1CLI_COMPLEMENTO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CLI_NUMERO: TIBStringField;
    IBQuery1SER_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1SER_TOTALSERVICOS: TFMTBCDField;
    IBQuery1SER_VALOR: TFMTBCDField;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    IBQuery1SER_DESCPORC: TFMTBCDField;
    IBQuery1SER_DESCVALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ05: TFormServicosQ05;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
