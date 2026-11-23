unit ComandasItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  PngBitBtn, PngSpeedButton, ExtCtrls, System.UITypes;

type
  TFormComandasItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
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
    Label22: TLabel;
    DBText6: TDBText;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComandasItens: TFormComandasItens;

implementation
uses DataMod, DataMod2, ProdutosLoc, DataModSearch, Funcoes1;
{$R *.dfm}

procedure TFormComandasItens.BitBtn1Click(Sender: TObject);
begin
  //realizar as contas dos impostos aki ou no before post da tabela?.
  if DM2.TBComandasItensCDI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='S','Não é permitida a venda de produtos compostos.');

  DM2.TBComandasItens.Post;
  Close;
end;

procedure TFormComandasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComandasItens.DBEdit10Exit(Sender: TObject);
begin
  DM2.CalcularTotaisComandaItens(False); //parametro sem uso.
end;

procedure TFormComandasItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasItens.DBEdit12Exit(Sender: TObject);
begin
  DM2.CalcularTotaisComandaItens(False); //parametro sem uso.
end;

procedure TFormComandasItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComandasItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBComandasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBComandasItensCDI_PRODUTO.Clear;
    DM2.TBComandasItensCDI_DESCRICAO.Clear;
    DM2.TBComandasItensCDI_TIPO.Clear;
    DM2.TBComandasItensCDI_VALORUNITARIO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBComandasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
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

      DM2.TBComandasItensCDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM2.TBComandasItensCDI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM2.TBComandasItensCDI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM2.TBComandasItensCDI_VALORUNITARIO.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
    end else
    begin
      DM2.TBComandasItensCDI_PRODUTO.Clear;
      DM2.TBComandasItensCDI_DESCRICAO.Clear;
      DM2.TBComandasItensCDI_TIPO.Clear;
      DM2.TBComandasItensCDI_VALORUNITARIO.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormComandasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormComandasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComandasItens.SpeedButton9Click(Sender: TObject);
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
    DM2.TBComandasItens.Edit;
    DM2.TBComandasItensCDI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM2.TBComandasItensCDI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM2.TBComandasItensCDI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
    DM2.TBComandasItensCDI_VALORUNITARIO.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
