unit OdontogramasQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, QRPDFFilt, QRExport, Data.DB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormOdontogramasQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape18A: TQRShape;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRShape15: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRImage9: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    QRImage12: TQRImage;
    QRImage13: TQRImage;
    QRImage14: TQRImage;
    QRImage15: TQRImage;
    QRImage16: TQRImage;
    QRImage17: TQRImage;
    QRImage18: TQRImage;
    QRImage19: TQRImage;
    QRImage20: TQRImage;
    QRImage21: TQRImage;
    QRImage22: TQRImage;
    QRImage23: TQRImage;
    QRImage24: TQRImage;
    QRImage25: TQRImage;
    QRImage26: TQRImage;
    QRImage27: TQRImage;
    QRImage28: TQRImage;
    QRImage29: TQRImage;
    QRImage30: TQRImage;
    QRImage31: TQRImage;
    QRImage32: TQRImage;
    QRShape18B: TQRShape;
    QRShape18C: TQRShape;
    QRShape18D: TQRShape;
    QRShape18E: TQRShape;
    QRShape17A: TQRShape;
    QRShape17B: TQRShape;
    QRShape17C: TQRShape;
    QRShape17D: TQRShape;
    QRShape17E: TQRShape;
    QRShape16A: TQRShape;
    QRShape16B: TQRShape;
    QRShape16C: TQRShape;
    QRShape16D: TQRShape;
    QRShape16E: TQRShape;
    QRShape15A: TQRShape;
    QRShape15B: TQRShape;
    QRShape15C: TQRShape;
    QRShape15D: TQRShape;
    QRShape15E: TQRShape;
    QRShape14A: TQRShape;
    QRShape14B: TQRShape;
    QRShape14C: TQRShape;
    QRShape14D: TQRShape;
    QRShape14E: TQRShape;
    QRShape13A: TQRShape;
    QRShape13B: TQRShape;
    QRShape13C: TQRShape;
    QRShape13D: TQRShape;
    QRShape13E: TQRShape;
    QRShape12A: TQRShape;
    QRShape12B: TQRShape;
    QRShape12C: TQRShape;
    QRShape12D: TQRShape;
    QRShape12E: TQRShape;
    QRShape11A: TQRShape;
    QRShape11B: TQRShape;
    QRShape11C: TQRShape;
    QRShape11D: TQRShape;
    QRShape11E: TQRShape;
    QRShape21A: TQRShape;
    QRShape21B: TQRShape;
    QRShape21C: TQRShape;
    QRShape21D: TQRShape;
    QRShape21E: TQRShape;
    QRShape22A: TQRShape;
    QRShape22B: TQRShape;
    QRShape22C: TQRShape;
    QRShape22D: TQRShape;
    QRShape22E: TQRShape;
    QRShape23A: TQRShape;
    QRShape23B: TQRShape;
    QRShape23C: TQRShape;
    QRShape23D: TQRShape;
    QRShape23E: TQRShape;
    QRShape24A: TQRShape;
    QRShape24B: TQRShape;
    QRShape24C: TQRShape;
    QRShape24D: TQRShape;
    QRShape24E: TQRShape;
    QRShape25A: TQRShape;
    QRShape25B: TQRShape;
    QRShape25C: TQRShape;
    QRShape25D: TQRShape;
    QRShape25E: TQRShape;
    QRShape26A: TQRShape;
    QRShape26B: TQRShape;
    QRShape26C: TQRShape;
    QRShape26D: TQRShape;
    QRShape26E: TQRShape;
    QRShape27A: TQRShape;
    QRShape27B: TQRShape;
    QRShape27C: TQRShape;
    QRShape27D: TQRShape;
    QRShape27E: TQRShape;
    QRShape28A: TQRShape;
    QRShape28B: TQRShape;
    QRShape28C: TQRShape;
    QRShape28D: TQRShape;
    QRShape28E: TQRShape;
    QRShape48A: TQRShape;
    QRShape48B: TQRShape;
    QRShape48C: TQRShape;
    QRShape48D: TQRShape;
    QRShape48E: TQRShape;
    QRShape47A: TQRShape;
    QRShape47B: TQRShape;
    QRShape47C: TQRShape;
    QRShape47D: TQRShape;
    QRShape47E: TQRShape;
    QRShape46A: TQRShape;
    QRShape46B: TQRShape;
    QRShape46C: TQRShape;
    QRShape46D: TQRShape;
    QRShape46E: TQRShape;
    QRShape45A: TQRShape;
    QRShape45B: TQRShape;
    QRShape45C: TQRShape;
    QRShape45D: TQRShape;
    QRShape45E: TQRShape;
    QRShape44A: TQRShape;
    QRShape44B: TQRShape;
    QRShape44C: TQRShape;
    QRShape44D: TQRShape;
    QRShape44E: TQRShape;
    QRShape43A: TQRShape;
    QRShape43B: TQRShape;
    QRShape43C: TQRShape;
    QRShape43D: TQRShape;
    QRShape43E: TQRShape;
    QRShape42A: TQRShape;
    QRShape42B: TQRShape;
    QRShape42C: TQRShape;
    QRShape42D: TQRShape;
    QRShape42E: TQRShape;
    QRShape41A: TQRShape;
    QRShape41B: TQRShape;
    QRShape41C: TQRShape;
    QRShape41D: TQRShape;
    QRShape41E: TQRShape;
    QRShape31A: TQRShape;
    QRShape31B: TQRShape;
    QRShape31C: TQRShape;
    QRShape31D: TQRShape;
    QRShape31E: TQRShape;
    QRShape32A: TQRShape;
    QRShape32B: TQRShape;
    QRShape32C: TQRShape;
    QRShape32D: TQRShape;
    QRShape32E: TQRShape;
    QRShape33A: TQRShape;
    QRShape33B: TQRShape;
    QRShape33C: TQRShape;
    QRShape33D: TQRShape;
    QRShape33E: TQRShape;
    QRShape34A: TQRShape;
    QRShape34B: TQRShape;
    QRShape34C: TQRShape;
    QRShape34D: TQRShape;
    QRShape34E: TQRShape;
    QRShape35A: TQRShape;
    QRShape35B: TQRShape;
    QRShape35C: TQRShape;
    QRShape35D: TQRShape;
    QRShape35E: TQRShape;
    QRShape36A: TQRShape;
    QRShape36B: TQRShape;
    QRShape36C: TQRShape;
    QRShape36D: TQRShape;
    QRShape36E: TQRShape;
    QRShape37A: TQRShape;
    QRShape37B: TQRShape;
    QRShape37C: TQRShape;
    QRShape37D: TQRShape;
    QRShape37E: TQRShape;
    QRShape38A: TQRShape;
    QRShape38B: TQRShape;
    QRShape38C: TQRShape;
    QRShape38D: TQRShape;
    QRShape38E: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1ODO_CLIENTE: TIntegerField;
    FDQuery1ODO_CODIGO: TIntegerField;
    FDQuery1ODO_DATA: TDateField;
    FDQuery1ODO_ESTILOS: TStringField;
    FDQuery1ODO_OBSERVACOES: TMemoField;
    FDQuery1CLI_NOME: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MostrarDadosDentes(Cores, Descricoes, Estilos: String);
  public
    { Public declarations }
  end;

var
  FormOdontogramasQ01: TFormOdontogramasQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormOdontogramasQ01.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  MessageDlg('Verificar funcao mostrardadosdentes.',mtInformation,[mbOk],0);
  //odo_cores e odo_descricoes foi dropado da base.
  //MostrarDadosDentes(FDQuery1ODO_CORES.Value,FDQuery1ODO_DESCRICOES.Value,FDQuery1ODO_ESTILOS.Value);
end;

procedure TFormOdontogramasQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormOdontogramasQ01);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
end;

procedure TFormOdontogramasQ01.MostrarDadosDentes(Cores, Descricoes, Estilos: String);
var SL: TStringList;
begin
  SL:=TStringList.Create;
  SL.StrictDelimiter:=True;
  SL.Delimiter:='|';

  if Cores<>'' then
  begin
    SL.DelimitedText:=Cores;

    {$REGION 'Cores 10'}
    QRShape11A.Brush.Color:=TColor(StrToInt(SL.Strings[1]));
    QRShape11B.Brush.Color:=TColor(StrToInt(SL.Strings[2]));
    QRShape11C.Brush.Color:=TColor(StrToInt(SL.Strings[3]));
    QRShape11D.Brush.Color:=TColor(StrToInt(SL.Strings[4]));
    QRShape11E.Brush.Color:=TColor(StrToInt(SL.Strings[5]));

    QRShape12A.Brush.Color:=TColor(StrToInt(SL.Strings[6]));
    QRShape12B.Brush.Color:=TColor(StrToInt(SL.Strings[7]));
    QRShape12C.Brush.Color:=TColor(StrToInt(SL.Strings[8]));
    QRShape12D.Brush.Color:=TColor(StrToInt(SL.Strings[9]));
    QRShape12E.Brush.Color:=TColor(StrToInt(SL.Strings[10]));

    QRShape13A.Brush.Color:=TColor(StrToInt(SL.Strings[11]));
    QRShape13B.Brush.Color:=TColor(StrToInt(SL.Strings[12]));
    QRShape13C.Brush.Color:=TColor(StrToInt(SL.Strings[13]));
    QRShape13D.Brush.Color:=TColor(StrToInt(SL.Strings[14]));
    QRShape13E.Brush.Color:=TColor(StrToInt(SL.Strings[15]));

    QRShape14A.Brush.Color:=TColor(StrToInt(SL.Strings[16]));
    QRShape14B.Brush.Color:=TColor(StrToInt(SL.Strings[17]));
    QRShape14C.Brush.Color:=TColor(StrToInt(SL.Strings[18]));
    QRShape14D.Brush.Color:=TColor(StrToInt(SL.Strings[19]));
    QRShape14E.Brush.Color:=TColor(StrToInt(SL.Strings[20]));

    QRShape15A.Brush.Color:=TColor(StrToInt(SL.Strings[21]));
    QRShape15B.Brush.Color:=TColor(StrToInt(SL.Strings[22]));
    QRShape15C.Brush.Color:=TColor(StrToInt(SL.Strings[23]));
    QRShape15D.Brush.Color:=TColor(StrToInt(SL.Strings[24]));
    QRShape15E.Brush.Color:=TColor(StrToInt(SL.Strings[25]));

    QRShape16A.Brush.Color:=TColor(StrToInt(SL.Strings[26]));
    QRShape16B.Brush.Color:=TColor(StrToInt(SL.Strings[27]));
    QRShape16C.Brush.Color:=TColor(StrToInt(SL.Strings[28]));
    QRShape16D.Brush.Color:=TColor(StrToInt(SL.Strings[29]));
    QRShape16E.Brush.Color:=TColor(StrToInt(SL.Strings[30]));

    QRShape17A.Brush.Color:=TColor(StrToInt(SL.Strings[31]));
    QRShape17B.Brush.Color:=TColor(StrToInt(SL.Strings[32]));
    QRShape17C.Brush.Color:=TColor(StrToInt(SL.Strings[33]));
    QRShape17D.Brush.Color:=TColor(StrToInt(SL.Strings[34]));
    QRShape17E.Brush.Color:=TColor(StrToInt(SL.Strings[35]));

    QRShape18A.Brush.Color:=TColor(StrToInt(SL.Strings[36]));
    QRShape18B.Brush.Color:=TColor(StrToInt(SL.Strings[37]));
    QRShape18C.Brush.Color:=TColor(StrToInt(SL.Strings[38]));
    QRShape18D.Brush.Color:=TColor(StrToInt(SL.Strings[39]));
    QRShape18E.Brush.Color:=TColor(StrToInt(SL.Strings[40]));
    {$ENDREGION}

    {$REGION 'Cores 20'}
    QRShape21A.Brush.Color:=TColor(StrToInt(SL.Strings[41]));
    QRShape21B.Brush.Color:=TColor(StrToInt(SL.Strings[42]));
    QRShape21C.Brush.Color:=TColor(StrToInt(SL.Strings[43]));
    QRShape21D.Brush.Color:=TColor(StrToInt(SL.Strings[44]));
    QRShape21E.Brush.Color:=TColor(StrToInt(SL.Strings[45]));

    QRShape22A.Brush.Color:=TColor(StrToInt(SL.Strings[46]));
    QRShape22B.Brush.Color:=TColor(StrToInt(SL.Strings[47]));
    QRShape22C.Brush.Color:=TColor(StrToInt(SL.Strings[48]));
    QRShape22D.Brush.Color:=TColor(StrToInt(SL.Strings[49]));
    QRShape22E.Brush.Color:=TColor(StrToInt(SL.Strings[50]));

    QRShape23A.Brush.Color:=TColor(StrToInt(SL.Strings[51]));
    QRShape23B.Brush.Color:=TColor(StrToInt(SL.Strings[52]));
    QRShape23C.Brush.Color:=TColor(StrToInt(SL.Strings[53]));
    QRShape23D.Brush.Color:=TColor(StrToInt(SL.Strings[54]));
    QRShape23E.Brush.Color:=TColor(StrToInt(SL.Strings[55]));

    QRShape24A.Brush.Color:=TColor(StrToInt(SL.Strings[56]));
    QRShape24B.Brush.Color:=TColor(StrToInt(SL.Strings[57]));
    QRShape24C.Brush.Color:=TColor(StrToInt(SL.Strings[58]));
    QRShape24D.Brush.Color:=TColor(StrToInt(SL.Strings[59]));
    QRShape24E.Brush.Color:=TColor(StrToInt(SL.Strings[60]));

    QRShape25A.Brush.Color:=TColor(StrToInt(SL.Strings[61]));
    QRShape25B.Brush.Color:=TColor(StrToInt(SL.Strings[62]));
    QRShape25C.Brush.Color:=TColor(StrToInt(SL.Strings[63]));
    QRShape25D.Brush.Color:=TColor(StrToInt(SL.Strings[64]));
    QRShape25E.Brush.Color:=TColor(StrToInt(SL.Strings[65]));

    QRShape26A.Brush.Color:=TColor(StrToInt(SL.Strings[66]));
    QRShape26B.Brush.Color:=TColor(StrToInt(SL.Strings[67]));
    QRShape26C.Brush.Color:=TColor(StrToInt(SL.Strings[68]));
    QRShape26D.Brush.Color:=TColor(StrToInt(SL.Strings[69]));
    QRShape26E.Brush.Color:=TColor(StrToInt(SL.Strings[70]));

    QRShape27A.Brush.Color:=TColor(StrToInt(SL.Strings[71]));
    QRShape27B.Brush.Color:=TColor(StrToInt(SL.Strings[72]));
    QRShape27C.Brush.Color:=TColor(StrToInt(SL.Strings[73]));
    QRShape27D.Brush.Color:=TColor(StrToInt(SL.Strings[74]));
    QRShape27E.Brush.Color:=TColor(StrToInt(SL.Strings[75]));

    QRShape28A.Brush.Color:=TColor(StrToInt(SL.Strings[76]));
    QRShape28B.Brush.Color:=TColor(StrToInt(SL.Strings[77]));
    QRShape28C.Brush.Color:=TColor(StrToInt(SL.Strings[78]));
    QRShape28D.Brush.Color:=TColor(StrToInt(SL.Strings[79]));
    QRShape28E.Brush.Color:=TColor(StrToInt(SL.Strings[80]));
    {$ENDREGION}

    {$REGION 'Cores 30'}
    QRShape31A.Brush.Color:=TColor(StrToInt(SL.Strings[81]));
    QRShape31B.Brush.Color:=TColor(StrToInt(SL.Strings[82]));
    QRShape31C.Brush.Color:=TColor(StrToInt(SL.Strings[83]));
    QRShape31D.Brush.Color:=TColor(StrToInt(SL.Strings[84]));
    QRShape31E.Brush.Color:=TColor(StrToInt(SL.Strings[85]));

    QRShape32A.Brush.Color:=TColor(StrToInt(SL.Strings[86]));
    QRShape32B.Brush.Color:=TColor(StrToInt(SL.Strings[87]));
    QRShape32C.Brush.Color:=TColor(StrToInt(SL.Strings[88]));
    QRShape32D.Brush.Color:=TColor(StrToInt(SL.Strings[89]));
    QRShape32E.Brush.Color:=TColor(StrToInt(SL.Strings[90]));

    QRShape33A.Brush.Color:=TColor(StrToInt(SL.Strings[91]));
    QRShape33B.Brush.Color:=TColor(StrToInt(SL.Strings[92]));
    QRShape33C.Brush.Color:=TColor(StrToInt(SL.Strings[93]));
    QRShape33D.Brush.Color:=TColor(StrToInt(SL.Strings[94]));
    QRShape33E.Brush.Color:=TColor(StrToInt(SL.Strings[95]));

    QRShape34A.Brush.Color:=TColor(StrToInt(SL.Strings[96]));
    QRShape34B.Brush.Color:=TColor(StrToInt(SL.Strings[97]));
    QRShape34C.Brush.Color:=TColor(StrToInt(SL.Strings[98]));
    QRShape34D.Brush.Color:=TColor(StrToInt(SL.Strings[99]));
    QRShape34E.Brush.Color:=TColor(StrToInt(SL.Strings[100]));

    QRShape35A.Brush.Color:=TColor(StrToInt(SL.Strings[101]));
    QRShape35B.Brush.Color:=TColor(StrToInt(SL.Strings[102]));
    QRShape35C.Brush.Color:=TColor(StrToInt(SL.Strings[103]));
    QRShape35D.Brush.Color:=TColor(StrToInt(SL.Strings[104]));
    QRShape35E.Brush.Color:=TColor(StrToInt(SL.Strings[105]));

    QRShape36A.Brush.Color:=TColor(StrToInt(SL.Strings[106]));
    QRShape36B.Brush.Color:=TColor(StrToInt(SL.Strings[107]));
    QRShape36C.Brush.Color:=TColor(StrToInt(SL.Strings[108]));
    QRShape36D.Brush.Color:=TColor(StrToInt(SL.Strings[109]));
    QRShape36E.Brush.Color:=TColor(StrToInt(SL.Strings[110]));

    QRShape37A.Brush.Color:=TColor(StrToInt(SL.Strings[111]));
    QRShape37B.Brush.Color:=TColor(StrToInt(SL.Strings[112]));
    QRShape37C.Brush.Color:=TColor(StrToInt(SL.Strings[113]));
    QRShape37D.Brush.Color:=TColor(StrToInt(SL.Strings[114]));
    QRShape37E.Brush.Color:=TColor(StrToInt(SL.Strings[115]));

    QRShape38A.Brush.Color:=TColor(StrToInt(SL.Strings[116]));
    QRShape38B.Brush.Color:=TColor(StrToInt(SL.Strings[117]));
    QRShape38C.Brush.Color:=TColor(StrToInt(SL.Strings[118]));
    QRShape38D.Brush.Color:=TColor(StrToInt(SL.Strings[119]));
    QRShape38E.Brush.Color:=TColor(StrToInt(SL.Strings[120]));
    {$ENDREGION}

    {$REGION 'Cores 40'}
    QRShape41A.Brush.Color:=TColor(StrToInt(SL.Strings[121]));
    QRShape41B.Brush.Color:=TColor(StrToInt(SL.Strings[122]));
    QRShape41C.Brush.Color:=TColor(StrToInt(SL.Strings[123]));
    QRShape41D.Brush.Color:=TColor(StrToInt(SL.Strings[124]));
    QRShape41E.Brush.Color:=TColor(StrToInt(SL.Strings[125]));

    QRShape42A.Brush.Color:=TColor(StrToInt(SL.Strings[126]));
    QRShape42B.Brush.Color:=TColor(StrToInt(SL.Strings[127]));
    QRShape42C.Brush.Color:=TColor(StrToInt(SL.Strings[128]));
    QRShape42D.Brush.Color:=TColor(StrToInt(SL.Strings[129]));
    QRShape42E.Brush.Color:=TColor(StrToInt(SL.Strings[130]));

    QRShape43A.Brush.Color:=TColor(StrToInt(SL.Strings[131]));
    QRShape43B.Brush.Color:=TColor(StrToInt(SL.Strings[132]));
    QRShape43C.Brush.Color:=TColor(StrToInt(SL.Strings[133]));
    QRShape43D.Brush.Color:=TColor(StrToInt(SL.Strings[134]));
    QRShape43E.Brush.Color:=TColor(StrToInt(SL.Strings[135]));

    QRShape44A.Brush.Color:=TColor(StrToInt(SL.Strings[136]));
    QRShape44B.Brush.Color:=TColor(StrToInt(SL.Strings[137]));
    QRShape44C.Brush.Color:=TColor(StrToInt(SL.Strings[138]));
    QRShape44D.Brush.Color:=TColor(StrToInt(SL.Strings[139]));
    QRShape44E.Brush.Color:=TColor(StrToInt(SL.Strings[140]));

    QRShape45A.Brush.Color:=TColor(StrToInt(SL.Strings[141]));
    QRShape45B.Brush.Color:=TColor(StrToInt(SL.Strings[142]));
    QRShape45C.Brush.Color:=TColor(StrToInt(SL.Strings[143]));
    QRShape45D.Brush.Color:=TColor(StrToInt(SL.Strings[144]));
    QRShape45E.Brush.Color:=TColor(StrToInt(SL.Strings[145]));

    QRShape46A.Brush.Color:=TColor(StrToInt(SL.Strings[146]));
    QRShape46B.Brush.Color:=TColor(StrToInt(SL.Strings[147]));
    QRShape46C.Brush.Color:=TColor(StrToInt(SL.Strings[148]));
    QRShape46D.Brush.Color:=TColor(StrToInt(SL.Strings[149]));
    QRShape46E.Brush.Color:=TColor(StrToInt(SL.Strings[150]));

    QRShape47A.Brush.Color:=TColor(StrToInt(SL.Strings[151]));
    QRShape47B.Brush.Color:=TColor(StrToInt(SL.Strings[152]));
    QRShape47C.Brush.Color:=TColor(StrToInt(SL.Strings[153]));
    QRShape47D.Brush.Color:=TColor(StrToInt(SL.Strings[154]));
    QRShape47E.Brush.Color:=TColor(StrToInt(SL.Strings[155]));

    QRShape48A.Brush.Color:=TColor(StrToInt(SL.Strings[156]));
    QRShape48B.Brush.Color:=TColor(StrToInt(SL.Strings[157]));
    QRShape48C.Brush.Color:=TColor(StrToInt(SL.Strings[158]));
    QRShape48D.Brush.Color:=TColor(StrToInt(SL.Strings[159]));
    QRShape48E.Brush.Color:=TColor(StrToInt(SL.Strings[160]));
    {$ENDREGION}
  end;

  if Descricoes<>'' then
  begin
    SL.DelimitedText:=Descricoes;

    {$REGION 'Descricoes 10'}
    QRShape11A.Hint:=SL.Strings[1];
    QRShape11B.Hint:=SL.Strings[2];
    QRShape11C.Hint:=SL.Strings[3];
    QRShape11D.Hint:=SL.Strings[4];
    QRShape11E.Hint:=SL.Strings[5];

    QRShape12A.Hint:=SL.Strings[6];
    QRShape12B.Hint:=SL.Strings[7];
    QRShape12C.Hint:=SL.Strings[8];
    QRShape12D.Hint:=SL.Strings[9];
    QRShape12E.Hint:=SL.Strings[10];

    QRShape13A.Hint:=SL.Strings[11];
    QRShape13B.Hint:=SL.Strings[12];
    QRShape13C.Hint:=SL.Strings[13];
    QRShape13D.Hint:=SL.Strings[14];
    QRShape13E.Hint:=SL.Strings[15];

    QRShape14A.Hint:=SL.Strings[16];
    QRShape14B.Hint:=SL.Strings[17];
    QRShape14C.Hint:=SL.Strings[18];
    QRShape14D.Hint:=SL.Strings[19];
    QRShape14E.Hint:=SL.Strings[20];

    QRShape15A.Hint:=SL.Strings[21];
    QRShape15B.Hint:=SL.Strings[22];
    QRShape15C.Hint:=SL.Strings[23];
    QRShape15D.Hint:=SL.Strings[24];
    QRShape15E.Hint:=SL.Strings[25];

    QRShape16A.Hint:=SL.Strings[26];
    QRShape16B.Hint:=SL.Strings[27];
    QRShape16C.Hint:=SL.Strings[28];
    QRShape16D.Hint:=SL.Strings[29];
    QRShape16E.Hint:=SL.Strings[30];

    QRShape17A.Hint:=SL.Strings[31];
    QRShape17B.Hint:=SL.Strings[32];
    QRShape17C.Hint:=SL.Strings[33];
    QRShape17D.Hint:=SL.Strings[34];
    QRShape17E.Hint:=SL.Strings[35];

    QRShape18A.Hint:=SL.Strings[36];
    QRShape18B.Hint:=SL.Strings[37];
    QRShape18C.Hint:=SL.Strings[38];
    QRShape18D.Hint:=SL.Strings[39];
    QRShape18E.Hint:=SL.Strings[40];
    {$ENDREGION}

    {$REGION 'Descricoes 20'}
    QRShape21A.Hint:=SL.Strings[41];
    QRShape21B.Hint:=SL.Strings[42];
    QRShape21C.Hint:=SL.Strings[43];
    QRShape21D.Hint:=SL.Strings[44];
    QRShape21E.Hint:=SL.Strings[45];

    QRShape22A.Hint:=SL.Strings[46];
    QRShape22B.Hint:=SL.Strings[47];
    QRShape22C.Hint:=SL.Strings[48];
    QRShape22D.Hint:=SL.Strings[49];
    QRShape22E.Hint:=SL.Strings[50];

    QRShape23A.Hint:=SL.Strings[51];
    QRShape23B.Hint:=SL.Strings[52];
    QRShape23C.Hint:=SL.Strings[53];
    QRShape23D.Hint:=SL.Strings[54];
    QRShape23E.Hint:=SL.Strings[55];

    QRShape24A.Hint:=SL.Strings[56];
    QRShape24B.Hint:=SL.Strings[57];
    QRShape24C.Hint:=SL.Strings[58];
    QRShape24D.Hint:=SL.Strings[59];
    QRShape24E.Hint:=SL.Strings[60];

    QRShape25A.Hint:=SL.Strings[61];
    QRShape25B.Hint:=SL.Strings[62];
    QRShape25C.Hint:=SL.Strings[63];
    QRShape25D.Hint:=SL.Strings[64];
    QRShape25E.Hint:=SL.Strings[65];

    QRShape26A.Hint:=SL.Strings[66];
    QRShape26B.Hint:=SL.Strings[67];
    QRShape26C.Hint:=SL.Strings[68];
    QRShape26D.Hint:=SL.Strings[69];
    QRShape26E.Hint:=SL.Strings[70];

    QRShape27A.Hint:=SL.Strings[71];
    QRShape27B.Hint:=SL.Strings[72];
    QRShape27C.Hint:=SL.Strings[73];
    QRShape27D.Hint:=SL.Strings[74];
    QRShape27E.Hint:=SL.Strings[75];

    QRShape28A.Hint:=SL.Strings[76];
    QRShape28B.Hint:=SL.Strings[77];
    QRShape28C.Hint:=SL.Strings[78];
    QRShape28D.Hint:=SL.Strings[79];
    QRShape28E.Hint:=SL.Strings[80];
    {$ENDREGION}

    {$REGION 'Descricoes 30'}
    QRShape31A.Hint:=SL.Strings[81];
    QRShape31B.Hint:=SL.Strings[82];
    QRShape31C.Hint:=SL.Strings[83];
    QRShape31D.Hint:=SL.Strings[84];
    QRShape31E.Hint:=SL.Strings[85];

    QRShape32A.Hint:=SL.Strings[86];
    QRShape32B.Hint:=SL.Strings[87];
    QRShape32C.Hint:=SL.Strings[88];
    QRShape32D.Hint:=SL.Strings[89];
    QRShape32E.Hint:=SL.Strings[90];

    QRShape33A.Hint:=SL.Strings[91];
    QRShape33B.Hint:=SL.Strings[92];
    QRShape33C.Hint:=SL.Strings[93];
    QRShape33D.Hint:=SL.Strings[94];
    QRShape33E.Hint:=SL.Strings[95];

    QRShape34A.Hint:=SL.Strings[96];
    QRShape34B.Hint:=SL.Strings[97];
    QRShape34C.Hint:=SL.Strings[98];
    QRShape34D.Hint:=SL.Strings[99];
    QRShape34E.Hint:=SL.Strings[100];

    QRShape35A.Hint:=SL.Strings[101];
    QRShape35B.Hint:=SL.Strings[102];
    QRShape35C.Hint:=SL.Strings[103];
    QRShape35D.Hint:=SL.Strings[104];
    QRShape35E.Hint:=SL.Strings[105];

    QRShape36A.Hint:=SL.Strings[106];
    QRShape36B.Hint:=SL.Strings[107];
    QRShape36C.Hint:=SL.Strings[108];
    QRShape36D.Hint:=SL.Strings[109];
    QRShape36E.Hint:=SL.Strings[110];

    QRShape37A.Hint:=SL.Strings[111];
    QRShape37B.Hint:=SL.Strings[112];
    QRShape37C.Hint:=SL.Strings[113];
    QRShape37D.Hint:=SL.Strings[114];
    QRShape37E.Hint:=SL.Strings[115];

    QRShape38A.Hint:=SL.Strings[116];
    QRShape38B.Hint:=SL.Strings[117];
    QRShape38C.Hint:=SL.Strings[118];
    QRShape38D.Hint:=SL.Strings[119];
    QRShape38E.Hint:=SL.Strings[120];
    {$ENDREGION}

    {$REGION 'Descricoes 40'}
    QRShape41A.Hint:=SL.Strings[121];
    QRShape41B.Hint:=SL.Strings[122];
    QRShape41C.Hint:=SL.Strings[123];
    QRShape41D.Hint:=SL.Strings[124];
    QRShape41E.Hint:=SL.Strings[125];

    QRShape42A.Hint:=SL.Strings[126];
    QRShape42B.Hint:=SL.Strings[127];
    QRShape42C.Hint:=SL.Strings[128];
    QRShape42D.Hint:=SL.Strings[129];
    QRShape42E.Hint:=SL.Strings[130];

    QRShape43A.Hint:=SL.Strings[131];
    QRShape43B.Hint:=SL.Strings[132];
    QRShape43C.Hint:=SL.Strings[133];
    QRShape43D.Hint:=SL.Strings[134];
    QRShape43E.Hint:=SL.Strings[135];

    QRShape44A.Hint:=SL.Strings[136];
    QRShape44B.Hint:=SL.Strings[137];
    QRShape44C.Hint:=SL.Strings[138];
    QRShape44D.Hint:=SL.Strings[139];
    QRShape44E.Hint:=SL.Strings[140];

    QRShape45A.Hint:=SL.Strings[141];
    QRShape45B.Hint:=SL.Strings[142];
    QRShape45C.Hint:=SL.Strings[143];
    QRShape45D.Hint:=SL.Strings[144];
    QRShape45E.Hint:=SL.Strings[145];

    QRShape46A.Hint:=SL.Strings[146];
    QRShape46B.Hint:=SL.Strings[147];
    QRShape46C.Hint:=SL.Strings[148];
    QRShape46D.Hint:=SL.Strings[149];
    QRShape46E.Hint:=SL.Strings[150];

    QRShape47A.Hint:=SL.Strings[151];
    QRShape47B.Hint:=SL.Strings[152];
    QRShape47C.Hint:=SL.Strings[153];
    QRShape47D.Hint:=SL.Strings[154];
    QRShape47E.Hint:=SL.Strings[155];

    QRShape48A.Hint:=SL.Strings[156];
    QRShape48B.Hint:=SL.Strings[157];
    QRShape48C.Hint:=SL.Strings[158];
    QRShape48D.Hint:=SL.Strings[159];
    QRShape48E.Hint:=SL.Strings[160];
    {$ENDREGION}
  end;

  if Estilos<>'' then
  begin
    SL.DelimitedText:=Estilos;

    {$REGION 'Estilos 10'}
    QRShape11A.Brush.Style:=StrToBrushStyle(SL.Strings[1]);
    QRShape11B.Brush.Style:=StrToBrushStyle(SL.Strings[2]);
    QRShape11C.Brush.Style:=StrToBrushStyle(SL.Strings[3]);
    QRShape11D.Brush.Style:=StrToBrushStyle(SL.Strings[4]);
    QRShape11E.Brush.Style:=StrToBrushStyle(SL.Strings[5]);

    QRShape12A.Brush.Style:=StrToBrushStyle(SL.Strings[6]);
    QRShape12B.Brush.Style:=StrToBrushStyle(SL.Strings[7]);
    QRShape12C.Brush.Style:=StrToBrushStyle(SL.Strings[8]);
    QRShape12D.Brush.Style:=StrToBrushStyle(SL.Strings[9]);
    QRShape12E.Brush.Style:=StrToBrushStyle(SL.Strings[10]);

    QRShape13A.Brush.Style:=StrToBrushStyle(SL.Strings[11]);
    QRShape13B.Brush.Style:=StrToBrushStyle(SL.Strings[12]);
    QRShape13C.Brush.Style:=StrToBrushStyle(SL.Strings[13]);
    QRShape13D.Brush.Style:=StrToBrushStyle(SL.Strings[14]);
    QRShape13E.Brush.Style:=StrToBrushStyle(SL.Strings[15]);

    QRShape14A.Brush.Style:=StrToBrushStyle(SL.Strings[16]);
    QRShape14B.Brush.Style:=StrToBrushStyle(SL.Strings[17]);
    QRShape14C.Brush.Style:=StrToBrushStyle(SL.Strings[18]);
    QRShape14D.Brush.Style:=StrToBrushStyle(SL.Strings[19]);
    QRShape14E.Brush.Style:=StrToBrushStyle(SL.Strings[20]);

    QRShape15A.Brush.Style:=StrToBrushStyle(SL.Strings[21]);
    QRShape15B.Brush.Style:=StrToBrushStyle(SL.Strings[22]);
    QRShape15C.Brush.Style:=StrToBrushStyle(SL.Strings[23]);
    QRShape15D.Brush.Style:=StrToBrushStyle(SL.Strings[24]);
    QRShape15E.Brush.Style:=StrToBrushStyle(SL.Strings[25]);

    QRShape16A.Brush.Style:=StrToBrushStyle(SL.Strings[26]);
    QRShape16B.Brush.Style:=StrToBrushStyle(SL.Strings[27]);
    QRShape16C.Brush.Style:=StrToBrushStyle(SL.Strings[28]);
    QRShape16D.Brush.Style:=StrToBrushStyle(SL.Strings[29]);
    QRShape16E.Brush.Style:=StrToBrushStyle(SL.Strings[30]);

    QRShape17A.Brush.Style:=StrToBrushStyle(SL.Strings[31]);
    QRShape17B.Brush.Style:=StrToBrushStyle(SL.Strings[32]);
    QRShape17C.Brush.Style:=StrToBrushStyle(SL.Strings[33]);
    QRShape17D.Brush.Style:=StrToBrushStyle(SL.Strings[34]);
    QRShape17E.Brush.Style:=StrToBrushStyle(SL.Strings[35]);

    QRShape18A.Brush.Style:=StrToBrushStyle(SL.Strings[36]);
    QRShape18B.Brush.Style:=StrToBrushStyle(SL.Strings[37]);
    QRShape18C.Brush.Style:=StrToBrushStyle(SL.Strings[38]);
    QRShape18D.Brush.Style:=StrToBrushStyle(SL.Strings[39]);
    QRShape18E.Brush.Style:=StrToBrushStyle(SL.Strings[40]);
    {$ENDREGION}

    {$REGION 'Estilos 20'}
    QRShape21A.Brush.Style:=StrToBrushStyle(SL.Strings[41]);
    QRShape21B.Brush.Style:=StrToBrushStyle(SL.Strings[42]);
    QRShape21C.Brush.Style:=StrToBrushStyle(SL.Strings[43]);
    QRShape21D.Brush.Style:=StrToBrushStyle(SL.Strings[44]);
    QRShape21E.Brush.Style:=StrToBrushStyle(SL.Strings[45]);

    QRShape22A.Brush.Style:=StrToBrushStyle(SL.Strings[46]);
    QRShape22B.Brush.Style:=StrToBrushStyle(SL.Strings[47]);
    QRShape22C.Brush.Style:=StrToBrushStyle(SL.Strings[48]);
    QRShape22D.Brush.Style:=StrToBrushStyle(SL.Strings[49]);
    QRShape22E.Brush.Style:=StrToBrushStyle(SL.Strings[50]);

    QRShape23A.Brush.Style:=StrToBrushStyle(SL.Strings[51]);
    QRShape23B.Brush.Style:=StrToBrushStyle(SL.Strings[52]);
    QRShape23C.Brush.Style:=StrToBrushStyle(SL.Strings[53]);
    QRShape23D.Brush.Style:=StrToBrushStyle(SL.Strings[54]);
    QRShape23E.Brush.Style:=StrToBrushStyle(SL.Strings[55]);

    QRShape24A.Brush.Style:=StrToBrushStyle(SL.Strings[56]);
    QRShape24B.Brush.Style:=StrToBrushStyle(SL.Strings[57]);
    QRShape24C.Brush.Style:=StrToBrushStyle(SL.Strings[58]);
    QRShape24D.Brush.Style:=StrToBrushStyle(SL.Strings[59]);
    QRShape24E.Brush.Style:=StrToBrushStyle(SL.Strings[60]);

    QRShape25A.Brush.Style:=StrToBrushStyle(SL.Strings[61]);
    QRShape25B.Brush.Style:=StrToBrushStyle(SL.Strings[62]);
    QRShape25C.Brush.Style:=StrToBrushStyle(SL.Strings[63]);
    QRShape25D.Brush.Style:=StrToBrushStyle(SL.Strings[64]);
    QRShape25E.Brush.Style:=StrToBrushStyle(SL.Strings[65]);

    QRShape26A.Brush.Style:=StrToBrushStyle(SL.Strings[66]);
    QRShape26B.Brush.Style:=StrToBrushStyle(SL.Strings[67]);
    QRShape26C.Brush.Style:=StrToBrushStyle(SL.Strings[68]);
    QRShape26D.Brush.Style:=StrToBrushStyle(SL.Strings[69]);
    QRShape26E.Brush.Style:=StrToBrushStyle(SL.Strings[70]);

    QRShape27A.Brush.Style:=StrToBrushStyle(SL.Strings[71]);
    QRShape27B.Brush.Style:=StrToBrushStyle(SL.Strings[72]);
    QRShape27C.Brush.Style:=StrToBrushStyle(SL.Strings[73]);
    QRShape27D.Brush.Style:=StrToBrushStyle(SL.Strings[74]);
    QRShape27E.Brush.Style:=StrToBrushStyle(SL.Strings[75]);

    QRShape28A.Brush.Style:=StrToBrushStyle(SL.Strings[76]);
    QRShape28B.Brush.Style:=StrToBrushStyle(SL.Strings[77]);
    QRShape28C.Brush.Style:=StrToBrushStyle(SL.Strings[78]);
    QRShape28D.Brush.Style:=StrToBrushStyle(SL.Strings[79]);
    QRShape28E.Brush.Style:=StrToBrushStyle(SL.Strings[80]);
    {$ENDREGION}

    {$REGION 'Estilos 30'}
    QRShape31A.Brush.Style:=StrToBrushStyle(SL.Strings[81]);
    QRShape31B.Brush.Style:=StrToBrushStyle(SL.Strings[82]);
    QRShape31C.Brush.Style:=StrToBrushStyle(SL.Strings[83]);
    QRShape31D.Brush.Style:=StrToBrushStyle(SL.Strings[84]);
    QRShape31E.Brush.Style:=StrToBrushStyle(SL.Strings[85]);

    QRShape32A.Brush.Style:=StrToBrushStyle(SL.Strings[86]);
    QRShape32B.Brush.Style:=StrToBrushStyle(SL.Strings[87]);
    QRShape32C.Brush.Style:=StrToBrushStyle(SL.Strings[88]);
    QRShape32D.Brush.Style:=StrToBrushStyle(SL.Strings[89]);
    QRShape32E.Brush.Style:=StrToBrushStyle(SL.Strings[90]);

    QRShape33A.Brush.Style:=StrToBrushStyle(SL.Strings[91]);
    QRShape33B.Brush.Style:=StrToBrushStyle(SL.Strings[92]);
    QRShape33C.Brush.Style:=StrToBrushStyle(SL.Strings[93]);
    QRShape33D.Brush.Style:=StrToBrushStyle(SL.Strings[94]);
    QRShape33E.Brush.Style:=StrToBrushStyle(SL.Strings[95]);

    QRShape34A.Brush.Style:=StrToBrushStyle(SL.Strings[96]);
    QRShape34B.Brush.Style:=StrToBrushStyle(SL.Strings[97]);
    QRShape34C.Brush.Style:=StrToBrushStyle(SL.Strings[98]);
    QRShape34D.Brush.Style:=StrToBrushStyle(SL.Strings[99]);
    QRShape34E.Brush.Style:=StrToBrushStyle(SL.Strings[100]);

    QRShape35A.Brush.Style:=StrToBrushStyle(SL.Strings[101]);
    QRShape35B.Brush.Style:=StrToBrushStyle(SL.Strings[102]);
    QRShape35C.Brush.Style:=StrToBrushStyle(SL.Strings[103]);
    QRShape35D.Brush.Style:=StrToBrushStyle(SL.Strings[104]);
    QRShape35E.Brush.Style:=StrToBrushStyle(SL.Strings[105]);

    QRShape36A.Brush.Style:=StrToBrushStyle(SL.Strings[106]);
    QRShape36B.Brush.Style:=StrToBrushStyle(SL.Strings[107]);
    QRShape36C.Brush.Style:=StrToBrushStyle(SL.Strings[108]);
    QRShape36D.Brush.Style:=StrToBrushStyle(SL.Strings[109]);
    QRShape36E.Brush.Style:=StrToBrushStyle(SL.Strings[110]);

    QRShape37A.Brush.Style:=StrToBrushStyle(SL.Strings[111]);
    QRShape37B.Brush.Style:=StrToBrushStyle(SL.Strings[112]);
    QRShape37C.Brush.Style:=StrToBrushStyle(SL.Strings[113]);
    QRShape37D.Brush.Style:=StrToBrushStyle(SL.Strings[114]);
    QRShape37E.Brush.Style:=StrToBrushStyle(SL.Strings[115]);

    QRShape38A.Brush.Style:=StrToBrushStyle(SL.Strings[116]);
    QRShape38B.Brush.Style:=StrToBrushStyle(SL.Strings[117]);
    QRShape38C.Brush.Style:=StrToBrushStyle(SL.Strings[118]);
    QRShape38D.Brush.Style:=StrToBrushStyle(SL.Strings[119]);
    QRShape38E.Brush.Style:=StrToBrushStyle(SL.Strings[120]);
    {$ENDREGION}

    {$REGION 'Estilos 40'}
    QRShape41A.Brush.Style:=StrToBrushStyle(SL.Strings[121]);
    QRShape41B.Brush.Style:=StrToBrushStyle(SL.Strings[122]);
    QRShape41C.Brush.Style:=StrToBrushStyle(SL.Strings[123]);
    QRShape41D.Brush.Style:=StrToBrushStyle(SL.Strings[124]);
    QRShape41E.Brush.Style:=StrToBrushStyle(SL.Strings[125]);

    QRShape42A.Brush.Style:=StrToBrushStyle(SL.Strings[126]);
    QRShape42B.Brush.Style:=StrToBrushStyle(SL.Strings[127]);
    QRShape42C.Brush.Style:=StrToBrushStyle(SL.Strings[128]);
    QRShape42D.Brush.Style:=StrToBrushStyle(SL.Strings[129]);
    QRShape42E.Brush.Style:=StrToBrushStyle(SL.Strings[130]);

    QRShape43A.Brush.Style:=StrToBrushStyle(SL.Strings[131]);
    QRShape43B.Brush.Style:=StrToBrushStyle(SL.Strings[132]);
    QRShape43C.Brush.Style:=StrToBrushStyle(SL.Strings[133]);
    QRShape43D.Brush.Style:=StrToBrushStyle(SL.Strings[134]);
    QRShape43E.Brush.Style:=StrToBrushStyle(SL.Strings[135]);

    QRShape44A.Brush.Style:=StrToBrushStyle(SL.Strings[136]);
    QRShape44B.Brush.Style:=StrToBrushStyle(SL.Strings[137]);
    QRShape44C.Brush.Style:=StrToBrushStyle(SL.Strings[138]);
    QRShape44D.Brush.Style:=StrToBrushStyle(SL.Strings[139]);
    QRShape44E.Brush.Style:=StrToBrushStyle(SL.Strings[140]);

    QRShape45A.Brush.Style:=StrToBrushStyle(SL.Strings[141]);
    QRShape45B.Brush.Style:=StrToBrushStyle(SL.Strings[142]);
    QRShape45C.Brush.Style:=StrToBrushStyle(SL.Strings[143]);
    QRShape45D.Brush.Style:=StrToBrushStyle(SL.Strings[144]);
    QRShape45E.Brush.Style:=StrToBrushStyle(SL.Strings[145]);

    QRShape46A.Brush.Style:=StrToBrushStyle(SL.Strings[146]);
    QRShape46B.Brush.Style:=StrToBrushStyle(SL.Strings[147]);
    QRShape46C.Brush.Style:=StrToBrushStyle(SL.Strings[148]);
    QRShape46D.Brush.Style:=StrToBrushStyle(SL.Strings[149]);
    QRShape46E.Brush.Style:=StrToBrushStyle(SL.Strings[150]);

    QRShape47A.Brush.Style:=StrToBrushStyle(SL.Strings[151]);
    QRShape47B.Brush.Style:=StrToBrushStyle(SL.Strings[152]);
    QRShape47C.Brush.Style:=StrToBrushStyle(SL.Strings[153]);
    QRShape47D.Brush.Style:=StrToBrushStyle(SL.Strings[154]);
    QRShape47E.Brush.Style:=StrToBrushStyle(SL.Strings[155]);

    QRShape48A.Brush.Style:=StrToBrushStyle(SL.Strings[156]);
    QRShape48B.Brush.Style:=StrToBrushStyle(SL.Strings[157]);
    QRShape48C.Brush.Style:=StrToBrushStyle(SL.Strings[158]);
    QRShape48D.Brush.Style:=StrToBrushStyle(SL.Strings[159]);
    QRShape48E.Brush.Style:=StrToBrushStyle(SL.Strings[160]);
    {$ENDREGION}
  end;

  SL.Destroy;
end;


end.
