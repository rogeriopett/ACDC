//Atualizacoes:
//2026.11.18 - PASTA_LOGOMARCA ([PASTAS] do Parametros.ini): pasta da logomarca da empresa, dentro de ARQUIVOS_SISTEMA.
unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Horse, Horse.JWT, Horse.CORS,
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
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
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
    CheckBox4: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure LimparLogs1Click(Sender: TObject);
    procedure PararServidor1Click(Sender: TObject);
    procedure IniciarServidor1Click(Sender: TObject);
  private
    { Private declarations }
    //procedure SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    const ParamFile='Parametros.ini';
    const PrefixLog='MAIN: ';
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
  URL_API: String;
  URL_SITE: String;
  INICIAR_AO_ABRIR: String;
  MOSTRAR_LOGS: String;
  EXCLUIR_TEMP: String;
  ARQUIVOS_SISTEMA: String;
  PRODUTOS_FOTOS: String;
  PASTA_TEMP: String;

implementation
uses IniFiles, Horse.Jhonson, Horse.Request, System.JSON, Usuario.Login,
  Firenet.Vendedores, Firenet.Clientes, Firenet.Condicoes, Firenet.Receber,
  Firenet.Parametros, Firenet.Produtos, Root.Arquivos, Parametros, Firenet.Vendas, NFe_Util_2G_TLB,
  Funcoes, System.UITypes, Firenet.Metas, Root.Certificado, Firenet.Servicos,
  Firenet.Equipamentos, Firenet.Vias, Site.Produtos, Site.Grupos, Web.HTTPApp,
  Firenet.Motivos, Firenet.Televendas;

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
    F.WriteString('SITE','URL_API',URL_API);
    F.WriteString('SITE','URL_SITE',URL_SITE);
    F.WriteString('SITE','CHAVESECRETA',CHAVESECRETA);
    F.WriteString('PASTAS','ARQUIVOS_SISTEMA',ARQUIVOS_SISTEMA);
    F.WriteString('PASTAS','PRODUTOS_FOTOS',PRODUTOS_FOTOS);
    F.WriteString('PASTAS','PASTA_TEMP',PASTA_TEMP);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    INICIAR_AO_ABRIR   :=F.ReadString('SERVIDOR','INICIAR_AO_ABRIR',INICIAR_AO_ABRIR);
    MOSTRAR_LOGS       :=F.ReadString('SERVIDOR','MOSTRAR_LOGS',MOSTRAR_LOGS);
    EXCLUIR_TEMP       :=F.ReadString('SERVIDOR','EXCLUIR_TEMP',EXCLUIR_TEMP);
    URL_API            :=F.ReadString('SITE','URL_API',URL_API);
    URL_SITE           :=F.ReadString('SITE','URL_SITE',URL_SITE);
    CHAVESECRETA       :=F.ReadString('SITE','CHAVESECRETA',CHAVESECRETA);
    ARQUIVOS_SISTEMA   :=F.ReadString('PASTAS','ARQUIVOS_SISTEMA',ARQUIVOS_SISTEMA);
    PRODUTOS_FOTOS     :=F.ReadString('PASTAS','PRODUTOS_FOTOS',PRODUTOS_FOTOS);
    PASTA_TEMP         :=F.ReadString('PASTAS','PASTA_TEMP',PASTA_TEMP);
  end;
  F.Free;
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

//procedure TFormMain.SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
//var Origem, MetodoBruto: String;
//begin
//  Origem:=Req.RawWebRequest.GetFieldByName('HTTP_ORIGIN');
//  if Origem='' then Origem:=Req.RawWebRequest.GetFieldByName('Origin');
//
//  if not Origem.EndsWith('/') then
//  Origem:=Origem+'/';
//
////  if (Pos(URL_SITE,Origem)>0) or (Pos(URL_API,Origem)>0) or (Pos('localhost', Origem)>0) then
//
////  if (Pos('gpautoar.com.br',Origem)>0) or (Pos('localhost', Origem)>0) then
////  Res.AddHeader('Access-Control-Allow-Origin', Origem) else
////  begin
////    FormMain.Logar('Origem não permitida: '+Origem);
////    Res.Status(403).Send('Origem não permitida'); // Se a origem for desconhecida e você quiser BLOQUEAR o servidor:
////    Exit;
////  end;
//
//  //Res.AddHeader('Access-Control-Allow-Origin', 'https://gpautoar.com.br'); // Permitir qualquer origem
//  Res.AddHeader('Access-Control-Allow-Origin', '*'); // Permitir qualquer origem
//  Res.AddHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
//  Res.AddHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, X-Requested-With, Accept, Origin');
//  Res.AddHeader('Access-Control-Allow-Credentials', 'true');
//
//  MetodoBruto:=UpperCase(Req.RawWebRequest.Method);
//  if CheckBox4.Checked then
//  FormMain.Logar('CORS: '+MetodoBruto+' - Origem: '+Origem);
//
//  // Se for uma requisição de verificação (Preflight)
//  if (Req.MethodType = TMethodType.mtAny) or (MetodoBruto = 'OPTIONS') then
//  begin
//    FormMain.Logar('Preflight: '+MetodoBruto+' - Origem: '+Origem);
//    Res.Status(200).Send('');
//    Exit;
//  end;
//
//  Next; // Continuar com o fluxo de execução
//end;

//procedure TFormMain.SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
//var Origem, MetodoBruto: String;
//begin
//  Origem:=Req.RawWebRequest.GetFieldByName('HTTP_ORIGIN');
//  if Origem='' then Origem:=Req.RawWebRequest.GetFieldByName('Origin');
//
//  if not Origem.EndsWith('/') then
//  Origem:=Origem+'/';
//  MetodoBruto:=UpperCase(Req.RawWebRequest.Method);
//          FormMain.Logar('Preflight: '+MetodoBruto+' - Origem: '+Origem);
//
//  // Adiciona os headers para TODA requisição
//  Res.RawWebResponse.CustomHeaders.Values['Access-Control-Allow-Origin'] := 'http://localhost:5173/';
//  Res.RawWebResponse.CustomHeaders.Values['Access-Control-Allow-Methods'] := 'GET, POST, PUT, DELETE, PATCH, OPTIONS';
//  Res.RawWebResponse.CustomHeaders.Values['Access-Control-Allow-Headers'] := 'Content-Type, Authorization, X-Requested-With, Accept, Origin';
//
//
//  // Se for OPTIONS, RESPONDE E SAI. Não chama o Next!
//  if UpperCase(Req.RawWebRequest.Method) = 'OPTIONS' then
//  begin
//  FormMain.Logar('Preflight2222: '+MetodoBruto+' - Origem: '+Origem);
//    //Res.Status(204).Send('');
//    Res.Send('').Status(204);
//    Exit; // ESSA LINHA É A MAIS IMPORTANTE
//  end;
//  FormMain.Logar('aqui nao deve vir com options');
//
//  Next; // Segue para Johnson e para as rotas apenas se NÃO for OPTIONS
//end;

//procedure do PHILL:
//procedure TFormMain.SetCORS(Req: THorseRequest; Res: THorseResponse; Next: TProc);
//begin
//  // Adicionar cabeçalhos CORS para permitir o acesso de outras origens
//  Res.AddHeader('Access-Control-Allow-Origin', '*'); // Permitir qualquer origem
//  Res.AddHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
//  Res.AddHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, X-Requested-With'); // Adicionando Authorization
////                                                 Origin, X-Requested-With, Content-Type, Accept, Authorization
//  // Permitir a requisição OPTIONS (necessário para CORS)
//  if Req.MethodType = mtAny then
//  begin
//    Res.Send('');
//    Exit;
//  end;
//
//  Next; // Continuar com o fluxo de execução
//end;

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
  FormMain.Caption:='Cliff Server - Versão: '+FileVersion(Application.ExeName);
  if CheckBox1.Checked then IniciarServidor1.Click;
end;

procedure TFormMain.IniciarServidor1Click(Sender: TObject);
begin
  //THorse.Use(SetCORS);
  THorse.Use(CORS);
  THorse.Use(Jhonson());

  THorse.Get('ping',
    procedure (Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      FormMain.Logar(PrefixLog+'(ping): pong');
      Res.Send('pong').Status(200);
    end
  );

  Root.Arquivos.RegistrarRotas;
  Root.Certificado.RegistrarRotas;

  Usuario.Login.RegistrarRotas;

  Firenet.Clientes.RegistrarRotas;
  Firenet.Condicoes.RegistrarRotas;
  Firenet.Equipamentos.RegistrarRotas;
  Firenet.Metas.RegistrarRotas;
  Firenet.Motivos.RegistrarRotas;
  Firenet.Parametros.RegistrarRotas;
  Firenet.Produtos.RegistrarRotas;
  Firenet.Receber.RegistrarRotas;
  Firenet.Servicos.RegistrarRotas;
  Firenet.Televendas.RegistrarRotas;
  Firenet.Vendas.RegistrarRotas;
  Firenet.Vendedores.RegistrarRotas;
  Firenet.Vias.RegistrarRotas;
  Site.Grupos.RegistrarRotas;
  Site.Produtos.RegistrarRotas;

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

procedure TFormMain.LimparLogs1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFormMain.Logar(Texto: String);
begin
  if CheckBox2.Checked then
  Memo1.Lines.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz', Now)+' - '+Texto);
  //Memo1.Lines.Add(DateToStr(Date)+' '+TimeToStr(Time)+' - '+Texto);
  //Log := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', Now);
end;

end.
