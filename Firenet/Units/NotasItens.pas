unit NotasItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  ComCtrls, ImgList, Menus, PngBitBtn, PngSpeedButton, System.ImageList,
  System.UITypes, PngImageList;

type
  TFormNotasItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    SpeedButton1: TPngSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label74: TLabel;
    Label29: TLabel;
    Label75: TLabel;
    Label30: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    TabSheet2: TTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    Label68: TLabel;
    SpeedButton24: TPngSpeedButton;
    Label41: TLabel;
    DBEdit27: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit39: TDBEdit;
    TabSheet3: TTabSheet;
    Label69: TLabel;
    SpeedButton23: TPngSpeedButton;
    Label71: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit64: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    TabSheet4: TTabSheet;
    Label72: TLabel;
    Label70: TLabel;
    SpeedButton25: TPngSpeedButton;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    TabSheet5: TTabSheet;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    SpeedButton27: TPngSpeedButton;
    Label51: TLabel;
    DBEdit36: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit47: TDBEdit;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBComboBox2: TDBComboBox;
    PngSpeedButton1: TPngSpeedButton;
    Atalhos1: TMenuItem;
    ValorUnitario1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    DescPorc1: TMenuItem;
    DescValor1: TMenuItem;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    Label31: TLabel;
    Label58: TLabel;
    DBEdit15: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label67: TLabel;
    DBComboBox3: TDBComboBox;
    Label76: TLabel;
    DBEdit61: TDBEdit;
    Label77: TLabel;
    DBEdit62: TDBEdit;
    Label78: TLabel;
    DBEdit68: TDBEdit;
    DBEdit73: TDBEdit;
    Label79: TLabel;
    DBEdit74: TDBEdit;
    Label80: TLabel;
    DBEdit76: TDBEdit;
    Label82: TLabel;
    DBEdit75: TDBEdit;
    Label81: TLabel;
    Label73: TLabel;
    DBComboBox4: TDBComboBox;
    Label83: TLabel;
    DBEdit77: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    Label84: TLabel;
    DBEdit78: TDBEdit;
    PngImageList1: TPngImageList;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBComboBox6: TDBComboBox;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    Label106: TLabel;
    DBEdit103: TDBEdit;
    Label21: TLabel;
    DBComboBox7: TDBComboBox;
    TabSheet9: TTabSheet;
    Label107: TLabel;
    DBComboBox11: TDBComboBox;
    Label108: TLabel;
    DBEdit104: TDBEdit;
    Label109: TLabel;
    DBEdit105: TDBEdit;
    Label110: TLabel;
    DBEdit106: TDBEdit;
    Label111: TLabel;
    DBEdit107: TDBEdit;
    Label112: TLabel;
    DBEdit108: TDBEdit;
    DBEdit102: TDBEdit;
    Label105: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    DBEdit109: TDBEdit;
    Label113: TLabel;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    Label114: TLabel;
    DBEdit112: TDBEdit;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53Exit(Sender: TObject);
    procedure DBEdit53KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure DBEdit64Exit(Sender: TObject);
    procedure DBEdit64KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure DBEdit65KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton25Click(Sender: TObject);
    procedure DBEdit71Exit(Sender: TObject);
    procedure DBEdit71KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton27Click(Sender: TObject);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit66KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit67KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit49Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure DBEdit50Exit(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure ValorUnitario1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DescPorc1Click(Sender: TObject);
    procedure DescValor1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit53Change(Sender: TObject);
    procedure DBEdit52Enter(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit64Enter(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit109KeyPress(Sender: TObject; var Key: Char);
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
  FormNotasItens: TFormNotasItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, Main, ProdutosLoc, Funcoes1, LotesLoc, NaturezasLoc,
  DataModSearch, NotasAlterarDescontoItem, EnderecosCidadesLoc, EnderecosPaisesLoc, BeneficiosLoc, FuncoesFirenet,
  FireDAC.Comp.Client;
{$R *.dfm}

procedure TFormNotasItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
      DM.TBNotasItens.Insert;
      DM.TBNotasItensNOI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
      DM.TBNotasItensNOI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
      DM.TBNotasItensNOI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value; //testar com os produtos compostos.
      DM.TBNotasItensNOI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value; //testar com os produtos compostos.
      DM.TBNotasItensNOI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBNotasItensNOI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBNotasItensNOI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
      DM.TBNotasItensNOI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
      DM.TBNotasItensNOI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBNotasItensNOI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
      DM.TBNotasItensNOI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
      DM.TBNotasItensNOI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
      DM.TBNotasItensNOI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
      DM.TBNotasItensNOI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
      DM.TBNotasItensNOI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
      DM.TBNotasItensNOI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
      if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then
      begin
        DM.TBNotasItensNOI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value; //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
        DM.TBNotasItensNAT_DESCRICAO.Clear;
      end;
      DM.TBNotasItensNOI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
      DM.TBNotasItensNOI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
      DM.TBNotasItensNOI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
      if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
      DM.TBNotasItensNOI_COMISSAO.Value:=DM.TBNotasNOT_COMISSAO.Value else
      DM.TBNotasItensNOI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBNotasItensNOI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
      DM.TBNotasItensNOI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
      DM.TBNotasItensNOI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
      DM.TBNotasItensNOI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
      DM.TBNotasItensNOI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
      DM.TBNotasItensNOI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
      DM.TBNotasItensNOI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
      DM.TBNotasItensNOI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
      begin
        if DM.TBNotasNOT_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end else
      begin
        if DM.TBNotasNOT_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end;
      DM.TBNotasItensNOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBNotasItensNOI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
      DM.TBNotasItensNOI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
      DM.TBNotasItensNOI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
      DM.TBNotasItensNOI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
      DM.TBNotasItensNOI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
      DM.TBNotasItensNOI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
      DM.TBNotasItensNOI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
      DM.TBNotasItensNOI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
      DM.TBNotasItensNOI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
      DM.TBNotasItensNOI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
      DM.TBNotasItensNOI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM.TBNotasItensNOI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBNotasItensNOI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
      DM.TBNotasItensNOI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      DM.TBNotasItensNOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM.TBNotasItensNOI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
      DM.TBNotasItensNOI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      if DM.TBNotasNOT_TABELAPRECO.Value='V' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='1' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='2' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='3' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='4' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='5' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='6' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

      DM.TBNotasItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
      DM.TBNotasItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
      DM.TBNotasItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
      DM.TBNotasItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
      DM.TBNotasItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
      DM.TBNotasItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
      DM.TBNotasItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormNotasItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM.TBNotasItensNOI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM.TBNotasItens.Cancel; //cancela, pois o produto é composto.
  DM.TBNotasItens.DisableControls;
  DM.TBNotas.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM.TBNotas.EnableControls;
  DM.TBNotasItens.EnableControls;
end;

procedure TFormNotasItens.SelecionarProduto;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNotasNOT_ESTADO.Value,[]);
  DM.TBNotasItensNOI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
  DM.TBNotasItensNOI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
  DM.TBNotasItensNOI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
  DM.TBNotasItensNOI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;
  if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
  begin
    DM.TBNotasItensNOI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBNotasItensNOI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBNotasItensNOI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBNotasItensNOI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
  end else
  begin
    DM.TBNotasItensNOI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBNotasItensNOI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
    DM.TBNotasItensNOI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBNotasItensNOI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
  end;
  DM.TBNotasItensNOI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
  DM.TBNotasItensNOI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
  DM.TBNotasItensNOI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
  DM.TBNotasItensNOI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
  DM.TBNotasItensNOI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
  DM.TBNotasItensNOI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
  //DM.TBNotasItensNOI_ALMOXARIFADO.Value:=
  DM.TBNotasItensNOI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
  if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then
  begin
    DM.TBNotasItensNOI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value; //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
    DM.TBNotasItensNAT_DESCRICAO.Clear;
  end;
  DM.TBNotasItensNOI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
  DM.TBNotasItensNOI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
  DM.TBNotasItensNOI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
  if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
  DM.TBNotasItensNOI_COMISSAO.Value:=DM.TBNotasNOT_COMISSAO.Value else
  DM.TBNotasItensNOI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
  DM.TBNotasItensNOI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
  DM.TBNotasItensNOI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
  DM.TBNotasItensNOI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
  DM.TBNotasItensNOI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
  DM.TBNotasItensNOI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
  DM.TBNotasItensNOI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
  DM.TBNotasItensNOI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
  DM.TBNotasItensNOI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
  begin
    if DM.TBNotasNOT_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end else
  begin
    if DM.TBNotasNOT_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end;
  DM.TBNotasItensNOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  DM.TBNotasItensNOI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
  DM.TBNotasItensNOI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
  DM.TBNotasItensNOI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
  DM.TBNotasItensNOI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
  DM.TBNotasItensNOI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
  DM.TBNotasItensNOI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
  DM.TBNotasItensNOI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
  DM.TBNotasItensNOI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
  DM.TBNotasItensNOI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
  DM.TBNotasItensNOI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
  DM.TBNotasItensNOI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  DM.TBNotasItensNOI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBNotasItensNOI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
  //DM.TBNotasItensNOI_QUANTIDADE.Value:=
  DM.TBNotasItensNOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
  DM.TBNotasItensNOI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
  DM.TBNotasItensNOI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  if DM.TBNotasNOT_TABELAPRECO.Value='V' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='1' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='2' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='3' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='4' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='5' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
  if DM.TBNotasNOT_TABELAPRECO.Value='6' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

  DM.TBNotasItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
  DM.TBNotasItensICM_CALCULACREDITOSN.Value:=DM.TBProdutosICM_CALCULACREDITOSN.Value;
  DM.TBNotasItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
  DM.TBNotasItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
  DM.TBNotasItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
  DM.TBNotasItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
  DM.TBNotasItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
end;

procedure TFormNotasItens.LimparCamposProduto;
begin
  DM.TBNotasItensNOI_ALIQCOFINS.Clear;
  DM.TBNotasItensNOI_ALIQCOFINSST.Clear;
  DM.TBNotasItensNOI_ALIQFCP.Clear;
  DM.TBNotasItensNOI_ALIQFCPST.Clear;
  DM.TBNotasItensNOI_ALIQICMS.Clear;
  DM.TBNotasItensNOI_ALIQICMSADICST.Clear;
  DM.TBNotasItensNOI_ALIQICMSINTER.Clear;
  DM.TBNotasItensNOI_ALIQICMSINTERPART.Clear;
  DM.TBNotasItensNOI_ALIQICMSRED.Clear;
  DM.TBNotasItensNOI_ALIQICMSST.Clear;
  DM.TBNotasItensNOI_ALIQIPI.Clear;
  DM.TBNotasItensNOI_ALIQISS.Clear;
  DM.TBNotasItensNOI_ALIQPIS.Clear;
  DM.TBNotasItensNOI_ALIQPISST.Clear;
  DM.TBNotasItensNOI_BASEICMSST.Clear;
  DM.TBNotasItensNOI_BENEFICIO.Clear;
  DM.TBNotasItensNOI_CEST.Clear;
  DM.TBNotasItensNOI_CLASSFISCAL.Clear;
  DM.TBNotasItensNOI_CODIGOBARRAS.Clear;
  DM.TBNotasItensNOI_CODIGOFAB.Clear;
  DM.TBNotasItensNOI_COMISSAO.Clear;
  DM.TBNotasItensNOI_COMPOEBASEICMS.Clear;
  DM.TBNotasItensNOI_COMPOEBASEICMSST.Clear;
  DM.TBNotasItensNOI_CONVERSAO.Clear;
  DM.TBNotasItensNOI_CSTCOFINS.Clear;
  DM.TBNotasItensNOI_CSTICMS.Clear;
  DM.TBNotasItensNOI_CSTIPI.Clear;
  DM.TBNotasItensNOI_CSTPIS.Clear;
  DM.TBNotasItensNOI_DESCRICAO.Clear;
  DM.TBNotasItensNOI_ENQUADRAMENTOIPI.Clear;
  DM.TBNotasItensNOI_FCI.Clear;
  DM.TBNotasItensNOI_INCENTIVOISS.Clear;
  DM.TBNotasItensNOI_INDICADORISS.Clear;
  DM.TBNotasItensNOI_LOCALIZACAO.Clear;
  DM.TBNotasItensNOI_MODICMS.Clear;
  DM.TBNotasItensNOI_MODICMSST.Clear;
  DM.TBNotasItensNOI_ORIGEM.Clear;
  DM.TBNotasItensNOI_PESO.Clear;
  DM.TBNotasItensNOI_PRECOCUSTO.Clear;
  DM.TBNotasItensNOI_PRECOCUSTOTOTAL.Clear;
  DM.TBNotasItensNOI_PRODUTO.Clear;
  DM.TBNotasItensNOI_PRODUTOREAL.Clear;
  DM.TBNotasItensNOI_TIPO.Clear;
  DM.TBNotasItensNOI_TIPOISS.Clear;
  DM.TBNotasItensNOI_UNIDADE.Clear;
  DM.TBNotasItensNOI_VALORUNIT.Clear;

  DM.TBNotasItensCLF_DESCRICAO.Clear;
  DM.TBNotasItensICM_DESCRICAO.Clear;
  DM.TBNotasItensIPI_DESCRICAO.Clear;
  DM.TBNotasItensISS_DESCRICAO.Clear;
  DM.TBNotasItensPIS_DESCRICAO.Clear;
  DM.TBNotasItensPIS_DESCRICAO1.Clear; //cofins
end;

procedure TFormNotasItens.PngSpeedButton1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    DBEdit10.ReadOnly:=False;
    DBEdit10.Color:=clWindow;
    DBEdit10.SetFocus;
  end;
end;

procedure TFormNotasItens.PngSpeedButton2Click(Sender: TObject);
var Senha: String;
begin
  if DM.TBNotasItensNOI_QUANTIDADETROCA.Value<>0 then
  begin
    MessageDlg('Não é possível informar desconto para itens que contém troca.',mtError,[mbOk],0);
    Exit;
  end;
  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormNotasAlterarDescontoItem, FormNotasAlterarDescontoItem);
    DescontoEmValor:=False;
    FormNotasAlterarDescontoItem.Label1.Caption:='% de Desconto:';
    FormNotasAlterarDescontoItem.Edit1.Text:=DM.TBNotasItensNOI_DESCVALOR.AsString;
    FormNotasAlterarDescontoItem.ShowModal;
    FormNotasAlterarDescontoItem.Free;
    FormNotasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormNotasItens.PngSpeedButton3Click(Sender: TObject);
var Senha: String;
begin
  if DM.TBNotasItensNOI_QUANTIDADETROCA.Value<>0 then
  begin
    MessageDlg('Não é possível informar desconto para itens que contém troca.',mtError,[mbOk],0);
    Exit;
  end;
  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormNotasAlterarDescontoItem, FormNotasAlterarDescontoItem);
    DescontoEmValor:=True;
    FormNotasAlterarDescontoItem.Label1.Caption:='Valor do Desconto:';
    FormNotasAlterarDescontoItem.Edit1.Text:=DM.TBNotasItensNOI_DESCVALOR.AsString;
    FormNotasAlterarDescontoItem.ShowModal;
    FormNotasAlterarDescontoItem.Free;
    FormNotasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormNotasItens.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBNotasItensNOI_CIDADEISS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormNotasItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBNotasItensNOI_PAISISS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormNotasItens.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBNotasItensNOI_BENEFICIO.Value:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormNotasItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormNotasItens.ProdutoSimples;
begin
  DM.TBNotasItensNOI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM.TBNotasItens.Post;
end;

procedure TFormNotasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBNotasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
//feito checagem quando finalizar a venda.      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) then
//      begin
//        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
//        DM.TBNotasItensNOI_PRODUTO.Clear;
//        DMS.QYProdutos.Close;
//        Exit;
//      end;
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

procedure TFormNotasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNotasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton9Click(Sender: TObject);
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
    if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) then
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

procedure TFormNotasItens.ValorUnitario1Click(Sender: TObject);
begin
  PngSpeedButton1.Click;
end;

procedure TFormNotasItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False); //parametro sem uso.

{  DM.TBNotasItensNOI_VALORTOTAL.Value:=DM.TBNotasItensNOI_QUANTIDADE.Value * DM.TBNotasItensNOI_VALORUNIT.Value;
  //base de calculo do icms com a aliquota de redução da base.
  DM.TBNotasItensNOI_BASEICMS.Value:=Decimais(DM.TBNotasItensNOI_VALORTOTAL.Value-((DM.TBNotasItensNOI_VALORTOTAL.Value/100)*DM.TBNotasItensNOI_ALIQICMSRED.Value),2);
  //calcula o valor do ICMS, ISS e IPI.
  DM.TBNotasItensNOI_VALORICMS.Value:=Decimais(((DM.TBNotasItensNOI_BASEICMS.Value/100)*DM.TBNotasItensNOI_ALIQICMS.Value),2);
  DM.TBNotasItensNOI_VALORISS.Value:=Decimais(((DM.TBNotasItensNOI_VALORTOTAL.Value/100)*DM.TBNotasItensNOI_ALIQISS.Value),2);
  DM.TBNotasItensNOI_VALORIPI.Value:=Decimais(((DM.TBNotasItensNOI_VALORTOTAL.Value/100)*DM.TBNotasItensNOI_ALIQIPI.Value),2);}
end;

procedure TFormNotasItens.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNotasItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotasItens.BitBtn1Click(Sender: TObject);
begin
  if DM.TBNotasItensNOI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBNotasItensNOI_QUANTIDADE.Value > DM.TBProdutosPRO_ESTOQUEATUAL.Value) then
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
  if (DM.TBNotasItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
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

procedure TFormNotasItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNotasItens.State in [dsInsert, dsEdit] then
  DM.TBNotasItens.Cancel;
end;

procedure TFormNotasItens.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormNotasItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNotasItens.FormShow(Sender: TObject);
begin
  if (DM.TBNotasItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormNotasItens); //habilita o campo valor unitario caso esteja liberado para o usuário.
  end;
  if (DM.TBNotasItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) and (DM.TBNotasNOT_ENTRADASAIDA.Value='S') then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM.TBNotasItensNOI_PRODUTO.Clear;
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

procedure TFormNotasItens.SpeedButton1Click(Sender: TObject);
begin
  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=DM.TBNotasItensNOI_PRODUTO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    if FormLotesLoc.QYLotesLOT_PRODUTO.Value<>DM.TBNotasItensNOI_PRODUTO.Value then
    MessageDlg('O lote selecionado não é do produto selecionado.',mtError,[mbOk],0) else
    DM.TBNotasItensNOI_LOTE.Value:=FormLotesLoc.QYLotesLOT_LOTE.Value;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormNotasItens.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasItensNOI_LOTE.Clear;
end;

procedure TFormNotasItens.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit2Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False); //parametro sem uso.
end;

procedure TFormNotasItens.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit53Change(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit53Exit(Sender: TObject);
begin
  if (DM.TBNotasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNotasItensNOI_CFOP.Clear;
    DM.TBNotasItensNAT_DESCRICAO.Clear;
    DM.TBNotasItensNAT_CALCULACOMISSAO.Clear;
    DM.TBNotasItensNAT_CALCULACREDITOSN.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBNotasItensNOI_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBNotasItensNAT_DESCRICAO.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBNotasItensNAT_CALCULACOMISSAO.Value:=DMS.QYNaturezasNAT_CALCULACOMISSAO.Value;
      DM.TBNotasItensNAT_CALCULACREDITOSN.Value:=DMS.QYNaturezasNAT_CALCULACREDITOSN.Value;
    end else
    begin
      DM.TBNotasItensNOI_CFOP.Clear;
      DM.TBNotasItensNAT_DESCRICAO.Clear;
      DM.TBNotasItensNAT_CALCULACOMISSAO.Clear;
      DM.TBNotasItensNAT_CALCULACREDITOSN.Clear;
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNotasItens.DBEdit53KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormNotasItens.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBNotasItens.Edit;
    DM.TBNotasItensNOI_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBNotasItensNAT_DESCRICAO.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBNotasItensNAT_CALCULACOMISSAO.Value:=DMS.QYNaturezasNAT_CALCULACOMISSAO.Value;
    DM.TBNotasItensNAT_CALCULACREDITOSN.Value:=DMS.QYNaturezasNAT_CALCULACREDITOSN.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNotasItens.DBEdit52Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit52Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit52,DBEdit55,DBEdit102,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit52KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormNotasItens.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton4Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit52,DBEdit55,DBEdit102,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit20Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit20Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit20,DBEdit26,DBEdit111,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormNotasItens.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton2Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit20,DBEdit26,DBEdit111,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit63KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormNotasItens.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit33,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit64KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormNotasItens.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit33,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit65KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormNotasItens.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotasItens.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit46,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit71KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormNotasItens.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotasItens.DescPorc1Click(Sender: TObject);
begin
  PngSpeedButton2.Click;
end;

procedure TFormNotasItens.DescValor1Click(Sender: TObject);
begin
  PngSpeedButton3.Click;
end;

procedure TFormNotasItens.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit46,DM.TBNotasItens);
end;

procedure TFormNotasItens.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit66KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit43KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit67KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotasItens.DBEdit49Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False);
end;

procedure TFormNotasItens.DBEdit48Exit(Sender: TObject);
begin
  DM.TBNotasItensNOI_DESCPORC.Value:=(100.0/((DM.TBNotasItensNOI_QUANTIDADE.Value*DM.TBNotasItensNOI_VALORUNIT.Value)+
                                              DM.TBNotasItensNOI_VALORFRETE.Value+
                                              DM.TBNotasItensNOI_VALORSEGURO.Value+
                                              DM.TBNotasItensNOI_VALORACESSORIAS.Value))*DM.TBNotasItensNOI_DESCVALOR.Value;
  DM.CalcularTotaisNotaItens(False);
end;

procedure TFormNotasItens.DBEdit109KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasItensNOI_BENEFICIO.Clear;
end;

procedure TFormNotasItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False); //parametro sem uso.
end;

procedure TFormNotasItens.DBEdit51Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False); //parametro sem uso.
end;

procedure TFormNotasItens.DBEdit50Exit(Sender: TObject);
begin
  DM.CalcularTotaisNotaItens(False); //parametro sem uso.
end;

procedure TFormNotasItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

initialization
  RegisterClass(TFormNotasItens);

finalization
  UnRegisterClass(TFormNotasItens);

end.
