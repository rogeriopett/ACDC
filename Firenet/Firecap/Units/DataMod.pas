unit DataMod;

interface

uses
  Vcl.Forms, System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBQuery, DateUtils, Dialogs;

  {Windows, DB, IdBaseComponent, IdMessage, IBScript, IBQuery, IBCustomDataSet,
  IBDatabase, IBDatabaseInfo, Dialogs, DateUtils,
  Graphics, System.UITypes;}

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    TBConsultas: TIBDataSet;
    TRConsultas: TIBTransaction;
    DSConsultas: TDataSource;
    TBParametros: TIBDataSet;
    TRParametros: TIBTransaction;
    DSParametros: TDataSource;
    TBParametrosPAR_LOCALIMAGENSCONSULTAS: TIBStringField;
    TBLocs: TIBDataSet;
    TRLocs: TIBTransaction;
    DSLocs: TDataSource;
    TBLocsLOS_CODIGO: TIntegerField;
    TBLocsLOS_CAMPO: TIBStringField;
    TBLocsLOS_NOMEFORM: TIBStringField;
    TBLocsLOS_PICKLIST: TIBStringField;
    TBLocsLOS_TELA: TIBStringField;
    TBForms: TIBDataSet;
    TRForms: TIBTransaction;
    DSForms: TDataSource;
    TBConsultasCOS_CODIGO: TIntegerField;
    TBConsultasCOS_CLIENTE: TIntegerField;
    TBConsultasCOS_CONVENIO: TIntegerField;
    TBConsultasCOS_DTATUALIZACAO: TDateField;
    TBConsultasCOS_DTCADASTRO: TDateField;
    TBConsultasCOS_MEDICO: TIntegerField;
    TBConsultasCOS_SOLICITANTE: TIntegerField;
    TBConsultasCOS_STATUS: TIBStringField;
    TBConsultasCOS_USUARIO: TIBStringField;
    TBConsultasCOS_VALORTOTAL: TFMTBCDField;
    TBUsuarios: TIBDataSet;
    TBUsuariosUSU_DTLOGIN: TDateField;
    TBUsuariosUSU_EMAIL: TIBStringField;
    TBUsuariosUSU_HRLOGIN: TTimeField;
    TBUsuariosUSU_LOGADO: TIBStringField;
    TBUsuariosUSU_LOGIN: TIBStringField;
    TBUsuariosUSU_NOME: TIBStringField;
    TBUsuariosUSU_PASSWORD: TIBStringField;
    TBUsuariosUSU_SENHAEXPIRADA: TIBStringField;
    TBUsuariosUSU_STATUS: TIBStringField;
    TBUsuariosUSU_VENDEDOR: TIntegerField;
    TBUsuariosVEN_NOME: TIBStringField;
    DSUsuarios: TDataSource;
    TRUsuarios: TIBTransaction;
    QYDateTime: TIBQuery;
    QYDateTimeDATA: TDateField;
    QYDateTimeHORA: TTimeField;
    TRDateTime: TIBTransaction;
    TBSqls: TIBDataSet;
    TBSqlsSQL_CODIGO: TIntegerField;
    TBSqlsSQL_FORM: TIBStringField;
    TBSqlsSQL_QUERY: TWideMemoField;
    TBSqlsSQL_USUARIO: TIBStringField;
    DSSqls: TDataSource;
    TRSqls: TIBTransaction;
    TBFormsFMS_CODIGO: TIntegerField;
    TBFormsFMS_USUARIO: TIBStringField;
    TBFormsFMS_FORM: TIBStringField;
    TBFormsFMS_HEIGHT: TIntegerField;
    TBFormsFMS_LEFT: TIntegerField;
    TBFormsFMS_TOP: TIntegerField;
    TBFormsFMS_WIDTH: TIntegerField;
    TBVersao: TIBDataSet;
    TBVersaoVER_VERSAOBASE: TIBStringField;
    DSVersao: TDataSource;
    TRVersao: TIBTransaction;
    TBConsultasCLI_NOME: TIBStringField;
    TBConsultasCLI_DTNASC: TDateField;
    TBParametrosPAR_IMPRIMIRLOGOTIPO: TIBStringField;
    TBEmpresa: TIBDataSet;
    DSEmpresa: TDataSource;
    TREmpresa: TIBTransaction;
    TBEmpresaEMP_CODIGO: TIntegerField;
    TBEmpresaEMP_CNPJ: TIBStringField;
    TBEmpresaEMP_EMAIL: TIBStringField;
    TBEmpresaEMP_FONE1: TIBStringField;
    TBEmpresaEMP_NOME: TIBStringField;
    QYAux: TIBQuery;
    TRAux: TIBTransaction;
    TBConsultasCOS_DATAINICIO: TDateField;
    TBConsultasCOS_DATAFIM: TDateField;
    TBConsultasCOS_HORAINICIO: TTimeField;
    TBConsultasCOS_HORAFIM: TTimeField;
    TBConsultasCOS_INICIO: TDateTimeField;
    TBConsultasCOS_FIM: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DSConsultasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirTabelas;
    procedure Variaveis(Acao: String);
    function ServerDate: TDate;
    function ServerTime: TTime;
  end;

var
  DM: TDM;
  BaseBase: String;
  BaseDescricao: String;
  BaseSenha: String;
  BaseServidor: String;
  BaseUsuario: String;
  ConexoesBases: String;
  ConexoesDescricoes: String;
  ConexoesSenhas: String;
  ConexoesServidores: String;
  ConexoesUsuarios: String;
  DefaultUser: String;
  FS: TFormatSettings;
  UsuarioLogado: String;
  UsuarioNome: String;
  UsuarioVendedor: Integer;

const
  ParamFile='Parametros.ini';
  ChaveSenha=240;
  ChaveSenhaNEW=12;

implementation
uses IniFiles, Funcoes1, Main;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.AbrirTabelas;
begin
  TBConsultas.Open;
  TBEmpresa.Open;
  TBForms.Open;
  TBLocs.Open;
  TBParametros.Open;
  TBSqls.Open;
  TBUsuarios.Open;
end;

procedure TDM.Variaveis(Acao: String);
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
    F.WriteString('USUARIOS','Default',DefaultUser);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    BaseBase               :=F.ReadString('BASE DE DADOS','Base',BaseBase);
    BaseDescricao          :=F.ReadString('BASE DE DADOS','Descricao',BaseDescricao);
    BaseSenha              :=F.ReadString('BASE DE DADOS','Senha',BaseSenha);
    BaseSenha              :=SenhaDecode(AnsiString(BaseSenha),ChaveSenhaNEW);
    BaseServidor           :=F.ReadString('BASE DE DADOS','Servidor',BaseServidor);
    BaseUsuario            :=F.ReadString('BASE DE DADOS','Usuario',BaseUsuario);

    ConexoesBases          :=F.ReadString('CONEXOES','Bases',ConexoesBases);
    ConexoesDescricoes     :=F.ReadString('CONEXOES','Descricoes',ConexoesDescricoes);
    ConexoesSenhas         :=F.ReadString('CONEXOES','Senhas',ConexoesSenhas);
    ConexoesServidores     :=F.ReadString('CONEXOES','Servidores',ConexoesServidores);
    ConexoesUsuarios       :=F.ReadString('CONEXOES','Usuarios',ConexoesUsuarios);
    DefaultUser            :=F.ReadString('USUARIOS','Default',DefaultUser);
  end;
  F.Free;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FS:=TFormatSettings.Create;
  FS.ShortDateFormat:='dd/mm/yyyy';
  Variaveis('LOAD');
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  IBDatabase1.Connected:=False;
end;

procedure TDM.DSConsultasDataChange(Sender: TObject; Field: TField);
var Pasta: String;
begin
  if FormMain<>nil then
  begin
    if not TBConsultas.IsEmpty then
    begin
      Pasta:=TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value+'\'+AlignText(IntToStr(TBConsultasCOS_CODIGO.Value),'0',8,taRight);
      if not ForceDirectories(Pasta) then
      begin
        MessageDlg('Não foi possível criar a pasta para armazenar as imagens.',mtError,[mbOk],0);
      end else
      FormMain.FileListBox1.Directory:=Pasta;
      FormMain.FileListBox1.Update;
      FormMain.FileListBox1.ItemIndex:=0;
      FormMain.FileListBox1Change(nil);
      if (not TBConsultasCLI_DTNASC.IsNull) and (TBConsultasCLI_DTNASC.Value<>StrToDate('30/12/1899')) then
      FormMain.Label11.Caption:=DateToStr(TBConsultasCLI_DTNASC.Value)+' - '+IntToStr(DateUtils.YearsBetween(Now,TBConsultasCLI_DTNASC.Value))+' anos.' else
      FormMain.Label11.Caption:='---';
    end;
  end;
end;

function TDM.ServerDate: TDate;
begin
  QYDateTime.Open;
  Result:=QYDateTimeDATA.Value;
  QYDateTime.Close;
end;

function TDM.ServerTime: TTime;
begin
  QYDateTime.Open;
  Result:=QYDateTimeHORA.Value;
  QYDateTime.Close;
end;

end.
