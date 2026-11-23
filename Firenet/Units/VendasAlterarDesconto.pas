unit VendasAlterarDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVendasAlterarDesconto = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYVendasItens: TFDQuery;
    TRVendasItens: TFDTransaction;
    QYVendasItensVALORTOTALBRUTO: TFMTBCDField;
    QYVendasItensVALORFRETE: TFMTBCDField;
    QYVendasItensVALORSEGURO: TFMTBCDField;
    QYVendasItensVALORACESSORIAS: TFMTBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasAlterarDesconto: TFormVendasAlterarDesconto;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormVendasAlterarDesconto.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then
    begin
      QYVendasItens.Close;
      QYVendasItens.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
      QYVendasItens.Open;
      //Porcentagem:=(100.0/(QYVendasItensVALORTOTALBRUTO.Value+
      //                     QYVendasItensVALORFRETE.Value+
      //                     QYVendasItensVALORSEGURO.Value+
      //                     QYVendasItensVALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
      Porcentagem:=(100.0/(QYVendasItensVALORTOTALBRUTO.AsExtended))*StrToFloat(Edit1.Text); //substituido a linha de cima por esta. Calcula a porcentagem.
      QYVendasItens.Close;
    end;
    DM.TBVendasItens.DisableControls;
    DM.TBVendas.DisableControls;
    DM.TBVendasItens.First;
    DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
    while not DM.TBVendasItens.Eof do
    begin
      DM.TBVendasItens.Edit;
      if Porcentagem > DM.TBVendasItensVEI_DESCMAX.Value then
      DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCMAX.Value else
      DM.TBVendasItensVEI_DESCPORC.Value:=Porcentagem;
      DM.TBVendasItens.Post;
      DM.TBVendasItens.Next;
    end;
    DM.CalcularTotais:=True;
    DM.TBVendas.EnableControls;
    DM.TBVendasItens.EnableControls;
    DM.CalcularTotaisVenda(False);
    Close;
  end;
end;

procedure TFormVendasAlterarDesconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasAlterarDesconto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormVendasAlterarDesconto.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormVendasAlterarDesconto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
