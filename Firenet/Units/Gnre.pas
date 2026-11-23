unit Gnre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.DBCtrls, Vcl.Buttons, System.UITypes,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Vcl.Mask, ACBrBase, ACBrDFe, ACBrGNRE2,
  Data.DB, Datasnap.DBClient;

type
  TFormGnre = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    ImprimirGNRE1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    EnviarGNRE1Button: TPngSpeedButton;
    Bevel9: TBevel;
    ConsultarGNRE1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    ImprimirGNRE1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TPngSpeedButton;
    DBText13: TDBText;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    EnviarGNRE1: TMenuItem;
    ConsultarGNRE1: TMenuItem;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    Label21: TLabel;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    DBComboBox1: TDBComboBox;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit19: TDBEdit;
    ACBrGNRE1: TACBrGNRE;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label27: TLabel;
    DBComboBox3: TDBComboBox;
    Memo1: TMemo;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    TBCA: TClientDataSet;
    TBCAUFRECEITA: TStringField;
    TBCACODIGO: TStringField;
    TBCATIPO: TStringField;
    TBCAOBRIGATORIO: TStringField;
    TBCADESCRICAO: TStringField;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    procedure ImprimirGNRE1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure EnviarGNRE1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure ConsultarGNRE1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ACBrGNRE1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrGNRE1StatusChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CriarTabelaCamposAdicionais;
  public
    { Public declarations }
  end;

var
  FormGnre: TFormGnre;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, Main, GnreFast, NfeLoc, EnderecosEstadosLoc, GnreLoc, pcnConversao, pgnreConversao,
  EnderecosCidadesLoc;
{$R *.dfm}

procedure TFormGnre.ACBrGNRE1GerarLog(const ALogLine: string; var Tratado: Boolean);
begin
  Tratado:=True;
  Memo1.Lines.Add(ALogLine);
end;

procedure TFormGnre.ACBrGNRE1StatusChange(Sender: TObject);
begin
  case ACBrGNRE1.Status of
    //stGNREIdle: MostrarStatus('');
    stGNRERecepcao: Memo1.Lines.Add('Enviando dados do GNRE...');
    stGNRERetRecepcao: Memo1.Lines.Add('Recebendo dados do GNRE...');
    stGNREConsulta: Memo1.Lines.Add('Consultando Lote GNRE...');
  end;
  Application.ProcessMessages;
end;

procedure TFormGnre.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormGnre.ConsultarGNRE1Click(Sender: TObject);
begin
  AbortIf(DM2.TBGnre.IsEmpty,'Nenhuma GNRE selecionada.');
  AbortIf(DM2.TBGnreGNR_RECIBO.Value='','Número de recibo inexistente.');
  AbortIf(DM2.TBGnreGNR_STATUS.Value='F','Esta GNRE já foi processada.');

  ACBrGNRE1.WebServices.Retorno.numeroRecibo:=DM2.tbgnregnr_RECIBO.Value;
  ACBrGNRE1.WebServices.Retorno.Executar;
end;

procedure TFormGnre.CriarTabelaCamposAdicionais;
begin
  //tabela criada conforme os dados obtidos nesse link: http://www.gnre.pe.gov.br/gnre/portal/consultarTabelas.jsp
  //campos adicionais. - foi selecionado apenas os obrigatórios.
  TBCA.EmptyDataSet;
  TBCA.DisableControls;
  TBCA.Insert; TBCAUFRECEITA.Value:='AC100099'; TBCACODIGO.Value:='076'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='AC100102'; TBCACODIGO.Value:='076'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='AL600016'; TBCACODIGO.Value:='065'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='INFORMACAO COMPLEMENTAR'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='AM100099'; TBCACODIGO.Value:='012'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='AM100102'; TBCACODIGO.Value:='012'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='AM100030'; TBCACODIGO.Value:='095'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='AP100102'; TBCACODIGO.Value:='047'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='BA100102'; TBCACODIGO.Value:='086'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='BA100129'; TBCACODIGO.Value:='086'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='MA100102'; TBCACODIGO.Value:='094'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MA100129'; TBCACODIGO.Value:='094'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='MS100099'; TBCACODIGO.Value:='027'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MS100030'; TBCACODIGO.Value:='079'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MS100102'; TBCACODIGO.Value:='088'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MS100129'; TBCACODIGO.Value:='088'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='MT100199'; TBCACODIGO.Value:='017'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='N'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MT100102'; TBCACODIGO.Value:='017'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='MT100129'; TBCACODIGO.Value:='017'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='PB100099'; TBCACODIGO.Value:='030'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='PB100129'; TBCACODIGO.Value:='030'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='PB100102'; TBCACODIGO.Value:='099'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='PB100030'; TBCACODIGO.Value:='098'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='PE100099'; TBCACODIGO.Value:='009'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='PE100102'; TBCACODIGO.Value:='092'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='PR100102'; TBCACODIGO.Value:='087'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='RO100099'; TBCACODIGO.Value:='083'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='RO100102'; TBCACODIGO.Value:='083'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='RR100099'; TBCACODIGO.Value:='036'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='RR100102'; TBCACODIGO.Value:='036'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='RS100099'; TBCACODIGO.Value:='074'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='RS100102'; TBCACODIGO.Value:='074'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='RS100129'; TBCACODIGO.Value:='074'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='SC100099'; TBCACODIGO.Value:='084'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='SC100102'; TBCACODIGO.Value:='084'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='SE100099'; TBCACODIGO.Value:='077'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='SE100102'; TBCACODIGO.Value:='077'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='SE100129'; TBCACODIGO.Value:='077'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE OU DO CTE'; TBCA.Post;

  TBCA.Insert; TBCAUFRECEITA.Value:='TO100099'; TBCACODIGO.Value:='080'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='TO100102'; TBCACODIGO.Value:='080'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='CHAVE DE ACESSO DA NFE'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='TO100048'; TBCACODIGO.Value:='072'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='OBSERVACAO'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='TO100110'; TBCACODIGO.Value:='072'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='OBSERVACAO'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='TO100129'; TBCACODIGO.Value:='072'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='OBSERVACAO'; TBCA.Post;
  TBCA.Insert; TBCAUFRECEITA.Value:='TO100137'; TBCACODIGO.Value:='072'; TBCATIPO.Value:='T'; TBCAOBRIGATORIO.Value:='S'; TBCADESCRICAO.Value:='OBSERVACAO'; TBCA.Post;
  TBCA.EnableControls;
end;

procedure TFormGnre.EnviarGNRE1Click(Sender: TObject);
begin
  AbortIf(DM2.TBGnre.IsEmpty,'Nenhuma GNRE selecionada.');
  AbortIf(DM2.TBGnreGNR_STATUS.Value='F','Esta GNRE já foi processada.');
  AbortIf(DM2.TBGnreGNR_VALORPRINCIPAL.Value<=0,'O valor principal não pode ser menor ou igual a zero.');

  Memo1.Lines.Clear;
  ACBrGNRE1.Guias.Clear;
  with ACBrGNRE1.Guias.Add.GNRE do
  begin
    //dados do emitente.
    c27_tipoIdentificacaoEmitente:=StrToInt(Copy(DM2.TBGnreGNR_EMITDOCUMENTOTIPO.Value,1,1)); //1 - CNPJ.
    c03_idContribuinteEmitente:=LimparFormatacao(DM2.TBGnreGNR_EMITDOCUMENTO.Value); //'09324851000164';
    c17_inscricaoEstadualEmitente:=''; //'255776250'; //'9023725557';
    c16_razaoSocialEmitente:=DM2.TBGnreGNR_EMITRAZAO.Value;
    c18_enderecoEmitente:=DM2.TBGnreGNR_EMITENDERECO.Value;
    c19_municipioEmitente:=AlignText(IntToStr(DM2.TBGnreGNR_EMITCIDADECODIGO.Value),'0',5,taRight); // '08906'; completa com zero na frente, pois é um campo integer.
    c20_ufEnderecoEmitente:=DM2.TBGnreGNR_EMITESTADO.Value;
    c21_cepEmitente:=LimparFormatacao(DM2.TBGnreGNR_EMITCEP.Value);
    c22_telefoneEmitente:=LimparFormatacao(DM2.TBGnreGNR_EMITFONE.Value);

    //demais dados.
    c01_UfFavorecida:=DM2.TBGnreGNR_ESTADOFAVORECIDO.Value;
    c02_receita:=StrToInt(Copy(DM2.TBGnreGNR_RECEITA.Value,1,6));
    c28_tipoDocOrigem:=StrToInt(Copy(DM2.TBGnreGNR_TIPODOCTOORIGEM.Value,1,2));
    c04_docOrigem:=IntToStr(DM2.TBGnreGNR_NUMDOCTO.Value);
    c06_valorPrincipal:=DM2.TBGnreGNR_VALORPRINCIPAL.AsExtended;
    c14_dataVencimento:=DM2.TBGnreGNR_DTVENCIMENTO.Value;
    c15_convenio:=DM2.TBGnreGNR_CONVENIO.Value;

    if DM2.TBGnreGNR_DESTDOCUMENTOTIPO.Value='3 - IE' then
    c36_inscricaoEstadualDestinatario:=LimparFormatacao(DM2.TBGnreGNR_DESTDOCUMENTO.Value) else //'1170099200';
    begin
      c34_tipoIdentificacaoDestinatario:=StrToInt(Copy(DM2.TBGnreGNR_DESTDOCUMENTOTIPO.Value,1,1)); //será 1 ou 2.
      c35_idContribuinteDestinatario:=LimparFormatacao(DM2.TBGnreGNR_DESTDOCUMENTO.Value);
    end;
    c37_razaoSocialDestinatario:=DM2.TBGnreGNR_DESTNOME.Value;
    c38_municipioDestinatario:=AlignText(Copy(IntToStr(DM2.TBGnreGNR_DESTCIDADECODIGO.Value),3,5),'0',5,taRight);

    c33_dataPagamento:=DM2.TBGnreGNR_DTPAGAMENTO.Value;
    with camposExtras.Add.CampoExtra do
    begin
      if TBCA.Locate('UFRECEITA',DM2.TBGnreGNR_ESTADOFAVORECIDO.Value+Copy(DM2.TBGnreGNR_RECEITA.Value,1,6),[]) then
      begin
        codigo:=StrToInt(TBCACODIGO.Value); //84; //74;
        tipo:=TBCATIPO.Value;
        valor:=DM2.TBGnreGNR_CHAVEACESSO.Value; //'42160509324851000164550010000069351965429420';
      end;
    end;
  end;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrGNRE1.Configuracoes.WebServices.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrGNRE1.Configuracoes.WebServices.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrGNRE1.Configuracoes.WebServices.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrGNRE1.Configuracoes.WebServices.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;

  ACBrGNRE1.Configuracoes.Certificados.NumeroSerie:=DM.TBParametrosPAR_SERIALCERTIFICADO.Value;
  ACBrGNRE1.Configuracoes.Arquivos.PathSchemas:=DM.TBParametrosPAR_GNRESCHEMAS.Value;

  if DM.TBParametrosPAR_TIPOAMBIENTEGNRE.Value='1' then
  ACBrGNRE1.Configuracoes.WebServices.Ambiente:=taProducao else
  ACBrGNRE1.Configuracoes.WebServices.Ambiente:=taHomologacao;
  ACBrGNRE1.Configuracoes.WebServices.UF:=DM.TBParametrosPAR_SIGLAWSGNRE.Value;

  ACBrGNRE1.Enviar;

  {Memo1.Lines.Add('');
  Memo1.Lines.Add('Envio GNRE');
  Memo1.Lines.Add('ambiente: '+ TpAmbToStr(ACBrGNRE1.WebServices.Retorno.ambiente));
  Memo1.Lines.Add('codigo: '+ IntToStr(ACBrGNRE1.WebServices.Retorno.codigo));
  Memo1.Lines.Add('descricao: '+ ACBrGNRE1.WebServices.Retorno.descricao);
  Memo1.Lines.Add('Recibo: '+ ACBrGNRE1.WebServices.Retorno.numeroRecibo);
  Memo1.Lines.Add('Protocolo: '+ ACBrGNRE1.WebServices.Retorno.protocolo);
  Memo1.Lines.Add('Resultado: '+ ACBrGNRE1.WebServices.Retorno.resultado);}

  if ACBrGNRE1.WebServices.Retorno.codigo=403 then
  begin
    Memo1.Lines.Add(UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS));
    DM2.TBGnre.Edit;
    DM2.TBGnreGNR_RECIBO.Value:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
    DM2.TBGnre.Post;
  end;

  if ACBrGNRE1.WebServices.Retorno.codigo=402 then
  begin
    DM2.TBGnre.Edit;
    DM2.TBGnreGNR_CONTROLE.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].NumeroControle;
    DM2.TBGnreGNR_CODIGOBARRAS.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].CodigoBarras;
    DM2.TBGnreGNR_PROTOCOLO.Value:=ACBrGNRE1.WebServices.Retorno.protocolo;
    DM2.TBGnreGNR_RECIBO.Value:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
    DM2.TBGnreGNR_REPNUMERICA.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].RepresentacaoNumerica;
    DM2.TBGnreGNR_STATUS.Value:='F';
    DM2.TBGnreGNR_VALORATUALIZACAO.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].AtualizacaoMonetaria;
    DM2.TBGnreGNR_VALORJUROS.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].Juros;
    DM2.TBGnreGNR_VALORMULTA.Value:=ACBrGNRE1.WebServices.Retorno.GNRERetorno.resGuia.Items[0].Multa;
    DM2.TBGnre.Post;
  end;
end;

procedure TFormGnre.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormGnre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBGnre.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormGnre.FormCreate(Sender: TObject);
begin
  CriarTabelaCamposAdicionais;
end;

procedure TFormGnre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormGnre.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormGnre);
end;

procedure TFormGnre.ImprimirGNRE1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGnreFast, FormGnreFast);
  FormGnreFast.QY01.Close;
  FormGnreFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBGnreGNR_CODIGO.Value;
  FormGnreFast.QY01.Open;
  FormGnreFast.frxReport1.ShowReport;
  FormGnreFast.Free;
  FormGnreFast:=nil;
end;

procedure TFormGnre.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGnreLoc, FormGnreLoc);
  FormGnreLoc.ShowModal;
  if GnreLoc.Procurar then
  begin
    DM2.TBGnre.Close;
    DM2.TBGnre.ParamByName('codigo').AsInteger:=FormGnreLoc.QYGnreGNR_CODIGO.Value;
    DM2.TBGnre.Open;
  end;
  FormGnreLoc.Free;
  FormGnreLoc:=nil;
end;

procedure TFormGnre.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM2.TBGnreGNR_ESTADOFAVORECIDO.Value:=FormEnderecosEstadosLoc.QYEstadosESD_SIGLA.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure TFormGnre.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM2.TBGnreGNR_DESTCIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    DM2.TBGnreGNR_DESTCIDADECODIGO.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormGnre.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeLoc, FormNfeLoc);
  FormNfeLoc.ShowModal;
  if NfeLoc.Procurar then
  begin
    if FormNfeLoc.QYNfeNFE_STATUS.Value<>'F' then
    begin
      MessageDlg('Somente NFe finalizada pode gerar guia.',mtError,[mbOk],0);
      FormNfeLoc.Free;
      FormNfeLoc:=nil;
      Exit;
    end;
    DM2.TBGnreGNR_CHAVEACESSO.Value:=FormNfeLoc.QYNfeNFE_CHAVEACESSO.Value;
    DM2.TBGnreGNR_DESTCIDADE.Value:=FormNfeLoc.QYNfeNFE_CIDADE.Value;
    DM2.TBGnreGNR_DESTCIDADECODIGO.Value:=FormNfeLoc.QYNfeNFE_CIDADECODIGO.Value;
    DM2.TBGnreGNR_DESTNOME.Value:=FormNfeLoc.QYNfeCLI_NOME.Value;
    DM2.TBGnreGNR_ESTADOFAVORECIDO.Value:=FormNfeLoc.QYNfeNFE_ESTADO.Value;
    DM2.TBGnreGNR_NUMDOCTO.Value:=FormNfeLoc.QYNfeNFE_CODIGO.Value;

    if FormNfeLoc.QYNfeCLI_TIPOPESSOA.Value='J' then
    begin
      DM2.TBGnreGNR_DESTDOCUMENTOTIPO.Value:='1 - CNPJ';
      DM2.TBGnreGNR_DESTDOCUMENTO.Value:=FormNfeLoc.QYNfeNFE_CNPJ.Value;
    end else
    begin
      DM2.TBGnreGNR_DESTDOCUMENTOTIPO.Value:='2 - CPF';
      DM2.TBGnreGNR_DESTDOCUMENTO.Value:=FormNfeLoc.QYNfeNFE_CPF.Value;
    end;
  end;
  FormNfeLoc.Free;
  FormNfeLoc:=nil;
end;

initialization
  RegisterClass(TFormGnre);

finalization
  UnRegisterClass(TFormGnre);

end.

