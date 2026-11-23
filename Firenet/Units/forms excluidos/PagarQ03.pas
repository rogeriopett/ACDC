unit PagarQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormPagarQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    IBQuery1DES_CODIGO: TIntegerField;
    IBQuery1DES_DESCRICAO: TIBStringField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery2VALOR: TFMTBCDField;
    IBQuery3VALOR: TFMTBCDField;
    IBQuery3VALORPAGO: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarQ03: TFormPagarQ03;
  TotalPagar, TotalValor, TotalPago: Currency;
implementation
uses DataMod, PagarRel, FuncoesFirenet;
{$R *.dfm}

procedure TFormPagarQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ03);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  TotalPagar:=0;
  TotalValor:=0;
  TotalPago:=0;
end;

procedure TFormPagarQ03.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalPagar:=TotalPagar+IBQuery2VALOR.AsExtended;
  TotalValor:=TotalValor+IBQuery3VALOR.AsExtended;
  TotalPago:=TotalPago+IBQuery3VALORPAGO.AsExtended;
end;

procedure TFormPagarQ03.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption:=Format('%m',[TotalPagar]);
  QRLabel9.Caption:=Format('%m',[TotalValor]);
  QRLabel10.Caption:=Format('%m',[TotalPago]);
end;

procedure TFormPagarQ03.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalPagar:=0;
  TotalValor:=0;
  TotalPago:=0;
end;

procedure TFormPagarQ03.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IBQuery2.Close;
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormPagarRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormPagarRel.MaskEdit2.Text,FS);
  IBQuery2.Open;
  IBQuery3.Close;
  IBQuery3.ParamByName('datainicial').AsDate:=StrToDate(FormPagarRel.MaskEdit1.Text,FS);
  IBQuery3.ParamByName('datafinal').AsDate:=StrToDate(FormPagarRel.MaskEdit2.Text,FS);
  IBQuery3.Open;
end;

end.
