unit NfeQ06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls, DBClient;

type
  TFormNfeQ06 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    TBNfe: TClientDataSet;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery2NIN_CODIGO: TIntegerField;
    QRLabel2: TQRLabel;
    IBQuery1DE: TLargeintField;
    IBQuery1ATE: TLargeintField;
    QRDBText2: TQRDBText;
    TBNfeDE: TIntegerField;
    TBNfeATE: TIntegerField;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    TBNfeQUANTIDADE: TIntegerField;
    QRLabel5: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela;
  end;

var
  FormNfeQ06: TFormNfeQ06;
  QtdeTotal: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfeQ06);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  QtdeTotal:=0;
end;

procedure TFormNfeQ06.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QtdeTotal:=0;
end;

procedure TFormNfeQ06.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=QtdeTotal.ToString;
end;

procedure TFormNfeQ06.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QtdeTotal:=QtdeTotal+TBNfeQUANTIDADE.Value;
end;

procedure TFormNfeQ06.CriarTabela;
begin
  TBNfe.EmptyDataSet;
  TBNfe.Open;
  IBQuery2.DisableControls;
  IBQuery1.DisableControls;
  IBQuery1.First;
  while not IBQuery1.Eof do
  begin
    //verifica se existe algum registro na tabela de nfe inutilizadas.
    IBQuery2.Close;
    IBQuery2.ParamByName('de').AsInteger:=IBQuery1DE.Value;
    IBQuery2.ParamByName('ate').AsInteger:=IBQuery1ATE.Value;
    IBQuery2.Open;
    if IBQuery2.IsEmpty then //se estiver vazio é pq não foi encontrado na tabela de inutilizacoes, então inclui na tabela temporaria.
    begin
      TBNfe.Insert;
      TBNfeDE.Value:=IBQuery1DE.Value;
      TBNfeATE.Value:=IBQuery1ATE.Value;
      TBNfeQUANTIDADE.Value:=IBQuery1ATE.Value - IBQuery1DE.Value + 1;
      TBNfe.Post;
    end;
    IBQuery1.Next;
  end;
  IBQuery1.EnableControls;
  IBQuery2.EnableControls;
  IBQuery2.Close;
  TBNfe.First;
end;

end.
