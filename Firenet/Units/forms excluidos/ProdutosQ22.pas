unit ProdutosQ22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormProdutosQ22 = class(TForm)
    QuickRep1: TQuickRep;
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
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_TIPO: TIBStringField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_FAMILIA: TIntegerField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    IBQuery1PRO_MARCA: TIntegerField;
    IBQuery1MAR_DESCRICAO: TIBStringField;
    QRBand5: TQRBand;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_PRECO1: TFMTBCDField;
    IBQuery1PRO_PRECO2: TFMTBCDField;
    IBQuery1PRO_PRECO3: TFMTBCDField;
    IBQuery1PRO_PRECO4: TFMTBCDField;
    IBQuery1PRO_PRECO5: TFMTBCDField;
    IBQuery1PRO_PRECO6: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ22: TFormProdutosQ22;
  ContaGrupo, ContaMarca, Total: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ22.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ContaGrupo:=ContaGrupo+1;
  ContaMarca:=ContaMarca+1;
  Total:=Total+1;
end;

procedure TFormProdutosQ22.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ22);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  ContaGrupo:=0;
  ContaMarca:=0;
  Total:=0;
end;

procedure TFormProdutosQ22.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ContaGrupo:=0;
end;

procedure TFormProdutosQ22.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Produtos (Grupo): '+IntToStr(ContaGrupo);
end;

procedure TFormProdutosQ22.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ContaGrupo:=0;
  ContaMarca:=0;
  Total:=0;
end;

procedure TFormProdutosQ22.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total de Produtos: '+IntToStr(Total);
end;

procedure TFormProdutosQ22.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ContaMarca:=0;
end;

procedure TFormProdutosQ22.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:='Total de Produtos (Marca): '+IntToStr(ContaMarca);
end;

end.
