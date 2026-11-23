unit ReceberQ07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ07 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    IBQuery2REE_DTVENCIMENTO: TDateField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VALOR: TFMTBCDField;
    IBQuery1REE_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ07: TFormReceberQ07;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet, ReceberRel;
{$R *.dfm}

procedure TFormReceberQ07.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ07);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormReceberQ07.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //pega a data da conta mais antiga.
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Add('select first(1) REE_DTVENCIMENTO from RECEBER '+
                   'where REE_DTVENCIMENTO between :datainicial and :datafinal and REE_STATUS=''A'' '+
                   'and REE_CLIENTE=:cliente '+
                   'order by REE_DTVENCIMENTO');
  IBQuery2.ParamByName('cliente').AsInteger:=IBQuery1REE_CLIENTE.Value;
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormReceberRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormReceberRel.MaskEdit2.Text,FS);
  IBQuery2.Open;
  QRLabel12.Caption:=DateToStr(IBQuery2REE_DTVENCIMENTO.Value,FS);

  //pega a data da conta mais recente.
  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Add('select first(1) REE_DTVENCIMENTO from RECEBER '+
                   'where REE_DTVENCIMENTO between :datainicial and :datafinal and REE_STATUS=''A'' '+
                   'and REE_CLIENTE=:cliente '+
                   'order by REE_DTVENCIMENTO desc');
  IBQuery2.ParamByName('cliente').AsInteger:=IBQuery1REE_CLIENTE.Value;
  IBQuery2.ParamByName('datainicial').AsDate:=StrToDate(FormReceberRel.MaskEdit1.Text,FS);
  IBQuery2.ParamByName('datafinal').AsDate:=StrToDate(FormReceberRel.MaskEdit2.Text,FS);
  IBQuery2.Open;
  QRLabel16.Caption:=DateToStr(IBQuery2REE_DTVENCIMENTO.Value,FS);
  IBQuery2.Close;
  //...
  Total:=Total+IBQuery1VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1VALOR.AsExtended;
end;

procedure TFormReceberQ07.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormReceberQ07.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormReceberQ07.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  Total:=0;
  SubTotal:=0;
end;

end.
