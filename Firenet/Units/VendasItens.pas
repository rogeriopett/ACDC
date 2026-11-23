unit VendasItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  ImgList, ComCtrls, Menus, PngBitBtn, PngSpeedButton, System.ImageList,
  System.UITypes, PngImageList;

type
  TFormVendasItens = class(TForm)
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
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
    Label13: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit13: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBComboBox2: TDBComboBox;
    PngSpeedButton1: TPngSpeedButton;
    Atalhos1: TMenuItem;
    ValorUnitario1: TMenuItem;
    DescPorc1: TMenuItem;
    PngSpeedButton2: TPngSpeedButton;
    DescValor1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    Label31: TLabel;
    Label58: TLabel;
    DBEdit15: TDBEdit;
    Label59: TLabel;
    DBEdit16: TDBEdit;
    Label60: TLabel;
    DBEdit17: TDBEdit;
    Label61: TLabel;
    DBEdit18: TDBEdit;
    Label62: TLabel;
    DBEdit56: TDBEdit;
    Label63: TLabel;
    DBEdit57: TDBEdit;
    Label64: TLabel;
    DBEdit58: TDBEdit;
    Label65: TLabel;
    DBEdit59: TDBEdit;
    Label66: TLabel;
    DBEdit60: TDBEdit;
    Label67: TLabel;
    DBComboBox3: TDBComboBox;
    Label73: TLabel;
    DBComboBox4: TDBComboBox;
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
    Label81: TLabel;
    DBEdit75: TDBEdit;
    Label82: TLabel;
    DBEdit76: TDBEdit;
    Label83: TLabel;
    DBEdit77: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    Label84: TLabel;
    DBEdit78: TDBEdit;
    TabSheet7: TTabSheet;
    Label85: TLabel;
    DBEdit79: TDBEdit;
    Label86: TLabel;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    Label87: TLabel;
    Label88: TLabel;
    DBEdit82: TDBEdit;
    Label89: TLabel;
    DBEdit83: TDBEdit;
    Label90: TLabel;
    DBEdit84: TDBEdit;
    Label91: TLabel;
    DBEdit85: TDBEdit;
    Label92: TLabel;
    DBEdit86: TDBEdit;
    Label93: TLabel;
    DBEdit87: TDBEdit;
    Label94: TLabel;
    DBComboBox5: TDBComboBox;
    Label95: TLabel;
    DBEdit88: TDBEdit;
    Label96: TLabel;
    DBEdit89: TDBEdit;
    Label97: TLabel;
    DBComboBox6: TDBComboBox;
    Label98: TLabel;
    DBEdit90: TDBEdit;
    Label99: TLabel;
    DBEdit91: TDBEdit;
    Label100: TLabel;
    DBEdit92: TDBEdit;
    TabSheet8: TTabSheet;
    Label101: TLabel;
    DBEdit93: TDBEdit;
    Label102: TLabel;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    Label103: TLabel;
    DBEdit96: TDBEdit;
    Label104: TLabel;
    PngImageList1: TPngImageList;
    DBEdit97: TDBEdit;
    Label105: TLabel;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    Label21: TLabel;
    DBComboBox7: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    Label106: TLabel;
    DBEdit103: TDBEdit;
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
    DBEdit109: TDBEdit;
    Label113: TLabel;
    DBComboBox12: TDBComboBox;
    Label114: TLabel;
    DBComboBox13: TDBComboBox;
    PngSpeedButton6: TPngSpeedButton;
    Label115: TLabel;
    DBEdit110: TDBEdit;
    Label116: TLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    Label117: TLabel;
    DBEdit113: TDBEdit;
    Label118: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    TabSheet10: TTabSheet;
    Label124: TLabel;
    DBEdit121: TDBEdit;
    Label125: TLabel;
    DBEdit122: TDBEdit;
    Label126: TLabel;
    DBEdit123: TDBEdit;
    Label127: TLabel;
    DBEdit124: TDBEdit;
    Label128: TLabel;
    DBEdit125: TDBEdit;
    Label129: TLabel;
    DBEdit126: TDBEdit;
    Label130: TLabel;
    DBEdit127: TDBEdit;
    Label131: TLabel;
    DBEdit128: TDBEdit;
    Label132: TLabel;
    DBEdit129: TDBEdit;
    Label136: TLabel;
    DBEdit133: TDBEdit;
    Label138: TLabel;
    DBEdit135: TDBEdit;
    DBEdit141: TDBEdit;
    Label144: TLabel;
    TabSheet11: TTabSheet;
    Label145: TLabel;
    DBEdit142: TDBEdit;
    Label146: TLabel;
    DBEdit143: TDBEdit;
    Label147: TLabel;
    DBEdit144: TDBEdit;
    Label148: TLabel;
    Label149: TLabel;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    Label150: TLabel;
    DBEdit147: TDBEdit;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label137: TLabel;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit134: TDBEdit;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label139: TLabel;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit136: TDBEdit;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    Label151: TLabel;
    DBEdit148: TDBEdit;
    Label152: TLabel;
    Label153: TLabel;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    Label154: TLabel;
    Label155: TLabel;
    DBEdit152: TDBEdit;
    PngBitBtn1: TPngBitBtn;
    Label156: TLabel;
    DBEdit153: TDBEdit;
    Label157: TLabel;
    DBEdit154: TDBEdit;
    Label158: TLabel;
    DBEdit155: TDBEdit;
    Label159: TLabel;
    DBEdit156: TDBEdit;
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53Exit(Sender: TObject);
    procedure DBEdit53KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure DBEdit64Exit(Sender: TObject);
    procedure DBEdit64KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure DBEdit65KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton25Click(Sender: TObject);
    procedure DBEdit71Exit(Sender: TObject);
    procedure DBEdit71KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton27Click(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure ValorUnitario1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DescPorc1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DescValor1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit53Enter(Sender: TObject);
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
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit110KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit114Enter(Sender: TObject);
    procedure DBEdit114Exit(Sender: TObject);
    procedure DBEdit114KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit114KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBEdit129Exit(Sender: TObject);
    procedure DBEdit155KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit103KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure InserirProdutoComposto;
    procedure InserirItens(Produto: Integer; Quantidade: Extended);
    procedure LimparCamposProduto;

    procedure ProdutoComposto;
    procedure ProdutoSimples;
    procedure CalcularCampoDescPorc;
  public
    { Public declarations }
    procedure SelecionarProduto;
    procedure DesabilitarCampos;
  end;

var
  FormVendasItens: TFormVendasItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, Main, ProdutosLoc, Funcoes1, LotesLoc, NaturezasLoc,
  DataModSearch, VendasAlterarDescontoItem, EnderecosCidadesLoc, EnderecosPaisesLoc, Vendas, BeneficiosLoc, FuncoesFirenet,
  FireDAC.Comp.Client, RegrasFiscaisLoc;
{$R *.dfm}

procedure TFormVendasItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM.TBVendasVED_STATUS.Value='F') or (DM.TBVendasVED_STATUS.Value='C') or (DM.TBVendasVED_STATUS.Value='I') then
  begin
    DM.TBVendasItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormVendasItens.ComponentCount-1 do
    begin
      if (FormVendasItens.Components[I] is TDBEdit)         then (FormVendasItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormVendasItens.Components[I] is TDBComboBox)     then (FormVendasItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormVendasItens.Components[I] is TDBMemo)         then (FormVendasItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormVendasItens.Components[I] is TDBGrid)         then (FormVendasItens.Components[I] as TDBGrid).Enabled:=False else
      if (FormVendasItens.Components[I] is TSpeedButton)    then (FormVendasItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormVendasItens.Components[I] is TPngSpeedButton) then (FormVendasItens.Components[I] as TPngSpeedButton).Enabled:=False else
      if (FormVendasItens.Components[I] is TPngBitBtn)      then (FormVendasItens.Components[I] as TPngBitBtn).Enabled:=False;
    end;
  end;
end;

procedure TFormVendasItens.DescPorc1Click(Sender: TObject);
begin
  PngSpeedButton2.Click;
end;

procedure TFormVendasItens.DescValor1Click(Sender: TObject);
begin
  PngSpeedButton3.Click;
end;

procedure TFormVendasItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
      DM.TBVendasItens.Insert;
      DM.TBVendasItensVEI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
      DM.TBVendasItensVEI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
      DM.TBVendasItensVEI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value; //testar com os produtos compostos.
      DM.TBVendasItensVEI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value; //testar com os produtos compostos.
      DM.TBVendasItensVEI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBVendasItensVEI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBVendasItensVEI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
      DM.TBVendasItensVEI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
      DM.TBVendasItensVEI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBVendasItensVEI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
      DM.TBVendasItensVEI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
      DM.TBVendasItensVEI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
      DM.TBVendasItensVEI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
      DM.TBVendasItensVEI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
      DM.TBVendasItensVEI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
      DM.TBVendasItensVEI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
      if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
      begin
        if DM.TBVendasVED_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
        DM.TBVendasItensVEI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
        DM.TBVendasItensVEI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
        DM.TBVendasItensNAT_DESCRICAO.Clear;
      end;
      DM.TBVendasItensVEI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
      DM.TBVendasItensVEI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
      DM.TBVendasItensVEI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
      DM.TBVendasItensVEI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
      if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
      DM.TBVendasItensVEI_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value else
      DM.TBVendasItensVEI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBVendasItensVEI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
      DM.TBVendasItensVEI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
      DM.TBVendasItensVEI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
      DM.TBVendasItensVEI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
      DM.TBVendasItensVEI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
      DM.TBVendasItensVEI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
      DM.TBVendasItensVEI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
      DM.TBVendasItensVEI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
      begin
        if DM.TBVendasVED_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end else
      begin
        if DM.TBVendasVED_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end;
      DM.TBVendasItensVEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
      DM.TBVendasItensVEI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
      DM.TBVendasItensVEI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
      DM.TBVendasItensVEI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
      DM.TBVendasItensVEI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
      DM.TBVendasItensVEI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
      DM.TBVendasItensVEI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
      DM.TBVendasItensVEI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
      DM.TBVendasItensVEI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
      DM.TBVendasItensVEI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
      DM.TBVendasItensVEI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM.TBVendasItensVEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBVendasItensVEI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
      DM.TBVendasItensVEI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      DM.TBVendasItensVEI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM.TBVendasItensVEI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
      DM.TBVendasItensVEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      if DM.TBVendasVED_TABELAPRECO.Value='V' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='1' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='2' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='3' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='4' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='5' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='6' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

      DM.TBVendasItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
      DM.TBVendasItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
      DM.TBVendasItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
      DM.TBVendasItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
      DM.TBVendasItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
      DM.TBVendasItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
      DM.TBVendasItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormVendasItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM.TBVendasItensVEI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM.TBVendasItens.Cancel; //cancela, pois o produto é composto.
  DM.TBVendasItens.DisableControls;
  DM.TBVendas.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM.TBVendas.EnableControls;
  DM.TBVendasItens.EnableControls;
end;

procedure TFormVendasItens.SelecionarProduto;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBVendasVED_ESTADO.Value,[]);
  DM.TBVendasItensVEI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
  DM.TBVendasItensVEI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
  DM.TBVendasItensVEI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
  DM.TBVendasItensVEI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;
  if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
  begin
    DM.TBVendasItensVEI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBVendasItensVEI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBVendasItensVEI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBVendasItensVEI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
  end else
  begin
    DM.TBVendasItensVEI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBVendasItensVEI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
    DM.TBVendasItensVEI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBVendasItensVEI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
  end;
  DM.TBVendasItensVEI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
  DM.TBVendasItensVEI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
  DM.TBVendasItensVEI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
  DM.TBVendasItensVEI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
  DM.TBVendasItensVEI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
  DM.TBVendasItensVEI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
  //DM.TBVendasItensVEI_ALMOXARIFADO.Value:=
  DM.TBVendasItensVEI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
  if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
  begin
    if DM.TBVendasVED_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBVendasItensVEI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
    DM.TBVendasItensVEI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
    DM.TBVendasItensNAT_DESCRICAO.Clear;
  end;
  DM.TBVendasItensVEI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
  DM.TBVendasItensVEI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
  DM.TBVendasItensVEI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
  DM.TBVendasItensVEI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
  if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
  begin
    DM.TBVendasItensVEI_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value;
    DM.TBVendasItensVEI_COMISSAOREP.Value:=DM.TBVendasVED_COMISSAOREP.Value
  end else
  begin
    DM.TBVendasItensVEI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
    DM.TBVendasItensVEI_COMISSAOREP.Value:=DM.TBProdutosPRO_COMISSAO.Value;
  end;
  DM.TBVendasItensVEI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
  DM.TBVendasItensVEI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
  DM.TBVendasItensVEI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
  DM.TBVendasItensVEI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
  DM.TBVendasItensVEI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
  DM.TBVendasItensVEI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
  DM.TBVendasItensVEI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
  DM.TBVendasItensVEI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
  begin
    if DM.TBVendasVED_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end else
  begin
    if DM.TBVendasVED_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end;
  DM.TBVendasItensVEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
  DM.TBVendasItensVEI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
  DM.TBVendasItensVEI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
  DM.TBVendasItensVEI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
  DM.TBVendasItensVEI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
  DM.TBVendasItensVEI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
  DM.TBVendasItensVEI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
  DM.TBVendasItensVEI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
  DM.TBVendasItensVEI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
  DM.TBVendasItensVEI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
  DM.TBVendasItensVEI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  DM.TBVendasItensVEI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBVendasItensVEI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
  //DM.TBVendasItensVEI_QUANTIDADE.Value:=
  DM.TBVendasItensVEI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
  DM.TBVendasItensVEI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
  DM.TBVendasItensVEI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  if DM.TBVendasVED_TABELAPRECO.Value='V' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='1' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='2' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='3' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='4' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='5' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
  if DM.TBVendasVED_TABELAPRECO.Value='6' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

  //campos da reforma tributária.
  DM.TBRegrasFiscais.Close;
  DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
  DM.TBRegrasFiscais.Open;

  DM.TBVendasItensVEI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
  //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=
  //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=
  //DM.TBVendasItensVEI_ALIQCBSEFE.Value:=
  DM.TBVendasItensVEI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
  //DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value:=
  DM.TBVendasItensVEI_ALIQIBSMUN.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
  //DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value:=
  //DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value:=
  DM.TBVendasItensVEI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBVendasItensVEI_ALIQIBSUF.Value:=DM.TBAliquotasALI_ALIQIBSUF.Value; //alterado para pegar da tabela de aliquotas. DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
  //DM.TBVendasItensVEI_ALIQIBSUFDIF.Value:=
  //DM.TBVendasItensVEI_ALIQIBSUFEFE.Value:=
  DM.TBVendasItensVEI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBVendasItensVEI_ALIQIS.Value:=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
  //DM.TBVendasItensVEI_ALIQISESP.Value:=
  //DM.TBVendasItensVEI_BASEIBSCBS.Value:=
  //DM.TBVendasItensVEI_BASEIS.Value:=
  //DM.TBVendasItensVEI_CBSCREDITOPRES.Value:=
  DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
  DM.TBVendasItensVEI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
  DM.TBVendasItensVEI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
  DM.TBVendasItensVEI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
  DM.TBVendasItensVEI_IBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
//  DM.TBVendasItensVEI_VALORCBS.Value:=
//  DM.TBVendasItensVEI_VALORCBSCREDPRES.Value:=
//  DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=
//  DM.TBVendasItensVEI_VALORCBSDEV.Value:=
//  DM.TBVendasItensVEI_VALORCBSDIF.Value:=
//  DM.TBVendasItensVEI_VALORIBS.Value:=
//  DM.TBVendasItensVEI_VALORIBSCREDPRES.Value:=
//  DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=
//  DM.TBVendasItensVEI_VALORIBSMUN.Value:=
//  DM.TBVendasItensVEI_VALORIBSMUNDEV.Value:=
//  DM.TBVendasItensVEI_VALORIBSMUNDIF.Value:=
//  DM.TBVendasItensVEI_VALORIBSUF.Value:=
//  DM.TBVendasItensVEI_VALORIBSUFDEV.Value:=
//  DM.TBVendasItensVEI_VALORIBSUFDIF.Value:=
//  DM.TBVendasItensVEI_VALORIS.Value:=

  //campos derivados.
  DM.TBVendasItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
  DM.TBVendasItensICM_CALCULACREDITOSN.Value:=DM.TBProdutosICM_CALCULACREDITOSN.Value;
  DM.TBVendasItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
  DM.TBVendasItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
  DM.TBVendasItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
  DM.TBVendasItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
  DM.TBVendasItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
end;

procedure TFormVendasItens.LimparCamposProduto;
begin
  DM.TBVendasItensVEI_ALIQCOFINS.Clear;
  DM.TBVendasItensVEI_ALIQCOFINSST.Clear;
  DM.TBVendasItensVEI_ALIQFCP.Clear;
  DM.TBVendasItensVEI_ALIQFCPST.Clear;
  DM.TBVendasItensVEI_ALIQICMS.Clear;
  DM.TBVendasItensVEI_ALIQICMSADICST.Clear;
  DM.TBVendasItensVEI_ALIQICMSINTER.Clear;
  DM.TBVendasItensVEI_ALIQICMSINTERPART.Clear;
  DM.TBVendasItensVEI_ALIQICMSRED.Clear;
  DM.TBVendasItensVEI_ALIQICMSST.Clear;
  DM.TBVendasItensVEI_ALIQIPI.Clear;
  DM.TBVendasItensVEI_ALIQISS.Clear;
  DM.TBVendasItensVEI_ALIQPIS.Clear;
  DM.TBVendasItensVEI_ALIQPISST.Clear;
  DM.TBVendasItensVEI_BASEICMSST.Clear;
  DM.TBVendasItensVEI_BENEFICIO.Clear;
  DM.TBVendasItensVEI_CEST.Clear;
  DM.TBVendasItensVEI_CLASSFISCAL.Clear;
  DM.TBVendasItensVEI_CODIGOBARRAS.Clear;
  DM.TBVendasItensVEI_CODIGOFAB.Clear;
  DM.TBVendasItensVEI_COMISSAO.Clear;
  DM.TBVendasItensVEI_COMPOEBASEICMS.Clear;
  DM.TBVendasItensVEI_COMPOEBASEICMSST.Clear;
  DM.TBVendasItensVEI_CONVERSAO.Clear;
  DM.TBVendasItensVEI_CSTCOFINS.Clear;
  DM.TBVendasItensVEI_CSTICMS.Clear;
  DM.TBVendasItensVEI_CSTIPI.Clear;
  DM.TBVendasItensVEI_CSTPIS.Clear;
  DM.TBVendasItensVEI_DESCRICAO.Clear;
  DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Clear;
  DM.TBVendasItensVEI_FCI.Clear;
  DM.TBVendasItensVEI_INCENTIVOISS.Clear;
  DM.TBVendasItensVEI_INDICADORISS.Clear;
  DM.TBVendasItensVEI_LOCALIZACAO.Clear;
  DM.TBVendasItensVEI_MODICMS.Clear;
  DM.TBVendasItensVEI_MODICMSST.Clear;
  DM.TBVendasItensVEI_ORIGEM.Clear;
  DM.TBVendasItensVEI_PESO.Clear;
  DM.TBVendasItensVEI_PRECOCUSTO.Clear;
  DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Clear;
  DM.TBVendasItensVEI_PRODUTO.Clear;
  DM.TBVendasItensVEI_PRODUTOREAL.Clear;
  DM.TBVendasItensVEI_TIPO.Clear;
  DM.TBVendasItensVEI_TIPOISS.Clear;
  DM.TBVendasItensVEI_UNIDADE.Clear;
  DM.TBVendasItensVEI_VALORUNIT.Clear;
  //campos derivados.
  DM.TBVendasItensCLF_DESCRICAO.Clear;
  DM.TBVendasItensICM_DESCRICAO.Clear;
  DM.TBVendasItensIPI_DESCRICAO.Clear;
  DM.TBVendasItensISS_DESCRICAO.Clear;
  DM.TBVendasItensPIS_DESCRICAO.Clear;
  DM.TBVendasItensPIS_DESCRICAO1.Clear; //cofins
end;

procedure TFormVendasItens.PngBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar then
  begin
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value;
    DM.TBRegrasFiscais.Open;

    DM.TBVendasItensVEI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=DM.tbregrasfiscais
    DM.TBVendasItensVEI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
    DM.TBVendasItensVEI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    DM.TBVendasItensVEI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DM.TBVendasItensVEI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DM.TBVendasItensVEI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIBSCBS.Value,1,3);
    DM.TBVendasItensVEI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIS.Value,1,3);
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure TFormVendasItens.PngSpeedButton1Click(Sender: TObject);
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

procedure TFormVendasItens.PngSpeedButton2Click(Sender: TObject);
var Senha: String;
begin
  AbortIf(DM.TBVendasItensVEI_QUANTIDADETROCA.Value<>0,'Não é possível informar desconto para itens que contém troca.');

  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormVendasAlterarDescontoItem, FormVendasAlterarDescontoItem);
    DescontoEmValor:=False;
    FormVendasAlterarDescontoItem.Label1.Caption:='% de Desconto:';
    FormVendasAlterarDescontoItem.Edit1.Text:=DM.TBVendasItensVEI_DESCPORC.AsString;
    FormVendasAlterarDescontoItem.ShowModal;
    FormVendasAlterarDescontoItem.Free;
    FormVendasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormVendasItens.PngSpeedButton3Click(Sender: TObject);
var Senha: String;
begin
  AbortIf(DM.TBVendasItensVEI_QUANTIDADETROCA.Value<>0,'Não é possível informar desconto para itens que contém troca.');

  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormVendasAlterarDescontoItem, FormVendasAlterarDescontoItem);
    DescontoEmValor:=True;
    FormVendasAlterarDescontoItem.Label1.Caption:='Valor do Desconto:';
    FormVendasAlterarDescontoItem.Edit1.Text:=DM.TBVendasItensVEI_DESCVALOR.AsString;
    FormVendasAlterarDescontoItem.ShowModal;
    FormVendasAlterarDescontoItem.Free;
    FormVendasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormVendasItens.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBVendasItensVEI_CIDADEISS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormVendasItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBVendasItensVEI_PAISISS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormVendasItens.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBVendasItensVEI_BENEFICIO.Value:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormVendasItens.PngSpeedButton7Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(DBEdit114,DBEdit115,DM.TBVendasItens);
end;

procedure TFormVendasItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormVendasItens.ProdutoSimples;
begin
  DM.TBVendasItensVEI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM.TBVendasItens.Post;
end;

procedure TFormVendasItens.SpeedButton9Click(Sender: TObject);
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

procedure TFormVendasItens.ValorUnitario1Click(Sender: TObject);
begin
  PngSpeedButton1.Click;
end;

procedure TFormVendasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasItens.CalcularCampoDescPorc;
begin
  DM.TBVendasItensVEI_DESCPORC.Value:=Decimais((100.0/((DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_VALORUNIT.AsExtended)+
                                               DM.TBVendasItensVEI_VALORFRETE.AsExtended+
                                               DM.TBVendasItensVEI_VALORSEGURO.AsExtended+
                                               DM.TBVendasItensVEI_VALORACESSORIAS.AsExtended))*DM.TBVendasItensVEI_DESCVALOR.AsExtended,8);
end;

procedure TFormVendasItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBVendasItens.State in [dsInsert, dsEdit] then
  DM.TBVendasItens.Cancel;
end;

procedure TFormVendasItens.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormVendasItens.BitBtn1Click(Sender: TObject);
var Mensagem: WideString;
begin
  if DM.TBVendasItensVEI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBVendasItensVEI_QUANTIDADE.Value > DM.TBProdutosPRO_ESTOQUEATUAL.Value) then
  begin
    MessageDlg('A quantidade informada é maior do que a quantidade em estoque.',mtWarning,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe almoxarifado cadastrado para este produto.');

  //verificar se a quantidade em estoque é suficiente para os pedidos em aberto.
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
  begin
    if VerificarSaldoEstoqueItem('VENDAS',
      DM.TBVendasItensVEI_PRODUTO.Value,
      DM.TBVendasItensVEI_PRODUTOREAL.Value,
      DM.TBVendasItensVEI_CODIGO.Value,
      DM.TBVendasItensVEI_QUANTIDADE.AsExtended,
      DM.TBVendasItensVEI_CONVERSAO.AsExtended,
      Mensagem
    )=False then
    begin
      MessageDlg(Mensagem,mtInformation,[mbOk],0);
      Exit;
    end;
  end;
//  if FormVendas.VerificarEstoqueItem=False then
//  Exit;

  //#########################################################################################//
  // O produto é composto.                                                                   //
  //#########################################################################################//
  if (DM.TBVendasItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
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

procedure TFormVendasItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasItens.SpeedButton1Click(Sender: TObject);
begin
  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=DM.TBVendasItensVEI_PRODUTO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    if FormLotesLoc.QYLotesLOT_PRODUTO.Value<>DM.TBVendasItensVEI_PRODUTO.Value then
    MessageDlg('O lote selecionado não é do produto selecionado.',mtError,[mbOk],0) else
    DM.TBVendasItensVEI_LOTE.Value:=FormLotesLoc.QYLotesLOT_CODIGO.Value.ToString;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormVendasItens.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasItensVEI_LOTE.Clear;
end;

procedure TFormVendasItens.DBEdit53Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit53Exit(Sender: TObject);
begin
  if (DM.TBVendasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendasItensVEI_CFOP.Clear;
    DM.TBVendasItensNAT_DESCRICAO.Clear;
    DM.TBVendasItensNAT_CALCULACOMISSAO.Clear;
    DM.TBVendasItensNAT_CALCULACREDITOSN.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBVendasItensVEI_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBVendasItensNAT_DESCRICAO.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBVendasItensNAT_CALCULACOMISSAO.Value:=DMS.QYNaturezasNAT_CALCULACOMISSAO.Value;
      DM.TBVendasItensNAT_CALCULACREDITOSN.Value:=DMS.QYNaturezasNAT_CALCULACREDITOSN.Value;
    end else
    begin
      DM.TBVendasItensVEI_CFOP.Clear;
      DM.TBVendasItensNAT_DESCRICAO.Clear;
      DM.TBVendasItensNAT_CALCULACOMISSAO.Clear;
      DM.TBVendasItensNAT_CALCULACREDITOSN.Clear;
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormVendasItens.DBEdit53KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormVendasItens.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBVendasItens.Edit;
    DM.TBVendasItensVEI_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBVendasItensNAT_DESCRICAO.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBVendasItensNAT_CALCULACOMISSAO.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACOMISSAO.Value;
    DM.TBVendasItensNAT_CALCULACREDITOSN.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACREDITOSN.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormVendasItens.DBEdit52Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit52Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit52,DBEdit55,DBEdit109,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit52KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormVendasItens.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton4Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit52,DBEdit55,DBEdit109,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit20Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit20Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit20,DBEdit26,DBEdit112,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormVendasItens.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton2Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit20,DBEdit26,DBEdit112,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBVendasItens);
end;

procedure TFormVendasItens.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit33,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit64KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormVendasItens.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit33,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit65KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormVendasItens.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit46,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit71KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormVendasItens.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit46,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit5Exit(Sender: TObject);
var EstoqueAtual: Extended;
begin
  if (DM.TBVendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;

  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;

  if (DM.TBVendasItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    DMS.QYProdutos.FetchAll;
    if not DMS.QYProdutos.IsEmpty then
    begin

      {$REGION 'Seta a tabela principal no produto desejado.'}
      if DMS.QYProdutos.RecordCount > 1 then
      begin
        //achou mais de um produto com o código digitado: abre tela pra escolher o produto correto.
        //se selecionou um produto, localiza na tabela principal e se tem produto real, localiza o produto real.
        Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
        FormProdutosLoc.QYProdutos.SQL.Clear;
        FormProdutosLoc.QYProdutos.SQL.Add(DMS.QYProdutos.SQL.Text);
        FormProdutosLoc.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
        FormProdutosLoc.QYProdutos.Open;
        FormProdutosLoc.ShowModal;
        if ProdutosLoc.Procurar then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
          DM.TBProdutos.Open;
          EstoqueAtual:=FormProdutosLoc.QYProdutosPRO_ESTOQUEATUAL.AsExtended;
          if FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value<>0 then
          begin
            DM.TBProdutos.Close;
            DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_PRODUTOREAL.Value;
            DM.TBProdutos.Open;
            EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
          end;
        end;
        FormProdutosLoc.Free;
        FormProdutosLoc:=nil;
      end else
      begin
        //só encontrou um produto com o código digitado: localiza na tabela principal e se tem produto real, localiza o produto real.
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_CODIGO.Value;
        DM.TBProdutos.Open;
        EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
        if DMS.QYProdutosPRO_PRODUTOREAL.Value<>0 then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=DMS.QYProdutosPRO_PRODUTOREAL.Value;
          DM.TBProdutos.Open;
          EstoqueAtual:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;
        end;
      end;
      {$ENDREGION}

      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        LimparCamposProduto;
        Exit;
      end;

      //localiza o almoxarifado padrao ... o codigo do produto vem do datasource desta tabela. (DSProdutos).
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

procedure TFormVendasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormVendasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.DBEdit48Exit(Sender: TObject);
begin
//  DM.TBVendasItensVEI_DESCPORC.Value:=(100.0/((DM.TBVendasItensVEI_QUANTIDADE.Value*DM.TBVendasItensVEI_VALORUNIT.Value)+
//                                               DM.TBVendasItensVEI_VALORFRETE.Value+
//                                               DM.TBVendasItensVEI_VALORSEGURO.Value+
//                                               DM.TBVendasItensVEI_VALORACESSORIAS.Value))*DM.TBVendasItensVEI_DESCVALOR.Value;
  CalcularCampoDescPorc;
  DM.CalcularTotaisVendaItens(False);
end;

procedure TFormVendasItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormVendasItens.DBEdit103KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasItensVEI_CODIGOBARRAS.Clear;
end;

procedure TFormVendasItens.DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormVendasItens.DBEdit110KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasItensVEI_BENEFICIO.Clear;
end;

procedure TFormVendasItens.DBEdit114Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendasItens.DBEdit114Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(DBEdit114,DBEdit115,DM.TBVendasItens);
end;

procedure TFormVendasItens.DBEdit114KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormVendasItens.DBEdit114KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.DBEdit129Exit(Sender: TObject);
begin
  DM.CalcularTotaisVendaItens(False); //parametro sem uso.
end;

procedure TFormVendasItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisVendaItens(False); //parametro sem uso.
end;

procedure TFormVendasItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormVendasItens.DBEdit155KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasItensVEI_DTENTREGA.Clear;
end;

procedure TFormVendasItens.DBEdit15Exit(Sender: TObject);
begin
  if DM.TBVendasItensVEI_QUANTIDADETROCA.Value < 0 then
  DM.TBVendasItensVEI_QUANTIDADETROCA.Value:=0;
  if DM.TBVendasItensVEI_QUANTIDADETROCA.Value > 0 then
  begin
    if DM.TBVendasItensVEI_QUANTIDADETROCA.Value > (DM.TBVendasItensVEI_QUANTIDADE.Value * DM.TBVendasItensVEI_CONVERSAO.Value) then
    DM.TBVendasItensVEI_QUANTIDADETROCA.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value * DM.TBVendasItensVEI_CONVERSAO.Value;
    DM.TBVendasItensVEI_DESCVALOR.Value:=0;
    DM.TBVendasItensVEI_DESCPORC.Value:=0;
  end;
  DM.CalcularTotaisVendaItens(False); //parametro sem uso.
end;

procedure TFormVendasItens.DBEdit63KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormVendasItens.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasItens.FormShow(Sender: TObject);
var EstoqueAtual: Extended;
begin
  if (DM.TBVendasItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormVendasItens); //habilita o campo valor unitario caso esteja liberado para o usuário.
  end;
  if (DM.TBVendasItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (EstoqueAtual<=0) and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM.TBVendasItensVEI_PRODUTO.Clear;
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

initialization
  RegisterClass(TFormVendasItens);

finalization
  UnRegisterClass(TFormVendasItens);

end.


