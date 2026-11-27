unit PromissoriasQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, QRPDFFilt, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormPromissoriasQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    IMAGEM: TQRImage;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1PRM_AVALISTA1: TStringField;
    FDQuery1PRM_AVALISTA1CPF: TStringField;
    FDQuery1PRM_AVALISTA2: TStringField;
    FDQuery1PRM_AVALISTA2CPF: TStringField;
    FDQuery1PRM_CEDENTE: TStringField;
    FDQuery1PRM_CEDENTEBAIRRO: TStringField;
    FDQuery1PRM_CEDENTECEP: TStringField;
    FDQuery1PRM_CEDENTECNPJ: TStringField;
    FDQuery1PRM_CEDENTEENDERECO: TStringField;
    FDQuery1PRM_CEDENTEFONE: TStringField;
    FDQuery1PRM_CEDENTENUMERO: TStringField;
    FDQuery1PRM_CODIGO: TIntegerField;
    FDQuery1PRM_DTATUALIZACAO: TDateField;
    FDQuery1PRM_DTCADASTRO: TDateField;
    FDQuery1PRM_DTVENCIMENTO: TDateField;
    FDQuery1PRM_HRATUALIZACAO: TTimeField;
    FDQuery1PRM_HRCADASTRO: TTimeField;
    FDQuery1PRM_MATRIZ: TStringField;
    FDQuery1PRM_MULTIPLICADO: TStringField;
    FDQuery1PRM_PARCELA: TIntegerField;
    FDQuery1PRM_PARCELATOTAL: TIntegerField;
    FDQuery1PRM_SACADO: TStringField;
    FDQuery1PRM_SACADOBAIRRO: TStringField;
    FDQuery1PRM_SACADOCEP: TStringField;
    FDQuery1PRM_SACADOCNPJ: TStringField;
    FDQuery1PRM_SACADOENDERECO: TStringField;
    FDQuery1PRM_SACADOFONE: TStringField;
    FDQuery1PRM_SACADONUMERO: TStringField;
    FDQuery1PRM_STATUS: TStringField;
    FDQuery1PRM_USUARIO: TStringField;
    FDQuery1PRM_VALOR: TFMTBCDField;
    FDQuery1PRM_VALORBAIXADO: TFMTBCDField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromissoriasQ01: TFormPromissoriasQ01;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormPromissoriasQ01.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:=Extenso(FDQuery1PRM_VALOR.AsExtended);
end;

procedure TFormPromissoriasQ01.FormCreate(Sender: TObject);
begin
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  if DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value='S' then
  begin
    try
      IMAGEM.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg');
      except on exception do //nothing.
    end;
  end;
  if DM.TBParametrosPAR_PROMISSORIASCODIGO.Value='N' then
  begin
    QRLabel11.Font.Color:=clWhite;
    QRDBText4.Font.Color:=clWhite;
  end;
end;

end.
