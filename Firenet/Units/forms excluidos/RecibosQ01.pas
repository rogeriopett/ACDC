unit RecibosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormRecibosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    PageHeaderBand1: TQRBand;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    QRLabel8: TQRLabel;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText21: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText22: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosQ01: TFormRecibosQ01;

implementation
uses DataMod, DataMod2, FuncoesFirenet;

{$R *.dfm}

procedure TFormRecibosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormRecibosQ01);
  QRLabel10.Caption:='Usuário: '+UsuarioLogado;
  QRLabel8.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+
                    DM.TBEmpresaEMP_NUMERO.Value+' - '+
                    DM.TBEmpresaEMP_BAIRRO.Value+' - CEP: '+
                    DM.TBEmpresaEMP_CEP.Value;

  QRLabel12.Caption:=DM2.TBRecibosRCB_SENDERECO.Value+', '+DM2.TBRecibosRCB_SNUMERO.Value;
  QRLabel1.Caption:=DM2.TBRecibosRCB_CENDERECO.Value+', '+DM2.TBRecibosRCB_CNUMERO.Value;

  QRLabel11.Caption:=DM2.TBRecibosRCB_CBAIRRO.Value+' - '+
                     DM2.TBRecibosRCB_CCIDADE.Value+' - CEP: '+
                     DM2.TBRecibosRCB_CCEP.Value;
end;

end.
