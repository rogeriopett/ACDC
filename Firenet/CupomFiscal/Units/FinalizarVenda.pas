unit FinalizarVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, Grids, DBGrids, ExtCtrls, IBDatabase,
  DB, IBCustomDataSet, IBQuery, DBClient, DBCtrls, ACBrTEFDClass, Menus;

type
  TFormFinalizarVenda = class(TForm)
    Bevel6: TBevel;
    Bevel5: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    labelDescricaoTotalVenda: TLabel;
    labelDescricaoDesconto: TLabel;
    labelDescricaoAcrescimo: TLabel;
    labelDescricaoTotalReceber: TLabel;
    labelDescricaoTotalRecebido: TLabel;
    labelDescricaoTroco: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel7: TBevel;
    TBValores: TClientDataSet;
    DSValores: TDataSource;
    QYFormasPagamento: TIBQuery;
    TRFormasPagamento: TIBTransaction;
    DBGrid1: TDBGrid;
    QYFormasPagamentoFPG_CODIGO: TIntegerField;
    QYFormasPagamentoFPG_DESCRICAO: TIBStringField;
    QYFormasPagamentoFPG_TEF: TIBStringField;
    QYFormasPagamentoFPG_IMPRIMEVINCULADO: TIBStringField;
    QYFormasPagamentoFPG_DTCADASTRO: TDateField;
    QYFormasPagamentoFPG_DTATUALIZACAO: TDateField;
    QYFormasPagamentoFPG_USUARIO: TIBStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Panel1: TPanel;
    labelConfirmaValores: TLabel;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    DBText5: TDBText;
    DBText6: TDBText;
    QYFormasPagamentoFPG_CODIGOPAGAMENTO: TIBStringField;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Confirma1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure Confirma1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure FocoNoGrid;
  public
    { Public declarations }
  end;

var
  FormFinalizarVenda: TFormFinalizarVenda;

implementation
uses DataMod, ECF, Main;
{$R *.dfm}

procedure TFormFinalizarVenda.Confirma1Click(Sender: TObject);
var
  TotalValores, ValorDinheiro, ValorTroco: Currency;
  TransacaoComTef: Boolean;
begin
  TransacaoComTef:=False;
  TotalValores:=0;
  ValorDinheiro:=0;
  ValorTroco:=0;
  if TBValores.State in [dsEdit] then TBValores.Post;
  //elimina possíveis tentativas de conclusão do cupom.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('delete from CUPOMFISCALPAGTOS where CFP_CUPOMFISCAL=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBCupomFiscalCUP_CODIGO.Value;
  DM.QYAux.ExecSQL;
  DM.TRAux.Commit;
  //...
  TBValores.DisableControls;
  TBValores.First;
  while not TBValores.Eof do
  begin
    if TBValores.FieldByName('VALOR').AsCurrency>0 then
    begin
      TotalValores:=TotalValores+TBValores.FieldByName('VALOR').AsFloat;

      //verifica se o tipo de pagamento é dinheiro.
      if TBValores.FieldByName('DESCRICAO').Value='DINHEIRO' then
      ValorDinheiro:=TBValores.FieldByName('VALOR').AsCurrency;

      if TBValores.FieldByName('TEF').Value='S' then
      TransacaoComTef:=True;

      DM.TBCupomFiscalPagtos.Insert;
      DM.TBCupomFiscalPagtosCFP_FORMAPAGAMENTO.Value:=TBValores.FieldByName('CODIGO').AsInteger;
      DM.TBCupomFiscalPagtosCFP_VALOR.Value:=TBValores.FieldByName('VALOR').AsFloat;
      DM.TBCupomFiscalPagtosCFP_TEF.Value:=TBValores.FieldByName('TEF').AsString;
      DM.TBCupomFiscalPagtosCFP_IMPRIMEVINCULADO.Value:=TBValores.FieldByName('VINCULADO').AsString;
      DM.TBCupomFiscalPagtosCFP_DESCRICAO.Value:=TBValores.FieldByName('DESCRICAO').AsString;
      DM.TBCupomFiscalPagtosCFP_CODIGOPAGAMENTO.Value:=TBValores.FieldByName('CODIGOPAGAMENTO').AsString;
      DM.TBCupomFiscalPagtos.Post;
    end;
    TBValores.Next;
  end;
  TBValores.EnableControls;

  if TotalValores < DM.TBCupomFiscalCUP_VALORTOTAL.Value then
  begin
    MessageDlg('Os valores pagos pelo cliente não são suficientes para efetuar o total do pagamento.',mtWarning,[mbOk],0);
    FocoNoGrid;
  end else
  if TotalValores >= DM.TBCupomFiscalCUP_VALORTOTAL.Value then
  begin
    ValorTroco:=TotalValores-DM.TBCupomFiscalCUP_VALORTOTAL.Value;
    if (TransacaoComTef) and (ValorTroco > 0) then
    begin
      MessageDlg('Transação com dinheiro e cartão não pode ter troco.',mtWarning,[mbOk],0);
      FocoNoGrid;
    end else
    begin
      if ValorTroco > ValorDinheiro then
      begin
        MessageDlg('Recebimento a maior. Corrija os valores.',mtWarning,[mbOk],0);
        FocoNoGrid;
      end else
      begin
        DM.TBCupomFiscal.Edit;
        DM.TBCupomFiscalCUP_VALORRECEBIDO.Value:=TotalValores;
        DM.TBCupomFiscalCUP_VALORTROCO.Value:=ValorTroco;
        DM.TBCupomFiscal.Post;
        Panel1.Visible:=True;
        Panel1.BringToFront;
        PngBitBtn3.SetFocus;
      end;
    end;
  end;
end;

procedure TFormFinalizarVenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if Key=#13 then
  begin
    if DBGrid1.SelectedIndex=0 then
    DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1 else
    begin
      if not TBValores.Eof then
      TBValores.Next else
      TBValores.First;
    end;
  end;
end;

procedure TFormFinalizarVenda.FocoNoGrid;
begin
  TBValores.First;
  DBGrid1.SetFocus;
  DBGrid1.Fields[1].FocusControl;
end;

procedure TFormFinalizarVenda.FormActivate(Sender: TObject);
begin
  FocoNoGrid;
end;

procedure TFormFinalizarVenda.FormCreate(Sender: TObject);
begin
  //cria tabela temporária para informar os valores de pagamento da venda.
  TBValores.CreateDataSet;
  TBValores.Open;
  QYFormasPagamento.Open;
  QYFormasPagamento.First;
  while not QYFormasPagamento.Eof do
  begin
    TBValores.Append; //insere no final.
    TBValores.FieldByName('DESCRICAO').AsString:=QYFormasPagamentoFPG_DESCRICAO.Value;
    TBValores.FieldByName('VALOR').AsCurrency:=0;
    TBValores.FieldByName('CODIGO').AsInteger:=QYFormasPagamentoFPG_CODIGO.Value;
    TBValores.FieldByName('TEF').AsString:=QYFormasPagamentoFPG_TEF.Value;
    TBValores.FieldByName('VINCULADO').AsString:=QYFormasPagamentoFPG_IMPRIMEVINCULADO.Value;
    TBValores.FieldByName('CODIGOPAGAMENTO').AsString:=QYFormasPagamentoFPG_CODIGOPAGAMENTO.Value;
    TBValores.Post;
    QYFormasPagamento.Next;
  end;
  QYFormasPagamento.Close;
  TFloatField(TBValores.FieldByName('VALOR')).DisplayFormat:='#########0.00';
  DBGrid1.Columns.Items[2].Visible:=False; //codigo.
  DBGrid1.Columns.Items[3].Visible:=False; //tef.
  DBGrid1.Columns.Items[4].Visible:=False; //vinculado.
  DBGrid1.Columns.Items[5].Visible:=False; //codigopagamento
  DBGrid1.Columns[0].ReadOnly:=True; //descricao.
  DBGrid1.Columns[2].ReadOnly:=True; //codigo.
  DBGrid1.Columns[3].ReadOnly:=True; //tef.
  DBGrid1.Columns[4].ReadOnly:=True; //vinculado.
  DBGrid1.Columns[5].ReadOnly:=True; //codigopagamento.
  DBGrid1.Columns[0].Title.Caption:='Descrição';
  DBGrid1.Columns[1].Title.Caption:='Valor';
  DBGrid1.Columns[0].Width:=130; //descricao.
  DBGrid1.Columns[1].Width:=97; //valor.
end;

procedure TFormFinalizarVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFinalizarVenda.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFinalizarVenda.PngBitBtn3Click(Sender: TObject);
var I: Integer;
begin
  if DM.TBCupomFiscalCUP_DESCVALOR.Value > 0 then
  ECF.SubTotalizarCupom(DM.TBCupomFiscalCUP_DESCVALOR.Value * (-1)) else
  if DM.TBCupomFiscalCUP_ACREVALOR.Value > 0 then
  ECF.SubTotalizarCupom(DM.TBCupomFiscalCUP_ACREVALOR.Value) else
  ECF.SubTotalizarCupom(0);

  DM.TBCupomFiscalPagtos.First;
  while not DM.TBCupomFiscalPagtos.Eof do
  begin
    //se o tipo de pagamento for TEF...
    if DM.TBCupomFiscalPagtosCFP_TEF.Value='S' then
    begin
      DM.ACBrTEFD.Inicializar(TACBrTEFDTipo(1)); //1-tef dial.
      DM.ACBrTEFD.CRT(DM.TBCupomFiscalPagtosCFP_VALOR.Value,IntToStr(DM.TBCupomFiscalPagtosCFP_FORMAPAGAMENTO.Value),DM.ACBrECF.NumCOO);
    end;

    //efetua a forma de pagamento, caso nao seja TEF...
    if DM.TBCupomFiscalPagtosCFP_TEF.Value<>'S' then
    ECF.EfetuarFormaPagamento(DM.TBCupomFiscalPagtosCFP_CODIGOPAGAMENTO.Value,DM.TBCupomFiscalPagtosCFP_VALOR.Value);
    DM.TBCupomFiscalPagtos.Next;
  end;
  //finaliza o cupom.
  DM.ACBrTEFD.FinalizarCupom;
  //imprime as transacoes pendentes - comprovantes nao fiscais vinculados
  DM.ACBrTEFD.ImprimirTransacoesPendentes;

        //TODO... : Esse é o melhor lugar para gerar o R07? }
{        R07 := TR07VO.Create;
        R07.CCF := StrToInt(FDataModule.ACBrECF.NumCCF);
        R07.MeioPagamento := TotalTipoPagamento.Descricao;
        R07.ValorPagamento := TotalTipoPagamento.Valor;
        //TODO : Como fazer o controle dos estornos?
        R07.IndicadorEstorno := 'N';
        R07.ValorEstorno := 0;
        RegistroRControl := TRegistroRController.Create;
        RegistroRControl.GravaR07(R07);  }

  //conclui o encerramento da venda - grava dados de cabecalho no banco
  DM.TBCupomFiscal.Edit;
  DM.TBCupomFiscalCUP_STATUS.Value:='F';
  DM.TBCupomFiscal.Post;
  //TODO... verificar e baixar os DAV. e Pre Venda.

  //...
  Main.StatusCaixa:=0;
  FormMain.TelaPadrao;
  Close;
  { TODO : Fazer os roteiros de testes do TEF: Amex, Visa, Master, Hiper junto com os participantes. Acompanhamento via EAD }
  { TODO : Qual seria a melhor estratégia para compra com multiplos cartoes? Por exemplo: uma compra rateada entre varios amigos }
  { TODO : E se for necessário estornar um pagamento? Como devemos fazer? }
end;

procedure TFormFinalizarVenda.PngBitBtn4Click(Sender: TObject);
begin
  Panel1.Visible:=False;
  FocoNoGrid;
end;

end.
