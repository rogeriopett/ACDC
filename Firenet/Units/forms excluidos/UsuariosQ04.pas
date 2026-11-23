unit UsuariosQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, DB, IBCustomDataSet, QRExport, IBDatabase, IBQuery,
  QRCtrls, ExtCtrls, QRPDFFilt;

type
  TFormUsuariosQ04 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1ACE_CODIGO: TIntegerField;
    IBQuery1ACE_USUARIO: TIBStringField;
    IBQuery1ACE_TELA: TIBStringField;
    IBQuery1ACE_COMPONENTE: TIBStringField;
    IBQuery1ACE_TIPO: TIBStringField;
    IBQuery1ACE_ACESSO: TIBStringField;
    IBQuery1TEL_NOMEFORM: TIBStringField;
    IBQuery1TEL_DESCRICAO: TIBStringField;
    IBQuery1TEL_STATUS: TIBStringField;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText7: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1ACE_DESCRICAO: TIBStringField;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosQ04: TFormUsuariosQ04;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormUsuariosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormUsuariosQ04);
  QRLabel7.Caption:='Usuário: '+UsuarioLogado;
end;

end.
