unit ServicosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Menus, DBSBtn, ExtCtrls, StdCtrls, Mask, Grids,
  DBGrids, Buttons, DB, ComCtrls, ImgList, PngBitBtn, PngSpeedButton, System.ImageList,
  System.UITypes, PngImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormServicosItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label23: TLabel;
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
    DBEdit19: TDBEdit;
    Label24: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit20: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label74: TLabel;
    Label3: TLabel;
    Label75: TLabel;
    Label7: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label15: TLabel;
    Label68: TLabel;
    SpeedButton24: TPngSpeedButton;
    Label41: TLabel;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit39: TDBEdit;
    TabSheet3: TTabSheet;
    Label69: TLabel;
    SpeedButton23: TPngSpeedButton;
    Label71: TLabel;
    Label27: TLabel;
    Label40: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit64: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    TabSheet4: TTabSheet;
    Label72: TLabel;
    Label70: TLabel;
    SpeedButton25: TPngSpeedButton;
    Label28: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    TabSheet5: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label29: TLabel;
    SpeedButton27: TPngSpeedButton;
    Label38: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit36: TDBEdit;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    Label49: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit46: TDBEdit;
    Label50: TLabel;
    DBEdit47: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit48: TDBEdit;
    Label53: TLabel;
    DBEdit49: TDBEdit;
    Label54: TLabel;
    DBEdit50: TDBEdit;
    Label55: TLabel;
    DBComboBox2: TDBComboBox;
    PngSpeedButton1: TPngSpeedButton;
    Atalhos1: TMenuItem;
    ValorUnitario1: TMenuItem;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    DescPorc1: TMenuItem;
    DescValor1: TMenuItem;
    Label56: TLabel;
    DBEdit51: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit52: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label67: TLabel;
    DBComboBox3: TDBComboBox;
    Label81: TLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    Label82: TLabel;
    DBComboBox4: TDBComboBox;
    Label73: TLabel;
    Label76: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit68: TDBEdit;
    DBEdit73: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit74: TDBEdit;
    Label83: TLabel;
    DBEdit77: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngImageList1: TPngImageList;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
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
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    Label21: TLabel;
    DBEdit99: TDBEdit;
    Label30: TLabel;
    Label48: TLabel;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    Label84: TLabel;
    DBComboBox7: TDBComboBox;
    Label105: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    Label106: TLabel;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    QYProdutosComp: TFDQuery;
    TRProdutosComp: TFDTransaction;
    QYProdutosCompPRC_CODIGO: TIntegerField;
    QYProdutosCompPRC_PRODUTO: TIntegerField;
    QYProdutosCompPRC_PRODUTOCOMP: TIntegerField;
    QYProdutosCompPRC_QUANTIDADE: TFMTBCDField;
    QYProdutosCompPRC_USUARIO: TStringField;
    QYProdutosCompPRC_DTATUALIZACAO: TDateField;
    QYProdutosCompPRC_DTCADASTRO: TDateField;
    TabSheet9: TTabSheet;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label136: TLabel;
    Label138: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label137: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    PngBitBtn1: TPngBitBtn;
    DBEdit153: TDBEdit;
    DBEdit154: TDBEdit;
    Label118: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    TabSheet10: TTabSheet;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label139: TLabel;
    Label155: TLabel;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit152: TDBEdit;
    Label115: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    DBEdit110: TDBEdit;
    Label107: TLabel;
    Label117: TLabel;
    DBEdit106: TDBEdit;
    DBEdit113: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit66KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit67KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
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
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit64Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit114Enter(Sender: TObject);
    procedure DBEdit114Exit(Sender: TObject);
    procedure DBEdit114KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit114KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit110KeyPress(Sender: TObject; var Key: Char);
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
  FormServicosItens: TFormServicosItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, Main, ProdutosLoc, Servicos, LotesLoc, Funcoes1, NaturezasLoc, DataModSearch,
  ServicosAlterarDescontoItem, EnderecosCidadesLoc, EnderecosPaisesLoc, FuncoesFirenet,
  BeneficiosLoc;
{$R *.dfm}

procedure TFormServicosItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBServicosItensSEI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormServicosItens.ProdutoSimples;
begin
  DM.TBServicosItensSEI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM.TBServicosItens.Post;
end;

procedure TFormServicosItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
      DM.TBNfeItens.Insert;
      DM.TBServicosItensSEI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
      DM.TBServicosItensSEI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
      DM.TBServicosItensSEI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value; //testar com os produtos compostos.
      DM.TBServicosItensSEI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBServicosItensSEI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBServicosItensSEI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
      DM.TBServicosItensSEI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
      DM.TBServicosItensSEI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBServicosItensSEI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
      DM.TBServicosItensSEI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
      DM.TBServicosItensSEI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
      DM.TBServicosItensSEI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
      DM.TBServicosItensSEI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
      DM.TBServicosItensSEI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
      //DM.TBServicosItensSEI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
      if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
      begin
        if DM.TBServicosSER_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
        DM.TBServicosItensSEI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
        DM.TBServicosItensSEI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
        DM.TBServicosItensNAT_DESCRICAO.Clear;
      end;
      DM.TBServicosItensSEI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
      DM.TBServicosItensSEI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
      DM.TBServicosItensSEI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
      if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
      DM.TBServicosItensSEI_COMISSAO.Value:=DM.TBServicosSER_COMISSAO.Value else
      DM.TBServicosItensSEI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBServicosItensSEI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
      DM.TBServicosItensSEI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
      DM.TBServicosItensSEI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
      DM.TBServicosItensSEI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
      DM.TBServicosItensSEI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
      DM.TBServicosItensSEI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
      DM.TBServicosItensSEI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
      DM.TBServicosItensSEI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
      begin
        //if DM.TBServicosSER_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
        //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end else
      begin
        //if DM.TBServicosSER_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
        //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end;
      DM.TBServicosItensSEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBServicosItensSEI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
      DM.TBServicosItensSEI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
      DM.TBServicosItensSEI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
      DM.TBServicosItensSEI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
      DM.TBServicosItensSEI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
      DM.TBServicosItensSEI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
      DM.TBServicosItensSEI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
      DM.TBServicosItensSEI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
      DM.TBServicosItensSEI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
      DM.TBServicosItensSEI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
      DM.TBServicosItensSEI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM.TBServicosItensSEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBServicosItensSEI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
      DM.TBServicosItensSEI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      DM.TBServicosItensSEI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM.TBServicosItensSEI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
      DM.TBServicosItensSEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      if DM.TBServicosSER_TABELAPRECO.Value='V' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='1' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='2' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='3' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='4' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='5' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='6' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

      DM.TBServicosItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
      DM.TBServicosItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
      DM.TBServicosItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
      DM.TBServicosItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
      DM.TBServicosItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
      DM.TBServicosItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins

      DM.TBServicosItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormServicosItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM.TBServicosItensSEI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM.TBServicosItens.Cancel; //cancela, pois o produto é composto.
  DM.TBServicosItens.DisableControls;
  DM.TBServicos.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM.TBServicos.EnableControls;
  DM.TBServicosItens.EnableControls;
end;

procedure TFormServicosItens.SelecionarProduto;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBServicosSER_ESTADO.Value,[]);

  DM.TBServicosItensSEI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
  DM.TBServicosItensSEI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
  DM.TBServicosItensSEI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
  DM.TBServicosItensSEI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;
  if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
  begin
    DM.TBServicosItensSEI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBServicosItensSEI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBServicosItensSEI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBServicosItensSEI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
  end else
  begin
    DM.TBServicosItensSEI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBServicosItensSEI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
    DM.TBServicosItensSEI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBServicosItensSEI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
  end;
  DM.TBServicosItensSEI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
  DM.TBServicosItensSEI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
  DM.TBServicosItensSEI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
  DM.TBServicosItensSEI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
  DM.TBServicosItensSEI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
  DM.TBServicosItensSEI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
  //DM.TBServicosItensSEI_ALMOXARIFADO.Value:=
  //DM.TBServicosItensSEI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
  if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
  begin
    if DM.TBServicosSER_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBServicosItensSEI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
    DM.TBServicosItensSEI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
    DM.TBServicosItensNAT_DESCRICAO.Clear;
  end;
  DM.TBServicosItensSEI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
  DM.TBServicosItensSEI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
  DM.TBServicosItensSEI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
  DM.TBServicosItensSEI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
  if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
  DM.TBServicosItensSEI_COMISSAO.Value:=DM.TBServicosSER_COMISSAO.Value else
  DM.TBServicosItensSEI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
  DM.TBServicosItensSEI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
  DM.TBServicosItensSEI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
  DM.TBServicosItensSEI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
  DM.TBServicosItensSEI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
  DM.TBServicosItensSEI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
  DM.TBServicosItensSEI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
  DM.TBServicosItensSEI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
  DM.TBServicosItensSEI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
  begin
    //if DM.TBServicosSER_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
    //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end else
  begin
    //if DM.TBServicosSER_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
    //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end;
  DM.TBServicosItensSEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  DM.TBServicosItensSEI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
  DM.TBServicosItensSEI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
  DM.TBServicosItensSEI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
  DM.TBServicosItensSEI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
  DM.TBServicosItensSEI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
  DM.TBServicosItensSEI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
  DM.TBServicosItensSEI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
  DM.TBServicosItensSEI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
  DM.TBServicosItensSEI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
  DM.TBServicosItensSEI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
  DM.TBServicosItensSEI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  DM.TBServicosItensSEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBServicosItensSEI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
  //DM.TBServicosItensSEI_QUANTIDADE.Value:=
  DM.TBServicosItensSEI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
  DM.TBServicosItensSEI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
  DM.TBServicosItensSEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  if DM.TBServicosSER_TABELAPRECO.Value='V' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='1' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='2' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='3' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='4' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='5' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
  if DM.TBServicosSER_TABELAPRECO.Value='6' then DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

  //campos da reforma tributária.
  DM.TBRegrasFiscais.Close;
  DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
  DM.TBRegrasFiscais.Open;

  DM.TBServicosItensSEI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
  //DM.TBServicosItensSEI_ALIQCBSCREDPRES.Value:=
  //DM.TBServicosItensSEI_ALIQCBSDIF.Value:=
  //DM.TBServicosItensSEI_ALIQCBSEFE.Value:=
  DM.TBServicosItensSEI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
  //DM.TBServicosItensSEI_ALIQIBSCREDPRES.Value:=
  DM.TBServicosItensSEI_ALIQIBSMUN.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
  //DM.TBServicosItensSEI_ALIQIBSMUNDIF.Value:=
  //DM.TBServicosItensSEI_ALIQIBSMUNEFE.Value:=
  DM.TBServicosItensSEI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBServicosItensSEI_ALIQIBSUF.Value:=DM.TBAliquotasALI_ALIQIBSUF.Value; //alterado para pegar da tabela de aliquotas. DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
  //DM.TBServicosItensSEI_ALIQIBSUFDIF.Value:=
  //DM.TBServicosItensSEI_ALIQIBSUFEFE.Value:=
  DM.TBServicosItensSEI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBServicosItensSEI_ALIQIS.Value:=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
  //DM.TBServicosItensSEI_ALIQISESP.Value:=
  //DM.TBServicosItensSEI_BASEIBSCBS.Value:=
  //DM.TBServicosItensSEI_BASEIS.Value:=
  DM.TBServicosItensSEI_CBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value; // o mesmo para o IBS?
  DM.TBServicosItensSEI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
  DM.TBServicosItensSEI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
  DM.TBServicosItensSEI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
  DM.TBServicosItensSEI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
  DM.TBServicosItensSEI_IBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
//  DM.TBServicosItensSEI_VALORCBS.Value:=
//  DM.TBServicosItensSEI_VALORCBSCREDPRES.Value:=
//  DM.TBServicosItensSEI_VALORCBSCREDPRESSUS.Value:=
//  DM.TBServicosItensSEI_VALORCBSDEV.Value:=
//  DM.TBServicosItensSEI_VALORCBSDIF.Value:=
//  DM.TBServicosItensSEI_VALORIBS.Value:=
//  DM.TBServicosItensSEI_VALORIBSCREDPRES.Value:=
//  DM.TBServicosItensSEI_VALORIBSCREDPRESSUS.Value:=
//  DM.TBServicosItensSEI_VALORIBSMUN.Value:=
//  DM.TBServicosItensSEI_VALORIBSMUNDEV.Value:=
//  DM.TBServicosItensSEI_VALORIBSMUNDIF.Value:=
//  DM.TBServicosItensSEI_VALORIBSUF.Value:=
//  DM.TBServicosItensSEI_VALORIBSUFDEV.Value:=
//  DM.TBServicosItensSEI_VALORIBSUFDIF.Value:=
//  DM.TBServicosItensSEI_VALORIS.Value:=

  //campos derivados
  DM.TBServicosItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
  DM.TBServicosItensICM_CALCULACREDITOSN.Value:=DM.TBProdutosICM_CALCULACREDITOSN.Value;
  DM.TBServicosItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
  DM.TBServicosItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
  DM.TBServicosItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
  DM.TBServicosItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
  DM.TBServicosItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
end;

procedure TFormServicosItens.LimparCamposProduto;
begin
  DM.TBServicosItensSEI_ALIQCOFINS.Clear;
  DM.TBServicosItensSEI_ALIQCOFINSST.Clear;
  DM.TBServicosItensSEI_ALIQFCP.Clear;
  DM.TBServicosItensSEI_ALIQFCPST.Clear;
  DM.TBServicosItensSEI_ALIQICMS.Clear;
  DM.TBServicosItensSEI_ALIQICMSADICST.Clear;
  DM.TBServicosItensSEI_ALIQICMSINTER.Clear;
  DM.TBServicosItensSEI_ALIQICMSINTERPART.Clear;
  DM.TBServicosItensSEI_ALIQICMSRED.Clear;
  DM.TBServicosItensSEI_ALIQICMSST.Clear;
  DM.TBServicosItensSEI_ALIQIPI.Clear;
  DM.TBServicosItensSEI_ALIQISS.Clear;
  DM.TBServicosItensSEI_ALIQPIS.Clear;
  DM.TBServicosItensSEI_ALIQPISST.Clear;
  DM.TBServicosItensSEI_BASEICMSST.Clear;
  //DM.TBServicosItensSEI_BENEFICIO.Clear;
  DM.TBServicosItensSEI_CEST.Clear;
  DM.TBServicosItensSEI_CLASSFISCAL.Clear;
  DM.TBServicosItensSEI_CODIGOBARRAS.Clear;
  DM.TBServicosItensSEI_CODIGOFAB.Clear;
  DM.TBServicosItensSEI_COMISSAO.Clear;
  DM.TBServicosItensSEI_COMPOEBASEICMS.Clear;
  DM.TBServicosItensSEI_COMPOEBASEICMSST.Clear;
  DM.TBServicosItensSEI_CONVERSAO.Clear;
  DM.TBServicosItensSEI_CSTCOFINS.Clear;
  DM.TBServicosItensSEI_CSTICMS.Clear;
  DM.TBServicosItensSEI_CSTIPI.Clear;
  DM.TBServicosItensSEI_CSTPIS.Clear;
  DM.TBServicosItensSEI_DESCRICAO.Clear;
  DM.TBServicosItensSEI_FCI.Clear;
  DM.TBServicosItensSEI_ENQUADRAMENTOIPI.Clear;
  DM.TBServicosItensSEI_INCENTIVOISS.Clear;
  DM.TBServicosItensSEI_INDICADORISS.Clear;
  DM.TBServicosItensSEI_LOCALIZACAO.Clear;
  DM.TBServicosItensSEI_MODICMS.Clear;
  DM.TBServicosItensSEI_MODICMSST.Clear;
  DM.TBServicosItensSEI_ORIGEM.Clear;
  DM.TBServicosItensSEI_PESO.Clear;
  DM.TBServicosItensSEI_PRECOCUSTO.Clear;
  DM.TBServicosItensSEI_PRECOCUSTOTOTAL.Clear;
  DM.TBServicosItensSEI_PRODUTO.Clear;
  DM.TBServicosItensSEI_PRODUTOREAL.Clear;
  DM.TBServicosItensSEI_TIPO.Clear;
  DM.TBServicosItensSEI_TIPOISS.Clear;
  DM.TBServicosItensSEI_UNIDADE.Clear;
  DM.TBServicosItensSEI_VALORUNIT.Clear;

  DM.TBServicosItensCLF_DESCRICAO.Clear;
  DM.TBServicosItensICM_DESCRICAO.Clear;
  DM.TBServicosItensIPI_DESCRICAO.Clear;
  DM.TBServicosItensISS_DESCRICAO.Clear;
  DM.TBServicosItensPIS_DESCRICAO.Clear;
  DM.TBServicosItensPIS_DESCRICAO1.Clear; //cofins
end;

procedure TFormServicosItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBServicosItens.State in [dsInsert, dsEdit] then
  DM.TBServicosItens.Cancel;
end;

procedure TFormServicosItens.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormServicosItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicosItens.FormShow(Sender: TObject);
begin
  if (DM.TBServicosItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormServicosItens); //habilita o campo valor unitario caso esteja liberado para o usuário.
  end;
  if (DM.TBServicosItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) then //nao tem campo SER_ENTRADASAIDA.
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM.TBServicosItensSEI_PRODUTO.Clear;
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

procedure TFormServicosItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBServicosItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBServicosItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM.TBServicosItensSEI_PRODUTO.Clear;
        DMS.QYProdutos.Close;
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

procedure TFormServicosItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormServicosItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton9Click(Sender: TObject);
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

    if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
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

procedure TFormServicosItens.ValorUnitario1Click(Sender: TObject);
begin
  PngSpeedButton1.Click;
end;

procedure TFormServicosItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisServicosItens(False); //parametro sem uso.

{  DM.TBServicosItensSEI_VALORTOTAL.Value:=DM.TBServicosItensSEI_QUANTIDADE.Value * DM.TBServicosItensSEI_VALORUNIT.Value;
  //base de calculo do icms com a aliquota de redução da base.
  DM.TBServicosItensSEI_BASEICMS.Value:=Decimais(DM.TBServicosItensSEI_VALORTOTAL.Value-((DM.TBServicosItensSEI_VALORTOTAL.Value/100)*DM.TBServicosItensSEI_ALIQICMSRED.Value),2);
  //calcula o valor do ICMS, ISS e IPI.
  DM.TBServicosItensSEI_VALORICMS.Value:=Decimais(((DM.TBServicosItensSEI_BASEICMS.Value/100)*DM.TBServicosItensSEI_ALIQICMS.Value),2);
  DM.TBServicosItensSEI_VALORISS.Value:=Decimais(((DM.TBServicosItensSEI_VALORTOTAL.Value/100)*DM.TBServicosItensSEI_ALIQISS.Value),2);
  DM.TBServicosItensSEI_VALORIPI.Value:=Decimais(((DM.TBServicosItensSEI_VALORTOTAL.Value/100)*DM.TBServicosItensSEI_ALIQIPI.Value),2);}
end;

procedure TFormServicosItens.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit110KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeItensNFI_BENEFICIO.Clear;
end;

procedure TFormServicosItens.DBEdit114Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit114Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(DBEdit114,DBEdit115,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit114KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormServicosItens.DBEdit114KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBServicosItensSEI_LOTE.Clear;
end;

procedure TFormServicosItens.SpeedButton1Click(Sender: TObject);
begin
  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=DM.TBServicosItensSEI_PRODUTO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    DM.TBServicosItensSEI_LOTE.Value:=FormLotesLoc.QYLotesLOT_LOTE.Value;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormServicosItens.DBEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.BitBtn1Click(Sender: TObject);
begin
  //realizar as contas dos impostos aki ou no before post da tabela?.
  if DM.TBServicosItensSEI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBServicosItensSEI_QUANTIDADE.Value > DM.TBProdutosPRO_ESTOQUEATUAL.Value) then
  begin
    MessageDlg('A quantidade informada é maior do que a quantidade em estoque.',mtWarning,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');

  //#########################################################################################//
  // O produto é composto.                                                                   //
  //#########################################################################################//
  if (DM.TBServicosItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
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

procedure TFormServicosItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicosItens.DBEdit22Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit22Exit(Sender: TObject);
begin
  if (DM.TBServicosItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBServicosItensSEI_CFOP.Clear;
    DM.TBServicosItensNAT_DESCRICAO.Clear;
    DM.TBServicosItensNAT_CALCULACOMISSAO.Clear;
    DM.TBServicosItensNAT_CALCULACREDITOSN.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBServicosItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBServicosItensSEI_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBServicosItensNAT_DESCRICAO.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBServicosItensNAT_CALCULACOMISSAO.Value:=DMS.QYNaturezasNAT_CALCULACOMISSAO.Value;
      DM.TBServicosItensNAT_CALCULACREDITOSN.Value:=DMS.QYNaturezasNAT_CALCULACREDITOSN.Value;
    end else
    begin
      DM.TBServicosItensSEI_CFOP.Clear;
      DM.TBServicosItensNAT_DESCRICAO.Clear;
      DM.TBServicosItensNAT_CALCULACOMISSAO.Clear;
      DM.TBServicosItensNAT_CALCULACREDITOSN.Clear;
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormServicosItens.DBEdit22KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormServicosItens.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBServicosItens.Edit;
    DM.TBServicosItensSEI_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBServicosItensNAT_DESCRICAO.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBServicosItensNAT_CALCULACOMISSAO.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACOMISSAO.Value;
    DM.TBServicosItensNAT_CALCULACREDITOSN.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACREDITOSN.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormServicosItens.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit21Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit21,DBEdit24,DBEdit103,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit21KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormServicosItens.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton4Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit21,DBEdit24,DBEdit103,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit3Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit3,DBEdit7,DBEdit105,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormServicosItens.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton2Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit3,DBEdit7,DBEdit105,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit63KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormServicosItens.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit25,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit64KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormServicosItens.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit25,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit65KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormServicosItens.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicosItens.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit14,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit71KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormServicosItens.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicosItens.DescPorc1Click(Sender: TObject);
begin
  PngSpeedButton2.Click;
end;

procedure TFormServicosItens.DescValor1Click(Sender: TObject);
begin
  PngSpeedButton3.Click;
end;

procedure TFormServicosItens.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit14,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisServicosItens(False); //parametro sem uso.
end;

procedure TFormServicosItens.DBEdit35Exit(Sender: TObject);
begin
  DM.CalcularTotaisServicosItens(False); //parametro sem uso.
end;

procedure TFormServicosItens.DBEdit34Exit(Sender: TObject);
begin
  DM.CalcularTotaisServicosItens(False); //parametro sem uso.
end;

procedure TFormServicosItens.DBEdit33Exit(Sender: TObject);
begin
  if (DM.TBServicosItens.State in [dsInsert, dsEdit]) then
  begin
    DM.TBServicosItensSEI_DESCVALOR.Value:=((DM.TBServicosItensSEI_QUANTIDADE.Value*DM.TBServicosItensSEI_VALORUNIT.Value)/100)*DM.TBServicosItensSEI_DESCPORC.Value;
    DM.CalcularTotaisServicosItens(False); //parametro sem uso.
  end;
end;

procedure TFormServicosItens.DBEdit31Exit(Sender: TObject);
begin
  if (DM.TBServicosItens.State in [dsInsert, dsEdit]) then
  begin
    DM.TBServicosItensSEI_DESCPORC.Value:=(DM.TBServicosItensSEI_DESCVALOR.Value/(DM.TBServicosItensSEI_QUANTIDADE.Value*DM.TBServicosItensSEI_VALORUNIT.Value))*100;
    DM.CalcularTotaisServicosItens(False); //parametro sem uso.
  end;
end;

procedure TFormServicosItens.DBEdit30KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit66KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit43KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit67KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.DBEdit42KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicosItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormServicosItens.PngSpeedButton1Click(Sender: TObject);
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

procedure TFormServicosItens.PngSpeedButton2Click(Sender: TObject);
var Senha: String;
begin
  AbortIf(DM.TBServicosItensSEI_QUANTIDADETROCA.Value<>0,'Não é possível informar desconto para itens que contém troca.');

  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormServicosAlterarDescontoItem, FormServicosAlterarDescontoItem);
    DescontoEmValor:=False;
    FormServicosAlterarDescontoItem.Label1.Caption:='% de Desconto:';
    FormServicosAlterarDescontoItem.Edit1.Text:=DM.TBServicosItensSEI_DESCPORC.AsString;
    FormServicosAlterarDescontoItem.ShowModal;
    FormServicosAlterarDescontoItem.Free;
    FormServicosAlterarDescontoItem:=nil;
  end;
end;

procedure TFormServicosItens.PngSpeedButton3Click(Sender: TObject);
var Senha: String;
begin
  AbortIf(DM.TBServicosItensSEI_QUANTIDADETROCA.Value<>0,'Não é possível informar desconto para itens que contém troca.');

  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormServicosAlterarDescontoItem, FormServicosAlterarDescontoItem);
    DescontoEmValor:=True;
    FormServicosAlterarDescontoItem.Label1.Caption:='Valor do Desconto:';
    FormServicosAlterarDescontoItem.Edit1.Text:=DM.TBServicosItensSEI_DESCVALOR.AsString;
    FormServicosAlterarDescontoItem.ShowModal;
    FormServicosAlterarDescontoItem.Free;
    FormServicosAlterarDescontoItem:=nil;
  end;
end;

procedure TFormServicosItens.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBServicosItensSEI_CIDADEISS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormServicosItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBServicosItensSEI_PAISISS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormServicosItens.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBServicosItensSEI_BENEFICIO.Value:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormServicosItens.PngSpeedButton7Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(DBEdit114,DBEdit115,DM.TBServicosItens);
end;

procedure TFormServicosItens.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

initialization
  RegisterClass(TFormServicosItens);

finalization
  UnRegisterClass(TFormServicosItens);

end.
