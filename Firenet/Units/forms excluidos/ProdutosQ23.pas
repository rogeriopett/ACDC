unit ProdutosQ23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRPDFFilt, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormProdutosQ23 = class(TForm)
    QuickRep1: TQuickRep;
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
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_TIPO: TIBStringField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1PCO_FORNECEDOR: TIntegerField;
    IBQuery1PCO_CODIGOFORNECEDOR: TIBStringField;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ23: TFormProdutosQ23;
  TotalFornecedor, TotalGrupo, TotalGeral: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ23.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=TotalFornecedor+1;
  TotalGrupo:=TotalGrupo+1;
  TotalGeral:=TotalGeral+1;
end;

procedure TFormProdutosQ23.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ23);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalFornecedor:=0;
  TotalGrupo:=0;
  TotalGeral:=0;
  ColumnHeaderBand1.Height:=0; //se nao tiver essa Band, não imprime o primeiro grupo. Pq?.
end;

procedure TFormProdutosQ23.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalGrupo:=0;
end;

procedure TFormProdutosQ23.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Produtos no Grupo: '+IntToStr(TotalGrupo);
end;

procedure TFormProdutosQ23.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=0;
end;

procedure TFormProdutosQ23.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:='Total de Produtos no Fornecedor: '+IntToStr(TotalFornecedor);
end;

procedure TFormProdutosQ23.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=0;
  TotalGrupo:=0;
  TotalGeral:=0;
end;

procedure TFormProdutosQ23.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total Geral: '+IntToStr(TotalGeral);
end;

end.
