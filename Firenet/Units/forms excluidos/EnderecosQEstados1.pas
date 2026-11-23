unit EnderecosQEstados1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormEnderecosQEstados1 = class(TForm)
    IBQuery1: TIBQuery;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1ESD_CODIGO: TIntegerField;
    IBQuery1ESD_NOME: TIBStringField;
    IBQuery1ESD_SIGLA: TIBStringField;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosQEstados1: TFormEnderecosQEstados1;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosQEstados1.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEnderecosQEstados1);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
