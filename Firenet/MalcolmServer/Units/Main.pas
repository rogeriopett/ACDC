unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.FileCtrl, PngSpeedButton,
  Vcl.AppEvnts, Vcl.XPMan;

type
  TFormMain = class(TForm)
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Parmetros1: TMenuItem;
    N1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    FileListBox1: TFileListBox;
    FileListBox2: TFileListBox;
    Label6: TLabel;
    Label7: TLabel;
    AtualizarListboxes1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Funes1: TMenuItem;
    GerarArquivos1: TMenuItem;
    ImportarArquivo1: TMenuItem;
    N2: TMenuItem;
    IniciarPararServidor1: TMenuItem;
    LimparLogs1: TMenuItem;
    CheckBox9: TCheckBox;
    SalvarLogsEmArquivo1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Janela1: TMenuItem;
    SempreVisivel1: TMenuItem;
    GerarArquivoParaOBLocoX1: TMenuItem;
    RegistrosBlocoX1: TMenuItem;
    PopupMenu1: TPopupMenu;
    MalcolmFirenetSalc1: TMenuItem;
    Panel1: TPanel;
    Shape1: TShape;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    Label5: TLabel;
    Label11: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    InverterSelecao1: TMenuItem;
    Minimizar1: TMenuItem;
    XPManifest1: TXPManifest;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    Sobre1: TMenuItem;
    Malcolm1: TMenuItem;
    Finalizar1: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure AtualizarListboxes1Click(Sender: TObject);
    procedure GerarArquivos1Click(Sender: TObject);
    procedure ImportarArquivo1Click(Sender: TObject);
    procedure LimparLogs1Click(Sender: TObject);
    procedure IniciarPararServidor1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SalvarLogsEmArquivo1Click(Sender: TObject);
    procedure SempreVisivel1Click(Sender: TObject);
    procedure GerarArquivoParaOBLocoX1Click(Sender: TObject);
    procedure RegistrosBlocoX1Click(Sender: TObject);
    procedure MalcolmFirenetSalc1Click(Sender: TObject);
    procedure InverterSelecao1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure TrayIcon1BalloonClick(Sender: TObject);
    procedure Malcolm1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure FileListBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure AtualizarCamposTabelas;
    procedure GerarArquivoContas(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoClientes(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoCondicoes(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoEstoque(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoProdutos(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoProdutosBlocoX(ECF: Integer; Mes, Ano: Word);
    procedure GerarArquivoTributos(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoUsuarios(var SL: TStringList; CargaInicial: Boolean);
    procedure GerarArquivoUnidades(var SL: TStringList; CargaInicial: Boolean);
    procedure ProcessarArquivo(Arquivo: String);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation
uses DataMod, Funcoes1, Parametros, DateUtils, MesAno, BlocoX;
{$R *.dfm}

procedure TFormMain.GerarArquivoContas(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de contas bancarias');
  Where:='';
  if not CargaInicial then
  Where:='where CON_ATUALIZAR='+QuotedStr('S');
  DM.QYContas.Close;
  DM.QYContas.SQL.Clear;
  DM.QYContas.SQL.Add('select CON_BANCO, CON_CODIGO, BAN_NOME from CONTAS left join BANCOS on CON_BANCO=BAN_CODIGO '+Where+' order by CON_CODIGO');
  DM.QYContas.Open;
  while not DM.QYContas.Eof do
  begin
    S:='1'+AlignText(IntToStr(DM.QYContasCON_CODIGO.Value),'0',2,taRight);
    S:=S+AlignText(IntToStr(DM.QYContasCON_BANCO.Value),' ',3,taLeft);
    S:=S+AlignText(DM.QYContasBAN_NOME.Value,' ',40,taLeft);
    S:=S+AlignText('',' ',52,taLeft);
    S:=S+'X'; //final de linha.
    SL.Add(S);
    DM.QYContas.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYContas.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de contas bancárias');
end;

procedure TFormMain.GerarArquivoClientes(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de clientes');
  Where:='';
  if not CargaInicial then
  Where:='where CLI_ATUALIZAR='+QuotedStr('S');
  DM.QYClientes.Close;
  DM.QYClientes.SQL.Clear;
  DM.QYClientes.SQL.Add('select CLI_BAIRROCOB, CLI_CEPCOB, CLI_CIDADECOB, CLI_CIDADECODIGOCOB, CLI_CNPJCOB, CLI_CODIGO, CLI_COMPLEMENTOCOB, CLI_CPF, '+
                        'CLI_DTATUALIZACAO, CLI_DTCADASTRO, CLI_ENDERECOCOB, CLI_ESTADOCOB, CLI_ESTADOCODIGOCOB, CLI_FANTASIA, CLI_FONE1, CLI_FONE2, '+
                        'CLI_IECOB, CLI_NOME, CLI_NUMEROCOB, CLI_RG, CLI_STATUS, CLI_TIPOPESSOA from CLIENTES '+Where+' order by CLI_CODIGO');
  DM.QYClientes.Open;
  while not DM.QYClientes.Eof do
  begin
    S:='1'+AlignText(IntToStr(DM.QYClientesCLI_CODIGO.Value),'0',9,taRight);
    S:=S+AlignText(DM.QYClientesCLI_FANTASIA.Value,' ',40,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_NOME.Value,' ',40,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_ENDERECOCOB.Value,' ',40,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_BAIRROCOB.Value,' ',20,taLeft);
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_CEPCOB.Value),' ',10,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_CIDADECOB.Value,' ',30,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_ESTADOCOB.Value,' ',2,taLeft);
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_FONE1.Value),' ',14,taLeft);
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_FONE2.Value),' ',14,taLeft);
    if DM.QYClientesCLI_TIPOPESSOA.Value='J' then
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_CNPJCOB.Value),' ',14,taLeft) else
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_CPF.Value),' ',14,taLeft);
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_IECOB.Value),' ',15,taLeft);
    S:=S+'  '+'N'; //código forma de pagamento e N=sem restrição para venda a prazo.
    S:=S+AlignText(IntToStr(DM.QYClientesCLI_CIDADECODIGOCOB.Value),' ',7,taRight);
    S:=S+'         '+'01058'; //código suframa + código do país.
    S:=S+AlignText(LimparFormatacao(DateToStr(Date)),' ',8,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_NUMEROCOB.Value,' ',10,taLeft);
    S:=S+AlignText(DM.QYClientesCLI_COMPLEMENTOCOB.Value,' ',60,taLeft);
    S:=S+AlignText(LimparFormatacao(DM.QYClientesCLI_RG.Value),' ',14,taRight);
    S:=S+'N'; //N=nao caracteriza cliente administradora de cartão.
    S:=S+AlignText('',' ',33,taLeft);
    S:=S+'X'; //final de linha.
    SL.Add(S);
    DM.QYClientes.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYClientes.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de clientes');
end;

procedure TFormMain.GerarArquivoCondicoes(var SL: TStringList; CargaInicial: Boolean);
var S, Dias, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de condições de pagamento');
  Where:='';
  if not CargaInicial then
  Where:=' and CPG_ATUALIZAR='+QuotedStr('S');
  DM.QYCondicoes.Close;
  DM.QYCondicoes.SQL.Clear;
  DM.QYCondicoes.SQL.Add('select CPG_CODIGO, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_MEIOPAGAMENTO, CPG_TOTALPARCELAS from CONDICOES where CPG_CUPOM='+QuotedStr('S')+Where+' order by CPG_CODIGO');
  DM.QYCondicoes.Open;
  while not DM.QYCondicoes.Eof do
  begin
    DM.QYCondicoesItens.Close;
    DM.QYCondicoesItens.ParamByName('codigo').AsInteger:=DM.QYCondicoesCPG_CODIGO.Value;
    DM.QYCondicoesItens.Open;
    DM.QYCondicoesItens.First;
    if DM.QYCondicoesItensCPI_DIAS.Value=0 then //neste momento, sempre vai ter mais de uma parcela.
    begin
      Dias:='01';
      DM.QYCondicoesItens.Next;
    end else
    Dias:=AlignText(IntToStr(DM.QYCondicoesItensCPI_DIAS.Value),'0',2,taRight);

    S:='1'+AlignText(IntToStr(DM.QYCondicoesCPG_CODIGO.Value),'0',2,taRight);
    S:=S+AlignText(DM.QYCondicoesCPG_DESCRICAO.Value,' ',30,taLeft);
    S:=S+AlignText(DM.QYCondicoesCPG_DESCRICAOCUPOM.Value,' ',20,taLeft);
    S:=S+'00000'; //percentual entrada.
    S:=S+AlignText(IntToStr(DM.QYCondicoesCPG_TOTALPARCELAS.Value),'0',2,taRight); //total de parcelas.
    S:=S+'0000000000'; //valor adicional em cada parcela.
    S:=S+Dias; //número de dias primeira cobrança
    S:=S+'1'; //primeiro vencimento: 1-fora o dia da compra, 2-fora a semana, 3-fora a quinzena, 4-fora o mes da compra.
    S:=S+AlignText(IntToStr(DM.QYCondicoesItensCPI_DIAS.Value),'0',2,taRight); //numero de dias demais parcelas.
    S:=S+'0000'; //taxa administrativa.
    S:=S+'10000'; //coeficiente de juros. 10000=nem desconto, nem acrescimo.
    S:=S+AlignText('',' ',9,taLeft); //codigo do cliente a ser cobrado... para administradoras/convenios.
    S:=S+'N'; //forma de pagto por TEF.
    S:=S+'N'; //TEF é TECBAN.
    S:=S+'N'; //TECBAN consulta de cheques.
    S:=S+'N'; //REDECARD.
    S:=S+'N'; //TEF é HIPERCARD.
    S:=S+'N'; //termo de compromisso.//somente para nao-TEF.
    S:=S+AlignText('',' ',12,taLeft); //nome do arquivo texto usado para o campo anterior.
    S:=S+'0'; //num. copias do termo de compromisso.
    S:=S+'N'; //nao solicita cadastrar cheque no ato da venda.
    S:=S+AlignText('',' ',9,taLeft); //codigo da administradora de cartao para o sped.
    S:=S+'N'; //TEF é PRE-AUTORIZACAO.
    S:=S+Copy(DM.QYCondicoesCPG_MEIOPAGAMENTO.Value,1,2);// AlignText('',' ',2,taLeft);  //código da forma de pagamento para NFCe.
    S:=S+AlignText('',' ',74,taLeft); //espaços.
    S:=S+'X'; //final de linha.
    SL.Add(S);
    DM.QYCondicoesItens.Close;
    DM.QYCondicoes.Next;

    //tabela de formas de pagamento da NFC-e.
    //    01=Dinheiro
    //    02=Cheque
    //    03=Cartão de Crédito
    //    04=Cartão de Débito
    //    05=Crédito Loja
    //    10=Vale Alimentação
    //    11=Vale Refeição
    //    12=Vale Presente
    //    13=Vale Combustível
    //    15=Boleto Bancário
    //    16=Depósito Bancário
    //    17=Pagamento Instantâneo (PIX)
    //    18=Transferência bancária, Carteira Digital
    //    19=Programa de fidelidade, Cashback, Crédito Virtual
    //    99=Outros (Esse código de forma de pagto não poderá ser usado a partir de 01/09/2021
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYCondicoes.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de condições de pagamento');
end;

procedure TFormMain.GerarArquivoEstoque(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de estoque');
  Where:='';
  if not CargaInicial then
  Where:=Where+' and PRO_ATUALIZAR='+QuotedStr('S');

  if ProdutosAtivos='S' then
  Where:=Where+' and PRO_STATUS='+QuotedStr('A');

  if ProdutosTipoServico='N' then
  Where:=Where+' and PRO_TIPO='+QuotedStr('P');

  DM.QYEstoqueSaldo.Close;
  DM.QYEstoqueSaldo.SQL.Clear;
  DM.QYEstoqueSaldo.SQL.Add('select PRO_ESTOQUEATUAL, PRO_CODIGO from PRODUTOS '+
                            'where PRO_TIPOITEM='+QuotedStr('00 - MERCADORIA PARA REVENDA')+' '+Where+' order by PRO_CODIGO');
  DM.QYEstoqueSaldo.Open;
  while not DM.QYEstoqueSaldo.Eof do
  begin
    S:='1'+AlignText(IntToStr(DM.QYEstoqueSaldoPRO_CODIGO.Value),'0',7,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYEstoqueSaldoPRO_ESTOQUEATUAL.AsExtended,3)),'0',14,taRight);
    S:=S+AlignText('',' ',177,taLeft);
    S:=S+'X';
    SL.Add(S);
    DM.QYEstoqueSaldo.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYEstoqueSaldo.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de estoque');
end;

procedure TFormMain.GerarArquivoParaOBLocoX1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
  Exit;

  Application.CreateForm(TFormMesAno, FormMesAno);
  FormMesAno.ShowModal;
  if MesAno.ClicouOK then
  begin
    GerarArquivoProdutosBlocoX(1, FormMesAno.ComboBox1.ItemIndex+1, StrToInt(FormMesAno.ComboBox2.Text));
    DM.TBBlocox.Open;
    DM.TBBlocox.Insert;
    DM.TBBlocoxBLX_ANO.Value:=StrToInt(FormMesAno.ComboBox2.Text);
    DM.TBBlocoxBLX_MES.Value:=FormMesAno.ComboBox1.ItemIndex+1;
    DM.TBBlocox.Post;
    DM.TBBlocox.Close;
  end;
  FormMesAno.Free;
  FormMesAno:=nil;
end;

procedure TFormMain.GerarArquivoProdutos(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
  D,M,A: Word;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de produtos');
  Where:='';
  if not CargaInicial then
  Where:=Where+' and PRO_ATUALIZAR='+QuotedStr('S');

  if ProdutosAtivos='S' then
  Where:=Where+' and PRO_STATUS='+QuotedStr('A');

  if ProdutosTipoServico='N' then
  Where:=Where+' and PRO_TIPO='+QuotedStr('P');

  DM.QYProdutos.Close;
  DM.QYProdutos.SQL.Clear;
  DM.QYProdutos.SQL.Add(
    'select PRO_ALIQCOFINS, PRO_ALIQICMS, PRO_ALIQICMSRED, PRO_ALIQIPI, PRO_ALIQPIS, PRO_BENEFICIO, PRO_CEST, PRO_CFOP, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, '+
    'PRO_CODIGOFAB, PRO_CSTICMS, PRO_CSTIPI, coalesce(PRO_CSTPIS,49) as PRO_CSTPIS, PRO_EXCECAO, PRO_GENERO, PRO_NOME, PRO_PESAVEL, PRO_PRODUCAO, PRO_PRECOCUSTO, '+
    'PRO_PRECOVENDA, PRO_STATUS, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM, PRO_TRIBUTO, PRO_UNIDADE from PRODUTOS '+
    'where PRO_TIPOITEM='+QuotedStr('00 - MERCADORIA PARA REVENDA')+' '+Where+' '+
    'order by PRO_CODIGO');
  DM.QYProdutos.Open;
  while not DM.QYProdutos.Eof do
  begin
    if (DM.QYProdutosPRO_CLASSFISCAL.IsNull) or (DM.QYProdutosPRO_CLASSFISCAL.Value='12345678') then
    begin
      Memo1.Lines.Add(DateTimeToStr(Now)+' - O produto '+DM.QYProdutosPRO_CODIGO.Value.ToString+' tem a classificação fiscal inválida.');
      DM.QYProdutos.Next;
      Continue;
    end;
    if (DM.QYProdutosPRO_UNIDADE.IsNull) then
    begin
      Memo1.Lines.Add(DateTimeToStr(Now)+' - O produto '+DM.QYProdutosPRO_CODIGO.Value.ToString+' tem a unidade inválida.');
      DM.QYProdutos.Next;
      Continue;
    end;

    S:='1';
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CODIGO.Value),'0',7,taRight);
    S:=S+AlignText(RemoveAcentos(DM.QYProdutosPRO_NOME.Value),' ',40,taLeft);
    S:=S+AlignText(DM.QYProdutosPRO_UNIDADE.Value,' ',5,taLeft);
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CODIGO.Value),' ',15,taLeft);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYProdutosPRO_PRECOVENDA.AsExtended,2)),'0',12,taRight);

    //código da tabela de tributos.
    if (DM.QYProdutosPRO_TRIBUTO.Value<>'FF') and
       (DM.QYProdutosPRO_TRIBUTO.Value<>'II') and
       (DM.QYProdutosPRO_TRIBUTO.Value<>'NN') and
       (DM.QYProdutosPRO_TRIBUTO.Value<>'FS') and
       (DM.QYProdutosPRO_TRIBUTO.Value<>'IS') and
       (DM.QYProdutosPRO_TRIBUTO.Value<>'NS') then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from TRIBUTOS where TRI_ALIQICMS=:icms and TRI_ALIQIPI=:ipi and TRI_ALIQPIS=:pis and TRI_ALIQCOFINS=:cofins and TRI_CSTPIS=:cst and TRI_SERVICO=:servico');
      DM.QYAux.ParamByName('icms').AsFloat:=DM.QYProdutosPRO_TRIBUTO.AsFloat;
      DM.QYAux.ParamByName('ipi').AsFloat:=DM.QYProdutosPRO_ALIQIPI.AsFloat;
      DM.QYAux.ParamByName('pis').AsFloat:=DM.QYProdutosPRO_ALIQPIS.AsFloat;
      DM.QYAux.ParamByName('cofins').AsFloat:=DM.QYProdutosPRO_ALIQCOFINS.AsFloat;
      DM.QYAux.ParamByName('cst').AsInteger:=DM.QYProdutosPRO_CSTPIS.AsInteger;
      DM.QYAux.ParamByName('servico').AsString:=DM.QYProdutosPRO_TIPO.AsString;
      DM.QYAux.Open;
      if DM.QYAux.RecordCount<=0 then
      begin
        MessageDlg('Tributo do produto '+DM.QYProdutosPRO_CODIGO.Value.ToString+' não encontrado',mtError,[mbOk],0);
        Exit;
      end;
      S:=S+AlignText(DM.QYAux.FieldByName('TRI_CODIGO').Value,'0',2,taRight); //FF, NN, II, NS..., ou aliquota.
      DM.QYAux.Close;
    end else
    S:=S+AlignText(DM.QYProdutosPRO_TRIBUTO.Value,'0',2,taRight); //FF, NN, II, NS..., ou aliquota.

    S:=S+AlignText(DM.QYProdutosPRO_CODIGOBARRAS.Value,' ',13,taRight);
    if DM.QYProdutosPRO_STATUS.Value='A' then S:=S+'S' else S:=S+'N';
    S:=S+'S'; //aceita desconto/acrescimo após o registro do produto no cupom.
    S:=S+'N'; //produto utilizado em postos de combustiveis?.
    S:=S+'N'; //utiliza 3 casas decimais após a vírgula. opcao válida somente para postos e qdo o campo acima está como S.
    S:=S+'S'; //produto fracionável?
    S:=S+DM.QYProdutosPRO_PESAVEL.Value;
    S:=S+'T'; //IAT - indicador de arredondamento ou truncamento. A ou T.
    S:=S+DM.QYProdutosPRO_PRODUCAO.Value;
    S:=S+Copy(DM.QYProdutosPRO_TIPOITEM.Value,1,2);
    S:=S+AlignText(DM.QYProdutosPRO_CLASSFISCAL.Value,' ',9,taLeft);
    if DM.QYProdutosPRO_EXCECAO.Value=0 then S:=S+'   ' else S:=S+AlignText(IntToStr(DM.QYProdutosPRO_EXCECAO.Value),' ',3,taLeft);
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_GENERO.Value),'0',2,taRight);

    if DM.QYProdutosPRO_TIPO.Value='P' then
    S:=S+'    ' else
    S:=S+AlignText(DM.QYProdutosPRO_TIPOISS.Value,'0',4,taRight); //código do serviço.

    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CSTICMS.Value),'0',3,taLeft);
    S:=S+AlignText('',' ',25,taLeft); //referencia estendida.
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CFOP.Value),' ',4,taLeft);
    S:=S+AlignText(DM.QYProdutosPRO_CEST.Value,' ',7,taLeft);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYProdutosPRO_PRECOCUSTO.AsExtended,3)),'0',12,taRight);

    //cbenef.
    S:=S+AlignText(DM.QYProdutosPRO_BENEFICIO.Value,' ',8,taRight);
    if DM.QYProdutosPRO_BENEFICIO.Value='' then
    S:=S+'     ' else
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYProdutosPRO_ALIQICMSRED.AsExtended,2)),'0',5,taRight);

    S:=S+'            '; //12 espaços.
    S:=S+'X';

    //ignorar bloco x, conforme afirmado pelo sebastiao da salc.
    {$REGION 'bloco comentado.'}
    {if GerarBlocoX='S' then
    begin
      //quantidade em estoque no ultimo dia do mes.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE where EST_PRODUTO=:produto and EST_DTCADASTRO <= :data order by EST_CODIGO desc');
      DM.QYAux.ParamByName('produto').AsInteger:=DM.QYProdutosPRO_CODIGO.Value;
      DM.QYAux.ParamByName('data').AsDate:=UltimoDia(IncMonth(Date,-1)); //ultimo dia do mes passado.
      DM.QYAux.Open;
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('EST_ESTOQUEPOSTERIOR').AsExtended,3)),'0',12,taRight);
      //S:=S+'            ';
      DM.QYAux.Close;

      //quantidade adquirida no mes.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select sum(COI_QUANTIDADE) as QUANTIDADE, sum(COI_VALORTOTAL) as VALORTOTAL, sum(COI_BASEICMSST) as BASEICMSST, '+
                       'sum(COI_VALORICMS) as VALORICMS, sum(COI_VALORICMSST) as VALORICMSST from COMPRASITENS '+
                       'left join COMPRAS on COI_COMPRA=COM_CODIGO '+
                       'where COM_NOTADATA between :datainicial and :datafinal and COM_STATUS=''F'' and COI_PRODUTO=:produto');
      DM.QYAux.ParamByName('produto').AsInteger:=DM.QYProdutosPRO_CODIGO.Value;
      DM.QYAux.ParamByName('datainicial').AsDate:=PrimeiroDia(IncMonth(Date,0-1));
      DM.QYAux.ParamByName('datafinal').AsDate:=UltimoDia(IncMonth(Date,0-1));
      DM.QYAux.Open;
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('QUANTIDADE').AsExtended,3)),'0',12,taRight);
      //S:=S+'            ';

      //valor total de aquisicao.
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORTOTAL').AsExtended,2)),'0',12,taRight);
      //S:=S+'            ';

      //valor total do icms como débito da operacao.
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORICMS').AsExtended,2)),'0',12,taRight);
      //S:=S+'            ';

      //base de calculdo do icms devido por substituicao.
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('BASEICMSST').AsExtended,2)),'0',12,taRight);
      //S:=S+'            ';

      //valor total do icms devido por substituicao.
      S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORICMSST').AsExtended,2)),'0',12,taRight);
      //S:=S+'            ';

      //
      S:=S+AlignText('',' ',53,taLeft); //espaços.
    end else
    begin


      //S:=S+'            '; //quantidade em estoque.
      //S:=S+'            '; //quantidade adquirida.
      //S:=S+'            '; //total de aquisicao.
      //S:=S+'            '; //total icms.
      //S:=S+'            '; //base de calculo icms st.
      //S:=S+'            '; //total icms st.
      //S:=S+AlignText('',' ',53,taLeft); //espaços pra fechar 300 caracteres.
      S:=S+AlignText('',' ',25,taLeft); //espaços pra fechar 200 caracteres.
    end;

    S:=S+'X'; //final de linha. }
    {$ENDREGION}

    SL.Add(S);
    DM.QYProdutos.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYProdutos.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de produtos');
end;

procedure TFormMain.GerarArquivoProdutosBlocoX(ECF: Integer; Mes, Ano: Word);
var F: TextFile;
  SL: TStringList;
  S, Where: String;
  D,M,A: Word;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de produtos do Bloco X.');
  SL:=TStringList.Create;
  Where:='';

  //if not CargaInicial then
  //Where:=Where+' and PRO_ATUALIZAR='+QuotedStr('S');

  if ProdutosAtivos='S' then
  Where:=Where+' and PRO_STATUS='+QuotedStr('A');

  if ProdutosTipoServico='N' then
  Where:=Where+' and PRO_TIPO='+QuotedStr('P');

  DM.QYProdutos.Close;
  DM.QYProdutos.SQL.Clear;
  DM.QYProdutos.SQL.Add('select PRO_CEST, PRO_CFOP, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, '+
                        'PRO_CSTICMS, PRO_CSTIPI, PRO_EXCECAO, PRO_GENERO, PRO_NOME, PRO_PESAVEL, PRO_PRODUCAO, PRO_PRECOCUSTO, '+
                        'PRO_PRECOVENDA, PRO_STATUS, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM, PRO_TRIBUTO, PRO_UNIDADE '+
                        'from PRODUTOS where PRO_TIPOITEM='+QuotedStr('00 - MERCADORIA PARA REVENDA')+' '+Where+' '+
                        'order by PRO_CODIGO');
  DM.QYProdutos.Open;
  while not DM.QYProdutos.Eof do
  begin
    S:='1'+AlignText(IntToStr(DM.QYProdutosPRO_CODIGO.Value),'0',7,taRight);
    S:=S+AlignText(RemoveAcentos(DM.QYProdutosPRO_NOME.Value),' ',40,taLeft);
    S:=S+AlignText(DM.QYProdutosPRO_UNIDADE.Value,' ',5,taLeft);
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CODIGO.Value),' ',15,taLeft);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYProdutosPRO_PRECOVENDA.AsExtended,2)),'0',12,taRight);
    S:=S+AlignText(DM.QYProdutosPRO_TRIBUTO.Value,'0',2,taRight); //FF, NN, II, NS..., ou aliquota.
    S:=S+AlignText(DM.QYProdutosPRO_CODIGOBARRAS.Value,'0',13,taRight);
    if DM.QYProdutosPRO_STATUS.Value='A' then S:=S+'S' else S:=S+'N';
    S:=S+'S'; //aceita desconto/acrescimo após o registro do produto no cupom.
    S:=S+'N'; //produto utilizado em postos de combustiveis?.
    S:=S+'N'; //utiliza 3 casas decimais após a vírgula. opcao válida somente para postos e qdo o campo acima está como S.
    S:=S+'S'; //produto fracionável?
    S:=S+DM.QYProdutosPRO_PESAVEL.Value;
    S:=S+'T'; //IAT - indicador de arredondamento ou truncamento. A ou T.
    S:=S+DM.QYProdutosPRO_PRODUCAO.Value;
    S:=S+Copy(DM.QYProdutosPRO_TIPOITEM.Value,1,2);
    S:=S+AlignText(DM.QYProdutosPRO_CLASSFISCAL.Value,'0',9,taLeft);
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_EXCECAO.Value),'0',3,taLeft); //codigo exceção do IPI... importar da tabela ibpt no firenet.
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_GENERO.Value),'0',2,taRight);
    S:=S+AlignText(DM.QYProdutosPRO_TIPOISS.Value,'0',4,taRight); //código do serviço.
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CSTICMS.Value),'0',3,taLeft);
    S:=S+AlignText('',' ',25,taLeft); //referencia estendida.
    S:=S+AlignText(IntToStr(DM.QYProdutosPRO_CFOP.Value),' ',4,taLeft);
    S:=S+AlignText(DM.QYProdutosPRO_CEST.Value,' ',7,taLeft);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYProdutosPRO_PRECOCUSTO.AsExtended,3)),'0',12,taRight);

    //quantidade em estoque no ultimo dia do mes.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE where EST_PRODUTO=:produto and EST_DTCADASTRO <= :data order by EST_CODIGO desc');
    DM.QYAux.ParamByName('produto').AsInteger:=DM.QYProdutosPRO_CODIGO.Value;
    DM.QYAux.ParamByName('data').AsDate:=UltimoDia(EncodeDate(Ano,Mes,1));
    DM.QYAux.Open;
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('EST_ESTOQUEPOSTERIOR').AsExtended,3)),'0',12,taRight);
    DM.QYAux.Close;

    //quantidade adquirida no mês.
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(COI_QUANTIDADE) as QTDE, sum(COI_VALORTOTAL) as VALORTOTAL, '+
                     'sum(COI_VALORICMS) as VALORICMS, sum(COI_VALORICMSST) as VALORICMSST, sum(COI_BASEICMSST) as BASEICMSST '+
                     'from COMPRASITENS left join COMPRAS on COI_COMPRA=COM_CODIGO '+
                     'where COI_PRODUTO=:produto and (COM_DTCADASTRO between :datainicial and :datafinal) and COM_STATUS=''F'' and COM_NOTANUMERO is not null');
    DM.QYAux.ParamByName('produto').AsInteger:=DM.QYProdutosPRO_CODIGO.Value;
    DM.QYAux.ParamByName('datainicial').AsDate:=EncodeDate(Ano,Mes,1);
    DM.QYAux.ParamByName('datainicial').AsDate:=UltimoDia(EncodeDate(Ano,Mes,1));
    DM.QYAux.Open;
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('QTDE').AsExtended,3)),'0',12,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORTOTAL').AsExtended,2)),'0',12,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORICMS').AsExtended,2)),'0',12,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('BASEICMSST').AsExtended,2)),'0',12,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYAux.FieldByName('VALORICMSST').AsExtended,2)),'0',12,taRight);
    S:=S+AlignText('',' ',53,taLeft); //espaços.
    S:=S+'X'; //final de linha.
    SL.Add(S);
    DM.QYProdutos.Next;
  end;
  SL.Add('9'); //fim de arquivo.

  DecodeDate(Date,A,M,D);
  if (A<>Ano) or (M<>Mes) then
  SL.SaveToFile(PastaEstoque+'\ENV'+AlignText(IntToStr(ECF),'0',4,taRight)+'_'+IntToStr(Ano)+
                AlignText(IntToStr(Mes),'0',2,taRight)+'.PRO') else
  SL.SaveToFile(PastaEstoque+'\ENV'+AlignText(IntToStr(ECF),'0',4,taRight)+'.PRO');
  DM.QYProdutos.Close;

  //fazer tabela pra gravar a data/hora geração do arquivo.

  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de produtos Bloco X.');
end;

procedure TFormMain.GerarArquivos1Click(Sender: TObject);
var D,M,A: Word;
  AindaTemArquivo: Boolean;
  ArquivoUsuarios, ArquivoCondicoes, ArquivoContas, ArquivoClientes,
  ArquivoTributos, ArquivoUnidades, ArquivoProdutos, ArquivoEstoque: String;
  SLUsuarios, SLCondicoes, SLContas, SLClientes, SLTributos, SLUnidades, SLProdutos, SLEstoque: TStringList;
begin
  //futuramente ver como fazer para quando a empresa utilizar mais de um ECF.
  //talvez criar tabelas com as alteracoes para cada ECF.

  SLUsuarios:=TStringList.Create;
  SLCondicoes:=TStringList.Create;
  SLContas:=TStringList.Create;
  SLClientes:=TStringList.Create;
  SLTributos:=TStringList.Create;
  SLUnidades:=TStringList.Create;
  SLProdutos:=TStringList.Create;
  SLEstoque:=TStringList.Create;

  AindaTemArquivo:=False;
  DM.QYEcf.Close;
  DM.QYEcf.Open;
  DM.QYEcf.First;
  while not DM.QYEcf.Eof do
  begin
    //se ainda existir algum dos arquivos criados anteriormente, não gera novos arquivos.
    ArquivoUsuarios :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.FUN';
    ArquivoCondicoes:=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.FOR';
    ArquivoContas   :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.BAN';
    ArquivoClientes :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.CLI';
    ArquivoTributos :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.TRI';
    ArquivoUnidades :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.UNI';
    ArquivoProdutos :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.PRO';
    ArquivoEstoque  :=Label2.Caption+'\ENV'+AlignText(IntToStr(DM.QYEcfECF_CODIGO.Value),'0',4,taRight)+'.EST';

    if FileExists(ArquivoUsuarios) or FileExists(ArquivoCondicoes) or
       FileExists(ArquivoContas)   or FileExists(ArquivoClientes) or
       FileExists(ArquivoTributos) or FileExists(ArquivoUnidades) or
       FileExists(ArquivoProdutos) or FileExists(ArquivoEstoque) then
    begin
      AindaTemArquivo:=True;
      Memo1.Lines.Add('Ainda existe(m) arquivo(s) para ser(em) importado(s) para o ECF '+DM.QYEcfECF_CODIGO.Value.ToString+'.');
      DM.QYEcf.Next;
      Continue; //pula para o próximo registro.
    end;
    //...

    SLUsuarios.Clear;
    SLCondicoes.Clear;
    SLContas.Clear;
    SLClientes.Clear;
    SLTributos.Clear;
    SLUnidades.Clear;
    SLProdutos.Clear;
    SLEstoque.Clear;

    if CheckBox4.Checked then GerarArquivoUsuarios(SLUsuarios,CheckBox9.Checked);
    if CheckBox3.Checked then GerarArquivoCondicoes(SLCondicoes,CheckBox9.Checked);
    if CheckBox7.Checked then GerarArquivoContas(SLContas,CheckBox9.Checked);
    if CheckBox1.Checked then GerarArquivoClientes(SLClientes,CheckBox9.Checked);
    if CheckBox6.Checked then GerarArquivoTributos(SLTributos,CheckBox9.Checked);
    if CheckBox8.Checked then GerarArquivoUnidades(SLUnidades,CheckBox9.Checked);
    if CheckBox2.Checked then GerarArquivoProdutos(SLProdutos,CheckBox9.Checked);
    if CheckBox5.Checked then GerarArquivoEstoque(SLEstoque,CheckBox9.Checked);

    //depois de todas as listas geradas, salvamos em disco.
    if CheckBox4.Checked then SLUsuarios.SaveToFile(ArquivoUsuarios);
    if CheckBox3.Checked then SLCondicoes.SaveToFile(ArquivoCondicoes);
    if CheckBox7.Checked then SLContas.SaveToFile(ArquivoContas);
    if CheckBox1.Checked then SLClientes.SaveToFile(ArquivoClientes);
    if CheckBox6.Checked then SLTributos.SaveToFile(ArquivoTributos);
    if CheckBox8.Checked then SLUnidades.SaveToFile(ArquivoUnidades);
    if CheckBox2.Checked then SLProdutos.SaveToFile(ArquivoProdutos);
    if CheckBox5.Checked then SLEstoque.SaveToFile(ArquivoEstoque);

    DM.QYEcf.Next;
  end;
  DM.QYEcf.Close;

  SLUsuarios.Destroy;
  SLCondicoes.Destroy;
  SLContas.Destroy;
  SLClientes.Destroy;
  SLTributos.Destroy;
  SLUnidades.Destroy;
  SLProdutos.Destroy;
  SLEstoque.Destroy;

  if GerarBlocoX='S' then
  begin
    DecodeDate(Date,A,M,D);
    //checa se já foi criado.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from BLOCOX where BLX_ANO=:ano and BLX_MES=:mes');
    DM.QYAux.ParamByName('ano').AsInteger:=A;
    DM.QYAux.ParamByName('mes').AsInteger:=M;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('QTDE').AsInteger = 0 then
    begin
      GerarArquivoProdutosBlocoX(1,M,A);
      DM.TBBlocox.Open;
      DM.TBBlocox.Insert;
      DM.TBBlocoxBLX_ANO.Value:=A;
      DM.TBBlocoxBLX_MES.Value:=M;
      DM.TBBlocox.Post;
      DM.TBBlocox.Close;
    end;
  end;
  FileListBox1.Update;

  if AindaTemArquivo=False then
  AtualizarCamposTabelas;
end;

procedure TFormMain.GerarArquivoTributos(var SL: TStringList; CargaInicial: Boolean);
var S: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de tributos');
  DM.QYTributos.Close;
  DM.QYTributos.Open;
  while not DM.QYTributos.Eof do
  begin
    S:='1';
    S:=S+AlignText(DM.QYTributosTRI_CODIGO.Value.ToString,'0',2,taRight);
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYTributosTRI_ALIQICMS.AsCurrency,2)),'0',5,taRight);
    S:=S+DM.QYTributosTRI_SERVICO.Value; //iss
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYTributosTRI_ALIQIPI.AsCurrency,2)),'0',5,taRight); //aliq ipi
    S:=S+AlignText(DM.QYTributosTRI_CSTPIS.Value.ToString,'0',2,taRight); //cst pis
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYTributosTRI_ALIQPIS.AsCurrency,2)),'0',5,taRight); //aliq pis
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYTributosTRI_ALIQCOFINS.AsCurrency,2)),'0',5,taRight); //aliq cofins.
    S:=S+'  '; //2 espaços.
    S:=S+'X';
    SL.Add(S);
    DM.QYTributos.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYTributos.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de tributos');
end;

procedure TFormMain.GerarArquivoUnidades(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de unidades de medida');
  Where:='';
  if not CargaInicial then
  Where:='where UNI_ATUALIZAR='+QuotedStr('S');
  DM.QYUnidades.Close;
  DM.QYUnidades.SQL.Clear;
  DM.QYUnidades.SQL.Add('select UNI_CODIGO, UNI_DESCRICAO from UNIDADES '+Where+' order by UNI_CODIGO');
  DM.QYUnidades.Open;
  while not DM.QYUnidades.Eof do
  begin
    S:='1'+AlignText(DM.QYUnidadesUNI_CODIGO.Value,' ',6,taLeft);
    S:=S+AlignText(DM.QYUnidadesUNI_DESCRICAO.Value,' ',50,taLeft);
    S:=S+AlignText('',' ',42,taLeft);
    S:=S+'X';
    SL.Add(S);
    DM.QYUnidades.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYUnidades.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de unidades de medida');
end;

procedure TFormMain.GerarArquivoUsuarios(var SL: TStringList; CargaInicial: Boolean);
var S, Where: String;
begin
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Início geração arquivo de usuários');
  Where:='';
  if not CargaInicial then
  Where:=' and VEN_ATUALIZAR='+QuotedStr('S');
  DM.QYUsuarios.Close;
  DM.QYUsuarios.SQL.Clear;
  DM.QYUsuarios.SQL.Add('select distinct USU_VENDEDOR, VEN_NOME, VEN_COMISSAO from USUARIOS '+
                        'left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO where USU_VENDEDOR<>1 order by VEN_CODIGO');
  DM.QYUsuarios.Open;
  while not DM.QYUsuarios.Eof do
  begin
    S:='1'+AlignText(IntToStr(DM.QYUsuariosUSU_VENDEDOR.Value),'0',3,taRight);
    S:=S+AlignText(DM.QYUsuariosVEN_NOME.Value,' ',40,taLeft);
    S:=S+AlignText('',' ',20,taLeft); //função.
    S:=S+AlignText('',' ',40,taLeft); //endereço.
    S:=S+AlignText('',' ',20,taLeft); //bairro.
    S:=S+AlignText('',' ',10,taLeft); //cep.
    S:=S+AlignText('',' ',30,taLeft); //cidade/uf.
    S:=S+AlignText('',' ',14,taLeft); //fone.
    S:=S+AlignText('',' ',8,taLeft); //senha.
    S:=S+'N'; //consulta por código referencia básica.
    S:=S+'2'; //nível de acesso 3=master, 2=intermediario 1=basico.
    S:=S+AlignText(LimparFormatacao(Decimais2(DM.QYUsuariosVEN_COMISSAO.AsExtended,2)),'0',5,taLeft); //comissao.
    S:=S+AlignText('',' ',20,taLeft); //espacos em branco.
    S:=S+'N'; //consulta por código referencia estendida.
    S:=S+'X'; //final de linha.
    SL.Add(S);
    DM.QYUsuarios.Next;
  end;
  SL.Add('9'); //fim de arquivo.
  DM.QYUsuarios.Close;
  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim geração arquivo de usuários');
end;

procedure TFormMain.ImportarArquivo1Click(Sender: TObject);
begin
  if FileListBox2.ItemIndex < 0 then
  begin
    MessageDlg('Nenhum arquivo selecionado.',mtInformation,[mbOk],0);
    Exit;
  end;
  ProcessarArquivo(FileListBox2.FileName);
  DeleteFile(FileListBox2.FileName);
  AtualizarListboxes1.Click;
  Application.ProcessMessages;
end;

procedure TFormMain.ProcessarArquivo(Arquivo: String);
var F: TextFile;
  S, CodigoNfce, ChaveAcesso, Condicao, Cliente, CCF, COO, Data, DAV, ECF, Entrada, Linha, Loja, Pedido, Protocolo, ProtocoloDH, ValorTotal, ValorDesc, ValorAcre, Vendedor: String; //campos registro 0.
  Item, Produto, Quantidade, Metragem, ValorUnit, TotalItem, Ref, AcreDesc, ValorAD, Tributo: String; //campos registro 1.
  Motivo: String; //campos registro 8.
  Parcela, Vencimento, ValorParcela: String;
  QtdeParcelas: Integer;
  TemRegistro2: Boolean;
begin
  if not FileExists(Arquivo) then
  Exit;

  Memo1.Lines.Add(DateTimeToStr(Now)+' - Importando arquivo: '+ExtractFileName(Arquivo));
  TemRegistro2:=False;
  if UpperCase(ExtractFileExt(Arquivo))='.ECF' then
  begin
    AssignFile(F,Arquivo);
    Reset(F);
    while not EOF(F) do
    begin
      ReadLn(F,Linha);
      {$REGION 'Registro 0 - Capa Cupom'}
      if Copy(Linha,1,1)='0' then
      begin
        S:=Linha;
        Delete(S,1,1);
        Vendedor:=Copy(S,1,3);    Delete(S,1,3);  if Trim(Vendedor)='' then Vendedor:='1';
        Cliente:=Copy(S,1,9);     Delete(S,1,9);  if Trim(Cliente)='' then Cliente:='1';   if Cliente='000000000' then Cliente:='1';
        Condicao:=Copy(S,1,2);    Delete(S,1,2);  if Trim(Condicao)='' then Condicao:='1';
        Entrada:=Copy(S,1,10);    Delete(S,1,10); Insert(',',Entrada,Length(Entrada)-1);
        Pedido:=Copy(S,1,10);     Delete(S,1,10); if Trim(Pedido)='' then Pedido:='0';
        Data:=Copy(S,1,10);       Delete(S,1,10);
        ECF:=Copy(S,1,4);         Delete(S,1,4);
        COO:=Copy(S,1,9);         Delete(S,1,9);
        ValorTotal:=Copy(S,1,10); Delete(S,1,10); Insert(',',ValorTotal,Length(ValorTotal)-1);
        ValorDesc:=Copy(S,1,10);  Delete(S,1,10); Insert(',',ValorDesc,Length(ValorDesc)-1);
        ValorAcre:=Copy(S,1,10);  Delete(S,1,10); Insert(',',ValorAcre,Length(ValorAcre)-1);
        DAV:=Copy(S,1,1);         Delete(S,1,1); //depois desse: numero loja (em branco - espaço nao reservado)
        Loja:=Copy(S,1,4);        Delete(S,1,4); //era pra não vir esse campo no aqruivo?
        CCF:=Copy(S,1,9);         Delete(S,1,9);

        if LayoutNFCe='S' then
        begin
          Protocolo:=Trim(Copy(S,1,20)); Delete(S,1,20);
          ChaveAcesso:=Copy(S,1,44);     Delete(S,1,44);
          ProtocoloDH:=Trim(Copy(S,1,30));  Delete(S,1,30); //protocolo DH.
          CodigoNfce:=Copy(ChaveAcesso,26,9);
        end else
        begin
          Protocolo:='';
          ChaveAcesso:='';
          ProtocoloDH:='';
          CodigoNfce:='0';
        end;

        //verifica se já foi importado.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from CUPOM where CUP_ECF='+ECF+' and (CUP_COO='+COO+')');
        DM.QYAux.Open;
        DM.QYAux.FetchAll;
        if DM.QYAux.IsEmpty then
        begin
          DM.TBCupom.Insert;
          DM.TBCupomCUP_ACREVALOR.Value:=StrToCurr(ValorAcre);
          DM.TBCupomCUP_CCF.Value:=StrToInt(CCF);
          DM.TBCupomCUP_CHAVEACESSO.Value:=ChaveAcesso;
          DM.TBCupomCUP_CLIENTE.Value:=StrToInt(Cliente);
          //DM.TBCupomCUP_CODIGO.Value:=
          DM.TBCupomCUP_CONDICAO.Value:=StrToInt(Condicao);
          DM.TBCupomCUP_COO.Value:=StrToInt(COO);
          DM.TBCupomCUP_DESCVALOR.Value:=StrToCurr(ValorDesc);
          DM.TBCupomCUP_DTATUALIZACAO.Value:=Date;
          DM.TBCupomCUP_DTEMISSAO.Value:=StrToDate(Data);
          DM.TBCupomCUP_ECF.Value:=StrToInt(ECF);
          DM.TBCupomCUP_NFCE.Value:=StrToInt(CodigoNfce);
          DM.TBCupomCUP_PROTOCOLO.Value:=Protocolo;
          DM.TBCupomCUP_PROTOCOLODH.Value:=ProtocoloDH;
          DM.TBCupomCUP_STATUS.Value:='F';
          DM.TBCupomCUP_TOTALITENS.Value:=StrToCurr(ValorTotal);
          DM.TBCupomCUP_VALORTOTAL.Value:=DM.TBCupomCUP_TOTALITENS.Value - DM.TBCupomCUP_DESCVALOR.Value + DM.TBCupomCUP_ACREVALOR.Value;
          DM.TBCupomCUP_VENDA.Value:=StrToInt(Pedido);
          DM.TBCupomCUP_VENDEDOR.Value:=StrToInt(Vendedor);
          DM.TBCupomCUP_USUARIO.Value:='MALCOLM';
          DM.TBCupom.Post;
          if LayoutNfce='S' then
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Importando cupom: '+IntToStr(DM.TBCupomCUP_NFCE.Value)+' (Código no Firenet: '+IntToStr(DM.TBCupomCUP_CODIGO.Value)+')') else
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Importando cupom: '+IntToStr(DM.TBCupomCUP_CCF.Value)+' (Código no Firenet: '+IntToStr(DM.TBCupomCUP_CODIGO.Value)+')');

          //todo if pedido<>0 atualiza a tabela vendas com o código da nfce.
          if Pedido.ToInteger<>0 then
          begin
            DM.QYAux2.Close;
            DM.QYAux2.SQL.Clear;
            DM.QYAux2.SQL.Add('update VENDAS set VED_NFCE=:nfce where VED_CODIGO=:codigo');
            DM.QYAux2.ParamByName('nfce').AsInteger:=CodigoNfce.ToInteger;
            DM.QYAux2.ParamByName('codigo').AsInteger:=Pedido.ToInteger;
            DM.QYAux2.ExecSQL;
            DM.TRAux2.Commit;
          end;
        end else
        begin
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Cupom: '+CCF+' já importado. (Código no Firenet: '+DM.QYAux.FieldByName('CUP_CODIGO').AsString+')');
          CloseFile(F);
          Exit;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Registro 1 - Itens'}
      if Copy(Linha,1,1)='1' then
      begin
        S:=Linha;
        Delete(S,1,1);
        Item:=Copy(S,1,3);       Delete(S,1,3);
        Produto:=Copy(S,1,7);    Delete(S,1,7);
        Quantidade:=Copy(S,1,7); Delete(S,1,7);  Insert(',',Quantidade,Length(Quantidade)-2);
        Metragem:=Copy(S,1,7);   Delete(S,1,7);  Insert(',',Metragem,Length(Metragem)-2);
        ValorUnit:=Copy(S,1,7);  Delete(S,1,7);  Insert(',',ValorUnit,Length(ValorUnit)-1);
        TotalItem:=Copy(S,1,10); Delete(S,1,10); Insert(',',TotalItem,Length(TotalItem)-1);
        Ref:=Copy(S,1,15);       Delete(S,1,15);
        AcreDesc:=Copy(S,1,1);   Delete(S,1,1);
        ValorAD:=Copy(S,1,8);    Delete(S,1,8);  Insert(',',ValorAD,Length(ValorAD)-1);
        Tributo:=Copy(S,1,2);    Delete(S,1,2);

        DM.TBCupomItens.Insert;
        if AcreDesc='A' then
        DM.TBCupomItensCUI_ACREVALOR.Value:=StrToCurr(ValorAD);
        //DM.TBCupomItensCUI_CODIGO.Value:=
        DM.TBCupomItensCUI_CUPOM.Value:=DM.TBCupomCUP_CODIGO.Value;
        if AcreDesc='D' then
        DM.TBCupomItensCUI_DESCVALOR.Value:=StrToCurr(ValorAD);
        DM.TBCupomItensCUI_ITEM.Value:=StrToInt(Item);
        DM.TBCupomItensCUI_PRODUTO.Value:=StrToInt(Produto);
        DM.TBCupomItensCUI_QUANTIDADE.Value:=StrToFloat(Quantidade);
        DM.TBCupomItensCUI_TRIBUTO.Value:=Tributo;
        DM.TBCupomItensCUI_VALORUNIT.Value:=StrToCurr(ValorUnit);
        DM.TBCupomItensCUI_VALORTOTAL.Value:=StrToCurr(TotalItem);
        DM.TBCupomItens.Post;

        //realiza a baixa no estoque.
        if MovimentarEstoque='S' then
        begin
          DM.TBEstoque.Insert;
          DM.TBEstoqueEST_ALMOXARIFADO.Value:=1;
          DM.TBEstoqueEST_PRODUTO.Value:=DM.TBCupomItensCUI_PRODUTO.Value;
          DM.TBEstoqueEST_CLIENTE.Value:=DM.TBCupomCUP_CLIENTE.Value;
          DM.TBEstoqueEST_CONVERSAO.Value:=1;
          DM.TBEstoqueEST_DATA.Value:=Date;
          DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA CUPOM FISCAL';
          DM.TBEstoqueEST_NUMDOCTO.Value:='CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value);
          DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBCupomItensCUI_QUANTIDADE.Value * 1; //nao tem campo conversao no ECF.
          DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBCupomItensCUI_QUANTIDADE.Value;
          DM.TBEstoqueEST_TRANSACAO.Value:='S';
          DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBCupomItensCUI_VALORUNIT.Value;
          DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBCupomCUP_VENDEDOR.Value;
          DM.TBEstoque.Post;
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Baixa de estoque produto: '+IntToStr(DM.TBCupomItensCUI_PRODUTO.Value)+' Quantidade: '+DM.TBEstoqueEST_QUANTIDADE.AsString);
        end;
        //...
      end;
      {$ENDREGION}

      {$REGION 'Registro 2 - Condicao de pagamento'}
      if Copy(Linha,1,1)='2' then
      begin
        TemRegistro2:=True;
        S:=Linha;
        Delete(S,1,1);
        Parcela:=Copy(S,1,2);       Delete(S,1,2);
        Vencimento:=Copy(S,1,10);   Delete(S,1,10);
        ValorParcela:=Copy(S,1,10); Delete(S,1,10); Insert(',',ValorParcela,Length(ValorParcela)-1);

        if MovimentarFinanceiro='S' then
        begin
          DM.TBReceber.Insert;
          DM.TBReceberREE_CLIENTE.Value:=StrToInt(Cliente);
          DM.TBReceberREE_CONTA.Value:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
          DM.TBReceberREE_DESCRICAO.Value:='LANCAMENTO AUTOMATICO CUPOM FISCAL';
          DM.TBReceberREE_DTVENCIMENTO.Value:=StrToDate(Vencimento);
          DM.TBReceberREE_NUMDOCTO.Value:='CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/'+Parcela;
          DM.TBReceberREE_PARCELANUM.Value:=StrToInt(Parcela);
          DM.TBReceberREE_RECEITA.Value:=1;
          DM.TBReceberREE_TIPODOCTO.Value:='FATURA';
          DM.TBReceberREE_VENDEDOR.Value:=StrToInt(Vendedor);
          DM.TBReceberREE_VALOR.Value:=StrToCurr(ValorParcela);
          DM.TBReceber.Post;
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Contas a receber: CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/'+Parcela+' Vencimento: '+Vencimento+' Valor: '+Format('%m',[StrToCurr(ValorParcela)]));
        end;
      end;
      {$ENDREGION}

      {$REGION 'Registro 9 - Final de arquivo'}
      if Copy(Linha,1,1)='9' then
      begin
        S:=Linha;
        if not TemRegistro2 then //se nao tem registro 2 no arquivo, entao gera um contas a receber e caixa.
        begin
          DM.TBReceber.Insert;
          DM.TBReceberREE_CLIENTE.Value:=DM.TBCupomCUP_CLIENTE.Value;
          DM.TBReceberREE_CONTA.Value:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
          DM.TBReceberREE_DESCRICAO.Value:='LANCAMENTO AUTOMATICO CUPOM FISCAL';
          DM.TBReceberREE_DTVENCIMENTO.Value:=DM.TBCupomCUP_DTEMISSAO.Value;
          DM.TBReceberREE_NUMDOCTO.Value:='CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/01';
          DM.TBReceberREE_PARCELANUM.Value:=1;
          DM.TBReceberREE_RECEITA.Value:=1;
          //DM.TBReceberREE_STATUS.Value:='B';
          DM.TBReceberREE_TIPODOCTO.Value:='FATURA';
          DM.TBReceberREE_VENDEDOR.Value:=DM.TBCupomCUP_VENDEDOR.Value;
          DM.TBReceberREE_VALOR.Value:=DM.TBCupomCUP_VALORTOTAL.Value;
          DM.TBReceber.Post;
          Memo1.Lines.Add(DateTimeToStr(Now)+' - Contas a receber: CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/01 Vencimento: '+DateToStr(DM.TBCupomCUP_DTEMISSAO.Value)+' Valor: '+Format('%m',[DM.TBCupomCUP_VALORTOTAL.AsExtended]));
        end;

        //atualiza o campo quantidade de parcelas.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select count(*) as QTDE from RECEBER where REE_NUMDOCTO like '+QuotedStr('CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/%'));
        DM.QYAux.Open;
        QtdeParcelas:=DM.QYAux.FieldByName('QTDE').AsInteger;
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update RECEBER set REE_PARCELAQTDE='+IntToStr(QtdeParcelas)+' where REE_NUMDOCTO like '+QuotedStr('CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/%'));
        DM.QYAux.ExecSQL;
        DM.TRAux.Commit;

      end;
      {$ENDREGION}
    end;
    CloseFile(F);
  end;

  if UpperCase(ExtractFileExt(Arquivo))='.DEL' then
  begin
    AssignFile(F,Arquivo);
    Reset(F);
    while not EOF(F) do
    begin
      ReadLn(F,Linha);
      {$REGION 'Registro 8 - Cabecalho'}
      if Copy(Linha,1,1)='8' then
      begin
        S:=Linha;
        Delete(S,1,1);
        ECF:=Copy(S,1,4);      Delete(S,1,4);
        COO:=Copy(S,1,9);      Delete(S,1,9);
        DAV:=Copy(S,1,1);      Delete(S,1,1);
        Loja:=Copy(S,1,4);     Delete(S,1,4);
        Motivo:=Copy(S,1,1);   Delete(S,1,1);
        Vendedor:=Copy(S,1,3); Delete(S,1,3);
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from CUPOM where CUP_ECF='+ECF+' and (CUP_COO='+COO+')');
        DM.QYAux.Open;
        DM.QYAux.FetchAll;
        if DM.QYAux.IsEmpty then //quase o mesmo código para a importação do cupom... manter +/- igual acima.
        begin //cupom não existe na base dados, insere!
          DM.TBCupom.Insert;
          DM.TBCupomCUP_ACREVALOR.Value:=0;
          DM.TBCupomCUP_CCF.Value:=0; //StrToInt(COO); nao vem o CCF no arquivo .DEL.
          DM.TBCupomCUP_CLIENTE.Value:=1;
          //DM.TBCupomCUP_CODIGO.Value:=
          DM.TBCupomCUP_CONDICAO.Value:=1;
          DM.TBCupomCUP_COO.Value:=StrToInt(COO);
          DM.TBCupomCUP_DESCVALOR.Value:=0;
          DM.TBCupomCUP_DTATUALIZACAO.Value:=Date;
          DM.TBCupomCUP_DTEMISSAO.Value:=Date;
          DM.TBCupomCUP_ECF.Value:=StrToInt(ECF);
          DM.TBCupomCUP_MOTIVO.Value:=Motivo;
          DM.TBCupomCUP_STATUS.Value:='C';
          DM.TBCupomCUP_VALORTOTAL.Value:=0;
          DM.TBCupomCUP_VENDA.Value:=0;
          DM.TBCupomCUP_VENDEDOR.Value:=StrToInt(Vendedor);
          DM.TBCupomCUP_USUARIO.Value:='MALCOLM';
          DM.TBCupom.Post;

          Memo1.Lines.Add(DateTimeToStr(Now)+' - Importando cupom: '+IntToStr(DM.TBCupomCUP_CCF.Value)+' (Código no Firenet: '+IntToStr(DM.TBCupomCUP_CODIGO.Value)+')');
        end else
        begin //cupom já existe, altera para cancelado.
          DM.TBCupom.Close;
          DM.TBCupom.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CUP_CODIGO').AsInteger;
          DM.TBCupom.Open;
          DM.TBCupom.Edit;
          DM.TBCupomCUP_STATUS.Value:='C';
          DM.TBCupom.Post;
          //estorna as baixas do estoque.
          if MovimentarEstoque='S' then
          begin
            DM.TBCupomItens.First;
            while not DM.TBCupomItens.Eof do
            begin
              DM.TBEstoque.Insert;
              DM.TBEstoqueEST_ALMOXARIFADO.Value:=1;
              DM.TBEstoqueEST_PRODUTO.Value:=DM.TBCupomItensCUI_PRODUTO.Value;
              DM.TBEstoqueEST_CLIENTE.Value:=DM.TBCupomCUP_CLIENTE.Value;
              DM.TBEstoqueEST_CONVERSAO.Value:=1;
              DM.TBEstoqueEST_DATA.Value:=Date;
              DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO CUPOM FISCAL';
              DM.TBEstoqueEST_NUMDOCTO.Value:='CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value);
              DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBCupomItensCUI_QUANTIDADE.Value * 1; //nao tem campo conversao no ECF.
              DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBCupomItensCUI_QUANTIDADE.Value;
              DM.TBEstoqueEST_TRANSACAO.Value:='E';
              DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBCupomItensCUI_VALORUNIT.Value;
              DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBCupomCUP_VENDEDOR.Value;
              DM.TBEstoque.Post;
              Memo1.Lines.Add(DateTimeToStr(Now)+' - Estorno de estoque produto: '+IntToStr(DM.TBCupomItensCUI_PRODUTO.Value)+' Quantidade: '+DM.TBEstoqueEST_QUANTIDADE.AsString);
              DM.TBCupomItens.Next;
            end;
          end;

          //cancela as contas a receber.
          if MovimentarFinanceiro='S' then
          begin
            DM.QYAux.Close;
            DM.QYAux.SQL.Clear;
            DM.QYAux.SQL.Add('select * from RECEBER where REE_NUMDOCTO='+QuotedStr('CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value))+' order by REE_CODIGO');
            DM.QYAux.Open;
            while not DM.QYAux.Eof do
            begin
              if DM.QYAux.FieldByName('REE_STATUS').AsString='A' then
              begin
                DM.QYAux2.Close;
                DM.QYAux2.SQL.Clear;
                DM.QYAux2.SQL.Add('update RECEBER set REE_STATUS=''C'' where REE_CODIGO=:codigo');
                DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('codigo').AsInteger;
                DM.QYAux2.ExecSQL;
                DM.TRAux2.Commit;
              end else
              Memo1.Lines.Add(DateTimeToStr(Date)+' - Existem contas a receber já baixadas para o cupom '+IntToStr(DM.TBCupomCUP_CODIGO.Value));
              DM.QYAux.Next;
            end;
          end;
          //...

        end;
      end;
      {$ENDREGION}

      {$REGION 'Registro 9 - Final de arquivo'}
      if Copy(Linha,1,1)='9' then
      begin
        S:=Linha;
      end;
      {$ENDREGION}
    end;
    CloseFile(F);
  end;

  {if UpperCase(ExtractFileExt(Arquivo))='.ITD' then
  begin
    AssignFile(F,Arquivo);
    Reset(F);
    while not EOF(F) do
    begin
      //processar arquivo de item cancelado.... (se precisar futuramente).
    end;
    CloseFile(F);
  end;}


  Memo1.Lines.Add(DateTimeToStr(Now)+' - Fim da importação do arquivo: '+ExtractFileName(Arquivo));
end;

procedure TFormMain.RegistrosBlocoX1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
  Exit;

  DM.TBBlocox.Open;
  Application.CreateForm(TFormBlocoX, FormBlocoX);
  FormBlocoX.ShowModal;
  FormBlocoX.Free;
  FormBlocoX:=nil;
  DM.TBBlocox.Close;
end;

procedure TFormMain.IniciarPararServidor1Click(Sender: TObject);
begin
  Timer1.Interval:=StrToInt(TempoAtualizacao)*1000*60;
  Timer1.Enabled:=not Timer1.Enabled;
  if Timer1.Enabled then
  begin
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Servidor ativo...');
    Label11.Caption:='ATIVO';
    Shape1.Brush.Color:=clGreen;
    PngSpeedButton2.Caption:='Parar';
    IniciarPararServidor1.Caption:='Parar Servidor';
  end else
  begin
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Servidor inativo...');
    Label11.Caption:='INATIVO';
    Shape1.Brush.Color:=clRed;
    PngSpeedButton2.Caption:='Ativar';
    IniciarPararServidor1.Caption:='Iniciar Servidor';
  end;
end;

procedure TFormMain.InverterSelecao1Click(Sender: TObject);
begin
  CheckBox1.Checked:=not CheckBox1.Checked;
  CheckBox2.Checked:=not CheckBox2.Checked;
  CheckBox3.Checked:=not CheckBox3.Checked;
  CheckBox4.Checked:=not CheckBox4.Checked;
  CheckBox5.Checked:=not CheckBox5.Checked;
  CheckBox6.Checked:=not CheckBox6.Checked;
  CheckBox7.Checked:=not CheckBox7.Checked;
  CheckBox8.Checked:=not CheckBox8.Checked;
end;

procedure TFormMain.LimparLogs1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFormMain.Malcolm1Click(Sender: TObject);
begin
  MessageDlg('Malcolm - Integrador do cupom fiscal (Firenet - SALC).',mtInformation,[mbOk],0);
end;

procedure TFormMain.MalcolmFirenetSalc1Click(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

procedure TFormMain.Minimizar1Click(Sender: TObject);
begin
  FormMain.WindowState:=wsMinimized;
  FormMain.Hide;
  TrayIcon1.ShowBalloonHint;
end;

procedure TFormMain.ApplicationEvents1Minimize(Sender: TObject);
begin
  FormMain.Hide;
  TrayIcon1.ShowBalloonHint;
end;

procedure TFormMain.AtualizarCamposTabelas;
begin
  DM.TRScript.Active:=True;
  DM.IBScript.Script.Clear;
  DM.IBScript.Script.Add(
    'update CLIENTES set CLI_ATUALIZAR=''N'' where CLI_ATUALIZAR=''S'';'+
    'update CONDICOES set CPG_ATUALIZAR=''N'' where CPG_ATUALIZAR=''S'';'+
    'update CONTAS set CON_ATUALIZAR=''N'' where CON_ATUALIZAR=''S'';'+
    'update PRODUTOS set PRO_ATUALIZAR=''N'' where PRO_ATUALIZAR=''S'';'+
    'update VENDEDORES set VEN_ATUALIZAR=''N'' where VEN_ATUALIZAR=''S'';'+
    'update UNIDADES set UNI_ATUALIZAR=''N'' where UNI_ATUALIZAR=''S'';'
  );
  DM.IBScript.ExecuteScript;
  DM.TRScript.Commit;
end;

procedure TFormMain.AtualizarListboxes1Click(Sender: TObject);
begin
  FileListBox1.Update;
  FileListBox2.Update;
end;

procedure TFormMain.FileListBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (FileListBox1.FileName<>'') then
  begin
    if MessageDlg('Eliminar o arquivo '+ExtractFileName(FileListBox1.FileName)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DeleteFile(FileListBox1.FileName);
      AtualizarListboxes1.Click;
    end;
  end;
end;

procedure TFormMain.Finalizar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var S: String;
begin
  S:=FileVersion(Application.ExeName);
  FormMain.Caption:=Application.Title+' - Versão: '+S;
  TrayIcon1.BalloonTitle:=FormMain.Caption;
  Label2.Caption:=PastaReq;
  Label4.Caption:=PastaResp;
  FileListBox1.Directory:=PastaReq;
  FileListBox2.Directory:=PastaResp;
  Label9.Caption:=TempoAtualizacao+' minutos';
  Memo1.Clear;
  if IniciaAoAbrir='S' then
  IniciarPararServidor1.Click;

  if PastaReq<>'' then ForceDirectories(PastaReq);
  if PastaResp<>'' then ForceDirectories(PastaResp);
  if PastaEstoque<>'' then ForceDirectories(PastaEstoque);
end;

procedure TFormMain.Parmetros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormParametros, FormParametros);
  FormParametros.ShowModal;
  FormParametros.Free;
  FormParametros:=nil;

  Label2.Caption:=PastaReq;
  Label4.Caption:=PastaResp;
  FileListBox1.Directory:=PastaReq;
  FileListBox2.Directory:=PastaResp;
end;

procedure TFormMain.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.SalvarLogsEmArquivo1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Logs salvo em '+SaveDialog1.FileName);
  end;
end;

procedure TFormMain.SempreVisivel1Click(Sender: TObject);
begin
  SempreVisivel1.Checked:=not SempreVisivel1.Checked;
  if SempreVisivel1.Checked then
  FormMain.FormStyle:=fsStayOnTop else
  FormMain.FormStyle:=fsNormal;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
var I: Integer;
  SL: TStringList;
begin
  Screen.Cursor:=crHourGlass;

  GerarArquivos1Click(Self);
  AtualizarListboxes1Click(Self);

  {$REGION 'Processa os arquivos .ECF primeiro.'}
  FileListBox2.Mask:='*.ECF';
  FileListBox2.Update;
  if FileListBox2.Items.Count>0 then
  begin
    SL:=TStringList.Create;
    for I:=0 to FileListBox2.Items.Count-1 do
    begin
      FileListBox2.ItemIndex:=I;
      ProcessarArquivo(FileListBox2.FileName);
      SL.Add(FileListBox2.FileName); //gera lista para poder eliminar os arquivos depois.
    end;

    //elimina arquivos lidos.
    for I:=0 to SL.Count-1 do
    begin
      DeleteFile(SL.Strings[I]);
    end;
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Processados '+IntToStr(SL.Count-1)+' arquivos.');
    SL.Destroy;
  end;
  {$ENDREGION}

  {$REGION 'Processa os arquivos .DEL por segundo.'}
  FileListBox2.Mask:='*.DEL';
  FileListBox2.Update;
  if FileListBox2.Items.Count>0 then
  begin
    SL:=TStringList.Create;
    for I:=0 to FileListBox2.Items.Count-1 do
    begin
      FileListBox2.ItemIndex:=I;
      ProcessarArquivo(FileListBox2.FileName);
      SL.Add(FileListBox2.FileName); //gera lista para poder eliminar os arquivos depois.
    end;

    //elimina arquivos lidos.
    for I:=0 to SL.Count-1 do
    begin
      DeleteFile(SL.Strings[I]);
    end;
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Processados '+IntToStr(SL.Count-1)+' arquivos.');
    SL.Destroy;
  end;
  {$ENDREGION}

  {$REGION 'Processa os arquivos .ITD por terceiro.'}
  FileListBox2.Mask:='*.ITD';
  FileListBox2.Update;
  if FileListBox2.Items.Count>0 then
  begin
    SL:=TStringList.Create;
    for I:=0 to FileListBox2.Items.Count-1 do
    begin
      FileListBox2.ItemIndex:=I;
      //nao processa o arquivo pq nao precisa... mas gera a lista para eliminar depois.
      //ProcessarArquivo(FileListBox2.FileName);
      SL.Add(FileListBox2.FileName); //gera lista para poder eliminar os arquivos depois.
    end;

    //elimina arquivos lidos.
    for I:=0 to SL.Count-1 do
    begin
      DeleteFile(SL.Strings[I]);
    end;
    Memo1.Lines.Add(DateTimeToStr(Now)+' - Processados '+IntToStr(SL.Count-1)+' arquivos.');
    SL.Destroy;
  end;
  {$ENDREGION}

  Screen.Cursor:=crDefault;
end;

procedure TFormMain.TrayIcon1BalloonClick(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

procedure TFormMain.TrayIcon1DblClick(Sender: TObject);
begin
  FormMain.Show;
  FormMain.WindowState:=wsNormal;
end;

end.
