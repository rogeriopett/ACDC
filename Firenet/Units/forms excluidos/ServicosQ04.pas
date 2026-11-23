unit ServicosQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt, qrFramelines;

type
  TFormServicosQ04 = class(TForm)
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
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
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
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    QRSubDetail2: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel53: TQRLabel;
    QRShape25: TQRShape;
    QRLabel11: TQRLabel;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRShape34: TQRShape;
    QRLabel27: TQRLabel;
    QRShape35: TQRShape;
    QRLabel28: TQRLabel;
    QRShape36: TQRShape;
    QRLabel23: TQRLabel;
    QRShape31: TQRShape;
    QRLabel24: TQRLabel;
    QRShape32: TQRShape;
    QRLabel20: TQRLabel;
    QRShape28: TQRShape;
    QRLabel25: TQRLabel;
    QRShape33: TQRShape;
    QRLabel29: TQRLabel;
    QRShape37: TQRShape;
    QRLabel22: TQRLabel;
    QRShape30: TQRShape;
    QRLabel21: TQRLabel;
    QRShape29: TQRShape;
    QRLabel40: TQRLabel;
    QRShape27: TQRShape;
    QRLabel48: TQRLabel;
    QRShape19: TQRShape;
    QRLabel3: TQRLabel;
    QRShape20: TQRShape;
    QRLabel15: TQRLabel;
    QRShape21: TQRShape;
    QRLabel31: TQRLabel;
    QRShape22: TQRShape;
    QRLabel33: TQRLabel;
    QRShape23: TQRShape;
    QRLabel34: TQRLabel;
    QRShape24: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel16: TQRLabel;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRFrameline5: TQRFrameline;
    QRFrameline6: TQRFrameline;
    QRFrameline7: TQRFrameline;
    QRFrameline8: TQRFrameline;
    QRFrameline9: TQRFrameline;
    QRFrameline10: TQRFrameline;
    QRFrameline11: TQRFrameline;
    QRFrameline12: TQRFrameline;
    QRFrameline13: TQRFrameline;
    QRFrameline14: TQRFrameline;
    IBQuery2SEI_CODIGO: TIntegerField;
    IBQuery2SEI_DESCRICAO: TIBStringField;
    IBQuery2SEI_TIPO: TIBStringField;
    IBQuery2SEI_UNIDADE: TIBStringField;
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
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1CLI_FONE1: TIBStringField;
    IBQuery1CLI_CONTATO: TIBStringField;
    IBQuery1CLI_COMPLEMENTO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CLI_ENDERECO: TIBStringField;
    IBQuery1CLI_CIDADE: TIBStringField;
    IBQuery1CLI_CNPJ: TIBStringField;
    IBQuery1CLI_CPF: TIBStringField;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel36: TQRLabel;
    QRShape15: TQRShape;
    QRLabel32: TQRLabel;
    QRShape16: TQRShape;
    QRDBText43: TQRDBText;
    QRDBText39: TQRDBText;
    PageFooterBand1: TQRBand;
    IBQuery2SEI_PRODUTO: TIntegerField;
    QRLabel41: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel42: TQRLabel;
    QRBand2: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText38: TQRDBText;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape17: TQRShape;
    QRShape11: TQRShape;
    QRShape18: TQRShape;
    QRShape39: TQRShape;
    QRShape38: TQRShape;
    QRDBText36: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape40: TQRShape;
    IBQuery1CLI_NUMERO: TIBStringField;
    IBQuery1SER_DESCPORC: TFMTBCDField;
    IBQuery1SER_DESCVALOR: TFMTBCDField;
    IBQuery1SER_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1SER_TOTALSERVICOS: TFMTBCDField;
    IBQuery1SER_VALOR: TFMTBCDField;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    IBQuery2SEI_QUANTIDADE: TFMTBCDField;
    IBQuery2SEI_VALORUNIT: TFMTBCDField;
    IBQuery2SEI_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ04: TFormServicosQ04;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ04);
  QRLabel41.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormServicosQ04.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // 25 is the box size in invoice lines
  // 64.0 is the original height of the band in tenth mm
  // if this is the last sub-detail, expand the band
  if not IBQuery2.IsEmpty then
  begin
    if IBQuery2.RecNo = (IBQuery2.RecordCount) then
    begin
      QRSubDetail1.Size.Height:=(24-IBQuery2.Recno) * 33.0;
    end else
    begin
      QRSubDetail1.Size.Height:=33.0;
    end;
  end;
end;

procedure TFormServicosQ04.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // 25 is the box size in invoice lines
  // 64.0 is the original height of the band in tenth mm
  // if this is the last sub-detail, expand the band
  if not IBQuery3.IsEmpty then
  begin
    if IBQuery3.RecNo = (IBQuery3.RecordCount) then
    begin
      QRSubDetail2.Size.Height:=(15-IBQuery3.Recno) * 33.0;
    end else
    begin
      QRSubDetail2.Size.Height:=33.0;
    end;
  end;
end;

end.
