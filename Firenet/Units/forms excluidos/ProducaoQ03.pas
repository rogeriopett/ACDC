unit ProducaoQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProducaoQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DataSource1: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery1PDI_ALMOXARIFADO: TIntegerField;
    FDQuery1PDI_PRODUTO: TIntegerField;
    FDQuery1PDI_QUANTIDADE: TFMTBCDField;
    FDQuery1ALM_DESCRICAO: TStringField;
    FDQuery1FAM_DESCRICAO: TStringField;
    FDQuery1GRU_DESCRICAO: TStringField;
    FDQuery1PRO_LOCALIZACAO: TStringField;
    FDQuery1PRO_NOME: TStringField;
    FDQuery2PRO_LOCALIZACAO: TStringField;
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
  FormProducaoQ03: TFormProducaoQ03;
  Contador: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProducaoQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ03);
  QRLabel8.Caption:='Usuário: '+UsuarioLogin;
end;

procedure TFormProducaoQ03.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Contador:=0;
end;

procedure TFormProducaoQ03.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Contador:=Contador+1;
  QRLabel19.Caption:=IntToStr(Contador);
end;

end.
