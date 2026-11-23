unit PagarQ06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, DBClient, QRPDFFilt;

type
  TFormPagarQ06 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery2REE_DTVENCIMENTO: TDateField;
    TBCompilada: TClientDataSet;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1PAG_DTVENCIMENTO: TDateField;
    IBQuery1VALOR: TFMTBCDField;
    IBQuery2VALOR: TFMTBCDField;
    IBQuery3VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela;
  end;

var
  FormPagarQ06: TFormPagarQ06;
  TotalPagar, TotalReceber, SaldoCaixa, SaldoMovimentacao: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPagarQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ06);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  QRDBText4.DataField:='DATA';
  QRDBText7.DataField:='PAGAR';
  QRDBText8.DataField:='RECEBER';
  //total das contas bancárias.
  IBQuery3.Open;
  QRLabel20.Caption:=Format('%m',[IBQuery3VALOR.AsExtended]);
  //...
  SaldoCaixa:=DM.TBCaixaSaldoCAS_SALDOATUAL.AsExtended+IBQuery3VALOR.AsExtended;
  SaldoMovimentacao:=DM.TBCaixaSaldoCAS_SALDOATUAL.AsExtended+IBQuery3VALOR.AsExtended;

  QRLabel15.Caption:=Format('%m',[DM.TBCaixaSaldoCAS_SALDOATUAL.AsExtended]);
end;

procedure TFormPagarQ06.CriarTabela;
begin
  TBCompilada.CreateDataSet;
  //inclui todos os registros a pagar.
  IBQuery1.First;
  while not IBQuery1.Eof do
  begin
    TBCompilada.Insert;
    TBCompilada.FieldByName('DATA').AsDateTime:=IBQuery1PAG_DTVENCIMENTO.Value;
    TBCompilada.FieldByName('PAGAR').AsExtended:=IBQuery1VALOR.AsExtended;
    TBCompilada.FieldByName('RECEBER').AsExtended:=0;
    TBCompilada.Post;
    IBQuery1.Next;
  end;
  //incluir os registros a receber.
  //se já existe a data da conta a receber, atualiza o valor a receber, senão inclui a data e o valor.
  IBQuery2.First;
  while not IBQuery2.Eof do
  begin
    if TBCompilada.Locate('DATA',IBQuery2REE_DTVENCIMENTO.Value,[]) then
    begin
      TBCompilada.Edit;
      TBCompilada.FieldByName('RECEBER').AsExtended:=IBQuery2VALOR.AsExtended;
      TBCompilada.Post;
    end else
    begin
      TBCompilada.Insert;
      TBCompilada.FieldByName('DATA').AsDateTime:=IBQuery2REE_DTVENCIMENTO.Value;
      TBCompilada.FieldByName('PAGAR').AsExtended:=0;
      TBCompilada.FieldByName('RECEBER').AsExtended:=IBQuery2VALOR.AsExtended;
      TBCompilada.Post;
    end;
    IBQuery2.Next;
  end;
  TBCompilada.First;
end;

procedure TFormPagarQ06.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TotalPagar:=TotalPagar+TBCompilada.FieldByName('PAGAR').AsExtended;
  TotalReceber:=TotalReceber+TBCompilada.FieldByName('RECEBER').AsExtended;
  //calcula a movimentacao e mostra o saldo a cada dia.
  SaldoMovimentacao:=SaldoMovimentacao-TBCompilada.FieldByName('PAGAR').AsExtended;
  SaldoMovimentacao:=SaldoMovimentacao+TBCompilada.FieldByName('RECEBER').AsExtended;
  QRLabel14.Caption:=Format('%m',[SaldoMovimentacao]);
  //calcula a diferenca do dia.
  QRLabel17.Caption:=Format('%m',[TBCompilada.FieldByName('RECEBER').AsExtended-TBCompilada.FieldByName('PAGAR').AsExtended]);
end;

procedure TFormPagarQ06.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption:=Format('%m',[TotalPagar]);
  QRLabel9.Caption:=Format('%m',[TotalReceber]);
  QRLabel18.Caption:=Format('%m',[TotalReceber-TotalPagar]);
  QRLabel10.Caption:=Format('%m',[(SaldoCaixa+TotalReceber)-TotalPagar]);
end;

procedure TFormPagarQ06.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalPagar:=0;
  TotalReceber:=0;

  //volta valores iniciais.
  SaldoCaixa:=DM.TBCaixaSaldoCAS_SALDOATUAL.AsExtended+IBQuery3VALOR.AsExtended;
  SaldoMovimentacao:=DM.TBCaixaSaldoCAS_SALDOATUAL.AsExtended+IBQuery3VALOR.AsExtended;
end;

end.
