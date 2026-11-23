unit ProducaoQ09;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, Data.DB, QRExport, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProducaoQ09 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoQ09: TFormProducaoQ09;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProducaoQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ09);
  QRLabel9.Caption:='Usuário: '+UsuarioLogin;
end;

end.
