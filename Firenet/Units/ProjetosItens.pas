unit ProjetosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, System.UITypes, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, PngBitBtn, PngSpeedButton;

type
  TFormProjetosItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosItens: TFormProjetosItens;

implementation

uses DataMod, ProdutosLoc, DataMod2, DataModSearch, Funcoes1;

{$R *.dfm}

procedure TFormProjetosItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetosItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProjetosItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBProjetosItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProjetosItensPJI_PRODUTO.Clear;
    DM2.TBProjetosItensPJI_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProjetosItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      DM2.TBProjetosItensPJI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM2.TBProjetosItensPJI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM2.TBProjetosItensPJI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM2.TBProjetosItensPJI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM2.TBProjetosItensPJI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;

      if DM2.TBProjetosPRJ_TABELAPRECO.Value='V' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='1' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='2' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='3' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='4' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='5' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM2.TBProjetosPRJ_TABELAPRECO.Value='6' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
    end else
    begin
      DM2.TBProjetosItensPJI_DESCRICAO.Clear;
      DM2.TBProjetosItensPJI_PRECOCUSTO.Clear;
      DM2.TBProjetosItensPJI_PRODUTO.Clear;
      DM2.TBProjetosItensPJI_TIPO.Clear;
      DM2.TBProjetosItensPJI_UNIDADE.Clear;
      DM2.TBProjetosItensPJI_VALORUNIT.Clear;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormProjetosItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProjetosItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetosItens.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBProdutos.Close;
    if ProdutosLoc.CodigoNoFornecedor then
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value else
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Open;
    DM2.TBProjetosItens.Edit;
    DM2.TBProjetosItensPJI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM2.TBProjetosItensPJI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM2.TBProjetosItensPJI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
    DM2.TBProjetosItensPJI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;

    if DM2.TBProjetosPRJ_TABELAPRECO.Value='V' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='1' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='2' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='3' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='4' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='5' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
    if DM2.TBProjetosPRJ_TABELAPRECO.Value='6' then DM2.TBProjetosItensPJI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProjetosItens.DBEdit12Exit(Sender: TObject);
begin
  DM2.TBProjetosItensPJI_VALORTOTAL.Value:=DM2.TBProjetosItensPJI_QUANTIDADE.Value * DM2.TBProjetosItensPJI_VALORUNIT.Value;
  DM2.TBProjetosItensPJI_PRECOCUSTOTOTAL.Value:=DM2.TBProjetosItensPJI_QUANTIDADE.Value * DM2.TBProjetosItensPJI_PRECOCUSTO.Value;
end;

procedure TFormProjetosItens.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProjetosItens.BitBtn1Click(Sender: TObject);
begin
  if DM2.TBProjetosItensPJI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='S','Produtos compostos não podem ser usados.'); //o produto é composto? entao não pode ser inserido aqui.

  DM2.TBProjetosItens.Post;
  Close;
end;

procedure TFormProjetosItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProjetosItens.State in [dsInsert, dsEdit] then
  DM2.TBProjetosItens.Cancel;
end;

procedure TFormProjetosItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

end.
