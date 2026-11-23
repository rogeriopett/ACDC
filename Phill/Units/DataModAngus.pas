unit DataModAngus;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Vcl.Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDMAngus = class(TDataModule)
    FDConnection1: TFDConnection;
    TBBlocos: TFDQuery;
    TRBlocos: TFDTransaction;
    UPBlocos: TFDUpdateSQL;
    TBBlocosBLO_CODIGO: TIntegerField;
    TBBlocosBLO_CONTEUDO: TMemoField;
    TBBlocosBLO_HITS: TIntegerField;
    TBBlocosBLO_IMAGEMDESTAQUE: TStringField;
    TBBlocosBLO_MOSTRARTITULO: TStringField;
    TBBlocosBLO_NOME: TStringField;
    TBBlocosBLO_PAGINA: TStringField;
    TBBlocosBLO_SLUG: TStringField;
    TBBlocosBLO_UNIDADE: TIntegerField;
    TBEmpresas: TFDQuery;
    TREmpresas: TFDTransaction;
    UPEmpresas: TFDUpdateSQL;
    TBEmpresasEMP_API: TStringField;
    TBEmpresasEMP_BASEDADOS: TStringField;
    TBEmpresasEMP_CNPJ: TStringField;
    TBEmpresasEMP_CODIGO: TIntegerField;
    TBEmpresasEMP_DBPASS: TStringField;
    TBEmpresasEMP_DBUSER: TStringField;
    TBEmpresasEMP_DTATUALIZACAO: TDateField;
    TBEmpresasEMP_DTCADASTRO: TDateField;
    TBEmpresasEMP_FONE1: TStringField;
    TBEmpresasEMP_HASH: TStringField;
    TBEmpresasEMP_HRATUALIZACAO: TTimeField;
    TBEmpresasEMP_HRCADASTRO: TTimeField;
    TBEmpresasEMP_LOGO: TStringField;
    TBEmpresasEMP_NOME: TStringField;
    TBEmpresasEMP_RESPONSAVEL: TIntegerField;
    TBEmpresasEMP_STATUS: TStringField;
    TBMenus: TFDQuery;
    TRMenus: TFDTransaction;
    UPMenus: TFDUpdateSQL;
    TBMenusMEN_CODIGO: TIntegerField;
    TBMenusMEN_DESCRICAO: TStringField;
    TBMenusMEN_LINK: TStringField;
    TBMenusMEN_ORDEM: TIntegerField;
    TBMenusMEN_MENUTITLE: TStringField;
    TBMenusMEN_BLOCO: TIntegerField;
    TBMenusMEN_TARGET: TStringField;
    TBMenusMEN_PAI: TIntegerField;
    TBMenusMEN_DROP: TStringField;
    TBMenusMEN_TIPO: TStringField;
    TBMenusMEN_ICONE: TStringField;
    TBMenusMEN_VISIBLE: TStringField;
    TBMenusMEN_ROOT: TIntegerField;
    TBMenusMEN_UNIDADE: TIntegerField;
    TBParametros: TFDQuery;
    TRParametros: TFDTransaction;
    UPParametros: TFDUpdateSQL;
    TBParametrosPAR_CODIGO: TIntegerField;
    TBParametrosPAR_CONFIRMADO: TMemoField;
    TBParametrosPAR_FLEXDOCSNFE: TStringField;
    TBParametrosPAR_FLEXDOCSPASTA: TStringField;
    TBParametrosPAR_MAILADMIN: TStringField;
    TBParametrosPAR_MAILFROM: TStringField;
    TBParametrosPAR_MAILNAME: TStringField;
    TBParametrosPAR_MAILPASS: TStringField;
    TBParametrosPAR_MAILPORT: TIntegerField;
    TBParametrosPAR_MAILPREFIX: TStringField;
    TBParametrosPAR_MAILSMTP: TStringField;
    TBParametrosPAR_MAILUSER: TStringField;
    TBParametrosPAR_NOVOUSUARIO: TMemoField;
    TBParametrosPAR_REENVIAR: TMemoField;
    TBParametrosPAR_RESETARSENHA: TMemoField;
    TBParametrosPAR_SITENAME: TStringField;
    TBUsuarios: TFDQuery;
    TRUsuarios: TFDTransaction;
    UPUsuarios: TFDUpdateSQL;
    TBUsuariosUSU_ADMIN: TStringField;
    TBUsuariosUSU_APELIDO: TStringField;
    TBUsuariosUSU_AVATAR: TStringField;
    TBUsuariosUSU_CODIGO: TIntegerField;
    TBUsuariosUSU_CONFIRMACAO: TStringField;
    TBUsuariosUSU_CPF: TStringField;
    TBUsuariosUSU_DTATUALIZACAO: TDateField;
    TBUsuariosUSU_DTCADASTRO: TDateField;
    TBUsuariosUSU_EMAIL: TStringField;
    TBUsuariosUSU_FONE1: TStringField;
    TBUsuariosUSU_GESTOR: TStringField;
    TBUsuariosUSU_HASH: TStringField;
    TBUsuariosUSU_HRATUALIZACAO: TTimeField;
    TBUsuariosUSU_HRCADASTRO: TTimeField;
    TBUsuariosUSU_NOME: TStringField;
    TBUsuariosUSU_STATUS: TStringField;
    TBUsuemp: TFDQuery;
    TRUsuemp: TFDTransaction;
    UPUsuemp: TFDUpdateSQL;
    TBUsuempUSE_EMPRESA: TIntegerField;
    TBUsuempUSE_USUARIO: TIntegerField;
    TBUsuempUSE_ACESSO: TStringField;
    TBUsuempUSE_FIRENET: TStringField;
    TBUnidades: TFDQuery;
    TRUnidades: TFDTransaction;
    UPUnidades: TFDUpdateSQL;
    TBUnidadesUNI_CODIGO: TIntegerField;
    TBUnidadesUNI_DESCRICAO: TStringField;
    TBUnidadesUNI_LOGO: TStringField;
    Query1: TFDQuery;
    TRQuery1: TFDTransaction;
    Query2: TFDQuery;
    TRQuery2: TFDTransaction;
    TBUsuariosUSU_PASSWORD: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
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

procedure TDMAngus.FDConnection1BeforeConnect(Sender: TObject);
begin
  Variaveis('LOAD');

  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('User_Name='+BaseUsuario);
  FDConnection1.Params.Add('Password='+BaseSenha);
  FDConnection1.Params.Add('Database='+BaseBase);
  FDConnection1.Params.Add('Server='+BaseServidor);
  FDConnection1.Params.Add('Port=3050');
  FDConnection1.Params.Add('Protocol=TCPIP');
  FDConnection1.Params.Add('DriverID=FB');
end;

procedure TDMAngus.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := cndUpper; //campos no JSON em maiúsculas.
  TDataSetSerializeConfig.GetInstance.Import.DecimalSeparator := '.';

  FS:=TFormatSettings.Create;
  FS.ShortDateFormat:='dd/mm/yyyy';
//  Variaveis('LOAD');

  FDConnection1.Connected:=True;
end;

end.
