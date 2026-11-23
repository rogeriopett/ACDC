unit NfeItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  ComCtrls, ImgList, Menus, PngBitBtn, PngSpeedButton, System.ImageList,
  System.UITypes, PngImageList;

type
  TFormNfeItens = class(TForm)
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
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton1: TPngSpeedButton;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit32: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit19: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBComboBox8: TDBComboBox;
    Label74: TLabel;
    Label24: TLabel;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    Label75: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    SpeedButton2: TPngSpeedButton;
    Label68: TLabel;
    DBEdit63: TDBEdit;
    DBEdit69: TDBEdit;
    SpeedButton24: TPngSpeedButton;
    DBEdit24: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    Label69: TLabel;
    DBEdit64: TDBEdit;
    DBEdit25: TDBEdit;
    SpeedButton23: TPngSpeedButton;
    Label71: TLabel;
    DBEdit66: TDBEdit;
    Label72: TLabel;
    Label70: TLabel;
    SpeedButton25: TPngSpeedButton;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    SpeedButton27: TPngSpeedButton;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Label43: TLabel;
    DBEdit42: TDBEdit;
    Label44: TLabel;
    DBEdit43: TDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label47: TLabel;
    DBEdit5: TDBEdit;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    DBComboBox1: TDBComboBox;
    Label49: TLabel;
    DBEdit47: TDBEdit;
    Label51: TLabel;
    DBEdit46: TDBEdit;
    Label50: TLabel;
    DBEdit48: TDBEdit;
    Label52: TLabel;
    DBEdit49: TDBEdit;
    Label53: TLabel;
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
    DBComboBox3: TDBComboBox;
    Label67: TLabel;
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
    DBEdit76: TDBEdit;
    Label82: TLabel;
    DBComboBox4: TDBComboBox;
    Label73: TLabel;
    Label83: TLabel;
    DBEdit77: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    Label84: TLabel;
    DBEdit78: TDBEdit;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
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
    Label30: TLabel;
    Label48: TLabel;
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
    DBComboBox12: TDBComboBox;
    Label113: TLabel;
    DBComboBox13: TDBComboBox;
    Label114: TLabel;
    Label115: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    DBEdit110: TDBEdit;
    Label116: TLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    Label117: TLabel;
    DBEdit113: TDBEdit;
    TabSheet10: TTabSheet;
    Label26: TLabel;
    SpeedButton3: TPngSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    Label118: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
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
    TabSheet11: TTabSheet;
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
    PngBitBtn1: TPngBitBtn;
    Label156: TLabel;
    DBEdit153: TDBEdit;
    Label157: TLabel;
    DBEdit154: TDBEdit;
    Label158: TLabel;
    DBEdit155: TDBEdit;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ValorUnitario1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DescPorc1Click(Sender: TObject);
    procedure DescValor1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit64Enter(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit110KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit114Exit(Sender: TObject);
    procedure DBEdit114Enter(Sender: TObject);
    procedure DBEdit114KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit114KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
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
    procedure DesabilitarCampos;
    procedure ReadOnlyCamposNfeItens(ReadOnly: Boolean);
  end;

var
  FormNfeItens: TFormNfeItens;
  QtdeNiveis: Integer;

implementation
uses DataMod, Main, ProdutosLoc, Funcoes1, LotesLoc,
  NaturezasLoc, DataModSearch, NfeAlterarDescontoItem, EnderecosCidadesLoc, EnderecosPaisesLoc, BeneficiosLoc, FuncoesFirenet,
  FireDAC.Comp.Client, RegrasFiscais, RegrasFiscaisLoc;
{$R *.dfm}

procedure TFormNfeItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM.TBNfeNFE_STATUS.Value='F') or (DM.TBNfeNFE_STATUS.Value='C') or (DM.TBNfeNFE_STATUS.Value='I') or (DM.TBNfeNFE_PROTOCOLO.Value<>'') then
  begin
    DM.TBNfeItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormNfeItens.ComponentCount-1 do
    begin
      if (FormNfeItens.Components[I] is TDBEdit)         then (FormNfeItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormNfeItens.Components[I] is TDBComboBox)     then (FormNfeItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormNfeItens.Components[I] is TDBMemo)         then (FormNfeItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormNfeItens.Components[I] is TDBGrid)         then (FormNfeItens.Components[I] as TDBGrid).Enabled:=False else
      if (FormNfeItens.Components[I] is TSpeedButton)    then (FormNfeItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormNfeItens.Components[I] is TPngSpeedButton) then (FormNfeItens.Components[I] as TPngSpeedButton).Enabled:=False else
      if (FormNfeItens.Components[I] is TPngBitBtn)      then (FormNfeItens.Components[I] as TPngBitBtn).Enabled:=False;
    end;
  end;
end;

procedure TFormNfeItens.ReadOnlyCamposNfeItens(ReadOnly: Boolean);
begin
  DBEdit6.ReadOnly:=ReadOnly;
  DBEdit7.ReadOnly:=ReadOnly;
  DBEdit8.ReadOnly:=ReadOnly;
  DBEdit9.ReadOnly:=ReadOnly;
  DBEdit13.ReadOnly:=ReadOnly;
  DBEdit18.ReadOnly:=ReadOnly;
  DBEdit26.ReadOnly:=ReadOnly;
  DBEdit27.ReadOnly:=ReadOnly;
  DBEdit28.ReadOnly:=ReadOnly;
  DBEdit29.ReadOnly:=ReadOnly;
  DBEdit31.ReadOnly:=ReadOnly;
  DBEdit33.ReadOnly:=ReadOnly;
  DBEdit36.ReadOnly:=ReadOnly;
  DBEdit37.ReadOnly:=ReadOnly;
  DBEdit38.ReadOnly:=ReadOnly;
  DBEdit39.ReadOnly:=ReadOnly;
  DBEdit40.ReadOnly:=ReadOnly;
  DBEdit41.ReadOnly:=ReadOnly;
  DBEdit44.ReadOnly:=ReadOnly;
  DBEdit45.ReadOnly:=ReadOnly;
  DBEdit46.ReadOnly:=ReadOnly;
  DBEdit49.ReadOnly:=ReadOnly;
  DBEdit50.ReadOnly:=ReadOnly;
  DBEdit51.ReadOnly:=ReadOnly;
  DBEdit56.ReadOnly:=ReadOnly;
  DBEdit57.ReadOnly:=ReadOnly;
  DBEdit58.ReadOnly:=ReadOnly;
end;

procedure TFormNfeItens.DescPorc1Click(Sender: TObject);
begin
  PngSpeedButton2.Click;
end;

procedure TFormNfeItens.DescValor1Click(Sender: TObject);
begin
  PngSpeedButton3.Click;
end;

procedure TFormNfeItens.InserirItens(Produto: Integer; Quantidade: Extended);
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
      DM.TBNfeItensNFI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
      DM.TBNfeItensNFI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
      DM.TBNfeItensNFI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value; //testar com os produtos compostos.
      DM.TBNfeItensNFI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value; //testar com os produtos compostos.
      DM.TBNfeItensNFI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBNfeItensNFI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBNfeItensNFI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
      DM.TBNfeItensNFI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
      DM.TBNfeItensNFI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBNfeItensNFI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
      DM.TBNfeItensNFI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
      DM.TBNfeItensNFI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
      DM.TBNfeItensNFI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
      DM.TBNfeItensNFI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
      DM.TBNfeItensNFI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
      DM.TBNfeItensNFI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
      if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
      begin
        if DM.TBNfeNFE_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
        DM.TBNfeItensNFI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
        DM.TBNfeItensNFI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
        DM.TBNfeItensNAT_DESCRICAO.Clear;
      end;
      DM.TBNfeItensNFI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
      DM.TBNfeItensNFI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
      DM.TBNfeItensNFI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
      DM.TBNfeItensNFI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
      if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
      DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBNfeNFE_COMISSAO.Value else
      DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBNfeItensNFI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
      DM.TBNfeItensNFI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
      DM.TBNfeItensNFI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
      DM.TBNfeItensNFI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
      DM.TBNfeItensNFI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
      DM.TBNfeItensNFI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
      DM.TBNfeItensNFI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
      DM.TBNfeItensNFI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
      begin
        if DM.TBNfeNFE_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end else
      begin
        if DM.TBNfeNFE_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
        DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      end;
      DM.TBNfeItensNFI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
      DM.TBNfeItensNFI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
      DM.TBNfeItensNFI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
      DM.TBNfeItensNFI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
      DM.TBNfeItensNFI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
      DM.TBNfeItensNFI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
      DM.TBNfeItensNFI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
      DM.TBNfeItensNFI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
      DM.TBNfeItensNFI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
      DM.TBNfeItensNFI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
      DM.TBNfeItensNFI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM.TBNfeItensNFI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBNfeItensNFI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
      DM.TBNfeItensNFI_QUANTIDADE.Value:=QYProdutosComp.FieldByName('PRC_QUANTIDADE').AsFloat*Quantidade; //multiplica pela quantidade do produto composto.
      DM.TBNfeItensNFI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM.TBNfeItensNFI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
      DM.TBNfeItensNFI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      if DM.TBNfeNFE_TABELAPRECO.Value='V' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='1' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='2' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='3' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='4' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='5' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBNfeNFE_TABELAPRECO.Value='6' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

      DM.TBNfeItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
      DM.TBNfeItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
      DM.TBNfeItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
      DM.TBNfeItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
      DM.TBNfeItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
      DM.TBNfeItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins.
      DM.TBNfeItens.Post;
    end;
    QYProdutosComp.Next;
  end;
  QtdeNiveis:=QtdeNiveis-1;
  if QtdeNiveis<0 then
  QtdeNiveis:=0;
  QYProdutosComp.Destroy;
end;

procedure TFormNfeItens.InserirProdutoComposto;
var Qtde: Extended;
begin
  Qtde:=DM.TBNfeItensNFI_QUANTIDADE.AsExtended; //pega a quantidade antes de cancelar.
  DM.TBNfeItens.Cancel; //cancela, pois o produto é composto.
  DM.TBNfeItens.DisableControls;
  DM.TBNfe.DisableControls;
  InserirItens(DM.TBProdutosPRO_CODIGO.Value,Qtde);
  DM.TBNfe.EnableControls;
  DM.TBNfeItens.EnableControls;
end;

procedure TFormNfeItens.SelecionarProduto;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfeNFE_ESTADO.Value,[]);

  DM.TBNfeItensNFI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
  DM.TBNfeItensNFI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
  DM.TBNfeItensNFI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
  DM.TBNfeItensNFI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;
  if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
  begin
    DM.TBNfeItensNFI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBNfeItensNFI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBNfeItensNFI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
  end else
  begin
    DM.TBNfeItensNFI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
    DM.TBNfeItensNFI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBNfeItensNFI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
  end;
  DM.TBNfeItensNFI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
  DM.TBNfeItensNFI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
  DM.TBNfeItensNFI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
  DM.TBNfeItensNFI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
  DM.TBNfeItensNFI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
  DM.TBNfeItensNFI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
  //DM.TBNfeItensNFI_ALMOXARIFADO.Value:=
  DM.TBNfeItensNFI_BENEFICIO.Value:=DM.TBProdutosPRO_BENEFICIO.Value;
  if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
  begin
    if DM.TBNfeNFE_ESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBNfeItensNFI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value else
    DM.TBNfeItensNFI_CFOP.Value:=DM.TBProdutosPRO_CFOPFORA.Value;
    DM.TBNfeItensNAT_DESCRICAO.Clear;
  end;
  DM.TBNfeItensNFI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
  DM.TBNfeItensNFI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
  DM.TBNfeItensNFI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
  DM.TBNfeItensNFI_CODIGOFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value;
  if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
  begin
    DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBNfeNFE_COMISSAO.Value;
    DM.TBNfeItensNFI_COMISSAOREP.Value:=DM.TBNfeNFE_COMISSAOREP.Value
  end else
  begin
    DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
    DM.TBNfeItensNFI_COMISSAOREP.Value:=DM.TBProdutosPRO_COMISSAO.Value;
  end;
  DM.TBNfeItensNFI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
  DM.TBNfeItensNFI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
  DM.TBNfeItensNFI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
  DM.TBNfeItensNFI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
  DM.TBNfeItensNFI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
  DM.TBNfeItensNFI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
  DM.TBNfeItensNFI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
  DM.TBNfeItensNFI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
  begin
    if DM.TBNfeNFE_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end else
  begin
    if DM.TBNfeNFE_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then
    DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  end;
  DM.TBNfeItensNFI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
  DM.TBNfeItensNFI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
  DM.TBNfeItensNFI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
  DM.TBNfeItensNFI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
  DM.TBNfeItensNFI_INFOADICIONAL.Value:=DM.TBProdutosPRO_OBSERVACOES.Value;
  DM.TBNfeItensNFI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value;
  DM.TBNfeItensNFI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
  DM.TBNfeItensNFI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
  DM.TBNfeItensNFI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
  DM.TBNfeItensNFI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
  DM.TBNfeItensNFI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  DM.TBNfeItensNFI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBNfeItensNFI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
  //DM.TBNfeItensNFI_QUANTIDADE.Value:=
  DM.TBNfeItensNFI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
  DM.TBNfeItensNFI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
  DM.TBNfeItensNFI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  if DM.TBNfeNFE_TABELAPRECO.Value='V' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='1' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='2' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='3' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='4' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='5' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
  if DM.TBNfeNFE_TABELAPRECO.Value='6' then DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

  //campos da reforma tributária.
  DM.TBRegrasFiscais.Close;
  DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
  DM.TBRegrasFiscais.Open;
  DM.TBNfeItensNFI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
  //DM.TBNfeItensNFI_ALIQCBSCREDPRES.Value:=
  //DM.TBNfeItensNFI_ALIQCBSDIF.Value:=
  //DM.TBNfeItensNFI_ALIQCBSEFE.Value:=
  DM.TBNfeItensNFI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
  //DM.TBNfeItensNFI_ALIQIBSCREDPRES.Value:=
  DM.TBNfeItensNFI_ALIQIBSMUN.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
  //DM.TBNfeItensNFI_ALIQIBSMUNDIF.Value:=
  //DM.TBNfeItensNFI_ALIQIBSMUNEFE.Value:=
  DM.TBNfeItensNFI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBNfeItensNFI_ALIQIBSUF.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
  //DM.TBNfeItensNFI_ALIQIBSUFDIF.Value:=
  //DM.TBNfeItensNFI_ALIQIBSUFEFE.Value:=
  DM.TBNfeItensNFI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
  DM.TBNfeItensNFI_ALIQIS.Value:=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
  //DM.TBNfeItensNFI_ALIQISESP.Value:=
  //DM.TBNfeItensNFI_BASEIBSCBS.Value:=
  //DM.TBNfeItensNFI_BASEIS.Value:=
  DM.TBNfeItensNFI_CBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value; //o mesmo para o IBS?
  DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
  DM.TBNfeItensNFI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
  DM.TBNfeItensNFI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
  DM.TBNfeItensNFI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
  DM.TBNfeItensNFI_IBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
//  DM.TBNfeItensNFI_VALORCBS.Value:=
//  DM.TBNfeItensNFI_VALORCBSCREDPRES.Value:=
//  DM.TBNfeItensNFI_VALORCBSCREDPRESSUS.Value:=
//  DM.TBNfeItensNFI_VALORCBSDEV.Value:=
//  DM.TBNfeItensNFI_VALORCBSDIF.Value:=
//  DM.TBNfeItensNFI_VALORIBS.Value:=
//  DM.TBNfeItensNFI_VALORIBSCREDPRES.Value:=
//  DM.TBNfeItensNFI_VALORIBSCREDPRESSUS.Value:=
//  DM.TBNfeItensNFI_VALORIBSMUN.Value:=
//  DM.TBNfeItensNFI_VALORIBSMUNDEV.Value:=
//  DM.TBNfeItensNFI_VALORIBSMUNDIF.Value:=
//  DM.TBNfeItensNFI_VALORIBSUF.Value:=
//  DM.TBNfeItensNFI_VALORIBSUFDEV.Value:=
//  DM.TBNfeItensNFI_VALORIBSUFDIF.Value:=
//  DM.TBNfeItensNFI_VALORIS.Value:=

  //campos derivados.
  DM.TBNfeItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
  DM.TBNfeItensICM_CALCULACREDITOSN.Value:=DM.TBProdutosICM_CALCULACREDITOSN.Value;
  DM.TBNfeItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
  DM.TBNfeItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
  DM.TBNfeItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
  DM.TBNfeItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
  DM.TBNfeItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
end;

procedure TFormNfeItens.LimparCamposProduto;
begin
  DM.TBNfeItensNFI_ALIQCOFINS.Clear;
  DM.TBNfeItensNFI_ALIQCOFINSST.Clear;
  DM.TBNfeItensNFI_ALIQFCP.Clear;
  DM.TBNfeItensNFI_ALIQICMS.Clear;
  DM.TBNfeItensNFI_ALIQICMSADICST.Clear;
  DM.TBNfeItensNFI_ALIQICMSINTER.Clear;
  DM.TBNfeItensNFI_ALIQICMSINTERPART.Clear;
  DM.TBNfeItensNFI_ALIQICMSRED.Clear;
  DM.TBNfeItensNFI_ALIQICMSST.Clear;
  DM.TBNfeItensNFI_ALIQIPI.Clear;
  DM.TBNfeItensNFI_ALIQISS.Clear;
  DM.TBNfeItensNFI_ALIQPIS.Clear;
  DM.TBNfeItensNFI_ALIQPISST.Clear;
  DM.TBNfeItensNFI_BASEICMSST.Clear;
  DM.TBNfeItensNFI_BENEFICIO.Clear;
  DM.TBNfeItensNFI_CEST.Clear;
  DM.TBNfeItensNFI_CLASSFISCAL.Clear;
  DM.TBNfeItensNFI_CODIGOBARRAS.Clear;
  DM.TBNfeItensNFI_CODIGOFAB.Clear;
  DM.TBNfeItensNFI_COMISSAO.Clear;
  DM.TBNfeItensNFI_COMPOEBASEICMS.Clear;
  DM.TBNfeItensNFI_COMPOEBASEICMSST.Clear;
  DM.TBNfeItensNFI_CONVERSAO.Clear;
  DM.TBNfeItensNFI_CSTCOFINS.Clear;
  DM.TBNfeItensNFI_CSTICMS.Clear;
  DM.TBNfeItensNFI_CSTIPI.Clear;
  DM.TBNfeItensNFI_CSTPIS.Clear;
  DM.TBNfeItensNFI_DESCRICAO.Clear;
  DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Clear;
  DM.TBNfeItensNFI_FCI.Clear;
  DM.TBNfeItensNFI_INCENTIVOISS.Clear;
  DM.TBNfeItensNFI_INDICADORISS.Clear;
  DM.TBNfeItensNFI_LOCALIZACAO.Clear;
  DM.TBNfeItensNFI_MODICMS.Clear;
  DM.TBNfeItensNFI_MODICMSST.Clear;
  DM.TBNfeItensNFI_ORIGEM.Clear;
  DM.TBNfeItensNFI_PESO.Clear;
  DM.TBNfeItensNFI_PRECOCUSTO.Clear;
  DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Clear;
  DM.TBNfeItensNFI_PRODUTO.Clear;
  DM.TBNfeItensNFI_PRODUTOREAL.Clear;
  DM.TBNfeItensNFI_TIPO.Clear;
  DM.TBNfeItensNFI_TIPOISS.Clear;
  DM.TBNfeItensNFI_UNIDADE.Clear;
  DM.TBNfeItensNFI_VALORUNIT.Clear;

  DM.TBNfeItensCLF_DESCRICAO.Clear;
  DM.TBNfeItensICM_DESCRICAO.Clear;
  DM.TBNfeItensIPI_DESCRICAO.Clear;
  DM.TBNfeItensISS_DESCRICAO.Clear;
  DM.TBNfeItensPIS_DESCRICAO.Clear;
  DM.TBNfeItensPIS_DESCRICAO1.Clear; //cofins
end;

procedure TFormNfeItens.PngBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar then
  begin
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value;
    DM.TBRegrasFiscais.Open;

    DM.TBNfeItensNFI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=DM.tbregrasfiscais
    DM.TBNfeItensNFI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
    DM.TBNfeItensNFI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    DM.TBNfeItensNFI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DM.TBNfeItensNFI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DM.TBNfeItensNFI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIBSCBS.Value,1,3);
    DM.TBNfeItensNFI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIS.Value,1,3);
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure TFormNfeItens.PngSpeedButton1Click(Sender: TObject);
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

procedure TFormNfeItens.PngSpeedButton2Click(Sender: TObject);
var Senha: String;
begin
  if DM.TBNfeItensNFI_QUANTIDADETROCA.Value<>0 then
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
    Application.CreateForm(TFormNfeAlterarDescontoItem, FormNfeAlterarDescontoItem);
    DescontoEmValor:=False;
    FormNfeAlterarDescontoItem.Label1.Caption:='% de Desconto:';
    FormNfeAlterarDescontoItem.Edit1.Text:=DM.TBNfeItensNFI_DESCVALOR.AsString;
    FormNfeAlterarDescontoItem.ShowModal;
    FormNfeAlterarDescontoItem.Free;
    FormNfeAlterarDescontoItem:=nil;
  end;
end;

procedure TFormNfeItens.PngSpeedButton3Click(Sender: TObject);
var Senha: String;
begin
  if DM.TBNfeItensNFI_QUANTIDADETROCA.Value<>0 then
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
    Application.CreateForm(TFormNfeAlterarDescontoItem, FormNfeAlterarDescontoItem);
    DescontoEmValor:=True;
    FormNfeAlterarDescontoItem.Label1.Caption:='Valor do Desconto:';
    FormNfeAlterarDescontoItem.Edit1.Text:=DM.TBNfeItensNFI_DESCVALOR.AsString;
    FormNfeAlterarDescontoItem.ShowModal;
    FormNfeAlterarDescontoItem.Free;
    FormNfeAlterarDescontoItem:=nil;
  end;
end;

procedure TFormNfeItens.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBNfeItensNFI_CIDADEISS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormNfeItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBNfeItensNFI_PAISISS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormNfeItens.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBNfeItensNFI_BENEFICIO.Value:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormNfeItens.PngSpeedButton7Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(DBEdit114,DBEdit115,DM.TBNfeItens);
end;

procedure TFormNfeItens.ProdutoComposto;
begin
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value; //localiza o produto novamente para poder inserir a composicao corretamente caso tenha entrado no IF acima.
  DM.TBProdutos.Open;
  QtdeNiveis:=0;
  InserirProdutoComposto;
end;

procedure TFormNfeItens.ProdutoSimples;
begin
  DM.TBNfeItensNFI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM.TBNfeItens.Post;
end;

procedure TFormNfeItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBNfeItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCamposProduto;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfeItens.State in [dsInsert]) and ((Sender as TDBEdit).Text<>'') then
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

procedure TFormNfeItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNfeItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton9Click(Sender: TObject);
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
    if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) and (DM.TBNfeNFE_ENTRADASAIDA.Value='S') then
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

procedure TFormNfeItens.ValorUnitario1Click(Sender: TObject);
begin
  PngSpeedButton1.Click;
end;

procedure TFormNfeItens.DBEdit12Exit(Sender: TObject);
begin
  if DM.TBNfeNFE_MANUAL.Value<>'S' then  
  DM.CalcularTotaisNFeItens(False); //parametro sem uso.
end;

procedure TFormNfeItens.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNfeItens.DBEdit110KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeItensNFI_BENEFICIO.Clear;
end;

procedure TFormNfeItens.DBEdit114Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit114Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(DBEdit114,DBEdit115,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit114KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormNfeItens.DBEdit114KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeItens.BitBtn1Click(Sender: TObject);
var Mensagem: WideString;
begin
  if DM.TBNfeItensNFI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBNfeItensNFI_QUANTIDADE.Value > DM.TBProdutosPRO_ESTOQUEATUAL.Value) then
  begin
    MessageDlg('A quantidade informada é maior do que a quantidade em estoque.',mtWarning,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;

  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe almoxarifado cadastrado para este produto.');

  //verificar se a quantidade em estoque é suficiente para os pedidos em aberto.
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBNfeNFE_ENTRADASAIDA.Value='S') then
  begin
    if VerificarSaldoEstoqueItem('NFE',
      DM.TBNfeItensNFI_PRODUTO.Value,
      DM.TBNfeItensNFI_PRODUTOREAL.Value,
      DM.TBNfeItensNFI_CODIGO.Value,
      DM.TBNfeItensNFI_QUANTIDADE.AsExtended,
      DM.TBNfeItensNFI_CONVERSAO.AsExtended,
      Mensagem
    )=False then
    begin
      MessageDlg(Mensagem,mtInformation,[mbOk],0);
      Exit;
    end;
  end;

  //#########################################################################################//
  // O produto é composto.                                                                   //
  //#########################################################################################//
  if (DM.TBNfeItens.State in [dsInsert]) and (DM.TBProdutosPRO_COMPOSTO.Value='S') then
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

procedure TFormNfeItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBNfeItens.State in [dsInsert, dsEdit] then
  DM.TBNfeItens.Cancel;
end;

procedure TFormNfeItens.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  if DM.TBNfeNFE_FINALIDADE.Value='2 - NFE COMPLEMENTAR' then
  begin
    DBEdit6.ReadOnly:=False;
    DBEdit18.ReadOnly:=False;
    DBEdit28.ReadOnly:=False;
    DBEdit29.ReadOnly:=False;
  end;
end;

procedure TFormNfeItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeItens.FormShow(Sender: TObject);
begin
  if (DM.TBNfeItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormNfeItens); //habilita o campo valor unitario caso esteja liberado para o usuário.

    if DM.TBNfeNFE_MANUAL.Value='S' then
    ReadOnlyCamposNfeItens(False) else
    ReadOnlyCamposNfeItens(True);
  end;
  if (DM.TBNfeItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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
      if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) and (DM.TBNfeNFE_ENTRADASAIDA.Value='S') then
      begin
        MessageDlg('O produto selecionado não consta em estoque.',mtError,[mbOk],0);
        DM.TBNfeItensNFI_PRODUTO.Clear;
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

procedure TFormNfeItens.SpeedButton1Click(Sender: TObject);
begin
  //deve-se associar o codigo do produto antes de criar o form.
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.Edit3.Text:=DM.TBNfeItensNFI_PRODUTO.Value.ToString;
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    if FormLotesLoc.QYLotesLOT_PRODUTO.Value<>DM.TBNfeItensNFI_PRODUTO.Value then
    MessageDlg('O lote selecionado não é do produto selecionado.',mtError,[mbOk],0) else
    DM.TBNfeItensNFI_LOTE.Value:=FormLotesLoc.QYLotesLOT_CODIGO.Value.ToString;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure TFormNfeItens.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeItensNFI_LOTE.Clear;
end;

procedure TFormNfeItens.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit3Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit3,DBEdit20,DBEdit112,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormNfeItens.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton2Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit3,DBEdit20,DBEdit112,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit63KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormNfeItens.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit25,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit64KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormNfeItens.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit25,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit65KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormNfeItens.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit14,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit71KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormNfeItens.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit14,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit2Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit2,DBEdit24,DBEdit109,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormNfeItens.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton4Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit2,DBEdit24,DBEdit109,DM.TBNfeItens);
end;

procedure TFormNfeItens.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfeItens.DBEdit21Exit(Sender: TObject);
begin
  if (DM.TBNfeItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfeItensNFI_CFOP.Clear;
    DM.TBNfeItensNAT_DESCRICAO.Clear;
    DM.TBNfeItensNAT_CALCULACOMISSAO.Clear;
    DM.TBNfeItensNAT_CALCULACREDITOSN.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfeItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBNfeItensNFI_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBNfeItensNAT_DESCRICAO.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBNfeItensNAT_CALCULACOMISSAO.Value:=DMS.QYNaturezasNAT_CALCULACOMISSAO.Value;
      DM.TBNfeItensNAT_CALCULACREDITOSN.Value:=DMS.QYNaturezasNAT_CALCULACREDITOSN.Value;
    end else
    begin
      DM.TBNfeItensNFI_CFOP.Clear;
      DM.TBNfeItensNAT_DESCRICAO.Clear;
      DM.TBNfeItensNAT_CALCULACOMISSAO.Clear;
      DM.TBNfeItensNAT_CALCULACREDITOSN.Clear;
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNfeItens.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormNfeItens.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfeItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBNfeItens.Edit;
    DM.TBNfeItensNFI_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBNfeItensNAT_DESCRICAO.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBNfeItensNAT_CALCULACOMISSAO.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACOMISSAO.Value;
    DM.TBNfeItensNAT_CALCULACREDITOSN.Value:=FormNaturezasLoc.QYNaturezasNAT_CALCULACREDITOSN.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNfeItens.DBEdit31Exit(Sender: TObject);
begin
  DM.TBNfeItensNFI_DESCPORC.Value:=(100.0/((DM.TBNfeItensNFI_QUANTIDADE.Value*DM.TBNfeItensNFI_VALORUNIT.Value)+
                                            DM.TBNfeItensNFI_VALORFRETE.Value+
                                            DM.TBNfeItensNFI_VALORSEGURO.Value+
                                            DM.TBNfeItensNFI_VALORACESSORIAS.Value))*DM.TBNfeItensNFI_DESCVALOR.Value;
  if DM.TBNfeNFE_MANUAL.Value<>'S' then
  DM.CalcularTotaisNFeItens(False);
end;

procedure TFormNfeItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFeItens(False); //parametro sem uso.
end;

procedure TFormNfeItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormNfeItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

initialization
  RegisterClass(TFormNfeItens);

finalization
  UnRegisterClass(TFormNfeItens);

end.

