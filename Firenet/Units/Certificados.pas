unit Certificados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, ACBrBase,
  ACBrDFe, ACBrCTe;

type
  TFormCertificados = class(TForm)
    DBGrid1: TDBGrid;
    TBCertificados: TClientDataSet;
    DSCertificados: TDataSource;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    Bevel1: TBevel;
    ACBrCTe1: TACBrCTe;
    TBCertificadosCER_NUMEROSERIE: TStringField;
    TBCertificadosCER_RAZAOSOCIAL: TStringField;
    TBCertificadosCER_DOCUMENTO: TStringField;
    TBCertificadosCER_VALIDADEINICIO: TDateField;
    TBCertificadosCER_VALIDADEFIM: TDateField;
    TBCertificadosCER_CERTIFICADORA: TStringField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCertificados: TFormCertificados;
  Procurar: Boolean = False;
implementation

{$R *.dfm}

procedure TFormCertificados.DBGrid1DblClick(Sender: TObject);
begin
  if not TBCertificados.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCertificados.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not TBCertificados.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCertificados.FormCreate(Sender: TObject);
var I: Integer;
begin
  Procurar:=False;
  TBCertificados.Open;
  TBCertificados.EmptyDataSet;

  ACBrCTe1.SSL.LerCertificadosStore;
  for I:=0 to ACBrCTe1.SSL.ListaCertificados.Count-1 do
  begin
    with ACBrCTe1.SSL.ListaCertificados[I] do
    begin
      if (CNPJ <> '') then
      begin
        TBCertificados.Insert;
        TBCertificadosCER_NUMEROSERIE.Value:=NumeroSerie;
        TBCertificadosCER_RAZAOSOCIAL.Value:=RazaoSocial;
        TBCertificadosCER_DOCUMENTO.Value:=CNPJ;
        TBCertificadosCER_VALIDADEINICIO.Value:=DataInicioValidade;
        TBCertificadosCER_VALIDADEFIM.Value:=DataVenc;
        TBCertificadosCER_CERTIFICADORA.Value:=Certificadora;
        TBCertificados.Post;
      end;
    end;
  end;
end;

procedure TFormCertificados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCertificados.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
