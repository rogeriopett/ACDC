unit NfceContingencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, PngBitBtn, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFormNfceContingencias = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel1: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel5: TBevel;
    LigarDesligarContingencia1Button: TPngSpeedButton;
    TRNfceErros: TFDTransaction;
    TRNfceContingentes: TFDTransaction;
    TBNfceErros: TFDQuery;
    TBNfceContingentes: TFDQuery;
    TBNfceErrosNFC_CHAVEACESSO: TStringField;
    TBNfceErrosNFC_CLIENTE: TIntegerField;
    TBNfceErrosNFC_CODIGO: TIntegerField;
    TBNfceErrosNFC_CODIGONFCE: TIntegerField;
    TBNfceErrosNFC_CONTINGENCIA: TStringField;
    TBNfceErrosNFC_DTCADASTRO: TDateField;
    TBNfceErrosNFC_HRCADASTRO: TTimeField;
    TBNfceErrosNFC_NOME: TStringField;
    TBNfceErrosNFC_PROTOCOLO: TStringField;
    TBNfceErrosNFC_PROTOCOLODH: TStringField;
    TBNfceErrosNFC_STATUS: TStringField;
    TBNfceErrosNFC_VALORTOTAL: TFMTBCDField;
    TBNfceContingentesNFC_CHAVEACESSO: TStringField;
    TBNfceContingentesNFC_CLIENTE: TIntegerField;
    TBNfceContingentesNFC_CODIGO: TIntegerField;
    TBNfceContingentesNFC_CODIGONFCE: TIntegerField;
    TBNfceContingentesNFC_CONTINGENCIA: TStringField;
    TBNfceContingentesNFC_DTCADASTRO: TDateField;
    TBNfceContingentesNFC_HRCADASTRO: TTimeField;
    TBNfceContingentesNFC_NOME: TStringField;
    TBNfceContingentesNFC_PROTOCOLO: TStringField;
    TBNfceContingentesNFC_PROTOCOLODH: TStringField;
    TBNfceContingentesNFC_STATUS: TStringField;
    TBNfceContingentesNFC_VALORTOTAL: TFMTBCDField;
    DSNfceErros: TDataSource;
    DSNfceContingentes: TDataSource;
    Panel4: TPanel;
    LigarDesligarContingencia1: TMenuItem;
    N1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    TBNfceErrosNFC_MODELO: TIntegerField;
    TBNfceErrosNFC_SERIE: TIntegerField;
    TBNfceContingentesNFC_MODELO: TIntegerField;
    TBNfceContingentesNFC_SERIE: TIntegerField;
    TBNfceErrosANO: TSmallintField;
    TBNfceContingentesANO: TSmallintField;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    TBNfceInutilizar: TFDQuery;
    TRNfceInutilizar: TFDTransaction;
    DSNfceInutilizar: TDataSource;
    TBNfceInutilizarANO: TSmallintField;
    TBNfceInutilizarNFC_CHAVEACESSO: TStringField;
    TBNfceInutilizarNFC_CLIENTE: TIntegerField;
    TBNfceInutilizarNFC_CODIGO: TIntegerField;
    TBNfceInutilizarNFC_CODIGONFCE: TIntegerField;
    TBNfceInutilizarNFC_CONTINGENCIA: TStringField;
    TBNfceInutilizarNFC_DTCADASTRO: TDateField;
    TBNfceInutilizarNFC_HRCADASTRO: TTimeField;
    TBNfceInutilizarNFC_MODELO: TIntegerField;
    TBNfceInutilizarNFC_NOME: TStringField;
    TBNfceInutilizarNFC_PROTOCOLO: TStringField;
    TBNfceInutilizarNFC_PROTOCOLODH: TStringField;
    TBNfceInutilizarNFC_SERIE: TIntegerField;
    TBNfceInutilizarNFC_STATUS: TStringField;
    TBNfceInutilizarNFC_VALORTOTAL: TFMTBCDField;
    Memo1: TMemo;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label3: TLabel;
    PngBitBtn8: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    PngBitBtn7: TPngBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Memo2: TMemo;
    Splitter2: TSplitter;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel6: TPanel;
    Label1: TLabel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn12: TPngBitBtn;
    Splitter3: TSplitter;
    Memo3: TMemo;
    Panel7: TPanel;
    Label12: TLabel;
    PngBitBtn13: TPngBitBtn;
    PngBitBtn14: TPngBitBtn;
    PngBitBtn16: TPngBitBtn;
    AtualizarListagens1: TMenuItem;
    AtualizarListagens1Button: TPngSpeedButton;
    TBNfceAbertas: TFDQuery;
    TRNfceAbertas: TFDTransaction;
    DSNfceAbertas: TDataSource;
    DBGrid4: TDBGrid;
    TBNfceAbertasANO: TSmallintField;
    TBNfceAbertasNFC_CHAVEACESSO: TStringField;
    TBNfceAbertasNFC_CLIENTE: TIntegerField;
    TBNfceAbertasNFC_CODIGO: TIntegerField;
    TBNfceAbertasNFC_CODIGONFCE: TIntegerField;
    TBNfceAbertasNFC_CONTINGENCIA: TStringField;
    TBNfceAbertasNFC_DTCADASTRO: TDateField;
    TBNfceAbertasNFC_HRCADASTRO: TTimeField;
    TBNfceAbertasNFC_MODELO: TIntegerField;
    TBNfceAbertasNFC_NOME: TStringField;
    TBNfceAbertasNFC_PROTOCOLO: TStringField;
    TBNfceAbertasNFC_PROTOCOLODH: TStringField;
    TBNfceAbertasNFC_SERIE: TIntegerField;
    TBNfceAbertasNFC_STATUS: TStringField;
    TBNfceAbertasNFC_VALORTOTAL: TFMTBCDField;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    Label13: TLabel;
    DBGrid5: TDBGrid;
    TBNfceLogs: TFDQuery;
    TRNfceLogs: TFDTransaction;
    DSNfceLogs: TDataSource;
    TBNfceLogsNCL_DATA: TDateField;
    TBNfceLogsNCL_DESCRICAO: TMemoField;
    TBNfceLogsNCL_HORA: TTimeField;
    TBNfceLogsNCL_NFCE: TIntegerField;
    TBNfceLogsNCL_NOME: TStringField;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    PngBitBtn9: TPngBitBtn;
    Splitter4: TSplitter;
    DBMemo1: TDBMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LigarDesligarContingencia1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn8Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure PngBitBtn7Click(Sender: TObject);
    procedure PngBitBtn12Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarListagens1Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    procedure AlimentarNFCe;
    procedure AtualizarTelaStatusNfce;
  public
    { Public declarations }
  end;

var
  FormNfceContingencias: TFormNfceContingencias;

implementation
uses DataMod, Funcoes1, pcnConversao, pcnConversaoNFe, NfceFuncoes, NfceFast;
{$R *.dfm}

procedure TFormNfceContingencias.AlimentarNFCe;
var OK: Boolean;
begin
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.Tag:=0;
  DM.ACBrNFe1.NotasFiscais.Clear;

  with DM.ACBrNFe1.NotasFiscais.Add do //objeto NFe
  begin
    //NFe.infNFe

    {$REGION 'Ide - Dados da NFCe'}
    NFe.Ide.cUF:=DM.TBEmpresaEMP_ESTADOCODIGO.Value;  // SC -> Código da UF
    //NFe.Ide.cNF:=
    NFe.Ide.cMunFG:=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    //NFe.Ide.cDV:=
    NFe.Ide.dEmi:=now;
    //NFe.Ide.dSaiEnt:=
    if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value<>'1 - NORMAL' then
    begin
      NFe.Ide.dhCont:=Now;
      NFe.Ide.xJust:=DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value;
    end;
    NFe.Ide.finNFe:=fnNormal;
    NFe.Ide.indFinal:=cfConsumidorFinal;
    NFe.Ide.indPres:=pcPresencial;
    NFe.Ide.modelo:=65; // NFC-e
    NFe.Ide.natOp:=DM.TBNfceNFC_CFOP.Value.ToString;
    NFe.Ide.nNF:=DM.TBNfceNFC_CODIGO.Value;
    NFe.Ide.serie:=DM.TBNfceNFC_SERIE.Value;
    NFe.Ide.tpNF:=tnSaida;
    NFe.Ide.tpImp:=tiNFCe;
    NFe.Ide.tpEmis:=StrToTpEmis(OK,Copy(DM.TBParametrosPAR_NFCETIPOEMISSAO.Value,1,1));
    NFe.Ide.tpAmb:=StrToTpAmb(OK,DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value); //taHomologacao; //taProducao;  // Altere para taHomologacao se for testes
    {$ENDREGION}

    {$REGION 'Emit - Dados do emitente'}
    NFe.Emit.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    NFe.Emit.xNome:=DM.TBEmpresaEMP_NOME.Value;
    NFe.Emit.xFant:=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
    NFe.Emit.EnderEmit.xLgr:=DM.TBEmpresaEMP_ENDERECO.Value;
    NFe.Emit.EnderEmit.nro:=DM.TBEmpresaEMP_NUMERO.Value;
    NFe.Emit.EnderEmit.xCpl:='';
    NFe.Emit.EnderEmit.xBairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    NFe.Emit.EnderEmit.cMun:=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Emit.EnderEmit.xMun:=DM.TBEmpresaEMP_CIDADE.Value;
    NFe.Emit.EnderEmit.UF:=DM.TBEmpresaEMP_ESTADO.Value;
    NFe.Emit.EnderEmit.CEP:=StrToInt(LimparFormatacao(DM.TBEmpresaEMP_CEP.Value));
    NFe.Emit.EnderEmit.cPais:=DM.TBEmpresaEMP_PAISCODIGO.Value;
    NFe.Emit.EnderEmit.xPais:=DM.TBEmpresaEMP_PAIS.Value;
    NFe.Emit.EnderEmit.fone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    NFe.Emit.IE:=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IEST:=''; //preencher conforme o estado do cliente. LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IM:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
    NFe.Emit.CNAE:=LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value);
    if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then //1 - SIMPLES NACIONAL, 2 - LUCRO PRESUMIDO, 3 - LUCRO REAL
    NFe.Emit.CRT:=pcnConversaoNFe.TpcnCRT.crtSimplesNacional else
    NFe.Emit.CRT:=pcnConversaoNFe.TpcnCRT.crtRegimeNormal;
    {$ENDREGION}

    //nfe.Avulsa

    {$REGION 'Dest - Dados do cliente'}
    NFe.Dest.xNome:='CONSUMIDOR FINAL';
    NFe.Dest.indIEDest:=inNaoContribuinte;
    if DM.TBNfceNFC_CLIENTE.Value<>1 then
    begin
      if LimparFormatacao(DM.TBNfceNFC_CNPJ.Value)<>'' then
      NFe.Dest.CNPJCPF:=LimparFormatacao(DM.TBNfceNFC_CNPJ.Value) else
      NFe.Dest.CNPJCPF:=LimparFormatacao(DM.TBNfceNFC_CPF.Value);
      NFe.Dest.idEstrangeiro:='';
      NFe.Dest.xNome:=DM.TBNfceNFC_NOME.Value;
      //NFe.Dest.EnderDest.
      NFe.Dest.indIEDest:=inNaoContribuinte;
      NFe.Dest.IE:='';
    end;
    {$ENDREGION}

    //NFe.Retirada
    //NFe.Entrega
    //NFe.autXML

    {$REGION 'Det - Adição dos itens da NFCe'}
    //fecha e abre a tabela de itens para ordenar pela sequencia correta.
    DM.TBNfceItens.Close;
    DM.TBNfceItens.Open;
    DM.TBNfceItens.DisableControls;
    DM.TBNfceItens.First;
    while not DM.TBNfceItens.eof do
    begin
      with NFe.Det.New do
      begin
        {$REGION 'Dados do produto'}
        Prod.cProd      :=DM.TBNfceItensNCI_PRODUTO.Value.ToString;
        Prod.nItem      :=DM.TBNfceItensNCI_SEQUENCIA.Value;
        Prod.cEAN       :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarra     :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.xProd      :=DM.TBNfceItensNCI_DESCRICAO.Value;
        Prod.NCM        :=DM.TBNfceItensNCI_CLASSFISCAL.Value;
        //Prod.NVE.
        Prod.EXTIPI     :=DM.TBNfceItensNCI_EXCECAO.Value.ToString;
        if DM.TBNfceItensNCI_EXCECAO.Value=0 then
        Prod.EXTIPI     :='';

        Prod.CFOP       :=DM.TBNfceItensNCI_CFOP.Value.ToString;
        Prod.uCom       :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qCom       :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnCom     :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        Prod.vProd      :=DM.TBNfceItensNCI_VALORTOTAL.AsExtended;
        Prod.cEANTrib   :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarraTrib :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.uTrib      :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qTrib      :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnTrib    :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        //Prod.vFrete
        //Prod.vSeg
        Prod.vDesc      :=DM.TBNfceItensNCI_DESCVALOR.AsExtended;
        Prod.vOutro     :=DM.TBNfceItensNCI_VALORACESSORIAS.AsExtended;
        Prod.IndTot     :=itSomaTotalNFe;
        //Prod.DI
        //Prod.xPed
        //Prod.nItemPed
        //Prod.detExport
        //Prod.rastro
        //Prod.veicProd
        //Prod.med
        //Prod.arma
        //Prod.comb
        //Prod.nRECOPI
        //Prod.nFCI
        Prod.CEST       :=DM.TBNfceItensNCI_CEST.Value;
        //Prod.indEscala
        //Prod.CNPJFab
        Prod.cBenef     :=DM.TBNfceItensNCI_BENEFICIO.Value;
        //Prod.CredPresumido
        {$ENDREGION}

        {$REGION 'ICMS do produto'}
        case StrToInt(Copy(DM.TBNfceItensNCI_ORIGEM.Value,0,1)) of
          0: Imposto.ICMS.orig:=oeNacional;
          1: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
          2: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasil;
          3: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior40;
          4: Imposto.ICMS.orig:=oeNacionalProcessosBasicos;
          5: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoInferiorIgual40;
          6: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDiretaSemSimilar;
          7: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasilSemSimilar;
          8: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior70;
        end;
        case DM.TBNfceItensNCI_CSTICMS.Value of
          {$REGION 'cst icms'}
          00: Imposto.ICMS.CST:=TpcnCSTIcms.cst00;
          01: Imposto.ICMS.CST:=TpcnCSTIcms.cst01;
          02: Imposto.ICMS.CST:=TpcnCSTIcms.cst02;
          10: Imposto.ICMS.CST:=TpcnCSTIcms.cst10;
          12: Imposto.ICMS.CST:=TpcnCSTIcms.cst12;
          13: Imposto.ICMS.CST:=TpcnCSTIcms.cst13;
          14: Imposto.ICMS.CST:=TpcnCSTIcms.cst14;
          15: Imposto.ICMS.CST:=TpcnCSTIcms.cst15;
          20: Imposto.ICMS.CST:=TpcnCSTIcms.cst20;
          21: Imposto.ICMS.CST:=TpcnCSTIcms.cst21;
          30: Imposto.ICMS.CST:=TpcnCSTIcms.cst30;
          40: Imposto.ICMS.CST:=TpcnCSTIcms.cst40;
          41: Imposto.ICMS.CST:=TpcnCSTIcms.cst41;
          45: Imposto.ICMS.CST:=TpcnCSTIcms.cst45;
          50: Imposto.ICMS.CST:=TpcnCSTIcms.cst50;
          51: Imposto.ICMS.CST:=TpcnCSTIcms.cst51;
          53: Imposto.ICMS.CST:=TpcnCSTIcms.cst53;
          60: Imposto.ICMS.CST:=TpcnCSTIcms.cst60;
          61: Imposto.ICMS.CST:=TpcnCSTIcms.cst61;
          70: Imposto.ICMS.CST:=TpcnCSTIcms.cst70;
          72: Imposto.ICMS.CST:=TpcnCSTIcms.cst72;
          73: Imposto.ICMS.CST:=TpcnCSTIcms.cst73;
          74: Imposto.ICMS.CST:=TpcnCSTIcms.cst74;
          80: Imposto.ICMS.CST:=TpcnCSTIcms.cst80; //apenas para cte.
          81: Imposto.ICMS.CST:=TpcnCSTIcms.cst81; //apenas para cte.
          90: Imposto.ICMS.CST:=TpcnCSTIcms.cst90;
          101: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn101;
          102: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn102;
          104: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn103;
          201: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn201;
          202: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn202;
          203: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn203;
          300: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn300;
          400: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn400;
          500: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn500;
          900: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn900;
          {$ENDREGION}
        end;
        Imposto.ICMS.ModBC    :=dbiValorOperacao;
        Imposto.ICMS.pRedBC   :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended;
        Imposto.ICMS.vBC      :=DM.TBNfceItensNCI_BASEICMS.AsExtended;
        Imposto.ICMS.pICMS    :=DM.TBNfceItensNCI_ALIQICMS.AsExtended;
        Imposto.ICMS.vICMS    :=DM.TBNfceItensNCI_VALORICMS.AsExtended;
        Imposto.ICMS.modBCST  :=dbisValordaOperacao;
        Imposto.ICMS.pMVAST   :=DM.TBNfceItensNCI_ALIQICMSADICST.AsExtended;
        Imposto.ICMS.pRedBCST :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended; //usar o mesmo?
        Imposto.ICMS.vBCST    :=DM.TBNfceItensNCI_BASEICMSST.AsExtended;
        Imposto.ICMS.pICMSST  :=DM.TBNfceItensNCI_ALIQICMSST.AsExtended;
        Imposto.ICMS.vICMSST  :=DM.TBNfceItensNCI_VALORICMSST.AsExtended;
        Imposto.ICMS.UFST     :=''; //??
        //Imposto.ICMS.pBCOp
        //Imposto.ICMS.vBCSTRet :=//criar campo?
        //Imposto.ICMS.vICMSSTRet
        //Imposto.ICMS.motDesICMS
        //Imposto.ICMS.pCredSN
        //Imposto.ICMS.vCredICMSSN
        //Imposto.ICMS.vBCSTDest
        //Imposto.ICMS.vICMSSTDest
        //Imposto.ICMS.vICMSDeson
        //Imposto.ICMS.vICMSOp
        //Imposto.ICMS.pDif
        //Imposto.ICMS.vICMSDif
        //Imposto.ICMS.vBCFCP
        //Imposto.ICMS.pFCP
        //Imposto.ICMS.vFCP
        //Imposto.ICMS.vBCFCPST
        //Imposto.ICMS.pFCPST
        //Imposto.ICMS.vFCPST
        //Imposto.ICMS.vBCFCPSTRet
        //Imposto.ICMS.pFCPSTRet
        //Imposto.ICMS.vFCPSTRet
        //Imposto.ICMS.pST
        //Imposto.ICMS.pRedBCEfet
        //Imposto.ICMS.vBCEfet
        //Imposto.ICMS.adRemICMS
        //Imposto.ICMS.vICMSMono
        //Imposto.ICMS.qBCMono
        //Imposto.ICMS.adRemICMSReten
        //Imposto.ICMS.vICMSMonoReten
        //Imposto.ICMS.qBCMonoReten
        //Imposto.ICMS.pRedAdRem
        //Imposto.ICMS.motRedAdRem
        //Imposto.ICMS.vICMSMonoOp
        //Imposto.ICMS.vICMSMonoDif
        //Imposto.ICMS.adRemICMSRet
        //Imposto.ICMS.vICMSMonoRet
        //Imposto.ICMS.qBCMonoRet
        //Imposto.ICMS.indDeduzDeson
        Imposto.ICMS.cBenefRBC:=DM.TBNfceItensNCI_BENEFICIO.Value;
        {$ENDREGION}

        {$REGION 'IPI - Ipi do produto - nfce nao tem IPI'}
        {Imposto.IPI.clEnq   :='999';
        //Imposto.IPI.CNPJProd:=
        //Imposto.IPI.cSelo   :=
        //Imposto.IPI.qSelo   :=
        Imposto.IPI.cEnq    :='999';
        case DM.TBNfceItensNCI_CSTIPI.Value of
          00: Imposto.IPI.CST:=ipi00;
          01: Imposto.IPI.CST:=ipi01;
          02: Imposto.IPI.CST:=ipi02;
          03: Imposto.IPI.CST:=ipi03;
          04: Imposto.IPI.CST:=ipi04;
          05: Imposto.IPI.CST:=ipi05;
          49: Imposto.IPI.CST:=ipi49;
          50: Imposto.IPI.CST:=ipi50;
          51: Imposto.IPI.CST:=ipi51;
          52: Imposto.IPI.CST:=ipi52;
          53: Imposto.IPI.CST:=ipi53;
          54: Imposto.IPI.CST:=ipi54;
          55: Imposto.IPI.CST:=ipi55;
          99: Imposto.IPI.CST:=ipi99;
        end;
        Imposto.IPI.vBC     :=DM.TBNfceItensNCI_BASEIPI.AsExtended;
        //Imposto.IPI.qUnid   :=
        //Imposto.IPI.vUnid   :=
        Imposto.IPI.pIPI    :=DM.TBNfceItensNCI_ALIQIPI.AsExtended;
        Imposto.IPI.vIPI    :=DM.TBNfceItensNCI_VALORIPI.AsExtended;}
        {$ENDREGION}

        {$REGION 'PIS - Pis do produto'}
        case DM.TBNfceItensNCI_CSTPIS.Value of
          {$REGION 'CST PIS'}
          01: Imposto.PIS.CST:=pis01;
          02: Imposto.PIS.CST:=pis02;
          03: Imposto.PIS.CST:=pis03;
          04: Imposto.PIS.CST:=pis04;
          05: Imposto.PIS.CST:=pis05;
          06: Imposto.PIS.CST:=pis06;
          07: Imposto.PIS.CST:=pis07;
          08: Imposto.PIS.CST:=pis08;
          09: Imposto.PIS.CST:=pis09;
          49: Imposto.PIS.CST:=pis49;
          50: Imposto.PIS.CST:=pis50;
          51: Imposto.PIS.CST:=pis51;
          52: Imposto.PIS.CST:=pis52;
          53: Imposto.PIS.CST:=pis53;
          54: Imposto.PIS.CST:=pis54;
          55: Imposto.PIS.CST:=pis55;
          56: Imposto.PIS.CST:=pis56;
          60: Imposto.PIS.CST:=pis60;
          61: Imposto.PIS.CST:=pis61;
          62: Imposto.PIS.CST:=pis62;
          63: Imposto.PIS.CST:=pis63;
          64: Imposto.PIS.CST:=pis64;
          65: Imposto.PIS.CST:=pis65;
          66: Imposto.PIS.CST:=pis66;
          67: Imposto.PIS.CST:=pis67;
          70: Imposto.PIS.CST:=pis70;
          71: Imposto.PIS.CST:=pis71;
          72: Imposto.PIS.CST:=pis72;
          73: Imposto.PIS.CST:=pis73;
          74: Imposto.PIS.CST:=pis74;
          75: Imposto.PIS.CST:=pis75;
          98: Imposto.PIS.CST:=pis98;
          99: Imposto.PIS.CST:=pis99;
          {$ENDREGION}
        end;
        Imposto.PIS.vBC :=DM.TBNfceItensNCI_BASEPIS.AsExtended;
        Imposto.PIS.pPIS:=DM.TBNfceItensNCI_ALIQPIS.AsExtended;
        Imposto.PIS.vPIS:=DM.TBNfceItensNCI_VALORPIS.AsExtended;
        //Imposto.PIS.qBCProd
        //Imposto.PIS.vAliqProd
        {$ENDREGION}

        {$REGION 'COFINS - Cofins do produto'}
        case DM.TBNfceItensNCI_CSTCOFINS.Value of
          {$REGION 'CST COFINS'}
          01: Imposto.COFINS.CST:=cof01;
          02: Imposto.COFINS.CST:=cof02;
          03: Imposto.COFINS.CST:=cof03;
          04: Imposto.COFINS.CST:=cof04;
          05: Imposto.COFINS.CST:=cof05;
          06: Imposto.COFINS.CST:=cof06;
          07: Imposto.COFINS.CST:=cof07;
          08: Imposto.COFINS.CST:=cof08;
          09: Imposto.COFINS.CST:=cof09;
          49: Imposto.COFINS.CST:=cof49;
          50: Imposto.COFINS.CST:=cof50;
          51: Imposto.COFINS.CST:=cof51;
          52: Imposto.COFINS.CST:=cof52;
          53: Imposto.COFINS.CST:=cof53;
          54: Imposto.COFINS.CST:=cof54;
          55: Imposto.COFINS.CST:=cof55;
          56: Imposto.COFINS.CST:=cof56;
          60: Imposto.COFINS.CST:=cof60;
          61: Imposto.COFINS.CST:=cof61;
          62: Imposto.COFINS.CST:=cof62;
          63: Imposto.COFINS.CST:=cof63;
          64: Imposto.COFINS.CST:=cof64;
          65: Imposto.COFINS.CST:=cof65;
          66: Imposto.COFINS.CST:=cof66;
          67: Imposto.COFINS.CST:=cof67;
          70: Imposto.COFINS.CST:=cof70;
          71: Imposto.COFINS.CST:=cof71;
          72: Imposto.COFINS.CST:=cof72;
          73: Imposto.COFINS.CST:=cof73;
          74: Imposto.COFINS.CST:=cof74;
          75: Imposto.COFINS.CST:=cof75;
          98: Imposto.COFINS.CST:=cof98;
          99: Imposto.COFINS.CST:=cof99;
          {$ENDREGION}
        end;

        Imposto.COFINS.vBC     :=DM.TBNfceItensNCI_BASECOFINS.AsExtended;
        Imposto.COFINS.pCOFINS :=DM.TBNfceItensNCI_ALIQCOFINS.AsExtended;
        Imposto.COFINS.vCOFINS :=DM.TBNfceItensNCI_VALORCOFINS.AsExtended;
        //Imposto.COFINS.vBCProd
        //Imposto.COFINS.vAliqProd
        //Imposto.COFINS.qBCProd
        {$ENDREGION}

        Imposto.vTotTrib  :=DM.TBNfceItensNCI_VALORTRIBUTOS.AsExtended;
      end;

      DM.TBNfceItens.Next;
    end;
    DM.TBNfceItens.EnableControls;
    {$ENDREGION}

    {$REGION 'Total - Totais e Impostos'}
    {$REGION 'ICMS'}
    NFe.Total.ICMSTot.vBC          := DM.TBNfceNFC_BASEICMS.AsExtended;
    NFe.Total.ICMSTot.vICMS        := DM.TBNfceNFC_TOTALICMS.AsExtended;
    NFe.Total.ICMSTot.vICMSDeson   := 0;
    NFe.Total.ICMSTot.vFCPUFDest   := DM.TBNfceNFC_TOTALFCP.AsExtended; //?
    NFe.Total.ICMSTot.vICMSUFDest  := DM.TBNfceNFC_TOTALICMSUFDEST.AsExtended;
    NFe.Total.ICMSTot.vICMSUFRemet := DM.TBNfceNFC_TOTALICMSUFREMET.AsExtended;
    NFe.Total.ICMSTot.vFCP         := DM.TBNfceNFC_TOTALFCP.AsExtended;
    NFe.Total.ICMSTot.vBCST        := DM.TBNfceNFC_BASEICMSST.AsExtended;
    NFe.Total.ICMSTot.vST          := DM.TBNfceNFC_TOTALICMSST.AsExtended;
    NFe.Total.ICMSTot.vFCPST       := DM.TBNfceNFC_TOTALFCPST.AsExtended;
    //NFe.Total.ICMSTot.vFCPSTRet
    NFe.Total.ICMSTot.vProd        := DM.TBNfceNFC_TOTALPRODUTOS.AsExtended;
    NFe.Total.ICMSTot.vFrete       := 0;
    NFe.Total.ICMSTot.vSeg         := 0;
    NFe.Total.ICMSTot.vDesc        := DM.TBNfceNFC_DESCVALOR.AsExtended;
    NFe.Total.ICMSTot.vII          := 0;
    NFe.Total.ICMSTot.vIPI         := 0; //nfce nao tem IPI. DM.TBNfceNFC_TOTALIPI.AsExtended;
    NFe.Total.ICMSTot.vIPIDevol    := 0;
    NFe.Total.ICMSTot.vPIS         := DM.TBNfceNFC_TOTALPIS.AsExtended;
    NFe.Total.ICMSTot.vCOFINS      := DM.TBNfceNFC_TOTALCOFINS.AsExtended;
    NFe.Total.ICMSTot.vOutro       := DM.TBNfceNFC_ACREVALOR.AsExtended;
    NFe.Total.ICMSTot.vNF          := DM.TBNfceNFC_VALORTOTAL.AsExtended;
    NFe.Total.ICMSTot.vTotTrib     := DM.TBNfceNFC_TOTALTRIBUTOS.AsExtended;
    //NFe.Total.ICMSTot.vICMSMono
    //NFe.Total.ICMSTot.vICMSMonoReten
    //NFe.Total.ICMSTot.vICMSMonoRet
    //NFe.Total.ICMSTot.qBCMono
    //NFe.Total.ICMSTot.qBCMonoReten
    //NFe.Total.ICMSTot.qBCMonoRet
    {$ENDREGION}

    {$REGION 'ISSQN'}
    NFe.Total.ISSQNtot.vServ   := 0;
    NFe.Total.ISSQNTot.vBC     := 0;
    NFe.Total.ISSQNTot.vISS    := 0;
    NFe.Total.ISSQNTot.vPIS    := 0;
    NFe.Total.ISSQNTot.vCOFINS := 0;
    //NFe.Total.ISSQNTot.dCompet
    //NFe.Total.ISSQNTot.vDeducao
    //NFe.Total.ISSQNTot.vOutro
    //NFe.Total.ISSQNTot.vDescIncond
    //NFe.Total.ISSQNTot.vDescCond
    //NFe.Total.ISSQNTot.vISSRet
    //NFe.Total.ISSQNTot.cRegTrib
    {$ENDREGION}

    NFe.Total.retTrib.vRetPIS    := 0;
    NFe.Total.retTrib.vRetCOFINS := 0;
    NFe.Total.retTrib.vRetCSLL   := 0;
    NFe.Total.retTrib.vBCIRRF    := 0;
    NFe.Total.retTrib.vIRRF      := 0;
    NFe.Total.retTrib.vBCRetPrev := 0;
    NFe.Total.retTrib.vRetPrev   := 0;
    {$ENDREGION}

    NFe.Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

    //NFe.Cobr

    {$REGION 'Pag - Dados do pagamento'}
    DM.TBNfcePagamentos.DisableControls;
    DM.TBNfcePagamentos.First;
    while not DM.TBNfcePagamentos.Eof do
    begin
      if DM.TBNfcePagamentosNCP_VALOR.Value > 0 then
      begin
        with NFe.Pag.New do
        begin
          tPag:=StrToFormaPagamento(OK,Copy(DM.TBNfcePagamentosCPG_MEIOPAGAMENTO.Value,1,2)); // fpDinheiro;
          vPag:=DM.TBNfceNFC_VALORTOTAL.AsExtended;
        end;
      end;
      DM.TBNfcePagamentos.Next;
    end;
    DM.TBNfcePagamentos.EnableControls;
    {$ENDREGION}

    //NFe.infIntermed
    //NFe.InfAdic
    //NFe.exporta
    //NFe.compra
    //NFe.cana
    //NFe.infNFeSupl
    //NFe.signature
    //NFe.procNFe

    {$REGION 'infRespTec - Responsavel Tecnico'}
    NFe.infRespTec.CNPJ:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
    NFe.infRespTec.xContato:='ROGERIO PETT';
    NFe.infRespTec.email:=DM.TBEmpresaEMP_NOSSOEMAIL.Value;
    NFe.infRespTec.fone:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOFONE1.Value);
    //NFe.infRespTec.idCSRT
    //NFe.infRespTec.hashCSRT
    {$ENDREGION}

    //NFe.agropecuario

    // Informações do QR Code
    //NFe.infNFeSupl.qrCode:='...'; // Aqui deve ser gerado conforme regras da NFC-e
  end;
end;

procedure TFormNfceContingencias.AtualizarListagens1Click(Sender: TObject);
begin
  //abertas.
  TBNfceAbertas.Close;
  TBNfceAbertas.Open;
  TBNfceAbertas.FetchAll;
  Label9.Caption:=TBNfceAbertas.RecordCount.ToString;

  //emitidas offline.
  TBNfceContingentes.Close;
  TBNfceContingentes.Open;
  TBNfceContingentes.FetchAll;
  Label8.Caption:=TBNfceContingentes.RecordCount.ToString;

  //pendentes de consulta.
  TBNfceErros.Close;
  TBNfceErros.Open;
  TBNfceErros.FetchAll;
  Label10.Caption:=TBNfceErros.RecordCount.ToString;

  //para inutilizar.
  TBNfceInutilizar.Close;
  TBNfceInutilizar.Open;
  TBNfceInutilizar.FetchAll;
  Label11.Caption:=TBNfceInutilizar.RecordCount.ToString;

  PngBitBtn9.Click;
end;

procedure TFormNfceContingencias.AtualizarTelaStatusNfce;
begin
  if DM.EmissaoOnline then
  begin
    Panel4.Color:=clGreen;
    Panel4.Caption:='NFCe ONLINE';
  end else
  begin
    Panel4.Color:=clRed;
    Panel4.Caption:='NFCe OFFLINE';
  end;
end;

procedure TFormNfceContingencias.DBGrid1DblClick(Sender: TObject);
begin
  if not TBNfceContingentes.IsEmpty then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceContingentesNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not TBNfceContingentes.IsEmpty) then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceContingentesNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid2DblClick(Sender: TObject);
begin
  if not TBNfceErros.IsEmpty then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not TBNfceErros.IsEmpty) then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid3DblClick(Sender: TObject);
begin
  if not TBNfceInutilizar.IsEmpty then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceInutilizarNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not TBNfceInutilizar.IsEmpty) then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceInutilizarNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid4DblClick(Sender: TObject);
begin
  if not TBNfceAbertas.IsEmpty then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceAbertasNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not TBNfceAbertas.IsEmpty) then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceAbertasNFC_CODIGO.Value;
    DM.TBNfce.Open;
    Close;
  end;
end;

procedure TFormNfceContingencias.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfceContingencias.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceContingencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TBNfceContingentes.Close;
  TBNfceErros.Close;
end;

procedure TFormNfceContingencias.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));

  TBNfceAbertas.Open;
  TBNfceContingentes.Open;
  TBNfceErros.Open;
  TBNfceInutilizar.Open;

  TBNfceAbertas.FetchAll;
  TBNfceContingentes.FetchAll;
  TBNfceErros.FetchAll;
  TBNfceInutilizar.FetchAll;

  AtualizarTelaStatusNfce;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Label8.Caption:=TBNfceContingentes.RecordCount.ToString;
  Label9.Caption:=TBNfceAbertas.RecordCount.ToString;
  Label10.Caption:=TBNfceErros.RecordCount.ToString;
  Label11.Caption:=TBNfceInutilizar.RecordCount.ToString;

  PngBitBtn9.Click;
end;

procedure TFormNfceContingencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfceContingencias.LigarDesligarContingencia1Click(Sender: TObject);
begin
  if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value='1 - NORMAL' then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NFCECONTINGENCIADATA.Value:=DM.ServerDate;
    DM.TBParametrosPAR_NFCECONTINGENCIAHORA.Value:=DM.ServerTime;
    DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value:='EMISSAO EM CONTINGENCIA OFFLINE';
    DM.TBParametrosPAR_NFCETIPOEMISSAO.Value:='9 - CONTINGENCIA OFF-LINE DA NFC-E';
    DM.TBParametros.Post;
  end else
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NFCECONTINGENCIADATA.Clear;
    DM.TBParametrosPAR_NFCECONTINGENCIAHORA.Clear;
    DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Clear;
    DM.TBParametrosPAR_NFCETIPOEMISSAO.Value:='1 - NORMAL';
    DM.TBParametros.Post;
  end;
  AtualizarTelaStatusNfce;
end;

procedure TFormNfceContingencias.PngBitBtn12Click(Sender: TObject);
var D,M,A: Word;
  Pasta, Msg: String;
  OK: Boolean;
begin
  {$REGION 'Checagens iniciais.'}
  AbortIf(not DM.EmissaoOnline,'Só é possível enviar a NFCe em modo ONLINE.');
  AbortIf(TBNfceContingentes.IsEmpty,'Nenhuma NFCe selecionada.');

  DM.TBNfce.Close;
  DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceContingentesNFC_CODIGO.Value;
  DM.TBNfce.Open;

  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.'+#13#10+#13#10+Pasta);
  {$ENDREGION}

  AlimentarNFCe;
  DM.ACBrNFe1.NotasFiscais.Assinar;
  DM.ACBrNFe1.NotasFiscais.GerarNFe;

  OK:=DM.ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(Msg);
  AbortIf(not OK,Msg);

  DM.ACBrNFe1.NotasFiscais.Validar;
  AbortIf(DM.ACBrNFe1.NotasFiscais.Items[0].Alertas <> '','Alertas: '+DM.ACBrNFe1.NotasFiscais.Items[0].Alertas);

  {$REGION 'Processa a emissao em modo normal.'}
  DM.ACBrNFe1.Enviar(1,False,True);
  if DM.ACBrNFe1.CstatConfirmada(DM.ACBrNFe1.WebServices.Enviar.cStat) then
  begin
    {$REGION 'Marca NFCe como finalizada.'}
    DM.TBNfce.Edit;
    DM.TBNfceNFC_PROTOCOLO.Value:=DM.ACBrNFe1.WebServices.Enviar.Protocolo;
    DM.TBNfceNFC_PROTOCOLODH.Value:=DateTimeToStr(DM.ACBrNFe1.WebServices.Enviar.dhRecbto);
    //DM.TBNfceNFC_CHAVEACESSO.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    DM.TBNfceNFC_QRCODE.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFeSupl.qrCode;
    DM.TBNfceNFC_STATUS.Value:='F';
    DM.TBNfce.Post;
    {$ENDREGION}

    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml');

    DM.LogNfce(DM.TBNfceNFC_CODIGO.Value,'Envio NFCe',
      'XML: '+DM.ACBrNfe1.WebServices.Enviar.RetornoWS+#13#10+
      'tbAmp: '+TpAmbToStr(DM.ACBrNFe1.WebServices.Enviar.TpAmb)+#13#10+
      'verAplic: '+DM.ACBrNFe1.WebServices.Enviar.verAplic+#13#10+
      'cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+
      'cUF: '+DM.ACBrNFe1.WebServices.Enviar.cUF.ToString+#13#10+
      'xMotivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+
      'Protocolo: '+DM.ACBrNFe1.WebServices.Enviar.Protocolo
    );

    Application.CreateForm(TFormNfceFuncoes, FormNfceFuncoes);
    FormNfceFuncoes.RealizarBaixaEstoque;
    FormNfceFuncoes.RealizarContasReceber;
    FormNfceFuncoes.SincronizarPedidoDeVenda; //Atualiza o pedido de venda (se tiver) para deixar igual a NFe.
    FormNfceFuncoes.Free;
    FormNfceFuncoes:=nil;

    MessageDlg('Nota autorizada com sucesso!' + sLineBreak + 'Protocolo: ' + DM.ACBrNFe1.WebServices.Enviar.Protocolo,mtInformation,[mbOk],0);

    if MessageDlg('Imprimir DANFCE?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Application.CreateForm(TFormNfceFast, FormNfceFast);
      FormNfceFast.GerarDANFCE(DM.TBNfceNFC_CODIGO.Value,'Via consumidor',True,False);
      FormNfceFast.Free;
      FormNfceFast:=nil;
    end;

  end else
  begin
    MessageDlg(DM.ACBrNFe1.WebServices.Enviar.xMotivo,mtError,[mbOk],0);
    if DM.ACBrNFe1.Tag <> 0 then
    begin
      //sinaliza como pendente a nota atual que foi tentado enviar em modo normal e deu algum erro.
      DM.TBNfce.Edit;
      DM.TBNfceNFC_CONTINGENCIA.Value:='P';
      //DM.TBNfceNFC_CHAVEACESSO.Value:=Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,4,Length(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID));
      DM.TBNfce.Post;

      //EntrarEmContingencia;
    end;
  end;
  {$ENDREGION}

//
//  if DM.ACBrNFe1.CstatConfirmada(DM.ACBrNFe1.WebServices.Enviar.cStat) then
//  begin
//    //finalizar a nfce.
//  end else
//  if DM.ACBrNFe1.WebServices.Enviar.cStat=0 then
//  begin
//    //nao transmitiu
//    //verifica a chave contingencia.
//  end else
//  begin
//    //transmitiu com rejeicao.
//  end;
end;

procedure TFormNfceContingencias.PngBitBtn1Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid2.DataSource.DataSet.First;
  for Linha:=0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid2.SelectedRows.CurrentRowSelected:=True;
    DBGrid2.DataSource.DataSet.Next;
  end;
  DBGrid2.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn2Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid2.DataSource.DataSet.First;
  for Linha:=0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid2.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid2.DataSource.DataSet.Next;
  end;
  DBGrid2.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn3Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn4Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=True;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn5Click(Sender: TObject);
var D,M,A: Word;
  Pasta: String;
  F: TextFile;
  X: Integer;
begin
  {$REGION 'Checagens iniciais'}
  AbortIf(not DM.EmissaoOnline,'Só é possível enviar a NFCe em modo ONLINE.');
  AbortIf(TBNfceErros.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DBGrid2.SelectedRows.Count <= 0,'Nenhuma NFCe selecionada.');
  {$ENDREGION}

  Memo2.Lines.Clear;
  for X:=0 to DBGrid2.SelectedRows.Count-1 do
  begin
    DBGrid2.DataSource.DataSet.GotoBookmark(DBGrid2.SelectedRows.Items[X]);

    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
    DM.TBNfce.Open;

    DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
    if not System.SysUtils.DirectoryExists(Pasta) then
    AbortIf(not ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.'+#13#10+#13#10+Pasta);

    DM.ConfigurarACBrNFe;
    DM.ACBrNFe1.NotasFiscais.Clear;

    DM.ACBrNFe1.WebServices.Consulta.NFeChave:=TBNfceErrosNFC_CHAVEACESSO.Value;
    DM.ACBrNFe1.WebServices.Consulta.Executar;
    //DM.ACBrNFe1.Consultar(TBNfceErrosNFC_CHAVEACESSO.Value);

    if DM.ACBrNFe1.CstatConfirmada(DM.ACBrNFe1.WebServices.Consulta.cStat) then
    begin

      //nfce autorizada SEM informação de nfce substituta.
      if ((TBNfceErrosNFC_CODIGONFCE.IsNull) or (TBNfceErrosNFC_CODIGONFCE.Value = 0)) then
      begin
        Memo2.Lines.Add('Consulta NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' foi autorizada mas não tem informação de NFCe substituta.');
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update NFCE set NFC_PROTOCOLO=:protocolo, NFC_PROTOCOLODH=:protocolodh, NFC_STATUS=:status, NFC_CONTINGENCIA=:contingencia where NFC_CODIGO=:codigo');
        DM.QYAux.ParamByName('status').AsString:='F';
        DM.QYAux.ParamByName('contingencia').AsString:='N'; //tira do (P)endente.
        DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Consulta.Protocolo;
        DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Consulta.DhRecbto;
        DM.QYAux.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
        DM.QYAux.ExecSQL;
      end else

      //nfce autorizada COM informação de nfce substituta.
      if ((not TBNfceErrosNFC_CODIGONFCE.IsNull) or (TBNfceErrosNFC_CODIGONFCE.Value > 0)) then
      begin
        {$REGION 'CANCELAMENTO POR SUBSTITUICAO'}
        Memo2.Lines.Add('Consulta NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' foi autorizada. Efetuando cancelamento por substituição pela NFCe '+TBNfceErrosNFC_CODIGONFCE.Value.ToString);
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select NFC_CHAVEACESSO from NFCE where NFC_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGONFCE.Value; //código da NFCE que foi emitida offline.
        DM.QYAux.Open;

        //configura o evento.
        DM.ACBrNFe1.EventoNFe.Evento.Clear;
        with DM.ACBrNFe1.EventoNFe.Evento.New do
        begin
          InfEvento.chNFe:=TBNfceErrosNFC_CHAVEACESSO.Value;
          InfEvento.CNPJ:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
          InfEvento.dhEvento:=Now;
          InfEvento.tpEvento:=teCancSubst;
          InfEvento.detEvento.xJust:='CANCELAMENTO POR SUBSTITUICAO POR ERRO NO ENVIO';
          InfEvento.detEvento.nProt:=TBNfceErrosNFC_PROTOCOLO.Value;
          InfEvento.detEvento.chNFeRef:=DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString;
          InfEvento.detEvento.verAplic:=FileVersion(Application.ExeName);
          InfEvento.detEvento.versao:=FileVersion(Application.ExeName);
          InfEvento.detEvento.cOrgaoAutor:=DM.TBEmpresaEMP_ESTADOCODIGO.Value;
        end;
        DM.QYAux.Close;

        //envia o evento e checa retorno.
        DM.ACBrNFe1.EnviarEvento(1);
        if DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Count > 0 then
        begin
          if DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135,136,155] then
          begin
            Memo2.Lines.Add('Cancelamento NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' autorizado.');
            DM.LogNfce(TBNfceErrosNFC_CODIGO.Value,'EVENTO CANCELAMENTO AUTORIZADO.',
              'Protocolo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt+#13#10+
              'Data/Hora: '+DateTimeToStr(DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento)+#13#10+
              'Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
            );
            DM.QYAux.Close;
            DM.QYAux.SQL.Clear;
            DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_CONTINGENCIA=:contingencia, NFC_PROTOCOLOCANC=:protocolo, NFC_PROTOCOLOCANCDH=:protocolodh where NFC_CODIGO=:codigo');
            DM.QYAux.ParamByName('status').AsString:='C';
            DM.QYAux.ParamByName('contingencia').AsString:='N';
            DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
            DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
            DM.QYAux.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
            DM.QYAux.ExecSQL;
            AssignFile(F,Pasta+TBNfceErrosNFC_CHAVEACESSO.Value+'-procCanc.xml');
            Rewrite(F);
            Write(F,DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML);
            CloseFile(F);
          end else
          if DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 0 then
          begin
            Memo2.Lines.Add('Cancelamento NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' não transmitido. Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
            DM.LogNfce(TBNfceErrosNFC_CODIGO.Value,'EVENTO CANCELAMENTO NAO TRANSMITIDO','Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
          end else
          begin
            Memo2.Lines.Add('Cancelamento NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' com rejeição. Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
            DM.LogNfce(TBNfceErrosNFC_CODIGO.Value,'EVENTO CANCELAMENTO REJEICAO','Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
          end;
        end;
        {$ENDREGION}
      end;
    end;

    if DM.ACBrNFe1.WebServices.Consulta.cStat = 217 then
    begin
      {$REGION 'INUTILIZACAO POR NAO EXISTIR NA SEFAZ'}
      //217 = NFCE não encontrada na SEFAZ. Inutilizar nesse caso.
      Memo2.Lines.Add('Consulta NFCe '+TBNfceErrosNFC_CODIGO.Value.ToString+' não encontrada na SEFAZ. Efetuando inutilização.');
      DM.LogNfce(TBNfceErrosNFC_CODIGO.Value,'NFCE NAO ENCONTRADA - INUTILIZAR',
        'Codigo: '+TBNfceErrosNFC_CODIGO.Value.ToString+#13#10+
        'Protocolo: '+DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt+#13#10+
        'Data/Hora: '+DateTimeToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto)+#13#10+
        'Motivo: '+DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
      );
      DM.ACBrNFe1.NotasFiscais.Clear;
      DM.ACBrNFe1.WebServices.Inutiliza(
        DM.TBEmpresaEMP_CNPJ.Value,
        'INUTILIZACAO POR ERRO NA TRANSMISSAO',
        TBNfceErrosANO.Value,
        TBNfceErrosNFC_MODELO.Value,
        TBNfceErrosNFC_SERIE.Value,
        TBNfceErrosNFC_CODIGO.Value,
        TBNfceErrosNFC_CODIGO.Value
      );

      DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+TBNfceErrosNFC_CHAVEACESSO.Value+'-procInut.xml');
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_CONTINGENCIA=:contingencia, NFC_PROTOCOLOINUT=:protocolo, NFC_PROTOCOLOINUTDH=:protocolodh where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('status').AsString:='I';
      DM.QYAux.ParamByName('contingencia').AsString:='N';
      DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
      DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;
      DM.QYAux.ParamByName('codigo').AsInteger:=TBNfceErrosNFC_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.LogNfce(TBNfceErrosNFC_CODIGO.Value,'INUTILIZACAO NFCE PENDENTE',
        'tpAmb: ' + TpAmbToStr(DM.ACBrNFe1.WebServices.Inutilizacao.tpAmb)+#13#10+
        'verAplic: ' + DM.ACBrNFe1.WebServices.Inutilizacao.verAplic+#13#10+
        'cStat: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13#10+
        'xMotivo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo+#13#10+
        'cUF: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cUF)+#13#10+
        'Ano: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Ano)+#13#10+
        'CNPJ: ' + DM.ACBrNFe1.WebServices.Inutilizacao.CNPJ+#13#10+
        'Modelo: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Modelo)+#13#10+
        'Serie: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Serie)+#13#10+
        'NumeroInicial: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroInicial)+#13#10+
        'NumeroInicial: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroFinal)+#13#10+
        'dhRecbto: ' + DateTimeToStr(DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)+#13#10+
        'Protocolo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo
      );
      {$ENDREGION}
    end;
  end;
  AtualizarListagens1.Click;
end;

procedure TFormNfceContingencias.PngBitBtn6Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid3.DataSource.DataSet.First;
  for Linha:=0 to DBGrid3.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid3.SelectedRows.CurrentRowSelected:=True;
    DBGrid3.DataSource.DataSet.Next;
  end;
  DBGrid3.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn7Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid3.DataSource.DataSet.First;
  for Linha:=0 to DBGrid3.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid3.SelectedRows.CurrentRowSelected:=not DBGrid3.SelectedRows.CurrentRowSelected;
    DBGrid3.DataSource.DataSet.Next;
  end;
  DBGrid3.SelectedRows.Refresh;
end;

procedure TFormNfceContingencias.PngBitBtn8Click(Sender: TObject);
var A,M,D: Word;
  Pasta: String;
  F: TextFile;
  X: Integer;
begin
  {$REGION 'Checagens iniciais'}
  AbortIf(not DM.EmissaoOnline,'Só é possível enviar a NFCe em modo ONLINE.');
  AbortIf(TBNfceInutilizar.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DBGrid3.SelectedRows.Count <= 0,'Nenhuma NFCe selecionada.');
  {$ENDREGION}

  Memo1.Lines.Clear;
  for X:=0 to DBGrid3.SelectedRows.Count-1 do
  begin
    DBGrid3.DataSource.DataSet.GotoBookmark(DBGrid3.SelectedRows.Items[X]);

    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=DBGrid3.DataSource.DataSet.FieldByName('NFC_CODIGO').AsInteger; //TBNfceErrosNFC_CODIGO.Value;
    DM.TBNfce.Open;

    DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
    if not System.SysUtils.DirectoryExists(Pasta) then
    AbortIf(not ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.'+#13#10+#13#10+Pasta);

    DM.ConfigurarACBrNFe;
    DM.ACBrNFe1.NotasFiscais.Clear;
    try
      DM.ACBrNFe1.WebServices.Inutiliza(
        LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
        'O CUPOM FOI CANCELADO ANTES DO ENVIO. COMPRA CANCELADA.',
        TBNfceInutilizarANO.Value,
        TBNfceInutilizarNFC_MODELO.Value,
        TBNfceInutilizarNFC_SERIE.Value,
        TBNfceInutilizarNFC_CODIGO.Value,
        TBNfceInutilizarNFC_CODIGO.Value
      );
    except on E:Exception do
      //faz nada... try except só pra nao parar o loop.
      Memo1.Lines.Add('Inutilização de NFCe '+TBNfceInutilizarNFC_CODIGO.Value.ToString+' - ERRO: '+E.Message);
    end;

    if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=102 then
    begin
      Memo1.Lines.Add('Inutilização de NFCe '+TBNfceInutilizarNFC_CODIGO.Value.ToString+' - OK');
      AssignFile(F,Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.xml');
      Rewrite(F);
      Write(F,DM.ACBrNFe1.WebServices.Inutilizacao.XML_ProcInutNFe);
      CloseFile(F);

      {$REGION 'Verifica se foi gerado a partir de um DAV.'}
      if DM.TBNfceNFC_VENDA.Value>0 then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update VENDAS set VED_STATUS=:status where VED_CODIGO=:codigo');
        DM.QYAux.ParamByName('status').AsString:='I';
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_VENDA.Value;
        DM.QYAux.ExecSQL;
      end;
      {$ENDREGION}

      {$REGION 'Atualiza o status do cupom.'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFCE set NFC_PROTOCOLOINUT=:protocolo, NFC_PROTOCOLOINUTDH=:protocolodh where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
      DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
      DM.QYAux.ExecSQL;
      {$ENDREGION}

      DM.LogNFce(DM.TBNfceNFC_CODIGO.Value,'INUTILIZACAO',
        'tpAmb: '+TpAmbToStr(DM.ACBrNFe1.WebServices.Inutilizacao.tpAmb)+#13#10+
        'verAplic: ' + DM.ACBrNFe1.WebServices.Inutilizacao.verAplic+#13#10+
        'cStat: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13#10+
        'xMotivo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo+#13#10+
        'cUF: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cUF)+#13#10+
        'Ano: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Ano)+#13#10+
        'CNPJ: ' + DM.ACBrNFe1.WebServices.Inutilizacao.CNPJ+#13#10+
        'Modelo: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Modelo)+#13#10+
        'Serie: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Serie)+#13#10+
        'NumeroInicial: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroInicial)+#13#10+
        'NumeroFinal: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroFinal)+#13#10+
        'dhRecbto: ' + DateTimeToStr(DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)+#13#10+
        'Protocolo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo
      );
    end else
    if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=241 then //Rejeicao: Um numero da faixa ja foi utilizado.
    begin
      //altera para pendente se já foi utilizado
      Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' - ERRO: (cStat: '+DM.ACBrNFe1.WebServices.Inutilizacao.cStat.ToString+') '+DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo);
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_CONTINGENCIA=:contingencia where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('status').AsString:='A';
      DM.QYAux.ParamByName('contingencia').AsString:='P';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
      DM.QYAux.ExecSQL;
    end else
    begin
      Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' - ERRO: (cStat: '+DM.ACBrNFe1.WebServices.Inutilizacao.cStat.ToString+') '+DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo);
      DM.LogNFce(DM.TBNfceNFC_CODIGO.Value,'INUTILIZACAO ERRO',
        'tpAmb: '+TpAmbToStr(DM.ACBrNFe1.WebServices.Inutilizacao.tpAmb)+#13#10+
        'verAplic: ' + DM.ACBrNFe1.WebServices.Inutilizacao.verAplic+#13#10+
        'cStat: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13#10+
        'xMotivo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo+#13#10+
        'cUF: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.cUF)+#13#10+
        'Ano: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Ano)+#13#10+
        'CNPJ: ' + DM.ACBrNFe1.WebServices.Inutilizacao.CNPJ+#13#10+
        'Modelo: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Modelo)+#13#10+
        'Serie: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.Serie)+#13#10+
        'NumeroInicial: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroInicial)+#13#10+
        'NumeroFinal: ' + IntToStr(DM.ACBrNFe1.WebServices.Inutilizacao.NumeroFinal)+#13#10+
        'dhRecbto: ' + DateTimeToStr(DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)+#13#10+
        'Protocolo: ' + DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo
      );
      if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=563 then //ja existe pedido de inutilizacao.
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update NFCE set NFC_PROTOCOLOINUT=:protocolo, NFC_PROTOCOLOINUTDH=:protocolodh where NFC_CODIGO=:codigo');
        DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
        DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
        DM.QYAux.ExecSQL;
        AssignFile(F,Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.xml');
        Rewrite(F);
        Write(F,DM.ACBrNFe1.WebServices.Inutilizacao.XML_ProcInutNFe);
        CloseFile(F);
      end;
    end;
  end;
  AtualizarListagens1.Click; //atualizar.
end;

procedure TFormNfceContingencias.PngBitBtn9Click(Sender: TObject);
begin
  TBNfceLogs.Close;
  TBNfceLogs.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  TBNfceLogs.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  TBNfceLogs.Open;
end;

initialization
  RegisterClass(TFormNfceContingencias);

finalization
  UnRegisterClass(TFormNfceContingencias);

end.
