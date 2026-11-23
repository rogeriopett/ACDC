unit ReceberQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QRExport, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ09 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRShape4: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel40: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape7: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel43: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel132: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ09: TFormReceberQ09;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormReceberQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ09);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  QRLabel39.Caption:='Usuário: '+UsuarioLogado;
  QRLabel23.Caption:=Extenso(DM.TBReceberREE_VALORPAGO.AsExtended);
  QRLabel36.Caption:=Extenso(DM.TBReceberREE_VALORPAGO.AsExtended);

  //para a segunda via.
  if DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value='N' then
  begin
    QRDBText29.Left:=3;
    QRDBText30.Left:=3;
    QRDBText31.Left:=3;
    QRDBText32.Left:=3;
    QRImage1.Visible:=False;
  end else
  begin
    try
      QRImage1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg');
      except on exception do //nothing.
    end;
  end;
end;

end.
