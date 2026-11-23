unit ReceberQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    DataSource1: TDataSource;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBTransaction3: TIBTransaction;
    IBQuery3: TIBQuery;
    IBQuery3VALOR: TIBBCDField;
    IBQuery3VALORRECEBIDO: TIBBCDField;
    IBQuery2VALOR: TIBBCDField;
    IBQuery1REC_CODIGO: TIntegerField;
    IBQuery1REC_DESCRICAO: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
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
  FormReceberQ03: TFormReceberQ03;
  TotalReceber, TotalValor, TotalRecebido: Currency;
implementation
uses DataMod, FuncoesFirenet, ReceberRel;
{$R *.dfm}

procedure TFormReceberQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ03);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  TotalReceber:=0;
  TotalValor:=0;
  TotalRecebido:=0;
end;

procedure TFormReceberQ03.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalReceber:=TotalReceber+IBQuery2VALOR.Value;
  TotalValor:=TotalValor+IBQuery3VALOR.Value;
  TotalRecebido:=TotalRecebido+IBQuery3VALORRECEBIDO.Value;
end;

procedure TFormReceberQ03.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption:=Format('%m',[TotalReceber]);
  QRLabel9.Caption:=Format('%m',[TotalValor]);
  QRLabel10.Caption:=Format('%m',[TotalRecebido]);
end;

procedure TFormReceberQ03.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalReceber:=0;
  TotalValor:=0;
  TotalRecebido:=0;
end;

procedure TFormReceberQ03.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IBQuery2.Close;
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormReceberRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormReceberRel.MaskEdit2.Text,FS);
  IBQuery2.Open;
  IBQuery3.Close;
  IBQuery3.ParamByName('datainicial').AsDate:=StrToDate(FormReceberRel.MaskEdit1.Text,FS);
  IBQuery3.ParamByName('datafinal').AsDate:=StrToDate(FormReceberRel.MaskEdit2.Text,FS);
  IBQuery3.Open;
end;

end.

