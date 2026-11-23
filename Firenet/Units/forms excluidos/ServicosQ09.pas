unit ServicosQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, qrFramelines;

type
  TFormServicosQ09 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRPDFFilter1: TQRPDFFilter;
    ColumnHeaderBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText27: TQRDBText;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    IBQuery2SEI_PRODUTO: TIntegerField;
    IBQuery2SEI_DESCRICAO: TIBStringField;
    IBQuery2SEI_UNIDADE: TIBStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel27: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_PRODUTO: TIBStringField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_SERIE: TIBStringField;
    IBQuery1SER_ACESSORIOS: TIBStringField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    IBQuery1SER_TECNICO: TIntegerField;
    IBQuery1SER_LOCALIZACAO: TIBStringField;
    IBQuery1SER_DEFEITO: TWideMemoField;
    IBQuery1SER_CONSERTO: TWideMemoField;
    IBQuery1SER_SENHAONLINE: TIBStringField;
    IBQuery1SER_STATUS: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1ENDERECO: TIBStringField;
    IBQuery1CIDADEUF: TIBStringField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1CLI_FONE1: TIBStringField;
    IBQuery1CLI_CONTATO: TIBStringField;
    IBQuery1CLI_COMPLEMENTO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText38: TQRDBText;
    IBQuery1SER_TOTALHORAS: TIBStringField;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRShape14: TQRShape;
    QRLabel8: TQRLabel;
    QRShape15: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRLabel5: TQRLabel;
    QRShape21: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape23: TQRShape;
    QRLabel13: TQRLabel;
    QRShape24: TQRShape;
    QRLabel16: TQRLabel;
    QRShape18: TQRShape;
    QRLabel20: TQRLabel;
    QRShape19: TQRShape;
    QRLabel14: TQRLabel;
    QRShape20: TQRShape;
    QRShape27: TQRShape;
    QRLabel25: TQRLabel;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape32: TQRShape;
    QRLabel15: TQRLabel;
    QRShape25: TQRShape;
    QRLabel18: TQRLabel;
    QRShape28: TQRShape;
    QRLabel17: TQRLabel;
    QRShape29: TQRShape;
    QRLabel19: TQRLabel;
    QRShape30: TQRShape;
    QRLabel22: TQRLabel;
    QRShape31: TQRShape;
    QRLabel30: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel35: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel48: TQRLabel;
    QRShape33: TQRShape;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel11: TQRLabel;
    QRShape34: TQRShape;
    QRLabel10: TQRLabel;
    QRShape35: TQRShape;
    QRLabel12: TQRLabel;
    QRShape36: TQRShape;
    QRLabel23: TQRLabel;
    QRShape37: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel36: TQRLabel;
    QRShape7: TQRShape;
    QRLabel37: TQRLabel;
    QRShape8: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape11: TQRShape;
    QRShape39: TQRShape;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRFrameline5: TQRFrameline;
    QRFrameline6: TQRFrameline;
    QRFrameline7: TQRFrameline;
    QRShape12: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel41: TQRLabel;
    IBQuery1CLI_FONE2: TIBStringField;
    IBQuery1CLI_FONE3: TIBStringField;
    QRShape13: TQRShape;
    QRDBText41: TQRDBText;
    QRLabel42: TQRLabel;
    IBQuery1SER_TOTALSERVICOS: TFMTBCDField;
    IBQuery1SER_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1SER_VALOR: TFMTBCDField;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    IBQuery1SER_DESCVALOR: TFMTBCDField;
    IBQuery1SER_DESCPORC: TFMTBCDField;
    IBQuery2SEI_QUANTIDADE: TFMTBCDField;
    IBQuery2SEI_VALORUNIT: TFMTBCDField;
    IBQuery2SEI_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ09: TFormServicosQ09;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ09);
  QRLabel31.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CEP.Value;
  QRLabel32.Caption:=DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value;
  QRLabel33.Caption:=DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value;
  QRLabel40.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormServicosQ09.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // 25 is the box size in invoice lines
  // 64.0 is the original height of the band in tenth mm
  // if this is the last sub-detail, expand the band
  if not IBQuery2.IsEmpty then
  begin
    if IBQuery2.RecNo = (IBQuery2.RecordCount) then
    begin
      QRSubDetail1.Size.Height:=(14-IBQuery2.Recno) * 33.0;
    end else
    begin
      QRSubDetail1.Size.Height:=33.0;
    end;
  end;
end;

end.
