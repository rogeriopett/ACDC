unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Horse, Horse.JWT,
  Vcl.Menus, Vcl.ExtCtrls, PngSpeedButton;

type
  TFormMain = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn6: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    InstalarNFEUTIL1: TMenuItem;
    ConsultarStatusdoServio1: TMenuItem;
    VersoNFEUTIL1: TMenuItem;
    N1: TMenuItem;
    IniciarServidor1: TMenuItem;
    PararServidor1: TMenuItem;
    LimparLogs1: TMenuItem;
    Parametros1: TMenuItem;
    Parmetros2: TMenuItem;
    Finalizar1: TMenuItem;
    Panel1: TPanel;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    Panel2: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure InstalarNFEUTIL1Click(Sender: TObject);
    procedure ConsultarStatusdoServio1Click(Sender: TObject);
    procedure VersoNFEUTIL1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure LimparLogs1Click(Sender: TObject);
    procedure PararServidor1Click(Sender: TObject);
    procedure IniciarServidor1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  public
    { Public declarations }
    procedure Variaveis(Acao: String);
//    function Authorization: THorseCallback;
//    function Authorization: THorseCallback;
//    procedure VerificarToken(Req: THorseRequest; Res: THorseResponse; Next: TProc);
      function Privado: THorseCallback;
    procedure Logar(Texto: String);
  end;

var
  FormMain: TFormMain;

//  3 define("site","angus");
//  4 define("site_name","Angus - Runtime Sistemas");
//  5 define("url_site","https://angus.runtimesistemas.com.br/");
//  6 define("url_path","/home/runtimesistemas/domains/angus.runtimesistemas.com.br/public_html/api");
//  7 define("DBNAME","localhost:/var/lib/firebird/data/angus.fdb");
//  8 define("DBUSER","sysdba");
//  9 define("DBPASS","borland");
// 10 define("CHARSET","UTF8");
// 11 define("PASTA_ROOT","/home/runtimesistemas/domains/angus.runtimesistemas.com.br/public_html/");
// 12 define("PASTA_ALBUNS","midias/albuns/");
// 13 define("PASTA_BANNERS","midias/banners/");
// 14 define("PASTA_BLOCOS","midias/blocos/");
// 15 define("PASTA_DOWNLOADS","midias/downloads/");
// 16 define("PASTA_EMPRESAS","midias/empresas/");
// 17 define("PASTA_NOTICIAS","midias/noticias/");
// 18 define("PASTA_PROFILES","midias/profiles/");
// 19 define("PASTA_VIDEOS","midias/videos/");
// 20 define("CHAVESECRETA","back_in_black");
// 21 define("TAGS_PERMITIDAS","<b><u><i><img><p><br><strong><em><font><li><ol><ul><blockquote><span>");

  CHAVESECRETA: String;
  URL_SITE: String;
  INICIAR_AO_ABRIR: String;
  MOSTRAR_LOGS: String;
  EXCLUIR_TEMP: String;
  PASTA_ROOT: String;
  PASTA_BLOCOS: String;
  PASTA_BLOCOS_WEB: String;
  PASTA_PROFILES: String;
  PASTA_PROFILES_WEB: String;
  PASTA_EMPRESAS: String;
  PASTA_EMPRESAS_WEB: String;
  PASTA_TEMP: String;

implementation
uses IniFiles, Horse.Jhonson, Horse.CORS, Horse.Request, System.JSON, DataModAngus, Admin.Usuarios, Usuario.Login,
  Root.Menu, Firenet.Aliquotas, Usuario.Empresas, Firenet.Agrupadores, Usuario.Profile, Usuario.Reset,
  Firenet.Receitas, Firenet.Despesas, Firenet.Bancos, Firenet.Almoxarifados,
  Firenet.Atividades, Firenet.Beneficios, Firenet.Cidades, Firenet.Convenios, Firenet.Familias,
  Firenet.Grupos, Firenet.Locais, Firenet.Mailings, Firenet.Marcas,
  Firenet.Motivos, Firenet.Unidades, Firenet.Taxas, Firenet.Vias,
  Firenet.Piscofins, Firenet.Icms, Firenet.Ipi, Firenet.Iss, Firenet.Naturezas,
  Firenet.ClassFiscal, Firenet.ExamesTipos, Firenet.Caixa, Firenet.Contas,
  Firenet.Vendedores, Firenet.EmailsContas, Root.Enderecos, Firenet.Clientes,
  Firenet.Condicoes, Firenet.Markups, Firenet.Contatos, Firenet.Fornecedores,
  Firenet.Pagar, Firenet.Receber, Firenet.Consultas, Firenet.TabelaPrecos,
  Firenet.Estoque, Firenet.Produtos, Firenet.Recibos, Admin.Menus,
  Admin.Unidades, Admin.Blocos, Admin.Empresas, Admin.EmpresasUsuarios,
  Admin.UsuariosEmpresas, Admin.Parametros, Firenet.Empresa, Root.Arquivos, Root.Unidades,
  Parametros, Firenet.Vendas, NFe_Util_2G_TLB, Funcoes, Firenet.Nfes,
  System.UITypes, Firenet.Metas, Firenet.MetasConfig, Usuario.Cadastro,
  Firenet.Paises;

{$R *.dfm}

procedure TFormMain.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('SERVIDOR','INICIAR_AO_ABRIR',INICIAR_AO_ABRIR);
    F.WriteString('SERVIDOR','MOSTRAR_LOGS',MOSTRAR_LOGS);
    F.WriteString('SERVIDOR','EXCLUIR_TEMP',EXCLUIR_TEMP);
    F.WriteString('SITE','URL_SITE',URL_SITE);
    F.WriteString('SITE','CHAVESECRETA',CHAVESECRETA);
    F.WriteString('PASTAS','PASTA_ROOT',PASTA_ROOT);
    F.WriteString('PASTAS','PASTA_BLOCOS',PASTA_BLOCOS);
    F.WriteString('PASTAS','PASTA_BLOCOS_WEB',PASTA_BLOCOS_WEB);
    F.WriteString('PASTAS','PASTA_PROFILES',PASTA_PROFILES);
    F.WriteString('PASTAS','PASTA_PROFILES_WEB',PASTA_PROFILES_WEB);
    F.WriteString('PASTAS','PASTA_EMPRESAS',PASTA_EMPRESAS);
    F.WriteString('PASTAS','PASTA_EMPRESAS_WEB',PASTA_EMPRESAS_WEB);
    F.WriteString('PASTAS','PASTA_TEMP',PASTA_TEMP);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    INICIAR_AO_ABRIR   :=F.ReadString('SERVIDOR','INICIAR_AO_ABRIR',INICIAR_AO_ABRIR);
    MOSTRAR_LOGS       :=F.ReadString('SERVIDOR','MOSTRAR_LOGS',MOSTRAR_LOGS);
    EXCLUIR_TEMP       :=F.ReadString('SERVIDOR','EXCLUIR_TEMP',EXCLUIR_TEMP);
    URL_SITE           :=F.ReadString('SITE','URL_SITE',URL_SITE);
    CHAVESECRETA       :=F.ReadString('SITE','CHAVESECRETA',CHAVESECRETA);
    PASTA_ROOT         :=F.ReadString('PASTAS','PASTA_ROOT',PASTA_ROOT);
    PASTA_BLOCOS       :=F.ReadString('PASTAS','PASTA_BLOCOS',PASTA_BLOCOS);
    PASTA_BLOCOS_WEB   :=F.ReadString('PASTAS','PASTA_BLOCOS_WEB',PASTA_BLOCOS_WEB);
    PASTA_PROFILES     :=F.ReadString('PASTAS','PASTA_PROFILES',PASTA_PROFILES);
    PASTA_PROFILES_WEB :=F.ReadString('PASTAS','PASTA_PROFILES_WEB',PASTA_PROFILES_WEB);
    PASTA_EMPRESAS     :=F.ReadString('PASTAS','PASTA_EMPRESAS',PASTA_EMPRESAS);
    PASTA_EMPRESAS_WEB :=F.ReadString('PASTAS','PASTA_EMPRESAS_WEB',PASTA_EMPRESAS_WEB);
    PASTA_TEMP         :=F.ReadString('PASTAS','PASTA_TEMP',PASTA_TEMP);
  end;
  F.Free;
end;

procedure TFormMain.VersoNFEUTIL1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
begin
  U:=NFe_Util_2G_TLB.CoUtil.Create;
  MessageDlg('A versão da NFe_Util em uso é '+U.Versao,mtInformation,[mbOk],0);
  U:=nil;
end;

procedure TFormMain.Parametros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormParametros, FormParametros);
  FormParametros.ShowModal;
  FormParametros.Free;
  FormParametros:=nil;
end;

function TFormMain.Privado: THorseCallback;
var Header, Token: String;
begin
  Result:= procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
    Header:=Req.Headers.Field('Authorization').AsString;
    if (Header = '') or (Pos('Bearer ', Header) = 0) then
    begin
      // Se não tiver token ou não for Bearer, retorne erro
      FormMain.Logar('Tentativa de acesso sem Header Authorization em '+Req.PathInfo);
      Res.Send(
        TJSONObject.Create
          .AddPair('erro', 'S')
          .AddPair('token', 'expirado')
          .AddPair('msg', 'Voce precisa estar autenticado para utilizar este recurso.')
        ).Status(401);
      raise EHorseCallbackInterrupted.Create;
    end;

    // Extraia o token (remove o 'Bearer ' do início)
    Token:=Trim(Copy(Header, 8, Length(Header) - 7));
    try
      // Verifique se o token é válido usando o pacote JWT.
      HorseJWT(CHAVESECRETA)(Req, Res, Next);  // Aqui ele vai validar o token

      // Se o token for válido, chama o próximo middleware ou rota
      Next;
    except
      on E: Exception do
      begin
        // Se o token for inválido, retorne erro com a mensagem
        FormMain.Logar('Tentativa de acesso com Token inválido em '+Req.PathInfo);
        Res.Send(
          TJSONObject.Create
            .AddPair('erro', 'S')
            .AddPair('token', 'expirado')
            .AddPair('msg', 'Token inválido ou expirado. '+e.Message)
          ).Status(401);
        raise EHorseCallbackInterrupted.Create;
      end;
    end;
  end;
end;

procedure TFormMain.SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  // Adicionar cabeçalhos CORS para permitir o acesso de outras origens
  Res.AddHeader('Access-Control-Allow-Origin', '*'); // Permitir qualquer origem
  Res.AddHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  Res.AddHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, X-Requested-With'); // Adicionando Authorization
//                                                 Origin, X-Requested-With, Content-Type, Accept, Authorization
  // Permitir a requisição OPTIONS (necessário para CORS)
//  if Req.MethodType = mtAny then
//  begin
    Res.Send('');
//    Exit;
//  end;

  Next; // Continuar com o fluxo de execução
end;

procedure TFormMain.BitBtn6Click(Sender: TObject);
var
  CabMsg, DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
  U: NFe_Util_2G_Interface;
begin
  CabMsg:='';
  DadosMsg:='';
  RetWS:='';
  MsgResultado:='';
  U:=CoUtil.Create;
  Proxy:='';
  //if DM.TBParametrosPAR_PROXY.Value='S' then
  //Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.ConsultaStatus2G('SVRS',
                        'SC',
                        1,
                        'ARQUIVO|c:\runtime\certificados\certificadogp2025vini0909.pfx|senha',
                        '4.00',
                        DadosMsg,
                        RetWS,
                        MsgResultado,
                        Proxy,
                        '',
                        '');
  MessageDlg('Consulta status retornou: '+#13#10+MsgResultado, mtInformation, [mbOk], 0);
  Memo1.Lines.Add(RetWs);
  U:=nil;
end;

procedure TFormMain.Button1Click(Sender: TObject);
var BaseUrl, ZapId, ZapToken: String;
begin
  BaseUrl:='https://api.z-api.io';
  ZapId:='3F2F8BAB060771B066559A008E843F94';
  ZapToken:='9BB86AE56B84B7655AFE5C55';
end;

procedure TFormMain.ConsultarStatusdoServio1Click(Sender: TObject);
var
  CabMsg, DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
  U: NFe_Util_2G_Interface;
begin
  CabMsg:='';
  DadosMsg:='';
  RetWS:='';
  MsgResultado:='';
  U:=CoUtil.Create;
  Proxy:='';
  //if DM.TBParametrosPAR_PROXY.Value='S' then
  //Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.ConsultaStatus2G('SVRS',
                        'SC',
                        1,
                        'ARQUIVO|c:\runtime\firenet\certificados\certificadogp2025vini0909.pfx|vini0909',
                        '4.00',
                        DadosMsg,
                        RetWS,
                        MsgResultado,
                        Proxy,
                        '',
                        '');
  MessageDlg('Consulta status retornou: '+#13#10+MsgResultado, mtInformation, [mbOk], 0);
  Memo1.Lines.Add(RetWs);
  U:=nil;
end;

procedure TFormMain.Finalizar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Variaveis('LOAD');
  CheckBox1.Checked:=INICIAR_AO_ABRIR='S';
  CheckBox2.Checked:=MOSTRAR_LOGS='S';
  CheckBox3.Checked:=EXCLUIR_TEMP='S';
  FormatSettings.ShortDateFormat:='dd/mm/yyyy';

  if CheckBox1.Checked then IniciarServidor1.Click;
end;

procedure TFormMain.IniciarServidor1Click(Sender: TObject);
begin
  THorse.Use(CORS);
  THorse.Use(Jhonson());

  THorse.Get('ping',
    procedure (Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      //memo1.lines.add(req.tostring);
      Res.Send('pong').Status(200);
    end
  );

  Root.Arquivos.RegistrarRotas;
  Root.Enderecos.RegistrarRotas;
  Root.Menu.RegistrarRotas;
  Root.Unidades.RegistrarRotas;

  Usuario.Cadastro.RegistrarRotas;
  Usuario.Empresas.RegistrarRotas;
  Usuario.Login.RegistrarRotas;
  Usuario.Profile.RegistrarRotas;
  Usuario.Reset.RegistrarRotas;

  Admin.Blocos.RegistrarRotas;
  Admin.Empresas.RegistrarRotas;
  Admin.EmpresasUsuarios.RegistrarRotas;
  Admin.Menus.RegistrarRotas;
  Admin.Parametros.RegistrarRotas;
  Admin.Unidades.RegistrarRotas;
  Admin.Usuarios.RegistrarRotas;
  Admin.UsuariosEmpresas.RegistrarRotas;

  Firenet.Agrupadores.RegistrarRotas;
  Firenet.Aliquotas.RegistrarRotas;
  Firenet.Almoxarifados.RegistrarRotas;
  Firenet.Atividades.RegistrarRotas;
  Firenet.Bancos.RegistrarRotas;
  Firenet.Beneficios.RegistrarRotas;
  Firenet.Caixa.RegistrarRotas;
  Firenet.Cidades.RegistrarRotas;
  Firenet.ClassFiscal.RegistrarRotas;
  Firenet.Clientes.RegistrarRotas;
  Firenet.Condicoes.RegistrarRotas;
  Firenet.Consultas.RegistrarRotas;
  Firenet.Contas.RegistrarRotas;
  Firenet.Contatos.RegistrarRotas;
  Firenet.Convenios.RegistrarRotas;
  Firenet.Despesas.RegistrarRotas;
  Firenet.EmailsContas.RegistrarRotas;
  Firenet.Empresa.RegistrarRotas;
  Firenet.Estoque.RegistrarRotas;
  Firenet.ExamesTipos.RegistrarRotas;
  Firenet.Familias.RegistrarRotas;
  Firenet.Fornecedores.RegistrarRotas;
  Firenet.Grupos.RegistrarRotas;
  Firenet.Icms.RegistrarRotas;
  Firenet.Ipi.RegistrarRotas;
  Firenet.Iss.RegistrarRotas;
  Firenet.Locais.RegistrarRotas;
  Firenet.Mailings.RegistrarRotas;
  Firenet.Marcas.RegistrarRotas;
  Firenet.Markups.RegistrarRotas;
  Firenet.Metas.RegistrarRotas;
  Firenet.MetasConfig.RegistrarRotas;
  Firenet.Motivos.RegistrarRotas;
  Firenet.Naturezas.RegistrarRotas;
  Firenet.Nfes.RegistrarRotas;
  Firenet.Pagar.RegistrarRotas;
  Firenet.Paises.RegistrarRotas;
  Firenet.Piscofins.RegistrarRotas;
  Firenet.Produtos.RegistrarRotas;
  Firenet.Receber.RegistrarRotas;
  Firenet.Receitas.RegistrarRotas;
  Firenet.Recibos.RegistrarRotas;
  Firenet.TabelaPrecos.RegistrarRotas;
  Firenet.Taxas.RegistrarRotas;
  Firenet.Unidades.RegistrarRotas;
  Firenet.Vendas.RegistrarRotas;
  Firenet.Vendedores.RegistrarRotas;
  Firenet.Vias.RegistrarRotas;

  THorse.Listen(StrToInt(Edit1.Text));

  Logar('Servidor iniciado em '+DateToStr(Date)+' as '+TimeToStr(Time)+' na porta: '+THorse.Port.ToString);
  PngSpeedButton1.Enabled:=False;
  PngSpeedButton2.Enabled:=True;
  Panel2.Color:=TColors.Seagreen;
  Panel2.Caption:='ATIVO';
end;

procedure TFormMain.PararServidor1Click(Sender: TObject);
begin
  THorse.StopListen;
  Logar('Servidor parado em '+DateToStr(Date)+' as '+TimeToStr(Time));
  PngSpeedButton1.Enabled:=True;
  PngSpeedButton2.Enabled:=False;
  Panel2.Color:=TColors.Crimson;
  Panel2.Caption:='INATIVO';
end;

procedure TFormMain.InstalarNFEUTIL1Click(Sender: TObject);
var P: String;
  DM: TDMAngus;
begin
  try
    DM:=TDMAngus.Create(nil);
    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;
    showmessage(DM.TBParametrosPAR_FLEXDOCSPASTA.Value+'\'+DM.TBParametrosPAR_FLEXDOCSNFE.Value);

    if FileExists(DM.TBParametrosPAR_FLEXDOCSPASTA.Value+'\'+DM.TBParametrosPAR_FLEXDOCSNFE.Value) then
    begin
      P:='/components="DLL" /SAVEINF="'+GetTempDir+'nfeutil.txt" /DIR="'+ExtractFilePath(Application.ExeName)+'"';
      //para instalação silenciosa: CTe_Util_2.02b /verysilent /components="DLL" /DIR=".\teste"
      ExecutarArquivo(DM.TBParametrosPAR_FLEXDOCSPASTA.Value+'\'+DM.TBParametrosPAR_FLEXDOCSNFE.Value,P);
    end else
    MessageDlg('O arquivo '+DM.TBParametrosPAR_FLEXDOCSNFE.Value+' não foi encontrado em '+DM.TBParametrosPAR_FLEXDOCSPASTA.Value,mtError,[mbOk],0);

    DM.TBParametros.Close;
  finally
    FreeAndNil(DM);
  end;

end;

procedure TFormMain.LimparLogs1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFormMain.Logar(Texto: String);
begin
  if CheckBox2.Checked then
  Memo1.Lines.Add(DateToStr(Date)+' '+TimeToStr(Time)+' - '+Texto);
end;

end.
