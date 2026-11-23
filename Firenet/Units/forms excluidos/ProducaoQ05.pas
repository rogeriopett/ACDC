unit ProducaoQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, DBClient, QRPDFFilt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProducaoQ05 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    DataSource1: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    TBProdutos: TClientDataSet;
    DataSource2: TDataSource;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery1PDI_PRODUTO: TIntegerField;
    FDQuery1PRO_NOME: TStringField;
    FDQuery1TOTAL: TFMTBCDField;
    FDQuery3: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery2PRC_PRODUTO: TIntegerField;
    FDQuery2PRC_PRODUTOCOMP: TIntegerField;
    FDQuery2PRC_QUANTIDADE: TFMTBCDField;
    FDQuery2PRO_NOME: TStringField;
    FDQuery3PRO_ESTOQUEATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoQ05: TFormProducaoQ05;

implementation
uses DataMod, FuncoesFirenet, ProducaoRel;
{$R *.dfm}

procedure TFormProducaoQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ05);
  QRLabel9.Caption:='Usuário: '+UsuarioLogin;

  TBProdutos.CreateDataSet; //cria a estrutura da tabela.
  TBProdutos.Open;

  FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(FormProducaoRel.MaskEdit1.Text,FS);
  FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(FormProducaoRel.MaskEdit2.Text,FS);
  FDQuery1.Open;
  FDQuery2.Open;
  FDQuery3.Open;

  FDQuery1.First;
  while not FDQuery1.Eof do
  begin
    FDQuery2.First;
    while not FDQuery2.Eof do
    begin
      if not TBProdutos.Locate('PRO_CODIGO',FDQuery2PRC_PRODUTOCOMP.Value,[]) then
      begin
        TBProdutos.Insert;
        TBProdutos.FieldByName('PRO_CODIGO').AsInteger:=FDQuery2PRC_PRODUTOCOMP.Value;
        TBProdutos.FieldByName('PRO_NOME').AsString:=FDQuery2PRO_NOME.Value;
        TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat:=FDQuery2PRC_QUANTIDADE.AsExtended*FDQuery1TOTAL.AsExtended;
        TBProdutos.FieldByName('PRO_ESTOQUEATUAL').AsFloat:=FDQuery3PRO_ESTOQUEATUAL.AsExtended;
        TBProdutos.Post;
      end else
      begin
        TBProdutos.Edit;
        TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat:=TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat+(FDQuery2PRC_QUANTIDADE.AsExtended*FDQuery1TOTAL.AsExtended);
        TBProdutos.Post;
      end;
      FDQuery2.Next;
    end;
    FDQuery1.Next;
  end;

  QRDBText4.DataField:='PRO_CODIGO';
  QRDBText3.DataField:='PRO_NOME';
  QRDBText1.DataField:='PRO_NECESSARIO';
  QRDBText7.DataField:='PRO_ESTOQUEATUAL';

end;

procedure TFormProducaoQ05.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TBProdutos.Destroy;
end;

procedure TFormProducaoQ05.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption:=FloatToStr(TBProdutos.FieldByName('PRO_ESTOQUEATUAL').AsFloat-TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat);
end;

end.
