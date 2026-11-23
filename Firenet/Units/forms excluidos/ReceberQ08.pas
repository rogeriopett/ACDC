unit ReceberQ08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ08 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRShape1: TQRShape;
    QRLabel42: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel132: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ08: TFormReceberQ08;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormReceberQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ08);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  QRLabel23.Caption:=Extenso(DM.TBReceberREE_VALORPAGO.AsExtended);
end;

end.
