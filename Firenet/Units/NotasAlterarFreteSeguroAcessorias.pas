unit NotasAlterarFreteSeguroAcessorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormNotasAlterarFreteSeguroAcessorias = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    QYNotasItens: TFDQuery;
    TRNotasItens: TFDTransaction;
    QYNotasItensQTDEITENS: TLargeintField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotasAlterarFreteSeguroAcessorias: TFormNotasAlterarFreteSeguroAcessorias;
  Campo: String;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormNotasAlterarFreteSeguroAcessorias.BitBtn1Click(Sender: TObject);
var Valor: Currency;
begin
  QYNotasItens.Close;
  QYNotasItens.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
  QYNotasItens.Open;

  //CAMPO FRETE.
  if Campo='FRETE' then
  begin
    if MessageDlg('Confirma alteração do valor do frete?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNotasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNotasItens.DisableControls;
      DM.TBNotas.DisableControls;
      DM.TBNotasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNotasItens.Eof do
      begin
        DM.TBNotasItens.Edit;
        DM.TBNotasItensNOI_VALORFRETE.Value:=Valor;
        DM.TBNotasItens.Post;
        DM.TBNotasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNotas.EnableControls;
      DM.TBNotasItens.EnableControls;
      DM.CalcularTotaisNota(False);
    end;
  end;

  //CAMPO SEGURO.
  if Campo='SEGURO' then
  begin
    if MessageDlg('Confirma alteração do valor do seguro?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNotasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNotasItens.DisableControls;
      DM.TBNotas.DisableControls;
      DM.TBNotasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNotasItens.Eof do
      begin
        DM.TBNotasItens.Edit;
        DM.TBNotasItensNOI_VALORSEGURO.Value:=Valor;
        DM.TBNotasItens.Post;
        DM.TBNotasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNotas.EnableControls;
      DM.TBNotasItens.EnableControls;
      DM.CalcularTotaisNota(False);
    end;
  end;


  //CAMPO ACESSORIAS.
  if Campo='ACESSORIAS' then
  begin
    if MessageDlg('Confirma alteração do valor das despesas acessórias',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Valor:=StrToFloat(Edit1.Text)/QYNotasItensQTDEITENS.Value; //divide o valor igualmente entre os itens.
      DM.TBNotasItens.DisableControls;
      DM.TBNotas.DisableControls;
      DM.TBNotasItens.First;
      DM.CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
      while not DM.TBNotasItens.Eof do
      begin
        DM.TBNotasItens.Edit;
        DM.TBNotasItensNOI_VALORACESSORIAS.Value:=Valor;
        DM.TBNotasItens.Post;
        DM.TBNotasItens.Next;
      end;
      DM.CalcularTotais:=True;
      DM.TBNotas.EnableControls;
      DM.TBNotasItens.EnableControls;
      DM.CalcularTotaisNota(False);
    end;
  end;

  QYNotasItens.Close;
  Close;
end;

procedure TFormNotasAlterarFreteSeguroAcessorias.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotasAlterarFreteSeguroAcessorias.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNotasAlterarFreteSeguroAcessorias.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
