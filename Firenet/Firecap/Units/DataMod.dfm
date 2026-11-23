object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 267
  Width = 644
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet_oficial.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 16
  end
  object TBConsultas: TIBDataSet
    Database = IBDatabase1
    Transaction = TRConsultas
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONSULTAS'
      'where'
      '  COS_CODIGO = :OLD_COS_CODIGO')
    InsertSQL.Strings = (
      'insert into CONSULTAS'
      
        '  (COS_CODIGO, COS_CLIENTE, COS_CONVENIO, COS_MEDICO, COS_SOLICI' +
        'TANTE, '
      
        '   COS_DTATUALIZACAO, COS_DTCADASTRO, COS_DATAINICIO, COS_DATAFI' +
        'M, COS_HORAINICIO, '
      
        '   COS_HORAFIM, COS_STATUS, COS_USUARIO, COS_VALORTOTAL, COS_INI' +
        'CIO, COS_FIM)'
      'values'
      
        '  (:COS_CODIGO, :COS_CLIENTE, :COS_CONVENIO, :COS_MEDICO, :COS_S' +
        'OLICITANTE, '
      
        '   :COS_DTATUALIZACAO, :COS_DTCADASTRO, :COS_DATAINICIO, :COS_DA' +
        'TAFIM, '
      
        '   :COS_HORAINICIO, :COS_HORAFIM, :COS_STATUS, :COS_USUARIO, :CO' +
        'S_VALORTOTAL, '
      '   :COS_INICIO, :COS_FIM)')
    RefreshSQL.Strings = (
      'Select '
      '  COS_CODIGO,'
      '  COS_CLIENTE,'
      '  COS_CONVENIO,'
      '  COS_MEDICO,'
      '  COS_SOLICITANTE,'
      '  COS_DTATUALIZACAO,'
      '  COS_DTCADASTRO,'
      '  COS_DATAINICIO,'
      '  COS_DATAFIM,'
      '  COS_HORAINICIO,'
      '  COS_HORAFIM,'
      '  COS_STATUS,'
      '  COS_USUARIO,'
      '  COS_VALORTOTAL,'
      '  COS_INICIO,'
      '  COS_FIM'
      'from CONSULTAS '
      'where'
      '  COS_CODIGO = :COS_CODIGO')
    SelectSQL.Strings = (
      'select * from CONSULTAS'
      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO'
      'where COS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CONSULTAS'
      'set'
      '  COS_CODIGO = :COS_CODIGO,'
      '  COS_CLIENTE = :COS_CLIENTE,'
      '  COS_CONVENIO = :COS_CONVENIO,'
      '  COS_MEDICO = :COS_MEDICO,'
      '  COS_SOLICITANTE = :COS_SOLICITANTE,'
      '  COS_DTATUALIZACAO = :COS_DTATUALIZACAO,'
      '  COS_DTCADASTRO = :COS_DTCADASTRO,'
      '  COS_DATAINICIO = :COS_DATAINICIO,'
      '  COS_DATAFIM = :COS_DATAFIM,'
      '  COS_HORAINICIO = :COS_HORAINICIO,'
      '  COS_HORAFIM = :COS_HORAFIM,'
      '  COS_STATUS = :COS_STATUS,'
      '  COS_USUARIO = :COS_USUARIO,'
      '  COS_VALORTOTAL = :COS_VALORTOTAL,'
      '  COS_INICIO = :COS_INICIO,'
      '  COS_FIM = :COS_FIM'
      'where'
      '  COS_CODIGO = :OLD_COS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 40
    Top = 80
    object TBConsultasCOS_CODIGO: TIntegerField
      FieldName = 'COS_CODIGO'
      Origin = '"CONSULTAS"."COS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBConsultasCOS_CLIENTE: TIntegerField
      FieldName = 'COS_CLIENTE'
      Origin = '"CONSULTAS"."COS_CLIENTE"'
      Required = True
    end
    object TBConsultasCOS_CONVENIO: TIntegerField
      FieldName = 'COS_CONVENIO'
      Origin = '"CONSULTAS"."COS_CONVENIO"'
      Required = True
    end
    object TBConsultasCOS_DATAFIM: TDateField
      FieldName = 'COS_DATAFIM'
      Origin = 'CONSULTAS.COS_DATAFIM'
    end
    object TBConsultasCOS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
      Origin = 'CONSULTAS.COS_DATAINICIO'
    end
    object TBConsultasCOS_DTATUALIZACAO: TDateField
      FieldName = 'COS_DTATUALIZACAO'
      Origin = '"CONSULTAS"."COS_DTATUALIZACAO"'
    end
    object TBConsultasCOS_DTCADASTRO: TDateField
      FieldName = 'COS_DTCADASTRO'
      Origin = '"CONSULTAS"."COS_DTCADASTRO"'
    end
    object TBConsultasCOS_FIM: TDateTimeField
      FieldName = 'COS_FIM'
      Origin = 'CONSULTAS.COS_FIM'
    end
    object TBConsultasCOS_HORAFIM: TTimeField
      FieldName = 'COS_HORAFIM'
      Origin = 'CONSULTAS.COS_HORAFIM'
    end
    object TBConsultasCOS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
      Origin = 'CONSULTAS.COS_HORAINICIO'
    end
    object TBConsultasCOS_INICIO: TDateTimeField
      FieldName = 'COS_INICIO'
      Origin = 'CONSULTAS.COS_INICIO'
    end
    object TBConsultasCOS_MEDICO: TIntegerField
      FieldName = 'COS_MEDICO'
      Origin = '"CONSULTAS"."COS_MEDICO"'
      Required = True
    end
    object TBConsultasCOS_SOLICITANTE: TIntegerField
      FieldName = 'COS_SOLICITANTE'
      Origin = '"CONSULTAS"."COS_SOLICITANTE"'
      Required = True
    end
    object TBConsultasCOS_STATUS: TIBStringField
      FieldName = 'COS_STATUS'
      Origin = '"CONSULTAS"."COS_STATUS"'
      Size = 1
    end
    object TBConsultasCOS_USUARIO: TIBStringField
      FieldName = 'COS_USUARIO'
      Origin = '"CONSULTAS"."COS_USUARIO"'
    end
    object TBConsultasCOS_VALORTOTAL: TFMTBCDField
      FieldName = 'COS_VALORTOTAL'
      Origin = '"CONSULTAS"."COS_VALORTOTAL"'
      Precision = 18
    end
    object TBConsultasCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBConsultasCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
  end
  object TRConsultas: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 40
    Top = 176
  end
  object DSConsultas: TDataSource
    DataSet = TBConsultas
    OnDataChange = DSConsultasDataChange
    Left = 40
    Top = 128
  end
  object TBParametros: TIBDataSet
    Database = IBDatabase1
    Transaction = TRParametros
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select * from PARAMETROS'
      'where PAR_CODIGO=1')
    ParamCheck = True
    UniDirectional = False
    Left = 256
    Top = 80
    object TBParametrosPAR_LOCALIMAGENSCONSULTAS: TIBStringField
      FieldName = 'PAR_LOCALIMAGENSCONSULTAS'
      Origin = '"PARAMETROS"."PAR_LOCALIMAGENSCONSULTAS"'
      Size = 200
    end
    object TBParametrosPAR_IMPRIMIRLOGOTIPO: TIBStringField
      FieldName = 'PAR_IMPRIMIRLOGOTIPO'
      Origin = '"PARAMETROS"."PAR_IMPRIMIRLOGOTIPO"'
      Size = 1
    end
  end
  object TRParametros: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 256
    Top = 176
  end
  object DSParametros: TDataSource
    DataSet = TBParametros
    Left = 256
    Top = 128
  end
  object TBLocs: TIBDataSet
    Database = IBDatabase1
    Transaction = TRLocs
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCS'
      'where'
      '  LOS_CODIGO = :OLD_LOS_CODIGO')
    InsertSQL.Strings = (
      'insert into LOCS'
      '  (LOS_CODIGO, LOS_CAMPO, LOS_NOMEFORM, LOS_PICKLIST, LOS_TELA)'
      'values'
      
        '  (:LOS_CODIGO, :LOS_CAMPO, :LOS_NOMEFORM, :LOS_PICKLIST, :LOS_T' +
        'ELA)')
    RefreshSQL.Strings = (
      'Select '
      '  LOS_CODIGO,'
      '  LOS_CAMPO,'
      '  LOS_NOMEFORM,'
      '  LOS_PICKLIST,'
      '  LOS_TELA'
      'from LOCS '
      'where'
      '  LOS_CODIGO = :LOS_CODIGO')
    SelectSQL.Strings = (
      'select '
      'LOS_CAMPO,'
      'LOS_CODIGO,'
      'LOS_NOMEFORM,'
      'LOS_PICKLIST,'
      'LOS_TELA,'
      'TEL_NOMEFORM,'
      'TEL_STATUS'
      'from LOCS'
      'left join TELAS on LOS_NOMEFORM=TEL_NOMEFORM'
      'where TEL_STATUS='#39'A'#39' order by LOS_TELA')
    ModifySQL.Strings = (
      'update LOCS'
      'set'
      '  LOS_CODIGO = :LOS_CODIGO,'
      '  LOS_CAMPO = :LOS_CAMPO,'
      '  LOS_NOMEFORM = :LOS_NOMEFORM,'
      '  LOS_PICKLIST = :LOS_PICKLIST,'
      '  LOS_TELA = :LOS_TELA'
      'where'
      '  LOS_CODIGO = :OLD_LOS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 184
    Top = 80
    object TBLocsLOS_CODIGO: TIntegerField
      FieldName = 'LOS_CODIGO'
      Origin = '"LOCS"."LOS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBLocsLOS_CAMPO: TIBStringField
      FieldName = 'LOS_CAMPO'
      Origin = '"LOCS"."LOS_CAMPO"'
    end
    object TBLocsLOS_NOMEFORM: TIBStringField
      FieldName = 'LOS_NOMEFORM'
      Origin = '"LOCS"."LOS_NOMEFORM"'
      Size = 50
    end
    object TBLocsLOS_PICKLIST: TIBStringField
      FieldName = 'LOS_PICKLIST'
      Origin = '"LOCS"."LOS_PICKLIST"'
      Size = 120
    end
    object TBLocsLOS_TELA: TIBStringField
      FieldName = 'LOS_TELA'
      Origin = '"LOCS"."LOS_TELA"'
      Size = 50
    end
  end
  object TRLocs: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 184
    Top = 176
  end
  object DSLocs: TDataSource
    DataSet = TBLocs
    Left = 184
    Top = 128
  end
  object TBForms: TIBDataSet
    Database = IBDatabase1
    Transaction = TRForms
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMS'
      'where'
      '  FMS_CODIGO = :OLD_FMS_CODIGO')
    InsertSQL.Strings = (
      'insert into FORMS'
      
        '  (FMS_CODIGO, FMS_USUARIO, FMS_FORM, FMS_HEIGHT, FMS_LEFT, FMS_' +
        'TOP, FMS_WIDTH)'
      'values'
      
        '  (:FMS_CODIGO, :FMS_USUARIO, :FMS_FORM, :FMS_HEIGHT, :FMS_LEFT,' +
        ' :FMS_TOP, '
      '   :FMS_WIDTH)')
    RefreshSQL.Strings = (
      'Select '
      '  FMS_CODIGO,'
      '  FMS_USUARIO,'
      '  FMS_FORM,'
      '  FMS_HEIGHT,'
      '  FMS_LEFT,'
      '  FMS_TOP,'
      '  FMS_WIDTH'
      'from FORMS '
      'where'
      '  FMS_CODIGO = :FMS_CODIGO')
    SelectSQL.Strings = (
      'select * from FORMS')
    ModifySQL.Strings = (
      'update FORMS'
      'set'
      '  FMS_CODIGO = :FMS_CODIGO,'
      '  FMS_USUARIO = :FMS_USUARIO,'
      '  FMS_FORM = :FMS_FORM,'
      '  FMS_HEIGHT = :FMS_HEIGHT,'
      '  FMS_LEFT = :FMS_LEFT,'
      '  FMS_TOP = :FMS_TOP,'
      '  FMS_WIDTH = :FMS_WIDTH'
      'where'
      '  FMS_CODIGO = :OLD_FMS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 112
    Top = 80
    object TBFormsFMS_CODIGO: TIntegerField
      FieldName = 'FMS_CODIGO'
      Origin = '"FORMS"."FMS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFormsFMS_USUARIO: TIBStringField
      FieldName = 'FMS_USUARIO'
      Origin = '"FORMS"."FMS_USUARIO"'
    end
    object TBFormsFMS_FORM: TIBStringField
      FieldName = 'FMS_FORM'
      Origin = '"FORMS"."FMS_FORM"'
      Size = 50
    end
    object TBFormsFMS_HEIGHT: TIntegerField
      FieldName = 'FMS_HEIGHT'
      Origin = '"FORMS"."FMS_HEIGHT"'
    end
    object TBFormsFMS_LEFT: TIntegerField
      FieldName = 'FMS_LEFT'
      Origin = '"FORMS"."FMS_LEFT"'
    end
    object TBFormsFMS_TOP: TIntegerField
      FieldName = 'FMS_TOP'
      Origin = '"FORMS"."FMS_TOP"'
    end
    object TBFormsFMS_WIDTH: TIntegerField
      FieldName = 'FMS_WIDTH'
      Origin = '"FORMS"."FMS_WIDTH"'
    end
  end
  object TRForms: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 176
  end
  object DSForms: TDataSource
    DataSet = TBForms
    Left = 112
    Top = 128
  end
  object TBUsuarios: TIBDataSet
    Database = IBDatabase1
    Transaction = TRUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  USU_LOGIN = :OLD_USU_LOGIN')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (USU_LOGIN, USU_DTLOGIN, USU_EMAIL, USU_HRLOGIN, USU_LOGADO, U' +
        'SU_NOME, '
      '   USU_PASSWORD, USU_SENHAEXPIRADA, USU_STATUS, USU_VENDEDOR)'
      'values'
      
        '  (:USU_LOGIN, :USU_DTLOGIN, :USU_EMAIL, :USU_HRLOGIN, :USU_LOGA' +
        'DO, :USU_NOME, '
      
        '   :USU_PASSWORD, :USU_SENHAEXPIRADA, :USU_STATUS, :USU_VENDEDOR' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  USU_LOGIN,'
      '  USU_DTLOGIN,'
      '  USU_EMAIL,'
      '  USU_HRLOGIN,'
      '  USU_LOGADO,'
      '  USU_NOME,'
      '  USU_PASSWORD,'
      '  USU_SENHAEXPIRADA,'
      '  USU_STATUS,'
      '  USU_VENDEDOR'
      'from USUARIOS '
      'where'
      '  USU_LOGIN = :USU_LOGIN')
    SelectSQL.Strings = (
      'select '
      'USU_LOGIN, '
      'USU_LOGADO, '
      'USU_EMAIL, '
      'USU_NOME, '
      'USU_PASSWORD, '
      'USU_VENDEDOR, '
      'USU_SENHAEXPIRADA, '
      'USU_STATUS,'
      'USU_DTLOGIN,'
      'USU_HRLOGIN,'
      'VEN_NOME '
      'from USUARIOS'
      'left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO'
      'where USU_LOGIN=:codigo')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  USU_LOGIN = :USU_LOGIN,'
      '  USU_DTLOGIN = :USU_DTLOGIN,'
      '  USU_EMAIL = :USU_EMAIL,'
      '  USU_HRLOGIN = :USU_HRLOGIN,'
      '  USU_LOGADO = :USU_LOGADO,'
      '  USU_NOME = :USU_NOME,'
      '  USU_PASSWORD = :USU_PASSWORD,'
      '  USU_SENHAEXPIRADA = :USU_SENHAEXPIRADA,'
      '  USU_STATUS = :USU_STATUS,'
      '  USU_VENDEDOR = :USU_VENDEDOR'
      'where'
      '  USU_LOGIN = :OLD_USU_LOGIN')
    ParamCheck = True
    UniDirectional = False
    Left = 413
    Top = 80
    object TBUsuariosUSU_DTLOGIN: TDateField
      FieldName = 'USU_DTLOGIN'
      Origin = '"USUARIOS"."USU_DTLOGIN"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBUsuariosUSU_EMAIL: TIBStringField
      FieldName = 'USU_EMAIL'
      Origin = '"USUARIOS"."USU_EMAIL"'
      Size = 100
    end
    object TBUsuariosUSU_HRLOGIN: TTimeField
      FieldName = 'USU_HRLOGIN'
      Origin = '"USUARIOS"."USU_HRLOGIN"'
      EditMask = '!99:99:99;1;_'
    end
    object TBUsuariosUSU_LOGADO: TIBStringField
      FieldName = 'USU_LOGADO'
      Origin = '"USUARIOS"."USU_LOGADO"'
      Size = 1
    end
    object TBUsuariosUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = '"USUARIOS"."USU_LOGIN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuariosUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Origin = '"USUARIOS"."USU_NOME"'
      Size = 50
    end
    object TBUsuariosUSU_PASSWORD: TIBStringField
      FieldName = 'USU_PASSWORD'
      Origin = '"USUARIOS"."USU_PASSWORD"'
      Size = 40
    end
    object TBUsuariosUSU_SENHAEXPIRADA: TIBStringField
      FieldName = 'USU_SENHAEXPIRADA'
      Origin = '"USUARIOS"."USU_SENHAEXPIRADA"'
      Size = 1
    end
    object TBUsuariosUSU_STATUS: TIBStringField
      FieldName = 'USU_STATUS'
      Origin = '"USUARIOS"."USU_STATUS"'
      Size = 1
    end
    object TBUsuariosUSU_VENDEDOR: TIntegerField
      FieldName = 'USU_VENDEDOR'
      Origin = '"USUARIOS"."USU_VENDEDOR"'
    end
    object TBUsuariosVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSUsuarios: TDataSource
    DataSet = TBUsuarios
    Left = 413
    Top = 128
  end
  object TRUsuarios: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 413
    Top = 176
  end
  object QYDateTime: TIBQuery
    Database = IBDatabase1
    Transaction = TRDateTime
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT CAST('#39'NOW'#39' AS DATE) as DATA, CAST('#39'NOW'#39' AS TIME) as HORA ' +
        'FROM RDB$DATABASE')
    Left = 120
    Top = 16
    object QYDateTimeDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
    end
    object QYDateTimeHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = []
    end
  end
  object TRDateTime: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 152
    Top = 16
  end
  object TBSqls: TIBDataSet
    Database = IBDatabase1
    Transaction = TRSqls
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SQLS'
      'where'
      '  SQL_CODIGO = :OLD_SQL_CODIGO')
    InsertSQL.Strings = (
      'insert into SQLS'
      '  (SQL_CODIGO, SQL_FORM, SQL_QUERY, SQL_USUARIO)'
      'values'
      '  (:SQL_CODIGO, :SQL_FORM, :SQL_QUERY, :SQL_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  SQL_CODIGO,'
      '  SQL_FORM,'
      '  SQL_USUARIO,'
      '  SQL_QUERY'
      'from SQLS '
      'where'
      '  SQL_CODIGO = :SQL_CODIGO')
    SelectSQL.Strings = (
      'select * from SQLS')
    ModifySQL.Strings = (
      'update SQLS'
      'set'
      '  SQL_CODIGO = :SQL_CODIGO,'
      '  SQL_FORM = :SQL_FORM,'
      '  SQL_QUERY = :SQL_QUERY,'
      '  SQL_USUARIO = :SQL_USUARIO'
      'where'
      '  SQL_CODIGO = :OLD_SQL_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'SQL_CODIGO'
    GeneratorField.Generator = 'GEN_SQLS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 336
    Top = 80
    object TBSqlsSQL_CODIGO: TIntegerField
      FieldName = 'SQL_CODIGO'
      Origin = '"SQLS"."SQL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBSqlsSQL_FORM: TIBStringField
      FieldName = 'SQL_FORM'
      Origin = '"SQLS"."SQL_FORM"'
      Size = 50
    end
    object TBSqlsSQL_QUERY: TWideMemoField
      FieldName = 'SQL_QUERY'
      Origin = '"SQLS"."SQL_QUERY"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBSqlsSQL_USUARIO: TIBStringField
      FieldName = 'SQL_USUARIO'
      Origin = '"SQLS"."SQL_USUARIO"'
    end
  end
  object DSSqls: TDataSource
    DataSet = TBSqls
    Left = 336
    Top = 128
  end
  object TRSqls: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 336
    Top = 176
  end
  object TBVersao: TIBDataSet
    Database = IBDatabase1
    Transaction = TRVersao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VERSAO'
      'where'
      '  VER_VERSAOBASE = :OLD_VER_VERSAOBASE')
    InsertSQL.Strings = (
      'insert into VERSAO'
      '  (VER_VERSAOBASE)'
      'values'
      '  (:VER_VERSAOBASE)')
    RefreshSQL.Strings = (
      'Select '
      '  VER_VERSAOBASE'
      'from VERSAO '
      'where'
      '  VER_VERSAOBASE = :VER_VERSAOBASE')
    SelectSQL.Strings = (
      'select * from VERSAO')
    ModifySQL.Strings = (
      'update VERSAO'
      'set'
      '  VER_VERSAOBASE = :VER_VERSAOBASE'
      'where'
      '  VER_VERSAOBASE = :OLD_VER_VERSAOBASE')
    ParamCheck = True
    UniDirectional = False
    Left = 485
    Top = 80
    object TBVersaoVER_VERSAOBASE: TIBStringField
      FieldName = 'VER_VERSAOBASE'
      Origin = '"VERSAO"."VER_VERSAOBASE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object DSVersao: TDataSource
    DataSet = TBVersao
    Left = 485
    Top = 128
  end
  object TRVersao: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 485
    Top = 176
  end
  object TBEmpresa: TIBDataSet
    Database = IBDatabase1
    Transaction = TREmpresa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      
        '  (EMP_CODIGO, EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CIDADECODIGO' +
        ', EMP_CNAE, '
      
        '   EMP_CNPJ, EMP_CODIGOCLIENTE, EMP_CODIGOSISTEMA, EMP_CONTABILI' +
        'DADE, EMP_DATALIBERACAO, '
      
        '   EMP_DATAULTUTILIZACAO, EMP_DIASLIBERACAO, EMP_EMAIL, EMP_EMAI' +
        'LSUPORTE, '
      
        '   EMP_ENDERECO, EMP_ENQUADRAMENTO, EMP_ENQUADRAMENTOISS, EMP_ES' +
        'TADO, EMP_ESTADOCODIGO, '
      
        '   EMP_FONE1, EMP_FONE2, EMP_HOMEPAGE, EMP_IE, EMP_IM, EMP_LIBER' +
        'ADO, EMP_LIMITEMOBILES, '
      
        '   EMP_LIMITEUSUARIOS, EMP_NOME, EMP_NOMEFANTASIA, EMP_NOSSOBAIR' +
        'RO, EMP_NOSSOCEP, '
      
        '   EMP_NOSSOCIDADE, EMP_NOSSOCNPJ, EMP_NOSSOEMAIL, EMP_NOSSOENDE' +
        'RECO, EMP_NOSSOESTADO, '
      
        '   EMP_NOSSOFONE1, EMP_NOSSOFONE2, EMP_NOSSOIE, EMP_NOSSOIM, EMP' +
        '_NOSSONOME, '
      
        '   EMP_NOSSONUMERO, EMP_NOSSOSITE, EMP_NOSSOSITESENHA, EMP_NUMER' +
        'O, EMP_PAFLAUDO, '
      
        '   EMP_PAFMD5, EMP_PAFNOME, EMP_PAFVERSAO, EMP_PAIS, EMP_PAISCOD' +
        'IGO, EMP_SUPERSENHA)'
      'values'
      
        '  (:EMP_CODIGO, :EMP_BAIRRO, :EMP_CEP, :EMP_CIDADE, :EMP_CIDADEC' +
        'ODIGO, '
      
        '   :EMP_CNAE, :EMP_CNPJ, :EMP_CODIGOCLIENTE, :EMP_CODIGOSISTEMA,' +
        ' :EMP_CONTABILIDADE, '
      
        '   :EMP_DATALIBERACAO, :EMP_DATAULTUTILIZACAO, :EMP_DIASLIBERACA' +
        'O, :EMP_EMAIL, '
      
        '   :EMP_EMAILSUPORTE, :EMP_ENDERECO, :EMP_ENQUADRAMENTO, :EMP_EN' +
        'QUADRAMENTOISS, '
      
        '   :EMP_ESTADO, :EMP_ESTADOCODIGO, :EMP_FONE1, :EMP_FONE2, :EMP_' +
        'HOMEPAGE, '
      
        '   :EMP_IE, :EMP_IM, :EMP_LIBERADO, :EMP_LIMITEMOBILES, :EMP_LIM' +
        'ITEUSUARIOS, '
      
        '   :EMP_NOME, :EMP_NOMEFANTASIA, :EMP_NOSSOBAIRRO, :EMP_NOSSOCEP' +
        ', :EMP_NOSSOCIDADE, '
      
        '   :EMP_NOSSOCNPJ, :EMP_NOSSOEMAIL, :EMP_NOSSOENDERECO, :EMP_NOS' +
        'SOESTADO, '
      
        '   :EMP_NOSSOFONE1, :EMP_NOSSOFONE2, :EMP_NOSSOIE, :EMP_NOSSOIM,' +
        ' :EMP_NOSSONOME, '
      
        '   :EMP_NOSSONUMERO, :EMP_NOSSOSITE, :EMP_NOSSOSITESENHA, :EMP_N' +
        'UMERO, '
      
        '   :EMP_PAFLAUDO, :EMP_PAFMD5, :EMP_PAFNOME, :EMP_PAFVERSAO, :EM' +
        'P_PAIS, '
      '   :EMP_PAISCODIGO, :EMP_SUPERSENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  EMP_BAIRRO,'
      '  EMP_CEP,'
      '  EMP_CIDADE,'
      '  EMP_CIDADECODIGO,'
      '  EMP_CNAE,'
      '  EMP_CNPJ,'
      '  EMP_CODIGOCLIENTE,'
      '  EMP_CODIGOSISTEMA,'
      '  EMP_CONTABILIDADE,'
      '  EMP_DATALIBERACAO,'
      '  EMP_DATAULTUTILIZACAO,'
      '  EMP_DIASLIBERACAO,'
      '  EMP_EMAIL,'
      '  EMP_EMAILSUPORTE,'
      '  EMP_ENDERECO,'
      '  EMP_ENQUADRAMENTO,'
      '  EMP_ENQUADRAMENTOISS,'
      '  EMP_ESTADO,'
      '  EMP_ESTADOCODIGO,'
      '  EMP_FONE1,'
      '  EMP_FONE2,'
      '  EMP_HOMEPAGE,'
      '  EMP_IE,'
      '  EMP_IM,'
      '  EMP_LIBERADO,'
      '  EMP_LIMITEMOBILES,'
      '  EMP_LIMITEUSUARIOS,'
      '  EMP_NOME,'
      '  EMP_NOMEFANTASIA,'
      '  EMP_NOSSOBAIRRO,'
      '  EMP_NOSSOCEP,'
      '  EMP_NOSSOCIDADE,'
      '  EMP_NOSSOCNPJ,'
      '  EMP_NOSSOEMAIL,'
      '  EMP_NOSSOENDERECO,'
      '  EMP_NOSSOESTADO,'
      '  EMP_NOSSOFONE1,'
      '  EMP_NOSSOFONE2,'
      '  EMP_NOSSOIE,'
      '  EMP_NOSSOIM,'
      '  EMP_NOSSONOME,'
      '  EMP_NOSSONUMERO,'
      '  EMP_NOSSOSITE,'
      '  EMP_NOSSOSITESENHA,'
      '  EMP_NUMERO,'
      '  EMP_PAFLAUDO,'
      '  EMP_PAFMD5,'
      '  EMP_PAFNOME,'
      '  EMP_PAFVERSAO,'
      '  EMP_PAIS,'
      '  EMP_PAISCODIGO,'
      '  EMP_SUPERSENHA'
      'from EMPRESA '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO')
    SelectSQL.Strings = (
      'select * from EMPRESA')
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  EMP_BAIRRO = :EMP_BAIRRO,'
      '  EMP_CEP = :EMP_CEP,'
      '  EMP_CIDADE = :EMP_CIDADE,'
      '  EMP_CIDADECODIGO = :EMP_CIDADECODIGO,'
      '  EMP_CNAE = :EMP_CNAE,'
      '  EMP_CNPJ = :EMP_CNPJ,'
      '  EMP_CODIGOCLIENTE = :EMP_CODIGOCLIENTE,'
      '  EMP_CODIGOSISTEMA = :EMP_CODIGOSISTEMA,'
      '  EMP_CONTABILIDADE = :EMP_CONTABILIDADE,'
      '  EMP_DATALIBERACAO = :EMP_DATALIBERACAO,'
      '  EMP_DATAULTUTILIZACAO = :EMP_DATAULTUTILIZACAO,'
      '  EMP_DIASLIBERACAO = :EMP_DIASLIBERACAO,'
      '  EMP_EMAIL = :EMP_EMAIL,'
      '  EMP_EMAILSUPORTE = :EMP_EMAILSUPORTE,'
      '  EMP_ENDERECO = :EMP_ENDERECO,'
      '  EMP_ENQUADRAMENTO = :EMP_ENQUADRAMENTO,'
      '  EMP_ENQUADRAMENTOISS = :EMP_ENQUADRAMENTOISS,'
      '  EMP_ESTADO = :EMP_ESTADO,'
      '  EMP_ESTADOCODIGO = :EMP_ESTADOCODIGO,'
      '  EMP_FONE1 = :EMP_FONE1,'
      '  EMP_FONE2 = :EMP_FONE2,'
      '  EMP_HOMEPAGE = :EMP_HOMEPAGE,'
      '  EMP_IE = :EMP_IE,'
      '  EMP_IM = :EMP_IM,'
      '  EMP_LIBERADO = :EMP_LIBERADO,'
      '  EMP_LIMITEMOBILES = :EMP_LIMITEMOBILES,'
      '  EMP_LIMITEUSUARIOS = :EMP_LIMITEUSUARIOS,'
      '  EMP_NOME = :EMP_NOME,'
      '  EMP_NOMEFANTASIA = :EMP_NOMEFANTASIA,'
      '  EMP_NOSSOBAIRRO = :EMP_NOSSOBAIRRO,'
      '  EMP_NOSSOCEP = :EMP_NOSSOCEP,'
      '  EMP_NOSSOCIDADE = :EMP_NOSSOCIDADE,'
      '  EMP_NOSSOCNPJ = :EMP_NOSSOCNPJ,'
      '  EMP_NOSSOEMAIL = :EMP_NOSSOEMAIL,'
      '  EMP_NOSSOENDERECO = :EMP_NOSSOENDERECO,'
      '  EMP_NOSSOESTADO = :EMP_NOSSOESTADO,'
      '  EMP_NOSSOFONE1 = :EMP_NOSSOFONE1,'
      '  EMP_NOSSOFONE2 = :EMP_NOSSOFONE2,'
      '  EMP_NOSSOIE = :EMP_NOSSOIE,'
      '  EMP_NOSSOIM = :EMP_NOSSOIM,'
      '  EMP_NOSSONOME = :EMP_NOSSONOME,'
      '  EMP_NOSSONUMERO = :EMP_NOSSONUMERO,'
      '  EMP_NOSSOSITE = :EMP_NOSSOSITE,'
      '  EMP_NOSSOSITESENHA = :EMP_NOSSOSITESENHA,'
      '  EMP_NUMERO = :EMP_NUMERO,'
      '  EMP_PAFLAUDO = :EMP_PAFLAUDO,'
      '  EMP_PAFMD5 = :EMP_PAFMD5,'
      '  EMP_PAFNOME = :EMP_PAFNOME,'
      '  EMP_PAFVERSAO = :EMP_PAFVERSAO,'
      '  EMP_PAIS = :EMP_PAIS,'
      '  EMP_PAISCODIGO = :EMP_PAISCODIGO,'
      '  EMP_SUPERSENHA = :EMP_SUPERSENHA'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 557
    Top = 80
    object TBEmpresaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = '"EMPRESA"."EMP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmpresaEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = '"EMPRESA"."EMP_CNPJ"'
    end
    object TBEmpresaEMP_EMAIL: TIBStringField
      FieldName = 'EMP_EMAIL'
      Origin = '"EMPRESA"."EMP_EMAIL"'
      Size = 100
    end
    object TBEmpresaEMP_FONE1: TIBStringField
      FieldName = 'EMP_FONE1'
      Origin = '"EMPRESA"."EMP_FONE1"'
    end
    object TBEmpresaEMP_NOME: TIBStringField
      FieldName = 'EMP_NOME'
      Origin = '"EMPRESA"."EMP_NOME"'
      Size = 50
    end
  end
  object DSEmpresa: TDataSource
    DataSet = TBEmpresa
    Left = 557
    Top = 128
  end
  object TREmpresa: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 557
    Top = 176
  end
  object QYAux: TIBQuery
    Database = IBDatabase1
    Transaction = TRAux
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 232
    Top = 16
  end
  object TRAux: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 264
    Top = 16
  end
end
