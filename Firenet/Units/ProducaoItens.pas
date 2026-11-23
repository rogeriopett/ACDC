unit ProducaoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, System.UITypes,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton;

type
  TFormProducaoItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
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
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    DBText6: TDBText;
    Label22: TLabel;
    PngBitBtn1: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ProdutoComposto;
    procedure InserirItens(Produto: Integer; Quantidade: Extended);
    procedure InserirComposicao(Produto: Integer);
  public
    { Public declarations }
    procedure InserirComposicao_com_nivel(Produto, Nivel: Integer);
  end;

var
  FormProducaoItens: TFormProducaoItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, ProdutosLoc, DataModSearch, FireDAC.Comp.Client, Funcoes1;

{$R *.dfm}

procedure TFormProducaoItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProducaoItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProducaoItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBProducaoItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBProducaoItensPDI_PRODUCAO.Clear;
    DM.TBProducaoItensPRO_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBProducaoItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
      //localiza o almoxarifado padrao ... o codigo do produto vem  do datasource desta tabela. (DSProdutos).
      DM.TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value,[]);

      DM.TBProducaoItensPDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBProducaoItensPRO_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBProducaoItensPRO_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
    end else
    begin
      DM.TBProducaoItensPDI_PRODUTO.Clear;
      DM.TBProducaoItensPRO_NOME.Clear;
      DM.TBProducaoItensPRO_UNIDADE.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormProducaoItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProducaoItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProducaoItens.SpeedButton9Click(Sender: TObject);
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
    DM.TBProducaoItens.Edit;
    DM.TBProducaoItensPDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProducaoItensPRO_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBProducaoItensPRO_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProducaoItens.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProducaoItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBProducaoItens.State in [dsInsert, dsEdit] then
  DM.TBProducaoItens.Cancel;
end;

procedure TFormProducaoItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProducaoItens.BitBtn1Click(Sender: TObject);
begin
  if DM.TBProdutosPRO_COMPOSTO.Value='N' then
  begin
    MessageDlg('Somente produtos compostos podem ser selecionados na ordem de produção.',mtError,[mbOk],0);
    DBEdit5.SelectAll;
    DBEdit5.SetFocus;
    Exit;
  end;

  if DM.TBProducaoItensPDI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');

  if DM.TBParametrosPAR_VENDERCOMPOSTO.Value='P' then //pergunta o que quer produzir.
  begin
    if MessageDlg('Deseja produzir a composição?'+#13#10#13#10+'Clique em SIM para produzir a composição ou NÃO para produzir somente o produto composto.',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    ProdutoComposto else
    begin
      //ProdutoSimples;
      DM.TBProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
      DM.TBProducaoItens.Post;
      InserirComposicao(DM.TBProducaoItensPDI_PRODUTO.Value); //inclui os produtos na tabela ProducaoItensComp.
    end;
  end else
  begin   //ta certo?
    DM.TBProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
    DM.TBProducaoItens.Post;
    InserirComposicao(DM.TBProducaoItensPDI_PRODUTO.Value); //inclui os produtos na tabela ProducaoItensComp.
  end;
  Close;
end;

procedure TFormProducaoItens.ProdutoComposto;
var Qtde: Extended;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensPDI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;

  Qtde:=DM.TBProducaoItensPDI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM.TBProducaoItens.Cancel; //cancela, pois o produto é composto.
  DM.TBProducaoItens.DisableControls;
  DM.TBProducao.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM.TBProducao.EnableControls;
  DM.TBProducaoItens.EnableControls;
end;

procedure TFormProducaoItens.InserirItens(Produto: Integer; Quantidade: Extended);
var QYProdutosComp: TFDQuery;
begin
  //QtdeNiveis:=0;
  QtdeNiveis:=QtdeNiveis+1; //entrou no nível, soma!
  QYProdutosComp:=TFDQuery.Create(Self);
  QYProdutosComp.Connection:=DM.FDConnection1;
  QYProdutosComp.SQL.Clear;
  QYProdutosComp.SQL.Add('select * from PRODUTOSCOMP where PRC_PRODUTO=:codigo');
  QYProdutosComp.ParamByName('codigo').AsInteger:=Produto;
  QYProdutosComp.Open;
  QYProdutosComp.First;
  while not QYProdutosComp.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=QYProdutosComp.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;
    if (DM.TBProdutosPRO_COMPOSTO.Value='S') then // and (QtdeNiveis<=DM.TBParametrosPAR_QTDENIVEISCOMPOSTO.Value) then //se quantidade níveis é menor ou igual, inclui o produto composto, senão inclui o próprio produto.
    begin
      DM.TBProducaoItens.Insert;
      DM.TBProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
      DM.TBProducaoItensPDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBProducaoItensPDI_QUANTIDADE.Value:=Quantidade;

      //campos derivados.
      DM.TBProducaoItensPRO_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBProducaoItensPRO_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      DM.TBProducaoItens.Post;

      //alterado para a linha abaixo. InserirComposicao(DM.TBProducaoItensPDI_PRODUTO.Value); //inclui os produtos na tabela ProducaoItensComp.
      InserirComposicao_com_nivel(DM.TBProducaoItensPDI_PRODUTO.Value,0);

      //InserirItens(DM.TBProdutosPRO_CODIGO.Value,Quantidade);
      //InserirComposicao(DM.TBProdutosPRO_CODIGO.Value); //inclui os produtos na tabela ProducaoItensComp.
    end else
    begin
      //nao faz nada, pois só pode produzir compostos.
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormProducaoItens.InserirComposicao(Produto: Integer);
var QYProdutosComp: TFDQuery;
begin
  QYProdutosComp:=TFDQuery.Create(Self);
  QYProdutosComp.Connection:=DM.FDConnection1;
  QYProdutosComp.SQL.Clear;
  QYProdutosComp.SQL.Add('select * from PRODUTOSCOMP where PRC_PRODUTO=:codigo');
  QYProdutosComp.ParamByName('codigo').AsInteger:=Produto;
  QYProdutosComp.Open;
  QYProdutosComp.First;
  DM.TBProdutos.DisableControls;
  DM.TBProducaoItensComp.DisableControls;
  Screen.Cursor:=crHourGlass;
  while not QYProdutosComp.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=QYProdutosComp.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;
    DM.TBProducaoItensComp.Insert;
    DM.TBProducaoItensCompPDC_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*DM.TBProducaoItensPDI_QUANTIDADE.Value; //multiplica pela quantidade do produto composto.
    DM.TBProducaoItensCompPDC_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProducaoItensCompPDC_COMPOSTO.Value:=DM.TBProdutosPRO_COMPOSTO.Value;
    DM.TBProducaoItensCompPDC_BAIXAR.Value:=QYProdutosComp.FieldByName('PRC_BAIXAR').AsString;
    DM.TBProducaoItensCompPRO_ESTOQUEATUAL.Value:=DM.TBProdutosPRO_ESTOQUEATUAL.Value;
    DM.TBProducaoItensCompPRO_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBProducaoItensCompPRO_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
    //a linha acima substitui as de baixo.
    //if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    //DM.TBProducaoItensCompPDC_BAIXAR.Value:='N' else
    //begin
    //  if DM.TBProdutosPRO_TIPO.Value='S' then
    //  DM.TBProducaoItensCompPDC_BAIXAR.Value:='N' else //produto do tipo serviço nao precisa baixar.
    //  DM.TBProducaoItensCompPDC_BAIXAR.Value:='S';
    //end;
    DM.TBProducaoItensComp.Post;
    if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    InserirComposicao(DM.TBProdutosPRO_CODIGO.Value);
    QYProdutosComp.Next;
  end;
  Screen.Cursor:=crDefault;
  QYProdutosComp.Destroy;
  DM.TBProdutos.EnableControls;
  DM.TBProducaoItensComp.EnableControls;
end;

//########################################
//metodo novo                           //
//########################################
procedure TFormProducaoItens.PngBitBtn1Click(Sender: TObject);
begin
  if DM.TBProdutosPRO_COMPOSTO.Value='N' then
  begin
    MessageDlg('Somente produtos compostos podem ser selecionados na ordem de produção.',mtError,[mbOk],0);
    DBEdit5.SelectAll;
    DBEdit5.SetFocus;
    Exit;
  end;

  if DM.TBProducaoItensPDI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');

  if DM.TBParametrosPAR_VENDERCOMPOSTO.Value='P' then //pergunta o que quer produzir.
  begin
    if MessageDlg('Deseja produzir a composição?'+#13#10#13#10+'Clique em SIM para produzir a composição ou NÃO para produzir somente o produto composto.',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    ProdutoComposto else
    begin
      //ProdutoSimples;
      DM.TBProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
      DM.TBProducaoItens.Post;
      InserirComposicao_com_nivel(DM.TBProducaoItensPDI_PRODUTO.Value,0); //inclui os produtos na tabela ProducaoItensComp.
    end;
  end else
  begin   //ta certo?
    DM.TBProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
    DM.TBProducaoItens.Post;
    InserirComposicao_com_nivel(DM.TBProducaoItensPDI_PRODUTO.Value,0); //inclui os produtos na tabela ProducaoItensComp.
  end;

  Close;
end;

procedure TFormProducaoItens.InserirComposicao_com_nivel(Produto, Nivel: Integer);
var QYProdutosComp: TFDQuery;
begin
  QYProdutosComp:=TFDQuery.Create(Self);
  QYProdutosComp.Connection:=DM.FDConnection1;
  QYProdutosComp.SQL.Clear;
  QYProdutosComp.SQL.Add('select * from PRODUTOSCOMP where PRC_PRODUTO=:codigo order by PRC_ORDEM desc'); //desc pq daí aparece certo logo após inserir os itens.
  QYProdutosComp.ParamByName('codigo').AsInteger:=Produto;
  QYProdutosComp.Open;
  QYProdutosComp.First;
  DM.TBProdutos.DisableControls;
  DM.TBProducaoItensComp.DisableControls;
  Screen.Cursor:=crHourGlass;
  while not QYProdutosComp.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=QYProdutosComp.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;

    DM.TBProducaoItensComp.Insert;
    DM.TBProducaoItensCompPDC_BAIXAR.Value:=QYProdutosComp.FieldByName('PRC_BAIXAR').AsString;
    DM.TBProducaoItensCompPDC_COMPOSTO.Value:=DM.TBProdutosPRO_COMPOSTO.Value;
    DM.TBProducaoItensCompPDC_ORDEM.Value:=QYProdutosComp.FieldByName('PRC_ORDEM').AsInteger;
    DM.TBProducaoItensCompPDC_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProducaoItensCompPDC_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*DM.TBProducaoItensPDI_QUANTIDADE.Value; //multiplica pela quantidade do produto composto.
    DM.TBProducaoItensCompPDC_QUANTIDADEUNITARIA.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat; //quantidade para uma unidade.

    //campos derivados.
    DM.TBProducaoItensCompPRO_ESTOQUEATUAL.Value:=DM.TBProdutosPRO_ESTOQUEATUAL.Value;
    DM.TBProducaoItensCompPRO_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBProducaoItensCompPRO_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;

    DM.TBProducaoItensComp.Post;

    if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    begin
      if Nivel < DM.TBParametrosPAR_QTDENIVEISCOMPOSTO.Value then
      InserirComposicao_com_nivel(DM.TBProdutosPRO_CODIGO.Value,Nivel + 1);
    end;
    QYProdutosComp.Next;
  end;
  Screen.Cursor:=crDefault;
  QYProdutosComp.Destroy;
  DM.TBProdutos.EnableControls;
  DM.TBProducaoItensComp.EnableControls;
end;

end.
