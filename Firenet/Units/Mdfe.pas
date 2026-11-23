unit Mdfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, QRPDFFilt,
  Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, PngSpeedButton,
  DBSBtn, Vcl.ExtCtrls, ACBrBase, ACBrDFe, ACBrMDFe, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMdfe = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    FinalizarMDFe1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    EnviarMDFePorEmail1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    GerarArquivoMDFe1Button: TPngSpeedButton;
    ValidarArquivoMDFe1Button: TPngSpeedButton;
    Bevel5: TBevel;
    EnviarMDFe1Button: TPngSpeedButton;
    BuscarMDFe1Button: TPngSpeedButton;
    CancelarMDFe1Button: TPngSpeedButton;
    CadastroDeFrotas1Button: TPngSpeedButton;
    DAMDFE1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    ArquivosXMLDoMDFe1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N4: TMenuItem;
    CancelarMDFe1: TMenuItem;
    FinalizarMDFe1: TMenuItem;
    N10: TMenuItem;
    SalvarPDFDAMDFEComo1: TMenuItem;
    SalvarZIPXMLsComo1: TMenuItem;
    N1: TMenuItem;
    RecriarChaveDeAcesso1: TMenuItem;
    GerarArquivoMDFe1: TMenuItem;
    ValidarArquivoMDFe1: TMenuItem;
    EnviarMDFe1: TMenuItem;
    BuscarMDFe1: TMenuItem;
    EnviarMDFePorEmail1: TMenuItem;
    ArquivosXMLDoMDFe1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    InserirDoc1: TMenuItem;
    EliminarDoc1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastroDeFrotas1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    DAMDFE1: TMenuItem;
    N6: TMenuItem;
    MDFeEmitidosNoPeriodo1: TMenuItem;
    Ferramentas1: TMenuItem;
    ConsultarStatusDoServico1: TMenuItem;
    ZiparArquivosXML1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SaveDialog1: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    DBText7: TDBText;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label38: TLabel;
    Label58: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label68: TLabel;
    SpeedButton9: TPngSpeedButton;
    Label71: TLabel;
    Label5: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label74: TLabel;
    Label59: TLabel;
    Label35: TLabel;
    Label66: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit43: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit3: TDBEdit;
    DBComboBox9: TDBComboBox;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBEdit66: TDBEdit;
    DBMemo3: TDBMemo;
    DBMemo1: TDBMemo;
    DBEdit53: TDBEdit;
    TabSheet4: TTabSheet;
    TabSheet6: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label90: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit85: TDBEdit;
    Memo1: TMemo;
    DBEdit79: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    TabSheet8: TTabSheet;
    Label82: TLabel;
    Label147: TLabel;
    DBEdit73: TDBEdit;
    DBEdit140: TDBEdit;
    TabSheet3: TTabSheet;
    Label14: TLabel;
    DBEdit18: TDBEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    DBEdit24: TDBEdit;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    GroupBox1: TGroupBox;
    PngBitBtn7: TPngBitBtn;
    DBGrid4: TDBGrid;
    PngBitBtn9: TPngBitBtn;
    GroupBox2: TGroupBox;
    DBGrid5: TDBGrid;
    PngBitBtn8: TPngBitBtn;
    PngBitBtn10: TPngBitBtn;
    GroupBox6: TGroupBox;
    PngBitBtn3: TPngBitBtn;
    DBGrid3: TDBGrid;
    PngBitBtn4: TPngBitBtn;
    GroupBox7: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    DBEdit33: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label37: TLabel;
    ACBrMDFe1: TACBrMDFe;
    Label46: TLabel;
    DBComboBox1: TDBComboBox;
    Label47: TLabel;
    DBEdit44: TDBEdit;
    Label48: TLabel;
    DBComboBox2: TDBComboBox;
    Label50: TLabel;
    DBEdit45: TDBEdit;
    Label51: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label52: TLabel;
    DBEdit48: TDBEdit;
    Label53: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    PngSpeedButton3: TPngSpeedButton;
    Label56: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label57: TLabel;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeFornecedores1: TMenuItem;
    Label60: TLabel;
    DBEdit56: TDBEdit;
    Label61: TLabel;
    DBEdit57: TDBEdit;
    Label62: TLabel;
    DBEdit58: TDBEdit;
    Label63: TLabel;
    DBEdit59: TDBEdit;
    Label64: TLabel;
    DBEdit60: TDBEdit;
    Label65: TLabel;
    DBEdit61: TDBEdit;
    Label67: TLabel;
    DBComboBox3: TDBComboBox;
    Label69: TLabel;
    DBEdit62: TDBEdit;
    DBEdit65: TDBEdit;
    Label70: TLabel;
    DBEdit67: TDBEdit;
    Label72: TLabel;
    GroupBox8: TGroupBox;
    Label75: TLabel;
    DBEdit68: TDBEdit;
    Label76: TLabel;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    Label73: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit72: TDBEdit;
    DBEdit74: TDBEdit;
    QYMdfe: TFDQuery;
    TRMdfe: TFDTransaction;
    QYMdfeMDF_AERONAVEMAT: TStringField;
    QYMdfeMDF_AERONAVENAC: TStringField;
    QYMdfeMDF_AEROPORTODES: TStringField;
    QYMdfeMDF_AEROPORTOEMB: TStringField;
    QYMdfeMDF_CHAVEACESSO: TStringField;
    QYMdfeMDF_CIDADEENC: TStringField;
    QYMdfeMDF_CIDADEENCCODIGO: TIntegerField;
    QYMdfeMDF_CIOT: TStringField;
    QYMdfeMDF_CLASSFISCAL: TStringField;
    QYMdfeMDF_CLIENTE: TIntegerField;
    QYMdfeMDF_CNPJ: TStringField;
    QYMdfeMDF_CODIGO: TIntegerField;
    QYMdfeMDF_CODIGOBARRAS: TStringField;
    QYMdfeMDF_CODIGONUMERICO: TIntegerField;
    QYMdfeMDF_CONSULTADA: TStringField;
    QYMdfeMDF_CPF: TStringField;
    QYMdfeMDF_DTATUALIZACAO: TDateField;
    QYMdfeMDF_DTCADASTRO: TDateField;
    QYMdfeMDF_DTEMISSAO: TDateField;
    QYMdfeMDF_DTENC: TDateField;
    QYMdfeMDF_ESTADOENC: TStringField;
    QYMdfeMDF_ESTADOENCCODIGO: TIntegerField;
    QYMdfeMDF_ESTADOFIM: TStringField;
    QYMdfeMDF_ESTADOINI: TStringField;
    QYMdfeMDF_HRATUALIZACAO: TTimeField;
    QYMdfeMDF_HRCADASTRO: TTimeField;
    QYMdfeMDF_HREMISSAO: TTimeField;
    QYMdfeMDF_INFOADICFISCO: TMemoField;
    QYMdfeMDF_LOCALCARREGACEP: TStringField;
    QYMdfeMDF_LOCALCARREGALAT: TSingleField;
    QYMdfeMDF_LOCALCARREGALON: TSingleField;
    QYMdfeMDF_LOCALDESCARREGACEP: TStringField;
    QYMdfeMDF_LOCALDESCARREGALAT: TSingleField;
    QYMdfeMDF_LOCALDESCARREGALON: TSingleField;
    QYMdfeMDF_MODAL: TStringField;
    QYMdfeMDF_MODELO: TIntegerField;
    QYMdfeMDF_MOTIVOCANCELAMENTO: TStringField;
    QYMdfeMDF_NOME: TStringField;
    QYMdfeMDF_OBSERVACOES: TMemoField;
    QYMdfeMDF_PESOBRUTO: TFMTBCDField;
    QYMdfeMDF_PRODUTOPREDOM: TStringField;
    QYMdfeMDF_PROTOCOLO: TStringField;
    QYMdfeMDF_PROTOCOLOCANC: TStringField;
    QYMdfeMDF_PROTOCOLOCANCDH: TStringField;
    QYMdfeMDF_PROTOCOLODH: TStringField;
    QYMdfeMDF_PROTOCOLOENC: TStringField;
    QYMdfeMDF_PROTOCOLOENCDH: TStringField;
    QYMdfeMDF_QTDECTE: TIntegerField;
    QYMdfeMDF_QTDEMDFE: TIntegerField;
    QYMdfeMDF_QTDENFE: TIntegerField;
    QYMdfeMDF_RCAPACIDADEKG: TFMTBCDField;
    QYMdfeMDF_RCAPACIDADEM3: TFMTBCDField;
    QYMdfeMDF_RCNPJ: TStringField;
    QYMdfeMDF_RCODIGO: TIntegerField;
    QYMdfeMDF_RCPF: TStringField;
    QYMdfeMDF_RECIBO: TStringField;
    QYMdfeMDF_RECIBODH: TStringField;
    QYMdfeMDF_RESTADO: TStringField;
    QYMdfeMDF_RESTADOPROPRIETARIO: TStringField;
    QYMdfeMDF_RIE: TStringField;
    QYMdfeMDF_RNOME: TStringField;
    QYMdfeMDF_RNTRC: TStringField;
    QYMdfeMDF_RPLACA: TStringField;
    QYMdfeMDF_RRENAVAM: TStringField;
    QYMdfeMDF_RRNTRC: TStringField;
    QYMdfeMDF_RTARA: TFMTBCDField;
    QYMdfeMDF_RTIPOCARROCERIA: TStringField;
    QYMdfeMDF_RTIPOPROPRIETARIO: TStringField;
    QYMdfeMDF_SEGURADORA: TIntegerField;
    QYMdfeMDF_SEGURADORACNPJ: TStringField;
    QYMdfeMDF_SEGURADORANOME: TStringField;
    QYMdfeMDF_SEGURO: TStringField;
    QYMdfeMDF_SEGUROAPOLICE: TStringField;
    QYMdfeMDF_SEGUROAVERBACAO: TStringField;
    QYMdfeMDF_SEGUROCNPJ: TStringField;
    QYMdfeMDF_SEGUROCPF: TStringField;
    QYMdfeMDF_SERIE: TIntegerField;
    QYMdfeMDF_STATUS: TStringField;
    QYMdfeMDF_TCAPACIDADEKG: TFMTBCDField;
    QYMdfeMDF_TCAPACIDADEM3: TFMTBCDField;
    QYMdfeMDF_TCNPJ: TStringField;
    QYMdfeMDF_TCODIGO: TIntegerField;
    QYMdfeMDF_TCPF: TStringField;
    QYMdfeMDF_TESTADO: TStringField;
    QYMdfeMDF_TESTADOPROPRIETARIO: TStringField;
    QYMdfeMDF_TIE: TStringField;
    QYMdfeMDF_TIPOCARGA: TStringField;
    QYMdfeMDF_TIPOEMISSAO: TStringField;
    QYMdfeMDF_TIPOEMITENTE: TStringField;
    QYMdfeMDF_TIPOMEDIDA: TStringField;
    QYMdfeMDF_TIPOTRANSPORTADOR: TStringField;
    QYMdfeMDF_TNOME: TStringField;
    QYMdfeMDF_TPLACA: TStringField;
    QYMdfeMDF_TRENAVAM: TStringField;
    QYMdfeMDF_TRNTRC: TStringField;
    QYMdfeMDF_TTARA: TFMTBCDField;
    QYMdfeMDF_TTIPOCARROCERIA: TStringField;
    QYMdfeMDF_TTIPOPROPRIETARIO: TStringField;
    QYMdfeMDF_TTIPORODADO: TStringField;
    QYMdfeMDF_USUARIO: TStringField;
    QYMdfeMDF_VALORCARGA: TFMTBCDField;
    QYMdfeMDF_VOODATA: TDateField;
    QYMdfeMDF_VOONUMERO: TStringField;
    FDUpdateSQL1: TFDUpdateSQL;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure CancelarMDFe1Click(Sender: TObject);
    procedure FinalizarMDFe1Click(Sender: TObject);
    procedure SalvarPDFDAMDFEComo1Click(Sender: TObject);
    procedure SalvarZIPXMLsComo1Click(Sender: TObject);
    procedure RecriarChaveDeAcesso1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DAMDFE1Click(Sender: TObject);
    procedure ConsultarStatusDoServico1Click(Sender: TObject);
    procedure ZiparArquivosXML1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PngBitBtn7Click(Sender: TObject);
    procedure PngBitBtn9Click(Sender: TObject);
    procedure PngBitBtn8Click(Sender: TObject);
    procedure PngBitBtn10Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure CadastroDeFrotas1Click(Sender: TObject);
    procedure GerarArquivoMDFe1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ValidarArquivoMDFe1Click(Sender: TObject);
    procedure ArquivosXMLDoMDFe1Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarMDFe1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure EnviarMDFePorEmail1Click(Sender: TObject);
    procedure MDFeEmitidosNoPeriodo1Click(Sender: TObject);
    procedure DBEdit46Enter(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure DBEdit46KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51Enter(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure DBEdit51KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure EnviarMDFe1Click(Sender: TObject);
  private
    { Private declarations }
    function AssinarMDFe(var MDFe: Widestring): Boolean;
    function EnviarMDFe(MostrarMensagem: Boolean): Boolean;
    function EnviarMDFeAssincrono(MostrarMensagem: Boolean): Boolean;
    function GerarArquivoMDFeUtil: Boolean;
    procedure GerarDAMDFE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
  public
    { Public declarations }
  end;

var
  FormMdfe: TFormMdfe;

implementation
uses DataMod, DataMod2, Main, MdfeLoc, Funcoes1, FuncoesFirenet, MDFe_Util_TLB,
  EnderecosCidadesLoc, EnderecosEstadosLoc, FrotasLoc, VendedoresLoc, Clientes,
  Frotas, Vendedores, MdfeArquivosXML, MdfeValidar, MdfeDocumentos,
  MdfeQ01Rodoviario, InputDate, MdfeRel, ZiparDFE, DataModSearch,
  FornecedoresLoc, ClientesLoc, Fornecedores, System.Zip, System.IOUtils, System.Types;
{$R *.dfm}

procedure TFormMdfe.GerarArquivoMDFe1Click(Sender: TObject);
begin
  AbortIf(MDFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL MDFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  GerarArquivoMDFeUtil;
end;

function TFormMdfe.GerarArquivoMDFeUtil: Boolean;
var A,M,D, Retira: Word;
  AutXML, Averbacoes, CTES, Emitente, Identificacao, InfoAdic, InfoANTT, InfoCIOT, InfoContratante, InfoDocs, InfoLotacao, InfoMDFeSup, InfoModal,
  InfoPag, InfoRespTec, Lacres, MsgResultado, Motoristas, Municipios, MunicipiosDescarrega, NFES, Percursos, ProdutoPred, ProprietarioReboque,
  ProprietarioTracao, QRCode, Seguro, TipoTransportador, Totalizadores, ValePedagio, VeiculoTracao, VeiculoReboque, XMLMDFE: WideString;
  U: MDFe_Util_Interface;
  F: TextFile;
  respSeg: Word;
  Resultado: Integer;
  Pasta: String;
begin
  {$REGION 'VERIFICACOES'}
  if DM2.TBMdfe.IsEmpty then Exit(Erro('Nenhum MDFe selecionado.'));
  if DM2.TBMdfeMDF_STATUS.Value='F' then Exit(Erro('MDFe já finalizado.'));
  if DM2.TBMdfeMDF_STATUS.Value='V' then Exit(Erro('MDFe já autorizado para uso. (Em vigência)'));
  if DM2.TBMdfeMDF_STATUS.Value='C' then Exit(Erro('MDFe cancelado.'));

  PageControl1.ActivePageIndex:=4;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo MDFe...');
  {$ENDREGION}
  U:=CoUtil.Create;

  {$REGION 'MUNICIPIOS CARREGAMENTO'}
  Municipios:='';
  DM2.TBMdfeCarrega.First;
  while not DM2.TBMdfeCarrega.Eof do
  begin
    Municipios:=Municipios+U.infMunCarrega(IntToStr(DM2.TBMdfeCarregaMDC_CIDADECODIGO.Value),DM2.TBMdfeCarregaMDC_CIDADE.Value);
    DM2.TBMdfeCarrega.Next;
  end;
  {$ENDREGION}

  {$REGION 'MUNICIPIOS DESCARREGAMENTO'}
  MunicipiosDescarrega:='';
  DM2.TBMdfeDescarrega.First;
  while not DM2.TBMdfeDescarrega.Eof do
  begin
    MunicipiosDescarrega:=MunicipiosDescarrega+U.infMunDescarga(DM2.TBMdfeDescarregaMDD_CIDADECODIGO.Value.ToString,DM2.TBMdfeDescarregaMDD_CIDADE.Value,'','','');
    DM2.TBMdfeDescarrega.Next;
  end;
  {$ENDREGION}

  {$REGION 'PERCURSOS'}
  Percursos:='';
  DM2.TBMdfePercursos.First;
  while not DM2.TBMdfePercursos.Eof do
  begin
    Percursos:=Percursos+U.infPercurso(DM2.TBMdfePercursosMDP_ESTADO.Value);
    DM2.TBMdfePercursos.Next;
  end;
  {$ENDREGION}

  {$REGION 'IDENTIFICACAO'}
  TipoTransportador:=Copy(DM2.TBMdfeMDF_TIPOTRANSPORTADOR.Value,1,1);
  if TipoTransportador='0' then TipoTransportador:='';

  Identificacao:=U.ide_v3a(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
    StrToInt(Copy(DM2.TBMdfeMDF_TIPOEMITENTE.Value,1,1)),
    TipoTransportador,
    DM2.TBMdfeMDF_MODELO.Value,
    DM2.TBMdfeMDF_SERIE.Value,
    DM2.TBMdfeMDF_CODIGO.Value,
    DM2.TBMdfeMDF_CODIGONUMERICO.Value,
    StrToInt(Copy(DM2.TBMdfeMDF_CHAVEACESSO.Value,44,1)),
    StrToInt(Copy(DM2.TBMdfeMDF_MODAL.Value,1,1)),
    FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDateTime('hh:nn:ss',Time)+DM.TBParametrosPAR_FUSOHORARIO.Value,
    StrToInt(Copy(DM2.TBMdfeMDF_TIPOEMISSAO.Value,1,1)),
    '0', //app próprio... 3=app do fisco.
    '15', //versão firenet.
    DM2.TBMdfeMDF_ESTADOINI.Value,
    DM2.TBMdfeMDF_ESTADOFIM.Value,
    Municipios,
    Percursos,
    '',
    '0',
    '0'
  ); //data hora inicio viagem.
  {$ENDREGION}

  {$REGION 'EMITENTE'}
  Emitente:=U.emit(
    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
    DM.TBEmpresaEMP_NOME.Value,
    DM.TBEmpresaEMP_NOMEFANTASIA.Value,
    DM.TBEmpresaEMP_ENDERECO.Value,
    DM.TBEmpresaEMP_NUMERO.Value,
    '', //complemento.
    DM.TBEmpresaEMP_BAIRRO.Value,
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    DM.TBEmpresaEMP_CIDADE.Value,
    LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
    DM.TBEmpresaEMP_ESTADO.Value,
    LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
    DM.TBEmpresaEMP_EMAIL.Value
  );
  {$ENDREGION}

  {$REGION 'VEICULO TRACAO'}
  Motoristas:='';
  DM2.TBMdfeMotoristas.First;
  while not DM2.TBMdfeMotoristas.Eof do
  begin
    Motoristas:=Motoristas+U.condutor(DM2.TBMdfeMotoristasMDM_NOME.Value,LimparFormatacao(DM2.TBMdfeMotoristasMDM_CPF.Value));
    DM2.TBMdfeMotoristas.Next;
  end;
  DM2.TBFrotas.Close;
  DM2.TBFrotas.ParamByName('codigo').AsInteger:=DM2.TBMdfeMDF_TCODIGO.Value;
  DM2.TBFrotas.Open;
  ProprietarioTracao:='';
  if DM2.TBFrotasFRO_TIPOPROPRIEDADE.Value='T - TERCEIRO' then
  ProprietarioTracao:=U.prop_v10a(
    LimparFormatacao(DM2.TBMdfeMDF_TCPF.Value),
    LimparFormatacao(DM2.TBMdfeMDF_TCNPJ.Value),
    DM2.TBMdfeMDF_TRNTRC.Value,
    DM2.TBMdfeMDF_TNOME.Value,
    LimparFormatacao(DM2.TBMdfeMDF_TIE.Value),
    DM2.TBMdfeMDF_TESTADOPROPRIETARIO.Value,
    StrToInt(Copy(DM2.TBMdfeMDF_TTIPOPROPRIETARIO.Value,1,1))
  );

  VeiculoTracao:=U.veicPrincipal_v3(
    IntToStr(DM2.TBMdfeMDF_TCODIGO.Value),
    LimparFormatacao(DM2.TBMdfeMDF_TPLACA.Value),
    DM2.TBMdfeMDF_TRENAVAM.Value,
    FloatToStr(DM2.TBMdfeMDF_TTARA.AsExtended),
    FloatToStr(DM2.TBMdfeMDF_TCAPACIDADEKG.AsExtended),
    FloatToStr(DM2.TBMdfeMDF_TCAPACIDADEM3.AsExtended),
    ProprietarioTracao,
    Motoristas,
    Copy(DM2.TBMdfeMDF_TTIPORODADO.Value,1,2),
    Copy(DM2.TBMdfeMDF_TTIPOCARROCERIA.Value,1,2),
    DM2.TBMdfeMDF_TESTADO.Value
  );
  {$ENDREGION}

  {$REGION 'VEICULO REBOQUE'}
  ProprietarioReboque:='';
  VeiculoReboque:='';
  if not DM2.TBMdfeMDF_RCODIGO.IsNull then
  begin
    DM2.TBFrotas.Close;
    DM2.TBFrotas.ParamByName('codigo').AsInteger:=DM2.TBMdfeMDF_RCODIGO.Value;
    DM2.TBFrotas.Open;
    if DM2.TBFrotasFRO_TIPOPROPRIEDADE.Value='T - TERCEIRO' then
    ProprietarioReboque:=U.prop_v10a(
      LimparFormatacao(DM2.TBMdfeMDF_RCPF.Value),
      LimparFormatacao(DM2.TBMdfeMDF_RCNPJ.Value),
      DM2.TBMdfeMDF_RRNTRC.Value,
      DM2.TBMdfeMDF_RNOME.Value,
      LimparFormatacao(DM2.TBMdfeMDF_RIE.Value),
      DM2.TBMdfeMDF_RESTADOPROPRIETARIO.Value,
      StrToInt(Copy(DM2.TBMdfeMDF_RTIPOPROPRIETARIO.Value,1,1))
    );

    VeiculoReboque:=U.veicReboque_v3(
      IntToStr(DM2.TBMdfeMDF_RCODIGO.Value),
      LimparFormatacao(DM2.TBMdfeMDF_RPLACA.Value),
      DM2.TBMdfeMDF_RRENAVAM.Value,
      FloatToStr(DM2.TBMdfeMDF_RTARA.AsExtended),
      FloatToStr(DM2.TBMdfeMDF_RCAPACIDADEKG.AsExtended),
      FloatToStr(DM2.TBMdfeMDF_RCAPACIDADEM3.AsExtended),
      ProprietarioReboque,
      Copy(DM2.TBMdfeMDF_RTIPOCARROCERIA.Value,1,2),
      DM2.TBMdfeMDF_RESTADO.Value
    );
  end;
  {$ENDREGION}

  if DM2.TBMdfeMDF_MODAL.Value='1 - RODOVIARIO' then
  begin
    {$REGION 'MODAL RODOVIARIO'}
    ValePedagio:='';
    InfoCIOT:=''; //U.infCIOT()

    InfoPag:='';
//    infPag_NT2022001(string xNome_Opc, string CPF, string CNPJ, string idEstrangeiro, string Comp, double vContrato, string indPag, string infPrazo, string codBanco, string codAgencia, string CNPJIPEF, string PIX,string indAltoDesemp_Opc, double vAdiant, string indAntecipaAdiant_Opc, string tpAntecip_Opc)
//
//    1 - PRESTADOR DE SERVICO DE TRANSPORTE
//    2 - TRANSPORTADOR DE CARGA PROPRIA
//    3 - PRESTADOR SERV TRANSP EMISSAO CTE GLOBALIZADO

    InfoContratante:=U.infCont_NT2022001(DM2.TBMdfeMDF_NOME.Value,LimparFormatacao(DM2.TBMdfeMDF_CPF.Value),LimparFormatacao(DM2.TBMdfeMDF_CNPJ.Value),'','',0);
    InfoANTT:=U.infANTT_NT2021001(DM2.TBMdfeMDF_RNTRC.Value,InfoCIOT,ValePedagio,InfoContratante,InfoPag);
    InfoModal:=U.rodo_v3(
      DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
      InfoANTT,
      VeiculoTracao,
      VeiculoReboque,
      '', //codAgPorto.
      '' //lacRodo.
    );
    {$ENDREGION}
  end else
  if DM2.TBMdfeMDF_MODAL.Value='2 - AEREO' then
  begin
    {$REGION 'MODAL AEREO'}
    InfoModal:=U.aereo(DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                       DM2.TBMdfeMDF_AERONAVENAC.Value,
                       DM2.TBMdfeMDF_AERONAVEMAT.Value,
                       DM2.TBMdfeMDF_VOONUMERO.Value,
                       DM2.TBMdfeMDF_AEROPORTOEMB.Value,
                       DM2.TBMdfeMDF_AEROPORTODES.Value,
                       DM2.TBMdfeMDF_VOODATA.Value);
    {$ENDREGION}
  end;

  {$REGION 'INFODOCS'}
  InfoDocs:='';
  DM2.TBMdfeDescarrega.First;
  while not DM2.TBMdfeDescarrega.Eof do
  begin
    CTES:='';
    NFES:='';
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from MDFEDOCS where MFD_MDFEDESCARREGA=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBMdfeDescarregaMDD_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.FetchAll;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin

      if DM.QYAux.FieldByName('MFD_TIPODOC').AsString='CTE' then
      CTES:=CTES+U.infCTe_NT2018002(
        DM.QYAux.FieldByName('MFD_CHAVEACESSO').AsString,
        DM.QYAux.FieldByName('MFD_CODIGOBARRAS').AsString,
        '', //indreentrega
        '', //unidtransp
        '', //produtos perigosos
        '' //entrega parcial
      );

      if DM.QYAux.FieldByName('MFD_TIPODOC').AsString='NFE' then
      NFES:=NFES+U.infNFe_v3(
        DM.QYAux.FieldByName('MFD_CHAVEACESSO').AsString,
        DM.QYAux.FieldByName('MFD_CODIGOBARRAS').AsString,
        '', //indreentrega,
        '', //unidtransp
        '' //produtos perigosos.
      );

      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    InfoDocs:=InfoDocs+U.infDoc(
      DM2.TBMdfeDescarregaMDD_CIDADECODIGO.Value.ToString,
      DM2.TBMdfeDescarregaMDD_CIDADE.Value,
      CTES,
      '',
      NFES,
      ''
    );
    DM2.TBMdfeDescarrega.Next;
  end;
  {$ENDREGION}

  {$REGION 'TOTALIZADORES, LACRES, INFO ADICIONAIS'}
  //Totalizadores:=U.tot(DM2.TBMdfeMDF_QTDECTE.Value,0,DM2.TBMdfeMDF_QTDENFE.Value,0,DM2.TBMdfeMDF_VALORCARGA.Value,Copy(DM2.TBMdfeMDF_TIPOMEDIDA.Value,1,2),DM2.TBMdfeMDF_PESOBRUTO.Value);
  Totalizadores:=U.tot_v3(DM2.TBMdfeMDF_QTDECTE.Value,DM2.TBMdfeMDF_QTDENFE.Value,0,DM2.TBMdfeMDF_VALORCARGA.AsExtended,Copy(DM2.TBMdfeMDF_TIPOMEDIDA.Value,1,2),DM2.TBMdfeMDF_PESOBRUTO.AsExtended);

  Averbacoes:=U.nAver(DM2.TBMdfeMDF_SEGUROAVERBACAO.Value);
  Seguro:='';
  if DM2.TBMdfeMDF_MODAL.Value='1 - RODOVIARIO' then
  Seguro:=U.seg(Copy(DM2.TBMdfeMDF_SEGURO.Value,1,1),
                LimparFormatacao(DM2.TBMdfeMDF_SEGUROCNPJ.Value),
                LimparFormatacao(DM2.TBMdfeMDF_SEGUROCPF.Value),
                Copy(DM2.TBMdfeMDF_SEGURADORANOME.Value,1,30),
                LimparFormatacao(DM2.TBMdfeMDF_SEGURADORACNPJ.Value),
                DM2.TBMdfeMDF_SEGUROAPOLICE.Value,
                Averbacoes);
  Lacres:='';
  AutXML:=''; //U.autXML();
  InfoAdic:=U.infAdic(DeleteLineBreaks(DM2.TBMdfeMDF_INFOADICFISCO.Value),DeleteLineBreaks(DM2.TBMdfeMDF_OBSERVACOES.Value));
  {$ENDREGION}

  InfoRespTec:=U.infRespTec2('12843516000187','rogerio pett','rogeriopett@gmail.com','47991963060','','','');
  QRCode:='';
  InfoMDFeSup:=U.infMDFeSupl('https://dfe-portal.svrs.rs.gov.br/mdfe/qrCode',
                             DM2.TBMdfeMDF_CHAVEACESSO.Value,
                             StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
                             DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                             QRCode,Resultado,MsgResultado);

  InfoLotacao:='';
  if not DM2.TBMdfeMDF_LOCALCARREGACEP.IsNull then
  InfoLotacao:=U.infLotacao(
    LimparFormatacao(DM2.TBMdfeMDF_LOCALCARREGACEP.Value),
    DM2.TBMdfeMDF_LOCALCARREGALAT.Value,
    DM2.TBMdfeMDF_LOCALCARREGALON.Value,
    LimparFormatacao(DM2.TBMdfeMDF_LOCALDESCARREGACEP.Value),
    DM2.TBMdfeMDF_LOCALDESCARREGALAT.Value,
    DM2.TBMdfeMDF_LOCALDESCARREGALON.Value
  );

  ProdutoPred:=U.prodPred(
    Copy(DM2.TBMdfeMDF_TIPOCARGA.Value,1,2),
    DM2.TBMdfeMDF_PRODUTOPREDOM.Value,
    DM2.TBMdfeMDF_CODIGOBARRAS.Value,
    DM2.TBMdfeMDF_CLASSFISCAL.Value,
    InfoLotacao
  );

  XMLMDFE:=U.MDFe_NT2020001(
    DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
    DM2.TBMdfeMDF_CHAVEACESSO.Value,
    Identificacao,
    Emitente,
    InfoModal,
    InfoDocs,
    Seguro,
    Totalizadores,
    Lacres,
    Autxml,
    InfoAdic,
    InfoRespTec,
    InfoMDFeSup,
    ProdutoPred
  );
  U:=nil;

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
  if not System.SysUtils.DirectoryExists(Pasta) then
  begin
    if not System.SysUtils.ForceDirectories(Pasta) then Exit(Erro('Não foi possível criar subpastas para gravação do arquivo.'));
  end;

  //grava o MDFe sem a assinatura.
  AssignFile(F,DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml',CP_UTF8);
  Rewrite(F);
  Write(F,AnsiToUtf8(XMLMDFE));
  CloseFile(F);

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração OK.');
  Result:=True;
end;

procedure TFormMdfe.ArquivosXMLDoMDFe1Click(Sender: TObject);
var A,M,D: Word;
  Arquivo, Pasta: String;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDF-e selecionado.');

  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  AbortIf(not System.SysUtils.DirectoryExists(Pasta),'A pasta do MDF-e não foi localizada.'+#13#10+'Tente gerar o arquivo XML antes.');
  Arquivo:=DM2.TBMdfeMDF_CHAVEACESSO.Value+'*.*';
  AbortIf(not ExisteAlgumArquivo(Pasta+Arquivo),'Nenhum arquivo encontrado para este MDFe.');

  Application.CreateForm(TFormMdfeArquivosXML, FormMdfeArquivosXML);
  FormMdfeArquivosXML.ShowModal;
  FormMdfeArquivosXML.Free;
  FormMdfeArquivosXML:=nil;
end;

function TFormMdfe.AssinarMDFe(var MDFe: Widestring): Boolean;
var MDFEAssinado, MsgResultado: Widestring;
  Resultado: Integer;
  U: MDFe_Util_Interface;
begin
  if DM.TBParametrosPAR_NOMECERTIFICADO.Value<>'' then
  begin
    U:=CoUtil.Create;
    MDFEAssinado:=U.Assinar(MDFE,'InfMDFe','Id',DM.TBParametrosPAR_NOMECERTIFICADO.Value,Resultado,MsgResultado);
    if Resultado=5300 then
    begin
      Memo1.Lines.Add(MsgResultado);
      MDFe:=MDFEAssinado;
      Result:=True;
    end else
    begin
      Memo1.Lines.Add('Processo de assinatura falhou...'+#13+MsgResultado);
      Result:=False;
    end;
    U:=nil;
  end else
  begin
    Memo1.Lines.Add('Nome do titular do Certificado não informado...');
    Result:=False;
  end;
end;

procedure TFormMdfe.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');
  AbortIf(DM2.TBMdfeDescarrega.IsEmpty,'Nenhuma cidade de descarregamento selecionada.');

  DM2.TBMdfeDocs.Insert;
  Application.CreateForm(TFormMdfeDocumentos, FormMdfeDocumentos);
  FormMdfeDocumentos.ShowModal;
  FormMdfeDocumentos.Free;
  FormMdfeDocumentos:=nil;
end;

procedure TFormMdfe.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');
  AbortIf(DM2.TBMdfeDocs.IsEmpty,'Nenhuma cidade para excluir.');

  if MessageDlg('Eliminar o documento selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBMdfeDocs.Delete;
end;

procedure TFormMdfe.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeDocs.IsEmpty,'Nenhum documento selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  DM2.TBMdfeDocs.Edit;
  Application.CreateForm(TFormMdfeDocumentos, FormMdfeDocumentos);
  FormMdfeDocumentos.ShowModal;
  FormMdfeDocumentos.Free;
  FormMdfeDocumentos:=nil;
end;

procedure TFormMdfe.BuscarMDFe1Click(Sender: TObject);
var U: MDFe_Util_Interface;
  MDFEAssinado, MsgDados, MsgRetWS, MsgResultado, Protocolo, ProtocoloDH, ProtocoloNro, Recibo, procMDFe: Widestring;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
  Proxy: String;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDFe selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','MDFe já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','MDFe já cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','MDFe já autorizado.'); //v=vigencia
  AbortIf(DM2.TBMdfeMDF_RECIBO.Value='','MDFe ainda não enviado. Sem recibo para buscar.');
  AbortIf(MDFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL MDFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  U:=CoUtil.Create;
  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  Memo1.Lines.Clear;
  //Atenção para o segundo parâmetro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml',TEncoding.UTF8);
  MDFEAssinado:=Memo1.Lines.Text;
  MDFEAssinado:=U.Assinar(MDFEAssinado,'infMDFe','Id',DM.TBParametrosPAR_NOMECERTIFICADO.Value,cStat,MsgResultado);
  if cStat<>5300 then
  begin
    MessageDlg('Processo de assinatura falhou.',mtError,[mbOk],0);
    U:=nil;
    Exit;
  end;

  Memo1.Lines.Clear;
  PageControl1.ActivePageIndex:=4;
  Screen.Cursor:=crHourGlass;
  Recibo:=DM2.TBMdfeMDF_RECIBO.Value; // '424000003924974'; //'424000003924977';

  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  ProcMDFe:=U.BuscaMDFe(DM.TBParametrosPAR_SIGLAWSMDFE.Value,
                        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
                        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                        DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                        Recibo,
                        MDFEAssinado,
                        MsgDados,
                        MsgRetWS,
                        cStat,
                        MsgResultado,
                        Protocolo,
                        ProtocoloNro,
                        ProtocoloDH,
                        Proxy,
                        DM.TBParametrosPAR_PROXYUSER.Value,
                        DM.TBParametrosPAR_PROXYPASSWORD.Value);
  Screen.Cursor:=crDefault;
  if ProtocoloNro<>'' then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_PROTOCOLO.Value:=ProtocoloNro;
    DM2.TBMdfeMDF_PROTOCOLODH.Value:=ProtocoloDH;
    DM2.TBMdfeMDF_CONSULTADA.Value:='F';
    DM2.TBMdfeMDF_STATUS.Value:='V'; //em vigência.
    DM2.TBMdfe.Post;
  end else
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_CONSULTADA.Value:='S';
    DM2.TBMdfe.Post;
  end;
  if cStat=100 then
  begin
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procMDFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(procMDFe));
    CloseFile(F);
  end;
  Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);
  Memo1.Lines.Add('Protocolo: '+ProtocoloNro);
  Memo1.Lines.Add('Data Hora: '+ProtocoloDH);
  Memo1.Lines.Add('Codigo de Retorno da função: '+IntToStr(cStat));
  U:=nil;
end;

procedure TFormMdfe.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMdfe.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormMdfe.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormMdfe.CadastroDeFrotas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotas, FormFrotas);
  FormFrotas.ShowModal;
  FormFrotas.Free;
  FormFrotas:=nil;
end;

procedure TFormMdfe.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormMdfe.CancelarMDFe1Click(Sender: TObject);
var U: MDFe_Util_Interface;
  Justificativa, MsgDados, MsgResultado, MsgRetWS, ProcCanc, Protocolo, ProtocoloDH: WideString;
  Proxy: String;
  Resultado: Integer;
  A,M,D: Word;
  F: TextFile;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDFe selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='A','MDFe não autorizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','MDFe já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','MDFe já cancelado.');

  if MessageDlg('Deseja cancelar o manifesto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=4;
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Cancelamento de MDFe...');
      Screen.Cursor:=crHourGlass;
      U:=CoUtil.Create;
      Proxy:='';
      if DM.TBParametrosPAR_PROXY.Value='S' then
      Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
      ProcCanc:=U.CancelaMDFe(DM.TBParametrosPAR_SIGLAWSCTE.Value,
                              StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
                              DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                              DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                              MsgDados,
                              MsgRetWS,
                              Resultado,
                              MsgResultado,
                              DM2.TBMdfeMDF_CHAVEACESSO.Value,
                              DM2.TBMdfeMDF_PROTOCOLO.Value,
                              Justificativa,
                              FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDateTime('hh:nn:ss',Time)+DM.TBParametrosPAR_FUSOHORARIO.Value,
                              Protocolo,
                              ProtocoloDH,
                              Proxy,
                              DM.TBParametrosPAR_PROXYUSER.Value,
                              DM.TBParametrosPAR_PROXYPASSWORD.Value,
                              DM.TBParametrosPAR_LICENCADLLMDFE.Value);
      U:=nil;
      Screen.Cursor:=crDefault;
      if Resultado=135 then //135=OK.
      begin
        Memo1.Lines.Add(MsgResultado);
        QYMdfe.Close;
        QYMdfe.ParamByName('codigo').AsInteger:=DM2.TBMdfeMDF_CODIGO.Value;
        QYMdfe.Open;
        QYMdfe.Edit;
        QYMdfeMDF_MOTIVOCANCELAMENTO.Value:=Justificativa;
        QYMdfeMDF_PROTOCOLOCANC.Value:=Protocolo;
        QYMdfeMDF_PROTOCOLOCANCDH.Value:=ProtocoloDH;
        QYMdfeMDF_STATUS.Value:='C';
        QYMdfe.Post;
        QYMdfe.Close;

        DM2.TBMdfe.Close; //atualiza a tela.
        DM2.TBMdfe.Open;

        //gera arquivo procCancMDFe.
        DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procCancMDFe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(procCanc));
        CloseFile(F);
      end else
      begin
        Memo1.Lines.Add(MsgResultado);
        Memo1.Lines.Add('-------------------------');
        Memo1.Lines.Add(MsgDados);
      end;
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormMdfe.ConsultarStatusDoServico1Click(Sender: TObject);
var
  CabMsg, DadosMsg, RetWS, MsgResultado, tMed, dhRetorno, xObs: Widestring;
  I: Integer;
  U: MDFe_Util_Interface;
  Proxy: String;
begin
  CabMsg:='';
  DadosMsg:='';
  RetWS:='';
  MsgResultado:='';
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.ConsultaWS(DM.TBParametrosPAR_SIGLAWSMDFE.Value,
                  DM.TBParametrosPAR_SIGLAUFMDFE.Value,
                  StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
                  DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                  DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                  DadosMsg,
                  RetWS,
                  MsgResultado,
                  tMed,
                  dhRetorno,
                  xObs,
                  Proxy,
                  DM.TBParametrosPAR_PROXYUSER.Value,
                  DM.TBParametrosPAR_PROXYPASSWORD.Value);
  MessageDlg('Consulta status retornou: '+#13#10+MsgResultado+#13#10+'Tempo Médio: '+tMed+#13#10+'Observações: '+xObs, mtInformation, [mbOk], 0);
  Memo1.Lines.Add(RetWs+#13#10+DadosMsg);
  U:=nil;
end;

procedure TFormMdfe.DAMDFE1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhuma MDFe selecionada.');
  AbortIf((DM2.TBMdfeMDF_STATUS.Value<>'F') and (DM2.TBMdfeMDF_STATUS.Value<>'V') and (DM2.TBMdfeMDF_STATUS.Value<>'C'),'MDFe não finalizado, cancelado ou em vigência.');

  GerarDAMDFE(True,False,'');
end;

procedure TFormMdfe.GerarDAMDFE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var S: String;
  PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormMdfeQ01Rodoviario, FormMdfeQ01Rodoviario);
  if DM2.TBMdfeMDF_STATUS.Value<>'C' then
  FormMdfeQ01Rodoviario.QRLabel132.Caption:=''; //retira a palavra "cancelada".
  FormMdfeQ01Rodoviario.FDQuery1.ParamByName('codigo').AsInteger:=DM2.TBMdfeMDF_CODIGO.Value;
  FormMdfeQ01Rodoviario.FDQuery1.Open;
  FormMdfeQ01Rodoviario.FDQuery2.Open;
  FormMdfeQ01Rodoviario.FDQuery2.FetchAll;
  FormMdfeQ01Rodoviario.QRAsBarcode1.Text:=FormMdfeQ01Rodoviario.FDQuery1.FieldByName('MDF_CHAVEACESSO').AsString;
  S:=FormMdfeQ01Rodoviario.FDQuery1.FieldByName('MDF_CHAVEACESSO').AsString;
  Insert('.',S,5); Insert('.',S,10); Insert('.',S,15); Insert('.',S,20); Insert('.',S,25); Insert('.',S,30); Insert('.',S,35); Insert('.',S,40); Insert('.',S,45); Insert('.',S,50);
  FormMdfeQ01Rodoviario.QRLabel127.Caption:=S;

  FormMdfeQ01Rodoviario.QuickRep1.Prepare; //faz gerar o PageCount.
  FormMdfeQ01Rodoviario.QRLabel125.Caption:='/ '+IntToStr(FormMdfeQ01Rodoviario.QuickRep1.QRPrinter.PageCount);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormMdfeQ01Rodoviario.QuickRep1.PreviewModal else
    FormMdfeQ01Rodoviario.QuickRep1.Print;
  end;

  if GerarPDF then
  begin
    //PDFFilter:=TQRPDFDocumentFilter.Create(ExtractFilePath(Application.ExeName)+'\Print\DANFE.PDF');
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormMdfeQ01Rodoviario.QuickRep1.ExportToFilter(PDFFilter);
  end;

  FormMdfeQ01Rodoviario.QuickRep1.QRPrinter:=nil; //libera pagecount.
  FormMdfeQ01Rodoviario.Free;
  FormMdfeQ01Rodoviario:=nil;
end;

procedure TFormMdfe.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_RCAPACIDADEKG.Clear;
    DM2.TBMdfeMDF_RCAPACIDADEM3.Clear;
    DM2.TBMdfeMDF_RCNPJ.Clear;
    DM2.TBMdfeMDF_RCODIGO.Clear;
    DM2.TBMdfeMDF_RCPF.Clear;
    DM2.TBMdfeMDF_RESTADO.Clear;
    DM2.TBMdfeMDF_RESTADOPROPRIETARIO.Clear;
    DM2.TBMdfeMDF_RIE.Clear;
    DM2.TBMdfeMDF_RNOME.Clear;
    DM2.TBMdfeMDF_RPLACA.Clear;
    DM2.TBMdfeMDF_RRENAVAM.Clear;
    DM2.TBMdfeMDF_RRNTRC.Clear;
    DM2.TBMdfeMDF_RTARA.Clear;
    DM2.TBMdfeMDF_RTIPOCARROCERIA.Clear;
    DM2.TBMdfeMDF_RTIPOPROPRIETARIO.Clear;
  end;
end;

procedure TFormMdfe.DBEdit46Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMdfe.DBEdit46Exit(Sender: TObject);
begin
  if (DM2.TBMdfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBMdfeMDF_SEGURADORA.Clear;
    DM2.TBMdfeMDF_SEGURADORANOME.Clear;
    DM2.TBMdfeMDF_SEGURADORACNPJ.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBMdfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM2.TBMdfeMDF_SEGURADORANOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM2.TBMdfeMDF_SEGURADORACNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
    end else
    begin
      DM2.TBMdfeMDF_SEGURADORANOME.Clear;
      DM2.TBMdfeMDF_SEGURADORACNPJ.Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormMdfe.DBEdit46KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormMdfe.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMdfe.DBEdit49KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM2.TBMdfeMDF_SEGUROCNPJ.Clear;
end;

procedure TFormMdfe.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_TCAPACIDADEKG.Clear;
    DM2.TBMdfeMDF_TCAPACIDADEM3.Clear;
    DM2.TBMdfeMDF_TCNPJ.Clear;
    DM2.TBMdfeMDF_TCODIGO.Clear;
    DM2.TBMdfeMDF_TCPF.Clear;
    DM2.TBMdfeMDF_TESTADO.Clear;
    DM2.TBMdfeMDF_TESTADOPROPRIETARIO.Clear;
    DM2.TBMdfeMDF_TIE.Clear;
    DM2.TBMdfeMDF_TNOME.Clear;
    DM2.TBMdfeMDF_TPLACA.Clear;
    DM2.TBMdfeMDF_TRENAVAM.Clear;
    DM2.TBMdfeMDF_TRNTRC.Clear;
    DM2.TBMdfeMDF_TTARA.Clear;
    DM2.TBMdfeMDF_TTIPOCARROCERIA.Clear;
    DM2.TBMdfeMDF_TTIPOPROPRIETARIO.Clear;
    DM2.TBMdfeMDF_TTIPORODADO.Clear;
  end;
end;

procedure TFormMdfe.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM2.TBMdfeMDF_SEGUROCPF.Clear;
end;

procedure TFormMdfe.DBEdit51Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMdfe.DBEdit51Exit(Sender: TObject);
begin
  if (DM2.TBMdfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBMdfeMDF_CLIENTE.Clear;
    DM2.TBMdfeMDF_NOME.Clear;
    DM2.TBMdfeMDF_CNPJ.Clear;
    DM2.TBMdfeMDF_CPF.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBMdfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBMdfeMDF_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBMdfeMDF_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBMdfeMDF_CNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBMdfeMDF_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
    end else
    begin
      DM2.TBMdfeMDF_CLIENTE.Clear;
      DM2.TBMdfeMDF_NOME.Clear;
      DM2.TBMdfeMDF_CNPJ.Clear;
      DM2.TBMdfeMDF_CPF.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormMdfe.DBEdit51KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormMdfe.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMdfe.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMdfe.FinalizarMDFe1Click(Sender: TObject);
var U: MDFe_Util_Interface;
  MsgDados, MsgResultado, MsgRetWS, ProcEnc, Protocolo, ProtocoloDH: WideString;
  Resultado: Integer;
  A,M,D: Word;
  Proxy, Cidade, CidadeCodigo, Estado, EstadoCodigo, DataEnc: String;
  F: TextFile;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='A','Manifesto ainda em aberto.');

  //O MDFe deve estar com status='V' - (em vigencia) - para ser finalizado.
  //Solicita a data de encerramento.
  Application.CreateForm(TFormInputDate, FormInputDate);
  FormInputDate.Caption:='Informe a Data de Encerramento';
  FormInputDate.Label1.Caption:='Dt. Encerramento';
  FormInputDate.ShowModal;
  if InputDate.Retorno then
  begin
    DataEnc:=FormInputDate.MaskEdit1.Text;
  end;
  FormInputDate.Free;
  FormInputDate:=nil;

  //Solicita a cidade de encerramento.
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.Caption:='Selecione a cidade de encerramento do manifesto...';
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    Cidade:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    CidadeCodigo:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
    Estado:=FormEnderecosCidadesLoc.QYCidadesESD_SIGLA.Value;
    EstadoCodigo:=IntToStr(FormEnderecosCidadesLoc.QYCidadesESD_CODIGO.Value)
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;

  AbortIf((CidadeCodigo='') or (DataEnc=''),'Deve-se informar a data e a cidade de encerramento.');

  if MessageDlg('Finalizar o manifesto com a cidade de '+Cidade+' - '+Estado+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=4;
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Encerramento de MDFe...');
    U:=CoUtil.Create;
    Screen.Cursor:=crHourGlass;
    Proxy:='';
    if DM.TBParametrosPAR_PROXY.Value='S' then
    Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ProcEnc:=U.EncerraMDFe(DM.TBParametrosPAR_SIGLAWSMDFE.Value,
                           StrToInt(DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value),
                           DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                           DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                           MsgDados,
                           MsgRetWS,
                           Resultado,
                           MsgResultado,
                           DM2.TBMdfeMDF_CHAVEACESSO.Value,
                           DM2.TBMdfeMDF_PROTOCOLO.Value,
                           DateToFBDate(StrToDate(DataEnc)), // DateToFBDate(DM2.TBMdfeMDF_DTENC.Value),
                           EstadoCodigo,
                           CidadeCodigo,
                           FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDateTime('hh:nn:ss',Time)+DM.TBParametrosPAR_FUSOHORARIO.Value,
                           //FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now),
                           Protocolo,
                           ProtocoloDH,
                           Proxy,
                           DM.TBParametrosPAR_PROXYUSER.Value,
                           DM.TBParametrosPAR_PROXYPASSWORD.Value,
                           DM.TBParametrosPAR_LICENCADLLMDFE.Value);

    Screen.Cursor:=crDefault;
    if Resultado=135 then //135=OK.
    begin
      Memo1.Lines.Add(MsgResultado);
      QYMdfe.Close;
      QYMdfe.ParamByName('codigo').AsInteger:=DM2.TBMdfeMDF_CODIGO.Value;
      QYMdfe.Open;
      QYMdfe.Edit;
      QYMdfeMDF_PROTOCOLOENC.Value:=Protocolo;
      QYMdfeMDF_PROTOCOLOENCDH.Value:=ProtocoloDH;
      QYMdfeMDF_ESTADOENC.Value:=Estado;
      QYMdfeMDF_ESTADOENCCODIGO.Value:=StrToInt(EstadoCodigo);
      QYMdfeMDF_CIDADEENC.Value:=Cidade;
      QYMdfeMDF_CIDADEENCCODIGO.Value:=StrToInt(CidadeCodigo);
      QYMdfeMDF_STATUS.Value:='F';
      QYMdfe.Post;
      QYMdfe.Close;

      DM2.TBMdfe.Close; //atualiza a tela.
      DM2.TBMdfe.Open;

      //gera arquivo procEncMDFe.
      DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
      AssignFile(F,DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procEncMDFe.xml',CP_UTF8);
      Rewrite(F);
      Write(F,AnsiToUtf8(procEnc));
      CloseFile(F);
    end else
    Memo1.Lines.Add(MsgResultado);
  end;
end;

procedure TFormMdfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBMdfe.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMdfe.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormMdfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMdfe.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMdfe);
end;

procedure TFormMdfe.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMdfeLoc, FormMdfeLoc);
  FormMdfeLoc.ShowModal;
  if MdfeLoc.Procurar then
  begin
    DM2.TBMdfe.Close;
    DM2.TBMdfe.ParamByName('codigo').AsInteger:=FormMdfeLoc.QYMdfeMDF_CODIGO.Value;
    DM2.TBMdfe.Open;
  end;
  FormMdfeLoc.Free;
  FormMdfeLoc:=nil;
end;

procedure TFormMdfe.MDFeEmitidosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMdfeRel, FormMdfeRel);
  FormMdfeRel.ComboBox1.Enabled:=False;
  FormMdfeRel.ComboBox1.ItemIndex:=0;
  FormMdfeRel.ComboBox1Change(Self);
  FormMdfeRel.ShowModal;
  FormMdfeRel.Free;
  FormMdfeRel:=nil;
end;

procedure TFormMdfe.PngBitBtn10Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');
  AbortIf(DM2.TBMdfePercursos.IsEmpty,'Nenhum percurso para excluir.');

  if MessageDlg('Eliminar o percurso selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBMdfePercursos.Delete;
end;

procedure TFormMdfe.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM2.TBMdfeMotoristas.Insert;
    DM2.TBMdfeMotoristasMDM_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    DM2.TBMdfeMotoristasMDM_CPF.Value:=FormVendedoresLoc.QYVendedoresVEN_CPF.Value;
    DM2.TBMdfeMotoristas.Post;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormMdfe.PngBitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  if MessageDlg('Eliminar o motorista selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBMdfeMotoristas.Delete;
end;

procedure TFormMdfe.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');

  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM2.TBMdfeDescarrega.Insert;
    DM2.TBMdfeDescarregaMDD_CIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    DM2.TBMdfeDescarregaMDD_CIDADECODIGO.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
    DM2.TBMdfeDescarrega.Post;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormMdfe.PngBitBtn4Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');
  AbortIf(DM2.TBMdfeDescarrega.IsEmpty,'Nenhuma cidade para excluir.');

  if MessageDlg('Eliminar a cidade selecionada?'+#13#10+#13#10+'Todos os documentos associados neste município também serão excluídos.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBMdfeDescarrega.Delete;
    DM2.TBMdfeDocs.Close; //atualiza a visualização no DBGrid.
    DM2.TBMdfeDocs.Open;
    DM2.TBMdfe.Close;
    DM2.TBMdfe.Open;
  end;
end;

procedure TFormMdfe.PngBitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');

  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM2.TBMdfeCarrega.Insert;
    DM2.TBMdfeCarregaMDC_CIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    DM2.TBMdfeCarregaMDC_CIDADECODIGO.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
    DM2.TBMdfeCarrega.Post;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormMdfe.PngBitBtn8Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');

  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM2.TBMdfePercursos.Insert;
    DM2.TBMdfePercursosMDP_ESTADO.Value:=FormEnderecosEstadosLoc.QYEstadosESD_SIGLA.Value;
    DM2.TBMdfePercursos.Post;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure TFormMdfe.PngBitBtn9Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto em vigência.');
  AbortIf(DM2.TBMdfeCarrega.IsEmpty,'Nenhuma cidade para excluir.');

  if MessageDlg('Eliminar a cidade selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBMdfeCarrega.Delete;
end;

procedure TFormMdfe.PngSpeedButton1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  Application.CreateForm(TFormFrotasLoc, FormFrotasLoc);
  FormFrotasLoc.ShowModal;
  if FrotasLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_TCAPACIDADEKG.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEKG.Value;
    DM2.TBMdfeMDF_TCAPACIDADEM3.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEM3.AsExtended;
    DM2.TBMdfeMDF_TCNPJ.Value:=FormFrotasLoc.QYFrotasFRO_CNPJ.Value;
    DM2.TBMdfeMDF_TCODIGO.Value:=FormFrotasLoc.QYFrotasFRO_CODIGO.Value;
    DM2.TBMdfeMDF_TCPF.Value:=FormFrotasLoc.QYFrotasFRO_CPF.Value;
    DM2.TBMdfeMDF_TESTADO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADO.Value;
    DM2.TBMdfeMDF_TESTADOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADOPROPRIETARIO.Value;
    DM2.TBMdfeMDF_TIE.Value:=FormFrotasLoc.QYFrotasFRO_IE.Value;
    DM2.TBMdfeMDF_TNOME.Value:=FormFrotasLoc.QYFrotasFRO_NOME.Value;
    DM2.TBMdfeMDF_TPLACA.Value:=FormFrotasLoc.QYFrotasFRO_PLACA.Value;
    DM2.TBMdfeMDF_TRENAVAM.Value:=FormFrotasLoc.QYFrotasFRO_RENAVAM.Value;
    DM2.TBMdfeMDF_TRNTRC.Value:=FormFrotasLoc.QYFrotasFRO_RNTRC.Value;
    DM2.TBMdfeMDF_TTARA.Value:=FormFrotasLoc.QYFrotasFRO_TARA.Value;
    DM2.TBMdfeMDF_TTIPOCARROCERIA.Value:=FormFrotasLoc.QYFrotasFRO_TIPOCARROCERIA.Value;
    DM2.TBMdfeMDF_TTIPOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_TIPOPROPRIETARIO.Value;
    DM2.TBMdfeMDF_TTIPORODADO.Value:=FormFrotasLoc.QYFrotasFRO_TIPORODADO.Value;
  end;
  FormFrotasLoc.Free;
  FormFrotasLoc:=nil;
end;

procedure TFormMdfe.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_SEGURADORA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
    DM2.TBMdfeMDF_SEGURADORANOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM2.TBMdfeMDF_SEGURADORACNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormMdfe.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBMdfeMDF_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBMdfeMDF_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBMdfeMDF_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormMdfe.PngSpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  Application.CreateForm(TFormFrotasLoc, FormFrotasLoc);
  FormFrotasLoc.ShowModal;
  if FrotasLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_RCAPACIDADEKG.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEKG.Value;
    DM2.TBMdfeMDF_RCAPACIDADEM3.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEM3.AsExtended;
    DM2.TBMdfeMDF_RCNPJ.Value:=FormFrotasLoc.QYFrotasFRO_CNPJ.Value;
    DM2.TBMdfeMDF_RCODIGO.Value:=FormFrotasLoc.QYFrotasFRO_CODIGO.Value;
    DM2.TBMdfeMDF_RCPF.Value:=FormFrotasLoc.QYFrotasFRO_CPF.Value;
    DM2.TBMdfeMDF_RESTADO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADO.Value;
    DM2.TBMdfeMDF_RESTADOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADOPROPRIETARIO.Value;
    DM2.TBMdfeMDF_RIE.Value:=FormFrotasLoc.QYFrotasFRO_IE.Value;
    DM2.TBMdfeMDF_RNOME.Value:=FormFrotasLoc.QYFrotasFRO_NOME.Value;
    DM2.TBMdfeMDF_RPLACA.Value:=FormFrotasLoc.QYFrotasFRO_PLACA.Value;
    DM2.TBMdfeMDF_RRENAVAM.Value:=FormFrotasLoc.QYFrotasFRO_RENAVAM.Value;
    DM2.TBMdfeMDF_RRNTRC.Value:=FormFrotasLoc.QYFrotasFRO_RNTRC.Value;
    DM2.TBMdfeMDF_RTARA.Value:=FormFrotasLoc.QYFrotasFRO_TARA.Value;
    DM2.TBMdfeMDF_RTIPOCARROCERIA.Value:=FormFrotasLoc.QYFrotasFRO_TIPOCARROCERIA.Value;
    DM2.TBMdfeMDF_RTIPOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_TIPOPROPRIETARIO.Value;
    //nao tem esse campo. DM2.TBMdfeMDF_RTIPORODADO.Value:=FormFrotasLoc.QYFrotasFRO_TIPORODADO.Value;
  end;
  FormFrotasLoc.Free;
  FormFrotasLoc:=nil;
end;

procedure TFormMdfe.RecriarChaveDeAcesso1Click(Sender: TObject);
var U: MDFe_Util_Interface;
  MsgResultado, cDF, cDV, ChaveMDFe: Widestring;
  Emissao: String[10];
  I: Integer;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto já cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='V','Manifesto já em vigência.');
  AbortIf(MDFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL MDFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  Emissao:=FormatDateTime('DD/MM/YY',DM2.TBMdfeMDF_DTEMISSAO.Value);
  U:=CoUtil.Create;
  I:=U.CriaChaveDFe(IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                    Copy(Emissao,7,2), //ano.
                    Copy(Emissao,4,2), //mes.
                    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                    IntToStr(DM2.TBMdfeMDF_MODELO.Value),
                    IntToStr(DM2.TBMdfeMDF_SERIE.Value),
                    IntToStr(DM2.TBMdfeMDF_CODIGO.Value),
                    Copy(DM2.TBMdfeMDF_TIPOEMISSAO.Value,1,1),
                    IntToStr(CodigoSegurancaMDFE),
                    msgResultado,
                    cDF,
                    cDV,
                    ChaveMDFe);
  if I<>5601 then
  begin
    MessageDlg('Erro na criação da chave de acesso da MDFe. Verifique os parâmetros.'+#13#13+'A chave de acesso é composta por: '+#13+
               'Codigo do estado do emitente'+#13+
               'Ano'+#13+
               'Mes'+#13+
               'CNPJ do emitente'+#13+
               'Modelo'+#13+
               'Série'+#13+
               'Código MDFe'+#13+
               'Tipo emissão'+#13+
               'Código numérico'+#13+
               'Código Segurança'+#13#13+MsgResultado,mtError,[mbOk],0);
  end else
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_CHAVEACESSO.Value:=ChaveMDFe;
    DM2.TBMdfeMDF_CODIGONUMERICO.Value:=StrToInt(cDF);
  end;
  U:=nil;
end;

procedure TFormMdfe.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMdfeRel, FormMdfeRel);
  FormMdfeRel.ShowModal;
  FormMdfeRel.Free;
  FormMdfeRel:=nil;
end;

procedure TFormMdfe.SalvarPDFDAMDFEComo1Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDFe selecionado.');
  AbortIf((DM2.TBMdfeMDF_STATUS.Value<>'F') and (DM2.TBMdfeMDF_STATUS.Value<>'V'),'MDFe não finalizado ou não em vigência.');

  SaveDialog1.DefaultExt:='*.PDF';
  SaveDialog1.Filter:='Arquivo .PDF|*.pdf';
  SaveDialog1.Title:='Salvar em PDF o DAMDFE deste MDFe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  GerarDAMDFE(False,True,SaveDialog1.FileName);
end;

procedure TFormMdfe.SalvarZIPXMLsComo1Click(Sender: TObject);
var A,M,D: Word;
  Zip: TZipFile;
  BaseDir, SearchMask: string;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDFe selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='A','MDFe não finalizado, cancelado ou em vigência.');

  SaveDialog1.DefaultExt:='*.ZIP';
  SaveDialog1.Filter:='Arquivo .ZIP|*.zip';
  SaveDialog1.Title:='Salvar em ZIP os XMLs deste MDFe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)),'O repositório deste MDFe não foi localizado.');

    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M));

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      SearchMask := TPath.Combine(BaseDir, DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procMDFe.*');
      Files := TDirectory.GetFiles(BaseDir, DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procMDFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCancNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procCancMDFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procInutNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procEncMDFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;

    //cria o formulario MdfeZipar para utilizar o componente ZipForge.
    //foi necessário isso pois estava dando erro no form close na linha Action:=caNone;
    {Application.CreateForm(TFormMdfeZipar, FormMdfeZipar);

    FormMdfeZipar.ZipForge1.FileName:=SaveDialog1.FileName;
    FormMdfeZipar.ZipForge1.OpenArchive(fmCreate);
    FormMdfeZipar.ZipForge1.BaseDir:=DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    FormMdfeZipar.ZipForge1.AddFiles(DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procMDFe.*');
    FormMdfeZipar.ZipForge1.AddFiles(DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procCancMDFe.*');
    FormMdfeZipar.ZipForge1.AddFiles(DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procEncMDFe.*');
    FormMdfeZipar.ZipForge1.CloseArchive;

    FormMdfeZipar.Free;
    FormMdfeZipar:=nil;}

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormMdfe.SpeedButton17Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_ESTADOINI.Value:=FormEnderecosEstadosLoc.QYEstadosESD_SIGLA.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure TFormMdfe.EnviarMDFe1Click(Sender: TObject);
begin
  AbortIf(MDFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL MDFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  GerarArquivoMDFeUtil;
  EnviarMDFeAssincrono(True);
end;

function TFormMdfe.EnviarMDFe(MostrarMensagem: Boolean): Boolean;
var
  U: MDFe_Util_Interface;
  cStat: Integer;
  MDFE, MDFEAssinado, MsgDados, MsgRetWS, MsgResultado, Recibo, ReciboDH, TempoMedio: Widestring;
  A,M,D: Word;
  Proxy: String;
begin
  if DM2.TBMdfe.IsEmpty then Exit(Erro('Nenhum MDFe selecionado.'));
  if (DM2.TBMdfeMDF_RECIBO.Value<>'') and (DM2.TBMdfeMDF_CONSULTADA.Value='N') then Exit(Erro('Consulte o MDFe antes de realizar novo envio.'));
  if DM2.TBMdfeMDF_STATUS.Value='V' then Exit(Erro('MDFe já autorizado para uso.'));
  if DM2.TBMdfeMDF_STATUS.Value='C' then Exit(Erro('MDFe já cancelado.'));
  if DM2.TBMdfeMDF_STATUS.Value='F' then Exit(Erro('MDFe já finalizado.'));

  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  if not FileExists(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml') then
  Exit(Erro('MDFe ainda não gerado.'));

  //Atenção para o segundo parâmetro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml',TEncoding.UTF8);
  MDFE:=Memo1.Lines.Text;
  MsgResultado:='';
  cStat:=0;
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  MDFEAssinado:=U.EnviaMDFe(DM.TBParametrosPAR_SIGLAWSMDFE.Value,
                            DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                            DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                            MDFE,
                            MsgDados,
                            MsgRetWS,
                            cStat,
                            MsgResultado,
                            Recibo,
                            ReciboDH,
                            TempoMedio,
                            Proxy,
                            DM.TBParametrosPAR_PROXYUSER.Value,
                            DM.TBParametrosPAR_PROXYPASSWORD.Value,
                            DM.TBParametrosPAR_LICENCADLLMDFE.Value);
  Screen.Cursor:=crDefault;
  if cStat<>103 then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_CONSULTADA.Value:='N';
    DM2.TBMdfe.Post;
    MessageDlg('Falha na chamada do WS...'+#13#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add(MsgResultado);
    Result:=False;
  end else
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_RECIBO.Value:=Recibo;
    DM2.TBMdfeMDF_RECIBODH.Value:=ReciboDH;
    //DM2.TBMdfeMDF_LOTE.Value:=AlignText(IntToStr(DM2.TBMdfeMDF_CODIGO.Value),'0',15,taRight);
    DM2.TBMdfeMDF_CONSULTADA.Value:='N';
    Memo1.Lines.Clear;
    DM2.TBMdfe.Post;
    if MostrarMensagem then
    MessageDlg(MsgResultado+#13#13+'MDF-e enviada, recibo do lote: '+Recibo+', '+ReciboDH+#13#13+'IMPORTANTE: É necessário buscar o resultado do processamento do MDF-e (Buscar MDFe)',mtInformation,[mbOk],0);
    Result:=True;
  end;
  U:=nil;
end;

function TFormMdfe.EnviarMDFeAssincrono(MostrarMensagem: Boolean): Boolean;
var
  U: MDFe_Util_Interface;
  cStat: Integer;
  MDFE, MDFEAssinado, MDFEProc, MsgDados, MsgRetWS, MsgResultado, Protocolo, ProtocoloDH, ProtocoloNum: Widestring;
  A,M,D: Word;
  Proxy: String;
  F: TextFile;
begin
  if DM2.TBMdfe.IsEmpty then Exit(Erro('Nenhum MDFe selecionado.'));
  if (DM2.TBMdfeMDF_RECIBO.Value<>'') and (DM2.TBMdfeMDF_CONSULTADA.Value='N') then Exit(Erro('Consulte o MDFe antes de realizar novo envio.'));
  if DM2.TBMdfeMDF_STATUS.Value='V' then Exit(Erro('MDFe já autorizado para uso.'));
  if DM2.TBMdfeMDF_STATUS.Value='C' then Exit(Erro('MDFe já cancelado.'));
  if DM2.TBMdfeMDF_STATUS.Value='F' then Exit(Erro('MDFe já finalizado.'));
  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  if not FileExists(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml') then
  Exit(Erro('MDFe ainda não gerado.'));

  //Atenção para o segundo parâmetro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml',TEncoding.UTF8);
  MDFE:=Memo1.Lines.Text;
  MsgResultado:='';
  cStat:=0;
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  MDFEProc:=U.EnviaMDFeSincrono(DM.TBParametrosPAR_SIGLAWSMDFE.Value,
                                    MDFE,
                                    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                                    DM.TBParametrosPAR_VERSAOXMLMDFE.Value,
                                    MsgDados,
                                    MsgRetWS,
                                    cStat,
                                    MsgResultado,
                                    Protocolo,
                                    ProtocoloNum,
                                    ProtocoloDH,
                                    MDFEAssinado,
                                    Proxy,
                                    DM.TBParametrosPAR_PROXYUSER.Value,
                                    DM.TBParametrosPAR_PROXYPASSWORD.Value,
                                    DM.TBParametrosPAR_LICENCADLLMDFE.Value);
  Screen.Cursor:=crDefault;
  if cStat<>100 then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_CONSULTADA.Value:='N';
    DM2.TBMdfe.Post;
    MessageDlg('Falha na chamada do WS...'+#13#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add(MsgResultado);
    Result:=False;
  end else
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_PROTOCOLO.Value:=ProtocoloNum;
    DM2.TBMdfeMDF_RECIBODH.Value:=ProtocoloDH;
    //DM2.TBMdfeMDF_LOTE.Value:=AlignText(IntToStr(DM2.TBMdfeMDF_CODIGO.Value),'0',15,taRight);
    DM2.TBMdfeMDF_CONSULTADA.Value:='N';
    DM2.TBMdfeMDF_STATUS.Value:='V';
    Memo1.Lines.Clear;
    DM2.TBMdfe.Post;

    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-procMDFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(MDFEProc));
    CloseFile(F);

    if MostrarMensagem then
    MessageDlg(MsgResultado+#13#13+'MDF-e autorizada: '+Protocolo,mtInformation,[mbOk],0);
    Result:=True;
  end;
  U:=nil;
end;

procedure TFormMdfe.EnviarMDFePorEmail1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível',mtInformation,[mbOk],0);
end;

procedure TFormMdfe.SpeedButton9Click(Sender: TObject);
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum manifesto selecionado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='F','Manifesto já finalizado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='C','Manifesto cancelado.');
  AbortIf(DM2.TBMdfeMDF_STATUS.Value='E','Manifesto em execução.');

  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM2.TBMdfe.Edit;
    DM2.TBMdfeMDF_ESTADOFIM.Value:=FormEnderecosEstadosLoc.QYEstadosESD_SIGLA.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure TFormMdfe.ValidarArquivoMDFe1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM2.TBMdfe.IsEmpty,'Nenhum MDFe selecionado.');
  DecodeDate(DM2.TBMdfeMDF_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml'),
    'O arquivo do MDFe selecionado não foi encontrado ou ainda não foi gerado.'
  );

  Application.CreateForm(TFormMdfeValidar, FormMdfeValidar);
  //Atenção para o segundo parametro.
  FormMdfeValidar.Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOMDFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBMdfeMDF_CHAVEACESSO.Value+'-MDFe.xml',TEncoding.UTF8);
  FormMdfeValidar.ShowModal;
  FormMdfeValidar.Free;
  FormMdfeValidar:=nil;
end;

procedure TFormMdfe.ZiparArquivosXML1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZiparDFE, FormZiparDFE);
  FormZiparDFE.CheckBox5.Checked:=True;
  FormZiparDFE.ShowModal;
  FormZiparDFE.Free;
  FormZiparDFE:=nil;
end;

initialization
  RegisterClass(TFormMdfe);

finalization
  UnRegisterClass(TFormMdfe);

end.
