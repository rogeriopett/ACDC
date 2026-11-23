unit VendasQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, IBDatabase,
  IBCustomDataSet, IBQuery, QRPDFFilt;

type
  TFormVendasQ02 = class(TForm)
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    IBTransaction3: TIBTransaction;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1TOTAL: TFMTBCDField;
    IBQuery2TOTALVENDEDOR: TFMTBCDField;
    IBQuery3SUBTOTAL: TFMTBCDField;
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ02: TFormVendasQ02;
  Total, SubComissao, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet, VendasRel;
{$R *.dfm}

procedure TFormVendasQ02.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IBQuery2.Close;
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormVendasRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormVendasRel.MaskEdit2.Text,FS);
//  if Query1codvend.Value<>'' then //usado quando nao tinha codigo do vendedor nas vendas.
  IBQuery2.ParamByName('vendedor').AsInteger:=IBQuery1VED_VENDEDOR.Value;
//  Query2.ParamByName('codvendedor').AsString:='1';
  IBQuery2.Open;
end;

procedure TFormVendasQ02.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Perc: Real;
begin
  Perc:=(IBQuery1TOTAL.AsExtended * 100) / IBQuery2TOTALVENDEDOR.AsExtended;
  QRLabel12.Caption:=Format('%3.2f',[Perc])+' %';
end;

procedure TFormVendasQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Perc: Real;
begin
  Perc:=(IBQuery2TOTALVENDEDOR.AsExtended * 100) / IBQuery3SUBTOTAL.AsExtended;
  QRLabel2.Caption:=Format('%3.2f',[Perc])+' %';
end;

procedure TFormVendasQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
