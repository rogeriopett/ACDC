unit RecibosQ03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls,
  QRPDFFilt;

type
  TFormRecibosQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
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
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    PageHeaderBand1: TQRBand;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    QRLabel8: TQRLabel;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText22: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRLabel18: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosQ03: TFormRecibosQ03;

implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormRecibosQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormRecibosQ03);
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
