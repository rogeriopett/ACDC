unit ProducaoQ08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, Data.DB, QRExport, QuickRpt, QRCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProducaoQ08 = class(TForm)
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
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducaoQ08: TFormProducaoQ08;
  Conta: Integer = 0;
  Qtde: Extended;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProducaoQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ08);
  QRLabel9.Caption:='Usuário: '+UsuarioLogin;
  Conta:=0;
  Qtde:=0;
end;

procedure TFormProducaoQ08.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
  Qtde:=0;
end;

procedure TFormProducaoQ08.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Ordens de Produção: '+IntToStr(Conta);
  QRLabel17.Caption:=FloatToStr(Qtde);
end;

procedure TFormProducaoQ08.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
  Qtde:=Qtde+FDQuery1.FieldByName('PDI_QUANTIDADE').AsExtended;
end;

end.
