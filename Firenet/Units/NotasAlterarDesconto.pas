unit NotasAlterarDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormNotasAlterarDesconto = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYNotasItens: TFDQuery;
    TRNotasItens: TFDTransaction;
    QYNotasItensVALORTOTALBRUTO: TFMTBCDField;
    QYNotasItensVALORFRETE: TFMTBCDField;
    QYNotasItensVALORSEGURO: TFMTBCDField;
    QYNotasItensVALORACESSORIAS: TFMTBCDField;
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
  FormNotasAlterarDesconto: TFormNotasAlterarDesconto;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormNotasAlterarDesconto.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then
    begin
      QYNotasItens.Close;
      QYNotasItens.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
      QYNotasItens.Open;
      //Porcentagem:=(100.0/(QYNotasItensVALORTOTALBRUTO.Value+
      //                     QYNotasItensVALORFRETE.Value+
      //                     QYNotasItensVALORSEGURO.Value+
      //                     QYNotasItensVALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
      Porcentagem:=(100.0/(QYNotasItensVALORTOTALBRUTO.AsExtended))*StrToFloat(Edit1.Text);
      QYNotasItens.Close;
    end;
    DM.TBNotasItens.DisableControls;
    DM.TBNotas.DisableControls;
    DM.TBNotasItens.First;
    DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
    while not DM.TBNotasItens.Eof do
    begin
      DM.TBNotasItens.Edit;
      if Porcentagem > DM.TBNotasItensNOI_DESCMAX.Value then
      DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBNotasItensNOI_DESCMAX.Value else
      DM.TBNotasItensNOI_DESCPORC.Value:=Porcentagem;
      DM.TBNotasItens.Post;
      DM.TBNotasItens.Next;
    end;
    DM.CalcularTotais:=True;
    DM.TBNotas.EnableControls;
    DM.TBNotasItens.EnableControls;
    DM.CalcularTotaisNota(False);
    Close;
  end;
end;

procedure TFormNotasAlterarDesconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotasAlterarDesconto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNotasAlterarDesconto.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormNotasAlterarDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
