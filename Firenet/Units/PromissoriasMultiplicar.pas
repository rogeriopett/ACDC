unit PromissoriasMultiplicar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, PngBitBtn, System.UITypes;

type
  TFormPromissoriasMultiplicar = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    DBText5: TDBText;
    Label6: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromissoriasMultiplicar: TFormPromissoriasMultiplicar;

implementation
uses DataMod, DataMod2;
{$R *.dfm}

procedure TFormPromissoriasMultiplicar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPromissoriasMultiplicar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPromissoriasMultiplicar.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormPromissoriasMultiplicar.BitBtn1Click(Sender: TObject);
var I: Byte;
  Valor: Currency;
  Snome, Send, Sbai, Scep, Sfone, Scpf, Snum, Cnome, Cend, Cbai, Ccep, Cfone, Ccpf, Cnum, Anome1, Anome2, Acpf1, Acpf2: String;
  Venc: TDate;
begin
  if Trim(Edit1.Text)='' then
  begin
    MessageDlg('Informe o número de cópias.',mtError,[mbOk],0);
    Edit1.SetFocus;
    Exit;
  end;
  if MessageDlg('Confirma geração de mais '+Edit1.Text+' cópias desta nota promissória?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //atualiza o total de parcelas na promissoria matriz.
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_PARCELATOTAL.Value:=StrToInt(Edit1.Text)+1;
    DM2.TBPromissoriasPRM_MULTIPLICADO.Value:='S';
    DM2.TBPromissorias.Post;
    //.....
    Snome:=DM2.TBPromissoriasPRM_SACADO.Value;
    Send:=DM2.TBPromissoriasPRM_SACADOENDERECO.Value;
    Snum:=DM2.TBPromissoriasPRM_SACADONUMERO.Value;
    Sbai:=DM2.TBPromissoriasPRM_SACADOBAIRRO.Value;
    Scep:=DM2.TBPromissoriasPRM_SACADOCEP.Value;
    Sfone:=DM2.TBPromissoriasPRM_SACADOFONE.Value;
    Scpf:=DM2.TBPromissoriasPRM_SACADOCNPJ.Value;
    Cnome:=DM2.TBPromissoriasPRM_CEDENTE.Value;
    Cend:=DM2.TBPromissoriasPRM_CEDENTEENDERECO.Value;
    Cnum:=DM2.TBPromissoriasPRM_CEDENTENUMERO.Value;
    Cbai:=DM2.TBPromissoriasPRM_CEDENTEBAIRRO.Value;
    Ccep:=DM2.TBPromissoriasPRM_CEDENTECEP.Value;
    Cfone:=DM2.TBPromissoriasPRM_CEDENTEFONE.Value;
    Ccpf:=DM2.TBPromissoriasPRM_CEDENTECNPJ.Value;
    Anome1:=DM2.TBPromissoriasPRM_AVALISTA1.Value;
    Anome2:=DM2.TBPromissoriasPRM_AVALISTA2.Value;
    Acpf1:=DM2.TBPromissoriasPRM_AVALISTA1CPF.Value;
    Acpf2:=DM2.TBPromissoriasPRM_AVALISTA2CPF.Value;
    Valor:=DM2.TBPromissoriasPRM_VALOR.AsExtended;
    Venc:=DM2.TBPromissoriasPRM_DTVENCIMENTO.Value;
    for I:=1 to StrToInt(Edit1.Text) do
    begin
      DM2.TBPromissorias.DisableControls;
      DM2.TBPromissorias.Insert;
      DM2.TBPromissoriasPRM_AVALISTA1.Value:=Anome1;
      DM2.TBPromissoriasPRM_AVALISTA1CPF.Value:=Acpf1;
      DM2.TBPromissoriasPRM_AVALISTA2.Value:=Anome2;
      DM2.TBPromissoriasPRM_AVALISTA2CPF.Value:=Acpf2;
      DM2.TBPromissoriasPRM_SACADO.Value:=Snome;
      DM2.TBPromissoriasPRM_SACADOENDERECO.Value:=Send;
      DM2.TBPromissoriasPRM_SACADONUMERO.Value:=Snum;
      DM2.TBPromissoriasPRM_SACADOBAIRRO.Value:=Sbai;
      DM2.TBPromissoriasPRM_SACADOCEP.Value:=Scep;
      DM2.TBPromissoriasPRM_SACADOFONE.Value:=Sfone;
      DM2.TBPromissoriasPRM_SACADOCNPJ.Value:=Scpf;
      DM2.TBPromissoriasPRM_CEDENTE.Value:=Cnome;
      DM2.TBPromissoriasPRM_CEDENTEENDERECO.Value:=Cend;
      DM2.TBPromissoriasPRM_CEDENTENUMERO.Value:=Cnum;
      DM2.TBPromissoriasPRM_CEDENTEBAIRRO.Value:=Cbai;
      DM2.TBPromissoriasPRM_CEDENTECEP.Value:=Ccep;
      DM2.TBPromissoriasPRM_CEDENTEFONE.Value:=Cfone;
      DM2.TBPromissoriasPRM_CEDENTECNPJ.Value:=Ccpf;
      DM2.TBPromissoriasPRM_VALOR.Value:=Valor;
      DM2.TBPromissoriasPRM_MATRIZ.Value:='N'; //a multiplicada nao podera ser multiplicada novamente.
      Venc:=IncMonth(Venc,1); //aumenta 1 mes;
      DM2.TBPromissoriasPRM_DTVENCIMENTO.Value:=Venc;
      DM2.TBPromissoriasPRM_PARCELA.Value:=I+1;
      DM2.TBPromissoriasPRM_PARCELATOTAL.Value:=StrToInt(Edit1.Text)+1;
      DM2.TBPromissorias.Post;
      DM2.TBPromissorias.EnableControls;
    end;
    MessageDlg('Geração OK.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormPromissoriasMultiplicar.Edit1Exit(Sender: TObject);
begin
  if Trim(Edit1.Text)<>'' then
  begin
    if (StrToInt(Edit1.Text)<1) or (StrToInt(Edit1.Text)>255) then
    begin
      MessageDlg('O número de cópias deve estar entre 1 e 255.',mtError,[mbOk],0);
      Edit1.SetFocus;
    end;
  end;
end;

end.
