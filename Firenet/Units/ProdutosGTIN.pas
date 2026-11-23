unit ProdutosGTIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, ACBrBase, ACBrDFe, ACBrGTIN,

  //ACBrUtil.Base, ACBrUtil.DateTime, ACBrUtil.FilesIO,
  ACBrDFeConfiguracoes, ACBrDFeSSL, ACBrDFeOpenSSL, ACBrDFeUtil,
  ACBrXmlBase, ACBrGTINConversao, pcnConversao;

type
  TFormProdutosGTIN = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    ACBrGTIN1: TACBrGTIN;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    PngBitBtn2: TPngBitBtn;
    Memo1: TMemo;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarComponente;
    procedure ConsultarGTIN(Codigo: String);
  public
    { Public declarations }
  end;

var
  FormProdutosGTIN: TFormProdutosGTIN;

implementation
uses DataMod, Funcoes1, Produtos, DB;

{$R *.dfm}

procedure TFormProdutosGTIN.ConfigurarComponente;
var
  PathMensal: string;
  Ok: Boolean;
begin
  ACBrGTIN1.Configuracoes.Certificados.ArquivoPFX :=DM.TBParametrosPAR_ARQUIVOCERTIFICADO.Value;
  ACBrGTIN1.Configuracoes.Certificados.Senha      :=DM.TBParametrosPAR_SENHACERTIFICADO.Value;
  if DM.TBParametrosPAR_LIBSSL.Value<>'libOpenSSL' then  
  ACBrGTIN1.Configuracoes.Certificados.NumeroSerie:=DM.TBParametrosPAR_SERIALCERTIFICADO.Value;

  ACBrGTIN1.SSL.DescarregarCertificado;

  if DM.TBParametrosPAR_LIBSSL.Value='libNone'              then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(0) else
  if DM.TBParametrosPAR_LIBSSL.Value='libOpenSSL'           then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(1) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCapicom'           then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(2) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCapicomDelphiSoap' then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(3) else
  if DM.TBParametrosPAR_LIBSSL.Value='libWinCrypt'          then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(4) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCustom'            then ACBrGTIN1.Configuracoes.Geral.SSLLib:=TSSLLib(5);

  if DM.TBParametrosPAR_LIBCRYPT.Value='cryNone'            then ACBrGTIN1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(0) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryOpenSSL'         then ACBrGTIN1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(1) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryCapicom'         then ACBrGTIN1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(2) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryWinCrypt'        then ACBrGTIN1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(3);

  if DM.TBParametrosPAR_LIBHTTP.Value='httpNone'            then ACBrGTIN1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(0) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinINet'         then ACBrGTIN1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(1) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinHttp'         then ACBrGTIN1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(2) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpOpenSSL'         then ACBrGTIN1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(3) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpIndy'            then ACBrGTIN1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(4);

  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsNone'           then ACBrGTIN1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(0) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsXmlSec'         then ACBrGTIN1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(1) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXml'          then ACBrGTIN1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(2) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXmlCapicom'   then ACBrGTIN1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(3) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsLiXml2'         then ACBrGTIN1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(4);


  ACBrGTIN1.Configuracoes.Geral.Salvar:=False;
  ACBrGTIN1.Configuracoes.Geral.ExibirErroSchema:=False;
  //ACBrGTIN1.Configuracoes.Geral.FormatoAlerta:='';
  ACBrGTIN1.Configuracoes.Geral.VersaoDF:=ve100;

  ACBrGTIN1.Configuracoes.WebServices.UF:=ComboBox1.Text;
  ACBrGTIN1.Configuracoes.WebServices.Ambiente:=taProducao; //StrToTpAmb(OK,IntToStr(0)); //0 producao, 1 homologacao.
  ACBrGTIN1.Configuracoes.WebServices.Visualizar:=False;
  ACBrGTIN1.Configuracoes.WebServices.Salvar:=False;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrGTIN1.Configuracoes.WebServices.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrGTIN1.Configuracoes.WebServices.ProxyPort:=DM.TBParametrosPAR_PROXYPORTA.Value.ToString;
    ACBrGTIN1.Configuracoes.WebServices.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrGTIN1.Configuracoes.WebServices.ProxyUser:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;

  //ACBrGTIN1.SSL.SSLType:=TSSLType(cbSSLType.ItemIndex);

//  with ACBrGTIN1.Configuracoes.Arquivos do
//  begin
//    Salvar          :=cbxSalvarArqs.Checked;
//    AdicionarLiteral:=cbxAdicionaLiteral.Checked;
//    PathSchemas     :=edtPathSchemas.Text;
//    PathGTIN        :=edtPathGTIN.Text;
//    PathMensal      :=GetPathGTIN(0);
//    PathSalvar      :=PathMensal;
//  end;
end;


procedure TFormProdutosGTIN.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosGTIN.FormCreate(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Memo1.Lines.Clear;
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(DM.TBEmpresaEMP_ESTADO.AsString);
  ConfigurarComponente;
end;

procedure TFormProdutosGTIN.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosGTIN.FormShow(Sender: TObject);
begin
  PngBitBtn2.Click;
end;

procedure TFormProdutosGTIN.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Trim(Edit4.Text)='','CEST não informado.');

  if MessageDlg('Tem certeza que deseja atualizar o cadastro de produtos com as informações consultadas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if (FormProdutos.EditarRegistro1.Enabled) or (DM.TBProdutos.State in [dsEdit, dsInsert]) then //se está habilitado é pq tem acesso.
    begin
      DM.TBProdutos.Edit;
      //DM.TBProdutosPRO_NOME.Value:=Edit2.Text;
      //DM.TBProdutosPRO_CLASSFISCAL.Value:=Edit3.Text;
      DM.TBProdutosPRO_CEST.Value:=Edit4.Text;
      //DM.TBProdutos.Post;
      Close;
    end else
    MessageDlg('Sem permissão para alterar produto.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormProdutosGTIN.PngBitBtn2Click(Sender: TObject);
begin
  if Edit1.Text<>'' then
  ConsultarGTIN(Edit1.Text);
end;

procedure TFormProdutosGTIN.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(Trim(Edit3.Text)='','NCM não informado.');

  if MessageDlg('Tem certeza que deseja atualizar o cadastro de produtos com as informações consultadas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if (FormProdutos.EditarRegistro1.Enabled) or (DM.TBProdutos.State in [dsEdit, dsInsert]) then //se está habilitado é pq tem acesso.
    begin
      DM.TBProdutos.Edit;
      //DM.TBProdutosPRO_NOME.Value:=Edit2.Text;
      DM.TBProdutosPRO_CLASSFISCAL.Value:=Edit3.Text;
      //DM.TBProdutosPRO_CEST.Value:=Edit4.Text;
      //DM.TBProdutos.Post;
      Close;
    end else
    MessageDlg('Sem permissão para alterar produto.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormProdutosGTIN.PngBitBtn4Click(Sender: TObject);
begin
  AbortIf(Trim(Edit2.Text)='','Descrição não informada.');

  if MessageDlg('Tem certeza que deseja atualizar a descrição do produto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if (FormProdutos.EditarRegistro1.Enabled) or (DM.TBProdutos.State in [dsEdit, dsInsert]) then //se está habilitado é pq tem acesso.
    begin
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_NOME.Value:=Edit2.Text;
//      DM.TBProdutosPRO_CLASSFISCAL.Value:=Edit3.Text;
//      DM.TBProdutosPRO_CEST.Value:=Edit4.Text;
      Close;
    end else
    MessageDlg('Sem permissão para alterar produto.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormProdutosGTIN.ConsultarGTIN(Codigo: String);
begin
  ACBrGTIN1.Consultar(Codigo);
  Edit2.Text:=UpperCase(RemoveAcentos(ACBrGTIN1.WebServices.Consulta.xProd));
  Edit3.Text:=ACBrGTIN1.WebServices.Consulta.NCM;
  Edit4.Text:=ACBrGTIN1.WebServices.Consulta.CEST;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('GTIN Consultado: '+Codigo);
  Memo1.Lines.Add('--- Retorno ---');
  Memo1.Lines.Add('Retorno..: '+DateTimeToStr(ACBrGTIN1.WebServices.Consulta.dhResp));
  Memo1.Lines.Add('Status...: '+IntToStr(ACBrGTIN1.WebServices.Consulta.cStat));
  Memo1.Lines.Add('Motivo...: '+ACBrGTIN1.WebServices.Consulta.xMotivo);
  Memo1.Lines.Add('Tipo GTIN: '+IntToStr(ACBrGTIN1.WebServices.Consulta.tpGTIN));
  Memo1.Lines.Add('Produto..: '+ACBrGTIN1.WebServices.Consulta.xProd);
  Memo1.Lines.Add('NCM......: '+ACBrGTIN1.WebServices.Consulta.NCM);
  Memo1.Lines.Add('CEST.....: '+ACBrGTIN1.WebServices.Consulta.CEST);

end;

end.
