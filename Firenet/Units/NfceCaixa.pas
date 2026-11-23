unit NfceCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, DBSBtn, ExtCtrls, Grids, DBGrids,
  DBCtrls, DB, PngSpeedButton, System.UITypes, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.OleCtrls, SHDocVw, MSHTML, ActiveX, Vcl.ComCtrls, Datasnap.DBClient,
  Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  PngBitBtn;

type
  TWBPosition = (wbPosBottom, wbPosTop, wbPosRight);

type
  TFormNfceCaixa = class(TForm)
    EditCodigo: TEdit;
    EditQuantidade: TEdit;
    MainMenu1: TMainMenu;
    Menus1: TMenuItem;
    IdentificarCliente1: TMenuItem;
    LocalizarProduto1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    CancelarItem1: TMenuItem;
    CancelarCupom1: TMenuItem;
    Reimpressao1: TMenuItem;
    IdentificarVendedor1: TMenuItem;
    SairDoCaixa1: TMenuItem;
    MenuFiscal1: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Consultas1: TMenuItem;
    Consultas2: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    PngBitBtn7: TPngBitBtn;
    PngBitBtn8: TPngBitBtn;
    PngBitBtn10: TPngBitBtn;
    Panel2: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    LigarDesligarContingencia1: TMenuItem;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    LocalizarDAV1: TMenuItem;
    PngBitBtn9: TPngBitBtn;
    Label9: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label14: TLabel;
    DBText4: TDBText;
    N1: TMenuItem;
    SelecionarImpressora1: TMenuItem;
    PrintDialog1: TPrintDialog;
    DBEdit6: TDBEdit;
    SalvarDANFCEemPDF1: TMenuItem;
    FileSaveDialog1: TFileSaveDialog;
    AbrirGaveta1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IdentificarCliente1Click(Sender: TObject);
    procedure FinalizarVenda1Click(Sender: TObject);
    procedure LocalizarProduto1Click(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure IdentificarVendedor1Click(Sender: TObject);
    procedure SairDoCaixa1Click(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Consultas2Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Reimpressao1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LigarDesligarContingencia1Click(Sender: TObject);
    procedure LocalizarDAV1Click(Sender: TObject);
    procedure SelecionarImpressora1Click(Sender: TObject);
    procedure SalvarDANFCEemPDF1Click(Sender: TObject);
    procedure AbrirGaveta1Click(Sender: TObject);
  private
    { Private declarations }
    procedure EventNFeTransmitError(const HttpError, InternalError: Integer;
      const URL, DadosEnviados, SoapAction: string; var Retentar, Tratado: Boolean);
    procedure IncluirItem;
    procedure IniciarVenda;
    procedure CriarNfcePorPedido(CodigoPedido: Integer);
  public
    { Public declarations }
    procedure AtualizarTelaStatusNfce;
    procedure RealizarEstornoEstoque(NFCe: Integer);
    procedure RealizarEstornoContasReceber(NFCe: Integer);
    procedure CaixaLivre;
  end;

var
  FormNfceCaixa: TFormNfceCaixa;

implementation
uses DataMod, Funcoes1, ClientesLoc, ProdutosLoc, VendedoresLoc, InputFloat,
  pcnConversao, pcnConversaoNFe, NfcePagamento, NfceMenuFiscal, NfceLoc,
  NfceFast, VendasLoc, FuncoesFirenet, Printers, NfceFuncoes;
{$R *.dfm}

procedure TFormNfceCaixa.AbrirGaveta1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceFast, FormNfceFast);
  FormNfceFast.ACBrPosPrinter1.Porta:=DM.ImpressoraNfce;
  FormNfceFast.ACBrPosPrinter1.Ativar;
  FormNfceFast.ACBrPosPrinter1.AbrirGaveta;
  FormNfceFast.ACBrPosPrinter1.Desativar;
  FormNfcefast.Free;
  FormNfcefast:=nil;
end;

procedure TFormNfceCaixa.AtualizarTelaStatusNfce;
begin
  if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value='1 - NORMAL' then
  begin
    Panel3.Color:=clGreen;
    Panel3.Caption:='NFCe ONLINE';
  end else
  begin
    Panel3.Color:=clRed;
    Panel3.Caption:='NFCe OFFLINE';
  end;
end;

procedure TFormNfceCaixa.CaixaLivre;
begin
  DM.TBNfce.Close;
  DM.TBNfce.ParamByName('codigo').AsInteger:=0; //registro inexistente pra deixar a tela limpa.
  DM.TBNfce.Open;

  DM.TBNfceItens.Close;
  DM.TBNfceItens.Open;
  DM.TBNfcePagamentos.Close;
  DM.TBNfcePagamentos.Open;

  DBEdit5.Visible:=False; //mostra caixa livre.
  Label7.Visible:=True;
  EditCodigo.Text:='';
  EditQuantidade.Text:='1';
end;

procedure TFormNfceCaixa.EventNFeTransmitError(const HttpError, InternalError: Integer;
  const URL, DadosEnviados, SoapAction: string; var Retentar, Tratado: Boolean);
begin
  DM.ACBrNFe1.Tag:=0;
  if InternalError <> 0 then
  DM.ACBrNFe1.Tag:=InternalError;

  DM.LogNfce(DM.TBNfceNFC_CODIGO.Value,'Erro transmissao NFCe','HttpError: '+HttpError.ToString+#13#10+'IntenalError: '+InternalError.ToString+#13#10+'URL: '+URL);
  Retentar:=False;
end;

procedure TFormNfceCaixa.CancelarCupom1Click(Sender: TObject);
var A,M,D: Word;
  Pasta, Arquivo, ArquivoCanc, Lote, Justificativa: String;
  F: TextFile;
begin
  if DM.TBNfce.IsEmpty then
  begin
    {$REGION 'Nenhum cupom ativo, localiza um para cancelar.'}
    Application.CreateForm(TFormNfceLoc, FormNfceLoc);
    FormNfceLoc.ShowModal;
    if NfceLoc.Procurar then
    begin
      if FormNfceLoc.QYNfceNFC_STATUS.Value<>'F' then
      begin
        MessageDlg('Somente cupons finalizados podem ser cancelados.',mtError,[mbOk],0);
        FormNfceLoc.Free;
        FormNfceLoc:=nil;
        Exit;
      end;

      if MessageDlg('Cancelar o Cupom '+FormNfceLoc.QYNfceNFC_CODIGO.Value.ToString+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from NFCE where NFC_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=FormNfceLoc.QYNfceNFC_CODIGO.Value;
        DM.QYAux.Open;

        DecodeDate(DM.QYAux.FieldByName('NFC_DTEMISSAO').AsDateTime,A,M,D);
        Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
        if not System.SysUtils.DirectoryExists(Pasta) then
        begin
          MessageDlg('A pasta da NFC-e não foi localizada.',mtError,[mbOk],0);
          FormNfceLoc.Free;
          FormNfceLoc:=nil;
          Exit;
        end;

        Arquivo:=DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString+'-procNFCe.xml';
        ArquivoCanc:=DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString+'-procCancNFCe.xml';
        if not FileExists(Pasta+Arquivo) then
        begin
          MessageDlg('Não foi possível localizar o arquivo desta NFCe.'+#13#10+#13#10+Arquivo,mtError,[mbOk],0);
          FormNfceLoc.Free;
          FormNfceLoc:=nil;
          Exit;
        end;
        DM.ConfigurarACBrNFe;
        DM.ACBrNFe1.NotasFiscais.Clear;
        DM.ACBrNFe1.NotasFiscais.LoadFromFile(Pasta+Arquivo);

        Lote:='1';
        //if not(InputQuery('Cancelamento de NFC-e', 'Identificador de controle do Lote de envio do Evento', Lote)) then
        //Exit;

        Justificativa:='';
        if not(InputQuery('Cancelamento de NFC-e', 'Justificativa', Justificativa)) then
        begin
          FormNfceLoc.Free;
          FormNfceLoc:=nil;
          Exit;
        end;

        DM.ACBrNFe1.EventoNFe.Evento.Clear;
        DM.ACBrNFe1.EventoNFe.idLote:=StrToInt(Lote);
        with DM.ACBrNFe1.EventoNFe.Evento.New do
        begin
          infEvento.dhEvento:=now;
          infEvento.tpEvento:=teCancelamento;
          infEvento.detEvento.xJust:=Justificativa;
        end;
        DM.ACBrNFe1.EnviarEvento(StrToInt(Lote));

        if DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat = 135 then
        begin

          //se o cupom veio de um DAV, cancela ele também.
          if FormNfceLoc.QYNfceNFC_VENDA.Value > 0 then
          begin
            DM.QYAux.Close;
            DM.QYAux.SQL.Clear;
            DM.QYAux.SQL.Add('update VENDAS set VED_STATUS=:status where VED_CODIGO=:codigo');
            DM.QYAux.ParamByName('status').AsString:='C'; //cupons em aberto, que nao foram enviados a sefaz, são inutilizados.
            DM.QYAux.ParamByName('codigo').AsInteger:=FormNfceLoc.QYNfceNFC_VENDA.Value;
            DM.QYAux.ExecSQL;
            DM.QYAux.Close;
            DM.TBVendas.Close; //pra garantir dados atualizados.
            DM.TBVendas.Open;
          end;

          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('update NFCE set NFC_STATUS=:status, NFC_MOTIVOCANCELAMENTO=:motivo, NFC_PROTOCOLOCANC=:protocolo, NFC_PROTOCOLOCANCDH=:protocolodh where NFC_CODIGO=:codigo');
          DM.QYAux.ParamByName('status').AsString:='C';
          DM.QYAux.ParamByName('motivo').AsString:=UpperCase(Justificativa);
          DM.QYAux.ParamByName('protocolo').AsString:=DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
          DM.QYAux.ParamByName('protocolodh').AsString:=DateTimeToStr(DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento);
          DM.QYAux.ParamByName('codigo').AsInteger:=FormNfceLoc.QYNfceNFC_CODIGO.Value;
          DM.QYAux.ExecSQL;
          DM.QYAux.Close;

          RealizarEstornoEstoque(FormNfceLoc.QYNfceNFC_CODIGO.Value);
          RealizarEstornoContasReceber(FormNfceLoc.QYNfceNFC_CODIGO.Value);

          //nome do arquivo que o acbr gera. ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
          AssignFile(F,Pasta+ArquivoCanc);
          Rewrite(F);
          Write(F,DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.XML);
          CloseFile(F);
          MessageDlg('NFCe número '+FormNfceLoc.QYNfceNFC_CODIGO.Value.ToString+' cancelada com sucesso.',mtInformation,[mbOk],0);
        end else
        MessageDlg(DM.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo,mtError,[mbOk],0);
      end;
    end;
    FormNfceLoc.Free;
    FormNfceLoc:=nil;
    Exit;
    {$ENDREGION}
  end;

  if MessageDlg('Deseja cancelar o cupom atual?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfceItens.Cancel;

    //marca como inutilizada... fazer envio das inutilizações.
    DM.TBNfce.Edit;
    DM.TBNfceNFC_STATUS.Value:='I';
    DM.TBNfce.Post;

    //se o cupom atual foi carregado de um DAV, inutiliza o pedido de venda também.
    if DM.TBNfceNFC_VENDA.Value > 0 then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update VENDAS set VED_STATUS=:status where VED_CODIGO=:codigo');
      DM.QYAux.ParamByName('status').AsString:='I'; //cupons em aberto, que nao foram enviados a sefaz, são inutilizados.
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_VENDA.Value;
      DM.QYAux.ExecSQL;
      DM.QYAux.Close;
      DM.TBVendas.Close; //pra garantir dados atualizados.
      DM.TBVendas.Open;
    end;

    //DM.TBNfce.Delete;
    CaixaLivre;
    EditCodigo.SetFocus;
  end;
end;

procedure TFormNfceCaixa.CancelarItem1Click(Sender: TObject);
var Item: Integer;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Não existe venda em andamento.');
  AbortIf(DM.TBNfceItens.IsEmpty,'Nenhum item para excluir.');

  Item:=StrToInt(InputBox('Cancelar Item.','Digite o número do item que deseja cancelar:',''));
  if MessageDlg('Cancelar item '+IntToStr(Item)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.TBNfceItens.Locate('NCI_SEQUENCIA',Item,[]) then
    begin
      DM.TBNfceItens.Delete;

      DM.TBNfce.Close;
      DM.TBNfce.Open;
    end else
    MessageDlg('Item não encontrado.',mtError,[mbOk],0);
  end;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.EditCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if EditCodigo.Text='' then
    EditQuantidade.SetFocus;
    if EditCodigo.Text<>'' then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select PRO_CODIGO from PRODUTOS where (PRO_CODIGO like '+QuotedStr(EditCodigo.Text)+') or (PRO_CODIGOBARRAS like '+QuotedStr(EditCodigo.Text)+')');
      DM.QYAux.Open;
      if DM.QYAux.IsEmpty then
      begin
        MessageDlg('Produto não localizado.',mtInformation,[mbOk],0);
        EditCodigo.SelectAll;
        EditCodigo.SetFocus;
        Exit;
      end;

      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      DM.TBProdutos.Open;
      IncluirItem;
    end;
  end;
end;

procedure TFormNfceCaixa.EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44,#46]) then Key:=#0;
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if Key=#13 then
  begin
    Key:=#0;
    EditCodigo.SetFocus; //Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormNfceCaixa.FinalizarVenda1Click(Sender: TObject);
var OK: Boolean;
  Msg: String;
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma venda em andamento.');
  AbortIf(not (DM.TBNfceItens.RecordCount > 0),'A venda não contém itens.');
  AbortIf(not (DM.TBNfceNFC_VALORTOTAL.Value > 0),'A venda está com valor zero.');

  Application.CreateForm(TFormNfcePagamento, FormNfcePagamento);
  FormNfcePagamento.ShowModal;
  FormNfcePagamento.Free;
  FormNfcePagamento:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNfce.IsEmpty then
  begin
    if UpperCase(ParamStr(1))='CUPOM' then
    begin
      if MessageDlg('Tem certeza que deseja sair do sistema?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        //SetTaskBar(True);
        Application.Terminate;
      end else
      Action:=caNone;
    end;
  end else
  begin
    MessageDlg('Existe uma venda em andamento.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNfceCaixa.FormCreate(Sender: TObject);
var S: String;
begin
  S:=FileVersion(Application.ExeName);
  FormNfceCaixa.Caption:='PAF-NFC-e - V'+S;
  Application.ProcessMessages;
  //SetTaskBar(False);
  CaixaLivre;
  DM.ACBrNFe1.OnTransmitError:=EventNFeTransmitError;
  Label11.Caption:=DM.UsuarioLogin;
  Label12.Caption:=DM.UsuarioNome;
  AtualizarTelaStatusNfce;
end;

procedure TFormNfceCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    if UpperCase(ParamStr(1))='' then //só fecha com ESC se nao foi informado CUPOM como parametro.
    Close;
  end;
end;

procedure TFormNfceCaixa.FormShow(Sender: TObject);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from NFCE where NFC_STATUS=''A'' and NFC_CONTINGENCIA=''S''');
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
  MessageDlg('Existem cupons emitidos em contingência que precisam ser enviados.'+#13#10+'Acesse a tela de controle de contingências.',mtWarning,[mbOk],0);
  DM.QYAux.Close;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from NFCE where NFC_STATUS=''I'' and (NFC_PROTOCOLOINUT='''' or NFC_PROTOCOLOINUT is null)');
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
  MessageDlg('Existem cupons inutilizados que precisam ser enviados.'+#13#10+'Acesse a tela de controle de contingências.',mtWarning,[mbOk],0);
  DM.QYAux.Close;

  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.Consultas2Click(Sender: TObject);
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

procedure TFormNfceCaixa.CriarNfcePorPedido(CodigoPedido: Integer);
begin
  DM.TBVendas.Close;
  DM.TBVendas.ParamByName('codigo').AsInteger:=CodigoPedido;
  DM.TBVendas.Open;

  //|IGUALAR CAMPOS|
  DM.TBNfce.Insert;
  {$REGION 'Capa da NFCe'}
  //DM.TBNfceNFC_ACREPORC
  //DM.TBNfceNFC_ACREVALOR
  DM.TBNfceNFC_ALIQICMSCREDSN.Value     :=DM.TBVendasVED_ALIQICMSCREDSN.Value;
  DM.TBNfceNFC_BAIRRO.Value             :=DM.TBVendasVED_BAIRRO.Value;
  DM.TBNfceNFC_BASECOFINS.Value         :=DM.TBVendasVED_BASECOFINS.Value;
  DM.TBNfceNFC_BASECOFINSST.Value       :=DM.TBVendasVED_BASECOFINSST.Value;
  DM.TBNfceNFC_BASEIBSCBS.Value         :=DM.TBVendasVED_BASEIBSCBS.Value;
  DM.TBNfceNFC_BASEICMS.Value           :=DM.TBVendasVED_BASEICMS.Value;
  DM.TBNfceNFC_BASEICMSST.Value         :=DM.TBVendasVED_BASEICMSST.Value;
  DM.TBNfceNFC_BASEIPI.Value            :=DM.TBVendasVED_BASEIPI.Value;
  DM.TBNfceNFC_BASEIS.Value             :=DM.TBVendasVED_BASEIS.Value;
  DM.TBNfceNFC_BASEPIS.Value            :=DM.TBVendasVED_BASEPIS.Value;
  DM.TBNfceNFC_BASEPISST.Value          :=DM.TBVendasVED_BASEPISST.Value;
  DM.TBNfceNFC_CBSCREDPRES.Value        :=DM.TBVendasVED_CBSCREDPRES.Value;
  DM.TBNfceNFC_CBSCREDPRESSUS.Value     :=DM.TBVendasVED_CBSCREDPRESSUS.Value;
  DM.TBNfceNFC_CBSDEVOLUCAO.Value       :=DM.TBVendasVED_CBSDEVOLUCAO.Value;
  DM.TBNfceNFC_CBSDIFERIMENTO.Value     :=DM.TBVendasVED_CBSDIFERIMENTO.Value;
  DM.TBNfceNFC_CBSMONO.Value            :=DM.TBVendasVED_CBSMONO.Value;
  DM.TBNfceNFC_CBSMONORETENCAO.Value    :=DM.TBVendasVED_CBSMONORETENCAO.Value;
  DM.TBNfceNFC_CBSMONORETIDO.Value      :=DM.TBVendasVED_CBSMONORETIDO.Value;
  DM.TBNfceNFC_CBSVALOR.Value           :=DM.TBVendasVED_CBSVALOR.Value;
  DM.TBNfceNFC_CEP.Value                :=DM.TBVendasVED_CEP.Value;
  DM.TBNfceNFC_CFOP.Value               :=DM.TBVendasVED_CFOP.Value;
  //DM.TBNfceNFC_CHAVEACESSO.Value:=
  DM.TBNfceNFC_CIDADE.Value             :=DM.TBVendasVED_CIDADE.Value;
  DM.TBNfceNFC_CIDADECODIGO.Value       :=DM.TBVendasVED_CIDADECODIGO.Value;
  DM.TBNfceNFC_CLIENTE.Value            :=DM.TBVendasVED_CLIENTE.Value;
  DM.TBNfceNFC_CNPJ.Value               :=DM.TBVendasVED_CNPJ.Value;
  //DM.TBNfceNFC_CODIGO.Value:=
  //DM.TBNfceNFC_CODIGONFCE
  //DM.TBNfceNFC_CODIGONUMERICO
  DM.TBNfceNFC_COMISSAO.Value           :=DM.TBVendasVED_COMISSAO.Value;
  DM.TBNfceNFC_COMISSAOPOR.Value        :=DM.TBVendasVED_COMISSAOPOR.Value;
  DM.TBNfceNFC_COMPLEMENTO.Value        :=DM.TBVendasVED_COMPLEMENTO.Value;
  DM.TBNfceNFC_CONDICAO.Value           :=DM.TBVendasVED_CONDICAO.Value;
  DM.TBNfceNFC_CONTATO.Value            :=DM.TBVendasVED_CONTATO.Value;
  //nao tem DM.TBNfceNFC_CONTINGENCIA.Value       :=
  DM.TBNfceNFC_CPF.Value                :=DM.TBVendasVED_CPF.Value;
  DM.TBNfceNFC_CUSTOTOTAL.Value         :=DM.TBVendasVED_CUSTOTOTAL.Value;
  DM.TBNfceNFC_DESCPORC.Value           :=DM.TBVendasVED_DESCPORC.Value;
  DM.TBNfceNFC_DESCVALOR.Value          :=DM.TBVendasVED_DESCVALOR.Value;
  //DM.TBNfceNFC_DTATUALIZACAO
  //DM.TBNfceNFC_DTCADASTRO
  //DM.TBNfceNFC_DTEMISSAO
  DM.TBNfceNFC_ENDERECO.Value           :=DM.TBVendasVED_ENDERECO.Value;
  DM.TBNfceNFC_ESTADO.Value             :=DM.TBVendasVED_ESTADO.Value;
  DM.TBNfceNFC_ESTADOCODIGO.Value       :=DM.TBVendasVED_ESTADOCODIGO.Value;
  //valor padrao no insert. DM.TBNfceNFC_FINALIDADE.Value:=
  DM.TBNfceNFC_FONE1.Value              :=DM.TBVendasVED_FONE1.Value;
  DM.TBNfceNFC_FORMAPAGTO.Value         :=DM.TBVendasVED_FORMAPAGTO.Value;
  //DM.TBNfceNFC_HRATUALIZACAO
  //DM.TBNfceNFC_HRCADASTRO
  DM.TBNfceNFC_IBSCREDPRES.Value        :=DM.TBVendasVED_IBSCREDPRES.Value;
  DM.TBNfceNFC_IBSCREDPRESSUS.Value     :=DM.TBVendasVED_IBSCREDPRESSUS.Value;
  DM.TBNfceNFC_IBSMONO.Value            :=DM.TBVendasVED_IBSMONO.Value;
  DM.TBNfceNFC_IBSMONORETENCAO.Value    :=DM.TBVendasVED_IBSMONORETENCAO.Value;
  DM.TBNfceNFC_IBSMONORETIDO.Value      :=DM.TBVendasVED_IBSMONORETIDO.Value;
  DM.TBNfceNFC_IBSMUNDEVOLUCAO.Value    :=DM.TBVendasVED_IBSMUNDEVOLUCAO.Value;
  DM.TBNfceNFC_IBSMUNDIFERIMENTO.Value  :=DM.TBVendasVED_IBSMUNDIFERIMENTO.Value;
  DM.TBNfceNFC_IBSMUNVALOR.Value        :=DM.TBVendasVED_IBSMUNVALOR.Value;
  DM.TBNfceNFC_IBSUFDEVOLUCAO.Value     :=DM.TBVendasVED_IBSUFDEVOLUCAO.Value;
  DM.TBNfceNFC_IBSUFDIFERIMENTO.Value   :=DM.TBVendasVED_IBSUFDIFERIMENTO.Value;
  DM.TBNfceNFC_IBSUFVALOR.Value         :=DM.TBVendasVED_IBSUFVALOR.Value;
  DM.TBNfceNFC_IBSVALOR.Value           :=DM.TBVendasVED_IBSVALOR.Value;
  DM.TBNfceNFC_IE.Value                 :=DM.TBVendasVED_IE.Value;
  DM.TBNfceNFC_INFOADICFISCO.Value      :=DM.TBVendasVED_INFOADICFISCO.Value;
  //DM.TBNfceNFC_LUCROPORC
  //DM.TBNfceNFC_LUCROVALOR
  //DM.TBNfceNFC_MODELO
  //DM.TBNfceNFC_MOTIVOCANCELAMENTO
  //DM.TBNfceNFC_MOTIVOINUTILIZACAO
  DM.TBNfceNFC_MOVIMENTAESTOQUE.Value   :=DM.TBVendasVED_MOVIMENTAESTOQUE.Value;
  DM.TBNfceNFC_MOVIMENTAFINANCEIRO.Value:=DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value;
  DM.TBNfceNFC_NOME.Value               :=DM.TBVendasVED_NOME.Value;
  DM.TBNfceNFC_NOTACREDITO.Value        :=DM.TBVendasVED_NOTACREDITO.Value;
  DM.TBNfceNFC_NOTADEBITO.Value         :=DM.TBVendasVED_NOTADEBITO.Value;
  DM.TBNfceNFC_NUMERO.Value             :=DM.TBVendasVED_NUMERO.Value;
  DM.TBNfceNFC_OBSERVACOES.Value        :=DM.TBVendasVED_OBSERVACOES.Value;
  DM.TBNfceNFC_PESOBRUTO.Value          :=DM.TBVendasVED_PESOBRUTO.Value;
  DM.TBNfceNFC_PESOLIQ.Value            :=DM.TBVendasVED_PESOLIQ.Value;
  //DM.TBNfceNFC_PROTOCOLO
  //DM.TBNfceNFC_PROTOCOLOCANC
  //DM.TBNfceNFC_PROTOCOLOCANCDH
  //DM.TBNfceNFC_PROTOCOLODH
  //DM.TBNfceNFC_PROTOCOLOINUT
  //DM.TBNfceNFC_PROTOCOLOINUTDH
  //DM.TBNfceNFC_QRCODE
  DM.TBNfceNFC_SEQUENCIAITEM.Value      :=DM.TBVendasVED_SEQUENCIAITEM.Value;
  //DM.TBNfceNFC_SERIE
  //DM.TBNfceNFC_STATUS
  DM.TBNfceNFC_TABELAPRECO.Value        :=DM.TBVendasVED_TABELAPRECO.Value;
  DM.TBNfceNFC_TIPOATENDIMENTO.Value    :=DM.TBVendasVED_TIPOATENDIMENTO.Value;
  DM.TBNfceNFC_TIPOCONSUMIDOR.Value     :=DM.TBVendasVED_TIPOCONSUMIDOR.Value;
  //DM.TBNfceNFC_TIPOEMISSAO
  DM.TBNfceNFC_TIPOOPERACAO.Value       :=DM.TBVendasVED_TIPOOPERACAO.Value;
  //nao tem DM.TBNfceNFC_TOTALADUANA.Value        :=DM.TBVendasVED_TOTALADUANA.Value;
  //nao tem DM.TBNfceNFC_TOTALBRUTO.Value         :=DM.TBVendasVED_TOTALBRUTO.Value;
  DM.TBNfceNFC_TOTALCOFINS.Value        :=DM.TBVendasVED_TOTALCOFINS.Value;
  DM.TBNfceNFC_TOTALCOFINSST.Value      :=DM.TBVendasVED_TOTALCOFINSST.Value;
  DM.TBNfceNFC_TOTALCOMISSAO.Value      :=DM.TBVendasVED_TOTALCOMISSAO.Value;
  DM.TBNfceNFC_TOTALFCP.Value           :=DM.TBVendasVED_TOTALFCP.Value;
  DM.TBNfceNFC_TOTALFCPST.Value         :=DM.TBVendasVED_TOTALFCPST.Value;
  DM.TBNfceNFC_TOTALICMS.Value          :=DM.TBVendasVED_TOTALICMS.Value;
  DM.TBNfceNFC_TOTALICMSCREDSN.Value    :=DM.TBVendasVED_TOTALICMSCREDSN.Value;
  DM.TBNfceNFC_TOTALICMSST.Value        :=DM.TBVendasVED_TOTALICMSST.Value;
  DM.TBNfceNFC_TOTALICMSUFDEST.Value    :=DM.TBVendasVED_TOTALICMSUFDEST.Value;
  DM.TBNfceNFC_TOTALICMSUFREMET.Value   :=DM.TBVendasVED_TOTALICMSUFREMET.Value;
  //nao tem DM.TBNfceNFC_TOTALII.Value            :=DM.TBVendasVED_TOTALII.Value;
  //nao tem DM.TBNfceNFC_TOTALIOF.Value           :=DM.TBVendasVED_TOTALIOF.Value;
  DM.TBNfceNFC_TOTALIPI.Value           :=DM.TBVendasVED_TOTALIPI.Value;
  DM.TBNfceNFC_TOTALIS.Value            :=DM.TBVendasVED_TOTALIS.Value;
  DM.TBNfceNFC_TOTALPIS.Value           :=DM.TBVendasVED_TOTALPIS.Value;
  DM.TBNfceNFC_TOTALPISST.Value         :=DM.TBVendasVED_TOTALPISST.Value;
  DM.TBNfceNFC_TOTALPRODUTOS.Value      :=DM.TBVendasVED_TOTALPRODUTOS.Value;
  DM.TBNfceNFC_TOTALTRIBUTOS.Value      :=DM.TBVendasVED_TOTALTRIBUTOS.Value;
  DM.TBNfceNFC_TOTALTRIBUTOSEST.Value   :=DM.TBVendasVED_TOTALTRIBUTOSEST.Value;
  DM.TBNfceNFC_TOTALTRIBUTOSFED.Value   :=DM.TBVendasVED_TOTALTRIBUTOSFED.Value;
  DM.TBNfceNFC_TOTALTRIBUTOSIMP.Value   :=DM.TBVendasVED_TOTALTRIBUTOSIMP.Value;
  DM.TBNfceNFC_TOTALTRIBUTOSMUN.Value   :=DM.TBVendasVED_TOTALTRIBUTOSMUN.Value;
  //DM.TBNfceNFC_USUARIO
  DM.TBNfceNFC_VALORFRETE.Value         :=DM.TBVendasVED_VALORFRETE.Value;
  //DM.TBNfceNFC_VALORRECEBIDO
  DM.TBNfceNFC_VALORTOTAL.Value         :=DM.TBVendasVED_VALORTOTAL.Value;
  DM.TBNfceNFC_VALORTOTALRTC.Value      :=DM.TBVendasVED_VALORTOTALRTC.Value;
  //DM.TBNfceNFC_VALORTROCO
  DM.TBNfceNFC_VENDA.Value:=DM.TBVendasVED_CODIGO.Value;
  DM.TBNfceNFC_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
  {$ENDREGION}
  DM.TBNfce.Post;

  DM.TBVendasItens.DisableControls;
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do
  begin
    DM.TBNfceItens.Insert;
    {$REGION 'Itens do Pedido'}
    DM.TBNfceItensNCI_ALIQCBS.Value             :=DM.TBVendasItensVEI_ALIQCBS.Value;
    DM.TBNfceItensNCI_ALIQCBSCREDPRES.Value     :=DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value;
    DM.TBNfceItensNCI_ALIQCBSDIF.Value          :=DM.TBVendasItensVEI_ALIQCBSDIF.Value;
    DM.TBNfceItensNCI_ALIQCBSEFE.Value          :=DM.TBVendasItensVEI_ALIQCBSEFE.Value;
    DM.TBNfceItensNCI_ALIQCBSRED.Value          :=DM.TBVendasItensVEI_ALIQCBSRED.Value;
    DM.TBNfceItensNCI_ALIQCBS.Value             :=DM.TBVendasItensVEI_ALIQCBS.Value;
    DM.TBNfceItensNCI_ALIQCOFINS.Value          :=DM.TBVendasItensVEI_ALIQCOFINS.Value;
    DM.TBNfceItensNCI_ALIQCOFINSST.Value        :=DM.TBVendasItensVEI_ALIQCOFINSST.Value;
    DM.TBNfceItensNCI_ALIQFCP.Value             :=DM.TBVendasItensVEI_ALIQFCP.Value;
    DM.TBNfceItensNCI_ALIQFCPST.Value           :=DM.TBVendasItensVEI_ALIQFCPST.Value;
    DM.TBNfceItensNCI_ALIQIBSCREDPRES.Value     :=DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value;
    DM.TBNfceItensNCI_ALIQIBSMUN.Value          :=DM.TBVendasItensVEI_ALIQIBSMUN.Value;
    DM.TBNfceItensNCI_ALIQIBSMUNDIF.Value       :=DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value;
    DM.TBNfceItensNCI_ALIQIBSMUNEFE.Value       :=DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value;
    DM.TBNfceItensNCI_ALIQIBSMUNRED.Value       :=DM.TBVendasItensVEI_ALIQIBSMUNRED.Value;
    DM.TBNfceItensNCI_ALIQIBSUF.Value           :=DM.TBVendasItensVEI_ALIQIBSUF.Value;
    DM.TBNfceItensNCI_ALIQIBSUFDIF.Value        :=DM.TBVendasItensVEI_ALIQIBSUFDIF.Value;
    DM.TBNfceItensNCI_ALIQIBSUFEFE.Value        :=DM.TBVendasItensVEI_ALIQIBSUFEFE.Value;
    DM.TBNfceItensNCI_ALIQIBSUFRED.Value        :=DM.TBVendasItensVEI_ALIQIBSUFRED.Value;
    DM.TBNfceItensNCI_ALIQICMS.Value            :=DM.TBVendasItensVEI_ALIQICMS.Value;
    DM.TBNfceItensNCI_ALIQICMSADICST.Value      :=DM.TBVendasItensVEI_ALIQICMSADICST.Value;
    DM.TBNfceItensNCI_ALIQICMSINTER.Value       :=DM.TBVendasItensVEI_ALIQICMSINTER.Value;
    DM.TBNfceItensNCI_ALIQICMSINTERPART.Value   :=DM.TBVendasItensVEI_ALIQICMSINTERPART.Value;
    DM.TBNfceItensNCI_ALIQICMSRED.Value         :=DM.TBVendasItensVEI_ALIQICMSRED.Value;
    DM.TBNfceItensNCI_ALIQICMSST.Value          :=DM.TBVendasItensVEI_ALIQICMSST.Value;
    DM.TBNfceItensNCI_ALIQIPI.Value             :=DM.TBVendasItensVEI_ALIQIPI.Value;
    DM.TBNfceItensNCI_ALIQIS.Value              :=DM.TBVendasItensVEI_ALIQIS.Value;
    DM.TBNfceItensNCI_ALIQISESP.Value           :=DM.TBVendasItensVEI_ALIQISESP.Value;
    //nao tem DM.TBNfceItensNCI_ALIQISS.Value             :=DM.TBVendasItensVEI_ALIQISS.Value;
    DM.TBNfceItensNCI_ALIQPIS.Value             :=DM.TBVendasItensVEI_ALIQPIS.Value;
    DM.TBNfceItensNCI_ALIQPISST.Value           :=DM.TBVendasItensVEI_ALIQPISST.Value;
    DM.TBNfceItensNCI_ALMOXARIFADO.Value        :=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
    DM.TBNfceItensNCI_BASECOFINS.Value          :=DM.TBVendasItensVEI_BASECOFINS.Value;
    DM.TBNfceItensNCI_BASECOFINSST.Value        :=DM.TBVendasItensVEI_BASECOFINSST.Value;
    DM.TBNfceItensNCI_BASEIBSCBS.Value          :=DM.TBVendasItensVEI_BASEIBSCBS.Value;
    DM.TBNfceItensNCI_BASEIBSCBS.Value          :=DM.TBVendasItensVEI_BASEIBSCBS.Value;
    DM.TBNfceItensNCI_BASEICMS.Value            :=DM.TBVendasItensVEI_BASEICMS.Value;
    DM.TBNfceItensNCI_BASEICMSRED.Value         :=DM.TBVendasItensVEI_BASEICMSRED.Value;
    DM.TBNfceItensNCI_BASEICMSST.Value          :=DM.TBVendasItensVEI_BASEICMSST.Value;
    DM.TBNfceItensNCI_BASEIPI.Value             :=DM.TBVendasItensVEI_BASEIPI.Value;
    DM.TBNfceItensNCI_BASEIS.Value              :=DM.TBVendasItensVEI_BASEIS.Value;
    DM.TBNfceItensNCI_BASEPIS.Value             :=DM.TBVendasItensVEI_BASEPIS.Value;
    DM.TBNfceItensNCI_BASEPISST.Value           :=DM.TBVendasItensVEI_BASEPISST.Value;
    DM.TBNfceItensNCI_BENEFICIO.Value           :=DM.TBVendasItensVEI_BENEFICIO.Value;
    DM.TBNfceItensNCI_CBSCREDITOPRES.Value      :=DM.TBVendasItensVEI_CBSCREDITOPRES.Value;
    DM.TBNfceItensNCI_CEST.Value                :=DM.TBVendasItensVEI_CEST.Value;
    DM.TBNfceItensNCI_CFOP.Value                :=DM.TBVendasItensVEI_CFOP.Value;
    DM.TBNfceItensNCI_CLASSFISCAL.Value         :=DM.TBVendasItensVEI_CLASSFISCAL.Value;
    DM.TBNfceItensNCI_CLASSTRIBIBSCBS.Value     :=DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value;
    DM.TBNfceItensNCI_CLASSTRIBIS.Value         :=DM.TBVendasItensVEI_CLASSTRIBIS.Value;
    //automatico. DM.TBNfceItensNCI_CODIGO
    DM.TBNfceItensNCI_CODIGOBARRAS.Value        :=DM.TBVendasItensVEI_CODIGOBARRAS.Value;
    DM.TBNfceItensNCI_COMISSAO.Value            :=DM.TBVendasItensVEI_COMISSAO.Value;
    DM.TBNfceItensNCI_COMPLEMENTO.Value         :=DM.TBVendasItensVEI_COMPLEMENTO.Value;
    DM.TBNfceItensNCI_COMPOEBASEICMS.Value      :=DM.TBVendasItensVEI_COMPOEBASEICMS.Value;
    DM.TBNfceItensNCI_COMPOEBASEICMSST.Value    :=DM.TBVendasItensVEI_COMPOEBASEICMSST.Value;
    DM.TBNfceItensNCI_CONVERSAO.Value           :=DM.TBVendasItensVEI_CONVERSAO.Value;
    DM.TBNfceItensNCI_CSTCOFINS.Value           :=DM.TBVendasItensVEI_CSTCOFINS.Value;
    DM.TBNfceItensNCI_CSTIBSCBS.Value           :=DM.TBVendasItensVEI_CSTIBSCBS.Value;
    DM.TBNfceItensNCI_CSTICMS.Value             :=DM.TBVendasItensVEI_CSTICMS.Value;
    DM.TBNfceItensNCI_CSTIPI.Value              :=DM.TBVendasItensVEI_CSTIPI.Value;
    DM.TBNfceItensNCI_CSTIS.Value               :=DM.TBVendasItensVEI_CSTIS.Value;
    DM.TBNfceItensNCI_CSTPIS.Value              :=DM.TBVendasItensVEI_CSTPIS.Value;
    DM.TBNfceItensNCI_DESCPORC.Value            :=DM.TBVendasItensVEI_DESCPORC.Value;
    DM.TBNfceItensNCI_DESCRICAO.Value           :=DM.TBVendasItensVEI_DESCRICAO.Value;
    if (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2') and (DM.TBVendasItensVEI_SEQUENCIA.Value=1) then
    DM.TBNfceItensNCI_DESCRICAO.Value           :='NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    DM.TBNfceItensNCI_DESCVALOR.Value           :=DM.TBVendasItensVEI_DESCVALOR.Value;
    DM.TBNfceItensNCI_EXCECAO.Value             :=DM.TBVendasItensVEI_EXCECAO.Value;
    DM.TBNfceItensNCI_LUCROPORC.Value           :=DM.TBVendasItensVEI_LUCROPORC.Value;
    DM.TBNfceItensNCI_LUCROVALOR.Value          :=DM.TBVendasItensVEI_LUCROVALOR.Value;
    DM.TBNfceItensNCI_MODICMS.Value             :=DM.TBVendasItensVEI_MODICMS.Value;
    DM.TBNfceItensNCI_MODICMSST.Value           :=DM.TBVendasItensVEI_MODICMSST.Value;
    DM.TBNfceItensNCI_NOTA.Value                :=DM.TBNfceNFC_CODIGO.Value; //novo código da NFCE.
    DM.TBNfceItensNCI_ORIGEM.Value              :=DM.TBVendasItensVEI_ORIGEM.Value;
    DM.TBNfceItensNCI_PESO.Value                :=DM.TBVendasItensVEI_PESO.Value;
    DM.TBNfceItensNCI_PESOTOTAL.Value           :=DM.TBVendasItensVEI_PESOTOTAL.Value;
    DM.TBNfceItensNCI_PRECOCUSTO.Value          :=DM.TBVendasItensVEI_PRECOCUSTO.Value;
    DM.TBNfceItensNCI_PRECOCUSTOTOTAL.Value     :=DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
    DM.TBNfceItensNCI_PRODUTO.Value             :=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBNfceItensNCI_PRODUTOREAL.Value         :=DM.TBVendasItensVEI_PRODUTOREAL.Value;
    DM.TBNfceItensNCI_QUANTIDADE.Value          :=DM.TBVendasItensVEI_QUANTIDADE.Value;
    DM.TBNfceItensNCI_SEQUENCIA.Value           :=DM.TBVendasItensVEI_SEQUENCIA.Value;
    //nao tem DM.TBNfceItensNCI_SERVICOISS.Value          :=DM.TBVendasItensVEI_SERVICOISS.Value;
    DM.TBNfceItensNCI_SOMACOFINSST.Value        :=DM.TBVendasItensVEI_SOMACOFINSST.Value;
    DM.TBNfceItensNCI_SOMAPISST.Value           :=DM.TBVendasItensVEI_SOMAPISST.Value;
    DM.TBNfceItensNCI_TIPO.Value                :=DM.TBVendasItensVEI_TIPO.Value;
    DM.TBNfceItensNCI_UNIDADE.Value             :=DM.TBVendasItensVEI_UNIDADE.Value;
    DM.TBNfceItensNCI_VALORACESSORIAS.Value     :=DM.TBVendasItensVEI_VALORACESSORIAS.Value;
    //nao tem DM.TBNfceItensNCI_VALORADUANA.Value         :=DM.TBVendasItensVEI_VALORADUANA.Value;
    DM.TBNfceItensNCI_VALORCBS.Value            :=DM.TBVendasItensVEI_VALORCBS.Value;
    DM.TBNfceItensNCI_VALORCBSCREDPRES.Value    :=DM.TBVendasItensVEI_VALORCBSCREDPRES.Value;
    DM.TBNfceItensNCI_VALORCBSCREDPRESSUS.Value :=DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value;
    DM.TBNfceItensNCI_VALORCBSDEV.Value         :=DM.TBVendasItensVEI_VALORCBSDEV.Value;
    DM.TBNfceItensNCI_VALORCBSDIF.Value         :=DM.TBVendasItensVEI_VALORCBSDIF.Value;
    DM.TBNfceItensNCI_VALORCBSDEV.Value         :=DM.TBVendasItensVEI_VALORCBSDEV.Value;
    DM.TBNfceItensNCI_VALORCOFINS.Value         :=DM.TBVendasItensVEI_VALORCOFINS.Value;
    DM.TBNfceItensNCI_VALORCOFINSST.Value       :=DM.TBVendasItensVEI_VALORCOFINSST.Value;
    DM.TBNfceItensNCI_VALORCOMISSAO.Value       :=DM.TBVendasItensVEI_VALORCOMISSAO.Value;
    DM.TBNfceItensNCI_VALORFCP.Value            :=DM.TBVendasItensVEI_VALORFCP.Value;
    DM.TBNfceItensNCI_VALORFCPST.Value          :=DM.TBVendasItensVEI_VALORFCPST.Value;
    DM.TBNfceItensNCI_VALORFRETE.Value          :=DM.TBVendasItensVEI_VALORFRETE.Value;
    DM.TBNfceItensNCI_VALORIBS.Value            :=DM.TBVendasItensVEI_VALORIBS.Value;
    DM.TBNfceItensNCI_VALORIBSCREDPRES.Value    :=DM.TBVendasItensVEI_VALORIBSCREDPRES.Value;
    DM.TBNfceItensNCI_VALORIBSCREDPRESSUS.Value :=DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value;
    DM.TBNfceItensNCI_VALORIBSMUN.Value         :=DM.TBVendasItensVEI_VALORIBSMUN.Value;
    DM.TBNfceItensNCI_VALORIBSMUNDEV.Value      :=DM.TBVendasItensVEI_VALORIBSMUNDEV.Value;
    DM.TBNfceItensNCI_VALORIBSMUNDIF.Value      :=DM.TBVendasItensVEI_VALORIBSMUNDIF.Value;
    DM.TBNfceItensNCI_VALORIBSUF.Value          :=DM.TBVendasItensVEI_VALORIBSUF.Value;
    DM.TBNfceItensNCI_VALORIBSUFDEV.Value       :=DM.TBVendasItensVEI_VALORIBSUFDEV.Value;
    DM.TBNfceItensNCI_VALORIBSUFDIF.Value       :=DM.TBVendasItensVEI_VALORIBSUFDIF.Value;
    DM.TBNfceItensNCI_VALORICMS.Value           :=DM.TBVendasItensVEI_VALORICMS.Value;
    DM.TBNfceItensNCI_VALORICMSCREDSN.Value     :=DM.TBVendasItensVEI_VALORICMSCREDSN.Value;
    //nao tem DM.TBNfceItensNCI_VALORICMSDESONERADO.Value
    DM.TBNfceItensNCI_VALORICMSST.Value         :=DM.TBVendasItensVEI_VALORICMSST.Value;
    //nao tem DM.TBNfceItensNCI_VALORICMSSTRET.Value      :=DM.TBVendasItensVEI_VALORICMSSTRET.Value;
    //nao tem DM.TBNfceItensNCI_VALORICMSSUBSTITUTO.Value           :=DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value;
    DM.TBNfceItensNCI_VALORICMSUFDEST.Value     :=DM.TBVendasItensVEI_VALORICMSUFDEST.Value;
    DM.TBNfceItensNCI_VALORICMSUFREMET.Value    :=DM.TBVendasItensVEI_VALORICMSUFREMET.Value;
    //nao tem DM.TBNfceItensNCI_VALORII.Value             :=DM.TBVendasItensVEI_VALORII.Value;
    //nao tem DM.TBNfceItensNCI_VALORIOF.Value            :=DM.TBVendasItensVEI_VALORIOF.Value;
    DM.TBNfceItensNCI_VALORIPI.Value            :=DM.TBVendasItensVEI_VALORIPI.Value;
    DM.TBNfceItensNCI_VALORIS.Value             :=DM.TBVendasItensVEI_VALORIS.Value;
    //nao tem DM.TBNfceItensNCI_VALORISS.Value            :=DM.TBVendasItensVEI_VALORISS.Value;
    DM.TBNfceItensNCI_VALORPIS.Value            :=DM.TBVendasItensVEI_VALORPIS.Value;
    DM.TBNfceItensNCI_VALORPISST.Value          :=DM.TBVendasItensVEI_VALORPISST.Value;
    //nao tem DM.TBNfceItensNCI_VALORSEGURO.Value          :=DM.TBVendasItensVEI_VALORSEGURO.Value;
    DM.TBNfceItensNCI_VALORTOTAL.Value          :=DM.TBVendasItensVEI_VALORTOTAL.Value;
    DM.TBNfceItensNCI_VALORTOTALBRUTO.Value     :=DM.TBVendasItensVEI_VALORTOTALBRUTO.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOS.Value       :=DM.TBVendasItensVEI_VALORTRIBUTOS.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOSEST.Value    :=DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOSFED.Value    :=DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOSIMP.Value    :=DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOSMUN.Value    :=DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
    DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value;
    {$ENDREGION}
    DM.TBNfceItens.Post;
    DM.TBVendasItens.Next;
  end;
  DM.TBVendasItens.EnableControls;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update VENDAS set VED_NFCE=:nfce where VED_CODIGO=:codigo');
  DM.QYAux.ParamByName('nfce').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.ExecSQL;
  DM.TBVendas.Close;
  DM.TBVendas.Open;

  DBEdit5.Visible:=True;
  Label7.Visible:=False;

//  ImageProduto.Picture.Assign(nil); //(DMConfiguracao.CaminhoImagensProdutos + 'padrao.png');
  EditCodigo.SetFocus;
  EditCodigo.SelectAll;

  MessageDlg('DAV carregado, prossiga com o pagamento.',mtInformation,[mbOk],0);
end;

procedure TFormNfceCaixa.IdentificarCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.PermitirCadastrar:=True;
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin

    if DM.TBNfce.IsEmpty then
    IniciarVenda;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBNfceNFC_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBNfceNFC_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.TBNfceNFC_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBNfceNFC_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM.TBNfceNFC_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM.TBNfceNFC_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM.TBNfceNFC_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM.TBNfceNFC_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM.TBNfceNFC_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM.TBNfceNFC_TABELAPRECO.Value:=FormClientesLoc.QYClientesCLI_TABELAPRECO.Value;
    DM.TBNfce.Post;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.IdentificarVendedor1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfce.IsEmpty,'Nenhuma venda em andamento.');
  AbortIf(DM.TBNfceNFC_STATUS.Value<>'A','Não é possível alterar um cupom que não está em aberto.');

  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM.TBNfce.Edit;
    DM.TBNfceNFC_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM.TBNfce.Post;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.IncluirItem;
var NomeArquivo: String;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Produto não encontrado.');
  AbortIf(DM.TBProdutosPRO_CFOP.Value.ToString='','Produto sem CFOP cadastrada.');
  AbortIf(DM.TBProdutosPRO_TRIBUTO.Value='','Produto sem tributo cadastrado.');

  if DM.TBNfce.IsEmpty then
  IniciarVenda;

  if DM.TBNfceNFC_STATUS.Value='A' then
  begin
      //carrega imagem do produto.
//      NomeArquivo:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+
//                   IntToStr(QYProdutosPRO_CODIGO.Value)+'\'+
//                   DM.TBParametrosPAR_PASTAHIGH.Value+'\'+
//                   IntToStr(QYProdutosPRO_CODIGO.Value)+'001.jpg';
//      if FileExists(NomeArquivo) then
//      ImageProduto.Picture.LoadFromFile(NomeArquivo) else
//      ImageProduto.Picture.Assign(nil);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CLIENTE.Value;
    DM.TBClientes.Open;
    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
    DM.TBVendedores.Open;
    DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfceNFC_ESTADO.Value,[]);

    DM.TBNfceItens.Insert;
    DM.TBNfceItensNCI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
    DM.TBNfceItensNCI_ALIQCOFINSST.Value:=DM.TBProdutosPRO_ALIQCOFINSST.Value;
    DM.TBNfceItensNCI_ALIQFCP.Value:=DM.TBAliquotasALI_ALIQFCP.Value;
    DM.TBNfceItensNCI_ALIQFCPST.Value:=DM.TBAliquotasALI_ALIQFCPST.Value;

    if DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value='E' then
    begin
      DM.TBNfceItensNCI_ALIQICMS.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
      DM.TBNfceItensNCI_ALIQICMSADICST.Value:=DM.TBAliquotasALI_ALIQICMSADICST.Value;
      DM.TBNfceItensNCI_ALIQICMSRED.Value:=DM.TBAliquotasALI_ALIQICMSRED.Value;
      DM.TBNfceItensNCI_ALIQICMSST.Value:=DM.TBAliquotasALI_ALIQICMSST.Value;
    end else
    begin
      DM.TBNfceItensNCI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
      DM.TBNfceItensNCI_ALIQICMSADICST.Value:=DM.TBProdutosPRO_ALIQICMSADICST.Value;
      DM.TBNfceItensNCI_ALIQICMSRED.Value:=DM.TBProdutosPRO_ALIQICMSRED.Value;
      DM.TBNfceItensNCI_ALIQICMSST.Value:=DM.TBProdutosPRO_ALIQICMSST.Value;
    end;
    DM.TBNfceItensNCI_ALIQICMSINTER.Value:=DM.TBAliquotasALI_ALIQICMSINTER.Value;
    DM.TBNfceItensNCI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
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
    DM.TBNfceItensNCI_CFOP.Value:=DM.TBProdutosPRO_CFOP.Value; //DM.TBNfceNFC_CFOP.Value;
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
    DM.TBNfceItensNCI_DESCVALOR.Value:=0;
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
    DM.TBNfceItensNCI_QUANTIDADE.Value:=StrToFloat(EditQuantidade.Text);
    DM.TBNfceItensNCI_SEQUENCIA.Value:=DM.TBNfceNFC_SEQUENCIAITEM.Value+1;
    DM.TBNfceItensNCI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
    DM.TBNfceItensNCI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value;
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

    if DM.TBClientesCLI_TABELAPRECO.Value='V' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='1' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='2' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='3' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='4' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='5' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value;
    if DM.TBClientesCLI_TABELAPRECO.Value='6' then DM.TBNfceItensNCI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;

    DM.TBNfceItensNCI_VALORTOTAL.Value:=StrToFloat(EditQuantidade.Text) * DM.TBNfceItensNCI_VALORUNIT.Value;
    DM.TBNfceItensNCI_VALORTOTALBRUTO.Value:=StrToFloat(EditQuantidade.Text) * DM.TBNfceItensNCI_VALORUNIT.Value;
    DM.TBNfceItensNCI_VALORTRIBUTOS.Value:=0;
    DM.TBNfceItensNCI_VALORTRIBUTOSEST.Value:=0;
    DM.TBNfceItensNCI_VALORTRIBUTOSFED.Value:=0;
    DM.TBNfceItensNCI_VALORTRIBUTOSIMP.Value:=0;
    DM.TBNfceItensNCI_VALORTRIBUTOSMUN.Value:=0;

    //campos da reforma tributária.
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
    DM.TBRegrasFiscais.Open;
    DM.TBNfceItensNCI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    //DM.TBNfceItensNCI_ALIQCBSCREDPRES.Value:=
    //DM.TBNfceItensNCI_ALIQCBSDIF.Value:=
    //DM.TBNfceItensNCI_ALIQCBSEFE.Value:=
    DM.TBNfceItensNCI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
    //DM.TBNfceItensNCI_ALIQIBSCREDPRES.Value:=
    DM.TBNfceItensNCI_ALIQIBSMUN.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
    //DM.TBNfceItensNCI_ALIQIBSMUNDIF.Value:=
    //DM.TBNfceItensNCI_ALIQIBSMUNEFE.Value:=
    DM.TBNfceItensNCI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
    DM.TBNfceItensNCI_ALIQIBSUF.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
    //DM.TBNfceItensNCI_ALIQIBSUFDIF.Value:=
    //DM.TBNfceItensNCI_ALIQIBSUFEFE.Value:=
    DM.TBNfceItensNCI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
    DM.TBNfceItensNCI_ALIQIS.Value:=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
    //DM.TBNfceItensNCI_ALIQISESP.Value:=
    //DM.TBNfceItensNCI_BASEIBSCBS.Value:=
    //DM.TBNfceItensNCI_BASEIS.Value:=
    DM.TBNfceItensNCI_CBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value; //o mesmo para o IBS?
    DM.TBNfceItensNCI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DM.TBNfceItensNCI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DM.TBNfceItensNCI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
    DM.TBNfceItensNCI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
    DM.TBNfceItensNCI_IBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
  //  DM.TBNfceItensNCI_VALORCBS.Value:=
  //  DM.TBNfceItensNCI_VALORCBSCREDPRES.Value:=
  //  DM.TBNfceItensNCI_VALORCBSCREDPRESSUS.Value:=
  //  DM.TBNfceItensNCI_VALORCBSDEV.Value:=
  //  DM.TBNfceItensNCI_VALORCBSDIF.Value:=
  //  DM.TBNfceItensNCI_VALORIBS.Value:=
  //  DM.TBNfceItensNCI_VALORIBSCREDPRES.Value:=
  //  DM.TBNfceItensNCI_VALORIBSCREDPRESSUS.Value:=
  //  DM.TBNfceItensNCI_VALORIBSMUN.Value:=
  //  DM.TBNfceItensNCI_VALORIBSMUNDEV.Value:=
  //  DM.TBNfceItensNCI_VALORIBSMUNDIF.Value:=
  //  DM.TBNfceItensNCI_VALORIBSUF.Value:=
  //  DM.TBNfceItensNCI_VALORIBSUFDEV.Value:=
  //  DM.TBNfceItensNCI_VALORIBSUFDIF.Value:=
//    DM.TBNfceItensNCI_VALORIS.Value:=

    DM.TBNfceItens.Post;

    EditCodigo.Clear;
    EditCodigo.SetFocus;
    EditQuantidade.Text:='1';
  end;
end;

procedure TFormNfceCaixa.IniciarVenda;
begin
  AbortIf(DM.ImpressoraNfce='','Antes de começar a venda, defina a impressora onde será impresso o DANFCE.'+#13#10+#13#10+'Acesse menu Arquivo -> Selecionar Impressora');

  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=1;
  DM.TBClientes.Open;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) NFC_CODIGO, NFC_CHAVEACESSO from NFCE where NFC_VENDA is null and NFC_STATUS=:status and (NFC_PROTOCOLOINUT=:inut or NFC_PROTOCOLOINUT is null) order by NFC_CODIGO desc');
  DM.QYAux.ParamByName('status').AsString:='I';
  DM.QYAux.ParamByName('inut').AsString:='';
  DM.QYAux.Open;
  if ((not DM.QYAux.IsEmpty) and (FormNfceFuncoes.NaoExisteNaSefaz(DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString))) then
  begin
    //se nao existe a chave de acesso na sefaz, reutiliza um cupom que foi cancelado antes de ser enviado à receita.
    //elimina os itens anteriores.
    //reseta status para A e cliente para consumidor final.
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('delete from NFCEITENS where NCI_NOTA=:nota');
    DM.QYAux2.ParamByName('nota').AsInteger:=DM.QYAux.FieldByName('NFC_CODIGO').AsInteger;
    DM.QYAux2.ExecSQL;

    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('update NFCE set NFC_CLIENTE=:cliente, NFC_ESTADO=:estado, NFC_NOME=:nome, NFC_SEQUENCIAITEM=:sequencia, NFC_STATUS=:status where NFC_CODIGO=:codigo');
    DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NFC_CODIGO').AsInteger;
    DM.QYAux2.ParamByName('cliente').AsInteger:=1;
    DM.QYAux2.ParamByName('estado').AsString:=DM.TBClientesCLI_ESTADO.Value;
    DM.QYAux2.ParamByName('nome').AsString:=DM.TBClientesCLI_NOME.value;
    DM.QYAux2.ParamByName('sequencia').AsInteger:=0;
    DM.QYAux2.ParamByName('status').AsString:='A';
    DM.QYAux2.ExecSQL;

    DM.TBNfce.Close;
    DM.TBNfce.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NFC_CODIGO').AsInteger;
    DM.TBNfce.Open;
  end else
  begin
    DM.TBNfce.Insert;
    DM.TBNfceNFC_CLIENTE.Value:=1; //DM.TBClientesCLI_CODIGO.Value;
    DM.TBNfceNFC_ESTADO.Value:=DM.TBClientesCLI_ESTADO.Value;
    DM.TBNfceNFC_NOME.Value:=DM.TBClientesCLI_NOME.Value;
    DM.TBNfceNFC_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
    DM.TBNfceNFC_CONDICAO.Value:=DM.TBParametrosPAR_CONDICAOPADRAO.Value;
    DM.TBNfceNFC_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBNfce.Post;
  end;

  DBEdit5.Visible:=True;
  Label7.Visible:=False;

//  ImageProduto.Picture.Assign(nil); //(DMConfiguracao.CaminhoImagensProdutos + 'padrao.png');
  EditCodigo.SetFocus;
  EditCodigo.SelectAll;
end;

procedure TFormNfceCaixa.LigarDesligarContingencia1Click(Sender: TObject);
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

procedure TFormNfceCaixa.LocalizarDAV1Click(Sender: TObject);
begin
  AbortIf(not DM.TBNfce.IsEmpty,'Existe uma venda em andamento.');

  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.ListarDAVs;
  if FormVendasLoc.QYVendas.IsEmpty then
  begin
    MessageDlg('Não existem DAVs em aberto.',mtInformation,[mbOk],0);
  end else
  begin
    FormVendasLoc.ShowModal;
    if VendasLoc.Procurar then
    begin
      CriarNfcePorPedido(FormVendasLoc.QYVendasVED_CODIGO.Value);
    end;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.LocalizarProduto1Click(Sender: TObject);
begin
//  if DM.TBNfce.IsEmpty then
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Open;
    IncluirItem;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormNfceCaixa.MenuFiscal1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceMenuFiscal, FormNfceMenuFiscal);
  FormNfceMenuFiscal.ShowModal;
  FormNfceMenuFiscal.Free;
  FormNfceMenuFiscal:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.SelecionarImpressora1Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
  begin
    DM.ImpressoraNfce:=Printer.Printers[Printer.PrinterIndex];
    DM.Variaveis('SAVE');
  end;
end;

procedure TFormNfceCaixa.RealizarEstornoEstoque(NFCe: Integer);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from NFCE where NFC_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=NFCe;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('NFC_MOVIMENTAESTOQUE').AsString='S' then
  begin
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add(
      'select NCI_ALMOXARIFADO, NCI_CONVERSAO, NCI_NOTA, NCI_PRODUTO, NCI_PRODUTOREAL, NCI_QUANTIDADE, NCI_VALORTOTAL, NCI_VALORUNIT, NFC_CLIENTE, NFC_VENDEDOR '+
      'from NFCEITENS '+
      'left join NFCE on NCI_NOTA=NFC_CODIGO '+
      'where NCI_NOTA=:codigo');
    DM.QYAux2.ParamByName('codigo').AsInteger:=NFCe;
    DM.QYAux2.Open;

    DM.QYAux2.DisableControls;
    DM.QYAux2.First;
    while not DM.QYAux2.Eof do
    begin
      DM.TBProdutos.Close;
      if DM.QYAux2.FieldByName('NCI_PRODUTOREAL').AsInteger=0 then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('NCI_PRODUTO').AsInteger else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('NCI_PRODUTOREAL').AsInteger;
      DM.TBProdutos.Open;
      //só estorna se for produto, se for serviço não estorna.
      if DM.TBProdutosPRO_TIPO.Value='P' then
      begin
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.QYAux2.FieldByName('NCI_ALMOXARIFADO').AsInteger;
        DM.TBEstoqueEST_CLIENTE.Value:=DM.QYAux2.FieldByName('NFC_CLIENTE').AsInteger;
        DM.TBEstoqueEST_CONVERSAO.Value:=DM.QYAux2.FieldByName('NCI_CONVERSAO').AsExtended;
        DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO NOTA FISCAL CONSUMIDOR ELETRONICA';
        DM.TBEstoqueEST_NUMDOCTO.Value:='NFCE-'+DM.QYAux2.FieldByName('NCI_NOTA').AsString;
        if DM.QYAux2.FieldByName('NCI_PRODUTOREAL').AsInteger=0 then
        DM.TBEstoqueEST_PRODUTO.Value:=DM.QYAux2.FieldByName('NCI_PRODUTO').AsInteger else
        begin
          DM.TBEstoqueEST_PRODUTO.Value:=DM.QYAux2.FieldByName('NCI_PRODUTOREAL').AsInteger; //dá baixa de outro produto.
          DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.QYAux2.FieldByName('NCI_PRODUTO').AsInteger; //código do produto que originou a baixa do outro.
        end;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM.QYAux2.FieldByName('NCI_QUANTIDADE').AsExtended * DM.QYAux2.FieldByName('NCI_CONVERSAO').AsExtended;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.QYAux2.FieldByName('NCI_QUANTIDADE').AsExtended;
        DM.TBEstoqueEST_TRANSACAO.Value:='E';
        if DM.QYAux2.FieldByName('NCI_PRODUTOREAL').AsInteger=0 then
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.QYAux2.FieldByName('NCI_VALORUNIT').AsExtended else
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.QYAux2.FieldByName('NCI_VALORTOTAL').AsExtended / DM.TBEstoqueEST_QUANTIDADE.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.QYAux2.FieldByName('NFC_VENDEDOR').AsInteger;
        DM.TBEstoque.Post;
      end;
      DM.QYAux2.Next;
    end;
    DM.QYAux2.EnableControls;
    DM.QYAux2.Close;
  end;
end;

procedure TFormNfceCaixa.RealizarEstornoContasReceber(NFCe: Integer);
var S: String;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from NFCE where NFC_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=NFCe;
  DM.QYAux.Open;

  if DM.QYAux.FieldByName('NFC_MOVIMENTAFINANCEIRO').AsString='S' then
  begin
    {$REGION 'Estorno financeiro'}
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('NFCE-'+NFCe.ToString+'/%')+' order by REE_CODIGO');
    DM.QYAux2.Open;
    DM.QYAux2.First;
    DM.QYAux2.DisableControls;
    while not DM.QYAux2.Eof do
    begin
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('REE_CODIGO').AsInteger;
      DM.TBReceber.Open;

      if DM.TBReceberREE_STATUS.Value='B' then
      GerarFluxoCaixa(
        DM.TBReceberREE_TIPODOCTO.Value,'NFCE-'+NFCe.ToString,'LANCAMENTO AUTOMATICO NFCE-'+NFCe.ToString+' - CANCELAMENTO',
        'S','NOTA FISCAL CONSUMIDOR ELETRONICA',DM.TBReceberCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBReceberREE_CONTA.Value,
        DM.TBReceberREE_CLIENTE.Value,0,Date,DM.TBReceberREE_VALORPAGO.AsExtended
      );

      DM.QYAux3.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add('update RECEBER set REE_STATUS=:status where REE_CODIGO=:codigo');
      DM.QYAux3.ParamByName('status').AsString:='C';
      DM.QYAux3.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('REE_CODIGO').AsInteger;
      DM.QYAux3.ExecSQL;
      DM.QYAux3.Close;

      DM.QYAux2.Next;
    end;
    DM.QYAux2.EnableControls;
    DM.QYAux2.Close;
    {$ENDREGION}
  end;
  DM.QYAux.Close;
end;

procedure TFormNfceCaixa.Reimpressao1Click(Sender: TObject);
begin
  AbortIf(not DM.TBNfce.IsEmpty,'Existe uma venda em andamento.');

  Application.CreateForm(TFormNfceLoc, FormNfceLoc);
  FormNfceLoc.ShowModal;
  if NfceLoc.Procurar then
  begin
    if MessageDlg('Reimprimir a DANFCe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Application.CreateForm(TFormNfceFast, FormNfceFast);

      if DM.TBParametrosPAR_NFCETIPODANFCE.Value='ACBRPOSPRINTER' then
      FormNfceFast.GerarDANFCEPos(FormNfceLoc.QYNfceNFC_CODIGO.Value,'Via consumidor') else
      begin
        //aqui dentro só entra se tipo for fastreport.
        if UpperCase(ParamStr(1))='CUPOM' then
        FormNfceFast.GerarDANFCE(FormNfceLoc.QYNfceNFC_CODIGO.Value,'Via consumidor',True,False) else
        begin
          if MessageDlg('Deseja visualizar?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          FormNfceFast.GerarDANFCE(FormNfceLoc.QYNfceNFC_CODIGO.Value,'Via consumidor',False,False,'') else
          FormNfceFast.GerarDANFCE(FormNfceLoc.QYNfceNFC_CODIGO.Value,'Via consumidor',True,False,'');
        end;
      end;

      FormNfceFast.Free;
      FormNfceFast:=nil;
    end;
  end;
  FormNfceLoc.Free;
  FormNfceLoc:=nil;
  EditCodigo.SetFocus;
end;

procedure TFormNfceCaixa.SairDoCaixa1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceCaixa.SalvarDANFCEemPDF1Click(Sender: TObject);
begin
  AbortIf(not DM.TBNfce.IsEmpty,'Existe uma venda em andamento.');

  Application.CreateForm(TFormNfceLoc, FormNfceLoc);
  FormNfceLoc.ShowModal;
  if NfceLoc.Procurar then
  begin
    FileSaveDialog1.DefaultFolder:=ExtractFilePath(Application.ExeName);
    if FileSaveDialog1.Execute then
    begin
      Application.CreateForm(TFormNfceFast, FormNfceFast);
      FormNfceFast.GerarDANFCE(FormNfceLoc.QYNfceNFC_CODIGO.Value,'Via consumidor',False,True,FileSaveDialog1.FileName);
      FormNfceFast.Free;
      FormNfceFast:=nil;
    end;
  end;
  FormNfceLoc.Free;
  FormNfceLoc:=nil;
  EditCodigo.SetFocus;
end;

end.
