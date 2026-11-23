unit BoletosSelecionar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, PngSpeedButton,
  Vcl.Mask, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBoletosSelecionar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    Edit1: TEdit;
    TBSelecao: TClientDataSet;
    DSSelecao: TDataSource;
    DSBoletos: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    SpeedButton2: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngBitBtn7: TPngBitBtn;
    TBSelecaoBOL_CODIGO: TIntegerField;
    Label13: TLabel;
    ComboBox4: TComboBox;
    TBSelecaoBOL_CLIENTE: TIntegerField;
    TBSelecaoBOL_CONTA: TIntegerField;
    DSSelecaoClientes: TDataSource;
    TBSelecaoClientes: TClientDataSet;
    DSSelecaoContas: TDataSource;
    TBSelecaoContas: TClientDataSet;
    TBSelecaoContasCON_CODIGO: TIntegerField;
    TBSelecaoContasCON_QUANTIDADE: TIntegerField;
    TBSelecaoClientesCLI_CODIGO: TIntegerField;
    TBSelecaoClientesCLI_QUANTIDADE: TIntegerField;
    PngBitBtn8: TPngBitBtn;
    Panel1: TPanel;
    Memo1: TMemo;
    Label2: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    CheckBox1: TCheckBox;
    TBBoletos: TClientDataSet;
    TBSelecaoBOL_DTVENCIMENTO: TDateField;
    TBSelecaoBOL_NOME: TStringField;
    TBSelecaoBOL_STATUS: TStringField;
    TBSelecaoCON_BANCO: TIntegerField;
    TBBoletosBOL_CODIGO: TIntegerField;
    TBBoletosBOL_CLIENTE: TIntegerField;
    TBBoletosBOL_CONTA: TIntegerField;
    TBBoletosBOL_DTVENCIMENTO: TDateField;
    TBBoletosBOL_NOME: TStringField;
    TBBoletosBOL_STATUS: TStringField;
    TBBoletosCON_BANCO: TIntegerField;
    TBBoletosBOL_VALORTOTAL: TFMTBCDField;
    TBSelecaoBOL_VALORTOTAL: TFMTBCDField;
    Label3: TLabel;
    ComboBox3: TComboBox;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_NOME: TStringField;
    QYBoletosBOL_STATUS: TStringField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosCON_BANCO: TIntegerField;
    PngBitBtn9: TPngBitBtn;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn8Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngBitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    //procedure GerarBoleto(Boletos: String; ArquivoPDF: String);
    function GerarEmail(Cliente: Integer; Boletos: String): Boolean;
    function GerarZap(Cliente: Integer; Boletos: String): Boolean;
  public
    { Public declarations }
    procedure CarregarBoletos;
  end;

var
  FormBoletosSelecionar: TFormBoletosSelecionar;

implementation
uses DataMod, DataMod2, DataModSearch, Funcoes1, EmailsEnviar, BoletosFast, frxClass,
  FuncoesFirenet, FuncoesZap;
{$R *.dfm}

function TFormBoletosSelecionar.GerarEmail(Cliente: Integer; Boletos: String): Boolean;
var MM: TMemo; Destinatarios: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=Cliente;
  DM.TBClientes.Open;
  if DM.TBClientesCLI_EMAIL.Value='' then
  begin
    Memo1.Lines.Add('Nenhum email especificado no cadastro do cliente '+IntToStr(Cliente));
    Result:=False;
    Exit;
  end;

  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_BOLETOSEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value; //eliminar esse campo: DM.TBParametrosPAR_NFSEEMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|BOL_CODIGO|',Boletos,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_CLIENTE|',IntToStr(DM.TBClientesCLI_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_NOME|',DM.TBClientesCLI_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_OBSERVACOES|','Ver anexo',[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_DTVENCIMENTO|','Ver anexo',[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarBoletosFast(Boletos,DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\BoletosCLI_'+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value),'0',6,taRight)+'.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\BoletosCLI_'+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value),'0',6,taRight)+'.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  Destinatarios:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  Destinatarios:=Destinatarios+','+DM.TBClientesCLI_EMAIL2.Value;
  if CheckBox1.Checked then
  Destinatarios:=InputBox('Enviar Email','Confirme o(s) email(s) do destinatário',Destinatarios);
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=Destinatarios;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_ENVIADO.Value:='S';
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  DM2.TBEmailsEMC_ASSINATURA.Value:=DM2.TBEmailsContasEMC_ASSINATURA.Value;
  DM2.TBEmailsEMC_CONFIRMACAO.Value:=DM2.TBEmailsContasEMC_CONFIRMACAO.Value;
  DM2.TBEmailsEMC_EMAIL.Value:=DM2.TBEmailsContasEMC_EMAIL.Value;
  DM2.TBEmailsEMC_LOGIN.Value:=DM2.TBEmailsContasEMC_LOGIN.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsEMC_POP.Value:=DM2.TBEmailsContasEMC_POP.Value;
  DM2.TBEmailsEMC_POPPORTA.Value:=DM2.TBEmailsContasEMC_POPPORTA.Value;
  DM2.TBEmailsEMC_REPLYTO.Value:=DM2.TBEmailsContasEMC_REPLYTO.Value;
  DM2.TBEmailsEMC_SENHA.Value:=DM2.TBEmailsContasEMC_SENHA.Value;
  DM2.TBEmailsEMC_SMTP.Value:=DM2.TBEmailsContasEMC_SMTP.Value;
  DM2.TBEmailsEMC_SMTPPORTA.Value:=DM2.TBEmailsContasEMC_SMTPPORTA.Value;
  DM2.TBEmailsEMC_SSL.Value:=DM2.TBEmailsContasEMC_SSL.Value;
  DM2.TBEmailsEMC_TLS.Value:=DM2.TBEmailsContasEMC_TLS.Value;

  DM2.TBEmails.Post;
  Result:=True;
end;

function TFormBoletosSelecionar.GerarZap(Cliente: Integer; Boletos: String): Boolean;
var MM: TMemo; ArquivoBoleto, Destinatarios: String;
  Texto: WideString;
begin
  Result:=False;
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=Cliente;
  DM.TBClientes.Open;
  if DM.TBClientesCLI_FONE1.Value='' then
  begin
    Memo1.Lines.Add('Nenhum número WhatsApp (Campo: Fone 01) especificado no cadastro do cliente '+IntToStr(Cliente));
    Result:=False;
    Exit;
  end;

  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a instância padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_BOLETOSZAPASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBZapInstancias.Close;
  DM2.TBZapInstancias.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_ZAPINSTANCIA.Value;
  DM2.TBZapInstancias.Open;

  try
    //substitui as palavras-chave no texto padrão.
    MM:=TMemo.CreateParented(Application.Handle);
    MM.WordWrap:=False; //funcionou?!
    MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
    MM.Text:=StringReplace(MM.Text,'|BOL_CODIGO|',Boletos,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|BOL_CLIENTE|',IntToStr(DM.TBClientesCLI_CODIGO.Value),[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|BOL_NOME|',DM.TBClientesCLI_NOME.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|BOL_OBSERVACOES|','Ver anexo',[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|BOL_DTVENCIMENTO|','Ver anexo',[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

    ArquivoBoleto:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\BoletosCLI_'+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value),'0',6,taRight)+'.pdf';
    GerarBoletosFast(Boletos,ArquivoBoleto); //gera o arquivo PDF somente.

    try
      //metodo com o FIREZAP EnviarZap(EditNumero.Text,MemoMensagem.Text,EditAnexo1.Text);
      EnviarZapi(FormatarString('FONE11',SoNumeros(DM.TBClientesCLI_FONE1.Value)),MM.Text,ArquivoBoleto);
    except on Exception do
      MessageDlg('Erro ao enviar mensagem.',mtError,[mbOk],0);
    end;

    Result:=True;
  finally
    FreeAndNil(MM);
  end;
end;

procedure TFormBoletosSelecionar.DBGrid1DblClick(Sender: TObject);
begin
  if not TBBoletos.IsEmpty then
  PngBitBtn3.Click;
end;

procedure TFormBoletosSelecionar.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn3.Click;
  end;
end;

procedure TFormBoletosSelecionar.DBGrid2DblClick(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  PngBitBtn4.Click;
end;

procedure TFormBoletosSelecionar.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn4.Click;
  end;
end;

procedure TFormBoletosSelecionar.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosSelecionar.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosSelecionar.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosSelecionar.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosSelecionar.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosSelecionar.Edit5Exit(Sender: TObject);
begin
  LocClientesExit(Edit5,Edit6);
end;

procedure TFormBoletosSelecionar.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormBoletosSelecionar.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosSelecionar.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox3.ItemIndex:=1;
  ComboBox4.ItemIndex:=1;
  Panel1.Visible:=False;
end;

procedure TFormBoletosSelecionar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosSelecionar.PngBitBtn1Click(Sender: TObject);
var Boletos: String;
begin
  AbortIf(TBSelecao.IsEmpty,'Nenhum boleto selecionado.');
  AbortIf(TBSelecaoContas.RecordCount>1,'Não é possível imprimir boletos de várias contas simultaneamente.');

  if TBSelecaoClientes.RecordCount > 1 then
  begin
    if MessageDlg('Existem boletos de mais de um cliente selecionados. Deseja continuar?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
    Exit;
  end;

  Boletos:='';
  TBSelecao.DisableControls;
  TBSelecao.First;
  while not TBSelecao.Eof do
  begin
    Boletos:=Boletos+','+IntToStr(TBSelecaoBOL_CODIGO.Value);
    TBSelecao.Next;
  end;
  TBSelecao.EnableControls;
  Delete(Boletos,1,1); //retira primeira virgula.

  Application.CreateForm(TFormBoletosFast, FormBoletosFast);
  FormBoletosFast.QY10.Close;
  FormBoletosFast.QY10.SQL.Clear;
  FormBoletosFast.QY10.SQL.Add(
    'select BOL_ACEITE, BOL_CARTEIRA, BOL_CARTEIRACOD, coalesce(BOL_CEP,'''')||'' - ''||coalesce(BOL_CIDADE,'''')||'' - ''||coalesce(BOL_ESTADO,'''') as CEPCIDADEUF, '+
    'BOL_CLIENTE, iif(BOL_TIPOPESSOA=''J'',BOL_CNPJ,BOL_CPF) as CNPJCPF, BOL_CODIGO, BOL_CODIGOBARRAS, BOL_DESCVALOR, '+
    'BOL_DTCADASTRO, BOL_DTVENCIMENTO, coalesce(BOL_ENDERECO,'''')||'', ''||coalesce(BOL_NUMERO,'''')||'' - ''||coalesce(BOL_COMPLEMENTO,'''')||'' - ''||coalesce(BOL_BAIRRO,'''') as ENDERECOBAIRRO, '+
    'BOL_ESPECIE, trim(substring(BOL_ESPECIEDOC from 6 for 3)) as BOL_ESPECIEDOC, BOL_ESTADO, BOL_INSTRUCAO1, BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INSTRUCAO4, BOL_LINHADIGITAVEL, '+
    'BOL_LOCALPAGTO, BOL_NOME, BOL_NOSSONUMERO, BOL_OBSERVACOES, BOL_QRCODEPIX, (BOL_VALORJUROS+BOL_VALORMULTA) as MULTAJUROS, BOL_VALORTOTAL, '+
    'CON_AGENCIA, CON_BANCO, CON_CONTA, CON_CONTADIGITO, CON_CEDENTE, CON_CEDENTEDIGITO, CON_CEDENTEDOC, CON_CEDENTENOME, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CEDENTE,'''')||''-''||coalesce(CON_CEDENTEDIGITO,'''') as AGENCIACEDENTE, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CONTA,'''')||''-''||coalesce(CON_CONTADIGITO,'''') as AGENCIACONTA, '+
    'current_date as DATAATUAL from BOLETOS '+
    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
    'where BOL_CODIGO in ('+Boletos+')');
  FormBoletosFast.QY10.Open;
  FormBoletosFast.CarregarImagemBanco(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsInteger);
  FormBoletosFast.frxReport10.Variables['BANCO']:=QuotedStr(AlignText(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString,'0',3,taRight)+'-'+Modulo11(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString));
  FormBoletosFast.frxReport10.Variables['ENDERECOCEDENTE']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+
                                                                      DM.TBEmpresaEMP_NUMERO.Value+' - '+
                                                                      DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CIDADE.Value+' - '+
                                                                      DM.TBEmpresaEMP_ESTADO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CEP.Value);
  if DM.TBParametrosPAR_BOLETOPADRAO.Value='BOLETO PADRAO' then
  TfrxPageHeader(FormBoletosFast.frxReport10.FindObject('PageHeader1')).Visible:=False;
{  FormBoletosFast.frxPDFExport1.FileName:=SaveDialog1.FileName;
  FormBoletosFast.frxPDFExport1.ShowDialog:=False;
  FormBoletosFast.frxReport10.PrintOptions.ShowDialog:=False;
  FormBoletosFast.frxReport10.PrepareReport;
  FormBoletosFast.frxReport10.Export(FormBoletosFast.frxPDFExport1);}
  FormBoletosFast.frxReport10.ShowReport;
  FormBoletosFast.Free;
  FormBoletosFast:=nil;
end;

procedure TFormBoletosSelecionar.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosSelecionar.PngBitBtn3Click(Sender: TObject);
begin
  //if not QYBoletos.IsEmpty then
  if not TBBoletos.IsEmpty then
  begin
//    if not TBSelecao.Locate('BOL_CODIGO',QYBoletosBOL_CODIGO.Value,[]) then
//    begin
      TBSelecao.Insert;
      TBSelecaoBOL_CODIGO.Value:=TBBoletosBOL_CODIGO.Value; //QYBoletosBOL_CODIGO.Value;
      TBSelecaoBOL_CLIENTE.Value:=TBBoletosBOL_CLIENTE.Value; //QYBoletosBOL_CLIENTE.Value;
      TBSelecaoBOL_CONTA.Value:=TBBoletosBOL_CONTA.Value; //QYBoletosBOL_CONTA.Value;
      TBSelecaoBOL_DTVENCIMENTO.Value:=TBBoletosBOL_DTVENCIMENTO.Value;
      TBSelecaoBOL_NOME.Value:=TBBoletosBOL_NOME.Value;
      TBSelecaoBOL_STATUS.Value:=TBBoletosBOL_STATUS.Value;
      TBSelecaoBOL_VALORTOTAL.Value:=TBBoletosBOL_VALORTOTAL.Value;
      TBSelecaoCON_BANCO.Value:=TBBoletosCON_BANCO.Value;
      TBSelecao.Post;

      TBBoletos.Delete;

      //contabiliza a quantidade de clientes selecionados.
      if TBSelecaoClientes.Locate('CLI_CODIGO',TBSelecaoBOL_CLIENTE.Value,[]) then
      begin
        TBSelecaoClientes.Edit;
        TBSelecaoClientesCLI_QUANTIDADE.Value:=TBSelecaoClientesCLI_QUANTIDADE.Value+1;
        TBSelecaoClientes.Post;
      end else
      begin
        TBSelecaoClientes.Insert;
        TBSelecaoClientesCLI_CODIGO.Value:=TBSelecaoBOL_CLIENTE.Value;
        TBSelecaoClientesCLI_QUANTIDADE.Value:=1;
        TBSelecaoClientes.Post;
      end;

      //contabiliza a quantidade de contas bancárias selecionadas.
      if TBSelecaoContas.Locate('CON_CODIGO',TBSelecaoBOL_CONTA.Value,[]) then
      begin
        TBSelecaoContas.Edit;
        TBSelecaoContasCON_QUANTIDADE.Value:=TBSelecaoContasCON_QUANTIDADE.Value+1;
        TBSelecaoContas.Post;
      end else
      begin
        TBSelecaoContas.Insert;
        TBSelecaoContasCON_CODIGO.Value:=TBSelecaoBOL_CONTA.Value;
        TBSelecaoContasCON_QUANTIDADE.Value:=1;
        TBSelecaoContas.Post;
      end;
//    end;
  end;
end;

procedure TFormBoletosSelecionar.PngBitBtn4Click(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  begin
    TBSelecaoClientes.Locate('CLI_CODIGO',TBSelecaoBOL_CLIENTE.Value,[]);

    if TBSelecaoClientesCLI_QUANTIDADE.Value=1 then //se tiver 1, elimina, se tiver mais de um, decrementa.
    TBSelecaoClientes.Delete else
    begin
      TBSelecaoClientes.Edit;
      TBSelecaoClientesCLI_QUANTIDADE.Value:=TBSelecaoClientesCLI_QUANTIDADE.Value-1;
      TBSelecaoClientes.Post;
    end;

    TBSelecaoContas.Locate('CON_CODIGO',TBSelecaoBOL_CONTA.Value,[]);
    if TBSelecaoContasCON_QUANTIDADE.Value=1 then //se tiver 1, elimina, se tiver mais de um, decrementa.
    TBSelecaoContas.Delete else
    begin
      TBSelecaoContas.Edit;
      TBSelecaoContasCON_QUANTIDADE.Value:=TBSelecaoContasCON_QUANTIDADE.Value-1;
      TBSelecaoContas.Post;
    end;

    TBBoletos.Insert;
    TBBoletosBOL_CODIGO.Value:=TBSelecaoBOL_CODIGO.Value;
    TBBoletosBOL_CLIENTE.Value:=TBSelecaoBOL_CLIENTE.Value;
    TBBoletosBOL_CONTA.Value:=TBSelecaoBOL_CONTA.Value;
    TBBoletosBOL_DTVENCIMENTO.Value:=TBSelecaoBOL_DTVENCIMENTO.Value;
    TBBoletosBOL_NOME.Value:=TBSelecaoBOL_NOME.Value;
    TBBoletosBOL_STATUS.Value:=TBSelecaoBOL_STATUS.Value;
    TBBoletosBOL_VALORTOTAL.Value:=TBSelecaoBOL_VALORTOTAL.Value;
    TBBoletosCON_BANCO.Value:=TBSelecaoCON_BANCO.Value;
    TBBoletos.Post;

    TBSelecao.Delete;
  end;
end;

procedure TFormBoletosSelecionar.PngBitBtn5Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  TBSelecao.DisableControls;
  TBBoletos.DisableControls;
  TBBoletos.First;
  while not TBBoletos.Eof do
  begin
    TBSelecao.Insert;
    TBSelecaoBOL_CODIGO.Value:=TBBoletosBOL_CODIGO.Value;
    TBSelecaoBOL_CLIENTE.Value:=TBBoletosBOL_CLIENTE.Value;
    TBSelecaoBOL_CONTA.Value:=TBBoletosBOL_CONTA.Value;
    TBSelecaoBOL_DTVENCIMENTO.Value:=TBBoletosBOL_DTVENCIMENTO.Value;
    TBSelecaoBOL_NOME.Value:=TBBoletosBOL_NOME.Value;
    TBSelecaoBOL_STATUS.Value:=TBBoletosBOL_STATUS.Value;
    TBSelecaoBOL_VALORTOTAL.Value:=TBBoletosBOL_VALORTOTAL.Value;
    TBSelecaoCON_BANCO.Value:=TBBoletosCON_BANCO.Value;
    TBSelecao.Post;


    //contabiliza a quantidade de clientes selecionados.
    if TBSelecaoClientes.Locate('CLI_CODIGO',TBSelecaoBOL_CLIENTE.Value,[]) then
    begin
      TBSelecaoClientes.Edit;
      TBSelecaoClientesCLI_QUANTIDADE.Value:=TBSelecaoClientesCLI_QUANTIDADE.Value+1;
      TBSelecaoClientes.Post;
    end else
    begin
      TBSelecaoClientes.Insert;
      TBSelecaoClientesCLI_CODIGO.Value:=TBSelecaoBOL_CLIENTE.Value;
      TBSelecaoClientesCLI_QUANTIDADE.Value:=1;
      TBSelecaoClientes.Post;
    end;

    //contabiliza a quantidade de contas bancárias selecionadas.
    if TBSelecaoContas.Locate('CON_CODIGO',TBSelecaoBOL_CONTA.Value,[]) then
    begin
      TBSelecaoContas.Edit;
      TBSelecaoContasCON_QUANTIDADE.Value:=TBSelecaoContasCON_QUANTIDADE.Value+1;
      TBSelecaoContas.Post;
    end else
    begin
      TBSelecaoContas.Insert;
      TBSelecaoContasCON_CODIGO.Value:=TBSelecaoBOL_CONTA.Value;
      TBSelecaoContasCON_QUANTIDADE.Value:=1;
      TBSelecaoContas.Post;
    end;

    TBBoletos.Delete;
  end;
  TBBoletos.EnableControls;
  TBSelecao.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormBoletosSelecionar.PngBitBtn6Click(Sender: TObject);
begin
//  TBSelecao.EmptyDataSet;
//  TBSelecaoClientes.EmptyDataSet;
//  TBSelecaoContas.EmptyDataSet;
  Screen.Cursor:=crHourGlass;
  TBBoletos.DisableControls;
  TBSelecao.DisableControls;
  TBSelecao.First;
  while not TBSelecao.Eof do
  begin
    TBBoletos.Insert;
    TBBoletosBOL_CODIGO.Value:=TBSelecaoBOL_CODIGO.Value;
    TBBoletosBOL_CLIENTE.Value:=TBSelecaoBOL_CLIENTE.Value;
    TBBoletosBOL_CONTA.Value:=TBSelecaoBOL_CONTA.Value;
    TBBoletosBOL_DTVENCIMENTO.Value:=TBSelecaoBOL_DTVENCIMENTO.Value;
    TBBoletosBOL_NOME.Value:=TBSelecaoBOL_NOME.Value;
    TBBoletosBOL_STATUS.Value:=TBSelecaoBOL_STATUS.Value;
    TBBoletosBOL_VALORTOTAL.Value:=TBSelecaoBOL_VALORTOTAL.Value;
    TBBoletosCON_BANCO.Value:=TBSelecaoCON_BANCO.Value;
    TBBoletos.Post;

    TBSelecaoClientes.Locate('CLI_CODIGO',TBSelecaoBOL_CLIENTE.Value,[]);
    if TBSelecaoClientesCLI_QUANTIDADE.Value=1 then //se tiver 1, elimina, se tiver mais de um, decrementa.
    TBSelecaoClientes.Delete else
    begin
      TBSelecaoClientes.Edit;
      TBSelecaoClientesCLI_QUANTIDADE.Value:=TBSelecaoClientesCLI_QUANTIDADE.Value-1;
      TBSelecaoClientes.Post;
    end;

    TBSelecaoContas.Locate('CON_CODIGO',TBSelecaoBOL_CONTA.Value,[]);
    if TBSelecaoContasCON_QUANTIDADE.Value=1 then //se tiver 1, elimina, se tiver mais de um, decrementa.
    TBSelecaoContas.Delete else
    begin
      TBSelecaoContas.Edit;
      TBSelecaoContasCON_QUANTIDADE.Value:=TBSelecaoContasCON_QUANTIDADE.Value-1;
      TBSelecaoContas.Post;
    end;

    TBSelecao.Delete;
  end;
  TBSelecao.EnableControls;
  TBBoletos.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormBoletosSelecionar.PngBitBtn7Click(Sender: TObject);
var Where: String;
begin
  AbortIf((MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    '),'Digite as datas inicial e final');

  Where:='';
  if ComboBox3.Text='CADASTRO' then Where:='BOL_DTCADASTRO between :datainicial and :datafinal ' else
  if ComboBox3.Text='VENCIMENTO' then Where:='BOL_DTVENCIMENTO between :datainicial and :datafinal ' else
  if ComboBox3.Text='PAGAMENTO' then Where:='BOL_DTPAGAMENTO between :datainicial and :datafinal ';

  if ComboBox4.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
  if ComboBox4.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
  if ComboBox4.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
  if Edit6.Text<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit5.Text);
  if Edit4.Text<>'' then Where:=Where+' and BOL_CONTA='+QuotedStr(Edit3.Text);
  if Edit1.Text<>'' then Where:=Where+' and BOL_CODIGO='+QuotedStr(Edit1.Text);

  QYBoletos.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add(
    'select BOL_CODIGO, BOL_CLIENTE, BOL_CONTA, BOL_DTVENCIMENTO, '+
    'BOL_NOME, BOL_STATUS, BOL_VALORTOTAL, CON_BANCO from BOLETOS '+
    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
    'where '+Where+' order by BOL_NOME, BOL_DTVENCIMENTO'
  );
  QYBoletos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
  QYBoletos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
  QYBoletos.Open;

  CarregarBoletos;
end;

procedure TFormBoletosSelecionar.CarregarBoletos;
begin
  TBBoletos.Close;
  TBBoletos.Open;
  TBBoletos.EmptyDataSet;
  TBSelecao.EmptyDataSet;
  TBSelecaoClientes.EmptyDataSet;
  TBSelecaoContas.EmptyDataSet;

  TBBoletos.DisableControls;
  QYBoletos.DisableControls;
  QYBoletos.First;
  while not QYBoletos.Eof do
  begin
    TBBoletos.Insert;
    TBBoletosBOL_CODIGO.Value:=QYBoletosBOL_CODIGO.Value;
    TBBoletosBOL_CLIENTE.Value:=QYBoletosBOL_CLIENTE.Value;
    TBBoletosBOL_CONTA.Value:=QYBoletosBOL_CONTA.Value;
    TBBoletosBOL_DTVENCIMENTO.Value:=QYBoletosBOL_DTVENCIMENTO.Value;
    TBBoletosBOL_NOME.Value:=QYBoletosBOL_NOME.Value;
    TBBoletosBOL_STATUS.Value:=QYBoletosBOL_STATUS.Value;
    TBBoletosBOL_VALORTOTAL.Value:=QYBoletosBOL_VALORTOTAL.Value;
    TBBoletos.Post;
    QYBoletos.Next;
  end;
  QYBoletos.EnableControls;
  QYBoletos.Close;

  TBBoletos.EnableControls;
end;

procedure TFormBoletosSelecionar.PngBitBtn8Click(Sender: TObject);
var Boletos: String;
  Cliente: Integer;
begin
  AbortIf(TBSelecao.IsEmpty,'Nenhum boleto selecionado.');
  AbortIf(TBSelecaoContas.RecordCount>1,'Não é possível enviar boletos de várias contas simultaneamente.');

  Memo1.Lines.Clear;
  Panel1.Top:=DBGrid1.Top;
  Panel1.Left:=DBGrid1.Left;
  Panel1.Width:=DBGrid1.Width;
  Panel1.Height:=DBGrid1.Height;
  Panel1.Visible:=True;

  TBSelecao.First;
  Cliente:=TBSelecaoBOL_CLIENTE.Value;
  Boletos:=''; //IntToStr(TBSelecaoBOL_CODIGO.Value);
  while not TBSelecao.Eof do
  begin
    if Cliente<>TBSelecaoBOL_CLIENTE.Value then
    begin
      //cliente mudou, gera email.
      Delete(Boletos,1,1); //retira primeira virgula.
      try
        try
          Memo1.Lines.Add('Enviando Email com o(s) boleto(s) '+Boletos);
          if GerarEmail(Cliente,Boletos) then
          begin
            Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
            FormEmailsEnviar.EnviarEmailAutomaticoACBrBoletos(Memo1);
            FormEmailsEnviar.Free;
            FormEmailsEnviar:=nil;
          end;
        except on Exception do
          //nothing...
        end;
      finally
        FormEmailsEnviar.Free;
        FormEmailsEnviar:=nil;
      end;

      Cliente:=TBSelecaoBOL_CLIENTE.Value;
      Boletos:='';
    end;
    Boletos:=Boletos+','+IntToStr(TBSelecaoBOL_CODIGO.Value);
    TBSelecao.Next;
  end;

  //ultimos boletos.
  Delete(Boletos,1,1); //retira primeira virgula.
  try
    try
      Memo1.Lines.Add('Enviando Email com o(s) boleto(s) '+Boletos);
      if GerarEmail(Cliente,Boletos) then
      begin
        Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
        FormEmailsEnviar.EnviarEmailAutomaticoACBrBoletos(Memo1);
        FormEmailsEnviar.Free;
        FormEmailsEnviar:=nil;
      end;
    except on Exception do
      //nothing...
    end;
  finally
    FormEmailsEnviar.Free;
    FormEmailsEnviar:=nil;
  end;
  Memo1.Lines.Add('Processo terminado...');
end;

procedure TFormBoletosSelecionar.PngBitBtn9Click(Sender: TObject);
var Boletos: String;
  Cliente: Integer;
begin
  AbortIf(TBSelecao.IsEmpty,'Nenhum boleto selecionado.');
  AbortIf(TBSelecaoContas.RecordCount>1,'Não é possível enviar boletos de várias contas simultaneamente.');

  Memo1.Lines.Clear;
  Panel1.Top:=DBGrid1.Top;
  Panel1.Left:=DBGrid1.Left;
  Panel1.Width:=DBGrid1.Width;
  Panel1.Height:=DBGrid1.Height;
  Panel1.Visible:=True;

  TBSelecao.First;
  Cliente:=TBSelecaoBOL_CLIENTE.Value;
  Boletos:='';
  while not TBSelecao.Eof do
  begin
    if Cliente<>TBSelecaoBOL_CLIENTE.Value then
    begin
      //cliente mudou, gera mensagem zap.
      Delete(Boletos,1,1); //retira primeira virgula.
      try
        Memo1.Lines.Add('Enviando WhatsApp com o(s) boleto(s) '+Boletos);
        if GerarZap(Cliente,Boletos) then
      except on E:Exception do
        Memo1.Lines.Add(E.Message);
      end;

      Cliente:=TBSelecaoBOL_CLIENTE.Value;
      Boletos:='';
    end;
    Boletos:=Boletos+','+IntToStr(TBSelecaoBOL_CODIGO.Value);
    TBSelecao.Next;
  end;

  //ultimos boletos.
  Delete(Boletos,1,1); //retira primeira virgula.
  try
    Memo1.Lines.Add('Enviando Email com o(s) boleto(s) '+Boletos);
    if GerarZap(Cliente,Boletos) then
  except on E:Exception do
    Memo1.Lines.Add(E.Message);
  end;
  Memo1.Lines.Add('Processo terminado...');
end;

procedure TFormBoletosSelecionar.PngSpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit5,Edit6);
end;

procedure TFormBoletosSelecionar.PngSpeedButton2Click(Sender: TObject);
begin
  Panel1.Visible:=False;
end;

procedure TFormBoletosSelecionar.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
