unit ServicosQ06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt;

type
  TFormServicosQ06 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText39: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText38: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRLabel19: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRLabel22: TQRLabel;
    QRShape6: TQRShape;
    QRLabel23: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape10: TQRShape;
    QRLabel27: TQRLabel;
    QRShape11: TQRShape;
    QRLabel21: TQRLabel;
    QRShape12: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape13: TQRShape;
    QRLabel28: TQRLabel;
    QRShape14: TQRShape;
    QRLabel33: TQRLabel;
    QRShape15: TQRShape;
    QRLabel34: TQRLabel;
    QRShape16: TQRShape;
    QRLabel6: TQRLabel;
    QRShape17: TQRShape;
    QRLabel7: TQRLabel;
    QRShape18: TQRShape;
    QRLabel8: TQRLabel;
    QRShape19: TQRShape;
    QRLabel9: TQRLabel;
    QRShape20: TQRShape;
    QRLabel10: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape23: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape24: TQRShape;
    QRDBText29: TQRDBText;
    QRLabel29: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    IBQuery1SER_ACESSORIOS: TIBStringField;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CONSERTO: TWideMemoField;
    IBQuery1SER_DEFEITO: TWideMemoField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_DTNOTAFISCAL: TDateField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_SENHAONLINE: TIBStringField;
    IBQuery1SER_SERIE: TIBStringField;
    IBQuery1SER_TECNICO: TIntegerField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CIDADE: TIBStringField;
    IBQuery1CLI_CNPJ: TIBStringField;
    IBQuery1CLI_CODIGO: TIntegerField;
    IBQuery1CLI_COMPLEMENTO: TIBStringField;
    IBQuery1CLI_CONTATO: TIBStringField;
    IBQuery1CLI_CPF: TIBStringField;
    IBQuery1CLI_ENDERECO: TIBStringField;
    IBQuery1CLI_FONE1: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    QRLabel2: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape27: TQRShape;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1SER_NUMERONF: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1SER_PRODUTO: TIBStringField;
    QRDBText2: TQRDBText;
    IBQuery1CLI_NUMERO: TIBStringField;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ06: TFormServicosQ06;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ06);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;

  QRLabel5.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+
                    DM.TBEmpresaEMP_NUMERO.Value+' - '+
                    DM.TBEmpresaEMP_BAIRRO.Value+' - CEP: '+
                    DM.TBEmpresaEMP_CEP.Value;

  QRLabel5.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CEP.Value;
  QRLabel2.Caption:=DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value;
  QRLabel30.Caption:=DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value;
end;

end.
