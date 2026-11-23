unit ProducaoQ06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProducaoQ06 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText13: TQRDBText;
    DataSource1: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand3: TQRBand;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery1PDI_PRODUTO: TIntegerField;
    FDQuery1PRO_NOME: TStringField;
    FDQuery1FAM_DESCRICAO: TStringField;
    FDQuery1GRU_DESCRICAO: TStringField;
    FDQuery1PDI_QUANTIDADE: TFMTBCDField;
    FDQuery1PDI_ALMOXARIFADO: TIntegerField;
    FDQuery1ALM_DESCRICAO: TStringField;
    FDQuery2PRO_NOME: TStringField;
    FDQuery2PRO_UNIDADE: TStringField;
    FDQuery2PRC_PRODUTO: TIntegerField;
    FDQuery2PRC_PRODUTOCOMP: TIntegerField;
    FDQuery2PRC_QUANTIDADE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoQ06: TFormProducaoQ06;
  Contador: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProducaoQ06.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Contador:=0;
end;

procedure TFormProducaoQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ06);
  QRLabel8.Caption:='Usuário: '+UsuarioLogin;
end;

procedure TFormProducaoQ06.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Contador:=Contador+1;
  QRLabel19.Caption:=IntToStr(Contador);
  QRLabel5.Caption:=FloatToStr(FDQuery2PRC_QUANTIDADE.AsExtended*FDQuery1PDI_QUANTIDADE.AsExtended);
end;

end.
