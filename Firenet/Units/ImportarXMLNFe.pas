unit ImportarXMLNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList,
  ACBrBase, ACBrDFe, ACBrNFe, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFormImportarXMLNFe = class(TForm)
    Label15: TLabel;
    DBGrid1: TDBGrid;
    Label17: TLabel;
    TBNF: TClientDataSet;
    DSNF: TDataSource;
    DSNFItens: TDataSource;
    TBNFItens: TClientDataSet;
    TBNFItensNFI_ALIQCOFINS: TFloatField;
    TBNFItensNFI_ALIQCOFINSST: TFloatField;
    TBNFItensNFI_ALIQICMS: TFloatField;
    TBNFItensNFI_ALIQICMSADICST: TFloatField;
    TBNFItensNFI_ALIQICMSRED: TFloatField;
    TBNFItensNFI_ALIQICMSST: TFloatField;
    TBNFItensNFI_ALIQIPI: TFloatField;
    TBNFItensNFI_ALIQISS: TFloatField;
    TBNFItensNFI_ALIQPIS: TFloatField;
    TBNFItensNFI_ALIQPISST: TFloatField;
    TBNFItensNFI_BASECOFINS: TCurrencyField;
    TBNFItensNFI_BASECOFINSST: TCurrencyField;
    TBNFItensNFI_BASEICMS: TCurrencyField;
    TBNFItensNFI_BASEICMSRED: TCurrencyField;
    TBNFItensNFI_BASEICMSST: TCurrencyField;
    TBNFItensNFI_BASEIPI: TCurrencyField;
    TBNFItensNFI_BASEISS: TCurrencyField;
    TBNFItensNFI_BASEPIS: TCurrencyField;
    TBNFItensNFI_BASEPISST: TCurrencyField;
    TBNFItensNFI_CEST: TStringField;
    TBNFItensNFI_CFOP: TIntegerField;
    TBNFItensNFI_CLASSFISCAL: TStringField;
    TBNFItensNFI_CODIGO: TStringField;
    TBNFItensNFI_CODIGOBARRAS: TStringField;
    TBNFItensNFI_CODIGOLOCAL: TIntegerField;
    TBNFItensNFI_COMPLEMENTO: TStringField;
    TBNFItensNFI_COMPOEBASEICMS: TStringField;
    TBNFItensNFI_CSTCOFINS: TIntegerField;
    TBNFItensNFI_CSTICMS: TIntegerField;
    TBNFItensNFI_CSTIPI: TIntegerField;
    TBNFItensNFI_CSTISS: TStringField;
    TBNFItensNFI_CSTPIS: TIntegerField;
    TBNFItensNFI_DESCPORC: TFloatField;
    TBNFItensNFI_DESCRICAO: TStringField;
    TBNFItensNFI_DESCVALOR: TCurrencyField;
    TBNFItensNFI_EXCECAO: TIntegerField;
    TBNFItensNFI_FCI: TStringField;
    TBNFItensNFI_INFOADICIONAL: TMemoField;
    TBNFItensNFI_MODICMS: TStringField;
    TBNFItensNFI_MODICMSST: TStringField;
    TBNFItensNFI_ORIGEM: TStringField;
    TBNFItensNFI_PESO: TFloatField;
    TBNFItensNFI_PESOTOTAL: TFloatField;
    TBNFItensNFI_QUANTIDADE: TFloatField;
    TBNFItensNFI_TEMNOPEDIDO: TStringField;
    TBNFItensNFI_TIPO: TStringField;
    TBNFItensNFI_TIPOISS: TIntegerField;
    TBNFItensNFI_UNIDADE: TStringField;
    TBNFItensNFI_VALORACESSORIAS: TCurrencyField;
    TBNFItensNFI_VALORCOFINS: TCurrencyField;
    TBNFItensNFI_VALORCOFINSST: TCurrencyField;
    TBNFItensNFI_VALORFRETE: TCurrencyField;
    TBNFItensNFI_VALORICMS: TCurrencyField;
    TBNFItensNFI_VALORICMSST: TCurrencyField;
    TBNFItensNFI_VALORIPI: TCurrencyField;
    TBNFItensNFI_VALORISS: TCurrencyField;
    TBNFItensNFI_VALORPIS: TCurrencyField;
    TBNFItensNFI_VALORPISST: TCurrencyField;
    TBNFItensNFI_VALORSEGURO: TCurrencyField;
    TBNFItensNFI_VALORTOTAL: TFloatField;
    TBNFItensNFI_VALORTOTALBRUTO: TCurrencyField;
    TBNFItensNFI_VALORTRIBUTOS: TCurrencyField;
    TBNFItensNFI_VALORUNIT: TFloatField;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AbrirXML1: TMenuItem;
    N3: TMenuItem;
    AtualizarPedidoConformeXML1: TMenuItem;
    N2: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    ACBrNFe1: TACBrNFe;
    FileOpenDialog1: TFileOpenDialog;
    PngImageList1: TPngImageList;
    PopupMenu1: TPopupMenu;
    InformarOProdutoLocal1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Funes1: TMenuItem;
    CadastrarEmitentecomoFornecedor1: TMenuItem;
    CadastrarProduto1: TMenuItem;
    procedure AbrirXML1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CadastrarEmitentecomoFornecedor1Click(Sender: TObject);
    procedure CadastrarProduto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarXMLNFe: TFormImportarXMLNFe;

implementation
uses DataMod, pcnConversao, Funcoes1, pcnConversaoNFe;
{$R *.dfm}

procedure TFormImportarXMLNFe.AbrirXML1Click(Sender: TObject);
var I: Integer;
  S: String;
begin
  if FileOpenDialog1.Execute then
  begin
    TBNFItens.EmptyDataSet;
    Label2.Caption:=FileOpenDialog1.FileName;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(FileOpenDialog1.FileName);

    //Dados do emitente da NFe.
    Label4.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    Label16.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label6.Caption:=S;
    Label8.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
    Label38.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM;
    Label20.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
    Label22.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
    Label24.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
    Label26.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
    Label28.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun.ToString;
    Label29.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
    Label31.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
    Label33.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais.ToString;
    Label34.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
    S:=AlignText(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone,'0',12,taRight);
    Insert('(',S,1); Insert(') ',S,5); Insert('-',S,12);
    Label36.Caption:=S;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP.ToString;
    Insert('-',S,6);
    Label62.Caption:=S;

    //Dados do destinatário da NFe.
    Label10.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label12.Caption:=S;
    Label14.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email;
    Label40.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE;
    Label42.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IM;
    Label44.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr;
    Label46.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro;
    Label48.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl;
    Label50.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro;
    Label52.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun.ToString;
    Label53.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
    Label55.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
    Label57.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais.ToString;
    Label58.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais;
    S:=AlignText(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone,'0',12,taRight);
    Insert('(',S,1); Insert(') ',S,5); Insert('-',S,12);
    Label60.Caption:=S;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP.ToString;
    Insert('-',S,6);
    Label64.Caption:=S;

    for I:=0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin
      TBNFItens.Insert;
      TBNFItensNFI_ALIQCOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.pCOFINS;
      TBNFItensNFI_ALIQCOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.pCOFINS;
      TBNFItensNFI_ALIQICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pICMS;
      TBNFItensNFI_ALIQICMSADICST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pMVAST;
      TBNFItensNFI_ALIQICMSRED.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pRedBC;
      TBNFItensNFI_ALIQICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pICMSST;
      TBNFItensNFI_ALIQIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.pIPI;
      TBNFItensNFI_ALIQISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vAliq;
      TBNFItensNFI_ALIQPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.pPIS;
      TBNFItensNFI_ALIQPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.pPis;
      TBNFItensNFI_BASECOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.vBC;
      TBNFItensNFI_BASECOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.vBC;
      TBNFItensNFI_BASEICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBC;
      TBNFItensNFI_BASEICMSRED.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBCSTRet; //é esse mesmo?.
      TBNFItensNFI_BASEICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBCST;
      TBNFItensNFI_BASEIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.vBC;
      TBNFItensNFI_BASEISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vBC;
      TBNFItensNFI_BASEPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.vBC;
      TBNFItensNFI_BASEPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.vBc;
      TBNFItensNFI_CFOP.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cfop);
      TBNFItensNFI_CLASSFISCAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.ncm;
      TBNFItensNFI_CODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cProd;
      TBNFItensNFI_CODIGOBARRAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cEan;
      TBNFItensNFI_CODIGOLOCAL.Value:=0; //tenta localizar este código na tabela local... abaixo.
      TBNFItensNFI_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].infAdProd; //associado aqui e em infoadicional (blob).
      case StrToInt(IndTotToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.IndTot)) of //se não soma no total da NFe, também nao compõe base. certo?
        0: TBNFItensNFI_COMPOEBASEICMS.Value:='N';
        1: TBNFItensNFI_COMPOEBASEICMS.Value:='S';
      end;
      if CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST)<>'' then
      TBNFItensNFI_CSTCOFINS.Value:=StrToInt(CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST));
      if CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST)<>'' then
      TBNFItensNFI_CSTICMS.Value:=StrToInt(CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST));
      if CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST)<>'' then
      TBNFItensNFI_CSTIPI.Value:=StrToInt(CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST));
      if ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib)<>'' then
      TBNFItensNFI_CSTISS.Value:=ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib);
      if CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST)<>'' then
      TBNFItensNFI_CSTPIS.Value:=StrToInt(CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST));
      //TBNFItensNFI_DESCPORC.Value:=//calcular.
      TBNFItensNFI_DESCRICAO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.xProd;
      TBNFItensNFI_DESCVALOR.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vDesc;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI<>'' then
      TBNFItensNFI_EXCECAO.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI);
      TBNFItensNFI_FCI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nFCI;
      TBNFItensNFI_INFOADICIONAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].infAdProd;
      if modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)<>'' then
      begin
        case StrToInt(modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)) of
          0: TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
          1: TBNFItensNFI_MODICMS.Value:='1 - PAUTA (VALOR)';
          2: TBNFItensNFI_MODICMS.Value:='2 - PRECO TABELADO MAXIMO (VALOR)';
          3: TBNFItensNFI_MODICMS.Value:='3 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
      case StrToInt(modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)) of
        0: TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
        1: TBNFItensNFI_MODICMSST.Value:='1 - LISTA NEGATIVA (VALOR)';
        2: TBNFItensNFI_MODICMSST.Value:='2 - LISTA POSITIVA (VALOR)';
        3: TBNFItensNFI_MODICMSST.Value:='3 - LISTA NEUTRA (VALOR)';
        4: TBNFItensNFI_MODICMSST.Value:='4 - MARGEM VALOR AGREGADO (%)';
        5: TBNFItensNFI_MODICMSST.Value:='5 - PAUTA (VALOR)';
      end;
      case StrToInt(origToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)) of
        0: TBNFItensNFI_ORIGEM.Value:='0 - NACIONAL';
        1: TBNFItensNFI_ORIGEM.Value:='1 - ESTRANGEIRA - IMPORTACAO DIRETA';
        2: TBNFItensNFI_ORIGEM.Value:='2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO';
        3: TBNFItensNFI_ORIGEM.Value:='3 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 40% E INFERIOR OU IGUAL A 70%';
        4: TBNFItensNFI_ORIGEM.Value:='4 - NACIONAL - EM CONFORMIDADE COM PROCESSOS PRODUTIVOS BASICOS';
        5: TBNFItensNFI_ORIGEM.Value:='5 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFERIOR OU IGUAL A 40%';
        6: TBNFItensNFI_ORIGEM.Value:='6 - ESTRANGEIRA - IMPORTACAO DIRETA SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
        7: TBNFItensNFI_ORIGEM.Value:='7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
        8: TBNFItensNFI_ORIGEM.Value:='8 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 70%';
      end;
      //TBNFItensNFI_PESO.Value:= de onde?
      //TBNFItensNFI_PESOTOTAL.Value:= de onde?
      TBNFItensNFI_QUANTIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.qCom;
      TBNFItensNFI_TEMNOPEDIDO.Value:='N';
      TBNFItensNFI_TIPO.Value:='P'; //produto.
      TBNFItensNFI_UNIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
      TBNFItensNFI_VALORACESSORIAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vOutro;
      TBNFItensNFI_VALORCOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.vCOFINS;
      TBNFItensNFI_VALORCOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.vCOFINS;
      TBNFItensNFI_VALORFRETE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vFrete;
      TBNFItensNFI_VALORICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vICMS;
      TBNFItensNFI_VALORICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vICMSST;
      TBNFItensNFI_VALORIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.vIPI;
      TBNFItensNFI_VALORISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vISSQN;
      TBNFItensNFI_VALORPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.vPIS;
      TBNFItensNFI_VALORPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.vPIS;
      TBNFItensNFI_VALORSEGURO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vSeg;
      TBNFItensNFI_VALORTOTAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vProd;
      TBNFItensNFI_VALORTOTALBRUTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom * ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.qCom; //qtde * valor ?
      TBNFItensNFI_VALORTRIBUTOS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.vTotTrib;
      TBNFItensNFI_VALORUNIT.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom;

      //tenta localizar algum código do produto.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
      DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBComprasCOM_FORNECEDOR.Value;
      DM.QYAux.ParamByName('produto_fornecedor').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;
      DM.QYAux.Open;
      DM.QYAux.FetchAll;
      if DM.QYAux.RecordCount=1 then
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      DM.QYAux.Close;
      //...

      //se achou um codigo local e encontrou no pedido, informa que item está contido no pedido.
      if TBNFItensNFI_CODIGOLOCAL.Value<>0 then
      if DM.TBComprasItens.Locate('COI_PRODUTO',TBNFItensNFI_CODIGOLOCAL.Value,[]) then
      TBNFItensNFI_TEMNOPEDIDO.Value:='S';

      TBNFItens.Post;
    end;
  end;
end;

procedure TFormImportarXMLNFe.CadastrarEmitentecomoFornecedor1Click(Sender: TObject);
var Estado: Word; Cep: String;
begin
  AbortIf(Label6.Caption='','Nenhum emitente carregado.');

  //verifica se já existe o mesmo nome.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select FOR_CODIGO, FOR_NOME, FOR_CNPJ from FORNECEDORES where FOR_NOME=:nome');
  DM.QYAux.ParamByName('nome').AsString:=Label4.Caption;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('FOR_NOME').AsString<>'' then
  begin
    MessageDlg('Já existe uma fornecedor com o nome '+Label4.Caption+#13#10+'Código: '+DM.QYAux.FieldByName('FOR_CODIGO').AsString+' - '+DM.QYAux.FieldByName('FOR_NOME').AsString,mtError,[mbOk],0);
    DM.QYAux.Close;
    Exit;
  end;

  //verifica se já existe o mesmo CNPJ.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select FOR_CODIGO, FOR_NOME, FOR_CNPJ from FORNECEDORES where FOR_CNPJ=:cnpj');
  DM.QYAux.ParamByName('cnpj').AsString:=Label6.Caption;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('FOR_NOME').AsString<>'' then
  begin
    MessageDlg('Já existe uma fornecedor com o CNPJ '+Label6.Caption+#13#10+'Código: '+DM.QYAux.FieldByName('FOR_CODIGO').AsString+' - '+DM.QYAux.FieldByName('FOR_NOME').AsString,mtError,[mbOk],0);
    DM.QYAux.Close;
    Exit;
  end;
  DM.QYAux.Close;

  //localiza o código do estado.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select ESD_CODIGO from ESTADOS where ESD_SIGLA=:uf');
  DM.QYAux.ParamByName('uf').AsString:=Label31.Caption;
  DM.QYAux.Open;
  Estado:=DM.QYAux.FieldByName('ESD_CODIGO').AsInteger;
  DM.QYAux.Close;

  //cadastra o novo fornecedor.
  DM.TBFornecedores.Insert;
  DM.TBFornecedoresFOR_BAIRRO.Value:=Label26.Caption;
  DM.TBFornecedoresFOR_CEP.Value:=Label62.Caption;
  DM.TBFornecedoresFOR_CIDADE.Value:=Label29.Caption;
  DM.TBFornecedoresFOR_CIDADECODIGO.Value:=StrToInt(Label28.Caption);
  DM.TBFornecedoresFOR_CNPJ.Value:=Label6.Caption;
  DM.TBFornecedoresFOR_COMPLEMENTO.Value:=Label24.Caption;
  DM.TBFornecedoresFOR_ENDERECO.Value:=Label20.Caption;
  DM.TBFornecedoresFOR_ESTADO.Value:=Label31.Caption;
  DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=Estado;
  DM.TBFornecedoresFOR_FONE1.Value:=Label36.Caption;
  DM.TBFornecedoresFOR_NOME.Value:=Label4.Caption;
  DM.TBFornecedoresFOR_FANTASIA.Value:=Label16.Caption;
  DM.TBFornecedoresFOR_IE.Value:=Label8.Caption;
  DM.TBFornecedoresFOR_NUMERO.Value:=Label22.Caption;
  DM.TBFornecedoresFOR_PAIS.Value:=Label34.Caption;
  DM.TBFornecedoresFOR_PAISCODIGO.Value:=StrToInt(Label33.Caption);
  DM.TBFornecedores.Post;
  MessageDlg('Fornecedor cadastrado com sucesso.',mtInformation,[mbOk],0);
end;

procedure TFormImportarXMLNFe.CadastrarProduto1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  //verifica pelo codigo de barras.
  if TBNFItensNFI_CODIGOBARRAS.Value<>'' then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select PRO_CODIGO, PRO_NOME from PRODUTOS where PRO_CODIGOBARRAS=:codigobarras');
    DM.QYAux.ParamByName('codigobarras').AsString:=TBNFItensNFI_CODIGOBARRAS.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('PRO_NOME').AsString<>'' then
    begin
      MessageDlg('Já existe um produto com o mesmo código de barras.'+#13#10+DM.QYAux.FieldByName('PRO_CODIGO').AsString+' - '+DM.QYAux.FieldByName('PRO_NOME').AsString,mtError,[mbOk],0);
      DM.QYAux.Close;
      Exit;
    end;
  end;

  //verifica pelo nome do produto.
  if TBNFItensNFI_DESCRICAO.Value<>'' then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select PRO_CODIGO, PRO_NOME from PRODUTOS where PRO_NOME=:nome');
    DM.QYAux.ParamByName('nome').AsString:=TBNFItensNFI_DESCRICAO.Value;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('PRO_NOME').AsString<>'' then
    begin
      MessageDlg('Já existe um produto com o mesmo nome.'+#13#10+DM.QYAux.FieldByName('PRO_CODIGO').AsString+' - '+DM.QYAux.FieldByName('PRO_NOME').AsString,mtError,[mbOk],0);
      DM.QYAux.Close;
      Exit;
    end;
  end;

  //
  if TBNFItensNFI_CODIGO.Value<>'' then
  begin
    if MessageDlg('Deseja cadastrar o produto '+TBNFItensNFI_DESCRICAO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //TODO: revisar
    end;
  end;
end;

procedure TFormImportarXMLNFe.FormCreate(Sender: TObject);
begin
  Label4.Caption:='';
  Label6.Caption:='';
  Label8.Caption:='';
  Label10.Caption:='';
  Label12.Caption:='';
  Label14.Caption:='';
  Label16.Caption:='';
  Label20.Caption:='';
  Label22.Caption:='';
  Label24.Caption:='';
  Label26.Caption:='';
  Label28.Caption:='';
  Label29.Caption:='';
  Label31.Caption:='';
  Label33.Caption:='';
  Label34.Caption:='';
  Label36.Caption:='';
  Label38.Caption:='';
  Label40.Caption:='';
  Label42.Caption:='';
  Label44.Caption:='';
  Label46.Caption:='';
  Label48.Caption:='';
  Label50.Caption:='';
  Label52.Caption:='';
  Label53.Caption:='';
  Label55.Caption:='';
  Label57.Caption:='';
  Label58.Caption:='';
  Label60.Caption:='';
  Label62.Caption:='';
  Label64.Caption:='';
end;

procedure TFormImportarXMLNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
