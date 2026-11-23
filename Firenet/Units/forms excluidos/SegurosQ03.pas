unit SegurosQ03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBDatabase, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormSegurosQ03 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1SGP_CODIGO: TIntegerField;
    IBQuery1SGP_COMISSAOVENDEDOR: TFMTBCDField;
    IBQuery1SGP_DTPAGAMENTO: TDateField;
    IBQuery1SGP_DTRECEBIMENTO: TDateField;
    IBQuery1SGP_DTVENCIMENTO: TDateField;
    IBQuery1SGP_PARCELA: TIntegerField;
    IBQuery1SGP_STATUS: TIBStringField;
    IBQuery1SGP_VALOR: TFMTBCDField;
    IBQuery1SGP_SEGURO: TIntegerField;
    IBQuery1SEG_CLIENTE: TIntegerField;
    IBQuery1SEG_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    IBQuery1SEG_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosQ03: TFormSegurosQ03;
  TotalParcelas, TotalComissao, SubTotalParcelas, SubTotalComissao: Currency;
  Qtde, QtdeSub: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormSegurosQ03);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  QtdeSub:=0;
  TotalParcelas:=0;
  SubTotalParcelas:=0;
  TotalComissao:=0;
  SubTotalComissao:=0;
end;

procedure TFormSegurosQ03.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  TotalParcelas:=0;
  TotalComissao:=0;
end;

procedure TFormSegurosQ03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=IntToStr(Qtde);
  QRLabel18.Caption:=Format('%m',[TotalParcelas]);
  QRLabel16.Caption:=Format('%m',[TotalComissao]);
end;

procedure TFormSegurosQ03.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  QtdeSub:=0;
  TotalParcelas:=0;
  TotalComissao:=0;
  SubTotalParcelas:=0;
  SubTotalComissao:=0;
end;

procedure TFormSegurosQ03.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(QtdeSub);
  QRLabel19.Caption:=Format('%m',[SubTotalParcelas]);
  QRLabel17.Caption:=Format('%m',[SubTotalComissao]);
end;

procedure TFormSegurosQ03.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalParcelas:=TotalParcelas+IBQuery1SGP_VALOR.AsExtended;
  TotalComissao:=TotalComissao+IBQuery1SGP_COMISSAOVENDEDOR.AsExtended;
  SubTotalParcelas:=SubTotalParcelas+IBQuery1SGP_VALOR.AsExtended;
  SubTotalComissao:=SubTotalComissao+IBQuery1SGP_COMISSAOVENDEDOR.AsExtended;
  Qtde:=Qtde+1;
  QtdeSub:=QtdeSub+1;
end;

end.
