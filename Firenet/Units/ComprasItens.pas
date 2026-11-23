unit ComprasItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  PngBitBtn, PngSpeedButton, ComCtrls, ImgList, Menus, System.ImageList,
  System.UITypes, PngImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormComprasItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
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
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label4: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
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
    Label35: TLabel;
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
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Label36: TLabel;
    Label37: TLabel;
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
    Label38: TLabel;
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
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label48: TLabel;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    TabSheet5: TTabSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    SpeedButton27: TPngSpeedButton;
    Label58: TLabel;
    DBEdit36: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit47: TDBEdit;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    Label14: TLabel;
    Atalhos1: TMenuItem;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
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
    DBEdit19: TDBEdit;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    Label23: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    TRProdutos: TFDTransaction;
    QYProdutos: TFDQuery;
    QYProdutosPRO_CODIGO: TIntegerField;
    QYProdutosPRO_NOME: TStringField;
    Label31: TLabel;
    DBEdit58: TDBEdit;
    Label19: TLabel;
    DBEdit78: TDBEdit;
    Label118: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    Label22: TLabel;
    DBEdit81: TDBEdit;
    Label61: TLabel;
    DBEdit82: TDBEdit;
    Label62: TLabel;
    DBEdit100: TDBEdit;
    Label20: TLabel;
    DBEdit79: TDBEdit;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure OK1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit50Exit(Sender: TObject);
    procedure DBEdit49Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit52Enter(Sender: TObject);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit64Enter(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit114Enter(Sender: TObject);
    procedure DBEdit114Exit(Sender: TObject);
    procedure DBEdit114KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit114KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularCampoDescPorc;
    procedure SelecionarProduto;
    procedure LimparCamposProduto;
  public
    { Public declarations }
    procedure DesabilitarCampos;
  end;

var
  FormComprasItens: TFormComprasItens;

implementation
uses DataMod, ProdutosLoc, Funcoes1, DataModSearch,
  NaturezasLoc, EnderecosCidadesLoc, EnderecosPaisesLoc, ComprasAlterarDescontoItem, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM.TBComprasCOM_STATUS.Value='F') or (DM.TBComprasCOM_STATUS.Value='C') then
  begin
    DM.TBComprasItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormComprasItens.ComponentCount-1 do
    begin
      if (FormComprasItens.Components[I] is TDBEdit) then
      (FormComprasItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormComprasItens.Components[I] is TDBComboBox) then
      (FormComprasItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormComprasItens.Components[I] is TDBMemo) then
      (FormComprasItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormComprasItens.Components[I] is TDBGrid) then
      (FormComprasItens.Components[I] as TDBGrid).Enabled:=False else
      if (FormComprasItens.Components[I] is TSpeedButton) then
      (FormComprasItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormComprasItens.Components[I] is TPngSpeedButton) then
      (FormComprasItens.Components[I] as TPngSpeedButton).Enabled:=False;
    end;
  end;
end;

procedure TFormComprasItens.SelecionarProduto;
begin
  DM.TBComprasItensCOI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
  DM.TBComprasItensCOI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
  DM.TBComprasItensCOI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
  if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
  begin
    DM.TBComprasItensCOI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBComprasItensCOI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBComprasItensCOI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBComprasItensCOI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
  end else
  begin
    DM.TBComprasItensCOI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBComprasItensCOI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
    DM.TBComprasItensCOI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBComprasItensCOI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
  end;
  DM.TBComprasItensCOI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
  DM.TBComprasItensCOI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
  DM.TBComprasItensCOI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
  DM.TBComprasItensCOI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
  DM.TBComprasItensCOI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
  DM.TBComprasItensCOI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
  //DM.TBComprasItensCOI_ALMOXARIFADO.Value:=
  if DM.TBParametrosPAR_CFOPPRODUTO.Value='S' then
  begin
    DM.TBComprasItensCOI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value; //se for 'N' então mantém o da capa que é preenchido no AfterInsert de itens.
    DM.TBComprasItensNAT_DESCRICAO.Clear;
  end;
  DM.TBComprasItensCOI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
  //DM.TBComprasItensCOI_CODFAB.Value:=DM.TBProdutosPRO_CODIGOFAB.Value; //nao tem esses campos.
  //if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
  //DM.TBComprasItensCOI_COMISSAO.Value:=DM.TBComprasCOM_COMISSAO.Value else
  //DM.TBComprasItensCOI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
  DM.TBComprasItensCOI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
  DM.TBComprasItensCOI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
  DM.TBComprasItensCOI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
  DM.TBComprasItensCOI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
  DM.TBComprasItensCOI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
  DM.TBComprasItensCOI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
  DM.TBComprasItensCOI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
  //DM.TBComprasItensCOI_DESCMAX.Value:=DM.TBProdutosPRO_DESCMAX.Value; //nao tem esses campos. Deixado apenas pra dar o mesmo espaçamento com as outras telas de itens.
  //if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='S' then //desconto por cliente ou por condição?
  //begin
  //  //if DM.TBServicosSER_DESCPORCCLIENTE.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
  //  //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  //end else
  //begin
  //  //if DM.TBServicosSER_DESCPORCCONDICAO.Value > DM.TBProdutosPRO_DESCMAX.Value then nao tem esse campo em servicos.
  //  //DM.TBServicosItensSEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
  //end;
  DM.TBComprasItensCOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
  DM.TBComprasItensCOI_ENQUADRAMENTOIPI.Value:=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
  DM.TBComprasItensCOI_FCI.Value:=DM.TBProdutosPRO_FCI.Value;
  DM.TBComprasItensCOI_INCENTIVOISS.Value:=DM.TBProdutosPRO_INCENTIVOISS.Value;
  DM.TBComprasItensCOI_INDICADORISS.Value:=DM.TBProdutosPRO_INDICADORISS.Value;
  //DM.TBComprasItensCOI_LOCALIZACAO.Value:=DM.TBProdutosPRO_LOCALIZACAO.Value; //nao tem esse campo.
  DM.TBComprasItensCOI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
  DM.TBComprasItensCOI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
  DM.TBComprasItensCOI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
  DM.TBComprasItensCOI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
  //DM.TBComprasItensCOI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value; //nao tem esse campo.
  DM.TBComprasItensCOI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBComprasItensCOI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
  //DM.TBServicosItensSEI_QUANTIDADE.Value:=
  DM.TBComprasItensCOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
  DM.TBComprasItensCOI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
  DM.TBComprasItensCOI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  DM.TBComprasItensCOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  //1
  //2
  //3
  //4
  //5
  //6

  DM.TBComprasItensCLF_DESCRICAO.Value:=DM.TBProdutosCLF_DESCRICAO.Value;
  DM.TBComprasItensICM_CALCULACREDITOSN.Value:=DM.TBProdutosICM_CALCULACREDITOSN.Value;
  DM.TBComprasItensICM_DESCRICAO.Value:=DM.TBProdutosICM_DESCRICAO.Value;
  DM.TBComprasItensIPI_DESCRICAO.Value:=DM.TBProdutosIPI_DESCRICAO.Value;
  DM.TBComprasItensISS_DESCRICAO.Value:=DM.TBProdutosISS_DESCRICAO.Value;
  DM.TBComprasItensPIS_DESCRICAO.Value:=DM.TBProdutosPIS_DESCRICAO.Value;
  DM.TBComprasItensPIS_DESCRICAO1.Value:=DM.TBProdutosPIS_DESCRICAO1.Value; //cofins
end;

procedure TFormComprasItens.LimparCamposProduto;
begin
  DM.TBComprasItensCOI_ALIQICMS.Clear;
  DM.TBComprasItensCOI_ALIQICMSADICST.Clear;
  DM.TBComprasItensCOI_ALIQICMSRED.Clear;
  DM.TBComprasItensCOI_ALIQICMSST.Clear;
  DM.TBComprasItensCOI_ALIQIPI.Clear;
  DM.TBComprasItensCOI_ALIQISS.Clear;
  DM.TBComprasItensCOI_ALIQPIS.Clear;
  DM.TBComprasItensCOI_ALIQPISST.Clear;
  DM.TBComprasItensCOI_BASEICMSST.Clear;
  DM.TBComprasItensCOI_COMPOEBASEICMS.Clear;
  DM.TBComprasItensCOI_COMPOEBASEICMSST.Clear;
  DM.TBComprasItensCOI_CLASSFISCAL.Clear;
  DM.TBComprasItensCOI_CSTCOFINS.Clear;
  DM.TBComprasItensCOI_CSTICMS.Clear;
  DM.TBComprasItensCOI_CSTIPI.Clear;
  DM.TBComprasItensCOI_CSTPIS.Clear;
  DM.TBComprasItensCOI_DESCRICAO.Clear;
  DM.TBComprasItensCOI_MODICMS.Clear;
  DM.TBComprasItensCOI_MODICMSST.Clear;
  DM.TBComprasItensCOI_ORIGEM.Clear;
  DM.TBComprasItensCOI_PRODUTO.Clear;
  DM.TBComprasItensCOI_PESO.Clear;
  DM.TBComprasItensCOI_TIPO.Clear;
  DM.TBComprasItensCOI_TIPOISS.Clear;
  DM.TBComprasItensCOI_UNIDADE.Clear;
  DM.TBComprasItensCOI_VALORUNIT.Clear;

  DM.TBComprasItensCLF_DESCRICAO.Clear;
end;

procedure TFormComprasItens.DBEdit50Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.DBEdit51Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.DBEdit52Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit52Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit52,DBEdit55,DBEdit19,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit52KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormComprasItens.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit53Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit53Exit(Sender: TObject);
begin
  if (DM.TBComprasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBComprasItensCOI_CFOP.Clear;
    DM.TBComprasItensNAT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBComprasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBComprasItensCOI_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBComprasItensNAT_DESCRICAO.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
    end else
    begin
      DM.TBComprasItensCOI_CFOP.Clear;
      DM.TBComprasItensNAT_DESCRICAO.Clear;
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormComprasItens.DBEdit53KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormComprasItens.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBComprasItensCOI_DTENTREGA.Clear;
end;

procedure TFormComprasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBComprasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBComprasItensCOI_PRODUTO.Clear;
    DM.TBComprasItensCOI_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBComprasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYProdutos.Close;
    QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYProdutos.Open;
    if not QYProdutos.IsEmpty then
    begin //localiza o produto na tabela principal pra mostrar o estoque atual.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=QYProdutosPRO_CODIGO.Value;
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
    QYProdutos.Close;
  end;
end;

procedure TFormComprasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormComprasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit63KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormComprasItens.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit33,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit64KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormComprasItens.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit65KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormComprasItens.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit46,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit71KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormComprasItens.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit33,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit46,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton2Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit20,DBEdit26,DBEdit57,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBComprasItens.Edit;
    DM.TBComprasItensCOI_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBComprasItensNAT_DESCRICAO.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormComprasItens.SpeedButton4Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit52,DBEdit55,DBEdit19,DM.TBComprasItens);
end;

procedure TFormComprasItens.SpeedButton9Click(Sender: TObject);
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
    DM.TBComprasItens.Edit;
    DM.TBComprasItensCOI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBComprasItensCOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBComprasItensCOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
    DM.TBComprasItensCOI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
    DM.TBComprasItensCOI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
    DM.TBComprasItensCOI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
    DM.TBComprasItensCOI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
    DM.TBComprasItensCOI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
    DM.TBComprasItensCOI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
    DM.TBComprasItensCOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormComprasItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False); //parametro sem uso.

{ trocado pela rotina acima. DM.TBComprasItensCOI_VALORTOTAL.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value * DM.TBComprasItensCOI_VALORUNIT.Value;
  //base de calculo do icms com a aliquota de redução da base.
  if DM.TBComprasItensCOI_ALIQICMS.Value<>0 then
  DM.TBComprasItensCOI_BASEICMS.Value:=Decimais(DM.TBComprasItensCOI_VALORTOTAL.Value-((DM.TBComprasItensCOI_VALORTOTAL.Value/100)*DM.TBComprasItensCOI_ALIQICMSRED.Value),2);
  //calcula o valor do ICMS, ISS e IPI.
  DM.TBComprasItensCOI_VALORICMS.Value:=Decimais(((DM.TBComprasItensCOI_BASEICMS.Value/100)*DM.TBComprasItensCOI_ALIQICMS.Value),2);
  DM.TBComprasItensCOI_VALORISS.Value:=Decimais(((DM.TBComprasItensCOI_VALORTOTAL.Value/100)*DM.TBComprasItensCOI_ALIQISS.Value),2);
  DM.TBComprasItensCOI_VALORIPI.Value:=Decimais(((DM.TBComprasItensCOI_VALORTOTAL.Value/100)*DM.TBComprasItensCOI_ALIQIPI.Value),2);
  }
end;

procedure TFormComprasItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasItens.BitBtn1Click(Sender: TObject);
begin
  //realizar as contas dos impostos aki ou no before post da tabela?.
  if DM.TBComprasItensCOI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  AbortIf(DM.TBProdutosQtde.IsEmpty,'Não existe nenhum almoxarifado cadastrado para este produto.');

  DM.TBComprasItensCOI_ALMOXARIFADO.Value:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
  DM.TBComprasItens.Post;
  Close;
end;

procedure TFormComprasItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit114Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit114Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(DBEdit114,DBEdit115,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit114KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormComprasItens.DBEdit114KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit20Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormComprasItens.DBEdit20Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit20,DBEdit26,DBEdit57,DM.TBComprasItens);
end;

procedure TFormComprasItens.DBEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormComprasItens.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasItens.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.DBEdit3Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComprasItens.CalcularCampoDescPorc;
begin
  DM.TBComprasItensCOI_DESCPORC.Value:=Decimais((100.0/((DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_VALORUNIT.AsExtended)+
                                                DM.TBComprasItensCOI_VALORFRETE.AsExtended+
                                                DM.TBComprasItensCOI_VALORSEGURO.AsExtended+
                                                DM.TBComprasItensCOI_VALORACESSORIAS.AsExtended))*DM.TBComprasItensCOI_DESCVALOR.AsExtended,8);
end;

procedure TFormComprasItens.DBEdit48Exit(Sender: TObject);
begin
  CalcularCampoDescPorc;
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.DBEdit49Exit(Sender: TObject);
begin
  DM.CalcularTotaisCompraItens(False);
end;

procedure TFormComprasItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBComprasItens.State in [dsInsert, dsEdit] then
  DM.TBComprasItens.Cancel;
end;

procedure TFormComprasItens.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormComprasItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComprasItens.FormShow(Sender: TObject);
begin
  if (DM.TBComprasItens.State in [dsInsert]) and (DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value='S') then
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

procedure TFormComprasItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormComprasItens.PngSpeedButton2Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormComprasAlterarDescontoItem, FormComprasAlterarDescontoItem);
    DescontoEmValor:=False;
    FormComprasAlterarDescontoItem.Label1.Caption:='% de Desconto:';
    FormComprasAlterarDescontoItem.Edit1.Text:=DM.TBComprasItensCOI_DESCPORC.AsString;
    FormComprasAlterarDescontoItem.ShowModal;
    FormComprasAlterarDescontoItem.Free;
    FormComprasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormComprasItens.PngSpeedButton3Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Super Senha','Digite a senha para liberação do acesso:');
    if not (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=DM.TBEmpresaEMP_SUPERSENHA.Value) or (Senha='');
  if Senha=DM.TBEmpresaEMP_SUPERSENHA.Value then
  begin
    Application.CreateForm(TFormComprasAlterarDescontoItem, FormComprasAlterarDescontoItem);
    DescontoEmValor:=True;
    FormComprasAlterarDescontoItem.Label1.Caption:='Valor do Desconto:';
    FormComprasAlterarDescontoItem.Edit1.Text:=DM.TBComprasItensCOI_DESCVALOR.AsString;
    FormComprasAlterarDescontoItem.ShowModal;
    FormComprasAlterarDescontoItem.Free;
    FormComprasAlterarDescontoItem:=nil;
  end;
end;

procedure TFormComprasItens.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBComprasItensCOI_CIDADEISS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormComprasItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBComprasItensCOI_PAISISS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormComprasItens.PngSpeedButton7Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(DBEdit114,DBEdit115,DM.TBComprasItens);
end;

initialization
  RegisterClass(TFormComprasItens);

finalization
  UnRegisterClass(TFormComprasItens);

end.
