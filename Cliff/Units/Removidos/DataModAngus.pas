unit DataModAngus;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Vcl.Forms, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TDMAngus = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBDataSet1: TIBDataSet;
    IBTransaction1: TIBTransaction;
    TBBlocos: TIBDataSet;
    TRBlocos: TIBTransaction;
    TBBlocosBLO_CODIGO: TIntegerField;
    TBBlocosBLO_CONTEUDO: TWideMemoField;
    TBBlocosBLO_HITS: TIntegerField;
    TBBlocosBLO_IMAGEMDESTAQUE: TIBStringField;
    TBBlocosBLO_MOSTRARTITULO: TIBStringField;
    TBBlocosBLO_NOME: TIBStringField;
    TBBlocosBLO_PAGINA: TIBStringField;
    TBBlocosBLO_SLUG: TIBStringField;
    TBBlocosBLO_UNIDADE: TIntegerField;
    TBEmpresas: TIBDataSet;
    TREmpresas: TIBTransaction;
    TBEmpresasEMP_API: TIBStringField;
    TBEmpresasEMP_BASEDADOS: TIBStringField;
    TBEmpresasEMP_CNPJ: TIBStringField;
    TBEmpresasEMP_CODIGO: TIntegerField;
    TBEmpresasEMP_DBPASS: TIBStringField;
    TBEmpresasEMP_DBUSER: TIBStringField;
    TBEmpresasEMP_DTATUALIZACAO: TDateField;
    TBEmpresasEMP_DTCADASTRO: TDateField;
    TBEmpresasEMP_FONE1: TIBStringField;
    TBEmpresasEMP_HASH: TIBStringField;
    TBEmpresasEMP_HRATUALIZACAO: TTimeField;
    TBEmpresasEMP_HRCADASTRO: TTimeField;
    TBEmpresasEMP_LOGO: TIBStringField;
    TBEmpresasEMP_NOME: TIBStringField;
    TBEmpresasEMP_RESPONSAVEL: TIntegerField;
    TBEmpresasEMP_STATUS: TIBStringField;
    TBMenus: TIBDataSet;
    TRMenus: TIBTransaction;
    TBMenusMEN_CODIGO: TIntegerField;
    TBMenusMEN_DESCRICAO: TIBStringField;
    TBMenusMEN_LINK: TIBStringField;
    TBMenusMEN_ORDEM: TIntegerField;
    TBMenusMEN_MENUTITLE: TIBStringField;
    TBMenusMEN_BLOCO: TIntegerField;
    TBMenusMEN_TARGET: TIBStringField;
    TBMenusMEN_PAI: TIntegerField;
    TBMenusMEN_DROP: TIBStringField;
    TBMenusMEN_TIPO: TIBStringField;
    TBMenusMEN_ICONE: TIBStringField;
    TBMenusMEN_VISIBLE: TIBStringField;
    TBMenusMEN_ROOT: TIntegerField;
    TBMenusMEN_UNIDADE: TIntegerField;
    TBParametros: TIBDataSet;
    TRParametros: TIBTransaction;
    TBParametrosPAR_CODIGO: TIntegerField;
    TBParametrosPAR_CONFIRMADO: TWideMemoField;
    TBParametrosPAR_MAILADMIN: TIBStringField;
    TBParametrosPAR_MAILFROM: TIBStringField;
    TBParametrosPAR_MAILNAME: TIBStringField;
    TBParametrosPAR_MAILPASS: TIBStringField;
    TBParametrosPAR_MAILPORT: TIntegerField;
    TBParametrosPAR_MAILPREFIX: TIBStringField;
    TBParametrosPAR_MAILSMTP: TIBStringField;
    TBParametrosPAR_MAILUSER: TIBStringField;
    TBParametrosPAR_NOVOUSUARIO: TWideMemoField;
    TBParametrosPAR_REENVIAR: TWideMemoField;
    TBParametrosPAR_RESETARSENHA: TWideMemoField;
    TBParametrosPAR_SITENAME: TIBStringField;
    TBUsuarios: TIBDataSet;
    TRUsuarios: TIBTransaction;
    TBUsuariosUSU_ADMIN: TIBStringField;
    TBUsuariosUSU_APELIDO: TIBStringField;
    TBUsuariosUSU_AVATAR: TIBStringField;
    TBUsuariosUSU_CODIGO: TIntegerField;
    TBUsuariosUSU_CONFIRMACAO: TIBStringField;
    TBUsuariosUSU_CPF: TIBStringField;
    TBUsuariosUSU_DTATUALIZACAO: TDateField;
    TBUsuariosUSU_DTCADASTRO: TDateField;
    TBUsuariosUSU_EMAIL: TIBStringField;
    TBUsuariosUSU_FONE1: TIBStringField;
    TBUsuariosUSU_GESTOR: TIBStringField;
    TBUsuariosUSU_HASH: TIBStringField;
    TBUsuariosUSU_HRATUALIZACAO: TTimeField;
    TBUsuariosUSU_HRCADASTRO: TTimeField;
    TBUsuariosUSU_NOME: TIBStringField;
    TBUsuariosUSU_PASSWORD: TIBStringField;
    TBUsuariosUSU_STATUS: TIBStringField;
    TRUsuemp: TIBTransaction;
    TBUsuemp: TIBDataSet;
    TBUsuempUSE_EMPRESA: TIntegerField;
    TBUsuempUSE_USUARIO: TIntegerField;
    TBUsuempUSE_ACESSO: TIBStringField;
    TBUsuempUSE_FIRENET: TIBStringField;
    TBUnidades: TIBDataSet;
    TRUnidades: TIBTransaction;
    TBUnidadesUNI_CODIGO: TIntegerField;
    TBUnidadesUNI_DESCRICAO: TIBStringField;
    TBUnidadesUNI_LOGO: TIBStringField;
    Query1: TIBQuery;
    Query2: TIBQuery;
    TRQuery1: TIBTransaction;
    TRQuery2: TIBTransaction;
    TBParametrosPAR_FLEXDOCSNFE: TIBStringField;
    TBParametrosPAR_FLEXDOCSPASTA: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure IBDatabase1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
    procedure Variaveis(Acao: String);
  public
    { Public declarations }
  end;

var
  DMAngus: TDMAngus;

  BaseBase: String;
  BaseDescricao: String;
  BaseSenha: String;
  BaseServidor: String;
  BaseUsuario: String;
  FS: TFormatSettings;

const
  ParamFile='Parametros.ini';
  ChaveSenha=240;
  ChaveSenhaNEW=12;

implementation
uses IniFiles, Funcoes, DataSet.Serialize.Config;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMAngus.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASE DE DADOS','Base',BaseBase);
    F.WriteString('BASE DE DADOS','Descricao',BaseDescricao);
    F.WriteString('BASE DE DADOS','Servidor',BaseServidor);
    F.WriteString('BASE DE DADOS','Usuario',BaseUsuario);
    F.WriteString('BASE DE DADOS','Senha',SenhaEncode(BaseSenha,ChaveSenhaNEW));
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    BaseBase      :=F.ReadString('BASE DE DADOS','Base',BaseBase);
    BaseDescricao :=F.ReadString('BASE DE DADOS','Descricao',BaseDescricao);
    BaseSenha     :=F.ReadString('BASE DE DADOS','Senha',BaseSenha);
    BaseSenha     :=SenhaDecode(BaseSenha,ChaveSenhaNEW);
    BaseServidor  :=F.ReadString('BASE DE DADOS','Servidor',BaseServidor);
    BaseUsuario   :=F.ReadString('BASE DE DADOS','Usuario',BaseUsuario);
  end;
  F.Free;
end;

procedure TDMAngus.IBDatabase1BeforeConnect(Sender: TObject);
begin
  Variaveis('LOAD');

  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name='+BaseUsuario);
  IBDatabase1.Params.Add('password='+BaseSenha);
  IBDatabase1.DatabaseName:=BaseServidor+':'+BaseBase;
end;

procedure TDMAngus.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := cndUpper; //campos no JSON em maiúsculas.
  TDataSetSerializeConfig.GetInstance.Import.DecimalSeparator := '.';

  FS:=TFormatSettings.Create;
  FS.ShortDateFormat:='dd/mm/yyyy';
//  Variaveis('LOAD');

  IBDatabase1.Connected:=True;
end;

end.
