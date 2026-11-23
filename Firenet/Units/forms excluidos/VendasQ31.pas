unit VendasQ31;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  QRPDFFilt, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TFormVendasQ31 = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery1VED_FONE1: TIBStringField;
    IBQuery1CLI_EMAIL: TIBStringField;
    IBQuery1VED_OBSERVACOES: TWideMemoField;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    FileListBox1: TFileListBox;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_INFOADICIONAL: TWideMemoField;
    IBQuery2PRO_DESCRICAO: TWideMemoField;
    QRDBText10: TQRDBText;
    IBQuery1VED_CONTATO: TIBStringField;
    IBQuery2VEI_PRODUTO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ31: TFormVendasQ31;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormVendasQ31.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ31,2);
  QRLabel7.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - Bairro: '+DM.TBEmpresaEMP_BAIRRO.Value+' - CEP: '+DM.TBEmpresaEMP_CEP.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' ('+DM.TBEmpresaEMP_ESTADO.Value+')';
  QRLabel8.Caption:='Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value+'. Visite nosso site: '+DM.TBEmpresaEMP_HOMEPAGE.Value;
end;

procedure TFormVendasQ31.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Pasta: String;
begin
  Pasta:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+AlignText(IntToStr(IBQuery2VEI_PRODUTO.Value),'0',8,taRight)+'\'+DM.TBParametrosPAR_PASTAHIGH.Value+'\';
  if System.SysUtils.DirectoryExists(Pasta) then
  begin
    FileListBox1.Directory:=Pasta;
    FileListBox1.ItemIndex:=0;
    if FileListBox1.ItemIndex>=0 then
    QRImage1.Picture.LoadFromFile(FileListBox1.FileName) else
    QRImage1.Picture.Assign(nil);
  end else
  QRImage1.Picture.Assign(nil);
end;

end.
