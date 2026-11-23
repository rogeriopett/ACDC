unit VeiculosVendaQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosVendaQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape1: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText26: TQRDBText;
    QRMemo1: TQRMemo;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDQuery1VEV_ANOFAB: TStringField;
    FDQuery1VEV_ANOMOD: TStringField;
    FDQuery1VEV_KM: TIntegerField;
    FDQuery1VEV_COR: TStringField;
    FDQuery1VEV_PLACA: TStringField;
    FDQuery1VEV_RENAVAN: TStringField;
    FDQuery1VEV_COMBUSTIVEL: TStringField;
    FDQuery1VEV_VALORCOMPRA: TFMTBCDField;
    FDQuery1VEV_VALORVENDIDO: TFMTBCDField;
    FDQuery1VEV_CLIENTE: TIntegerField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VEV_DTENTRADA: TDateField;
    FDQuery1VEV_CONDICOES: TMemoField;
    FDQuery1VEV_DESPESAS: TFMTBCDField;
    FDQuery1VEV_DTVENDA: TDateField;
    FDQuery1VEV_MESA: TStringField;
    FDQuery1VEV_EXPROPRIETARIO: TStringField;
    FDQuery1VEV_VENDEDOR: TIntegerField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery1VEL_DESCRICAO: TStringField;
    FDQuery1VEV_CODIGO: TIntegerField;
    FDQuery1LUCRO: TFMTBCDField;
    FDQuery2PAG_DESCRICAO: TStringField;
    FDQuery2PAG_DTEMISSAO: TDateField;
    FDQuery2PAG_VALOR: TFMTBCDField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaQ03: TFormVeiculosVendaQ03;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosVendaQ03.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var NumDocto: String;
begin
  NumDocto:=FDQuery1VEV_PLACA.Value+'/'+IntToStr(FDQuery1VEV_CODIGO.Value); //like.
  QRMemo1.Lines.Clear;
  FDQuery2.Close;
  FDQuery2.ParamByName('numdocto').AsString:=NumDocto;
  FDQuery2.Open;
  FDQuery2.First;
  while not FDQuery2.Eof do
  begin
    QRMemo1.Lines.Add(DateToStr(FDQuery2PAG_DTEMISSAO.Value,FS)+'  '+AlignText(FDQuery2PAG_DESCRICAO.Value,' ',50,taLeft)+AlignText(Format('%m',[FDQuery2PAG_VALOR.AsExtended]),' ',15,taRight));
    FDQuery2.Next;
  end;
  FDQuery2.Close;
end;

procedure TFormVeiculosVendaQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosVendaQ03);
end;

end.
