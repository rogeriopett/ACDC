unit BoletosAPIConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrBoleto, ACBrBoletoConversao, ACBrBoletoRetorno, ACBrPIXBase,
  Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Mask, PngSpeedButton, Data.DB, Vcl.Grids, Vcl.DBGrids, System.JSON, Datasnap.DBClient, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, DBSBtn, System.ImageList, Vcl.ImgList, PngImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBoletosAPIConsulta = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    DBGrid1: TDBGrid;
    Label13: TLabel;
    ComboBox4: TComboBox;
    Memo1: TMemo;
    TBRetornos: TClientDataSet;
    DSRetornos: TDataSource;
    TBRetornosCarteiraConvenio: TStringField;
    TBRetornosCarteiraConveioVariacao: TStringField;
    TBRetornosContrato: TStringField;
    TBRetornosDataCredito: TDateField;
    TBRetornosDataMovimento: TDateField;
    TBRetornosDataRegistro: TDateField;
    TBRetornosDataVencimento: TDateField;
    TBRetornosEstadoTituloCobranca: TStringField;
    TBRetornosEstadoTituloCobrancaCodigo: TStringField;
    TBRetornosSeuNumero: TStringField;
    TBRetornosValorAtual: TCurrencyField;
    TBRetornosValorOriginal: TCurrencyField;
    TBRetornosValorPago: TCurrencyField;
    TBRetornosCodigo: TIntegerField;
    TBRetornosValorMoraJuros: TCurrencyField;
    TBRetornosValorMulta: TCurrencyField;
    PopupMenu1: TPopupMenu;
    FiltrarPorEsteTipoDeOcorrencia1: TMenuItem;
    LimparFiltro1: TMenuItem;
    Label17: TLabel;
    Label12: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    Label14: TLabel;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    BaixarSelecionados1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BaixarSelecionados1Button: TPngSpeedButton;
    ConsultarBoletos1: TMenuItem;
    SelecionarTodos1: TMenuItem;
    InverterSelecao1: TMenuItem;
    ConsultarBoletos1Button: TPngSpeedButton;
    SelecionarTodos1Button: TPngSpeedButton;
    InverterSelecao1Button: TPngSpeedButton;
    Label15: TLabel;
    DBGrid3: TDBGrid;
    Bevel3: TBevel;
    TBResultados: TClientDataSet;
    TBResultadosBoleto: TIntegerField;
    TBResultadosCliente: TIntegerField;
    TBResultadosNome: TStringField;
    TBResultadosValorPago: TCurrencyField;
    TBResultadosStatus: TStringField;
    TBResultadosMensagem: TStringField;
    DSResultados: TDataSource;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    TBRetornosNumeroBoleto: TStringField;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    QYBoletosItens: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_STATUS: TStringField;
    QYBoletosBOL_VALORPAGO: TFMTBCDField;
    QYBoletosCLI_NOME: TStringField;
    QYBoletosItensBOI_CODIGO: TIntegerField;
    QYBoletosItensBOI_BOLETO: TIntegerField;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_STATUS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FiltrarPorEsteTipoDeOcorrencia1Click(Sender: TObject);
    procedure LimparFiltro1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure BaixarSelecionados1Click(Sender: TObject);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure InverterSelecao1Click(Sender: TObject);
    procedure ConsultarBoletos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarBancoBrasil;
    procedure ConfigurarBancoSicoob;
  public
    { Public declarations }
  end;

var
  FormBoletosAPIConsulta: TFormBoletosAPIConsulta;

implementation
uses Funcoes1, DataMod, FuncoesFirenet, DataMod2;

{$R *.dfm}

procedure TFormBoletosAPIConsulta.ConfigurarBancoBrasil;
begin
  if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.tbcontasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI;
  ACBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  ACBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTID.Value; //usa o mesmo
  ACBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=False;
//  ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'ChavePublica.pem';
//  ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'ChavePrivada.key';
  ACBrBoleto1.Cedente.CedenteWS.Scope:='cobrancas.boletos-info cobrancas.boletos-requisicao';
end;

procedure TFormBoletosAPIConsulta.ConfigurarBancoSicoob;
begin
  //Para extrair o certificado CRT e KEY, segue o link do post: https://www.projetoacbr.com.br/forum/topic/73380-exportar-certificado-pem-crt-e-key/
  if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.tbcontasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
  ACBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  ACBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value; //usa o mesmo.
  ACBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=True;
  ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'ChavePublica.pem';
  ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'ChavePrivada.key';
  ACBrBoleto1.Cedente.CedenteWS.Scope:=
    'cobranca_boletos_consultar '+
    'cobranca_boletos_incluir '+
    'cobranca_boletos_pagador '+
    'cobranca_boletos_segunda_via '+
    'cobranca_boletos_descontos '+
    'cobranca_boletos_abatimentos '+
    'cobranca_boletos_valor_nominal '+
    'cobranca_boletos_seu_numero '+
    'cobranca_boletos_especie_documento '+
    'cobranca_boletos_baixa '+
    'cobranca_boletos_rateio_credito '+
    'cobranca_pagadores '+
    'cobranca_boletos_negativacoes_incluir '+
    'cobranca_boletos_negativacoes_alterar '+
    'cobranca_boletos_negativacoes_baixar '+
    'cobranca_boletos_protestos_incluir '+
    'cobranca_boletos_protestos_alterar '+
    'cobranca_boletos_protestos_desistir '+
    'cobranca_boletos_solicitacao_movimentacao_incluir '+
    'cobranca_boletos_solicitacao_movimentacao_consultar '+
    'cobranca_boletos_solicitacao_movimentacao_download '+
    'cobranca_boletos_prorrogacoes_data_vencimento '+
    'cobranca_boletos_prorrogacoes_data_limite_pagamento '+
    'cobranca_boletos_encargos_multas '+
    'cobranca_boletos_encargos_juros_mora '+
    'cobranca_boletos_pix '+
    'cobranca_boletos_faixa_nn_disponiveis';
end;

procedure TFormBoletosAPIConsulta.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBoletosAPIConsulta.BaixarSelecionados1Click(Sender: TObject);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
  I: Integer;
begin
  //TemAlgumaBaixa:=False;
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum retorno selecionado.');

  if MessageDlg('Deseja realmente fazer a baixa dos boletos selecionados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYBoletosItens.DisableControls;
    QYBoletosItens.Close;
    QYBoletos.DisableControls;
    QYBoletos.Close;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_CLIENTE, BOL_STATUS, BOL_VALORPAGO, CLI_NOME from BOLETOS left join CLIENTES on BOL_CLIENTE=CLI_CODIGO where BOL_CODIGO=:codigo');
    TBResultados.EmptyDataSet;

    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      Application.ProcessMessages;
      QYBoletosItens.Close;
      QYBoletos.Close;
      //QYBoletos.ParamByName('codigo').AsInteger:=StrToInt(DBGrid1.DataSource.DataSet.FieldByName('SeuNumero').Value);
      QYBoletos.ParamByName('codigo').AsInteger:=StrToInt(DBGrid1.DataSource.DataSet.FieldByName('NumeroBoleto').Value);
      QYBoletos.Open;
      QYBoletosItens.Open;
      if QYBoletos.IsEmpty then
      begin
        {$REGION 'boleto nao encontrado.'}
        TBResultados.Insert;
        TBResultadosBoleto.Value:=DBGrid1.DataSource.DataSet.FieldByName('NumeroBoleto').Value;
        TBResultadosCliente.Value:=0;
        TBResultadosNome.Value:='';
        TBResultadosValorPago.Value:=DBGrid1.DataSource.DataSet.FieldByName('ValorPago').Value;
        TBResultadosStatus.Value:='';
        TBResultadosMensagem.Value:='BOLETO NAO ENCONTRADO.';
        TBResultados.Post;
        {$ENDREGION}
      end else
      begin
        {$REGION 'boleto no retorno ainda não foi pago.'}
        if TBRetornosValorPago.Value <= 0 then
        begin
          TBResultados.Insert;
          //TBResultadosBoleto.Value:=StrToInt(DBGrid1.DataSource.DataSet.FieldByName('SeuNumero').Value);
          TBResultadosBoleto.Value:=StrToInt(DBGrid1.DataSource.DataSet.FieldByName('NumeroBoleto').Value);
          TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
          TBResultadosNome.Value:=QYBoletosCLI_NOME.Value;
          TBResultadosValorPago.Value:=0;
          TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
          TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
          TBResultados.Post;
          Continue;
        end;
        {$ENDREGION}

        {$REGION 'verifica se boleto já está baixado.'}
        if QYBoletosBOL_STATUS.Value='B' then
        begin
          TBResultados.Insert;
          TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
          TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
          TBResultadosNome.Value:=QYBoletosCLI_NOME.Value;
          TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
          TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
          TBResultadosMensagem.Value:='ESTE BOLETO JA FOI BAIXADO.';
          TBResultados.Post;
          Continue; //pula para o próximo registro de retorno selecionado.
        end;
        {$ENDREGION}

        {$REGION 'verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
        TemAlgumaBaixa:=False;
        QYBoletosItens.First;
        while not QYBoletosItens.Eof do
        begin
          if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
          begin
            TemAlgumaBaixa:=True;
            Break; //sai do while boletositens.
          end;
          QYBoletosItens.Next;
        end;
        if TemAlgumaBaixa then
        begin
          TBResultados.Insert;
          TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
          TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
          TBResultadosNome.Value:=QYBoletosCLI_NOME.Value;
          TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
          TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
          TBResultadosMensagem.Value:='JA EXISTE UMA OU MAIS CONTAS A RECEBER BAIXADAS NESTE BOLETO. A BAIXA TERA QUE SER MANUAL.';
          TBResultados.Post;
          Continue; //pula para o próximo registro de retorno selecionado.
        end;
        {$ENDREGION}

        //marca boleto como baixado.
        DM2.TBBoletos.Close;
        DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
        DM2.TBBoletos.Open;
        DM2.TBBoletos.Edit;
        DM2.TBBoletosBOL_STATUS.Value:='B';
        DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
        DM2.TBBoletosBOL_DTPAGAMENTO.Value:=DBGrid1.DataSource.DataSet.FieldByName('DataCredito').Value;
        DM2.TBBoletosBOL_VALORPAGO.Value:=DBGrid1.DataSource.DataSet.FieldByName('ValorPago').AsExtended;
        DM2.TBBoletos.Post;

        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add(
          'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
          'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo');

        DM2.TBBoletosItens.First;
        PrimeiraContaReceber:=True;
        while not DM2.TBBoletosItens.Eof do
        begin
          {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
          DM.TBReceber.Close;
          DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
          DM.TBReceber.Open;
          DM.QYAux.Close;
          DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
          DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
          DM.QYAux.ParamByName('dtpagamento').AsDate:=DBGrid1.DataSource.DataSet.FieldByName('DataCredito').Value;
          DM.QYAux.ParamByName('status').AsString:='B';
          DM.QYAux.ParamByName('tipobaixa').AsString:='T';
          DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
          if PrimeiraContaReceber then
          begin
            PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
            //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
            if DM2.TBBoletosBOL_VALORTOTAL.Value < DBGrid1.DataSource.DataSet.FieldByName('ValorPago').AsExtended then
            DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (DBGrid1.DataSource.DataSet.FieldByName('ValorPago').AsExtended - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
            DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
          end else
          DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
          DM.QYAux.ExecSQL;
          {$ENDREGION}
          DM2.TBBoletosItens.Next;
        end;

        //faz o lançamento no fluxo de caixa.
        DM.TBCaixa.Insert;
        DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
        DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
        DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
        DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
        DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
        DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
        DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
        DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
        DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
        DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
        DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
        DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

        //exibe resultado pro usuário.
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosCLI_NOME.Value;
        TBResultadosValorPago.Value:=DBGrid1.DataSource.DataSet.FieldByName('ValorPago').AsExtended; //QYBoletosBOL_VALORPAGO.Value;
        TBResultadosStatus.Value:='B';
        TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
        TBResultados.Post;
      end;
    end;
    QYBoletos.EnableControls;
    QYBoletosItens.EnableControls;

    //faz atualizar os campos das contas a receber.
    DM2.TBBoletosItens.Close;
    DM2.TBBoletosItens.Open;
  end;
end;

procedure TFormBoletosAPIConsulta.ConsultarBoletos1Click(Sender: TObject);
var
  FiltrosAPI: TACBrBoletoWSFiltroConsulta;
  Retorno: TListaACBrBoletoRetornoWS;
  RetornoDetalhe: TACBrBoletoRetornoWS;
  I: Integer;
  RetornoJSON, erroObject: TJSONObject;
  errosArray: TJSONArray;
  Mensagem: String;
begin
  AbortIf(Edit4.Text='','Informe a conta.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg('O serviço de consulta por API do banco só está disponível para os bancos: '+#13#10+#13#10+'001 - Banco do Brasil'+#13#10+'756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;

  Screen.Cursor:=crHourGlass;

  {$REGION 'Dados do emitente'}
  if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil else
  if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
  {$ENDREGION}

  //Exemplo utilizando como Banco do Brasil API
  FiltrosAPI:=ACBrBoleto1.Configuracoes.WebService.Filtro;

  FiltrosAPI.Clear;
  if ComboBox4.Text='TODOS' then FiltrosAPI.indicadorSituacao:=isbNenhum else
  if ComboBox4.Text='ABERTOS' then FiltrosAPI.indicadorSituacao:=isbAberto else
  if ComboBox4.Text='BAIXADOS' then FiltrosAPI.indicadorSituacao:=isbBaixado;
  FiltrosAPI.dataMovimento.DataInicio := StrToDate(MaskEdit3.Text,FS);
  FiltrosAPI.dataMovimento.DataFinal  := StrToDate(MaskEdit4.Text,FS);
  //FiltrosAPI.indiceContinuidade       := 300;

  ACBrBoleto1.Configuracoes.WebService.Operacao := tpConsulta;
//  case cbbWSConsulta.ItemIndex of
//    0 : ACBrBoleto1.Configuracoes.WebService.Operacao := tpConsulta;
//    1 : ACBrBoleto1.Configuracoes.WebService.Operacao := tpConsultaDetalhe;
//  end;

  ACBrBoleto1.Enviar;
  Memo1.Lines.Clear;
  case ACBrBoleto1.Configuracoes.WebService.Operacao of
    tpConsulta:
      begin
        Retorno:=ACBrBoleto1.ListaConsultaRetornoWeb;
        if Retorno.Count > 0 then
        begin
          try
            RetornoJSON:=TJSONObject.ParseJSONValue(Retorno[I].JSON) as TJSONObject;
            if Assigned(RetornoJSON) then
            begin
              // Obtém o array de erros
              errosArray:=RetornoJSON.GetValue('erros') as TJSONArray;
              if Assigned(errosArray) and (errosArray.Count > 0) then
              begin
                // Obtém o primeiro objeto de erro
                erroObject := errosArray.Items[0] as TJSONObject;

                // Obtém o texto da mensagem de erro
                Mensagem := erroObject.GetValue('textoMensagem').Value;
              end;
            end;
            {$REGION 'Log no memo 01'}
            {Memo1.Lines.Add('Retorno HTTP: '+IntToStr(Retorno[I].HTTPResultCode));
            Memo1.Lines.Add('JSON:'+Retorno[I].JSON);
            Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');

            Memo1.Lines.Add('Cod_Retorno='+ Retorno[i].CodRetorno + sLineBreak +
                            'Msg_Retorno='+ Retorno[i].MsgRetorno + sLineBreak +
                            'Ori_Retorno='+ Retorno[i].OriRetorno + sLineBreak +
                            'HTTP_Result='+ IntToStr(Retorno[i].HTTPResultCode) + sLineBreak +
                            'JSON='+ Retorno[i].JSON);
            Memo1.Lines.Add('indicadorContinuidade=' + BoolToStr(Retorno[0].indicadorContinuidade));
            Memo1.Lines.Add('proximoIndice=' + IntToStr(Retorno[0].proximoIndice));
            Memo1.Lines.Add('Mensagem: '+Mensagem);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add(' ');}
            {$ENDREGION}
            TBRetornos.EmptyDataSet;
            for I := 0 to Pred(Retorno.Count) do
            begin
              if Retorno[I].DadosRet.TituloRet.NossoNumero<>'' then
              begin
                TBRetornos.Insert;
                TBRetornosCarteiraConvenio.Value          :=Retorno[I].DadosRet.TituloRet.Carteira;
                TBRetornosCarteiraConveioVariacao.Value   :=Retorno[I].DadosRet.TituloRet.Modalidade.ToString;
                TBRetornosCodigo.Value                    :=I+1;
                TBRetornosContrato.Value                  :=Retorno[I].DadosRet.TituloRet.Contrato;
                if DateToStr(Retorno[I].DadosRet.TituloRet.DataCredito)<>'30/12/1899' then
                TBRetornosDataCredito.Value               :=Retorno[I].DadosRet.TituloRet.DataCredito;
                if DateToStr(Retorno[I].DadosRet.TituloRet.DataMovimento)<>'30/12/1899' then
                TBRetornosDataMovimento.Value             :=Retorno[I].DadosRet.TituloRet.DataMovimento;
                TBRetornosDataRegistro.Value              :=Retorno[I].DadosRet.TituloRet.DataRegistro;
                TBRetornosDataVencimento.Value            :=Retorno[I].DadosRet.TituloRet.Vencimento;
                TBRetornosEstadoTituloCobranca.Value      :=Retorno[I].DadosRet.TituloRet.EstadoTituloCobranca;
                TBRetornosEstadoTituloCobrancaCodigo.Value:=Retorno[I].DadosRet.TituloRet.CodigoEstadoTituloCobranca;

                TBRetornosNumeroBoleto.Value              :=IntToStr(StrToInt(Copy(Retorno[I].DadosRet.TituloRet.NossoNumero,11,10)));
                TBRetornosSeuNumero.Value                 :=Retorno[I].DadosRet.TituloRet.SeuNumero;
                TBRetornosValorAtual.Value                :=Retorno[I].DadosRet.TituloRet.ValorAtual;
                TBRetornosValorOriginal.Value             :=Retorno[I].DadosRet.TituloRet.ValorDocumento;
                TBRetornosValorMoraJuros.Value            :=Retorno[I].DadosRet.TituloRet.ValorMoraJuros;
                TBRetornosValorMulta.Value                :=Retorno[I].DadosRet.TituloRet.ValorMulta;
                TBRetornosValorPago.Value                 :=Retorno[I].DadosRet.TituloRet.ValorPago;
                TBRetornos.Post;
              end;
              {$REGION 'Log no memo 02'}
              {Memo1.Lines.Add('[Boletos Index = '             + FormatFloat('000',I)+']');
              Memo1.Lines.Add('numeroBoleto = '               + Retorno[I].DadosRet.TituloRet.NossoNumero);
              Memo1.Lines.Add('SeuNumero = '                  + Retorno[I].DadosRet.TituloRet.SeuNumero);
              Memo1.Lines.Add('dataRegistro = '               + DateToStr(Retorno[I].DadosRet.TituloRet.DataRegistro));
              Memo1.Lines.Add('dataVencimento = '             + DateToStr(Retorno[I].DadosRet.TituloRet.Vencimento));
              Memo1.Lines.Add('valorOriginal = '              + currtostr(Retorno[I].DadosRet.TituloRet.ValorDocumento));
              Memo1.Lines.Add('carteiraConvenio = '           + Retorno[I].DadosRet.TituloRet.Carteira);
              Memo1.Lines.Add('variacaoCarteiraConvenio = '   + intToStr(Retorno[I].DadosRet.TituloRet.Modalidade));
              Memo1.Lines.Add('codigoEstadoTituloCobranca = ' + Retorno[I].DadosRet.TituloRet.codigoEstadoTituloCobranca);
              Memo1.Lines.Add('estadoTituloCobranca = '       + Retorno[I].DadosRet.TituloRet.estadoTituloCobranca);
              Memo1.Lines.Add('contrato = '                   + Retorno[I].DadosRet.TituloRet.Contrato);
              Memo1.Lines.Add('dataMovimento = '              + DateToStr(Retorno[I].DadosRet.TituloRet.dataMovimento));
              Memo1.Lines.Add('dataCredito = '                + DateToStr(Retorno[I].DadosRet.TituloRet.dataCredito));
              Memo1.Lines.Add('valorAtual = '                 + CurrToStr(Retorno[I].DadosRet.TituloRet.valorAtual));
              Memo1.Lines.Add('valorPago = '                  + CurrToStr(Retorno[I].DadosRet.TituloRet.ValorPago));
              Memo1.Lines.Add('idboleto: '+Retorno[I].DadosRet.IDBoleto.IDBoleto);
              Memo1.Lines.Add('urlpix: '+Retorno[I].DadosRet.TituloRet.UrlPix);
              Memo1.Lines.Add('juros: '+currtostr(Retorno[I].DadosRet.TituloRet.ValorMoraJuros));
              Memo1.Lines.Add('multa: '+currtostr(Retorno[I].DadosRet.TituloRet.ValorMulta));}
              {$ENDREGION}
            end;
          finally
          end;
        end;

      end;
    tpConsultaDetalhe:
      begin
        if ACBrBoleto1.TotalListaRetornoWeb > 0 then
        begin
          RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[i];
          try
            Memo1.Lines.Add('Cod_Retorno='+ RetornoDetalhe.CodRetorno + sLineBreak +
                            'Msg_Retorno='+ RetornoDetalhe.MsgRetorno + sLineBreak +
                            'Ori_Retorno='+ RetornoDetalhe.OriRetorno + sLineBreak +
                            'HTTP_Result='+ IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                            'JSON='+ RetornoDetalhe.JSON);
            Memo1.Lines.Add('indicadorContinuidade=' + BoolToStr(RetornoDetalhe.indicadorContinuidade));
            Memo1.Lines.Add('proximoIndice=' + IntToStr(RetornoDetalhe.proximoIndice));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add(' ');
            for I := 0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
            begin
              RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[i];
              Memo1.Lines.Add('[Boletos Index = '             + FormatFloat('000',I)+']');
              Memo1.Lines.Add('numeroBoletoBB = '             + RetornoDetalhe.DadosRet.TituloRet.NossoNumero);
              Memo1.Lines.Add('dataRegistro = '               + DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataRegistro));
              Memo1.Lines.Add('dataVencimento = '             + DateToStr(RetornoDetalhe.DadosRet.TituloRet.Vencimento));
              Memo1.Lines.Add('valorOriginal = '              + CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorDocumento));
              Memo1.Lines.Add('carteiraConvenio = '           + RetornoDetalhe.DadosRet.TituloRet.Carteira);
              Memo1.Lines.Add('variacaoCarteiraConvenio = '   + intToStr(RetornoDetalhe.DadosRet.TituloRet.Modalidade));
              Memo1.Lines.Add('codigoEstadoTituloCobranca = ' + RetornoDetalhe.DadosRet.TituloRet.codigoEstadoTituloCobranca);
              Memo1.Lines.Add('estadoTituloCobranca = '       + RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca);
              Memo1.Lines.Add('contrato = '                   + RetornoDetalhe.DadosRet.TituloRet.Contrato);
              Memo1.Lines.Add('dataMovimento = '              + DateToStr(RetornoDetalhe.DadosRet.TituloRet.dataMovimento));
              Memo1.Lines.Add('dataCredito = '                + DateToStr(RetornoDetalhe.DadosRet.TituloRet.dataCredito));
              Memo1.Lines.Add('valorAtual = '                 + CurrToStr(RetornoDetalhe.DadosRet.TituloRet.valorAtual));
              Memo1.Lines.Add('valorPago = '                  + CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorPago));
              Memo1.Lines.Add('  ---  ');
            end;
          finally
          end;
        end;
      end;
  end;
  Screen.Cursor:=crDefault;
  MessageDlg('Consulta efetuada.',mtInformation,[mbOk],0);
end;

procedure TFormBoletosAPIConsulta.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosAPIConsulta.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosAPIConsulta.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosAPIConsulta.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosAPIConsulta.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosAPIConsulta.FiltrarPorEsteTipoDeOcorrencia1Click(Sender: TObject);
begin
  AbortIf(TBRetornos.IsEmpty,'Nenhum arquivo de retorno carregado.');

  Label17.Caption:='Filtro: '+TBRetornosEstadoTituloCobranca.Value;
  Label17.Font.Color:=clFuchsia;
  TBRetornos.Filter:='EstadoTituloCobranca='+QuotedStr(TBRetornosEstadoTituloCobranca.Value);
  TBRetornos.Filtered:=False;
  TBRetornos.Filtered:=True;
end;

procedure TFormBoletosAPIConsulta.FormCreate(Sender: TObject);
begin
  TBRetornos.CreateDataSet; //cria a estrutura da tabela.
  TBRetornos.Open;
  TBResultados.CreateDataSet; //cria a estrutura da tabela.
  TBResultados.Open;

  Memo1.Visible:=False;
  ComboBox4.ItemIndex:=0;
  ACBrBoleto1.DirArqRemessa:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\';
  ACBrBoleto1.DirArqRetorno:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Retorno\';
  MaskEdit3.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit4.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormBoletosAPIConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosAPIConsulta.InverterSelecao1Click(Sender: TObject);
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

procedure TFormBoletosAPIConsulta.LimparFiltro1Click(Sender: TObject);
begin
  TBRetornos.Filtered:=False;
  TBRetornos.Filter:='';
  Label17.Caption:='Clique com o direito para filtrar os registros.';
  Label17.Font.Color:=clBlack;
end;

procedure TFormBoletosAPIConsulta.SelecionarTodos1Click(Sender: TObject);
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

procedure TFormBoletosAPIConsulta.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
