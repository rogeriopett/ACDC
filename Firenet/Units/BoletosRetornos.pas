unit BoletosRetornos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImgList, PngImageList, Menus, ACBrBase, ACBrBoleto, ACBrBoletoConversao,
  DBSBtn, ExtCtrls, Mask, StdCtrls, Buttons, PngBitBtn, Grids, DBGrids, PngSpeedButton,
  ComCtrls, DBClient, System.ImageList, Vcl.Imaging.pngimage, System.UITypes, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBoletosRetornos = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Bevel1: TBevel;
    ACBrBoleto1: TACBrBoleto;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DSBoletos: TDataSource;
    OpenDialog1: TOpenDialog;
    TBRetornos: TClientDataSet;
    DSRetornos: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    TBRetornosDataVencimento: TDateField;
    TBRetornosDataDoc: TDateField;
    TBRetornosNumDoc: TStringField;
    TBRetornosValorDoc: TCurrencyField;
    TBRetornosNossoNumero: TStringField;
    TBRetornosDataOcorrencia: TDateField;
    TBRetornosDataCredito: TDateField;
    TBRetornosDataBaixa: TDateField;
    TBRetornosValorRecebido: TCurrencyField;
    TBRetornosValorDesconto: TCurrencyField;
    TBRetornosValorAbatimento: TCurrencyField;
    TBRetornosValorMoraJuros: TCurrencyField;
    TBRetornosValorOutrasDesp: TCurrencyField;
    TBRetornosValorOutrosCreditos: TCurrencyField;
    TBRetornosSeuNumero: TStringField;
    PngSpeedButton1: TPngSpeedButton;
    AbrirArquivoRetorno1: TMenuItem;
    N1: TMenuItem;
    Bevel2: TBevel;
    Panel3: TPanel;
    Label12: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label13: TLabel;
    Image3: TImage;
    Label14: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Panel4: TPanel;
    Label15: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    BaixarSelecionados1: TMenuItem;
    TBResultados: TClientDataSet;
    DSResultados: TDataSource;
    TBResultadosBoleto: TIntegerField;
    TBResultadosCliente: TIntegerField;
    TBResultadosNome: TStringField;
    TBResultadosValorPago: TCurrencyField;
    TBResultadosStatus: TStringField;
    TBResultadosMensagem: TStringField;
    DSBoletosItens: TDataSource;
    Label16: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    TBRetornosMotivoRejeicao: TWideStringField;
    TBRetornosCodigoGeracao: TStringField;
    TBRetornosCodigoLiquidacao: TStringField;
    TBRetornosCodigoLiquidacaoDescricao: TStringField;
    TBRetornosValorDespesasCobranca: TCurrencyField;
    TBRetornosValorPago: TCurrencyField;
    TBRetornosOcorrencia: TStringField;
    TBRetornosOcorrenciaDescricao: TStringField;
    PopupMenu1: TPopupMenu;
    FiltrarPorEsteTipoDeOcorrencia1: TMenuItem;
    LimparFiltro1: TMenuItem;
    Label17: TLabel;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure AbrirArquivoRetorno1Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure BaixarSelecionados1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FiltrarPorEsteTipoDeOcorrencia1Click(Sender: TObject);
    procedure LimparFiltro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosRetornos: TFormBoletosRetornos;

implementation
uses DataMod, Funcoes1, DataMod2, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosRetornos.AbrirArquivoRetorno1Click(Sender: TObject);
var I: Integer;
begin
  AbortIf(Edit4.Text='','Nenhuma conta selecionada.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;
  if Copy(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value,Length(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value)-1,1)='\' then
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'RETORNOS' else
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\RETORNOS';
  if OpenDialog1.Execute then
  begin
    Label1.Caption:=OpenDialog1.FileName;
    if DM.TBContasCON_BANCO.Value=085 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoCECRED;
    if DM.TBContasCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasil;
    if DM.TBContasCON_BANCO.Value=004 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
    if DM.TBContasCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
    if DM.TBContasCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
    if DM.TBContasCON_BANCO.Value=422 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoSafra;
    if DM.TBContasCON_BANCO.Value=021 then ACBrBoleto1.Banco.TipoCobranca:=cobBanestes;
    if DM.TBContasCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
    if DM.TBContasCON_BANCO.Value=320 then ACBrBoleto1.Banco.TipoCobranca:=cobBicBanco;
    if DM.TBContasCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
    //if DM.TBContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobBradescoSICOOB; //qual o código do banco?
    if DM.TBContasCON_BANCO.Value=070 then ACBrBoleto1.Banco.TipoCobranca:=cobBRB;
    if (DM.TBContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SICOB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaSicob;
    if (DM.TBContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SIGCB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica;
    if DM.TBContasCON_BANCO.Value=399 then ACBrBoleto1.Banco.TipoCobranca:=cobHSBC;
    if DM.TBContasCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
    //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobSafraBradesco; //qual o código do banco?
    if DM.TBContasCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DM.TBContasCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DM.TBContasCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DM.TBContasCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;
//    ACBrBoleto1.ACBrBoletoFC.DirLogo  := 'c:\runtime\firenet\boletos\bancos\colorido\'; //CdsConfigPATH_LOGOTIPO.AsString;
//    ACBrBoleto1.ACBrBoletoFC.Filtro   := fiNenhum;
//    ACBrBoleto1.ACBrBoletoFC.LayOut   := lPadrao;
    ACBrBoleto1.LeCedenteRetorno:=True;
//    ACBrBoleto1.Banco.Digito          := 9; //CdsBancosDIGITO_NUMERO_BANCO.AsInteger;
    ACBrBoleto1.Banco.Numero          := DM.TBContasCON_BANCO.Value; //CdsBancosNUMERO_BANCO.AsInteger;
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
    ACBrBoleto1.Cedente.TipoInscricao:=pFisica;
    ACBrBoleto1.Cedente.Nome          := DM.TBContasCON_CEDENTENOME.Value; //'DISTAK BENEFICIAMENTO TEXTIL L'; //CdsBancosCEDENTE.AsString;
    ACBrBoleto1.Cedente.CNPJCPF       := ''; //'07675419000192'; //CdsBancosCEDENTE.AsString;
    ACBrBoleto1.Cedente.CodigoCedente := DM.TBContasCON_CEDENTE.Value; //'087000000062'; //CdsBancosCOD_CEDENTE.AsString;
    ACBrBoleto1.Cedente.Agencia       := DM.TBContasCON_AGENCIA.Value; // '04332'; //CdsBancosNUMERO_AGENCIA.AsString;
    ACBrBoleto1.Cedente.AgenciaDigito := IntToStr(DM.TBContasCON_AGENCIADIGITO.Value); // '0'; //CdsBancosDIGITO_AGENCIA.AsString;
    ACBrBoleto1.Cedente.Conta         := DM.TBContasCON_CONTA.Value; //'087000000062'; //CdsBancosNUMERO_CONTA.AsString;
    ACBrBoleto1.Cedente.ContaDigito   := IntToStr(DM.TBContasCON_CONTADIGITO.Value); // '2'; //CdsBancosDIGITO_CONTA.AsString;
//    ACBrBoleto1.Cedente.UF            := 'SC'; //CdsBancosUF_AGENCIA.AsString;
//    ACBrBoleto1.NomeArqRemessa        := CdsConfigPATH_REMESSA.AsString+FormatDateTime('DDMMYYYYHHMMSS',Now)+'.TXT';;
    ACBrBoleto1.DirArqRetorno:=ExtractFilePath(Label1.Caption);
    ACBrBoleto1.NomeArqRetorno:=ExtractFileName(Label1.Caption);
    ACBrBoleto1.LerRetorno;
    Label7.Caption:=IntToStr(ACBrBoleto1.Banco.Numero);
    Label8.Caption:=ACBrBoleto1.Cedente.Agencia+'-'+ACBrBoleto1.Cedente.AgenciaDigito;
    Label9.Caption:=ACBrBoleto1.Cedente.Conta+'-'+ACBrBoleto1.Cedente.ContaDigito;
    Label10.Caption:=ACBrBoleto1.Cedente.CodigoCedente;
    Label11.Caption:=ACBrBoleto1.Cedente.Nome;
    DBGrid2.SelectedRows.Clear; //limpa os registros selecionados. Se não fizer isso, se perde no loop da função de baixar os selecionados.
    TBResultados.EmptyDataSet;
    TBRetornos.EmptyDataSet;
    TBRetornos.Filter:='';
    TBRetornos.Filtered:=False;
    Label17.Caption:='Clique com o direito para filtrar os registros.';
    for I:=0 to ACBrBoleto1.ListadeBoletos.Count-1 do
    begin
//      if ACBrBoleto1.ListadeBoletos.Objects[I].ValorRecebido > 0 then
//      begin
        TBRetornos.Insert;
        TBRetornosDataVencimento.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].Vencimento;
        if DateToStr(TBRetornosDataVencimento.Value)='30/12/1899' then
        TBRetornosDataVencimento.Clear;

        TBRetornosDataDoc.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].DataDocumento;
        if DateToStr(TBRetornosDataDoc.Value)='30/12/1899' then
        TBRetornosDataDoc.Clear;

        TBRetornosNumDoc.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].NumeroDocumento;
        TBRetornosNossoNumero.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].NossoNumero;
        TBRetornosValorDoc.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorDocumento;

        TBRetornosDataOcorrencia.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].DataOcorrencia;
        if DateToStr(TBRetornosDataOcorrencia.Value)='30/12/1899' then
        TBRetornosDataOcorrencia.Clear;

        TBRetornosMotivoRejeicao.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].MotivoRejeicaoComando.Text; //DescricaoMotivoRejeicaoComando.Text;
        TBRetornosDataCredito.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].DataCredito;
        if DateToStr(TBRetornosDataCredito.Value)='30/12/1899' then
        TBRetornosDataCredito.Clear;

        TBRetornosDataBaixa.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].DataBaixa;
        if DateToStr(TBRetornosDataBaixa.Value)='30/12/1899' then
        TBRetornosDataBaixa.Clear;

        TBRetornosValorAbatimento.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorAbatimento;
        TBRetornosValorDesconto.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorDesconto;
        TBRetornosValorMoraJuros.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorMoraJuros;
        TBRetornosValorOutrasDesp.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorOutrasDespesas;
        TBRetornosValorOutrosCreditos.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorOutrosCreditos;
        TBRetornosValorRecebido.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorRecebido;
        TBRetornosSeuNumero.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].SeuNumero;

        TBRetornosCodigoGeracao.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].CodigoGeracao;
        TBRetornosCodigoLiquidacao.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].CodigoLiquidacao;
        TBRetornosCodigoLiquidacaoDescricao.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].CodigoLiquidacaoDescricao;
        TBRetornosValorPago.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorPago;
        TBRetornosValorDespesasCobranca.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].ValorDespesaCobranca;
        //TBRetornosOcorrencia.Value:=acbrboleto.TACBrTipoOcorrencia TAcbrtipoocorrencia(ACBrBoleto1.ListadeBoletos.Objects[I].OcorrenciaOriginal.Tipo);
        TBRetornosOcorrenciaDescricao.Value:=ACBrBoleto1.ListadeBoletos.Objects[I].OcorrenciaOriginal.Descricao;
        TBRetornos.Post;
//      end;
    end;
  end;
end;

procedure TFormBoletosRetornos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBoletosRetornos.BaixarSelecionados1Click(Sender: TObject);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
  I: Integer;
begin
  AbortIf(DBGrid2.SelectedRows.Count<=0,'Nenhum retorno selecionado.');

  if MessageDlg('Deseja realmente fazer a baixa dos boletos selecionados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYBoletosItens.DisableControls;
    QYBoletosItens.Close;
    QYBoletos.DisableControls;
    QYBoletos.Close;
    QYBoletos.SQL.Clear;
    QYBoletos.SQL.Add('select BOL_CODIGO, BOL_CLIENTE, BOL_STATUS, BOL_VALORPAGO, CLI_NOME from BOLETOS left join CLIENTES on BOL_CLIENTE=CLI_CODIGO where BOL_CODIGO=:codigo');
    TBResultados.EmptyDataSet;

    for I:=0 to DBGrid2.SelectedRows.Count-1 do
    begin
      DBGrid2.DataSource.DataSet.GotoBookmark(DBGrid2.SelectedRows.Items[I]);
      Application.ProcessMessages;
      QYBoletosItens.Close;
      QYBoletos.Close;
      //QYBoletos.ParamByName('codigo').AsInteger:=StrToInt(DBGrid2.DataSource.DataSet.FieldByName('SeuNumero').Value);
      QYBoletos.ParamByName('codigo').AsInteger:=StrToInt(DBGrid2.DataSource.DataSet.FieldByName('NumDoc').Value);
      QYBoletos.Open;
      QYBoletosItens.Open;
      if QYBoletos.IsEmpty then
      begin
        {$REGION 'boleto nao encontrado.'}
        TBResultados.Insert;
        TBResultadosBoleto.Value:=DBGrid2.DataSource.DataSet.FieldByName('SeuNumero').Value;
        TBResultadosCliente.Value:=0;
        TBResultadosNome.Value:='';
        TBResultadosValorPago.Value:=DBGrid2.DataSource.DataSet.FieldByName('ValorRecebido').Value;
        TBResultadosStatus.Value:='';
        TBResultadosMensagem.Value:='BOLETO NAO ENCONTRADO.';
        TBResultados.Post;
        {$ENDREGION}
      end else
      begin
        {$REGION 'boleto no retorno ainda não foi pago.'}
        if TBRetornosValorRecebido.Value <= 0 then
        begin
          TBResultados.Insert;
          //TBResultadosBoleto.Value:=StrToInt(DBGrid2.DataSource.DataSet.FieldByName('SeuNumero').Value);
          TBResultadosBoleto.Value:=StrToInt(DBGrid2.DataSource.DataSet.FieldByName('NumDoc').Value);
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
        DM2.TBBoletosBOL_DTPAGAMENTO.Value:=DBGrid2.DataSource.DataSet.FieldByName('DataCredito').Value;
        DM2.TBBoletosBOL_VALORPAGO.Value:=DBGrid2.DataSource.DataSet.FieldByName('ValorRecebido').AsExtended;
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
          DM.QYAux.ParamByName('dtpagamento').AsDate:=DBGrid2.DataSource.DataSet.FieldByName('DataCredito').Value;
          DM.QYAux.ParamByName('status').AsString:='B';
          DM.QYAux.ParamByName('tipobaixa').AsString:='T';
          DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
          if PrimeiraContaReceber then
          begin
            PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
            //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
            if DM2.TBBoletosBOL_VALORTOTAL.Value < DBGrid2.DataSource.DataSet.FieldByName('ValorRecebido').AsExtended then
            DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (DBGrid2.DataSource.DataSet.FieldByName('ValorRecebido').AsExtended - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
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
        TBResultadosValorPago.Value:=DBGrid2.DataSource.DataSet.FieldByName('ValorRecebido').AsExtended; //QYBoletosBOL_VALORPAGO.Value;
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

procedure TFormBoletosRetornos.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosRetornos.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosRetornos.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosRetornos.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletosRetornos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosRetornos.FiltrarPorEsteTipoDeOcorrencia1Click(Sender: TObject);
begin
  AbortIf(TBRetornos.IsEmpty,'Nenhum arquivo de retorno carregado.');

  Label17.Caption:='Filtro: '+TBRetornosOcorrenciaDescricao.Value;
  Label17.Font.Color:=clFuchsia;
  TBRetornos.Filter:='OcorrenciaDescricao='+QuotedStr(TBRetornosOcorrenciaDescricao.Value);
  TBRetornos.Filtered:=False;
  TBRetornos.Filtered:=True;
end;

procedure TFormBoletosRetornos.FormCreate(Sender: TObject);
begin
  TBRetornos.CreateDataSet; //cria a estrutura da tabela.
  TBRetornos.Open;
  TBResultados.CreateDataSet; //cria a estrutura da tabela.
  TBResultados.Open;
  Label1.Caption:='';
  Label7.Caption:='';
  Label8.Caption:='';
  Label9.Caption:='';
  Label10.Caption:='';
  Label11.Caption:='';

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CONTAPADRAO.Value;
  DM.TBContas.Open;
  Edit3.Text:=IntToStr(DM.TBContasCON_CODIGO.Value);
  Edit4.Text:=DM.TBContasCON_NOME.Value;
{  DBGrid2.Columns[0].Width:=74;
  DBGrid2.Columns[1].Width:=74;
  DBGrid2.Columns[2].Width:=74;
  DBGrid2.Columns[3].Width:=74;
  DBGrid2.Columns[4].Width:=74;
  DBGrid2.Columns[5].Width:=74;
  DBGrid2.Columns[6].Width:=74;
  DBGrid2.Columns[7].Width:=74;
  DBGrid2.Columns[8].Width:=74;
  DBGrid2.Columns[9].Width:=74;
  DBGrid2.Columns[10].Width:=74;
  DBGrid2.Columns[11].Width:=74;
  DBGrid2.Columns[12].Width:=74;
  DBGrid2.Columns[13].Width:=74;
  DBGrid2.Columns[14].Width:=74;}
end;

procedure TFormBoletosRetornos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosRetornos.LimparFiltro1Click(Sender: TObject);
begin
  TBRetornos.Filtered:=False;
  TBRetornos.Filter:='';
  Label17.Caption:='Clique com o direito para filtrar os registros.';
  Label17.Font.Color:=clBlack;
end;

procedure TFormBoletosRetornos.PngBitBtn4Click(Sender: TObject);
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

procedure TFormBoletosRetornos.PngBitBtn5Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid2.DataSource.DataSet.First;
  for Linha:=0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid2.SelectedRows.CurrentRowSelected:=not DBGrid2.SelectedRows.CurrentRowSelected;
    DBGrid2.DataSource.DataSet.Next;
  end;
  DBGrid2.SelectedRows.Refresh;
end;

procedure TFormBoletosRetornos.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
