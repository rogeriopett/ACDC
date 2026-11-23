unit DeliveryItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList,
  PngImageList, PngBitBtn, Vcl.ExtCtrls, FireDAC.Comp.Client;

type
  TFormDeliveryItens = class(TForm)
    Bevel1: TBevel;
    Label31: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    MainMenu1: TMainMenu;
    Atalhos1: TMenuItem;
    OK1: TMenuItem;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit48: TDBEdit;
    Label52: TLabel;
    DBEdit49: TDBEdit;
    Label53: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit49Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure OK1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SelecionarProduto;
    procedure LimparCamposProduto;
    procedure ProdutoComposto;
    procedure ProdutoSimples;
    procedure InserirProdutoComposto;
    procedure InserirItens(Produto: Integer; Quantidade: Extended);
  public
    { Public declarations }
    procedure DesabilitarCampos;
  end;

var
  FormDeliveryItens: TFormDeliveryItens;
  QtdeNiveis: Integer;

implementation
uses ProdutosLoc, DataMod, DataMod2, DataModSearch, DB, Main, Funcoes1;
{$R *.dfm}

procedure TFormDeliveryItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM2.TBDeliverysDLV_STATUS.Value='F') or (DM2.TBDeliverysDLV_STATUS.Value='C') or (DM2.TBDeliverysDLV_STATUS.Value='I') then
  begin
    DM2.TBDeliverysItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormDeliveryItens.ComponentCount-1 do
    begin
      if (FormDeliveryItens.Components[I] is TDBEdit) then
      (FormDeliveryItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormDeliveryItens.Components[I] is TDBComboBox) then
      (FormDeliveryItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormDeliveryItens.Components[I] is TDBMemo) then
      (FormDeliveryItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormDeliveryItens.Components[I] is TSpeedButton) then
      (FormDeliveryItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormDeliveryItens.Components[I] is TPngSpeedButton) then
      (FormDeliveryItens.Components[I] as TPngSpeedButton).Enabled:=False;
    end;
  end;
end;

procedure TFormDeliveryItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM2.TBDeliverysItens.Cancel; //cancela, pois o produto é composto.
  DM2.TBDeliverysItens.DisableControls;
  DM2.TBDeliverys.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM2.TBDeliverys.EnableControls;
  DM2.TBDeliverysItens.EnableControls;
end;

procedure TFormDeliveryItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
      DM2.TBDeliverysItens.Insert;
      DM2.TBDeliverysItensDLI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM2.TBDeliverysItensDLI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM2.TBDeliverysItensDLI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      DM2.TBDeliverysItensDLI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;

      DM.TBVendasItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormDeliveryItens.SelecionarProduto;
begin
  DM2.TBDeliverysItensDLI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
  DM2.TBDeliverysItensDLI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM2.TBDeliverysItensDLI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
end;

procedure TFormDeliveryItens.LimparCamposProduto;
begin
  DM2.TBDeliverysItensDLI_NOME.Clear;
  DM2.TBDeliverysItensDLI_PRODUTO.Clear;
  DM2.TBDeliverysItensDLI_VALORUNIT.Clear;
end;

procedure TFormDeliveryItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormDeliveryItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormDeliveryItens.ProdutoSimples;
begin
  DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM2.TBDeliverysItens.Post;
end;

procedure TFormDeliveryItens.BitBtn1Click(Sender: TObject);
begin
  if DM2.TBDeliverysItensDLI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM2.TBDeliverysItensDLI_QUANTIDADE.Value > DM.TBProdutosPRO_ESTOQUEATUAL.Value) then
  begin
    MessageDlg('A quantidade informada é maior do que a quantidade em estoque.',mtWarning,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe almoxarifado cadastrado para este produto.');

  //#########################################################################################//
  // O produto é composto.                                                                   //
  //#########################################################################################//
  if (DM2.TBDeliverysItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
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

procedure TFormDeliveryItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDeliveryItens.DBEdit10Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDeliveryItens(False); //parametro sem uso.
end;

procedure TFormDeliveryItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryItens.DBEdit12Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDeliveryItens(False); //parametro sem uso.
end;

procedure TFormDeliveryItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryItens.DBEdit48Exit(Sender: TObject);
var Bruto: Extended;
begin
  //DM2.CalcularTotaisDeliveryItens(False); //parametro sem uso.

  if (DM2.TBDeliverysItens.State in [dsInsert, dsEdit]) then
  begin
    Bruto:=DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended * DM2.TBDeliverysItensDLI_VALORUNIT.AsExtended;
    if Bruto > 0 then    
    DM2.TBDeliverysItensDLI_DESCPORC.Value:=Decimais(((DM2.TBDeliverysItensDLI_DESCVALOR.AsExtended*100.00)/Bruto),8) else
    DM2.TBDeliverysItensDLI_DESCPORC.Value:=0;
  end;
end;

procedure TFormDeliveryItens.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryItens.DBEdit49Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDeliveryItens(False); //parametro sem uso.
end;

procedure TFormDeliveryItens.DBEdit49KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryItens.DBEdit5Exit(Sender: TObject);
var EstoqueAtual: Extended;
begin
  if (DM2.TBDeliverysItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBDeliverysItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      EstoqueAtual:=DMS.QYProdutosPRO_ESTOQUEATUAL.AsExtended;
      if DMS.QYProdutosPRO_PRODUTOREAL.Value<>0 then
      begin
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_PRODUTOREAL.Value;
        DM.TBProdutos.Open;
        EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
      end;
      DM.TBProdutos.Close; //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        LimparCamposProduto;
        Exit;
      end;

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

procedure TFormDeliveryItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormDeliveryItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBDeliverysItens.State in [dsInsert, dsEdit] then
  DM2.TBDeliverysItens.Cancel;
end;

procedure TFormDeliveryItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryItens.FormShow(Sender: TObject);
var EstoqueAtual: Extended;
begin
  if (DM2.TBDeliverysItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormDeliveryItens); //habilita o campo valor unitario caso esteja liberado para o usuário.
  end;
  if (DM2.TBDeliverysItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
  begin
    Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
    FormProdutosLoc.ShowModal;
    if ProdutosLoc.Procurar then
    begin
      if ProdutosLoc.CodigoNoFornecedor then
      begin
        EstoqueAtual:=FormProdutosLoc.QYProdutosCodigosPRO_ESTOQUEATUAL.AsExtended;
        if FormProdutosLoc.QYProdutosCodigosPRO_PRODUTOREAL.Value<>0 then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_PRODUTOREAL.Value;
          DM.TBProdutos.Open;
          EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
        end;
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
        DM.TBProdutos.Open;
      end else

      begin
        EstoqueAtual:=FormProdutosLoc.QYProdutosPRO_ESTOQUEATUAL.AsExtended;
        if FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value<>0 then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value;
          DM.TBProdutos.Open;
          EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
        end;
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
        DM.TBProdutos.Open;
      end;

      //if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM2.TBDeliverysItensDLI_PRODUTO.Clear;
        FormProdutosLoc.Free;
        FormProdutosLoc:=nil;
        Exit;
      end;
      //localiza o almoxarifado padrao ... o codigo do produto vem  do datasource desta tabela. (DSProdutos).
      DM.TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value,[]);
      SelecionarProduto;
    end;
    FormProdutosLoc.Free;
    FormProdutosLoc:=nil;
  end;
end;

procedure TFormDeliveryItens.SpeedButton9Click(Sender: TObject);
var EstoqueAtual: Extended;
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      EstoqueAtual:=FormProdutosLoc.QYProdutosCodigosPRO_ESTOQUEATUAL.AsExtended;
      if FormProdutosLoc.QYProdutosCodigosPRO_PRODUTOREAL.Value<>0 then
      begin
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_PRODUTOREAL.Value;
        DM.TBProdutos.Open;
        EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
      end;
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
    end else

    begin
      EstoqueAtual:=FormProdutosLoc.QYProdutosPRO_ESTOQUEATUAL.AsExtended;
      if FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value<>0 then
      begin
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value;
        DM.TBProdutos.Open;
        EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
      end;
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
    end;

    if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) then
    begin
      MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
      FormProdutosLoc.Free;
      FormProdutosLoc:=nil;
      Exit;
    end;
    SelecionarProduto;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
