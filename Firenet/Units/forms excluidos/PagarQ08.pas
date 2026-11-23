unit PagarQ08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormPagarQ08 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText5: TQRDBText;
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
    QRLabel23: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRLabel42: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarQ08: TFormPagarQ08;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormPagarQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ08);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  QRLabel23.Caption:=Extenso(DM.TBPagarPAG_VALORPAGO.AsExtended);
end;

end.
