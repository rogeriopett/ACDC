unit VendasImportarXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Datasnap.DBClient,
  System.ImageList, Vcl.ImgList, PngImageList, ACBrBase, ACBrDFe, ACBrNFe, pcnConversao,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFormVendasImportarXML = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    ACBrNFe1: TACBrNFe;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AbrirXML1: TMenuItem;
    AtualizarPedidoConformeXML1: TMenuItem;
    N2: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    FileOpenDialog1: TFileOpenDialog;
    TBNF: TClientDataSet;
    DSNF: TDataSource;
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
    TBNFItensNFI_CODIGO: TStringField;
    TBNFItensNFI_CODIGOBARRAS: TStringField;
    TBNFItensNFI_CODIGOLOCAL: TIntegerField;
    TBNFItensNFI_COMPLEMENTO: TStringField;
    TBNFItensNFI_COMPOEBASEICMS: TStringField;
    TBNFItensNFI_CSTCOFINS: TIntegerField;
    TBNFItensNFI_CSTICMS: TIntegerField;
    TBNFItensNFI_CSTIPI: TIntegerField;
    TBNFItensNFI_CSTPIS: TIntegerField;
    TBNFItensNFI_DESCPORC: TFloatField;
    TBNFItensNFI_DESCVALOR: TCurrencyField;
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
    DSNFItens: TDataSource;
    PopupMenu1: TPopupMenu;
    InformarOProdutoLocal1: TMenuItem;
    PopupMenu2: TPopupMenu;
    CodigoDoProdutoNosFornecedores1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    CadastrarProdutoSelecionado2: TMenuItem;
    TBNFItensNFI_TIPOISS: TStringField;
    TBNFItensNFI_INCENTIVOISS: TStringField;
    TBNFItensNFI_INDICADORISS: TStringField;
    TBNFItensNFI_CLASSFISCAL: TStringField;
    TBNFItensNFI_EXCECAO: TIntegerField;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Label16: TLabel;
    Label18: TLabel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Label17: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    TBNFItensNFI_NOME: TStringField;
    Bevel1: TBevel;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    CadastrarProdutoSelecionado1: TMenuItem;
    CadastrarTodosOsProdutos1: TMenuItem;
    N4: TMenuItem;
    TBNFItensNFI_SEQUENCIA: TIntegerField;
    Label10: TLabel;
    procedure AbrirXML1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure AtualizarPedidoConformeXML1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CodigoDoProdutoNosFornecedores1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure InformarOProdutoLocal1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CadastrarProdutoSelecionado1Click(Sender: TObject);
    procedure CadastrarTodosOsProdutos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CadastrarProduto;
  public
    { Public declarations }
    Fechar: Boolean;
  end;

var
  FormVendasImportarXML: TFormVendasImportarXML;

implementation
uses DataMod, Funcoes1, Produtos, ProdutosCodigos, ProdutosLoc, DataModSearch,
  VendasItens, Fornecedores, Clientes, FuncoesFirenet, DataMod2,
  pcnConversaoNFe;
{$R *.dfm}

procedure TFormVendasImportarXML.AbrirXML1Click(Sender: TObject);
var I: Integer;
  S: String;
begin
  if FileOpenDialog1.Execute then
  begin
    TBNFItens.EmptyDataSet;
    Label2.Caption:=FileOpenDialog1.FileName;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(FileOpenDialog1.FileName);
    Label4.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label6.Caption:=S;
    Label8.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;

    //tenta localizar o emitente da NFe no cadastro de clientes.
    //se nao encontra, cadastra... se encontra, então localiza ele na tabela de clientes.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) CLI_CODIGO, CLI_NOME, CLI_CNPJ from CLIENTES where CLI_CNPJ=:cnpj');
    DM.QYAux.ParamByName('cnpj').AsString:=Label6.Caption;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('CLI_NOME').AsString='' then
    begin
      S:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
      Insert('-',S,6);
      DM.TBClientes.Insert;
      DM.TBClientesCLI_BAIRRO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
      DM.TBClientesCLI_CEP.Value:=S; //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
      DM.TBClientesCLI_CIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
      DM.TBClientesCLI_CIDADECODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      DM.TBClientesCLI_CNPJ.Value:=Label6.Caption;
      DM.TBClientesCLI_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
      DM.TBClientesCLI_ENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
      DM.TBClientesCLI_ESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      DM.TBClientesCLI_ESTADOCODIGO.Value:=GetUFCode(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
      //DM.TBClientesCLI_FONE1.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
      DM.TBClientesCLI_IE.Value:=Label8.Caption;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM<>'' then
      DM.TBClientesCLI_IM.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM);
      DM.TBClientesCLI_NOME.Value:=Label4.Caption;
      DM.TBClientesCLI_NUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
      DM.TBClientesCLI_PAIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
      DM.TBClientesCLI_PAISCODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
      DM.TBClientes.Post;
      MessageDlg('O emitente deste XML foi cadastrado como Cliente.',mtInformation,[mbOk],0);
    end else
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CLI_CODIGO').AsInteger;
      DM.TBClientes.Open;
    end;
    DM.QYAux.Close;

    //checa se o emitente é o mesmo selecionado no pedido.
    if LimparFormatacao(DM.TBVendasVED_CNPJ.Value)<>ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF then
    begin
      MessageDlg('O emitente do XML não é o mesmo do pedido de venda selecionado.',mtError,[mbOk],0);
      Fechar:=True;
      Close;
      Exit;
    end;

    //tenta localizar o emitente da NFe no cadastro de fornecedores. Os produtos se referenciam ao fornecedor.
    //se nao encontra, cadastra... se encontra, então localiza ele na tabela de fornecedores.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) FOR_CODIGO, FOR_NOME, FOR_CNPJ from FORNECEDORES where FOR_CNPJ=:cnpj');
    DM.QYAux.ParamByName('cnpj').AsString:=Label6.Caption;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('FOR_NOME').AsString='' then
    begin
      S:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
      Insert('-',S,6);
      DM.TBFornecedores.Insert;
      DM.TBFornecedoresFOR_BAIRRO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
      DM.TBFornecedoresFOR_CEP.Value:=S; //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
      DM.TBFornecedoresFOR_CIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
      DM.TBFornecedoresFOR_CIDADECODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      DM.TBFornecedoresFOR_CNPJ.Value:=Label6.Caption;
      DM.TBFornecedoresFOR_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
      DM.TBFornecedoresFOR_ENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
      DM.TBFornecedoresFOR_ESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=GetUFCode(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
      //DM.TBFornecedoresFOR_FONE1.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
      DM.TBFornecedoresFOR_IE.Value:=Label8.Caption;
      //if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM<>'' then
      //nao tem. DM.TBFornecedoresFOR_IM.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM);
      DM.TBFornecedoresFOR_NOME.Value:=Label4.Caption;
      DM.TBFornecedoresFOR_NUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
      DM.TBFornecedoresFOR_PAIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
      DM.TBFornecedoresFOR_PAISCODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
      DM.TBFornecedores.Post;
      MessageDlg('O emitente deste XML foi cadastrado como Fornecedor.',mtInformation,[mbOk],0);
    end else
    begin
      DM.TBFornecedores.Close;
      DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('FOR_CODIGO').AsInteger;
      DM.TBFornecedores.Open;
    end;
    DM.QYAux.Close;

    //lista os produtos.
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
      //TBNFItensNFI_BASEICMSRED.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.???
      TBNFItensNFI_BASEICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBCST;
      TBNFItensNFI_BASEIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.vBC;
      TBNFItensNFI_BASEISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vBC;
      TBNFItensNFI_BASEPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.vBC;
      TBNFItensNFI_BASEPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.vBc;
      TBNFItensNFI_CEST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.CEST;
      TBNFItensNFI_CFOP.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.CFOP);
      TBNFItensNFI_CLASSFISCAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.NCM;
      TBNFItensNFI_CODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cProd;
      TBNFItensNFI_CODIGOBARRAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cEan;
      TBNFItensNFI_CODIGOLOCAL.Value:=0; //tenta localizar este código na tabela local... ver mais abaixo.
      TBNFItensNFI_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].infAdProd; //é esse?
      TBNFItensNFI_COMPOEBASEICMS.Value:='S';

      if CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST)='' then
      TBNFItensNFI_CSTCOFINS.Value:=0 else
      TBNFItensNFI_CSTCOFINS.Value:=StrToInt(CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST));

      if CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST)='' then
      TBNFItensNFI_CSTICMS.Value:=0 else
      TBNFItensNFI_CSTICMS.Value:=StrToInt(CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST));

      if CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST)='' then
      TBNFItensNFI_CSTIPI.Value:=0 else
      TBNFItensNFI_CSTIPI.Value:=StrToInt(CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST));

      if CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST)='' then
      TBNFItensNFI_CSTPIS.Value:=0;
      TBNFItensNFI_CSTPIS.Value:=StrToInt(CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST));

      //TBNFItensNFI_DESCPORC.Value:=
      TBNFItensNFI_DESCVALOR.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vDesc;

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI<>'' then
      TBNFItensNFI_EXCECAO.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI);

      TBNFItensNFI_FCI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nFCI;

      if indIncentivoToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.indIncentivo)='1' then
      TBNFItensNFI_INCENTIVOISS.Value:='S' else
      TBNFItensNFI_INCENTIVOISS.Value:='N';

      if ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib)<>'' then
      begin
        case StrToInt(ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib)) of
          1: TBNFItensNFI_INDICADORISS.Value:='1 - EXIGIVEL';
          2: TBNFItensNFI_INDICADORISS.Value:='2 - NAO INCIDENCIA';
          3: TBNFItensNFI_INDICADORISS.Value:='3 - ISENCAO';
          4: TBNFItensNFI_INDICADORISS.Value:='4 - EXPORTACAO';
          5: TBNFItensNFI_INDICADORISS.Value:='5 - IMUNIDADE';
          6: TBNFItensNFI_INDICADORISS.Value:='6 - EXIGIBILIDADE SUSPENSA POR DECISAO JUDICIAL';
          7: TBNFItensNFI_INDICADORISS.Value:='7 - EXIGIBILIDADE SUSPENSA POR PROCESSO ADM.';
        end;
      end else
      TBNFItensNFI_INDICADORISS.Value:='3 - ISENCAO'; //padrão.

      //TBNFItensNFI_INFOADICIONAL.Value:=

      if modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)<>'' then
      begin
        case StrToInt(modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)) of
          0: TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
          1: TBNFItensNFI_MODICMS.Value:='1 - PAUTA (VALOR)';
          2: TBNFItensNFI_MODICMS.Value:='2 - PRECO TABELADO MAXIMO (VALOR)';
          3: TBNFItensNFI_MODICMS.Value:='3 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)'; //padrão.

      if modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)<>'' then
      begin
        case StrToInt(modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)) of
          0: TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
          1: TBNFItensNFI_MODICMSST.Value:='1 - LISTA NEGATIVA (VALOR)';
          2: TBNFItensNFI_MODICMSST.Value:='2 - LISTA POSITIVA (VALOR)';
          3: TBNFItensNFI_MODICMSST.Value:='3 - LISTA NEUTRA (VALOR)';
          4: TBNFItensNFI_MODICMSST.Value:='4 - MARGEM VALOR AGREGADO (%)';
          5: TBNFItensNFI_MODICMSST.Value:='5 - PAUTA (VALOR)';
          6: TBNFItensNFI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';

      TBNFItensNFI_NOME.Value:=Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.xProd,1,100);

      if OrigToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)<>'' then
      begin
        case StrToInt(OrigToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)) of
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
      end else
      TBNFItensNFI_ORIGEM.Value:='0 - NACIONAL';

      //TBNFItensNFI_PESO.Value:= nao tem?!
      //TBNFItensNFI_PESOTOTAL.Value:=
      TBNFItensNFI_QUANTIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.qCom;
      TBNFItensNFI_SEQUENCIA.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nItem;
      TBNFItensNFI_TEMNOPEDIDO.Value:='N';
      TBNFItensNFI_TIPO.Value:='P'; //produto.
      TBNFItensNFI_TIPOISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cServico;

      //verifica se existe a unidade cadastrada.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select count(*) as QTDE from UNIDADES where UNI_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('QTDE').AsInteger=0 then
      begin
        DM2.TBUnidades.Insert;
        DM2.TBUnidadesUNI_CODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
        DM2.TBUnidadesUNI_DESCRICAO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
        DM2.TBUnidades.Post;
      end;
      DM.QYAux.Close;
      TBNFItensNFI_UNIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
      //...

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
      //TBNFItensNFI_VALORTOTALBRUTO.Value:=
      TBNFItensNFI_VALORTRIBUTOS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.vTotTrib;
      TBNFItensNFI_VALORUNIT.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom;

      //tenta localizar algum código do produto.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
      DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
      DM.QYAux.ParamByName('produto_fornecedor').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;
      DM.QYAux.Open;
      DM.QYAux.FetchAll;
      if DM.QYAux.RecordCount=1 then
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      DM.QYAux.Close;
      //...

      //se achou um codigo local e encontrou no pedido, informa que item está contido no pedido.
      if TBNFItensNFI_CODIGOLOCAL.Value<>0 then
      if DM.TBVendasItens.Locate('VEI_PRODUTO',TBNFItensNFI_CODIGOLOCAL.Value,[]) then
      TBNFItensNFI_TEMNOPEDIDO.Value:='S';

      TBNFItens.Post;
    end;
  end else
  Fechar:=True;
end;

procedure TFormVendasImportarXML.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendasImportarXML.AtualizarPedidoConformeXML1Click(Sender: TObject);
var LocalZero: Boolean;
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum dado disponível para atualizar.');

  if MessageDlg('Atualizar o pedido conforme o XML?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    LocalZero:=False;
    TBNFItens.First;
    TBNFItens.DisableControls;
    Application.CreateForm(TFormVendasItens, FormVendasItens);
    while not TBNFItens.Eof do
    begin
      //existe um codigo local e tem no pedido, então apenas atualiza o item no pedido.
      if (TBNFItensNFI_CODIGOLOCAL.Value<>0) and (TBNFItensNFI_TEMNOPEDIDO.Value='S') then
      begin
        if DM.TBVendasItens.Locate('VEI_PRODUTO',TBNFItensNFI_CODIGOLOCAL.Value,[]) then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
          DM.TBProdutos.Open;

          DM.TBVendasItens.Edit;
          {$REGION 'Atualiza campos'}
          DM.TBVendasItensVEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
          DM.TBVendasItensVEI_PRODUTO.Value:=TBNFItensNFI_CODIGOLOCAL.Value;
          DM.TBVendasItensVEI_QUANTIDADE.Value:=TBNFItensNFI_QUANTIDADE.Value;
          DM.TBVendasItensVEI_UNIDADE.Value:=TBNFItensNFI_UNIDADE.Value;
          DM.TBVendasItensVEI_VALORTOTAL.Value:=TBNFItensNFI_VALORTOTAL.Value;
          DM.TBVendasItensVEI_VALORTOTALBRUTO.Value:=TBNFItensNFI_VALORTOTAL.Value;
          DM.TBVendasItensVEI_VALORUNIT.Value:=TBNFItensNFI_VALORUNIT.Value;
          {$ENDREGION}
          DM.TBVendasItens.Post;
        end;
      end;

      //existe um codigo local mas NÃO tem no pedido, então insere o item no pedido.
      if (TBNFItensNFI_CODIGOLOCAL.Value<>0) and (TBNFItensNFI_TEMNOPEDIDO.Value='N') then
      begin
        //localiza o item.
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
        DM.TBProdutos.Open;

        //insere o novo item.
        DM.TBVendasItens.Insert;
        {$REGION 'Preenche campos'}
        FormVendasItens.SelecionarProduto;
        DM.TBVendasItensVEI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
        DM.TBVendasItensVEI_QUANTIDADE.Value:=TBNFItensNFI_QUANTIDADE.Value;
        DM.TBVendasItensVEI_VALORUNIT.Value:=TBNFItensNFI_VALORUNIT.Value;
        {$ENDREGION}
        DM.TBVendasItens.Post;

        //atualiza o campo "tem no pedido".
        TBNFItens.Edit;
        TBNFItensNFI_TEMNOPEDIDO.Value:='S';
        TBNFItens.Post;
      end;

      //codigo local igual a zero, não processa, pois não sabemos qual o produto relacionado.
      if TBNFItensNFI_CODIGOLOCAL.Value=0 then
      LocalZero:=True;
      //...
      TBNFItens.Next;
    end;
    TBNFItens.EnableControls;
    FormVendasItens.Destroy;
    FormVendasItens:=nil;

    //atualiza demais campos da capa.
    DM.TBVendas.Edit;
    DM.TBVendas.Post; //faz disparar os eventos para calculo dos totais.
    //...

    Screen.Cursor:=crDefault;
    if LocalZero then
    MessageDlg('Atualização feita com sucesso, mas existem produtos no XML que não foram encontrados no cadastro de produtos.'+#13#10+'Verifique os itens com "Produto Local" igual a zero.',mtWarning,[mbOk],0) else
    MessageDlg('Atualização feita com sucesso.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormVendasImportarXML.CadastrarProduto;
begin
  DM.TBProdutos.Insert;
  DM.TBProdutosPRO_ALIQCOFINS.Value:=TBNFItensNFI_ALIQCOFINS.Value; // 0;
  DM.TBProdutosPRO_ALIQCOFINSST.Value:=TBNFItensNFI_ALIQCOFINSST.Value; // 0;
  DM.TBProdutosPRO_ALIQICMS.Value:=TBNFItensNFI_ALIQICMS.Value; // 0;
  DM.TBProdutosPRO_ALIQICMSADICST.Value:=TBNFItensNFI_ALIQICMSADICST.Value; // 0;
  DM.TBProdutosPRO_ALIQICMSST.Value:=TBNFItensNFI_ALIQICMSST.Value; // 0;
  DM.TBProdutosPRO_ALIQICMSRED.Value:=TBNFItensNFI_ALIQICMSRED.Value; //0;
  DM.TBProdutosPRO_ALIQIPI.Value:=TBNFItensNFI_ALIQIPI.Value; //0;
  DM.TBProdutosPRO_ALIQISS.Value:=TBNFItensNFI_ALIQISS.Value; //0;
  DM.TBProdutosPRO_ALIQPIS.Value:=TBNFItensNFI_ALIQPIS.Value; // 0;
  DM.TBProdutosPRO_ALIQPISST.Value:=TBNFItensNFI_ALIQPISST.Value; //0;
  DM.TBProdutosPRO_ALIQOUTROS.Value:=0;
  DM.TBProdutosPRO_ATUALIZAR.Value:='S';
  DM.TBProdutosPRO_ATUALIZATABELA.Value:='S';
  DM.TBProdutosPRO_CEST.Value:=TBNFItensNFI_CEST.Value;
  DM.TBProdutosPRO_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
  DM.TBProdutosPRO_CFOPFORA.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value;
  DM.TBProdutosPRO_CLASSFISCAL.Value:=TBNFItensNFI_CLASSFISCAL.Value; // IntToStr(DM.TBParametrosPAR_CLASSFISCALPADRAO.Value);
  //DM.TBProdutosPRO_CODIGO.Value:= //X.
  if TBNFItensNFI_CODIGOBARRAS.Value<>'SEM GTIN' then
  DM.TBProdutosPRO_CODIGOBARRAS.Value:=TBNFItensNFI_CODIGOBARRAS.Value;
  DM.TBProdutosPRO_CODIGOFAB.Value:=TBNFItensNFI_CODIGO.Value;
  DM.TBProdutosPRO_COMISSAO.Value:=0;
  DM.TBProdutosPRO_COMPOEBASEICMS.Value:=TBNFItensNFI_COMPOEBASEICMS.Value; //'S';
  DM.TBProdutosPRO_COMPOEBASEICMSST.Value:='N';
  DM.TBProdutosPRO_COMPOSTO.Value:='N';
  DM.TBProdutosPRO_CONVERSAO.Value:=1;
  DM.TBProdutosPRO_CSTCOFINS.Value:=TBNFItensNFI_CSTCOFINS.Value; // DM.TBParametrosPAR_CSTCOFINSPADRAO.Value;
  DM.TBProdutosPRO_CSTICMS.Value:=TBNFItensNFI_CSTICMS.Value; //DM.TBParametrosPAR_CSTICMSPADRAO.Value;
  DM.TBProdutosPRO_CSTIPI.Value:=TBNFItensNFI_CSTIPI.Value; // DM.TBParametrosPAR_CSTIPIPADRAO.Value;
  DM.TBProdutosPRO_CSTPIS.Value:=TBNFItensNFI_CSTPIS.Value; // DM.TBParametrosPAR_CSTPISPADRAO.Value;
  DM.TBProdutosPRO_DESCMAX.Value:=DM.TBParametrosPAR_DESCMAXPADRAO.Value;
  DM.TBProdutosPRO_DTCADASTRO.Value:=DM.ServerDate;
  DM.TBProdutosPRO_ESTOQUEMIN.Value:=0;
  DM.TBProdutosPRO_ESTOQUEMAX.Value:=0;
  DM.TBProdutosPRO_ESTOQUEATUAL.Value:=0; //quantidade inicial.
  DM.TBProdutosPRO_EXCECAO.Value:=TBNFItensNFI_EXCECAO.Value; // 0;
  DM.TBProdutosPRO_FAMILIA.Value:=DM.TBParametrosPAR_PROFAMILIA.Value;
  DM.TBProdutosPRO_FORNECEDOR.Value:=DM.TBParametrosPAR_PROFORNECEDOR.Value;
  DM.TBProdutosPRO_GENERO.Value:=96;
  DM.TBProdutosPRO_GRUPO.Value:=DM.TBParametrosPAR_PROGRUPO.Value;
  DM.TBProdutosPRO_INCENTIVOISS.Value:=TBNFItensNFI_INCENTIVOISS.Value; //'S';
  DM.TBProdutosPRO_INDICADORISS.Value:=TBNFItensNFI_INDICADORISS.Value; //'3 - ISENCAO'; /X
  DM.TBProdutosPRO_INTERNET.Value:='S';
  DM.TBProdutosPRO_MARCA.Value:=DM.TBParametrosPAR_PROMARCA.Value;
  DM.TBProdutosPRO_MARGEM.Value:=DM.TBParametrosPAR_MARGEMPADRAO.Value;
  DM.TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
  DM.TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
  DM.TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
  DM.TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
  DM.TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
  DM.TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
  DM.TBProdutosPRO_MARKUP.Value:=1;
  DM.TBProdutosPRO_MARKUPCODIGO.Value:=0;
  DM.TBProdutosPRO_MODICMS.Value:=TBNFItensNFI_MODICMS.Value;  //'0 - MARGEM VALOR AGREGADO (%)';
  DM.TBProdutosPRO_MODICMSST.Value:=TBNFItensNFI_MODICMSST.Value; // '0 - PRECO TABELADO OU MAXIMO SUGERIDO';
  DM.TBProdutosPRO_NOME.Value:=TBNFItensNFI_NOME.Value;
  DM.TBProdutosPRO_OFERTA.Value:='N';
  DM.TBProdutosPRO_ORIGEM.Value:=TBNFItensNFI_ORIGEM.Value; // '0 - NACIONAL';
  DM.TBProdutosPRO_PESAVEL.Value:='N';
  DM.TBProdutosPRO_PESO.Value:=0;
  DM.TBProdutosPRO_PRECOCUSTO.Value:=TBNFItensNFI_VALORUNIT.Value; //custo = valor unitário. 0;
  DM.TBProdutosPRO_PRECOCUSTOCOMP.Value:=0;
  DM.TBProdutosPRO_PRECOVENDA.Value:=0;
  DM.TBProdutosPRO_PRODUCAO.Value:='T';
  DM.TBProdutosPRO_PRODUTOREAL.Value:=0;
  DM.TBProdutosPRO_STATUS.Value:='A';
  DM.TBProdutosPRO_SUBSTITUICAOTRIB.Value:='N';
  DM.TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
  DM.TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
  DM.TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
  DM.TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
  DM.TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
  DM.TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
  DM.TBProdutosPRO_TIPO.Value:='P';
  DM.TBProdutosPRO_TIPOITEM.Value:='00 - MERCADORIA PARA REVENDA';
  DM.TBProdutosPRO_TROCA.Value:='N';
  DM.TBProdutosPRO_TRIBUTO.Value:='II';
  DM.TBProdutosPRO_UNIDADE.Value:=DM.TBParametrosPAR_PROUNIDADE.Value;
  DM.TBProdutos.Post;

  //cadastra a associação do código do fornecedor com o produto local.
  DM.TBProdutosCodigos.Insert;
  DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=DM.TBFornecedoresFOR_CODIGO.Value;
  DM.TBProdutosCodigosPCO_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=TBNFItensNFI_CODIGO.Value;
  DM.TBProdutosCodigos.Post;

  TBNFItens.Edit;
  TBNFItensNFI_CODIGOLOCAL.Value:=DM.TBProdutosPRO_CODIGO.Value;
  TBNFItens.Post;
end;

procedure TFormVendasImportarXML.CadastrarProdutoSelecionado1Click(Sender: TObject);
begin
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value>0,'Este produto já está cadastrado e tem o código '+TBNFItensNFI_CODIGOLOCAL.Value.ToString);

  if MessageDlg('Deseja cadastrar o produto selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    //mesmo com código local=0 tenta localizar novamente o produto nos códigos dos fornecedores.
    //pode ser que o usuário tenha cadastrado um dos produtos individualmente e o XML contém mais de um produto igual.
    Label10.Caption:='Cadastrando Produto: '+TBNFItensNFI_NOME.Value+'...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
    DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
    DM.QYAux.ParamByName('produto_fornecedor').AsString:=TBNFItensNFI_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.FetchAll;
    if DM.QYAux.RecordCount=0 then
    CadastrarProduto else
    begin
      //só chega aqui se o código local é zero. (if acima).
      TBNFItens.Edit;
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      TBNFItens.Post;
    end;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;
    Label10.Caption:='';
    MessageDlg('Cadastro do produto efetuado.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormVendasImportarXML.CadastrarTodosOsProdutos1Click(Sender: TObject);
var BM: TBookmark;
begin
  if MessageDlg('Deseja cadastrar todos os produtos faltantes no SISTEMA?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBNFItens.First;
    TBNFItens.DisableControls;
    while not TBNFItens.Eof do
    begin
      if TBNFItensNFI_CODIGOLOCAL.Value=0 then
      begin
        //mesmo com código local=0 tenta localizar novamente o produto nos códigos dos fornecedores.
        //pode ser que o usuário tenha cadastrado um dos produtos individualmente e o XML contém mais de um produto igual.
        Label10.Caption:='Cadastrando Produto: '+TBNFItensNFI_NOME.Value+'...';
        Application.ProcessMessages;
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
        DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
        DM.QYAux.ParamByName('produto_fornecedor').AsString:=TBNFItensNFI_CODIGO.Value;
        DM.QYAux.Open;
        DM.QYAux.FetchAll;
        if DM.QYAux.RecordCount=0 then
        CadastrarProduto else
        begin
          //só chega aqui se o código local é zero. (if acima).
          TBNFItens.Edit;
          TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
          TBNFItens.Post;
        end;
        DM.QYAux.Close;
      end;
      TBNFItens.Next;
    end;
    TBNFItens.EnableControls;
    Screen.Cursor:=crDefault;
    Label10.Caption:='';
    MessageDlg('Produtos Cadastrados!',mtInformation,[mbOk],0);
  end;
end;

procedure TFormVendasImportarXML.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormVendasImportarXML.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormVendasImportarXML.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormVendasImportarXML.CodigoDoProdutoNosFornecedores1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBVendasItens.IsEmpty,'Nenhum produto selecionado.');

  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
  DM.TBProdutos.Open;

  //DM.TBProdutosCodigos.Datasource:=DM.DSProdutos;
  Application.CreateForm(TFormProdutosCodigos, FormProdutosCodigos);
  FormProdutosCodigos.ShowModal;
  FormProdutosCodigos.Free;
  FormProdutosCodigos:=nil;
  //DM.TBProdutosCodigos.Datasource:=nil;
end;

procedure TFormVendasImportarXML.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //$8f8fff = vermelho.
  //$7edf71 = verde
  if Column.Field=TBNFItensNFI_CODIGOLOCAL then
  begin
    if TBNFItensNFI_CODIGOLOCAL.Value=0 then
    DBGrid1.Canvas.Brush.Color:=$8f8fff else
    DBGrid1.Canvas.Brush.Color:=$7edf71;

    //DBGrid1.Canvas.Font.Color:=clRed else
    //DBGrid1.Canvas.Font.Color:=clBlack;

    //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;

  if Column.Field=TBNFItensNFI_TEMNOPEDIDO then
  begin
    if TBNFItensNFI_TEMNOPEDIDO.Value='S' then
    DBGrid1.Canvas.Brush.Color:=$7edf71 else
    DBGrid1.Canvas.Brush.Color:=$8f8fff;

    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;

  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormVendasImportarXML.DBGrid2DblClick(Sender: TObject);
begin
  CodigoDoProdutoNosFornecedores1.Click;
end;

procedure TFormVendasImportarXML.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    CodigoDoProdutoNosFornecedores1.Click;
  end;
end;

procedure TFormVendasImportarXML.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasImportarXML.FormCreate(Sender: TObject);
begin
  Label2.Caption:='';
  Label4.Caption:='';
  Label6.Caption:='';
  Label8.Caption:='';
  Label10.Caption:='';
  Fechar:=False;
  FileOpenDialog1.DefaultFolder:=DM.TBParametrosPAR_REPOSITORIONFE.Value;
  AbrirXML1.Click;
end;

procedure TFormVendasImportarXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasImportarXML.InformarOProdutoLocal1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value<>0,'Já foi encontrado um produto associado a este item.');

  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if MessageDlg('Associar o código do fornecedor ('+TBNFItensNFI_CODIGO.Value+') ao produto '+FormProdutosLoc.QYProdutosPRO_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //localiza o produto.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      DM.TBProdutosCodigos.Datasource:=DM.DSProdutos;

      //associa o codigo do XML ao cadastro do produto local.
      //é utilizado o código do forncedor que está no label, pois nesse momento, o usuário pode ter aberto o cadastro de fornecedores e selecionado outro.
      if not DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBFornecedoresFOR_CODIGO.Value,TBNFItensNFI_CODIGO.Value]),[]) then
      begin
        DM.TBProdutosCodigos.Insert;
        DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=DM.TBFornecedoresFOR_CODIGO.Value;
        DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=TBNFItensNFI_CODIGO.Value;
        DM.TBProdutosCodigos.Post;
      end;
      //...

      //atualiza a tabela de itens com o código do produto local. - tenta localizar novamente, se encontrou é pq a inserção acima deu certo.
      if DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBFornecedoresFOR_CODIGO.Value,TBNFItensNFI_CODIGO.Value]),[]) then
      begin
        TBNFItens.Edit;
        TBNFItensNFI_CODIGOLOCAL.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
        if DM.TBComprasItens.Locate('COI_PRODUTO',FormProdutosLoc.QYProdutosPRO_CODIGO.Value,[]) then
        TBNFItensNFI_TEMNOPEDIDO.Value:='S';
        TBNFItens.Post;
      end;
      //...

      DM.TBProdutosCodigos.Datasource:=nil;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
