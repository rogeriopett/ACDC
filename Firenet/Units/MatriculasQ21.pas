unit MatriculasQ21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QRPDFFilt, QuickRpt, QRCtrls, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculasQ21 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1MAT_CODIGO: TIntegerField;
    FDQuery1MAT_CLIENTE: TIntegerField;
    FDQuery1MAT_TURMA: TIntegerField;
    FDQuery1MAT_DTCADASTRO: TDateField;
    FDQuery1MAT_STATUS: TStringField;
    FDQuery1MAT_VENDA: TIntegerField;
    FDQuery1VED_VALORTOTAL: TFMTBCDField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery1CPG_CODIGO: TIntegerField;
    FDQuery1CPG_DESCRICAO: TStringField;
    FDQuery1TUR_PROFESSOR: TIntegerField;
    FDQuery1TUR_DESCRICAO: TStringField;
    FDQuery1TUR_PERIODO: TIntegerField;
    FDQuery1TUR_ANO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasQ21: TFormMatriculasQ21;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasQ21.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormMatriculasQ21.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ21);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormMatriculasQ21.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormMatriculasQ21.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(Total);
end;

procedure TFormMatriculasQ21.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormMatriculasQ21.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(SubTotal);
end;

end.
