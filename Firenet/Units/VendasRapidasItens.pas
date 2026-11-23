unit VendasRapidasItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, StdCtrls, Mask, DBCtrls, Buttons, PngBitBtn,
  PngSpeedButton, ExtCtrls, System.UITypes, System.ImageList;

type
  TFormVendasRapidasItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    DBEdit32: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
  private
    { Private declarations }
    procedure InserirProdutoComposto;
    procedure InserirItens(Produto: Integer; Quantidade: Extended);
    procedure SelecionarProduto;
    procedure LimparCamposProduto;

    procedure ProdutoComposto;
    procedure ProdutoSimples;
  public
    { Public declarations }
  end;

var
  FormVendasRapidasItens: TFormVendasRapidasItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, DB, VendasRapidas, DataModSearch, ProdutosLoc,
  FireDAC.Comp.Client, Funcoes1;
{$R *.dfm}

procedure TFormVendasRapidasItens.LimparCamposProduto;
begin
  FormVendasRapidas.TBVendasItensVEI_DESCRICAO.Clear;
  FormVendasRapidas.TBVendasItensVEI_PRODUTO.Clear;
  FormVendasRapidas.TBVendasItensVEI_UNIDADE.Clear;
  FormVendasRapidas.TBVendasItensVEI_VALORUNIT.Clear;
end;

procedure TFormVendasRapidasItens.SelecionarProduto;
begin
  FormVendasRapidas.TBVendasItensVEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  FormVendasRapidas.TBVendasItensVEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  //DM.TBVendasItensVEI_QUANTIDADE.Value:=
  FormVendasRapidas.TBVendasItensVEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  FormVendasRapidas.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
end;

procedure TFormVendasRapidasItens.ProdutoSimples;
begin
  FormVendasRapidas.TBVendasItens.Post;
end;

procedure TFormVendasRapidasItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormVendasRapidasItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM.TBVendasItensVEI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  FormVendasRapidas.TBVendasItens.Cancel; //cancela, pois o produto é composto.
  FormVendasRapidas.TBVendasItens.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  FormVendasRapidas.TBVendasItens.EnableControls;
end;

procedure TFormVendasRapidasItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
    if (DM.TBProdutosPRO_COMPOSTO.Value='S') and (QtdeNiveis<=DM.TBParametrosPAR_QTDENIVEISCOMPOSTO.Value) then //se quantidade níveis é menor ou igual, inclui o produto composto, senão inclui o próprio produto.
    begin
      InserirItens(DM.TBProdutosPRO_CODIGO.Value,Quantidade);
    end else
    begin
      FormVendasRapidas.TBVendasItens.Insert;
      FormVendasRapidas.TBVendasItensVEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      FormVendasRapidas.TBVendasItensVEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      FormVendasRapidas.TBVendasItensVEI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      FormVendasRapidas.TBVendasItensVEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      FormVendasRapidas.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
      FormVEndasRapidas.TBVendasItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormVendasRapidasItens.BitBtn1Click(Sender: TObject);
begin
  if FormVendasRapidas.TBVendasItensVEI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe almoxarifado cadastrado para este produto.');

  //#########################################################################################//
  // O produto é composto.                                                                   //
  //#########################################################################################//
  if (FormVendasRapidas.TBVendasItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
  begin
    if DM.TBParametrosPAR_VENDERCOMPOSTO.Value='S' then //pode vender o produto composto.
    ProdutoSimples else
    if DM.TBParametrosPAR_VENDERCOMPOSTO.Value='N' then //só pode vender a composição do produto.
    ProdutoComposto else
    if DM.TBParametrosPAR_VENDERCOMPOSTO.Value='P' then //pergunta o que quer vender.
    begin
      if MessageDlg('Este produto é composto. Deseja vender a composição?'+#13#10#13#10+'Clique em SIM para vender a composição ou NÃO para vender somente o produto composto.',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      ProdutoComposto else
      ProdutoSimples;
    end;
  end else
  //#########################################################################################//
  // O produto é simples.                                                                    //
  //#########################################################################################//
  ProdutoSimples;
  Close;
end;

procedure TFormVendasRapidasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasRapidasItens.DBEdit10Exit(Sender: TObject);
begin
  FormVendasRapidas.TBVendasItensVEI_VALORTOTAL.Value:=FormVendasRapidas.TBVendasItensVEI_QUANTIDADE.Value*FormVendasRapidas.TBVendasItensVEI_VALORUNIT.Value;
end;

procedure TFormVendasRapidasItens.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormVendasRapidasItens.DBEdit12Exit(Sender: TObject);
begin
  FormVendasRapidas.TBVendasItensVEI_VALORTOTAL.Value:=FormVendasRapidas.TBVendasItensVEI_QUANTIDADE.Value*FormVendasRapidas.TBVendasItensVEI_VALORUNIT.Value;
end;

procedure TFormVendasRapidasItens.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormVendasRapidasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasRapidasItens.DBEdit5Exit(Sender: TObject);
begin
  if (FormVendasRapidas.TBVendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (FormVendasRapidas.TBVendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
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
      SelecionarProduto;
    end else
    begin
      LimparCamposProduto;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormVendasRapidasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormVendasRapidasItens.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRapidasItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FormVendasRapidas.TBVendasItens.State in [dsInsert, dsEdit] then
  FormVendasRapidas.TBVendasItens.Cancel;
end;

procedure TFormVendasRapidasItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasRapidasItens.FormShow(Sender: TObject);
begin
  if (FormVendasRapidas.TBVendasItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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
      //localiza o almoxarifado padrao ... o codigo do produto vem  do datasource desta tabela. (DSProdutos).
      DM.TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value,[]);
      SelecionarProduto;
    end;
    FormProdutosLoc.Free;
    FormProdutosLoc:=nil;
  end;
end;

procedure TFormVendasRapidasItens.SpeedButton9Click(Sender: TObject);
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
    SelecionarProduto;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
