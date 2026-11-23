unit EnderecosQBairros1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormEnderecosQBairros1 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IBQuery1: TIBQuery;
    IBQuery1BAI_CODIGO: TIntegerField;
    IBQuery1BAI_NOME: TIBStringField;
    IBQuery1BAI_CIDADE: TIntegerField;
    IBQuery1BAI_ESTADO: TIntegerField;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    SummaryBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    QRRTFFilter2: TQRRTFFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosQBairros1: TFormEnderecosQBairros1;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosQBairros1.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEnderecosQBairros1);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
