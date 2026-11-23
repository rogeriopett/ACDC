unit ProcessosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormProcessosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    DetailBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel6: TQRLabel;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRLabel10: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    DataSource1: TDataSource;
    IBTransaction3: TIBTransaction;
    IBQuery3: TIBQuery;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    IBQuery1PCS_CODIGO: TIntegerField;
    IBQuery1PCS_ACAO: TIntegerField;
    IBQuery1PCS_ADVOGADO: TIntegerField;
    IBQuery1PCS_DESCRICAO: TIBStringField;
    IBQuery1PCS_DTCADASTRO: TDateField;
    IBQuery1PCS_FORO: TIntegerField;
    IBQuery1PCS_LOCALFISICO: TIBStringField;
    IBQuery1PCS_NUMEROANTIGO: TIBStringField;
    IBQuery1PCS_NUMEROUNIFICADO: TIBStringField;
    IBQuery1PCS_NUMEROUNIFICADOFED: TIBStringField;
    IBQuery1PCS_STATUS: TIBStringField;
    IBQuery1ACO_DESCRICAO: TIBStringField;
    IBQuery1FRS_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1PCS_TOTALLANCAMENTOS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosQ01: TFormProcessosQ01;

implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormProcessosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProcessosQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
