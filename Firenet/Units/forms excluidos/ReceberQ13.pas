unit ReceberQ13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRPDFFilt, qrBarcode, jpeg,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormReceberQ13 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape22: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRImage4: TQRImage;
    QRDBText64: TQRDBText;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel78: TQRLabel;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText73: TQRDBText;
    QRLabel81: TQRLabel;
    QRShape4: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape17: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel28: TQRLabel;
    QRImage2: TQRImage;
    QRLabel64: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel67: TQRLabel;
    QRAsBarcode1: TQRAsBarcode;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1: TIBQuery;
    IBQuery1REE_CODIGO: TIntegerField;
    IBQuery1REE_VALOR: TIBBCDField;
    IBQuery1REE_CONTA: TIntegerField;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1REE_DESCRICAO: TIBStringField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REE_NUMDOCTO: TIBStringField;
    IBQuery1CON_BANCO: TIntegerField;
    IBQuery1CON_CEDENTE: TIBStringField;
    IBQuery1CON_CEDENTENOME: TIBStringField;
    IBQuery1CON_AGENCIA: TIBStringField;
    IBQuery1CON_CONTA: TIBStringField;
    IBQuery1CON_INSTRUCAO1: TIBStringField;
    IBQuery1CON_INSTRUCAO2: TIBStringField;
    IBQuery1CON_INSTRUCAO3: TIBStringField;
    IBQuery1CON_INSTRUCAO4: TIBStringField;
    IBQuery1CON_INSTRUCAO5: TIBStringField;
    IBQuery1BAN_NOME: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_ENDERECO: TIBStringField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1CLI_CIDADE: TIBStringField;
    IBQuery1CLI_ESTADO: TIBStringField;
    IBTransaction1: TIBTransaction;
    IBQuery1CLI_NUMERO: TIBStringField;
    IBQuery1CON_LOCALPAGTO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    procedure CriaCampos;
  public
    { Public declarations }
  end;

var
  FormReceberQ13: TFormReceberQ13;
  Valor : String;
  NossoNumero : String;
  CampoLivre : String;
  CodBarra : String;
  CodBarraDV: String;
  Campo1 : String;
  Campo2 : String;
  Campo3 : String;
  Campo4 : String;
  Campo5 : String;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormReceberQ13.CriaCampos;
begin
  Valor:=FloatToStr(IBQuery1REE_VALOR.Value*100); //multiplica por 100 pra tirar a virgula.
  Valor:=AlignText(Valor,'0',10,taRight);

  //.....
  NossoNumero:=AlignText(IntToStr(IBQuery1REE_CODIGO.Value),'0',7,taRight);
  NossoNumero:=NossoNumero+DVNossoNumero(NossoNumero);

  CampoLivre:='02'+IBQuery1CON_CEDENTE.Value+NossoNumero+'9'+'00';
  CodBarra:=IntToStr(IBQuery1CON_BANCO.Value)+'9'+FatorVecto(IBQuery1REE_DTVENCIMENTO.Value)+Valor+'1'+IBQuery1CON_AGENCIA.Value+CampoLivre;
  CodBarraDV:=DVGeral(CodBarra);

  Campo1:=IntToStr(IBQuery1CON_BANCO.Value)+'9'+'1'+IBQuery1CON_AGENCIA.Value;
  Campo1:=Campo1+Modulo10(Campo1);
  Insert('.',Campo1,6);

  Campo2:=Copy(CampoLivre,1,5);
  Campo2:=Campo2+Copy(CampoLivre,6,5);
  Campo2:=Campo2+Modulo10(Campo2);
  Insert('.',Campo2,6);

  Campo3:=Copy(CampoLivre,11,5);
  Campo3:=Campo3+Copy(CampoLivre,16,5);
  Campo3:=Campo3+Modulo10(Campo3);
  Insert('.',Campo3,6);

  Campo4:=CodBarraDV;
  Insert(Campo4,CodBarra,5);

  Campo5:=FatorVecto(IBQuery1REE_DTVENCIMENTO.Value)+Valor;
end;

procedure TFormReceberQ13.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ13);
end;

procedure TFormReceberQ13.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  CriaCampos;
  QRAsBarcode1.Text:=codbarra;
  QRLabel14.Caption:=Extenso(IBQuery1REE_VALOR.Value);
  QRLabel28.Caption:=IBQuery1CON_AGENCIA.Value+'/'+IBQuery1CON_CEDENTE.Value;
  QRLabel59.Caption:=IBQuery1CON_AGENCIA.Value+'/'+IBQuery1CON_CEDENTE.Value;
  QRLabel64.Caption:=NossoNumero;
  QRLabel78.Caption:=NossoNumero;
  QRLabel77.Caption:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
end;

end.
