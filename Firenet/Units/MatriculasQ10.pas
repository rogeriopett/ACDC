unit MatriculasQ10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMatriculasQ10 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData2: TQRSysData;
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
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    DataSource1: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    TBContabilizar: TClientDataSet;
    DSContabilizar: TDataSource;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    TBContabilizarMatricula: TIntegerField;
    TBContabilizarCliente: TIntegerField;
    TBContabilizarNome: TStringField;
    TBContabilizarStatus: TStringField;
    TBContabilizarVenda: TIntegerField;
    TBContabilizarReceber: TIntegerField;
    TBContabilizarNumDocto: TStringField;
    TBContabilizarTP: TIntegerField;
    TBContabilizarEmissao: TDateField;
    TBContabilizarVencimento: TDateField;
    TBContabilizarPagamento: TDateField;
    TBContabilizarValor: TCurrencyField;
    TBContabilizarValorPago: TCurrencyField;
    TBContabilizarCondicao: TIntegerField;
    TBContabilizarCondicaoDescricao: TStringField;
    ColumnHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    TBContabilizarTipoDocto: TStringField;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery3: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery1MAT_CODIGO: TIntegerField;
    FDQuery1MAT_CLIENTE: TIntegerField;
    FDQuery1MAT_TURMA: TIntegerField;
    FDQuery1MAT_VENDA: TIntegerField;
    FDQuery1MAT_STATUS: TStringField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VED_CONDICAO: TIntegerField;
    FDQuery1CPG_DESCRICAO: TStringField;
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
    FDQuery2REE_TIPODOCTO: TStringField;
    FDQuery3VED_CODIGO: TIntegerField;
    FDQuery3VED_NOTA: TIntegerField;
    FDQuery3VED_NFE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela(DataInicial, DataFinal: TDate);
  end;

var
  FormMatriculasQ10: TFormMatriculasQ10;
  Total, TotalPago: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasQ10.CriarTabela(DataInicial, DataFinal: TDate);
var NumDocto: String;
begin
  TBContabilizar.Close;
  TBContabilizar.Open;
//  TBContabilizar.CreateDataSet;
  FDQuery1.First;
  while not FDQuery1.Eof do
  begin
    FDQuery3.Close;
    FDQuery3.ParamByName('codigo').AsInteger:=FDQuery1.FieldByName('MAT_VENDA').AsInteger;
    FDQuery3.Open;
    if not FDQuery3.IsEmpty then //se achou a venda...
    begin
      FDQuery2.Close;
      FDQuery2.SQL.Clear;
      if not FDQuery3.FieldByName('VED_NOTA').IsNull then
      begin
        NumDocto:=FDQuery3.FieldByName('VED_NOTA').AsString;
        FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, '+
                         'REE_DTPAGAMENTO, REE_VALOR, REE_VALORPAGO, REE_PARCELAQTDE, REE_TIPODOCTO from RECEBER '+
                         'where REE_CLIENTE='+QuotedStr(IntToStr(FDQuery1MAT_CLIENTE.Value))+' and REE_NUMDOCTO like  '+QuotedStr('NF-'+NumDocto+'/%')+' '+
                         'and REE_DTPAGAMENTO between :datainicial and :datafinal and REE_STATUS=''B'' '+
                         'order by REE_DTPAGAMENTO, REE_CODIGO');
      end else
      if not FDQuery3.FieldByName('VED_NFE').IsNull then
      begin
        NumDocto:=FDQuery3.FieldByName('VED_NFE').AsString;
        FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, '+
                         'REE_DTPAGAMENTO, REE_VALOR, REE_VALORPAGO, REE_PARCELAQTDE, REE_TIPODOCTO from RECEBER '+
                         'where REE_CLIENTE='+QuotedStr(IntToStr(FDQuery1MAT_CLIENTE.Value))+' and REE_NUMDOCTO like  '+QuotedStr('NFE-'+NumDocto+'/%')+' '+
                         'and REE_DTPAGAMENTO between :datainicial and :datafinal and REE_STATUS=''B'' '+
                         'order by REE_DTPAGAMENTO, REE_CODIGO');
      end else
      begin
        NumDocto:=FDQuery3.FieldByName('VED_CODIGO').AsString;
        FDQuery2.SQL.Add('select REE_CODIGO, REE_NUMDOCTO, REE_DESCRICAO, REE_STATUS, REE_DTEMISSAO, REE_DTVENCIMENTO, '+
                         'REE_DTPAGAMENTO, REE_VALOR, REE_VALORPAGO, REE_PARCELAQTDE, REE_TIPODOCTO from RECEBER '+
                         'where REE_CLIENTE='+QuotedStr(IntToStr(FDQuery1MAT_CLIENTE.Value))+' and REE_NUMDOCTO like  '+QuotedStr(NumDocto+'%')+' '+
                         'and REE_DTPAGAMENTO between :datainicial and :datafinal and REE_STATUS=''B'' '+
                         'order by REE_DTPAGAMENTO, REE_CODIGO');
      end;
      FDQuery2.ParamByName('datainicial').AsDate:=DataInicial;
      FDQuery2.ParamByName('datafinal').AsDate:=DataFinal;
      FDQuery2.Open;
      FDQuery2.First;
      while not FDQuery2.Eof do
      begin
        TBContabilizar.Insert;
        TBContabilizar.FieldByName('Matricula').AsInteger:=FDQuery1MAT_CODIGO.Value;
        TBContabilizar.FieldByName('Cliente').AsInteger:=FDQuery1MAT_CLIENTE.Value;
        TBContabilizar.FieldByName('Nome').AsString:=FDQuery1CLI_NOME.Value;
        TBContabilizar.FieldByName('Status').AsString:=FDQuery1MAT_STATUS.Value;
        TBContabilizar.FieldByName('Venda').AsInteger:=FDQuery1MAT_VENDA.Value;
        TBContabilizar.FieldByName('Condicao').AsInteger:=FDQuery1VED_CONDICAO.Value;
        TBContabilizar.FieldByName('CondicaoDescricao').AsString:=FDQuery1CPG_DESCRICAO.Value;
        TBContabilizar.FieldByName('Receber').AsInteger:=FDQuery2REE_CODIGO.Value;
        TBContabilizar.FieldByName('NumDocto').AsString:=FDQuery2REE_NUMDOCTO.Value;
        TBContabilizar.FieldByName('TP').AsInteger:=FDQuery2REE_PARCELAQTDE.Value;
        TBContabilizar.FieldByName('Emissao').AsDateTime:=FDQuery2REE_DTEMISSAO.Value;
        TBContabilizar.FieldByName('Vencimento').AsDateTime:=FDQuery2REE_DTVENCIMENTO.Value;
        TBContabilizar.FieldByName('Pagamento').AsDateTime:=FDQuery2REE_DTPAGAMENTO.Value;
        TBContabilizar.FieldByName('Valor').AsExtended:=FDQuery2REE_VALOR.AsExtended;
        TBContabilizar.FieldByName('ValorPago').AsExtended:=FDQuery2REE_VALORPAGO.AsExtended;
        TBContabilizar.FieldByName('TipoDocto').AsString:=FDQuery2REE_TIPODOCTO.Value;
        TBContabilizar.Post;
        FDQuery2.Next;
      end;
    end else
    begin //insere somente os dados da matrícula pq obedece os parametros informados.
      TBContabilizar.Insert;
      TBContabilizar.FieldByName('Matricula').AsInteger:=FDQuery1MAT_CODIGO.Value;
      TBContabilizar.FieldByName('Cliente').AsInteger:=FDQuery1MAT_CLIENTE.Value;
      TBContabilizar.FieldByName('Nome').AsString:=FDQuery1CLI_NOME.Value;
      TBContabilizar.FieldByName('Status').AsString:=FDQuery1MAT_STATUS.Value;
      TBContabilizar.FieldByName('Venda').AsInteger:=FDQuery1MAT_VENDA.Value;
      TBContabilizar.FieldByName('Condicao').AsInteger:=FDQuery1VED_CONDICAO.Value;
      TBContabilizar.FieldByName('CondicaoDescricao').AsString:=FDQuery1CPG_DESCRICAO.Value;
//      TBContabilizar.FieldByName('Receber').AsInteger:=FDQuery2REE_CODIGO.Value;
//      TBContabilizar.FieldByName('NumDocto').AsString:=FDQuery2REE_NUMDOCTO.Value;
//      TBContabilizar.FieldByName('TP').AsInteger:=FDQuery2REE_PARCELAQTDE.Value;
//      TBContabilizar.FieldByName('Emissao').AsDateTime:=FDQuery2REE_DTEMISSAO.Value;
//      TBContabilizar.FieldByName('Vencimento').AsDateTime:=FDQuery2REE_DTVENCIMENTO.Value;
//      TBContabilizar.FieldByName('Pagamento').AsDateTime:=FDQuery2REE_DTPAGAMENTO.Value;
//      TBContabilizar.FieldByName('Valor').AsExtended:=FDQuery2REE_VALOR.Value;
//      TBContabilizar.FieldByName('ValorPago').AsExtended:=FDQuery2REE_VALORPAGO.Value;
      TBContabilizar.Post;
    end;
    FDQuery1.Next;
  end;
  //QRGroup1.Expression:='TBContabilizar.CondicaoDescricao';
  QRDBText5.DataField:='Matricula';
  QRDBText15.DataField:='Cliente';
  QRDBText6.DataField:='Nome';
  QRDBText8.DataField:='Status';
  //excluido o campo QRDBText9.DataField:='Receber';
  QRDBText3.DataField:='NumDocto';
  QRDBText4.DataField:='TP';
  QRDBText7.DataField:='Emissao';
  QRDBText1.DataField:='Vencimento';
  QRDBText2.DataField:='Pagamento';
  QRDBText14.DataField:='Valor';
  QRDBText12.DataField:='ValorPago';
//  TBContabilizar.IndexFieldNames:='CondicaoDescricao;Nome';
  TBContabilizar.First;
end;

procedure TFormMatriculasQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ10);
  QRLabel4.Caption:='Usuário: '+DM.UsuarioLogin;
  Total:=0;
  TotalPago:=0;
end;

procedure TFormMatriculasQ10.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=Format('%m',[TotalPago]);
  QRLabel19.Caption:=Format('%m',[Total]);
end;

procedure TFormMatriculasQ10.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+TBContabilizar.FieldByName('Valor').AsExtended;
  TotalPago:=TotalPago+TBContabilizar.FieldByName('ValorPago').AsExtended;
end;

procedure TFormMatriculasQ10.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalPago:=0;
end;

end.
