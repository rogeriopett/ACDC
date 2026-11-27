unit ComprasQ05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBDatabase, IBX.IBQuery, QRExport, QRPDFFilt, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormComprasQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel58: TQRLabel;
    IBQuery2COM_FORNECEDOR: TIntegerField;
    IBQuery2MES: TSmallintField;
    IBQuery2TOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasQ05: TFormComprasQ05;
  Qtde, SubQtde: Integer;
  Total, Jan, Fev, Mar, Abr, Mai, Jun, Jul, Ago, Seb, Oub, Nov, Dez: Currency;
  SubTotal, SubJan, SubFev, SubMar, SubAbr, SubMai, SubJun, SubJul, SubAgo, SubSeb, SubOub, SubNov, SubDez: Currency;
  CS: String;

implementation
uses DataMod, FuncoesFirenet, ComprasRel;
{$R *.dfm}

procedure TFormComprasQ05.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=Qtde+1;
  Total:=Total+IBQuery1.FieldByName('TOTAL').Value;
  SubTotal:=SubTotal+IBQuery1.FieldByName('TOTAL').Value;
end;

procedure TFormComprasQ05.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel58.Caption:=Format('%m',[IBQuery1.FieldByName('TOTAL').AsFloat]);
  QRLabel3.Caption:=Format('%m',[0.00]);
  QRLabel7.Caption:=Format('%m',[0.00]);
  QRLabel10.Caption:=Format('%m',[0.00]);
  QRLabel11.Caption:=Format('%m',[0.00]);
  QRLabel12.Caption:=Format('%m',[0.00]);
  QRLabel26.Caption:=Format('%m',[0.00]);
  QRLabel27.Caption:=Format('%m',[0.00]);
  QRLabel28.Caption:=Format('%m',[0.00]);
  QRLabel29.Caption:=Format('%m',[0.00]);
  QRLabel30.Caption:=Format('%m',[0.00]);
  QRLabel31.Caption:=Format('%m',[0.00]);
  QRLabel32.Caption:=Format('%m',[0.00]);

  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Add('select COM_FORNECEDOR, extract(MONTH from COM_DTENTRADA) as MES, sum(COM_VALORTOTAL) as TOTAL from COMPRAS '+
                   'where COM_FORNECEDOR=:codfornecedor and COM_DTENTRADA between :datainicial and :datafinal and COM_STATUS=''F'' '+
                   'group by COM_FORNECEDOR, extract(MONTH from COM_DTENTRADA) order by MES');
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormComprasRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormComprasRel.MaskEdit2.Text,FS);
  IBQuery2.ParamByName('codfornecedor').AsInteger:=IBQuery1.FieldByName('FOR_CODIGO').Value;
  IBQuery2.Open;

  IBQuery2.First;
  while not IBQuery2.Eof do
  begin
    case IBQuery2MES.Value of
      01: begin QRLabel3.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Jan:=Jan+IBQuery2TOTAL.AsExtended; SubJan:=SubJan+IBQuery2TOTAL.AsExtended; end;
      02: begin QRLabel7.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Fev:=Fev+IBQuery2TOTAL.AsExtended; SubFev:=SubFev+IBQuery2TOTAL.AsExtended; end;
      03: begin QRLabel10.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Mar:=Mar+IBQuery2TOTAL.AsExtended; SubMar:=SubMar+IBQuery2TOTAL.AsExtended; end;
      04: begin QRLabel11.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Abr:=Abr+IBQuery2TOTAL.AsExtended; SubAbr:=SubAbr+IBQuery2TOTAL.AsExtended; end;
      05: begin QRLabel12.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Mai:=Mai+IBQuery2TOTAL.AsExtended; SubMai:=SubMai+IBQuery2TOTAL.AsExtended; end;
      06: begin QRLabel26.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Jun:=Jun+IBQuery2TOTAL.AsExtended; SubJun:=SubJun+IBQuery2TOTAL.AsExtended; end;
      07: begin QRLabel27.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Jul:=Jul+IBQuery2TOTAL.AsExtended; SubJul:=SubJul+IBQuery2TOTAL.AsExtended; end;
      08: begin QRLabel28.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Ago:=Ago+IBQuery2TOTAL.AsExtended; SubAgo:=SubAgo+IBQuery2TOTAL.AsExtended; end;
      09: begin QRLabel29.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Seb:=Seb+IBQuery2TOTAL.AsExtended; SubSeb:=SubSeb+IBQuery2TOTAL.AsExtended; end;
      10: begin QRLabel30.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Oub:=Oub+IBQuery2TOTAL.AsExtended; SubOub:=SubOub+IBQuery2TOTAL.AsExtended; end;
      11: begin QRLabel31.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Nov:=Nov+IBQuery2TOTAL.AsExtended; SubNov:=SubNov+IBQuery2TOTAL.AsExtended; end;
      12: begin QRLabel32.Caption:=Format('%m',[IBQuery2TOTAL.AsExtended]); Dez:=Dez+IBQuery2TOTAL.AsExtended; SubDez:=SubDez+IBQuery2TOTAL.AsExtended; end;
    end;
    IBQuery2.Next;
  end;
  IBQuery2.Close;
end;

procedure TFormComprasQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormComprasQ05);
  QRLabel4.Caption:='Usuario: '+UsuarioLogado;
  IBQuery2.DisableControls;
  Total:=0;
  Jan:=0;
  Fev:=0;
  Mar:=0;
  Abr:=0;
  Mai:=0;
  Jun:=0;
  Jul:=0;
  Ago:=0;
  Seb:=0;
  Oub:=0;
  Nov:=0;
  Dez:=0;
  SubTotal:=0;
  SubJan:=0;
  SubFev:=0;
  SubMar:=0;
  SubAbr:=0;
  SubMai:=0;
  SubJun:=0;
  SubJul:=0;
  SubAgo:=0;
  SubSeb:=0;
  SubOub:=0;
  SubNov:=0;
  SubDez:=0;

  CS:=FormatSettings.CurrencyString;
  FormatSettings.CurrencyString:='';
end;

procedure TFormComprasQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubJan:=0;
  SubFev:=0;
  SubMar:=0;
  SubAbr:=0;
  SubMai:=0;
  SubJun:=0;
  SubJul:=0;
  SubAgo:=0;
  SubSeb:=0;
  SubOub:=0;
  SubNov:=0;
  SubDez:=0;
  FormatSettings.CurrencyString:=CS;
end;

procedure TFormComprasQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel57.Caption:=Format('%m',[SubTotal]);
  QRLabel45.Caption:=Format('%m',[SubJan]);
  QRLabel46.Caption:=Format('%m',[SubFev]);
  QRLabel47.Caption:=Format('%m',[SubMar]);
  QRLabel48.Caption:=Format('%m',[SubAbr]);
  QRLabel49.Caption:=Format('%m',[SubMai]);
  QRLabel50.Caption:=Format('%m',[SubJun]);
  QRLabel51.Caption:=Format('%m',[SubJul]);
  QRLabel52.Caption:=Format('%m',[SubAgo]);
  QRLabel53.Caption:=Format('%m',[SubSeb]);
  QRLabel54.Caption:=Format('%m',[SubOub]);
  QRLabel55.Caption:=Format('%m',[SubNov]);
  QRLabel56.Caption:=Format('%m',[SubDez]);
end;

end.
