unit ProdutosQ18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormProdutosQ18 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
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
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_CODIGOFAB: TIBStringField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1PRO_TIPO: TIBStringField;
    IBTransaction1: TIBTransaction;
    IBQuery1PRO_FORNECEDOR: TIntegerField;
    IBQuery1FOR_NOME: TIBStringField;
    ColumnHeaderBand1: TQRBand;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ18: TFormProdutosQ18;
  TotalFornecedor, TotalGrupo, TotalGeral: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ18.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ18);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalFornecedor:=0;
  TotalGrupo:=0;
  TotalGeral:=0;
  ColumnHeaderBand1.Height:=0; //se nao tiver essa Band, não imprime o primeiro grupo. Pq?.
end;

procedure TFormProdutosQ18.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=0;
end;

procedure TFormProdutosQ18.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Produtos no Fornecedor: '+IntToStr(TotalFornecedor);
end;

procedure TFormProdutosQ18.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=0;
  TotalGrupo:=0;
  TotalGeral:=0;
end;

procedure TFormProdutosQ18.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total Geral: '+IntToStr(TotalGeral);
end;

procedure TFormProdutosQ18.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalGrupo:=0;
end;

procedure TFormProdutosQ18.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:='Total de Produtos no Grupo: '+IntToStr(TotalGrupo);
end;

procedure TFormProdutosQ18.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFornecedor:=TotalFornecedor+1;
  TotalGrupo:=TotalGrupo+1;
  TotalGeral:=TotalGeral+1;
end;

end.
