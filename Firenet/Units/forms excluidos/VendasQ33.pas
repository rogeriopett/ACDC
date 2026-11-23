unit VendasQ33;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, QRCtrls,
  Data.DB, Datasnap.DBClient;

type
  TFormVendasQ33 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TBEtiquetas: TClientDataSet;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    TBEtiquetasNOME: TStringField;
    TBEtiquetasENDERECO: TStringField;
    TBEtiquetasNUMERO: TStringField;
    TBEtiquetasBAIRRO: TStringField;
    TBEtiquetasCIDADE: TStringField;
    TBEtiquetasESTADO: TStringField;
    TBEtiquetasCEP: TStringField;
    TBEtiquetasCOMPLEMENTO: TStringField;
    TBEtiquetasVOLUMESNUM: TStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    TBEtiquetasVOLUMES: TStringField;
    QRDBText8: TQRDBText;
    TBEtiquetasTRANSPORTADORA: TStringField;
    TBEtiquetasNOTA: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ33: TFormVendasQ33;
  Contador: Word;
implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormVendasQ33.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Inc(Contador);
  QRLabel3.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', Nº: '+DM.TBEmpresaEMP_NUMERO.Value;
  QRLabel4.Caption:=DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value;

  QRLabel5.Caption:=TBEtiquetasENDERECO.Value+', Nº: '+TBEtiquetasNUMERO.Value;
  QRLabel6.Caption:=TBEtiquetasCIDADE.Value+' - '+TBEtiquetasESTADO.Value+' CEP: '+TBEtiquetasCEP.Value;
  QRLabel8.Caption:=TBEtiquetasNOTA.Value+' - VOL.: '+AlignText(IntToStr(Contador),'0',3,taRight)+' de '+AlignText(TBEtiquetasVOLUMES.Value,'0',3,taRight);
end;

procedure TFormVendasQ33.FormCreate(Sender: TObject);
begin
  Contador:=0;
end;

procedure TFormVendasQ33.QuickRep1AfterPreview(Sender: TObject);
begin
  Contador:=0;
end;

procedure TFormVendasQ33.QuickRep1AfterPrint(Sender: TObject);
begin
  Contador:=0;
end;

procedure TFormVendasQ33.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Contador:=0;
end;

end.
