unit VendasQ11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ11 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
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
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery2VED_CLIENTE: TIntegerField;
    IBQuery2MES: TSmallintField;
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
    QRSysData2: TQRSysData;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
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
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery2TOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ11: TFormVendasQ11;
  Qtde, SubQtde: Integer;
  Total, Jan, Fev, Mar, Abr, Mai, Jun, Jul, Ago, Seb, Oub, Nov, Dez: Currency;
  SubTotal, SubJan, SubFev, SubMar, SubAbr, SubMai, SubJun, SubJul, SubAgo, SubSeb, SubOub, SubNov, SubDez: Currency;
  CS: String;

implementation
uses DataMod, FuncoesFirenet, VendasRel;
{$R *.dfm}

procedure TFormVendasQ11.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ11);
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

procedure TFormVendasQ11.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel58.Caption:=Format('%m',[IBQuery1.FieldByName('TOTAL').AsExtended]);
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

  if FormVendasRel.ComboBox1.Text='Frequência de compra' then
  begin
    IBQuery2.Close;
    IBQuery2.SQL.Clear;
    IBQuery2.SQL.Add('select VED_CLIENTE, extract(MONTH from VED_DTEMISSAO) as MES, sum(VED_VALORTOTAL) as TOTAL from VENDAS '+
                     'where VED_CLIENTE=:codcliente and VED_DTEMISSAO between :datainicial and :datafinal '+
                     'group by VED_CLIENTE, extract(MONTH from VED_DTEMISSAO) order by MES');
    IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormVendasRel.MaskEdit1.Text,FS);
    IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormVendasRel.MaskEdit2.Text,FS);
    IBQuery2.ParamByName('codcliente').AsInteger:=IBQuery1.FieldByName('CLI_CODIGO').Value;
    IBQuery2.Open;
  end else
  if FormVendasRel.ComboBox1.Text='Frequência de compra por vendedor' then
  begin
    IBQuery2.Close;
    IBQuery2.SQL.Clear;
    IBQuery2.SQL.Add('select VED_CLIENTE, extract(MONTH from VED_DTEMISSAO) as MES, sum(VED_VALORTOTAL) as TOTAL from VENDAS '+
                     'where VED_CLIENTE=:codcliente and VED_VENDEDOR=:codvendedor and VED_DTEMISSAO between :datainicial and :datafinal '+
                     'group by VED_CLIENTE, extract(MONTH from VED_DTEMISSAO) order by MES');
    IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormVendasRel.MaskEdit1.Text,FS);
    IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormVendasRel.MaskEdit2.Text,FS);
    IBQuery2.ParamByName('codcliente').AsInteger:=IBQuery1.FieldByName('CLI_CODIGO').Value;
    IBQuery2.ParamByName('codvendedor').AsInteger:=IBQuery1.FieldByName('VED_VENDEDOR').Value;
    IBQuery2.Open;
  end;

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

procedure TFormVendasQ11.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Qtde:=Qtde+1;
  Total:=Total+IBQuery1.FieldByName('TOTAL').Value;
  SubTotal:=SubTotal+IBQuery1.FieldByName('TOTAL').Value;
end;

procedure TFormVendasQ11.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel59.Caption:='Total Clientes: '+IntToStr(Qtde);
  QRLabel44.Caption:=Format('%m',[Total]);
  QRLabel2.Caption:=Format('%m',[Jan]);
  QRLabel33.Caption:=Format('%m',[Fev]);
  QRLabel34.Caption:=Format('%m',[Mar]);
  QRLabel35.Caption:=Format('%m',[Abr]);
  QRLabel36.Caption:=Format('%m',[Mai]);
  QRLabel37.Caption:=Format('%m',[Jun]);
  QRLabel38.Caption:=Format('%m',[Jul]);
  QRLabel39.Caption:=Format('%m',[Ago]);
  QRLabel40.Caption:=Format('%m',[Seb]);
  QRLabel41.Caption:=Format('%m',[Oub]);
  QRLabel42.Caption:=Format('%m',[Nov]);
  QRLabel43.Caption:=Format('%m',[Dez]);
end;

procedure TFormVendasQ11.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Qtde:=0;
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
end;

procedure TFormVendasQ11.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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

procedure TFormVendasQ11.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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

end.
