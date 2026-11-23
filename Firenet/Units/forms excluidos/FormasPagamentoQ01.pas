unit FormasPagamentoQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormFormasPagamentoQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1FPG_CODIGO: TIntegerField;
    IBQuery1FPG_DESCRICAO: TIBStringField;
    IBQuery1FPG_TEF: TIBStringField;
    IBQuery1FPG_IMPRIMEVINCULADO: TIBStringField;
    IBQuery1FPG_DTCADASTRO: TDateField;
    IBQuery1FPG_DTATUALIZACAO: TDateField;
    IBQuery1FPG_USUARIO: TIBStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    IBQuery1FPG_CODIGOPAGAMENTO: TIBStringField;
    QRLabel8: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFormasPagamentoQ01: TFormFormasPagamentoQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormFormasPagamentoQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormFormasPagamentoQ01);
  QRLabel9.Caption:='Usuário: '+UsuarioLogado;
end;

end.
