unit Nfce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, PngImageList, PngSpeedButton, DBSBtn,
  System.Zip, System.IOUtils, System.Types, FolderDialog;

type
  TFormNfce = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    DBText10: TDBText;
    Label34: TLabel;
    DBText7: TDBText;
    Label150: TLabel;
    DBText9: TDBText;
    Label151: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label152: TLabel;
    DBText27: TDBText;
    Panel2: TPanel;
    Bevel4: TBevel;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    LocalizarNotaNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    Bevel9: TBevel;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    GerenciamentoDeContingencias1Button: TPngSpeedButton;
    Bevel5: TBevel;
    Relatorios2Button: TPngSpeedButton;
    ArquivosXMLDaNFCe1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarNotaNoContasaReceber1: TMenuItem;
    N4: TMenuItem;
    SalvarPDFDANFCEComo1: TMenuItem;
    SalvarZIPXMLsComo1: TMenuItem;
    N3: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    DANFCE1: TMenuItem;
    N6: TMenuItem;
    NFCePorStatus1: TMenuItem;
    NFCeOrdenadoPorCodigo1: TMenuItem;
    NFCeComItens1: TMenuItem;
    NFCePorCFOP1: TMenuItem;
    NFCePorCFOPDosItens1: TMenuItem;
    VerificacaoDeNumeracao1: TMenuItem;
    InutilizacoesNoPeriodo1: TMenuItem;
    Funcoes1: TMenuItem;
    ArquivosXMLDaNFCe1: TMenuItem;
    ConsultarStatusDoServico1: TMenuItem;
    ZiparArquivosXML1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    AdicoesDaDeclaracaoDeImportacao1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton9: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label37: TLabel;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label38: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label50: TLabel;
    Label105: TLabel;
    Label143: TLabel;
    Label149: TLabel;
    DBEdit39: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit35: TDBEdit;
    DBMemo3: TDBMemo;
    DBEdit91: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit130: TDBEdit;
    TabSheet4: TTabSheet;
    DBText3: TDBText;
    Label30: TLabel;
    Label39: TLabel;
    Label33: TLabel;
    DBText6: TDBText;
    DBText20: TDBText;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label40: TLabel;
    DBEdit8: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    GroupBox1: TGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    DBEdit44: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label121: TLabel;
    Label142: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit123: TDBEdit;
    GroupBox3: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox4: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    GroupBox6: TGroupBox;
    Label10: TLabel;
    Label60: TLabel;
    DBEdit11: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox7: TGroupBox;
    Label114: TLabel;
    Label122: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    DBEdit97: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    GroupBox8: TGroupBox;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    TabSheet6: TTabSheet;
    Label86: TLabel;
    Label87: TLabel;
    Label93: TLabel;
    Label95: TLabel;
    Label88: TLabel;
    Label96: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit84: TDBEdit;
    Memo1: TMemo;
    DBEdit79: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    Label22: TLabel;
    Label21: TLabel;
    DBEdit23: TDBEdit;
    DBEdit22: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    DBComboBox4: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    Label29: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    DBText11: TDBText;
    Label91: TLabel;
    Label92: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    Label85: TLabel;
    DBEdit76: TDBEdit;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    GerenciamentoDeContingencias1: TMenuItem;
    N1: TMenuItem;
    ImportarcuponsdoSalc1: TMenuItem;
    InformarProtocoloDataEHoraDeAutorizacao1: TMenuItem;
    AjustarosarquivosXMLdoSalc1: TMenuItem;
    ConsultarNFCePelaChaveDeAcesso1: TMenuItem;
    FileOpenDialog1: TFileOpenDialog;
    CorrigirchavedeacessodaimportaodoSalc1: TMenuItem;
    SalvarPDFDANFCEComo1Button: TPngSpeedButton;
    ZiparArquivosXML1Button: TPngSpeedButton;
    ConsultarNFCePelaChaveDeAcesso1Button: TPngSpeedButton;
    ConsultarNFCeNoPortal1: TMenuItem;
    VerificaodosXMLs1: TMenuItem;
    N2: TMenuItem;
    AssociarArquivoXMLBaixado1: TMenuItem;
    FileOpenDialog2: TFileOpenDialog;
    AtualizarANFCeComBaseNoXML1: TMenuItem;
    Itens1: TMenuItem;
    AlterarItem1: TMenuItem;
    IncluirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    EliminarTodos1: TMenuItem;
    AtualizarItens1: TMenuItem;
    Reordenar1: TMenuItem;
    TotalQuantidade1: TMenuItem;
    CorrigirregistrosdiferentesdoXML1: TMenuItem;
    N5: TMenuItem;
    InutilizarNFCe1: TMenuItem;
    LocalizarNotaNaMovimentacaoDoEstoque1: TMenuItem;
    LocalizarNotaNaMovimentacaoDoEstoque1Button: TPngSpeedButton;
    procedure Fechar1Click(Sender: TObject);
    procedure SalvarZIPXMLsComo1Click(Sender: TObject);
    procedure SalvarPDFDANFCEComo1Click(Sender: TObject);
    procedure LocalizarNotaNoContasaReceber1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DANFCE1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ConsultarStatusDoServico1Click(Sender: TObject);
    procedure ZiparArquivosXML1Click(Sender: TObject);
    procedure ArquivosXMLDaNFCe1Click(Sender: TObject);
    procedure GerenciamentoDeContingencias1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ImportarcuponsdoSalc1Click(Sender: TObject);
    procedure NFCePorStatus1Click(Sender: TObject);
    procedure NFCeOrdenadoPorCodigo1Click(Sender: TObject);
    procedure NFCeComItens1Click(Sender: TObject);
    procedure NFCePorCFOP1Click(Sender: TObject);
    procedure NFCePorCFOPDosItens1Click(Sender: TObject);
    procedure VerificacaoDeNumeracao1Click(Sender: TObject);
    procedure InutilizacoesNoPeriodo1Click(Sender: TObject);
    procedure InformarProtocoloDataEHoraDeAutorizacao1Click(Sender: TObject);
    procedure AjustarosarquivosXMLdoSalc1Click(Sender: TObject);
    procedure ConsultarNFCePelaChaveDeAcesso1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CorrigirchavedeacessodaimportaodoSalc1Click(Sender: TObject);
    procedure ConsultarNFCeNoPortal1Click(Sender: TObject);
    procedure VerificaodosXMLs1Click(Sender: TObject);
    procedure AssociarArquivoXMLBaixado1Click(Sender: TObject);
    procedure AtualizarANFCeComBaseNoXML1Click(Sender: TObject);
    procedure AlterarItem1Click(Sender: TObject);
    procedure IncluirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure EliminarTodos1Click(Sender: TObject);
    procedure AtualizarItens1Click(Sender: TObject);
    procedure Reordenar1Click(Sender: TObject);
    procedure TotalQuantidade1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure CorrigirregistrosdiferentesdoXML1Click(Sender: TObject);
    procedure InutilizarNFCe1Click(Sender: TObject);
    procedure LocalizarNotaNaMovimentacaoDoEstoque1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarNFCeConformeXML(PedirConfirmacao: Boolean);
    procedure RenomearArquivosNFCE_Prot(const Pasta: string);
    procedure RenomearArquivosNFCE_Assi(const Pasta: string);
    procedure RenomearArquivosNFCE_Canc(const Pasta: string);
    procedure RenomearArquivosNFCE_Inut(const Pasta: string);
    function VerificarChaveAcessoXML(const ChaveAcesso, Arquivo: String): Boolean;
    function RemoverTagsRetProc(const ArquivoXML: string): string;
  public
    { Public declarations }
  end;

var
  FormNfce: TFormNfce;

implementation
uses DataMod, Funcoes1, NfceLoc, NfceFast, ReceberLoc, Receber, pcnConversao, pcnConversaoNFe,
  NfceArquivosXML, ZiparDFE, NfceContingencias, NfceRel, NfceProtocolo, Main, ShellApi,
  NfceItens, InputDate, EstoqueLoc, Estoque;
{$R *.dfm}

function TFormNfce.RemoverTagsRetProc(const ArquivoXML: string): string;
var
  SL: TStringList;
  xml: widestring;
begin
  if not FileExists(ArquivoXML) then
  raise Exception.CreateFmt('Arquivo não encontrado: %s', [ArquivoXML]);

  SL:=TStringList.Create;
  try
    SL.LoadFromFile(ArquivoXML, TEncoding.UTF8);
    XML:=SL.Text;

    // Remove as tags de abertura
    XML:=StringReplace(XML, '<retArquivoXML xmlns="http://www.portalfiscal.inf.br/nfe">', '', [rfReplaceAll, rfIgnoreCase]);
    XML:=StringReplace(XML, '<proc xmlns="http://www.portalfiscal.inf.br/nfe">', '', [rfReplaceAll, rfIgnoreCase]);

    // Remove as tags de fechamento
    XML:=StringReplace(XML, '</proc>', '', [rfReplaceAll, rfIgnoreCase]);
    XML:=StringReplace(XML, '</retArquivoXML>', '', [rfReplaceAll, rfIgnoreCase]);
    Result:=XML;
  finally
    SL.Free;
  end;
end;

function FindNodeRecursive(Node: IXMLNode; const NodeName: string): IXMLNode;
var
  I: Integer;
begin
  Result := nil;
  if SameText(Node.NodeName, NodeName) then
    Exit(Node);

  for I := 0 to Node.ChildNodes.Count - 1 do
  begin
    Result := FindNodeRecursive(Node.ChildNodes[I], NodeName);
    if Assigned(Result) then
      Exit;
  end;
end;

function TFormNfce.VerificarChaveAcessoXML(const ChaveAcesso, Arquivo: String): Boolean;
var
  XMLDoc: IXMLDocument;
  Root, Node: IXMLNode;
  ChaveXML: String;
begin
  Result:=False;
  ChaveXML:='';

  if not FileExists(Arquivo) then
  raise Exception.CreateFmt('Arquivo não encontrado: %s', [Arquivo]);

  XMLDoc:=TXMLDocument.Create(nil);
  XMLDoc.Options:=XMLDoc.Options + [doNodeAutoCreate];
  XMLDoc.LoadFromFile(Arquivo);
  XMLDoc.Active:=True;

  Root:=XMLDoc.DocumentElement;
  if not Assigned(Root) then
  raise Exception.Create('XML inválido ou sem elemento raiz.');

  //1 Nota autorizada (tag <infNFe Id="NFe...">)
  Node:=FindNodeRecursive(Root, 'infNFe');
 //Root.SelectSingleNode('//infNFe');
  if Assigned(Node) and Node.HasAttribute('Id') then
  ChaveXML:=Copy(Node.Attributes['Id'], 4, 44); // Remove 'NFe'

  //2 Evento de cancelamento (<procEventoNFe> ou <evento>)
  if (ChaveXML='') then
  begin
    Node:=FindNodeRecursive(Root, 'chNFe');
    if Assigned(Node) then
    ChaveXML := Trim(Node.Text);
  end;

  //3 Inutilização (<infInut><chave>)
  if (ChaveXML='') then
  begin
    Node:=FindNodeRecursive(Root, 'chave');
    if Assigned(Node) then
    ChaveXML := Trim(Node.Text);
  end;

  // Comparação
  Result:=(ChaveAcesso=ChaveXML);
end;

procedure TFormNfce.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfce.RenomearArquivosNFCE_Prot(const Pasta: string);
var
  Arquivo: string;
  Arquivos: TStringDynArray;
  NomeAntigo, NomeNovo, Chave: string;
begin
  Arquivos := TDirectory.GetFiles(Pasta, 'ProtNFCE*.XML', TSearchOption.soTopDirectoryOnly);

  for Arquivo in Arquivos do
  begin
    NomeAntigo := TPath.GetFileName(Arquivo);

    // Verifica se o nome começa com 'ProtNFCE' e termina com '.XML'
    if NomeAntigo.StartsWith('ProtNFCE', True) and NomeAntigo.EndsWith('.XML', True) then
    begin
      // Extrai a chave (parte do meio entre ProtNFCE e .XML)
      Chave := Copy(NomeAntigo, 9, Length(NomeAntigo) - 8 - 4); // 8 = 'ProtNFCE', 4 = '.XML'

      NomeNovo := Chave + '-procNFCe.xml';

      try
        TFile.Move(Arquivo, TPath.Combine(Pasta, NomeNovo));
      except
        on E: Exception do
          Writeln('Erro ao renomear: ' + NomeAntigo + ' -> ' + NomeNovo + ' | ' + E.Message);
      end;
    end;
  end;
end;

procedure TFormNfce.Reordenar1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfceItens.IsEmpty,'Não existem itens nesse pedido.');

  //atualiza a sequencia dos itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'merge into NFCEITENS NFCEITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    NCI_CODIGO, '+
    '    NCI_NOTA, '+
    '    row_number() over(partition by NCI_NOTA order by NCI_NOTA, NCI_CODIGO) as SEQ '+
    'from NFCEITENS where NCI_NOTA=:codigo order by NCI_NOTA, NCI_CODIGO) NFCEITENS_ORIGEM '+
    'on NFCEITENS_DESTINO.RDB$DB_KEY = NFCEITENS_ORIGEM.db_key '+
    'when matched then update set NFCEITENS_DESTINO.NCI_SEQUENCIA = NFCEITENS_ORIGEM.SEQ'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  DM.QYAux.ExecSQL;

  //atualiza o total de itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'update NFCE set NFCE_SEQUENCIAITEM=(select max(NCI_SEQUENCIA) as SEQ from NFCEITENS where NCI_NOTA=NFC_CODIGO) where NFC_CODIGO=:codigo'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  DM.QYAux.ExecSQL;

  DM.TBNfceItens.Close;
  DM.TBNfce.Close;
  DM.TBNfce.Open;
  DM.TBNfceItens.Open;
end;

procedure TFormNfce.RenomearArquivosNFCE_Assi(const Pasta: string);
var
  Arquivo: string;
  Arquivos: TStringDynArray;
  NomeAntigo, NomeNovo, Chave: string;
begin
  Arquivos := TDirectory.GetFiles(Pasta, 'AssiNFCE*.XML', TSearchOption.soTopDirectoryOnly);

  for Arquivo in Arquivos do
  begin
    NomeAntigo := TPath.GetFileName(Arquivo);

    // Verifica se o nome começa com 'ProtNFCE' e termina com '.XML'
    if NomeAntigo.StartsWith('AssiNFCE', True) and NomeAntigo.EndsWith('.XML', True) then
    begin
      // Extrai a chave (parte do meio entre ProtNFCE e .XML)
      Chave := Copy(NomeAntigo, 9, Length(NomeAntigo) - 8 - 4); // 8 = 'ProtNFCE', 4 = '.XML'

      NomeNovo := Chave + '-NFCe.xml';

      try
        TFile.Move(Arquivo, TPath.Combine(Pasta, NomeNovo));
      except
        on E: Exception do
          Writeln('Erro ao renomear: ' + NomeAntigo + ' -> ' + NomeNovo + ' | ' + E.Message);
      end;
    end;
  end;
end;

procedure TFormNfce.RenomearArquivosNFCE_Canc(const Pasta: string);
var
  Arquivo: string;
  Arquivos: TStringDynArray;
  NomeAntigo, NomeNovo, Chave: string;
begin
  Arquivos := TDirectory.GetFiles(Pasta, 'CancNFCE-*.XML', TSearchOption.soTopDirectoryOnly);

  for Arquivo in Arquivos do
  begin
    NomeAntigo := TPath.GetFileName(Arquivo);

    // Verifica se o nome começa com 'ProtNFCE' e termina com '.XML'
    if NomeAntigo.StartsWith('CancNFCE-', True) and NomeAntigo.EndsWith('.XML', True) then
    begin
      // Extrai a chave (parte do meio entre ProtNFCE e .XML)
      Chave := Copy(NomeAntigo, 10, Length(NomeAntigo) - 9 - 4); // 8 = 'ProtNFCE', 4 = '.XML'

      NomeNovo := Chave + '-procCancNFCe.xml';

      try
        TFile.Move(Arquivo, TPath.Combine(Pasta, NomeNovo));
      except
        on E: Exception do
          Writeln('Erro ao renomear: ' + NomeAntigo + ' -> ' + NomeNovo + ' | ' + E.Message);
      end;
    end;
  end;
end;

procedure TFormNfce.RenomearArquivosNFCE_Inut(const Pasta: string);
var
  Arquivo: string;
  Arquivos: TStringDynArray;
  NomeAntigo, NomeNovo, Chave: string;
begin
  Arquivos := TDirectory.GetFiles(Pasta, 'InutilizaNFCE-*.XML', TSearchOption.soTopDirectoryOnly);

  for Arquivo in Arquivos do
  begin
    NomeAntigo := TPath.GetFileName(Arquivo);

    // Verifica se o nome começa com 'ProtNFCE' e termina com '.XML'
    if NomeAntigo.StartsWith('InutilizaNFCE-', True) and NomeAntigo.EndsWith('.XML', True) then
    begin
      // Extrai a chave (parte do meio entre ProtNFCE e .XML)
      Chave := Copy(NomeAntigo, 15, Length(NomeAntigo) - 14 - 4); // 8 = 'ProtNFCE', 4 = '.XML'

      NomeNovo := Chave + '-procInutNFCe.xml';

      try
        TFile.Move(Arquivo, TPath.Combine(Pasta, NomeNovo));
      except
        on E: Exception do
          Writeln('Erro ao renomear: ' + NomeAntigo + ' -> ' + NomeNovo + ' | ' + E.Message);
      end;
    end;
  end;
end;

procedure TFormNfce.AjustarosarquivosXMLdoSalc1Click(Sender: TObject);
var ArquivoFirenet, ArquivoSalc, Pasta: String;
  D,M,A: Word;
begin
  if FileOpenDialog1.Execute then
  begin
    if MessageDlg('Deseja ajustar os arquivos XMLs do Salc para o padrão Firenet?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      RenomearArquivosNFCE_Prot(FileOpenDialog1.FileName);
      RenomearArquivosNFCE_Assi(FileOpenDialog1.FileName);
      RenomearArquivosNFCE_Canc(FileOpenDialog1.FileName);
      RenomearArquivosNFCE_Inut(FileOpenDialog1.FileName);
      MessageDlg('Arquivos ajustados!',mtInformation,[mbOk],0);
    end;

//    DM.QYAux.Close;
//    DM.QYAux.SQL.Clear;
//    DM.QYAux.SQL.Add('select NFC_CHAVEACESSO, NFC_DTEMISSAO from NFCE order by NFC_CODIGO');
//    DM.QYAux.Open;
//    DM.QYAux.FetchAll;
//    while not DM.QYAux.Eof do
//    begin
//      DecodeDate(DM.QYAux.FieldByName('NFC_DTEMISSAO').AsDateTime,A,M,D);
//      Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
//
//      ArquivoSalc:='ProtNFCe'+DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString+'.XML';
//      ArquivoFirenet:=DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString+'-procNFCe.XML';
//      if FileExists(Pasta+ArquivoSalc) then
//      RenameFile(Pasta+ArquivoSalc,Pasta+ArquivoFirenet);
//
//      DM.QYAux.Next;
//    end;
//    DM.QYAux.Close;
  end;
end;

procedure TFormNfce.AlterarItem1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfceItens.IsEmpty,'Não existe nenhum item para editar.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfceItensNCI_PRODUTO.Value;
  DM.TBProdutos.Open;
  //DM.TBNfceItens.Edit;
  Application.CreateForm(TFormNfceItens, FormNfceItens);
  FormNfceItens.DBEdit5.Enabled:=False;
  FormNfceItens.DBEdit5.Color:=clBtnFace;
  FormNfceItens.SpeedButton9.Enabled:=False;
  FormNfceItens.DesabilitarCampos; //se status = F ou C ou com protocolo de autorizacao, desabilita campos.
  FormNfceItens.ShowModal;
  FormNfceItens.Free;
  FormNfceItens:=nil;
end;

procedure TFormNfce.ArquivosXMLDaNFCe1Click(Sender: TObject);
var A,M,D: Word;
  Arquivo, Pasta: String;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFC-e selecionada.');

  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  AbortIf(not System.SysUtils.DirectoryExists(Pasta),'A pasta da NFC-e não foi localizada.');
  Arquivo:=DM.TBNfceNFC_CHAVEACESSO.Value+'*.*';
  AbortIf(not ExisteAlgumArquivo(Pasta+Arquivo),'Nenhum arquivo encontrado para esta NFe.');

  Application.CreateForm(TFormNfceArquivosXML, FormNfceArquivosXML);
  FormNfceArquivosXML.ShowModal;
  FormNfceArquivosXML.Free;
  FormNfceArquivosXML:=nil;
end;

procedure TFormNfce.AssociarArquivoXMLBaixado1Click(Sender: TObject);
var D,M,A: Word;
  Arquivo, Pasta: String;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value='A','Esta NFCe ainda está em aberto.');

  if DM.TBNfceNFC_STATUS.Value='F' then Arquivo:=DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml';
  if DM.TBNfceNFC_STATUS.Value='C' then Arquivo:=DM.TBNfceNFC_CHAVEACESSO.Value+'-procCancNFCe.xml';
  if DM.TBNfceNFC_STATUS.Value='I' then Arquivo:=DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.xml';

  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  AbortIf(FileExists(Pasta+Arquivo),'Já existe um arquivo associado a essa NFCe ('+Arquivo+')');

  if FileOpenDialog2.Execute then
  begin
    AbortIf(not VerificarChaveAcessoXML(DM.TBNfceNFC_CHAVEACESSO.Value,FileOpenDialog2.FileName),'A chave de acesso contida no XML é diferente da chave de acesso da NFCe selecionada.');

    MoveFile(PWideChar(FileOpenDialog2.FileName),PWideChar(Pasta+Arquivo));
    MessageDlg('Arquivo movido com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfce.AtualizarNFCeConformeXML(PedirConfirmacao: Boolean);
var D,M,A: Word;
  Pasta, Arquivo: String;
  I, CodigoNfce: Integer;
  XML: WideString;
  SL: TStringList;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value<>'F','Esta NFCe não está finalizada.');

  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  Arquivo:=DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml';
  AbortIf(not FileExists(Pasta+Arquivo),'Arquivo XML dessa NFCe não foi localizado.'+#13#10+Pasta+Arquivo);

  if PedirConfirmacao=True then
  begin
    if MessageDlg('Deseja sincronizar os dados NFCe com os dados do XML?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
    Exit;
  end;

  begin
    CodigoNfce:=DM.TBNfceNFC_CODIGO.Value;

    SL:=TStringList.Create;
    //SL.LoadFromFile(Pasta+Arquivo);
    //XML:=RemoverTagsRetProc(Pasta+Arquivo);
    SL.Add(RemoverTagsRetProc(Pasta+Arquivo));
    SL.SaveToFile(ExtractFilePath(Application.ExeName)+'\print\nfce.xml');

    DM.ConfigurarACBrNFe;
    DM.ACBrNFe1.NotasFiscais.Clear;
    //DM.ACBrNFe1.NotasFiscais.LoadFromFile(Pasta+Arquivo);
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(ExtractFilePath(Application.ExeName)+'\print\nfce.xml');

    //Confere se carregou algo.
    AbortIf(DM.ACBrNFe1.NotasFiscais.Count = 0,'Nenhuma nota encontrada no XML.');

    //fecha as tabelas e desabilita controles.
    DM.TBNfcePagamentos.Close;
    DM.TBNfceItens.Close;
    DM.TBNfce.Close;
    DM.TBNfcePagamentos.DisableControls;
    DM.TBNfceItens.DisableControls;
    DM.TBNfce.DisableControls;

    //altera status para A para que funcione o editar registro sem dar mensagem que já está finalizada.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCE set NFC_SEQUENCIAITEM=0, NFC_STATUS=:status where NFC_CODIGO=:codigo');
    DM.QYAux.ParamByName('status').AsString:='A';
    DM.QYAux.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.QYAux.ExecSQL;

    //elimina os itens da NFCe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from NFCEITENS where NCI_NOTA=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.QYAux.ExecSQL;

    //elimina os itens dos pagamentos.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from NFCEPAGAMENTOS where NCP_NFCE=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.QYAux.ExecSQL;

    DM.TBNfce.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.TBNfce.Open;
    DM.TBNfceItens.Open;
    DM.TBNfcePagamentos.Open;

    //Percorre os itens e atualiza o registro.
    for I:=0 to DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin

      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=StrToInt(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.cProd);
      DM.TBProdutos.Open;

      DM.TBNfceItens.Insert;
      DM.TBNfceItensNCI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value; // DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.cProd;
      //DM.TBNfceItensNCI_DESCRICAO.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd;
      //DM.TBNfceItensNCI_QUANTIDADE.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;

      DM.TBNfceItensNCI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
      DM.TBNfceItensNCI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
      DM.TBNfceItensNCI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
      DM.TBNfceItensNCI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;
      DM.TBNfceItensNCI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBNfceItensNCI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBNfceItensNCI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
      DM.TBNfceItensNCI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
      DM.TBNfceItensNCI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBNfceItensNCI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
      DM.TBNfceItensNCI_ALIQIPI.Value:=DM.TBProdutosPRO_ALIQIPI.Value;
      DM.TBNfceItensNCI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
      DM.TBNfceItensNCI_ALIQPISST.Value:=DM.TBProdutosPRO_ALIQPISST.Value;
      DM.TBNfceItensNCI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
      //DM.TBNfceItensNCI_BASECOFINS
      //DM.TBNfceItensNCI_BASECOFINSST
      //DM.TBNfceItensNCI_BASEICMS
      //DM.TBNfceItensNCI_BASEICMSRED
      //DM.TBNfceItensNCI_BASEICMSST
      //DM.TBNfceItensNCI_BASEIPI
      //DM.TBNfceItensNCI_BASEPIS
      //DM.TBNfceItensNCI_BASEPISST
      DM.TBNfceItensNCI_CEST.Value:=DM.TBProdutosPRO_CEST.Value;
      DM.TBNfceItensNCI_CFOP.Value:=DM.TBNfceNFC_CFOP.Value;
      DM.TBNfceItensNCI_CLASSFISCAL.Value:=DM.TBProdutosPRO_CLASSFISCAL.Value;
      //DM.TBNfceItensNCI_CODIGO
      DM.TBNfceItensNCI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
      DM.TBNfceItensNCI_COMISSAO.Value:=DM.TBProdutosPRO_COMISSAO.Value;
      if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then
      DM.TBNfceItensNCI_COMISSAO.Value:=DM.TBVendedoresVEN_COMISSAO.Value;

      DM.TBNfceItensNCI_COMPLEMENTO.Value:='';
      DM.TBNfceItensNCI_COMPOEBASEICMS.Value:=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
      DM.TBNfceItensNCI_COMPOEBASEICMSST.Value:=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
      DM.TBNfceItensNCI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
      DM.TBNfceItensNCI_CSTCOFINS.Value:=DM.TBProdutosPRO_CSTCOFINS.Value;
      DM.TBNfceItensNCI_CSTICMS.Value:=DM.TBProdutosPRO_CSTICMS.Value;
      DM.TBNfceItensNCI_CSTIPI.Value:=DM.TBProdutosPRO_CSTIPI.Value;
      DM.TBNfceItensNCI_CSTPIS.Value:=DM.TBProdutosPRO_CSTPIS.Value;
      DM.TBNfceItensNCI_DESCPORC.Value:=0;
      DM.TBNfceItensNCI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
      if (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2') and (DM.TBNfceNFC_SEQUENCIAITEM.Value=0) then
      DM.TBNfceItensNCI_DESCRICAO.Value:='NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
      DM.TBNfceItensNCI_DESCVALOR.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vDesc;
      DM.TBNfceItensNCI_EXCECAO.Value:=DM.TBProdutosPRO_EXCECAO.Value;
      DM.TBNfceItensNCI_LUCROPORC.Value:=0;
      DM.TBNfceItensNCI_LUCROVALOR.Value:=0;
      DM.TBNfceItensNCI_MODICMS.Value:=DM.TBProdutosPRO_MODICMS.Value;
      DM.TBNfceItensNCI_MODICMSST.Value:=DM.TBProdutosPRO_MODICMSST.Value;
      DM.TBNfceItensNCI_NOTA.Value:=DM.TBNfceNFC_CODIGO.Value;
      DM.TBNfceItensNCI_ORIGEM.Value:=DM.TBProdutosPRO_ORIGEM.Value;
      DM.TBNfceItensNCI_PESO.Value:=DM.TBProdutosPRO_PESO.Value;
      DM.TBNfceItensNCI_PESOTOTAL.Value:=0;
      DM.TBNfceItensNCI_PRECOCUSTO.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value;
      DM.TBNfceItensNCI_PRECOCUSTOTOTAL.Value:=0;
      DM.TBNfceItensNCI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM.TBNfceItensNCI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
      DM.TBNfceItensNCI_QUANTIDADE.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;
      DM.TBNfceItensNCI_SEQUENCIA.Value:=DM.TBNfceNFC_SEQUENCIAITEM.Value+1;
      DM.TBNfceItensNCI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
      DM.TBNfceItensNCI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
      DM.TBNfceItensNCI_VALORACESSORIAS.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vOutro;
      DM.TBNfceItensNCI_VALORCOFINS.Value:=0;
      DM.TBNfceItensNCI_VALORCOFINSST.Value:=0;
      DM.TBNfceItensNCI_VALORCOMISSAO.Value:=0;
      DM.TBNfceItensNCI_VALORFCP.Value:=0;
      DM.TBNfceItensNCI_VALORFCPST.Value:=0;
      DM.TBNfceItensNCI_VALORICMS.Value:=0;
      DM.TBNfceItensNCI_VALORICMSCREDSN.Value:=0;
      DM.TBNfceItensNCI_VALORICMSST.Value:=0;
      DM.TBNfceItensNCI_VALORICMSUFDEST.Value:=0;
      DM.TBNfceItensNCI_VALORICMSUFREMET.Value:=0;
      DM.TBNfceItensNCI_VALORIPI.Value:=0;
      DM.TBNfceItensNCI_VALORPIS.Value:=0;
      DM.TBNfceItensNCI_VALORPISST.Value:=0;
      //DM.TBNfceItensNCI_VALORTRIBUTOS.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.

      DM.TBNfceItensNCI_VALORUNIT.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom;

      DM.TBNfceItensNCI_VALORTOTAL.Value:=DM.TBNfceItensNCI_QUANTIDADE.Value * DM.TBNfceItensNCI_VALORUNIT.Value;
      DM.TBNfceItensNCI_VALORTOTALBRUTO.Value:=DM.TBNfceItensNCI_QUANTIDADE.Value * DM.TBNfceItensNCI_VALORUNIT.Value;
      DM.TBNfceItensNCI_VALORTRIBUTOS.Value:=0;
      DM.TBNfceItensNCI_VALORTRIBUTOSEST.Value:=0;
      DM.TBNfceItensNCI_VALORTRIBUTOSFED.Value:=0;
      DM.TBNfceItensNCI_VALORTRIBUTOSIMP.Value:=0;
      DM.TBNfceItensNCI_VALORTRIBUTOSMUN.Value:=0;
      DM.TBNfceItens.Post;

    end;

    //atualiza desconto/acrescimo.
    DM.TBNfce.Edit;
    DM.TBNfceNFC_DESCVALOR.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    //DM.TBNfceNFC_VALORTOTAL.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    DM.TBNfceNFC_VALORRECEBIDO.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    DM.TBNfce.Post;

    //Atualiza as condicoes de pagamento utilizadas.
    //fazer com insert.
    for I:=0 to DM.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Count-1 do
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from CONDICOES where CPG_MEIOPAGAMENTO like :meio');
      DM.QYAux.ParamByName('meio').AsString:=FormaPagamentoToStr(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[I].tPag)+'%';
      DM.QYAux.Open;

      if not DM.QYAux.IsEmpty then
      begin
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('insert into NFCEPAGAMENTOS (NCP_CODIGO, NCP_CONDICAO, NCP_NFCE, NCP_VALOR) values (gen_id(GEN_NFCEPAGAMENTOS,1), :condicao, :nfce, :valor);');
        DM.QYAux2.ParamByName('condicao').AsInteger:=DM.QYAux.FieldByName('CPG_CODIGO').AsInteger;
        DM.QYAux2.ParamByName('nfce').AsInteger:=CodigoNfce;
        DM.QYAux2.ParamByName('valor').AsCurrency:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[I].vPag;
        DM.QYAux2.ExecSQL;

//        DM.TBNfcePagamentos.Insert;
//        DM.TBNfcePagamentosNCP_CONDICAO.Value:=DM.QYAux.FieldByName('CPG_CODIGO').AsInteger;
//        DM.TBNfcePagamentosNCP_NFCE.Value:=CodigoNfce;
//        DM.TBNfcePagamentosNCP_VALOR.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[I].vPag;
//        DM.TBNfcePagamentos.Post;
      end;

      DM.QYAux.Close;
    end;

    //altera status para F novamente.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status where NFC_CODIGO=:codigo');
    DM.QYAux.ParamByName('status').AsString:='F';
    DM.QYAux.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.QYAux.ExecSQL;

    DM.TBNfce.EnableControls;
    DM.TBNfceItens.EnableControls;
    DM.TBNfcePagamentos.EnableControls;
    DM.TBNfcePagamentos.Close;
    DM.TBNfceItens.Close;
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=CodigoNfce;
    DM.TBNfce.Open;
    DM.TBNfceItens.Open;
    DM.TBNfcePagamentos.Open;

    if PedirConfirmacao=True then
    MessageDlg('Atualização OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfce.AtualizarANFCeComBaseNoXML1Click(Sender: TObject);
begin
  AtualizarNFCeConformeXML(True);
end;

procedure TFormNfce.AtualizarItens1Click(Sender: TObject);
begin
  MessageDlg('Funcionalidade não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfce.BitBtn4Click(Sender: TObject);
begin
  AlterarItem1.Click;
end;

procedure TFormNfce.ConsultarNFCeNoPortal1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');

  DBEdit76.SelectAll;
  DBEdit76.CopyToClipboard;
  MessageDlg('A chave de acesso foi copiada para a área de transferência.'+#13#13+'Utilize CTRL+V para colar a chave de acesso no campo apropriado.'+#13#13+'O portal nacional será aberto ao clicar OK.',mtInformation,[mbOk],0);
  ShellExecute(GetDesktopWindow,'open',PChar('https://sat.sef.sc.gov.br/tax.net/Sat.Dfe.NFCe.Web/Consultas/ConsultaPublicaNFCe.aspx'),nil,nil,sw_ShowNormal);
end;

procedure TFormNfce.ConsultarNFCePelaChaveDeAcesso1Click(Sender: TObject);
var Codigo: Integer;
  F: TextFile;
  Pasta: String;
  A,M,D: Word;
begin
  PageControl1.ActivePageIndex:=4;

  Codigo:=DM.TBNfceNFC_CODIGO.Value;
  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.WebServices.Consulta.NFeChave:=DM.TBNfceNFC_CHAVEACESSO.Value;
  DM.ACBrNFe1.WebServices.Consulta.Executar;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Data/Hora: '+DateTimeToStr(DM.ACBrNFe1.WebServices.Consulta.DhRecbto));
  Memo1.Lines.Add('Protocolo: '+DM.ACBrNFe1.WebServices.Consulta.Protocolo);
  Memo1.Lines.Add('Motivo...: '+DM.ACBrNFe1.WebServices.Consulta.XMotivo);
  Memo1.Lines.Add('cStat....: '+DM.ACBrNFe1.WebServices.Consulta.cStat.ToString);
  Memo1.Lines.Add('retws....: '+DM.ACBrNFe1.WebServices.Consulta.RetWS);
  Memo1.Lines.Add('retornows: '+DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
  Memo1.Lines.Add('retnfedfe: '+DM.ACBrNFe1.WebServices.Consulta.RetNFeDFe);
  Memo1.Lines.Add('xml_nfe..: '+DM.ACBrNFe1.WebServices.Consulta.protNFe.XML_DFe);
  Memo1.Lines.Add('xml_prot.: '+DM.ACBrNFe1.WebServices.Consulta.protNFe.XML_prot);
  Memo1.Lines.Add('xmsg.....: '+DM.ACBrNFe1.WebServices.Consulta.protNFe.xMsg);
  Memo1.Lines.Add('arqresp..: '+DM.ACBrNFe1.WebServices.Consulta.ArqResp);

  //Memo1.Lines.Add('xml......: '+DM.ACBrNFe1.NotasFiscais.Items[0].XML);

  //DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml');

  if DM.ACBrNFe1.WebServices.Consulta.cStat=217 then //nao consta na sefaz.
  begin
    if DM.TBNfceNFC_STATUS.Value='A' then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('status').AsString:='I';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.TBNfceItens.Close;
      DM.TBNfce.Close;
      DM.TBNfce.ParamByName('codigo').AsInteger:=Codigo;
      DM.TBNfce.Open;
      DM.TBNfceItens.Open;
      Memo1.Lines.Add('-------->: NFCe alterada para contingência à inutilizar.');
    end;
  end;

  if DM.ACBrNFe1.WebServices.Consulta.cStat=100 then //autorizado.
  begin
    if (DM.TBNfceNFC_STATUS.Value='I') or (DM.TBNfceNFC_STATUS.Value='A') then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_PROTOCOLO=:protocolo, NFC_PROTOCOLODH=:protocolodh where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Consulta.Protocolo;
      DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Consulta.dhRecbto;
      DM.QYAux.ParamByName('status').AsString:='F';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.TBNfceItens.Close;
      DM.TBNfce.Close;
      DM.TBNfce.ParamByName('codigo').AsInteger:=Codigo;
      DM.TBNfce.Open;
      DM.TBNfceItens.Open;
      Memo1.Lines.Add('-------->: NFCe com status e protocolo atualizados.');

//      Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+A.ToString+'\'+M.ToString+'\';
//      if not FileExists(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml') then
//      begin
//        ForceDirectories(Pasta);
//        AssignFile(F,Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml');
//        Rewrite(F);
//        Write(F,DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
//        CloseFile(F);
//      end;
    end;
  end;

//  Memo1.Lines.Add(DM.ACBrNFe1.WebServices.Consulta.RetWS);
//  Memo1.Lines.Add('--------------------------------------------------------------');
//  Memo1.Lines.Add(DM.ACBrNFe1.WebServices.Consulta.RetornoWS);
//  Memo1.Lines.Add('--------------------------------------------------------------');
//  Memo1.Lines.Add(DM.ACBrNFe1.NotasFiscais.Items[0].XML);
//  Memo1.Lines.Add('--------------------------------------------------------------');
//  Memo1.Lines.Add(DM.ACBrNFe1.NotasFiscais.Items[0].XMLOriginal);
//  Memo1.Lines.Add('--------------------------------------------------------------');
//  Memo1.Lines.Add(DM.ACBrNFe1.NotasFiscais.Items[0].XMLAssinado);
//  Memo1.Lines.Add('--------------------------------------------------------------');
//  Memo1.Lines.Add(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.XML_NFe);
end;

procedure TFormNfce.ConsultarStatusDoServico1Click(Sender: TObject);
var SL: TStringList;
begin
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.WebServices.StatusServico.Executar;

  SL:=TStringList.Create;
  SL.Add('');
  SL.Add('Status Serviço');
  SL.Add('tpAmb: '    +TpAmbToStr(DM.ACBrNFe1.WebServices.StatusServico.tpAmb));
  SL.Add('verAplic: ' +DM.ACBrNFe1.WebServices.StatusServico.verAplic);
  SL.Add('cStat: '    +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.cStat));
  SL.Add('xMotivo: '  +DM.ACBrNFe1.WebServices.StatusServico.xMotivo);
  SL.Add('cUF: '      +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.cUF));
  SL.Add('dhRecbto: ' +DateTimeToStr(DM.ACBrNFe1.WebServices.StatusServico.dhRecbto));
  SL.Add('tMed: '     +IntToStr(DM.ACBrNFe1.WebServices.StatusServico.TMed));
  SL.Add('dhRetorno: '+DateTimeToStr(DM.ACBrNFe1.WebServices.StatusServico.dhRetorno));
  SL.Add('xObs: '     +DM.ACBrNFe1.WebServices.StatusServico.xObs);
  MessageDlg(SL.Text,mtInformation,[mbOk],0);

  SL.Destroy;
end;

procedure TFormNfce.CorrigirchavedeacessodaimportaodoSalc1Click(Sender: TObject);
var Q1, Q2: TFDQuery;
begin
  if MessageDlg('Corrigir a chave de acesso dos cupons importados do SALC?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Q1:=TFDQuery.Create(Self);
    Q2:=TFDQuery.Create(Self);
    Q1.Connection:=DM.FDConnection1;
    Q2.Connection:=DM.FDConnection1;

    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select * from CUPOM where CUP_CHAVEACESSO is not null order by CUP_CODIGO');
    Q1.Open;
    Q1.DisableControls;
    Q2.DisableControls;
    while not Q1.Eof do
    begin
      Q2.SQL.Clear;
      Q2.SQL.Add('update NFCE set NFC_CHAVEACESSO=:chave, NFC_CODIGONUMERICO=:numerico where NFC_CODIGO=:codigo');
      Q2.ParamByName('chave').AsString:=Q1.FieldByName('CUP_CHAVEACESSO').AsString;
      Q2.ParamByName('numerico').AsInteger:=StrToInt(Copy(Q1.FieldByName('CUP_CHAVEACESSO').AsString,36,8));
      Q2.ParamByName('codigo').AsInteger:=Q1.FieldByName('CUP_CODIGO').AsInteger;
      Q2.ExecSQL;
      Q1.Next;
    end;
    Q1.EnableControls;
    Q2.EnableControls;
    Q1.Close;
    Q1.Destroy;
    Q2.Destroy;
    Screen.Cursor:=crDefault;
    MessageDlg('Correção concluída.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfce.CorrigirregistrosdiferentesdoXML1Click(Sender: TObject);
var D1, D2: String;
begin
  Application.CreateForm(TFormInputDate, FormInputDate);

  FormInputDate.Caption:='Informe a Data de Inicial';
  FormInputDate.Label1.Caption:='Data Inicial';
  FormInputDate.ShowModal;
  if InputDate.Retorno then D1:=FormInputDate.MaskEdit1.Text;

  FormInputDate.Caption:='Informe a Data Final';
  FormInputDate.Label1.Caption:='Data Final';
  FormInputDate.ShowModal;
  if InputDate.Retorno then D2:=FormInputDate.MaskEdit1.Text;

  FormInputDate.Free;
  FormInputDate:=nil;

  if (D1<>'') and (D2<>'') then
  begin
    Application.CreateForm(TFormNfceFast, FormNfceFast);
    FormNfceFast.QY06.Active:=False;
    FormNfceFast.QY06.SQL.Clear;
    FormNfceFast.QY06.SQL.Add(
      'select NFC_CHAVEACESSO, NFC_CLIENTE, NFC_CODIGO, NFC_NOME, NFC_DTEMISSAO, NFC_VALORTOTAL, '+
      'case NFC_STATUS '+
      '  when ''A'' then ''ABERTA'''+
      '  when ''F'' then ''FINALIZADA'''+
      '  when ''C'' then ''CANCELADA'''+
      '  when ''I'' then ''INUTILIZADA'''+
      'end as NFC_STATUS from NFCE '+
      'where NFC_DTEMISSAO between :datainicial and :datafinal '+
      'order by NFC_STATUS, NFC_CODIGO desc'
    );
    FormNfceFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(D1,FS);
    FormNfceFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(D2,FS);
    FormNfceFast.QY06.Open;
    FormNfceFast.CriarTabelaXmls;
    FormNfceFast.TBXmls.First;
    while not FormNfceFast.TBXmls.Eof do
    begin
      if (FormNfceFast.TBXmlsARQUIVO.Value='OK') and (FormNfceFast.TBXmlsTOTAL.Value='DIFERENTE') then
      begin
        DM.TBNfce.Close;
        DM.TBNfce.ParamByName('codigo').AsInteger:=FormNfceFast.TBXmlsNFC_CODIGO.Value;
        DM.TBNfce.Open;
        AtualizarNFCeConformeXML(False);
      end;

      FormNfceFast.TBXmls.Next;
    end;
  end;
end;

procedure TFormNfce.DANFCE1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível',mtInformation,[mbOk],0);
end;

procedure TFormNfce.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  AlterarItem1.Click;
end;

procedure TFormNfce.EliminarItem1Click(Sender: TObject);
begin
  MessageDlg('Funcionalidade não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfce.EliminarTodos1Click(Sender: TObject);
begin
  MessageDlg('Funcionalidade não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfce.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfce.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormNfce.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfce.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNfce);
end;

procedure TFormNfce.GerenciamentoDeContingencias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceContingencias, FormNfceContingencias);
  FormNfceContingencias.ShowModal;
  FormNfceContingencias.Free;
  FormNfceContingencias:=nil;
end;

procedure TFormNfce.ImportarcuponsdoSalc1Click(Sender: TObject);
var Q1, Q2: TFDQuery;
begin
  if MessageDlg('Importar os cupons antigos do SALC?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Q1:=TFDQuery.Create(Self);
    Q2:=TFDQuery.Create(Self);
    Q1.Connection:=DM.FDConnection1;
    Q2.Connection:=DM.FDConnection1;

    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('select * from CUPOM left join CLIENTES on CUP_CLIENTE=CLI_CODIGO order by CUP_CODIGO');
    Q1.Open;
    Q1.DisableControls;
    Q2.DisableControls;
    DM.TBNfce.DisableControls;
    DM.TBNfceItens.DisableControls;
    while not Q1.Eof do
    begin
      //verifica se já importou.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select count(*) as QTDE from NFCE where NFC_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=Q1.FieldByName('CUP_COO').AsInteger;
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
      begin
        Q1.Next;
        Continue;
      end;
      DM.QYAux.Close;

      {$REGION 'CAPA DO CUPOM'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add(
        'insert into NFCE (NFC_ACREVALOR, NFC_ALIQICMSCREDSN, NFC_BAIRRO, NFC_CFOP, NFC_CHAVEACESSO, NFC_CEP, NFC_CIDADE, NFC_CIDADECODIGO, NFC_CLIENTE, NFC_CODIGO, '+
        'NFC_CODIGONUMERICO, NFC_COMISSAO, NFC_COMISSAOPOR, NFC_COMPLEMENTO, NFC_CONDICAO, NFC_CONTINGENCIA, NFC_DESCVALOR, NFC_DTATUALIZACAO, NFC_DTCADASTRO, NFC_DTEMISSAO, '+
        'NFC_ENDERECO, NFC_ESTADO, NFC_ESTADOCODIGO, NFC_FINALIDADE, NFC_HRATUALIZACAO, NFC_HRCADASTRO, NFC_MODELO, NFC_MOVIMENTAESTOQUE, NFC_MOVIMENTAFINANCEIRO, NFC_NOME, '+
        'NFC_NUMERO, NFC_PESOBRUTO, NFC_PROTOCOLO, NFC_PROTOCOLODH, NFC_SERIE, NFC_STATUS, NFC_TABELAPRECO, NFC_TOTALPRODUTOS, NFC_TIPOATENDIMENTO, NFC_TIPOCONSUMIDOR, '+
        'NFC_TIPOEMISSAO, NFC_TIPOOPERACAO, NFC_USUARIO, NFC_VALORRECEBIDO, NFC_VALORTOTAL, NFC_VENDA, NFC_VENDEDOR) values '+
        '(:NFC_ACREVALOR, :NFC_ALIQICMSCREDSN, :NFC_BAIRRO, :NFC_CFOP, :NFC_CHAVEACESSO, :NFC_CEP, :NFC_CIDADE, :NFC_CIDADECODIGO, :NFC_CLIENTE, :NFC_CODIGO, '+
        ':NFC_CODIGONUMERICO, :NFC_COMISSAO, :NFC_COMISSAOPOR, :NFC_COMPLEMENTO, :NFC_CONDICAO, :NFC_CONTINGENCIA, :NFC_DESCVALOR, :NFC_DTATUALIZACAO, :NFC_DTCADASTRO, :NFC_DTEMISSAO, '+
        ':NFC_ENDERECO, :NFC_ESTADO, :NFC_ESTADOCODIGO, :NFC_FINALIDADE, :NFC_HRATUALIZACAO, :NFC_HRCADASTRO, :NFC_MODELO, :NFC_MOVIMENTAESTOQUE, :NFC_MOVIMENTAFINANCEIRO, :NFC_NOME, '+
        ':NFC_NUMERO, :NFC_PESOBRUTO, :NFC_PROTOCOLO, :NFC_PROTOCOLODH, :NFC_SERIE, :NFC_STATUS, :NFC_TABELAPRECO, :NFC_TOTALPRODUTOS, :NFC_TIPOATENDIMENTO, :NFC_TIPOCONSUMIDOR, '+
        ':NFC_TIPOEMISSAO, :NFC_TIPOOPERACAO, :NFC_USUARIO, :NFC_VALORRECEBIDO, :NFC_VALORTOTAL, :NFC_VENDA, :NFC_VENDEDOR);'
      );
      DM.QYAux.ParamByName('NFC_ACREVALOR').AsExtended        :=Q1.FieldByName('CUP_ACREVALOR').AsExtended;
      DM.QYAux.ParamByName('NFC_ALIQICMSCREDSN').AsExtended   :=0;
      DM.QYAux.ParamByName('NFC_BAIRRO').AsString             :=Q1.FieldByName('CLI_BAIRRO').AsString;
      DM.QYAux.ParamByName('NFC_CFOP').AsInteger              :=5102;
      DM.QYAux.ParamByName('NFC_CHAVEACESSO').AsString        :=Q1.FieldByName('CUP_CHAVEACESSO').AsString;
      DM.QYAux.ParamByName('NFC_CEP').AsString                :=Q1.FieldByName('CLI_CEP').AsString;
      DM.QYAux.ParamByName('NFC_CIDADE').AsString             :=Q1.FieldByName('CLI_CIDADE').AsString;
      DM.QYAux.ParamByName('NFC_CIDADECODIGO').AsInteger      :=Q1.FieldByName('CLI_CIDADECODIGO').AsInteger;
      DM.QYAux.ParamByName('NFC_CLIENTE').AsInteger           :=Q1.FieldByName('CUP_CLIENTE').AsInteger;
      DM.QYAux.ParamByName('NFC_CODIGO').AsInteger            :=Q1.FieldByName('CUP_COO').AsInteger; //nao vai no insert... na instrução tem gen_id(gen_nfce,1)...
      DM.QYAux.ParamByName('NFC_CODIGONUMERICO').AsString     :=Copy(Q1.FieldByName('CUP_CHAVEACESSO').AsString,36,8);
      DM.QYAux.ParamByName('NFC_COMISSAO').AsExtended         :=0;
      DM.QYAux.ParamByName('NFC_COMISSAOPOR').AsString        :='V';
      DM.QYAux.ParamByName('NFC_COMPLEMENTO').AsString        :=Q1.FieldByName('CLI_COMPLEMENTO').AsString;
      DM.QYAux.ParamByName('NFC_CONDICAO').AsInteger          :=DM.TBParametrosPAR_CONDICAOPADRAO.Value;
      DM.QYAux.ParamByName('NFC_CONTINGENCIA').AsString       :='N';
      DM.QYAux.ParamByName('NFC_DESCVALOR').AsExtended        :=Q1.FieldByName('CUP_DESCVALOR').AsExtended;
      DM.QYAux.ParamByName('NFC_DTATUALIZACAO').AsDate        :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
      DM.QYAux.ParamByName('NFC_DTCADASTRO').AsDAte           :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
      DM.QYAux.ParamByName('NFC_DTEMISSAO').AsDate            :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
      DM.QYAux.ParamByName('NFC_ENDERECO').AsString           :=Q1.FieldByName('CLI_ENDERECO').AsString;
      DM.QYAux.ParamByName('NFC_ESTADO').AsString             :=Q1.FieldByName('CLI_ESTADO').AsString;
      DM.QYAux.ParamByName('NFC_ESTADOCODIGO').AsInteger      :=Q1.FieldByName('CLI_ESTADOCODIGO').AsInteger;
      DM.QYAux.ParamByName('NFC_FINALIDADE').AsString         :='1 - NFE NORMAL';
      DM.QYAux.ParamByName('NFC_HRATUALIZACAO').AsDateTime    :=Q1.FieldByName('CUP_HRATUALIZACAO').AsDateTime;
      DM.QYAux.ParamByName('NFC_HRCADASTRO').AsDateTime       :=Q1.FieldByName('CUP_HRCADASTRO').AsDateTime;
      DM.QYAux.ParamByName('NFC_MODELO').AsInteger            :=65;
      DM.QYAux.ParamByName('NFC_MOVIMENTAESTOQUE').AsString   :='S';
      DM.QYAux.ParamByName('NFC_MOVIMENTAFINANCEIRO').AsString:='S';
      DM.QYAux.ParamByName('NFC_NOME').AsString               :=Q1.FieldByName('CLI_NOME').AsString;
      DM.QYAux.ParamByName('NFC_NUMERO').AsString             :=Q1.FieldByName('CLI_NUMERO').AsString;
      DM.QYAux.ParamByName('NFC_PESOBRUTO').AsExtended        :=0;
      DM.QYAux.ParamByName('NFC_PROTOCOLO').AsString          :=Q1.FieldByName('CUP_PROTOCOLO').AsString;
      DM.QYAux.ParamByName('NFC_PROTOCOLODH').AsString        :=Q1.FieldByName('CUP_PROTOCOLODH').AsString;
      DM.QYAux.ParamByName('NFC_SERIE').AsInteger             :=1;
      DM.QYAux.ParamByName('NFC_STATUS').AsString             :=Q1.FieldByName('CUP_STATUS').AsString;
      DM.QYAux.ParamByName('NFC_TABELAPRECO').AsString        :='V';
      DM.QYAux.ParamByName('NFC_TIPOATENDIMENTO').AsString    :='1 - OPERACAO PRESENCIAL';
      DM.QYAux.ParamByName('NFC_TIPOCONSUMIDOR').AsString     :='0 - NORMAL';
      DM.QYAux.ParamByName('NFC_TIPOEMISSAO').AsString        :='1 - NORMAL';
      DM.QYAux.ParamByName('NFC_TIPOOPERACAO').AsString       :='1 - OPERACAO INTERNA';
      DM.QYAux.ParamByName('NFC_TOTALPRODUTOS').AsExtended    :=Q1.FieldByName('CUP_TOTALITENS').AsExtended;
      DM.QYAux.ParamByName('NFC_USUARIO').AsString            :=Q1.FieldByName('CUP_USUARIO').AsString;
      DM.QYAux.ParamByName('NFC_VALORRECEBIDO').AsExtended    :=Q1.FieldByName('CUP_VALORTOTAL').AsExtended; //o mesmo.
      DM.QYAux.ParamByName('NFC_VALORTOTAL').AsExtended       :=Q1.FieldByName('CUP_VALORTOTAL').AsExtended;
      DM.QYAux.ParamByName('NFC_VENDA').AsInteger             :=Q1.FieldByName('CUP_VENDA').AsInteger;
      DM.QYAux.ParamByName('NFC_VENDEDOR').AsInteger          :=Q1.FieldByName('CUP_VENDEDOR').AsInteger;
      DM.QYAux.ExecSql;

      DM.TBNfceItens.Close;
      DM.TBNfce.Close;
      DM.TBNfce.ParamByName('codigo').AsInteger:=Q1.FieldByName('CUP_COO').AsInteger;
      DM.TBNfce.Open;
      DM.TBNfceItens.Open;

      //DM.TBNfce.Insert;
      //DM.TBNfceNFC_ACREPORC.Value
//      DM.TBNfceNFC_ACREVALOR.Value      :=Q1.FieldByName('CUP_ACREVALOR').AsExtended;
//      DM.TBNfceNFC_CHAVEACESSO.Value    :=Q1.FieldByName('CUP_CHAVEACESSO').AsString;
//      DM.TBNfceNFC_BAIRRO.Value         :=Q1.FieldByName('CLI_BAIRRO').AsString;
//      DM.TBNfceNFC_CEP.Value            :=Q1.FieldByName('CLI_CEP').AsString;
//      DM.TBNfceNFC_CIDADE.Value         :=Q1.FieldByName('CLI_CIDADE').AsString;
//      DM.TBNfceNFC_CIDADECODIGO.Value   :=Q1.FieldByName('CLI_CIDADECODIGO').AsInteger;
//      DM.TBNfceNFC_CLIENTE.Value        :=Q1.FieldByName('CUP_CLIENTE').AsInteger;
//      DM.TBNfceNFC_CODIGO.Value         :=Q1.FieldByName('CUP_COO').AsInteger; //nao vai no insert... na instrução tem gen_id(gen_nfce,1)...
//      DM.TBNfceNFC_CODIGONUMERICO.Value :=Copy(Q1.FieldByName('CUP_CHAVEACESSO').AsString,36,8);
//      DM.TBNfceNFC_COMISSAO.Value       :=0;
//      DM.TBNfceNFC_COMPLEMENTO.Value    :=Q1.FieldByName('CLI_COMPLEMENTO').AsString;
//      DM.TBNfceNFC_DESCVALOR.Value      :=Q1.FieldByName('CUP_DESCVALOR').AsExtended;
//      DM.TBNfceNFC_DTATUALIZACAO.Value  :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
//      DM.TBNfceNFC_DTCADASTRO.Value     :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
//      DM.TBNfceNFC_DTEMISSAO.Value      :=Q1.FieldByName('CUP_DTEMISSAO').AsDateTime;
//      DM.TBNfceNFC_ENDERECO.Value       :=Q1.FieldByName('CLI_ENDERECO').AsString;
//      DM.TBNfceNFC_ESTADO.Value         :=Q1.FieldByName('CLI_ESTADO').AsString;
//      DM.TBNfceNFC_ESTADOCODIGO.Value   :=Q1.FieldByName('CLI_ESTADOCODIGO').AsInteger;
//      DM.TBNfceNFC_HRATUALIZACAO.Value  :=Q1.FieldByName('CUP_HRATUALIZACAO').AsDateTime;
//      DM.TBNfceNFC_HRCADASTRO.Value     :=Q1.FieldByName('CUP_HRCADASTRO').AsDateTime;
//      DM.TBNfceNFC_NOME.Value           :=Q1.FieldByName('CLI_NOME').AsString;
//      DM.TBNfceNFC_NUMERO.Value         :=Q1.FieldByName('CLI_NUMERO').AsString;
//      DM.TBNfceNFC_PESOBRUTO.Value      :=0;
//      DM.TBNfceNFC_PROTOCOLO.Value      :=Q1.FieldByName('CUP_PROTOCOLO').AsString;
//      DM.TBNfceNFC_PROTOCOLODH.Value    :=Q1.FieldByName('CUP_PROTOCOLODH').AsString;
//      DM.TBNfceNFC_STATUS.Value         :=Q1.FieldByName('CUP_STATUS').AsString;
//      DM.TBNfceNFC_TOTALPRODUTOS.Value  :=Q1.FieldByName('CUP_TOTALITENS').AsExtended;
//      DM.TBNfceNFC_USUARIO.Value        :=Q1.FieldByName('CUP_USUARIO').AsString;
//      DM.TBNfceNFC_VALORRECEBIDO.Value  :=Q1.FieldByName('CUP_VALORTOTAL').AsExtended; //o mesmo.
//      DM.TBNfceNFC_VALORTOTAL.Value     :=Q1.FieldByName('CUP_VALORTOTAL').AsExtended;
//      DM.TBNfceNFC_VENDA.Value          :=Q1.FieldByName('CUP_VENDA').AsInteger;
//      DM.TBNfceNFC_VENDEDOR.Value       :=Q1.FieldByName('CUP_VENDEDOR').AsInteger;
//      DM.TBNfce.Post;
      {$ENDREGION}

      Q2.Close;
      Q2.SQL.Clear;
      Q2.SQL.Add(
        'select CUI_DESCVALOR, CUI_ITEM, CUI_PRODUTO, CUI_QUANTIDADE, CUI_VALORTOTAL, CUI_VALORUNIT, PRO_CEST, '+
        'PRO_CLASSFISCAL, PRO_COMPOEBASEICMS, PRO_COMPOEBASEICMSST, PRO_CONVERSAO, PRO_CSTCOFINS, PRO_CSTICMS, '+
        'PRO_CSTIPI, PRO_CSTPIS, PRO_EXCECAO, PRO_MODICMS, PRO_MODICMSST, PRO_NOME, PRO_ORIGEM, PRO_PESO, '+
        'PRO_PRODUTOREAL, PRO_TIPO, PRO_UNIDADE from CUPOMITENS '+
        'left join PRODUTOS on CUI_PRODUTO=PRO_CODIGO '+
        'where CUI_CUPOM=:codigo order by CUI_CODIGO'
      );
      Q2.ParamByName('codigo').AsInteger:=Q1.FieldByName('CUP_CODIGO').AsInteger;
      Q2.Open;
      Q2.DisableControls;
      while not Q2.Eof do
      begin
        {$REGION 'ITENS DO CUPOM'}
        DM.TBNfceItens.Insert;
        DM.TBNfceItensNCI_ALMOXARIFADO.Value    :=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
        DM.TBNfceItensNCI_CEST.Value            :=Q2.FieldByName('PRO_CEST').AsString;
        DM.TBNfceItensNCI_CLASSFISCAL.Value     :=Q2.FieldByName('PRO_CLASSFISCAL').AsString;
        DM.TBNfceItensNCI_COMPOEBASEICMS.Value  :=Q2.FieldByName('PRO_COMPOEBASEICMS').AsString;
        DM.TBNfceItensNCI_COMPOEBASEICMSST.Value:=Q2.FieldByName('PRO_COMPOEBASEICMSST').AsString;
        DM.TBNfceItensNCI_CONVERSAO.Value       :=Q2.FieldByName('PRO_CONVERSAO').AsExtended;
        DM.TBNfceItensNCI_CSTCOFINS.Value       :=Q2.FieldByName('PRO_CSTCOFINS').AsInteger;
        DM.TBNfceItensNCI_CSTICMS.Value         :=Q2.FieldByName('PRO_CSTICMS').AsInteger;
        DM.TBNfceItensNCI_CSTIPI.Value          :=Q2.FieldByName('PRO_CSTIPI').AsInteger;
        DM.TBNfceItensNCI_CSTPIS.Value          :=Q2.FieldByName('PRO_CSTPIS').AsInteger;
        DM.TBNfceItensNCI_DESCRICAO.Value       :=Q2.FieldByName('PRO_NOME').AsString;
        DM.TBNfceItensNCI_DESCVALOR.Value       :=Q2.FieldByName('CUI_DESCVALOR').AsInteger;
        DM.TBNfceItensNCI_EXCECAO.Value         :=Q2.FieldByName('PRO_EXCECAO').AsInteger;
        DM.TBNfceItensNCI_MODICMS.Value         :=Q2.FieldByName('PRO_MODICMS').AsString;
        DM.TBNfceItensNCI_MODICMSST.Value       :=Q2.FieldByName('PRO_MODICMSST').AsString;
        DM.TBNfceItensNCI_NOTA.Value            :=DM.TBNfceNFC_CODIGO.Value;
        DM.TBNfceItensNCI_SEQUENCIA.Value       :=Q2.FieldByName('CUI_ITEM').AsInteger;
        DM.TBNfceItensNCI_ORIGEM.Value          :=Q2.FieldByName('PRO_ORIGEM').AsString;
        DM.TBNfceItensNCI_PESO.Value            :=Q2.FieldByName('PRO_PESO').AsExtended;
        DM.TBNfceItensNCI_PESOTOTAL.Value       :=Q2.FieldByName('PRO_PESO').AsExtended * Q2.FieldByName('CUI_QUANTIDADE').AsExtended;
        DM.TBNfceItensNCI_PRODUTO.Value         :=Q2.FieldByName('CUI_PRODUTO').AsInteger;
        DM.TBNfceItensNCI_PRODUTOREAL.Value     :=Q2.FieldByName('PRO_PRODUTOREAL').AsInteger;
        DM.TBNfceItensNCI_QUANTIDADE.Value      :=Q2.FieldByName('CUI_QUANTIDADE').AsExtended;
        DM.TBNfceItensNCI_TIPO.Value            :=Q2.FieldByName('PRO_TIPO').AsString;
        DM.TBNfceItensNCI_UNIDADE.Value         :=Q2.FieldByName('PRO_UNIDADE').AsString;
        DM.TBNfceItensNCI_VALORTOTAL.Value      :=Q2.FieldByName('CUI_VALORTOTAL').AsExtended;
        DM.TBNfceItensNCI_VALORUNIT.Value       :=Q2.FieldByName('CUI_VALORUNIT').AsExtended;
        DM.TBNfceItens.Post;
        {$ENDREGION}
        Q2.Next;
      end;
      Q2.EnableControls;
      Q2.Close;

      Q1.Next;
    end;
    DM.TBNfce.EnableControls;
    DM.TBNfceItens.EnableControls;
    Q1.EnableControls;
    Q2.EnableControls;
    Q1.Close;
    Q1.Destroy;
    Q2.Destroy;
    Screen.Cursor:=crDefault;
    MessageDlg('Importação concluída.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfce.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceLoc, FormNfceLoc);
  FormNfceLoc.ShowModal;
  if NfceLoc.Procurar then
  begin
    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=FormNfceLoc.QYNfceNFC_CODIGO.Value;
    DM.TBNfce.Open;

    DM.TBNfceItens.Close;
    DM.TBNfceItens.Open;

    DM.TBNfcePagamentos.Close;
    DM.TBNfcePagamentos.Open;
  end;
  FormNfceLoc.Free;
  FormNfceLoc:=nil;
end;

procedure TFormNfce.LocalizarNotaNaMovimentacaoDoEstoque1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormEstoqueLoc, FormEstoqueLoc);
  FormEstoqueLoc.QYEstoque.SQL.Clear;
  FormEstoqueLoc.QYEstoque.SQL.Add(
    'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
    'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
    'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where EST_NUMDOCTO like '+QuotedStr('NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value)+'/%')+' order by EST_NUMDOCTO, EST_CODIGO desc'
  );
  FormEstoqueLoc.QYEstoque.Open;
  FormEstoqueLoc.ShowModal;
  if EstoqueLoc.Procurar then
  begin
    DM.TBEstoque.Close;
    DM.TBEstoque.ParamByName('codigo').AsInteger:=FormEstoqueLoc.QYEstoqueEST_CODIGO.Value;
    DM.TBEstoque.Open;
    //liberamos o form antes de abrir o outro form.
    FormEstoqueLoc.Free;
    FormEstoqueLoc:=nil;

    Application.CreateForm(TFormEstoque, FormEstoque);
    FormEstoque.ShowModal;
    FormEstoque.Free;
    FormEstoque:=nil;
  end else
  begin
    FormEstoqueLoc.Free;
    FormEstoqueLoc:=nil;
  end;
end;

procedure TFormNfce.LocalizarNotaNoContasaReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormReceberLoc.QYReceber.Open;
  FormReceberLoc.ShowModal;
  if ReceberLoc.Procurar then
  begin
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=FormReceberLoc.QYReceberREE_CODIGO.Value;
    DM.TBReceber.Open;
    //liberamos o form antes de abrir o outro form.
    FormReceberLoc.Free;
    FormReceberLoc:=nil;

    Application.CreateForm(TFormReceber, FormReceber);
    FormReceber.ShowModal;
    FormReceber.Free;
    FormReceber:=nil;
  end else
  begin
    FormReceberLoc.Free;
    FormReceberLoc:=nil;
  end;
end;

procedure TFormNfce.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.SalvarPDFDANFCEComo1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');

  SaveDialog1.DefaultExt:='*.PDF';
  SaveDialog1.Filter:='Arquivo .PDF|*.pdf';
  SaveDialog1.Title:='Salvar em PDF o DANFCE desta NFCe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    Application.CreateForm(TFormNfceFast, FormNfceFast);
    FormNfceFast.GerarDANFCE(DM.TBNfceNFC_CODIGO.Value,'Via Consumidor',False,True,SaveDialog1.FileName);
    FormNfceFast.Free;
    FormNfceFast:=nil;
  end;
end;

procedure TFormNfce.SalvarZIPXMLsComo1Click(Sender: TObject);
var A,M,D: Word;
  Zip: TZipFile;
  BaseDir, SearchMask: string;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DM.TBNfCeNFC_STATUS.Value='A','NFCe não finalizada, cancelada ou inutilizada.');

  SaveDialog1.DefaultExt:='*.ZIP';
  SaveDialog1.Filter:='Arquivo .ZIP|*.zip';
  SaveDialog1.Title:='Salvar em ZIP os XMLs desta NFCe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)),'O repositório desta NFCe não foi localizado.');

    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+IntToStr(A)+'\'+IntToStr(M));

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      SearchMask := TPath.Combine(BaseDir, DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.*');
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCancNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfceNFC_CHAVEACESSO.Value+'-procCancNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procInutNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormNfce.TotalQuantidade1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NCI_QUANTIDADE) as QTDE from NFCEITENS where NCI_NOTA=:nota');
  DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  DM.QYAux.Open;
  MessageDlg('A quantidade total é: '+DM.QYAux.FieldByName('QTDE').AsString,mtInformation,[mbOk],0);
  DM.QYAux.Close;
end;

procedure TFormNfce.NFCePorStatus1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=0;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.PngBitBtn5Click(Sender: TObject);
begin
  TotalQuantidade1.Click;
end;

procedure TFormNfce.PngBitBtn6Click(Sender: TObject);
begin
  Reordenar1.Click;
end;

procedure TFormNfce.NFCeOrdenadoPorCodigo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=1;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.InutilizarNFCe1Click(Sender: TObject);
var A,M,D: Word;
  Pasta: String;
  F: TextFile;
begin
  {$REGION 'Checagens iniciais'}
  AbortIf(not DM.EmissaoOnline,'Só é possível enviar a NFCe em modo ONLINE.');
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value<>'A','A NFCe selecionada não está em aberto.');
  {$ENDREGION}

  Memo1.Lines.Clear;
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
      A,
      DM.TBNfceNFC_MODELO.Value,
      DM.TBNfceNFC_SERIE.Value,
      DM.TBNfceNFC_CODIGO.Value,
      DM.TBNfceNFC_CODIGO.Value
    );
  except on E:Exception do
    //faz nada... try except só pra nao parar o loop.
    Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' - ERRO: '+E.Message);
  end;

  if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=102 then //inutilização ok.
  begin
    {$REGION 'Inutilizacao OK - grava arquivo, atualiza status e protocolo e loga.'}
    Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' - OK');
    AssignFile(F,Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.xml');
    Rewrite(F);
    Write(F,DM.ACBrNFe1.WebServices.Inutilizacao.XML_ProcInutNFe);
    CloseFile(F);

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCE set NFC_PROTOCOLOINUT=:protocolo, NFC_PROTOCOLOINUTDH=:protocolodh, NFC_STATUS=:status where NFC_CODIGO=:codigo');
    DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
    DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;
    DM.QYAux.ParamByName('status').AsString:='I';
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;

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
    {$ENDREGION}
  end else
  if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=241 then //Rejeicao: Um numero da faixa ja foi utilizado.
  begin
    {$REGION 'Número na faixa já utilizado.'}
    //altera para pendente se já foi utilizado
    Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' - ERRO: (cStat: '+DM.ACBrNFe1.WebServices.Inutilizacao.cStat.ToString+') '+DM.ACBrNFe1.WebServices.Inutilizacao.xMotivo);
    Memo1.Lines.Add('Consulte a NFCe pela chave de acesso. '+DM.TBNfceNFC_CHAVEACESSO.Value);
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_CONTINGENCIA=:contingencia where NFC_CODIGO=:codigo');
    DM.QYAux.ParamByName('status').AsString:='A';
    DM.QYAux.ParamByName('contingencia').AsString:='P';
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;
    {$ENDREGION}
  end else
  if DM.ACBrNFe1.WebServices.Inutilizacao.cStat=563 then //ja existe pedido de inutilizacao.
  begin
    {$REGION 'Inutilização já OK.'}
    Memo1.Lines.Add('Inutilização de NFCe '+DM.TBNfceNFC_CODIGO.Value.ToString+' já inutilizada.');
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCE set NFC_PROTOCOLOINUT=:protocolo, NFC_PROTOCOLOINUTDH=:protocolodh, NFC_STATUS=:status where NFC_CODIGO=:codigo');
    DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
    DM.QYAux.ParamByName('protocolodh').AsDateTime:=DM.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;
    DM.QYAux.ParamByName('status').AsString:='I';
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;
    AssignFile(F,Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procInutNFCe.xml');
    Rewrite(F);
    Write(F,DM.ACBrNFe1.WebServices.Inutilizacao.XML_ProcInutNFe);
    CloseFile(F);
    {$ENDREGION}
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
  end;
end;

procedure TFormNfce.NFCeComItens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=2;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.NFCePorCFOP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=3;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.NFCePorCFOPDosItens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=4;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.VerificacaoDeNumeracao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=5;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.VerificaodosXMLs1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=6;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.IncluirItem1Click(Sender: TObject);
begin
  MessageDlg('Funcionalidade não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfce.InformarProtocoloDataEHoraDeAutorizacao1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma NFCe selecionada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value='F','Esta NFCe já foi finalizada.');
  AbortIf(DM.TBNfceNFC_STATUS.Value='C','Esta NFCe já está cancelada.');
  AbortIf((DM.TBNfceNFC_STATUS.Value='A') and (DM.TBNfceNFC_PROTOCOLO.Value<>''),'Esta NFCe já tem o protocolo informado.');

  Application.CreateForm(TFormNfceProtocolo, FormNfceProtocolo);
  FormNfceProtocolo.ShowModal;
  FormNfceProtocolo.Free;
  FormNfceProtocolo:=nil;
end;

procedure TFormNfce.InutilizacoesNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceRel, FormNfceRel);
  FormNfceRel.ComboBox1.Enabled:=False;
  FormNfceRel.ComboBox1.ItemIndex:=7;
  FormNfceRel.ComboBox1Change(Self);
  FormNfceRel.ShowModal;
  FormNfceRel.Free;
  FormNfceRel:=nil;
end;

procedure TFormNfce.ZiparArquivosXML1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZiparDFE, FormZiparDFE);
  FormZiparDFE.CheckBox2.Checked:=True;
  FormZiparDFE.ShowModal;
  FormZiparDFE.Free;
  FormZiparDFE:=nil;
end;

initialization
  RegisterClass(TFormNfce);

finalization
  UnRegisterClass(TFormNfce);

end.
