unit MatriculasQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculasQ09 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
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
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand4: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasQ09: TFormMatriculasQ09;
  Total, SubTotal, TotalTurma: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ09);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  Total:=0;
  SubTotal:=0;
  TotalTurma:=0;
end;

procedure TFormMatriculasQ09.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(Total);
end;

procedure TFormMatriculasQ09.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalTurma:=0;
end;

procedure TFormMatriculasQ09.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption:=IntToStr(TotalTurma);
end;

procedure TFormMatriculasQ09.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormMatriculasQ09.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
  TotalTurma:=TotalTurma+1;
end;

procedure TFormMatriculasQ09.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(SubTotal);
end;

procedure TFormMatriculasQ09.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
