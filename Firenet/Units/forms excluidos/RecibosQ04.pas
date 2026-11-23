unit RecibosQ04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QRPDFFilt, QuickRpt,
  Vcl.ExtCtrls, grimgctrl;

type
  TFormRecibosQ04 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape5: TQRShape;
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
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    QRLabel25: TQRLabel;
    QRShape11: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel38: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRImage1: TQRImage;
    QRDBText30: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRShape14: TQRShape;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    QRLabel8: TQRLabel;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText22: TQRDBText;
    QRHRule1: TQRHRule;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosQ04: TFormRecibosQ04;

implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormRecibosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormRecibosQ04);
  QRImage1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg');

  QRLabel10.Caption:='Usuário: '+UsuarioLogado;
  QRLabel40.Caption:='Usuário: '+UsuarioLogado;
  QRLabel8.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+
                    DM.TBEmpresaEMP_NUMERO.Value+' - '+
                    DM.TBEmpresaEMP_BAIRRO.Value+' - CEP: '+
                    DM.TBEmpresaEMP_CEP.Value;

  QRLabel39.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+
                    DM.TBEmpresaEMP_NUMERO.Value+' - '+
                    DM.TBEmpresaEMP_BAIRRO.Value+' - CEP: '+
                    DM.TBEmpresaEMP_CEP.Value;

  QRLabel12.Caption:=DM2.TBRecibosRCB_SENDERECO.Value+', '+DM2.TBRecibosRCB_SNUMERO.Value;
  QRLabel36.Caption:=DM2.TBRecibosRCB_SENDERECO.Value+', '+DM2.TBRecibosRCB_SNUMERO.Value;

  QRLabel1.Caption:=DM2.TBRecibosRCB_CENDERECO.Value+', '+DM2.TBRecibosRCB_CNUMERO.Value;
  QRLabel34.Caption:=DM2.TBRecibosRCB_CENDERECO.Value+', '+DM2.TBRecibosRCB_CNUMERO.Value;

  QRLabel11.Caption:=DM2.TBRecibosRCB_CBAIRRO.Value+' - '+
                     DM2.TBRecibosRCB_CCIDADE.Value+' - CEP: '+
                     DM2.TBRecibosRCB_CCEP.Value;
  QRLabel35.Caption:=DM2.TBRecibosRCB_CBAIRRO.Value+' - '+
                     DM2.TBRecibosRCB_CCIDADE.Value+' - CEP: '+
                     DM2.TBRecibosRCB_CCEP.Value;
end;

end.
