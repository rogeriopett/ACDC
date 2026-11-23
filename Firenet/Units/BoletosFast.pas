unit BoletosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxExportCSV, frxBarCode,
  frxExportXLSX, frxClass, frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, System.ImageList,
  Vcl.ImgList, PngImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frCoreClasses;

type
  TFormBoletosFast = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset2a: TfrxDBDataset;
    DS02: TDataSource;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4a: TfrxDBDataset;
    DS04: TDataSource;
    PngImageListBancos: TPngImageList;
    frxDBDataset10: TfrxDBDataset;
    frxReport10: TfrxReport;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    TR10: TFDTransaction;
    QY10: TFDQuery;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY02a: TFDQuery;
    TR02a: TFDTransaction;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR04a: TFDTransaction;
    QY04a: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function FormatarNossoNumero(Banco, CarteiraCod: Integer; Carteira, NossoNumero: String): String;
    function FormatarAgenciaCedente(Banco: Integer; AgenciaConta, AgenciaCedente: String): String;
    procedure CarregarImagemBanco(Banco: Integer);
  end;

var
  FormBoletosFast: TFormBoletosFast;

implementation

{$R *.dfm}

uses DataMod;
//############################################################################//
// INDICE DAS LOGOS DOS BANCOS NO IMAGELIST.                                  //
//   00=001 - BANCO DO BRASIL                                                 //
//   01=003 - BANCO DA AMAZONIA                                               //
//   02=004 - BANCO DO NORDESTE                                               //
//   03=008 - SANTANDER                                                       //
//   04=021 - BANESTES                                                        //
//   05=024 - BANDEPE                                                         //
//   06=025 - ALFA                                                            //
//   07=027 - BESC                                                            //
//   08=028 - BANEB                                                           //
//   09=029 - BANERJ                                                          //
//   1O=031 - BEG SA                                                          //
//   11=033 - SANTANDER                                                       //
//   12=036 - BEM                                                             //
//   13=038 - BANESTADO                                                       //
//   14=041 - BANRISUL                                                        //
//   15=047 - BANESE                                                          //
//   16=070 - BRB                                                             //
//   17=077 - INTER                                                           //
//   18=084 - SISPRIME                                                        //
//   19=085 - AILOS/CECRED                                                    //
//   20=089 - CREDISAN                                                        //
//   21=097 - CREDISIS                                                        //
//   22=099 - UNIPRIME                                                        //
//   23=104 - CAIXA                                                           //
//   24=133 - CREDSOL                                                         //
//   25=136 - UNICRED                                                         //
//   26=151 - NOSSA CAIXA                                                     //
//   27=174 - PEFISA                                                          //
//   28=208 - BTG PACTUAL                                                     //
//   29=212 - ORIGINAL                                                        //
//   30=218 - BS2                                                             //
//   31=224 - FIBRA                                                           //
//   32=231 - BOA VISTA                                                       //
//   33=237 - BRADESCO                                                        //
//   34=244 - CIDADE                                                          //
//   35=246 - ABC BRASIL                                                      //
//   36=263 - CACIQUE                                                         //
//   37=274 - BMP                                                             //
//   38=275 - REAL                                                            //
//   39=291 - BCN BANCO DE CREDITO NACIONAL                                   //
//   40=310 - VORTX                                                           //
//   41=320 - BIC BANCO                                                       //
//   42=329 - QITECH                                                          //
//   43=336 - C6BANK                                                          //
//   44=341 - ITAÚ                                                            //
//   45=347 - SUDAMERIS                                                       //
//   46=353 - SANTANDER                                                       //
//   47=356 - REAL                                                            //
//   48=389 - MERCANTIL DO BRASIL                                             //
//   49=392 - MERCANTIL DE SÃO PAULO                                          //
//   50=399 - HSBC                                                            //
//   51=403 - CORA                                                            //
//   52=409 - UNIBANCO                                                        //
//   53=422 - SAFRA                                                           //
//   54=424 - SANTANDER                                                       //
//   55=453 - RURAL                                                           //
//   56=457 - UY3                                                             //
//   57=461 - ASAAS                                                           //
//   58=479 - BANKBOSTON                                                      //
//   59=600 - LUSO BRASILEIRO                                                 //
//   60=604 - INDUSTRIAL                                                      //
//   61=610 - VR                                                              //
//   62=623 - PAN AMERICANO                                                   //
//   63=633 - RENDIMENTO                                                      //
//   64=637 - SOFISA                                                          //
//   65=641 - BBV BANCO                                                       //
//   66=643 - PINE                                                            //
//   67=655 - BV                                                              //
//   68=702 - SANTOS                                                          //
//   69=707 - DAYCOVAL                                                        //
//   70=721 - CREDIBEL                                                        //
//   71=741 - RIBEIRÃO PRETO                                                  //
//   72=745 - CITIBANK                                                        //
//   73=748 - SICREDi                                                         //
//   74=749 - MERCANTIL S.A.                                                  //
//   75=756 - SICOOB                                                          //
//############################################################################//

function TFormBoletosFast.FormatarAgenciaCedente(Banco: Integer; AgenciaConta, AgenciaCedente: String): String;
begin
  Result:=AgenciaCedente;
  if Banco=085 then
  begin
    Result:=AgenciaConta;
  end;
  if (Banco=104) or (Banco=341) then
  begin
    Delete(AgenciaCedente,5,2); //retira o dígito da agencia.
    Result:=AgenciaCedente;
  end;
end;

function TFormBoletosFast.FormatarNossoNumero(Banco, CarteiraCod: Integer; Carteira, NossoNumero: String): String;
begin
  Result:=NossoNumero;
  if Banco=237 then //bradesco.
  Result:=Carteira+'/'+NossoNumero;

  if Banco=341 then //itaú.
  Result:=IntToStr(CarteiraCod)+'/'+NossoNumero;

  if Banco=748 then //sicred.
  begin
    Insert('/',NossoNumero,3);
    Insert('-',NossoNumero,10);
    Result:=NossoNumero;
  end;

  if Banco=756 then //sicoob.
  Result:=Copy(NossoNumero,Length(NossoNumero)-7,8); //copia os últimos 8 digitos no caso do sicoob.

  if Banco=104 then //banco de merda.
  begin
    Insert('-',NossoNumero,18);
    Result:=NossoNumero;
  end;
end;

procedure TFormBoletosFast.CarregarImagemBanco(Banco: Integer);
var BancoIdx: Integer;
begin
  case Banco of
    001: BancoIdx:=0;
    003: BancoIdx:=1;
    004: BancoIdx:=2;
    008: BancoIdx:=3;
    021: BancoIdx:=4;
    024: BancoIdx:=5;
    025: BancoIdx:=6;
    027: BancoIdx:=7;
    028: BancoIdx:=8;
    029: BancoIdx:=9;
    031: BancoIdx:=10;
    033: BancoIdx:=11;
    036: BancoIdx:=12;
    038: BancoIdx:=13;
    041: BancoIdx:=14;
    047: BancoIdx:=15;
    070: BancoIdx:=16;
    077: BancoIdx:=17;
    084: BancoIdx:=18;
    085: BancoIdx:=19;
    089: BancoIdx:=20;
    097: BancoIdx:=21;
    099: BancoIdx:=22;
    104: BancoIdx:=23;
    133: BancoIdx:=24;
    136: BancoIdx:=25;
    151: BancoIdx:=26;
    174: BancoIdx:=27;
    208: BancoIdx:=28;
    212: BancoIdx:=29;
    218: BancoIdx:=30;
    224: BancoIdx:=31;
    231: BancoIdx:=32;
    237: BancoIdx:=33;
    244: BancoIdx:=34;
    246: BancoIdx:=35;
    263: BancoIdx:=36;
    274: BancoIdx:=37;
    275: BancoIdx:=38;
    291: BancoIdx:=39;
    310: BancoIdx:=40;
    320: BancoIdx:=41;
    329: BancoIdx:=42;
    336: BancoIdx:=43;
    341: BancoIdx:=44;
    347: BancoIdx:=45;
    353: BancoIdx:=46;
    356: BancoIdx:=47;
    389: BancoIdx:=48;
    392: BancoIdx:=49;
    399: BancoIdx:=50;
    403: BancoIdx:=51;
    409: BancoIdx:=52;
    422: BancoIdx:=53;
    424: BancoIdx:=54;
    453: BancoIdx:=55;
    457: BancoIdx:=56;
    461: BancoIdx:=57;
    479: BancoIdx:=58;
    600: BancoIdx:=59;
    604: BancoIdx:=60;
    610: BancoIdx:=61;
    623: BancoIdx:=62;
    633: BancoIdx:=63;
    637: BancoIdx:=64;
    641: BancoIdx:=65;
    643: BancoIdx:=66;
    655: BancoIdx:=67;
    702: BancoIdx:=68;
    707: BancoIdx:=69;
    721: BancoIdx:=70;
    741: BancoIdx:=71;
    745: BancoIdx:=72;
    748: BancoIdx:=73;
    749: BancoIdx:=74;
    756: BancoIdx:=75;
  end;
  PngImageListBancos.GetBitmap(BancoIdx,TfrxPictureView(frxReport10.FindObject('Picture1')).Picture.Bitmap);
  PngImageListBancos.GetBitmap(BancoIdx,TfrxPictureView(frxReport10.FindObject('Picture2')).Picture.Bitmap);
  PngImageListBancos.GetBitmap(BancoIdx,TfrxPictureView(frxReport10.FindObject('Picture3')).Picture.Bitmap);
end;

end.
