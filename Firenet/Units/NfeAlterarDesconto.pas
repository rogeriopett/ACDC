unit NfeAlterarDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, DB, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfeAlterarDesconto = class(TForm)
    Edit1: TEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    QYNfeItens: TFDQuery;
    TRNfeItens: TFDTransaction;
    QYNfeItensVALORTOTALBRUTO: TFMTBCDField;
    QYNfeItensVALORFRETE: TFMTBCDField;
    QYNfeItensVALORSEGURO: TFMTBCDField;
    QYNfeItensVALORACESSORIAS: TFMTBCDField;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeAlterarDesconto: TFormNfeAlterarDesconto;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormNfeAlterarDesconto.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then
    begin
      QYNfeItens.Close;
      QYNfeItens.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
      QYNfeItens.Open;
      //Porcentagem:=(100.0/(QYNfeItensVALORTOTALBRUTO.Value+
      //                     QYNfeItensVALORFRETE.Value+
      //                     QYNfeItensVALORSEGURO.Value+
      //                     QYNfeItensVALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
      Porcentagem:=(100.0/(QYNfeItensVALORTOTALBRUTO.AsExtended))*StrToFloat(Edit1.Text); //substituido a linha de cima por esta. Calcula a porcentagem.
      QYNfeItens.Close;
    end;
    DM.TBNfeItens.DisableControls;
    DM.TBNfe.DisableControls;
    DM.TBNfeItens.First;
    DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
    while not DM.TBNfeItens.Eof do
    begin
      DM.TBNfeItens.Edit;
      if Porcentagem > DM.TBNfeItensNFI_DESCMAX.Value then
      DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBNfeItensNFI_DESCMAX.Value else
      DM.TBNfeItensNFI_DESCPORC.Value:=Porcentagem;
      DM.TBNfeItens.Post;
      DM.TBNfeItens.Next;
    end;
    DM.CalcularTotais:=True;
    DM.TBNfe.EnableControls;
    DM.TBNfeItens.EnableControls;
    DM.CalcularTotaisNFe(False);
    Close;
  end;
end;

procedure TFormNfeAlterarDesconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeAlterarDesconto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarDesconto.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormNfeAlterarDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
