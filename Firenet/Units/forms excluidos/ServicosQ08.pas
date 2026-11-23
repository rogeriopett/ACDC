unit ServicosQ08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TFormServicosQ08 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText25: TQRDBText;
    PageHeaderBand1: TQRBand;
    IMAGEM: TQRImage;
    IBTransaction1: TIBTransaction;
    EMPRESA: TQRDBText;
    IBQuery1: TIBQuery;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel2: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText1: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText16: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape5: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape39: TQRShape;
    QRShape13: TQRShape;
    QRShape38: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
    QRShape40: TQRShape;
    QRLabel35: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape41: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText27: TQRDBText;
    QRShape3: TQRShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ08: TFormServicosQ08;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ08);
  QRLabel31.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CEP.Value;
  QRLabel32.Caption:=DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value;
  QRLabel33.Caption:=DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value;
  QRLabel30.Caption:='Usuário: '+UsuarioLogado;
end;

end.
