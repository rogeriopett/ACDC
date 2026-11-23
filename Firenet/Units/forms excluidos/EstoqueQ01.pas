unit EstoqueQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  IBDatabase, IBQuery, QRPDFFilt;

type
  TFormEstoqueQ01 = class(TForm)
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1EST_CODIGO: TIntegerField;
    IBQuery1EST_PRODUTO: TIntegerField;
    IBQuery1EST_DATA: TDateField;
    IBQuery1EST_DESCRICAO: TIBStringField;
    IBQuery1EST_NUMDOCTO: TIBStringField;
    IBQuery1EST_TRANSACAO: TIBStringField;
    IBQuery1EST_CLIENTE: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1EST_QUANTIDADE: TFMTBCDField;
    IBQuery1EST_VALORUNIT: TFMTBCDField;
    IBQuery1EST_ESTOQUEANTERIOR: TFMTBCDField;
    IBQuery1EST_ESTOQUEPOSTERIOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueQ01: TFormEstoqueQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEstoqueQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEstoqueQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
