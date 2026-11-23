unit VendasQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ09 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1VEI_VENDA: TIntegerField;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_TABELAPRECO: TIBStringField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VEI_QUANTIDADE: TFMTBCDField;
    IBQuery1VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_VALORTOTAL: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_PRECO1: TFMTBCDField;
    IBQuery1PRO_PRECO2: TFMTBCDField;
    IBQuery1PRO_PRECO3: TFMTBCDField;
    IBQuery1PRO_PRECO4: TFMTBCDField;
    IBQuery1PRO_PRECO5: TFMTBCDField;
    IBQuery1PRO_PRECO6: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ09: TFormVendasQ09;
  DiferencaUnitario, DiferencaUnitarioTotal, SomaDiferencaUnitario, SomaDiferencaUnitarioTotal: Currency;
  SubSomaDiferencaUnitario, SubSomaDiferencaUnitarioTotal: Currency;
  SomaItens, SubSomaItens: Extended;
  TabelaPrecoSelecionada: Boolean;
implementation
uses DataMod, FuncoesFirenet, VendasRel;
{$R *.dfm}

procedure TFormVendasQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ09);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormVendasQ09.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if not TabelaPrecoSelecionada then //tabela de preço não selecionada.
  begin
    if (IBQuery1VED_TABELAPRECO.Value='V') or (IBQuery1VED_TABELAPRECO.IsNull) then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECOVENDA.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECOVENDA.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='1' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO1.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO1.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='2' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO2.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO2.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='3' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO3.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO3.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='4' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO4.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO4.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='5' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO5.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO5.AsExtended);
    end else
    if IBQuery1VED_TABELAPRECO.Value='6' then
    begin
      DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO6.AsExtended;
      DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO6.AsExtended);
    end;
  end else //tabela de preço selecionada.
  begin
    case FormVendasRel.ComboBox3.ItemIndex of
      00: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECOVENDA.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECOVENDA.AsExtended);
          end;
      01: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO1.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO1.AsExtended);
          end;
      02: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO2.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO2.AsExtended);
          end;
      03: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO3.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO3.AsExtended);
          end;
      04: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO4.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO4.AsExtended);
          end;
      05: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO5.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO5.AsExtended);
          end;
      06: begin
            DiferencaUnitario:=IBQuery1VEI_VALORUNIT.AsExtended-IBQuery1PRO_PRECO6.AsExtended;
            DiferencaUnitarioTotal:=IBQuery1VEI_VALORTOTAL.AsExtended-(IBQuery1VEI_QUANTIDADE.AsExtended*IBQuery1PRO_PRECO6.AsExtended);
          end;
    end; //case.
  end;
  SomaItens:=SomaItens+IBQuery1VEI_QUANTIDADE.AsExtended;
  QRLabel12.Caption:=Format('%m',[DiferencaUnitario]);
  QRLabel26.Caption:=Format('%m',[DiferencaUnitarioTotal]);
end;

procedure TFormVendasQ09.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SomaDiferencaUnitario:=SomaDiferencaUnitario+DiferencaUnitario;
  SomaDiferencaUnitarioTotal:=SomaDiferencaUnitarioTotal+DiferencaUnitarioTotal;
end;

procedure TFormVendasQ09.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel24.Caption:=FloatToStr(SomaItens);
  QRLabel2.Caption:=Format('%m',[SomaDiferencaUnitario]);
  QRLabel28.Caption:=Format('%m',[SomaDiferencaUnitarioTotal]);
end;

procedure TFormVendasQ09.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubSomaItens:=SubSomaItens+SomaItens;
  SubSomaDiferencaUnitario:=SubSomaDiferencaUnitario+SomaDiferencaUnitario;
  SubSomaDiferencaUnitarioTotal:=SubSomaDiferencaUnitarioTotal+SomaDiferencaUnitarioTotal;

  SomaItens:=0;
  SomaDiferencaUnitario:=0;
  SomaDiferencaUnitarioTotal:=0;
end;

procedure TFormVendasQ09.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel31.Caption:=FloatToStr(SubSomaItens);
  QRLabel29.Caption:=Format('%m',[SubSomaDiferencaUnitario]);
  QRLabel30.Caption:=Format('%m',[SubSomaDiferencaUnitarioTotal]);
end;

procedure TFormVendasQ09.SummaryBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubSomaItens:=0;
  SubSomaDiferencaUnitario:=0;
  SubSomaDiferencaUnitarioTotal:=0;
end;

end.
