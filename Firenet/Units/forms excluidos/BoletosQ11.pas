unit BoletosQ11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase,
  qrBarcode, Barcode, grimgctrl, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormBoletosQ11 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape43: TQRShape;
    QRShape19: TQRShape;
    QRShape44: TQRShape;
    QRShape18: TQRShape;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRShape39: TQRShape;
    QRShape42: TQRShape;
    QRShape41: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape21: TQRShape;
    QRShape33: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape40: TQRShape;
    QRShape27: TQRShape;
    QRShape22: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    QRShape34: TQRShape;
    QRShape31: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRShape28: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRHRule1: TQRHRule;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape30: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRAsBarcode1: TQRAsBarcode;
    QRDBText38: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1BOL_ACEITE: TIBStringField;
    IBQuery1BOL_CARTEIRA: TIBStringField;
    IBQuery1BOL_CARTEIRACOD: TIntegerField;
    IBQuery1CEPCIDADEUF: TIBStringField;
    IBQuery1BOL_CLIENTE: TIntegerField;
    IBQuery1BOL_CNPJ: TIBStringField;
    IBQuery1BOL_CODIGO: TIntegerField;
    IBQuery1BOL_CODIGOBARRAS: TIBStringField;
    IBQuery1BOL_COMPLEMENTO: TIBStringField;
    IBQuery1BOL_CPF: TIBStringField;
    IBQuery1BOL_DTCADASTRO: TDateField;
    IBQuery1BOL_DTVENCIMENTO: TDateField;
    IBQuery1ENDERECOBAIRRO: TIBStringField;
    IBQuery1BOL_ESPECIE: TIBStringField;
    IBQuery1BOL_ESPECIEDOC: TIBStringField;
    IBQuery1BOL_ESTADO: TIBStringField;
    IBQuery1BOL_INSTRUCAO1: TIBStringField;
    IBQuery1BOL_INSTRUCAO2: TIBStringField;
    IBQuery1BOL_INSTRUCAO3: TIBStringField;
    IBQuery1BOL_INSTRUCAO4: TIBStringField;
    IBQuery1BOL_LINHADIGITAVEL: TIBStringField;
    IBQuery1BOL_LOCALPAGTO: TIBStringField;
    IBQuery1BOL_NOME: TIBStringField;
    IBQuery1BOL_NOSSONUMERO: TIBStringField;
    IBQuery1BOL_OBSERVACOES: TWideMemoField;
    IBQuery1BOL_TIPOPESSOA: TIBStringField;
    IBQuery1CON_AGENCIA: TIBStringField;
    IBQuery1CON_BANCO: TIntegerField;
    IBQuery1CON_CONTA: TIBStringField;
    IBQuery1CON_CONTADIGITO: TIntegerField;
    IBQuery1CON_CEDENTE: TIBStringField;
    IBQuery1CON_CEDENTEDIGITO: TIntegerField;
    IBQuery1CON_CEDENTENOME: TIBStringField;
    IBQuery1AGENCIACEDENTE: TIBStringField;
    IBQuery1AGENCIACONTA: TIBStringField;
    PngImageList1: TPngImageList;
    PageHeaderBand1: TQRBand;
    QRImage3: TQRImage;
    QRShape45: TQRShape;
    QRLabel63: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape46: TQRShape;
    QRLabel66: TQRLabel;
    QRShape47: TQRShape;
    QRLabel67: TQRLabel;
    QRShape48: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape49: TQRShape;
    QRLabel71: TQRLabel;
    QRShape50: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel72: TQRLabel;
    QRShape51: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel73: TQRLabel;
    QRShape52: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape53: TQRShape;
    QRLabel76: TQRLabel;
    QRShape54: TQRShape;
    QRLabel77: TQRLabel;
    QRShape55: TQRShape;
    QRHRule2: TQRHRule;
    QRLabel78: TQRLabel;
    IBQuery1MULTAJUROS: TFMTBCDField;
    IBQuery1BOL_VALORTOTAL: TFMTBCDField;
    IBQuery1BOL_DESCVALOR: TFMTBCDField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    function FormatarNossoNumero(NossoNumero: String): String;
  public
    { Public declarations }
  end;

var
  FormBoletosQ11: TFormBoletosQ11;

implementation
uses DataMod, Funcoes1;

{$R *.dfm}
//############################################################################//
// INDICE DAS LOGOS DOS BANCOS NO IMAGELIST.                                  //
//   00=001 - BANCO DO BRASIL                                                 //
//   01=004 - BANCO DO NORDESTE                                               //
//   02=008 - SANTANDER                                                       //
//   03=021 - BANESTES                                                        //
//   04=024 - BANDEPE                                                         //
//   05=027 - BESC                                                            //
//   06=028 - BANEB                                                           //
//   07=029 - BANERJ                                                          //
//   08=031 - BEG SA                                                          //
//   09=033 - SANTANDER                                                       //
//   10=036 - BEM                                                             //
//   11=038 - BANESTADO                                                       //
//   12=041 - BANRISUL                                                        //
//   13=070 - BRB                                                             //
//   14=085 - CECRED                                                          //
//   15=104 - CAIXA                                                           //
//   16=151 - NOSSA CAIXA                                                     //
//   17=231 - BOA VISTA                                                       //
//   18=237 - BRADESCO                                                        //
//   19=244 - CIDADE                                                          //
//   20=246 - ABC BRASIL                                                      //
//   21=263 - CACIQUE                                                         //
//   22=275 - REAL                                                            //
//   23=291 - BCN BANCO DE CREDITO NACIONAL                                   //
//   24=320 - BIC BANCO                                                       //
//   25=341 - ITAÚ                                                            //
//   26=347 - SUDAMERIS                                                       //
//   27=353 - SANTANDER                                                       //
//   28=356 - REAL                                                            //
//   29=389 - MERCANTIL DO BRASIL                                             //
//   30=392 - MERCANTIL DE SÃO PAULO                                          //
//   31=399 - HSBC                                                            //
//   32=409 - UNIBANCO                                                        //
//   33=422 - SAFRA                                                           //
//   34=424 - SANTANDER                                                       //
//   35=453 - RURAL                                                           //
//   36=479 - BANKBOSTON                                                      //
//   37=600 - LUSO BRASILEIRO                                                 //
//   38=604 - INDUSTRIAL                                                      //
//   39=610 - VR                                                              //
//   40=623 - PAN AMERICANO                                                   //
//   41=633 - RENDIMENTO                                                      //
//   42=637 - SOFISA                                                          //
//   43=641 - BBV BANCO                                                       //
//   44=702 - SANTOS                                                          //
//   45=707 - DAYCOVAL                                                        //
//   46=721 - CREDIBEL                                                        //
//   47=741 - RIBEIRÃO PRETO                                                  //
//   48=745 - CITIBANK                                                        //
//   49=748 - SICRED                                                          //
//   50=749 - MERCANTIL S.A.                                                  //
//   51=756 - SICOOB                                                          //
//############################################################################//

function TFormBoletosQ11.FormatarNossoNumero(NossoNumero: String): String;
begin
  Result:=NossoNumero;
  if IBQuery1CON_BANCO.Value=237 then //bradesco.
  Result:=IBQuery1BOL_CARTEIRA.Value+'/'+NossoNumero;

  if IBQuery1CON_BANCO.Value=341 then //itaú.
  Result:=IntToStr(IBQuery1BOL_CARTEIRACOD.Value)+'/'+NossoNumero;

  if IBQuery1CON_BANCO.Value=748 then //sicred.
  begin
    Insert('/',NossoNumero,3);
    Insert('-',NossoNumero,10);
    Result:=NossoNumero;
  end;

  if IBQuery1CON_BANCO.Value=756 then //sicoob.
  Result:=Copy(NossoNumero,Length(NossoNumero)-7,8); //copia os últimos 8 digitos no caso do sicoob.

  if IBQuery1CON_BANCO.Value=104 then //banco de merda.
  begin
    Insert('-',NossoNumero,18);
    Result:=NossoNumero;
  end;
end;

procedure TFormBoletosQ11.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Banco: Word;
  S: String;
begin
  case IBQuery1CON_BANCO.Value of
    001: Banco:=0;
    004: Banco:=1;
    008: Banco:=2;
    021: Banco:=3;
    024: Banco:=4;
    027: Banco:=5;
    028: Banco:=6;
    029: Banco:=7;
    031: Banco:=8;
    033: Banco:=9;
    036: Banco:=10;
    038: Banco:=11;
    041: Banco:=12;
    070: Banco:=13;
    085: Banco:=14;
    104: Banco:=15;
    151: Banco:=16;
    231: Banco:=17;
    237: Banco:=18;
    244: Banco:=19;
    246: Banco:=20;
    263: Banco:=21;
    275: Banco:=22;
    291: Banco:=23;
    320: Banco:=24;
    341: Banco:=25;
    347: Banco:=26;
    353: Banco:=27;
    356: Banco:=28;
    389: Banco:=29;
    392: Banco:=30;
    399: Banco:=31;
    409: Banco:=32;
    422: Banco:=33;
    424: Banco:=34;
    453: Banco:=35;
    479: Banco:=36;
    600: Banco:=37;
    604: Banco:=38;
    610: Banco:=39;
    623: Banco:=40;
    633: Banco:=41;
    637: Banco:=42;
    641: Banco:=43;
    702: Banco:=44;
    707: Banco:=45;
    721: Banco:=46;
    741: Banco:=47;
    745: Banco:=48;
    748: Banco:=49;
    749: Banco:=50;
    756: Banco:=51;
  end;
  PngImageList1.GetBitmap(Banco,QRImage1.Picture.Bitmap);
  PngImageList1.GetBitmap(Banco,QRImage2.Picture.Bitmap);
  QRAsBarcode1.Typ:=bcCode_2_5_Interleaved;
  QRAsBarcode1.Text:=IBQuery1BOL_CODIGOBARRAS.Value;

  QRLabel57.Caption:=IBQuery1AGENCIACEDENTE.Value;
  QRLabel58.Caption:=IBQuery1AGENCIACEDENTE.Value;
  if IBQuery1CON_BANCO.Value=085 then
  begin
    QRLabel57.Caption:=IBQuery1AGENCIACONTA.Value;
    QRLabel58.Caption:=IBQuery1AGENCIACONTA.Value;
  end;
  if IBQuery1CON_BANCO.Value=104 then //banco de merda.
  begin
    S:=IBQuery1AGENCIACEDENTE.Value;
    Delete(S,5,2); //retira o dígito da agencia.
    QRLabel57.Caption:=S;
    QRLabel58.Caption:=S;
  end;
  if IBQuery1CON_BANCO.Value=341 then
  begin
    S:=IBQuery1AGENCIACEDENTE.Value;
    Delete(S,5,2); //retira o dígito da agencia.
    QRLabel57.Caption:=S;
    QRLabel58.Caption:=S;
  end;

  QRLabel2.Caption:=AlignText(IntToStr(IBQuery1CON_BANCO.Value),'0',3,taRight)+'-'+Modulo11(IntToStr(IBQuery1CON_BANCO.Value));
  QRLabel24.Caption:=AlignText(IntToStr(IBQuery1CON_BANCO.Value),'0',3,taRight)+'-'+Modulo11(IntToStr(IBQuery1CON_BANCO.Value));

  QRLabel51.Caption:=Decimais2(IBQuery1BOL_VALORTOTAL.AsExtended,2);
  QRLabel52.Caption:=Decimais2(IBQuery1BOL_VALORTOTAL.AsExtended,2);

  QRLabel60.Caption:=Decimais2(IBQuery1BOL_DESCVALOR.AsExtended,2);

  QRLabel56.Caption:=Decimais2(IBQuery1MULTAJUROS.AsExtended,2);

  QRLabel53.Caption:=DateToStr(Date);
  QRLabel54.Caption:=DateToStr(Date);

  //nosso número...
  QRLabel55.Caption:=FormatarNossoNumero(IBQuery1BOL_NOSSONUMERO.Value);

  QRLabel3.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_CEP.Value;

  S:=IBQuery1BOL_ESPECIEDOC.Value;
  Delete(S,1,Pos(' - ',S)+2);
  Delete(S,Pos(' - ',S),Length(S));
  QRLabel26.Caption:=S;
  QRLabel50.Caption:=S;

  if IBQuery1BOL_TIPOPESSOA.Value='J' then
  begin
    QRLabel59.Caption:=IBQuery1BOL_CNPJ.Value;
    QRLabel61.Caption:=IBQuery1BOL_CNPJ.Value
  end else
  begin
    QRLabel59.Caption:=IBQuery1BOL_CPF.Value;
    QRLabel61.Caption:=IBQuery1BOL_CPF.Value
  end;

  if IBQuery1CON_BANCO.Value<>104 then
  begin
    QRLabel49.Font.Color:=clWhite;
    QRShape43.Pen.Color:=clWhite;
  end;
end;

procedure TFormBoletosQ11.PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Banco: Word;
  S: String;
begin
  Banco:=0;
  case IBQuery1CON_BANCO.Value of
    001: Banco:=0;
    004: Banco:=1;
    008: Banco:=2;
    021: Banco:=3;
    024: Banco:=4;
    027: Banco:=5;
    028: Banco:=6;
    029: Banco:=7;
    031: Banco:=8;
    033: Banco:=9;
    036: Banco:=10;
    038: Banco:=11;
    041: Banco:=12;
    070: Banco:=13;
    085: Banco:=14;
    104: Banco:=15;
    151: Banco:=16;
    231: Banco:=17;
    237: Banco:=18;
    244: Banco:=19;
    246: Banco:=20;
    263: Banco:=21;
    275: Banco:=22;
    291: Banco:=23;
    320: Banco:=24;
    341: Banco:=25;
    347: Banco:=26;
    353: Banco:=27;
    356: Banco:=28;
    389: Banco:=29;
    392: Banco:=30;
    399: Banco:=31;
    409: Banco:=32;
    422: Banco:=33;
    424: Banco:=34;
    453: Banco:=35;
    479: Banco:=36;
    600: Banco:=37;
    604: Banco:=38;
    610: Banco:=39;
    623: Banco:=40;
    633: Banco:=41;
    637: Banco:=42;
    641: Banco:=43;
    702: Banco:=44;
    707: Banco:=45;
    721: Banco:=46;
    741: Banco:=47;
    745: Banco:=48;
    748: Banco:=49;
    749: Banco:=50;
    756: Banco:=51;
  end;
  PngImageList1.GetBitmap(Banco,QRImage3.Picture.Bitmap);

  QRLabel67.Caption:=IBQuery1AGENCIACEDENTE.Value;
  if IBQuery1CON_BANCO.Value=085 then
  begin
    QRLabel67.Caption:=IBQuery1AGENCIACONTA.Value;
  end;
  if IBQuery1CON_BANCO.Value=104 then //banco de merda.
  begin
    S:=IBQuery1AGENCIACEDENTE.Value;
    Delete(S,5,2); //retira o dígito da agencia.
    QRLabel67.Caption:=S;
  end;
  if IBQuery1CON_BANCO.Value=341 then
  begin
    S:=IBQuery1AGENCIACEDENTE.Value;
    Delete(S,5,2); //retira o dígito da agencia.
    QRLabel67.Caption:=S;
  end;

  QRLabel63.Caption:=AlignText(IntToStr(IBQuery1CON_BANCO.Value),'0',3,taRight)+'-'+Modulo11(IntToStr(IBQuery1CON_BANCO.Value));

  QRLabel69.Caption:=Decimais2(IBQuery1BOL_VALORTOTAL.AsExtended,2);

  QRLabel78.Caption:=DateToStr(Date);

  if IBQuery1BOL_TIPOPESSOA.Value='J' then
  begin
    QRLabel74.Caption:=IBQuery1BOL_CNPJ.Value;
  end else
  begin
    QRLabel74.Caption:=IBQuery1BOL_CPF.Value
  end;

end;

end.
