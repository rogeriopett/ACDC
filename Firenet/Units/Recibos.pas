unit Recibos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Menus, System.UITypes,
  Buttons, DBSBtn, PngSpeedButton, ImgList, PngImageList, System.ImageList;

type
  TFormRecibos = class(TForm)
    Image1: TImage;
    PrintDialog1: TPrintDialog;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    ImprimirRecibo1Button: TPngSpeedButton;
    LocalizarCedente1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    LocalizarCedente1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    LocalizarSacado1: TMenuItem;
    LocalizarSacado1Button: TPngSpeedButton;
    InverterCedenteXSacado1Button: TPngSpeedButton;
    InverterCedentexSacado1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    Localizar1Button: TPngSpeedButton;
    ImprimirRecibo1: TMenuItem;
    N1: TMenuItem;
    RecibosEmitidosNoPeriodo1: TMenuItem;
    PngImageList1: TPngImageList;
    EnviarPorEmail1Button: TPngSpeedButton;
    EnviarPorEmail1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure LocalizarCedente1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure LocalizarSacado1Click(Sender: TObject);
    procedure InverterCedentexSacado1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure ImprimirRecibo1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RecibosEmitidosNoPeriodo1Click(Sender: TObject);
    procedure EnviarPorEmail1Click(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
  private
    { Private declarations }
    procedure GerarEmail;
    procedure GerarRecibo(ArquivoPDF: String);
  public
    { Public declarations }
  end;

var
  FormRecibos: TFormRecibos;
  ValorEdit3: String;

implementation
uses DataMod, DataMod2, Main, Funcoes1, ClientesLoc, DB, RecibosRel, RecibosLoc, RecibosFast, EmailsEnviar;
{$R *.dfm}

procedure TFormRecibos.GerarEmail;
var MM: TMemo;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) CLI_CODIGO, CLI_EMAIL, CLI_EMAIL2, CLI_NOME from CLIENTES where CLI_NOME=:nome or CLI_FANTASIA=:nome');
  DM.QYAux.ParamByName('nome').AsString:=DM2.TBRecibosRCB_SNOME.Value;
  DM.QYAux.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_RECIBOSEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value; //eliminar esse campo: DM.TBParametrosPAR_NFSEEMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False;
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|RCB_CODIGO|',IntToStr(DM2.TBRecibosRCB_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|RCB_CNOME|',DM2.TBRecibosRCB_CNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|RCB_DATA|',DateToStr(DM2.TBRecibosRCB_DATA.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|RCB_SNOME|',DM2.TBRecibosRCB_SNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|RCB_PROVENIENTE|',DM2.TBRecibosRCB_PROVENIENTE.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|RCB_VALOR|',Format('%m',[DM2.TBRecibosRCB_VALOR.AsExtended]),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarRecibo(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\'+AlignText(IntToStr(DM2.TBRecibosRCB_CODIGO.Value),'0',8,taRight)+'.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\'+AlignText(IntToStr(DM2.TBRecibosRCB_CODIGO.Value),'0',8,taRight)+'.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.QYAux.FieldByName('CLI_CODIGO').AsInteger;
  //DM2.TBEmailsEMA_COPIAOCULTA.Value:=
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.QYAux.FieldByName('CLI_EMAIL').AsString;
  if Trim(DM.QYAux.FieldByName('CLI_EMAIL2').AsString)<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.QYAux.FieldByName('CLI_EMAIL2').AsString);
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.QYAux.FieldByName('CLI_NOME').AsString;
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
  DM2.TBEmailsVEN_NOME.Value:=DM.TBNfeVEN_NOME.Value;

  DM.QYAux.Close;
end;

procedure TFormRecibos.GerarRecibo(ArquivoPDF: String);
begin
  Application.CreateForm(TFormRecibosFast, FormRecibosFast);
  FormRecibosFast.QY01.Close;
  FormRecibosFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBRecibosRCB_CODIGO.Value;
  FormRecibosFast.QY01.Open;
  FormRecibosFast.frxReport1.Variables['TITULO']:=QuotedStr('Recibo');
  FormRecibosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormRecibosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormRecibosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormRecibosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  if ArquivoPDF<>'' then
  begin
    FormRecibosFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormRecibosFast.frxPDFExport1.ShowDialog:=False;
    FormRecibosFast.frxReport1.PrintOptions.ShowDialog:=False;
    FormRecibosFast.frxReport1.PrepareReport;
    FormRecibosFast.frxReport1.Export(FormRecibosFast.frxPDFExport1);
  end else
  FormRecibosFast.frxReport1.ShowReport;
  FormRecibosFast.Free;
  FormRecibosFast:=nil;
end;

{function ExtensoMil(Numero : String) : String;
const
  Unidades : Array[1..19] of String = ('um','dois','tres','quatro',
    'cinco','seis','sete','oito','nove','dez','onze','doze','treze',
    'quatorze','quinze','dezesseis','dezessete','dezoito','dezenove');
  Dezenas : Array[2..9] of String = ('vinte','trinta','quarenta',
    'cinquenta','sessenta','setenta','oitenta','noventa');
  Centenas : Array[1..9] of String = ('cento','duzentos','trezentos',
    'quatrocentos','quinhentos','seiscentos','setecentos','oitocentos',
    'novecentos');
begin
  Result := '';
  if Numero[1] <> '0' then
    Result := Centenas[Ord(Numero[1])-Ord('0')];
  if StrToInt(Copy(Numero,2,2)) > 0 then begin
    if Result <> '' then
      Result := Result + ' e ';
    if StrToInt(Copy(Numero,2,2)) <= 19 then
      Result := Result + Unidades[StrToInt(Copy(Numero,2,2))]
    else begin
      Result := Result + Dezenas[Ord(Numero[2])-Ord('0')];
      if Numero[3] <> '0' then
        Result := Result + ' e ' + Unidades[Ord(Numero[3])-Ord('0')];
    end;
  end;
end;

function Extenso(Numero : String) : String;
const
  UnidSing : Array[0..5] of String = ('centavo','real','mil','milhao','bilhao','trilhao');
  UnidPlur : Array[0..5] of String = ('centavos','reais','mil','milhoes','bilhoes','trilhoes');
var
  Lista : TStringList;
  NumStr : String;
  i : Integer;
  JaLigou : Boolean;
  Texto : String;
  PosDec : Integer;
begin
  Lista := TStringList.Create;
  PosDec := Pos(DecimalSeparator,Numero);
  if PosDec > 0 then begin
    Lista.Add('0'+Copy(Numero,PosDec+1,2));
    NumStr := Copy(Numero,1,PosDec-1);
  end
  else begin
    Lista.Add('000');
    NumStr := Numero;
  end;
  while NumStr <> '' do
    if Length(NumStr) > 3 then begin
      Lista.Add(Copy(NumStr,Length(NumStr)-2,3));
      NumStr := Copy(NumStr,1,Length(NumStr)-3);
    end
    else begin
      while Length(NumStr) < 3 do
        NumStr := '0'+NumStr;
      Lista.Add(NumStr);
      NumStr := '';
    end;
  Result := '';
  JaLigou := False;
  for i := 0 to Lista.Count - 1 do begin
    if Lista[i] <> '000' then begin
      Texto := ExtensoMil(Lista[i]);
      if (Lista[i] <> '001') or ((i = 1) and (Lista.Count > 2)) then
        Texto := Texto + ' ' + UnidPlur[i]
      else
        Texto := Texto + ' ' + UnidSing[i];
      if (i = 2) and (Lista[1] = '000') then
        Texto := Texto + ' reais'
      else if (i > 2) and (Lista[2] = '000') and (Lista[1] = '000') then
        Texto := Texto + ' de reais';
      if Result <> '' then begin
        if JaLigou then
          Result := Texto + ', ' + Result
        else begin
          Result := Texto + ' e ' + Result;
          JaLigou := True;
        end;
      end
      else
        Result := Texto;
    end;
  end;
  Lista.Free;
end;}

procedure TFormRecibos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormRecibos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormRecibos.EnviarPorEmail1Click(Sender: TObject);
begin
  AbortIf(DM2.TBRecibos.IsEmpty,'Nenhum recibo selecionado.');

  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormRecibos.DBEdit11Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormRecibos.DBEdit15Exit(Sender: TObject);
begin
  if DM2.TBRecibosRCB_VALOR.Value<>0 then
  begin
    DM2.TBRecibos.Edit;
    DM2.TBRecibosRCB_VALOREXTENSO.Value:=Extenso(DM2.TBRecibosRCB_VALOR.AsExtended);
  end;
end;

procedure TFormRecibos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRecibos.LocalizarCedente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='N' then
    DM2.TBRecibosRCB_CNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value else
    DM2.TBRecibosRCB_CNOME.Value:=FormClientesLoc.QYClientesCLI_FANTASIA.Value;

    DM2.TBRecibosRCB_CENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBRecibosRCB_CNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBRecibosRCB_CCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBRecibosRCB_CBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBRecibosRCB_CCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    if FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value='J' then
    DM2.TBRecibosRCB_CCNPJCPF.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value else
    DM2.TBRecibosRCB_CCNPJCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;    
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormRecibos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormRecibosRel, FormRecibosRel);
  FormRecibosRel.ShowModal;
  FormRecibosRel.Free;
  FormRecibosRel:=nil;
end;

procedure TFormRecibos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormRecibos.LocalizarSacado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='N' then
    DM2.TBRecibosRCB_SNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value else
    DM2.TBRecibosRCB_SNOME.Value:=FormClientesLoc.QYClientesCLI_FANTASIA.Value;

    DM2.TBRecibosRCB_SENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBRecibosRCB_SNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBRecibosRCB_SCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBRecibosRCB_SBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBRecibosRCB_SCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    if FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value='J' then
    DM2.TBRecibosRCB_SCNPJCPF.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value else
    DM2.TBRecibosRCB_SCNPJCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;    
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormRecibos.InverterCedentexSacado1Click(Sender: TObject);
var Nome, Endereco, Numero, Bairro, Cidade, CEP, CNPJCPF, Fone: String;
begin
  AbortIf(DM2.TBRecibos.IsEmpty,'Nenhum recibo selecionado.');

  Nome:=DM2.TBRecibosRCB_CNOME.Value;
  Endereco:=DM2.TBRecibosRCB_CENDERECO.Value;
  Numero:=DM2.TBRecibosRCB_CNUMERO.Value;
  Bairro:=DM2.TBRecibosRCB_CBAIRRO.Value;
  Cidade:=DM2.TBRecibosRCB_CCIDADE.Value;
  CEP:=DM2.TBRecibosRCB_CCEP.Value;
  CNPJCPF:=DM2.TBRecibosRCB_CCNPJCPF.Value;
  Fone:=DM2.TBRecibosRCB_CFONE1.Value;

  DM2.TBRecibosRCB_CNOME.Value:=DM2.TBRecibosRCB_SNOME.Value;
  DM2.TBRecibosRCB_CENDERECO.Value:=DM2.TBRecibosRCB_SENDERECO.Value;
  DM2.TBRecibosRCB_CNUMERO.Value:=DM2.TBRecibosRCB_SNUMERO.Value;
  DM2.TBRecibosRCB_CBAIRRO.Value:=DM2.TBRecibosRCB_SBAIRRO.Value;
  DM2.TBRecibosRCB_CCIDADE.Value:=DM2.TBRecibosRCB_SCIDADE.Value;
  DM2.TBRecibosRCB_CCEP.Value:=DM2.TBRecibosRCB_SCEP.Value;
  DM2.TBRecibosRCB_CCNPJCPF.Value:=DM2.TBRecibosRCB_SCNPJCPF.Value;
  DM2.TBRecibosRCB_CFONE1.Value:=DM2.TBRecibosRCB_SFONE1.Value;

  DM2.TBRecibosRCB_SNOME.Value:=Nome;
  DM2.TBRecibosRCB_SENDERECO.Value:=Endereco;
  DM2.TBRecibosRCB_SNUMERO.Value:=Numero;
  DM2.TBRecibosRCB_SBAIRRO.Value:=Bairro;
  DM2.TBRecibosRCB_SCIDADE.Value:=Cidade;
  DM2.TBRecibosRCB_SCEP.Value:=CEP;
  DM2.TBRecibosRCB_SCNPJCPF.Value:=CNPJCPF;
  DM2.TBRecibosRCB_SFONE1.Value:=Fone;
end;

procedure TFormRecibos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRecibosLoc, FormRecibosLoc);
  FormRecibosLoc.ShowModal;
  if RecibosLoc.Procurar then
  begin
    DM2.TBRecibos.Close;
    DM2.TBRecibos.ParamByName('codigo').AsInteger:=FormRecibosLoc.QYRecibosRCB_CODIGO.Value;
    DM2.TBRecibos.Open;
  end;
  FormRecibosLoc.Free;
  FormRecibosLoc:=nil;
end;

procedure TFormRecibos.ImprimirRecibo1Click(Sender: TObject);
var F : TextFile;
    I : Integer;
begin
  if DM.ReciboEstilo='DOS' then //estilo DOS.
  begin
    if MessageDlg('Imprimir Recibo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Recibo.txt');
      Rewrite(F);
      for I := 1 to DM.TBParametrosPAR_LINHASINICIORECIBO.Value do
      begin //linhas iniciais
{01}    WriteLn(F,'');
      end; //#27#50 espaco entre linhas de  1/6", #27#48 espaco de 1/8", #27#49 espaco de 7/72".
{02}  WriteLn(F,#18#27#120#0+'================================================================================');
{03}  WriteLn(F,DM.TBEmpresaEMP_NOME.Value);
{04}  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
{05}  WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value);
{06}  WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
{07}  WriteLn(F,'================================================================================');
{08}  WriteLn(F,#14+'     ...::: R  E  C  I  B  O :::...');
{09}  WriteLn(F,'--------------------------------------------------------------------------------');
{10}  WriteLn(F,#27#71+'Recebi(emos) de : '+#27#72+DM2.TBRecibosRCB_SNOME.Value);
{11}  WriteLn(F,#27#71+'Endereco........: '+#27#72+DM2.TBRecibosRCB_SENDERECO.Value+', '+DM2.TBRecibosRCB_SNUMERO.Value);
{12}  WriteLn(F,#27#71+'Bairro..........: '+#27#72+DM2.TBRecibosRCB_SBAIRRO.Value);
{13}  WriteLn(F,#27#71+'Cidade..........: '+#27#72+DM2.TBRecibosRCB_SCIDADE.Value);
{14}  WriteLn(F,#27#71+'CEP.............: '+#27#72+DM2.TBRecibosRCB_SCEP.Value);
{15}  WriteLn(F,#27#71+'CPF/CNPJ........: '+#27#72+DM2.TBRecibosRCB_SCNPJCPF.Value);
{16}  WriteLn(F,'');
{17}  WriteLn(F,'');
{18}  WriteLn(F,#27#71+'A importancia de: '+#27#72+Format('%m',[DM2.TBRecibosRCB_VALOR.AsExtended]));
{19}  WriteLn(F,DM2.TBRecibosRCB_VALOREXTENSO.Value);
{20}  WriteLn(F,'');
{21}  WriteLn(F,'');
{22}  WriteLn(F,#27#71+'Proveniente de..: '+#27#72+DM2.TBRecibosRCB_PROVENIENTE.Value);
{23}  WriteLn(F,#27#71+'Data............: '+#27#72+FormatDateTime('dddddd',DM2.TBRecibosRCB_DATA.Value));
{24}  WriteLn(F,'--------------------------------------------------------------------------------');
{25}  WriteLn(F,'');
{26}  WriteLn(F,'');
{27}  WriteLn(F,'');
{28}  WriteLn(F,'________________________________');
{29}  WriteLn(F,'          Assinatura            ');
{30}  WriteLn(F,'================================================================================');
      for I := 1 to DM.TBParametrosPAR_LINHASFINALRECIBO.Value do
      begin
{31}    WriteLn(F,'');
      end;
      CloseFile(F);
      if (DM.DebugPrint='NORMAL') and (DM.Commandcom='Command.com') then
        WinExec(PAnsiChar(AnsiString('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+DM.ReciboPorta)),sw_Hide) else
      if (DM.DebugPrint='NORMAL') and (DM.Commandcom='Cmd.exe') then
        WinExec(PAnsiChar(AnsiString('CMD.EXE /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+DM.ReciboPorta)),sw_Hide) else
      if (DM.DebugPrint='DEBUG') and (DM.Commandcom='Command.com') then
        WinExec(PAnsiChar(AnsiString('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+DM.ReciboPorta)),sw_Normal) else
      if (DM.DebugPrint='DEBUG') and (DM.Commandcom='Cmd.exe') then
        WinExec(PAnsiChar(AnsiString('CMD.EXE /K '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+DM.ReciboPorta)),sw_Normal);
    end;
  end;
  if DM.ReciboEstilo='WINDOWS' then //estilo windows.
  begin
    AbortIf(DM2.TBRecibos.IsEmpty,'Nenhum recibo selecionado.');

    Application.CreateForm(TFormRecibosFast, FormRecibosFast);
    FormRecibosFast.QY01.Close;
    FormRecibosFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBRecibosRCB_CODIGO.Value;
    FormRecibosFast.QY01.Open;
    FormRecibosFast.frxReport1.Variables['TITULO']:=QuotedStr('Recibo');
    FormRecibosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormRecibosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormRecibosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
    FormRecibosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
    FormRecibosFast.frxReport1.ShowReport;
    FormRecibosFast.Free;
    FormRecibosFast:=nil;
    {Application.CreateForm(TFormRecibosQ01, FormRecibosQ01);
    FormRecibosQ01.QuickRep1.ReportTitle:='Firenet - Recibo';
    FormRecibosQ01.QuickRep1.PreviewModal;
    FormRecibosQ01.Free;
    FormRecibosQ01:=nil;}
  end;
end;

procedure TFormRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBRecibos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormRecibos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormRecibos);
end;

procedure TFormRecibos.RecibosEmitidosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRecibosRel, FormRecibosRel);
  FormRecibosRel.ComboBox4.Enabled:=False;
  FormRecibosRel.ComboBox4.ItemIndex:=0;
  FormRecibosRel.ComboBox4Change(Self);
  FormRecibosRel.ShowModal;
  FormRecibosRel.Free;
  FormRecibosRel:=nil;
end;

initialization
  RegisterClass(TFormRecibos);

finalization
  UnRegisterClass(TFormRecibos);

end.
