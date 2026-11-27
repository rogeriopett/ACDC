unit MatriculasQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, DBClient,
  Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMatriculasQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    DataSource1: TDataSource;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText15: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    TBAux: TClientDataSet;
    DSAux: TDataSource;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    TBAuxNome: TStringField;
    TBAuxMatricula: TIntegerField;
    TBAuxCliente: TIntegerField;
    TBAuxFone: TStringField;
    TBAuxTurma: TIntegerField;
    TBAuxTurmaDesc: TStringField;
    TBAuxPeriodoAno: TStringField;
    TBAuxStatusMat: TStringField;
    TBAuxReceber: TIntegerField;
    TBAuxNumDocto: TStringField;
    TBAuxTP: TIntegerField;
    TBAuxEmissao: TDateField;
    TBAuxVencimento: TDateField;
    TBAuxPagamento: TDateField;
    TBAuxStatus: TStringField;
    TBAuxValor: TCurrencyField;
    TBAuxValorPago: TCurrencyField;
    TBAuxCursoMaterial: TStringField;
    DataSetProvider1: TDataSetProvider;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery3: TFDQuery;
    FDQuery3VED_CODIGO: TIntegerField;
    FDQuery3VED_NOTA: TIntegerField;
    FDQuery3VED_NFE: TIntegerField;
    FDQuery2REE_CODIGO: TIntegerField;
    FDQuery2REE_NUMDOCTO: TStringField;
    FDQuery2REE_DESCRICAO: TStringField;
    FDQuery2REE_STATUS: TStringField;
    FDQuery2REE_DTEMISSAO: TDateField;
    FDQuery2REE_DTVENCIMENTO: TDateField;
    FDQuery2REE_DTPAGAMENTO: TDateField;
    FDQuery2REE_VALOR: TFMTBCDField;
    FDQuery2REE_VALORPAGO: TFMTBCDField;
    FDQuery2REE_PARCELAQTDE: TIntegerField;
    FDQuery1MAT_CODIGO: TIntegerField;
    FDQuery1MAT_CLIENTE: TIntegerField;
    FDQuery1MAT_STATUS: TStringField;
    FDQuery1MAT_TURMA: TIntegerField;
    FDQuery1MAT_VENDA: TIntegerField;
    FDQuery1MAT_VENDAMATERIAL: TIntegerField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1CLI_FONE1: TStringField;
    FDQuery1TUR_DESCRICAO: TStringField;
    FDQuery1TUR_PERIODO: TIntegerField;
    FDQuery1TUR_ANO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela(DataInicial, DataFinal: TDate);
  end;

var
  FormMatriculasQ04: TFormMatriculasQ04;
  TotalAberto, TotalPago: Currency;
  CursoMaterial: String;
implementation
uses DataMod, FuncoesFirenet, MatriculasRel;
{$R *.dfm}

procedure TFormMatriculasQ04.CriarTabela(DataInicial, DataFinal: TDate);
var NumDocto: String;
begin
  TBAux.Close;
  TBAux.CreateDataSet;
  FDQuery1.First;
  while not FDQuery1.Eof do
  begin
    FDQuery3.Close;
    if CursoMaterial='CURSO' then
    FDQuery3.ParamByName('codigo').AsInteger:=FDQuery1.FieldByName('MAT_VENDA').AsInteger else
    if CursoMaterial='MATERIAL' then
    FDQuery3.ParamByName('codigo').AsInteger:=FDQuery1.FieldByName('MAT_VENDAMATERIAL').AsInteger;
    FDQuery3.Open;
    FDQuery2.Close;
    FDQuery2.SQL.Clear;
    if not FDQuery3.FieldByName('VED_NOTA').IsNull then
    begin
      NumDocto:=FDQuery3.FieldByName('VED_NOTA').AsString;
      FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_DTPAGAMENTO, REE_PARCELAQTDE, '+
                       'REE_VALOR, REE_VALORPAGO from RECEBER where REE_CLIENTE=:MAT_CLIENTE and REE_NUMDOCTO like '+QuotedStr('NF-'+NumDocto+'/%')+' '+
                       'and REE_DTVENCIMENTO between :datainicial and :datafinal '+
                       'order by REE_DTVENCIMENTO, REE_CODIGO');
    end else
    if not FDQuery3.FieldByName('VED_NFE').IsNull then
    begin
      NumDocto:=FDQuery3.FieldByName('VED_NFE').AsString;
      FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_DTPAGAMENTO, REE_PARCELAQTDE, '+
                       'REE_VALOR, REE_VALORPAGO from RECEBER where REE_CLIENTE=:MAT_CLIENTE and REE_NUMDOCTO like '+QuotedStr('NFE-'+NumDocto+'/%')+' '+
                       'and REE_DTVENCIMENTO between :datainicial and :datafinal '+
                       'order by REE_DTVENCIMENTO, REE_CODIGO');
    end else
    begin
      NumDocto:=FDQuery3.FieldByName('VED_CODIGO').AsString;
      FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_DTPAGAMENTO, REE_PARCELAQTDE, '+
                       'REE_VALOR, REE_VALORPAGO from RECEBER where REE_CLIENTE=:MAT_CLIENTE and REE_NUMDOCTO like '+QuotedStr(NumDocto+'/%')+' '+
                       'and REE_DTVENCIMENTO between :datainicial and :datafinal '+
                       'order by REE_DTVENCIMENTO, REE_CODIGO');
    end;
    FDQuery2.ParamByName('datainicial').AsDate:=DataInicial;
    FDQuery2.ParamByName('datafinal').AsDate:=DataFinal;
    FDQuery2.Open;
    FDQuery2.First;
    while not FDQuery2.Eof do
    begin
      TBAux.Insert;
      TBAux.FieldByName('Matricula').AsInteger:=FDQuery1MAT_CODIGO.Value;
      TBAux.FieldByName('Cliente').AsInteger:=FDQuery1MAT_CLIENTE.Value;
      TBAuxNome.Value:=FDQuery1CLI_NOME.Value;
      TBAux.FieldByName('Turma').AsInteger:=FDQuery1MAT_TURMA.Value;
      TBAux.FieldByName('TurmaDesc').AsString:=FDQuery1TUR_DESCRICAO.Value;
      TBAux.FieldByName('PeriodoAno').AsString:=IntToStr(FDQuery1TUR_PERIODO.Value)+'/'+FDQuery1TUR_ANO.Value;
      TBAux.FieldByName('Fone').AsString:=FDQuery1CLI_FONE1.Value;
      TBAux.FieldByName('StatusMat').AsString:=FDQuery1MAT_STATUS.Value;
      TBAux.FieldByName('CursoMaterial').AsString:=IntToStr(FDQuery1MAT_VENDA.Value)+'/'+IntToStr(FDQuery1MAT_VENDAMATERIAL.Value);

      TBAux.FieldByName('Receber').AsInteger:=FDQuery2REE_CODIGO.Value;
      TBAux.FieldByName('NumDocto').AsString:=FDQuery2REE_NUMDOCTO.Value;
      TBAux.FieldByName('Emissao').AsDateTime:=FDQuery2REE_DTEMISSAO.Value;
      TBAux.FieldByName('Vencimento').AsDateTime:=FDQuery2REE_DTVENCIMENTO.Value;
      if not FDQuery2REE_DTPAGAMENTO.IsNull then
      TBAux.FieldByName('Pagamento').AsDateTime:=FDQuery2REE_DTPAGAMENTO.Value;
      TBAux.FieldByName('Valor').AsExtended:=FDQuery2REE_VALOR.AsExtended;
      TBAux.FieldByName('ValorPago').AsExtended:=FDQuery2REE_VALORPAGO.AsExtended;
      TBAux.FieldByName('TP').AsInteger:=FDQuery2REE_PARCELAQTDE.Value;
      TBAux.FieldByName('Status').AsString:=FDQuery2REE_STATUS.Value;
      TBAux.Post;
      FDQuery2.Next;
    end;
    FDQuery1.Next;
  end;
  QRDBText21.DataField:='Cliente';
  QRDBText20.DataField:='Nome';
//  QRDBText4.DataField:='Fone';
  QRDBText17.DataField:='Turma';
  QRDBText19.DataField:='TurmaDesc';
  QRDBText23.DataField:='PeriodoAno';
  QRDBText10.DataField:='Matricula';
  QRDBText18.DataField:='StatusMat';
  QRDBText22.DataField:='CursoMaterial';
  QRDBText9.DataField:='Receber';
  QRDBText15.DataField:='NumDocto';
  QRDBText8.DataField:='TP';
  QRDBText7.DataField:='Emissao';
  QRDBText1.DataField:='Vencimento';
  QRDBText2.DataField:='Pagamento';
  QRDBText3.DataField:='Status';
  QRDBText14.DataField:='Valor';
  QRDBText12.DataField:='ValorPago';

  TBAux.IndexFieldNames:='Nome';
  TBAux.First;
end;

procedure TFormMatriculasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ04);
  QRLabel4.Caption:='Usuário: '+DM.UsuarioLogin;
  TotalAberto:=0;
  TotalPago:=0;
end;

procedure TFormMatriculasQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel32.Caption:=Format('%m',[TotalAberto]);
  QRLabel6.Caption:=Format('%m',[TotalPago]);
end;

procedure TFormMatriculasQ04.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalAberto:=0;
  TotalPago:=0;
end;

procedure TFormMatriculasQ04.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if TBAux.FieldByName('Status').AsString='A' then
  TotalAberto:=TotalAberto+TBAux.FieldByName('Valor').AsExtended;
  if TBAux.FieldByName('Status').AsString='B' then
  TotalPago:=TotalPago+TBAux.FieldByName('ValorPago').AsExtended;
end;

end.
