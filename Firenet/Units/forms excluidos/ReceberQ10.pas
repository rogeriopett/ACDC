unit ReceberQ10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ10 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ10: TFormReceberQ10;

implementation
uses DataMod, FuncoesFirenet, Funcoes1, ReceberLoc;
{$R *.dfm}

procedure TFormReceberQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ10);
  QRLabel11.Caption:='Usuário: '+UsuarioLogado;
end;

end.
