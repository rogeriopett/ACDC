unit CaixaQ06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QuickRpt, QRCtrls,
  Vcl.ExtCtrls;

type
  TFormCaixaQ06 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel9: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    IBQuery1CAI_CODIGO: TIntegerField;
    IBQuery1CAI_CLIENTE: TIntegerField;
    IBQuery1CAI_CONTA: TIntegerField;
    IBQuery1CAI_DATA: TDateField;
    IBQuery1CAI_DESCRICAO: TIBStringField;
    IBQuery1CAI_ENTRADASAIDA: TIBStringField;
    IBQuery1CAI_FORNECEDOR: TIntegerField;
    IBQuery1CAI_NUMDOCTO: TIBStringField;
    IBQuery1CAI_ORIGEM: TIBStringField;
    IBQuery1CAI_SALDOANTERIOR: TFMTBCDField;
    IBQuery1CAI_SALDOPOSTERIOR: TFMTBCDField;
    IBQuery1CAI_VALOR: TFMTBCDField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaQ06: TFormCaixaQ06;
  Entradas, Saidas: Currency;
  Contador: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ06.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if IBQuery1CAI_ENTRADASAIDA.Value='E' then
  begin
    Entradas:=Entradas+IBQuery1CAI_VALOR.AsExtended;
  end else
  if IBQuery1CAI_ENTRADASAIDA.Value='S' then
  begin
    Saidas:=Saidas+IBQuery1CAI_VALOR.AsExtended;
  end;
  Contador:=Contador+1;

  QRLabel14.Caption:='';
  if (IBQuery1CAI_ORIGEM.Value='CONTAS A RECEBER') and (IBQuery1CAI_NUMDOCTO.Value<>'') then
  begin
    try
      StrToInt(IBQuery1CAI_NUMDOCTO.Value);

      IBQuery2.Close;
      IBquery2.SQL.Clear;
      IBQuery2.SQL.Add('select REE_RECEITA, REC_DESCRICAO from RECEBER left join RECEITAS on REE_RECEITA=REC_CODIGO where REE_CODIGO=:codigo');
      IBQuery2.ParamByName('codigo').AsInteger:=IBQuery1CAI_NUMDOCTO.Value.ToInteger;
      IBQuery2.Open;
      QRLabel14.Caption:='(R) '+IBQuery2.FieldByName('REE_RECEITA').AsString+' - '+IBQuery2.FieldByName('REC_DESCRICAO').AsString;
      IBQuery2.Close;
    except on exception do
      //nothing.
    end;
  end else
  if (IBQuery1CAI_ORIGEM.Value='CONTAS A PAGAR') and (IBQuery1CAI_NUMDOCTO.Value<>'') then
  begin
    try
      StrToInt(IBQuery1CAI_NUMDOCTO.Value);

      IBQuery2.Close;
      IBquery2.SQL.Clear;
      IBQuery2.SQL.Add('select PAG_DESPESA, DES_DESCRICAO from PAGAR left join DESPESAS on PAG_DESPESA=DES_CODIGO where PAG_CODIGO=:codigo');
      IBQuery2.ParamByName('codigo').AsInteger:=IBQuery1CAI_NUMDOCTO.Value.ToInteger;
      IBQuery2.Open;
      QRLabel14.Caption:='(D) '+IBQuery2.FieldByName('PAG_DESPESA').AsString+' - '+IBQuery2.FieldByName('DES_DESCRICAO').AsString;
      IBQuery2.Close;
    except on exception do
      //nothing.
    end;
  end;
end;

procedure TFormCaixaQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ06);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
end;

procedure TFormCaixaQ06.SummaryBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Entradas:=0;
  Saidas:=0;
end;

procedure TFormCaixaQ06.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel22.Caption:=Format('%m',[Entradas]);
  QRLabel23.Caption:=Format('%m',[Saidas]);
  QRLabel9.Caption:=Format('%m',[Entradas-Saidas]);
end;

end.
