unit CtCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, StdCtrls, Buttons, PngBitBtn,
  ExtCtrls, DBCtrls;

type
  TFormCtCancelar = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    TRReceber: TIBTransaction;
    QYReceber: TIBDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCtCancelar: TFormCtCancelar;

implementation
uses DataMod, DataMod2, Funcoes1, Ct;
{$R *.dfm}

procedure TFormCtCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCtCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  if DM2.TBCtCTT_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('ELIMINANDO CONTAS A RECEBER EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    QYReceber.SelectSQL.Clear;
    QYReceber.SelectSQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('CT-'+IntToStr(DM2.TBCtCTT_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_CODIGO');
    QYReceber.Open;
    while not QYReceber.IsEmpty do
    begin
      Memo1.Lines.Add('Eliminando contas a receber numero '+QYReceber.FieldByName('REE_NUMDOCTO').AsString);
      QYReceber.Delete; //foi usado um ibdataset para poder chamar a funcao delete.
    end;
    TRReceber.Commit;

    QYReceber.SelectSQL.Clear;
    QYReceber.SelectSQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('CT-'+IntToStr(DM2.TBCtCTT_CODIGO.Value)+'/%')+' and REE_STATUS=''B'' order by REE_CODIGO');
    QYReceber.Open;
    if not QYReceber.IsEmpty then
    begin
      Memo1.Lines.Add(#13#10);
      Memo1.Lines.Add('Existem lançamentos no contas a receber que já foram baixados. '+#13#10+'Verifique e faça os estornos necessários manualmente.');
    end;
    QYReceber.Close;

    //########################################################################################//
    //cancela a nota via sql para impedir de dar a mensagem de que não pode alterar uma venda já finalizada.
    FormCt.QYCt.Close;
    FormCt.QYCt.ParamByName('codigo').AsInteger:=DM2.TBCtCTT_CODIGO.Value;
    FormCt.QYCt.Open;
    FormCt.QYCt.Edit;
    FormCt.QYCtCTT_STATUS.Value:='C';
    FormCt.QYCtCTT_DTATUALIZACAO.Value:=Date;
    FormCt.QYCtCTT_USUARIO.Value:=UsuarioLogado;
    FormCt.QYCt.Post;
    FormCt.TRCt.Commit;
//    QYReceber.SelectSQL.Clear;
//    QYReceber.SelectSQL.Add('update CONHECIMENTOS set CTE_STATUS=''C'', CTE_USUARIO=:usuario, CTE_DTATUALIZACAO=:dtatualizacao where CTE_CODIGO='+IntToStr(DM2.TBConhecimentosCTE_CODIGO.Value));
//    QYReceber.ParamByName('usuario').AsString:=UsuarioLogado;
//    QYReceber.ParamByName('dtatualizacao').AsDate:=Date;
//    QYReceber.ExecSQL;
//    TRReceber.Commit;

    DM2.TBCt.Refresh;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
