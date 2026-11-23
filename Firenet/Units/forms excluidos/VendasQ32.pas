unit VendasQ32;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRPDFFilt, QuickRpt, QRCtrls,
  Vcl.ExtCtrls, qrFramelines, grimgctrl;

type
  TFormVendasQ32 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel78: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape66: TQRShape;
    QRShape68: TQRShape;
    QRShape70: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape76: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape84: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand1: TQRBand;
    QRShape97: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRDBText36: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel49: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    QRLabel60: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    IMAGEM2: TQRImage;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRHRule1: TQRHRule;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel30: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel41: TQRLabel;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRHRule2: TQRHRule;
    QRHRule5: TQRHRule;
    QRHRule6: TQRHRule;
    QRLabel33: TQRLabel;
    IBQuery1VED_BAIRRO: TIBStringField;
    IBQuery1VED_CEP: TIBStringField;
    IBQuery1CIDADEUF: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_COMPLEMENTO: TIBStringField;
    IBQuery1VED_CONTATO: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_DTSAIDA: TDateField;
    IBQuery1ENDERECO: TIBStringField;
    IBQuery1VED_FONE1: TIBStringField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1CLI_FONE2: TIBStringField;
    IBQuery2VEI_PRODUTO: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery1VED_OBSERVACOES: TWideMemoField;
    IBQuery2VEI_COMPLEMENTO: TIBStringField;
    IBQuery2VEI_LOTE: TIBStringField;
    ChildBand1: TQRChildBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRHRule3: TQRHRule;
    QRHRule4: TQRHRule;
    QRLabel42: TQRLabel;
    QRDBText35: TQRDBText;
    QRFrameline5: TQRFrameline;
    QRFrameline6: TQRFrameline;
    QRFrameline7: TQRFrameline;
    QRFrameline8: TQRFrameline;
    QRFrameline9: TQRFrameline;
    QRFrameline10: TQRFrameline;
    QRFrameline11: TQRFrameline;
    QRFrameline12: TQRFrameline;
    QRFrameline13: TQRFrameline;
    QRFrameline14: TQRFrameline;
    IBQuery1VED_DESCPORC: TFMTBCDField;
    IBQuery1VED_DESCVALOR: TFMTBCDField;
    IBQuery1VED_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1VED_TOTALSERVICOS: TFMTBCDField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    IBQuery2VEI_VALORTOTAL: TFMTBCDField;
    IBQuery2VEI_VALORUNIT: TFMTBCDField;
    QRLabel44: TQRLabel;
    IBQuery1VED_PEDIDOCLIENTE: TIBStringField;
    QRLabel45: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ32: TFormVendasQ32;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ32.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ32);
  IMAGEM2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg');
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  QRLabel42.Caption:='Usuário: '+UsuarioLogado;
  QuickRep1.ReportTitle:=FormVendasQ32.Caption;
end;

procedure TFormVendasQ32.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //total bruto.
  QRLabel33.Caption:=Format('%m',[IBQuery1VED_TOTALPRODUTOS.AsExtended+IBQuery1VED_DESCVALOR.AsExtended]);
end;

procedure TFormVendasQ32.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel44.Caption:=IBQuery1VED_OBSERVACOES.Value;
  QRLabel45.Caption:=IBQuery1VED_OBSERVACOES.Value;
  if IBQuery1VED_PEDIDOCLIENTE.Value<>'' then
  begin
    QRLabel44.Caption:=IBQuery1VED_OBSERVACOES.Value+' Pedido Cliente: '+IBQuery1VED_PEDIDOCLIENTE.Value;
    QRLabel45.Caption:=IBQuery1VED_OBSERVACOES.Value+' Pedido Cliente: '+IBQuery1VED_PEDIDOCLIENTE.Value;
  end;
end;

procedure TFormVendasQ32.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel32.Caption:=IBQuery2VEI_DESCRICAO.Value+' '+IBQuery2VEI_COMPLEMENTO.Value;
  if IBQuery2VEI_LOTE.Value<>'' then
  QRLabel32.Caption:=QRLabel32.Caption+' Lote: '+IBQuery2VEI_LOTE.Value;

  QRLabel43.Caption:=IBQuery2VEI_DESCRICAO.Value+' '+IBQuery2VEI_COMPLEMENTO.Value;
  if IBQuery2VEI_LOTE.Value<>'' then
  QRLabel43.Caption:=QRLabel43.Caption+' Lote: '+IBQuery2VEI_LOTE.Value;

end;

end.
