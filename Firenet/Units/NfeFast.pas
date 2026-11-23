unit NfeFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.StdCtrls, frxExportCSV,
  frxExportXLSX, frxExportBaseDialog, frxExportPDF, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frCoreClasses;

type
  TFormNfeFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset4a: TfrxDBDataset;
    DS04: TDataSource;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    TBNfe: TClientDataSet;
    TBNfeDE: TIntegerField;
    TBNfeATE: TIntegerField;
    TBNfeQUANTIDADE: TIntegerField;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    TR09: TFDTransaction;
    QY09: TFDQuery;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY01NFE_ALIQICMSCREDSN: TFMTBCDField;
    QY01NFE_BAIRRO: TStringField;
    QY01NFE_BASEICMS: TFMTBCDField;
    QY01NFE_BASEICMSST: TFMTBCDField;
    QY01NFE_BASEISS: TFMTBCDField;
    QY01NFE_CEP: TStringField;
    QY01NFE_CFOP: TIntegerField;
    QY01NFE_CFOPDESC: TStringField;
    QY01NFE_CHAVEACESSO: TStringField;
    QY01NFE_CIDADE: TStringField;
    QY01NFE_CLIENTE: TIntegerField;
    QY01NFE_CNPJ: TStringField;
    QY01NFE_CODIGO: TIntegerField;
    QY01NFE_COMPLEMENTO: TStringField;
    QY01NFE_CPF: TStringField;
    QY01NFE_DESCVALOR: TFMTBCDField;
    QY01NFE_DTEMISSAO: TDateField;
    QY01NFE_DTSAIDA: TDateField;
    QY01NFE_ENDERECO: TStringField;
    QY01NFE_ENTRADASAIDA: TStringField;
    QY01NFE_ESPECIE: TStringField;
    QY01NFE_ESTADO: TStringField;
    QY01NFE_FONE1: TStringField;
    QY01NFE_FRETE: TStringField;
    QY01NFE_IE: TStringField;
    QY01NFE_INFOADICFISCO: TMemoField;
    QY01NFE_INFOCOMPLEMENTAR: TMemoField;
    QY01NFE_MARCA: TStringField;
    QY01NFE_NOME: TStringField;
    QY01NFE_NUMERO: TStringField;
    QY01NFE_PEDIDOCLIENTE: TStringField;
    QY01NFE_PESOBRUTO: TFMTBCDField;
    QY01NFE_PESOLIQ: TFMTBCDField;
    QY01NFE_PROTOCOLO: TStringField;
    QY01NFE_PROTOCOLODH: TStringField;
    QY01NFE_SERIE: TIntegerField;
    QY01NFE_TOTALFCP: TFMTBCDField;
    QY01NFE_TOTALFCPST: TFMTBCDField;
    QY01NFE_TOTALICMS: TFMTBCDField;
    QY01NFE_TOTALICMSCREDSN: TFMTBCDField;
    QY01NFE_TOTALICMSST: TFMTBCDField;
    QY01NFE_TOTALIPI: TFMTBCDField;
    QY01NFE_TOTALISS: TFMTBCDField;
    QY01NFE_TOTALPRODUTOS: TFMTBCDField;
    QY01NFE_TOTALSERVICOS: TFMTBCDField;
    QY01NFE_TOTALTRIBUTOS: TFMTBCDField;
    QY01NFE_TOTALTRIBUTOSEST: TFMTBCDField;
    QY01NFE_TOTALTRIBUTOSFED: TFMTBCDField;
    QY01NFE_TOTALTRIBUTOSMUN: TFMTBCDField;
    QY01NFE_TRANSPCIDADE: TStringField;
    QY01NFE_TRANSPCNPJ: TStringField;
    QY01NFE_TRANSPENDERECO: TStringField;
    QY01NFE_TRANSPESTADO: TStringField;
    QY01NFE_TRANSPIE: TStringField;
    QY01NFE_TRANSPNOME: TStringField;
    QY01NFE_VALORDESPACES: TFMTBCDField;
    QY01NFE_VALORFRETE: TFMTBCDField;
    QY01NFE_VALORSEGURO: TFMTBCDField;
    QY01NFE_VALORTOTAL: TFMTBCDField;
    QY01NFE_VEICULOPLACA: TStringField;
    QY01NFE_VEICULOPLACAUF: TStringField;
    QY01NFE_VEICULORNTC: TStringField;
    QY01NFE_VENDA: TIntegerField;
    QY01NFE_VOLUMES: TIntegerField;
    QY01NFE_VOLUMESNUM: TStringField;
    QY01CPG_DESCRICAO: TStringField;
    QY01DOCUMENTO: TStringField;
    QY01CHAVEACESSOFORMATADA: TStringField;
    QY01a: TFDQuery;
    TR01a: TFDTransaction;
    QY01aNFI_ALIQICMS: TFMTBCDField;
    QY01aNFI_ALIQIPI: TFMTBCDField;
    QY01aNFI_BASEICMS: TFMTBCDField;
    QY01aNFI_CFOP: TIntegerField;
    QY01aNFI_CLASSFISCAL: TStringField;
    QY01aNFI_CODIGO: TIntegerField;
    QY01aNFI_CODIGOFAB: TStringField;
    QY01aNFI_COMPLEMENTO: TStringField;
    QY01aNFI_CSTICMS: TIntegerField;
    QY01aNFI_DESCRICAO: TStringField;
    QY01aNFI_DESCVALOR: TFMTBCDField;
    QY01aNFI_LOTE: TStringField;
    QY01aNFI_ORIGEM: TStringField;
    QY01aNFI_PRODUTO: TIntegerField;
    QY01aNFI_QUANTIDADE: TFMTBCDField;
    QY01aNFI_QUANTIDADETROCA: TFMTBCDField;
    QY01aNFI_UNIDADE: TStringField;
    QY01aNFI_VALORICMS: TFMTBCDField;
    QY01aNFI_VALORTOTAL: TFMTBCDField;
    QY01aNFI_VALORUNIT: TFMTBCDField;
    QY01b: TFDQuery;
    TR01b: TFDTransaction;
    QY01bREE_DTVENCIMENTO: TDateField;
    QY01bREE_VALOR: TFMTBCDField;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    Qy04a: TFDQuery;
    TR04a: TFDTransaction;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    TR06: TFDTransaction;
    QY06: TFDQuery;
    TR07: TFDTransaction;
    QY07: TFDQuery;
    QY07DE: TLargeintField;
    QY07ATE: TLargeintField;
    QY07a: TFDQuery;
    TR07a: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela;
  end;

var
  FormNfeFast: TFormNfeFast;

implementation

{$R *.dfm}

uses DataMod;

procedure TFormNfeFast.CriarTabela;
begin
  TBNfe.EmptyDataSet;
  TBNfe.Open;
  QY07a.DisableControls;
  QY07.DisableControls;
  QY07.First;
  while not QY07.Eof do
  begin
    //verifica se existe algum registro na tabela de nfe inutilizadas.
    QY07a.Close;
    QY07a.ParamByName('de').AsInteger:=QY07DE.Value;
    QY07a.ParamByName('ate').AsInteger:=QY07ATE.Value;
    QY07a.Open;
    if QY07a.IsEmpty then //se estiver vazio é pq não foi encontrado na tabela de inutilizacoes, então inclui na tabela temporaria.
    begin
      TBNfe.Insert;
      TBNfeDE.Value:=QY07DE.Value;
      TBNfeATE.Value:=QY07ATE.Value;
      TBNfeQUANTIDADE.Value:=QY07ATE.Value - QY07DE.Value + 1;
      TBNfe.Post;
    end;
    QY07.Next;
  end;
  QY07.EnableControls;
  QY07a.EnableControls;
  QY07a.Close;
  TBNfe.First;
end;

end.
