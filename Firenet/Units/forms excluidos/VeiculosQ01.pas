unit VeiculosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormVeiculosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    IBQuery1: TIBQuery;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    IBQuery1VEL_CODIGO: TIntegerField;
    IBQuery1VEL_DESCRICAO: TIBStringField;
    IBQuery1VEL_STATUS: TIBStringField;
    IBQuery1VEL_DTCADASTRO: TDateField;
    IBQuery1VEL_DTATUALIZACAO: TDateField;
    IBQuery1VEL_USUARIO: TIBStringField;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
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
  FormVeiculosQ01: TFormVeiculosQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
