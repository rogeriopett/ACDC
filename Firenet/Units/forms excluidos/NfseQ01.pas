unit NfseQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, QRPDFFilt, IBX.IBDatabase, qrFramelines, QRCtrls, QuickRpt,
  Vcl.ExtCtrls, QRQRBarcode;

type
  TFormNfseQ01 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape6: TQRShape;
    IMAGEM2: TQRImage;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel114: TQRLabel;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel119: TQRLabel;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel132: TQRLabel;
    IBTransaction2: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    DataSource1: TDataSource;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    QRLabel1: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel84: TQRLabel;
    QRShape80: TQRShape;
    QRLabel131: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape38: TQRShape;
    QRLabel83: TQRLabel;
    QRDBText40: TQRDBText;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText48: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText16: TQRDBText;
    IBQuery1NFS_CODIGO: TIntegerField;
    IBQuery1NFS_CLIENTE: TIntegerField;
    IBQuery1NFS_CONDICAO: TIntegerField;
    IBQuery1NFS_VENDEDOR: TIntegerField;
    IBQuery1NFS_BAIXADATA: TDateField;
    IBQuery1NFS_BAIXAPOR: TIBStringField;
    IBQuery1NFS_CANCELAMENTODATA: TDateField;
    IBQuery1NFS_CANCELAMENTOHORA: TTimeField;
    IBQuery1NFS_CANCELAMENTOMOTIVO: TIBStringField;
    IBQuery1NFS_CONDICAOMEMO: TWideMemoField;
    IBQuery1NFS_CSTISS: TIBStringField;
    IBQuery1NFS_DIAPREFERENCIAL: TIntegerField;
    IBQuery1NFS_DTATUALIZACAO: TDateField;
    IBQuery1NFS_DTCADASTRO: TDateField;
    IBQuery1NFS_DTEMISSAO: TDateField;
    IBQuery1NFS_FORMAPAGTO: TIBStringField;
    IBQuery1NFS_INFOADICIONAIS: TWideMemoField;
    IBQuery1NFS_INTERMEDIARIOCPFCNPJ: TIBStringField;
    IBQuery1NFS_INTERMEDIARIOIM: TIntegerField;
    IBQuery1NFS_INTERMEDIARIONOME: TIBStringField;
    IBQuery1NFS_MOVIMENTAFINANCEIRO: TIBStringField;
    IBQuery1NFS_OBRAART: TIntegerField;
    IBQuery1NFS_OBRACODIGO: TIntegerField;
    IBQuery1NFS_OBSERVACOES: TWideMemoField;
    IBQuery1NFS_PROTOCOLO: TIBStringField;
    IBQuery1NFS_PROTOCOLODH: TIBStringField;
    IBQuery1NFS_RETENCAO: TIBStringField;
    IBQuery1NFS_SIMPLESNACIONAL: TIBStringField;
    IBQuery1NFS_STATUS: TIBStringField;
    IBQuery1NFS_TOMCPF: TIBStringField;
    IBQuery1NFS_TOMCNPJ: TIBStringField;
    IBQuery1NFS_TOMTIPOPESSOA: TIBStringField;
    IBQuery1NFS_TOMIE: TIBStringField;
    IBQuery1NFS_TOMIM: TIntegerField;
    IBQuery1NFS_TOMNOME: TIBStringField;
    IBQuery1NFS_TOMEMAIL: TIBStringField;
    IBQuery1NFS_TOMSITE: TIBStringField;
    IBQuery1NFS_TOMCEP: TIBStringField;
    IBQuery1NFS_TOMCIDADE: TIBStringField;
    IBQuery1NFS_TOMCIDADECODIGO: TIntegerField;
    IBQuery1NFS_TOMCOMPLEMENTO: TIBStringField;
    IBQuery1NFS_TOMCONTATO: TIBStringField;
    IBQuery1NFS_TOMESTADO: TIBStringField;
    IBQuery1NFS_TOMESTADOCODIGO: TIntegerField;
    IBQuery1NFS_TOMENDERECO: TIBStringField;
    IBQuery1NFS_TOMNUMERO: TIBStringField;
    IBQuery1NFS_TOMBAIRRO: TIBStringField;
    IBQuery1NFS_TOMFONE1: TIBStringField;
    IBQuery1NFS_TOMFONE2: TIBStringField;
    IBQuery1NFS_USUARIO: TIBStringField;
    IBQuery2NSI_CODIGO: TIntegerField;
    IBQuery2NSI_NFSE: TIntegerField;
    IBQuery2NSI_SERVICO: TIBStringField;
    IBQuery2NSI_CIDADE: TIBStringField;
    IBQuery2NSI_CIDADECODIGO: TIntegerField;
    IBQuery2NSI_DESCRICAO: TWideMemoField;
    IBQuery2NSI_PRESTADONOPAIS: TIBStringField;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRShape25: TQRShape;
    QRLabel21: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel72: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRShape39: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRDBText41: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText68: TQRDBText;
    QRShape26: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape18: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape22: TQRShape;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    QRShape24: TQRShape;
    QRDBText29: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape16: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape20: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape12: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape27: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape67: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape68: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape69: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel35: TQRLabel;
    IMAGEM: TQRImage;
    QRShape70: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    IBQuery2ISS_DESCRICAO: TIBStringField;
    IBQuery1NFS_VENDA: TIntegerField;
    IBQuery1NFS_CONSULTADA: TIBStringField;
    IBQuery1NFS_RECIBO: TIBStringField;
    IBQuery1NFS_RECIBODH: TIBStringField;
    IBQuery1NFS_NUMERONOTA: TIntegerField;
    IBQuery1NFS_SERIE: TIBStringField;
    IBQuery1NFS_LOTE: TIntegerField;
    QRLabel20: TQRLabel;
    QRDBText51: TQRDBText;
    QRShape40: TQRShape;
    QRQRBarcode1: TQRQRBarcode;
    IBQuery1NFS_LINK: TIBStringField;
    QRLabel34: TQRLabel;
    QRDBText52: TQRDBText;
    QRShape48: TQRShape;
    IBQuery1NFS_RETENCAORESP: TIBStringField;
    QRLabel36: TQRLabel;
    IBQuery1NFS_TOTALDEDUCOES: TFMTBCDField;
    IBQuery1NFS_TOTALDESCCOND: TFMTBCDField;
    IBQuery1NFS_TOTALDESCINCOND: TFMTBCDField;
    IBQuery1NFS_TOTALISS: TFMTBCDField;
    IBQuery1NFS_TOTALSERVICOS: TFMTBCDField;
    IBQuery1NFS_TOTALTRIBUTOS: TFMTBCDField;
    IBQuery1NFS_TOTALTRIBUTOSEST: TFMTBCDField;
    IBQuery1NFS_TOTALTRIBUTOSFED: TFMTBCDField;
    IBQuery1NFS_TOTALTRIBUTOSIMP: TFMTBCDField;
    IBQuery1NFS_TOTALTRIBUTOSMUN: TFMTBCDField;
    IBQuery1NFS_VALORCOFINS: TFMTBCDField;
    IBQuery1NFS_VALORCREDITO: TFMTBCDField;
    IBQuery1NFS_VALORCSLL: TFMTBCDField;
    IBQuery1NFS_VALORINSS: TFMTBCDField;
    IBQuery1NFS_VALORIR: TFMTBCDField;
    IBQuery1NFS_VALORISSRETIDO: TFMTBCDField;
    IBQuery1NFS_VALORLIQUIDO: TFMTBCDField;
    IBQuery1NFS_VALOROUTRASRET: TFMTBCDField;
    IBQuery1NFS_VALORPIS: TFMTBCDField;
    IBQuery1NFS_BASEISS: TFMTBCDField;
    IBQuery2NSI_VALORTRIBUTOSEST: TFMTBCDField;
    IBQuery2NSI_VALORTRIBUTOSFED: TFMTBCDField;
    IBQuery2NSI_VALORTRIBUTOSIMP: TFMTBCDField;
    IBQuery2NSI_VALORTRIBUTOSMUN: TFMTBCDField;
    IBQuery2NSI_VALORUNIT: TFMTBCDField;
    IBQuery2NSI_ALIQUOTA: TFMTBCDField;
    IBQuery2NSI_BASEISS: TFMTBCDField;
    IBQuery2NSI_QUANTIDADE: TFMTBCDField;
    IBQuery1NFS_CANCELAMENTOCODIGO: TIBStringField;
    IBQuery2NSI_VALORTOTAL: TFMTBCDField;
    IBQuery2NSI_VALORDEDUCOES: TFMTBCDField;
    IBQuery2NSI_VALORISS: TFMTBCDField;
    IBQuery1NFS_TOMPAIS: TIBStringField;
    IBQuery1NFS_TOMPAISCODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseQ01: TFormNfseQ01;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormNfseQ01.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1NFS_TOMTIPOPESSOA.Value='J' then
  QRLabel36.Caption:=IBQuery1NFS_TOMCNPJ.Value else
  QRLabel36.Caption:=IBQuery1NFS_TOMCPF.Value;
end;

procedure TFormNfseQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfseQ01);
  QRLabel9.Caption:='PREFEITURA DE '+DM.TBEmpresaEMP_CIDADE.Value;
  IMAGEM2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Prefeitura_120x60.jpg')
end;

procedure TFormNfseQ01.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value='1' then
  QRLabel124.Font.Color:=clWhite; //retira a frase "documento sem valor fiscal".

  QRLabel133.Caption:=DeleteLineBreaks(IBQuery1NFS_INFOADICIONAIS.Value);
  QRLabel133.Caption:=QRLabel133.Caption+' - Tributos aprox: '+IBQuery1NFS_TOTALTRIBUTOSFED.AsString+' Fed. '+IBQuery1NFS_TOTALTRIBUTOSEST.AsString+' Est. e '+IBQuery1NFS_TOTALTRIBUTOSMUN.AsString+' Mun. Fonte: IBPT. ';

  QRLabel133.Caption:=QRLabel133.Caption+'Esta NFS-e substitui o RPS Num. '+IntToStr(IBQuery1NFS_CODIGO.Value)+', série: '+IBQuery1NFS_SERIE.Value+', emitido em '+DateToStr(IBQuery1NFS_DTEMISSAO.Value)+' ';
  QRLabel133.Caption:=QRLabel133.Caption+' LINK: '+IBQuery1NFS_LINK.Value+' ';

  if IBQuery1NFS_STATUS.Value='C' then
  QRLabel133.Caption:=QRLabel133.Caption+' - Nota Cancelada em  '+DateToStr(IBQuery1NFS_CANCELAMENTODATA.Value)+' '+TimeToStr(IBQuery1NFS_CANCELAMENTOHORA.Value)+' - ('+IBQuery1NFS_CANCELAMENTOMOTIVO.Value+') ';

  if IBQuery1NFS_LINK.Value<>'' then
  QRQRBarcode1.BarcodeText:=IBQuery1NFS_LINK.Value else
  QRQRBarcode1.BarcodeText:='http://www.runtimesistemas.com.br';
end;

end.
