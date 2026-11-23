unit ClientesQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, DB,
  IBCustomDataSet, IBDatabase, IBQuery, QRPDFFilt;

type
  TFormClientesQ03 = class(TForm)
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery2DATA: TDateField;
    IBQuery2VED_NOME: TIBStringField;
    IBQuery2VEN_NOME: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery2VED_VALORTOTAL: TFMTBCDField;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ03: TFormClientesQ03;
  Total: Integer;
implementation
uses DataMod, FuncoesFirenet;

{$R *.dfm}

procedure TFormClientesQ03.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IBQuery2.Close;
  IBQuery2.ParamByName('cliente').AsInteger:=IBQuery1VED_CLIENTE.Value;
  IBQuery2.Open;
  QRLabel5.Caption:=FloatToStr(Date-IBQuery2DATA.Value);
end;

procedure TFormClientesQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ03);
  QRLabel1.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
end;

procedure TFormClientesQ03.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
end;

procedure TFormClientesQ03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel9.Caption:='Total de Clientes: '+IntToStr(Total);
end;

procedure TFormClientesQ03.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

end.
