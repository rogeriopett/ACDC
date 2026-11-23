unit ChequesLerBanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PngBitBtn, Mask;

type
  TFormChequesLerBanda = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    BitBtn2: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    Bevel1: TBevel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequesLerBanda: TFormChequesLerBanda;

implementation
uses DataMod2;
{$R *.dfm}

procedure TFormChequesLerBanda.BitBtn1Click(Sender: TObject);
var S, Agencia, Banco, Conta, NumCheque: String;
begin
  S:=MaskEdit1.Text;
  Banco:=Copy(S,2,3);
  Agencia:=Copy(S,5,4);
  NumCheque:=Copy(S,14,6);
  Conta:=Copy(S,27,6);
  DM2.TBChequesCHE_BANCO.Value:=StrToInt(Banco);
  DM2.TBChequesCHE_AGENCIA.Value:=Agencia;
  DM2.TBChequesCHE_CONTA.Value:=Conta;
  DM2.TBChequesCHE_NUMERO.Value:=StrToInt(NumCheque);
  Close;
end;

procedure TFormChequesLerBanda.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormChequesLerBanda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormChequesLerBanda.MaskEdit1Change(Sender: TObject);
begin
  if Length(Trim(MaskEdit1.Text))=34 then
  BitBtn1.Click;
end;

end.
