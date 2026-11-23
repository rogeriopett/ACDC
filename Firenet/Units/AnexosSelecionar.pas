unit AnexosSelecionar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.FileCtrl;

type
  TFormAnexosSelecionar = class(TForm)
    FileListBox1: TFileListBox;
    Label1: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GerarEmail;
  public
    { Public declarations }
    Assunto: Integer;
  end;

var
  FormAnexosSelecionar: TFormAnexosSelecionar;

implementation
uses DataMod, DataMod2, EmailsEnviar, System.Zip;
{$R *.dfm}

procedure TFormAnexosSelecionar.BitBtn1Click(Sender: TObject);
begin
  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
  Close;
end;

procedure TFormAnexosSelecionar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAnexosSelecionar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAnexosSelecionar.GerarEmail;
var MM: TMemo;
  I: Integer;
  S: TFileListBox;
  Zip: TZipFile;
begin
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=Assunto;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False;
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|CLI_NOME|',DM.TBClientesCLI_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|PRO_CODIGO|',DM.TBProdutosPRO_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|PRO_NOME|',DM.TBProdutosPRO_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);
  DM2.TBEmails.Insert;

  if FileListBox1.SelCount > 1 then
  begin

    Zip:=TZipFile.Create;
    try
      Zip.Open(ExtractFilePath(Application.ExeName)+'Print\Anexos.zip', zmWrite);
      for I := 0 to FileListBox1.Count-1 do
      begin
        if Filelistbox1.Selected[I] then
        begin
          //Zip.Add('C:\MeuArquivo.txt', 'ArquivoDentroZip.txt');
          Zip.Add(FileListBox1.Directory+'\'+FileListBox1.Items[I], FileListBox1.Items[I]);
        end;
      end;
      Zip.Close;
    finally
      Zip.Free;
    end;


    {ZipForge1.FileName:=ExtractFilePath(Application.ExeName)+'Print\Anexos.zip';
    ZipForge1.Options.StorePath:=spNoPath;
    ZipForge1.OpenArchive(fmCreate);
    for I := 0 to FileListBox1.Count-1 do
    begin
      if Filelistbox1.Selected[I] then
      begin
        ZipForge1.AddFiles(FileListBox1.Directory+'\'+FileListBox1.Items[I]);
      end;
    end;
    ZipForge1.CloseArchive;}

    DM2.TBEmailsEMA_ANEXO.Value:=ExtractFilePath(Application.ExeName)+'Print\Anexos.zip';
  end else
  DM2.TBEmailsEMA_ANEXO.Value:=FileListBox1.FileName;

  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
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
end;

end.
