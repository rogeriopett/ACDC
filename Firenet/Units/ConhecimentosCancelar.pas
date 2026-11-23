unit ConhecimentosCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn,
  ExtCtrls, DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormConhecimentosCancelar = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    TRReceber: TFDTransaction;
    QYReceber: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosCancelar: TFormConhecimentosCancelar;

implementation
uses DataMod, DataMod2, Funcoes1, Conhecimentos;

{$R *.dfm}

procedure TFormConhecimentosCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  if DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO CONTAS A RECEBER EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_CODIGO');
    QYReceber.Open;
    QYReceber.First;
    while not QYReceber.Eof do
    begin
      Memo1.Lines.Add('Cancelando contas a receber numero '+QYReceber.FieldByName('REE_NUMDOCTO').AsString);
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=QYReceber.FieldByName('REE_CODIGO').AsInteger;
      DM.TBReceber.Open;
      DM.TBReceber.Edit;
      DM.TBReceberREE_STATUS.Value:='C'; //cancelado.
      DM.TBReceber.Post;
      QYReceber.Next;
    end;
    QYReceber.Close;

    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value)+'/%')+' and REE_STATUS=''B'' order by REE_CODIGO');
    QYReceber.Open;
    if not QYReceber.IsEmpty then
    begin
      Memo1.Lines.Add(#13#10);
      Memo1.Lines.Add('Os lançamentos abaixo já foram baixados. '+#13#10+'Verifique e faça os estornos necessários manualmente.');
    end;
    QYReceber.First;
    while not QYReceber.Eof do
    begin
      Memo1.Lines.Add('Verificar contas a receber numero '+QYReceber.FieldByName('REE_NUMDOCTO').AsString);
      QYReceber.Next;
    end;
    QYReceber.Close;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  //########################################################################################//
  //cancela a nota via sql para impedir de dar a mensagem de que não pode alterar uma venda já finalizada.
  QYReceber.Close;
  QYReceber.SQL.Clear;
  QYReceber.SQL.Add('update CTE set CTE_STATUS=''C'', CTE_USUARIO=:usuario, CTE_DTATUALIZACAO=:dtatualizacao where CTE_CODIGO=:codigo');
  QYReceber.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
  QYReceber.ParamByName('usuario').AsString:=DM.UsuarioLogin;
  QYReceber.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
  QYReceber.ExecSQL;

  DM.CodigoMark:=DM2.TBCteCTE_CODIGO.Value;
  DM2.TBCte.Close;
  DM2.TBCte.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM2.TBCte.Open;

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
