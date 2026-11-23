unit TeleVendasQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormTeleVendasQ09 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    IBQuery1VEN_CODIGO: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    SummaryBand1: TQRBand;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    IBQuery4: TIBQuery;
    IBTransaction4: TIBTransaction;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    DataSource1: TDataSource;
    IBQuery2ABERTOS: TIntegerField;
    IBQuery3BAIXADOS: TIntegerField;
    IBQuery4CLIENTES: TIntegerField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeleVendasQ09: TFormTeleVendasQ09;
  Baixados, Abertos, Clientes: Integer;
implementation
uses DataMod, FuncoesFirenet, TeleVendasRel;
{$R *.dfm}

procedure TFormTeleVendasQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTeleVendasQ09);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormTeleVendasQ09.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Abertos:=Abertos+IBQuery2ABERTOS.Value;
  Baixados:=Baixados+IBQuery3BAIXADOS.Value;
  Clientes:=Clientes+IBQuery4CLIENTES.Value;
end;

procedure TFormTeleVendasQ09.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:=IntToStr(IBQuery2ABERTOS.Value+IBQuery3BAIXADOS.Value);
end;

procedure TFormTeleVendasQ09.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel9.Caption:=IntToStr(Abertos);
  QRLabel8.Caption:=IntToStr(Baixados);
  QRLabel7.Caption:=IntToStr(Abertos+Baixados);
  QRLabel11.Caption:=IntToStr(Clientes);
end;

end.
