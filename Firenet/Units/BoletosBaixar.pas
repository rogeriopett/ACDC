unit BoletosBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormBoletosBaixar = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosBaixar: TFormBoletosBaixar;

implementation
uses DataMod2, DataMod, DB, Funcoes1;

{$R *.dfm}

procedure TFormBoletosBaixar.BitBtn1Click(Sender: TObject);
var PrimeiraContaReceber: Boolean;
begin
  AbortIf(DateToStr(DM2.TBBoletosBOL_DTPAGAMENTO.Value,FS)='  /  /    ','Informe a data de pagamento.');

  if MessageDlg('Confirma a baixa do boleto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //marca boleto como baixado.
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='B';
    DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBBoletos.Post;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
      'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo');
    DM2.TBBoletosItens.First;
    PrimeiraContaReceber:=True;
    while not DM2.TBBoletosItens.Eof do
    begin
      //localiza cada conta a receber e baixa com o valor pago = valor.
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;
      DM.QYAux.Close;
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
      DM.QYAux.ParamByName('dtpagamento').AsDate:=DM2.TBBoletosBOL_DTPAGAMENTO.Value;
      DM.QYAux.ParamByName('status').AsString:='B';
      DM.QYAux.ParamByName('tipobaixa').AsString:='T';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      if PrimeiraContaReceber then
      begin
        PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
        //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
        if DM2.TBBoletosBOL_VALORTOTAL.Value < DM2.TBBoletosBOL_VALORPAGO.Value then
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (DM2.TBBoletosBOL_VALORPAGO.AsExtended - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      end else
      DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.QYAux.ExecSQL;
      DM2.TBBoletosItens.Next;
    end;

    //faz o lançamento no fluxo de caixa.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

    //faz atualizar os campos das contas a receber.
    DM2.TBBoletos.Close;
    DM2.TBBoletosItens.Close;
    DM2.TBBoletos.Open;
    DM2.TBBoletosItens.Open;

    MessageDlg('Boleto baixado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormBoletosBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosBaixar.DBEdit4Change(Sender: TObject);
begin
  if Trim(DBEdit4.Text)='' then
  BitBtn1.Enabled:=False else
  BitBtn1.Enabled:=True;
end;

procedure TFormBoletosBaixar.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
end;

procedure TFormBoletosBaixar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBBoletos.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM2.TBBoletos.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormBoletosBaixar.FormCreate(Sender: TObject);
begin
  //coloca a tabela em edição e preenche alguns campos.
  //se clicar em cancelar, dá um table.cancel.
  DM2.TBBoletos.Edit;
  DM2.TBBoletosBOL_DTPAGAMENTO.Value:=DM.ServerDate;
  DM2.TBBoletosBOL_VALORPAGO.Value:=DM2.TBBoletosBOL_VALORTOTAL.Value;
end;

procedure TFormBoletosBaixar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.

