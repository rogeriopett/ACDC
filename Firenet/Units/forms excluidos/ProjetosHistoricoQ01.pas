unit ProjetosHistoricoQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBDatabase, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProjetosHistoricoQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1PJH_CODIGO: TIntegerField;
    IBQuery1PJH_PROJETO: TIntegerField;
    IBQuery1PJH_DATA: TDateField;
    IBQuery1PJH_DESCRICAO: TIBStringField;
    IBQuery1PJH_DTATUALIZACAO: TDateField;
    IBQuery1PJH_USUARIO: TIBStringField;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
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
  FormProjetosHistoricoQ01: TFormProjetosHistoricoQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProjetosHistoricoQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProjetosHistoricoQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
