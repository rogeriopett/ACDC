unit ProdutosComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, DB, Mask, Menus, Buttons, DBSBtn,
  ExtCtrls, ImgList, PngImageList, PngSpeedButton, ComCtrls, System.ImageList,
  System.UITypes;

type
  TFormProdutosComp = class(TForm)
    Label2: TLabel;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    DBText3: TDBText;
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBText2: TDBText;
    DBText4: TDBText;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Bevel1: TBevel;
    ComposicaoDoProduto1Button: TPngSpeedButton;
    ComposicaoDoProduto1: TMenuItem;
    N1: TMenuItem;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBComboBox7: TDBComboBox;
    SugerirOrdenacao1: TMenuItem;
    SugerirOrdenacao1Button: TPngSpeedButton;
    PrecoDeVendaDaComposicao1Button: TPngSpeedButton;
    PrecoDeVendaDaComposicao1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ComposicaoDoProduto1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SugerirOrdenacao1Click(Sender: TObject);
    procedure PrecoDeVendaDaComposicao1Click(Sender: TObject);
  private
    { Private declarations }
    //procedure AtualizarPrecoCusto;
    procedure JaExisteNaComposicaoDoComposto(ProdutoIncluido: Integer);
  public
    { Public declarations }
  end;

var
  FormProdutosComp: TFormProdutosComp;
  JaExisteComposto: Boolean;
implementation
uses DataMod, ProdutosLoc, Funcoes1, Produtos, ProdutosCompTree, DataModSearch,
  Main, FireDAC.Comp.Client, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosComp.ComposicaoDoProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosCompTree, FormProdutosCompTree);
  FormProdutosCompTree.ShowModal;
  FormProdutosCompTree.Free;
  FormProdutosCompTree:=nil;
end;

//passado a utilizar a rotina completa de atualização de produto.
//ver o que executa ao fechar essa tela.
{procedure TFormProdutosComp.AtualizarPrecoCusto;
var CustoTotal: Currency;
  CodPro: Integer;
begin
  DM.TBProdutos.DisableControls;
  Screen.Cursor:=crHourGlass;
  CustoTotal:=0;
  CodPro:=DM.TBProdutosPRO_CODIGO.Value;
  //seleciona os produtos que compõem o produto composto.
  FormProdutos.QYProdutosComp.Close;
  FormProdutos.QYProdutosComp.ParamByName('codigo').AsInteger:=CodPro;
  FormProdutos.QYProdutosComp.Open;
  //localiza os produtos que compõem o produto composto na tabela principal e soma os preços de custo.
  while not FormProdutos.QYProdutosComp.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutos.QYProdutosComp.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;
    if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    CustoTotal:=CustoTotal+(DM.TBProdutosPRO_PRECOCUSTOCOMP.Value*FormProdutos.QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat) else
    CustoTotal:=CustoTotal+(DM.TBProdutosPRO_PRECOCUSTO.Value*FormProdutos.QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat);
    FormProdutos.QYProdutosComp.Next;
  end;
  //atualiza o preço de custo do produto composto na tabela principal.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update PRODUTOS set PRO_PRECOCUSTOCOMP=:precocustocomp where PRO_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=CodPro;
  DM.QYAux.ParamByName('precocustocomp').AsFMTBCD:=CustoTotal;
  DM.QYAux.ExecSQL;

  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=CodPro;
  DM.TBProdutos.Open;
  //...
  Screen.Cursor:=CrDefault;
  DM.TBProdutos.EnableControls;
end; }

procedure TFormProdutosComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBProdutosComp.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
    Exit;
  end;
  //altera o preço de custo.
  //agora faz pela tela de produtos, depois que destroi essa tela. AtualizarPrecoCusto;
end;

procedure TFormProdutosComp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosComp.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProdutosComp);
end;

procedure TFormProdutosComp.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosComp.JaExisteNaComposicaoDoComposto(ProdutoIncluido: Integer);
var QY: TFDQuery;
begin
  //verifica se no produto composto a ser incluido na composição existe o produto raiz.
  QY:=TFDQuery.Create(Self);
  QY.Connection:=DM.FDConnection1;
  QY.SQL.Clear;
  QY.SQL.Add('select * from PRODUTOSCOMP left join PRODUTOS on PRC_PRODUTO=PRO_CODIGO where PRC_PRODUTO=:produtoincluido');
  QY.ParamByName('produtoincluido').AsInteger:=ProdutoIncluido;
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    if QY.FieldByName('PRC_PRODUTOCOMP').AsInteger=DM.TBProdutosPRO_CODIGO.Value then
    begin
      JaExisteComposto:=True;
      Break;
    end;
    if QY.FieldByName('PRO_COMPOSTO').AsString='S' then
    begin
      JaExisteNaComposicaoDoComposto(QY.FieldByName('PRC_PRODUTOCOMP').AsInteger);
    end;

    QY.Next;
  end;
  QY.Destroy;
end;

procedure TFormProdutosComp.PrecoDeVendaDaComposicao1Click(Sender: TObject);
var ValorFinal: Currency;
begin
  AbortIf(DM.TBProdutosComp.IsEmpty,'Composição vazia');

  ValorFinal:=CalcularPrecoVendaComposto(DM.TBProdutosPRO_CODIGO.Value);
  MessageDlg('O preço de venda do produto '+DM.TBProdutosPRO_NOME.Value+' é '+Format('%m',[ValorFinal]),mtInformation,[mbOk],0);
end;

procedure TFormProdutosComp.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutosComp.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBProdutosComp.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBProdutosCompPRC_PRODUTOCOMP.Clear;
    DM.TBProdutosCompPRO_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBProdutosComp.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    if DM.TBProdutosCompPRC_PRODUTOCOMP.Value=DM.TBProdutosCompPRC_PRODUTO.Value then
    begin
      MessageDlg('Não é possível colocar o mesmo produto dentro de sua composição.',mtError,[mbOk],0);
      DM.TBProdutosCompPRC_PRODUTOCOMP.Clear;
      DM.TBProdutosCompPRO_NOME.Clear;
    end else
    begin
      DMS.QYProdutos.Close;
      DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
      DMS.QYProdutos.Open;
      if not DMS.QYProdutos.IsEmpty then
      begin
        {$REGION 'VERIFICA SE JA EXISTE'}
        //verifica se ja existe o produto selecionado no produto composto.
        if DM.TBProdutosComp.State in [dsInsert] then
        begin
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('select * from PRODUTOSCOMP where PRC_PRODUTO=:produto and PRC_PRODUTOCOMP=:produtocomp');
          DM.QYAux.ParamByName('produto').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
          DM.QYAux.ParamByName('produtocomp').AsInteger:=DM.TBProdutosCompPRC_PRODUTOCOMP.Value;
          DM.QYAux.Open;
          if not DM.QYAux.IsEmpty then
          begin
            MessageDlg('Já existe este produto nesta composição.',mtError,[mbOk],0);
            DM.TBProdutosCompPRC_PRODUTOCOMP.Clear;
            DM.TBProdutosCompPRO_NOME.Clear;
          end else
          begin
            DM.TBProdutosCompPRC_PRODUTOCOMP.Value:=DMS.QYProdutosPRO_CODIGO.Value;
            DM.TBProdutosCompPRO_NOME.Value:=DMS.QYProdutosPRO_NOME.Value;
          end;
          DM.QYAux.Close;
        end;
        {$ENDREGION}
        //verifica link circular.
        if DMS.QYProdutosPRO_COMPOSTO.Value='S' then
        begin
          JaExisteComposto:=False;
          JaExisteNaComposicaoDoComposto(DM.TBProdutosCompPRC_PRODUTOCOMP.Value);
          if JaExisteComposto then
          begin
            MessageDlg('O produto '+DM.TBProdutosPRO_NOME.Value+' também está contido no produto '+DM.TBProdutosCompPRO_NOME.Value+#13#10+#13#10+'Não é permitido compor um produto com um produto que já está compondo o mesmo produto.',mtError,[mbOk],0);
            DM.TBProdutosCompPRC_PRODUTOCOMP.Clear;
            DM.TBProdutosCompPRO_NOME.Clear;
          end;
        end;
        //...
      end else
      begin
        DM.TBProdutosCompPRC_PRODUTOCOMP.Clear;
        DM.TBProdutosCompPRO_NOME.Clear;
        MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
        (Sender as TDBEdit).SetFocus;
      end;
      DMS.QYProdutos.Close;
    end;
  end;
end;

procedure TFormProdutosComp.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProdutosComp.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosComp.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      DM.TBProdutosCompPRC_PRODUTOCOMP.Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
      DM.TBProdutosCompPRO_NOME.Value:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
    end else
    begin
      DM.TBProdutosCompPRC_PRODUTOCOMP.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutosCompPRO_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
  DBEdit5.SetFocus;
  Perform(WM_NEXTDLGCTL,0,0); //dispara evento onExit.
end;

procedure TFormProdutosComp.SugerirOrdenacao1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosComp.IsEmpty,'A composição do item está vazia.');

  if MessageDlg('Deseja recriar a ordenação da composição?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'merge into PRODUTOSCOMP PRODUTOSCOMP_DESTINO '+
      'using ( '+
      '  select '+
      '    PRC.RDB$DB_KEY as db_key, '+
      '    PRC.PRC_CODIGO, '+
      '    PRC.PRC_PRODUTO, '+
      '    row_number() over(partition by PRC.PRC_PRODUTO order by PRO.PRO_NOME) as SEQ '+
      'from PRODUTOSCOMP PRC left join PRODUTOS PRO on PRC.PRC_PRODUTOCOMP=PRO.PRO_CODIGO where PRC.PRC_PRODUTO=:codigo order by PRO.PRO_NOME) PRODUTOSCOMP_ORIGEM '+
      'on PRODUTOSCOMP_DESTINO.RDB$DB_KEY = PRODUTOSCOMP_ORIGEM.db_key '+
      'when matched then update set PRODUTOSCOMP_DESTINO.PRC_ORDEM = PRODUTOSCOMP_ORIGEM.SEQ'
    );
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
    DM.QYAux.ExecSQL;
    DM.TBProdutosComp.Close;
    DM.TBProdutosComp.Open;
  end;
end;

procedure TFormProdutosComp.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormProdutosComp);

finalization
  UnRegisterClass(TFormProdutosComp);

end.
