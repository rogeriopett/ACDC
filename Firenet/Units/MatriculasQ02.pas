unit MatriculasQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculasQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText10: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1MAT_CODIGO: TIntegerField;
    FDQuery1MAT_CLIENTE: TIntegerField;
    FDQuery1MAT_VENDEDOR: TIntegerField;
    FDQuery1MAT_TURMA: TIntegerField;
    FDQuery1MAT_DTCADASTRO: TDateField;
    FDQuery1MAT_STATUS: TStringField;
    FDQuery1MAT_TIPO: TStringField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery1TUR_DESCRICAO: TStringField;
    FDQuery1TUR_PERIODO: TIntegerField;
    FDQuery1TUR_ANO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasQ02: TFormMatriculasQ02;
  Total, SubTotal, A, AT, B, BT, V, VT: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ02);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  Total:=0;
  SubTotal:=0;
  A:=0;
  B:=0;
  V:=0;
  AT:=0;
  BT:=0;
  VT:=0;
end;

procedure TFormMatriculasQ02.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(Total);
  QRLabel10.Caption:=IntToStr(A);
  QRLabel11.Caption:=IntToStr(B);
  QRLabel13.Caption:=IntToStr(V);
end;

procedure TFormMatriculasQ02.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
  A:=0;
  B:=0;
  V:=0;
end;

procedure TFormMatriculasQ02.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(SubTotal);
  QRLabel20.Caption:=IntToStr(AT);
  QRLabel21.Caption:=IntToStr(BT);
  QRLabel22.Caption:=IntToStr(VT);
end;

procedure TFormMatriculasQ02.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  A:=0;
  B:=0;
  V:=0;
  AT:=0;
  BT:=0;
  VT:=0;
end;

procedure TFormMatriculasQ02.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
  if FDQuery1.FieldByName('MAT_TIPO').AsString='A' then
  begin
    A:=A+1;
    AT:=AT+1;
  end else
  if FDQuery1.FieldByName('MAT_TIPO').AsString='B' then
  begin
    B:=B+1;
    BT:=BT+1;
  end else
  if FDQuery1.FieldByName('MAT_TIPO').AsString='V' then
  begin
    V:=V+1;
    VT:=VT+1;
  end;
end;

end.
