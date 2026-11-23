unit BoletosWebService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components, Data.Bind.ObjectScope,
  ACBrBase, ACBrBoleto, ACBrBoletoConversao, ACBrBoletoRetorno, ACBrPIXBase, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Data.DB,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, PngSpeedButton,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, DateUtils, System.JSON;

type
  TFormBoletosWebService = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    PngBitBtn1: TPngBitBtn;
    Memo1: TMemo;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label5: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    PngBitBtn6: TPngBitBtn;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    ComboBox4: TComboBox;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label8: TLabel;
    Image2: TImage;
    Label10: TLabel;
    Image3: TImage;
    Label11: TLabel;
    Bevel2: TBevel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    QYBoletos: TIBQuery;
    QYBoletosBOL_ACEITE: TIBStringField;
    QYBoletosBOL_BAIRRO: TIBStringField;
    QYBoletosBOL_BAIXACODIGO: TIntegerField;
    QYBoletosBOL_BAIXADOPOR: TIBStringField;
    QYBoletosBOL_CARTEIRA: TIBStringField;
    QYBoletosBOL_CARTEIRACOD: TIntegerField;
    QYBoletosBOL_CEP: TIBStringField;
    QYBoletosBOL_CIDADE: TIBStringField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_CNPJ: TIBStringField;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_CODIGOBARRAS: TIBStringField;
    QYBoletosBOL_COMPLEMENTO: TIBStringField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_CONVENIO: TIBStringField;
    QYBoletosBOL_CPF: TIBStringField;
    QYBoletosBOL_DESCPORC: TFMTBCDField;
    QYBoletosBOL_DESCTIPO: TIBStringField;
    QYBoletosBOL_DESCVALOR: TFMTBCDField;
    QYBoletosBOL_DIASBAIXA: TIntegerField;
    QYBoletosBOL_DIASPROTESTO: TIntegerField;
    QYBoletosBOL_DTATUALIZACAO: TDateField;
    QYBoletosBOL_DTBAIXABANCO: TDateField;
    QYBoletosBOL_DTCADASTRO: TDateField;
    QYBoletosBOL_DTDESCONTO: TDateField;
    QYBoletosBOL_DTJUROSAPOS: TDateField;
    QYBoletosBOL_DTPAGAMENTO: TDateField;
    QYBoletosBOL_DTPROTESTO: TDateField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_ENDERECO: TIBStringField;
    QYBoletosBOL_ESPECIE: TIBStringField;
    QYBoletosBOL_ESPECIEDOC: TIBStringField;
    QYBoletosBOL_ESTADO: TIBStringField;
    QYBoletosBOL_GEROUREMESSA: TIBStringField;
    QYBoletosBOL_INSTRUCAO1: TIBStringField;
    QYBoletosBOL_INSTRUCAO2: TIBStringField;
    QYBoletosBOL_INSTRUCAO3: TIBStringField;
    QYBoletosBOL_INSTRUCAO4: TIBStringField;
    QYBoletosBOL_INSTRUCAO5: TIBStringField;
    QYBoletosBOL_LINHADIGITAVEL: TIBStringField;
    QYBoletosBOL_LOCALPAGTO: TIBStringField;
    QYBoletosBOL_MODALIDADE: TIntegerField;
    QYBoletosBOL_MORACODIGO: TIBStringField;
    QYBoletosBOL_MORAJUROS: TFMTBCDField;
    QYBoletosBOL_MULTA: TFMTBCDField;
    QYBoletosBOL_NOME: TIBStringField;
    QYBoletosBOL_NOSSONUMERO: TIBStringField;
    QYBoletosBOL_NUMERO: TIBStringField;
    QYBoletosBOL_OBSERVACOES: TWideMemoField;
    QYBoletosBOL_PROTESTOCODIGO: TIntegerField;
    QYBoletosBOL_STATUS: TIBStringField;
    QYBoletosBOL_TIPOPESSOA: TIBStringField;
    QYBoletosBOL_USUARIO: TIBStringField;
    QYBoletosBOL_VALORBOLETO: TFMTBCDField;
    QYBoletosBOL_VALORITENS: TFMTBCDField;
    QYBoletosBOL_VALORJUROS: TFMTBCDField;
    QYBoletosBOL_VALORMULTA: TFMTBCDField;
    QYBoletosBOL_VALORPAGO: TFMTBCDField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosBAN_CODIGO: TIntegerField;
    QYBoletosBAN_NOME: TIBStringField;
    QYBoletosCON_AGENCIA: TIBStringField;
    QYBoletosCON_AGENCIADIGITO: TIntegerField;
    QYBoletosCON_BANCO: TIntegerField;
    QYBoletosCON_CEDENTE: TIBStringField;
    QYBoletosCON_CEDENTENOME: TIBStringField;
    QYBoletosCON_CODIGO: TIntegerField;
    QYBoletosCON_CONTA: TIBStringField;
    QYBoletosCON_CONTADIGITO: TIntegerField;
    QYBoletosCON_NOME: TIBStringField;
    QYBoletosCON_NOSSONUMDIGITOS: TIntegerField;
    QYBoletosCON_NOSSONUMFORMATAR: TIBStringField;
    QYBoletosItens: TIBQuery;
    QYBoletosItensBOI_CODIGO: TIntegerField;
    QYBoletosItensBOI_BOLETO: TIntegerField;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_NUMDOCTO: TIBStringField;
    TRBoletosItens: TIBTransaction;
    TRBoletos: TIBTransaction;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    QYBoletosCON_CEDENTEDIGITO: TIntegerField;
    QYBoletosCON_CLIENTID: TIBStringField;
    QYBoletosCON_CLIENTSECRET: TIBStringField;
    QYBoletosCON_KEYUSER: TIBStringField;
    QYBoletosCON_TIPOCOBRANCA: TIBStringField;
    PngBitBtn2: TPngBitBtn;
    QYBoletosCON_CHAVEPIX: TIBStringField;
    QYBoletosCON_CHAVEPIXTIPO: TIBStringField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosWebService: TFormBoletosWebService;

implementation
uses DataMod, DataMod2, DataModSearch, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosWebService.Edit1Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosWebService.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormBoletosWebService.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormBoletosWebService.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosWebService.Edit3Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosWebService.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosWebService.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosWebService.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosWebService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM2.TBBoletos.Close;
  DM2.TBBoletos.Open;
end;

procedure TFormBoletosWebService.FormCreate(Sender: TObject);
begin
  ComboBox4.ItemIndex:=1;
  ACBrBoleto1.DirArqRemessa:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\';
  ACBrBoleto1.DirArqRetorno:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Retorno\';
  MaskEdit3.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit4.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormBoletosWebService.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosWebService.PngBitBtn1Click(Sender: TObject);
var
  Titulo: TACBrTitulo;
  SLRemessa: TStringList;
  I, J, X: Integer;
begin
{
configuracao para o siccob.
 AcBrBoleto.Cedente.CedenteWS.ClientID       := Client_Id gerado no portal developpers sicoob;
AcBrBoleto.Cedente.CedenteWS.ClientSecret  := Client_Id gerado no portal developpers sicoob;
AcBrBoleto.Cedente.CedenteWS.KeyUser 	   := Access token (Bearer) portal developpers sicoob;
AcBrBoleto.Cedente.CedenteWS.IndicadorPix  := True; //para boleto híbrido

AcBrBoleto.Configuracoes.WebService.Ambiente           := taProducao; //Só tem produção
AcBrBoleto.Configuracoes.WebService.SSLCryptLib        := cryOpenSSL;
AcBrBoleto.Configuracoes.WebService.SSLHTTPLib         := httpOpenSSL;
AcBrBoleto.Configuracoes.WebService.SSLType            := LT_TLSv1_2;
AcBrBoleto.Configuracoes.WebService.TimeOut            := 30000;
AcBrBoleto.Configuracoes.WebService.UseCertificateHTTP := True;

AcBrBoleto.Configuracoes.WebService.ArquivoCRT         := 'c:\ChavePublica.pem';
AcBrBoleto.Configuracoes.WebService.ArquivoKEY         := 'c:\ChavePrivada.key';

Para extrair do certificado CRT e KEY, segue o link do post: https://www.projetoacbr.com.br/forum/topic/73380-exportar-certificado-pem-crt-e-key/



ACBrBoleto1.Cedente.CedenteWS.Scope :=  'cobranca_boletos_consultar '+
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
}
  if DBGrid1.SelectedRows.Count<=0 then
  begin
    MessageDlg('Nenhum boleto selecionado.',mtError,[mbOk],0);
    Exit;
  end;

  DMS.QYContas.Close;
  DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DMS.QYContas.Open;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      {$REGION 'Dados do emitente'}
      // ACBrBoleto1.Banco.Numero:=QYContasCON_BANCO.Value; //passou a ser read-only.
      if QYBoletosCON_BANCO.Value=085 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoCECRED;
      if QYBoletosCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI;
      if QYBoletosCON_BANCO.Value=004 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
      if QYBoletosCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
      if QYBoletosCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
      if QYBoletosCON_BANCO.Value=422 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoSafra;
      if QYBoletosCON_BANCO.Value=021 then ACBrBoleto1.Banco.TipoCobranca:=cobBanestes;
      if QYBoletosCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
      if QYBoletosCON_BANCO.Value=320 then ACBrBoleto1.Banco.TipoCobranca:=cobBicBanco;
      if QYBoletosCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
      //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobBradescoSICOOB; //qual o código do banco?
      if QYBoletosCON_BANCO.Value=070 then ACBrBoleto1.Banco.TipoCobranca:=cobBRB;
      if (QYBoletosCON_BANCO.Value=104) and (QYBoletosCON_TIPOCOBRANCA.Value='SICOB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaSicob;
      if (QYBoletosCON_BANCO.Value=104) and (QYBoletosCON_TIPOCOBRANCA.Value='SIGCB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica;
      if QYBoletosCON_BANCO.Value=399 then ACBrBoleto1.Banco.TipoCobranca:=cobHSBC;
      if QYBoletosCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
      //if QYBoletosCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobSafraBradesco; //qual o código do banco?
      if QYBoletosCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;

      if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
      ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
      ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

      ACBrBoleto1.Cedente.Agencia:=QYBoletosCON_AGENCIA.Value;
      ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(QYBoletosCON_AGENCIADIGITO.Value);
      ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
      ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
      ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
      ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
      ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
      ACBrBoleto1.Cedente.CodigoCedente:=QYBoletosCON_CEDENTE.Value+IntToStr(QYBoletosCON_CEDENTEDIGITO.Value);
      //ACBrBoleto1.Cedente.CodigoTransmissao:=
      ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
      ACBrBoleto1.Cedente.Convenio:=QYBoletosBOL_CONVENIO.Value; //faz o q? informar o q?
      ACBrBoleto1.Cedente.Conta:=QYBoletosCON_CONTA.Value;
      ACBrBoleto1.Cedente.ContaDigito:=IntToStr(QYBoletosCON_CONTADIGITO.Value);
      ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
      ACBrBoleto1.Cedente.Modalidade:=QYBoletosBOL_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
      ACBrBoleto1.Cedente.Nome:=QYBoletosCON_CEDENTENOME.Value;
      ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
      ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
      ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
      ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
      ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
      ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

      ACBrBoleto1.Cedente.CedenteWS.ClientID:=QYBoletosCON_CLIENTID.Value;
      ACBrBoleto1.Cedente.CedenteWS.ClientSecret:=QYBoletosCON_CLIENTSECRET.Value;
      ACBrBoleto1.Cedente.CedenteWS.KeyUser:=QYBoletosCON_KEYUSER.Value;
      ACBrBoleto1.Cedente.CedenteWS.IndicadorPix:=True;
      ACBrBoleto1.Cedente.PIX.Chave:=QYBoletosCON_CHAVEPIX.Value;
      if QYBoletosCON_CHAVEPIXTIPO.Value='NENHUM' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
      if QYBoletosCON_CHAVEPIXTIPO.Value='ALEATORIO' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
      if QYBoletosCON_CHAVEPIXTIPO.Value='CELULAR' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
      if QYBoletosCON_CHAVEPIXTIPO.Value='CNPJ' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
      if QYBoletosCON_CHAVEPIXTIPO.Value='CPF' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
      if QYBoletosCON_CHAVEPIXTIPO.Value='EMAIL ' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
      ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=False;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      if QYBoletosBOL_ACEITE.Value='A' then
      Titulo.Aceite            := atSim else
      Titulo.Aceite            := atNao;
      Titulo.CaracTitulo       := tcSimples;
      if QYBoletosCON_BANCO.Value=104 then
      Titulo.Carteira          := QYBoletosBOL_CARTEIRA.Value else //codigo da carteira em alfanumerico. (RG ou SR para caixa)
      Titulo.Carteira          := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
      Titulo.CarteiraEnvio     := tceCedente;
      Titulo.CodigoGeracao     := '01'; //??Copy(ComboBox2.Text,1,2); //01-entrada de titulo.
      Titulo.CodigoLiquidacao  := '1'; //?? codigo baixa/devolucao? //    02 : result := 'Casa Lotérica';  03 : result := 'Agências CAIXA';  04 : result := 'Compensação Eletrônica';  05 : result := 'Compensação Convencional';  06 : result := 'Internet Banking';  07 : result := 'Correspondente Bancário';  08 : result := 'Em Cartório'
      //CodigoLiquidacaoDescricao  := ??
      Titulo.CodigoMora        := QYBoletosBOL_MORACODIGO.Value;
      Titulo.DataAbatimento    := 0;
      Titulo.DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
      Titulo.DataCredito       := 0;
      //Titulo.DataDesconto      := DM2.TBBoletosBOL_DTDESCONTO.Value; // 0;
      Titulo.DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;
      Titulo.DataMoraJuros     := QYBoletosBOL_DTJUROSAPOS.Value;
      Titulo.DataOcorrencia    := 0;
      Titulo.DataProcessamento := Now;
      Titulo.DataProtesto      := QYBoletosBOL_DTPROTESTO.Value;
      //DescricaoMotivoRejeicaoComando :=
      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='02' then Titulo.EspecieDoc:= 'DM';
      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='03' then Titulo.EspecieDoc:= 'DMI';
      Titulo.EspecieMod        := ''; //Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2); //??
      //Informativo       :=
      Titulo.Instrucao1        := QYBoletosBOL_INSTRUCAO1.Value; // '00'; //padL(trim(edtInstrucoes1.Text),2,'0');
      Titulo.Instrucao2        := QYBoletosBOL_INSTRUCAO2.Value; //'00'; //padL(trim(edtInstrucoes2.Text),2,'0');
      Titulo.Instrucao3        := QYBoletosBOL_INSTRUCAO3.Value; //'';
      //Liquidacao        :=
      Titulo.LocalPagamento    := QYBoletosBOL_LOCALPAGTO.Value;
      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
      //MotivoRejeicaoComando:=??
      Titulo.MultaValorFixo    := False;

      if DM2.TBBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero       := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero       := IntToStr(QYBoletosBOL_CODIGO.Value);
      //Titulo.NossoNumero       :=     '9156439';

      DM2.TBBoletosItens.FetchAll;
      Titulo.NumeroDocumento   := IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo.OcorrenciaOriginal.Tipo := toRemessaRegistrar; //padrão.
      Titulo.Parcela                 := 0;
      Titulo.PercentualMulta         := QYBoletosBOL_MULTA.AsExtended;
      Titulo.Referencia              := '';
      Titulo.Sacado.Bairro           := QYBoletosBOL_BAIRRO.Value;
      Titulo.Sacado.CEP              := LimparFormatacao(QYBoletosBOL_CEP.Value);
      Titulo.Sacado.Cidade           := QYBoletosBOL_CIDADE.Value;
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        Titulo.Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
        Titulo.Sacado.Pessoa         := pJuridica;
      end else
      begin
        Titulo.Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CPF.Value);
        Titulo.Sacado.Pessoa         := pFisica;
      end;
      Titulo.Sacado.Email            := '';
      Titulo.Sacado.Fone             := '';
      Titulo.Sacado.UF               := QYBoletosBOL_ESTADO.Value;
      Titulo.Sacado.Logradouro       := QYBoletosBOL_ENDERECO.Value;
      Titulo.Sacado.NomeSacado       := QYBoletosBOL_NOME.Value;
      Titulo.Sacado.Numero           := QYBoletosBOL_NUMERO.Value;
      //Sacado.SacadoAvalista
      Titulo.SeuNumero               := IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo.TextoLivre              := '';
      Titulo.TipoDiasProtesto        := diCorridos;
      Titulo.TipoImpressao           := tipNormal;
      //TotalParcelas         :=
      //UsoBanco              :=
      Titulo.ValorAbatimento         := 0;
      //Titulo.ValorDesconto           := DM2.TBBoletosBOL_DESCVALOR.AsExtended; //0;
      Titulo.ValorDescontoAntDia     := 0;
      Titulo.ValorDespesaCobranca    := 0;
      Titulo.ValorDocumento          := QYBoletosBOL_VALORTOTAL.AsExtended;
      Titulo.ValorIOF                := 0;
      Titulo.ValorMoraJuros          := QYBoletosBOL_MORAJUROS.AsExtended; //QYBoletosBOL_MORAJUROS.Value/100.00;
      Titulo.ValorOutrosCreditos     := 0;
      Titulo.ValorOutrasDespesas     := 0;
      Titulo.ValorPago               := 0;
      Titulo.ValorRecebido           := 0;
      Titulo.Vencimento              := QYBoletosBOL_DTVENCIMENTO.Value;
      //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      {$ENDREGION}

      //ACBrBoleto1.ListaConsultaRetornoWeb.
      ACBrBoleto1.Configuracoes.WebService.Operacao := tpInclui;
      //ACBrBoleto1.Cedente.PIX.Chave:=DM2.tbboletosbol_chavepix.Value;
      ACBrBoleto1.Enviar; // <<< retorna como false se o httpresult code for diferente de 200,201,202

      {$REGION 'Verifica lista com os retornos.'}
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        SLRemessa:=TStringList.Create;
        try
          for I:=0 to Pred(ACBrBoleto1.TotalListaRetornoWeb) do
          begin
            //Ler todos os campos da classe Retorno
            Memo1.Lines.Add('Retorno HTTP: '+IntToStr(ACBrBoleto1.ListaRetornoWeb[I].HTTPResultCode));
            Memo1.Lines.Add('JSON:'+ACBrBoleto1.ListaRetornoWeb[I].JSON);
            Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
            for J:= 0 to Pred(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao.Count) do
            begin
              Memo1.Lines.Add('Boleto rejeitado -> '+QYBoletosBOL_CODIGO.Value.ToString+' - '+ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem+' ('+J.ToString+')');
            end;

            //if NaoEstaVazio(ACBrBoleto1.ListaRetornoWeb[i].DadosRet.TituloRet.CodBarras) then
            if ACBrBoleto1.ListaRetornoWeb[i].DadosRet.TituloRet.CodBarras<>'' then
            begin
              DM.QYAux.Close;
              DM.QYAux.SQL.Clear;
              DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX=:qrcode where BOL_CODIGO=:codigo');
              DM.QYAux.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
              DM.QYAux.ParamByName('qrcode').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.UrlPix;
              DM.QYAux.ExecSQL;
              DM.TRAux.Commit;
              Memo1.Lines.Add('Boleto OK -> '+QYBoletosBOL_CODIGO.Value.ToString);
            end;
          end;
        finally
        end;
      end;
      {$ENDREGION}

    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Processo de envio completo.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosWebService.PngBitBtn2Click(Sender: TObject);
var
  FiltrosAPI: TACBrBoletoWSFiltroConsulta;
  Retorno: TListaACBrBoletoRetornoWS;
  RetornoDetalhe: TACBrBoletoRetornoWS;
  I: Integer;
  RetornoJSON, erroObject: TJSONObject;
  errosArray: TJSONArray;
  Mensagem: String;
begin
  if Edit4.Text='' then
  begin
    MessageDlg('Informe a conta.',mtWarning,[mbOk],0);
    Exit;
  end;

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI;
  {$REGION 'Dados do emitente'}
      // ACBrBoleto1.Banco.Numero:=QYContasCON_BANCO.Value; //passou a ser read-only.
{      if QYBoletosCON_BANCO.Value=085 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoCECRED;
      if QYBoletosCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI;
      if QYBoletosCON_BANCO.Value=004 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
      if QYBoletosCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
      if QYBoletosCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
      if QYBoletosCON_BANCO.Value=422 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoSafra;
      if QYBoletosCON_BANCO.Value=021 then ACBrBoleto1.Banco.TipoCobranca:=cobBanestes;
      if QYBoletosCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
      if QYBoletosCON_BANCO.Value=320 then ACBrBoleto1.Banco.TipoCobranca:=cobBicBanco;
      if QYBoletosCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
      //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobBradescoSICOOB; //qual o código do banco?
      if QYBoletosCON_BANCO.Value=070 then ACBrBoleto1.Banco.TipoCobranca:=cobBRB;
      if (QYBoletosCON_BANCO.Value=104) and (QYBoletosCON_TIPOCOBRANCA.Value='SICOB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaSicob;
      if (QYBoletosCON_BANCO.Value=104) and (QYBoletosCON_TIPOCOBRANCA.Value='SIGCB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica;
      if QYBoletosCON_BANCO.Value=399 then ACBrBoleto1.Banco.TipoCobranca:=cobHSBC;
      if QYBoletosCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
      //if QYBoletosCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobSafraBradesco; //qual o código do banco?
      if QYBoletosCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
      if QYBoletosCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;
 }

  if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value; //----- QYBoletosCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=DM.TBContasCON_AGENCIADIGITO.Value.ToString; //----- IntToStr(QYBoletosCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.TBContasCON_CEDENTE.Value+DM.TBContasCON_CEDENTEDIGITO.Value.ToString; //----- QYBoletosCON_CEDENTE.Value+IntToStr(QYBoletosCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //----- QYBoletosBOL_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value; //----- QYBoletosCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=DM.TBContasCON_CONTADIGITO.Value.ToString; //----- IntToStr(QYBoletosCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; //----- QYBoletosBOL_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBEmpresaEMP_NOME.Value; // DM.TBContasCON_CEDENTENOME.Value; //----- QYBoletosCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Cedente.CedenteWS.ClientID:=DM.TBContasCON_CLIENTID.Value; //----- QYBoletosCON_CLIENTID.Value;
  ACBrBoleto1.Cedente.CedenteWS.ClientSecret:=DM.TBContasCON_CLIENTSECRET.Value; //----- QYBoletosCON_CLIENTSECRET.Value;
  ACBrBoleto1.Cedente.CedenteWS.KeyUser:=DM.TBContasCON_KEYUSER.Value; //----- QYBoletosCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix:=True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIO' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL ' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=False;
  {$ENDREGION}

  //Exemplo utilizando como Banco do Brasil API
  FiltrosAPI:=ACBrBoleto1.Configuracoes.WebService.Filtro;

  FiltrosAPI.Clear;
  FiltrosAPI.indicadorSituacao        := isbNenhum;
  FiltrosAPI.dataMovimento.DataInicio := IncDay(Date,-1);
  FiltrosAPI.dataMovimento.DataFinal  := Date;
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

            Memo1.Lines.Add('Retorno HTTP: '+IntToStr(Retorno[I].HTTPResultCode));
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
            Memo1.Lines.Add(' ');
            for I := 0 to Pred(Retorno.Count) do
            begin
              Memo1.Lines.Add('[Boletos Index = '             + FormatFloat('000',I)+']');
              Memo1.Lines.Add('numeroBoleto = '               + Retorno[I].DadosRet.TituloRet.NossoNumero);
              Memo1.Lines.Add('SeuNumero = '                  + Retorno[I].DadosRet.TituloRet.SeuNumero);
              Memo1.Lines.Add('dataRegistro = '               + DateToStr(Retorno[I].DadosRet.TituloRet.DataRegistro));
              Memo1.Lines.Add('dataVencimento = '             + DateToStr(Retorno[I].DadosRet.TituloRet.Vencimento));
              Memo1.Lines.Add('valorOriginal = '              + DateToStr(Retorno[I].DadosRet.TituloRet.ValorDocumento));
              Memo1.Lines.Add('carteiraConvenio = '           + Retorno[I].DadosRet.TituloRet.Carteira);
              Memo1.Lines.Add('variacaoCarteiraConvenio = '   + intToStr(Retorno[I].DadosRet.TituloRet.Modalidade));
              Memo1.Lines.Add('codigoEstadoTituloCobranca = ' + Retorno[I].DadosRet.TituloRet.codigoEstadoTituloCobranca);
              Memo1.Lines.Add('estadoTituloCobranca = '       + Retorno[I].DadosRet.TituloRet.estadoTituloCobranca);
              Memo1.Lines.Add('contrato = '                   + Retorno[I].DadosRet.TituloRet.Contrato);
              Memo1.Lines.Add('dataMovimento = '              + DateToStr(Retorno[I].DadosRet.TituloRet.dataMovimento));
              Memo1.Lines.Add('dataCredito = '                + DateToStr(Retorno[I].DadosRet.TituloRet.dataCredito));
              Memo1.Lines.Add('valorAtual = '                 + CurrToStr(Retorno[I].DadosRet.TituloRet.valorAtual));
              Memo1.Lines.Add('valorPago = '                  + CurrToStr(Retorno[I].DadosRet.TituloRet.ValorPago));
              Memo1.Lines.Add('  ---  ');
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
  MessageDlg('Consulta efetuada.',mtInformation,[mbOk],0);
end;

procedure TFormBoletosWebService.PngBitBtn6Click(Sender: TObject);
var Where: String;
begin
  if (MaskEdit3.Text='  /  /    ') or (MaskEdit4.Text='  /  /    ') then
  begin
    MessageDlg('Digite as datas inicial e final',mtWarning,[mbOk],0);
    Exit;
  end;
  if Edit4.Text='' then
  begin
    MessageDlg('Informe a conta.',mtWarning,[mbOk],0);
    Exit;
  end;

  Where:=' and BOL_CONTA='+QuotedStr(Edit3.Text);
  if ComboBox4.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
  if ComboBox4.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
  if ComboBox4.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
  if Edit2.Text<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
  if CheckBox1.Checked then Where:=Where+' and BOL_GEROUREMESSA='+QuotedStr('N');

  QYBoletos.Close;
  QYBoletosItens.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add('select * from BOLETOS '+
                    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                    'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                    'where BOL_DTCADASTRO between :datainicial and :datafinal '+Where+' order by BOL_NOME, BOL_DTVENCIMENTO');
  QYBoletos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit3.Text);
  QYBoletos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit4.Text);
  QYBoletos.Open;
  QYBoletosItens.Open;

  QYBoletos.FetchAll;
  QYBoletosItens.FetchAll;
end;

procedure TFormBoletosWebService.PngSpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormBoletosWebService.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
