unit ProjetosQ08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProjetosQ08 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRSubDetail2: TQRSubDetail;
    QRDBText4: TQRDBText;
    DataSource1: TDataSource;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand5: TQRBand;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDQuery1PRJ_NOME: TStringField;
    FDQuery1PRJ_ARQUITETO: TIntegerField;
    FDQuery1PRJ_CLIENTE: TIntegerField;
    FDQuery1PRJ_TIPO: TIntegerField;
    FDQuery1PRJ_VALORTOTAL: TFMTBCDField;
    FDQuery1PRJ_CODIGO: TIntegerField;
    FDQuery1PRJ_STATUSPROJETO: TStringField;
    FDQuery1PRJ_DTCADASTRO: TDateField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery1PJT_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosQ08: TFormProjetosQ08;
  Total, SubTotal: Currency;
  Qtde, SubQtde: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProjetosQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProjetosQ08);
  QRLabel4.Caption:='Usuário: '+DM.UsuarioLogin;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormProjetosQ08.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  Qtde:=0;
end;

procedure TFormProjetosQ08.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel10.Caption:=IntToStr(Qtde);
end;

procedure TFormProjetosQ08.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormProjetosQ08.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=Format('%m',[SubTotal]);
  QRLabel11.Caption:=IntToStr(SubQtde);
end;

procedure TFormProjetosQ08.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+FDQuery1PRJ_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+FDQuery1PRJ_VALORTOTAL.AsExtended;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

end.
