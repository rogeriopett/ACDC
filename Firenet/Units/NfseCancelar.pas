unit NfseCancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormNfseCancelar = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseCancelar: TFormNfseCancelar;

implementation
uses DataMod, Funcoes1, DataMod2;
{$R *.dfm}

procedure TFormNfseCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfseCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  if DM.TBNfseNFS_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO CONTAS A RECEBER EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_CODIGO');
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
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value)+'/%')+' and REE_STATUS=''B'' order by REE_CODIGO');
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

  //cancela a venda se tiver o codigo do pedido no cadastro da nota.
  //..... esta rotina deve ser analisada, pois não poderemos cancelar uma venda que tenha produtos E serviços.
  //if not DM.TBNfseNFS_VENDA.IsNull then
  //begin
  //  QYReceber.SQL.Clear;
  //  QYReceber.SQL.Add('update VENDAS set VED_STATUS=''C'', VED_USUARIO=:usuario, VED_DTATUALIZACAO=:dtatualizacao where VED_CODIGO='+IntToStr(DM.TBNfseNFS_VENDA.Value));
  //  QYReceber.ParamByName('usuario').AsString:=DM.UsuarioLogado;
  //  QYReceber.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
  //  QYReceber.ExecSQL;
  //  DM.TBVendas.Refresh;
  //end;

  DM.TBNfse.Refresh;

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
