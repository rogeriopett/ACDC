unit ProjetosQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, QRCtrls, QuickRpt, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProjetosQ09 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1PJF_DTINICIO: TDateField;
    FDQuery1PJF_DTFIM: TDateField;
    FDQuery1PJF_DTPREVISAO: TDateField;
    FDQuery1PJF_FASE: TIntegerField;
    FDQuery1PJF_PROJETO: TIntegerField;
    FDQuery1PJF_STATUS: TStringField;
    FDQuery1PRJ_CODIGO: TIntegerField;
    FDQuery1PRJ_NOME: TStringField;
    FDQuery1PRJ_CLIENTE: TIntegerField;
    FDQuery1PRJ_STATUSPROJETO: TStringField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1FAS_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosQ09: TFormProjetosQ09;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProjetosQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProjetosQ09);
end;

end.
