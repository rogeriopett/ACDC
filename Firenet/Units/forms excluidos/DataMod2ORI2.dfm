object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1059
  Width = 1470
  object TBClasses: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRClasses
    AfterDelete = TBClassesAfterDelete
    AfterInsert = TBClassesAfterInsert
    AfterPost = TBClassesAfterPost
    BeforeEdit = TBClassesBeforeEdit
    BeforeInsert = TBClassesBeforeInsert
    BeforePost = TBClassesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLASSES'
      'where'
      '  CLS_CODIGO = :OLD_CLS_CODIGO')
    InsertSQL.Strings = (
      'insert into CLASSES'
      
        '  (CLS_CODIGO, CLS_DESCRICAO, CLS_DTATUALIZACAO, CLS_DTCADASTRO,' +
        ' CLS_USUARIO)'
      'values'
      
        '  (:CLS_CODIGO, :CLS_DESCRICAO, :CLS_DTATUALIZACAO, :CLS_DTCADAS' +
        'TRO, :CLS_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CLS_CODIGO,'
      '  CLS_DESCRICAO,'
      '  CLS_DTCADASTRO,'
      '  CLS_DTATUALIZACAO,'
      '  CLS_USUARIO'
      'from CLASSES '
      'where'
      '  CLS_CODIGO = :CLS_CODIGO')
    SelectSQL.Strings = (
      'select * from CLASSES'
      'where CLS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CLASSES'
      'set'
      '  CLS_CODIGO = :CLS_CODIGO,'
      '  CLS_DESCRICAO = :CLS_DESCRICAO,'
      '  CLS_DTATUALIZACAO = :CLS_DTATUALIZACAO,'
      '  CLS_DTCADASTRO = :CLS_DTCADASTRO,'
      '  CLS_USUARIO = :CLS_USUARIO'
      'where'
      '  CLS_CODIGO = :OLD_CLS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CLS_CODIGO'
    GeneratorField.Generator = 'GEN_CLASSES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 800
    Top = 24
    object TBClassesCLS_CODIGO: TIntegerField
      FieldName = 'CLS_CODIGO'
      Origin = '"CLASSES"."CLS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClassesCLS_DESCRICAO: TIBStringField
      FieldName = 'CLS_DESCRICAO'
      Origin = '"CLASSES"."CLS_DESCRICAO"'
      Size = 50
    end
    object TBClassesCLS_DTATUALIZACAO: TDateField
      FieldName = 'CLS_DTATUALIZACAO'
      Origin = '"CLASSES"."CLS_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassesCLS_DTCADASTRO: TDateField
      FieldName = 'CLS_DTCADASTRO'
      Origin = '"CLASSES"."CLS_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassesCLS_USUARIO: TIBStringField
      FieldName = 'CLS_USUARIO'
      Origin = '"CLASSES"."CLS_USUARIO"'
    end
  end
  object DSClasses: TDataSource
    DataSet = TBClasses
    OnStateChange = DSClassesStateChange
    Left = 800
    Top = 72
  end
  object TRClasses: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 800
    Top = 120
  end
  object TBObjetos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRObjetos
    AfterDelete = TBObjetosAfterDelete
    AfterInsert = TBObjetosAfterInsert
    AfterPost = TBObjetosAfterPost
    BeforeEdit = TBObjetosBeforeEdit
    BeforeInsert = TBObjetosBeforeInsert
    BeforePost = TBObjetosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OBJETOS'
      'where'
      '  OBJ_CODIGO = :OLD_OBJ_CODIGO')
    InsertSQL.Strings = (
      'insert into OBJETOS'
      
        '  (OBJ_CLASSE, OBJ_CODIGO, OBJ_DESCRICAO, OBJ_DTATUALIZACAO, OBJ' +
        '_DTCADASTRO, '
      '   OBJ_MARCA, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_USUARIO)'
      'values'
      
        '  (:OBJ_CLASSE, :OBJ_CODIGO, :OBJ_DESCRICAO, :OBJ_DTATUALIZACAO,' +
        ' :OBJ_DTCADASTRO, '
      
        '   :OBJ_MARCA, :OBJ_MODELO, :OBJ_SERIAL, :OBJ_STATUS, :OBJ_USUAR' +
        'IO)')
    RefreshSQL.Strings = (
      'Select '
      '  OBJ_CODIGO,'
      '  OBJ_DESCRICAO,'
      '  OBJ_DTCADASTRO,'
      '  OBJ_CLASSE,'
      '  OBJ_MARCA,'
      '  OBJ_MODELO,'
      '  OBJ_SERIAL,'
      '  OBJ_DTATUALIZACAO,'
      '  OBJ_USUARIO,'
      '  OBJ_STATUS'
      'from OBJETOS '
      'where'
      '  OBJ_CODIGO = :OBJ_CODIGO')
    SelectSQL.Strings = (
      'select * from OBJETOS'
      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO'
      'left join MARCAS on OBJ_MARCA=MAR_CODIGO'
      'where OBJ_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update OBJETOS'
      'set'
      '  OBJ_CLASSE = :OBJ_CLASSE,'
      '  OBJ_CODIGO = :OBJ_CODIGO,'
      '  OBJ_DESCRICAO = :OBJ_DESCRICAO,'
      '  OBJ_DTATUALIZACAO = :OBJ_DTATUALIZACAO,'
      '  OBJ_DTCADASTRO = :OBJ_DTCADASTRO,'
      '  OBJ_MARCA = :OBJ_MARCA,'
      '  OBJ_MODELO = :OBJ_MODELO,'
      '  OBJ_SERIAL = :OBJ_SERIAL,'
      '  OBJ_STATUS = :OBJ_STATUS,'
      '  OBJ_USUARIO = :OBJ_USUARIO'
      'where'
      '  OBJ_CODIGO = :OLD_OBJ_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'OBJ_CODIGO'
    GeneratorField.Generator = 'GEN_OBJETOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 696
    object TBObjetosOBJ_CLASSE: TIntegerField
      FieldName = 'OBJ_CLASSE'
      Origin = '"OBJETOS"."OBJ_CLASSE"'
      Required = True
    end
    object TBObjetosOBJ_CODIGO: TIntegerField
      FieldName = 'OBJ_CODIGO'
      Origin = '"OBJETOS"."OBJ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBObjetosOBJ_DESCRICAO: TIBStringField
      FieldName = 'OBJ_DESCRICAO'
      Origin = '"OBJETOS"."OBJ_DESCRICAO"'
      Size = 50
    end
    object TBObjetosOBJ_DTATUALIZACAO: TDateField
      FieldName = 'OBJ_DTATUALIZACAO'
      Origin = '"OBJETOS"."OBJ_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBObjetosOBJ_DTCADASTRO: TDateField
      FieldName = 'OBJ_DTCADASTRO'
      Origin = '"OBJETOS"."OBJ_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBObjetosOBJ_MARCA: TIntegerField
      FieldName = 'OBJ_MARCA'
      Origin = '"OBJETOS"."OBJ_MARCA"'
      Required = True
    end
    object TBObjetosOBJ_MODELO: TIBStringField
      FieldName = 'OBJ_MODELO'
      Origin = '"OBJETOS"."OBJ_MODELO"'
      Size = 40
    end
    object TBObjetosOBJ_SERIAL: TIBStringField
      FieldName = 'OBJ_SERIAL'
      Origin = '"OBJETOS"."OBJ_SERIAL"'
      Size = 40
    end
    object TBObjetosOBJ_STATUS: TIBStringField
      FieldName = 'OBJ_STATUS'
      Origin = '"OBJETOS"."OBJ_STATUS"'
      Size = 1
    end
    object TBObjetosOBJ_USUARIO: TIBStringField
      FieldName = 'OBJ_USUARIO'
      Origin = '"OBJETOS"."OBJ_USUARIO"'
    end
    object TBObjetosCLS_DESCRICAO: TIBStringField
      FieldName = 'CLS_DESCRICAO'
      Origin = '"CLASSES"."CLS_DESCRICAO"'
      Size = 50
    end
    object TBObjetosMAR_DESCRICAO: TIBStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = '"MARCAS"."MAR_DESCRICAO"'
      Size = 50
    end
  end
  object DSObjetos: TDataSource
    DataSet = TBObjetos
    OnStateChange = DSObjetosStateChange
    Left = 32
    Top = 744
  end
  object TRObjetos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 792
  end
  object TBLocacoes: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRLocacoes
    AfterDelete = TBLocacoesAfterDelete
    AfterInsert = TBLocacoesAfterInsert
    AfterPost = TBLocacoesAfterPost
    BeforeInsert = TBLocacoesBeforeInsert
    BeforePost = TBLocacoesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCACOES'
      'where'
      '  LOC_CODIGO = :OLD_LOC_CODIGO')
    InsertSQL.Strings = (
      'insert into LOCACOES'
      
        '  (LOC_CODIGO, LOC_CLIENTE, LOC_ABERTOPOR, LOC_BAIXADOPOR, LOC_D' +
        'ATA, LOC_DATADEVOLUCAO, '
      
        '   LOC_DATAPREVISAO, LOC_DTATUALIZACAO, LOC_HORA, LOC_HORADEVOLU' +
        'CAO, LOC_OBJETO, '
      
        '   LOC_PAGO, LOC_STATUS, LOC_USUARIO, LOC_VALORTOTAL, LOC_VALORU' +
        'NITARIO)'
      'values'
      
        '  (:LOC_CODIGO, :LOC_CLIENTE, :LOC_ABERTOPOR, :LOC_BAIXADOPOR, :' +
        'LOC_DATA, '
      
        '   :LOC_DATADEVOLUCAO, :LOC_DATAPREVISAO, :LOC_DTATUALIZACAO, :L' +
        'OC_HORA, '
      
        '   :LOC_HORADEVOLUCAO, :LOC_OBJETO, :LOC_PAGO, :LOC_STATUS, :LOC' +
        '_USUARIO, '
      '   :LOC_VALORTOTAL, :LOC_VALORUNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  LOC_CODIGO,'
      '  LOC_CLIENTE,'
      '  LOC_ABERTOPOR,'
      '  LOC_BAIXADOPOR,'
      '  LOC_DATA,'
      '  LOC_DATADEVOLUCAO,'
      '  LOC_DATAPREVISAO,'
      '  LOC_DTATUALIZACAO,'
      '  LOC_HORA,'
      '  LOC_HORADEVOLUCAO,'
      '  LOC_OBJETO,'
      '  LOC_PAGO,'
      '  LOC_STATUS,'
      '  LOC_USUARIO,'
      '  LOC_VALORTOTAL,'
      '  LOC_VALORUNITARIO'
      'from LOCACOES '
      'where'
      '  LOC_CODIGO = :LOC_CODIGO')
    SelectSQL.Strings = (
      'select * from LOCACOES'
      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO'
      'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO'
      'where LOC_CLIENTE=:CLI_CODIGO and LOC_STATUS='#39'A'#39
      'order by LOC_CODIGO desc')
    ModifySQL.Strings = (
      'update LOCACOES'
      'set'
      '  LOC_CODIGO = :LOC_CODIGO,'
      '  LOC_CLIENTE = :LOC_CLIENTE,'
      '  LOC_ABERTOPOR = :LOC_ABERTOPOR,'
      '  LOC_BAIXADOPOR = :LOC_BAIXADOPOR,'
      '  LOC_DATA = :LOC_DATA,'
      '  LOC_DATADEVOLUCAO = :LOC_DATADEVOLUCAO,'
      '  LOC_DATAPREVISAO = :LOC_DATAPREVISAO,'
      '  LOC_DTATUALIZACAO = :LOC_DTATUALIZACAO,'
      '  LOC_HORA = :LOC_HORA,'
      '  LOC_HORADEVOLUCAO = :LOC_HORADEVOLUCAO,'
      '  LOC_OBJETO = :LOC_OBJETO,'
      '  LOC_PAGO = :LOC_PAGO,'
      '  LOC_STATUS = :LOC_STATUS,'
      '  LOC_USUARIO = :LOC_USUARIO,'
      '  LOC_VALORTOTAL = :LOC_VALORTOTAL,'
      '  LOC_VALORUNITARIO = :LOC_VALORUNITARIO'
      'where'
      '  LOC_CODIGO = :OLD_LOC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'LOC_CODIGO'
    GeneratorField.Generator = 'GEN_LOCACOES'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DM.DSClientes
    Left = 224
    Top = 488
    object TBLocacoesLOC_ABERTOPOR: TIBStringField
      FieldName = 'LOC_ABERTOPOR'
      Origin = '"LOCACOES"."LOC_ABERTOPOR"'
    end
    object TBLocacoesLOC_BAIXADOPOR: TIBStringField
      FieldName = 'LOC_BAIXADOPOR'
      Origin = '"LOCACOES"."LOC_BAIXADOPOR"'
    end
    object TBLocacoesLOC_CODIGO: TIntegerField
      FieldName = 'LOC_CODIGO'
      Origin = '"LOCACOES"."LOC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBLocacoesLOC_CLIENTE: TIntegerField
      FieldName = 'LOC_CLIENTE'
      Origin = '"LOCACOES"."LOC_CLIENTE"'
      Required = True
    end
    object TBLocacoesLOC_DATA: TDateField
      FieldName = 'LOC_DATA'
      Origin = '"LOCACOES"."LOC_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DATADEVOLUCAO: TDateField
      FieldName = 'LOC_DATADEVOLUCAO'
      Origin = '"LOCACOES"."LOC_DATADEVOLUCAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DATAPREVISAO: TDateField
      FieldName = 'LOC_DATAPREVISAO'
      Origin = '"LOCACOES"."LOC_DATAPREVISAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DTATUALIZACAO: TDateField
      FieldName = 'LOC_DTATUALIZACAO'
      Origin = '"LOCACOES"."LOC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_HORA: TIBStringField
      FieldName = 'LOC_HORA'
      Origin = '"LOCACOES"."LOC_HORA"'
      EditMask = '!99:99:99;1;_'
      Size = 25
    end
    object TBLocacoesLOC_HORADEVOLUCAO: TIBStringField
      FieldName = 'LOC_HORADEVOLUCAO'
      Origin = '"LOCACOES"."LOC_HORADEVOLUCAO"'
      EditMask = '!99:99:99;1;_'
      Size = 25
    end
    object TBLocacoesLOC_OBJETO: TIntegerField
      FieldName = 'LOC_OBJETO'
      Origin = '"LOCACOES"."LOC_OBJETO"'
    end
    object TBLocacoesLOC_PAGO: TIBStringField
      FieldName = 'LOC_PAGO'
      Origin = '"LOCACOES"."LOC_PAGO"'
      Size = 1
    end
    object TBLocacoesLOC_STATUS: TIBStringField
      FieldName = 'LOC_STATUS'
      Origin = '"LOCACOES"."LOC_STATUS"'
      Size = 1
    end
    object TBLocacoesLOC_USUARIO: TIBStringField
      FieldName = 'LOC_USUARIO'
      Origin = '"LOCACOES"."LOC_USUARIO"'
    end
    object TBLocacoesLOC_VALORTOTAL: TIBBCDField
      FieldName = 'LOC_VALORTOTAL'
      Origin = '"LOCACOES"."LOC_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBLocacoesLOC_VALORUNITARIO: TIBBCDField
      FieldName = 'LOC_VALORUNITARIO'
      Origin = '"LOCACOES"."LOC_VALORUNITARIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBLocacoesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBLocacoesOBJ_CODIGO: TIntegerField
      FieldName = 'OBJ_CODIGO'
      Origin = '"OBJETOS"."OBJ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBLocacoesOBJ_DESCRICAO: TIBStringField
      FieldName = 'OBJ_DESCRICAO'
      Origin = '"OBJETOS"."OBJ_DESCRICAO"'
      Size = 50
    end
  end
  object DSLocacoes: TDataSource
    DataSet = TBLocacoes
    Left = 224
    Top = 536
  end
  object TRLocacoes: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 584
  end
  object TBFases: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRFases
    AfterDelete = TBFasesAfterDelete
    AfterInsert = TBFasesAfterInsert
    AfterPost = TBFasesAfterPost
    BeforeEdit = TBFasesBeforeEdit
    BeforeInsert = TBFasesBeforeInsert
    BeforePost = TBFasesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FASES'
      'where'
      '  FAS_CODIGO = :OLD_FAS_CODIGO')
    InsertSQL.Strings = (
      'insert into FASES'
      
        '  (FAS_CODIGO, FAS_DESCRICAO, FAS_DTATUALIZACAO, FAS_DTCADASTRO,' +
        ' FAS_STATUS, '
      '   FAS_USUARIO)'
      'values'
      
        '  (:FAS_CODIGO, :FAS_DESCRICAO, :FAS_DTATUALIZACAO, :FAS_DTCADAS' +
        'TRO, :FAS_STATUS, '
      '   :FAS_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  FAS_CODIGO,'
      '  FAS_DESCRICAO,'
      '  FAS_STATUS,'
      '  FAS_DTCADASTRO,'
      '  FAS_DTATUALIZACAO,'
      '  FAS_USUARIO'
      'from FASES '
      'where'
      '  FAS_CODIGO = :FAS_CODIGO')
    SelectSQL.Strings = (
      'select * from FASES '
      'where FAS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update FASES'
      'set'
      '  FAS_CODIGO = :FAS_CODIGO,'
      '  FAS_DESCRICAO = :FAS_DESCRICAO,'
      '  FAS_DTATUALIZACAO = :FAS_DTATUALIZACAO,'
      '  FAS_DTCADASTRO = :FAS_DTCADASTRO,'
      '  FAS_STATUS = :FAS_STATUS,'
      '  FAS_USUARIO = :FAS_USUARIO'
      'where'
      '  FAS_CODIGO = :OLD_FAS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FAS_CODIGO'
    GeneratorField.Generator = 'GEN_FASES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 864
    Top = 280
    object TBFasesFAS_CODIGO: TIntegerField
      FieldName = 'FAS_CODIGO'
      Origin = '"FASES"."FAS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFasesFAS_DESCRICAO: TIBStringField
      FieldName = 'FAS_DESCRICAO'
      Origin = '"FASES"."FAS_DESCRICAO"'
      Size = 50
    end
    object TBFasesFAS_DTATUALIZACAO: TDateField
      FieldName = 'FAS_DTATUALIZACAO'
      Origin = '"FASES"."FAS_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFasesFAS_DTCADASTRO: TDateField
      FieldName = 'FAS_DTCADASTRO'
      Origin = '"FASES"."FAS_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFasesFAS_STATUS: TIBStringField
      FieldName = 'FAS_STATUS'
      Origin = '"FASES"."FAS_STATUS"'
      Size = 1
    end
    object TBFasesFAS_USUARIO: TIBStringField
      FieldName = 'FAS_USUARIO'
      Origin = '"FASES"."FAS_USUARIO"'
    end
  end
  object DSFases: TDataSource
    DataSet = TBFases
    OnStateChange = DSFasesStateChange
    Left = 864
    Top = 328
  end
  object TRFases: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 864
    Top = 376
  end
  object TBProjetosTipos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProjetosTipos
    AfterDelete = TBProjetosTiposAfterDelete
    AfterInsert = TBProjetosTiposAfterInsert
    AfterPost = TBProjetosTiposAfterPost
    BeforeEdit = TBProjetosTiposBeforeEdit
    BeforeInsert = TBProjetosTiposBeforeInsert
    BeforePost = TBProjetosTiposBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROJETOSTIPOS'
      'where'
      '  PJT_CODIGO = :OLD_PJT_CODIGO')
    InsertSQL.Strings = (
      'insert into PROJETOSTIPOS'
      
        '  (PJT_CODIGO, PJT_DESCRICAO, PJT_DTATUALIZACAO, PJT_DTCADASTRO,' +
        ' PJT_USUARIO)'
      'values'
      
        '  (:PJT_CODIGO, :PJT_DESCRICAO, :PJT_DTATUALIZACAO, :PJT_DTCADAS' +
        'TRO, :PJT_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PJT_CODIGO,'
      '  PJT_DESCRICAO,'
      '  PJT_DTCADASTRO,'
      '  PJT_DTATUALIZACAO,'
      '  PJT_USUARIO'
      'from PROJETOSTIPOS '
      'where'
      '  PJT_CODIGO = :PJT_CODIGO')
    SelectSQL.Strings = (
      'select * from PROJETOSTIPOS'
      'where PJT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PROJETOSTIPOS'
      'set'
      '  PJT_CODIGO = :PJT_CODIGO,'
      '  PJT_DESCRICAO = :PJT_DESCRICAO,'
      '  PJT_DTATUALIZACAO = :PJT_DTATUALIZACAO,'
      '  PJT_DTCADASTRO = :PJT_DTCADASTRO,'
      '  PJT_USUARIO = :PJT_USUARIO'
      'where'
      '  PJT_CODIGO = :OLD_PJT_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PJT_CODIGO'
    GeneratorField.Generator = 'GEN_PROJETOSTIPOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 736
    Top = 696
    object TBProjetosTiposPJT_CODIGO: TIntegerField
      FieldName = 'PJT_CODIGO'
      Origin = '"PROJETOSTIPOS"."PJT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProjetosTiposPJT_DESCRICAO: TIBStringField
      FieldName = 'PJT_DESCRICAO'
      Origin = '"PROJETOSTIPOS"."PJT_DESCRICAO"'
      Size = 50
    end
    object TBProjetosTiposPJT_DTATUALIZACAO: TDateField
      FieldName = 'PJT_DTATUALIZACAO'
      Origin = '"PROJETOSTIPOS"."PJT_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosTiposPJT_DTCADASTRO: TDateField
      FieldName = 'PJT_DTCADASTRO'
      Origin = '"PROJETOSTIPOS"."PJT_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosTiposPJT_USUARIO: TIBStringField
      FieldName = 'PJT_USUARIO'
      Origin = '"PROJETOSTIPOS"."PJT_USUARIO"'
    end
  end
  object DSProjetosTipos: TDataSource
    DataSet = TBProjetosTipos
    OnStateChange = DSProjetosTiposStateChange
    Left = 736
    Top = 744
  end
  object TRProjetosTipos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 792
  end
  object TBProjetos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProjetos
    AfterDelete = TBProjetosAfterDelete
    AfterInsert = TBProjetosAfterInsert
    AfterPost = TBProjetosAfterPost
    BeforeEdit = TBProjetosBeforeEdit
    BeforeInsert = TBProjetosBeforeInsert
    BeforePost = TBProjetosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROJETOS'
      'where'
      '  PRJ_CODIGO = :OLD_PRJ_CODIGO')
    InsertSQL.Strings = (
      'insert into PROJETOS'
      
        '  (PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_CODIGO, PRJ_DTAPRESENTACAO, P' +
        'RJ_DTAPRESENTACAOPREVISTA, '
      
        '   PRJ_DTATUALIZACAO, PRJ_DTCADASTRO, PRJ_DTENTREGA, PRJ_DTENTRE' +
        'GAPREVISTA, '
      
        '   PRJ_DTORCAMENTO, PRJ_DTORCAMENTOPREVISTO, PRJ_DTPROJETOCAD, P' +
        'RJ_DTPROJETOCADPREVISTO, '
      
        '   PRJ_DTVISITA, PRJ_DTVISITAPREVISTA, PRJ_NOME, PRJ_OBSERVACOES' +
        ', PRJ_STATUSAPRESENTACAO, '
      
        '   PRJ_STATUSORCAMENTO, PRJ_STATUSPRODUCAO, PRJ_STATUSPROJETO, P' +
        'RJ_STATUSPROJETOCAD, '
      
        '   PRJ_STATUSVISITA, PRJ_TABELAPRECO, PRJ_TIPO, PRJ_TOTALPRODUTO' +
        'S, PRJ_TOTALSERVICOS, '
      
        '   PRJ_USUARIO, PRJ_VALORTOTAL, PRJ_VALORTOTALCUSTO, PRJ_VALORTO' +
        'TALUP, '
      '   PRJ_VENDA)'
      'values'
      
        '  (:PRJ_ARQUITETO, :PRJ_CLIENTE, :PRJ_CODIGO, :PRJ_DTAPRESENTACA' +
        'O, :PRJ_DTAPRESENTACAOPREVISTA, '
      
        '   :PRJ_DTATUALIZACAO, :PRJ_DTCADASTRO, :PRJ_DTENTREGA, :PRJ_DTE' +
        'NTREGAPREVISTA, '
      
        '   :PRJ_DTORCAMENTO, :PRJ_DTORCAMENTOPREVISTO, :PRJ_DTPROJETOCAD' +
        ', :PRJ_DTPROJETOCADPREVISTO, '
      
        '   :PRJ_DTVISITA, :PRJ_DTVISITAPREVISTA, :PRJ_NOME, :PRJ_OBSERVA' +
        'COES, :PRJ_STATUSAPRESENTACAO, '
      
        '   :PRJ_STATUSORCAMENTO, :PRJ_STATUSPRODUCAO, :PRJ_STATUSPROJETO' +
        ', :PRJ_STATUSPROJETOCAD, '
      
        '   :PRJ_STATUSVISITA, :PRJ_TABELAPRECO, :PRJ_TIPO, :PRJ_TOTALPRO' +
        'DUTOS, '
      
        '   :PRJ_TOTALSERVICOS, :PRJ_USUARIO, :PRJ_VALORTOTAL, :PRJ_VALOR' +
        'TOTALCUSTO, '
      '   :PRJ_VALORTOTALUP, :PRJ_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  PRJ_CODIGO,'
      '  PRJ_NOME,'
      '  PRJ_DTVISITA,'
      '  PRJ_DTVISITAPREVISTA,'
      '  PRJ_DTCADASTRO,'
      '  PRJ_DTATUALIZACAO,'
      '  PRJ_DTAPRESENTACAO,'
      '  PRJ_DTAPRESENTACAOPREVISTA,'
      '  PRJ_DTORCAMENTO,'
      '  PRJ_DTORCAMENTOPREVISTO,'
      '  PRJ_DTENTREGA,'
      '  PRJ_DTENTREGAPREVISTA,'
      '  PRJ_DTPROJETOCAD,'
      '  PRJ_DTPROJETOCADPREVISTO,'
      '  PRJ_USUARIO,'
      '  PRJ_ARQUITETO,'
      '  PRJ_STATUSVISITA,'
      '  PRJ_STATUSORCAMENTO,'
      '  PRJ_STATUSAPRESENTACAO,'
      '  PRJ_STATUSPROJETO,'
      '  PRJ_STATUSPROJETOCAD,'
      '  PRJ_STATUSPRODUCAO,'
      '  PRJ_OBSERVACOES,'
      '  PRJ_TOTALPRODUTOS,'
      '  PRJ_TOTALSERVICOS,'
      '  PRJ_VALORTOTAL,'
      '  PRJ_VALORTOTALUP,'
      '  PRJ_TIPO,'
      '  PRJ_CLIENTE,'
      '  PRJ_TABELAPRECO,'
      '  PRJ_VALORTOTALCUSTO,'
      '  PRJ_VENDA'
      'from PROJETOS '
      'where'
      '  PRJ_CODIGO = :PRJ_CODIGO')
    SelectSQL.Strings = (
      'select '
      'PRJ_CODIGO,'
      'PRJ_NOME,'
      'PRJ_DTVISITA,'
      'PRJ_DTVISITAPREVISTA,'
      'PRJ_DTCADASTRO,'
      'PRJ_DTATUALIZACAO,'
      'PRJ_DTAPRESENTACAO,'
      'PRJ_DTAPRESENTACAOPREVISTA,'
      'PRJ_DTORCAMENTO,'
      'PRJ_DTORCAMENTOPREVISTO,'
      'PRJ_DTENTREGA,'
      'PRJ_DTENTREGAPREVISTA,'
      'PRJ_DTPROJETOCAD,'
      'PRJ_DTPROJETOCADPREVISTO,'
      'PRJ_DTPRIMEIROCONTATO,'
      'PRJ_USUARIO,'
      'PRJ_ARQUITETO,'
      'PRJ_STATUSVISITA,'
      'PRJ_STATUSORCAMENTO,'
      'PRJ_STATUSAPRESENTACAO,'
      'PRJ_STATUSPROJETO,'
      'PRJ_STATUSPROJETOCAD,'
      'PRJ_STATUSPRODUCAO,'
      'PRJ_OBSERVACOES,'
      'PRJ_TOTALPRODUTOS,'
      'PRJ_TOTALSERVICOS,'
      'PRJ_VALORTOTAL,'
      'PRJ_VALORTOTALUP,'
      'PRJ_TIPO,'
      'PRJ_CLIENTE,'
      'PRJ_TABELAPRECO,'
      'PRJ_VALORTOTALCUSTO,'
      'PRJ_VENDA,'
      'PJT_DESCRICAO,'
      'VEN_NOME,'
      'CLI_NOME'
      'from PROJETOS'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'where PRJ_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PROJETOS'
      'set'
      '  PRJ_ARQUITETO = :PRJ_ARQUITETO,'
      '  PRJ_CLIENTE = :PRJ_CLIENTE,'
      '  PRJ_CODIGO = :PRJ_CODIGO,'
      '  PRJ_DTAPRESENTACAO = :PRJ_DTAPRESENTACAO,'
      '  PRJ_DTAPRESENTACAOPREVISTA = :PRJ_DTAPRESENTACAOPREVISTA,'
      '  PRJ_DTATUALIZACAO = :PRJ_DTATUALIZACAO,'
      '  PRJ_DTCADASTRO = :PRJ_DTCADASTRO,'
      '  PRJ_DTENTREGA = :PRJ_DTENTREGA,'
      '  PRJ_DTENTREGAPREVISTA = :PRJ_DTENTREGAPREVISTA,'
      '  PRJ_DTORCAMENTO = :PRJ_DTORCAMENTO,'
      '  PRJ_DTORCAMENTOPREVISTO = :PRJ_DTORCAMENTOPREVISTO,'
      '  PRJ_DTPROJETOCAD = :PRJ_DTPROJETOCAD,'
      '  PRJ_DTPROJETOCADPREVISTO = :PRJ_DTPROJETOCADPREVISTO,'
      '  PRJ_DTVISITA = :PRJ_DTVISITA,'
      '  PRJ_DTVISITAPREVISTA = :PRJ_DTVISITAPREVISTA,'
      '  PRJ_NOME = :PRJ_NOME,'
      '  PRJ_OBSERVACOES = :PRJ_OBSERVACOES,'
      '  PRJ_STATUSAPRESENTACAO = :PRJ_STATUSAPRESENTACAO,'
      '  PRJ_STATUSORCAMENTO = :PRJ_STATUSORCAMENTO,'
      '  PRJ_STATUSPRODUCAO = :PRJ_STATUSPRODUCAO,'
      '  PRJ_STATUSPROJETO = :PRJ_STATUSPROJETO,'
      '  PRJ_STATUSPROJETOCAD = :PRJ_STATUSPROJETOCAD,'
      '  PRJ_STATUSVISITA = :PRJ_STATUSVISITA,'
      '  PRJ_TABELAPRECO = :PRJ_TABELAPRECO,'
      '  PRJ_TIPO = :PRJ_TIPO,'
      '  PRJ_TOTALPRODUTOS = :PRJ_TOTALPRODUTOS,'
      '  PRJ_TOTALSERVICOS = :PRJ_TOTALSERVICOS,'
      '  PRJ_USUARIO = :PRJ_USUARIO,'
      '  PRJ_VALORTOTAL = :PRJ_VALORTOTAL,'
      '  PRJ_VALORTOTALCUSTO = :PRJ_VALORTOTALCUSTO,'
      '  PRJ_VALORTOTALUP = :PRJ_VALORTOTALUP,'
      '  PRJ_VENDA = :PRJ_VENDA'
      'where'
      '  PRJ_CODIGO = :OLD_PRJ_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PRJ_CODIGO'
    GeneratorField.Generator = 'GEN_PROJETOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 480
    Top = 696
    object TBProjetosPRJ_ARQUITETO: TIntegerField
      FieldName = 'PRJ_ARQUITETO'
      Origin = '"PROJETOS"."PRJ_ARQUITETO"'
      Required = True
    end
    object TBProjetosPRJ_CLIENTE: TIntegerField
      FieldName = 'PRJ_CLIENTE'
      Origin = '"PROJETOS"."PRJ_CLIENTE"'
      Required = True
    end
    object TBProjetosPRJ_CODIGO: TIntegerField
      FieldName = 'PRJ_CODIGO'
      Origin = '"PROJETOS"."PRJ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProjetosPRJ_DTAPRESENTACAO: TDateField
      FieldName = 'PRJ_DTAPRESENTACAO'
      Origin = '"PROJETOS"."PRJ_DTAPRESENTACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTAPRESENTACAOPREVISTA: TDateField
      FieldName = 'PRJ_DTAPRESENTACAOPREVISTA'
      Origin = '"PROJETOS"."PRJ_DTAPRESENTACAOPREVISTA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTATUALIZACAO: TDateField
      FieldName = 'PRJ_DTATUALIZACAO'
      Origin = '"PROJETOS"."PRJ_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTCADASTRO: TDateField
      FieldName = 'PRJ_DTCADASTRO'
      Origin = '"PROJETOS"."PRJ_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTENTREGA: TDateField
      FieldName = 'PRJ_DTENTREGA'
      Origin = '"PROJETOS"."PRJ_DTENTREGA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTENTREGAPREVISTA: TDateField
      FieldName = 'PRJ_DTENTREGAPREVISTA'
      Origin = '"PROJETOS"."PRJ_DTENTREGAPREVISTA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTORCAMENTO: TDateField
      FieldName = 'PRJ_DTORCAMENTO'
      Origin = '"PROJETOS"."PRJ_DTORCAMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTORCAMENTOPREVISTO: TDateField
      FieldName = 'PRJ_DTORCAMENTOPREVISTO'
      Origin = '"PROJETOS"."PRJ_DTORCAMENTOPREVISTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPRIMEIROCONTATO: TDateField
      FieldName = 'PRJ_DTPRIMEIROCONTATO'
      Origin = '"PROJETOS"."PRJ_DTPRIMEIROCONTATO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPROJETOCAD: TDateField
      FieldName = 'PRJ_DTPROJETOCAD'
      Origin = '"PROJETOS"."PRJ_DTPROJETOCAD"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPROJETOCADPREVISTO: TDateField
      FieldName = 'PRJ_DTPROJETOCADPREVISTO'
      Origin = '"PROJETOS"."PRJ_DTPROJETOCADPREVISTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTVISITA: TDateField
      FieldName = 'PRJ_DTVISITA'
      Origin = '"PROJETOS"."PRJ_DTVISITA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTVISITAPREVISTA: TDateField
      FieldName = 'PRJ_DTVISITAPREVISTA'
      Origin = '"PROJETOS"."PRJ_DTVISITAPREVISTA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_NOME: TIBStringField
      FieldName = 'PRJ_NOME'
      Origin = '"PROJETOS"."PRJ_NOME"'
      Size = 50
    end
    object TBProjetosPRJ_OBSERVACOES: TMemoField
      FieldName = 'PRJ_OBSERVACOES'
      Origin = '"PROJETOS"."PRJ_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBProjetosPRJ_STATUSAPRESENTACAO: TIBStringField
      FieldName = 'PRJ_STATUSAPRESENTACAO'
      Origin = '"PROJETOS"."PRJ_STATUSAPRESENTACAO"'
    end
    object TBProjetosPRJ_STATUSORCAMENTO: TIBStringField
      FieldName = 'PRJ_STATUSORCAMENTO'
      Origin = '"PROJETOS"."PRJ_STATUSORCAMENTO"'
    end
    object TBProjetosPRJ_STATUSPRODUCAO: TIBStringField
      FieldName = 'PRJ_STATUSPRODUCAO'
      Origin = '"PROJETOS"."PRJ_STATUSPRODUCAO"'
    end
    object TBProjetosPRJ_STATUSPROJETO: TIBStringField
      FieldName = 'PRJ_STATUSPROJETO'
      Origin = '"PROJETOS"."PRJ_STATUSPROJETO"'
    end
    object TBProjetosPRJ_STATUSPROJETOCAD: TIBStringField
      FieldName = 'PRJ_STATUSPROJETOCAD'
      Origin = '"PROJETOS"."PRJ_STATUSPROJETOCAD"'
    end
    object TBProjetosPRJ_STATUSVISITA: TIBStringField
      FieldName = 'PRJ_STATUSVISITA'
      Origin = '"PROJETOS"."PRJ_STATUSVISITA"'
    end
    object TBProjetosPRJ_TABELAPRECO: TIBStringField
      FieldName = 'PRJ_TABELAPRECO'
      Origin = '"PROJETOS"."PRJ_TABELAPRECO"'
      Size = 1
    end
    object TBProjetosPRJ_TOTALPRODUTOS: TIBBCDField
      FieldName = 'PRJ_TOTALPRODUTOS'
      Origin = '"PROJETOS"."PRJ_TOTALPRODUTOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosPRJ_TOTALSERVICOS: TIBBCDField
      FieldName = 'PRJ_TOTALSERVICOS'
      Origin = '"PROJETOS"."PRJ_TOTALSERVICOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosPRJ_USUARIO: TIBStringField
      FieldName = 'PRJ_USUARIO'
      Origin = '"PROJETOS"."PRJ_USUARIO"'
    end
    object TBProjetosPRJ_VALORTOTAL: TIBBCDField
      FieldName = 'PRJ_VALORTOTAL'
      Origin = '"PROJETOS"."PRJ_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosPRJ_VALORTOTALCUSTO: TIBBCDField
      FieldName = 'PRJ_VALORTOTALCUSTO'
      Origin = '"PROJETOS"."PRJ_VALORTOTALCUSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosPRJ_VALORTOTALUP: TIBBCDField
      FieldName = 'PRJ_VALORTOTALUP'
      Origin = '"PROJETOS"."PRJ_VALORTOTALUP"'
      Precision = 18
      Size = 4
    end
    object TBProjetosPRJ_VENDA: TIntegerField
      FieldName = 'PRJ_VENDA'
      Origin = '"PROJETOS"."PRJ_VENDA"'
    end
    object TBProjetosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBProjetosPJT_DESCRICAO: TIBStringField
      FieldName = 'PJT_DESCRICAO'
      Origin = '"PROJETOSTIPOS"."PJT_DESCRICAO"'
      Size = 50
    end
    object TBProjetosPRJ_TIPO: TIntegerField
      FieldName = 'PRJ_TIPO'
      Origin = '"PROJETOS"."PRJ_TIPO"'
      Required = True
    end
    object TBProjetosVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSProjetos: TDataSource
    DataSet = TBProjetos
    OnStateChange = DSProjetosStateChange
    Left = 480
    Top = 744
  end
  object TRProjetos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 480
    Top = 792
  end
  object QYProjetosItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRProjetosItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(PJI_VALORTOTAL) as TOTALSERVICOS from PROJETOSITENS'
      'where PJI_TIPO='#39'S'#39' and PJI_PROJETO=:projeto')
    Left = 672
    Top = 840
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'projeto'
        ParamType = ptUnknown
      end>
  end
  object TBProjetosItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProjetosItens
    AfterDelete = TBProjetosItensAfterDelete
    AfterInsert = TBProjetosItensAfterInsert
    AfterPost = TBProjetosItensAfterPost
    BeforePost = TBProjetosItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROJETOSITENS'
      'where'
      '  PJI_CODIGO = :OLD_PJI_CODIGO')
    InsertSQL.Strings = (
      'insert into PROJETOSITENS'
      
        '  (PJI_CODIGO, PJI_DESCRICAO, PJI_PRECOCUSTO, PJI_PRECOCUSTOTOTA' +
        'L, PJI_PRODUTO, '
      
        '   PJI_PROJETO, PJI_QUANTIDADE, PJI_TIPO, PJI_UNIDADE, PJI_VALOR' +
        'TOTAL, '
      '   PJI_VALORUNIT)'
      'values'
      
        '  (:PJI_CODIGO, :PJI_DESCRICAO, :PJI_PRECOCUSTO, :PJI_PRECOCUSTO' +
        'TOTAL, '
      
        '   :PJI_PRODUTO, :PJI_PROJETO, :PJI_QUANTIDADE, :PJI_TIPO, :PJI_' +
        'UNIDADE, '
      '   :PJI_VALORTOTAL, :PJI_VALORUNIT)')
    RefreshSQL.Strings = (
      'Select '
      '  PJI_CODIGO,'
      '  PJI_PRODUTO,'
      '  PJI_PROJETO,'
      '  PJI_DESCRICAO,'
      '  PJI_QUANTIDADE,'
      '  PJI_TIPO,'
      '  PJI_UNIDADE,'
      '  PJI_VALORTOTAL,'
      '  PJI_VALORUNIT,'
      '  PJI_PRECOCUSTO,'
      '  PJI_PRECOCUSTOTOTAL'
      'from PROJETOSITENS '
      'where'
      '  PJI_CODIGO = :PJI_CODIGO')
    SelectSQL.Strings = (
      'select * from PROJETOSITENS '
      'left join PRODUTOS on PJI_PRODUTO=PRO_CODIGO'
      'where PJI_PROJETO=:PRJ_CODIGO')
    ModifySQL.Strings = (
      'update PROJETOSITENS'
      'set'
      '  PJI_CODIGO = :PJI_CODIGO,'
      '  PJI_DESCRICAO = :PJI_DESCRICAO,'
      '  PJI_PRECOCUSTO = :PJI_PRECOCUSTO,'
      '  PJI_PRECOCUSTOTOTAL = :PJI_PRECOCUSTOTOTAL,'
      '  PJI_PRODUTO = :PJI_PRODUTO,'
      '  PJI_PROJETO = :PJI_PROJETO,'
      '  PJI_QUANTIDADE = :PJI_QUANTIDADE,'
      '  PJI_TIPO = :PJI_TIPO,'
      '  PJI_UNIDADE = :PJI_UNIDADE,'
      '  PJI_VALORTOTAL = :PJI_VALORTOTAL,'
      '  PJI_VALORUNIT = :PJI_VALORUNIT'
      'where'
      '  PJI_CODIGO = :OLD_PJI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PJI_CODIGO'
    GeneratorField.Generator = 'GEN_PROJETOSITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProjetos
    Left = 672
    Top = 696
    object TBProjetosItensPJI_CODIGO: TIntegerField
      FieldName = 'PJI_CODIGO'
      Origin = '"PROJETOSITENS"."PJI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProjetosItensPJI_DESCRICAO: TIBStringField
      FieldName = 'PJI_DESCRICAO'
      Origin = '"PROJETOSITENS"."PJI_DESCRICAO"'
      Size = 100
    end
    object TBProjetosItensPJI_PRECOCUSTO: TIBBCDField
      FieldName = 'PJI_PRECOCUSTO'
      Origin = '"PROJETOSITENS"."PJI_PRECOCUSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosItensPJI_PRECOCUSTOTOTAL: TIBBCDField
      FieldName = 'PJI_PRECOCUSTOTOTAL'
      Origin = '"PROJETOSITENS"."PJI_PRECOCUSTOTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosItensPJI_PRODUTO: TIntegerField
      FieldName = 'PJI_PRODUTO'
      Origin = '"PROJETOSITENS"."PJI_PRODUTO"'
      Required = True
    end
    object TBProjetosItensPJI_PROJETO: TIntegerField
      FieldName = 'PJI_PROJETO'
      Origin = '"PROJETOSITENS"."PJI_PROJETO"'
      Required = True
    end
    object TBProjetosItensPJI_QUANTIDADE: TIBBCDField
      FieldName = 'PJI_QUANTIDADE'
      Origin = '"PROJETOSITENS"."PJI_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object TBProjetosItensPJI_TIPO: TIBStringField
      FieldName = 'PJI_TIPO'
      Origin = '"PROJETOSITENS"."PJI_TIPO"'
      Size = 1
    end
    object TBProjetosItensPJI_UNIDADE: TIBStringField
      FieldName = 'PJI_UNIDADE'
      Origin = '"PROJETOSITENS"."PJI_UNIDADE"'
      Size = 3
    end
    object TBProjetosItensPJI_VALORUNIT: TIBBCDField
      FieldName = 'PJI_VALORUNIT'
      Origin = '"PROJETOSITENS"."PJI_VALORUNIT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosItensPJI_VALORTOTAL: TIBBCDField
      FieldName = 'PJI_VALORTOTAL'
      Origin = '"PROJETOSITENS"."PJI_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProjetosItensPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosItensPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 100
    end
  end
  object DSProjetosItens: TDataSource
    DataSet = TBProjetosItens
    Left = 672
    Top = 744
  end
  object TRProjetosItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 672
    Top = 792
  end
  object TBProjetosHistorico: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProjetosHistorico
    AfterDelete = TBProjetosHistoricoAfterDelete
    AfterInsert = TBProjetosHistoricoAfterInsert
    AfterPost = TBProjetosHistoricoAfterPost
    BeforeEdit = TBProjetosHistoricoBeforeEdit
    BeforeInsert = TBProjetosHistoricoBeforeInsert
    BeforePost = TBProjetosHistoricoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROJETOSHISTORICO'
      'where'
      '  PJH_CODIGO = :OLD_PJH_CODIGO')
    InsertSQL.Strings = (
      'insert into PROJETOSHISTORICO'
      
        '  (PJH_CODIGO, PJH_DATA, PJH_DESCRICAO, PJH_DTATUALIZACAO, PJH_P' +
        'ROJETO, '
      '   PJH_USUARIO)'
      'values'
      
        '  (:PJH_CODIGO, :PJH_DATA, :PJH_DESCRICAO, :PJH_DTATUALIZACAO, :' +
        'PJH_PROJETO, '
      '   :PJH_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PJH_CODIGO,'
      '  PJH_PROJETO,'
      '  PJH_DATA,'
      '  PJH_DESCRICAO,'
      '  PJH_DTATUALIZACAO,'
      '  PJH_USUARIO'
      'from PROJETOSHISTORICO '
      'where'
      '  PJH_CODIGO = :PJH_CODIGO')
    SelectSQL.Strings = (
      'select * from PROJETOSHISTORICO'
      'where PJH_PROJETO=:PRJ_CODIGO order by PJH_CODIGO desc')
    ModifySQL.Strings = (
      'update PROJETOSHISTORICO'
      'set'
      '  PJH_CODIGO = :PJH_CODIGO,'
      '  PJH_DATA = :PJH_DATA,'
      '  PJH_DESCRICAO = :PJH_DESCRICAO,'
      '  PJH_DTATUALIZACAO = :PJH_DTATUALIZACAO,'
      '  PJH_PROJETO = :PJH_PROJETO,'
      '  PJH_USUARIO = :PJH_USUARIO'
      'where'
      '  PJH_CODIGO = :OLD_PJH_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PJH_CODIGO'
    GeneratorField.Generator = 'GEN_PROJETOSHISTORICO'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProjetos
    Left = 608
    Top = 696
    object TBProjetosHistoricoPJH_CODIGO: TIntegerField
      FieldName = 'PJH_CODIGO'
      Origin = '"PROJETOSHISTORICO"."PJH_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProjetosHistoricoPJH_DATA: TDateField
      FieldName = 'PJH_DATA'
      Origin = '"PROJETOSHISTORICO"."PJH_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosHistoricoPJH_DESCRICAO: TIBStringField
      FieldName = 'PJH_DESCRICAO'
      Origin = '"PROJETOSHISTORICO"."PJH_DESCRICAO"'
      Size = 120
    end
    object TBProjetosHistoricoPJH_DTATUALIZACAO: TDateField
      FieldName = 'PJH_DTATUALIZACAO'
      Origin = '"PROJETOSHISTORICO"."PJH_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosHistoricoPJH_PROJETO: TIntegerField
      FieldName = 'PJH_PROJETO'
      Origin = '"PROJETOSHISTORICO"."PJH_PROJETO"'
      Required = True
    end
    object TBProjetosHistoricoPJH_USUARIO: TIBStringField
      FieldName = 'PJH_USUARIO'
      Origin = '"PROJETOSHISTORICO"."PJH_USUARIO"'
    end
  end
  object DSProjetosHistorico: TDataSource
    DataSet = TBProjetosHistorico
    OnStateChange = DSProjetosHistoricoStateChange
    Left = 608
    Top = 744
  end
  object TRProjetosHistorico: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 608
    Top = 792
  end
  object TBProjetosFases: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProjetosFases
    AfterDelete = TBProjetosFasesAfterDelete
    AfterInsert = TBProjetosFasesAfterInsert
    AfterPost = TBProjetosFasesAfterPost
    BeforePost = TBProjetosFasesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROJETOSFASES'
      'where'
      '  PJF_CODIGO = :OLD_PJF_CODIGO')
    InsertSQL.Strings = (
      'insert into PROJETOSFASES'
      
        '  (PJF_BAIXADOPOR, PJF_CODIGO, PJF_DTATUALIZACAO, PJF_DTCADASTRO' +
        ', PJF_DTFIM, '
      
        '   PJF_DTINICIO, PJF_DTPREVISAO, PJF_FASE, PJF_PROJETO, PJF_STAT' +
        'US, PJF_USUARIO)'
      'values'
      
        '  (:PJF_BAIXADOPOR, :PJF_CODIGO, :PJF_DTATUALIZACAO, :PJF_DTCADA' +
        'STRO, :PJF_DTFIM, '
      
        '   :PJF_DTINICIO, :PJF_DTPREVISAO, :PJF_FASE, :PJF_PROJETO, :PJF' +
        '_STATUS, '
      '   :PJF_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PJF_CODIGO,'
      '  PJF_FASE,'
      '  PJF_PROJETO,'
      '  PJF_BAIXADOPOR,'
      '  PJF_DTATUALIZACAO,'
      '  PJF_DTCADASTRO,'
      '  PJF_DTFIM,'
      '  PJF_DTINICIO,'
      '  PJF_DTPREVISAO,'
      '  PJF_STATUS,'
      '  PJF_USUARIO'
      'from PROJETOSFASES '
      'where'
      '  PJF_CODIGO = :PJF_CODIGO')
    SelectSQL.Strings = (
      'select * from PROJETOSFASES'
      'left join FASES on PJF_FASE=FAS_CODIGO'
      'where PJF_PROJETO=:PRJ_CODIGO order by PJF_DTINICIO desc')
    ModifySQL.Strings = (
      'update PROJETOSFASES'
      'set'
      '  PJF_BAIXADOPOR = :PJF_BAIXADOPOR,'
      '  PJF_CODIGO = :PJF_CODIGO,'
      '  PJF_DTATUALIZACAO = :PJF_DTATUALIZACAO,'
      '  PJF_DTCADASTRO = :PJF_DTCADASTRO,'
      '  PJF_DTFIM = :PJF_DTFIM,'
      '  PJF_DTINICIO = :PJF_DTINICIO,'
      '  PJF_DTPREVISAO = :PJF_DTPREVISAO,'
      '  PJF_FASE = :PJF_FASE,'
      '  PJF_PROJETO = :PJF_PROJETO,'
      '  PJF_STATUS = :PJF_STATUS,'
      '  PJF_USUARIO = :PJF_USUARIO'
      'where'
      '  PJF_CODIGO = :OLD_PJF_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PJF_CODIGO'
    GeneratorField.Generator = 'GEN_PROJETOSFASES'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProjetos
    Left = 544
    Top = 696
    object TBProjetosFasesPJF_BAIXADOPOR: TIBStringField
      FieldName = 'PJF_BAIXADOPOR'
      Origin = '"PROJETOSFASES"."PJF_BAIXADOPOR"'
    end
    object TBProjetosFasesPJF_CODIGO: TIntegerField
      FieldName = 'PJF_CODIGO'
      Origin = '"PROJETOSFASES"."PJF_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProjetosFasesPJF_DTATUALIZACAO: TDateField
      FieldName = 'PJF_DTATUALIZACAO'
      Origin = '"PROJETOSFASES"."PJF_DTATUALIZACAO"'
    end
    object TBProjetosFasesPJF_DTCADASTRO: TDateField
      FieldName = 'PJF_DTCADASTRO'
      Origin = '"PROJETOSFASES"."PJF_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_DTINICIO: TDateField
      FieldName = 'PJF_DTINICIO'
      Origin = '"PROJETOSFASES"."PJF_DTINICIO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_DTFIM: TDateField
      FieldName = 'PJF_DTFIM'
      Origin = '"PROJETOSFASES"."PJF_DTFIM"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_DTPREVISAO: TDateField
      FieldName = 'PJF_DTPREVISAO'
      Origin = '"PROJETOSFASES"."PJF_DTPREVISAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_FASE: TIntegerField
      FieldName = 'PJF_FASE'
      Origin = '"PROJETOSFASES"."PJF_FASE"'
      Required = True
    end
    object TBProjetosFasesPJF_PROJETO: TIntegerField
      FieldName = 'PJF_PROJETO'
      Origin = '"PROJETOSFASES"."PJF_PROJETO"'
      Required = True
    end
    object TBProjetosFasesPJF_STATUS: TIBStringField
      FieldName = 'PJF_STATUS'
      Origin = '"PROJETOSFASES"."PJF_STATUS"'
      Size = 1
    end
    object TBProjetosFasesPJF_USUARIO: TIBStringField
      FieldName = 'PJF_USUARIO'
      Origin = '"PROJETOSFASES"."PJF_USUARIO"'
    end
    object TBProjetosFasesFAS_DESCRICAO: TIBStringField
      FieldName = 'FAS_DESCRICAO'
      Origin = '"FASES"."FAS_DESCRICAO"'
      Size = 50
    end
  end
  object DSProjetosFases: TDataSource
    DataSet = TBProjetosFases
    OnStateChange = DSProjetosFasesStateChange
    Left = 544
    Top = 744
  end
  object TRProjetosFases: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 544
    Top = 792
  end
  object TBPromissorias: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRPromissorias
    AfterDelete = TBPromissoriasAfterDelete
    AfterInsert = TBPromissoriasAfterInsert
    AfterPost = TBPromissoriasAfterPost
    BeforeEdit = TBPromissoriasBeforeEdit
    BeforeInsert = TBPromissoriasBeforeInsert
    BeforePost = TBPromissoriasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROMISSORIAS'
      'where'
      '  PRM_CODIGO = :OLD_PRM_CODIGO')
    InsertSQL.Strings = (
      'insert into PROMISSORIAS'
      
        '  (PRM_AVALISTA1, PRM_AVALISTA1CPF, PRM_AVALISTA2, PRM_AVALISTA2' +
        'CPF, PRM_CEDENTE, '
      
        '   PRM_CEDENTEBAIRRO, PRM_CEDENTECEP, PRM_CEDENTECNPJ, PRM_CEDEN' +
        'TEENDERECO, '
      
        '   PRM_CEDENTEFONE, PRM_CEDENTENUMERO, PRM_CODIGO, PRM_DTATUALIZ' +
        'ACAO, PRM_DTCADASTRO, '
      
        '   PRM_DTVENCIMENTO, PRM_MATRIZ, PRM_MULTIPLICADO, PRM_PARCELA, ' +
        'PRM_PARCELATOTAL, '
      
        '   PRM_SACADO, PRM_SACADOBAIRRO, PRM_SACADOCEP, PRM_SACADOCNPJ, ' +
        'PRM_SACADOENDERECO, '
      
        '   PRM_SACADOFONE, PRM_SACADONUMERO, PRM_STATUS, PRM_USUARIO, PR' +
        'M_VALOR, '
      '   PRM_VALORBAIXADO)'
      'values'
      
        '  (:PRM_AVALISTA1, :PRM_AVALISTA1CPF, :PRM_AVALISTA2, :PRM_AVALI' +
        'STA2CPF, '
      
        '   :PRM_CEDENTE, :PRM_CEDENTEBAIRRO, :PRM_CEDENTECEP, :PRM_CEDEN' +
        'TECNPJ, '
      
        '   :PRM_CEDENTEENDERECO, :PRM_CEDENTEFONE, :PRM_CEDENTENUMERO, :' +
        'PRM_CODIGO, '
      
        '   :PRM_DTATUALIZACAO, :PRM_DTCADASTRO, :PRM_DTVENCIMENTO, :PRM_' +
        'MATRIZ, '
      
        '   :PRM_MULTIPLICADO, :PRM_PARCELA, :PRM_PARCELATOTAL, :PRM_SACA' +
        'DO, :PRM_SACADOBAIRRO, '
      
        '   :PRM_SACADOCEP, :PRM_SACADOCNPJ, :PRM_SACADOENDERECO, :PRM_SA' +
        'CADOFONE, '
      
        '   :PRM_SACADONUMERO, :PRM_STATUS, :PRM_USUARIO, :PRM_VALOR, :PR' +
        'M_VALORBAIXADO)')
    RefreshSQL.Strings = (
      'Select '
      '  PRM_CODIGO,'
      '  PRM_DTVENCIMENTO,'
      '  PRM_VALOR,'
      '  PRM_VALORBAIXADO,'
      '  PRM_AVALISTA1,'
      '  PRM_AVALISTA1CPF,'
      '  PRM_AVALISTA2,'
      '  PRM_AVALISTA2CPF,'
      '  PRM_SACADO,'
      '  PRM_SACADOENDERECO,'
      '  PRM_SACADONUMERO,'
      '  PRM_SACADOBAIRRO,'
      '  PRM_SACADOCEP,'
      '  PRM_SACADOFONE,'
      '  PRM_SACADOCNPJ,'
      '  PRM_CEDENTE,'
      '  PRM_CEDENTEENDERECO,'
      '  PRM_CEDENTENUMERO,'
      '  PRM_CEDENTEBAIRRO,'
      '  PRM_CEDENTECEP,'
      '  PRM_CEDENTEFONE,'
      '  PRM_CEDENTECNPJ,'
      '  PRM_STATUS,'
      '  PRM_MATRIZ,'
      '  PRM_PARCELA,'
      '  PRM_PARCELATOTAL,'
      '  PRM_DTCADASTRO,'
      '  PRM_DTATUALIZACAO,'
      '  PRM_USUARIO,'
      '  PRM_MULTIPLICADO'
      'from PROMISSORIAS '
      'where'
      '  PRM_CODIGO = :PRM_CODIGO')
    SelectSQL.Strings = (
      'select * from PROMISSORIAS'
      'where PRM_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PROMISSORIAS'
      'set'
      '  PRM_AVALISTA1 = :PRM_AVALISTA1,'
      '  PRM_AVALISTA1CPF = :PRM_AVALISTA1CPF,'
      '  PRM_AVALISTA2 = :PRM_AVALISTA2,'
      '  PRM_AVALISTA2CPF = :PRM_AVALISTA2CPF,'
      '  PRM_CEDENTE = :PRM_CEDENTE,'
      '  PRM_CEDENTEBAIRRO = :PRM_CEDENTEBAIRRO,'
      '  PRM_CEDENTECEP = :PRM_CEDENTECEP,'
      '  PRM_CEDENTECNPJ = :PRM_CEDENTECNPJ,'
      '  PRM_CEDENTEENDERECO = :PRM_CEDENTEENDERECO,'
      '  PRM_CEDENTEFONE = :PRM_CEDENTEFONE,'
      '  PRM_CEDENTENUMERO = :PRM_CEDENTENUMERO,'
      '  PRM_CODIGO = :PRM_CODIGO,'
      '  PRM_DTATUALIZACAO = :PRM_DTATUALIZACAO,'
      '  PRM_DTCADASTRO = :PRM_DTCADASTRO,'
      '  PRM_DTVENCIMENTO = :PRM_DTVENCIMENTO,'
      '  PRM_MATRIZ = :PRM_MATRIZ,'
      '  PRM_MULTIPLICADO = :PRM_MULTIPLICADO,'
      '  PRM_PARCELA = :PRM_PARCELA,'
      '  PRM_PARCELATOTAL = :PRM_PARCELATOTAL,'
      '  PRM_SACADO = :PRM_SACADO,'
      '  PRM_SACADOBAIRRO = :PRM_SACADOBAIRRO,'
      '  PRM_SACADOCEP = :PRM_SACADOCEP,'
      '  PRM_SACADOCNPJ = :PRM_SACADOCNPJ,'
      '  PRM_SACADOENDERECO = :PRM_SACADOENDERECO,'
      '  PRM_SACADOFONE = :PRM_SACADOFONE,'
      '  PRM_SACADONUMERO = :PRM_SACADONUMERO,'
      '  PRM_STATUS = :PRM_STATUS,'
      '  PRM_USUARIO = :PRM_USUARIO,'
      '  PRM_VALOR = :PRM_VALOR,'
      '  PRM_VALORBAIXADO = :PRM_VALORBAIXADO'
      'where'
      '  PRM_CODIGO = :OLD_PRM_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PRM_CODIGO'
    GeneratorField.Generator = 'GEN_PROMISSORIAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 800
    Top = 696
    object TBPromissoriasPRM_AVALISTA1: TIBStringField
      FieldName = 'PRM_AVALISTA1'
      Origin = '"PROMISSORIAS"."PRM_AVALISTA1"'
      Size = 50
    end
    object TBPromissoriasPRM_AVALISTA1CPF: TIBStringField
      FieldName = 'PRM_AVALISTA1CPF'
      Origin = '"PROMISSORIAS"."PRM_AVALISTA1CPF"'
    end
    object TBPromissoriasPRM_AVALISTA2: TIBStringField
      FieldName = 'PRM_AVALISTA2'
      Origin = '"PROMISSORIAS"."PRM_AVALISTA2"'
      Size = 50
    end
    object TBPromissoriasPRM_AVALISTA2CPF: TIBStringField
      FieldName = 'PRM_AVALISTA2CPF'
      Origin = '"PROMISSORIAS"."PRM_AVALISTA2CPF"'
    end
    object TBPromissoriasPRM_CEDENTE: TIBStringField
      FieldName = 'PRM_CEDENTE'
      Origin = '"PROMISSORIAS"."PRM_CEDENTE"'
      Size = 50
    end
    object TBPromissoriasPRM_CEDENTEBAIRRO: TIBStringField
      FieldName = 'PRM_CEDENTEBAIRRO'
      Origin = '"PROMISSORIAS"."PRM_CEDENTEBAIRRO"'
      Size = 50
    end
    object TBPromissoriasPRM_CEDENTECEP: TIBStringField
      FieldName = 'PRM_CEDENTECEP'
      Origin = '"PROMISSORIAS"."PRM_CEDENTECEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBPromissoriasPRM_CEDENTECNPJ: TIBStringField
      FieldName = 'PRM_CEDENTECNPJ'
      Origin = '"PROMISSORIAS"."PRM_CEDENTECNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBPromissoriasPRM_CEDENTEENDERECO: TIBStringField
      FieldName = 'PRM_CEDENTEENDERECO'
      Origin = '"PROMISSORIAS"."PRM_CEDENTEENDERECO"'
      Size = 100
    end
    object TBPromissoriasPRM_CEDENTEFONE: TIBStringField
      FieldName = 'PRM_CEDENTEFONE'
      Origin = '"PROMISSORIAS"."PRM_CEDENTEFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBPromissoriasPRM_CEDENTENUMERO: TIBStringField
      FieldName = 'PRM_CEDENTENUMERO'
      Origin = '"PROMISSORIAS"."PRM_CEDENTENUMERO"'
      Size = 15
    end
    object TBPromissoriasPRM_CODIGO: TIntegerField
      FieldName = 'PRM_CODIGO'
      Origin = '"PROMISSORIAS"."PRM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPromissoriasPRM_DTATUALIZACAO: TDateField
      FieldName = 'PRM_DTATUALIZACAO'
      Origin = '"PROMISSORIAS"."PRM_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBPromissoriasPRM_DTCADASTRO: TDateField
      FieldName = 'PRM_DTCADASTRO'
      Origin = '"PROMISSORIAS"."PRM_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBPromissoriasPRM_DTVENCIMENTO: TDateField
      FieldName = 'PRM_DTVENCIMENTO'
      Origin = '"PROMISSORIAS"."PRM_DTVENCIMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBPromissoriasPRM_MATRIZ: TIBStringField
      FieldName = 'PRM_MATRIZ'
      Origin = '"PROMISSORIAS"."PRM_MATRIZ"'
      Size = 1
    end
    object TBPromissoriasPRM_MULTIPLICADO: TIBStringField
      FieldName = 'PRM_MULTIPLICADO'
      Origin = '"PROMISSORIAS"."PRM_MULTIPLICADO"'
      Size = 1
    end
    object TBPromissoriasPRM_PARCELA: TIntegerField
      FieldName = 'PRM_PARCELA'
      Origin = '"PROMISSORIAS"."PRM_PARCELA"'
    end
    object TBPromissoriasPRM_PARCELATOTAL: TIntegerField
      FieldName = 'PRM_PARCELATOTAL'
      Origin = '"PROMISSORIAS"."PRM_PARCELATOTAL"'
    end
    object TBPromissoriasPRM_SACADO: TIBStringField
      FieldName = 'PRM_SACADO'
      Origin = '"PROMISSORIAS"."PRM_SACADO"'
      Size = 50
    end
    object TBPromissoriasPRM_SACADOBAIRRO: TIBStringField
      FieldName = 'PRM_SACADOBAIRRO'
      Origin = '"PROMISSORIAS"."PRM_SACADOBAIRRO"'
      Size = 50
    end
    object TBPromissoriasPRM_SACADOCEP: TIBStringField
      FieldName = 'PRM_SACADOCEP'
      Origin = '"PROMISSORIAS"."PRM_SACADOCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBPromissoriasPRM_SACADOCNPJ: TIBStringField
      FieldName = 'PRM_SACADOCNPJ'
      Origin = '"PROMISSORIAS"."PRM_SACADOCNPJ"'
    end
    object TBPromissoriasPRM_SACADOENDERECO: TIBStringField
      FieldName = 'PRM_SACADOENDERECO'
      Origin = '"PROMISSORIAS"."PRM_SACADOENDERECO"'
      Size = 100
    end
    object TBPromissoriasPRM_SACADOFONE: TIBStringField
      FieldName = 'PRM_SACADOFONE'
      Origin = '"PROMISSORIAS"."PRM_SACADOFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBPromissoriasPRM_SACADONUMERO: TIBStringField
      FieldName = 'PRM_SACADONUMERO'
      Origin = '"PROMISSORIAS"."PRM_SACADONUMERO"'
      Size = 15
    end
    object TBPromissoriasPRM_STATUS: TIBStringField
      FieldName = 'PRM_STATUS'
      Origin = '"PROMISSORIAS"."PRM_STATUS"'
      Size = 1
    end
    object TBPromissoriasPRM_USUARIO: TIBStringField
      FieldName = 'PRM_USUARIO'
      Origin = '"PROMISSORIAS"."PRM_USUARIO"'
    end
    object TBPromissoriasPRM_VALOR: TIBBCDField
      FieldName = 'PRM_VALOR'
      Origin = '"PROMISSORIAS"."PRM_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBPromissoriasPRM_VALORBAIXADO: TIBBCDField
      FieldName = 'PRM_VALORBAIXADO'
      Origin = '"PROMISSORIAS"."PRM_VALORBAIXADO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSPromissorias: TDataSource
    DataSet = TBPromissorias
    OnStateChange = DSPromissoriasStateChange
    Left = 800
    Top = 744
  end
  object TRPromissorias: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 800
    Top = 792
  end
  object TBCheques: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCheques
    AfterDelete = TBChequesAfterDelete
    AfterInsert = TBChequesAfterInsert
    AfterPost = TBChequesAfterPost
    BeforeEdit = TBChequesBeforeEdit
    BeforeInsert = TBChequesBeforeInsert
    BeforePost = TBChequesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CHEQUES'
      'where'
      '  CHE_CODIGO = :OLD_CHE_CODIGO')
    InsertSQL.Strings = (
      'insert into CHEQUES'
      
        '  (CHE_AGENCIA, CHE_BANCO, CHE_BOMPARA, CHE_CLIENTE, CHE_CODIGO,' +
        ' CHE_CONTA, '
      
        '   CHE_DTATUALIZACAO, CHE_DTCADASTRO, CHE_ESPECIAL, CHE_NOME, CH' +
        'E_NUMERO, '
      
        '   CHE_OBSERVACOES, CHE_PREDATADO, CHE_STATUS, CHE_USUARIO, CHE_' +
        'VALOR)'
      'values'
      
        '  (:CHE_AGENCIA, :CHE_BANCO, :CHE_BOMPARA, :CHE_CLIENTE, :CHE_CO' +
        'DIGO, :CHE_CONTA, '
      
        '   :CHE_DTATUALIZACAO, :CHE_DTCADASTRO, :CHE_ESPECIAL, :CHE_NOME' +
        ', :CHE_NUMERO, '
      
        '   :CHE_OBSERVACOES, :CHE_PREDATADO, :CHE_STATUS, :CHE_USUARIO, ' +
        ':CHE_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CHE_CODIGO,'
      '  CHE_BANCO,'
      '  CHE_CLIENTE,'
      '  CHE_AGENCIA,'
      '  CHE_BOMPARA,'
      '  CHE_CONTA,'
      '  CHE_DTATUALIZACAO,'
      '  CHE_DTCADASTRO,'
      '  CHE_ESPECIAL,'
      '  CHE_NOME,'
      '  CHE_NUMERO,'
      '  CHE_PREDATADO,'
      '  CHE_STATUS,'
      '  CHE_USUARIO,'
      '  CHE_VALOR,'
      '  CHE_OBSERVACOES'
      'from CHEQUES '
      'where'
      '  CHE_CODIGO = :CHE_CODIGO')
    SelectSQL.Strings = (
      'select * from CHEQUES'
      'left join BANCOS on CHE_BANCO=BAN_CODIGO'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'where CHE_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CHEQUES'
      'set'
      '  CHE_AGENCIA = :CHE_AGENCIA,'
      '  CHE_BANCO = :CHE_BANCO,'
      '  CHE_BOMPARA = :CHE_BOMPARA,'
      '  CHE_CLIENTE = :CHE_CLIENTE,'
      '  CHE_CODIGO = :CHE_CODIGO,'
      '  CHE_CONTA = :CHE_CONTA,'
      '  CHE_DTATUALIZACAO = :CHE_DTATUALIZACAO,'
      '  CHE_DTCADASTRO = :CHE_DTCADASTRO,'
      '  CHE_ESPECIAL = :CHE_ESPECIAL,'
      '  CHE_NOME = :CHE_NOME,'
      '  CHE_NUMERO = :CHE_NUMERO,'
      '  CHE_OBSERVACOES = :CHE_OBSERVACOES,'
      '  CHE_PREDATADO = :CHE_PREDATADO,'
      '  CHE_STATUS = :CHE_STATUS,'
      '  CHE_USUARIO = :CHE_USUARIO,'
      '  CHE_VALOR = :CHE_VALOR'
      'where'
      '  CHE_CODIGO = :OLD_CHE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CHE_CODIGO'
    GeneratorField.Generator = 'GEN_CHEQUES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 736
    Top = 24
    object TBChequesCHE_AGENCIA: TIBStringField
      FieldName = 'CHE_AGENCIA'
      Origin = '"CHEQUES"."CHE_AGENCIA"'
      Size = 10
    end
    object TBChequesCHE_BANCO: TIntegerField
      FieldName = 'CHE_BANCO'
      Origin = '"CHEQUES"."CHE_BANCO"'
      Required = True
    end
    object TBChequesCHE_BOMPARA: TDateField
      FieldName = 'CHE_BOMPARA'
      Origin = '"CHEQUES"."CHE_BOMPARA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBChequesCHE_CLIENTE: TIntegerField
      FieldName = 'CHE_CLIENTE'
      Origin = '"CHEQUES"."CHE_CLIENTE"'
      Required = True
    end
    object TBChequesCHE_CODIGO: TIntegerField
      FieldName = 'CHE_CODIGO'
      Origin = '"CHEQUES"."CHE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBChequesCHE_CONTA: TIBStringField
      FieldName = 'CHE_CONTA'
      Origin = '"CHEQUES"."CHE_CONTA"'
      Size = 15
    end
    object TBChequesCHE_DTATUALIZACAO: TDateField
      FieldName = 'CHE_DTATUALIZACAO'
      Origin = '"CHEQUES"."CHE_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBChequesCHE_DTCADASTRO: TDateField
      FieldName = 'CHE_DTCADASTRO'
      Origin = '"CHEQUES"."CHE_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBChequesCHE_ESPECIAL: TIBStringField
      FieldName = 'CHE_ESPECIAL'
      Origin = '"CHEQUES"."CHE_ESPECIAL"'
      Size = 1
    end
    object TBChequesCHE_NOME: TIBStringField
      FieldName = 'CHE_NOME'
      Origin = '"CHEQUES"."CHE_NOME"'
      Size = 50
    end
    object TBChequesCHE_NUMERO: TIntegerField
      FieldName = 'CHE_NUMERO'
      Origin = '"CHEQUES"."CHE_NUMERO"'
    end
    object TBChequesCHE_OBSERVACOES: TWideMemoField
      FieldName = 'CHE_OBSERVACOES'
      Origin = '"CHEQUES"."CHE_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBChequesCHE_PREDATADO: TIBStringField
      FieldName = 'CHE_PREDATADO'
      Origin = '"CHEQUES"."CHE_PREDATADO"'
      Size = 1
    end
    object TBChequesCHE_STATUS: TIBStringField
      FieldName = 'CHE_STATUS'
      Origin = '"CHEQUES"."CHE_STATUS"'
      Size = 1
    end
    object TBChequesCHE_USUARIO: TIBStringField
      FieldName = 'CHE_USUARIO'
      Origin = '"CHEQUES"."CHE_USUARIO"'
    end
    object TBChequesCHE_VALOR: TIBBCDField
      FieldName = 'CHE_VALOR'
      Origin = '"CHEQUES"."CHE_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBChequesBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = '"BANCOS"."BAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBChequesBAN_NOME: TIBStringField
      FieldName = 'BAN_NOME'
      Origin = '"BANCOS"."BAN_NOME"'
      Size = 50
    end
    object TBChequesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBChequesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object DSCheques: TDataSource
    DataSet = TBCheques
    OnStateChange = DSChequesStateChange
    Left = 736
    Top = 72
  end
  object TRCheques: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 120
  end
  object TBBancos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRBancos
    AfterDelete = TBBancosAfterDelete
    AfterInsert = TBBancosAfterInsert
    AfterPost = TBBancosAfterPost
    BeforeEdit = TBBancosBeforeEdit
    BeforeInsert = TBBancosBeforeInsert
    BeforePost = TBBancosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BANCOS'
      'where'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    InsertSQL.Strings = (
      'insert into BANCOS'
      
        '  (BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, BAN_NOME, BAN_' +
        'STATUS, '
      '   BAN_USUARIO)'
      'values'
      
        '  (:BAN_CODIGO, :BAN_DTATUALIZACAO, :BAN_DTCADASTRO, :BAN_NOME, ' +
        ':BAN_STATUS, '
      '   :BAN_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  BAN_CODIGO,'
      '  BAN_NOME,'
      '  BAN_STATUS,'
      '  BAN_DTCADASTRO,'
      '  BAN_DTATUALIZACAO,'
      '  BAN_USUARIO'
      'from BANCOS '
      'where'
      '  BAN_CODIGO = :BAN_CODIGO')
    SelectSQL.Strings = (
      'select * from BANCOS'
      'where BAN_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update BANCOS'
      'set'
      '  BAN_CODIGO = :BAN_CODIGO,'
      '  BAN_DTATUALIZACAO = :BAN_DTATUALIZACAO,'
      '  BAN_DTCADASTRO = :BAN_DTCADASTRO,'
      '  BAN_NOME = :BAN_NOME,'
      '  BAN_STATUS = :BAN_STATUS,'
      '  BAN_USUARIO = :BAN_USUARIO'
      'where'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 352
    Top = 24
    object TBBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = '"BANCOS"."BAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBancosBAN_DTATUALIZACAO: TDateField
      FieldName = 'BAN_DTATUALIZACAO'
      Origin = '"BANCOS"."BAN_DTATUALIZACAO"'
    end
    object TBBancosBAN_DTCADASTRO: TDateField
      FieldName = 'BAN_DTCADASTRO'
      Origin = '"BANCOS"."BAN_DTCADASTRO"'
    end
    object TBBancosBAN_NOME: TIBStringField
      FieldName = 'BAN_NOME'
      Origin = '"BANCOS"."BAN_NOME"'
      Size = 50
    end
    object TBBancosBAN_STATUS: TIBStringField
      FieldName = 'BAN_STATUS'
      Origin = '"BANCOS"."BAN_STATUS"'
      Size = 1
    end
    object TBBancosBAN_USUARIO: TIBStringField
      FieldName = 'BAN_USUARIO'
      Origin = '"BANCOS"."BAN_USUARIO"'
    end
  end
  object DSBancos: TDataSource
    DataSet = TBBancos
    OnStateChange = DSBancosStateChange
    Left = 352
    Top = 72
  end
  object TRBancos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 120
  end
  object TBTeleVendas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRTeleVendas
    AfterDelete = TBTeleVendasAfterDelete
    AfterEdit = TBTeleVendasAfterEdit
    AfterInsert = TBTeleVendasAfterInsert
    AfterPost = TBTeleVendasAfterPost
    BeforeEdit = TBTeleVendasBeforeEdit
    BeforeInsert = TBTeleVendasBeforeInsert
    BeforePost = TBTeleVendasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TELEVENDAS'
      'where'
      '  TEV_CODIGO = :OLD_TEV_CODIGO')
    InsertSQL.Strings = (
      'insert into TELEVENDAS'
      
        '  (TEV_CODIGO, TEV_CLIENTE, TEV_BAIXADOPOR, TEV_DATA, TEV_DATABA' +
        'IXA, TEV_DATAPROX, '
      
        '   TEV_DEMODATA, TEV_DEMOHORA, TEV_DTATUALIZACAO, TEV_HORAPROX, ' +
        'TEV_HORARIO, '
      
        '   TEV_OBSERVACOES, TEV_REAGENDADO, TEV_STATUS, TEV_USUARIO, TEV' +
        '_VENDEDOR, '
      '   TEV_VENDA)'
      'values'
      
        '  (:TEV_CODIGO, :TEV_CLIENTE, :TEV_BAIXADOPOR, :TEV_DATA, :TEV_D' +
        'ATABAIXA, '
      
        '   :TEV_DATAPROX, :TEV_DEMODATA, :TEV_DEMOHORA, :TEV_DTATUALIZAC' +
        'AO, :TEV_HORAPROX, '
      
        '   :TEV_HORARIO, :TEV_OBSERVACOES, :TEV_REAGENDADO, :TEV_STATUS,' +
        ' :TEV_USUARIO, '
      '   :TEV_VENDEDOR, :TEV_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  TEV_CODIGO,'
      '  TEV_CLIENTE,'
      '  TEV_BAIXADOPOR,'
      '  TEV_DATA,'
      '  TEV_DATABAIXA,'
      '  TEV_DATAPROX,'
      '  TEV_DEMODATA,'
      '  TEV_DEMOHORA,'
      '  TEV_DTATUALIZACAO,'
      '  TEV_HORAPROX,'
      '  TEV_HORARIO,'
      '  TEV_OBSERVACOES,'
      '  TEV_REAGENDADO,'
      '  TEV_STATUS,'
      '  TEV_USUARIO,'
      '  TEV_VENDEDOR,'
      '  TEV_VENDA'
      'from TELEVENDAS '
      'where'
      '  TEV_CODIGO = :TEV_CODIGO')
    SelectSQL.Strings = (
      'select * from TELEVENDAS'
      'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO'
      'where TEV_CLIENTE=:CLI_CODIGO'
      'order by TEV_DATA desc')
    ModifySQL.Strings = (
      'update TELEVENDAS'
      'set'
      '  TEV_CODIGO = :TEV_CODIGO,'
      '  TEV_CLIENTE = :TEV_CLIENTE,'
      '  TEV_BAIXADOPOR = :TEV_BAIXADOPOR,'
      '  TEV_DATA = :TEV_DATA,'
      '  TEV_DATABAIXA = :TEV_DATABAIXA,'
      '  TEV_DATAPROX = :TEV_DATAPROX,'
      '  TEV_DEMODATA = :TEV_DEMODATA,'
      '  TEV_DEMOHORA = :TEV_DEMOHORA,'
      '  TEV_DTATUALIZACAO = :TEV_DTATUALIZACAO,'
      '  TEV_HORAPROX = :TEV_HORAPROX,'
      '  TEV_HORARIO = :TEV_HORARIO,'
      '  TEV_OBSERVACOES = :TEV_OBSERVACOES,'
      '  TEV_REAGENDADO = :TEV_REAGENDADO,'
      '  TEV_STATUS = :TEV_STATUS,'
      '  TEV_USUARIO = :TEV_USUARIO,'
      '  TEV_VENDEDOR = :TEV_VENDEDOR,'
      '  TEV_VENDA = :TEV_VENDA'
      'where'
      '  TEV_CODIGO = :OLD_TEV_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'TEV_CODIGO'
    GeneratorField.Generator = 'GEN_TELEVENDAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DM.DSClientes
    Left = 1120
    Top = 696
    object TBTeleVendasTEV_BAIXADOPOR: TIBStringField
      FieldName = 'TEV_BAIXADOPOR'
      Origin = '"TELEVENDAS"."TEV_BAIXADOPOR"'
    end
    object TBTeleVendasTEV_CODIGO: TIntegerField
      FieldName = 'TEV_CODIGO'
      Origin = '"TELEVENDAS"."TEV_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBTeleVendasTEV_CLIENTE: TIntegerField
      FieldName = 'TEV_CLIENTE'
      Origin = '"TELEVENDAS"."TEV_CLIENTE"'
      Required = True
    end
    object TBTeleVendasTEV_DATA: TDateField
      FieldName = 'TEV_DATA'
      Origin = '"TELEVENDAS"."TEV_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTeleVendasTEV_DATABAIXA: TDateField
      FieldName = 'TEV_DATABAIXA'
      Origin = '"TELEVENDAS"."TEV_DATABAIXA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTeleVendasTEV_DATAPROX: TDateField
      FieldName = 'TEV_DATAPROX'
      Origin = '"TELEVENDAS"."TEV_DATAPROX"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTeleVendasTEV_DEMODATA: TDateField
      FieldName = 'TEV_DEMODATA'
      Origin = '"TELEVENDAS"."TEV_DEMODATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTeleVendasTEV_DEMOHORA: TTimeField
      FieldName = 'TEV_DEMOHORA'
      Origin = '"TELEVENDAS"."TEV_DEMOHORA"'
      EditMask = '!99:99;1;_'
    end
    object TBTeleVendasTEV_DTATUALIZACAO: TDateField
      FieldName = 'TEV_DTATUALIZACAO'
      Origin = '"TELEVENDAS"."TEV_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTeleVendasTEV_HORAPROX: TTimeField
      FieldName = 'TEV_HORAPROX'
      Origin = '"TELEVENDAS"."TEV_HORAPROX"'
      EditMask = '!00:00:00;1;_'
    end
    object TBTeleVendasTEV_HORARIO: TIBStringField
      FieldName = 'TEV_HORARIO'
      Origin = '"TELEVENDAS"."TEV_HORARIO"'
      Size = 25
    end
    object TBTeleVendasTEV_OBSERVACOES: TMemoField
      FieldName = 'TEV_OBSERVACOES'
      Origin = '"TELEVENDAS"."TEV_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBTeleVendasTEV_REAGENDADO: TIBStringField
      FieldName = 'TEV_REAGENDADO'
      Origin = '"TELEVENDAS"."TEV_REAGENDADO"'
      Size = 1
    end
    object TBTeleVendasTEV_STATUS: TIBStringField
      FieldName = 'TEV_STATUS'
      Origin = '"TELEVENDAS"."TEV_STATUS"'
      Size = 1
    end
    object TBTeleVendasTEV_USUARIO: TIBStringField
      FieldName = 'TEV_USUARIO'
      Origin = '"TELEVENDAS"."TEV_USUARIO"'
    end
    object TBTeleVendasTEV_VENDA: TIntegerField
      FieldName = 'TEV_VENDA'
      Origin = '"TELEVENDAS"."TEV_VENDA"'
    end
    object TBTeleVendasTEV_VENDEDOR: TIntegerField
      FieldName = 'TEV_VENDEDOR'
      Origin = '"TELEVENDAS"."TEV_VENDEDOR"'
      Required = True
    end
    object TBTeleVendasCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTeleVendasCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBTeleVendasVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = '"VENDEDORES"."VEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTeleVendasVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSTeleVendas: TDataSource
    DataSet = TBTeleVendas
    OnStateChange = DSTeleVendasStateChange
    OnDataChange = DSTeleVendasDataChange
    Left = 1120
    Top = 744
  end
  object TRTeleVendas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1120
    Top = 792
  end
  object TBVeiculos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRVeiculos
    AfterDelete = TBVeiculosAfterDelete
    AfterInsert = TBVeiculosAfterInsert
    AfterPost = TBVeiculosAfterPost
    BeforeEdit = TBVeiculosBeforeEdit
    BeforeInsert = TBVeiculosBeforeInsert
    BeforePost = TBVeiculosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VEICULOS'
      'where'
      '  VEL_CODIGO = :OLD_VEL_CODIGO')
    InsertSQL.Strings = (
      'insert into VEICULOS'
      
        '  (VEL_CODIGO, VEL_DESCRICAO, VEL_DTATUALIZACAO, VEL_DTCADASTRO,' +
        ' VEL_STATUS, '
      '   VEL_USUARIO)'
      'values'
      
        '  (:VEL_CODIGO, :VEL_DESCRICAO, :VEL_DTATUALIZACAO, :VEL_DTCADAS' +
        'TRO, :VEL_STATUS, '
      '   :VEL_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  VEL_CODIGO,'
      '  VEL_DESCRICAO,'
      '  VEL_STATUS,'
      '  VEL_DTCADASTRO,'
      '  VEL_DTATUALIZACAO,'
      '  VEL_USUARIO'
      'from VEICULOS '
      'where'
      '  VEL_CODIGO = :VEL_CODIGO')
    SelectSQL.Strings = (
      'select * from VEICULOS'
      'where VEL_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update VEICULOS'
      'set'
      '  VEL_CODIGO = :VEL_CODIGO,'
      '  VEL_DESCRICAO = :VEL_DESCRICAO,'
      '  VEL_DTATUALIZACAO = :VEL_DTATUALIZACAO,'
      '  VEL_DTCADASTRO = :VEL_DTCADASTRO,'
      '  VEL_STATUS = :VEL_STATUS,'
      '  VEL_USUARIO = :VEL_USUARIO'
      'where'
      '  VEL_CODIGO = :OLD_VEL_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'VEL_CODIGO'
    GeneratorField.Generator = 'GEN_VEICULOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1312
    Top = 696
    object TBVeiculosVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = '"VEICULOS"."VEL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVeiculosVEL_DESCRICAO: TIBStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = '"VEICULOS"."VEL_DESCRICAO"'
      Size = 50
    end
    object TBVeiculosVEL_DTATUALIZACAO: TDateField
      FieldName = 'VEL_DTATUALIZACAO'
      Origin = '"VEICULOS"."VEL_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVEL_DTCADASTRO: TDateField
      FieldName = 'VEL_DTCADASTRO'
      Origin = '"VEICULOS"."VEL_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVEL_STATUS: TIBStringField
      FieldName = 'VEL_STATUS'
      Origin = '"VEICULOS"."VEL_STATUS"'
      Size = 1
    end
    object TBVeiculosVEL_USUARIO: TIBStringField
      FieldName = 'VEL_USUARIO'
      Origin = '"VEICULOS"."VEL_USUARIO"'
    end
  end
  object DSVeiculos: TDataSource
    DataSet = TBVeiculos
    OnStateChange = DSVeiculosStateChange
    Left = 1312
    Top = 744
  end
  object TRVeiculos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1312
    Top = 792
  end
  object TBOpcionais: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TROpcionais
    AfterDelete = TBOpcionaisAfterDelete
    AfterInsert = TBOpcionaisAfterInsert
    AfterPost = TBOpcionaisAfterPost
    BeforeEdit = TBOpcionaisBeforeEdit
    BeforeInsert = TBOpcionaisBeforeInsert
    BeforePost = TBOpcionaisBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OPCIONAIS'
      'where'
      '  OPC_CODIGO = :OLD_OPC_CODIGO')
    InsertSQL.Strings = (
      'insert into OPCIONAIS'
      
        '  (OPC_CODIGO, OPC_DESCRICAO, OPC_DTATUALIZACAO, OPC_DTCADASTRO,' +
        ' OPC_USUARIO)'
      'values'
      
        '  (:OPC_CODIGO, :OPC_DESCRICAO, :OPC_DTATUALIZACAO, :OPC_DTCADAS' +
        'TRO, :OPC_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  OPC_CODIGO,'
      '  OPC_DESCRICAO,'
      '  OPC_DTCADASTRO,'
      '  OPC_USUARIO,'
      '  OPC_DTATUALIZACAO'
      'from OPCIONAIS '
      'where'
      '  OPC_CODIGO = :OPC_CODIGO')
    SelectSQL.Strings = (
      'select * from OPCIONAIS'
      'where OPC_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update OPCIONAIS'
      'set'
      '  OPC_CODIGO = :OPC_CODIGO,'
      '  OPC_DESCRICAO = :OPC_DESCRICAO,'
      '  OPC_DTATUALIZACAO = :OPC_DTATUALIZACAO,'
      '  OPC_DTCADASTRO = :OPC_DTCADASTRO,'
      '  OPC_USUARIO = :OPC_USUARIO'
      'where'
      '  OPC_CODIGO = :OLD_OPC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'OPC_CODIGO'
    GeneratorField.Generator = 'GEN_OPCIONAIS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 696
    object TBOpcionaisOPC_CODIGO: TIntegerField
      FieldName = 'OPC_CODIGO'
      Origin = '"OPCIONAIS"."OPC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBOpcionaisOPC_DESCRICAO: TIBStringField
      FieldName = 'OPC_DESCRICAO'
      Origin = '"OPCIONAIS"."OPC_DESCRICAO"'
      Size = 50
    end
    object TBOpcionaisOPC_DTATUALIZACAO: TDateField
      FieldName = 'OPC_DTATUALIZACAO'
      Origin = '"OPCIONAIS"."OPC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBOpcionaisOPC_DTCADASTRO: TDateField
      FieldName = 'OPC_DTCADASTRO'
      Origin = '"OPCIONAIS"."OPC_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBOpcionaisOPC_USUARIO: TIBStringField
      FieldName = 'OPC_USUARIO'
      Origin = '"OPCIONAIS"."OPC_USUARIO"'
    end
  end
  object DSOpcionais: TDataSource
    DataSet = TBOpcionais
    OnStateChange = DSOpcionaisStateChange
    Left = 96
    Top = 744
  end
  object TROpcionais: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 792
  end
  object TBClassificados: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRClassificados
    AfterDelete = TBClassificadosAfterDelete
    AfterInsert = TBClassificadosAfterInsert
    AfterPost = TBClassificadosAfterPost
    BeforeEdit = TBClassificadosBeforeEdit
    BeforeInsert = TBClassificadosBeforeInsert
    BeforePost = TBClassificadosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLASSIFICADOS'
      'where'
      '  CLA_CODIGO = :OLD_CLA_CODIGO')
    InsertSQL.Strings = (
      'insert into CLASSIFICADOS'
      
        '  (CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CLIENTE, CLA_CODIG' +
        'O, CLA_COR, '
      
        '   CLA_DTATUALIZACAO, CLA_DTCADASTRO, CLA_FONE1, CLA_FONE2, CLA_' +
        'NOME, CLA_OBJETIVO, '
      '   CLA_OBSERVACOES, CLA_USUARIO, CLA_VEICULO)'
      'values'
      
        '  (:CLA_ANOFAB, :CLA_ANOMOD, :CLA_CATEGORIA, :CLA_CLIENTE, :CLA_' +
        'CODIGO, '
      
        '   :CLA_COR, :CLA_DTATUALIZACAO, :CLA_DTCADASTRO, :CLA_FONE1, :C' +
        'LA_FONE2, '
      
        '   :CLA_NOME, :CLA_OBJETIVO, :CLA_OBSERVACOES, :CLA_USUARIO, :CL' +
        'A_VEICULO)')
    RefreshSQL.Strings = (
      'Select '
      '  CLA_CODIGO,'
      '  CLA_CLIENTE,'
      '  CLA_VEICULO,'
      '  CLA_NOME,'
      '  CLA_FONE1,'
      '  CLA_FONE2,'
      '  CLA_OBJETIVO,'
      '  CLA_OBSERVACOES,'
      '  CLA_CATEGORIA,'
      '  CLA_ANOFAB,'
      '  CLA_ANOMOD,'
      '  CLA_COR,'
      '  CLA_DTCADASTRO,'
      '  CLA_DTATUALIZACAO,'
      '  CLA_USUARIO'
      'from CLASSIFICADOS '
      'where'
      '  CLA_CODIGO = :CLA_CODIGO')
    SelectSQL.Strings = (
      'select * from CLASSIFICADOS'
      'left join VEICULOS on CLA_VEICULO=VEL_CODIGO'
      'where CLA_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CLASSIFICADOS'
      'set'
      '  CLA_ANOFAB = :CLA_ANOFAB,'
      '  CLA_ANOMOD = :CLA_ANOMOD,'
      '  CLA_CATEGORIA = :CLA_CATEGORIA,'
      '  CLA_CLIENTE = :CLA_CLIENTE,'
      '  CLA_CODIGO = :CLA_CODIGO,'
      '  CLA_COR = :CLA_COR,'
      '  CLA_DTATUALIZACAO = :CLA_DTATUALIZACAO,'
      '  CLA_DTCADASTRO = :CLA_DTCADASTRO,'
      '  CLA_FONE1 = :CLA_FONE1,'
      '  CLA_FONE2 = :CLA_FONE2,'
      '  CLA_NOME = :CLA_NOME,'
      '  CLA_OBJETIVO = :CLA_OBJETIVO,'
      '  CLA_OBSERVACOES = :CLA_OBSERVACOES,'
      '  CLA_USUARIO = :CLA_USUARIO,'
      '  CLA_VEICULO = :CLA_VEICULO'
      'where'
      '  CLA_CODIGO = :OLD_CLA_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CLA_CODIGO'
    GeneratorField.Generator = 'GEN_CLASSIFICADOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 864
    Top = 24
    object TBClassificadosCLA_ANOFAB: TIBStringField
      FieldName = 'CLA_ANOFAB'
      Origin = '"CLASSIFICADOS"."CLA_ANOFAB"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBClassificadosCLA_ANOMOD: TIBStringField
      FieldName = 'CLA_ANOMOD'
      Origin = '"CLASSIFICADOS"."CLA_ANOMOD"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBClassificadosCLA_CATEGORIA: TIBStringField
      FieldName = 'CLA_CATEGORIA'
      Origin = '"CLASSIFICADOS"."CLA_CATEGORIA"'
      Size = 1
    end
    object TBClassificadosCLA_CLIENTE: TIntegerField
      FieldName = 'CLA_CLIENTE'
      Origin = '"CLASSIFICADOS"."CLA_CLIENTE"'
    end
    object TBClassificadosCLA_CODIGO: TIntegerField
      FieldName = 'CLA_CODIGO'
      Origin = '"CLASSIFICADOS"."CLA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClassificadosCLA_COR: TIBStringField
      FieldName = 'CLA_COR'
      Origin = '"CLASSIFICADOS"."CLA_COR"'
    end
    object TBClassificadosCLA_DTATUALIZACAO: TDateField
      FieldName = 'CLA_DTATUALIZACAO'
      Origin = '"CLASSIFICADOS"."CLA_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassificadosCLA_DTCADASTRO: TDateField
      FieldName = 'CLA_DTCADASTRO'
      Origin = '"CLASSIFICADOS"."CLA_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassificadosCLA_FONE1: TIBStringField
      FieldName = 'CLA_FONE1'
      Origin = '"CLASSIFICADOS"."CLA_FONE1"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBClassificadosCLA_FONE2: TIBStringField
      FieldName = 'CLA_FONE2'
      Origin = '"CLASSIFICADOS"."CLA_FONE2"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBClassificadosCLA_NOME: TIBStringField
      FieldName = 'CLA_NOME'
      Origin = '"CLASSIFICADOS"."CLA_NOME"'
      Size = 50
    end
    object TBClassificadosCLA_OBJETIVO: TIBStringField
      FieldName = 'CLA_OBJETIVO'
      Origin = '"CLASSIFICADOS"."CLA_OBJETIVO"'
      Size = 1
    end
    object TBClassificadosCLA_OBSERVACOES: TMemoField
      FieldName = 'CLA_OBSERVACOES'
      Origin = '"CLASSIFICADOS"."CLA_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBClassificadosCLA_USUARIO: TIBStringField
      FieldName = 'CLA_USUARIO'
      Origin = '"CLASSIFICADOS"."CLA_USUARIO"'
    end
    object TBClassificadosCLA_VEICULO: TIntegerField
      FieldName = 'CLA_VEICULO'
      Origin = '"CLASSIFICADOS"."CLA_VEICULO"'
      Required = True
    end
    object TBClassificadosVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = '"VEICULOS"."VEL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBClassificadosVEL_DESCRICAO: TIBStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = '"VEICULOS"."VEL_DESCRICAO"'
      Size = 50
    end
  end
  object DSClassificados: TDataSource
    DataSet = TBClassificados
    OnStateChange = DSClassificadosStateChange
    Left = 864
    Top = 72
  end
  object TRClassificados: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 864
    Top = 120
  end
  object TBVeiculosVenda: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRVeiculosVenda
    AfterDelete = TBVeiculosVendaAfterDelete
    AfterEdit = TBVeiculosVendaAfterEdit
    AfterInsert = TBVeiculosVendaAfterInsert
    AfterPost = TBVeiculosVendaAfterPost
    BeforeEdit = TBVeiculosVendaBeforeEdit
    BeforeInsert = TBVeiculosVendaBeforeInsert
    BeforePost = TBVeiculosVendaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VEICULOSVENDA'
      'where'
      '  VEV_CODIGO = :OLD_VEV_CODIGO')
    InsertSQL.Strings = (
      'insert into VEICULOSVENDA'
      
        '  (VEV_ANOFAB, VEV_ANOMOD, VEV_CATEGORIA, VEV_CLIENTE, VEV_CODIG' +
        'O, VEV_COMBUSTIVEL, '
      
        '   VEV_CONDICOES, VEV_COR, VEV_DESPESAS, VEV_DTATUALIZACAO, VEV_' +
        'DTCADASTRO, '
      
        '   VEV_DTENTRADA, VEV_DTVENDA, VEV_EXPROPRIETARIO, VEV_KM, VEV_M' +
        'ESA, VEV_OPCIONAIS, '
      
        '   VEV_PLACA, VEV_RENAVAN, VEV_STATUS, VEV_TIPO, VEV_USUARIO, VE' +
        'V_VALORCOMPRA, '
      
        '   VEV_VALORSUGERIDO, VEV_VALORVENDA, VEV_VALORVENDIDO, VEV_VEIC' +
        'ULO, VEV_VENDEDOR)'
      'values'
      
        '  (:VEV_ANOFAB, :VEV_ANOMOD, :VEV_CATEGORIA, :VEV_CLIENTE, :VEV_' +
        'CODIGO, '
      
        '   :VEV_COMBUSTIVEL, :VEV_CONDICOES, :VEV_COR, :VEV_DESPESAS, :V' +
        'EV_DTATUALIZACAO, '
      
        '   :VEV_DTCADASTRO, :VEV_DTENTRADA, :VEV_DTVENDA, :VEV_EXPROPRIE' +
        'TARIO, '
      
        '   :VEV_KM, :VEV_MESA, :VEV_OPCIONAIS, :VEV_PLACA, :VEV_RENAVAN,' +
        ' :VEV_STATUS, '
      
        '   :VEV_TIPO, :VEV_USUARIO, :VEV_VALORCOMPRA, :VEV_VALORSUGERIDO' +
        ', :VEV_VALORVENDA, '
      '   :VEV_VALORVENDIDO, :VEV_VEICULO, :VEV_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  VEV_CODIGO,'
      '  VEV_VEICULO,'
      '  VEV_ANOFAB,'
      '  VEV_ANOMOD,'
      '  VEV_COR,'
      '  VEV_KM,'
      '  VEV_COMBUSTIVEL,'
      '  VEV_RENAVAN,'
      '  VEV_EXPROPRIETARIO,'
      '  VEV_VALORCOMPRA,'
      '  VEV_VALORVENDA,'
      '  VEV_PLACA,'
      '  VEV_TIPO,'
      '  VEV_CATEGORIA,'
      '  VEV_DTENTRADA,'
      '  VEV_MESA,'
      '  VEV_OPCIONAIS,'
      '  VEV_DTCADASTRO,'
      '  VEV_DTATUALIZACAO,'
      '  VEV_USUARIO,'
      '  VEV_CLIENTE,'
      '  VEV_VENDEDOR,'
      '  VEV_STATUS,'
      '  VEV_CONDICOES,'
      '  VEV_DTVENDA,'
      '  VEV_DESPESAS,'
      '  VEV_VALORSUGERIDO,'
      '  VEV_VALORVENDIDO'
      'from VEICULOSVENDA '
      'where'
      '  VEV_CODIGO = :VEV_CODIGO')
    SelectSQL.Strings = (
      'select * from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO'
      'where VEV_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update VEICULOSVENDA'
      'set'
      '  VEV_ANOFAB = :VEV_ANOFAB,'
      '  VEV_ANOMOD = :VEV_ANOMOD,'
      '  VEV_CATEGORIA = :VEV_CATEGORIA,'
      '  VEV_CLIENTE = :VEV_CLIENTE,'
      '  VEV_CODIGO = :VEV_CODIGO,'
      '  VEV_COMBUSTIVEL = :VEV_COMBUSTIVEL,'
      '  VEV_CONDICOES = :VEV_CONDICOES,'
      '  VEV_COR = :VEV_COR,'
      '  VEV_DESPESAS = :VEV_DESPESAS,'
      '  VEV_DTATUALIZACAO = :VEV_DTATUALIZACAO,'
      '  VEV_DTCADASTRO = :VEV_DTCADASTRO,'
      '  VEV_DTENTRADA = :VEV_DTENTRADA,'
      '  VEV_DTVENDA = :VEV_DTVENDA,'
      '  VEV_EXPROPRIETARIO = :VEV_EXPROPRIETARIO,'
      '  VEV_KM = :VEV_KM,'
      '  VEV_MESA = :VEV_MESA,'
      '  VEV_OPCIONAIS = :VEV_OPCIONAIS,'
      '  VEV_PLACA = :VEV_PLACA,'
      '  VEV_RENAVAN = :VEV_RENAVAN,'
      '  VEV_STATUS = :VEV_STATUS,'
      '  VEV_TIPO = :VEV_TIPO,'
      '  VEV_USUARIO = :VEV_USUARIO,'
      '  VEV_VALORCOMPRA = :VEV_VALORCOMPRA,'
      '  VEV_VALORSUGERIDO = :VEV_VALORSUGERIDO,'
      '  VEV_VALORVENDA = :VEV_VALORVENDA,'
      '  VEV_VALORVENDIDO = :VEV_VALORVENDIDO,'
      '  VEV_VEICULO = :VEV_VEICULO,'
      '  VEV_VENDEDOR = :VEV_VENDEDOR'
      'where'
      '  VEV_CODIGO = :OLD_VEV_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'VEV_CODIGO'
    GeneratorField.Generator = 'GEN_VEICULOSVENDA'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 904
    object TBVeiculosVendaVEV_ANOFAB: TIBStringField
      FieldName = 'VEV_ANOFAB'
      Origin = '"VEICULOSVENDA"."VEV_ANOFAB"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosVendaVEV_ANOMOD: TIBStringField
      FieldName = 'VEV_ANOMOD'
      Origin = '"VEICULOSVENDA"."VEV_ANOMOD"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosVendaVEV_CATEGORIA: TIBStringField
      FieldName = 'VEV_CATEGORIA'
      Origin = '"VEICULOSVENDA"."VEV_CATEGORIA"'
      Size = 1
    end
    object TBVeiculosVendaVEV_CLIENTE: TIntegerField
      FieldName = 'VEV_CLIENTE'
      Origin = '"VEICULOSVENDA"."VEV_CLIENTE"'
    end
    object TBVeiculosVendaVEV_CODIGO: TIntegerField
      FieldName = 'VEV_CODIGO'
      Origin = '"VEICULOSVENDA"."VEV_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVeiculosVendaVEV_COMBUSTIVEL: TIBStringField
      FieldName = 'VEV_COMBUSTIVEL'
      Origin = '"VEICULOSVENDA"."VEV_COMBUSTIVEL"'
      Size = 10
    end
    object TBVeiculosVendaVEV_CONDICOES: TMemoField
      FieldName = 'VEV_CONDICOES'
      Origin = '"VEICULOSVENDA"."VEV_CONDICOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBVeiculosVendaVEV_COR: TIBStringField
      FieldName = 'VEV_COR'
      Origin = '"VEICULOSVENDA"."VEV_COR"'
    end
    object TBVeiculosVendaVEV_DESPESAS: TIBBCDField
      FieldName = 'VEV_DESPESAS'
      Origin = '"VEICULOSVENDA"."VEV_DESPESAS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBVeiculosVendaVEV_DTATUALIZACAO: TDateField
      FieldName = 'VEV_DTATUALIZACAO'
      Origin = '"VEICULOSVENDA"."VEV_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_DTCADASTRO: TDateField
      FieldName = 'VEV_DTCADASTRO'
      Origin = '"VEICULOSVENDA"."VEV_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_DTENTRADA: TDateField
      FieldName = 'VEV_DTENTRADA'
      Origin = '"VEICULOSVENDA"."VEV_DTENTRADA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_DTVENDA: TDateField
      FieldName = 'VEV_DTVENDA'
      Origin = '"VEICULOSVENDA"."VEV_DTVENDA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_EXPROPRIETARIO: TIBStringField
      FieldName = 'VEV_EXPROPRIETARIO'
      Origin = '"VEICULOSVENDA"."VEV_EXPROPRIETARIO"'
      Size = 50
    end
    object TBVeiculosVendaVEV_KM: TIntegerField
      FieldName = 'VEV_KM'
      Origin = '"VEICULOSVENDA"."VEV_KM"'
    end
    object TBVeiculosVendaVEV_MESA: TIBStringField
      FieldName = 'VEV_MESA'
      Origin = '"VEICULOSVENDA"."VEV_MESA"'
    end
    object TBVeiculosVendaVEV_OPCIONAIS: TMemoField
      FieldName = 'VEV_OPCIONAIS'
      Origin = '"VEICULOSVENDA"."VEV_OPCIONAIS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBVeiculosVendaVEV_PLACA: TIBStringField
      FieldName = 'VEV_PLACA'
      Origin = '"VEICULOSVENDA"."VEV_PLACA"'
      EditMask = 'aaa\-9999;1;_'
      Size = 10
    end
    object TBVeiculosVendaVEV_RENAVAN: TIBStringField
      FieldName = 'VEV_RENAVAN'
      Origin = '"VEICULOSVENDA"."VEV_RENAVAN"'
    end
    object TBVeiculosVendaVEV_STATUS: TIBStringField
      FieldName = 'VEV_STATUS'
      Origin = '"VEICULOSVENDA"."VEV_STATUS"'
      Size = 1
    end
    object TBVeiculosVendaVEV_TIPO: TIBStringField
      FieldName = 'VEV_TIPO'
      Origin = '"VEICULOSVENDA"."VEV_TIPO"'
      Size = 1
    end
    object TBVeiculosVendaVEV_USUARIO: TIBStringField
      FieldName = 'VEV_USUARIO'
      Origin = '"VEICULOSVENDA"."VEV_USUARIO"'
    end
    object TBVeiculosVendaVEV_VALORCOMPRA: TIBBCDField
      FieldName = 'VEV_VALORCOMPRA'
      Origin = '"VEICULOSVENDA"."VEV_VALORCOMPRA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBVeiculosVendaVEV_VALORSUGERIDO: TIBBCDField
      FieldName = 'VEV_VALORSUGERIDO'
      Origin = '"VEICULOSVENDA"."VEV_VALORSUGERIDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBVeiculosVendaVEV_VALORVENDA: TIBBCDField
      FieldName = 'VEV_VALORVENDA'
      Origin = '"VEICULOSVENDA"."VEV_VALORVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBVeiculosVendaVEV_VALORVENDIDO: TIBBCDField
      FieldName = 'VEV_VALORVENDIDO'
      Origin = '"VEICULOSVENDA"."VEV_VALORVENDIDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBVeiculosVendaVEV_VEICULO: TIntegerField
      FieldName = 'VEV_VEICULO'
      Origin = '"VEICULOSVENDA"."VEV_VEICULO"'
      Required = True
    end
    object TBVeiculosVendaVEV_VENDEDOR: TIntegerField
      FieldName = 'VEV_VENDEDOR'
      Origin = '"VEICULOSVENDA"."VEV_VENDEDOR"'
    end
    object TBVeiculosVendaCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBVeiculosVendaVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = '"VEICULOS"."VEL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVeiculosVendaVEL_DESCRICAO: TIBStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = '"VEICULOS"."VEL_DESCRICAO"'
      Size = 50
    end
    object TBVeiculosVendaVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSVeiculosVenda: TDataSource
    DataSet = TBVeiculosVenda
    OnStateChange = DSVeiculosVendaStateChange
    Left = 96
    Top = 952
  end
  object TRVeiculosVenda: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 1000
  end
  object TBVeiculosCliente: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRVeiculosCliente
    AfterDelete = TBVeiculosClienteAfterDelete
    AfterInsert = TBVeiculosClienteAfterInsert
    AfterPost = TBVeiculosClienteAfterPost
    BeforeEdit = TBVeiculosClienteBeforeEdit
    BeforeInsert = TBVeiculosClienteBeforeInsert
    BeforePost = TBVeiculosClienteBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VEICULOSCLIENTE'
      'where'
      '  VEC_CODIGO = :OLD_VEC_CODIGO')
    InsertSQL.Strings = (
      'insert into VEICULOSCLIENTE'
      
        '  (VEC_ANOFAB, VEC_ANOMOD, VEC_CATEGORIA, VEC_CLIENTE, VEC_CODIG' +
        'O, VEC_COMBUSTIVEL, '
      
        '   VEC_COR, VEC_DTATUALIZACAO, VEC_DTVENDA, VEC_EXPROPRIETARIO, ' +
        'VEC_KM, '
      
        '   VEC_MESA, VEC_OBSERVACOES, VEC_OPCIONAIS, VEC_PLACA, VEC_RENA' +
        'VAN, VEC_TIPO, '
      '   VEC_USUARIO, VEC_VALORVENDA, VEC_VEICULO)'
      'values'
      
        '  (:VEC_ANOFAB, :VEC_ANOMOD, :VEC_CATEGORIA, :VEC_CLIENTE, :VEC_' +
        'CODIGO, '
      
        '   :VEC_COMBUSTIVEL, :VEC_COR, :VEC_DTATUALIZACAO, :VEC_DTVENDA,' +
        ' :VEC_EXPROPRIETARIO, '
      
        '   :VEC_KM, :VEC_MESA, :VEC_OBSERVACOES, :VEC_OPCIONAIS, :VEC_PL' +
        'ACA, :VEC_RENAVAN, '
      '   :VEC_TIPO, :VEC_USUARIO, :VEC_VALORVENDA, :VEC_VEICULO)')
    RefreshSQL.Strings = (
      'Select '
      '  VEC_CODIGO,'
      '  VEC_CLIENTE,'
      '  VEC_VEICULO,'
      '  VEC_ANOFAB,'
      '  VEC_ANOMOD,'
      '  VEC_COR,'
      '  VEC_OBSERVACOES,'
      '  VEC_PLACA,'
      '  VEC_RENAVAN,'
      '  VEC_EXPROPRIETARIO,'
      '  VEC_KM,'
      '  VEC_TIPO,'
      '  VEC_CATEGORIA,'
      '  VEC_VALORVENDA,'
      '  VEC_MESA,'
      '  VEC_OPCIONAIS,'
      '  VEC_DTVENDA,'
      '  VEC_COMBUSTIVEL,'
      '  VEC_DTATUALIZACAO,'
      '  VEC_USUARIO'
      'from VEICULOSCLIENTE '
      'where'
      '  VEC_CODIGO = :VEC_CODIGO')
    SelectSQL.Strings = (
      'select '
      'VEC_CODIGO, VEC_CLIENTE, VEC_VEICULO,'
      'VEC_DTVENDA, VEC_PLACA, VEC_RENAVAN,'
      'VEC_ANOFAB, VEC_ANOMOD, VEC_DTATUALIZACAO,'
      'VEC_USUARIO, VEC_OBSERVACOES, VEC_OPCIONAIS,'
      'VEC_TIPO, VEC_KM, VEC_EXPROPRIETARIO, VEC_MESA,'
      'VEC_VALORVENDA, VEC_COMBUSTIVEL, VEC_COR,'
      'VEC_CATEGORIA, VEL_DESCRICAO from VEICULOSCLIENTE'
      'left join VEICULOS on VEC_VEICULO=VEL_CODIGO'
      'where VEC_CLIENTE=:CLI_CODIGO'
      'order by VEC_DTVENDA desc')
    ModifySQL.Strings = (
      'update VEICULOSCLIENTE'
      'set'
      '  VEC_ANOFAB = :VEC_ANOFAB,'
      '  VEC_ANOMOD = :VEC_ANOMOD,'
      '  VEC_CATEGORIA = :VEC_CATEGORIA,'
      '  VEC_CLIENTE = :VEC_CLIENTE,'
      '  VEC_CODIGO = :VEC_CODIGO,'
      '  VEC_COMBUSTIVEL = :VEC_COMBUSTIVEL,'
      '  VEC_COR = :VEC_COR,'
      '  VEC_DTATUALIZACAO = :VEC_DTATUALIZACAO,'
      '  VEC_DTVENDA = :VEC_DTVENDA,'
      '  VEC_EXPROPRIETARIO = :VEC_EXPROPRIETARIO,'
      '  VEC_KM = :VEC_KM,'
      '  VEC_MESA = :VEC_MESA,'
      '  VEC_OBSERVACOES = :VEC_OBSERVACOES,'
      '  VEC_OPCIONAIS = :VEC_OPCIONAIS,'
      '  VEC_PLACA = :VEC_PLACA,'
      '  VEC_RENAVAN = :VEC_RENAVAN,'
      '  VEC_TIPO = :VEC_TIPO,'
      '  VEC_USUARIO = :VEC_USUARIO,'
      '  VEC_VALORVENDA = :VEC_VALORVENDA,'
      '  VEC_VEICULO = :VEC_VEICULO'
      'where'
      '  VEC_CODIGO = :OLD_VEC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'VEC_CODIGO'
    GeneratorField.Generator = 'GEN_VEICULOSCLIENTE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 904
    object TBVeiculosClienteVEC_ANOFAB: TIBStringField
      FieldName = 'VEC_ANOFAB'
      Origin = '"VEICULOSCLIENTE"."VEC_ANOFAB"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosClienteVEC_ANOMOD: TIBStringField
      FieldName = 'VEC_ANOMOD'
      Origin = '"VEICULOSCLIENTE"."VEC_ANOMOD"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosClienteVEC_CATEGORIA: TIBStringField
      FieldName = 'VEC_CATEGORIA'
      Origin = '"VEICULOSCLIENTE"."VEC_CATEGORIA"'
      Size = 1
    end
    object TBVeiculosClienteVEC_CLIENTE: TIntegerField
      FieldName = 'VEC_CLIENTE'
      Origin = '"VEICULOSCLIENTE"."VEC_CLIENTE"'
      Required = True
    end
    object TBVeiculosClienteVEC_CODIGO: TIntegerField
      FieldName = 'VEC_CODIGO'
      Origin = '"VEICULOSCLIENTE"."VEC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVeiculosClienteVEC_COMBUSTIVEL: TIBStringField
      FieldName = 'VEC_COMBUSTIVEL'
      Origin = '"VEICULOSCLIENTE"."VEC_COMBUSTIVEL"'
      Size = 10
    end
    object TBVeiculosClienteVEC_COR: TIBStringField
      FieldName = 'VEC_COR'
      Origin = '"VEICULOSCLIENTE"."VEC_COR"'
    end
    object TBVeiculosClienteVEL_DESCRICAO: TIBStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = '"VEICULOS"."VEL_DESCRICAO"'
      Size = 50
    end
    object TBVeiculosClienteVEC_DTATUALIZACAO: TDateField
      FieldName = 'VEC_DTATUALIZACAO'
      Origin = '"VEICULOSCLIENTE"."VEC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosClienteVEC_DTVENDA: TDateField
      FieldName = 'VEC_DTVENDA'
      Origin = '"VEICULOSCLIENTE"."VEC_DTVENDA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosClienteVEC_EXPROPRIETARIO: TIBStringField
      FieldName = 'VEC_EXPROPRIETARIO'
      Origin = '"VEICULOSCLIENTE"."VEC_EXPROPRIETARIO"'
      Size = 50
    end
    object TBVeiculosClienteVEC_KM: TIntegerField
      FieldName = 'VEC_KM'
      Origin = '"VEICULOSCLIENTE"."VEC_KM"'
    end
    object TBVeiculosClienteVEC_MESA: TIBStringField
      FieldName = 'VEC_MESA'
      Origin = '"VEICULOSCLIENTE"."VEC_MESA"'
    end
    object TBVeiculosClienteVEC_OBSERVACOES: TMemoField
      FieldName = 'VEC_OBSERVACOES'
      Origin = '"VEICULOSCLIENTE"."VEC_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBVeiculosClienteVEC_OPCIONAIS: TMemoField
      FieldName = 'VEC_OPCIONAIS'
      Origin = '"VEICULOSCLIENTE"."VEC_OPCIONAIS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBVeiculosClienteVEC_PLACA: TIBStringField
      FieldName = 'VEC_PLACA'
      Origin = '"VEICULOSCLIENTE"."VEC_PLACA"'
      EditMask = 'aaa\-9999;1;_'
      Size = 10
    end
    object TBVeiculosClienteVEC_RENAVAN: TIBStringField
      FieldName = 'VEC_RENAVAN'
      Origin = '"VEICULOSCLIENTE"."VEC_RENAVAN"'
    end
    object TBVeiculosClienteVEC_VEICULO: TIntegerField
      FieldName = 'VEC_VEICULO'
      Origin = '"VEICULOSCLIENTE"."VEC_VEICULO"'
      Required = True
    end
    object TBVeiculosClienteVEC_TIPO: TIBStringField
      FieldName = 'VEC_TIPO'
      Origin = '"VEICULOSCLIENTE"."VEC_TIPO"'
      Size = 1
    end
    object TBVeiculosClienteVEC_USUARIO: TIBStringField
      FieldName = 'VEC_USUARIO'
      Origin = '"VEICULOSCLIENTE"."VEC_USUARIO"'
    end
    object TBVeiculosClienteVEC_VALORVENDA: TIBBCDField
      FieldName = 'VEC_VALORVENDA'
      Origin = '"VEICULOSCLIENTE"."VEC_VALORVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSVeiculosCliente: TDataSource
    DataSet = TBVeiculosCliente
    OnStateChange = DSVeiculosClienteStateChange
    Left = 32
    Top = 952
  end
  object TRVeiculosCliente: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 1000
  end
  object TBTurmas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRTurmas
    AfterDelete = TBTurmasAfterDelete
    AfterInsert = TBTurmasAfterInsert
    AfterPost = TBTurmasAfterPost
    BeforeEdit = TBTurmasBeforeEdit
    BeforeInsert = TBTurmasBeforeInsert
    BeforePost = TBTurmasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TURMAS'
      'where'
      '  TUR_CODIGO = :OLD_TUR_CODIGO')
    InsertSQL.Strings = (
      'insert into TURMAS'
      
        '  (TUR_ANO, TUR_CARGAHORARIA, TUR_CODIGO, TUR_CURSO, TUR_DESCRIC' +
        'AO, TUR_DOMINGO, '
      
        '   TUR_DOMINGOVEZES, TUR_DTATUALIZACAO, TUR_DTCADASTRO, TUR_DTIN' +
        'ICIO, TUR_DTTERMINO, '
      
        '   TUR_ENCONTROS, TUR_FERIASINICIO, TUR_FERIASTERMINO, TUR_HORAA' +
        'ULA, TUR_HORAAULAMIN, '
      
        '   TUR_HORARIO, TUR_MEDIAMINIMA, TUR_OBSERVACOES, TUR_PERIODO, T' +
        'UR_PROFESSOR, '
      
        '   TUR_QUARTA, TUR_QUARTAVEZES, TUR_QUINTA, TUR_QUINTAVEZES, TUR' +
        '_SABADO, '
      
        '   TUR_SABADOVEZES, TUR_SALA, TUR_SEGUNDA, TUR_SEGUNDAVEZES, TUR' +
        '_SEXTA, '
      
        '   TUR_SEXTAVEZES, TUR_STATUS, TUR_TERCA, TUR_TERCAVEZES, TUR_US' +
        'UARIO)'
      'values'
      
        '  (:TUR_ANO, :TUR_CARGAHORARIA, :TUR_CODIGO, :TUR_CURSO, :TUR_DE' +
        'SCRICAO, '
      
        '   :TUR_DOMINGO, :TUR_DOMINGOVEZES, :TUR_DTATUALIZACAO, :TUR_DTC' +
        'ADASTRO, '
      
        '   :TUR_DTINICIO, :TUR_DTTERMINO, :TUR_ENCONTROS, :TUR_FERIASINI' +
        'CIO, :TUR_FERIASTERMINO, '
      
        '   :TUR_HORAAULA, :TUR_HORAAULAMIN, :TUR_HORARIO, :TUR_MEDIAMINI' +
        'MA, :TUR_OBSERVACOES, '
      
        '   :TUR_PERIODO, :TUR_PROFESSOR, :TUR_QUARTA, :TUR_QUARTAVEZES, ' +
        ':TUR_QUINTA, '
      
        '   :TUR_QUINTAVEZES, :TUR_SABADO, :TUR_SABADOVEZES, :TUR_SALA, :' +
        'TUR_SEGUNDA, '
      
        '   :TUR_SEGUNDAVEZES, :TUR_SEXTA, :TUR_SEXTAVEZES, :TUR_STATUS, ' +
        ':TUR_TERCA, '
      '   :TUR_TERCAVEZES, :TUR_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  TUR_CODIGO,'
      '  TUR_PROFESSOR,'
      '  TUR_ANO,'
      '  TUR_CARGAHORARIA,'
      '  TUR_DESCRICAO,'
      '  TUR_DOMINGO,'
      '  TUR_DOMINGOVEZES,'
      '  TUR_DTATUALIZACAO,'
      '  TUR_DTCADASTRO,'
      '  TUR_DTINICIO,'
      '  TUR_DTTERMINO,'
      '  TUR_ENCONTROS,'
      '  TUR_FERIASINICIO,'
      '  TUR_FERIASTERMINO,'
      '  TUR_HORAAULA,'
      '  TUR_HORAAULAMIN,'
      '  TUR_HORARIO,'
      '  TUR_MEDIAMINIMA,'
      '  TUR_OBSERVACOES,'
      '  TUR_PERIODO,'
      '  TUR_QUARTA,'
      '  TUR_QUARTAVEZES,'
      '  TUR_QUINTA,'
      '  TUR_QUINTAVEZES,'
      '  TUR_SABADO,'
      '  TUR_SABADOVEZES,'
      '  TUR_SALA,'
      '  TUR_SEGUNDA,'
      '  TUR_SEGUNDAVEZES,'
      '  TUR_SEXTA,'
      '  TUR_SEXTAVEZES,'
      '  TUR_STATUS,'
      '  TUR_TERCA,'
      '  TUR_TERCAVEZES,'
      '  TUR_USUARIO,'
      '  TUR_CURSO'
      'from TURMAS '
      'where'
      '  TUR_CODIGO = :TUR_CODIGO')
    SelectSQL.Strings = (
      'select * from TURMAS'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join CURSOS on TUR_CURSO=CUR_CODIGO'
      'where TUR_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update TURMAS'
      'set'
      '  TUR_ANO = :TUR_ANO,'
      '  TUR_CARGAHORARIA = :TUR_CARGAHORARIA,'
      '  TUR_CODIGO = :TUR_CODIGO,'
      '  TUR_CURSO = :TUR_CURSO,'
      '  TUR_DESCRICAO = :TUR_DESCRICAO,'
      '  TUR_DOMINGO = :TUR_DOMINGO,'
      '  TUR_DOMINGOVEZES = :TUR_DOMINGOVEZES,'
      '  TUR_DTATUALIZACAO = :TUR_DTATUALIZACAO,'
      '  TUR_DTCADASTRO = :TUR_DTCADASTRO,'
      '  TUR_DTINICIO = :TUR_DTINICIO,'
      '  TUR_DTTERMINO = :TUR_DTTERMINO,'
      '  TUR_ENCONTROS = :TUR_ENCONTROS,'
      '  TUR_FERIASINICIO = :TUR_FERIASINICIO,'
      '  TUR_FERIASTERMINO = :TUR_FERIASTERMINO,'
      '  TUR_HORAAULA = :TUR_HORAAULA,'
      '  TUR_HORAAULAMIN = :TUR_HORAAULAMIN,'
      '  TUR_HORARIO = :TUR_HORARIO,'
      '  TUR_MEDIAMINIMA = :TUR_MEDIAMINIMA,'
      '  TUR_OBSERVACOES = :TUR_OBSERVACOES,'
      '  TUR_PERIODO = :TUR_PERIODO,'
      '  TUR_PROFESSOR = :TUR_PROFESSOR,'
      '  TUR_QUARTA = :TUR_QUARTA,'
      '  TUR_QUARTAVEZES = :TUR_QUARTAVEZES,'
      '  TUR_QUINTA = :TUR_QUINTA,'
      '  TUR_QUINTAVEZES = :TUR_QUINTAVEZES,'
      '  TUR_SABADO = :TUR_SABADO,'
      '  TUR_SABADOVEZES = :TUR_SABADOVEZES,'
      '  TUR_SALA = :TUR_SALA,'
      '  TUR_SEGUNDA = :TUR_SEGUNDA,'
      '  TUR_SEGUNDAVEZES = :TUR_SEGUNDAVEZES,'
      '  TUR_SEXTA = :TUR_SEXTA,'
      '  TUR_SEXTAVEZES = :TUR_SEXTAVEZES,'
      '  TUR_STATUS = :TUR_STATUS,'
      '  TUR_TERCA = :TUR_TERCA,'
      '  TUR_TERCAVEZES = :TUR_TERCAVEZES,'
      '  TUR_USUARIO = :TUR_USUARIO'
      'where'
      '  TUR_CODIGO = :OLD_TUR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'TUR_CODIGO'
    GeneratorField.Generator = 'GEN_TURMAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1184
    Top = 696
    object TBTurmasTUR_ANO: TIBStringField
      FieldName = 'TUR_ANO'
      Origin = '"TURMAS"."TUR_ANO"'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBTurmasTUR_CARGAHORARIA: TIBStringField
      FieldName = 'TUR_CARGAHORARIA'
      Origin = '"TURMAS"."TUR_CARGAHORARIA"'
      Size = 25
    end
    object TBTurmasTUR_CODIGO: TIntegerField
      FieldName = 'TUR_CODIGO'
      Origin = '"TURMAS"."TUR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBTurmasTUR_CURSO: TIntegerField
      FieldName = 'TUR_CURSO'
      Origin = '"TURMAS"."TUR_CURSO"'
      Required = True
    end
    object TBTurmasTUR_DESCRICAO: TIBStringField
      FieldName = 'TUR_DESCRICAO'
      Origin = '"TURMAS"."TUR_DESCRICAO"'
      Size = 50
    end
    object TBTurmasTUR_DOMINGO: TIBStringField
      FieldName = 'TUR_DOMINGO'
      Origin = '"TURMAS"."TUR_DOMINGO"'
      Size = 1
    end
    object TBTurmasTUR_DOMINGOVEZES: TIntegerField
      FieldName = 'TUR_DOMINGOVEZES'
      Origin = '"TURMAS"."TUR_DOMINGOVEZES"'
    end
    object TBTurmasTUR_DTATUALIZACAO: TDateField
      FieldName = 'TUR_DTATUALIZACAO'
      Origin = '"TURMAS"."TUR_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_DTCADASTRO: TDateField
      FieldName = 'TUR_DTCADASTRO'
      Origin = '"TURMAS"."TUR_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_DTINICIO: TDateField
      FieldName = 'TUR_DTINICIO'
      Origin = '"TURMAS"."TUR_DTINICIO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_DTTERMINO: TDateField
      FieldName = 'TUR_DTTERMINO'
      Origin = '"TURMAS"."TUR_DTTERMINO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_ENCONTROS: TIntegerField
      FieldName = 'TUR_ENCONTROS'
      Origin = '"TURMAS"."TUR_ENCONTROS"'
    end
    object TBTurmasTUR_FERIASINICIO: TDateField
      FieldName = 'TUR_FERIASINICIO'
      Origin = '"TURMAS"."TUR_FERIASINICIO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_FERIASTERMINO: TDateField
      FieldName = 'TUR_FERIASTERMINO'
      Origin = '"TURMAS"."TUR_FERIASTERMINO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_HORAAULA: TTimeField
      FieldName = 'TUR_HORAAULA'
      Origin = '"TURMAS"."TUR_HORAAULA"'
      EditMask = '!00:00:00;1;_'
    end
    object TBTurmasTUR_HORAAULAMIN: TIntegerField
      FieldName = 'TUR_HORAAULAMIN'
      Origin = '"TURMAS"."TUR_HORAAULAMIN"'
    end
    object TBTurmasTUR_HORARIO: TIBStringField
      FieldName = 'TUR_HORARIO'
      Origin = '"TURMAS"."TUR_HORARIO"'
      Size = 25
    end
    object TBTurmasTUR_MEDIAMINIMA: TIBBCDField
      FieldName = 'TUR_MEDIAMINIMA'
      Origin = '"TURMAS"."TUR_MEDIAMINIMA"'
      Precision = 18
      Size = 4
    end
    object TBTurmasTUR_OBSERVACOES: TMemoField
      FieldName = 'TUR_OBSERVACOES'
      Origin = '"TURMAS"."TUR_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBTurmasTUR_PERIODO: TIntegerField
      FieldName = 'TUR_PERIODO'
      Origin = '"TURMAS"."TUR_PERIODO"'
    end
    object TBTurmasTUR_PROFESSOR: TIntegerField
      FieldName = 'TUR_PROFESSOR'
      Origin = '"TURMAS"."TUR_PROFESSOR"'
      Required = True
    end
    object TBTurmasTUR_QUARTA: TIBStringField
      FieldName = 'TUR_QUARTA'
      Origin = '"TURMAS"."TUR_QUARTA"'
      Size = 1
    end
    object TBTurmasTUR_QUARTAVEZES: TIntegerField
      FieldName = 'TUR_QUARTAVEZES'
      Origin = '"TURMAS"."TUR_QUARTAVEZES"'
    end
    object TBTurmasTUR_QUINTA: TIBStringField
      FieldName = 'TUR_QUINTA'
      Origin = '"TURMAS"."TUR_QUINTA"'
      Size = 1
    end
    object TBTurmasTUR_QUINTAVEZES: TIntegerField
      FieldName = 'TUR_QUINTAVEZES'
      Origin = '"TURMAS"."TUR_QUINTAVEZES"'
    end
    object TBTurmasTUR_SABADO: TIBStringField
      FieldName = 'TUR_SABADO'
      Origin = '"TURMAS"."TUR_SABADO"'
      Size = 1
    end
    object TBTurmasTUR_SABADOVEZES: TIntegerField
      FieldName = 'TUR_SABADOVEZES'
      Origin = '"TURMAS"."TUR_SABADOVEZES"'
    end
    object TBTurmasTUR_SALA: TIBStringField
      FieldName = 'TUR_SALA'
      Origin = '"TURMAS"."TUR_SALA"'
      Size = 50
    end
    object TBTurmasTUR_SEGUNDA: TIBStringField
      FieldName = 'TUR_SEGUNDA'
      Origin = '"TURMAS"."TUR_SEGUNDA"'
      Size = 1
    end
    object TBTurmasTUR_SEGUNDAVEZES: TIntegerField
      FieldName = 'TUR_SEGUNDAVEZES'
      Origin = '"TURMAS"."TUR_SEGUNDAVEZES"'
    end
    object TBTurmasTUR_SEXTA: TIBStringField
      FieldName = 'TUR_SEXTA'
      Origin = '"TURMAS"."TUR_SEXTA"'
      Size = 1
    end
    object TBTurmasTUR_SEXTAVEZES: TIntegerField
      FieldName = 'TUR_SEXTAVEZES'
      Origin = '"TURMAS"."TUR_SEXTAVEZES"'
    end
    object TBTurmasTUR_STATUS: TIBStringField
      FieldName = 'TUR_STATUS'
      Origin = '"TURMAS"."TUR_STATUS"'
      Size = 1
    end
    object TBTurmasTUR_TERCA: TIBStringField
      FieldName = 'TUR_TERCA'
      Origin = '"TURMAS"."TUR_TERCA"'
      Size = 1
    end
    object TBTurmasTUR_TERCAVEZES: TIntegerField
      FieldName = 'TUR_TERCAVEZES'
      Origin = '"TURMAS"."TUR_TERCAVEZES"'
    end
    object TBTurmasTUR_USUARIO: TIBStringField
      FieldName = 'TUR_USUARIO'
      Origin = '"TURMAS"."TUR_USUARIO"'
    end
    object TBTurmasCUR_DESCRICAO: TIBStringField
      FieldName = 'CUR_DESCRICAO'
      Origin = '"CURSOS"."CUR_DESCRICAO"'
      Size = 50
    end
    object TBTurmasVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSTurmas: TDataSource
    DataSet = TBTurmas
    OnStateChange = DSTurmasStateChange
    Left = 1184
    Top = 744
  end
  object TRTurmas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1184
    Top = 792
  end
  object TBCalendarios: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCalendarios
    AfterDelete = TBCalendariosAfterDelete
    AfterInsert = TBCalendariosAfterInsert
    AfterPost = TBCalendariosAfterPost
    BeforePost = TBCalendariosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CALENDARIOS'
      'where'
      '  CAL_CODIGO = :OLD_CAL_CODIGO')
    InsertSQL.Strings = (
      'insert into CALENDARIOS'
      
        '  (CAL_CODIGO, CAL_CONTADOR, CAL_DATA, CAL_STATUSCHAMADA, CAL_TI' +
        'PO, CAL_TURMA)'
      'values'
      
        '  (:CAL_CODIGO, :CAL_CONTADOR, :CAL_DATA, :CAL_STATUSCHAMADA, :C' +
        'AL_TIPO, '
      '   :CAL_TURMA)')
    RefreshSQL.Strings = (
      'Select '
      '  CAL_CODIGO,'
      '  CAL_TURMA,'
      '  CAL_DATA,'
      '  CAL_CONTADOR,'
      '  CAL_STATUSCHAMADA,'
      '  CAL_TIPO'
      'from CALENDARIOS '
      'where'
      '  CAL_CODIGO = :CAL_CODIGO')
    SelectSQL.Strings = (
      'select * from CALENDARIOS'
      'where CAL_TURMA=:TUR_CODIGO'
      'order by CAL_CONTADOR')
    ModifySQL.Strings = (
      'update CALENDARIOS'
      'set'
      '  CAL_CODIGO = :CAL_CODIGO,'
      '  CAL_CONTADOR = :CAL_CONTADOR,'
      '  CAL_DATA = :CAL_DATA,'
      '  CAL_STATUSCHAMADA = :CAL_STATUSCHAMADA,'
      '  CAL_TIPO = :CAL_TIPO,'
      '  CAL_TURMA = :CAL_TURMA'
      'where'
      '  CAL_CODIGO = :OLD_CAL_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CAL_CODIGO'
    GeneratorField.Generator = 'GEN_CALENDARIOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSTurmas
    Left = 608
    Top = 24
    object TBCalendariosCAL_CODIGO: TIntegerField
      FieldName = 'CAL_CODIGO'
      Origin = '"CALENDARIOS"."CAL_CODIGO"'
      Required = True
    end
    object TBCalendariosCAL_CONTADOR: TIntegerField
      FieldName = 'CAL_CONTADOR'
      Origin = '"CALENDARIOS"."CAL_CONTADOR"'
    end
    object TBCalendariosCAL_DATA: TDateField
      FieldName = 'CAL_DATA'
      Origin = '"CALENDARIOS"."CAL_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCalendariosCAL_STATUSCHAMADA: TIBStringField
      FieldName = 'CAL_STATUSCHAMADA'
      Origin = '"CALENDARIOS"."CAL_STATUSCHAMADA"'
      Size = 1
    end
    object TBCalendariosCAL_TIPO: TIBStringField
      FieldName = 'CAL_TIPO'
      Origin = '"CALENDARIOS"."CAL_TIPO"'
      Size = 10
    end
    object TBCalendariosCAL_TURMA: TIntegerField
      FieldName = 'CAL_TURMA'
      Origin = '"CALENDARIOS"."CAL_TURMA"'
      Required = True
    end
  end
  object DSCalendarios: TDataSource
    DataSet = TBCalendarios
    Left = 608
    Top = 72
  end
  object TRCalendarios: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 608
    Top = 120
  end
  object TBMatriculas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMatriculas
    AfterDelete = TBMatriculasAfterDelete
    AfterInsert = TBMatriculasAfterInsert
    AfterPost = TBMatriculasAfterPost
    BeforeEdit = TBMatriculasBeforeEdit
    BeforeInsert = TBMatriculasBeforeInsert
    BeforePost = TBMatriculasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MATRICULAS'
      'where'
      '  MAT_CODIGO = :OLD_MAT_CODIGO')
    InsertSQL.Strings = (
      'insert into MATRICULAS'
      
        '  (MAT_APROVADO, MAT_CLIENTE, MAT_CODIGO, MAT_CONCEITODISCURSO, ' +
        'MAT_CONCEITOEXERCICIOS, '
      
        '   MAT_CONCEITOGERAL, MAT_CONCEITOLITERATURA, MAT_CONTABILIZAR, ' +
        'MAT_DESISTENCIA, '
      
        '   MAT_DTATUALIZACAO, MAT_DTCADASTRO, MAT_MEDIAEXERCICIOS, MAT_M' +
        'EDIAFINAL, '
      
        '   MAT_OBSERVACOES, MAT_STATUS, MAT_TIPO, MAT_TIPOMATRICULA, MAT' +
        '_TURMA, '
      '   MAT_USUARIO, MAT_VENDA, MAT_VENDAMATERIAL, MAT_VENDEDOR)'
      'values'
      
        '  (:MAT_APROVADO, :MAT_CLIENTE, :MAT_CODIGO, :MAT_CONCEITODISCUR' +
        'SO, :MAT_CONCEITOEXERCICIOS, '
      
        '   :MAT_CONCEITOGERAL, :MAT_CONCEITOLITERATURA, :MAT_CONTABILIZA' +
        'R, :MAT_DESISTENCIA, '
      
        '   :MAT_DTATUALIZACAO, :MAT_DTCADASTRO, :MAT_MEDIAEXERCICIOS, :M' +
        'AT_MEDIAFINAL, '
      
        '   :MAT_OBSERVACOES, :MAT_STATUS, :MAT_TIPO, :MAT_TIPOMATRICULA,' +
        ' :MAT_TURMA, '
      '   :MAT_USUARIO, :MAT_VENDA, :MAT_VENDAMATERIAL, :MAT_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  MAT_CODIGO,'
      '  MAT_CLIENTE,'
      '  MAT_TURMA,'
      '  MAT_VENDEDOR,'
      '  MAT_APROVADO,'
      '  MAT_CONCEITODISCURSO,'
      '  MAT_CONCEITOEXERCICIOS,'
      '  MAT_CONCEITOGERAL,'
      '  MAT_CONCEITOLITERATURA,'
      '  MAT_CONTABILIZAR,'
      '  MAT_DESISTENCIA,'
      '  MAT_DTATUALIZACAO,'
      '  MAT_DTCADASTRO,'
      '  MAT_MEDIAEXERCICIOS,'
      '  MAT_MEDIAFINAL,'
      '  MAT_OBSERVACOES,'
      '  MAT_STATUS,'
      '  MAT_TIPO,'
      '  MAT_USUARIO,'
      '  MAT_VENDA,'
      '  MAT_VENDAMATERIAL,'
      '  MAT_TIPOMATRICULA'
      'from MATRICULAS '
      'where'
      '  MAT_CODIGO = :MAT_CODIGO')
    SelectSQL.Strings = (
      'select * from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      'left join MOTIVOS on MAT_DESISTENCIA=MOT_CODIGO'
      'where MAT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MATRICULAS'
      'set'
      '  MAT_APROVADO = :MAT_APROVADO,'
      '  MAT_CLIENTE = :MAT_CLIENTE,'
      '  MAT_CODIGO = :MAT_CODIGO,'
      '  MAT_CONCEITODISCURSO = :MAT_CONCEITODISCURSO,'
      '  MAT_CONCEITOEXERCICIOS = :MAT_CONCEITOEXERCICIOS,'
      '  MAT_CONCEITOGERAL = :MAT_CONCEITOGERAL,'
      '  MAT_CONCEITOLITERATURA = :MAT_CONCEITOLITERATURA,'
      '  MAT_CONTABILIZAR = :MAT_CONTABILIZAR,'
      '  MAT_DESISTENCIA = :MAT_DESISTENCIA,'
      '  MAT_DTATUALIZACAO = :MAT_DTATUALIZACAO,'
      '  MAT_DTCADASTRO = :MAT_DTCADASTRO,'
      '  MAT_MEDIAEXERCICIOS = :MAT_MEDIAEXERCICIOS,'
      '  MAT_MEDIAFINAL = :MAT_MEDIAFINAL,'
      '  MAT_OBSERVACOES = :MAT_OBSERVACOES,'
      '  MAT_STATUS = :MAT_STATUS,'
      '  MAT_TIPO = :MAT_TIPO,'
      '  MAT_TIPOMATRICULA = :MAT_TIPOMATRICULA,'
      '  MAT_TURMA = :MAT_TURMA,'
      '  MAT_USUARIO = :MAT_USUARIO,'
      '  MAT_VENDA = :MAT_VENDA,'
      '  MAT_VENDAMATERIAL = :MAT_VENDAMATERIAL,'
      '  MAT_VENDEDOR = :MAT_VENDEDOR'
      'where'
      '  MAT_CODIGO = :OLD_MAT_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MAT_CODIGO'
    GeneratorField.Generator = 'GEN_MATRICULAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 608
    Top = 488
    object TBMatriculasMAT_APROVADO: TIBStringField
      FieldName = 'MAT_APROVADO'
      Origin = '"MATRICULAS"."MAT_APROVADO"'
      Size = 1
    end
    object TBMatriculasMAT_CLIENTE: TIntegerField
      FieldName = 'MAT_CLIENTE'
      Origin = '"MATRICULAS"."MAT_CLIENTE"'
      Required = True
    end
    object TBMatriculasMAT_CODIGO: TIntegerField
      FieldName = 'MAT_CODIGO'
      Origin = '"MATRICULAS"."MAT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMatriculasMAT_CONCEITODISCURSO: TIBStringField
      FieldName = 'MAT_CONCEITODISCURSO'
      Origin = '"MATRICULAS"."MAT_CONCEITODISCURSO"'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOEXERCICIOS: TIBStringField
      FieldName = 'MAT_CONCEITOEXERCICIOS'
      Origin = '"MATRICULAS"."MAT_CONCEITOEXERCICIOS"'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOGERAL: TIBStringField
      FieldName = 'MAT_CONCEITOGERAL'
      Origin = '"MATRICULAS"."MAT_CONCEITOGERAL"'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOLITERATURA: TIBStringField
      FieldName = 'MAT_CONCEITOLITERATURA'
      Origin = '"MATRICULAS"."MAT_CONCEITOLITERATURA"'
      Size = 2
    end
    object TBMatriculasMAT_CONTABILIZAR: TIBStringField
      FieldName = 'MAT_CONTABILIZAR'
      Origin = '"MATRICULAS"."MAT_CONTABILIZAR"'
      Size = 1
    end
    object TBMatriculasMOT_DESCRICAO: TIBStringField
      FieldName = 'MOT_DESCRICAO'
      Origin = '"MOTIVOS"."MOT_DESCRICAO"'
      Size = 120
    end
    object TBMatriculasMAT_DESISTENCIA: TIntegerField
      FieldName = 'MAT_DESISTENCIA'
      Origin = '"MATRICULAS"."MAT_DESISTENCIA"'
    end
    object TBMatriculasMAT_DTATUALIZACAO: TDateField
      FieldName = 'MAT_DTATUALIZACAO'
      Origin = '"MATRICULAS"."MAT_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMatriculasMAT_DTCADASTRO: TDateField
      FieldName = 'MAT_DTCADASTRO'
      Origin = '"MATRICULAS"."MAT_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMatriculasMAT_MEDIAFINAL: TIBBCDField
      FieldName = 'MAT_MEDIAFINAL'
      Origin = '"MATRICULAS"."MAT_MEDIAFINAL"'
      Precision = 18
      Size = 4
    end
    object TBMatriculasMAT_MEDIAEXERCICIOS: TIBBCDField
      FieldName = 'MAT_MEDIAEXERCICIOS'
      Origin = '"MATRICULAS"."MAT_MEDIAEXERCICIOS"'
      Precision = 18
      Size = 4
    end
    object TBMatriculasMAT_TURMA: TIntegerField
      FieldName = 'MAT_TURMA'
      Origin = '"MATRICULAS"."MAT_TURMA"'
      Required = True
    end
    object TBMatriculasMAT_OBSERVACOES: TMemoField
      FieldName = 'MAT_OBSERVACOES'
      Origin = '"MATRICULAS"."MAT_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBMatriculasMAT_STATUS: TIBStringField
      FieldName = 'MAT_STATUS'
      Origin = '"MATRICULAS"."MAT_STATUS"'
      Size = 1
    end
    object TBMatriculasMAT_TIPO: TIBStringField
      FieldName = 'MAT_TIPO'
      Origin = '"MATRICULAS"."MAT_TIPO"'
      Size = 1
    end
    object TBMatriculasMAT_TIPOMATRICULA: TIBStringField
      FieldName = 'MAT_TIPOMATRICULA'
      Origin = '"MATRICULAS"."MAT_TIPOMATRICULA"'
      Size = 1
    end
    object TBMatriculasMAT_USUARIO: TIBStringField
      FieldName = 'MAT_USUARIO'
      Origin = '"MATRICULAS"."MAT_USUARIO"'
    end
    object TBMatriculasMAT_VENDA: TIntegerField
      FieldName = 'MAT_VENDA'
      Origin = '"MATRICULAS"."MAT_VENDA"'
      Required = True
    end
    object TBMatriculasMAT_VENDAMATERIAL: TIntegerField
      FieldName = 'MAT_VENDAMATERIAL'
      Origin = '"MATRICULAS"."MAT_VENDAMATERIAL"'
      Required = True
    end
    object TBMatriculasMAT_VENDEDOR: TIntegerField
      FieldName = 'MAT_VENDEDOR'
      Origin = '"MATRICULAS"."MAT_VENDEDOR"'
      Required = True
    end
    object TBMatriculasCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBMatriculasTUR_DESCRICAO: TIBStringField
      FieldName = 'TUR_DESCRICAO'
      Origin = '"TURMAS"."TUR_DESCRICAO"'
      Size = 50
    end
    object TBMatriculasVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSMatriculas: TDataSource
    DataSet = TBMatriculas
    OnStateChange = DSMatriculasStateChange
    Left = 608
    Top = 536
  end
  object TRMatriculas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 608
    Top = 584
  end
  object TBChamadas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRChamadas
    AfterDelete = TBChamadasAfterDelete
    AfterInsert = TBChamadasAfterInsert
    AfterPost = TBChamadasAfterPost
    BeforePost = TBChamadasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CHAMADAS'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    InsertSQL.Strings = (
      'insert into CHAMADAS'
      
        '  (CHA_CALENDARIO, CHA_CLIENTE, CHA_CODIGO, CHA_MATRICULA, CHA_P' +
        'RESENCA)'
      'values'
      
        '  (:CHA_CALENDARIO, :CHA_CLIENTE, :CHA_CODIGO, :CHA_MATRICULA, :' +
        'CHA_PRESENCA)')
    RefreshSQL.Strings = (
      'Select '
      '  CHA_CODIGO,'
      '  CHA_CALENDARIO,'
      '  CHA_CLIENTE,'
      '  CHA_PRESENCA,'
      '  CHA_MATRICULA'
      'from CHAMADAS '
      'where'
      '  CHA_CODIGO = :CHA_CODIGO')
    SelectSQL.Strings = (
      'select * from CHAMADAS'
      'left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO'
      'left join CLIENTES on CHA_CLIENTE=CLI_CODIGO'
      'left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO'
      'where CHA_CALENDARIO=:CAL_CODIGO'
      'order by CLI_NOME, CHA_CODIGO')
    ModifySQL.Strings = (
      'update CHAMADAS'
      'set'
      '  CHA_CALENDARIO = :CHA_CALENDARIO,'
      '  CHA_CLIENTE = :CHA_CLIENTE,'
      '  CHA_CODIGO = :CHA_CODIGO,'
      '  CHA_MATRICULA = :CHA_MATRICULA,'
      '  CHA_PRESENCA = :CHA_PRESENCA'
      'where'
      '  CHA_CODIGO = :OLD_CHA_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CHA_CODIGO'
    GeneratorField.Generator = 'GEN_CHAMADAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCalendarios
    Left = 672
    Top = 24
    object TBChamadasCHA_CALENDARIO: TIntegerField
      FieldName = 'CHA_CALENDARIO'
      Origin = '"CHAMADAS"."CHA_CALENDARIO"'
      Required = True
    end
    object TBChamadasCHA_CLIENTE: TIntegerField
      FieldName = 'CHA_CLIENTE'
      Origin = '"CHAMADAS"."CHA_CLIENTE"'
      Required = True
    end
    object TBChamadasCHA_CODIGO: TIntegerField
      FieldName = 'CHA_CODIGO'
      Origin = '"CHAMADAS"."CHA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBChamadasCAL_DATA: TDateField
      FieldName = 'CAL_DATA'
      Origin = '"CALENDARIOS"."CAL_DATA"'
    end
    object TBChamadasCHA_MATRICULA: TIntegerField
      FieldName = 'CHA_MATRICULA'
      Origin = '"CHAMADAS"."CHA_MATRICULA"'
      Required = True
    end
    object TBChamadasCHA_PRESENCA: TIBStringField
      FieldName = 'CHA_PRESENCA'
      Origin = '"CHAMADAS"."CHA_PRESENCA"'
      Size = 1
    end
    object TBChamadasCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBChamadasMAT_STATUS: TIBStringField
      FieldName = 'MAT_STATUS'
      Origin = '"MATRICULAS"."MAT_STATUS"'
      Size = 1
    end
  end
  object DSChamadas: TDataSource
    DataSet = TBChamadas
    Left = 672
    Top = 72
  end
  object TRChamadas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 672
    Top = 120
  end
  object TBConteudos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRConteudos
    AfterDelete = TBConteudosAfterDelete
    AfterInsert = TBConteudosAfterInsert
    AfterPost = TBConteudosAfterPost
    BeforeEdit = TBConteudosBeforeEdit
    BeforeInsert = TBConteudosBeforeInsert
    BeforePost = TBConteudosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTEUDOS'
      'where'
      '  CTO_CODIGO = :OLD_CTO_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTEUDOS'
      
        '  (CTO_CALENDARIO, CTO_CODIGO, CTO_CONTEUDO, CTO_DTATUALIZACAO, ' +
        'CTO_DTCADASTRO, '
      '   CTO_USUARIO)'
      'values'
      
        '  (:CTO_CALENDARIO, :CTO_CODIGO, :CTO_CONTEUDO, :CTO_DTATUALIZAC' +
        'AO, :CTO_DTCADASTRO, '
      '   :CTO_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CTO_CODIGO,'
      '  CTO_CALENDARIO,'
      '  CTO_CONTEUDO,'
      '  CTO_DTATUALIZACAO,'
      '  CTO_USUARIO,'
      '  CTO_DTCADASTRO'
      'from CONTEUDOS '
      'where'
      '  CTO_CODIGO = :CTO_CODIGO')
    SelectSQL.Strings = (
      'select * from CONTEUDOS'
      'where CTO_CALENDARIO=:CAL_CODIGO')
    ModifySQL.Strings = (
      'update CONTEUDOS'
      'set'
      '  CTO_CALENDARIO = :CTO_CALENDARIO,'
      '  CTO_CODIGO = :CTO_CODIGO,'
      '  CTO_CONTEUDO = :CTO_CONTEUDO,'
      '  CTO_DTATUALIZACAO = :CTO_DTATUALIZACAO,'
      '  CTO_DTCADASTRO = :CTO_DTCADASTRO,'
      '  CTO_USUARIO = :CTO_USUARIO'
      'where'
      '  CTO_CODIGO = :OLD_CTO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTO_CODIGO'
    GeneratorField.Generator = 'GEN_CONTEUDOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCalendarios
    Left = 416
    Top = 280
    object TBConteudosCTO_CALENDARIO: TIntegerField
      FieldName = 'CTO_CALENDARIO'
      Origin = '"CONTEUDOS"."CTO_CALENDARIO"'
      Required = True
    end
    object TBConteudosCTO_CODIGO: TIntegerField
      FieldName = 'CTO_CODIGO'
      Origin = '"CONTEUDOS"."CTO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBConteudosCTO_CONTEUDO: TMemoField
      FieldName = 'CTO_CONTEUDO'
      Origin = '"CONTEUDOS"."CTO_CONTEUDO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBConteudosCTO_DTATUALIZACAO: TDateField
      FieldName = 'CTO_DTATUALIZACAO'
      Origin = '"CONTEUDOS"."CTO_DTATUALIZACAO"'
    end
    object TBConteudosCTO_DTCADASTRO: TDateField
      FieldName = 'CTO_DTCADASTRO'
      Origin = '"CONTEUDOS"."CTO_DTCADASTRO"'
    end
    object TBConteudosCTO_USUARIO: TIBStringField
      FieldName = 'CTO_USUARIO'
      Origin = '"CONTEUDOS"."CTO_USUARIO"'
    end
  end
  object DSConteudos: TDataSource
    DataSet = TBConteudos
    OnStateChange = DSConteudosStateChange
    Left = 416
    Top = 328
  end
  object TRConteudos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 376
  end
  object TBExercicios: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRExercicios
    AfterDelete = TBExerciciosAfterDelete
    AfterInsert = TBExerciciosAfterInsert
    AfterPost = TBExerciciosAfterPost
    BeforeEdit = TBExerciciosBeforeEdit
    BeforeInsert = TBExerciciosBeforeInsert
    BeforePost = TBExerciciosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EXERCICIOS'
      'where'
      '  EXE_CODIGO = :OLD_EXE_CODIGO')
    InsertSQL.Strings = (
      'insert into EXERCICIOS'
      
        '  (EXE_CODIGO, EXE_DESCRICAO, EXE_DTATUALIZACAO, EXE_DTCADASTRO,' +
        ' EXE_MATRICULA, '
      '   EXE_NOTA, EXE_NOTAREVISAO, EXE_USUARIO)'
      'values'
      
        '  (:EXE_CODIGO, :EXE_DESCRICAO, :EXE_DTATUALIZACAO, :EXE_DTCADAS' +
        'TRO, :EXE_MATRICULA, '
      '   :EXE_NOTA, :EXE_NOTAREVISAO, :EXE_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  EXE_CODIGO,'
      '  EXE_MATRICULA,'
      '  EXE_NOTA,'
      '  EXE_NOTAREVISAO,'
      '  EXE_DTCADASTRO,'
      '  EXE_DTATUALIZACAO,'
      '  EXE_USUARIO,'
      '  EXE_DESCRICAO'
      'from EXERCICIOS '
      'where'
      '  EXE_CODIGO = :EXE_CODIGO')
    SelectSQL.Strings = (
      'select '
      
        'EXE_CODIGO, EXE_MATRICULA, EXE_NOTA, EXE_NOTAREVISAO, EXE_DTCADA' +
        'STRO,'
      'EXE_DTATUALIZACAO, EXE_USUARIO, EXE_DESCRICAO, CLI_NOME'
      'from EXERCICIOS'
      'left join MATRICULAS on EXE_MATRICULA=MAT_CODIGO'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'where EXE_MATRICULA=:MAT_CODIGO'
      'order by EXE_DTCADASTRO desc')
    ModifySQL.Strings = (
      'update EXERCICIOS'
      'set'
      '  EXE_CODIGO = :EXE_CODIGO,'
      '  EXE_DESCRICAO = :EXE_DESCRICAO,'
      '  EXE_DTATUALIZACAO = :EXE_DTATUALIZACAO,'
      '  EXE_DTCADASTRO = :EXE_DTCADASTRO,'
      '  EXE_MATRICULA = :EXE_MATRICULA,'
      '  EXE_NOTA = :EXE_NOTA,'
      '  EXE_NOTAREVISAO = :EXE_NOTAREVISAO,'
      '  EXE_USUARIO = :EXE_USUARIO'
      'where'
      '  EXE_CODIGO = :OLD_EXE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'EXE_CODIGO'
    GeneratorField.Generator = 'GEN_EXERCICIOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 800
    Top = 280
    object TBExerciciosEXE_CODIGO: TIntegerField
      FieldName = 'EXE_CODIGO'
      Origin = '"EXERCICIOS"."EXE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBExerciciosEXE_DESCRICAO: TIBStringField
      FieldName = 'EXE_DESCRICAO'
      Origin = '"EXERCICIOS"."EXE_DESCRICAO"'
      Size = 50
    end
    object TBExerciciosEXE_DTATUALIZACAO: TDateField
      FieldName = 'EXE_DTATUALIZACAO'
      Origin = '"EXERCICIOS"."EXE_DTATUALIZACAO"'
    end
    object TBExerciciosEXE_DTCADASTRO: TDateField
      FieldName = 'EXE_DTCADASTRO'
      Origin = '"EXERCICIOS"."EXE_DTCADASTRO"'
    end
    object TBExerciciosEXE_MATRICULA: TIntegerField
      FieldName = 'EXE_MATRICULA'
      Origin = '"EXERCICIOS"."EXE_MATRICULA"'
      Required = True
    end
    object TBExerciciosEXE_NOTA: TIBBCDField
      FieldName = 'EXE_NOTA'
      Origin = '"EXERCICIOS"."EXE_NOTA"'
      Precision = 18
      Size = 4
    end
    object TBExerciciosEXE_NOTAREVISAO: TIBBCDField
      FieldName = 'EXE_NOTAREVISAO'
      Origin = '"EXERCICIOS"."EXE_NOTAREVISAO"'
      Precision = 18
      Size = 4
    end
    object TBExerciciosEXE_USUARIO: TIBStringField
      FieldName = 'EXE_USUARIO'
      Origin = '"EXERCICIOS"."EXE_USUARIO"'
    end
    object TBExerciciosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object DSExercicios: TDataSource
    DataSet = TBExercicios
    OnStateChange = DSExerciciosStateChange
    Left = 800
    Top = 328
  end
  object TRExercicios: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 800
    Top = 376
  end
  object TBAvaliacoesTipo: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRAvaliacoesTipo
    AfterDelete = TBAvaliacoesTipoAfterDelete
    AfterInsert = TBAvaliacoesTipoAfterInsert
    AfterPost = TBAvaliacoesTipoAfterPost
    BeforeEdit = TBAvaliacoesTipoBeforeEdit
    BeforeInsert = TBAvaliacoesTipoBeforeInsert
    BeforePost = TBAvaliacoesTipoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AVALIACOESTIPO'
      'where'
      '  AVT_CODIGO = :OLD_AVT_CODIGO')
    InsertSQL.Strings = (
      'insert into AVALIACOESTIPO'
      
        '  (AVT_CODIGO, AVT_DESCRICAO, AVT_DTATUALIZACAO, AVT_DTCADASTRO,' +
        ' AVT_USUARIO)'
      'values'
      
        '  (:AVT_CODIGO, :AVT_DESCRICAO, :AVT_DTATUALIZACAO, :AVT_DTCADAS' +
        'TRO, :AVT_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  AVT_CODIGO,'
      '  AVT_DESCRICAO,'
      '  AVT_DTCADASTRO,'
      '  AVT_DTATUALIZACAO,'
      '  AVT_USUARIO'
      'from AVALIACOESTIPO '
      'where'
      '  AVT_CODIGO = :AVT_CODIGO')
    SelectSQL.Strings = (
      'select * from AVALIACOESTIPO'
      'where AVT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update AVALIACOESTIPO'
      'set'
      '  AVT_CODIGO = :AVT_CODIGO,'
      '  AVT_DESCRICAO = :AVT_DESCRICAO,'
      '  AVT_DTATUALIZACAO = :AVT_DTATUALIZACAO,'
      '  AVT_DTCADASTRO = :AVT_DTCADASTRO,'
      '  AVT_USUARIO = :AVT_USUARIO'
      'where'
      '  AVT_CODIGO = :OLD_AVT_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'AVT_CODIGO'
    GeneratorField.Generator = 'GEN_AVALIACOESTIPO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 288
    Top = 24
    object TBAvaliacoesTipoAVT_CODIGO: TIntegerField
      FieldName = 'AVT_CODIGO'
      Origin = '"AVALIACOESTIPO"."AVT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAvaliacoesTipoAVT_DESCRICAO: TIBStringField
      FieldName = 'AVT_DESCRICAO'
      Origin = '"AVALIACOESTIPO"."AVT_DESCRICAO"'
      Size = 50
    end
    object TBAvaliacoesTipoAVT_DTATUALIZACAO: TDateField
      FieldName = 'AVT_DTATUALIZACAO'
      Origin = '"AVALIACOESTIPO"."AVT_DTATUALIZACAO"'
    end
    object TBAvaliacoesTipoAVT_DTCADASTRO: TDateField
      FieldName = 'AVT_DTCADASTRO'
      Origin = '"AVALIACOESTIPO"."AVT_DTCADASTRO"'
    end
    object TBAvaliacoesTipoAVT_USUARIO: TIBStringField
      FieldName = 'AVT_USUARIO'
      Origin = '"AVALIACOESTIPO"."AVT_USUARIO"'
    end
  end
  object DSAvaliacoesTipo: TDataSource
    DataSet = TBAvaliacoesTipo
    OnStateChange = DSAvaliacoesTipoStateChange
    Left = 288
    Top = 72
  end
  object TRAvaliacoesTipo: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 288
    Top = 120
  end
  object TBAvaliacoes: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRAvaliacoes
    AfterDelete = TBAvaliacoesAfterDelete
    AfterInsert = TBAvaliacoesAfterInsert
    AfterPost = TBAvaliacoesAfterPost
    BeforeEdit = TBAvaliacoesBeforeEdit
    BeforeInsert = TBAvaliacoesBeforeInsert
    BeforePost = TBAvaliacoesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AVALIACOES'
      'where'
      '  AVA_CODIGO = :OLD_AVA_CODIGO')
    InsertSQL.Strings = (
      'insert into AVALIACOES'
      
        '  (AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO, AVA_DTCADASTRO' +
        ', AVA_MATRICULA, '
      '   AVA_NOTA, AVA_TIPO, AVA_USUARIO)'
      'values'
      
        '  (:AVA_CODIGO, :AVA_CONTAMEDIA, :AVA_DTATUALIZACAO, :AVA_DTCADA' +
        'STRO, :AVA_MATRICULA, '
      '   :AVA_NOTA, :AVA_TIPO, :AVA_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  AVA_CODIGO,'
      '  AVA_MATRICULA,'
      '  AVA_TIPO,'
      '  AVA_NOTA,'
      '  AVA_CONTAMEDIA,'
      '  AVA_DTCADASTRO,'
      '  AVA_DTATUALIZACAO,'
      '  AVA_USUARIO'
      'from AVALIACOES '
      'where'
      '  AVA_CODIGO = :AVA_CODIGO')
    SelectSQL.Strings = (
      'select '
      'AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO,'
      'AVA_DTCADASTRO, AVA_MATRICULA, AVA_NOTA, AVA_TIPO,'
      'AVA_USUARIO, CLI_NOME, AVT_DESCRICAO'
      'from AVALIACOES'
      'left join AVALIACOESTIPO on AVA_TIPO=AVT_CODIGO'
      'left join MATRICULAS on AVA_MATRICULA=MAT_CODIGO'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'where AVA_MATRICULA=:MAT_CODIGO'
      'order by AVA_DTCADASTRO desc')
    ModifySQL.Strings = (
      'update AVALIACOES'
      'set'
      '  AVA_CODIGO = :AVA_CODIGO,'
      '  AVA_CONTAMEDIA = :AVA_CONTAMEDIA,'
      '  AVA_DTATUALIZACAO = :AVA_DTATUALIZACAO,'
      '  AVA_DTCADASTRO = :AVA_DTCADASTRO,'
      '  AVA_MATRICULA = :AVA_MATRICULA,'
      '  AVA_NOTA = :AVA_NOTA,'
      '  AVA_TIPO = :AVA_TIPO,'
      '  AVA_USUARIO = :AVA_USUARIO'
      'where'
      '  AVA_CODIGO = :OLD_AVA_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'AVA_CODIGO'
    GeneratorField.Generator = 'GEN_AVALIACOES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 224
    Top = 24
    object TBAvaliacoesAVA_CODIGO: TIntegerField
      FieldName = 'AVA_CODIGO'
      Origin = '"AVALIACOES"."AVA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAvaliacoesAVA_CONTAMEDIA: TIBStringField
      FieldName = 'AVA_CONTAMEDIA'
      Origin = '"AVALIACOES"."AVA_CONTAMEDIA"'
      Size = 1
    end
    object TBAvaliacoesAVT_DESCRICAO: TIBStringField
      FieldName = 'AVT_DESCRICAO'
      Origin = '"AVALIACOESTIPO"."AVT_DESCRICAO"'
      Size = 50
    end
    object TBAvaliacoesAVA_DTATUALIZACAO: TDateField
      FieldName = 'AVA_DTATUALIZACAO'
      Origin = '"AVALIACOES"."AVA_DTATUALIZACAO"'
    end
    object TBAvaliacoesAVA_DTCADASTRO: TDateField
      FieldName = 'AVA_DTCADASTRO'
      Origin = '"AVALIACOES"."AVA_DTCADASTRO"'
    end
    object TBAvaliacoesAVA_MATRICULA: TIntegerField
      FieldName = 'AVA_MATRICULA'
      Origin = '"AVALIACOES"."AVA_MATRICULA"'
      Required = True
    end
    object TBAvaliacoesAVA_NOTA: TIBBCDField
      FieldName = 'AVA_NOTA'
      Origin = '"AVALIACOES"."AVA_NOTA"'
      Precision = 18
      Size = 4
    end
    object TBAvaliacoesAVA_TIPO: TIntegerField
      FieldName = 'AVA_TIPO'
      Origin = '"AVALIACOES"."AVA_TIPO"'
      Required = True
    end
    object TBAvaliacoesAVA_USUARIO: TIBStringField
      FieldName = 'AVA_USUARIO'
      Origin = '"AVALIACOES"."AVA_USUARIO"'
    end
    object TBAvaliacoesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object DSAvaliacoes: TDataSource
    DataSet = TBAvaliacoes
    OnStateChange = DSAvaliacoesStateChange
    Left = 224
    Top = 72
  end
  object TRAvaliacoes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 120
  end
  object QYExercicios: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRExercicios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select count(*) from EXERCICIOS where EXE_MATRICULA=:matricula')
    Left = 800
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'matricula'
        ParamType = ptUnknown
      end>
  end
  object QYAvaliacoes: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRAvaliacoes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select count(*) from AVALIACOES where AVA_MATRICULA=:matricula')
    Left = 224
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'matricula'
        ParamType = ptUnknown
      end>
  end
  object TBRecibos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRRecibos
    AfterDelete = TBRecibosAfterDelete
    AfterInsert = TBRecibosAfterInsert
    AfterPost = TBRecibosAfterPost
    BeforeEdit = TBRecibosBeforeEdit
    BeforeInsert = TBRecibosBeforeInsert
    BeforePost = TBRecibosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RECIBOS'
      'where'
      '  RCB_CODIGO = :OLD_RCB_CODIGO')
    InsertSQL.Strings = (
      'insert into RECIBOS'
      
        '  (RCB_CBAIRRO, RCB_CCEP, RCB_CCIDADE, RCB_CCNPJCPF, RCB_CENDERE' +
        'CO, RCB_CFONE1, '
      
        '   RCB_CNOME, RCB_CNUMERO, RCB_CODIGO, RCB_DATA, RCB_DTATUALIZAC' +
        'AO, RCB_PROVENIENTE, '
      
        '   RCB_SBAIRRO, RCB_SCEP, RCB_SCIDADE, RCB_SCNPJCPF, RCB_SENDERE' +
        'CO, RCB_SFONE1, '
      
        '   RCB_SNOME, RCB_SNUMERO, RCB_USUARIO, RCB_VALOR, RCB_VALOREXTE' +
        'NSO)'
      'values'
      
        '  (:RCB_CBAIRRO, :RCB_CCEP, :RCB_CCIDADE, :RCB_CCNPJCPF, :RCB_CE' +
        'NDERECO, '
      
        '   :RCB_CFONE1, :RCB_CNOME, :RCB_CNUMERO, :RCB_CODIGO, :RCB_DATA' +
        ', :RCB_DTATUALIZACAO, '
      
        '   :RCB_PROVENIENTE, :RCB_SBAIRRO, :RCB_SCEP, :RCB_SCIDADE, :RCB' +
        '_SCNPJCPF, '
      
        '   :RCB_SENDERECO, :RCB_SFONE1, :RCB_SNOME, :RCB_SNUMERO, :RCB_U' +
        'SUARIO, '
      '   :RCB_VALOR, :RCB_VALOREXTENSO)')
    RefreshSQL.Strings = (
      'Select '
      '  RCB_CODIGO,'
      '  RCB_CNOME,'
      '  RCB_CENDERECO,'
      '  RCB_CNUMERO,'
      '  RCB_CBAIRRO,'
      '  RCB_CCIDADE,'
      '  RCB_CCEP,'
      '  RCB_CCNPJCPF,'
      '  RCB_CFONE1,'
      '  RCB_SNOME,'
      '  RCB_SENDERECO,'
      '  RCB_SNUMERO,'
      '  RCB_SBAIRRO,'
      '  RCB_SCIDADE,'
      '  RCB_SCEP,'
      '  RCB_SCNPJCPF,'
      '  RCB_SFONE1,'
      '  RCB_PROVENIENTE,'
      '  RCB_VALOR,'
      '  RCB_VALOREXTENSO,'
      '  RCB_DATA,'
      '  RCB_DTATUALIZACAO,'
      '  RCB_USUARIO'
      'from RECIBOS '
      'where'
      '  RCB_CODIGO = :RCB_CODIGO')
    SelectSQL.Strings = (
      'select * from RECIBOS'
      'where RCB_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update RECIBOS'
      'set'
      '  RCB_CBAIRRO = :RCB_CBAIRRO,'
      '  RCB_CCEP = :RCB_CCEP,'
      '  RCB_CCIDADE = :RCB_CCIDADE,'
      '  RCB_CCNPJCPF = :RCB_CCNPJCPF,'
      '  RCB_CENDERECO = :RCB_CENDERECO,'
      '  RCB_CFONE1 = :RCB_CFONE1,'
      '  RCB_CNOME = :RCB_CNOME,'
      '  RCB_CNUMERO = :RCB_CNUMERO,'
      '  RCB_CODIGO = :RCB_CODIGO,'
      '  RCB_DATA = :RCB_DATA,'
      '  RCB_DTATUALIZACAO = :RCB_DTATUALIZACAO,'
      '  RCB_PROVENIENTE = :RCB_PROVENIENTE,'
      '  RCB_SBAIRRO = :RCB_SBAIRRO,'
      '  RCB_SCEP = :RCB_SCEP,'
      '  RCB_SCIDADE = :RCB_SCIDADE,'
      '  RCB_SCNPJCPF = :RCB_SCNPJCPF,'
      '  RCB_SENDERECO = :RCB_SENDERECO,'
      '  RCB_SFONE1 = :RCB_SFONE1,'
      '  RCB_SNOME = :RCB_SNOME,'
      '  RCB_SNUMERO = :RCB_SNUMERO,'
      '  RCB_USUARIO = :RCB_USUARIO,'
      '  RCB_VALOR = :RCB_VALOR,'
      '  RCB_VALOREXTENSO = :RCB_VALOREXTENSO'
      'where'
      '  RCB_CODIGO = :OLD_RCB_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'RCB_CODIGO'
    GeneratorField.Generator = 'GEN_RECIBOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 864
    Top = 696
    object TBRecibosRCB_CBAIRRO: TIBStringField
      FieldName = 'RCB_CBAIRRO'
      Origin = '"RECIBOS"."RCB_CBAIRRO"'
      Size = 50
    end
    object TBRecibosRCB_CCEP: TIBStringField
      FieldName = 'RCB_CCEP'
      Origin = '"RECIBOS"."RCB_CCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBRecibosRCB_CCIDADE: TIBStringField
      FieldName = 'RCB_CCIDADE'
      Origin = '"RECIBOS"."RCB_CCIDADE"'
      Size = 50
    end
    object TBRecibosRCB_CCNPJCPF: TIBStringField
      FieldName = 'RCB_CCNPJCPF'
      Origin = '"RECIBOS"."RCB_CCNPJCPF"'
    end
    object TBRecibosRCB_CENDERECO: TIBStringField
      FieldName = 'RCB_CENDERECO'
      Origin = '"RECIBOS"."RCB_CENDERECO"'
      Size = 100
    end
    object TBRecibosRCB_CFONE1: TIBStringField
      FieldName = 'RCB_CFONE1'
      Origin = '"RECIBOS"."RCB_CFONE1"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBRecibosRCB_CNOME: TIBStringField
      FieldName = 'RCB_CNOME'
      Origin = '"RECIBOS"."RCB_CNOME"'
      Size = 50
    end
    object TBRecibosRCB_CNUMERO: TIBStringField
      FieldName = 'RCB_CNUMERO'
      Origin = '"RECIBOS"."RCB_CNUMERO"'
      Size = 15
    end
    object TBRecibosRCB_CODIGO: TIntegerField
      FieldName = 'RCB_CODIGO'
      Origin = '"RECIBOS"."RCB_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRecibosRCB_DATA: TDateField
      FieldName = 'RCB_DATA'
      Origin = '"RECIBOS"."RCB_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBRecibosRCB_DTATUALIZACAO: TDateField
      FieldName = 'RCB_DTATUALIZACAO'
      Origin = '"RECIBOS"."RCB_DTATUALIZACAO"'
    end
    object TBRecibosRCB_PROVENIENTE: TIBStringField
      FieldName = 'RCB_PROVENIENTE'
      Origin = '"RECIBOS"."RCB_PROVENIENTE"'
      Size = 50
    end
    object TBRecibosRCB_SBAIRRO: TIBStringField
      FieldName = 'RCB_SBAIRRO'
      Origin = '"RECIBOS"."RCB_SBAIRRO"'
      Size = 50
    end
    object TBRecibosRCB_SCEP: TIBStringField
      FieldName = 'RCB_SCEP'
      Origin = '"RECIBOS"."RCB_SCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBRecibosRCB_SCIDADE: TIBStringField
      FieldName = 'RCB_SCIDADE'
      Origin = '"RECIBOS"."RCB_SCIDADE"'
      Size = 50
    end
    object TBRecibosRCB_SCNPJCPF: TIBStringField
      FieldName = 'RCB_SCNPJCPF'
      Origin = '"RECIBOS"."RCB_SCNPJCPF"'
    end
    object TBRecibosRCB_SENDERECO: TIBStringField
      FieldName = 'RCB_SENDERECO'
      Origin = '"RECIBOS"."RCB_SENDERECO"'
      Size = 100
    end
    object TBRecibosRCB_SFONE1: TIBStringField
      FieldName = 'RCB_SFONE1'
      Origin = '"RECIBOS"."RCB_SFONE1"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBRecibosRCB_SNOME: TIBStringField
      FieldName = 'RCB_SNOME'
      Origin = '"RECIBOS"."RCB_SNOME"'
      Size = 50
    end
    object TBRecibosRCB_SNUMERO: TIBStringField
      FieldName = 'RCB_SNUMERO'
      Origin = '"RECIBOS"."RCB_SNUMERO"'
      Size = 15
    end
    object TBRecibosRCB_USUARIO: TIBStringField
      FieldName = 'RCB_USUARIO'
      Origin = '"RECIBOS"."RCB_USUARIO"'
    end
    object TBRecibosRCB_VALOR: TIBBCDField
      FieldName = 'RCB_VALOR'
      Origin = '"RECIBOS"."RCB_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBRecibosRCB_VALOREXTENSO: TIBStringField
      FieldName = 'RCB_VALOREXTENSO'
      Origin = '"RECIBOS"."RCB_VALOREXTENSO"'
      Size = 120
    end
  end
  object DSRecibos: TDataSource
    DataSet = TBRecibos
    OnStateChange = DSRecibosStateChange
    Left = 864
    Top = 744
  end
  object TRRecibos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 864
    Top = 792
  end
  object TBPontos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRPontos
    AfterDelete = TBPontosAfterDelete
    AfterEdit = TBPontosAfterEdit
    AfterInsert = TBPontosAfterInsert
    AfterPost = TBPontosAfterPost
    BeforeEdit = TBPontosBeforeEdit
    BeforeInsert = TBPontosBeforeInsert
    BeforePost = TBPontosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PONTOS'
      'where'
      '  PTS_CODIGO = :OLD_PTS_CODIGO')
    InsertSQL.Strings = (
      'insert into PONTOS'
      
        '  (PTS_CLIENTE, PTS_CODIGO, PTS_COTACAO, PTS_DESCRICAO, PTS_DTAT' +
        'UALIZACAO, '
      
        '   PTS_DTCADASTRO, PTS_ENTRADASAIDA, PTS_NUMDOCTO, PTS_PONTOS, P' +
        'TS_SALDOANTERIOR, '
      '   PTS_SALDOPOSTERIOR, PTS_USUARIO, PTS_VALOR)'
      'values'
      
        '  (:PTS_CLIENTE, :PTS_CODIGO, :PTS_COTACAO, :PTS_DESCRICAO, :PTS' +
        '_DTATUALIZACAO, '
      
        '   :PTS_DTCADASTRO, :PTS_ENTRADASAIDA, :PTS_NUMDOCTO, :PTS_PONTO' +
        'S, :PTS_SALDOANTERIOR, '
      '   :PTS_SALDOPOSTERIOR, :PTS_USUARIO, :PTS_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  PTS_CODIGO,'
      '  PTS_CLIENTE,'
      '  PTS_ENTRADASAIDA,'
      '  PTS_PONTOS,'
      '  PTS_SALDOANTERIOR,'
      '  PTS_SALDOPOSTERIOR,'
      '  PTS_DESCRICAO,'
      '  PTS_DTCADASTRO,'
      '  PTS_DTATUALIZACAO,'
      '  PTS_USUARIO,'
      '  PTS_NUMDOCTO,'
      '  PTS_COTACAO,'
      '  PTS_VALOR'
      'from PONTOS '
      'where'
      '  PTS_CODIGO = :PTS_CODIGO')
    SelectSQL.Strings = (
      'select * from PONTOS'
      'left join CLIENTES on PTS_CLIENTE=CLI_CODIGO'
      'where PTS_CODIGO=:codigo'
      'order by PTS_DTCADASTRO desc')
    ModifySQL.Strings = (
      'update PONTOS'
      'set'
      '  PTS_CLIENTE = :PTS_CLIENTE,'
      '  PTS_CODIGO = :PTS_CODIGO,'
      '  PTS_COTACAO = :PTS_COTACAO,'
      '  PTS_DESCRICAO = :PTS_DESCRICAO,'
      '  PTS_DTATUALIZACAO = :PTS_DTATUALIZACAO,'
      '  PTS_DTCADASTRO = :PTS_DTCADASTRO,'
      '  PTS_ENTRADASAIDA = :PTS_ENTRADASAIDA,'
      '  PTS_NUMDOCTO = :PTS_NUMDOCTO,'
      '  PTS_PONTOS = :PTS_PONTOS,'
      '  PTS_SALDOANTERIOR = :PTS_SALDOANTERIOR,'
      '  PTS_SALDOPOSTERIOR = :PTS_SALDOPOSTERIOR,'
      '  PTS_USUARIO = :PTS_USUARIO,'
      '  PTS_VALOR = :PTS_VALOR'
      'where'
      '  PTS_CODIGO = :OLD_PTS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PTS_CODIGO'
    GeneratorField.Generator = 'GEN_PONTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 160
    Top = 696
    object TBPontosPTS_CODIGO: TIntegerField
      FieldName = 'PTS_CODIGO'
      Origin = '"PONTOS"."PTS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPontosPTS_CLIENTE: TIntegerField
      FieldName = 'PTS_CLIENTE'
      Origin = '"PONTOS"."PTS_CLIENTE"'
      Required = True
    end
    object TBPontosPTS_COTACAO: TIBBCDField
      FieldName = 'PTS_COTACAO'
      Origin = '"PONTOS"."PTS_COTACAO"'
      Precision = 18
      Size = 4
    end
    object TBPontosPTS_DESCRICAO: TIBStringField
      FieldName = 'PTS_DESCRICAO'
      Origin = '"PONTOS"."PTS_DESCRICAO"'
      Size = 50
    end
    object TBPontosPTS_DTATUALIZACAO: TDateField
      FieldName = 'PTS_DTATUALIZACAO'
      Origin = '"PONTOS"."PTS_DTATUALIZACAO"'
    end
    object TBPontosPTS_DTCADASTRO: TDateField
      FieldName = 'PTS_DTCADASTRO'
      Origin = '"PONTOS"."PTS_DTCADASTRO"'
    end
    object TBPontosPTS_ENTRADASAIDA: TIBStringField
      FieldName = 'PTS_ENTRADASAIDA'
      Origin = '"PONTOS"."PTS_ENTRADASAIDA"'
      Size = 1
    end
    object TBPontosPTS_NUMDOCTO: TIBStringField
      FieldName = 'PTS_NUMDOCTO'
      Origin = '"PONTOS"."PTS_NUMDOCTO"'
    end
    object TBPontosPTS_PONTOS: TIBBCDField
      FieldName = 'PTS_PONTOS'
      Origin = '"PONTOS"."PTS_PONTOS"'
      Precision = 18
      Size = 4
    end
    object TBPontosPTS_SALDOANTERIOR: TIBBCDField
      FieldName = 'PTS_SALDOANTERIOR'
      Origin = '"PONTOS"."PTS_SALDOANTERIOR"'
      Precision = 18
      Size = 4
    end
    object TBPontosPTS_SALDOPOSTERIOR: TIBBCDField
      FieldName = 'PTS_SALDOPOSTERIOR'
      Origin = '"PONTOS"."PTS_SALDOPOSTERIOR"'
      Precision = 18
      Size = 4
    end
    object TBPontosPTS_USUARIO: TIBStringField
      FieldName = 'PTS_USUARIO'
      Origin = '"PONTOS"."PTS_USUARIO"'
    end
    object TBPontosPTS_VALOR: TIBBCDField
      FieldName = 'PTS_VALOR'
      Origin = '"PONTOS"."PTS_VALOR"'
      Precision = 18
      Size = 4
    end
    object TBPontosCLI_PONTOS: TIBBCDField
      FieldName = 'CLI_PONTOS'
      Origin = '"CLIENTES"."CLI_PONTOS"'
      Precision = 18
      Size = 4
    end
    object TBPontosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object DSPontos: TDataSource
    DataSet = TBPontos
    OnStateChange = DSPontosStateChange
    Left = 160
    Top = 744
  end
  object TRPontos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 792
  end
  object TBMotivos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMotivos
    AfterDelete = TBMotivosAfterDelete
    AfterInsert = TBMotivosAfterInsert
    AfterPost = TBMotivosAfterPost
    BeforeEdit = TBMotivosBeforeEdit
    BeforeInsert = TBMotivosBeforeInsert
    BeforePost = TBMotivosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MOTIVOS'
      'where'
      '  MOT_CODIGO = :OLD_MOT_CODIGO')
    InsertSQL.Strings = (
      'insert into MOTIVOS'
      
        '  (MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCADASTRO,' +
        ' MOT_USUARIO)'
      'values'
      
        '  (:MOT_CODIGO, :MOT_DESCRICAO, :MOT_DTATUALIZACAO, :MOT_DTCADAS' +
        'TRO, :MOT_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  MOT_CODIGO,'
      '  MOT_DESCRICAO,'
      '  MOT_DTCADASTRO,'
      '  MOT_DTATUALIZACAO,'
      '  MOT_USUARIO'
      'from MOTIVOS '
      'where'
      '  MOT_CODIGO = :MOT_CODIGO')
    SelectSQL.Strings = (
      'select * from MOTIVOS'
      'where MOT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MOTIVOS'
      'set'
      '  MOT_CODIGO = :MOT_CODIGO,'
      '  MOT_DESCRICAO = :MOT_DESCRICAO,'
      '  MOT_DTATUALIZACAO = :MOT_DTATUALIZACAO,'
      '  MOT_DTCADASTRO = :MOT_DTCADASTRO,'
      '  MOT_USUARIO = :MOT_USUARIO'
      'where'
      '  MOT_CODIGO = :OLD_MOT_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MOT_CODIGO'
    GeneratorField.Generator = 'GEN_MOTIVOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1248
    Top = 488
    object TBMotivosMOT_CODIGO: TIntegerField
      FieldName = 'MOT_CODIGO'
      Origin = '"MOTIVOS"."MOT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMotivosMOT_DESCRICAO: TIBStringField
      FieldName = 'MOT_DESCRICAO'
      Origin = '"MOTIVOS"."MOT_DESCRICAO"'
      Size = 120
    end
    object TBMotivosMOT_DTATUALIZACAO: TDateField
      FieldName = 'MOT_DTATUALIZACAO'
      Origin = '"MOTIVOS"."MOT_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMotivosMOT_DTCADASTRO: TDateField
      FieldName = 'MOT_DTCADASTRO'
      Origin = '"MOTIVOS"."MOT_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMotivosMOT_USUARIO: TIBStringField
      FieldName = 'MOT_USUARIO'
      Origin = '"MOTIVOS"."MOT_USUARIO"'
    end
  end
  object DSMotivos: TDataSource
    DataSet = TBMotivos
    OnStateChange = DSMotivosStateChange
    Left = 1248
    Top = 536
  end
  object TRMotivos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1248
    Top = 584
  end
  object TBLocais: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRLocais
    AfterDelete = TBLocaisAfterDelete
    AfterInsert = TBLocaisAfterInsert
    AfterPost = TBLocaisAfterPost
    BeforeEdit = TBLocaisBeforeEdit
    BeforeInsert = TBLocaisBeforeInsert
    BeforePost = TBLocaisBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCAIS'
      'where'
      '  LCA_CODIGO = :OLD_LCA_CODIGO')
    InsertSQL.Strings = (
      'insert into LOCAIS'
      
        '  (LCA_CODIGO, LCA_CONVENIADO, LCA_DESCRICAO, LCA_DTATUALIZACAO,' +
        ' LCA_DTCADASTRO, '
      '   LCA_USUARIO)'
      'values'
      
        '  (:LCA_CODIGO, :LCA_CONVENIADO, :LCA_DESCRICAO, :LCA_DTATUALIZA' +
        'CAO, :LCA_DTCADASTRO, '
      '   :LCA_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  LCA_CODIGO,'
      '  LCA_DESCRICAO,'
      '  LCA_DTCADASTRO,'
      '  LCA_DTATUALIZACAO,'
      '  LCA_USUARIO,'
      '  LCA_CONVENIADO'
      'from LOCAIS '
      'where'
      '  LCA_CODIGO = :LCA_CODIGO')
    SelectSQL.Strings = (
      'select * from LOCAIS'
      'where LCA_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update LOCAIS'
      'set'
      '  LCA_CODIGO = :LCA_CODIGO,'
      '  LCA_CONVENIADO = :LCA_CONVENIADO,'
      '  LCA_DESCRICAO = :LCA_DESCRICAO,'
      '  LCA_DTATUALIZACAO = :LCA_DTATUALIZACAO,'
      '  LCA_DTCADASTRO = :LCA_DTCADASTRO,'
      '  LCA_USUARIO = :LCA_USUARIO'
      'where'
      '  LCA_CODIGO = :OLD_LCA_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'LCA_CODIGO'
    GeneratorField.Generator = 'GEN_LOCAIS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 352
    Top = 488
    object TBLocaisLCA_CODIGO: TIntegerField
      FieldName = 'LCA_CODIGO'
      Origin = '"LOCAIS"."LCA_CODIGO"'
      Required = True
    end
    object TBLocaisLCA_CONVENIADO: TIBStringField
      FieldName = 'LCA_CONVENIADO'
      Origin = '"LOCAIS"."LCA_CONVENIADO"'
      Size = 1
    end
    object TBLocaisLCA_DESCRICAO: TIBStringField
      FieldName = 'LCA_DESCRICAO'
      Origin = '"LOCAIS"."LCA_DESCRICAO"'
      Size = 50
    end
    object TBLocaisLCA_DTATUALIZACAO: TDateField
      FieldName = 'LCA_DTATUALIZACAO'
      Origin = '"LOCAIS"."LCA_DTATUALIZACAO"'
    end
    object TBLocaisLCA_DTCADASTRO: TDateField
      FieldName = 'LCA_DTCADASTRO'
      Origin = '"LOCAIS"."LCA_DTCADASTRO"'
    end
    object TBLocaisLCA_USUARIO: TIBStringField
      FieldName = 'LCA_USUARIO'
      Origin = '"LOCAIS"."LCA_USUARIO"'
    end
  end
  object DSLocais: TDataSource
    DataSet = TBLocais
    OnStateChange = DSLocaisStateChange
    Left = 352
    Top = 536
  end
  object TRLocais: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 584
  end
  object TBFeriados: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRFeriados
    AfterDelete = TBFeriadosAfterDelete
    AfterInsert = TBFeriadosAfterInsert
    AfterPost = TBFeriadosAfterPost
    BeforeEdit = TBFeriadosBeforeEdit
    BeforeInsert = TBFeriadosBeforeInsert
    BeforePost = TBFeriadosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FERIADOS'
      'where'
      '  FRD_DATA = :OLD_FRD_DATA')
    InsertSQL.Strings = (
      'insert into FERIADOS'
      
        '  (FRD_DATA, FRD_DESCRICAO, FRD_DTATUALIZACAO, FRD_DTCADASTRO, F' +
        'RD_USUARIO)'
      'values'
      
        '  (:FRD_DATA, :FRD_DESCRICAO, :FRD_DTATUALIZACAO, :FRD_DTCADASTR' +
        'O, :FRD_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  FRD_DATA,'
      '  FRD_DESCRICAO,'
      '  FRD_DTCADASTRO,'
      '  FRD_DTATUALIZACAO,'
      '  FRD_USUARIO'
      'from FERIADOS '
      'where'
      '  FRD_DATA = :FRD_DATA')
    SelectSQL.Strings = (
      'select * from FERIADOS'
      'where FRD_DATA=:codigo')
    ModifySQL.Strings = (
      'update FERIADOS'
      'set'
      '  FRD_DATA = :FRD_DATA,'
      '  FRD_DESCRICAO = :FRD_DESCRICAO,'
      '  FRD_DTATUALIZACAO = :FRD_DTATUALIZACAO,'
      '  FRD_DTCADASTRO = :FRD_DTCADASTRO,'
      '  FRD_USUARIO = :FRD_USUARIO'
      'where'
      '  FRD_DATA = :OLD_FRD_DATA')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 928
    Top = 280
    object TBFeriadosFRD_DATA: TDateField
      FieldName = 'FRD_DATA'
      Origin = '"FERIADOS"."FRD_DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object TBFeriadosFRD_DESCRICAO: TIBStringField
      FieldName = 'FRD_DESCRICAO'
      Origin = '"FERIADOS"."FRD_DESCRICAO"'
      Size = 50
    end
    object TBFeriadosFRD_DTATUALIZACAO: TDateField
      FieldName = 'FRD_DTATUALIZACAO'
      Origin = '"FERIADOS"."FRD_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFeriadosFRD_DTCADASTRO: TDateField
      FieldName = 'FRD_DTCADASTRO'
      Origin = '"FERIADOS"."FRD_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFeriadosFRD_USUARIO: TIBStringField
      FieldName = 'FRD_USUARIO'
      Origin = '"FERIADOS"."FRD_USUARIO"'
    end
  end
  object DSFeriados: TDataSource
    DataSet = TBFeriados
    OnStateChange = DSFeriadosStateChange
    Left = 928
    Top = 328
  end
  object TRFeriados: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 928
    Top = 376
  end
  object TBMarcas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMarcas
    AfterDelete = TBMarcasAfterDelete
    AfterInsert = TBMarcasAfterInsert
    AfterPost = TBMarcasAfterPost
    BeforeEdit = TBMarcasBeforeEdit
    BeforeInsert = TBMarcasBeforeInsert
    BeforePost = TBMarcasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MARCAS'
      'where'
      '  MAR_CODIGO = :OLD_MAR_CODIGO')
    InsertSQL.Strings = (
      'insert into MARCAS'
      
        '  (MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, MAR_DTCADASTRO,' +
        ' MAR_USUARIO)'
      'values'
      
        '  (:MAR_CODIGO, :MAR_DESCRICAO, :MAR_DTATUALIZACAO, :MAR_DTCADAS' +
        'TRO, :MAR_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  MAR_CODIGO,'
      '  MAR_DESCRICAO,'
      '  MAR_DTCADASTRO,'
      '  MAR_DTATUALIZACAO,'
      '  MAR_USUARIO'
      'from MARCAS '
      'where'
      '  MAR_CODIGO = :MAR_CODIGO')
    SelectSQL.Strings = (
      'select * from MARCAS'
      'where MAR_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MARCAS'
      'set'
      '  MAR_CODIGO = :MAR_CODIGO,'
      '  MAR_DESCRICAO = :MAR_DESCRICAO,'
      '  MAR_DTATUALIZACAO = :MAR_DTATUALIZACAO,'
      '  MAR_DTCADASTRO = :MAR_DTCADASTRO,'
      '  MAR_USUARIO = :MAR_USUARIO'
      'where'
      '  MAR_CODIGO = :OLD_MAR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MAR_CODIGO'
    GeneratorField.Generator = 'GEN_MARCAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 416
    Top = 488
    object TBMarcasMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = '"MARCAS"."MAR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMarcasMAR_DESCRICAO: TIBStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = '"MARCAS"."MAR_DESCRICAO"'
      Size = 50
    end
    object TBMarcasMAR_DTATUALIZACAO: TDateField
      FieldName = 'MAR_DTATUALIZACAO'
      Origin = '"MARCAS"."MAR_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMarcasMAR_DTCADASTRO: TDateField
      FieldName = 'MAR_DTCADASTRO'
      Origin = '"MARCAS"."MAR_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMarcasMAR_USUARIO: TIBStringField
      FieldName = 'MAR_USUARIO'
      Origin = '"MARCAS"."MAR_USUARIO"'
    end
  end
  object DSMarcas: TDataSource
    DataSet = TBMarcas
    OnStateChange = DSMarcasStateChange
    Left = 416
    Top = 536
  end
  object TRMarcas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 584
  end
  object TBCte: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCte
    AfterDelete = TBCteAfterDelete
    AfterEdit = TBCteAfterEdit
    AfterInsert = TBCteAfterInsert
    AfterPost = TBCteAfterPost
    BeforeEdit = TBCteBeforeEdit
    BeforeInsert = TBCteBeforeInsert
    BeforePost = TBCteBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTE'
      'where'
      '  CTE_CODIGO = :OLD_CTE_CODIGO')
    InsertSQL.Strings = (
      'insert into CTE'
      
        '  (CTE_CODIGO, CTE_AEREODIMENSAO, CTE_AEREODTPREVISTA, CTE_AEREO' +
        'IATA, CTE_AEREOIMP, '
      
        '   CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL, CTE_AEREOOCA, CTE_AEREO' +
        'TARIFACLASSE, '
      
        '   CTE_AEREOTARIFACODIGO, CTE_AEREOTARIFAVALOR, CTE_ALIQFCP, CTE' +
        '_ALIQICMS, '
      
        '   CTE_ALIQICMSINTER, CTE_ALIQICMSINTERPART, CTE_ALIQICMSRED, CT' +
        'E_ALIQICMSST, '
      
        '   CTE_ALIQICMSUFFIM, CTE_ALIQTRIBUTOS, CTE_BAIXADATA, CTE_BAIXA' +
        'POR, CTE_BASEICMS, '
      
        '   CTE_BASEICMSRED, CTE_BASEICMSST, CTE_CARGAOUTRASCARAC, CTE_CF' +
        'OP, CTE_CFOPDESC, '
      
        '   CTE_CHAVEACESSO, CTE_CODIGONUMERICO, CTE_COMISSAO, CTE_CONDIC' +
        'AO, CTE_CONDICAOMEMO, '
      
        '   CTE_CONSULTADA, CTE_CSTICMS, CTE_CTEREFERENCIADO, CTE_DATAHOR' +
        'A, CTE_DATAHORACONTINGENCIA, '
      
        '   CTE_DESBAIRRO, CTE_DESCEP, CTE_DESCIDADE, CTE_DESCIDADECODIGO' +
        ', CTE_DESCNPJ, '
      
        '   CTE_DESCOMPLEMENTO, CTE_DESCONTATO, CTE_DESCPF, CTE_DESCPORC,' +
        ' CTE_DESCVALOR, '
      
        '   CTE_DESENDERECO, CTE_DESESTADO, CTE_DESESTADOCODIGO, CTE_DESF' +
        'ONE, CTE_DESIE, '
      
        '   CTE_DESNOME, CTE_DESNUMERO, CTE_DESTINATARIO, CTE_DIAPREFEREN' +
        'CIAL, CTE_DTATUALIZACAO, '
      
        '   CTE_DTCADASTRO, CTE_DTEMISSAO, CTE_ENTREGADATA, CTE_ENTREGADA' +
        'TAFINAL, '
      
        '   CTE_ENTREGADATAINICIAL, CTE_ENTREGAHORA, CTE_ENTREGAHORAFINAL' +
        ', CTE_ENTREGAHORAINICIAL, '
      
        '   CTE_ENVIADO, CTE_EXPBAIRRO, CTE_EXPCEP, CTE_EXPCIDADE, CTE_EX' +
        'PCIDADECODIGO, '
      
        '   CTE_EXPCNPJ, CTE_EXPCOMPLEMENTO, CTE_EXPCONTATO, CTE_EXPCPF, ' +
        'CTE_EXPEDIDOR, '
      
        '   CTE_EXPENDERECO, CTE_EXPESTADO, CTE_EXPESTADOCODIGO, CTE_EXPF' +
        'ONE, CTE_EXPIE, '
      
        '   CTE_EXPNOME, CTE_EXPNUMERO, CTE_FINALIDADE, CTE_FORMAPAGTO, C' +
        'TE_FORMAPAGTOSERVICO, '
      
        '   CTE_ICMSALIQUOTAUF, CTE_ICMSPOR, CTE_INFOADICFISCO, CTE_LOTE,' +
        ' CTE_MODAL, '
      
        '   CTE_MODELO, CTE_MOTIVOCANCELAMENTO, CTE_MOTIVOCONTINGENCIA, C' +
        'TE_MOTIVOINUTILIZACAO, '
      
        '   CTE_MOVIMENTAFINANCEIRO, CTE_OBSERVACOES, CTE_PAGOPOR, CTE_PE' +
        'SOTOTAL, '
      
        '   CTE_PRODUTOPREDOM, CTE_PROTOCOLO, CTE_PROTOCOLOCANC, CTE_PROT' +
        'OCOLOCANCDH, '
      
        '   CTE_PROTOCOLODH, CTE_PROTOCOLOINUT, CTE_PROTOCOLOINUTDH, CTE_' +
        'RECBAIRRO, '
      
        '   CTE_RECCEP, CTE_RECCIDADE, CTE_RECCIDADECODIGO, CTE_RECCNPJ, ' +
        'CTE_RECCOMPLEMENTO, '
      
        '   CTE_RECCONTATO, CTE_RECCPF, CTE_RECEBEDOR, CTE_RECENDERECO, C' +
        'TE_RECESTADO, '
      
        '   CTE_RECESTADOCODIGO, CTE_RECFONE, CTE_RECIBO, CTE_RECIBODH, C' +
        'TE_RECIE, '
      
        '   CTE_RECNOME, CTE_RECNUMERO, CTE_REFERENCIA, CTE_REMBAIRRO, CT' +
        'E_REMCEP, '
      
        '   CTE_REMCIDADE, CTE_REMCIDADECODIGO, CTE_REMCNPJ, CTE_REMCOMPL' +
        'EMENTO, '
      
        '   CTE_REMCONTATO, CTE_REMCPF, CTE_REMENDERECO, CTE_REMESTADO, C' +
        'TE_REMESTADOCODIGO, '
      
        '   CTE_REMETENTE, CTE_REMFONE, CTE_REMIE, CTE_REMNOME, CTE_REMNU' +
        'MERO, CTE_RETIRA, '
      
        '   CTE_RETIRADETALHES, CTE_SEGURO, CTE_SEGUROAPOLICE, CTE_SEGURO' +
        'AVERBACAO, '
      
        '   CTE_SEGURONOME, CTE_SEGUROVALOR, CTE_SERIE, CTE_STATUS, CTE_T' +
        'IPOCTE, '
      
        '   CTE_TIPOEMISSAO, CTE_TIPOSERVICO, CTE_TOMADOR, CTE_TOMADORBAI' +
        'RRO, CTE_TOMADORCEP, '
      
        '   CTE_TOMADORCIDADE, CTE_TOMADORCIDADECODIGO, CTE_TOMADORCNPJ, ' +
        'CTE_TOMADORCODIGO, '
      
        '   CTE_TOMADORCOMPLEMENTO, CTE_TOMADORCONTATO, CTE_TOMADORCPF, C' +
        'TE_TOMADORENDERECO, '
      
        '   CTE_TOMADORESTADO, CTE_TOMADORESTADOCODIGO, CTE_TOMADORFONE, ' +
        'CTE_TOMADORIE, '
      
        '   CTE_TOMADORNOME, CTE_TOMADORNUMERO, CTE_TOTALCOMISSAO, CTE_TO' +
        'TALFCP, '
      
        '   CTE_TOTALICMS, CTE_TOTALICMSST, CTE_TOTALICMSUFFIM, CTE_TOTAL' +
        'ICMSUFINI, '
      
        '   CTE_TOTALTRIBUTOS, CTE_USUARIO, CTE_VALORCREDITOICMS, CTE_VAL' +
        'ORFRETE, '
      
        '   CTE_VALORNOTAS, CTE_VALOROUTROS, CTE_VALORSEGURO, CTE_VALORTO' +
        'TAL, CTE_VENDEDOR, '
      
        '   CTE_MOTORISTA, CTE_MOTORISTACPF, CTE_CIOT, CTE_LOTACAO, CTE_R' +
        'ECEBIDODATA, '
      '   CTE_RECEBIDOPOR, CTE_TOTALCCE)'
      'values'
      
        '  (:CTE_CODIGO, :CTE_AEREODIMENSAO, :CTE_AEREODTPREVISTA, :CTE_A' +
        'EREOIATA, '
      
        '   :CTE_AEREOIMP, :CTE_AEREOMINUTA, :CTE_AEREONOMEFILIAL, :CTE_A' +
        'EREOOCA, '
      
        '   :CTE_AEREOTARIFACLASSE, :CTE_AEREOTARIFACODIGO, :CTE_AEREOTAR' +
        'IFAVALOR, '
      
        '   :CTE_ALIQFCP, :CTE_ALIQICMS, :CTE_ALIQICMSINTER, :CTE_ALIQICM' +
        'SINTERPART, '
      
        '   :CTE_ALIQICMSRED, :CTE_ALIQICMSST, :CTE_ALIQICMSUFFIM, :CTE_A' +
        'LIQTRIBUTOS, '
      
        '   :CTE_BAIXADATA, :CTE_BAIXAPOR, :CTE_BASEICMS, :CTE_BASEICMSRE' +
        'D, :CTE_BASEICMSST, '
      
        '   :CTE_CARGAOUTRASCARAC, :CTE_CFOP, :CTE_CFOPDESC, :CTE_CHAVEAC' +
        'ESSO, :CTE_CODIGONUMERICO, '
      
        '   :CTE_COMISSAO, :CTE_CONDICAO, :CTE_CONDICAOMEMO, :CTE_CONSULT' +
        'ADA, :CTE_CSTICMS, '
      
        '   :CTE_CTEREFERENCIADO, :CTE_DATAHORA, :CTE_DATAHORACONTINGENCI' +
        'A, :CTE_DESBAIRRO, '
      
        '   :CTE_DESCEP, :CTE_DESCIDADE, :CTE_DESCIDADECODIGO, :CTE_DESCN' +
        'PJ, :CTE_DESCOMPLEMENTO, '
      
        '   :CTE_DESCONTATO, :CTE_DESCPF, :CTE_DESCPORC, :CTE_DESCVALOR, ' +
        ':CTE_DESENDERECO, '
      
        '   :CTE_DESESTADO, :CTE_DESESTADOCODIGO, :CTE_DESFONE, :CTE_DESI' +
        'E, :CTE_DESNOME, '
      
        '   :CTE_DESNUMERO, :CTE_DESTINATARIO, :CTE_DIAPREFERENCIAL, :CTE' +
        '_DTATUALIZACAO, '
      
        '   :CTE_DTCADASTRO, :CTE_DTEMISSAO, :CTE_ENTREGADATA, :CTE_ENTRE' +
        'GADATAFINAL, '
      
        '   :CTE_ENTREGADATAINICIAL, :CTE_ENTREGAHORA, :CTE_ENTREGAHORAFI' +
        'NAL, :CTE_ENTREGAHORAINICIAL, '
      
        '   :CTE_ENVIADO, :CTE_EXPBAIRRO, :CTE_EXPCEP, :CTE_EXPCIDADE, :C' +
        'TE_EXPCIDADECODIGO, '
      
        '   :CTE_EXPCNPJ, :CTE_EXPCOMPLEMENTO, :CTE_EXPCONTATO, :CTE_EXPC' +
        'PF, :CTE_EXPEDIDOR, '
      
        '   :CTE_EXPENDERECO, :CTE_EXPESTADO, :CTE_EXPESTADOCODIGO, :CTE_' +
        'EXPFONE, '
      
        '   :CTE_EXPIE, :CTE_EXPNOME, :CTE_EXPNUMERO, :CTE_FINALIDADE, :C' +
        'TE_FORMAPAGTO, '
      
        '   :CTE_FORMAPAGTOSERVICO, :CTE_ICMSALIQUOTAUF, :CTE_ICMSPOR, :C' +
        'TE_INFOADICFISCO, '
      
        '   :CTE_LOTE, :CTE_MODAL, :CTE_MODELO, :CTE_MOTIVOCANCELAMENTO, ' +
        ':CTE_MOTIVOCONTINGENCIA, '
      
        '   :CTE_MOTIVOINUTILIZACAO, :CTE_MOVIMENTAFINANCEIRO, :CTE_OBSER' +
        'VACOES, '
      
        '   :CTE_PAGOPOR, :CTE_PESOTOTAL, :CTE_PRODUTOPREDOM, :CTE_PROTOC' +
        'OLO, :CTE_PROTOCOLOCANC, '
      
        '   :CTE_PROTOCOLOCANCDH, :CTE_PROTOCOLODH, :CTE_PROTOCOLOINUT, :' +
        'CTE_PROTOCOLOINUTDH, '
      
        '   :CTE_RECBAIRRO, :CTE_RECCEP, :CTE_RECCIDADE, :CTE_RECCIDADECO' +
        'DIGO, :CTE_RECCNPJ, '
      
        '   :CTE_RECCOMPLEMENTO, :CTE_RECCONTATO, :CTE_RECCPF, :CTE_RECEB' +
        'EDOR, :CTE_RECENDERECO, '
      
        '   :CTE_RECESTADO, :CTE_RECESTADOCODIGO, :CTE_RECFONE, :CTE_RECI' +
        'BO, :CTE_RECIBODH, '
      
        '   :CTE_RECIE, :CTE_RECNOME, :CTE_RECNUMERO, :CTE_REFERENCIA, :C' +
        'TE_REMBAIRRO, '
      
        '   :CTE_REMCEP, :CTE_REMCIDADE, :CTE_REMCIDADECODIGO, :CTE_REMCN' +
        'PJ, :CTE_REMCOMPLEMENTO, '
      
        '   :CTE_REMCONTATO, :CTE_REMCPF, :CTE_REMENDERECO, :CTE_REMESTAD' +
        'O, :CTE_REMESTADOCODIGO, '
      
        '   :CTE_REMETENTE, :CTE_REMFONE, :CTE_REMIE, :CTE_REMNOME, :CTE_' +
        'REMNUMERO, '
      
        '   :CTE_RETIRA, :CTE_RETIRADETALHES, :CTE_SEGURO, :CTE_SEGUROAPO' +
        'LICE, :CTE_SEGUROAVERBACAO, '
      
        '   :CTE_SEGURONOME, :CTE_SEGUROVALOR, :CTE_SERIE, :CTE_STATUS, :' +
        'CTE_TIPOCTE, '
      
        '   :CTE_TIPOEMISSAO, :CTE_TIPOSERVICO, :CTE_TOMADOR, :CTE_TOMADO' +
        'RBAIRRO, '
      
        '   :CTE_TOMADORCEP, :CTE_TOMADORCIDADE, :CTE_TOMADORCIDADECODIGO' +
        ', :CTE_TOMADORCNPJ, '
      
        '   :CTE_TOMADORCODIGO, :CTE_TOMADORCOMPLEMENTO, :CTE_TOMADORCONT' +
        'ATO, :CTE_TOMADORCPF, '
      
        '   :CTE_TOMADORENDERECO, :CTE_TOMADORESTADO, :CTE_TOMADORESTADOC' +
        'ODIGO, '
      
        '   :CTE_TOMADORFONE, :CTE_TOMADORIE, :CTE_TOMADORNOME, :CTE_TOMA' +
        'DORNUMERO, '
      
        '   :CTE_TOTALCOMISSAO, :CTE_TOTALFCP, :CTE_TOTALICMS, :CTE_TOTAL' +
        'ICMSST, '
      
        '   :CTE_TOTALICMSUFFIM, :CTE_TOTALICMSUFINI, :CTE_TOTALTRIBUTOS,' +
        ' :CTE_USUARIO, '
      
        '   :CTE_VALORCREDITOICMS, :CTE_VALORFRETE, :CTE_VALORNOTAS, :CTE' +
        '_VALOROUTROS, '
      
        '   :CTE_VALORSEGURO, :CTE_VALORTOTAL, :CTE_VENDEDOR, :CTE_MOTORI' +
        'STA, :CTE_MOTORISTACPF, '
      
        '   :CTE_CIOT, :CTE_LOTACAO, :CTE_RECEBIDODATA, :CTE_RECEBIDOPOR,' +
        ' :CTE_TOTALCCE)')
    RefreshSQL.Strings = (
      'Select '
      '  CTE_CODIGO,'
      '  CTE_AEREODIMENSAO,'
      '  CTE_AEREODTPREVISTA,'
      '  CTE_AEREOIATA,'
      '  CTE_AEREOIMP,'
      '  CTE_AEREOMINUTA,'
      '  CTE_AEREONOMEFILIAL,'
      '  CTE_AEREOOCA,'
      '  CTE_AEREOTARIFACLASSE,'
      '  CTE_AEREOTARIFACODIGO,'
      '  CTE_AEREOTARIFAVALOR,'
      '  CTE_ALIQFCP,'
      '  CTE_ALIQICMS,'
      '  CTE_ALIQICMSINTER,'
      '  CTE_ALIQICMSINTERPART,'
      '  CTE_ALIQICMSRED,'
      '  CTE_ALIQICMSST,'
      '  CTE_ALIQICMSUFFIM,'
      '  CTE_ALIQTRIBUTOS,'
      '  CTE_BAIXADATA,'
      '  CTE_BAIXAPOR,'
      '  CTE_BASEICMS,'
      '  CTE_BASEICMSRED,'
      '  CTE_BASEICMSST,'
      '  CTE_CARGAOUTRASCARAC,'
      '  CTE_CFOP,'
      '  CTE_CFOPDESC,'
      '  CTE_CHAVEACESSO,'
      '  CTE_CODIGONUMERICO,'
      '  CTE_COMISSAO,'
      '  CTE_CONDICAO,'
      '  CTE_CONDICAOMEMO,'
      '  CTE_CONSULTADA,'
      '  CTE_CSTICMS,'
      '  CTE_CTEREFERENCIADO,'
      '  CTE_DATAHORA,'
      '  CTE_DATAHORACONTINGENCIA,'
      '  CTE_DESBAIRRO,'
      '  CTE_DESCEP,'
      '  CTE_DESCIDADE,'
      '  CTE_DESCIDADECODIGO,'
      '  CTE_DESCNPJ,'
      '  CTE_DESCOMPLEMENTO,'
      '  CTE_DESCONTATO,'
      '  CTE_DESCPF,'
      '  CTE_DESCPORC,'
      '  CTE_DESCVALOR,'
      '  CTE_DESENDERECO,'
      '  CTE_DESESTADO,'
      '  CTE_DESESTADOCODIGO,'
      '  CTE_DESFONE,'
      '  CTE_DESIE,'
      '  CTE_DESNOME,'
      '  CTE_DESNUMERO,'
      '  CTE_DESTINATARIO,'
      '  CTE_DIAPREFERENCIAL,'
      '  CTE_DTATUALIZACAO,'
      '  CTE_DTCADASTRO,'
      '  CTE_DTEMISSAO,'
      '  CTE_ENTREGADATA,'
      '  CTE_ENTREGADATAFINAL,'
      '  CTE_ENTREGADATAINICIAL,'
      '  CTE_ENTREGAHORA,'
      '  CTE_ENTREGAHORAFINAL,'
      '  CTE_ENTREGAHORAINICIAL,'
      '  CTE_ENVIADO,'
      '  CTE_EXPBAIRRO,'
      '  CTE_EXPCEP,'
      '  CTE_EXPCIDADE,'
      '  CTE_EXPCIDADECODIGO,'
      '  CTE_EXPCNPJ,'
      '  CTE_EXPCOMPLEMENTO,'
      '  CTE_EXPCONTATO,'
      '  CTE_EXPCPF,'
      '  CTE_EXPEDIDOR,'
      '  CTE_EXPENDERECO,'
      '  CTE_EXPESTADO,'
      '  CTE_EXPESTADOCODIGO,'
      '  CTE_EXPFONE,'
      '  CTE_EXPIE,'
      '  CTE_EXPNOME,'
      '  CTE_EXPNUMERO,'
      '  CTE_FINALIDADE,'
      '  CTE_FORMAPAGTO,'
      '  CTE_FORMAPAGTOSERVICO,'
      '  CTE_ICMSALIQUOTAUF,'
      '  CTE_ICMSPOR,'
      '  CTE_INFOADICFISCO,'
      '  CTE_LOTE,'
      '  CTE_MODAL,'
      '  CTE_MODELO,'
      '  CTE_MOTIVOCANCELAMENTO,'
      '  CTE_MOTIVOCONTINGENCIA,'
      '  CTE_MOTIVOINUTILIZACAO,'
      '  CTE_MOVIMENTAFINANCEIRO,'
      '  CTE_OBSERVACOES,'
      '  CTE_PAGOPOR,'
      '  CTE_PESOTOTAL,'
      '  CTE_PRODUTOPREDOM,'
      '  CTE_PROTOCOLO,'
      '  CTE_PROTOCOLOCANC,'
      '  CTE_PROTOCOLOCANCDH,'
      '  CTE_PROTOCOLODH,'
      '  CTE_PROTOCOLOINUT,'
      '  CTE_PROTOCOLOINUTDH,'
      '  CTE_RECBAIRRO,'
      '  CTE_RECCEP,'
      '  CTE_RECCIDADE,'
      '  CTE_RECCIDADECODIGO,'
      '  CTE_RECCNPJ,'
      '  CTE_RECCOMPLEMENTO,'
      '  CTE_RECCONTATO,'
      '  CTE_RECCPF,'
      '  CTE_RECEBEDOR,'
      '  CTE_RECENDERECO,'
      '  CTE_RECESTADO,'
      '  CTE_RECESTADOCODIGO,'
      '  CTE_RECFONE,'
      '  CTE_RECIBO,'
      '  CTE_RECIBODH,'
      '  CTE_RECIE,'
      '  CTE_RECNOME,'
      '  CTE_RECNUMERO,'
      '  CTE_REFERENCIA,'
      '  CTE_REMBAIRRO,'
      '  CTE_REMCEP,'
      '  CTE_REMCIDADE,'
      '  CTE_REMCIDADECODIGO,'
      '  CTE_REMCNPJ,'
      '  CTE_REMCOMPLEMENTO,'
      '  CTE_REMCONTATO,'
      '  CTE_REMCPF,'
      '  CTE_REMENDERECO,'
      '  CTE_REMESTADO,'
      '  CTE_REMESTADOCODIGO,'
      '  CTE_REMETENTE,'
      '  CTE_REMFONE,'
      '  CTE_REMIE,'
      '  CTE_REMNOME,'
      '  CTE_REMNUMERO,'
      '  CTE_RETIRA,'
      '  CTE_RETIRADETALHES,'
      '  CTE_SEGURO,'
      '  CTE_SEGUROAPOLICE,'
      '  CTE_SEGUROAVERBACAO,'
      '  CTE_SEGURONOME,'
      '  CTE_SEGUROVALOR,'
      '  CTE_SERIE,'
      '  CTE_STATUS,'
      '  CTE_TIPOCTE,'
      '  CTE_TIPOEMISSAO,'
      '  CTE_TIPOSERVICO,'
      '  CTE_TOMADOR,'
      '  CTE_TOMADORBAIRRO,'
      '  CTE_TOMADORCEP,'
      '  CTE_TOMADORCIDADE,'
      '  CTE_TOMADORCIDADECODIGO,'
      '  CTE_TOMADORCNPJ,'
      '  CTE_TOMADORCODIGO,'
      '  CTE_TOMADORCOMPLEMENTO,'
      '  CTE_TOMADORCONTATO,'
      '  CTE_TOMADORCPF,'
      '  CTE_TOMADORENDERECO,'
      '  CTE_TOMADORESTADO,'
      '  CTE_TOMADORESTADOCODIGO,'
      '  CTE_TOMADORFONE,'
      '  CTE_TOMADORIE,'
      '  CTE_TOMADORNOME,'
      '  CTE_TOMADORNUMERO,'
      '  CTE_TOTALCOMISSAO,'
      '  CTE_TOTALFCP,'
      '  CTE_TOTALICMS,'
      '  CTE_TOTALICMSST,'
      '  CTE_TOTALICMSUFFIM,'
      '  CTE_TOTALICMSUFINI,'
      '  CTE_TOTALTRIBUTOS,'
      '  CTE_USUARIO,'
      '  CTE_VALORCREDITOICMS,'
      '  CTE_VALORFRETE,'
      '  CTE_VALORNOTAS,'
      '  CTE_VALOROUTROS,'
      '  CTE_VALORSEGURO,'
      '  CTE_VALORTOTAL,'
      '  CTE_VENDEDOR,'
      '  CTE_MOTORISTA,'
      '  CTE_MOTORISTACPF,'
      '  CTE_CIOT,'
      '  CTE_LOTACAO,'
      '  CTE_RECEBIDODATA,'
      '  CTE_RECEBIDOPOR,'
      '  CTE_TOTALCCE'
      'from CTE '
      'where'
      '  CTE_CODIGO = :CTE_CODIGO')
    SelectSQL.Strings = (
      'select * from CTE'
      'left join CONDICOES on CTE_CONDICAO=CPG_CODIGO'
      'left join ICMS on CTE_CSTICMS=ICM_CODIGO'
      'left join VENDEDORES on CTE_VENDEDOR=VEN_CODIGO'
      'where CTE_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CTE'
      'set'
      '  CTE_CODIGO = :CTE_CODIGO,'
      '  CTE_AEREODIMENSAO = :CTE_AEREODIMENSAO,'
      '  CTE_AEREODTPREVISTA = :CTE_AEREODTPREVISTA,'
      '  CTE_AEREOIATA = :CTE_AEREOIATA,'
      '  CTE_AEREOIMP = :CTE_AEREOIMP,'
      '  CTE_AEREOMINUTA = :CTE_AEREOMINUTA,'
      '  CTE_AEREONOMEFILIAL = :CTE_AEREONOMEFILIAL,'
      '  CTE_AEREOOCA = :CTE_AEREOOCA,'
      '  CTE_AEREOTARIFACLASSE = :CTE_AEREOTARIFACLASSE,'
      '  CTE_AEREOTARIFACODIGO = :CTE_AEREOTARIFACODIGO,'
      '  CTE_AEREOTARIFAVALOR = :CTE_AEREOTARIFAVALOR,'
      '  CTE_ALIQFCP = :CTE_ALIQFCP,'
      '  CTE_ALIQICMS = :CTE_ALIQICMS,'
      '  CTE_ALIQICMSINTER = :CTE_ALIQICMSINTER,'
      '  CTE_ALIQICMSINTERPART = :CTE_ALIQICMSINTERPART,'
      '  CTE_ALIQICMSRED = :CTE_ALIQICMSRED,'
      '  CTE_ALIQICMSST = :CTE_ALIQICMSST,'
      '  CTE_ALIQICMSUFFIM = :CTE_ALIQICMSUFFIM,'
      '  CTE_ALIQTRIBUTOS = :CTE_ALIQTRIBUTOS,'
      '  CTE_BAIXADATA = :CTE_BAIXADATA,'
      '  CTE_BAIXAPOR = :CTE_BAIXAPOR,'
      '  CTE_BASEICMS = :CTE_BASEICMS,'
      '  CTE_BASEICMSRED = :CTE_BASEICMSRED,'
      '  CTE_BASEICMSST = :CTE_BASEICMSST,'
      '  CTE_CARGAOUTRASCARAC = :CTE_CARGAOUTRASCARAC,'
      '  CTE_CFOP = :CTE_CFOP,'
      '  CTE_CFOPDESC = :CTE_CFOPDESC,'
      '  CTE_CHAVEACESSO = :CTE_CHAVEACESSO,'
      '  CTE_CODIGONUMERICO = :CTE_CODIGONUMERICO,'
      '  CTE_COMISSAO = :CTE_COMISSAO,'
      '  CTE_CONDICAO = :CTE_CONDICAO,'
      '  CTE_CONDICAOMEMO = :CTE_CONDICAOMEMO,'
      '  CTE_CONSULTADA = :CTE_CONSULTADA,'
      '  CTE_CSTICMS = :CTE_CSTICMS,'
      '  CTE_CTEREFERENCIADO = :CTE_CTEREFERENCIADO,'
      '  CTE_DATAHORA = :CTE_DATAHORA,'
      '  CTE_DATAHORACONTINGENCIA = :CTE_DATAHORACONTINGENCIA,'
      '  CTE_DESBAIRRO = :CTE_DESBAIRRO,'
      '  CTE_DESCEP = :CTE_DESCEP,'
      '  CTE_DESCIDADE = :CTE_DESCIDADE,'
      '  CTE_DESCIDADECODIGO = :CTE_DESCIDADECODIGO,'
      '  CTE_DESCNPJ = :CTE_DESCNPJ,'
      '  CTE_DESCOMPLEMENTO = :CTE_DESCOMPLEMENTO,'
      '  CTE_DESCONTATO = :CTE_DESCONTATO,'
      '  CTE_DESCPF = :CTE_DESCPF,'
      '  CTE_DESCPORC = :CTE_DESCPORC,'
      '  CTE_DESCVALOR = :CTE_DESCVALOR,'
      '  CTE_DESENDERECO = :CTE_DESENDERECO,'
      '  CTE_DESESTADO = :CTE_DESESTADO,'
      '  CTE_DESESTADOCODIGO = :CTE_DESESTADOCODIGO,'
      '  CTE_DESFONE = :CTE_DESFONE,'
      '  CTE_DESIE = :CTE_DESIE,'
      '  CTE_DESNOME = :CTE_DESNOME,'
      '  CTE_DESNUMERO = :CTE_DESNUMERO,'
      '  CTE_DESTINATARIO = :CTE_DESTINATARIO,'
      '  CTE_DIAPREFERENCIAL = :CTE_DIAPREFERENCIAL,'
      '  CTE_DTATUALIZACAO = :CTE_DTATUALIZACAO,'
      '  CTE_DTCADASTRO = :CTE_DTCADASTRO,'
      '  CTE_DTEMISSAO = :CTE_DTEMISSAO,'
      '  CTE_ENTREGADATA = :CTE_ENTREGADATA,'
      '  CTE_ENTREGADATAFINAL = :CTE_ENTREGADATAFINAL,'
      '  CTE_ENTREGADATAINICIAL = :CTE_ENTREGADATAINICIAL,'
      '  CTE_ENTREGAHORA = :CTE_ENTREGAHORA,'
      '  CTE_ENTREGAHORAFINAL = :CTE_ENTREGAHORAFINAL,'
      '  CTE_ENTREGAHORAINICIAL = :CTE_ENTREGAHORAINICIAL,'
      '  CTE_ENVIADO = :CTE_ENVIADO,'
      '  CTE_EXPBAIRRO = :CTE_EXPBAIRRO,'
      '  CTE_EXPCEP = :CTE_EXPCEP,'
      '  CTE_EXPCIDADE = :CTE_EXPCIDADE,'
      '  CTE_EXPCIDADECODIGO = :CTE_EXPCIDADECODIGO,'
      '  CTE_EXPCNPJ = :CTE_EXPCNPJ,'
      '  CTE_EXPCOMPLEMENTO = :CTE_EXPCOMPLEMENTO,'
      '  CTE_EXPCONTATO = :CTE_EXPCONTATO,'
      '  CTE_EXPCPF = :CTE_EXPCPF,'
      '  CTE_EXPEDIDOR = :CTE_EXPEDIDOR,'
      '  CTE_EXPENDERECO = :CTE_EXPENDERECO,'
      '  CTE_EXPESTADO = :CTE_EXPESTADO,'
      '  CTE_EXPESTADOCODIGO = :CTE_EXPESTADOCODIGO,'
      '  CTE_EXPFONE = :CTE_EXPFONE,'
      '  CTE_EXPIE = :CTE_EXPIE,'
      '  CTE_EXPNOME = :CTE_EXPNOME,'
      '  CTE_EXPNUMERO = :CTE_EXPNUMERO,'
      '  CTE_FINALIDADE = :CTE_FINALIDADE,'
      '  CTE_FORMAPAGTO = :CTE_FORMAPAGTO,'
      '  CTE_FORMAPAGTOSERVICO = :CTE_FORMAPAGTOSERVICO,'
      '  CTE_ICMSALIQUOTAUF = :CTE_ICMSALIQUOTAUF,'
      '  CTE_ICMSPOR = :CTE_ICMSPOR,'
      '  CTE_INFOADICFISCO = :CTE_INFOADICFISCO,'
      '  CTE_LOTE = :CTE_LOTE,'
      '  CTE_MODAL = :CTE_MODAL,'
      '  CTE_MODELO = :CTE_MODELO,'
      '  CTE_MOTIVOCANCELAMENTO = :CTE_MOTIVOCANCELAMENTO,'
      '  CTE_MOTIVOCONTINGENCIA = :CTE_MOTIVOCONTINGENCIA,'
      '  CTE_MOTIVOINUTILIZACAO = :CTE_MOTIVOINUTILIZACAO,'
      '  CTE_MOVIMENTAFINANCEIRO = :CTE_MOVIMENTAFINANCEIRO,'
      '  CTE_OBSERVACOES = :CTE_OBSERVACOES,'
      '  CTE_PAGOPOR = :CTE_PAGOPOR,'
      '  CTE_PESOTOTAL = :CTE_PESOTOTAL,'
      '  CTE_PRODUTOPREDOM = :CTE_PRODUTOPREDOM,'
      '  CTE_PROTOCOLO = :CTE_PROTOCOLO,'
      '  CTE_PROTOCOLOCANC = :CTE_PROTOCOLOCANC,'
      '  CTE_PROTOCOLOCANCDH = :CTE_PROTOCOLOCANCDH,'
      '  CTE_PROTOCOLODH = :CTE_PROTOCOLODH,'
      '  CTE_PROTOCOLOINUT = :CTE_PROTOCOLOINUT,'
      '  CTE_PROTOCOLOINUTDH = :CTE_PROTOCOLOINUTDH,'
      '  CTE_RECBAIRRO = :CTE_RECBAIRRO,'
      '  CTE_RECCEP = :CTE_RECCEP,'
      '  CTE_RECCIDADE = :CTE_RECCIDADE,'
      '  CTE_RECCIDADECODIGO = :CTE_RECCIDADECODIGO,'
      '  CTE_RECCNPJ = :CTE_RECCNPJ,'
      '  CTE_RECCOMPLEMENTO = :CTE_RECCOMPLEMENTO,'
      '  CTE_RECCONTATO = :CTE_RECCONTATO,'
      '  CTE_RECCPF = :CTE_RECCPF,'
      '  CTE_RECEBEDOR = :CTE_RECEBEDOR,'
      '  CTE_RECENDERECO = :CTE_RECENDERECO,'
      '  CTE_RECESTADO = :CTE_RECESTADO,'
      '  CTE_RECESTADOCODIGO = :CTE_RECESTADOCODIGO,'
      '  CTE_RECFONE = :CTE_RECFONE,'
      '  CTE_RECIBO = :CTE_RECIBO,'
      '  CTE_RECIBODH = :CTE_RECIBODH,'
      '  CTE_RECIE = :CTE_RECIE,'
      '  CTE_RECNOME = :CTE_RECNOME,'
      '  CTE_RECNUMERO = :CTE_RECNUMERO,'
      '  CTE_REFERENCIA = :CTE_REFERENCIA,'
      '  CTE_REMBAIRRO = :CTE_REMBAIRRO,'
      '  CTE_REMCEP = :CTE_REMCEP,'
      '  CTE_REMCIDADE = :CTE_REMCIDADE,'
      '  CTE_REMCIDADECODIGO = :CTE_REMCIDADECODIGO,'
      '  CTE_REMCNPJ = :CTE_REMCNPJ,'
      '  CTE_REMCOMPLEMENTO = :CTE_REMCOMPLEMENTO,'
      '  CTE_REMCONTATO = :CTE_REMCONTATO,'
      '  CTE_REMCPF = :CTE_REMCPF,'
      '  CTE_REMENDERECO = :CTE_REMENDERECO,'
      '  CTE_REMESTADO = :CTE_REMESTADO,'
      '  CTE_REMESTADOCODIGO = :CTE_REMESTADOCODIGO,'
      '  CTE_REMETENTE = :CTE_REMETENTE,'
      '  CTE_REMFONE = :CTE_REMFONE,'
      '  CTE_REMIE = :CTE_REMIE,'
      '  CTE_REMNOME = :CTE_REMNOME,'
      '  CTE_REMNUMERO = :CTE_REMNUMERO,'
      '  CTE_RETIRA = :CTE_RETIRA,'
      '  CTE_RETIRADETALHES = :CTE_RETIRADETALHES,'
      '  CTE_SEGURO = :CTE_SEGURO,'
      '  CTE_SEGUROAPOLICE = :CTE_SEGUROAPOLICE,'
      '  CTE_SEGUROAVERBACAO = :CTE_SEGUROAVERBACAO,'
      '  CTE_SEGURONOME = :CTE_SEGURONOME,'
      '  CTE_SEGUROVALOR = :CTE_SEGUROVALOR,'
      '  CTE_SERIE = :CTE_SERIE,'
      '  CTE_STATUS = :CTE_STATUS,'
      '  CTE_TIPOCTE = :CTE_TIPOCTE,'
      '  CTE_TIPOEMISSAO = :CTE_TIPOEMISSAO,'
      '  CTE_TIPOSERVICO = :CTE_TIPOSERVICO,'
      '  CTE_TOMADOR = :CTE_TOMADOR,'
      '  CTE_TOMADORBAIRRO = :CTE_TOMADORBAIRRO,'
      '  CTE_TOMADORCEP = :CTE_TOMADORCEP,'
      '  CTE_TOMADORCIDADE = :CTE_TOMADORCIDADE,'
      '  CTE_TOMADORCIDADECODIGO = :CTE_TOMADORCIDADECODIGO,'
      '  CTE_TOMADORCNPJ = :CTE_TOMADORCNPJ,'
      '  CTE_TOMADORCODIGO = :CTE_TOMADORCODIGO,'
      '  CTE_TOMADORCOMPLEMENTO = :CTE_TOMADORCOMPLEMENTO,'
      '  CTE_TOMADORCONTATO = :CTE_TOMADORCONTATO,'
      '  CTE_TOMADORCPF = :CTE_TOMADORCPF,'
      '  CTE_TOMADORENDERECO = :CTE_TOMADORENDERECO,'
      '  CTE_TOMADORESTADO = :CTE_TOMADORESTADO,'
      '  CTE_TOMADORESTADOCODIGO = :CTE_TOMADORESTADOCODIGO,'
      '  CTE_TOMADORFONE = :CTE_TOMADORFONE,'
      '  CTE_TOMADORIE = :CTE_TOMADORIE,'
      '  CTE_TOMADORNOME = :CTE_TOMADORNOME,'
      '  CTE_TOMADORNUMERO = :CTE_TOMADORNUMERO,'
      '  CTE_TOTALCOMISSAO = :CTE_TOTALCOMISSAO,'
      '  CTE_TOTALFCP = :CTE_TOTALFCP,'
      '  CTE_TOTALICMS = :CTE_TOTALICMS,'
      '  CTE_TOTALICMSST = :CTE_TOTALICMSST,'
      '  CTE_TOTALICMSUFFIM = :CTE_TOTALICMSUFFIM,'
      '  CTE_TOTALICMSUFINI = :CTE_TOTALICMSUFINI,'
      '  CTE_TOTALTRIBUTOS = :CTE_TOTALTRIBUTOS,'
      '  CTE_USUARIO = :CTE_USUARIO,'
      '  CTE_VALORCREDITOICMS = :CTE_VALORCREDITOICMS,'
      '  CTE_VALORFRETE = :CTE_VALORFRETE,'
      '  CTE_VALORNOTAS = :CTE_VALORNOTAS,'
      '  CTE_VALOROUTROS = :CTE_VALOROUTROS,'
      '  CTE_VALORSEGURO = :CTE_VALORSEGURO,'
      '  CTE_VALORTOTAL = :CTE_VALORTOTAL,'
      '  CTE_VENDEDOR = :CTE_VENDEDOR,'
      '  CTE_MOTORISTA = :CTE_MOTORISTA,'
      '  CTE_MOTORISTACPF = :CTE_MOTORISTACPF,'
      '  CTE_CIOT = :CTE_CIOT,'
      '  CTE_LOTACAO = :CTE_LOTACAO,'
      '  CTE_RECEBIDODATA = :CTE_RECEBIDODATA,'
      '  CTE_RECEBIDOPOR = :CTE_RECEBIDOPOR,'
      '  CTE_TOTALCCE = :CTE_TOTALCCE'
      'where'
      '  CTE_CODIGO = :OLD_CTE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTE_CODIGO'
    GeneratorField.Generator = 'GEN_CTE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1056
    Top = 24
    object TBCteCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = '"CONHECIMENTOS"."CTE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteCTE_AEREODIMENSAO: TIBStringField
      FieldName = 'CTE_AEREODIMENSAO'
      Origin = '"CONHECIMENTOS"."CTE_AEREODIMENSAO"'
      EditMask = '0000\X0000\X0000;1;_'
      Size = 14
    end
    object TBCteCTE_AEREODTPREVISTA: TDateField
      FieldName = 'CTE_AEREODTPREVISTA'
      Origin = '"CONHECIMENTOS"."CTE_AEREODTPREVISTA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_AEREOIATA: TIBStringField
      FieldName = 'CTE_AEREOIATA'
      Origin = '"CONHECIMENTOS"."CTE_AEREOIATA"'
      Size = 14
    end
    object TBCteCTE_AEREOIMP: TIBStringField
      FieldName = 'CTE_AEREOIMP'
      Origin = '"CONHECIMENTOS"."CTE_AEREOIMP"'
      Size = 3
    end
    object TBCteCTE_AEREOMINUTA: TIntegerField
      FieldName = 'CTE_AEREOMINUTA'
      Origin = '"CONHECIMENTOS"."CTE_AEREOMINUTA"'
    end
    object TBCteCTE_AEREONOMEFILIAL: TIBStringField
      FieldName = 'CTE_AEREONOMEFILIAL'
      Origin = '"CONHECIMENTOS"."CTE_AEREONOMEFILIAL"'
    end
    object TBCteCTE_AEREOOCA: TIBStringField
      FieldName = 'CTE_AEREOOCA'
      Origin = '"CONHECIMENTOS"."CTE_AEREOOCA"'
      EditMask = '99999999999;1;_'
      Size = 14
    end
    object TBCteCTE_AEREOTARIFACLASSE: TIBStringField
      FieldName = 'CTE_AEREOTARIFACLASSE'
      Origin = '"CONHECIMENTOS"."CTE_AEREOTARIFACLASSE"'
      Size = 25
    end
    object TBCteCTE_AEREOTARIFACODIGO: TIntegerField
      FieldName = 'CTE_AEREOTARIFACODIGO'
      Origin = '"CONHECIMENTOS"."CTE_AEREOTARIFACODIGO"'
    end
    object TBCteCTE_AEREOTARIFAVALOR: TIBBCDField
      FieldName = 'CTE_AEREOTARIFAVALOR'
      Origin = '"CONHECIMENTOS"."CTE_AEREOTARIFAVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQFCP: TIBBCDField
      FieldName = 'CTE_ALIQFCP'
      Origin = '"CONHECIMENTOS"."CTE_ALIQFCP"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMS: TIBBCDField
      FieldName = 'CTE_ALIQICMS'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMSINTER: TIBBCDField
      FieldName = 'CTE_ALIQICMSINTER'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMSINTER"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMSINTERPART: TIBBCDField
      FieldName = 'CTE_ALIQICMSINTERPART'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMSINTERPART"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMSRED: TIBBCDField
      FieldName = 'CTE_ALIQICMSRED'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMSRED"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMSST: TIBBCDField
      FieldName = 'CTE_ALIQICMSST'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMSST"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQICMSUFFIM: TIBBCDField
      FieldName = 'CTE_ALIQICMSUFFIM'
      Origin = '"CONHECIMENTOS"."CTE_ALIQICMSUFFIM"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ALIQTRIBUTOS: TIBBCDField
      FieldName = 'CTE_ALIQTRIBUTOS'
      Origin = '"CONHECIMENTOS"."CTE_ALIQTRIBUTOS"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_BAIXADATA: TDateField
      FieldName = 'CTE_BAIXADATA'
      Origin = '"CONHECIMENTOS"."CTE_BAIXADATA"'
    end
    object TBCteCTE_BAIXAPOR: TIBStringField
      FieldName = 'CTE_BAIXAPOR'
      Origin = '"CONHECIMENTOS"."CTE_BAIXAPOR"'
    end
    object TBCteCTE_BASEICMS: TIBBCDField
      FieldName = 'CTE_BASEICMS'
      Origin = '"CONHECIMENTOS"."CTE_BASEICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_BASEICMSRED: TIBBCDField
      FieldName = 'CTE_BASEICMSRED'
      Origin = '"CONHECIMENTOS"."CTE_BASEICMSRED"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_BASEICMSST: TIBBCDField
      FieldName = 'CTE_BASEICMSST'
      Origin = '"CONHECIMENTOS"."CTE_BASEICMSST"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_CARGAOUTRASCARAC: TIBStringField
      FieldName = 'CTE_CARGAOUTRASCARAC'
      Origin = '"CONHECIMENTOS"."CTE_CARGAOUTRASCARAC"'
      Size = 30
    end
    object TBCteCTE_CFOP: TIntegerField
      FieldName = 'CTE_CFOP'
      Origin = '"CONHECIMENTOS"."CTE_CFOP"'
    end
    object TBCteCTE_CFOPDESC: TIBStringField
      FieldName = 'CTE_CFOPDESC'
      Origin = '"CONHECIMENTOS"."CTE_CFOPDESC"'
      Size = 120
    end
    object TBCteCTE_CHAVEACESSO: TIBStringField
      FieldName = 'CTE_CHAVEACESSO'
      Origin = '"CONHECIMENTOS"."CTE_CHAVEACESSO"'
      Size = 50
    end
    object TBCteCTE_CIOT: TIBStringField
      FieldName = 'CTE_CIOT'
      Origin = '"CTE"."CTE_CIOT"'
      Size = 15
    end
    object TBCteCTE_CODIGONUMERICO: TIBStringField
      FieldName = 'CTE_CODIGONUMERICO'
      Origin = '"CONHECIMENTOS"."CTE_CODIGONUMERICO"'
      Size = 10
    end
    object TBCteCTE_COMISSAO: TIBBCDField
      FieldName = 'CTE_COMISSAO'
      Origin = '"CONHECIMENTOS"."CTE_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_CONDICAO: TIntegerField
      FieldName = 'CTE_CONDICAO'
      Origin = '"CONHECIMENTOS"."CTE_CONDICAO"'
      Required = True
    end
    object TBCteCTE_CONDICAOMEMO: TWideMemoField
      FieldName = 'CTE_CONDICAOMEMO'
      Origin = '"CONHECIMENTOS"."CTE_CONDICAOMEMO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBCteCTE_CONSULTADA: TIBStringField
      FieldName = 'CTE_CONSULTADA'
      Origin = '"CONHECIMENTOS"."CTE_CONSULTADA"'
      Size = 1
    end
    object TBCteCTE_CSTICMS: TIntegerField
      FieldName = 'CTE_CSTICMS'
      Origin = '"CONHECIMENTOS"."CTE_CSTICMS"'
    end
    object TBCteCTE_CTEREFERENCIADO: TIBStringField
      FieldName = 'CTE_CTEREFERENCIADO'
      Origin = '"CONHECIMENTOS"."CTE_CTEREFERENCIADO"'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBCteCTE_DATAHORA: TIBStringField
      FieldName = 'CTE_DATAHORA'
      Origin = '"CONHECIMENTOS"."CTE_DATAHORA"'
      Size = 30
    end
    object TBCteCTE_DATAHORACONTINGENCIA: TIBStringField
      FieldName = 'CTE_DATAHORACONTINGENCIA'
      Origin = '"CONHECIMENTOS"."CTE_DATAHORACONTINGENCIA"'
      Size = 30
    end
    object TBCteCTE_DESBAIRRO: TIBStringField
      FieldName = 'CTE_DESBAIRRO'
      Origin = '"CONHECIMENTOS"."CTE_DESBAIRRO"'
      Size = 50
    end
    object TBCteCTE_DESCEP: TIBStringField
      FieldName = 'CTE_DESCEP'
      Origin = '"CONHECIMENTOS"."CTE_DESCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_DESCIDADE: TIBStringField
      FieldName = 'CTE_DESCIDADE'
      Origin = '"CONHECIMENTOS"."CTE_DESCIDADE"'
      Size = 50
    end
    object TBCteCTE_DESCIDADECODIGO: TIntegerField
      FieldName = 'CTE_DESCIDADECODIGO'
      Origin = '"CONHECIMENTOS"."CTE_DESCIDADECODIGO"'
    end
    object TBCteCTE_DESCNPJ: TIBStringField
      FieldName = 'CTE_DESCNPJ'
      Origin = '"CONHECIMENTOS"."CTE_DESCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteCTE_DESCOMPLEMENTO: TIBStringField
      FieldName = 'CTE_DESCOMPLEMENTO'
      Origin = '"CONHECIMENTOS"."CTE_DESCOMPLEMENTO"'
      Size = 30
    end
    object TBCteCTE_DESCONTATO: TIBStringField
      FieldName = 'CTE_DESCONTATO'
      Origin = '"CONHECIMENTOS"."CTE_DESCONTATO"'
      Size = 50
    end
    object TBCteCTE_DESCPF: TIBStringField
      FieldName = 'CTE_DESCPF'
      Origin = '"CONHECIMENTOS"."CTE_DESCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_DESCPORC: TIBBCDField
      FieldName = 'CTE_DESCPORC'
      Origin = '"CONHECIMENTOS"."CTE_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_DESCVALOR: TIBBCDField
      FieldName = 'CTE_DESCVALOR'
      Origin = '"CONHECIMENTOS"."CTE_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_DESENDERECO: TIBStringField
      FieldName = 'CTE_DESENDERECO'
      Origin = '"CONHECIMENTOS"."CTE_DESENDERECO"'
      Size = 100
    end
    object TBCteCTE_DESESTADO: TIBStringField
      FieldName = 'CTE_DESESTADO'
      Origin = '"CONHECIMENTOS"."CTE_DESESTADO"'
      Size = 2
    end
    object TBCteCTE_DESESTADOCODIGO: TIntegerField
      FieldName = 'CTE_DESESTADOCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_DESESTADOCODIGO"'
    end
    object TBCteCTE_DESFONE: TIBStringField
      FieldName = 'CTE_DESFONE'
      Origin = '"CONHECIMENTOS"."CTE_DESFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBCteCTE_DESIE: TIBStringField
      FieldName = 'CTE_DESIE'
      Origin = '"CONHECIMENTOS"."CTE_DESIE"'
    end
    object TBCteCTE_DESNOME: TIBStringField
      FieldName = 'CTE_DESNOME'
      Origin = '"CONHECIMENTOS"."CTE_DESNOME"'
      Size = 50
    end
    object TBCteCTE_DESNUMERO: TIBStringField
      FieldName = 'CTE_DESNUMERO'
      Origin = '"CONHECIMENTOS"."CTE_DESNUMERO"'
      Size = 15
    end
    object TBCteCTE_DESTINATARIO: TIntegerField
      FieldName = 'CTE_DESTINATARIO'
      Origin = '"CONHECIMENTOS"."CTE_DESTINATARIO"'
      Required = True
    end
    object TBCteCTE_DIAPREFERENCIAL: TIntegerField
      FieldName = 'CTE_DIAPREFERENCIAL'
      Origin = '"CONHECIMENTOS"."CTE_DIAPREFERENCIAL"'
    end
    object TBCteCTE_DTATUALIZACAO: TDateField
      FieldName = 'CTE_DTATUALIZACAO'
      Origin = '"CONHECIMENTOS"."CTE_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_DTCADASTRO: TDateField
      FieldName = 'CTE_DTCADASTRO'
      Origin = '"CONHECIMENTOS"."CTE_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_DTEMISSAO: TDateField
      FieldName = 'CTE_DTEMISSAO'
      Origin = '"CONHECIMENTOS"."CTE_DTEMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGADATA: TIBStringField
      FieldName = 'CTE_ENTREGADATA'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGADATA"'
      Size = 30
    end
    object TBCteCTE_ENTREGADATAINICIAL: TDateField
      FieldName = 'CTE_ENTREGADATAINICIAL'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGADATAINICIAL"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGADATAFINAL: TDateField
      FieldName = 'CTE_ENTREGADATAFINAL'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGADATAFINAL"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGAHORA: TIBStringField
      FieldName = 'CTE_ENTREGAHORA'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGAHORA"'
      Size = 30
    end
    object TBCteCTE_ENTREGAHORAINICIAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAINICIAL'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGAHORAINICIAL"'
      EditMask = '!99:99:99;1;_'
    end
    object TBCteCTE_ENTREGAHORAFINAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAFINAL'
      Origin = '"CONHECIMENTOS"."CTE_ENTREGAHORAFINAL"'
      EditMask = '!99:99:99;1;_'
    end
    object TBCteCTE_ENVIADO: TIBStringField
      FieldName = 'CTE_ENVIADO'
      Origin = '"CONHECIMENTOS"."CTE_ENVIADO"'
      Size = 1
    end
    object TBCteCTE_EXPBAIRRO: TIBStringField
      FieldName = 'CTE_EXPBAIRRO'
      Origin = '"CONHECIMENTOS"."CTE_EXPBAIRRO"'
      Size = 50
    end
    object TBCteCTE_EXPCEP: TIBStringField
      FieldName = 'CTE_EXPCEP'
      Origin = '"CONHECIMENTOS"."CTE_EXPCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_EXPCIDADE: TIBStringField
      FieldName = 'CTE_EXPCIDADE'
      Origin = '"CONHECIMENTOS"."CTE_EXPCIDADE"'
      Size = 50
    end
    object TBCteCTE_EXPCIDADECODIGO: TIntegerField
      FieldName = 'CTE_EXPCIDADECODIGO'
      Origin = '"CONHECIMENTOS"."CTE_EXPCIDADECODIGO"'
    end
    object TBCteCTE_EXPCNPJ: TIBStringField
      FieldName = 'CTE_EXPCNPJ'
      Origin = '"CONHECIMENTOS"."CTE_EXPCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteCTE_EXPCOMPLEMENTO: TIBStringField
      FieldName = 'CTE_EXPCOMPLEMENTO'
      Origin = '"CONHECIMENTOS"."CTE_EXPCOMPLEMENTO"'
      Size = 30
    end
    object TBCteCTE_EXPCONTATO: TIBStringField
      FieldName = 'CTE_EXPCONTATO'
      Origin = '"CONHECIMENTOS"."CTE_EXPCONTATO"'
      Size = 50
    end
    object TBCteCTE_EXPCPF: TIBStringField
      FieldName = 'CTE_EXPCPF'
      Origin = '"CONHECIMENTOS"."CTE_EXPCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_EXPEDIDOR: TIntegerField
      FieldName = 'CTE_EXPEDIDOR'
      Origin = '"CONHECIMENTOS"."CTE_EXPEDIDOR"'
      Required = True
    end
    object TBCteCTE_EXPENDERECO: TIBStringField
      FieldName = 'CTE_EXPENDERECO'
      Origin = '"CONHECIMENTOS"."CTE_EXPENDERECO"'
      Size = 100
    end
    object TBCteCTE_EXPESTADO: TIBStringField
      FieldName = 'CTE_EXPESTADO'
      Origin = '"CONHECIMENTOS"."CTE_EXPESTADO"'
      Size = 2
    end
    object TBCteCTE_EXPESTADOCODIGO: TIntegerField
      FieldName = 'CTE_EXPESTADOCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_EXPESTADOCODIGO"'
    end
    object TBCteCTE_EXPFONE: TIBStringField
      FieldName = 'CTE_EXPFONE'
      Origin = '"CONHECIMENTOS"."CTE_EXPFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBCteCTE_EXPIE: TIBStringField
      FieldName = 'CTE_EXPIE'
      Origin = '"CONHECIMENTOS"."CTE_EXPIE"'
    end
    object TBCteCTE_EXPNOME: TIBStringField
      FieldName = 'CTE_EXPNOME'
      Origin = '"CONHECIMENTOS"."CTE_EXPNOME"'
      Size = 50
    end
    object TBCteCTE_EXPNUMERO: TIBStringField
      FieldName = 'CTE_EXPNUMERO'
      Origin = '"CONHECIMENTOS"."CTE_EXPNUMERO"'
      Size = 15
    end
    object TBCteCTE_FINALIDADE: TIBStringField
      FieldName = 'CTE_FINALIDADE'
      Origin = '"CONHECIMENTOS"."CTE_FINALIDADE"'
      Size = 30
    end
    object TBCteCTE_FORMAPAGTO: TIBStringField
      FieldName = 'CTE_FORMAPAGTO'
      Origin = '"CONHECIMENTOS"."CTE_FORMAPAGTO"'
      Size = 15
    end
    object TBCteCTE_FORMAPAGTOSERVICO: TIBStringField
      FieldName = 'CTE_FORMAPAGTOSERVICO'
      Origin = '"CONHECIMENTOS"."CTE_FORMAPAGTOSERVICO"'
      Size = 15
    end
    object TBCteCTE_ICMSALIQUOTAUF: TIBBCDField
      FieldName = 'CTE_ICMSALIQUOTAUF'
      Origin = '"CONHECIMENTOS"."CTE_ICMSALIQUOTAUF"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_ICMSPOR: TIBStringField
      FieldName = 'CTE_ICMSPOR'
      Origin = '"CONHECIMENTOS"."CTE_ICMSPOR"'
      Size = 1
    end
    object TBCteCTE_INFOADICFISCO: TWideMemoField
      FieldName = 'CTE_INFOADICFISCO'
      Origin = '"CONHECIMENTOS"."CTE_INFOADICFISCO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBCteCTE_LOTACAO: TIBStringField
      FieldName = 'CTE_LOTACAO'
      Origin = '"CTE"."CTE_LOTACAO"'
      Size = 10
    end
    object TBCteCTE_LOTE: TIBStringField
      FieldName = 'CTE_LOTE'
      Origin = '"CONHECIMENTOS"."CTE_LOTE"'
    end
    object TBCteCTE_MODAL: TIBStringField
      FieldName = 'CTE_MODAL'
      Origin = '"CONHECIMENTOS"."CTE_MODAL"'
      Size = 40
    end
    object TBCteCTE_MODELO: TIntegerField
      FieldName = 'CTE_MODELO'
      Origin = '"CONHECIMENTOS"."CTE_MODELO"'
    end
    object TBCteCTE_MOTIVOCANCELAMENTO: TIBStringField
      FieldName = 'CTE_MOTIVOCANCELAMENTO'
      Origin = '"CONHECIMENTOS"."CTE_MOTIVOCANCELAMENTO"'
      Size = 120
    end
    object TBCteCTE_MOTIVOCONTINGENCIA: TIBStringField
      FieldName = 'CTE_MOTIVOCONTINGENCIA'
      Origin = '"CONHECIMENTOS"."CTE_MOTIVOCONTINGENCIA"'
      Size = 120
    end
    object TBCteCTE_MOTIVOINUTILIZACAO: TIBStringField
      FieldName = 'CTE_MOTIVOINUTILIZACAO'
      Origin = '"CONHECIMENTOS"."CTE_MOTIVOINUTILIZACAO"'
      Size = 120
    end
    object TBCteCTE_MOTORISTA: TIBStringField
      FieldName = 'CTE_MOTORISTA'
      Origin = '"CTE"."CTE_MOTORISTA"'
      Size = 50
    end
    object TBCteCTE_MOTORISTACPF: TIBStringField
      FieldName = 'CTE_MOTORISTACPF'
      Origin = '"CTE"."CTE_MOTORISTACPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_MOVIMENTAFINANCEIRO: TIBStringField
      FieldName = 'CTE_MOVIMENTAFINANCEIRO'
      Origin = '"CONHECIMENTOS"."CTE_MOVIMENTAFINANCEIRO"'
      Size = 1
    end
    object TBCteCTE_OBSERVACOES: TWideMemoField
      FieldName = 'CTE_OBSERVACOES'
      Origin = '"CONHECIMENTOS"."CTE_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBCteCTE_PAGOPOR: TIBStringField
      FieldName = 'CTE_PAGOPOR'
      Origin = '"CONHECIMENTOS"."CTE_PAGOPOR"'
      Size = 1
    end
    object TBCteCTE_PESOTOTAL: TIBBCDField
      FieldName = 'CTE_PESOTOTAL'
      Origin = '"CONHECIMENTOS"."CTE_PESOTOTAL"'
      Precision = 18
      Size = 3
    end
    object TBCteCTE_PRODUTOPREDOM: TIBStringField
      FieldName = 'CTE_PRODUTOPREDOM'
      Origin = '"CONHECIMENTOS"."CTE_PRODUTOPREDOM"'
      Size = 50
    end
    object TBCteCTE_PROTOCOLO: TIBStringField
      FieldName = 'CTE_PROTOCOLO'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLO"'
    end
    object TBCteCTE_PROTOCOLOCANC: TIBStringField
      FieldName = 'CTE_PROTOCOLOCANC'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLOCANC"'
    end
    object TBCteCTE_PROTOCOLOCANCDH: TIBStringField
      FieldName = 'CTE_PROTOCOLOCANCDH'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLOCANCDH"'
      Size = 30
    end
    object TBCteCTE_PROTOCOLODH: TIBStringField
      FieldName = 'CTE_PROTOCOLODH'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLODH"'
      Size = 30
    end
    object TBCteCTE_PROTOCOLOINUT: TIBStringField
      FieldName = 'CTE_PROTOCOLOINUT'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLOINUT"'
    end
    object TBCteCTE_PROTOCOLOINUTDH: TIBStringField
      FieldName = 'CTE_PROTOCOLOINUTDH'
      Origin = '"CONHECIMENTOS"."CTE_PROTOCOLOINUTDH"'
      Size = 30
    end
    object TBCteCTE_RECBAIRRO: TIBStringField
      FieldName = 'CTE_RECBAIRRO'
      Origin = '"CONHECIMENTOS"."CTE_RECBAIRRO"'
      Size = 50
    end
    object TBCteCTE_RECCEP: TIBStringField
      FieldName = 'CTE_RECCEP'
      Origin = '"CONHECIMENTOS"."CTE_RECCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_RECCIDADE: TIBStringField
      FieldName = 'CTE_RECCIDADE'
      Origin = '"CONHECIMENTOS"."CTE_RECCIDADE"'
      Size = 50
    end
    object TBCteCTE_RECCIDADECODIGO: TIntegerField
      FieldName = 'CTE_RECCIDADECODIGO'
      Origin = '"CONHECIMENTOS"."CTE_RECCIDADECODIGO"'
    end
    object TBCteCTE_RECCNPJ: TIBStringField
      FieldName = 'CTE_RECCNPJ'
      Origin = '"CONHECIMENTOS"."CTE_RECCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteCTE_RECCOMPLEMENTO: TIBStringField
      FieldName = 'CTE_RECCOMPLEMENTO'
      Origin = '"CONHECIMENTOS"."CTE_RECCOMPLEMENTO"'
      Size = 30
    end
    object TBCteCTE_RECCONTATO: TIBStringField
      FieldName = 'CTE_RECCONTATO'
      Origin = '"CONHECIMENTOS"."CTE_RECCONTATO"'
      Size = 50
    end
    object TBCteCTE_RECCPF: TIBStringField
      FieldName = 'CTE_RECCPF'
      Origin = '"CONHECIMENTOS"."CTE_RECCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_RECEBEDOR: TIntegerField
      FieldName = 'CTE_RECEBEDOR'
      Origin = '"CONHECIMENTOS"."CTE_RECEBEDOR"'
      Required = True
    end
    object TBCteCTE_RECEBIDODATA: TDateField
      FieldName = 'CTE_RECEBIDODATA'
      Origin = '"CTE"."CTE_RECEBIDODATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_RECEBIDOPOR: TIBStringField
      FieldName = 'CTE_RECEBIDOPOR'
      Origin = '"CTE"."CTE_RECEBIDOPOR"'
      Size = 50
    end
    object TBCteCTE_RECENDERECO: TIBStringField
      FieldName = 'CTE_RECENDERECO'
      Origin = '"CONHECIMENTOS"."CTE_RECENDERECO"'
      Size = 100
    end
    object TBCteCTE_RECESTADO: TIBStringField
      FieldName = 'CTE_RECESTADO'
      Origin = '"CONHECIMENTOS"."CTE_RECESTADO"'
      Size = 2
    end
    object TBCteCTE_RECESTADOCODIGO: TIntegerField
      FieldName = 'CTE_RECESTADOCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_RECESTADOCODIGO"'
    end
    object TBCteCTE_RECFONE: TIBStringField
      FieldName = 'CTE_RECFONE'
      Origin = '"CONHECIMENTOS"."CTE_RECFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBCteCTE_RECIBO: TIBStringField
      FieldName = 'CTE_RECIBO'
      Origin = '"CONHECIMENTOS"."CTE_RECIBO"'
    end
    object TBCteCTE_RECIBODH: TIBStringField
      FieldName = 'CTE_RECIBODH'
      Origin = '"CONHECIMENTOS"."CTE_RECIBODH"'
      Size = 30
    end
    object TBCteCTE_RECIE: TIBStringField
      FieldName = 'CTE_RECIE'
      Origin = '"CONHECIMENTOS"."CTE_RECIE"'
    end
    object TBCteCTE_RECNOME: TIBStringField
      FieldName = 'CTE_RECNOME'
      Origin = '"CONHECIMENTOS"."CTE_RECNOME"'
      Size = 50
    end
    object TBCteCTE_RECNUMERO: TIBStringField
      FieldName = 'CTE_RECNUMERO'
      Origin = '"CONHECIMENTOS"."CTE_RECNUMERO"'
      Size = 15
    end
    object TBCteCTE_REFERENCIA: TIBStringField
      FieldName = 'CTE_REFERENCIA'
      Origin = '"CONHECIMENTOS"."CTE_REFERENCIA"'
    end
    object TBCteCTE_REMBAIRRO: TIBStringField
      FieldName = 'CTE_REMBAIRRO'
      Origin = '"CONHECIMENTOS"."CTE_REMBAIRRO"'
      Size = 50
    end
    object TBCteCTE_REMCEP: TIBStringField
      FieldName = 'CTE_REMCEP'
      Origin = '"CONHECIMENTOS"."CTE_REMCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_REMCIDADE: TIBStringField
      FieldName = 'CTE_REMCIDADE'
      Origin = '"CONHECIMENTOS"."CTE_REMCIDADE"'
      Size = 50
    end
    object TBCteCTE_REMCIDADECODIGO: TIntegerField
      FieldName = 'CTE_REMCIDADECODIGO'
      Origin = '"CONHECIMENTOS"."CTE_REMCIDADECODIGO"'
    end
    object TBCteCTE_REMCNPJ: TIBStringField
      FieldName = 'CTE_REMCNPJ'
      Origin = '"CONHECIMENTOS"."CTE_REMCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteCTE_REMCOMPLEMENTO: TIBStringField
      FieldName = 'CTE_REMCOMPLEMENTO'
      Origin = '"CONHECIMENTOS"."CTE_REMCOMPLEMENTO"'
      Size = 30
    end
    object TBCteCTE_REMCONTATO: TIBStringField
      FieldName = 'CTE_REMCONTATO'
      Origin = '"CONHECIMENTOS"."CTE_REMCONTATO"'
      Size = 50
    end
    object TBCteCTE_REMCPF: TIBStringField
      FieldName = 'CTE_REMCPF'
      Origin = '"CONHECIMENTOS"."CTE_REMCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_REMENDERECO: TIBStringField
      FieldName = 'CTE_REMENDERECO'
      Origin = '"CONHECIMENTOS"."CTE_REMENDERECO"'
      Size = 100
    end
    object TBCteCTE_REMESTADO: TIBStringField
      FieldName = 'CTE_REMESTADO'
      Origin = '"CONHECIMENTOS"."CTE_REMESTADO"'
      Size = 2
    end
    object TBCteCTE_REMESTADOCODIGO: TIntegerField
      FieldName = 'CTE_REMESTADOCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_REMESTADOCODIGO"'
    end
    object TBCteCTE_REMETENTE: TIntegerField
      FieldName = 'CTE_REMETENTE'
      Origin = '"CONHECIMENTOS"."CTE_REMETENTE"'
      Required = True
    end
    object TBCteCTE_REMFONE: TIBStringField
      FieldName = 'CTE_REMFONE'
      Origin = '"CONHECIMENTOS"."CTE_REMFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBCteCTE_REMIE: TIBStringField
      FieldName = 'CTE_REMIE'
      Origin = '"CONHECIMENTOS"."CTE_REMIE"'
    end
    object TBCteCTE_REMNOME: TIBStringField
      FieldName = 'CTE_REMNOME'
      Origin = '"CONHECIMENTOS"."CTE_REMNOME"'
      Size = 50
    end
    object TBCteCTE_REMNUMERO: TIBStringField
      FieldName = 'CTE_REMNUMERO'
      Origin = '"CONHECIMENTOS"."CTE_REMNUMERO"'
      Size = 15
    end
    object TBCteCTE_RETIRA: TIBStringField
      FieldName = 'CTE_RETIRA'
      Origin = '"CONHECIMENTOS"."CTE_RETIRA"'
      Size = 1
    end
    object TBCteCTE_RETIRADETALHES: TIBStringField
      FieldName = 'CTE_RETIRADETALHES'
      Origin = '"CONHECIMENTOS"."CTE_RETIRADETALHES"'
      Size = 120
    end
    object TBCteCTE_SEGURO: TIBStringField
      FieldName = 'CTE_SEGURO'
      Origin = '"CONHECIMENTOS"."CTE_SEGURO"'
    end
    object TBCteCTE_SEGUROAPOLICE: TIBStringField
      FieldName = 'CTE_SEGUROAPOLICE'
      Origin = '"CTE"."CTE_SEGUROAPOLICE"'
    end
    object TBCteCTE_SEGUROAVERBACAO: TIBStringField
      FieldName = 'CTE_SEGUROAVERBACAO'
      Origin = '"CTE"."CTE_SEGUROAVERBACAO"'
    end
    object TBCteCTE_SEGURONOME: TIBStringField
      FieldName = 'CTE_SEGURONOME'
      Origin = '"CONHECIMENTOS"."CTE_SEGURONOME"'
      Size = 50
    end
    object TBCteCTE_SEGUROVALOR: TIBBCDField
      FieldName = 'CTE_SEGUROVALOR'
      Origin = '"CONHECIMENTOS"."CTE_SEGUROVALOR"'
      Precision = 18
      Size = 4
    end
    object TBCteCTE_SERIE: TIntegerField
      FieldName = 'CTE_SERIE'
      Origin = '"CONHECIMENTOS"."CTE_SERIE"'
    end
    object TBCteCTE_STATUS: TIBStringField
      FieldName = 'CTE_STATUS'
      Origin = '"CONHECIMENTOS"."CTE_STATUS"'
      Size = 1
    end
    object TBCteCTE_TIPOCTE: TIBStringField
      FieldName = 'CTE_TIPOCTE'
      Origin = '"CONHECIMENTOS"."CTE_TIPOCTE"'
      Size = 30
    end
    object TBCteCTE_TIPOEMISSAO: TIBStringField
      FieldName = 'CTE_TIPOEMISSAO'
      Origin = '"CONHECIMENTOS"."CTE_TIPOEMISSAO"'
      Size = 30
    end
    object TBCteCTE_TIPOSERVICO: TIBStringField
      FieldName = 'CTE_TIPOSERVICO'
      Origin = '"CONHECIMENTOS"."CTE_TIPOSERVICO"'
      Size = 30
    end
    object TBCteCTE_TOMADOR: TIBStringField
      FieldName = 'CTE_TOMADOR'
      Origin = '"CONHECIMENTOS"."CTE_TOMADOR"'
    end
    object TBCteCTE_TOMADORBAIRRO: TIBStringField
      FieldName = 'CTE_TOMADORBAIRRO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORBAIRRO"'
      Size = 50
    end
    object TBCteCTE_TOMADORCEP: TIBStringField
      FieldName = 'CTE_TOMADORCEP'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_TOMADORCIDADE: TIBStringField
      FieldName = 'CTE_TOMADORCIDADE'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCIDADE"'
      Size = 50
    end
    object TBCteCTE_TOMADORCIDADECODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCIDADECODIGO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCIDADECODIGO"'
    end
    object TBCteCTE_TOMADORCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCODIGO"'
    end
    object TBCteCTE_TOMADORCOMPLEMENTO: TIBStringField
      FieldName = 'CTE_TOMADORCOMPLEMENTO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCOMPLEMENTO"'
      Size = 30
    end
    object TBCteCTE_TOMADORCONTATO: TIBStringField
      FieldName = 'CTE_TOMADORCONTATO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCONTATO"'
      Size = 50
    end
    object TBCteCTE_TOMADORCNPJ: TIBStringField
      FieldName = 'CTE_TOMADORCNPJ'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteCTE_TOMADORCPF: TIBStringField
      FieldName = 'CTE_TOMADORCPF'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_TOMADORENDERECO: TIBStringField
      FieldName = 'CTE_TOMADORENDERECO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORENDERECO"'
      Size = 100
    end
    object TBCteCTE_TOMADORESTADO: TIBStringField
      FieldName = 'CTE_TOMADORESTADO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORESTADO"'
      Size = 2
    end
    object TBCteCTE_TOMADORESTADOCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORESTADOCODIGO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORESTADOCODIGO"'
    end
    object TBCteCTE_TOMADORFONE: TIBStringField
      FieldName = 'CTE_TOMADORFONE'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORFONE"'
      EditMask = '!\(999\)\ 99999\-9999;1;_'
    end
    object TBCteCTE_TOMADORIE: TIBStringField
      FieldName = 'CTE_TOMADORIE'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORIE"'
    end
    object TBCteCTE_TOMADORNOME: TIBStringField
      FieldName = 'CTE_TOMADORNOME'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORNOME"'
      Size = 50
    end
    object TBCteCTE_TOMADORNUMERO: TIBStringField
      FieldName = 'CTE_TOMADORNUMERO'
      Origin = '"CONHECIMENTOS"."CTE_TOMADORNUMERO"'
      Size = 15
    end
    object TBCteCTE_TOTALCCE: TIntegerField
      FieldName = 'CTE_TOTALCCE'
      Origin = '"CTE"."CTE_TOTALCCE"'
    end
    object TBCteCTE_TOTALCOMISSAO: TIBBCDField
      FieldName = 'CTE_TOTALCOMISSAO'
      Origin = '"CONHECIMENTOS"."CTE_TOTALCOMISSAO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALFCP: TIBBCDField
      FieldName = 'CTE_TOTALFCP'
      Origin = '"CONHECIMENTOS"."CTE_TOTALFCP"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALICMS: TIBBCDField
      FieldName = 'CTE_TOTALICMS'
      Origin = '"CONHECIMENTOS"."CTE_TOTALICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALICMSST: TIBBCDField
      FieldName = 'CTE_TOTALICMSST'
      Origin = '"CONHECIMENTOS"."CTE_TOTALICMSST"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALICMSUFINI: TIBBCDField
      FieldName = 'CTE_TOTALICMSUFINI'
      Origin = '"CONHECIMENTOS"."CTE_TOTALICMSUFINI"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALICMSUFFIM: TIBBCDField
      FieldName = 'CTE_TOTALICMSUFFIM'
      Origin = '"CONHECIMENTOS"."CTE_TOTALICMSUFFIM"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_TOTALTRIBUTOS: TIBBCDField
      FieldName = 'CTE_TOTALTRIBUTOS'
      Origin = '"CONHECIMENTOS"."CTE_TOTALTRIBUTOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_USUARIO: TIBStringField
      FieldName = 'CTE_USUARIO'
      Origin = '"CONHECIMENTOS"."CTE_USUARIO"'
    end
    object TBCteCTE_VALORCREDITOICMS: TIBBCDField
      FieldName = 'CTE_VALORCREDITOICMS'
      Origin = '"CONHECIMENTOS"."CTE_VALORCREDITOICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VALORFRETE: TIBBCDField
      FieldName = 'CTE_VALORFRETE'
      Origin = '"CONHECIMENTOS"."CTE_VALORFRETE"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VALORSEGURO: TIBBCDField
      FieldName = 'CTE_VALORSEGURO'
      Origin = '"CONHECIMENTOS"."CTE_VALORSEGURO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VALORNOTAS: TIBBCDField
      FieldName = 'CTE_VALORNOTAS'
      Origin = '"CONHECIMENTOS"."CTE_VALORNOTAS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VALOROUTROS: TIBBCDField
      FieldName = 'CTE_VALOROUTROS'
      Origin = '"CONHECIMENTOS"."CTE_VALOROUTROS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VALORTOTAL: TIBBCDField
      FieldName = 'CTE_VALORTOTAL'
      Origin = '"CONHECIMENTOS"."CTE_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteCTE_VENDEDOR: TIntegerField
      FieldName = 'CTE_VENDEDOR'
      Origin = '"CONHECIMENTOS"."CTE_VENDEDOR"'
      Required = True
    end
    object TBCteCPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
    object TBCteICM_DESCRICAO: TIBStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = '"ICMS"."ICM_DESCRICAO"'
      Size = 120
    end
    object TBCteVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSCte: TDataSource
    DataSet = TBCte
    OnStateChange = DSCteStateChange
    Left = 1056
    Top = 72
  end
  object TRCte: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1056
    Top = 120
  end
  object TBCteNotas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteNotas
    AfterDelete = TBCteNotasAfterDelete
    AfterInsert = TBCteNotasAfterInsert
    AfterPost = TBCteNotasAfterPost
    BeforePost = TBCteNotasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTENOTAS'
      'where'
      '  CTN_CODIGO = :OLD_CTN_CODIGO')
    InsertSQL.Strings = (
      'insert into CTENOTAS'
      
        '  (CTN_CODIGO, CTN_CTE, CTN_ALIQICMS, CTN_ALIQICMSST, CTN_BASEIC' +
        'MS, CTN_BASEICMSST, '
      
        '   CTN_CFOP, CTN_CHAVEACESSO, CTN_CNPJREMETENTE, CTN_DESCRICAODO' +
        'C, CTN_DTEMISSAO, '
      
        '   CTN_MODELO, CTN_NUMERO, CTN_PESO, CTN_SERIE, CTN_SUFRAMA, CTN' +
        '_TIPONOTA, '
      
        '   CTN_TIPOOUTROS, CTN_TOTALICMS, CTN_TOTALICMSST, CTN_TOTALPROD' +
        'UTOS, CTN_VALORTOTAL)'
      'values'
      
        '  (:CTN_CODIGO, :CTN_CTE, :CTN_ALIQICMS, :CTN_ALIQICMSST, :CTN_B' +
        'ASEICMS, '
      
        '   :CTN_BASEICMSST, :CTN_CFOP, :CTN_CHAVEACESSO, :CTN_CNPJREMETE' +
        'NTE, :CTN_DESCRICAODOC, '
      
        '   :CTN_DTEMISSAO, :CTN_MODELO, :CTN_NUMERO, :CTN_PESO, :CTN_SER' +
        'IE, :CTN_SUFRAMA, '
      
        '   :CTN_TIPONOTA, :CTN_TIPOOUTROS, :CTN_TOTALICMS, :CTN_TOTALICM' +
        'SST, :CTN_TOTALPRODUTOS, '
      '   :CTN_VALORTOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CTN_CODIGO,'
      '  CTN_CTE,'
      '  CTN_ALIQICMS,'
      '  CTN_ALIQICMSST,'
      '  CTN_BASEICMS,'
      '  CTN_BASEICMSST,'
      '  CTN_CFOP,'
      '  CTN_CHAVEACESSO,'
      '  CTN_CNPJREMETENTE,'
      '  CTN_DESCRICAODOC,'
      '  CTN_DTEMISSAO,'
      '  CTN_MODELO,'
      '  CTN_NUMERO,'
      '  CTN_PESO,'
      '  CTN_SERIE,'
      '  CTN_SUFRAMA,'
      '  CTN_TIPONOTA,'
      '  CTN_TIPOOUTROS,'
      '  CTN_TOTALICMS,'
      '  CTN_TOTALICMSST,'
      '  CTN_TOTALPRODUTOS,'
      '  CTN_VALORTOTAL'
      'from CTENOTAS '
      'where'
      '  CTN_CODIGO = :CTN_CODIGO')
    SelectSQL.Strings = (
      'select * from CTENOTAS'
      'where CTN_CTE=:CTE_CODIGO'
      'order by CTN_CODIGO')
    ModifySQL.Strings = (
      'update CTENOTAS'
      'set'
      '  CTN_CODIGO = :CTN_CODIGO,'
      '  CTN_CTE = :CTN_CTE,'
      '  CTN_ALIQICMS = :CTN_ALIQICMS,'
      '  CTN_ALIQICMSST = :CTN_ALIQICMSST,'
      '  CTN_BASEICMS = :CTN_BASEICMS,'
      '  CTN_BASEICMSST = :CTN_BASEICMSST,'
      '  CTN_CFOP = :CTN_CFOP,'
      '  CTN_CHAVEACESSO = :CTN_CHAVEACESSO,'
      '  CTN_CNPJREMETENTE = :CTN_CNPJREMETENTE,'
      '  CTN_DESCRICAODOC = :CTN_DESCRICAODOC,'
      '  CTN_DTEMISSAO = :CTN_DTEMISSAO,'
      '  CTN_MODELO = :CTN_MODELO,'
      '  CTN_NUMERO = :CTN_NUMERO,'
      '  CTN_PESO = :CTN_PESO,'
      '  CTN_SERIE = :CTN_SERIE,'
      '  CTN_SUFRAMA = :CTN_SUFRAMA,'
      '  CTN_TIPONOTA = :CTN_TIPONOTA,'
      '  CTN_TIPOOUTROS = :CTN_TIPOOUTROS,'
      '  CTN_TOTALICMS = :CTN_TOTALICMS,'
      '  CTN_TOTALICMSST = :CTN_TOTALICMSST,'
      '  CTN_TOTALPRODUTOS = :CTN_TOTALPRODUTOS,'
      '  CTN_VALORTOTAL = :CTN_VALORTOTAL'
      'where'
      '  CTN_CODIGO = :OLD_CTN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTN_CODIGO'
    GeneratorField.Generator = 'GEN_CTENOTAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 160
    Top = 280
    object TBCteNotasCTN_ALIQICMS: TIBBCDField
      FieldName = 'CTN_ALIQICMS'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_ALIQICMSST: TIBBCDField
      FieldName = 'CTN_ALIQICMSST'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_ALIQICMSST"'
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_BASEICMS: TIBBCDField
      FieldName = 'CTN_BASEICMS'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_BASEICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_BASEICMSST: TIBBCDField
      FieldName = 'CTN_BASEICMSST'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_BASEICMSST"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_CFOP: TIBStringField
      FieldName = 'CTN_CFOP'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_CFOP"'
      Size = 10
    end
    object TBCteNotasCTN_CHAVEACESSO: TIBStringField
      FieldName = 'CTN_CHAVEACESSO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_CHAVEACESSO"'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBCteNotasCTN_CNPJREMETENTE: TIBStringField
      FieldName = 'CTN_CNPJREMETENTE'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_CNPJREMETENTE"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBCteNotasCTN_CODIGO: TIntegerField
      FieldName = 'CTN_CODIGO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteNotasCTN_CTE: TIntegerField
      FieldName = 'CTN_CTE'
      Origin = '"CTENOTAS"."CTN_CTE"'
      Required = True
    end
    object TBCteNotasCTN_DESCRICAODOC: TIBStringField
      FieldName = 'CTN_DESCRICAODOC'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_DESCRICAODOC"'
      Size = 50
    end
    object TBCteNotasCTN_DTEMISSAO: TDateField
      FieldName = 'CTN_DTEMISSAO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_DTEMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteNotasCTN_MODELO: TIntegerField
      FieldName = 'CTN_MODELO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_MODELO"'
    end
    object TBCteNotasCTN_NUMERO: TIntegerField
      FieldName = 'CTN_NUMERO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_NUMERO"'
    end
    object TBCteNotasCTN_PESO: TIBBCDField
      FieldName = 'CTN_PESO'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_PESO"'
      Precision = 18
      Size = 3
    end
    object TBCteNotasCTN_SERIE: TIntegerField
      FieldName = 'CTN_SERIE'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_SERIE"'
    end
    object TBCteNotasCTN_SUFRAMA: TIBStringField
      FieldName = 'CTN_SUFRAMA'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_SUFRAMA"'
    end
    object TBCteNotasCTN_TIPONOTA: TIBStringField
      FieldName = 'CTN_TIPONOTA'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_TIPONOTA"'
      Size = 30
    end
    object TBCteNotasCTN_TIPOOUTROS: TIBStringField
      FieldName = 'CTN_TIPOOUTROS'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_TIPOOUTROS"'
      Size = 30
    end
    object TBCteNotasCTN_TOTALICMS: TIBBCDField
      FieldName = 'CTN_TOTALICMS'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_TOTALICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_TOTALICMSST: TIBBCDField
      FieldName = 'CTN_TOTALICMSST'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_TOTALICMSST"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_TOTALPRODUTOS: TIBBCDField
      FieldName = 'CTN_TOTALPRODUTOS'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_TOTALPRODUTOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCteNotasCTN_VALORTOTAL: TIBBCDField
      FieldName = 'CTN_VALORTOTAL'
      Origin = '"CONHECIMENTOSNOTAS"."CTN_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSCteNotas: TDataSource
    DataSet = TBCteNotas
    Left = 160
    Top = 328
  end
  object TRCteNotas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 376
  end
  object TBFrotas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRFrotas
    AfterDelete = TBFrotasAfterDelete
    AfterInsert = TBFrotasAfterInsert
    AfterPost = TBFrotasAfterPost
    BeforeEdit = TBFrotasBeforeEdit
    BeforeInsert = TBFrotasBeforeInsert
    BeforePost = TBFrotasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FROTAS'
      'where'
      '  FRO_CODIGO = :OLD_FRO_CODIGO')
    InsertSQL.Strings = (
      'insert into FROTAS'
      
        '  (FRO_CODIGO, FRO_ANOFAB, FRO_ANOMOD, FRO_CIDADE, FRO_DESCRICAO' +
        ', FRO_DTATUALIZACAO, '
      
        '   FRO_DTCADASTRO, FRO_ESTADO, FRO_MARCA, FRO_MODELO, FRO_PLACA,' +
        ' FRO_RENAVAM, '
      
        '   FRO_RNTRC, FRO_STATUS, FRO_USUARIO, FRO_TARA, FRO_CAPACIDADEK' +
        'G, FRO_CAPACIDADEM3, '
      
        '   FRO_TIPOPROPRIEDADE, FRO_TIPOPROPRIETARIO, FRO_TIPOVEICULO, F' +
        'RO_TIPORODADO, '
      
        '   FRO_TIPOCARROCERIA, FRO_ESTADOPROPRIETARIO, FRO_CPF, FRO_CNPJ' +
        ', FRO_NOME, '
      '   FRO_IE)'
      'values'
      
        '  (:FRO_CODIGO, :FRO_ANOFAB, :FRO_ANOMOD, :FRO_CIDADE, :FRO_DESC' +
        'RICAO, '
      
        '   :FRO_DTATUALIZACAO, :FRO_DTCADASTRO, :FRO_ESTADO, :FRO_MARCA,' +
        ' :FRO_MODELO, '
      
        '   :FRO_PLACA, :FRO_RENAVAM, :FRO_RNTRC, :FRO_STATUS, :FRO_USUAR' +
        'IO, :FRO_TARA, '
      
        '   :FRO_CAPACIDADEKG, :FRO_CAPACIDADEM3, :FRO_TIPOPROPRIEDADE, :' +
        'FRO_TIPOPROPRIETARIO, '
      
        '   :FRO_TIPOVEICULO, :FRO_TIPORODADO, :FRO_TIPOCARROCERIA, :FRO_' +
        'ESTADOPROPRIETARIO, '
      '   :FRO_CPF, :FRO_CNPJ, :FRO_NOME, :FRO_IE)')
    RefreshSQL.Strings = (
      'Select '
      '  FRO_CODIGO,'
      '  FRO_ANOFAB,'
      '  FRO_ANOMOD,'
      '  FRO_CIDADE,'
      '  FRO_DESCRICAO,'
      '  FRO_DTATUALIZACAO,'
      '  FRO_DTCADASTRO,'
      '  FRO_ESTADO,'
      '  FRO_MARCA,'
      '  FRO_MODELO,'
      '  FRO_PLACA,'
      '  FRO_RENAVAM,'
      '  FRO_RNTRC,'
      '  FRO_STATUS,'
      '  FRO_USUARIO,'
      '  FRO_TARA,'
      '  FRO_CAPACIDADEKG,'
      '  FRO_CAPACIDADEM3,'
      '  FRO_TIPOPROPRIEDADE,'
      '  FRO_TIPOPROPRIETARIO,'
      '  FRO_TIPOVEICULO,'
      '  FRO_TIPORODADO,'
      '  FRO_TIPOCARROCERIA,'
      '  FRO_ESTADOPROPRIETARIO,'
      '  FRO_CPF,'
      '  FRO_CNPJ,'
      '  FRO_NOME,'
      '  FRO_IE'
      'from FROTAS '
      'where'
      '  FRO_CODIGO = :FRO_CODIGO')
    SelectSQL.Strings = (
      'select * from FROTAS'
      'where FRO_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update FROTAS'
      'set'
      '  FRO_CODIGO = :FRO_CODIGO,'
      '  FRO_ANOFAB = :FRO_ANOFAB,'
      '  FRO_ANOMOD = :FRO_ANOMOD,'
      '  FRO_CIDADE = :FRO_CIDADE,'
      '  FRO_DESCRICAO = :FRO_DESCRICAO,'
      '  FRO_DTATUALIZACAO = :FRO_DTATUALIZACAO,'
      '  FRO_DTCADASTRO = :FRO_DTCADASTRO,'
      '  FRO_ESTADO = :FRO_ESTADO,'
      '  FRO_MARCA = :FRO_MARCA,'
      '  FRO_MODELO = :FRO_MODELO,'
      '  FRO_PLACA = :FRO_PLACA,'
      '  FRO_RENAVAM = :FRO_RENAVAM,'
      '  FRO_RNTRC = :FRO_RNTRC,'
      '  FRO_STATUS = :FRO_STATUS,'
      '  FRO_USUARIO = :FRO_USUARIO,'
      '  FRO_TARA = :FRO_TARA,'
      '  FRO_CAPACIDADEKG = :FRO_CAPACIDADEKG,'
      '  FRO_CAPACIDADEM3 = :FRO_CAPACIDADEM3,'
      '  FRO_TIPOPROPRIEDADE = :FRO_TIPOPROPRIEDADE,'
      '  FRO_TIPOPROPRIETARIO = :FRO_TIPOPROPRIETARIO,'
      '  FRO_TIPOVEICULO = :FRO_TIPOVEICULO,'
      '  FRO_TIPORODADO = :FRO_TIPORODADO,'
      '  FRO_TIPOCARROCERIA = :FRO_TIPOCARROCERIA,'
      '  FRO_ESTADOPROPRIETARIO = :FRO_ESTADOPROPRIETARIO,'
      '  FRO_CPF = :FRO_CPF,'
      '  FRO_CNPJ = :FRO_CNPJ,'
      '  FRO_NOME = :FRO_NOME,'
      '  FRO_IE = :FRO_IE'
      'where'
      '  FRO_CODIGO = :OLD_FRO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FRO_CODIGO'
    GeneratorField.Generator = 'GEN_FROTAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 1248
    Top = 280
    object TBFrotasFRO_ANOFAB: TIBStringField
      FieldName = 'FRO_ANOFAB'
      Origin = '"FROTAS"."FRO_ANOFAB"'
      Size = 4
    end
    object TBFrotasFRO_ANOMOD: TIBStringField
      FieldName = 'FRO_ANOMOD'
      Origin = '"FROTAS"."FRO_ANOMOD"'
      Size = 4
    end
    object TBFrotasFRO_CAPACIDADEKG: TIBBCDField
      FieldName = 'FRO_CAPACIDADEKG'
      Origin = '"FROTAS"."FRO_CAPACIDADEKG"'
      Precision = 18
      Size = 3
    end
    object TBFrotasFRO_CAPACIDADEM3: TIBBCDField
      FieldName = 'FRO_CAPACIDADEM3'
      Origin = '"FROTAS"."FRO_CAPACIDADEM3"'
      Precision = 18
      Size = 4
    end
    object TBFrotasFRO_CIDADE: TIBStringField
      FieldName = 'FRO_CIDADE'
      Origin = '"FROTAS"."FRO_CIDADE"'
      Size = 30
    end
    object TBFrotasFRO_CNPJ: TIBStringField
      FieldName = 'FRO_CNPJ'
      Origin = '"FROTAS"."FRO_CNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBFrotasFRO_CODIGO: TIntegerField
      FieldName = 'FRO_CODIGO'
      Origin = '"FROTAS"."FRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFrotasFRO_CPF: TIBStringField
      FieldName = 'FRO_CPF'
      Origin = '"FROTAS"."FRO_CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBFrotasFRO_DESCRICAO: TIBStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = '"FROTAS"."FRO_DESCRICAO"'
      Size = 50
    end
    object TBFrotasFRO_DTATUALIZACAO: TDateField
      FieldName = 'FRO_DTATUALIZACAO'
      Origin = '"FROTAS"."FRO_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFrotasFRO_DTCADASTRO: TDateField
      FieldName = 'FRO_DTCADASTRO'
      Origin = '"FROTAS"."FRO_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFrotasFRO_ESTADO: TIBStringField
      FieldName = 'FRO_ESTADO'
      Origin = '"FROTAS"."FRO_ESTADO"'
      Size = 2
    end
    object TBFrotasFRO_ESTADOPROPRIETARIO: TIBStringField
      FieldName = 'FRO_ESTADOPROPRIETARIO'
      Origin = '"FROTAS"."FRO_ESTADOPROPRIETARIO"'
      Size = 2
    end
    object TBFrotasFRO_IE: TIBStringField
      FieldName = 'FRO_IE'
      Origin = '"FROTAS"."FRO_IE"'
    end
    object TBFrotasFRO_MARCA: TIBStringField
      FieldName = 'FRO_MARCA'
      Origin = '"FROTAS"."FRO_MARCA"'
      Size = 40
    end
    object TBFrotasFRO_MODELO: TIBStringField
      FieldName = 'FRO_MODELO'
      Origin = '"FROTAS"."FRO_MODELO"'
      Size = 40
    end
    object TBFrotasFRO_NOME: TIBStringField
      FieldName = 'FRO_NOME'
      Origin = '"FROTAS"."FRO_NOME"'
      Size = 50
    end
    object TBFrotasFRO_PLACA: TIBStringField
      FieldName = 'FRO_PLACA'
      Origin = '"FROTAS"."FRO_PLACA"'
      EditMask = 'aaa\-9999;1;_'
      Size = 10
    end
    object TBFrotasFRO_RENAVAM: TIBStringField
      FieldName = 'FRO_RENAVAM'
      Origin = '"FROTAS"."FRO_RENAVAM"'
    end
    object TBFrotasFRO_RNTRC: TIBStringField
      FieldName = 'FRO_RNTRC'
      Origin = '"FROTAS"."FRO_RNTRC"'
    end
    object TBFrotasFRO_STATUS: TIBStringField
      FieldName = 'FRO_STATUS'
      Origin = '"FROTAS"."FRO_STATUS"'
      Size = 1
    end
    object TBFrotasFRO_TARA: TIBBCDField
      FieldName = 'FRO_TARA'
      Origin = '"FROTAS"."FRO_TARA"'
      Precision = 18
      Size = 3
    end
    object TBFrotasFRO_TIPOCARROCERIA: TIBStringField
      FieldName = 'FRO_TIPOCARROCERIA'
      Origin = '"FROTAS"."FRO_TIPOCARROCERIA"'
    end
    object TBFrotasFRO_TIPOPROPRIEDADE: TIBStringField
      FieldName = 'FRO_TIPOPROPRIEDADE'
      Origin = '"FROTAS"."FRO_TIPOPROPRIEDADE"'
      Size = 25
    end
    object TBFrotasFRO_TIPOPROPRIETARIO: TIBStringField
      FieldName = 'FRO_TIPOPROPRIETARIO'
      Origin = '"FROTAS"."FRO_TIPOPROPRIETARIO"'
      Size = 25
    end
    object TBFrotasFRO_TIPORODADO: TIBStringField
      FieldName = 'FRO_TIPORODADO'
      Origin = '"FROTAS"."FRO_TIPORODADO"'
    end
    object TBFrotasFRO_TIPOVEICULO: TIBStringField
      FieldName = 'FRO_TIPOVEICULO'
      Origin = '"FROTAS"."FRO_TIPOVEICULO"'
    end
    object TBFrotasFRO_USUARIO: TIBStringField
      FieldName = 'FRO_USUARIO'
      Origin = '"FROTAS"."FRO_USUARIO"'
    end
  end
  object DSFrotas: TDataSource
    DataSet = TBFrotas
    OnStateChange = DSFrotasStateChange
    Left = 1248
    Top = 328
  end
  object TRFrotas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1248
    Top = 376
  end
  object QYCteNotas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRYCteNotas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 224
    Top = 280
  end
  object QYMatriculas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRMatriculas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'MAT_CODIGO,'
      'MAT_TURMA,'
      'MAT_CLIENTE'
      'from MATRICULAS')
    Left = 608
    Top = 632
  end
  object QYChamadas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRChamadas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CHAMADAS order by CHA_MATRICULA')
    Left = 672
    Top = 168
  end
  object QYCalendarios: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRCalendarios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CHAMADAS order by CHA_MATRICULA')
    Left = 608
    Top = 168
  end
  object QYChamadasAux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRChamadas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CHAMADAS order by CHA_MATRICULA')
    Left = 672
    Top = 216
  end
  object TBCteCodigo: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteCodigo
    AfterPost = TBCteCodigoAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTECODIGO'
      'where'
      '  CTE_CODIGO = :OLD_CTE_CODIGO')
    InsertSQL.Strings = (
      'insert into CTECODIGO'
      '  (CTE_CODIGO)'
      'values'
      '  (:CTE_CODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  CTE_CODIGO'
      'from CTECODIGO '
      'where'
      '  CTE_CODIGO = :CTE_CODIGO')
    SelectSQL.Strings = (
      'select * from CTECODIGO')
    ModifySQL.Strings = (
      'update CTECODIGO'
      'set'
      '  CTE_CODIGO = :CTE_CODIGO'
      'where'
      '  CTE_CODIGO = :OLD_CTE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 280
    object TBCteCodigoCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = '"CONHECIMENTOSCODIGO"."CTE_CODIGO"'
      Required = True
    end
  end
  object DSCteCodigo: TDataSource
    DataSet = TBCteCodigo
    Left = 32
    Top = 328
  end
  object TRCteCodigo: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 376
  end
  object TRYCteNotas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 376
  end
  object TBUnidades: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRUnidades
    AfterDelete = TBUnidadesAfterDelete
    AfterInsert = TBUnidadesAfterInsert
    AfterPost = TBUnidadesAfterPost
    BeforeEdit = TBUnidadesBeforeEdit
    BeforeInsert = TBUnidadesBeforeInsert
    BeforePost = TBUnidadesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from UNIDADES'
      'where'
      '  UNI_CODIGO = :OLD_UNI_CODIGO')
    InsertSQL.Strings = (
      'insert into UNIDADES'
      
        '  (UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALIZACAO, UNI_DTCADASTRO,' +
        ' UNI_USUARIO, '
      '   UNI_ATUALIZAR)'
      'values'
      
        '  (:UNI_CODIGO, :UNI_DESCRICAO, :UNI_DTATUALIZACAO, :UNI_DTCADAS' +
        'TRO, :UNI_USUARIO, '
      '   :UNI_ATUALIZAR)')
    RefreshSQL.Strings = (
      'Select '
      '  UNI_CODIGO,'
      '  UNI_DESCRICAO,'
      '  UNI_DTATUALIZACAO,'
      '  UNI_DTCADASTRO,'
      '  UNI_USUARIO,'
      '  UNI_ATUALIZAR'
      'from UNIDADES '
      'where'
      '  UNI_CODIGO = :UNI_CODIGO')
    SelectSQL.Strings = (
      'select * from UNIDADES'
      'where UNI_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update UNIDADES'
      'set'
      '  UNI_CODIGO = :UNI_CODIGO,'
      '  UNI_DESCRICAO = :UNI_DESCRICAO,'
      '  UNI_DTATUALIZACAO = :UNI_DTATUALIZACAO,'
      '  UNI_DTCADASTRO = :UNI_DTCADASTRO,'
      '  UNI_USUARIO = :UNI_USUARIO,'
      '  UNI_ATUALIZAR = :UNI_ATUALIZAR'
      'where'
      '  UNI_CODIGO = :OLD_UNI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1248
    Top = 696
    object TBUnidadesUNI_ATUALIZAR: TIBStringField
      FieldName = 'UNI_ATUALIZAR'
      Origin = '"UNIDADES"."UNI_ATUALIZAR"'
      Size = 1
    end
    object TBUnidadesUNI_CODIGO: TIBStringField
      FieldName = 'UNI_CODIGO'
      Origin = '"UNIDADES"."UNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object TBUnidadesUNI_DESCRICAO: TIBStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = '"UNIDADES"."UNI_DESCRICAO"'
      Size = 50
    end
    object TBUnidadesUNI_DTCADASTRO: TDateField
      FieldName = 'UNI_DTCADASTRO'
      Origin = '"UNIDADES"."UNI_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBUnidadesUNI_DTATUALIZACAO: TDateField
      FieldName = 'UNI_DTATUALIZACAO'
      Origin = '"UNIDADES"."UNI_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBUnidadesUNI_USUARIO: TIBStringField
      FieldName = 'UNI_USUARIO'
      Origin = '"UNIDADES"."UNI_USUARIO"'
    end
  end
  object DSUnidades: TDataSource
    DataSet = TBUnidades
    OnStateChange = DSUnidadesStateChange
    Left = 1248
    Top = 744
  end
  object TRUnidades: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1248
    Top = 792
  end
  object TBBoletos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRBoletos
    AfterDelete = TBBoletosAfterDelete
    AfterEdit = TBBoletosAfterEdit
    AfterInsert = TBBoletosAfterInsert
    AfterPost = TBBoletosAfterPost
    BeforeEdit = TBBoletosBeforeEdit
    BeforeInsert = TBBoletosBeforeInsert
    BeforePost = TBBoletosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BOLETOS'
      'where'
      '  BOL_CODIGO = :OLD_BOL_CODIGO')
    InsertSQL.Strings = (
      'insert into BOLETOS'
      
        '  (BOL_CODIGO, BOL_CLIENTE, BOL_CONTA, BOL_ACEITE, BOL_BAIRRO, B' +
        'OL_BAIXADOPOR, '
      
        '   BOL_CARTEIRA, BOL_CARTEIRACOD, BOL_CEP, BOL_CIDADE, BOL_CNPJ,' +
        ' BOL_CODIGOBARRAS, '
      
        '   BOL_COMPLEMENTO, BOL_CONVENIO, BOL_CPF, BOL_DIASBAIXA, BOL_DI' +
        'ASPROTESTO, '
      
        '   BOL_DTATUALIZACAO, BOL_DTBAIXABANCO, BOL_DTCADASTRO, BOL_DTJU' +
        'ROSAPOS, '
      
        '   BOL_DTPAGAMENTO, BOL_DTPROTESTO, BOL_DTVENCIMENTO, BOL_ENDERE' +
        'CO, BOL_ESPECIE, '
      
        '   BOL_ESPECIEDOC, BOL_ESTADO, BOL_GEROUREMESSA, BOL_INSTRUCAO1,' +
        ' BOL_INSTRUCAO2, '
      
        '   BOL_INSTRUCAO3, BOL_INSTRUCAO4, BOL_INSTRUCAO5, BOL_LINHADIGI' +
        'TAVEL, '
      
        '   BOL_LOCALPAGTO, BOL_MODALIDADE, BOL_MORACODIGO, BOL_MORAJUROS' +
        ', BOL_MULTA, '
      
        '   BOL_NOME, BOL_NOSSONUMERO, BOL_NUMERO, BOL_OBSERVACOES, BOL_S' +
        'TATUS, '
      
        '   BOL_TIPOPESSOA, BOL_USUARIO, BOL_VALORBOLETO, BOL_VALORITENS,' +
        ' BOL_VALORPAGO, '
      '   BOL_VALORTOTAL, BOL_VALORMULTA, BOL_VALORJUROS)'
      'values'
      
        '  (:BOL_CODIGO, :BOL_CLIENTE, :BOL_CONTA, :BOL_ACEITE, :BOL_BAIR' +
        'RO, :BOL_BAIXADOPOR, '
      
        '   :BOL_CARTEIRA, :BOL_CARTEIRACOD, :BOL_CEP, :BOL_CIDADE, :BOL_' +
        'CNPJ, :BOL_CODIGOBARRAS, '
      
        '   :BOL_COMPLEMENTO, :BOL_CONVENIO, :BOL_CPF, :BOL_DIASBAIXA, :B' +
        'OL_DIASPROTESTO, '
      
        '   :BOL_DTATUALIZACAO, :BOL_DTBAIXABANCO, :BOL_DTCADASTRO, :BOL_' +
        'DTJUROSAPOS, '
      
        '   :BOL_DTPAGAMENTO, :BOL_DTPROTESTO, :BOL_DTVENCIMENTO, :BOL_EN' +
        'DERECO, '
      
        '   :BOL_ESPECIE, :BOL_ESPECIEDOC, :BOL_ESTADO, :BOL_GEROUREMESSA' +
        ', :BOL_INSTRUCAO1, '
      
        '   :BOL_INSTRUCAO2, :BOL_INSTRUCAO3, :BOL_INSTRUCAO4, :BOL_INSTR' +
        'UCAO5, '
      
        '   :BOL_LINHADIGITAVEL, :BOL_LOCALPAGTO, :BOL_MODALIDADE, :BOL_M' +
        'ORACODIGO, '
      
        '   :BOL_MORAJUROS, :BOL_MULTA, :BOL_NOME, :BOL_NOSSONUMERO, :BOL' +
        '_NUMERO, '
      
        '   :BOL_OBSERVACOES, :BOL_STATUS, :BOL_TIPOPESSOA, :BOL_USUARIO,' +
        ' :BOL_VALORBOLETO, '
      
        '   :BOL_VALORITENS, :BOL_VALORPAGO, :BOL_VALORTOTAL, :BOL_VALORM' +
        'ULTA, :BOL_VALORJUROS)')
    RefreshSQL.Strings = (
      'Select '
      '  BOL_CODIGO,'
      '  BOL_CLIENTE,'
      '  BOL_CONTA,'
      '  BOL_ACEITE,'
      '  BOL_BAIRRO,'
      '  BOL_BAIXADOPOR,'
      '  BOL_CARTEIRA,'
      '  BOL_CARTEIRACOD,'
      '  BOL_CEP,'
      '  BOL_CIDADE,'
      '  BOL_CNPJ,'
      '  BOL_CODIGOBARRAS,'
      '  BOL_COMPLEMENTO,'
      '  BOL_CONVENIO,'
      '  BOL_CPF,'
      '  BOL_DIASBAIXA,'
      '  BOL_DIASPROTESTO,'
      '  BOL_DTATUALIZACAO,'
      '  BOL_DTBAIXABANCO,'
      '  BOL_DTCADASTRO,'
      '  BOL_DTJUROSAPOS,'
      '  BOL_DTPAGAMENTO,'
      '  BOL_DTPROTESTO,'
      '  BOL_DTVENCIMENTO,'
      '  BOL_ENDERECO,'
      '  BOL_ESPECIE,'
      '  BOL_ESPECIEDOC,'
      '  BOL_ESTADO,'
      '  BOL_GEROUREMESSA,'
      '  BOL_INSTRUCAO1,'
      '  BOL_INSTRUCAO2,'
      '  BOL_INSTRUCAO3,'
      '  BOL_INSTRUCAO4,'
      '  BOL_INSTRUCAO5,'
      '  BOL_LINHADIGITAVEL,'
      '  BOL_LOCALPAGTO,'
      '  BOL_MODALIDADE,'
      '  BOL_MORACODIGO,'
      '  BOL_MORAJUROS,'
      '  BOL_MULTA,'
      '  BOL_NOME,'
      '  BOL_NOSSONUMERO,'
      '  BOL_NUMERO,'
      '  BOL_OBSERVACOES,'
      '  BOL_STATUS,'
      '  BOL_TIPOPESSOA,'
      '  BOL_USUARIO,'
      '  BOL_VALORBOLETO,'
      '  BOL_VALORITENS,'
      '  BOL_VALORPAGO,'
      '  BOL_VALORTOTAL,'
      '  BOL_VALORMULTA,'
      '  BOL_VALORJUROS'
      'from BOLETOS '
      'where'
      '  BOL_CODIGO = :BOL_CODIGO')
    SelectSQL.Strings = (
      'select * from BOLETOS'
      'left join CONTAS on BOL_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'where BOL_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update BOLETOS'
      'set'
      '  BOL_CODIGO = :BOL_CODIGO,'
      '  BOL_CLIENTE = :BOL_CLIENTE,'
      '  BOL_CONTA = :BOL_CONTA,'
      '  BOL_ACEITE = :BOL_ACEITE,'
      '  BOL_BAIRRO = :BOL_BAIRRO,'
      '  BOL_BAIXADOPOR = :BOL_BAIXADOPOR,'
      '  BOL_CARTEIRA = :BOL_CARTEIRA,'
      '  BOL_CARTEIRACOD = :BOL_CARTEIRACOD,'
      '  BOL_CEP = :BOL_CEP,'
      '  BOL_CIDADE = :BOL_CIDADE,'
      '  BOL_CNPJ = :BOL_CNPJ,'
      '  BOL_CODIGOBARRAS = :BOL_CODIGOBARRAS,'
      '  BOL_COMPLEMENTO = :BOL_COMPLEMENTO,'
      '  BOL_CONVENIO = :BOL_CONVENIO,'
      '  BOL_CPF = :BOL_CPF,'
      '  BOL_DIASBAIXA = :BOL_DIASBAIXA,'
      '  BOL_DIASPROTESTO = :BOL_DIASPROTESTO,'
      '  BOL_DTATUALIZACAO = :BOL_DTATUALIZACAO,'
      '  BOL_DTBAIXABANCO = :BOL_DTBAIXABANCO,'
      '  BOL_DTCADASTRO = :BOL_DTCADASTRO,'
      '  BOL_DTJUROSAPOS = :BOL_DTJUROSAPOS,'
      '  BOL_DTPAGAMENTO = :BOL_DTPAGAMENTO,'
      '  BOL_DTPROTESTO = :BOL_DTPROTESTO,'
      '  BOL_DTVENCIMENTO = :BOL_DTVENCIMENTO,'
      '  BOL_ENDERECO = :BOL_ENDERECO,'
      '  BOL_ESPECIE = :BOL_ESPECIE,'
      '  BOL_ESPECIEDOC = :BOL_ESPECIEDOC,'
      '  BOL_ESTADO = :BOL_ESTADO,'
      '  BOL_GEROUREMESSA = :BOL_GEROUREMESSA,'
      '  BOL_INSTRUCAO1 = :BOL_INSTRUCAO1,'
      '  BOL_INSTRUCAO2 = :BOL_INSTRUCAO2,'
      '  BOL_INSTRUCAO3 = :BOL_INSTRUCAO3,'
      '  BOL_INSTRUCAO4 = :BOL_INSTRUCAO4,'
      '  BOL_INSTRUCAO5 = :BOL_INSTRUCAO5,'
      '  BOL_LINHADIGITAVEL = :BOL_LINHADIGITAVEL,'
      '  BOL_LOCALPAGTO = :BOL_LOCALPAGTO,'
      '  BOL_MODALIDADE = :BOL_MODALIDADE,'
      '  BOL_MORACODIGO = :BOL_MORACODIGO,'
      '  BOL_MORAJUROS = :BOL_MORAJUROS,'
      '  BOL_MULTA = :BOL_MULTA,'
      '  BOL_NOME = :BOL_NOME,'
      '  BOL_NOSSONUMERO = :BOL_NOSSONUMERO,'
      '  BOL_NUMERO = :BOL_NUMERO,'
      '  BOL_OBSERVACOES = :BOL_OBSERVACOES,'
      '  BOL_STATUS = :BOL_STATUS,'
      '  BOL_TIPOPESSOA = :BOL_TIPOPESSOA,'
      '  BOL_USUARIO = :BOL_USUARIO,'
      '  BOL_VALORBOLETO = :BOL_VALORBOLETO,'
      '  BOL_VALORITENS = :BOL_VALORITENS,'
      '  BOL_VALORPAGO = :BOL_VALORPAGO,'
      '  BOL_VALORTOTAL = :BOL_VALORTOTAL,'
      '  BOL_VALORMULTA = :BOL_VALORMULTA,'
      '  BOL_VALORJUROS = :BOL_VALORJUROS'
      'where'
      '  BOL_CODIGO = :OLD_BOL_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'BOL_CODIGO'
    GeneratorField.Generator = 'GEN_BOLETOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 416
    Top = 24
    object TBBoletosBOL_ACEITE: TIBStringField
      FieldName = 'BOL_ACEITE'
      Origin = '"BOLETOS"."BOL_ACEITE"'
      Size = 1
    end
    object TBBoletosBOL_BAIRRO: TIBStringField
      FieldName = 'BOL_BAIRRO'
      Origin = '"BOLETOS"."BOL_BAIRRO"'
      Size = 50
    end
    object TBBoletosBOL_BAIXADOPOR: TIBStringField
      FieldName = 'BOL_BAIXADOPOR'
      Origin = '"BOLETOS"."BOL_BAIXADOPOR"'
    end
    object TBBoletosBOL_CARTEIRA: TIBStringField
      FieldName = 'BOL_CARTEIRA'
      Origin = '"BOLETOS"."BOL_CARTEIRA"'
      Size = 10
    end
    object TBBoletosBOL_CARTEIRACOD: TIntegerField
      FieldName = 'BOL_CARTEIRACOD'
      Origin = '"BOLETOS"."BOL_CARTEIRACOD"'
    end
    object TBBoletosBOL_CEP: TIBStringField
      FieldName = 'BOL_CEP'
      Origin = '"BOLETOS"."BOL_CEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBBoletosBOL_CIDADE: TIBStringField
      FieldName = 'BOL_CIDADE'
      Origin = '"BOLETOS"."BOL_CIDADE"'
      Size = 50
    end
    object TBBoletosBOL_CLIENTE: TIntegerField
      FieldName = 'BOL_CLIENTE'
      Origin = '"BOLETOS"."BOL_CLIENTE"'
      Required = True
    end
    object TBBoletosBOL_CNPJ: TIBStringField
      FieldName = 'BOL_CNPJ'
      Origin = '"BOLETOS"."BOL_CNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBBoletosBOL_CODIGO: TIntegerField
      FieldName = 'BOL_CODIGO'
      Origin = '"BOLETOS"."BOL_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBoletosBOL_CODIGOBARRAS: TIBStringField
      FieldName = 'BOL_CODIGOBARRAS'
      Origin = '"BOLETOS"."BOL_CODIGOBARRAS"'
      Size = 50
    end
    object TBBoletosBOL_COMPLEMENTO: TIBStringField
      FieldName = 'BOL_COMPLEMENTO'
      Origin = '"BOLETOS"."BOL_COMPLEMENTO"'
      Size = 30
    end
    object TBBoletosBOL_CONTA: TIntegerField
      FieldName = 'BOL_CONTA'
      Origin = '"BOLETOS"."BOL_CONTA"'
      Required = True
    end
    object TBBoletosBOL_CONVENIO: TIBStringField
      FieldName = 'BOL_CONVENIO'
      Origin = '"BOLETOS"."BOL_CONVENIO"'
    end
    object TBBoletosBOL_CPF: TIBStringField
      FieldName = 'BOL_CPF'
      Origin = '"BOLETOS"."BOL_CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBBoletosBOL_DIASBAIXA: TIntegerField
      FieldName = 'BOL_DIASBAIXA'
      Origin = '"BOLETOS"."BOL_DIASBAIXA"'
    end
    object TBBoletosBOL_DIASPROTESTO: TIntegerField
      FieldName = 'BOL_DIASPROTESTO'
      Origin = '"BOLETOS"."BOL_DIASPROTESTO"'
    end
    object TBBoletosBOL_DTATUALIZACAO: TDateField
      FieldName = 'BOL_DTATUALIZACAO'
      Origin = '"BOLETOS"."BOL_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTBAIXABANCO: TDateField
      FieldName = 'BOL_DTBAIXABANCO'
      Origin = '"BOLETOS"."BOL_DTBAIXABANCO"'
    end
    object TBBoletosBOL_DTCADASTRO: TDateField
      FieldName = 'BOL_DTCADASTRO'
      Origin = '"BOLETOS"."BOL_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTJUROSAPOS: TDateField
      FieldName = 'BOL_DTJUROSAPOS'
      Origin = '"BOLETOS"."BOL_DTJUROSAPOS"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTPAGAMENTO: TDateField
      FieldName = 'BOL_DTPAGAMENTO'
      Origin = '"BOLETOS"."BOL_DTPAGAMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTPROTESTO: TDateField
      FieldName = 'BOL_DTPROTESTO'
      Origin = '"BOLETOS"."BOL_DTPROTESTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTVENCIMENTO: TDateField
      FieldName = 'BOL_DTVENCIMENTO'
      Origin = '"BOLETOS"."BOL_DTVENCIMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_ENDERECO: TIBStringField
      FieldName = 'BOL_ENDERECO'
      Origin = '"BOLETOS"."BOL_ENDERECO"'
      Size = 100
    end
    object TBBoletosBOL_ESPECIE: TIBStringField
      FieldName = 'BOL_ESPECIE'
      Origin = '"BOLETOS"."BOL_ESPECIE"'
      Size = 5
    end
    object TBBoletosBOL_ESPECIEDOC: TIBStringField
      FieldName = 'BOL_ESPECIEDOC'
      Origin = '"BOLETOS"."BOL_ESPECIEDOC"'
      Size = 50
    end
    object TBBoletosBOL_ESTADO: TIBStringField
      FieldName = 'BOL_ESTADO'
      Origin = '"BOLETOS"."BOL_ESTADO"'
      Size = 2
    end
    object TBBoletosBOL_GEROUREMESSA: TIBStringField
      FieldName = 'BOL_GEROUREMESSA'
      Origin = '"BOLETOS"."BOL_GEROUREMESSA"'
      Size = 1
    end
    object TBBoletosBOL_INSTRUCAO1: TIBStringField
      DisplayWidth = 100
      FieldName = 'BOL_INSTRUCAO1'
      Origin = '"BOLETOS"."BOL_INSTRUCAO1"'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO2: TIBStringField
      FieldName = 'BOL_INSTRUCAO2'
      Origin = '"BOLETOS"."BOL_INSTRUCAO2"'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO3: TIBStringField
      FieldName = 'BOL_INSTRUCAO3'
      Origin = '"BOLETOS"."BOL_INSTRUCAO3"'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO4: TIBStringField
      FieldName = 'BOL_INSTRUCAO4'
      Origin = '"BOLETOS"."BOL_INSTRUCAO4"'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO5: TIBStringField
      FieldName = 'BOL_INSTRUCAO5'
      Origin = '"BOLETOS"."BOL_INSTRUCAO5"'
      Size = 100
    end
    object TBBoletosBOL_LINHADIGITAVEL: TIBStringField
      FieldName = 'BOL_LINHADIGITAVEL'
      Origin = '"BOLETOS"."BOL_LINHADIGITAVEL"'
      Size = 55
    end
    object TBBoletosBOL_LOCALPAGTO: TIBStringField
      FieldName = 'BOL_LOCALPAGTO'
      Origin = '"BOLETOS"."BOL_LOCALPAGTO"'
      Size = 120
    end
    object TBBoletosBOL_MODALIDADE: TIntegerField
      FieldName = 'BOL_MODALIDADE'
      Origin = '"BOLETOS"."BOL_MODALIDADE"'
    end
    object TBBoletosBOL_MORACODIGO: TIBStringField
      FieldName = 'BOL_MORACODIGO'
      Origin = '"BOLETOS"."BOL_MORACODIGO"'
      Size = 5
    end
    object TBBoletosBOL_MORAJUROS: TIBBCDField
      FieldName = 'BOL_MORAJUROS'
      Origin = '"BOLETOS"."BOL_MORAJUROS"'
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_MULTA: TIBBCDField
      FieldName = 'BOL_MULTA'
      Origin = '"BOLETOS"."BOL_MULTA"'
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_NOME: TIBStringField
      FieldName = 'BOL_NOME'
      Origin = '"BOLETOS"."BOL_NOME"'
      Size = 50
    end
    object TBBoletosBOL_NOSSONUMERO: TIBStringField
      DisplayWidth = 30
      FieldName = 'BOL_NOSSONUMERO'
      Origin = '"BOLETOS"."BOL_NOSSONUMERO"'
      Size = 30
    end
    object TBBoletosBOL_NUMERO: TIBStringField
      FieldName = 'BOL_NUMERO'
      Origin = '"BOLETOS"."BOL_NUMERO"'
      Size = 15
    end
    object TBBoletosBOL_OBSERVACOES: TWideMemoField
      FieldName = 'BOL_OBSERVACOES'
      Origin = '"BOLETOS"."BOL_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBBoletosBOL_STATUS: TIBStringField
      FieldName = 'BOL_STATUS'
      Origin = '"BOLETOS"."BOL_STATUS"'
      Size = 1
    end
    object TBBoletosBOL_TIPOPESSOA: TIBStringField
      FieldName = 'BOL_TIPOPESSOA'
      Origin = '"BOLETOS"."BOL_TIPOPESSOA"'
      Size = 1
    end
    object TBBoletosBOL_USUARIO: TIBStringField
      FieldName = 'BOL_USUARIO'
      Origin = '"BOLETOS"."BOL_USUARIO"'
    end
    object TBBoletosBOL_VALORBOLETO: TIBBCDField
      FieldName = 'BOL_VALORBOLETO'
      Origin = '"BOLETOS"."BOL_VALORBOLETO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_VALORITENS: TIBBCDField
      FieldName = 'BOL_VALORITENS'
      Origin = '"BOLETOS"."BOL_VALORITENS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_VALORJUROS: TIBBCDField
      FieldName = 'BOL_VALORJUROS'
      Origin = '"BOLETOS"."BOL_VALORJUROS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_VALORMULTA: TIBBCDField
      FieldName = 'BOL_VALORMULTA'
      Origin = '"BOLETOS"."BOL_VALORMULTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_VALORPAGO: TIBBCDField
      FieldName = 'BOL_VALORPAGO'
      Origin = '"BOLETOS"."BOL_VALORPAGO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBOL_VALORTOTAL: TIBBCDField
      FieldName = 'BOL_VALORTOTAL'
      Origin = '"BOLETOS"."BOL_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosBAN_NOME: TIBStringField
      FieldName = 'BAN_NOME'
      Origin = '"BANCOS"."BAN_NOME"'
      Size = 50
    end
    object TBBoletosCON_AGENCIA: TIBStringField
      FieldName = 'CON_AGENCIA'
      Origin = '"CONTAS"."CON_AGENCIA"'
      Size = 10
    end
    object TBBoletosCON_AGENCIADIGITO: TIntegerField
      FieldName = 'CON_AGENCIADIGITO'
      Origin = '"CONTAS"."CON_AGENCIADIGITO"'
    end
    object TBBoletosCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = '"CONTAS"."CON_BANCO"'
    end
    object TBBoletosCON_CEDENTE: TIBStringField
      FieldName = 'CON_CEDENTE'
      Origin = '"CONTAS"."CON_CEDENTE"'
    end
    object TBBoletosCON_CEDENTEDIGITO: TIntegerField
      FieldName = 'CON_CEDENTEDIGITO'
      Origin = '"CONTAS"."CON_CEDENTEDIGITO"'
    end
    object TBBoletosCON_CEDENTENOME: TIBStringField
      FieldName = 'CON_CEDENTENOME'
      Origin = '"CONTAS"."CON_CEDENTENOME"'
      Size = 50
    end
    object TBBoletosCON_CONTA: TIBStringField
      FieldName = 'CON_CONTA'
      Origin = '"CONTAS"."CON_CONTA"'
      Size = 15
    end
    object TBBoletosCON_CONTADIGITO: TIntegerField
      FieldName = 'CON_CONTADIGITO'
      Origin = '"CONTAS"."CON_CONTADIGITO"'
    end
    object TBBoletosCON_NOME: TIBStringField
      FieldName = 'CON_NOME'
      Origin = '"CONTAS"."CON_NOME"'
      Size = 50
    end
    object TBBoletosCON_NOSSONUMDIGITOS: TIntegerField
      FieldName = 'CON_NOSSONUMDIGITOS'
      Origin = '"CONTAS"."CON_NOSSONUMDIGITOS"'
    end
    object TBBoletosCON_NOSSONUMFORMATAR: TIBStringField
      FieldName = 'CON_NOSSONUMFORMATAR'
      Origin = '"CONTAS"."CON_NOSSONUMFORMATAR"'
      Size = 1
    end
    object TBBoletosCON_TIPOCOBRANCA: TIBStringField
      FieldName = 'CON_TIPOCOBRANCA'
      Origin = '"CONTAS"."CON_TIPOCOBRANCA"'
    end
    object TBBoletosCON_VALORBOLETO: TIBBCDField
      FieldName = 'CON_VALORBOLETO'
      Origin = '"CONTAS"."CON_VALORBOLETO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSBoletos: TDataSource
    DataSet = TBBoletos
    OnStateChange = DSBoletosStateChange
    Left = 416
    Top = 72
  end
  object TRBoletos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 120
  end
  object TRBoletosItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 480
    Top = 120
  end
  object DSBoletosItens: TDataSource
    DataSet = TBBoletosItens
    Left = 480
    Top = 72
  end
  object TBBoletosItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRBoletosItens
    AfterDelete = TBBoletosItensAfterDelete
    AfterInsert = TBBoletosItensAfterInsert
    AfterPost = TBBoletosItensAfterPost
    BeforePost = TBBoletosItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BOLETOSITENS'
      'where'
      '  BOI_CODIGO = :OLD_BOI_CODIGO')
    InsertSQL.Strings = (
      'insert into BOLETOSITENS'
      '  (BOI_BOLETO, BOI_CODIGO, BOI_RECEBER)'
      'values'
      '  (:BOI_BOLETO, :BOI_CODIGO, :BOI_RECEBER)')
    RefreshSQL.Strings = (
      'Select '
      '  BOI_CODIGO,'
      '  BOI_BOLETO,'
      '  BOI_RECEBER'
      'from BOLETOSITENS '
      'where'
      '  BOI_CODIGO = :BOI_CODIGO')
    SelectSQL.Strings = (
      'select * from BOLETOSITENS'
      'left join RECEBER on BOI_RECEBER=REE_CODIGO'
      'where BOI_BOLETO=:BOL_CODIGO'
      'order by REE_DTVENCIMENTO')
    ModifySQL.Strings = (
      'update BOLETOSITENS'
      'set'
      '  BOI_BOLETO = :BOI_BOLETO,'
      '  BOI_CODIGO = :BOI_CODIGO,'
      '  BOI_RECEBER = :BOI_RECEBER'
      'where'
      '  BOI_CODIGO = :OLD_BOI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'BOI_CODIGO'
    GeneratorField.Generator = 'GEN_BOLETOSITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSBoletos
    Left = 480
    Top = 24
    object TBBoletosItensBOI_CODIGO: TIntegerField
      FieldName = 'BOI_CODIGO'
      Origin = '"BOLETOSITENS"."BOI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBoletosItensBOI_BOLETO: TIntegerField
      FieldName = 'BOI_BOLETO'
      Origin = '"BOLETOSITENS"."BOI_BOLETO"'
      Required = True
    end
    object TBBoletosItensBOI_RECEBER: TIntegerField
      FieldName = 'BOI_RECEBER'
      Origin = '"BOLETOSITENS"."BOI_RECEBER"'
      Required = True
    end
    object TBBoletosItensREE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = '"RECEBER"."REE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBBoletosItensREE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
      Origin = '"RECEBER"."REE_CLIENTE"'
    end
    object TBBoletosItensREE_RECEITA: TIntegerField
      FieldName = 'REE_RECEITA'
      Origin = '"RECEBER"."REE_RECEITA"'
    end
    object TBBoletosItensREE_VENDEDOR: TIntegerField
      FieldName = 'REE_VENDEDOR'
      Origin = '"RECEBER"."REE_VENDEDOR"'
    end
    object TBBoletosItensREE_BAIXADOPOR: TIBStringField
      FieldName = 'REE_BAIXADOPOR'
      Origin = '"RECEBER"."REE_BAIXADOPOR"'
    end
    object TBBoletosItensREE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
      Origin = '"RECEBER"."REE_CONTA"'
    end
    object TBBoletosItensREE_DESCPORC: TIBBCDField
      FieldName = 'REE_DESCPORC'
      Origin = '"RECEBER"."REE_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_DESCRICAO: TIBStringField
      FieldName = 'REE_DESCRICAO'
      Origin = '"RECEBER"."REE_DESCRICAO"'
      Size = 50
    end
    object TBBoletosItensREE_DESCVALOR: TIBBCDField
      FieldName = 'REE_DESCVALOR'
      Origin = '"RECEBER"."REE_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_DESTINOBAIXA: TIBStringField
      FieldName = 'REE_DESTINOBAIXA'
      Origin = '"RECEBER"."REE_DESTINOBAIXA"'
      Size = 50
    end
    object TBBoletosItensREE_DIASATRASO: TIntegerField
      FieldName = 'REE_DIASATRASO'
      Origin = '"RECEBER"."REE_DIASATRASO"'
    end
    object TBBoletosItensREE_DIASPRAZO: TIntegerField
      FieldName = 'REE_DIASPRAZO'
      Origin = '"RECEBER"."REE_DIASPRAZO"'
    end
    object TBBoletosItensREE_DTATUALIZACAO: TDateField
      FieldName = 'REE_DTATUALIZACAO'
      Origin = '"RECEBER"."REE_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_DTCADASTRO: TDateField
      FieldName = 'REE_DTCADASTRO'
      Origin = '"RECEBER"."REE_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = '"RECEBER"."REE_DTEMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_DTJUROSAPOS: TDateField
      FieldName = 'REE_DTJUROSAPOS'
      Origin = '"RECEBER"."REE_DTJUROSAPOS"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
      Origin = '"RECEBER"."REE_DTPAGAMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = '"RECEBER"."REE_DTVENCIMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosItensREE_JUROSPAGO: TIBBCDField
      FieldName = 'REE_JUROSPAGO'
      Origin = '"RECEBER"."REE_JUROSPAGO"'
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_MULTAPAGO: TIBBCDField
      FieldName = 'REE_MULTAPAGO'
      Origin = '"RECEBER"."REE_MULTAPAGO"'
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_NOVOCODIGO: TIntegerField
      FieldName = 'REE_NOVOCODIGO'
      Origin = '"RECEBER"."REE_NOVOCODIGO"'
    end
    object TBBoletosItensREE_NUMDOCTO: TIBStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = '"RECEBER"."REE_NUMDOCTO"'
    end
    object TBBoletosItensREE_OBSERVACOES: TWideMemoField
      FieldName = 'REE_OBSERVACOES'
      Origin = '"RECEBER"."REE_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBBoletosItensREE_PARCELANUM: TIntegerField
      FieldName = 'REE_PARCELANUM'
      Origin = '"RECEBER"."REE_PARCELANUM"'
    end
    object TBBoletosItensREE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
      Origin = '"RECEBER"."REE_PARCELAQTDE"'
    end
    object TBBoletosItensREE_PORCJUROS: TIBBCDField
      FieldName = 'REE_PORCJUROS'
      Origin = '"RECEBER"."REE_PORCJUROS"'
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_STATUS: TIBStringField
      FieldName = 'REE_STATUS'
      Origin = '"RECEBER"."REE_STATUS"'
      Size = 1
    end
    object TBBoletosItensREE_TIPOBAIXA: TIBStringField
      FieldName = 'REE_TIPOBAIXA'
      Origin = '"RECEBER"."REE_TIPOBAIXA"'
      Size = 1
    end
    object TBBoletosItensREE_TIPODOCTO: TIBStringField
      FieldName = 'REE_TIPODOCTO'
      Origin = '"RECEBER"."REE_TIPODOCTO"'
    end
    object TBBoletosItensREE_USUARIO: TIBStringField
      FieldName = 'REE_USUARIO'
      Origin = '"RECEBER"."REE_USUARIO"'
    end
    object TBBoletosItensREE_VALOR: TIBBCDField
      FieldName = 'REE_VALOR'
      Origin = '"RECEBER"."REE_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_VALORJUROS: TIBBCDField
      FieldName = 'REE_VALORJUROS'
      Origin = '"RECEBER"."REE_VALORJUROS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_VALORMULTA: TIBBCDField
      FieldName = 'REE_VALORMULTA'
      Origin = '"RECEBER"."REE_VALORMULTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_VALORORIGINAL: TIBBCDField
      FieldName = 'REE_VALORORIGINAL'
      Origin = '"RECEBER"."REE_VALORORIGINAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_VALORPAGO: TIBBCDField
      FieldName = 'REE_VALORPAGO'
      Origin = '"RECEBER"."REE_VALORPAGO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBBoletosItensREE_VALORSEMDESCONTO: TIBBCDField
      FieldName = 'REE_VALORSEMDESCONTO'
      Origin = '"RECEBER"."REE_VALORSEMDESCONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object QYBoletosItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRYBoletosItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 544
    Top = 24
  end
  object TRYBoletosItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 544
    Top = 120
  end
  object TBRemessas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRRemessas
    AfterDelete = TBRemessasAfterDelete
    AfterInsert = TBRemessasAfterInsert
    AfterPost = TBRemessasAfterPost
    BeforePost = TBRemessasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REMESSAS'
      'where'
      '  REM_CODIGO = :OLD_REM_CODIGO')
    InsertSQL.Strings = (
      'insert into REMESSAS'
      
        '  (REM_ARQUIVO, REM_CODIGO, REM_CONTA, REM_DATA, REM_LAYOUT, REM' +
        '_USUARIO)'
      'values'
      
        '  (:REM_ARQUIVO, :REM_CODIGO, :REM_CONTA, :REM_DATA, :REM_LAYOUT' +
        ', :REM_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  REM_ARQUIVO,'
      '  REM_CODIGO,'
      '  REM_CONTA,'
      '  REM_DATA,'
      '  REM_LAYOUT,'
      '  REM_USUARIO'
      'from REMESSAS '
      'where'
      '  REM_CODIGO = :REM_CODIGO')
    SelectSQL.Strings = (
      'select '
      'REM_ARQUIVO,'
      'REM_CODIGO,'
      'REM_CONTA,'
      'REM_DATA,'
      'REM_LAYOUT,'
      'REM_USUARIO,'
      'CON_NOME from REMESSAS'
      'left join CONTAS on REM_CONTA=CON_CODIGO'
      'where REM_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update REMESSAS'
      'set'
      '  REM_ARQUIVO = :REM_ARQUIVO,'
      '  REM_CODIGO = :REM_CODIGO,'
      '  REM_CONTA = :REM_CONTA,'
      '  REM_DATA = :REM_DATA,'
      '  REM_LAYOUT = :REM_LAYOUT,'
      '  REM_USUARIO = :REM_USUARIO'
      'where'
      '  REM_CODIGO = :OLD_REM_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'REM_CODIGO'
    GeneratorField.Generator = 'GEN_REMESSAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 928
    Top = 696
    object TBRemessasREM_ARQUIVO: TIBStringField
      FieldName = 'REM_ARQUIVO'
      Origin = '"REMESSAS"."REM_ARQUIVO"'
      Size = 50
    end
    object TBRemessasREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
      Origin = '"REMESSAS"."REM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRemessasREM_CONTA: TIntegerField
      FieldName = 'REM_CONTA'
      Origin = '"REMESSAS"."REM_CONTA"'
      Required = True
    end
    object TBRemessasREM_DATA: TDateField
      FieldName = 'REM_DATA'
      Origin = '"REMESSAS"."REM_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBRemessasREM_LAYOUT: TIBStringField
      FieldName = 'REM_LAYOUT'
      Origin = '"REMESSAS"."REM_LAYOUT"'
      Size = 10
    end
    object TBRemessasREM_USUARIO: TIBStringField
      FieldName = 'REM_USUARIO'
      Origin = '"REMESSAS"."REM_USUARIO"'
    end
    object TBRemessasCON_NOME: TIBStringField
      FieldName = 'CON_NOME'
      Origin = '"CONTAS"."CON_NOME"'
      Size = 50
    end
  end
  object DSRemessas: TDataSource
    DataSet = TBRemessas
    Left = 928
    Top = 744
  end
  object TRRemessas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 928
    Top = 792
  end
  object TBRemessasItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRRemessasItens
    AfterDelete = TBRemessasItensAfterDelete
    AfterInsert = TBRemessasItensAfterInsert
    AfterPost = TBRemessasItensAfterPost
    BeforePost = TBRemessasItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REMESSASITENS'
      'where'
      '  RMI_CODIGO = :OLD_RMI_CODIGO')
    InsertSQL.Strings = (
      'insert into REMESSASITENS'
      '  (RMI_BOLETO, RMI_CODIGO, RMI_REMESSA)'
      'values'
      '  (:RMI_BOLETO, :RMI_CODIGO, :RMI_REMESSA)')
    RefreshSQL.Strings = (
      'Select '
      '  RMI_CODIGO,'
      '  RMI_REMESSA,'
      '  RMI_BOLETO'
      'from REMESSASITENS '
      'where'
      '  RMI_CODIGO = :RMI_CODIGO')
    SelectSQL.Strings = (
      'select * from REMESSASITENS'
      'where RMI_REMESSA=:REM_CODIGO')
    ModifySQL.Strings = (
      'update REMESSASITENS'
      'set'
      '  RMI_BOLETO = :RMI_BOLETO,'
      '  RMI_CODIGO = :RMI_CODIGO,'
      '  RMI_REMESSA = :RMI_REMESSA'
      'where'
      '  RMI_CODIGO = :OLD_RMI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'RMI_CODIGO'
    GeneratorField.Generator = 'GEN_REMESSASITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSRemessas
    Left = 992
    Top = 696
    object TBRemessasItensRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Origin = '"REMESSASITENS"."RMI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRemessasItensRMI_BOLETO: TIntegerField
      FieldName = 'RMI_BOLETO'
      Origin = '"REMESSASITENS"."RMI_BOLETO"'
      Required = True
    end
    object TBRemessasItensRMI_REMESSA: TIntegerField
      FieldName = 'RMI_REMESSA'
      Origin = '"REMESSASITENS"."RMI_REMESSA"'
      Required = True
    end
  end
  object DSRemessasItens: TDataSource
    DataSet = TBRemessasItens
    Left = 992
    Top = 744
  end
  object TRRemessasItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 992
    Top = 792
  end
  object TBFormasPagamento: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRFormasPagamento
    AfterDelete = TBFormasPagamentoAfterDelete
    AfterInsert = TBFormasPagamentoAfterInsert
    AfterPost = TBFormasPagamentoAfterPost
    BeforeEdit = TBFormasPagamentoBeforeEdit
    BeforeInsert = TBFormasPagamentoBeforeInsert
    BeforePost = TBFormasPagamentoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMASPAGAMENTO'
      'where'
      '  FPG_CODIGO = :OLD_FPG_CODIGO')
    InsertSQL.Strings = (
      'insert into FORMASPAGAMENTO'
      
        '  (FPG_CODIGO, FPG_CODIGOPAGAMENTO, FPG_DESCRICAO, FPG_DTATUALIZ' +
        'ACAO, FPG_DTCADASTRO, '
      '   FPG_IMPRIMEVINCULADO, FPG_TEF, FPG_USUARIO)'
      'values'
      
        '  (:FPG_CODIGO, :FPG_CODIGOPAGAMENTO, :FPG_DESCRICAO, :FPG_DTATU' +
        'ALIZACAO, '
      
        '   :FPG_DTCADASTRO, :FPG_IMPRIMEVINCULADO, :FPG_TEF, :FPG_USUARI' +
        'O)')
    RefreshSQL.Strings = (
      'Select '
      '  FPG_CODIGO,'
      '  FPG_DESCRICAO,'
      '  FPG_TEF,'
      '  FPG_IMPRIMEVINCULADO,'
      '  FPG_DTCADASTRO,'
      '  FPG_DTATUALIZACAO,'
      '  FPG_USUARIO,'
      '  FPG_CODIGOPAGAMENTO'
      'from FORMASPAGAMENTO '
      'where'
      '  FPG_CODIGO = :FPG_CODIGO')
    SelectSQL.Strings = (
      'select * from FORMASPAGAMENTO'
      'where FPG_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update FORMASPAGAMENTO'
      'set'
      '  FPG_CODIGO = :FPG_CODIGO,'
      '  FPG_CODIGOPAGAMENTO = :FPG_CODIGOPAGAMENTO,'
      '  FPG_DESCRICAO = :FPG_DESCRICAO,'
      '  FPG_DTATUALIZACAO = :FPG_DTATUALIZACAO,'
      '  FPG_DTCADASTRO = :FPG_DTCADASTRO,'
      '  FPG_IMPRIMEVINCULADO = :FPG_IMPRIMEVINCULADO,'
      '  FPG_TEF = :FPG_TEF,'
      '  FPG_USUARIO = :FPG_USUARIO'
      'where'
      '  FPG_CODIGO = :OLD_FPG_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FPG_CODIGO'
    GeneratorField.Generator = 'GEN_FORMASPAGAMENTO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1056
    Top = 280
    object TBFormasPagamentoFPG_CODIGO: TIntegerField
      FieldName = 'FPG_CODIGO'
      Origin = '"FORMASPAGAMENTO"."FPG_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFormasPagamentoFPG_CODIGOPAGAMENTO: TIBStringField
      FieldName = 'FPG_CODIGOPAGAMENTO'
      Origin = '"FORMASPAGAMENTO"."FPG_CODIGOPAGAMENTO"'
      Size = 3
    end
    object TBFormasPagamentoFPG_DESCRICAO: TIBStringField
      FieldName = 'FPG_DESCRICAO'
      Origin = '"FORMASPAGAMENTO"."FPG_DESCRICAO"'
      Size = 50
    end
    object TBFormasPagamentoFPG_TEF: TIBStringField
      FieldName = 'FPG_TEF'
      Origin = '"FORMASPAGAMENTO"."FPG_TEF"'
      Size = 1
    end
    object TBFormasPagamentoFPG_IMPRIMEVINCULADO: TIBStringField
      FieldName = 'FPG_IMPRIMEVINCULADO'
      Origin = '"FORMASPAGAMENTO"."FPG_IMPRIMEVINCULADO"'
      Size = 1
    end
    object TBFormasPagamentoFPG_DTCADASTRO: TDateField
      FieldName = 'FPG_DTCADASTRO'
      Origin = '"FORMASPAGAMENTO"."FPG_DTCADASTRO"'
    end
    object TBFormasPagamentoFPG_DTATUALIZACAO: TDateField
      FieldName = 'FPG_DTATUALIZACAO'
      Origin = '"FORMASPAGAMENTO"."FPG_DTATUALIZACAO"'
    end
    object TBFormasPagamentoFPG_USUARIO: TIBStringField
      FieldName = 'FPG_USUARIO'
      Origin = '"FORMASPAGAMENTO"."FPG_USUARIO"'
    end
  end
  object DSFormasPagamento: TDataSource
    DataSet = TBFormasPagamento
    OnStateChange = DSFormasPagamentoStateChange
    Left = 1056
    Top = 328
  end
  object TRFormasPagamento: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1056
    Top = 376
  end
  object TBSqls: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRSqls
    AfterDelete = TBSqlsAfterDelete
    AfterPost = TBSqlsAfterPost
    BeforePost = TBSqlsBeforePost
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
    Left = 1056
    Top = 696
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
    Left = 1056
    Top = 744
  end
  object TRSqls: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1056
    Top = 792
  end
  object TBImoveisTipos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRImoveisTipos
    AfterDelete = TBImoveisTiposAfterDelete
    AfterInsert = TBImoveisTiposAfterInsert
    AfterPost = TBImoveisTiposAfterPost
    BeforeEdit = TBImoveisTiposBeforeEdit
    BeforeInsert = TBImoveisTiposBeforeInsert
    BeforePost = TBImoveisTiposBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from IMOVEISTIPOS'
      'where'
      '  IMT_CODIGO = :OLD_IMT_CODIGO')
    InsertSQL.Strings = (
      'insert into IMOVEISTIPOS'
      
        '  (IMT_CODIGO, IMT_DESCRICAO, IMT_DTATUALIZACAO, IMT_DTCADASTRO,' +
        ' IMT_STATUS, '
      '   IMT_USUARIO)'
      'values'
      
        '  (:IMT_CODIGO, :IMT_DESCRICAO, :IMT_DTATUALIZACAO, :IMT_DTCADAS' +
        'TRO, :IMT_STATUS, '
      '   :IMT_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  IMT_CODIGO,'
      '  IMT_DESCRICAO,'
      '  IMT_DTCADASTRO,'
      '  IMT_DTATUALIZACAO,'
      '  IMT_USUARIO,'
      '  IMT_STATUS'
      'from IMOVEISTIPOS '
      'where'
      '  IMT_CODIGO = :IMT_CODIGO')
    SelectSQL.Strings = (
      'select * from IMOVEISTIPOS'
      'where IMT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update IMOVEISTIPOS'
      'set'
      '  IMT_CODIGO = :IMT_CODIGO,'
      '  IMT_DESCRICAO = :IMT_DESCRICAO,'
      '  IMT_DTATUALIZACAO = :IMT_DTATUALIZACAO,'
      '  IMT_DTCADASTRO = :IMT_DTCADASTRO,'
      '  IMT_STATUS = :IMT_STATUS,'
      '  IMT_USUARIO = :IMT_USUARIO'
      'where'
      '  IMT_CODIGO = :OLD_IMT_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'IMT_CODIGO'
    GeneratorField.Generator = 'GEN_IMOVEISTIPO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 160
    Top = 488
    object TBImoveisTiposIMT_CODIGO: TIntegerField
      FieldName = 'IMT_CODIGO'
      Origin = '"IMOVEISTIPOS"."IMT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBImoveisTiposIMT_DESCRICAO: TIBStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = '"IMOVEISTIPOS"."IMT_DESCRICAO"'
      Size = 50
    end
    object TBImoveisTiposIMT_DTATUALIZACAO: TDateField
      FieldName = 'IMT_DTATUALIZACAO'
      Origin = '"IMOVEISTIPOS"."IMT_DTATUALIZACAO"'
    end
    object TBImoveisTiposIMT_DTCADASTRO: TDateField
      FieldName = 'IMT_DTCADASTRO'
      Origin = '"IMOVEISTIPOS"."IMT_DTCADASTRO"'
    end
    object TBImoveisTiposIMT_STATUS: TIBStringField
      FieldName = 'IMT_STATUS'
      Origin = '"IMOVEISTIPOS"."IMT_STATUS"'
      Size = 1
    end
    object TBImoveisTiposIMT_USUARIO: TIBStringField
      FieldName = 'IMT_USUARIO'
      Origin = '"IMOVEISTIPOS"."IMT_USUARIO"'
    end
  end
  object DSImoveisTipos: TDataSource
    DataSet = TBImoveisTipos
    OnStateChange = DSImoveisTiposStateChange
    Left = 160
    Top = 536
  end
  object TRImoveisTipos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 584
  end
  object TBImoveis: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRImoveis
    AfterDelete = TBImoveisAfterDelete
    AfterInsert = TBImoveisAfterInsert
    AfterPost = TBImoveisAfterPost
    BeforeEdit = TBImoveisBeforeEdit
    BeforeInsert = TBImoveisBeforeInsert
    BeforePost = TBImoveisBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from IMOVEIS'
      'where'
      '  IMO_CODIGO = :OLD_IMO_CODIGO')
    InsertSQL.Strings = (
      'insert into IMOVEIS'
      
        '  (IMO_AREALOCALIZACAO, IMO_BAIRRO, IMO_CEP, IMO_CIDADE, IMO_CID' +
        'ADECODIGO, '
      
        '   IMO_CIDADECODIGODIMOB, IMO_CLIENTE, IMO_CODIGO, IMO_COMISSAO,' +
        ' IMO_COMPLEMENTO, '
      
        '   IMO_CONTRATO, IMO_DESCQTDE, IMO_DESCRICAO, IMO_DESCVALOR, IMO' +
        '_DIAPAGAMENTO, '
      
        '   IMO_DTATUALIZACAO, IMO_DTCADASTRO, IMO_ENDERECO, IMO_ESTADO, ' +
        'IMO_FINALIDADE, '
      
        '   IMO_NUMERO, IMO_OBSERVACOES, IMO_RESERVADO, IMO_STATUS, IMO_T' +
        'IPOIMOVEL, '
      
        '   IMO_TIPONEGOCIO, IMO_TIPOPAGAMENTO, IMO_USUARIO, IMO_VALORALU' +
        'GUEL)'
      'values'
      
        '  (:IMO_AREALOCALIZACAO, :IMO_BAIRRO, :IMO_CEP, :IMO_CIDADE, :IM' +
        'O_CIDADECODIGO, '
      
        '   :IMO_CIDADECODIGODIMOB, :IMO_CLIENTE, :IMO_CODIGO, :IMO_COMIS' +
        'SAO, :IMO_COMPLEMENTO, '
      
        '   :IMO_CONTRATO, :IMO_DESCQTDE, :IMO_DESCRICAO, :IMO_DESCVALOR,' +
        ' :IMO_DIAPAGAMENTO, '
      
        '   :IMO_DTATUALIZACAO, :IMO_DTCADASTRO, :IMO_ENDERECO, :IMO_ESTA' +
        'DO, :IMO_FINALIDADE, '
      
        '   :IMO_NUMERO, :IMO_OBSERVACOES, :IMO_RESERVADO, :IMO_STATUS, :' +
        'IMO_TIPOIMOVEL, '
      
        '   :IMO_TIPONEGOCIO, :IMO_TIPOPAGAMENTO, :IMO_USUARIO, :IMO_VALO' +
        'RALUGUEL)')
    RefreshSQL.Strings = (
      'Select '
      '  IMO_CODIGO,'
      '  IMO_CLIENTE,'
      '  IMO_DESCRICAO,'
      '  IMO_DTCADASTRO,'
      '  IMO_DTATUALIZACAO,'
      '  IMO_USUARIO,'
      '  IMO_ENDERECO,'
      '  IMO_NUMERO,'
      '  IMO_BAIRRO,'
      '  IMO_CIDADE,'
      '  IMO_ESTADO,'
      '  IMO_CEP,'
      '  IMO_COMPLEMENTO,'
      '  IMO_TIPOPAGAMENTO,'
      '  IMO_FINALIDADE,'
      '  IMO_AREALOCALIZACAO,'
      '  IMO_VALORALUGUEL,'
      '  IMO_COMISSAO,'
      '  IMO_STATUS,'
      '  IMO_CONTRATO,'
      '  IMO_DIAPAGAMENTO,'
      '  IMO_CIDADECODIGO,'
      '  IMO_CIDADECODIGODIMOB,'
      '  IMO_TIPONEGOCIO,'
      '  IMO_TIPOIMOVEL,'
      '  IMO_DESCVALOR,'
      '  IMO_DESCQTDE,'
      '  IMO_RESERVADO,'
      '  IMO_OBSERVACOES'
      'from IMOVEIS '
      'where'
      '  IMO_CODIGO = :IMO_CODIGO')
    SelectSQL.Strings = (
      'select '
      'IMO_CODIGO,'
      'IMO_CLIENTE,'
      'IMO_DESCRICAO,'
      'IMO_DTCADASTRO,'
      'IMO_DTATUALIZACAO,'
      'IMO_USUARIO,'
      'IMO_ENDERECO,'
      'IMO_NUMERO,'
      'IMO_BAIRRO,'
      'IMO_CIDADE,'
      'IMO_ESTADO,'
      'IMO_CEP,'
      'IMO_COMPLEMENTO,'
      'IMO_TIPOPAGAMENTO,'
      'IMO_FINALIDADE,'
      'IMO_AREALOCALIZACAO,'
      'IMO_VALORALUGUEL,'
      'IMO_COMISSAO,'
      'IMO_STATUS,'
      'IMO_CONTRATO,'
      'IMO_DIAPAGAMENTO,'
      'IMO_CIDADECODIGO,'
      'IMO_CIDADECODIGODIMOB,'
      'IMO_TIPONEGOCIO,'
      'IMO_TIPOIMOVEL,'
      'IMO_DESCVALOR,'
      'IMO_DESCQTDE,'
      'IMO_RESERVADO,'
      'IMO_OBSERVACOES,'
      'IMT_DESCRICAO,'
      'CLI_NOME from IMOVEIS'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO'
      'where IMO_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update IMOVEIS'
      'set'
      '  IMO_AREALOCALIZACAO = :IMO_AREALOCALIZACAO,'
      '  IMO_BAIRRO = :IMO_BAIRRO,'
      '  IMO_CEP = :IMO_CEP,'
      '  IMO_CIDADE = :IMO_CIDADE,'
      '  IMO_CIDADECODIGO = :IMO_CIDADECODIGO,'
      '  IMO_CIDADECODIGODIMOB = :IMO_CIDADECODIGODIMOB,'
      '  IMO_CLIENTE = :IMO_CLIENTE,'
      '  IMO_CODIGO = :IMO_CODIGO,'
      '  IMO_COMISSAO = :IMO_COMISSAO,'
      '  IMO_COMPLEMENTO = :IMO_COMPLEMENTO,'
      '  IMO_CONTRATO = :IMO_CONTRATO,'
      '  IMO_DESCQTDE = :IMO_DESCQTDE,'
      '  IMO_DESCRICAO = :IMO_DESCRICAO,'
      '  IMO_DESCVALOR = :IMO_DESCVALOR,'
      '  IMO_DIAPAGAMENTO = :IMO_DIAPAGAMENTO,'
      '  IMO_DTATUALIZACAO = :IMO_DTATUALIZACAO,'
      '  IMO_DTCADASTRO = :IMO_DTCADASTRO,'
      '  IMO_ENDERECO = :IMO_ENDERECO,'
      '  IMO_ESTADO = :IMO_ESTADO,'
      '  IMO_FINALIDADE = :IMO_FINALIDADE,'
      '  IMO_NUMERO = :IMO_NUMERO,'
      '  IMO_OBSERVACOES = :IMO_OBSERVACOES,'
      '  IMO_RESERVADO = :IMO_RESERVADO,'
      '  IMO_STATUS = :IMO_STATUS,'
      '  IMO_TIPOIMOVEL = :IMO_TIPOIMOVEL,'
      '  IMO_TIPONEGOCIO = :IMO_TIPONEGOCIO,'
      '  IMO_TIPOPAGAMENTO = :IMO_TIPOPAGAMENTO,'
      '  IMO_USUARIO = :IMO_USUARIO,'
      '  IMO_VALORALUGUEL = :IMO_VALORALUGUEL'
      'where'
      '  IMO_CODIGO = :OLD_IMO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'IMO_CODIGO'
    GeneratorField.Generator = 'GEN_IMOVEIS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 488
    object TBImoveisIMO_AREALOCALIZACAO: TIBStringField
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = '"IMOVEIS"."IMO_AREALOCALIZACAO"'
      Size = 1
    end
    object TBImoveisIMO_BAIRRO: TIBStringField
      FieldName = 'IMO_BAIRRO'
      Origin = '"IMOVEIS"."IMO_BAIRRO"'
      Size = 50
    end
    object TBImoveisIMO_CEP: TIBStringField
      FieldName = 'IMO_CEP'
      Origin = '"IMOVEIS"."IMO_CEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBImoveisIMO_CIDADE: TIBStringField
      FieldName = 'IMO_CIDADE'
      Origin = '"IMOVEIS"."IMO_CIDADE"'
      Size = 50
    end
    object TBImoveisIMO_CIDADECODIGO: TIntegerField
      FieldName = 'IMO_CIDADECODIGO'
      Origin = '"IMOVEIS"."IMO_CIDADECODIGO"'
    end
    object TBImoveisIMO_CIDADECODIGODIMOB: TIntegerField
      FieldName = 'IMO_CIDADECODIGODIMOB'
      Origin = '"IMOVEIS"."IMO_CIDADECODIGODIMOB"'
    end
    object TBImoveisIMO_CLIENTE: TIntegerField
      FieldName = 'IMO_CLIENTE'
      Origin = '"IMOVEIS"."IMO_CLIENTE"'
      Required = True
    end
    object TBImoveisIMO_CODIGO: TIntegerField
      FieldName = 'IMO_CODIGO'
      Origin = '"IMOVEIS"."IMO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBImoveisIMO_COMISSAO: TIBBCDField
      FieldName = 'IMO_COMISSAO'
      Origin = '"IMOVEIS"."IMO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBImoveisIMO_COMPLEMENTO: TIBStringField
      FieldName = 'IMO_COMPLEMENTO'
      Origin = '"IMOVEIS"."IMO_COMPLEMENTO"'
      Size = 30
    end
    object TBImoveisIMO_CONTRATO: TIntegerField
      FieldName = 'IMO_CONTRATO'
      Origin = '"IMOVEIS"."IMO_CONTRATO"'
    end
    object TBImoveisIMO_DESCRICAO: TIBStringField
      FieldName = 'IMO_DESCRICAO'
      Origin = '"IMOVEIS"."IMO_DESCRICAO"'
      Size = 120
    end
    object TBImoveisIMO_DESCQTDE: TIntegerField
      FieldName = 'IMO_DESCQTDE'
      Origin = '"IMOVEIS"."IMO_DESCQTDE"'
    end
    object TBImoveisIMO_DESCVALOR: TIBBCDField
      FieldName = 'IMO_DESCVALOR'
      Origin = '"IMOVEIS"."IMO_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBImoveisIMO_DIAPAGAMENTO: TIntegerField
      FieldName = 'IMO_DIAPAGAMENTO'
      Origin = '"IMOVEIS"."IMO_DIAPAGAMENTO"'
    end
    object TBImoveisIMO_DTATUALIZACAO: TDateField
      FieldName = 'IMO_DTATUALIZACAO'
      Origin = '"IMOVEIS"."IMO_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBImoveisIMO_DTCADASTRO: TDateField
      FieldName = 'IMO_DTCADASTRO'
      Origin = '"IMOVEIS"."IMO_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBImoveisIMO_ENDERECO: TIBStringField
      FieldName = 'IMO_ENDERECO'
      Origin = '"IMOVEIS"."IMO_ENDERECO"'
      Size = 100
    end
    object TBImoveisIMO_ESTADO: TIBStringField
      FieldName = 'IMO_ESTADO'
      Origin = '"IMOVEIS"."IMO_ESTADO"'
      Size = 2
    end
    object TBImoveisIMO_FINALIDADE: TIBStringField
      FieldName = 'IMO_FINALIDADE'
      Origin = '"IMOVEIS"."IMO_FINALIDADE"'
      Size = 1
    end
    object TBImoveisIMO_NUMERO: TIBStringField
      FieldName = 'IMO_NUMERO'
      Origin = '"IMOVEIS"."IMO_NUMERO"'
      Size = 15
    end
    object TBImoveisIMO_OBSERVACOES: TWideMemoField
      FieldName = 'IMO_OBSERVACOES'
      Origin = '"IMOVEIS"."IMO_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBImoveisIMO_RESERVADO: TIBStringField
      FieldName = 'IMO_RESERVADO'
      Origin = '"IMOVEIS"."IMO_RESERVADO"'
      Size = 1
    end
    object TBImoveisIMO_STATUS: TIBStringField
      FieldName = 'IMO_STATUS'
      Origin = '"IMOVEIS"."IMO_STATUS"'
      Size = 1
    end
    object TBImoveisIMO_TIPOIMOVEL: TIntegerField
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = '"IMOVEIS"."IMO_TIPOIMOVEL"'
      Required = True
    end
    object TBImoveisIMO_TIPONEGOCIO: TIBStringField
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = '"IMOVEIS"."IMO_TIPONEGOCIO"'
      Size = 1
    end
    object TBImoveisIMO_TIPOPAGAMENTO: TIBStringField
      FieldName = 'IMO_TIPOPAGAMENTO'
      Origin = '"IMOVEIS"."IMO_TIPOPAGAMENTO"'
      Size = 1
    end
    object TBImoveisIMO_USUARIO: TIBStringField
      FieldName = 'IMO_USUARIO'
      Origin = '"IMOVEIS"."IMO_USUARIO"'
    end
    object TBImoveisIMO_VALORALUGUEL: TIBBCDField
      FieldName = 'IMO_VALORALUGUEL'
      Origin = '"IMOVEIS"."IMO_VALORALUGUEL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBImoveisCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBImoveisIMT_DESCRICAO: TIBStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = '"IMOVEISTIPOS"."IMT_DESCRICAO"'
      Size = 50
    end
  end
  object DSImoveis: TDataSource
    DataSet = TBImoveis
    OnStateChange = DSImoveisStateChange
    Left = 96
    Top = 536
  end
  object TRImoveis: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 584
  end
  object DSComandas: TDataSource
    DataSet = TBComandas
    OnStateChange = DSComandasStateChange
    Left = 928
    Top = 72
  end
  object TRComandas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 928
    Top = 120
  end
  object TBComandasItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRComandasItens
    AfterDelete = TBComandasItensAfterDelete
    AfterInsert = TBComandasItensAfterInsert
    AfterPost = TBComandasItensAfterPost
    BeforePost = TBComandasItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from COMANDASITENS'
      'where'
      '  CDI_CODIGO = :OLD_CDI_CODIGO')
    InsertSQL.Strings = (
      'insert into COMANDASITENS'
      
        '  (CDI_CODIGO, CDI_COMANDA, CDI_DESCRICAO, CDI_ITEM, CDI_OBSERVA' +
        'COES, CDI_PAGO, '
      
        '   CDI_PRODUTO, CDI_QUANTIDADE, CDI_TIPO, CDI_VALORTOTAL, CDI_VA' +
        'LORUNITARIO)'
      'values'
      
        '  (:CDI_CODIGO, :CDI_COMANDA, :CDI_DESCRICAO, :CDI_ITEM, :CDI_OB' +
        'SERVACOES, '
      
        '   :CDI_PAGO, :CDI_PRODUTO, :CDI_QUANTIDADE, :CDI_TIPO, :CDI_VAL' +
        'ORTOTAL, '
      '   :CDI_VALORUNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CDI_CODIGO,'
      '  CDI_COMANDA,'
      '  CDI_DESCRICAO,'
      '  CDI_ITEM,'
      '  CDI_OBSERVACOES,'
      '  CDI_PAGO,'
      '  CDI_PRODUTO,'
      '  CDI_QUANTIDADE,'
      '  CDI_TIPO,'
      '  CDI_VALORTOTAL,'
      '  CDI_VALORUNITARIO'
      'from COMANDASITENS '
      'where'
      '  CDI_CODIGO = :CDI_CODIGO')
    SelectSQL.Strings = (
      'select '
      'CDI_CODIGO,'
      'CDI_COMANDA,'
      'CDI_DESCRICAO,'
      'CDI_ITEM,'
      'CDI_OBSERVACOES,'
      'CDI_PAGO,'
      'CDI_PRODUTO,'
      'CDI_QUANTIDADE,'
      'CDI_TIPO,'
      'CDI_VALORTOTAL,'
      'CDI_VALORUNITARIO '
      'from COMANDASITENS '
      'where CDI_COMANDA=:CMD_CODIGO')
    ModifySQL.Strings = (
      'update COMANDASITENS'
      'set'
      '  CDI_CODIGO = :CDI_CODIGO,'
      '  CDI_COMANDA = :CDI_COMANDA,'
      '  CDI_DESCRICAO = :CDI_DESCRICAO,'
      '  CDI_ITEM = :CDI_ITEM,'
      '  CDI_OBSERVACOES = :CDI_OBSERVACOES,'
      '  CDI_PAGO = :CDI_PAGO,'
      '  CDI_PRODUTO = :CDI_PRODUTO,'
      '  CDI_QUANTIDADE = :CDI_QUANTIDADE,'
      '  CDI_TIPO = :CDI_TIPO,'
      '  CDI_VALORTOTAL = :CDI_VALORTOTAL,'
      '  CDI_VALORUNITARIO = :CDI_VALORUNITARIO'
      'where'
      '  CDI_CODIGO = :OLD_CDI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CDI_CODIGO'
    GeneratorField.Generator = 'GEN_COMANDASITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSComandas
    Left = 992
    Top = 24
    object TBComandasItensCDI_CODIGO: TIntegerField
      FieldName = 'CDI_CODIGO'
      Origin = '"COMANDASITENS"."CDI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBComandasItensCDI_COMANDA: TIntegerField
      FieldName = 'CDI_COMANDA'
      Origin = '"COMANDASITENS"."CDI_COMANDA"'
      Required = True
    end
    object TBComandasItensCDI_DESCRICAO: TIBStringField
      FieldName = 'CDI_DESCRICAO'
      Origin = '"COMANDASITENS"."CDI_DESCRICAO"'
      Size = 50
    end
    object TBComandasItensCDI_ITEM: TIntegerField
      FieldName = 'CDI_ITEM'
      Origin = '"COMANDASITENS"."CDI_ITEM"'
    end
    object TBComandasItensCDI_OBSERVACOES: TIBStringField
      FieldName = 'CDI_OBSERVACOES'
      Origin = '"COMANDASITENS"."CDI_OBSERVACOES"'
      Size = 50
    end
    object TBComandasItensCDI_PAGO: TIBStringField
      FieldName = 'CDI_PAGO'
      Origin = '"COMANDASITENS"."CDI_PAGO"'
      Size = 1
    end
    object TBComandasItensCDI_PRODUTO: TIntegerField
      FieldName = 'CDI_PRODUTO'
      Origin = '"COMANDASITENS"."CDI_PRODUTO"'
      Required = True
    end
    object TBComandasItensCDI_QUANTIDADE: TIBBCDField
      FieldName = 'CDI_QUANTIDADE'
      Origin = '"COMANDASITENS"."CDI_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object TBComandasItensCDI_TIPO: TIBStringField
      FieldName = 'CDI_TIPO'
      Origin = '"COMANDASITENS"."CDI_TIPO"'
      Size = 1
    end
    object TBComandasItensCDI_VALORTOTAL: TIBBCDField
      FieldName = 'CDI_VALORTOTAL'
      Origin = '"COMANDASITENS"."CDI_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasItensCDI_VALORUNITARIO: TIBBCDField
      FieldName = 'CDI_VALORUNITARIO'
      Origin = '"COMANDASITENS"."CDI_VALORUNITARIO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSComandasItens: TDataSource
    DataSet = TBComandasItens
    Left = 992
    Top = 72
  end
  object TRComandasItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 992
    Top = 120
  end
  object QYComandasItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRComandasItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(CDI_VALORTOTAL) as TOTALSERVICOS from COMANDASITENS'
      'where CDI_TIPO='#39'S'#39' and CDI_COMANDA=:comanda')
    Left = 992
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'comanda'
        ParamType = ptUnknown
      end>
  end
  object QYComandas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRComandas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select count(*) as QTDE from COMANDAS where CMD_STATUS='#39'A'#39' and C' +
        'MD_COMANDA=:comanda')
    Left = 928
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'comanda'
        ParamType = ptUnknown
      end>
  end
  object TBContratos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRContratos
    AfterDelete = TBContratosAfterDelete
    AfterEdit = TBContratosAfterEdit
    AfterInsert = TBContratosAfterInsert
    AfterPost = TBContratosAfterPost
    BeforeEdit = TBContratosBeforeEdit
    BeforeInsert = TBContratosBeforeInsert
    BeforePost = TBContratosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTRATOS'
      'where'
      '  CTI_CODIGO = :OLD_CTI_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTRATOS'
      
        '  (CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, CTI_AVALISTA2' +
        'CPF, CTI_CODIGO, '
      
        '   CTI_DESCPARCELAPORC, CTI_DESCPARCELAQTDE, CTI_DESCPARCELAVALO' +
        'R, CTI_DESCPORCVECTO, '
      
        '   CTI_DIAVENCIMENTO, CTI_DTATUALIZACAO, CTI_DTCADASTRO, CTI_FIN' +
        'ALIDADE, '
      
        '   CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, CTI_LOCADORCEP, C' +
        'TI_LOCADORCIDADE, '
      
        '   CTI_LOCADORCIDADECODIGO, CTI_LOCADORCNPJ, CTI_LOCADORCOMPLEME' +
        'NTO, CTI_LOCADORCPF, '
      
        '   CTI_LOCADORENDERECO, CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVI' +
        'L, CTI_LOCADORNOME, '
      
        '   CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, CTI_MEMOPAGAR, CTI_' +
        'MEMORECEBER, '
      
        '   CTI_STATUS, CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF, CTI_TESTEMUN' +
        'HA2, CTI_TESTEMUNHA2CPF, '
      
        '   CTI_USUARIO, CTI_VALORALUGUEL, CTI_VALORALUGUELVECTO, CTI_VIG' +
        'ENCIAFIM, '
      '   CTI_VIGENCIAINICIO, CTI_VIGENCIATOTAL)'
      'values'
      
        '  (:CTI_AVALISTA1, :CTI_AVALISTA1CPF, :CTI_AVALISTA2, :CTI_AVALI' +
        'STA2CPF, '
      
        '   :CTI_CODIGO, :CTI_DESCPARCELAPORC, :CTI_DESCPARCELAQTDE, :CTI' +
        '_DESCPARCELAVALOR, '
      
        '   :CTI_DESCPORCVECTO, :CTI_DIAVENCIMENTO, :CTI_DTATUALIZACAO, :' +
        'CTI_DTCADASTRO, '
      
        '   :CTI_FINALIDADE, :CTI_IMOVEL, :CTI_LOCADOR, :CTI_LOCADORBAIRR' +
        'O, :CTI_LOCADORCEP, '
      
        '   :CTI_LOCADORCIDADE, :CTI_LOCADORCIDADECODIGO, :CTI_LOCADORCNP' +
        'J, :CTI_LOCADORCOMPLEMENTO, '
      
        '   :CTI_LOCADORCPF, :CTI_LOCADORENDERECO, :CTI_LOCADORESTADO, :C' +
        'TI_LOCADORESTADOCIVIL, '
      
        '   :CTI_LOCADORNOME, :CTI_LOCADORNUMERO, :CTI_LOCADORTIPOPESSOA,' +
        ' :CTI_MEMOPAGAR, '
      
        '   :CTI_MEMORECEBER, :CTI_STATUS, :CTI_TESTEMUNHA1, :CTI_TESTEMU' +
        'NHA1CPF, '
      
        '   :CTI_TESTEMUNHA2, :CTI_TESTEMUNHA2CPF, :CTI_USUARIO, :CTI_VAL' +
        'ORALUGUEL, '
      
        '   :CTI_VALORALUGUELVECTO, :CTI_VIGENCIAFIM, :CTI_VIGENCIAINICIO' +
        ', :CTI_VIGENCIATOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CTI_CODIGO,'
      '  CTI_IMOVEL,'
      '  CTI_LOCADOR,'
      '  CTI_LOCADORNOME,'
      '  CTI_LOCADORCPF,'
      '  CTI_LOCADORCNPJ,'
      '  CTI_LOCADORESTADOCIVIL,'
      '  CTI_LOCADORENDERECO,'
      '  CTI_LOCADORNUMERO,'
      '  CTI_LOCADORCOMPLEMENTO,'
      '  CTI_LOCADORBAIRRO,'
      '  CTI_LOCADORCIDADE,'
      '  CTI_LOCADORESTADO,'
      '  CTI_VIGENCIAINICIO,'
      '  CTI_VIGENCIAFIM,'
      '  CTI_VIGENCIATOTAL,'
      '  CTI_VALORALUGUEL,'
      '  CTI_VALORALUGUELVECTO,'
      '  CTI_DIAVENCIMENTO,'
      '  CTI_AVALISTA1,'
      '  CTI_AVALISTA1CPF,'
      '  CTI_AVALISTA2,'
      '  CTI_AVALISTA2CPF,'
      '  CTI_DTCADASTRO,'
      '  CTI_DTATUALIZACAO,'
      '  CTI_USUARIO,'
      '  CTI_LOCADORCEP,'
      '  CTI_LOCADORCIDADECODIGO,'
      '  CTI_STATUS,'
      '  CTI_DESCPARCELAQTDE,'
      '  CTI_DESCPARCELAVALOR,'
      '  CTI_DESCPARCELAPORC,'
      '  CTI_DESCPORCVECTO,'
      '  CTI_MEMORECEBER,'
      '  CTI_MEMOPAGAR,'
      '  CTI_TESTEMUNHA1,'
      '  CTI_TESTEMUNHA1CPF,'
      '  CTI_TESTEMUNHA2,'
      '  CTI_TESTEMUNHA2CPF,'
      '  CTI_LOCADORTIPOPESSOA,'
      '  CTI_FINALIDADE'
      'from CONTRATOS '
      'where'
      '  CTI_CODIGO = :CTI_CODIGO')
    SelectSQL.Strings = (
      'select * from CONTRATOS'
      'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'where CTI_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CONTRATOS'
      'set'
      '  CTI_AVALISTA1 = :CTI_AVALISTA1,'
      '  CTI_AVALISTA1CPF = :CTI_AVALISTA1CPF,'
      '  CTI_AVALISTA2 = :CTI_AVALISTA2,'
      '  CTI_AVALISTA2CPF = :CTI_AVALISTA2CPF,'
      '  CTI_CODIGO = :CTI_CODIGO,'
      '  CTI_DESCPARCELAPORC = :CTI_DESCPARCELAPORC,'
      '  CTI_DESCPARCELAQTDE = :CTI_DESCPARCELAQTDE,'
      '  CTI_DESCPARCELAVALOR = :CTI_DESCPARCELAVALOR,'
      '  CTI_DESCPORCVECTO = :CTI_DESCPORCVECTO,'
      '  CTI_DIAVENCIMENTO = :CTI_DIAVENCIMENTO,'
      '  CTI_DTATUALIZACAO = :CTI_DTATUALIZACAO,'
      '  CTI_DTCADASTRO = :CTI_DTCADASTRO,'
      '  CTI_FINALIDADE = :CTI_FINALIDADE,'
      '  CTI_IMOVEL = :CTI_IMOVEL,'
      '  CTI_LOCADOR = :CTI_LOCADOR,'
      '  CTI_LOCADORBAIRRO = :CTI_LOCADORBAIRRO,'
      '  CTI_LOCADORCEP = :CTI_LOCADORCEP,'
      '  CTI_LOCADORCIDADE = :CTI_LOCADORCIDADE,'
      '  CTI_LOCADORCIDADECODIGO = :CTI_LOCADORCIDADECODIGO,'
      '  CTI_LOCADORCNPJ = :CTI_LOCADORCNPJ,'
      '  CTI_LOCADORCOMPLEMENTO = :CTI_LOCADORCOMPLEMENTO,'
      '  CTI_LOCADORCPF = :CTI_LOCADORCPF,'
      '  CTI_LOCADORENDERECO = :CTI_LOCADORENDERECO,'
      '  CTI_LOCADORESTADO = :CTI_LOCADORESTADO,'
      '  CTI_LOCADORESTADOCIVIL = :CTI_LOCADORESTADOCIVIL,'
      '  CTI_LOCADORNOME = :CTI_LOCADORNOME,'
      '  CTI_LOCADORNUMERO = :CTI_LOCADORNUMERO,'
      '  CTI_LOCADORTIPOPESSOA = :CTI_LOCADORTIPOPESSOA,'
      '  CTI_MEMOPAGAR = :CTI_MEMOPAGAR,'
      '  CTI_MEMORECEBER = :CTI_MEMORECEBER,'
      '  CTI_STATUS = :CTI_STATUS,'
      '  CTI_TESTEMUNHA1 = :CTI_TESTEMUNHA1,'
      '  CTI_TESTEMUNHA1CPF = :CTI_TESTEMUNHA1CPF,'
      '  CTI_TESTEMUNHA2 = :CTI_TESTEMUNHA2,'
      '  CTI_TESTEMUNHA2CPF = :CTI_TESTEMUNHA2CPF,'
      '  CTI_USUARIO = :CTI_USUARIO,'
      '  CTI_VALORALUGUEL = :CTI_VALORALUGUEL,'
      '  CTI_VALORALUGUELVECTO = :CTI_VALORALUGUELVECTO,'
      '  CTI_VIGENCIAFIM = :CTI_VIGENCIAFIM,'
      '  CTI_VIGENCIAINICIO = :CTI_VIGENCIAINICIO,'
      '  CTI_VIGENCIATOTAL = :CTI_VIGENCIATOTAL'
      'where'
      '  CTI_CODIGO = :OLD_CTI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTI_CODIGO'
    GeneratorField.Generator = 'GEN_CONTRATOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 480
    Top = 280
    object TBContratosCTI_AVALISTA1: TIBStringField
      FieldName = 'CTI_AVALISTA1'
      Origin = '"CONTRATOS"."CTI_AVALISTA1"'
      Size = 50
    end
    object TBContratosCTI_AVALISTA1CPF: TIBStringField
      FieldName = 'CTI_AVALISTA1CPF'
      Origin = '"CONTRATOS"."CTI_AVALISTA1CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_AVALISTA2: TIBStringField
      FieldName = 'CTI_AVALISTA2'
      Origin = '"CONTRATOS"."CTI_AVALISTA2"'
      Size = 50
    end
    object TBContratosCTI_AVALISTA2CPF: TIBStringField
      FieldName = 'CTI_AVALISTA2CPF'
      Origin = '"CONTRATOS"."CTI_AVALISTA2CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_CODIGO: TIntegerField
      FieldName = 'CTI_CODIGO'
      Origin = '"CONTRATOS"."CTI_CODIGO"'
      Required = True
    end
    object TBContratosCTI_DESCPARCELAPORC: TIBBCDField
      FieldName = 'CTI_DESCPARCELAPORC'
      Origin = '"CONTRATOS"."CTI_DESCPARCELAPORC"'
      Precision = 18
      Size = 4
    end
    object TBContratosCTI_DESCPARCELAQTDE: TIntegerField
      FieldName = 'CTI_DESCPARCELAQTDE'
      Origin = '"CONTRATOS"."CTI_DESCPARCELAQTDE"'
    end
    object TBContratosCTI_DESCPARCELAVALOR: TIBBCDField
      FieldName = 'CTI_DESCPARCELAVALOR'
      Origin = '"CONTRATOS"."CTI_DESCPARCELAVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBContratosCTI_DESCPORCVECTO: TIBBCDField
      FieldName = 'CTI_DESCPORCVECTO'
      Origin = '"CONTRATOS"."CTI_DESCPORCVECTO"'
      Precision = 18
      Size = 4
    end
    object TBContratosCTI_DIAVENCIMENTO: TIntegerField
      FieldName = 'CTI_DIAVENCIMENTO'
      Origin = '"CONTRATOS"."CTI_DIAVENCIMENTO"'
    end
    object TBContratosCTI_DTATUALIZACAO: TDateField
      FieldName = 'CTI_DTATUALIZACAO'
      Origin = '"CONTRATOS"."CTI_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_DTCADASTRO: TDateField
      FieldName = 'CTI_DTCADASTRO'
      Origin = '"CONTRATOS"."CTI_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_FINALIDADE: TIBStringField
      FieldName = 'CTI_FINALIDADE'
      Origin = '"CONTRATOS"."CTI_FINALIDADE"'
      Size = 1
    end
    object TBContratosCTI_IMOVEL: TIntegerField
      FieldName = 'CTI_IMOVEL'
      Origin = '"CONTRATOS"."CTI_IMOVEL"'
      Required = True
    end
    object TBContratosCTI_LOCADOR: TIntegerField
      FieldName = 'CTI_LOCADOR'
      Origin = '"CONTRATOS"."CTI_LOCADOR"'
      Required = True
    end
    object TBContratosCTI_LOCADORBAIRRO: TIBStringField
      FieldName = 'CTI_LOCADORBAIRRO'
      Origin = '"CONTRATOS"."CTI_LOCADORBAIRRO"'
      Size = 50
    end
    object TBContratosCTI_LOCADORCIDADE: TIBStringField
      FieldName = 'CTI_LOCADORCIDADE'
      Origin = '"CONTRATOS"."CTI_LOCADORCIDADE"'
      Size = 50
    end
    object TBContratosCTI_LOCADORCIDADECODIGO: TIntegerField
      FieldName = 'CTI_LOCADORCIDADECODIGO'
      Origin = '"CONTRATOS"."CTI_LOCADORCIDADECODIGO"'
    end
    object TBContratosCTI_LOCADORCEP: TIBStringField
      FieldName = 'CTI_LOCADORCEP'
      Origin = '"CONTRATOS"."CTI_LOCADORCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBContratosCTI_LOCADORCNPJ: TIBStringField
      FieldName = 'CTI_LOCADORCNPJ'
      Origin = '"CONTRATOS"."CTI_LOCADORCNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBContratosCTI_LOCADORCOMPLEMENTO: TIBStringField
      FieldName = 'CTI_LOCADORCOMPLEMENTO'
      Origin = '"CONTRATOS"."CTI_LOCADORCOMPLEMENTO"'
      Size = 30
    end
    object TBContratosCTI_LOCADORCPF: TIBStringField
      FieldName = 'CTI_LOCADORCPF'
      Origin = '"CONTRATOS"."CTI_LOCADORCPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_LOCADORENDERECO: TIBStringField
      FieldName = 'CTI_LOCADORENDERECO'
      Origin = '"CONTRATOS"."CTI_LOCADORENDERECO"'
      Size = 100
    end
    object TBContratosCTI_LOCADORESTADO: TIBStringField
      FieldName = 'CTI_LOCADORESTADO'
      Origin = '"CONTRATOS"."CTI_LOCADORESTADO"'
      Size = 2
    end
    object TBContratosCTI_LOCADORESTADOCIVIL: TIBStringField
      FieldName = 'CTI_LOCADORESTADOCIVIL'
      Origin = '"CONTRATOS"."CTI_LOCADORESTADOCIVIL"'
      Size = 10
    end
    object TBContratosCTI_LOCADORNOME: TIBStringField
      FieldName = 'CTI_LOCADORNOME'
      Origin = '"CONTRATOS"."CTI_LOCADORNOME"'
      Size = 50
    end
    object TBContratosCTI_LOCADORNUMERO: TIBStringField
      FieldName = 'CTI_LOCADORNUMERO'
      Origin = '"CONTRATOS"."CTI_LOCADORNUMERO"'
      Size = 15
    end
    object TBContratosCTI_LOCADORTIPOPESSOA: TIBStringField
      FieldName = 'CTI_LOCADORTIPOPESSOA'
      Origin = '"CONTRATOS"."CTI_LOCADORTIPOPESSOA"'
      Size = 1
    end
    object TBContratosCTI_MEMOPAGAR: TWideMemoField
      FieldName = 'CTI_MEMOPAGAR'
      Origin = '"CONTRATOS"."CTI_MEMOPAGAR"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBContratosCTI_MEMORECEBER: TWideMemoField
      FieldName = 'CTI_MEMORECEBER'
      Origin = '"CONTRATOS"."CTI_MEMORECEBER"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBContratosCTI_STATUS: TIBStringField
      FieldName = 'CTI_STATUS'
      Origin = '"CONTRATOS"."CTI_STATUS"'
      Size = 1
    end
    object TBContratosCTI_TESTEMUNHA1: TIBStringField
      FieldName = 'CTI_TESTEMUNHA1'
      Origin = '"CONTRATOS"."CTI_TESTEMUNHA1"'
      Size = 50
    end
    object TBContratosCTI_TESTEMUNHA1CPF: TIBStringField
      FieldName = 'CTI_TESTEMUNHA1CPF'
      Origin = '"CONTRATOS"."CTI_TESTEMUNHA1CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_TESTEMUNHA2: TIBStringField
      FieldName = 'CTI_TESTEMUNHA2'
      Origin = '"CONTRATOS"."CTI_TESTEMUNHA2"'
      Size = 50
    end
    object TBContratosCTI_TESTEMUNHA2CPF: TIBStringField
      FieldName = 'CTI_TESTEMUNHA2CPF'
      Origin = '"CONTRATOS"."CTI_TESTEMUNHA2CPF"'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_USUARIO: TIBStringField
      FieldName = 'CTI_USUARIO'
      Origin = '"CONTRATOS"."CTI_USUARIO"'
    end
    object TBContratosCTI_VALORALUGUEL: TIBBCDField
      FieldName = 'CTI_VALORALUGUEL'
      Origin = '"CONTRATOS"."CTI_VALORALUGUEL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBContratosCTI_VALORALUGUELVECTO: TIBBCDField
      FieldName = 'CTI_VALORALUGUELVECTO'
      Origin = '"CONTRATOS"."CTI_VALORALUGUELVECTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBContratosCTI_VIGENCIAINICIO: TDateField
      FieldName = 'CTI_VIGENCIAINICIO'
      Origin = '"CONTRATOS"."CTI_VIGENCIAINICIO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_VIGENCIAFIM: TDateField
      FieldName = 'CTI_VIGENCIAFIM'
      Origin = '"CONTRATOS"."CTI_VIGENCIAFIM"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_VIGENCIATOTAL: TIntegerField
      FieldName = 'CTI_VIGENCIATOTAL'
      Origin = '"CONTRATOS"."CTI_VIGENCIATOTAL"'
    end
    object TBContratosIMO_AREALOCALIZACAO: TIBStringField
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = '"IMOVEIS"."IMO_AREALOCALIZACAO"'
      Size = 1
    end
    object TBContratosIMO_BAIRRO: TIBStringField
      FieldName = 'IMO_BAIRRO'
      Origin = '"IMOVEIS"."IMO_BAIRRO"'
      Size = 50
    end
    object TBContratosIMO_CEP: TIBStringField
      FieldName = 'IMO_CEP'
      Origin = '"IMOVEIS"."IMO_CEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBContratosIMO_CIDADE: TIBStringField
      FieldName = 'IMO_CIDADE'
      Origin = '"IMOVEIS"."IMO_CIDADE"'
      Size = 50
    end
    object TBContratosIMO_CIDADECODIGO: TIntegerField
      FieldName = 'IMO_CIDADECODIGO'
      Origin = '"IMOVEIS"."IMO_CIDADECODIGO"'
    end
    object TBContratosIMO_CIDADECODIGODIMOB: TIntegerField
      FieldName = 'IMO_CIDADECODIGODIMOB'
      Origin = '"IMOVEIS"."IMO_CIDADECODIGODIMOB"'
    end
    object TBContratosIMO_CLIENTE: TIntegerField
      FieldName = 'IMO_CLIENTE'
      Origin = '"IMOVEIS"."IMO_CLIENTE"'
    end
    object TBContratosIMO_COMISSAO: TIBBCDField
      FieldName = 'IMO_COMISSAO'
      Origin = '"IMOVEIS"."IMO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBContratosIMO_COMPLEMENTO: TIBStringField
      FieldName = 'IMO_COMPLEMENTO'
      Origin = '"IMOVEIS"."IMO_COMPLEMENTO"'
      Size = 30
    end
    object TBContratosIMO_DESCQTDE: TIntegerField
      FieldName = 'IMO_DESCQTDE'
      Origin = '"IMOVEIS"."IMO_DESCQTDE"'
    end
    object TBContratosIMO_DESCRICAO: TIBStringField
      FieldName = 'IMO_DESCRICAO'
      Origin = '"IMOVEIS"."IMO_DESCRICAO"'
      Size = 120
    end
    object TBContratosIMO_DESCVALOR: TIBBCDField
      FieldName = 'IMO_DESCVALOR'
      Origin = '"IMOVEIS"."IMO_DESCVALOR"'
      Precision = 18
      Size = 4
    end
    object TBContratosIMO_DIAPAGAMENTO: TIntegerField
      FieldName = 'IMO_DIAPAGAMENTO'
      Origin = '"IMOVEIS"."IMO_DIAPAGAMENTO"'
    end
    object TBContratosIMO_ENDERECO: TIBStringField
      FieldName = 'IMO_ENDERECO'
      Origin = '"IMOVEIS"."IMO_ENDERECO"'
      Size = 100
    end
    object TBContratosIMO_ESTADO: TIBStringField
      FieldName = 'IMO_ESTADO'
      Origin = '"IMOVEIS"."IMO_ESTADO"'
      Size = 2
    end
    object TBContratosIMO_FINALIDADE: TIBStringField
      FieldName = 'IMO_FINALIDADE'
      Origin = '"IMOVEIS"."IMO_FINALIDADE"'
      Size = 1
    end
    object TBContratosIMO_NUMERO: TIBStringField
      FieldName = 'IMO_NUMERO'
      Origin = '"IMOVEIS"."IMO_NUMERO"'
      Size = 15
    end
    object TBContratosIMO_TIPOIMOVEL: TIntegerField
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = '"IMOVEIS"."IMO_TIPOIMOVEL"'
    end
    object TBContratosIMO_TIPONEGOCIO: TIBStringField
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = '"IMOVEIS"."IMO_TIPONEGOCIO"'
      Size = 1
    end
    object TBContratosIMO_TIPOPAGAMENTO: TIBStringField
      FieldName = 'IMO_TIPOPAGAMENTO'
      Origin = '"IMOVEIS"."IMO_TIPOPAGAMENTO"'
      Size = 1
    end
    object TBContratosIMO_VALORALUGUEL: TIBBCDField
      FieldName = 'IMO_VALORALUGUEL'
      Origin = '"IMOVEIS"."IMO_VALORALUGUEL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBContratosIMT_DESCRICAO: TIBStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = '"IMOVEISTIPOS"."IMT_DESCRICAO"'
      Size = 50
    end
  end
  object DSContratos: TDataSource
    DataSet = TBContratos
    OnStateChange = DSContratosStateChange
    Left = 480
    Top = 328
  end
  object TRContratos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 480
    Top = 376
  end
  object QYContratos: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRContratos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'update VENDAS set VED_NOTA='#39'S'#39' where VED_CODIGO=:codigo')
    Left = 480
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object TBComandas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRComandas
    AfterDelete = TBComandasAfterDelete
    AfterEdit = TBComandasAfterEdit
    AfterInsert = TBComandasAfterInsert
    AfterPost = TBComandasAfterPost
    BeforeEdit = TBComandasBeforeEdit
    BeforeInsert = TBComandasBeforeInsert
    BeforePost = TBComandasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from COMANDAS'
      'where'
      '  CMD_CODIGO = :OLD_CMD_CODIGO')
    InsertSQL.Strings = (
      'insert into COMANDAS'
      
        '  (CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CMD_DATA,' +
        ' CMD_DATABAIXA, '
      
        '   CMD_DESCPORC, CMD_DESCVALOR, CMD_DINHEIRO, CMD_DTATUALIZACAO,' +
        ' CMD_HORAFIM, '
      
        '   CMD_HORAFIMMIN, CMD_HORAINICIO, CMD_HORAINICIOMIN, CMD_OBSERV' +
        'ACOES, '
      
        '   CMD_SEQUENCIAITEM, CMD_STATUS, CMD_TEMPOTOTAL, CMD_TEMPOTOTAL' +
        'DEC, CMD_TEMPOTOTALMIN, '
      
        '   CMD_TOTALITENS, CMD_TROCO, CMD_USUARIO, CMD_VALORCOMISSAO, CM' +
        'D_VALORPAGAR, '
      '   CMD_VALORPAGO, CMD_VALORTOTAL, CMD_VENDEDOR)'
      'values'
      
        '  (:CMD_CLIENTE, :CMD_CODIGO, :CMD_COMANDA, :CMD_COMISSAO, :CMD_' +
        'DATA, :CMD_DATABAIXA, '
      
        '   :CMD_DESCPORC, :CMD_DESCVALOR, :CMD_DINHEIRO, :CMD_DTATUALIZA' +
        'CAO, :CMD_HORAFIM, '
      
        '   :CMD_HORAFIMMIN, :CMD_HORAINICIO, :CMD_HORAINICIOMIN, :CMD_OB' +
        'SERVACOES, '
      
        '   :CMD_SEQUENCIAITEM, :CMD_STATUS, :CMD_TEMPOTOTAL, :CMD_TEMPOT' +
        'OTALDEC, '
      
        '   :CMD_TEMPOTOTALMIN, :CMD_TOTALITENS, :CMD_TROCO, :CMD_USUARIO' +
        ', :CMD_VALORCOMISSAO, '
      
        '   :CMD_VALORPAGAR, :CMD_VALORPAGO, :CMD_VALORTOTAL, :CMD_VENDED' +
        'OR)')
    RefreshSQL.Strings = (
      'Select '
      '  CMD_CLIENTE,'
      '  CMD_CODIGO,'
      '  CMD_COMANDA,'
      '  CMD_COMISSAO,'
      '  CMD_DATA,'
      '  CMD_DATABAIXA,'
      '  CMD_DESCPORC,'
      '  CMD_DESCVALOR,'
      '  CMD_DINHEIRO,'
      '  CMD_DTATUALIZACAO,'
      '  CMD_HORAINICIO,'
      '  CMD_HORAINICIOMIN,'
      '  CMD_HORAFIM,'
      '  CMD_HORAFIMMIN,'
      '  CMD_OBSERVACOES,'
      '  CMD_SEQUENCIAITEM,'
      '  CMD_STATUS,'
      '  CMD_TEMPOTOTAL,'
      '  CMD_TEMPOTOTALDEC,'
      '  CMD_TEMPOTOTALMIN,'
      '  CMD_TOTALITENS,'
      '  CMD_TROCO,'
      '  CMD_USUARIO,'
      '  CMD_VALORCOMISSAO,'
      '  CMD_VALORPAGAR,'
      '  CMD_VALORPAGO,'
      '  CMD_VALORTOTAL,'
      '  CMD_VENDEDOR'
      'from COMANDAS '
      'where'
      '  CMD_CODIGO = :CMD_CODIGO')
    SelectSQL.Strings = (
      'select '
      'CMD_CLIENTE,'
      'CMD_CODIGO,'
      'CMD_COMANDA,'
      'CMD_COMISSAO,'
      'CMD_DATA,'
      'CMD_DATABAIXA,'
      'CMD_DESCPORC,'
      'CMD_DESCVALOR,'
      'CMD_DINHEIRO,'
      'CMD_DTATUALIZACAO,'
      'CMD_HORAINICIO,'
      'CMD_HORAINICIOMIN,'
      'CMD_HORAFIM,'
      'CMD_HORAFIMMIN,'
      'CMD_OBSERVACOES,'
      'CMD_SEQUENCIAITEM,'
      'CMD_STATUS,'
      'CMD_TEMPOTOTAL,'
      'CMD_TEMPOTOTALDEC,'
      'CMD_TEMPOTOTALMIN,'
      'CMD_TOTALITENS,'
      'CMD_TROCO,'
      'CMD_USUARIO,'
      'CMD_VALORCOMISSAO,'
      'CMD_VALORPAGAR,'
      'CMD_VALORPAGO,'
      'CMD_VALORTOTAL,'
      'CMD_VENDEDOR,'
      'CLI_NOME,'
      'VEN_NOME'
      'from COMANDAS'
      'left join CLIENTES on CMD_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO'
      'where CMD_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update COMANDAS'
      'set'
      '  CMD_CLIENTE = :CMD_CLIENTE,'
      '  CMD_CODIGO = :CMD_CODIGO,'
      '  CMD_COMANDA = :CMD_COMANDA,'
      '  CMD_COMISSAO = :CMD_COMISSAO,'
      '  CMD_DATA = :CMD_DATA,'
      '  CMD_DATABAIXA = :CMD_DATABAIXA,'
      '  CMD_DESCPORC = :CMD_DESCPORC,'
      '  CMD_DESCVALOR = :CMD_DESCVALOR,'
      '  CMD_DINHEIRO = :CMD_DINHEIRO,'
      '  CMD_DTATUALIZACAO = :CMD_DTATUALIZACAO,'
      '  CMD_HORAFIM = :CMD_HORAFIM,'
      '  CMD_HORAFIMMIN = :CMD_HORAFIMMIN,'
      '  CMD_HORAINICIO = :CMD_HORAINICIO,'
      '  CMD_HORAINICIOMIN = :CMD_HORAINICIOMIN,'
      '  CMD_OBSERVACOES = :CMD_OBSERVACOES,'
      '  CMD_SEQUENCIAITEM = :CMD_SEQUENCIAITEM,'
      '  CMD_STATUS = :CMD_STATUS,'
      '  CMD_TEMPOTOTAL = :CMD_TEMPOTOTAL,'
      '  CMD_TEMPOTOTALDEC = :CMD_TEMPOTOTALDEC,'
      '  CMD_TEMPOTOTALMIN = :CMD_TEMPOTOTALMIN,'
      '  CMD_TOTALITENS = :CMD_TOTALITENS,'
      '  CMD_TROCO = :CMD_TROCO,'
      '  CMD_USUARIO = :CMD_USUARIO,'
      '  CMD_VALORCOMISSAO = :CMD_VALORCOMISSAO,'
      '  CMD_VALORPAGAR = :CMD_VALORPAGAR,'
      '  CMD_VALORPAGO = :CMD_VALORPAGO,'
      '  CMD_VALORTOTAL = :CMD_VALORTOTAL,'
      '  CMD_VENDEDOR = :CMD_VENDEDOR'
      'where'
      '  CMD_CODIGO = :OLD_CMD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CMD_CODIGO'
    GeneratorField.Generator = 'GEN_COMANDAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 928
    Top = 24
    object TBComandasCMD_CLIENTE: TIntegerField
      FieldName = 'CMD_CLIENTE'
      Origin = '"COMANDAS"."CMD_CLIENTE"'
      Required = True
    end
    object TBComandasCMD_CODIGO: TIntegerField
      FieldName = 'CMD_CODIGO'
      Origin = '"COMANDAS"."CMD_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBComandasCMD_COMANDA: TIntegerField
      FieldName = 'CMD_COMANDA'
      Origin = '"COMANDAS"."CMD_COMANDA"'
      Required = True
    end
    object TBComandasCMD_COMISSAO: TIBBCDField
      FieldName = 'CMD_COMISSAO'
      Origin = '"COMANDAS"."CMD_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_DATA: TDateField
      FieldName = 'CMD_DATA'
      Origin = '"COMANDAS"."CMD_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBComandasCMD_DATABAIXA: TDateField
      FieldName = 'CMD_DATABAIXA'
      Origin = '"COMANDAS"."CMD_DATABAIXA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBComandasCMD_DESCPORC: TIBBCDField
      FieldName = 'CMD_DESCPORC'
      Origin = '"COMANDAS"."CMD_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_DESCVALOR: TIBBCDField
      FieldName = 'CMD_DESCVALOR'
      Origin = '"COMANDAS"."CMD_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_DINHEIRO: TIBBCDField
      FieldName = 'CMD_DINHEIRO'
      Origin = '"COMANDAS"."CMD_DINHEIRO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_DTATUALIZACAO: TDateField
      FieldName = 'CMD_DTATUALIZACAO'
      Origin = '"COMANDAS"."CMD_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBComandasCMD_HORAINICIO: TTimeField
      FieldName = 'CMD_HORAINICIO'
      Origin = '"COMANDAS"."CMD_HORAINICIO"'
      EditMask = '!00:00:99;1;_'
    end
    object TBComandasCMD_HORAINICIOMIN: TIntegerField
      FieldName = 'CMD_HORAINICIOMIN'
      Origin = '"COMANDAS"."CMD_HORAINICIOMIN"'
    end
    object TBComandasCMD_HORAFIM: TTimeField
      FieldName = 'CMD_HORAFIM'
      Origin = '"COMANDAS"."CMD_HORAFIM"'
      EditMask = '!00:00:99;1;_'
    end
    object TBComandasCMD_HORAFIMMIN: TIntegerField
      FieldName = 'CMD_HORAFIMMIN'
      Origin = '"COMANDAS"."CMD_HORAFIMMIN"'
    end
    object TBComandasCMD_OBSERVACOES: TWideMemoField
      FieldName = 'CMD_OBSERVACOES'
      Origin = '"COMANDAS"."CMD_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBComandasCMD_SEQUENCIAITEM: TIntegerField
      FieldName = 'CMD_SEQUENCIAITEM'
      Origin = '"COMANDAS"."CMD_SEQUENCIAITEM"'
    end
    object TBComandasCMD_STATUS: TIBStringField
      FieldName = 'CMD_STATUS'
      Origin = '"COMANDAS"."CMD_STATUS"'
      Size = 1
    end
    object TBComandasCMD_TEMPOTOTAL: TIBStringField
      FieldName = 'CMD_TEMPOTOTAL'
      Origin = '"COMANDAS"."CMD_TEMPOTOTAL"'
      Size = 25
    end
    object TBComandasCMD_TEMPOTOTALDEC: TIBBCDField
      FieldName = 'CMD_TEMPOTOTALDEC'
      Origin = '"COMANDAS"."CMD_TEMPOTOTALDEC"'
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_TEMPOTOTALMIN: TIntegerField
      FieldName = 'CMD_TEMPOTOTALMIN'
      Origin = '"COMANDAS"."CMD_TEMPOTOTALMIN"'
    end
    object TBComandasCMD_TOTALITENS: TIBBCDField
      FieldName = 'CMD_TOTALITENS'
      Origin = '"COMANDAS"."CMD_TOTALITENS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_TROCO: TIBBCDField
      FieldName = 'CMD_TROCO'
      Origin = '"COMANDAS"."CMD_TROCO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_USUARIO: TIBStringField
      FieldName = 'CMD_USUARIO'
      Origin = '"COMANDAS"."CMD_USUARIO"'
    end
    object TBComandasCMD_VALORCOMISSAO: TIBBCDField
      FieldName = 'CMD_VALORCOMISSAO'
      Origin = '"COMANDAS"."CMD_VALORCOMISSAO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_VALORPAGAR: TIBBCDField
      FieldName = 'CMD_VALORPAGAR'
      Origin = '"COMANDAS"."CMD_VALORPAGAR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_VALORPAGO: TIBBCDField
      FieldName = 'CMD_VALORPAGO'
      Origin = '"COMANDAS"."CMD_VALORPAGO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_VALORTOTAL: TIBBCDField
      FieldName = 'CMD_VALORTOTAL'
      Origin = '"COMANDAS"."CMD_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBComandasCMD_VENDEDOR: TIntegerField
      FieldName = 'CMD_VENDEDOR'
      Origin = '"COMANDAS"."CMD_VENDEDOR"'
      Required = True
    end
    object TBComandasCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBComandasVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object TBCteCarga: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteCarga
    AfterDelete = TBCteCargaAfterDelete
    AfterInsert = TBCteCargaAfterInsert
    AfterPost = TBCteCargaAfterPost
    BeforePost = TBCteCargaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTECARGA'
      'where'
      '  CCG_CODIGO = :OLD_CCG_CODIGO')
    InsertSQL.Strings = (
      'insert into CTECARGA'
      
        '  (CCG_CODIGO, CCG_CTE, CCG_QUANTIDADE, CCG_TIPOMEDIDA, CCG_UNID' +
        'ADEMEDIDA)'
      'values'
      
        '  (:CCG_CODIGO, :CCG_CTE, :CCG_QUANTIDADE, :CCG_TIPOMEDIDA, :CCG' +
        '_UNIDADEMEDIDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CCG_CODIGO,'
      '  CCG_CTE,'
      '  CCG_QUANTIDADE,'
      '  CCG_TIPOMEDIDA,'
      '  CCG_UNIDADEMEDIDA'
      'from CTECARGA '
      'where'
      '  CCG_CODIGO = :CCG_CODIGO')
    SelectSQL.Strings = (
      'select * from CTECARGA'
      'where CCG_CTE=:CTE_CODIGO'
      'order by CCG_CODIGO')
    ModifySQL.Strings = (
      'update CTECARGA'
      'set'
      '  CCG_CODIGO = :CCG_CODIGO,'
      '  CCG_CTE = :CCG_CTE,'
      '  CCG_QUANTIDADE = :CCG_QUANTIDADE,'
      '  CCG_TIPOMEDIDA = :CCG_TIPOMEDIDA,'
      '  CCG_UNIDADEMEDIDA = :CCG_UNIDADEMEDIDA'
      'where'
      '  CCG_CODIGO = :OLD_CCG_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CCG_CODIGO'
    GeneratorField.Generator = 'GEN_CTECARGA'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 1184
    Top = 24
    object TBCteCargaCCG_CODIGO: TIntegerField
      FieldName = 'CCG_CODIGO'
      Origin = '"CONHECIMENTOSCARGA"."CCG_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteCargaCCG_CTE: TIntegerField
      FieldName = 'CCG_CTE'
      Origin = '"CTECARGA"."CCG_CTE"'
      Required = True
    end
    object TBCteCargaCCG_UNIDADEMEDIDA: TIBStringField
      FieldName = 'CCG_UNIDADEMEDIDA'
      Origin = '"CONHECIMENTOSCARGA"."CCG_UNIDADEMEDIDA"'
    end
    object TBCteCargaCCG_TIPOMEDIDA: TIBStringField
      FieldName = 'CCG_TIPOMEDIDA'
      Origin = '"CONHECIMENTOSCARGA"."CCG_TIPOMEDIDA"'
    end
    object TBCteCargaCCG_QUANTIDADE: TIBBCDField
      FieldName = 'CCG_QUANTIDADE'
      Origin = '"CONHECIMENTOSCARGA"."CCG_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
  end
  object DSCteCarga: TDataSource
    DataSet = TBCteCarga
    Left = 1184
    Top = 72
  end
  object TRCteCarga: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1184
    Top = 120
  end
  object TRAtendimentos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 120
  end
  object DSAtendimentos: TDataSource
    DataSet = TBAtendimentos
    OnStateChange = DSAtendimentosStateChange
    OnDataChange = DSAtendimentosDataChange
    Left = 160
    Top = 72
  end
  object TBAtendimentos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRAtendimentos
    AfterDelete = TBAtendimentosAfterDelete
    AfterInsert = TBAtendimentosAfterInsert
    AfterPost = TBAtendimentosAfterPost
    BeforeEdit = TBAtendimentosBeforeEdit
    BeforeInsert = TBAtendimentosBeforeInsert
    BeforePost = TBAtendimentosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ATENDIMENTOS'
      'where'
      '  ATE_CODIGO = :OLD_ATE_CODIGO')
    InsertSQL.Strings = (
      'insert into ATENDIMENTOS'
      
        '  (ATE_AULA, ATE_AULADATA, ATE_AULAHORA, ATE_CLIENTE, ATE_CODIGO' +
        ', ATE_CURSO, '
      
        '   ATE_DTATUALIZACAO, ATE_DTCADASTRO, ATE_MAILING, ATE_NIVELESCR' +
        'ITO, ATE_NIVELORAL, '
      
        '   ATE_OBSERVACOES, ATE_TESTEESCRITO, ATE_TESTEESCRITODATA, ATE_' +
        'TESTEESCRITOHORA, '
      
        '   ATE_TESTEORAL, ATE_TESTEORALDATA, ATE_TESTEORALHORA, ATE_USUA' +
        'RIO, ATE_VENDEDOR)'
      'values'
      
        '  (:ATE_AULA, :ATE_AULADATA, :ATE_AULAHORA, :ATE_CLIENTE, :ATE_C' +
        'ODIGO, '
      
        '   :ATE_CURSO, :ATE_DTATUALIZACAO, :ATE_DTCADASTRO, :ATE_MAILING' +
        ', :ATE_NIVELESCRITO, '
      
        '   :ATE_NIVELORAL, :ATE_OBSERVACOES, :ATE_TESTEESCRITO, :ATE_TES' +
        'TEESCRITODATA, '
      
        '   :ATE_TESTEESCRITOHORA, :ATE_TESTEORAL, :ATE_TESTEORALDATA, :A' +
        'TE_TESTEORALHORA, '
      '   :ATE_USUARIO, :ATE_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ATE_AULA,'
      '  ATE_AULADATA,'
      '  ATE_AULAHORA,'
      '  ATE_CLIENTE,'
      '  ATE_CODIGO,'
      '  ATE_CURSO,'
      '  ATE_DTATUALIZACAO,'
      '  ATE_DTCADASTRO,'
      '  ATE_MAILING,'
      '  ATE_NIVELESCRITO,'
      '  ATE_NIVELORAL,'
      '  ATE_OBSERVACOES,'
      '  ATE_TESTEESCRITO,'
      '  ATE_TESTEESCRITODATA,'
      '  ATE_TESTEESCRITOHORA,'
      '  ATE_TESTEORAL,'
      '  ATE_TESTEORALDATA,'
      '  ATE_TESTEORALHORA,'
      '  ATE_USUARIO,'
      '  ATE_VENDEDOR'
      'from ATENDIMENTOS '
      'where'
      '  ATE_CODIGO = :ATE_CODIGO')
    SelectSQL.Strings = (
      'select '
      'ATE_AULA,'
      'ATE_AULADATA,'
      'ATE_AULAHORA,'
      'ATE_CLIENTE,'
      'ATE_CODIGO,'
      'ATE_CURSO,'
      'ATE_DTATUALIZACAO,'
      'ATE_DTCADASTRO,'
      'ATE_MAILING,'
      'ATE_NIVELESCRITO,'
      'ATE_NIVELORAL,'
      'ATE_OBSERVACOES,'
      'ATE_TESTEESCRITO,'
      'ATE_TESTEESCRITODATA,'
      'ATE_TESTEESCRITOHORA,'
      'ATE_TESTEORAL,'
      'ATE_TESTEORALDATA,'
      'ATE_TESTEORALHORA,'
      'ATE_USUARIO,'
      'ATE_VENDEDOR,'
      'CLI_NOME,'
      'CUR_DESCRICAO,'
      'MAI_DESCRICAO,'
      'VEN_NOME from ATENDIMENTOS'
      'left join CLIENTES on ATE_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO'
      'left join MAILINGS on ATE_MAILING=MAI_CODIGO'
      'left join CURSOS on ATE_CURSO=CUR_CODIGO'
      'where ATE_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update ATENDIMENTOS'
      'set'
      '  ATE_AULA = :ATE_AULA,'
      '  ATE_AULADATA = :ATE_AULADATA,'
      '  ATE_AULAHORA = :ATE_AULAHORA,'
      '  ATE_CLIENTE = :ATE_CLIENTE,'
      '  ATE_CODIGO = :ATE_CODIGO,'
      '  ATE_CURSO = :ATE_CURSO,'
      '  ATE_DTATUALIZACAO = :ATE_DTATUALIZACAO,'
      '  ATE_DTCADASTRO = :ATE_DTCADASTRO,'
      '  ATE_MAILING = :ATE_MAILING,'
      '  ATE_NIVELESCRITO = :ATE_NIVELESCRITO,'
      '  ATE_NIVELORAL = :ATE_NIVELORAL,'
      '  ATE_OBSERVACOES = :ATE_OBSERVACOES,'
      '  ATE_TESTEESCRITO = :ATE_TESTEESCRITO,'
      '  ATE_TESTEESCRITODATA = :ATE_TESTEESCRITODATA,'
      '  ATE_TESTEESCRITOHORA = :ATE_TESTEESCRITOHORA,'
      '  ATE_TESTEORAL = :ATE_TESTEORAL,'
      '  ATE_TESTEORALDATA = :ATE_TESTEORALDATA,'
      '  ATE_TESTEORALHORA = :ATE_TESTEORALHORA,'
      '  ATE_USUARIO = :ATE_USUARIO,'
      '  ATE_VENDEDOR = :ATE_VENDEDOR'
      'where'
      '  ATE_CODIGO = :OLD_ATE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ATE_CODIGO'
    GeneratorField.Generator = 'GEN_ATENDIMENTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 160
    Top = 24
    object TBAtendimentosATE_AULA: TIBStringField
      FieldName = 'ATE_AULA'
      Origin = '"ATENDIMENTOS"."ATE_AULA"'
      Size = 1
    end
    object TBAtendimentosATE_AULADATA: TDateField
      FieldName = 'ATE_AULADATA'
      Origin = '"ATENDIMENTOS"."ATE_AULADATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_AULAHORA: TTimeField
      FieldName = 'ATE_AULAHORA'
      Origin = '"ATENDIMENTOS"."ATE_AULAHORA"'
      EditMask = '!99:99:00;1;_'
    end
    object TBAtendimentosATE_CLIENTE: TIntegerField
      FieldName = 'ATE_CLIENTE'
      Origin = '"ATENDIMENTOS"."ATE_CLIENTE"'
      Required = True
    end
    object TBAtendimentosATE_CODIGO: TIntegerField
      FieldName = 'ATE_CODIGO'
      Origin = '"ATENDIMENTOS"."ATE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAtendimentosATE_CURSO: TIntegerField
      FieldName = 'ATE_CURSO'
      Origin = '"ATENDIMENTOS"."ATE_CURSO"'
      Required = True
    end
    object TBAtendimentosATE_DTATUALIZACAO: TDateField
      FieldName = 'ATE_DTATUALIZACAO'
      Origin = '"ATENDIMENTOS"."ATE_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_DTCADASTRO: TDateField
      FieldName = 'ATE_DTCADASTRO'
      Origin = '"ATENDIMENTOS"."ATE_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_MAILING: TIntegerField
      FieldName = 'ATE_MAILING'
      Origin = '"ATENDIMENTOS"."ATE_MAILING"'
      Required = True
    end
    object TBAtendimentosATE_NIVELESCRITO: TIBStringField
      FieldName = 'ATE_NIVELESCRITO'
      Origin = '"ATENDIMENTOS"."ATE_NIVELESCRITO"'
      Size = 5
    end
    object TBAtendimentosATE_NIVELORAL: TIBStringField
      FieldName = 'ATE_NIVELORAL'
      Origin = '"ATENDIMENTOS"."ATE_NIVELORAL"'
      Size = 5
    end
    object TBAtendimentosATE_OBSERVACOES: TWideMemoField
      FieldName = 'ATE_OBSERVACOES'
      Origin = '"ATENDIMENTOS"."ATE_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBAtendimentosATE_TESTEESCRITO: TIBStringField
      FieldName = 'ATE_TESTEESCRITO'
      Origin = '"ATENDIMENTOS"."ATE_TESTEESCRITO"'
      Size = 1
    end
    object TBAtendimentosATE_TESTEESCRITODATA: TDateField
      FieldName = 'ATE_TESTEESCRITODATA'
      Origin = '"ATENDIMENTOS"."ATE_TESTEESCRITODATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_TESTEESCRITOHORA: TTimeField
      FieldName = 'ATE_TESTEESCRITOHORA'
      Origin = '"ATENDIMENTOS"."ATE_TESTEESCRITOHORA"'
      EditMask = '!99:99:99;1;_'
    end
    object TBAtendimentosATE_TESTEORAL: TIBStringField
      FieldName = 'ATE_TESTEORAL'
      Origin = '"ATENDIMENTOS"."ATE_TESTEORAL"'
      Size = 1
    end
    object TBAtendimentosATE_TESTEORALDATA: TDateField
      FieldName = 'ATE_TESTEORALDATA'
      Origin = '"ATENDIMENTOS"."ATE_TESTEORALDATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_TESTEORALHORA: TTimeField
      FieldName = 'ATE_TESTEORALHORA'
      Origin = '"ATENDIMENTOS"."ATE_TESTEORALHORA"'
      EditMask = '!99:99:99;1;_'
    end
    object TBAtendimentosATE_USUARIO: TIBStringField
      FieldName = 'ATE_USUARIO'
      Origin = '"ATENDIMENTOS"."ATE_USUARIO"'
    end
    object TBAtendimentosATE_VENDEDOR: TIntegerField
      FieldName = 'ATE_VENDEDOR'
      Origin = '"ATENDIMENTOS"."ATE_VENDEDOR"'
      Required = True
    end
    object TBAtendimentosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBAtendimentosCUR_DESCRICAO: TIBStringField
      FieldName = 'CUR_DESCRICAO'
      Origin = '"CURSOS"."CUR_DESCRICAO"'
      Size = 50
    end
    object TBAtendimentosMAI_DESCRICAO: TIBStringField
      FieldName = 'MAI_DESCRICAO'
      Origin = '"MAILINGS"."MAI_DESCRICAO"'
      Size = 50
    end
    object TBAtendimentosVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object TBCursos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCursos
    AfterDelete = TBCursosAfterDelete
    AfterInsert = TBCursosAfterInsert
    AfterPost = TBCursosAfterPost
    BeforeEdit = TBCursosBeforeEdit
    BeforeInsert = TBCursosBeforeInsert
    BeforePost = TBCursosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CURSOS'
      'where'
      '  CUR_CODIGO = :OLD_CUR_CODIGO')
    InsertSQL.Strings = (
      'insert into CURSOS'
      
        '  (CUR_CODIGO, CUR_DESCRICAO, CUR_DTATUALIZACAO, CUR_DTCADASTRO,' +
        ' CUR_STATUS, '
      '   CUR_USUARIO)'
      'values'
      
        '  (:CUR_CODIGO, :CUR_DESCRICAO, :CUR_DTATUALIZACAO, :CUR_DTCADAS' +
        'TRO, :CUR_STATUS, '
      '   :CUR_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CUR_CODIGO,'
      '  CUR_DESCRICAO,'
      '  CUR_DTCADASTRO,'
      '  CUR_DTATUALIZACAO,'
      '  CUR_USUARIO,'
      '  CUR_STATUS'
      'from CURSOS '
      'where'
      '  CUR_CODIGO = :CUR_CODIGO')
    SelectSQL.Strings = (
      'select * from CURSOS'
      'where CUR_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CURSOS'
      'set'
      '  CUR_CODIGO = :CUR_CODIGO,'
      '  CUR_DESCRICAO = :CUR_DESCRICAO,'
      '  CUR_DTATUALIZACAO = :CUR_DTATUALIZACAO,'
      '  CUR_DTCADASTRO = :CUR_DTCADASTRO,'
      '  CUR_STATUS = :CUR_STATUS,'
      '  CUR_USUARIO = :CUR_USUARIO'
      'where'
      '  CUR_CODIGO = :OLD_CUR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CUR_CODIGO'
    GeneratorField.Generator = 'GEN_CURSOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 608
    Top = 280
    object TBCursosCUR_CODIGO: TIntegerField
      FieldName = 'CUR_CODIGO'
      Origin = '"CURSOS"."CUR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCursosCUR_DESCRICAO: TIBStringField
      FieldName = 'CUR_DESCRICAO'
      Origin = '"CURSOS"."CUR_DESCRICAO"'
      Size = 50
    end
    object TBCursosCUR_DTATUALIZACAO: TDateField
      FieldName = 'CUR_DTATUALIZACAO'
      Origin = '"CURSOS"."CUR_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCursosCUR_DTCADASTRO: TDateField
      FieldName = 'CUR_DTCADASTRO'
      Origin = '"CURSOS"."CUR_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCursosCUR_STATUS: TIBStringField
      FieldName = 'CUR_STATUS'
      Origin = '"CURSOS"."CUR_STATUS"'
      Size = 1
    end
    object TBCursosCUR_USUARIO: TIBStringField
      FieldName = 'CUR_USUARIO'
      Origin = '"CURSOS"."CUR_USUARIO"'
    end
  end
  object DSCursos: TDataSource
    DataSet = TBCursos
    OnStateChange = DSCursosStateChange
    Left = 608
    Top = 328
  end
  object TRCursos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 608
    Top = 376
  end
  object TBAssuntos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRAssuntos
    AfterDelete = TBAssuntosAfterDelete
    AfterInsert = TBAssuntosAfterInsert
    AfterPost = TBAssuntosAfterPost
    BeforeEdit = TBAssuntosBeforeEdit
    BeforeInsert = TBAssuntosBeforeInsert
    BeforePost = TBAssuntosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ASSUNTOS'
      'where'
      '  ASS_CODIGO = :OLD_ASS_CODIGO')
    InsertSQL.Strings = (
      'insert into ASSUNTOS'
      
        '  (ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCADASTRO,' +
        ' ASS_STATUS, '
      '   ASS_TEXTO, ASS_USUARIO, ASS_HTML)'
      'values'
      
        '  (:ASS_CODIGO, :ASS_DESCRICAO, :ASS_DTATUALIZACAO, :ASS_DTCADAS' +
        'TRO, :ASS_STATUS, '
      '   :ASS_TEXTO, :ASS_USUARIO, :ASS_HTML)')
    RefreshSQL.Strings = (
      'Select '
      '  ASS_CODIGO,'
      '  ASS_DESCRICAO,'
      '  ASS_DTATUALIZACAO,'
      '  ASS_DTCADASTRO,'
      '  ASS_STATUS,'
      '  ASS_TEXTO,'
      '  ASS_USUARIO,'
      '  ASS_HTML'
      'from ASSUNTOS '
      'where'
      '  ASS_CODIGO = :ASS_CODIGO')
    SelectSQL.Strings = (
      'select * from ASSUNTOS'
      'where ASS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update ASSUNTOS'
      'set'
      '  ASS_CODIGO = :ASS_CODIGO,'
      '  ASS_DESCRICAO = :ASS_DESCRICAO,'
      '  ASS_DTATUALIZACAO = :ASS_DTATUALIZACAO,'
      '  ASS_DTCADASTRO = :ASS_DTCADASTRO,'
      '  ASS_STATUS = :ASS_STATUS,'
      '  ASS_TEXTO = :ASS_TEXTO,'
      '  ASS_USUARIO = :ASS_USUARIO,'
      '  ASS_HTML = :ASS_HTML'
      'where'
      '  ASS_CODIGO = :OLD_ASS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ASS_CODIGO'
    GeneratorField.Generator = 'GEN_ASSUNTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 24
    object TBAssuntosASS_CODIGO: TIntegerField
      FieldName = 'ASS_CODIGO'
      Origin = '"ASSUNTOS"."ASS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAssuntosASS_DESCRICAO: TIBStringField
      FieldName = 'ASS_DESCRICAO'
      Origin = '"ASSUNTOS"."ASS_DESCRICAO"'
      Size = 50
    end
    object TBAssuntosASS_DTATUALIZACAO: TDateField
      FieldName = 'ASS_DTATUALIZACAO'
      Origin = '"ASSUNTOS"."ASS_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAssuntosASS_DTCADASTRO: TDateField
      FieldName = 'ASS_DTCADASTRO'
      Origin = '"ASSUNTOS"."ASS_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAssuntosASS_HTML: TIBStringField
      FieldName = 'ASS_HTML'
      Origin = '"ASSUNTOS"."ASS_HTML"'
      Size = 1
    end
    object TBAssuntosASS_STATUS: TIBStringField
      FieldName = 'ASS_STATUS'
      Origin = '"ASSUNTOS"."ASS_STATUS"'
      Size = 1
    end
    object TBAssuntosASS_TEXTO: TWideMemoField
      FieldName = 'ASS_TEXTO'
      Origin = '"ASSUNTOS"."ASS_TEXTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBAssuntosASS_USUARIO: TIBStringField
      FieldName = 'ASS_USUARIO'
      Origin = '"ASSUNTOS"."ASS_USUARIO"'
    end
  end
  object DSAssuntos: TDataSource
    DataSet = TBAssuntos
    OnStateChange = DSAssuntosStateChange
    OnDataChange = DSAssuntosDataChange
    Left = 96
    Top = 72
  end
  object TRAssuntos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 120
  end
  object TBEmailsContas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TREmailsContas
    AfterDelete = TBEmailsContasAfterDelete
    AfterInsert = TBEmailsContasAfterInsert
    AfterPost = TBEmailsContasAfterPost
    BeforeEdit = TBEmailsContasBeforeEdit
    BeforeInsert = TBEmailsContasBeforeInsert
    BeforePost = TBEmailsContasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EMAILSCONTAS'
      'where'
      '  EMC_CODIGO = :OLD_EMC_CODIGO')
    InsertSQL.Strings = (
      'insert into EMAILSCONTAS'
      
        '  (EMC_CODIGO, EMC_ASSINATURA, EMC_CONFIRMACAO, EMC_DTATUALIZACA' +
        'O, EMC_DTCADASTRO, '
      
        '   EMC_EMAIL, EMC_LOGIN, EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_RE' +
        'PLYTO, '
      
        '   EMC_SENHA, EMC_SMTP, EMC_SMTPPORTA, EMC_SSL, EMC_STATUS, EMC_' +
        'TIMEOUT, '
      '   EMC_USUARIO, EMC_TLS)'
      'values'
      
        '  (:EMC_CODIGO, :EMC_ASSINATURA, :EMC_CONFIRMACAO, :EMC_DTATUALI' +
        'ZACAO, '
      
        '   :EMC_DTCADASTRO, :EMC_EMAIL, :EMC_LOGIN, :EMC_NOME, :EMC_POP,' +
        ' :EMC_POPPORTA, '
      
        '   :EMC_REPLYTO, :EMC_SENHA, :EMC_SMTP, :EMC_SMTPPORTA, :EMC_SSL' +
        ', :EMC_STATUS, '
      '   :EMC_TIMEOUT, :EMC_USUARIO, :EMC_TLS)')
    RefreshSQL.Strings = (
      'Select '
      '  EMC_CODIGO,'
      '  EMC_ASSINATURA,'
      '  EMC_CONFIRMACAO,'
      '  EMC_DTATUALIZACAO,'
      '  EMC_DTCADASTRO,'
      '  EMC_EMAIL,'
      '  EMC_LOGIN,'
      '  EMC_NOME,'
      '  EMC_POP,'
      '  EMC_POPPORTA,'
      '  EMC_REPLYTO,'
      '  EMC_SENHA,'
      '  EMC_SMTP,'
      '  EMC_SMTPPORTA,'
      '  EMC_SSL,'
      '  EMC_STATUS,'
      '  EMC_TIMEOUT,'
      '  EMC_USUARIO,'
      '  EMC_TLS'
      'from EMAILSCONTAS '
      'where'
      '  EMC_CODIGO = :EMC_CODIGO')
    SelectSQL.Strings = (
      'select * from EMAILSCONTAS'
      'where EMC_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update EMAILSCONTAS'
      'set'
      '  EMC_CODIGO = :EMC_CODIGO,'
      '  EMC_ASSINATURA = :EMC_ASSINATURA,'
      '  EMC_CONFIRMACAO = :EMC_CONFIRMACAO,'
      '  EMC_DTATUALIZACAO = :EMC_DTATUALIZACAO,'
      '  EMC_DTCADASTRO = :EMC_DTCADASTRO,'
      '  EMC_EMAIL = :EMC_EMAIL,'
      '  EMC_LOGIN = :EMC_LOGIN,'
      '  EMC_NOME = :EMC_NOME,'
      '  EMC_POP = :EMC_POP,'
      '  EMC_POPPORTA = :EMC_POPPORTA,'
      '  EMC_REPLYTO = :EMC_REPLYTO,'
      '  EMC_SENHA = :EMC_SENHA,'
      '  EMC_SMTP = :EMC_SMTP,'
      '  EMC_SMTPPORTA = :EMC_SMTPPORTA,'
      '  EMC_SSL = :EMC_SSL,'
      '  EMC_STATUS = :EMC_STATUS,'
      '  EMC_TIMEOUT = :EMC_TIMEOUT,'
      '  EMC_USUARIO = :EMC_USUARIO,'
      '  EMC_TLS = :EMC_TLS'
      'where'
      '  EMC_CODIGO = :OLD_EMC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'EMC_CODIGO'
    GeneratorField.Generator = 'GEN_EMAILSCONTAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 736
    Top = 280
    object TBEmailsContasEMC_ASSINATURA: TWideMemoField
      FieldName = 'EMC_ASSINATURA'
      Origin = '"EMAILSCONTAS"."EMC_ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBEmailsContasEMC_CODIGO: TIntegerField
      FieldName = 'EMC_CODIGO'
      Origin = '"EMAILSCONTAS"."EMC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmailsContasEMC_CONFIRMACAO: TIBStringField
      FieldName = 'EMC_CONFIRMACAO'
      Origin = '"EMAILSCONTAS"."EMC_CONFIRMACAO"'
      Size = 1
    end
    object TBEmailsContasEMC_DTATUALIZACAO: TDateField
      FieldName = 'EMC_DTATUALIZACAO'
      Origin = '"EMAILSCONTAS"."EMC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsContasEMC_DTCADASTRO: TDateField
      FieldName = 'EMC_DTCADASTRO'
      Origin = '"EMAILSCONTAS"."EMC_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsContasEMC_EMAIL: TIBStringField
      FieldName = 'EMC_EMAIL'
      Origin = '"EMAILSCONTAS"."EMC_EMAIL"'
      Size = 100
    end
    object TBEmailsContasEMC_LOGIN: TIBStringField
      FieldName = 'EMC_LOGIN'
      Origin = '"EMAILSCONTAS"."EMC_LOGIN"'
      Size = 100
    end
    object TBEmailsContasEMC_NOME: TIBStringField
      FieldName = 'EMC_NOME'
      Origin = '"EMAILSCONTAS"."EMC_NOME"'
      Size = 50
    end
    object TBEmailsContasEMC_POP: TIBStringField
      FieldName = 'EMC_POP'
      Origin = '"EMAILSCONTAS"."EMC_POP"'
      Size = 50
    end
    object TBEmailsContasEMC_POPPORTA: TIntegerField
      FieldName = 'EMC_POPPORTA'
      Origin = '"EMAILSCONTAS"."EMC_POPPORTA"'
    end
    object TBEmailsContasEMC_REPLYTO: TIBStringField
      FieldName = 'EMC_REPLYTO'
      Origin = '"EMAILSCONTAS"."EMC_REPLYTO"'
      Size = 100
    end
    object TBEmailsContasEMC_SENHA: TIBStringField
      FieldName = 'EMC_SENHA'
      Origin = '"EMAILSCONTAS"."EMC_SENHA"'
      Size = 40
    end
    object TBEmailsContasEMC_SMTP: TIBStringField
      FieldName = 'EMC_SMTP'
      Origin = '"EMAILSCONTAS"."EMC_SMTP"'
      Size = 50
    end
    object TBEmailsContasEMC_SMTPPORTA: TIntegerField
      FieldName = 'EMC_SMTPPORTA'
      Origin = '"EMAILSCONTAS"."EMC_SMTPPORTA"'
    end
    object TBEmailsContasEMC_SSL: TIBStringField
      FieldName = 'EMC_SSL'
      Origin = '"EMAILSCONTAS"."EMC_SSL"'
      Size = 1
    end
    object TBEmailsContasEMC_STATUS: TIBStringField
      FieldName = 'EMC_STATUS'
      Origin = '"EMAILSCONTAS"."EMC_STATUS"'
      Size = 1
    end
    object TBEmailsContasEMC_TIMEOUT: TIntegerField
      FieldName = 'EMC_TIMEOUT'
      Origin = '"EMAILSCONTAS"."EMC_TIMEOUT"'
    end
    object TBEmailsContasEMC_TLS: TIBStringField
      FieldName = 'EMC_TLS'
      Origin = '"EMAILSCONTAS"."EMC_TLS"'
      Size = 1
    end
    object TBEmailsContasEMC_USUARIO: TIBStringField
      FieldName = 'EMC_USUARIO'
      Origin = '"EMAILSCONTAS"."EMC_USUARIO"'
    end
  end
  object DSEmailsContas: TDataSource
    DataSet = TBEmailsContas
    OnStateChange = DSEmailsContasStateChange
    Left = 736
    Top = 328
  end
  object TREmailsContas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 376
  end
  object TBEmails: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TREmails
    AfterDelete = TBEmailsAfterDelete
    AfterInsert = TBEmailsAfterInsert
    AfterPost = TBEmailsAfterPost
    BeforeEdit = TBEmailsBeforeEdit
    BeforeInsert = TBEmailsBeforeInsert
    BeforePost = TBEmailsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EMAILS'
      'where'
      '  EMA_CODIGO = :OLD_EMA_CODIGO')
    InsertSQL.Strings = (
      'insert into EMAILS'
      
        '  (EMA_CODIGO, EMA_ASSUNTO, EMA_CLIENTE, EMA_EMAILCONTA, EMA_VEN' +
        'DEDOR, '
      
        '   EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, EMA_CONFIR' +
        'MACAO, '
      
        '   EMA_COPIAOCULTA, EMA_DESTINATARIOS, EMA_DTATUALIZACAO, EMA_DT' +
        'CADASTRO, '
      
        '   EMA_DTULTENVIO, EMA_ENVIADO, EMA_MENSAGEM, EMA_USUARIO, EMA_H' +
        'TML)'
      'values'
      
        '  (:EMA_CODIGO, :EMA_ASSUNTO, :EMA_CLIENTE, :EMA_EMAILCONTA, :EM' +
        'A_VENDEDOR, '
      
        '   :EMA_ANEXO, :EMA_ANEXO2, :EMA_ANEXO3, :EMA_ASSINATURA, :EMA_C' +
        'ONFIRMACAO, '
      
        '   :EMA_COPIAOCULTA, :EMA_DESTINATARIOS, :EMA_DTATUALIZACAO, :EM' +
        'A_DTCADASTRO, '
      
        '   :EMA_DTULTENVIO, :EMA_ENVIADO, :EMA_MENSAGEM, :EMA_USUARIO, :' +
        'EMA_HTML)')
    RefreshSQL.Strings = (
      'Select '
      '  EMA_CODIGO,'
      '  EMA_ASSUNTO,'
      '  EMA_CLIENTE,'
      '  EMA_EMAILCONTA,'
      '  EMA_VENDEDOR,'
      '  EMA_ANEXO,'
      '  EMA_ANEXO2,'
      '  EMA_ANEXO3,'
      '  EMA_ASSINATURA,'
      '  EMA_CONFIRMACAO,'
      '  EMA_COPIAOCULTA,'
      '  EMA_DESTINATARIOS,'
      '  EMA_DTATUALIZACAO,'
      '  EMA_DTCADASTRO,'
      '  EMA_DTULTENVIO,'
      '  EMA_ENVIADO,'
      '  EMA_MENSAGEM,'
      '  EMA_USUARIO,'
      '  EMA_HTML'
      'from EMAILS '
      'where'
      '  EMA_CODIGO = :EMA_CODIGO')
    SelectSQL.Strings = (
      'select '
      'EMA_ANEXO,'
      'EMA_ANEXO2,'
      'EMA_ANEXO3,'
      'EMA_ASSINATURA,'
      'EMA_ASSUNTO,'
      'EMA_CLIENTE,'
      'EMA_CODIGO,'
      'EMA_CONFIRMACAO,'
      'EMA_COPIAOCULTA,'
      'EMA_DESTINATARIOS,'
      'EMA_DTATUALIZACAO,'
      'EMA_DTCADASTRO,'
      'EMA_DTULTENVIO,'
      'EMA_EMAILCONTA,'
      'EMA_ENVIADO,'
      'EMA_HTML,'
      'EMA_MENSAGEM,'
      'EMA_USUARIO,'
      'EMA_VENDEDOR,'
      'ASS_DESCRICAO,'
      'CLI_NOME,'
      'EMC_ASSINATURA,'
      'EMC_CONFIRMACAO,'
      'EMC_EMAIL,'
      'EMC_LOGIN,'
      'EMC_NOME,'
      'EMC_POP,'
      'EMC_POPPORTA,'
      'EMC_REPLYTO,'
      'EMC_SENHA,'
      'EMC_SMTP,'
      'EMC_SMTPPORTA,'
      'EMC_SSL,'
      'EMC_TLS,'
      'VEN_NOME'
      'from EMAILS'
      'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO'
      'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO'
      'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO'
      'where EMA_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update EMAILS'
      'set'
      '  EMA_CODIGO = :EMA_CODIGO,'
      '  EMA_ASSUNTO = :EMA_ASSUNTO,'
      '  EMA_CLIENTE = :EMA_CLIENTE,'
      '  EMA_EMAILCONTA = :EMA_EMAILCONTA,'
      '  EMA_VENDEDOR = :EMA_VENDEDOR,'
      '  EMA_ANEXO = :EMA_ANEXO,'
      '  EMA_ANEXO2 = :EMA_ANEXO2,'
      '  EMA_ANEXO3 = :EMA_ANEXO3,'
      '  EMA_ASSINATURA = :EMA_ASSINATURA,'
      '  EMA_CONFIRMACAO = :EMA_CONFIRMACAO,'
      '  EMA_COPIAOCULTA = :EMA_COPIAOCULTA,'
      '  EMA_DESTINATARIOS = :EMA_DESTINATARIOS,'
      '  EMA_DTATUALIZACAO = :EMA_DTATUALIZACAO,'
      '  EMA_DTCADASTRO = :EMA_DTCADASTRO,'
      '  EMA_DTULTENVIO = :EMA_DTULTENVIO,'
      '  EMA_ENVIADO = :EMA_ENVIADO,'
      '  EMA_MENSAGEM = :EMA_MENSAGEM,'
      '  EMA_USUARIO = :EMA_USUARIO,'
      '  EMA_HTML = :EMA_HTML'
      'where'
      '  EMA_CODIGO = :OLD_EMA_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'EMA_CODIGO'
    GeneratorField.Generator = 'GEN_EMAILS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 672
    Top = 280
    object TBEmailsEMA_ANEXO: TIBStringField
      FieldName = 'EMA_ANEXO'
      Origin = '"EMAILS"."EMA_ANEXO"'
      Size = 200
    end
    object TBEmailsEMA_ANEXO2: TIBStringField
      FieldName = 'EMA_ANEXO2'
      Origin = '"EMAILS"."EMA_ANEXO2"'
      Size = 200
    end
    object TBEmailsEMA_ANEXO3: TIBStringField
      FieldName = 'EMA_ANEXO3'
      Origin = '"EMAILS"."EMA_ANEXO3"'
      Size = 200
    end
    object TBEmailsEMA_ASSINATURA: TWideMemoField
      FieldName = 'EMA_ASSINATURA'
      Origin = '"EMAILS"."EMA_ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBEmailsEMA_ASSUNTO: TIntegerField
      FieldName = 'EMA_ASSUNTO'
      Origin = '"EMAILS"."EMA_ASSUNTO"'
      Required = True
    end
    object TBEmailsEMA_CLIENTE: TIntegerField
      FieldName = 'EMA_CLIENTE'
      Origin = '"EMAILS"."EMA_CLIENTE"'
      Required = True
    end
    object TBEmailsEMA_CODIGO: TIntegerField
      FieldName = 'EMA_CODIGO'
      Origin = '"EMAILS"."EMA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmailsEMA_CONFIRMACAO: TIBStringField
      FieldName = 'EMA_CONFIRMACAO'
      Origin = '"EMAILS"."EMA_CONFIRMACAO"'
      Size = 1
    end
    object TBEmailsEMA_COPIAOCULTA: TIBStringField
      FieldName = 'EMA_COPIAOCULTA'
      Origin = '"EMAILS"."EMA_COPIAOCULTA"'
      Size = 100
    end
    object TBEmailsEMA_DESTINATARIOS: TIBStringField
      FieldName = 'EMA_DESTINATARIOS'
      Origin = '"EMAILS"."EMA_DESTINATARIOS"'
      Size = 255
    end
    object TBEmailsEMA_DTATUALIZACAO: TDateField
      FieldName = 'EMA_DTATUALIZACAO'
      Origin = '"EMAILS"."EMA_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsEMA_DTCADASTRO: TDateField
      FieldName = 'EMA_DTCADASTRO'
      Origin = '"EMAILS"."EMA_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsEMA_DTULTENVIO: TDateField
      FieldName = 'EMA_DTULTENVIO'
      Origin = '"EMAILS"."EMA_DTULTENVIO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsEMA_EMAILCONTA: TIntegerField
      FieldName = 'EMA_EMAILCONTA'
      Origin = '"EMAILS"."EMA_EMAILCONTA"'
      Required = True
    end
    object TBEmailsEMA_ENVIADO: TIBStringField
      FieldName = 'EMA_ENVIADO'
      Origin = '"EMAILS"."EMA_ENVIADO"'
      Size = 1
    end
    object TBEmailsEMA_HTML: TIBStringField
      FieldName = 'EMA_HTML'
      Origin = '"EMAILS"."EMA_HTML"'
      Size = 1
    end
    object TBEmailsEMA_MENSAGEM: TWideMemoField
      FieldName = 'EMA_MENSAGEM'
      Origin = '"EMAILS"."EMA_MENSAGEM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBEmailsEMA_USUARIO: TIBStringField
      FieldName = 'EMA_USUARIO'
      Origin = '"EMAILS"."EMA_USUARIO"'
    end
    object TBEmailsEMA_VENDEDOR: TIntegerField
      FieldName = 'EMA_VENDEDOR'
      Origin = '"EMAILS"."EMA_VENDEDOR"'
      Required = True
    end
    object TBEmailsASS_DESCRICAO: TIBStringField
      FieldName = 'ASS_DESCRICAO'
      Origin = '"ASSUNTOS"."ASS_DESCRICAO"'
      Size = 50
    end
    object TBEmailsCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBEmailsEMC_ASSINATURA: TWideMemoField
      FieldName = 'EMC_ASSINATURA'
      Origin = '"EMAILSCONTAS"."EMC_ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBEmailsEMC_CONFIRMACAO: TIBStringField
      FieldName = 'EMC_CONFIRMACAO'
      Origin = '"EMAILSCONTAS"."EMC_CONFIRMACAO"'
      Size = 1
    end
    object TBEmailsEMC_EMAIL: TIBStringField
      FieldName = 'EMC_EMAIL'
      Origin = '"EMAILSCONTAS"."EMC_EMAIL"'
      Size = 100
    end
    object TBEmailsEMC_LOGIN: TIBStringField
      FieldName = 'EMC_LOGIN'
      Origin = '"EMAILSCONTAS"."EMC_LOGIN"'
      Size = 100
    end
    object TBEmailsEMC_NOME: TIBStringField
      FieldName = 'EMC_NOME'
      Origin = '"EMAILSCONTAS"."EMC_NOME"'
      Size = 50
    end
    object TBEmailsEMC_POP: TIBStringField
      FieldName = 'EMC_POP'
      Origin = '"EMAILSCONTAS"."EMC_POP"'
      Size = 50
    end
    object TBEmailsEMC_POPPORTA: TIntegerField
      FieldName = 'EMC_POPPORTA'
      Origin = '"EMAILSCONTAS"."EMC_POPPORTA"'
    end
    object TBEmailsEMC_REPLYTO: TIBStringField
      FieldName = 'EMC_REPLYTO'
      Origin = '"EMAILSCONTAS"."EMC_REPLYTO"'
      Size = 100
    end
    object TBEmailsEMC_SENHA: TIBStringField
      FieldName = 'EMC_SENHA'
      Origin = '"EMAILSCONTAS"."EMC_SENHA"'
      Size = 40
    end
    object TBEmailsEMC_SMTP: TIBStringField
      FieldName = 'EMC_SMTP'
      Origin = '"EMAILSCONTAS"."EMC_SMTP"'
      Size = 50
    end
    object TBEmailsEMC_SMTPPORTA: TIntegerField
      FieldName = 'EMC_SMTPPORTA'
      Origin = '"EMAILSCONTAS"."EMC_SMTPPORTA"'
    end
    object TBEmailsEMC_SSL: TIBStringField
      FieldName = 'EMC_SSL'
      Origin = '"EMAILSCONTAS"."EMC_SSL"'
      Size = 1
    end
    object TBEmailsEMC_TLS: TIBStringField
      FieldName = 'EMC_TLS'
      Origin = '"EMAILSCONTAS"."EMC_TLS"'
      Size = 1
    end
    object TBEmailsVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSEmails: TDataSource
    DataSet = TBEmails
    OnStateChange = DSEmailsStateChange
    OnDataChange = DSEmailsDataChange
    Left = 672
    Top = 328
  end
  object TREmails: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 672
    Top = 376
  end
  object TBContratosPartes: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRContratosPartes
    AfterDelete = TBContratosPartesAfterDelete
    AfterInsert = TBContratosPartesAfterInsert
    AfterPost = TBContratosPartesAfterPost
    BeforePost = TBContratosPartesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CONTRATOS'
      'where'
      '  CTI_CODIGO = :OLD_CTI_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTRATOS'
      
        '  (CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, CTI_AVALISTA2' +
        'CPF, CTI_CODIGO, '
      
        '   CTI_DESCPARCELAPORC, CTI_DESCPARCELAQTDE, CTI_DESCPARCELAVALO' +
        'R, CTI_DESCPORCVECTO, '
      
        '   CTI_DIAVENCIMENTO, CTI_DTATUALIZACAO, CTI_DTCADASTRO, CTI_FIN' +
        'ALIDADE, '
      
        '   CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, CTI_LOCADORCEP, C' +
        'TI_LOCADORCIDADE, '
      
        '   CTI_LOCADORCIDADECODIGO, CTI_LOCADORCNPJ, CTI_LOCADORCOMPLEME' +
        'NTO, CTI_LOCADORCPF, '
      
        '   CTI_LOCADORENDERECO, CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVI' +
        'L, CTI_LOCADORNOME, '
      
        '   CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, CTI_MEMOPAGAR, CTI_' +
        'MEMORECEBER, '
      
        '   CTI_STATUS, CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF, CTI_TESTEMUN' +
        'HA2, CTI_TESTEMUNHA2CPF, '
      
        '   CTI_USUARIO, CTI_VALORALUGUEL, CTI_VALORALUGUELVECTO, CTI_VIG' +
        'ENCIAFIM, '
      '   CTI_VIGENCIAINICIO, CTI_VIGENCIATOTAL)'
      'values'
      
        '  (:CTI_AVALISTA1, :CTI_AVALISTA1CPF, :CTI_AVALISTA2, :CTI_AVALI' +
        'STA2CPF, '
      
        '   :CTI_CODIGO, :CTI_DESCPARCELAPORC, :CTI_DESCPARCELAQTDE, :CTI' +
        '_DESCPARCELAVALOR, '
      
        '   :CTI_DESCPORCVECTO, :CTI_DIAVENCIMENTO, :CTI_DTATUALIZACAO, :' +
        'CTI_DTCADASTRO, '
      
        '   :CTI_FINALIDADE, :CTI_IMOVEL, :CTI_LOCADOR, :CTI_LOCADORBAIRR' +
        'O, :CTI_LOCADORCEP, '
      
        '   :CTI_LOCADORCIDADE, :CTI_LOCADORCIDADECODIGO, :CTI_LOCADORCNP' +
        'J, :CTI_LOCADORCOMPLEMENTO, '
      
        '   :CTI_LOCADORCPF, :CTI_LOCADORENDERECO, :CTI_LOCADORESTADO, :C' +
        'TI_LOCADORESTADOCIVIL, '
      
        '   :CTI_LOCADORNOME, :CTI_LOCADORNUMERO, :CTI_LOCADORTIPOPESSOA,' +
        ' :CTI_MEMOPAGAR, '
      
        '   :CTI_MEMORECEBER, :CTI_STATUS, :CTI_TESTEMUNHA1, :CTI_TESTEMU' +
        'NHA1CPF, '
      
        '   :CTI_TESTEMUNHA2, :CTI_TESTEMUNHA2CPF, :CTI_USUARIO, :CTI_VAL' +
        'ORALUGUEL, '
      
        '   :CTI_VALORALUGUELVECTO, :CTI_VIGENCIAFIM, :CTI_VIGENCIAINICIO' +
        ', :CTI_VIGENCIATOTAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CTI_CODIGO,'
      '  CTI_IMOVEL,'
      '  CTI_LOCADOR,'
      '  CTI_LOCADORNOME,'
      '  CTI_LOCADORCPF,'
      '  CTI_LOCADORCNPJ,'
      '  CTI_LOCADORESTADOCIVIL,'
      '  CTI_LOCADORENDERECO,'
      '  CTI_LOCADORNUMERO,'
      '  CTI_LOCADORCOMPLEMENTO,'
      '  CTI_LOCADORBAIRRO,'
      '  CTI_LOCADORCIDADE,'
      '  CTI_LOCADORESTADO,'
      '  CTI_VIGENCIAINICIO,'
      '  CTI_VIGENCIAFIM,'
      '  CTI_VIGENCIATOTAL,'
      '  CTI_VALORALUGUEL,'
      '  CTI_VALORALUGUELVECTO,'
      '  CTI_DIAVENCIMENTO,'
      '  CTI_AVALISTA1,'
      '  CTI_AVALISTA1CPF,'
      '  CTI_AVALISTA2,'
      '  CTI_AVALISTA2CPF,'
      '  CTI_DTCADASTRO,'
      '  CTI_DTATUALIZACAO,'
      '  CTI_USUARIO,'
      '  CTI_LOCADORCEP,'
      '  CTI_LOCADORCIDADECODIGO,'
      '  CTI_STATUS,'
      '  CTI_DESCPARCELAQTDE,'
      '  CTI_DESCPARCELAVALOR,'
      '  CTI_DESCPARCELAPORC,'
      '  CTI_DESCPORCVECTO,'
      '  CTI_MEMORECEBER,'
      '  CTI_MEMOPAGAR,'
      '  CTI_TESTEMUNHA1,'
      '  CTI_TESTEMUNHA1CPF,'
      '  CTI_TESTEMUNHA2,'
      '  CTI_TESTEMUNHA2CPF,'
      '  CTI_LOCADORTIPOPESSOA,'
      '  CTI_FINALIDADE'
      'from CONTRATOS '
      'where'
      '  CTI_CODIGO = :CTI_CODIGO')
    SelectSQL.Strings = (
      'select * from CONTRATOSPARTES'
      'where CTP_CONTRATO=:CTI_CODIGO'
      'order by CTP_NOME')
    ModifySQL.Strings = (
      'update CONTRATOS'
      'set'
      '  CTI_AVALISTA1 = :CTI_AVALISTA1,'
      '  CTI_AVALISTA1CPF = :CTI_AVALISTA1CPF,'
      '  CTI_AVALISTA2 = :CTI_AVALISTA2,'
      '  CTI_AVALISTA2CPF = :CTI_AVALISTA2CPF,'
      '  CTI_CODIGO = :CTI_CODIGO,'
      '  CTI_DESCPARCELAPORC = :CTI_DESCPARCELAPORC,'
      '  CTI_DESCPARCELAQTDE = :CTI_DESCPARCELAQTDE,'
      '  CTI_DESCPARCELAVALOR = :CTI_DESCPARCELAVALOR,'
      '  CTI_DESCPORCVECTO = :CTI_DESCPORCVECTO,'
      '  CTI_DIAVENCIMENTO = :CTI_DIAVENCIMENTO,'
      '  CTI_DTATUALIZACAO = :CTI_DTATUALIZACAO,'
      '  CTI_DTCADASTRO = :CTI_DTCADASTRO,'
      '  CTI_FINALIDADE = :CTI_FINALIDADE,'
      '  CTI_IMOVEL = :CTI_IMOVEL,'
      '  CTI_LOCADOR = :CTI_LOCADOR,'
      '  CTI_LOCADORBAIRRO = :CTI_LOCADORBAIRRO,'
      '  CTI_LOCADORCEP = :CTI_LOCADORCEP,'
      '  CTI_LOCADORCIDADE = :CTI_LOCADORCIDADE,'
      '  CTI_LOCADORCIDADECODIGO = :CTI_LOCADORCIDADECODIGO,'
      '  CTI_LOCADORCNPJ = :CTI_LOCADORCNPJ,'
      '  CTI_LOCADORCOMPLEMENTO = :CTI_LOCADORCOMPLEMENTO,'
      '  CTI_LOCADORCPF = :CTI_LOCADORCPF,'
      '  CTI_LOCADORENDERECO = :CTI_LOCADORENDERECO,'
      '  CTI_LOCADORESTADO = :CTI_LOCADORESTADO,'
      '  CTI_LOCADORESTADOCIVIL = :CTI_LOCADORESTADOCIVIL,'
      '  CTI_LOCADORNOME = :CTI_LOCADORNOME,'
      '  CTI_LOCADORNUMERO = :CTI_LOCADORNUMERO,'
      '  CTI_LOCADORTIPOPESSOA = :CTI_LOCADORTIPOPESSOA,'
      '  CTI_MEMOPAGAR = :CTI_MEMOPAGAR,'
      '  CTI_MEMORECEBER = :CTI_MEMORECEBER,'
      '  CTI_STATUS = :CTI_STATUS,'
      '  CTI_TESTEMUNHA1 = :CTI_TESTEMUNHA1,'
      '  CTI_TESTEMUNHA1CPF = :CTI_TESTEMUNHA1CPF,'
      '  CTI_TESTEMUNHA2 = :CTI_TESTEMUNHA2,'
      '  CTI_TESTEMUNHA2CPF = :CTI_TESTEMUNHA2CPF,'
      '  CTI_USUARIO = :CTI_USUARIO,'
      '  CTI_VALORALUGUEL = :CTI_VALORALUGUEL,'
      '  CTI_VALORALUGUELVECTO = :CTI_VALORALUGUELVECTO,'
      '  CTI_VIGENCIAFIM = :CTI_VIGENCIAFIM,'
      '  CTI_VIGENCIAINICIO = :CTI_VIGENCIAINICIO,'
      '  CTI_VIGENCIATOTAL = :CTI_VIGENCIATOTAL'
      'where'
      '  CTI_CODIGO = :OLD_CTI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTL_CODIGO'
    GeneratorField.Generator = 'GEN_CONTRATOSPARTES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 544
    Top = 280
    object TBContratosPartesCTP_BAIRRO: TIBStringField
      FieldName = 'CTP_BAIRRO'
      Origin = '"CONTRATOSPARTES"."CTP_BAIRRO"'
      Size = 50
    end
    object TBContratosPartesCTP_CEP: TIBStringField
      FieldName = 'CTP_CEP'
      Origin = '"CONTRATOSPARTES"."CTP_CEP"'
      Size = 10
    end
    object TBContratosPartesCTP_CIDADE: TIBStringField
      FieldName = 'CTP_CIDADE'
      Origin = '"CONTRATOSPARTES"."CTP_CIDADE"'
      Size = 50
    end
    object TBContratosPartesCTP_CIDADECODIGO: TIntegerField
      FieldName = 'CTP_CIDADECODIGO'
      Origin = '"CONTRATOSPARTES"."CTP_CIDADECODIGO"'
    end
    object TBContratosPartesCTP_CLIENTE: TIntegerField
      FieldName = 'CTP_CLIENTE'
      Origin = '"CONTRATOSPARTES"."CTP_CLIENTE"'
      Required = True
    end
    object TBContratosPartesCTP_CNPJ: TIBStringField
      FieldName = 'CTP_CNPJ'
      Origin = '"CONTRATOSPARTES"."CTP_CNPJ"'
    end
    object TBContratosPartesCTP_CODIGO: TIntegerField
      FieldName = 'CTP_CODIGO'
      Origin = '"CONTRATOSPARTES"."CTP_CODIGO"'
      Required = True
    end
    object TBContratosPartesCTP_COMPLEMENTO: TIBStringField
      FieldName = 'CTP_COMPLEMENTO'
      Origin = '"CONTRATOSPARTES"."CTP_COMPLEMENTO"'
      Size = 30
    end
    object TBContratosPartesCTP_CONJUGE: TIBStringField
      FieldName = 'CTP_CONJUGE'
      Origin = '"CONTRATOSPARTES"."CTP_CONJUGE"'
      Size = 50
    end
    object TBContratosPartesCTP_CONJUGECPF: TIBStringField
      FieldName = 'CTP_CONJUGECPF'
      Origin = '"CONTRATOSPARTES"."CTP_CONJUGECPF"'
    end
    object TBContratosPartesCTP_CONTRATO: TIntegerField
      FieldName = 'CTP_CONTRATO'
      Origin = '"CONTRATOSPARTES"."CTP_CONTRATO"'
      Required = True
    end
    object TBContratosPartesCTP_CPF: TIBStringField
      FieldName = 'CTP_CPF'
      Origin = '"CONTRATOSPARTES"."CTP_CPF"'
    end
    object TBContratosPartesCTP_ENDERECO: TIBStringField
      FieldName = 'CTP_ENDERECO'
      Origin = '"CONTRATOSPARTES"."CTP_ENDERECO"'
      Size = 100
    end
    object TBContratosPartesCTP_ESTADO: TIBStringField
      FieldName = 'CTP_ESTADO'
      Origin = '"CONTRATOSPARTES"."CTP_ESTADO"'
      Size = 2
    end
    object TBContratosPartesCTP_ESTADOCIVIL: TIBStringField
      FieldName = 'CTP_ESTADOCIVIL'
      Origin = '"CONTRATOSPARTES"."CTP_ESTADOCIVIL"'
      Size = 10
    end
    object TBContratosPartesCTP_ESTADOCODIGO: TIntegerField
      FieldName = 'CTP_ESTADOCODIGO'
      Origin = '"CONTRATOSPARTES"."CTP_ESTADOCODIGO"'
    end
    object TBContratosPartesCTP_FONE1: TIBStringField
      FieldName = 'CTP_FONE1'
      Origin = '"CONTRATOSPARTES"."CTP_FONE1"'
    end
    object TBContratosPartesCTP_NOME: TIBStringField
      FieldName = 'CTP_NOME'
      Origin = '"CONTRATOSPARTES"."CTP_NOME"'
      Size = 50
    end
    object TBContratosPartesCTP_NUMERO: TIBStringField
      FieldName = 'CTP_NUMERO'
      Origin = '"CONTRATOSPARTES"."CTP_NUMERO"'
      Size = 15
    end
    object TBContratosPartesCTP_PROFISSAO: TIBStringField
      FieldName = 'CTP_PROFISSAO'
      Origin = '"CONTRATOSPARTES"."CTP_PROFISSAO"'
      Size = 50
    end
    object TBContratosPartesCTP_TIPO: TIBStringField
      FieldName = 'CTP_TIPO'
      Origin = '"CONTRATOSPARTES"."CTP_TIPO"'
      Size = 1
    end
    object TBContratosPartesCTP_TIPOPESSOA: TIBStringField
      FieldName = 'CTP_TIPOPESSOA'
      Origin = '"CONTRATOSPARTES"."CTP_TIPOPESSOA"'
      Size = 1
    end
  end
  object DSContratosPartes: TDataSource
    DataSet = TBContratosPartes
    Left = 544
    Top = 328
  end
  object TRContratosPartes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 544
    Top = 376
  end
  object TBCteInutilizados: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteInutilizados
    AfterDelete = TBCteInutilizadosAfterDelete
    AfterEdit = TBCteInutilizadosAfterEdit
    AfterInsert = TBCteInutilizadosAfterInsert
    AfterPost = TBCteInutilizadosAfterPost
    BeforeDelete = TBCteInutilizadosBeforeDelete
    BeforeEdit = TBCteInutilizadosBeforeEdit
    BeforeInsert = TBCteInutilizadosBeforeInsert
    BeforePost = TBCteInutilizadosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTEINUTILIZADOS'
      'where'
      '  CIN_CODIGO = :OLD_CIN_CODIGO')
    InsertSQL.Strings = (
      'insert into CTEINUTILIZADOS'
      
        '  (CIN_CODIGO, CIN_ANO, CIN_DTATUALIZACAO, CIN_DTCADASTRO, CIN_J' +
        'USTIFICATIVA, '
      
        '   CIN_MODELO, CIN_NUMFINAL, CIN_NUMINICIAL, CIN_PROTOCOLO, CIN_' +
        'PROTOCOLODH, '
      '   CIN_SERIE, CIN_USUARIO)'
      'values'
      
        '  (:CIN_CODIGO, :CIN_ANO, :CIN_DTATUALIZACAO, :CIN_DTCADASTRO, :' +
        'CIN_JUSTIFICATIVA, '
      
        '   :CIN_MODELO, :CIN_NUMFINAL, :CIN_NUMINICIAL, :CIN_PROTOCOLO, ' +
        ':CIN_PROTOCOLODH, '
      '   :CIN_SERIE, :CIN_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CIN_CODIGO,'
      '  CIN_ANO,'
      '  CIN_DTATUALIZACAO,'
      '  CIN_DTCADASTRO,'
      '  CIN_JUSTIFICATIVA,'
      '  CIN_MODELO,'
      '  CIN_NUMFINAL,'
      '  CIN_NUMINICIAL,'
      '  CIN_PROTOCOLO,'
      '  CIN_PROTOCOLODH,'
      '  CIN_SERIE,'
      '  CIN_USUARIO'
      'from CTEINUTILIZADOS '
      'where'
      '  CIN_CODIGO = :CIN_CODIGO')
    SelectSQL.Strings = (
      'select * from CTEINUTILIZADOS'
      'where CIN_CODIGO=:codigo'
      '')
    ModifySQL.Strings = (
      'update CTEINUTILIZADOS'
      'set'
      '  CIN_CODIGO = :CIN_CODIGO,'
      '  CIN_ANO = :CIN_ANO,'
      '  CIN_DTATUALIZACAO = :CIN_DTATUALIZACAO,'
      '  CIN_DTCADASTRO = :CIN_DTCADASTRO,'
      '  CIN_JUSTIFICATIVA = :CIN_JUSTIFICATIVA,'
      '  CIN_MODELO = :CIN_MODELO,'
      '  CIN_NUMFINAL = :CIN_NUMFINAL,'
      '  CIN_NUMINICIAL = :CIN_NUMINICIAL,'
      '  CIN_PROTOCOLO = :CIN_PROTOCOLO,'
      '  CIN_PROTOCOLODH = :CIN_PROTOCOLODH,'
      '  CIN_SERIE = :CIN_SERIE,'
      '  CIN_USUARIO = :CIN_USUARIO'
      'where'
      '  CIN_CODIGO = :OLD_CIN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CIN_CODIGO'
    GeneratorField.Generator = 'GEN_CTEINUTILIZADOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 96
    Top = 280
    object TBCteInutilizadosCIN_CODIGO: TIntegerField
      FieldName = 'CIN_CODIGO'
      Origin = '"CONHECIMENTOSINUT"."CIN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteInutilizadosCIN_ANO: TIBStringField
      FieldName = 'CIN_ANO'
      Origin = '"CONHECIMENTOSINUT"."CIN_ANO"'
      Size = 4
    end
    object TBCteInutilizadosCIN_MODELO: TIntegerField
      FieldName = 'CIN_MODELO'
      Origin = '"CONHECIMENTOSINUT"."CIN_MODELO"'
    end
    object TBCteInutilizadosCIN_SERIE: TIntegerField
      FieldName = 'CIN_SERIE'
      Origin = '"CONHECIMENTOSINUT"."CIN_SERIE"'
    end
    object TBCteInutilizadosCIN_NUMINICIAL: TIntegerField
      FieldName = 'CIN_NUMINICIAL'
      Origin = '"CONHECIMENTOSINUT"."CIN_NUMINICIAL"'
    end
    object TBCteInutilizadosCIN_NUMFINAL: TIntegerField
      FieldName = 'CIN_NUMFINAL'
      Origin = '"CONHECIMENTOSINUT"."CIN_NUMFINAL"'
    end
    object TBCteInutilizadosCIN_JUSTIFICATIVA: TIBStringField
      FieldName = 'CIN_JUSTIFICATIVA'
      Origin = '"CONHECIMENTOSINUT"."CIN_JUSTIFICATIVA"'
      Size = 120
    end
    object TBCteInutilizadosCIN_PROTOCOLO: TIBStringField
      FieldName = 'CIN_PROTOCOLO'
      Origin = '"CONHECIMENTOSINUT"."CIN_PROTOCOLO"'
    end
    object TBCteInutilizadosCIN_PROTOCOLODH: TIBStringField
      FieldName = 'CIN_PROTOCOLODH'
      Origin = '"CONHECIMENTOSINUT"."CIN_PROTOCOLODH"'
      Size = 25
    end
    object TBCteInutilizadosCIN_DTCADASTRO: TDateField
      FieldName = 'CIN_DTCADASTRO'
      Origin = '"CONHECIMENTOSINUT"."CIN_DTCADASTRO"'
    end
    object TBCteInutilizadosCIN_DTATUALIZACAO: TDateField
      FieldName = 'CIN_DTATUALIZACAO'
      Origin = '"CONHECIMENTOSINUT"."CIN_DTATUALIZACAO"'
    end
    object TBCteInutilizadosCIN_USUARIO: TIBStringField
      FieldName = 'CIN_USUARIO'
      Origin = '"CONHECIMENTOSINUT"."CIN_USUARIO"'
    end
  end
  object DSCteInutilizados: TDataSource
    DataSet = TBCteInutilizados
    OnStateChange = DSCteInutilizadosStateChange
    Left = 96
    Top = 328
  end
  object TRCteInutilizados: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 376
  end
  object TBForos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRForos
    AfterDelete = TBForosAfterDelete
    AfterInsert = TBForosAfterInsert
    AfterPost = TBForosAfterPost
    BeforeEdit = TBForosBeforeEdit
    BeforeInsert = TBForosBeforeInsert
    BeforePost = TBForosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FOROS'
      'where'
      '  FRS_CODIGO = :OLD_FRS_CODIGO')
    InsertSQL.Strings = (
      'insert into FOROS'
      
        '  (FRS_BAIRRO, FRS_CEP, FRS_CIDADE, FRS_CIDADECODIGO, FRS_CODIGO' +
        ', FRS_COMPLEMENTO, '
      
        '   FRS_DTATUALIZACAO, FRS_DTCADASTRO, FRS_ENDERECO, FRS_ESTADO, ' +
        'FRS_ESTADOCODIGO, '
      '   FRS_NOME, FRS_NUMERO, FRS_SIGLA, FRS_USUARIO)'
      'values'
      
        '  (:FRS_BAIRRO, :FRS_CEP, :FRS_CIDADE, :FRS_CIDADECODIGO, :FRS_C' +
        'ODIGO, '
      
        '   :FRS_COMPLEMENTO, :FRS_DTATUALIZACAO, :FRS_DTCADASTRO, :FRS_E' +
        'NDERECO, '
      
        '   :FRS_ESTADO, :FRS_ESTADOCODIGO, :FRS_NOME, :FRS_NUMERO, :FRS_' +
        'SIGLA, '
      '   :FRS_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  FRS_CODIGO,'
      '  FRS_NOME,'
      '  FRS_SIGLA,'
      '  FRS_ENDERECO,'
      '  FRS_NUMERO,'
      '  FRS_COMPLEMENTO,'
      '  FRS_CIDADE,'
      '  FRS_CIDADECODIGO,'
      '  FRS_BAIRRO,'
      '  FRS_ESTADO,'
      '  FRS_ESTADOCODIGO,'
      '  FRS_CEP,'
      '  FRS_DTCADASTRO,'
      '  FRS_DTATUALIZACAO,'
      '  FRS_USUARIO'
      'from FOROS '
      'where'
      '  FRS_CODIGO = :FRS_CODIGO')
    SelectSQL.Strings = (
      'select * from FOROS'
      'where FRS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update FOROS'
      'set'
      '  FRS_BAIRRO = :FRS_BAIRRO,'
      '  FRS_CEP = :FRS_CEP,'
      '  FRS_CIDADE = :FRS_CIDADE,'
      '  FRS_CIDADECODIGO = :FRS_CIDADECODIGO,'
      '  FRS_CODIGO = :FRS_CODIGO,'
      '  FRS_COMPLEMENTO = :FRS_COMPLEMENTO,'
      '  FRS_DTATUALIZACAO = :FRS_DTATUALIZACAO,'
      '  FRS_DTCADASTRO = :FRS_DTCADASTRO,'
      '  FRS_ENDERECO = :FRS_ENDERECO,'
      '  FRS_ESTADO = :FRS_ESTADO,'
      '  FRS_ESTADOCODIGO = :FRS_ESTADOCODIGO,'
      '  FRS_NOME = :FRS_NOME,'
      '  FRS_NUMERO = :FRS_NUMERO,'
      '  FRS_SIGLA = :FRS_SIGLA,'
      '  FRS_USUARIO = :FRS_USUARIO'
      'where'
      '  FRS_CODIGO = :OLD_FRS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FRS_CODIGO'
    GeneratorField.Generator = 'GEN_FOROS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1184
    Top = 280
    object TBForosFRS_BAIRRO: TIBStringField
      FieldName = 'FRS_BAIRRO'
      Origin = '"FOROS"."FRS_BAIRRO"'
      Size = 50
    end
    object TBForosFRS_CEP: TIBStringField
      FieldName = 'FRS_CEP'
      Origin = '"FOROS"."FRS_CEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBForosFRS_CIDADE: TIBStringField
      FieldName = 'FRS_CIDADE'
      Origin = '"FOROS"."FRS_CIDADE"'
      Size = 50
    end
    object TBForosFRS_CIDADECODIGO: TIntegerField
      FieldName = 'FRS_CIDADECODIGO'
      Origin = '"FOROS"."FRS_CIDADECODIGO"'
    end
    object TBForosFRS_CODIGO: TIntegerField
      FieldName = 'FRS_CODIGO'
      Origin = '"FOROS"."FRS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBForosFRS_COMPLEMENTO: TIBStringField
      FieldName = 'FRS_COMPLEMENTO'
      Origin = '"FOROS"."FRS_COMPLEMENTO"'
      Size = 30
    end
    object TBForosFRS_DTATUALIZACAO: TDateField
      FieldName = 'FRS_DTATUALIZACAO'
      Origin = '"FOROS"."FRS_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBForosFRS_DTCADASTRO: TDateField
      FieldName = 'FRS_DTCADASTRO'
      Origin = '"FOROS"."FRS_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBForosFRS_ENDERECO: TIBStringField
      FieldName = 'FRS_ENDERECO'
      Origin = '"FOROS"."FRS_ENDERECO"'
      Size = 100
    end
    object TBForosFRS_ESTADO: TIBStringField
      FieldName = 'FRS_ESTADO'
      Origin = '"FOROS"."FRS_ESTADO"'
      Size = 2
    end
    object TBForosFRS_ESTADOCODIGO: TIntegerField
      FieldName = 'FRS_ESTADOCODIGO'
      Origin = '"FOROS"."FRS_ESTADOCODIGO"'
    end
    object TBForosFRS_NOME: TIBStringField
      FieldName = 'FRS_NOME'
      Origin = '"FOROS"."FRS_NOME"'
      Size = 50
    end
    object TBForosFRS_NUMERO: TIBStringField
      FieldName = 'FRS_NUMERO'
      Origin = '"FOROS"."FRS_NUMERO"'
      Size = 15
    end
    object TBForosFRS_SIGLA: TIBStringField
      FieldName = 'FRS_SIGLA'
      Origin = '"FOROS"."FRS_SIGLA"'
      Size = 10
    end
    object TBForosFRS_USUARIO: TIBStringField
      FieldName = 'FRS_USUARIO'
      Origin = '"FOROS"."FRS_USUARIO"'
    end
  end
  object DSForos: TDataSource
    DataSet = TBForos
    OnStateChange = DSForosStateChange
    Left = 1184
    Top = 328
  end
  object TRForos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1184
    Top = 376
  end
  object TBAcoes: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRAcoes
    AfterDelete = TBAcoesAfterDelete
    AfterInsert = TBAcoesAfterInsert
    AfterPost = TBAcoesAfterPost
    BeforeEdit = TBAcoesBeforeEdit
    BeforeInsert = TBAcoesBeforeInsert
    BeforePost = TBAcoesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ACOES'
      'where'
      '  ACO_CODIGO = :OLD_ACO_CODIGO')
    InsertSQL.Strings = (
      'insert into ACOES'
      
        '  (ACO_CODIGO, ACO_DESCRICAO, ACO_DTATUALIZACAO, ACO_DTCADASTRO,' +
        ' ACO_STATUS, '
      '   ACO_USUARIO)'
      'values'
      
        '  (:ACO_CODIGO, :ACO_DESCRICAO, :ACO_DTATUALIZACAO, :ACO_DTCADAS' +
        'TRO, :ACO_STATUS, '
      '   :ACO_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ACO_CODIGO,'
      '  ACO_DESCRICAO,'
      '  ACO_DTCADASTRO,'
      '  ACO_DTATUALIZACAO,'
      '  ACO_USUARIO,'
      '  ACO_STATUS'
      'from ACOES '
      'where'
      '  ACO_CODIGO = :ACO_CODIGO')
    SelectSQL.Strings = (
      'select * from ACOES'
      'where ACO_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update ACOES'
      'set'
      '  ACO_CODIGO = :ACO_CODIGO,'
      '  ACO_DESCRICAO = :ACO_DESCRICAO,'
      '  ACO_DTATUALIZACAO = :ACO_DTATUALIZACAO,'
      '  ACO_DTCADASTRO = :ACO_DTCADASTRO,'
      '  ACO_STATUS = :ACO_STATUS,'
      '  ACO_USUARIO = :ACO_USUARIO'
      'where'
      '  ACO_CODIGO = :OLD_ACO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ACO_CODIGO'
    GeneratorField.Generator = 'GEN_ACOES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 24
    object TBAcoesACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
      Origin = '"ACOES"."ACO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAcoesACO_DESCRICAO: TIBStringField
      FieldName = 'ACO_DESCRICAO'
      Origin = '"ACOES"."ACO_DESCRICAO"'
      Size = 50
    end
    object TBAcoesACO_DTCADASTRO: TDateField
      FieldName = 'ACO_DTCADASTRO'
      Origin = '"ACOES"."ACO_DTCADASTRO"'
    end
    object TBAcoesACO_DTATUALIZACAO: TDateField
      FieldName = 'ACO_DTATUALIZACAO'
      Origin = '"ACOES"."ACO_DTATUALIZACAO"'
    end
    object TBAcoesACO_USUARIO: TIBStringField
      FieldName = 'ACO_USUARIO'
      Origin = '"ACOES"."ACO_USUARIO"'
    end
    object TBAcoesACO_STATUS: TIBStringField
      FieldName = 'ACO_STATUS'
      Origin = '"ACOES"."ACO_STATUS"'
      Size = 1
    end
  end
  object DSAcoes: TDataSource
    DataSet = TBAcoes
    OnStateChange = DSAcoesStateChange
    Left = 32
    Top = 72
  end
  object TRAcoes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 120
  end
  object TBProcessos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProcessos
    AfterDelete = TBProcessosAfterDelete
    AfterInsert = TBProcessosAfterInsert
    AfterPost = TBProcessosAfterPost
    BeforeEdit = TBProcessosBeforeEdit
    BeforeInsert = TBProcessosBeforeInsert
    BeforePost = TBProcessosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROCESSOS'
      'where'
      '  PCS_CODIGO = :OLD_PCS_CODIGO')
    InsertSQL.Strings = (
      'insert into PROCESSOS'
      
        '  (PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_CODIGO, PCS_DESCRICAO,' +
        ' PCS_DTARQUIVO, '
      
        '   PCS_DTATUALIZACAO, PCS_DTCADASTRO, PCS_FORO, PCS_LOCALFISICO,' +
        ' PCS_NUMEROANTIGO, '
      
        '   PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, PCS_' +
        'TOTALLANCAMENTOS, '
      '   PCS_USUARIO)'
      'values'
      
        '  (:PCS_ACAO, :PCS_ADVOGADO, :PCS_CHAVE, :PCS_CODIGO, :PCS_DESCR' +
        'ICAO, :PCS_DTARQUIVO, '
      
        '   :PCS_DTATUALIZACAO, :PCS_DTCADASTRO, :PCS_FORO, :PCS_LOCALFIS' +
        'ICO, :PCS_NUMEROANTIGO, '
      
        '   :PCS_NUMEROUNIFICADO, :PCS_NUMEROUNIFICADOFED, :PCS_STATUS, :' +
        'PCS_TOTALLANCAMENTOS, '
      '   :PCS_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PCS_CODIGO,'
      '  PCS_ACAO,'
      '  PCS_ADVOGADO,'
      '  PCS_CHAVE,'
      '  PCS_DESCRICAO,'
      '  PCS_DTARQUIVO,'
      '  PCS_DTATUALIZACAO,'
      '  PCS_DTCADASTRO,'
      '  PCS_FORO,'
      '  PCS_LOCALFISICO,'
      '  PCS_NUMEROANTIGO,'
      '  PCS_NUMEROUNIFICADO,'
      '  PCS_NUMEROUNIFICADOFED,'
      '  PCS_STATUS,'
      '  PCS_TOTALLANCAMENTOS,'
      '  PCS_USUARIO'
      'from PROCESSOS '
      'where'
      '  PCS_CODIGO = :PCS_CODIGO')
    SelectSQL.Strings = (
      'select '
      'PCS_CODIGO,'
      'PCS_ACAO,'
      'PCS_ADVOGADO,'
      'PCS_CHAVE,'
      'PCS_DESCRICAO,'
      'PCS_DTARQUIVO,'
      'PCS_DTATUALIZACAO,'
      'PCS_DTCADASTRO,'
      'PCS_FORO,'
      'PCS_LOCALFISICO,'
      'PCS_NUMEROANTIGO,'
      'PCS_NUMEROUNIFICADO,'
      'PCS_NUMEROUNIFICADOFED,'
      'PCS_STATUS,'
      'PCS_TOTALLANCAMENTOS,'
      'PCS_USUARIO,'
      'ACO_DESCRICAO,'
      'FRS_NOME,'
      'VEN_NOME from PROCESSOS'
      'left join ACOES on PCS_ACAO=ACO_CODIGO'
      'left join FOROS on PCS_FORO=FRS_CODIGO'
      'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO'
      'where PCS_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PROCESSOS'
      'set'
      '  PCS_ACAO = :PCS_ACAO,'
      '  PCS_ADVOGADO = :PCS_ADVOGADO,'
      '  PCS_CHAVE = :PCS_CHAVE,'
      '  PCS_CODIGO = :PCS_CODIGO,'
      '  PCS_DESCRICAO = :PCS_DESCRICAO,'
      '  PCS_DTARQUIVO = :PCS_DTARQUIVO,'
      '  PCS_DTATUALIZACAO = :PCS_DTATUALIZACAO,'
      '  PCS_DTCADASTRO = :PCS_DTCADASTRO,'
      '  PCS_FORO = :PCS_FORO,'
      '  PCS_LOCALFISICO = :PCS_LOCALFISICO,'
      '  PCS_NUMEROANTIGO = :PCS_NUMEROANTIGO,'
      '  PCS_NUMEROUNIFICADO = :PCS_NUMEROUNIFICADO,'
      '  PCS_NUMEROUNIFICADOFED = :PCS_NUMEROUNIFICADOFED,'
      '  PCS_STATUS = :PCS_STATUS,'
      '  PCS_TOTALLANCAMENTOS = :PCS_TOTALLANCAMENTOS,'
      '  PCS_USUARIO = :PCS_USUARIO'
      'where'
      '  PCS_CODIGO = :OLD_PCS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PCS_CODIGO'
    GeneratorField.Generator = 'GEN_PROCESSOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 224
    Top = 696
    object TBProcessosPCS_CODIGO: TIntegerField
      FieldName = 'PCS_CODIGO'
      Origin = '"PROCESSOS"."PCS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProcessosPCS_ACAO: TIntegerField
      FieldName = 'PCS_ACAO'
      Origin = '"PROCESSOS"."PCS_ACAO"'
      Required = True
    end
    object TBProcessosPCS_ADVOGADO: TIntegerField
      FieldName = 'PCS_ADVOGADO'
      Origin = '"PROCESSOS"."PCS_ADVOGADO"'
      Required = True
    end
    object TBProcessosPCS_CHAVE: TIBStringField
      FieldName = 'PCS_CHAVE'
      Origin = '"PROCESSOS"."PCS_CHAVE"'
      Size = 40
    end
    object TBProcessosPCS_DESCRICAO: TIBStringField
      FieldName = 'PCS_DESCRICAO'
      Origin = '"PROCESSOS"."PCS_DESCRICAO"'
      Size = 50
    end
    object TBProcessosPCS_DTARQUIVO: TDateField
      FieldName = 'PCS_DTARQUIVO'
      Origin = '"PROCESSOS"."PCS_DTARQUIVO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosPCS_DTATUALIZACAO: TDateField
      FieldName = 'PCS_DTATUALIZACAO'
      Origin = '"PROCESSOS"."PCS_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosPCS_DTCADASTRO: TDateField
      FieldName = 'PCS_DTCADASTRO'
      Origin = '"PROCESSOS"."PCS_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosPCS_FORO: TIntegerField
      FieldName = 'PCS_FORO'
      Origin = '"PROCESSOS"."PCS_FORO"'
      Required = True
    end
    object TBProcessosPCS_LOCALFISICO: TIBStringField
      FieldName = 'PCS_LOCALFISICO'
      Origin = '"PROCESSOS"."PCS_LOCALFISICO"'
      Size = 50
    end
    object TBProcessosPCS_NUMEROANTIGO: TIBStringField
      FieldName = 'PCS_NUMEROANTIGO'
      Origin = '"PROCESSOS"."PCS_NUMEROANTIGO"'
      Size = 30
    end
    object TBProcessosPCS_NUMEROUNIFICADO: TIBStringField
      FieldName = 'PCS_NUMEROUNIFICADO'
      Origin = '"PROCESSOS"."PCS_NUMEROUNIFICADO"'
      EditMask = '9999999\-99\.9999\.9\.99\.9999;1;_'
      Size = 30
    end
    object TBProcessosPCS_NUMEROUNIFICADOFED: TIBStringField
      FieldName = 'PCS_NUMEROUNIFICADOFED'
      Origin = '"PROCESSOS"."PCS_NUMEROUNIFICADOFED"'
      EditMask = '9999999\-99\.9999\.999\.9999;1;_'
      Size = 30
    end
    object TBProcessosPCS_STATUS: TIBStringField
      FieldName = 'PCS_STATUS'
      Origin = '"PROCESSOS"."PCS_STATUS"'
      Size = 1
    end
    object TBProcessosPCS_TOTALLANCAMENTOS: TIBBCDField
      FieldName = 'PCS_TOTALLANCAMENTOS'
      Origin = '"PROCESSOS"."PCS_TOTALLANCAMENTOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProcessosPCS_USUARIO: TIBStringField
      FieldName = 'PCS_USUARIO'
      Origin = '"PROCESSOS"."PCS_USUARIO"'
    end
    object TBProcessosACO_DESCRICAO: TIBStringField
      FieldName = 'ACO_DESCRICAO'
      Origin = '"ACOES"."ACO_DESCRICAO"'
      Size = 50
    end
    object TBProcessosFRS_NOME: TIBStringField
      FieldName = 'FRS_NOME'
      Origin = '"FOROS"."FRS_NOME"'
      Size = 50
    end
    object TBProcessosVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object DSProcessos: TDataSource
    DataSet = TBProcessos
    OnStateChange = DSProcessosStateChange
    Left = 224
    Top = 744
  end
  object TRProcessos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 792
  end
  object TBProcessosPartes: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProcessosPartes
    AfterDelete = TBProcessosPartesAfterDelete
    AfterInsert = TBProcessosPartesAfterInsert
    AfterPost = TBProcessosPartesAfterPost
    BeforeEdit = TBProcessosPartesBeforeEdit
    BeforeInsert = TBProcessosPartesBeforeInsert
    BeforePost = TBProcessosPartesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROCESSOSPARTES'
      'where'
      '  PSP_CODIGO = :OLD_PSP_CODIGO')
    InsertSQL.Strings = (
      'insert into PROCESSOSPARTES'
      
        '  (PSP_ADVOGADO, PSP_CLIENTE, PSP_CODIGO, PSP_CONDICAO, PSP_PROC' +
        'ESSO)'
      'values'
      
        '  (:PSP_ADVOGADO, :PSP_CLIENTE, :PSP_CODIGO, :PSP_CONDICAO, :PSP' +
        '_PROCESSO)')
    RefreshSQL.Strings = (
      'Select '
      '  PSP_CODIGO,'
      '  PSP_ADVOGADO,'
      '  PSP_CLIENTE,'
      '  PSP_CONDICAO,'
      '  PSP_PROCESSO'
      'from PROCESSOSPARTES '
      'where'
      '  PSP_CODIGO = :PSP_CODIGO')
    SelectSQL.Strings = (
      'select '
      'PSP_CODIGO,'
      'PSP_ADVOGADO,'
      'PSP_CLIENTE,'
      'PSP_CONDICAO,'
      'PSP_PROCESSO,'
      'cli.CLI_NOME as PARTE,'
      'adv.CLI_NOME as ADVOGADO'
      'from PROCESSOSPARTES'
      'left join CLIENTES cli on PSP_CLIENTE=cli.CLI_CODIGO'
      'left join CLIENTES adv on PSP_ADVOGADO=adv.CLI_CODIGO'
      'where PSP_PROCESSO=:PCS_CODIGO')
    ModifySQL.Strings = (
      'update PROCESSOSPARTES'
      'set'
      '  PSP_ADVOGADO = :PSP_ADVOGADO,'
      '  PSP_CLIENTE = :PSP_CLIENTE,'
      '  PSP_CODIGO = :PSP_CODIGO,'
      '  PSP_CONDICAO = :PSP_CONDICAO,'
      '  PSP_PROCESSO = :PSP_PROCESSO'
      'where'
      '  PSP_CODIGO = :OLD_PSP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PSP_CODIGO'
    GeneratorField.Generator = 'GEN_PROCESSOSPARTES'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProcessos
    Left = 416
    Top = 696
    object TBProcessosPartesPSP_CODIGO: TIntegerField
      FieldName = 'PSP_CODIGO'
      Origin = '"PROCESSOSPARTES"."PSP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProcessosPartesPSP_ADVOGADO: TIntegerField
      FieldName = 'PSP_ADVOGADO'
      Origin = '"PROCESSOSPARTES"."PSP_ADVOGADO"'
      Required = True
    end
    object TBProcessosPartesPSP_CLIENTE: TIntegerField
      FieldName = 'PSP_CLIENTE'
      Origin = '"PROCESSOSPARTES"."PSP_CLIENTE"'
      Required = True
    end
    object TBProcessosPartesPSP_CONDICAO: TIBStringField
      FieldName = 'PSP_CONDICAO'
      Origin = '"PROCESSOSPARTES"."PSP_CONDICAO"'
      Size = 15
    end
    object TBProcessosPartesPSP_PROCESSO: TIntegerField
      FieldName = 'PSP_PROCESSO'
      Origin = '"PROCESSOSPARTES"."PSP_PROCESSO"'
      Required = True
    end
    object TBProcessosPartesPARTE: TIBStringField
      FieldName = 'PARTE'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object TBProcessosPartesADVOGADO: TIBStringField
      FieldName = 'ADVOGADO'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
  end
  object DSProcessosPartes: TDataSource
    DataSet = TBProcessosPartes
    OnStateChange = DSProcessosPartesStateChange
    Left = 416
    Top = 744
  end
  object TRProcessosPartes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 792
  end
  object TBProcessosCustas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProcessosCustas
    AfterDelete = TBProcessosCustasAfterDelete
    AfterEdit = TBProcessosCustasAfterEdit
    AfterInsert = TBProcessosCustasAfterInsert
    AfterPost = TBProcessosCustasAfterPost
    BeforeEdit = TBProcessosCustasBeforeEdit
    BeforeInsert = TBProcessosCustasBeforeInsert
    BeforePost = TBProcessosCustasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROCESSOSCUSTAS'
      'where'
      '  PSC_CODIGO = :OLD_PSC_CODIGO')
    InsertSQL.Strings = (
      'insert into PROCESSOSCUSTAS'
      
        '  (PSC_CODIGO, PSC_DATA, PSC_DESCRICAO, PSC_DTATUALIZACAO, PSC_D' +
        'TCADASTRO, '
      
        '   PSC_ENTRADASAIDA, PSC_PROCESSO, PSC_USUARIO, PSC_VALOR, PSC_V' +
        'ALORANTERIOR, '
      '   PSC_VALORPOSTERIOR)'
      'values'
      
        '  (:PSC_CODIGO, :PSC_DATA, :PSC_DESCRICAO, :PSC_DTATUALIZACAO, :' +
        'PSC_DTCADASTRO, '
      
        '   :PSC_ENTRADASAIDA, :PSC_PROCESSO, :PSC_USUARIO, :PSC_VALOR, :' +
        'PSC_VALORANTERIOR, '
      '   :PSC_VALORPOSTERIOR)')
    RefreshSQL.Strings = (
      'Select '
      '  PSC_CODIGO,'
      '  PSC_DATA,'
      '  PSC_DESCRICAO,'
      '  PSC_DTATUALIZACAO,'
      '  PSC_DTCADASTRO,'
      '  PSC_ENTRADASAIDA,'
      '  PSC_PROCESSO,'
      '  PSC_USUARIO,'
      '  PSC_VALOR,'
      '  PSC_VALORANTERIOR,'
      '  PSC_VALORPOSTERIOR'
      'from PROCESSOSCUSTAS '
      'where'
      '  PSC_CODIGO = :PSC_CODIGO')
    SelectSQL.Strings = (
      'select * from PROCESSOSCUSTAS'
      'where PSC_PROCESSO=:PCS_CODIGO'
      'order by PSC_CODIGO desc')
    ModifySQL.Strings = (
      'update PROCESSOSCUSTAS'
      'set'
      '  PSC_CODIGO = :PSC_CODIGO,'
      '  PSC_DATA = :PSC_DATA,'
      '  PSC_DESCRICAO = :PSC_DESCRICAO,'
      '  PSC_DTATUALIZACAO = :PSC_DTATUALIZACAO,'
      '  PSC_DTCADASTRO = :PSC_DTCADASTRO,'
      '  PSC_ENTRADASAIDA = :PSC_ENTRADASAIDA,'
      '  PSC_PROCESSO = :PSC_PROCESSO,'
      '  PSC_USUARIO = :PSC_USUARIO,'
      '  PSC_VALOR = :PSC_VALOR,'
      '  PSC_VALORANTERIOR = :PSC_VALORANTERIOR,'
      '  PSC_VALORPOSTERIOR = :PSC_VALORPOSTERIOR'
      'where'
      '  PSC_CODIGO = :OLD_PSC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PSC_CODIGO'
    GeneratorField.Generator = 'GEN_PROCESSOSCUSTAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProcessos
    Left = 288
    Top = 696
    object TBProcessosCustasPSC_CODIGO: TIntegerField
      FieldName = 'PSC_CODIGO'
      Origin = '"PROCESSOSCUSTAS"."PSC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProcessosCustasPSC_DATA: TDateField
      FieldName = 'PSC_DATA'
      Origin = '"PROCESSOSCUSTAS"."PSC_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosCustasPSC_DESCRICAO: TIBStringField
      FieldName = 'PSC_DESCRICAO'
      Origin = '"PROCESSOSCUSTAS"."PSC_DESCRICAO"'
      Size = 50
    end
    object TBProcessosCustasPSC_DTATUALIZACAO: TDateField
      FieldName = 'PSC_DTATUALIZACAO'
      Origin = '"PROCESSOSCUSTAS"."PSC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosCustasPSC_DTCADASTRO: TDateField
      FieldName = 'PSC_DTCADASTRO'
      Origin = '"PROCESSOSCUSTAS"."PSC_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosCustasPSC_ENTRADASAIDA: TIBStringField
      FieldName = 'PSC_ENTRADASAIDA'
      Origin = '"PROCESSOSCUSTAS"."PSC_ENTRADASAIDA"'
      Size = 1
    end
    object TBProcessosCustasPSC_PROCESSO: TIntegerField
      FieldName = 'PSC_PROCESSO'
      Origin = '"PROCESSOSCUSTAS"."PSC_PROCESSO"'
      Required = True
    end
    object TBProcessosCustasPSC_USUARIO: TIBStringField
      FieldName = 'PSC_USUARIO'
      Origin = '"PROCESSOSCUSTAS"."PSC_USUARIO"'
    end
    object TBProcessosCustasPSC_VALOR: TIBBCDField
      FieldName = 'PSC_VALOR'
      Origin = '"PROCESSOSCUSTAS"."PSC_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProcessosCustasPSC_VALORANTERIOR: TIBBCDField
      FieldName = 'PSC_VALORANTERIOR'
      Origin = '"PROCESSOSCUSTAS"."PSC_VALORANTERIOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProcessosCustasPSC_VALORPOSTERIOR: TIBBCDField
      FieldName = 'PSC_VALORPOSTERIOR'
      Origin = '"PROCESSOSCUSTAS"."PSC_VALORPOSTERIOR"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSProcessosCustas: TDataSource
    DataSet = TBProcessosCustas
    OnStateChange = DSProcessosCustasStateChange
    Left = 288
    Top = 744
  end
  object TRProcessosCustas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 288
    Top = 792
  end
  object TBProcessosHistorico: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRProcessosHistorico
    AfterDelete = TBProcessosHistoricoAfterDelete
    AfterInsert = TBProcessosHistoricoAfterInsert
    AfterPost = TBProcessosHistoricoAfterPost
    BeforeEdit = TBProcessosHistoricoBeforeEdit
    BeforeInsert = TBProcessosHistoricoBeforeInsert
    BeforePost = TBProcessosHistoricoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROCESSOSHIST'
      'where'
      '  PSH_CODIGO = :OLD_PSH_CODIGO')
    InsertSQL.Strings = (
      'insert into PROCESSOSHIST'
      
        '  (PSH_CODIGO, PSH_DATA, PSH_DESCRICAO, PSH_DTATUALIZACAO, PSH_D' +
        'TCADASTRO, '
      '   PSH_OBSERVACOES, PSH_PROCESSO, PSH_USUARIO)'
      'values'
      
        '  (:PSH_CODIGO, :PSH_DATA, :PSH_DESCRICAO, :PSH_DTATUALIZACAO, :' +
        'PSH_DTCADASTRO, '
      '   :PSH_OBSERVACOES, :PSH_PROCESSO, :PSH_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PSH_CODIGO,'
      '  PSH_DATA,'
      '  PSH_DESCRICAO,'
      '  PSH_DTATUALIZACAO,'
      '  PSH_DTCADASTRO,'
      '  PSH_OBSERVACOES,'
      '  PSH_PROCESSO,'
      '  PSH_USUARIO'
      'from PROCESSOSHIST '
      'where'
      '  PSH_CODIGO = :PSH_CODIGO')
    SelectSQL.Strings = (
      'select * from PROCESSOSHIST'
      'where PSH_PROCESSO=:PCS_CODIGO'
      'order by PSH_CODIGO desc')
    ModifySQL.Strings = (
      'update PROCESSOSHIST'
      'set'
      '  PSH_CODIGO = :PSH_CODIGO,'
      '  PSH_DATA = :PSH_DATA,'
      '  PSH_DESCRICAO = :PSH_DESCRICAO,'
      '  PSH_DTATUALIZACAO = :PSH_DTATUALIZACAO,'
      '  PSH_DTCADASTRO = :PSH_DTCADASTRO,'
      '  PSH_OBSERVACOES = :PSH_OBSERVACOES,'
      '  PSH_PROCESSO = :PSH_PROCESSO,'
      '  PSH_USUARIO = :PSH_USUARIO'
      'where'
      '  PSH_CODIGO = :OLD_PSH_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PSH_CODIGO'
    GeneratorField.Generator = 'GEN_PROCESSOSHIST'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProcessos
    Left = 352
    Top = 696
    object TBProcessosHistoricoPSH_CODIGO: TIntegerField
      FieldName = 'PSH_CODIGO'
      Origin = '"PROCESSOSHIST"."PSH_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProcessosHistoricoPSH_DATA: TDateField
      FieldName = 'PSH_DATA'
      Origin = '"PROCESSOSHIST"."PSH_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosHistoricoPSH_DESCRICAO: TIBStringField
      FieldName = 'PSH_DESCRICAO'
      Origin = '"PROCESSOSHIST"."PSH_DESCRICAO"'
      Size = 50
    end
    object TBProcessosHistoricoPSH_DTATUALIZACAO: TDateField
      FieldName = 'PSH_DTATUALIZACAO'
      Origin = '"PROCESSOSHIST"."PSH_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosHistoricoPSH_DTCADASTRO: TDateField
      FieldName = 'PSH_DTCADASTRO'
      Origin = '"PROCESSOSHIST"."PSH_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosHistoricoPSH_OBSERVACOES: TWideMemoField
      FieldName = 'PSH_OBSERVACOES'
      Origin = '"PROCESSOSHIST"."PSH_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBProcessosHistoricoPSH_PROCESSO: TIntegerField
      FieldName = 'PSH_PROCESSO'
      Origin = '"PROCESSOSHIST"."PSH_PROCESSO"'
      Required = True
    end
    object TBProcessosHistoricoPSH_USUARIO: TIBStringField
      FieldName = 'PSH_USUARIO'
      Origin = '"PROCESSOSHIST"."PSH_USUARIO"'
    end
  end
  object DSProcessosHistorico: TDataSource
    DataSet = TBProcessosHistorico
    OnStateChange = DSProcessosHistoricoStateChange
    Left = 352
    Top = 744
  end
  object TRProcessosHistorico: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 792
  end
  object TBMensagens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMensagens
    AfterDelete = TBMensagensAfterDelete
    AfterInsert = TBMensagensAfterInsert
    AfterPost = TBMensagensAfterPost
    BeforePost = TBMensagensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MENSAGENS'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
    InsertSQL.Strings = (
      'insert into MENSAGENS'
      
        '  (MEN_ASSUNTO, MEN_CODIGO, MEN_DATA, MEN_DESTINATARIOS, MEN_HOR' +
        'A, MEN_LIDA, '
      '   MEN_MENSAGEM, MEN_REMETENTE, MEN_TIPO)'
      'values'
      
        '  (:MEN_ASSUNTO, :MEN_CODIGO, :MEN_DATA, :MEN_DESTINATARIOS, :ME' +
        'N_HORA, '
      '   :MEN_LIDA, :MEN_MENSAGEM, :MEN_REMETENTE, :MEN_TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  MEN_CODIGO,'
      '  MEN_REMETENTE,'
      '  MEN_DESTINATARIOS,'
      '  MEN_ASSUNTO,'
      '  MEN_MENSAGEM,'
      '  MEN_DATA,'
      '  MEN_HORA,'
      '  MEN_LIDA,'
      '  MEN_TIPO'
      'from MENSAGENS '
      'where'
      '  MEN_CODIGO = :MEN_CODIGO')
    SelectSQL.Strings = (
      'select * from MENSAGENS'
      'where MEN_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MENSAGENS'
      'set'
      '  MEN_ASSUNTO = :MEN_ASSUNTO,'
      '  MEN_CODIGO = :MEN_CODIGO,'
      '  MEN_DATA = :MEN_DATA,'
      '  MEN_DESTINATARIOS = :MEN_DESTINATARIOS,'
      '  MEN_HORA = :MEN_HORA,'
      '  MEN_LIDA = :MEN_LIDA,'
      '  MEN_MENSAGEM = :MEN_MENSAGEM,'
      '  MEN_REMETENTE = :MEN_REMETENTE,'
      '  MEN_TIPO = :MEN_TIPO'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MEN_CODIGO'
    GeneratorField.Generator = 'GEN_MENSAGENS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1056
    Top = 488
    object TBMensagensMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Origin = '"MENSAGENS"."MEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMensagensMEN_REMETENTE: TIBStringField
      FieldName = 'MEN_REMETENTE'
      Origin = '"MENSAGENS"."MEN_REMETENTE"'
    end
    object TBMensagensMEN_DESTINATARIOS: TIBStringField
      FieldName = 'MEN_DESTINATARIOS'
      Origin = '"MENSAGENS"."MEN_DESTINATARIOS"'
      Size = 255
    end
    object TBMensagensMEN_ASSUNTO: TIBStringField
      FieldName = 'MEN_ASSUNTO'
      Origin = '"MENSAGENS"."MEN_ASSUNTO"'
      Size = 50
    end
    object TBMensagensMEN_MENSAGEM: TWideMemoField
      FieldName = 'MEN_MENSAGEM'
      Origin = '"MENSAGENS"."MEN_MENSAGEM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBMensagensMEN_DATA: TDateField
      FieldName = 'MEN_DATA'
      Origin = '"MENSAGENS"."MEN_DATA"'
    end
    object TBMensagensMEN_HORA: TTimeField
      FieldName = 'MEN_HORA'
      Origin = '"MENSAGENS"."MEN_HORA"'
    end
    object TBMensagensMEN_LIDA: TIBStringField
      FieldName = 'MEN_LIDA'
      Origin = '"MENSAGENS"."MEN_LIDA"'
      Size = 1
    end
    object TBMensagensMEN_TIPO: TIBStringField
      FieldName = 'MEN_TIPO'
      Origin = '"MENSAGENS"."MEN_TIPO"'
      Size = 1
    end
  end
  object DSMensagens: TDataSource
    DataSet = TBMensagens
    Left = 1056
    Top = 536
  end
  object TRMensagens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1056
    Top = 584
  end
  object TBContatos: TClientDataSet
    PersistDataPacket.Data = {
      670000009619E0BD010000001800000003000000000003000000670009555355
      5F4C4F47494E0100490000000100055749445448020002001400085553555F4E
      4F4D450100490000000100055749445448020002003200095553555F4C494441
      5304000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USU_LOGIN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USU_NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'USU_LIDAS'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 280
    object TBContatosUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
    end
    object TBContatosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 50
    end
    object TBContatosUSU_LIDAS: TIntegerField
      FieldName = 'USU_LIDAS'
    end
  end
  object DSContatos: TDataSource
    DataSet = TBContatos
    Left = 352
    Top = 328
  end
  object QYMensagensNovas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRMensagensNovas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 1120
    Top = 488
  end
  object TRMensagensNovas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1120
    Top = 584
  end
  object QYMsgs: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRMsgs
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 1312
    Top = 488
  end
  object TRMsgs: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1312
    Top = 584
  end
  object TBCteVeiculos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteVeiculos
    AfterDelete = TBCteVeiculosAfterDelete
    AfterInsert = TBCteVeiculosAfterInsert
    AfterPost = TBCteVeiculosAfterPost
    BeforePost = TBCteVeiculosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTEVEICULOS'
      'where'
      '  CTV_CODIGO = :OLD_CTV_CODIGO')
    InsertSQL.Strings = (
      'insert into CTEVEICULOS'
      
        '  (CTV_CODIGO, CTV_CTE, CTV_VEICULO, CTV_RENAVAM, CTV_PLACA, CTV' +
        '_TARA, '
      
        '   CTV_CAPACIDADEKG, CTV_CAPACIDADEM3, CTV_TIPOPROPRIEDADE, CTV_' +
        'TIPOPROPRIETARIO, '
      
        '   CTV_TIPOVEICULO, CTV_TIPORODADO, CTV_TIPOCARROCERIA, CTV_ESTA' +
        'DO, CTV_ESTADOPROPRIETARIO, '
      '   CTV_CPF, CTV_CNPJ, CTV_NOME, CTV_IE, CTV_RNTRC)'
      'values'
      
        '  (:CTV_CODIGO, :CTV_CTE, :CTV_VEICULO, :CTV_RENAVAM, :CTV_PLACA' +
        ', :CTV_TARA, '
      
        '   :CTV_CAPACIDADEKG, :CTV_CAPACIDADEM3, :CTV_TIPOPROPRIEDADE, :' +
        'CTV_TIPOPROPRIETARIO, '
      
        '   :CTV_TIPOVEICULO, :CTV_TIPORODADO, :CTV_TIPOCARROCERIA, :CTV_' +
        'ESTADO, '
      
        '   :CTV_ESTADOPROPRIETARIO, :CTV_CPF, :CTV_CNPJ, :CTV_NOME, :CTV' +
        '_IE, :CTV_RNTRC)')
    RefreshSQL.Strings = (
      'Select '
      '  CTV_CODIGO,'
      '  CTV_CTE,'
      '  CTV_VEICULO,'
      '  CTV_RENAVAM,'
      '  CTV_PLACA,'
      '  CTV_TARA,'
      '  CTV_CAPACIDADEKG,'
      '  CTV_CAPACIDADEM3,'
      '  CTV_TIPOPROPRIEDADE,'
      '  CTV_TIPOPROPRIETARIO,'
      '  CTV_TIPOVEICULO,'
      '  CTV_TIPORODADO,'
      '  CTV_TIPOCARROCERIA,'
      '  CTV_ESTADO,'
      '  CTV_ESTADOPROPRIETARIO,'
      '  CTV_CPF,'
      '  CTV_CNPJ,'
      '  CTV_NOME,'
      '  CTV_IE,'
      '  CTV_RNTRC'
      'from CTEVEICULOS '
      'where'
      '  CTV_CODIGO = :CTV_CODIGO')
    SelectSQL.Strings = (
      'select * from CTEVEICULOS'
      'where CTV_CTE=:CTE_CODIGO'
      'order by CTV_CODIGO')
    ModifySQL.Strings = (
      'update CTEVEICULOS'
      'set'
      '  CTV_CODIGO = :CTV_CODIGO,'
      '  CTV_CTE = :CTV_CTE,'
      '  CTV_VEICULO = :CTV_VEICULO,'
      '  CTV_RENAVAM = :CTV_RENAVAM,'
      '  CTV_PLACA = :CTV_PLACA,'
      '  CTV_TARA = :CTV_TARA,'
      '  CTV_CAPACIDADEKG = :CTV_CAPACIDADEKG,'
      '  CTV_CAPACIDADEM3 = :CTV_CAPACIDADEM3,'
      '  CTV_TIPOPROPRIEDADE = :CTV_TIPOPROPRIEDADE,'
      '  CTV_TIPOPROPRIETARIO = :CTV_TIPOPROPRIETARIO,'
      '  CTV_TIPOVEICULO = :CTV_TIPOVEICULO,'
      '  CTV_TIPORODADO = :CTV_TIPORODADO,'
      '  CTV_TIPOCARROCERIA = :CTV_TIPOCARROCERIA,'
      '  CTV_ESTADO = :CTV_ESTADO,'
      '  CTV_ESTADOPROPRIETARIO = :CTV_ESTADOPROPRIETARIO,'
      '  CTV_CPF = :CTV_CPF,'
      '  CTV_CNPJ = :CTV_CNPJ,'
      '  CTV_NOME = :CTV_NOME,'
      '  CTV_IE = :CTV_IE,'
      '  CTV_RNTRC = :CTV_RNTRC'
      'where'
      '  CTV_CODIGO = :OLD_CTV_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTV_CODIGO'
    GeneratorField.Generator = 'GEN_CTEVEICULOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 288
    Top = 280
    object TBCteVeiculosCTV_CAPACIDADEKG: TIBBCDField
      FieldName = 'CTV_CAPACIDADEKG'
      Origin = '"CTEVEICULOS"."CTV_CAPACIDADEKG"'
      Precision = 18
      Size = 3
    end
    object TBCteVeiculosCTV_CAPACIDADEM3: TIBBCDField
      FieldName = 'CTV_CAPACIDADEM3'
      Origin = '"CTEVEICULOS"."CTV_CAPACIDADEM3"'
      Precision = 18
      Size = 4
    end
    object TBCteVeiculosCTV_CNPJ: TIBStringField
      FieldName = 'CTV_CNPJ'
      Origin = '"CTEVEICULOS"."CTV_CNPJ"'
    end
    object TBCteVeiculosCTV_CODIGO: TIntegerField
      FieldName = 'CTV_CODIGO'
      Origin = '"CTEVEICULOS"."CTV_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteVeiculosCTV_CPF: TIBStringField
      FieldName = 'CTV_CPF'
      Origin = '"CTEVEICULOS"."CTV_CPF"'
    end
    object TBCteVeiculosCTV_CTE: TIntegerField
      FieldName = 'CTV_CTE'
      Origin = '"CTEVEICULOS"."CTV_CTE"'
      Required = True
    end
    object TBCteVeiculosCTV_ESTADO: TIBStringField
      FieldName = 'CTV_ESTADO'
      Origin = '"CTEVEICULOS"."CTV_ESTADO"'
      Size = 2
    end
    object TBCteVeiculosCTV_ESTADOPROPRIETARIO: TIBStringField
      FieldName = 'CTV_ESTADOPROPRIETARIO'
      Origin = '"CTEVEICULOS"."CTV_ESTADOPROPRIETARIO"'
      Size = 2
    end
    object TBCteVeiculosCTV_IE: TIBStringField
      FieldName = 'CTV_IE'
      Origin = '"CTEVEICULOS"."CTV_IE"'
    end
    object TBCteVeiculosCTV_NOME: TIBStringField
      FieldName = 'CTV_NOME'
      Origin = '"CTEVEICULOS"."CTV_NOME"'
      Size = 50
    end
    object TBCteVeiculosCTV_PLACA: TIBStringField
      FieldName = 'CTV_PLACA'
      Origin = '"CTEVEICULOS"."CTV_PLACA"'
      Size = 10
    end
    object TBCteVeiculosCTV_RENAVAM: TIBStringField
      FieldName = 'CTV_RENAVAM'
      Origin = '"CTEVEICULOS"."CTV_RENAVAM"'
    end
    object TBCteVeiculosCTV_RNTRC: TIBStringField
      FieldName = 'CTV_RNTRC'
      Origin = '"CTEVEICULOS"."CTV_RNTRC"'
    end
    object TBCteVeiculosCTV_TARA: TIBBCDField
      FieldName = 'CTV_TARA'
      Origin = '"CTEVEICULOS"."CTV_TARA"'
      Precision = 18
      Size = 3
    end
    object TBCteVeiculosCTV_TIPOCARROCERIA: TIBStringField
      FieldName = 'CTV_TIPOCARROCERIA'
      Origin = '"CTEVEICULOS"."CTV_TIPOCARROCERIA"'
    end
    object TBCteVeiculosCTV_TIPOPROPRIEDADE: TIBStringField
      FieldName = 'CTV_TIPOPROPRIEDADE'
      Origin = '"CTEVEICULOS"."CTV_TIPOPROPRIEDADE"'
      Size = 25
    end
    object TBCteVeiculosCTV_TIPOPROPRIETARIO: TIBStringField
      FieldName = 'CTV_TIPOPROPRIETARIO'
      Origin = '"CTEVEICULOS"."CTV_TIPOPROPRIETARIO"'
      Size = 25
    end
    object TBCteVeiculosCTV_TIPORODADO: TIBStringField
      FieldName = 'CTV_TIPORODADO'
      Origin = '"CTEVEICULOS"."CTV_TIPORODADO"'
    end
    object TBCteVeiculosCTV_TIPOVEICULO: TIBStringField
      FieldName = 'CTV_TIPOVEICULO'
      Origin = '"CTEVEICULOS"."CTV_TIPOVEICULO"'
    end
    object TBCteVeiculosCTV_VEICULO: TIntegerField
      FieldName = 'CTV_VEICULO'
      Origin = '"CTEVEICULOS"."CTV_VEICULO"'
      Required = True
    end
  end
  object DSCteVeiculos: TDataSource
    DataSet = TBCteVeiculos
    Left = 288
    Top = 328
  end
  object TRCteVeiculos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 288
    Top = 376
  end
  object TBMdfe: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfe
    AfterDelete = TBMdfeAfterDelete
    AfterEdit = TBMdfeAfterEdit
    AfterInsert = TBMdfeAfterInsert
    AfterPost = TBMdfeAfterPost
    BeforeEdit = TBMdfeBeforeEdit
    BeforeInsert = TBMdfeBeforeInsert
    BeforePost = TBMdfeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFE'
      'where'
      '  MDF_CODIGO = :OLD_MDF_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFE'
      
        '  (MDF_CHAVEACESSO, MDF_CIOT, MDF_CODIGO, MDF_CODIGONUMERICO, MD' +
        'F_DTATUALIZACAO, '
      
        '   MDF_DTEMISSAO, MDF_DTENC, MDF_HREMISSAO, MDF_ESTADOENC, MDF_E' +
        'STADOINI, '
      
        '   MDF_ESTADOFIM, MDF_INFOADICFISCO, MDF_MODAL, MDF_MODELO, MDF_' +
        'MOTIVOCANCELAMENTO, '
      
        '   MDF_OBSERVACOES, MDF_PESOBRUTO, MDF_PROTOCOLO, MDF_PROTOCOLOC' +
        'ANC, MDF_PROTOCOLOCANCDH, '
      
        '   MDF_PROTOCOLODH, MDF_PROTOCOLOENC, MDF_PROTOCOLOENCDH, MDF_QT' +
        'DECTE, '
      
        '   MDF_QTDENFE, MDF_QTDEMDFE, MDF_RCAPACIDADEKG, MDF_RCAPACIDADE' +
        'M3, MDF_RCODIGO, '
      
        '   MDF_RCNPJ, MDF_RCPF, MDF_RECIBO, MDF_RECIBODH, MDF_RESTADO, M' +
        'DF_RESTADOPROPRIETARIO, '
      
        '   MDF_RIE, MDF_RNOME, MDF_RNTRC, MDF_RPLACA, MDF_RRENAVAM, MDF_' +
        'RRNTRC, '
      
        '   MDF_RTARA, MDF_RTIPOCARROCERIA, MDF_RTIPOPROPRIETARIO, MDF_SE' +
        'RIE, MDF_STATUS, '
      
        '   MDF_TCAPACIDADEKG, MDF_TCAPACIDADEM3, MDF_TCNPJ, MDF_TCODIGO,' +
        ' MDF_TCPF, '
      
        '   MDF_TESTADO, MDF_TESTADOPROPRIETARIO, MDF_TIE, MDF_TIPOEMISSA' +
        'O, MDF_TIPOEMITENTE, '
      
        '   MDF_TIPOMEDIDA, MDF_TNOME, MDF_TPLACA, MDF_TRENAVAM, MDF_TRNT' +
        'RC, MDF_TTARA, '
      
        '   MDF_TTIPOCARROCERIA, MDF_TTIPOPROPRIETARIO, MDF_TTIPORODADO, ' +
        'MDF_USUARIO, '
      
        '   MDF_VALORCARGA, MDF_CONSULTADA, MDF_ESTADOENCCODIGO, MDF_CIDA' +
        'DEENC, '
      '   MDF_CIDADEENCCODIGO)'
      'values'
      
        '  (:MDF_CHAVEACESSO, :MDF_CIOT, :MDF_CODIGO, :MDF_CODIGONUMERICO' +
        ', :MDF_DTATUALIZACAO, '
      
        '   :MDF_DTEMISSAO, :MDF_DTENC, :MDF_HREMISSAO, :MDF_ESTADOENC, :' +
        'MDF_ESTADOINI, '
      
        '   :MDF_ESTADOFIM, :MDF_INFOADICFISCO, :MDF_MODAL, :MDF_MODELO, ' +
        ':MDF_MOTIVOCANCELAMENTO, '
      
        '   :MDF_OBSERVACOES, :MDF_PESOBRUTO, :MDF_PROTOCOLO, :MDF_PROTOC' +
        'OLOCANC, '
      
        '   :MDF_PROTOCOLOCANCDH, :MDF_PROTOCOLODH, :MDF_PROTOCOLOENC, :M' +
        'DF_PROTOCOLOENCDH, '
      
        '   :MDF_QTDECTE, :MDF_QTDENFE, :MDF_QTDEMDFE, :MDF_RCAPACIDADEKG' +
        ', :MDF_RCAPACIDADEM3, '
      
        '   :MDF_RCODIGO, :MDF_RCNPJ, :MDF_RCPF, :MDF_RECIBO, :MDF_RECIBO' +
        'DH, :MDF_RESTADO, '
      
        '   :MDF_RESTADOPROPRIETARIO, :MDF_RIE, :MDF_RNOME, :MDF_RNTRC, :' +
        'MDF_RPLACA, '
      
        '   :MDF_RRENAVAM, :MDF_RRNTRC, :MDF_RTARA, :MDF_RTIPOCARROCERIA,' +
        ' :MDF_RTIPOPROPRIETARIO, '
      
        '   :MDF_SERIE, :MDF_STATUS, :MDF_TCAPACIDADEKG, :MDF_TCAPACIDADE' +
        'M3, :MDF_TCNPJ, '
      
        '   :MDF_TCODIGO, :MDF_TCPF, :MDF_TESTADO, :MDF_TESTADOPROPRIETAR' +
        'IO, :MDF_TIE, '
      
        '   :MDF_TIPOEMISSAO, :MDF_TIPOEMITENTE, :MDF_TIPOMEDIDA, :MDF_TN' +
        'OME, :MDF_TPLACA, '
      
        '   :MDF_TRENAVAM, :MDF_TRNTRC, :MDF_TTARA, :MDF_TTIPOCARROCERIA,' +
        ' :MDF_TTIPOPROPRIETARIO, '
      
        '   :MDF_TTIPORODADO, :MDF_USUARIO, :MDF_VALORCARGA, :MDF_CONSULT' +
        'ADA, :MDF_ESTADOENCCODIGO, '
      '   :MDF_CIDADEENC, :MDF_CIDADEENCCODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  MDF_CHAVEACESSO,'
      '  MDF_CIOT,'
      '  MDF_CODIGO,'
      '  MDF_CODIGONUMERICO,'
      '  MDF_DTATUALIZACAO,'
      '  MDF_DTEMISSAO,'
      '  MDF_DTENC,'
      '  MDF_HREMISSAO,'
      '  MDF_ESTADOENC,'
      '  MDF_ESTADOINI,'
      '  MDF_ESTADOFIM,'
      '  MDF_INFOADICFISCO,'
      '  MDF_MODAL,'
      '  MDF_MODELO,'
      '  MDF_MOTIVOCANCELAMENTO,'
      '  MDF_OBSERVACOES,'
      '  MDF_PESOBRUTO,'
      '  MDF_PROTOCOLO,'
      '  MDF_PROTOCOLOCANC,'
      '  MDF_PROTOCOLOCANCDH,'
      '  MDF_PROTOCOLODH,'
      '  MDF_PROTOCOLOENC,'
      '  MDF_PROTOCOLOENCDH,'
      '  MDF_QTDECTE,'
      '  MDF_QTDENFE,'
      '  MDF_QTDEMDFE,'
      '  MDF_RCAPACIDADEKG,'
      '  MDF_RCAPACIDADEM3,'
      '  MDF_RCODIGO,'
      '  MDF_RCNPJ,'
      '  MDF_RCPF,'
      '  MDF_RECIBO,'
      '  MDF_RECIBODH,'
      '  MDF_RESTADO,'
      '  MDF_RESTADOPROPRIETARIO,'
      '  MDF_RIE,'
      '  MDF_RNOME,'
      '  MDF_RNTRC,'
      '  MDF_RPLACA,'
      '  MDF_RRENAVAM,'
      '  MDF_RRNTRC,'
      '  MDF_RTARA,'
      '  MDF_RTIPOCARROCERIA,'
      '  MDF_RTIPOPROPRIETARIO,'
      '  MDF_SERIE,'
      '  MDF_STATUS,'
      '  MDF_TCAPACIDADEKG,'
      '  MDF_TCAPACIDADEM3,'
      '  MDF_TCNPJ,'
      '  MDF_TCODIGO,'
      '  MDF_TCPF,'
      '  MDF_TESTADO,'
      '  MDF_TESTADOPROPRIETARIO,'
      '  MDF_TIE,'
      '  MDF_TIPOEMISSAO,'
      '  MDF_TIPOEMITENTE,'
      '  MDF_TIPOMEDIDA,'
      '  MDF_TNOME,'
      '  MDF_TPLACA,'
      '  MDF_TRENAVAM,'
      '  MDF_TRNTRC,'
      '  MDF_TTARA,'
      '  MDF_TTIPOCARROCERIA,'
      '  MDF_TTIPOPROPRIETARIO,'
      '  MDF_TTIPORODADO,'
      '  MDF_USUARIO,'
      '  MDF_VALORCARGA,'
      '  MDF_CONSULTADA,'
      '  MDF_ESTADOENCCODIGO,'
      '  MDF_CIDADEENC,'
      '  MDF_CIDADEENCCODIGO'
      'from MDFE '
      'where'
      '  MDF_CODIGO = :MDF_CODIGO')
    SelectSQL.Strings = (
      'select * from MDFE'
      'where MDF_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MDFE'
      'set'
      '  MDF_CHAVEACESSO = :MDF_CHAVEACESSO,'
      '  MDF_CIOT = :MDF_CIOT,'
      '  MDF_CODIGO = :MDF_CODIGO,'
      '  MDF_CODIGONUMERICO = :MDF_CODIGONUMERICO,'
      '  MDF_DTATUALIZACAO = :MDF_DTATUALIZACAO,'
      '  MDF_DTEMISSAO = :MDF_DTEMISSAO,'
      '  MDF_DTENC = :MDF_DTENC,'
      '  MDF_HREMISSAO = :MDF_HREMISSAO,'
      '  MDF_ESTADOENC = :MDF_ESTADOENC,'
      '  MDF_ESTADOINI = :MDF_ESTADOINI,'
      '  MDF_ESTADOFIM = :MDF_ESTADOFIM,'
      '  MDF_INFOADICFISCO = :MDF_INFOADICFISCO,'
      '  MDF_MODAL = :MDF_MODAL,'
      '  MDF_MODELO = :MDF_MODELO,'
      '  MDF_MOTIVOCANCELAMENTO = :MDF_MOTIVOCANCELAMENTO,'
      '  MDF_OBSERVACOES = :MDF_OBSERVACOES,'
      '  MDF_PESOBRUTO = :MDF_PESOBRUTO,'
      '  MDF_PROTOCOLO = :MDF_PROTOCOLO,'
      '  MDF_PROTOCOLOCANC = :MDF_PROTOCOLOCANC,'
      '  MDF_PROTOCOLOCANCDH = :MDF_PROTOCOLOCANCDH,'
      '  MDF_PROTOCOLODH = :MDF_PROTOCOLODH,'
      '  MDF_PROTOCOLOENC = :MDF_PROTOCOLOENC,'
      '  MDF_PROTOCOLOENCDH = :MDF_PROTOCOLOENCDH,'
      '  MDF_QTDECTE = :MDF_QTDECTE,'
      '  MDF_QTDENFE = :MDF_QTDENFE,'
      '  MDF_QTDEMDFE = :MDF_QTDEMDFE,'
      '  MDF_RCAPACIDADEKG = :MDF_RCAPACIDADEKG,'
      '  MDF_RCAPACIDADEM3 = :MDF_RCAPACIDADEM3,'
      '  MDF_RCODIGO = :MDF_RCODIGO,'
      '  MDF_RCNPJ = :MDF_RCNPJ,'
      '  MDF_RCPF = :MDF_RCPF,'
      '  MDF_RECIBO = :MDF_RECIBO,'
      '  MDF_RECIBODH = :MDF_RECIBODH,'
      '  MDF_RESTADO = :MDF_RESTADO,'
      '  MDF_RESTADOPROPRIETARIO = :MDF_RESTADOPROPRIETARIO,'
      '  MDF_RIE = :MDF_RIE,'
      '  MDF_RNOME = :MDF_RNOME,'
      '  MDF_RNTRC = :MDF_RNTRC,'
      '  MDF_RPLACA = :MDF_RPLACA,'
      '  MDF_RRENAVAM = :MDF_RRENAVAM,'
      '  MDF_RRNTRC = :MDF_RRNTRC,'
      '  MDF_RTARA = :MDF_RTARA,'
      '  MDF_RTIPOCARROCERIA = :MDF_RTIPOCARROCERIA,'
      '  MDF_RTIPOPROPRIETARIO = :MDF_RTIPOPROPRIETARIO,'
      '  MDF_SERIE = :MDF_SERIE,'
      '  MDF_STATUS = :MDF_STATUS,'
      '  MDF_TCAPACIDADEKG = :MDF_TCAPACIDADEKG,'
      '  MDF_TCAPACIDADEM3 = :MDF_TCAPACIDADEM3,'
      '  MDF_TCNPJ = :MDF_TCNPJ,'
      '  MDF_TCODIGO = :MDF_TCODIGO,'
      '  MDF_TCPF = :MDF_TCPF,'
      '  MDF_TESTADO = :MDF_TESTADO,'
      '  MDF_TESTADOPROPRIETARIO = :MDF_TESTADOPROPRIETARIO,'
      '  MDF_TIE = :MDF_TIE,'
      '  MDF_TIPOEMISSAO = :MDF_TIPOEMISSAO,'
      '  MDF_TIPOEMITENTE = :MDF_TIPOEMITENTE,'
      '  MDF_TIPOMEDIDA = :MDF_TIPOMEDIDA,'
      '  MDF_TNOME = :MDF_TNOME,'
      '  MDF_TPLACA = :MDF_TPLACA,'
      '  MDF_TRENAVAM = :MDF_TRENAVAM,'
      '  MDF_TRNTRC = :MDF_TRNTRC,'
      '  MDF_TTARA = :MDF_TTARA,'
      '  MDF_TTIPOCARROCERIA = :MDF_TTIPOCARROCERIA,'
      '  MDF_TTIPOPROPRIETARIO = :MDF_TTIPOPROPRIETARIO,'
      '  MDF_TTIPORODADO = :MDF_TTIPORODADO,'
      '  MDF_USUARIO = :MDF_USUARIO,'
      '  MDF_VALORCARGA = :MDF_VALORCARGA,'
      '  MDF_CONSULTADA = :MDF_CONSULTADA,'
      '  MDF_ESTADOENCCODIGO = :MDF_ESTADOENCCODIGO,'
      '  MDF_CIDADEENC = :MDF_CIDADEENC,'
      '  MDF_CIDADEENCCODIGO = :MDF_CIDADEENCCODIGO'
      'where'
      '  MDF_CODIGO = :OLD_MDF_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MDF_CODIGO'
    GeneratorField.Generator = 'GEN_MDFE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 672
    Top = 488
    object TBMdfeMDF_CHAVEACESSO: TIBStringField
      FieldName = 'MDF_CHAVEACESSO'
      Origin = '"MDFE"."MDF_CHAVEACESSO"'
      Size = 50
    end
    object TBMdfeMDF_CIDADEENC: TIBStringField
      FieldName = 'MDF_CIDADEENC'
      Origin = '"MDFE"."MDF_CIDADEENC"'
      Size = 50
    end
    object TBMdfeMDF_CIDADEENCCODIGO: TIntegerField
      FieldName = 'MDF_CIDADEENCCODIGO'
      Origin = '"MDFE"."MDF_CIDADEENCCODIGO"'
    end
    object TBMdfeMDF_CIOT: TIBStringField
      FieldName = 'MDF_CIOT'
      Origin = '"MDFE"."MDF_CIOT"'
      Size = 15
    end
    object TBMdfeMDF_CODIGO: TIntegerField
      FieldName = 'MDF_CODIGO'
      Origin = '"MDFE"."MDF_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfeMDF_CODIGONUMERICO: TIntegerField
      FieldName = 'MDF_CODIGONUMERICO'
      Origin = '"MDFE"."MDF_CODIGONUMERICO"'
    end
    object TBMdfeMDF_CONSULTADA: TIBStringField
      FieldName = 'MDF_CONSULTADA'
      Origin = '"MDFE"."MDF_CONSULTADA"'
      Size = 1
    end
    object TBMdfeMDF_DTATUALIZACAO: TDateField
      FieldName = 'MDF_DTATUALIZACAO'
      Origin = '"MDFE"."MDF_DTATUALIZACAO"'
    end
    object TBMdfeMDF_DTEMISSAO: TDateField
      FieldName = 'MDF_DTEMISSAO'
      Origin = '"MDFE"."MDF_DTEMISSAO"'
    end
    object TBMdfeMDF_DTENC: TDateField
      FieldName = 'MDF_DTENC'
      Origin = '"MDFE"."MDF_DTENC"'
    end
    object TBMdfeMDF_HREMISSAO: TTimeField
      FieldName = 'MDF_HREMISSAO'
      Origin = '"MDFE"."MDF_HREMISSAO"'
    end
    object TBMdfeMDF_ESTADOENC: TIBStringField
      FieldName = 'MDF_ESTADOENC'
      Origin = '"MDFE"."MDF_ESTADOENC"'
      Size = 2
    end
    object TBMdfeMDF_ESTADOENCCODIGO: TIntegerField
      FieldName = 'MDF_ESTADOENCCODIGO'
      Origin = '"MDFE"."MDF_ESTADOENCCODIGO"'
    end
    object TBMdfeMDF_ESTADOINI: TIBStringField
      FieldName = 'MDF_ESTADOINI'
      Origin = '"MDFE"."MDF_ESTADOINI"'
      Size = 2
    end
    object TBMdfeMDF_ESTADOFIM: TIBStringField
      FieldName = 'MDF_ESTADOFIM'
      Origin = '"MDFE"."MDF_ESTADOFIM"'
      Size = 2
    end
    object TBMdfeMDF_INFOADICFISCO: TWideMemoField
      FieldName = 'MDF_INFOADICFISCO'
      Origin = '"MDFE"."MDF_INFOADICFISCO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBMdfeMDF_MODAL: TIBStringField
      FieldName = 'MDF_MODAL'
      Origin = '"MDFE"."MDF_MODAL"'
      Size = 40
    end
    object TBMdfeMDF_MODELO: TIntegerField
      FieldName = 'MDF_MODELO'
      Origin = '"MDFE"."MDF_MODELO"'
    end
    object TBMdfeMDF_MOTIVOCANCELAMENTO: TIBStringField
      FieldName = 'MDF_MOTIVOCANCELAMENTO'
      Origin = '"MDFE"."MDF_MOTIVOCANCELAMENTO"'
      Size = 120
    end
    object TBMdfeMDF_OBSERVACOES: TWideMemoField
      FieldName = 'MDF_OBSERVACOES'
      Origin = '"MDFE"."MDF_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBMdfeMDF_PESOBRUTO: TIBBCDField
      FieldName = 'MDF_PESOBRUTO'
      Origin = '"MDFE"."MDF_PESOBRUTO"'
      Precision = 18
      Size = 4
    end
    object TBMdfeMDF_PROTOCOLO: TIBStringField
      FieldName = 'MDF_PROTOCOLO'
      Origin = '"MDFE"."MDF_PROTOCOLO"'
    end
    object TBMdfeMDF_PROTOCOLOCANC: TIBStringField
      FieldName = 'MDF_PROTOCOLOCANC'
      Origin = '"MDFE"."MDF_PROTOCOLOCANC"'
    end
    object TBMdfeMDF_PROTOCOLOCANCDH: TIBStringField
      FieldName = 'MDF_PROTOCOLOCANCDH'
      Origin = '"MDFE"."MDF_PROTOCOLOCANCDH"'
      Size = 30
    end
    object TBMdfeMDF_PROTOCOLODH: TIBStringField
      FieldName = 'MDF_PROTOCOLODH'
      Origin = '"MDFE"."MDF_PROTOCOLODH"'
      Size = 30
    end
    object TBMdfeMDF_PROTOCOLOENC: TIBStringField
      FieldName = 'MDF_PROTOCOLOENC'
      Origin = '"MDFE"."MDF_PROTOCOLOENC"'
    end
    object TBMdfeMDF_PROTOCOLOENCDH: TIBStringField
      FieldName = 'MDF_PROTOCOLOENCDH'
      Origin = '"MDFE"."MDF_PROTOCOLOENCDH"'
      Size = 30
    end
    object TBMdfeMDF_QTDECTE: TIntegerField
      FieldName = 'MDF_QTDECTE'
      Origin = '"MDFE"."MDF_QTDECTE"'
    end
    object TBMdfeMDF_QTDENFE: TIntegerField
      FieldName = 'MDF_QTDENFE'
      Origin = '"MDFE"."MDF_QTDENFE"'
    end
    object TBMdfeMDF_QTDEMDFE: TIntegerField
      FieldName = 'MDF_QTDEMDFE'
      Origin = '"MDFE"."MDF_QTDEMDFE"'
    end
    object TBMdfeMDF_RCAPACIDADEKG: TIBBCDField
      FieldName = 'MDF_RCAPACIDADEKG'
      Origin = '"MDFE"."MDF_RCAPACIDADEKG"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RCAPACIDADEM3: TIBBCDField
      FieldName = 'MDF_RCAPACIDADEM3'
      Origin = '"MDFE"."MDF_RCAPACIDADEM3"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RCODIGO: TIntegerField
      FieldName = 'MDF_RCODIGO'
      Origin = '"MDFE"."MDF_RCODIGO"'
    end
    object TBMdfeMDF_RCNPJ: TIBStringField
      FieldName = 'MDF_RCNPJ'
      Origin = '"MDFE"."MDF_RCNPJ"'
    end
    object TBMdfeMDF_RCPF: TIBStringField
      FieldName = 'MDF_RCPF'
      Origin = '"MDFE"."MDF_RCPF"'
    end
    object TBMdfeMDF_RECIBO: TIBStringField
      FieldName = 'MDF_RECIBO'
      Origin = '"MDFE"."MDF_RECIBO"'
    end
    object TBMdfeMDF_RECIBODH: TIBStringField
      FieldName = 'MDF_RECIBODH'
      Origin = '"MDFE"."MDF_RECIBODH"'
      Size = 30
    end
    object TBMdfeMDF_RESTADO: TIBStringField
      FieldName = 'MDF_RESTADO'
      Origin = '"MDFE"."MDF_RESTADO"'
      Size = 2
    end
    object TBMdfeMDF_RESTADOPROPRIETARIO: TIBStringField
      FieldName = 'MDF_RESTADOPROPRIETARIO'
      Origin = '"MDFE"."MDF_RESTADOPROPRIETARIO"'
      Size = 2
    end
    object TBMdfeMDF_RIE: TIBStringField
      FieldName = 'MDF_RIE'
      Origin = '"MDFE"."MDF_RIE"'
    end
    object TBMdfeMDF_RNOME: TIBStringField
      FieldName = 'MDF_RNOME'
      Origin = '"MDFE"."MDF_RNOME"'
      Size = 50
    end
    object TBMdfeMDF_RNTRC: TIBStringField
      FieldName = 'MDF_RNTRC'
      Origin = '"MDFE"."MDF_RNTRC"'
    end
    object TBMdfeMDF_RPLACA: TIBStringField
      FieldName = 'MDF_RPLACA'
      Origin = '"MDFE"."MDF_RPLACA"'
      EditMask = 'aaa\-9999;1;_'
      Size = 10
    end
    object TBMdfeMDF_RRENAVAM: TIBStringField
      FieldName = 'MDF_RRENAVAM'
      Origin = '"MDFE"."MDF_RRENAVAM"'
    end
    object TBMdfeMDF_RRNTRC: TIBStringField
      FieldName = 'MDF_RRNTRC'
      Origin = '"MDFE"."MDF_RRNTRC"'
    end
    object TBMdfeMDF_RTARA: TIBBCDField
      FieldName = 'MDF_RTARA'
      Origin = '"MDFE"."MDF_RTARA"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RTIPOCARROCERIA: TIBStringField
      FieldName = 'MDF_RTIPOCARROCERIA'
      Origin = '"MDFE"."MDF_RTIPOCARROCERIA"'
    end
    object TBMdfeMDF_RTIPOPROPRIETARIO: TIBStringField
      FieldName = 'MDF_RTIPOPROPRIETARIO'
      Origin = '"MDFE"."MDF_RTIPOPROPRIETARIO"'
      Size = 25
    end
    object TBMdfeMDF_SERIE: TIntegerField
      FieldName = 'MDF_SERIE'
      Origin = '"MDFE"."MDF_SERIE"'
    end
    object TBMdfeMDF_STATUS: TIBStringField
      FieldName = 'MDF_STATUS'
      Origin = '"MDFE"."MDF_STATUS"'
      Size = 1
    end
    object TBMdfeMDF_TCAPACIDADEKG: TIBBCDField
      FieldName = 'MDF_TCAPACIDADEKG'
      Origin = '"MDFE"."MDF_TCAPACIDADEKG"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TCAPACIDADEM3: TIBBCDField
      FieldName = 'MDF_TCAPACIDADEM3'
      Origin = '"MDFE"."MDF_TCAPACIDADEM3"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TCNPJ: TIBStringField
      FieldName = 'MDF_TCNPJ'
      Origin = '"MDFE"."MDF_TCNPJ"'
    end
    object TBMdfeMDF_TCODIGO: TIntegerField
      FieldName = 'MDF_TCODIGO'
      Origin = '"MDFE"."MDF_TCODIGO"'
    end
    object TBMdfeMDF_TCPF: TIBStringField
      FieldName = 'MDF_TCPF'
      Origin = '"MDFE"."MDF_TCPF"'
    end
    object TBMdfeMDF_TESTADO: TIBStringField
      FieldName = 'MDF_TESTADO'
      Origin = '"MDFE"."MDF_TESTADO"'
      Size = 2
    end
    object TBMdfeMDF_TESTADOPROPRIETARIO: TIBStringField
      FieldName = 'MDF_TESTADOPROPRIETARIO'
      Origin = '"MDFE"."MDF_TESTADOPROPRIETARIO"'
      Size = 2
    end
    object TBMdfeMDF_TIE: TIBStringField
      FieldName = 'MDF_TIE'
      Origin = '"MDFE"."MDF_TIE"'
    end
    object TBMdfeMDF_TIPOEMISSAO: TIBStringField
      FieldName = 'MDF_TIPOEMISSAO'
      Origin = '"MDFE"."MDF_TIPOEMISSAO"'
      Size = 40
    end
    object TBMdfeMDF_TIPOEMITENTE: TIBStringField
      FieldName = 'MDF_TIPOEMITENTE'
      Origin = '"MDFE"."MDF_TIPOEMITENTE"'
      Size = 50
    end
    object TBMdfeMDF_TIPOMEDIDA: TIBStringField
      FieldName = 'MDF_TIPOMEDIDA'
      Origin = '"MDFE"."MDF_TIPOMEDIDA"'
    end
    object TBMdfeMDF_TNOME: TIBStringField
      FieldName = 'MDF_TNOME'
      Origin = '"MDFE"."MDF_TNOME"'
      Size = 50
    end
    object TBMdfeMDF_TPLACA: TIBStringField
      FieldName = 'MDF_TPLACA'
      Origin = '"MDFE"."MDF_TPLACA"'
      EditMask = 'aaa\-9999;1;_'
      Size = 10
    end
    object TBMdfeMDF_TRENAVAM: TIBStringField
      FieldName = 'MDF_TRENAVAM'
      Origin = '"MDFE"."MDF_TRENAVAM"'
    end
    object TBMdfeMDF_TRNTRC: TIBStringField
      FieldName = 'MDF_TRNTRC'
      Origin = '"MDFE"."MDF_TRNTRC"'
    end
    object TBMdfeMDF_TTARA: TIBBCDField
      FieldName = 'MDF_TTARA'
      Origin = '"MDFE"."MDF_TTARA"'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TTIPOCARROCERIA: TIBStringField
      FieldName = 'MDF_TTIPOCARROCERIA'
      Origin = '"MDFE"."MDF_TTIPOCARROCERIA"'
    end
    object TBMdfeMDF_TTIPOPROPRIETARIO: TIBStringField
      FieldName = 'MDF_TTIPOPROPRIETARIO'
      Origin = '"MDFE"."MDF_TTIPOPROPRIETARIO"'
      Size = 25
    end
    object TBMdfeMDF_TTIPORODADO: TIBStringField
      FieldName = 'MDF_TTIPORODADO'
      Origin = '"MDFE"."MDF_TTIPORODADO"'
    end
    object TBMdfeMDF_USUARIO: TIBStringField
      FieldName = 'MDF_USUARIO'
      Origin = '"MDFE"."MDF_USUARIO"'
    end
    object TBMdfeMDF_VALORCARGA: TIBBCDField
      FieldName = 'MDF_VALORCARGA'
      Origin = '"MDFE"."MDF_VALORCARGA"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSMdfe: TDataSource
    DataSet = TBMdfe
    OnStateChange = DSMdfeStateChange
    Left = 672
    Top = 536
  end
  object TRMdfe: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 672
    Top = 584
  end
  object TBMdfeCarrega: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfeCarrega
    AfterDelete = TBMdfeCarregaAfterDelete
    AfterInsert = TBMdfeCarregaAfterInsert
    AfterPost = TBMdfeCarregaAfterPost
    BeforePost = TBMdfeCarregaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFECARREGA'
      'where'
      '  MDC_CODIGO = :OLD_MDC_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFECARREGA'
      '  (MDC_CODIGO, MDC_MDFE, MDC_CIDADE, MDC_CIDADECODIGO)'
      'values'
      '  (:MDC_CODIGO, :MDC_MDFE, :MDC_CIDADE, :MDC_CIDADECODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  MDC_CODIGO,'
      '  MDC_MDFE,'
      '  MDC_CIDADE,'
      '  MDC_CIDADECODIGO'
      'from MDFECARREGA '
      'where'
      '  MDC_CODIGO = :MDC_CODIGO')
    SelectSQL.Strings = (
      'select * from MDFECARREGA'
      'where MDC_MDFE=:MDF_CODIGO'
      'order by MDC_CIDADE')
    ModifySQL.Strings = (
      'update MDFECARREGA'
      'set'
      '  MDC_CODIGO = :MDC_CODIGO,'
      '  MDC_MDFE = :MDC_MDFE,'
      '  MDC_CIDADE = :MDC_CIDADE,'
      '  MDC_CIDADECODIGO = :MDC_CIDADECODIGO'
      'where'
      '  MDC_CODIGO = :OLD_MDC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MDC_CODIGO'
    GeneratorField.Generator = 'GEN_MDFECARREGA'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMdfe
    Left = 736
    Top = 488
    object TBMdfeCarregaMDC_CODIGO: TIntegerField
      FieldName = 'MDC_CODIGO'
      Origin = '"MDFECIDADES"."MDC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfeCarregaMDC_MDFE: TIntegerField
      FieldName = 'MDC_MDFE'
      Origin = '"MDFECIDADES"."MDC_MDFE"'
      Required = True
    end
    object TBMdfeCarregaMDC_CIDADE: TIBStringField
      FieldName = 'MDC_CIDADE'
      Origin = '"MDFECIDADES"."MDC_CIDADE"'
      Size = 50
    end
    object TBMdfeCarregaMDC_CIDADECODIGO: TIntegerField
      FieldName = 'MDC_CIDADECODIGO'
      Origin = '"MDFECIDADES"."MDC_CIDADECODIGO"'
    end
  end
  object DSMdfeCarrega: TDataSource
    DataSet = TBMdfeCarrega
    Left = 736
    Top = 536
  end
  object TRMdfeCarrega: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 584
  end
  object TBMdfeMotoristas: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfeMotoristas
    AfterDelete = TBMdfeMotoristasAfterDelete
    AfterInsert = TBMdfeMotoristasAfterInsert
    AfterPost = TBMdfeMotoristasAfterPost
    BeforePost = TBMdfeMotoristasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFEMOTORISTAS'
      'where'
      '  MDM_CODIGO = :OLD_MDM_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFEMOTORISTAS'
      '  (MDM_CODIGO, MDM_MDFE, MDM_NOME, MDM_CPF)'
      'values'
      '  (:MDM_CODIGO, :MDM_MDFE, :MDM_NOME, :MDM_CPF)')
    RefreshSQL.Strings = (
      'Select '
      '  MDM_CODIGO,'
      '  MDM_MDFE,'
      '  MDM_NOME,'
      '  MDM_CPF'
      'from MDFEMOTORISTAS '
      'where'
      '  MDM_CODIGO = :MDM_CODIGO')
    SelectSQL.Strings = (
      'select * from MDFEMOTORISTAS'
      'where MDM_MDFE=:MDF_CODIGO'
      'order by MDM_NOME')
    ModifySQL.Strings = (
      'update MDFEMOTORISTAS'
      'set'
      '  MDM_CODIGO = :MDM_CODIGO,'
      '  MDM_MDFE = :MDM_MDFE,'
      '  MDM_NOME = :MDM_NOME,'
      '  MDM_CPF = :MDM_CPF'
      'where'
      '  MDM_CODIGO = :OLD_MDM_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MDM_CODIGO'
    GeneratorField.Generator = 'GEN_MDFEMOTORISTAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMdfe
    Left = 928
    Top = 488
    object TBMdfeMotoristasMDM_CODIGO: TIntegerField
      FieldName = 'MDM_CODIGO'
      Origin = '"MDFEMOTORISTAS"."MDM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfeMotoristasMDM_MDFE: TIntegerField
      FieldName = 'MDM_MDFE'
      Origin = '"MDFEMOTORISTAS"."MDM_MDFE"'
      Required = True
    end
    object TBMdfeMotoristasMDM_NOME: TIBStringField
      FieldName = 'MDM_NOME'
      Origin = '"MDFEMOTORISTAS"."MDM_NOME"'
      Size = 50
    end
    object TBMdfeMotoristasMDM_CPF: TIBStringField
      FieldName = 'MDM_CPF'
      Origin = '"MDFEMOTORISTAS"."MDM_CPF"'
    end
  end
  object DSMdfeMotoristas: TDataSource
    DataSet = TBMdfeMotoristas
    Left = 928
    Top = 536
  end
  object TRMdfeMotoristas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 928
    Top = 584
  end
  object TBMdfePercursos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfePercursos
    AfterDelete = TBMdfePercursosAfterDelete
    AfterInsert = TBMdfePercursosAfterInsert
    AfterPost = TBMdfePercursosAfterPost
    BeforePost = TBMdfePercursosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFEPERCURSOS'
      'where'
      '  MDP_CODIGO = :OLD_MDP_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFEPERCURSOS'
      '  (MDP_CODIGO, MDP_MDFE, MDP_ESTADO)'
      'values'
      '  (:MDP_CODIGO, :MDP_MDFE, :MDP_ESTADO)')
    RefreshSQL.Strings = (
      'Select '
      '  MDP_CODIGO,'
      '  MDP_MDFE,'
      '  MDP_ESTADO'
      'from MDFEPERCURSOS '
      'where'
      '  MDP_CODIGO = :MDP_CODIGO')
    SelectSQL.Strings = (
      'select * from MDFEPERCURSOS'
      'where MDP_MDFE=:MDF_CODIGO'
      'order by MDP_CODIGO')
    ModifySQL.Strings = (
      'update MDFEPERCURSOS'
      'set'
      '  MDP_CODIGO = :MDP_CODIGO,'
      '  MDP_MDFE = :MDP_MDFE,'
      '  MDP_ESTADO = :MDP_ESTADO'
      'where'
      '  MDP_CODIGO = :OLD_MDP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MDP_CODIGO'
    GeneratorField.Generator = 'GEN_MDFEPERCURSOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMdfe
    Left = 992
    Top = 488
    object TBMdfePercursosMDP_CODIGO: TIntegerField
      FieldName = 'MDP_CODIGO'
      Origin = '"MDFEPERCURSOS"."MDP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfePercursosMDP_MDFE: TIntegerField
      FieldName = 'MDP_MDFE'
      Origin = '"MDFEPERCURSOS"."MDP_MDFE"'
      Required = True
    end
    object TBMdfePercursosMDP_ESTADO: TIBStringField
      FieldName = 'MDP_ESTADO'
      Origin = '"MDFEPERCURSOS"."MDP_ESTADO"'
      Size = 2
    end
  end
  object DSMdfePercursos: TDataSource
    DataSet = TBMdfePercursos
    Left = 992
    Top = 536
  end
  object TRMdfePercursos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 992
    Top = 584
  end
  object TBMdfeDocs: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfeDocs
    AfterDelete = TBMdfeDocsAfterDelete
    AfterInsert = TBMdfeDocsAfterInsert
    AfterPost = TBMdfeDocsAfterPost
    BeforePost = TBMdfeDocsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFEDOCS'
      'where'
      '  MFD_CODIGO = :OLD_MFD_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFEDOCS'
      
        '  (MFD_CODIGO, MFD_MDFEDESCARREGA, MFD_MDFE, MFD_TIPODOC, MFD_CH' +
        'AVEACESSO, '
      '   MFD_CODIGOBARRAS)'
      'values'
      
        '  (:MFD_CODIGO, :MFD_MDFEDESCARREGA, :MFD_MDFE, :MFD_TIPODOC, :M' +
        'FD_CHAVEACESSO, '
      '   :MFD_CODIGOBARRAS)')
    RefreshSQL.Strings = (
      'Select '
      '  MFD_CODIGO,'
      '  MFD_MDFEDESCARREGA,'
      '  MFD_MDFE,'
      '  MFD_TIPODOC,'
      '  MFD_CHAVEACESSO,'
      '  MFD_CODIGOBARRAS'
      'from MDFEDOCS '
      'where'
      '  MFD_CODIGO = :MFD_CODIGO')
    SelectSQL.Strings = (
      'select'
      'MFD_CHAVEACESSO,'
      'MFD_CODIGO, '
      'MFD_CODIGOBARRAS,'
      'MFD_MDFE,'
      'MFD_MDFEDESCARREGA,'
      'MFD_TIPODOC,'
      'MDD_CIDADE'
      'from MDFEDOCS'
      'left join MDFEDESCARREGA on MFD_MDFEDESCARREGA=MDD_CODIGO'
      'where MFD_MDFE=:MDF_CODIGO'
      'order by MFD_CODIGO')
    ModifySQL.Strings = (
      'update MDFEDOCS'
      'set'
      '  MFD_CODIGO = :MFD_CODIGO,'
      '  MFD_MDFEDESCARREGA = :MFD_MDFEDESCARREGA,'
      '  MFD_MDFE = :MFD_MDFE,'
      '  MFD_TIPODOC = :MFD_TIPODOC,'
      '  MFD_CHAVEACESSO = :MFD_CHAVEACESSO,'
      '  MFD_CODIGOBARRAS = :MFD_CODIGOBARRAS'
      'where'
      '  MFD_CODIGO = :OLD_MFD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MFD_CODIGO'
    GeneratorField.Generator = 'GEN_MDFEDOCS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMdfe
    Left = 864
    Top = 488
    object TBMdfeDocsMFD_CODIGO: TIntegerField
      FieldName = 'MFD_CODIGO'
      Origin = '"MDFEDOCS"."MFD_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfeDocsMFD_MDFEDESCARREGA: TIntegerField
      FieldName = 'MFD_MDFEDESCARREGA'
      Origin = '"MDFEDOCS"."MFD_MDFEDESCARREGA"'
      Required = True
    end
    object TBMdfeDocsMFD_MDFE: TIntegerField
      FieldName = 'MFD_MDFE'
      Origin = '"MDFEDOCS"."MFD_MDFE"'
      Required = True
    end
    object TBMdfeDocsMFD_TIPODOC: TIBStringField
      FieldName = 'MFD_TIPODOC'
      Origin = '"MDFEDOCS"."MFD_TIPODOC"'
    end
    object TBMdfeDocsMFD_CHAVEACESSO: TIBStringField
      FieldName = 'MFD_CHAVEACESSO'
      Origin = '"MDFEDOCS"."MFD_CHAVEACESSO"'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBMdfeDocsMFD_CODIGOBARRAS: TIBStringField
      FieldName = 'MFD_CODIGOBARRAS'
      Origin = '"MDFEDOCS"."MFD_CODIGOBARRAS"'
      EditMask = '999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBMdfeDocsMDD_CIDADE: TIBStringField
      FieldName = 'MDD_CIDADE'
      Origin = '"MDFEDESCARREGA"."MDD_CIDADE"'
      Size = 50
    end
  end
  object DSMdfeDocs: TDataSource
    DataSet = TBMdfeDocs
    Left = 864
    Top = 536
  end
  object TRMdfeDocs: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 864
    Top = 584
  end
  object TBMdfeDescarrega: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMdfeDescarrega
    AfterDelete = TBMdfeDescarregaAfterDelete
    AfterInsert = TBMdfeDescarregaAfterInsert
    AfterPost = TBMdfeDescarregaAfterPost
    BeforePost = TBMdfeDescarregaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MDFEDESCARREGA'
      'where'
      '  MDD_CODIGO = :OLD_MDD_CODIGO')
    InsertSQL.Strings = (
      'insert into MDFEDESCARREGA'
      '  (MDD_CODIGO, MDD_MDFE, MDD_CIDADE, MDD_CIDADECODIGO)'
      'values'
      '  (:MDD_CODIGO, :MDD_MDFE, :MDD_CIDADE, :MDD_CIDADECODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  MDD_CODIGO,'
      '  MDD_MDFE,'
      '  MDD_CIDADE,'
      '  MDD_CIDADECODIGO'
      'from MDFEDESCARREGA '
      'where'
      '  MDD_CODIGO = :MDD_CODIGO')
    SelectSQL.Strings = (
      'select * from MDFEDESCARREGA'
      'where MDD_MDFE=:MDF_CODIGO'
      'order by MDD_CIDADE')
    ModifySQL.Strings = (
      'update MDFEDESCARREGA'
      'set'
      '  MDD_CODIGO = :MDD_CODIGO,'
      '  MDD_MDFE = :MDD_MDFE,'
      '  MDD_CIDADE = :MDD_CIDADE,'
      '  MDD_CIDADECODIGO = :MDD_CIDADECODIGO'
      'where'
      '  MDD_CODIGO = :OLD_MDD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MDD_CODIGO'
    GeneratorField.Generator = 'GEN_MDFEDESCARREGA'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMdfe
    Left = 800
    Top = 488
    object TBMdfeDescarregaMDD_CODIGO: TIntegerField
      FieldName = 'MDD_CODIGO'
      Origin = '"MDFEDESCARREGA"."MDD_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMdfeDescarregaMDD_MDFE: TIntegerField
      FieldName = 'MDD_MDFE'
      Origin = '"MDFEDESCARREGA"."MDD_MDFE"'
      Required = True
    end
    object TBMdfeDescarregaMDD_CIDADE: TIBStringField
      FieldName = 'MDD_CIDADE'
      Origin = '"MDFEDESCARREGA"."MDD_CIDADE"'
      Size = 50
    end
    object TBMdfeDescarregaMDD_CIDADECODIGO: TIntegerField
      FieldName = 'MDD_CIDADECODIGO'
      Origin = '"MDFEDESCARREGA"."MDD_CIDADECODIGO"'
      Required = True
    end
  end
  object DSMdfeDescarrega: TDataSource
    DataSet = TBMdfeDescarrega
    Left = 800
    Top = 536
  end
  object TRMdfeDescarrega: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 800
    Top = 584
  end
  object TBGnre: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRGnre
    AfterDelete = TBGnreAfterDelete
    AfterEdit = TBGnreAfterEdit
    AfterInsert = TBGnreAfterInsert
    AfterPost = TBGnreAfterPost
    BeforeEdit = TBGnreBeforeEdit
    BeforeInsert = TBGnreBeforeInsert
    BeforePost = TBGnreBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GNRE'
      'where'
      '  GNR_CODIGO = :OLD_GNR_CODIGO')
    InsertSQL.Strings = (
      'insert into GNRE'
      
        '  (GNR_CODIGO, GNR_CODIGOBARRAS, GNR_CONTROLE, GNR_CONVENIO, GNR' +
        '_DESTCIDADE, '
      
        '   GNR_DESTCIDADECODIGO, GNR_DESTDOCUMENTO, GNR_DESTDOCUMENTOTIP' +
        'O, GNR_DTATUALIZACAO, '
      
        '   GNR_DTCADASTRO, GNR_DTLIMITE, GNR_DTPAGAMENTO, GNR_DTVENCIMEN' +
        'TO, GNR_EMITCEP, '
      
        '   GNR_EMITCIDADECODIGO, GNR_EMITDOCUMENTO, GNR_EMITDOCUMENTOTIP' +
        'O, GNR_EMITENDERECO, '
      
        '   GNR_EMITESTADO, GNR_EMITFONE, GNR_EMITIENAUFFAVORECIDA, GNR_E' +
        'MITRAZAO, '
      
        '   GNR_ESTADOFAVORECIDO, GNR_INFOCOMPLEMENTAR, GNR_MESANOREFEREN' +
        'CIA, GNR_NUMDOCTO, '
      
        '   GNR_PARCELA, GNR_PERIODOREFERENCIA, GNR_PRODUTO, GNR_PROTOCOL' +
        'O, GNR_RECEITA, '
      
        '   GNR_REPNUMERICA, GNR_STATUS, GNR_USUARIO, GNR_VALORATUALIZACA' +
        'O, GNR_VALORJUROS, '
      
        '   GNR_VALORMULTA, GNR_VALORPRINCIPAL, GNR_TIPODOCTOORIGEM, GNR_' +
        'CHAVEACESSO, '
      '   GNR_RECIBO, GNR_DESTNOME, GNR_VALORTOTAL)'
      'values'
      
        '  (:GNR_CODIGO, :GNR_CODIGOBARRAS, :GNR_CONTROLE, :GNR_CONVENIO,' +
        ' :GNR_DESTCIDADE, '
      
        '   :GNR_DESTCIDADECODIGO, :GNR_DESTDOCUMENTO, :GNR_DESTDOCUMENTO' +
        'TIPO, :GNR_DTATUALIZACAO, '
      
        '   :GNR_DTCADASTRO, :GNR_DTLIMITE, :GNR_DTPAGAMENTO, :GNR_DTVENC' +
        'IMENTO, '
      
        '   :GNR_EMITCEP, :GNR_EMITCIDADECODIGO, :GNR_EMITDOCUMENTO, :GNR' +
        '_EMITDOCUMENTOTIPO, '
      
        '   :GNR_EMITENDERECO, :GNR_EMITESTADO, :GNR_EMITFONE, :GNR_EMITI' +
        'ENAUFFAVORECIDA, '
      
        '   :GNR_EMITRAZAO, :GNR_ESTADOFAVORECIDO, :GNR_INFOCOMPLEMENTAR,' +
        ' :GNR_MESANOREFERENCIA, '
      
        '   :GNR_NUMDOCTO, :GNR_PARCELA, :GNR_PERIODOREFERENCIA, :GNR_PRO' +
        'DUTO, :GNR_PROTOCOLO, '
      
        '   :GNR_RECEITA, :GNR_REPNUMERICA, :GNR_STATUS, :GNR_USUARIO, :G' +
        'NR_VALORATUALIZACAO, '
      
        '   :GNR_VALORJUROS, :GNR_VALORMULTA, :GNR_VALORPRINCIPAL, :GNR_T' +
        'IPODOCTOORIGEM, '
      
        '   :GNR_CHAVEACESSO, :GNR_RECIBO, :GNR_DESTNOME, :GNR_VALORTOTAL' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  GNR_CODIGO,'
      '  GNR_CODIGOBARRAS,'
      '  GNR_CONTROLE,'
      '  GNR_CONVENIO,'
      '  GNR_DESTCIDADE,'
      '  GNR_DESTCIDADECODIGO,'
      '  GNR_DESTDOCUMENTO,'
      '  GNR_DESTDOCUMENTOTIPO,'
      '  GNR_DTATUALIZACAO,'
      '  GNR_DTCADASTRO,'
      '  GNR_DTLIMITE,'
      '  GNR_DTPAGAMENTO,'
      '  GNR_DTVENCIMENTO,'
      '  GNR_EMITCEP,'
      '  GNR_EMITCIDADECODIGO,'
      '  GNR_EMITDOCUMENTO,'
      '  GNR_EMITDOCUMENTOTIPO,'
      '  GNR_EMITENDERECO,'
      '  GNR_EMITESTADO,'
      '  GNR_EMITFONE,'
      '  GNR_EMITIENAUFFAVORECIDA,'
      '  GNR_EMITRAZAO,'
      '  GNR_ESTADOFAVORECIDO,'
      '  GNR_INFOCOMPLEMENTAR,'
      '  GNR_MESANOREFERENCIA,'
      '  GNR_NUMDOCTO,'
      '  GNR_PARCELA,'
      '  GNR_PERIODOREFERENCIA,'
      '  GNR_PRODUTO,'
      '  GNR_PROTOCOLO,'
      '  GNR_RECEITA,'
      '  GNR_REPNUMERICA,'
      '  GNR_STATUS,'
      '  GNR_USUARIO,'
      '  GNR_VALORATUALIZACAO,'
      '  GNR_VALORJUROS,'
      '  GNR_VALORMULTA,'
      '  GNR_VALORPRINCIPAL,'
      '  GNR_TIPODOCTOORIGEM,'
      '  GNR_CHAVEACESSO,'
      '  GNR_RECIBO,'
      '  GNR_DESTNOME,'
      '  GNR_VALORTOTAL'
      'from GNRE '
      'where'
      '  GNR_CODIGO = :GNR_CODIGO')
    SelectSQL.Strings = (
      'select * from GNRE'
      'where GNR_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update GNRE'
      'set'
      '  GNR_CODIGO = :GNR_CODIGO,'
      '  GNR_CODIGOBARRAS = :GNR_CODIGOBARRAS,'
      '  GNR_CONTROLE = :GNR_CONTROLE,'
      '  GNR_CONVENIO = :GNR_CONVENIO,'
      '  GNR_DESTCIDADE = :GNR_DESTCIDADE,'
      '  GNR_DESTCIDADECODIGO = :GNR_DESTCIDADECODIGO,'
      '  GNR_DESTDOCUMENTO = :GNR_DESTDOCUMENTO,'
      '  GNR_DESTDOCUMENTOTIPO = :GNR_DESTDOCUMENTOTIPO,'
      '  GNR_DTATUALIZACAO = :GNR_DTATUALIZACAO,'
      '  GNR_DTCADASTRO = :GNR_DTCADASTRO,'
      '  GNR_DTLIMITE = :GNR_DTLIMITE,'
      '  GNR_DTPAGAMENTO = :GNR_DTPAGAMENTO,'
      '  GNR_DTVENCIMENTO = :GNR_DTVENCIMENTO,'
      '  GNR_EMITCEP = :GNR_EMITCEP,'
      '  GNR_EMITCIDADECODIGO = :GNR_EMITCIDADECODIGO,'
      '  GNR_EMITDOCUMENTO = :GNR_EMITDOCUMENTO,'
      '  GNR_EMITDOCUMENTOTIPO = :GNR_EMITDOCUMENTOTIPO,'
      '  GNR_EMITENDERECO = :GNR_EMITENDERECO,'
      '  GNR_EMITESTADO = :GNR_EMITESTADO,'
      '  GNR_EMITFONE = :GNR_EMITFONE,'
      '  GNR_EMITIENAUFFAVORECIDA = :GNR_EMITIENAUFFAVORECIDA,'
      '  GNR_EMITRAZAO = :GNR_EMITRAZAO,'
      '  GNR_ESTADOFAVORECIDO = :GNR_ESTADOFAVORECIDO,'
      '  GNR_INFOCOMPLEMENTAR = :GNR_INFOCOMPLEMENTAR,'
      '  GNR_MESANOREFERENCIA = :GNR_MESANOREFERENCIA,'
      '  GNR_NUMDOCTO = :GNR_NUMDOCTO,'
      '  GNR_PARCELA = :GNR_PARCELA,'
      '  GNR_PERIODOREFERENCIA = :GNR_PERIODOREFERENCIA,'
      '  GNR_PRODUTO = :GNR_PRODUTO,'
      '  GNR_PROTOCOLO = :GNR_PROTOCOLO,'
      '  GNR_RECEITA = :GNR_RECEITA,'
      '  GNR_REPNUMERICA = :GNR_REPNUMERICA,'
      '  GNR_STATUS = :GNR_STATUS,'
      '  GNR_USUARIO = :GNR_USUARIO,'
      '  GNR_VALORATUALIZACAO = :GNR_VALORATUALIZACAO,'
      '  GNR_VALORJUROS = :GNR_VALORJUROS,'
      '  GNR_VALORMULTA = :GNR_VALORMULTA,'
      '  GNR_VALORPRINCIPAL = :GNR_VALORPRINCIPAL,'
      '  GNR_TIPODOCTOORIGEM = :GNR_TIPODOCTOORIGEM,'
      '  GNR_CHAVEACESSO = :GNR_CHAVEACESSO,'
      '  GNR_RECIBO = :GNR_RECIBO,'
      '  GNR_DESTNOME = :GNR_DESTNOME,'
      '  GNR_VALORTOTAL = :GNR_VALORTOTAL'
      'where'
      '  GNR_CODIGO = :OLD_GNR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'GNR_CODIGO'
    GeneratorField.Generator = 'GEN_GNRE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 488
    object TBGnreGNR_CHAVEACESSO: TIBStringField
      FieldName = 'GNR_CHAVEACESSO'
      Origin = '"GNRE"."GNR_CHAVEACESSO"'
      Size = 50
    end
    object TBGnreGNR_CODIGO: TIntegerField
      FieldName = 'GNR_CODIGO'
      Origin = '"GNRE"."GNR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBGnreGNR_CODIGOBARRAS: TIBStringField
      FieldName = 'GNR_CODIGOBARRAS'
      Origin = '"GNRE"."GNR_CODIGOBARRAS"'
      Size = 50
    end
    object TBGnreGNR_CONTROLE: TIBStringField
      FieldName = 'GNR_CONTROLE'
      Origin = '"GNRE"."GNR_CONTROLE"'
    end
    object TBGnreGNR_CONVENIO: TIBStringField
      FieldName = 'GNR_CONVENIO'
      Origin = '"GNRE"."GNR_CONVENIO"'
      Size = 50
    end
    object TBGnreGNR_DESTCIDADE: TIBStringField
      FieldName = 'GNR_DESTCIDADE'
      Origin = '"GNRE"."GNR_DESTCIDADE"'
      Size = 50
    end
    object TBGnreGNR_DESTCIDADECODIGO: TIntegerField
      FieldName = 'GNR_DESTCIDADECODIGO'
      Origin = '"GNRE"."GNR_DESTCIDADECODIGO"'
    end
    object TBGnreGNR_DESTDOCUMENTO: TIBStringField
      FieldName = 'GNR_DESTDOCUMENTO'
      Origin = '"GNRE"."GNR_DESTDOCUMENTO"'
    end
    object TBGnreGNR_DESTDOCUMENTOTIPO: TIBStringField
      FieldName = 'GNR_DESTDOCUMENTOTIPO'
      Origin = '"GNRE"."GNR_DESTDOCUMENTOTIPO"'
    end
    object TBGnreGNR_DESTNOME: TIBStringField
      FieldName = 'GNR_DESTNOME'
      Origin = '"GNRE"."GNR_DESTNOME"'
      Size = 50
    end
    object TBGnreGNR_DTATUALIZACAO: TDateField
      FieldName = 'GNR_DTATUALIZACAO'
      Origin = '"GNRE"."GNR_DTATUALIZACAO"'
    end
    object TBGnreGNR_DTCADASTRO: TDateField
      FieldName = 'GNR_DTCADASTRO'
      Origin = '"GNRE"."GNR_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_DTLIMITE: TDateField
      FieldName = 'GNR_DTLIMITE'
      Origin = '"GNRE"."GNR_DTLIMITE"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_DTPAGAMENTO: TDateField
      FieldName = 'GNR_DTPAGAMENTO'
      Origin = '"GNRE"."GNR_DTPAGAMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_DTVENCIMENTO: TDateField
      FieldName = 'GNR_DTVENCIMENTO'
      Origin = '"GNRE"."GNR_DTVENCIMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_EMITCEP: TIBStringField
      FieldName = 'GNR_EMITCEP'
      Origin = '"GNRE"."GNR_EMITCEP"'
      Size = 10
    end
    object TBGnreGNR_EMITCIDADECODIGO: TIntegerField
      FieldName = 'GNR_EMITCIDADECODIGO'
      Origin = '"GNRE"."GNR_EMITCIDADECODIGO"'
    end
    object TBGnreGNR_EMITDOCUMENTO: TIBStringField
      FieldName = 'GNR_EMITDOCUMENTO'
      Origin = '"GNRE"."GNR_EMITDOCUMENTO"'
    end
    object TBGnreGNR_EMITDOCUMENTOTIPO: TIBStringField
      FieldName = 'GNR_EMITDOCUMENTOTIPO'
      Origin = '"GNRE"."GNR_EMITDOCUMENTOTIPO"'
    end
    object TBGnreGNR_EMITENDERECO: TIBStringField
      FieldName = 'GNR_EMITENDERECO'
      Origin = '"GNRE"."GNR_EMITENDERECO"'
      Size = 100
    end
    object TBGnreGNR_EMITESTADO: TIBStringField
      FieldName = 'GNR_EMITESTADO'
      Origin = '"GNRE"."GNR_EMITESTADO"'
      Size = 2
    end
    object TBGnreGNR_EMITFONE: TIBStringField
      FieldName = 'GNR_EMITFONE'
      Origin = '"GNRE"."GNR_EMITFONE"'
    end
    object TBGnreGNR_EMITIENAUFFAVORECIDA: TIBStringField
      FieldName = 'GNR_EMITIENAUFFAVORECIDA'
      Origin = '"GNRE"."GNR_EMITIENAUFFAVORECIDA"'
    end
    object TBGnreGNR_EMITRAZAO: TIBStringField
      FieldName = 'GNR_EMITRAZAO'
      Origin = '"GNRE"."GNR_EMITRAZAO"'
      Size = 50
    end
    object TBGnreGNR_ESTADOFAVORECIDO: TIBStringField
      FieldName = 'GNR_ESTADOFAVORECIDO'
      Origin = '"GNRE"."GNR_ESTADOFAVORECIDO"'
      Size = 2
    end
    object TBGnreGNR_INFOCOMPLEMENTAR: TIBStringField
      FieldName = 'GNR_INFOCOMPLEMENTAR'
      Origin = '"GNRE"."GNR_INFOCOMPLEMENTAR"'
      Size = 1000
    end
    object TBGnreGNR_MESANOREFERENCIA: TIBStringField
      FieldName = 'GNR_MESANOREFERENCIA'
      Origin = '"GNRE"."GNR_MESANOREFERENCIA"'
      Size = 7
    end
    object TBGnreGNR_NUMDOCTO: TIntegerField
      FieldName = 'GNR_NUMDOCTO'
      Origin = '"GNRE"."GNR_NUMDOCTO"'
    end
    object TBGnreGNR_PARCELA: TIntegerField
      FieldName = 'GNR_PARCELA'
      Origin = '"GNRE"."GNR_PARCELA"'
    end
    object TBGnreGNR_PERIODOREFERENCIA: TIBStringField
      FieldName = 'GNR_PERIODOREFERENCIA'
      Origin = '"GNRE"."GNR_PERIODOREFERENCIA"'
    end
    object TBGnreGNR_PRODUTO: TIBStringField
      FieldName = 'GNR_PRODUTO'
      Origin = '"GNRE"."GNR_PRODUTO"'
      Size = 50
    end
    object TBGnreGNR_PROTOCOLO: TIBStringField
      FieldName = 'GNR_PROTOCOLO'
      Origin = '"GNRE"."GNR_PROTOCOLO"'
    end
    object TBGnreGNR_RECEITA: TIBStringField
      FieldName = 'GNR_RECEITA'
      Origin = '"GNRE"."GNR_RECEITA"'
      Size = 120
    end
    object TBGnreGNR_RECIBO: TIBStringField
      FieldName = 'GNR_RECIBO'
      Origin = '"GNRE"."GNR_RECIBO"'
    end
    object TBGnreGNR_REPNUMERICA: TIBStringField
      FieldName = 'GNR_REPNUMERICA'
      Origin = '"GNRE"."GNR_REPNUMERICA"'
      Size = 50
    end
    object TBGnreGNR_STATUS: TIBStringField
      FieldName = 'GNR_STATUS'
      Origin = '"GNRE"."GNR_STATUS"'
      Size = 1
    end
    object TBGnreGNR_TIPODOCTOORIGEM: TIBStringField
      FieldName = 'GNR_TIPODOCTOORIGEM'
      Origin = '"GNRE"."GNR_TIPODOCTOORIGEM"'
      Size = 120
    end
    object TBGnreGNR_USUARIO: TIBStringField
      FieldName = 'GNR_USUARIO'
      Origin = '"GNRE"."GNR_USUARIO"'
    end
    object TBGnreGNR_VALORATUALIZACAO: TIBBCDField
      FieldName = 'GNR_VALORATUALIZACAO'
      Origin = '"GNRE"."GNR_VALORATUALIZACAO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBGnreGNR_VALORJUROS: TIBBCDField
      FieldName = 'GNR_VALORJUROS'
      Origin = '"GNRE"."GNR_VALORJUROS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBGnreGNR_VALORMULTA: TIBBCDField
      FieldName = 'GNR_VALORMULTA'
      Origin = '"GNRE"."GNR_VALORMULTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBGnreGNR_VALORPRINCIPAL: TIBBCDField
      FieldName = 'GNR_VALORPRINCIPAL'
      Origin = '"GNRE"."GNR_VALORPRINCIPAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBGnreGNR_VALORTOTAL: TIBBCDField
      FieldName = 'GNR_VALORTOTAL'
      Origin = '"GNRE"."GNR_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSGnre: TDataSource
    DataSet = TBGnre
    OnStateChange = DSGnreStateChange
    Left = 32
    Top = 536
  end
  object TRGnre: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 584
  end
  object TBForms: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRForms
    AfterDelete = TBFormsAfterDelete
    AfterPost = TBFormsAfterPost
    BeforePost = TBFormsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMS'
      'where'
      '  FMS_CODIGO = :OLD_FMS_CODIGO')
    InsertSQL.Strings = (
      'insert into FORMS'
      
        '  (FMS_CODIGO, FMS_FORM, FMS_USUARIO, FMS_WIDTH, FMS_HEIGHT, FMS' +
        '_TOP, FMS_LEFT)'
      'values'
      
        '  (:FMS_CODIGO, :FMS_FORM, :FMS_USUARIO, :FMS_WIDTH, :FMS_HEIGHT' +
        ', :FMS_TOP, '
      '   :FMS_LEFT)')
    RefreshSQL.Strings = (
      'Select '
      '  FMS_CODIGO,'
      '  FMS_FORM,'
      '  FMS_USUARIO,'
      '  FMS_WIDTH,'
      '  FMS_HEIGHT,'
      '  FMS_TOP,'
      '  FMS_LEFT'
      'from FORMS '
      'where'
      '  FMS_CODIGO = :FMS_CODIGO')
    SelectSQL.Strings = (
      'select * from FORMS'
      '')
    ModifySQL.Strings = (
      'update FORMS'
      'set'
      '  FMS_CODIGO = :FMS_CODIGO,'
      '  FMS_FORM = :FMS_FORM,'
      '  FMS_USUARIO = :FMS_USUARIO,'
      '  FMS_WIDTH = :FMS_WIDTH,'
      '  FMS_HEIGHT = :FMS_HEIGHT,'
      '  FMS_TOP = :FMS_TOP,'
      '  FMS_LEFT = :FMS_LEFT'
      'where'
      '  FMS_CODIGO = :OLD_FMS_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FMS_CODIGO'
    GeneratorField.Generator = 'GEN_FORMS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1120
    Top = 280
    object TBFormsFMS_CODIGO: TIntegerField
      FieldName = 'FMS_CODIGO'
      Origin = '"FORMS"."FMS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFormsFMS_FORM: TIBStringField
      FieldName = 'FMS_FORM'
      Origin = '"FORMS"."FMS_FORM"'
      Size = 50
    end
    object TBFormsFMS_USUARIO: TIBStringField
      FieldName = 'FMS_USUARIO'
      Origin = '"FORMS"."FMS_USUARIO"'
    end
    object TBFormsFMS_WIDTH: TIntegerField
      FieldName = 'FMS_WIDTH'
      Origin = '"FORMS"."FMS_WIDTH"'
    end
    object TBFormsFMS_HEIGHT: TIntegerField
      FieldName = 'FMS_HEIGHT'
      Origin = '"FORMS"."FMS_HEIGHT"'
    end
    object TBFormsFMS_TOP: TIntegerField
      FieldName = 'FMS_TOP'
      Origin = '"FORMS"."FMS_TOP"'
    end
    object TBFormsFMS_LEFT: TIntegerField
      FieldName = 'FMS_LEFT'
      Origin = '"FORMS"."FMS_LEFT"'
    end
  end
  object DSForms: TDataSource
    DataSet = TBForms
    Left = 1120
    Top = 328
  end
  object TRForms: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1120
    Top = 376
  end
  object TBCteCampos: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteCampos
    AfterDelete = TBCteCamposAfterDelete
    AfterInsert = TBCteCamposAfterInsert
    AfterPost = TBCteCamposAfterPost
    BeforeInsert = TBCteCamposBeforeInsert
    BeforePost = TBCteCamposBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTECAMPOS'
      'where'
      '  CTF_CODIGO = :OLD_CTF_CODIGO')
    InsertSQL.Strings = (
      'insert into CTECAMPOS'
      
        '  (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUP' +
        'O, CTF_NIVEL, '
      '   CTF_PAI, CTF_TIPO)'
      'values'
      
        '  (:CTF_ALTERAVEL, :CTF_CAMPO, :CTF_CODIGO, :CTF_DESCRICAO, :CTF' +
        '_GRUPO, '
      '   :CTF_NIVEL, :CTF_PAI, :CTF_TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CTF_ALTERAVEL,'
      '  CTF_CAMPO,'
      '  CTF_CODIGO,'
      '  CTF_DESCRICAO,'
      '  CTF_GRUPO,'
      '  CTF_NIVEL,'
      '  CTF_PAI,'
      '  CTF_TIPO'
      'from CTECAMPOS '
      'where'
      '  CTF_CODIGO = :CTF_CODIGO')
    SelectSQL.Strings = (
      'select * from CTECAMPOS order by CTF_CODIGO')
    ModifySQL.Strings = (
      'update CTECAMPOS'
      'set'
      '  CTF_ALTERAVEL = :CTF_ALTERAVEL,'
      '  CTF_CAMPO = :CTF_CAMPO,'
      '  CTF_CODIGO = :CTF_CODIGO,'
      '  CTF_DESCRICAO = :CTF_DESCRICAO,'
      '  CTF_GRUPO = :CTF_GRUPO,'
      '  CTF_NIVEL = :CTF_NIVEL,'
      '  CTF_PAI = :CTF_PAI,'
      '  CTF_TIPO = :CTF_TIPO'
      'where'
      '  CTF_CODIGO = :OLD_CTF_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1120
    Top = 24
    object TBCteCamposCTF_ALTERAVEL: TIBStringField
      FieldName = 'CTF_ALTERAVEL'
      Origin = '"CTECAMPOS"."CTF_ALTERAVEL"'
      Size = 1
    end
    object TBCteCamposCTF_CAMPO: TIBStringField
      FieldName = 'CTF_CAMPO'
      Origin = '"CTECAMPOS"."CTF_CAMPO"'
    end
    object TBCteCamposCTF_CODIGO: TIntegerField
      FieldName = 'CTF_CODIGO'
      Origin = '"CTECAMPOS"."CTF_CODIGO"'
      Required = True
    end
    object TBCteCamposCTF_DESCRICAO: TIBStringField
      FieldName = 'CTF_DESCRICAO'
      Origin = '"CTECAMPOS"."CTF_DESCRICAO"'
      Size = 50
    end
    object TBCteCamposCTF_GRUPO: TIBStringField
      FieldName = 'CTF_GRUPO'
      Origin = '"CTECAMPOS"."CTF_GRUPO"'
    end
    object TBCteCamposCTF_NIVEL: TIntegerField
      FieldName = 'CTF_NIVEL'
      Origin = '"CTECAMPOS"."CTF_NIVEL"'
    end
    object TBCteCamposCTF_PAI: TIntegerField
      FieldName = 'CTF_PAI'
      Origin = '"CTECAMPOS"."CTF_PAI"'
    end
    object TBCteCamposCTF_TIPO: TIBStringField
      FieldName = 'CTF_TIPO'
      Origin = '"CTECAMPOS"."CTF_TIPO"'
      Size = 1
    end
  end
  object DSCteCampos: TDataSource
    DataSet = TBCteCampos
    OnStateChange = DSCteCamposStateChange
    Left = 1120
    Top = 72
  end
  object TRCteCampos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1120
    Top = 120
  end
  object TBCteCCe: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteCCe
    AfterDelete = TBCteCCeAfterDelete
    AfterEdit = TBCteCCeAfterEdit
    AfterInsert = TBCteCCeAfterInsert
    AfterPost = TBCteCCeAfterPost
    BeforeDelete = TBCteCCeBeforeDelete
    BeforeEdit = TBCteCCeBeforeEdit
    BeforeInsert = TBCteCCeBeforeInsert
    BeforePost = TBCteCCeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTECCE'
      'where'
      '  CTC_CODIGO = :OLD_CTC_CODIGO')
    InsertSQL.Strings = (
      'insert into CTECCE'
      
        '  (CTC_CODIGO, CTC_CTE, CTC_DATA, CTC_DTATUALIZACAO, CTC_HORA, C' +
        'TC_PROTOCOLO, '
      '   CTC_PROTOCOLODH, CTC_SEQUENCIAL, CTC_USUARIO)'
      'values'
      
        '  (:CTC_CODIGO, :CTC_CTE, :CTC_DATA, :CTC_DTATUALIZACAO, :CTC_HO' +
        'RA, :CTC_PROTOCOLO, '
      '   :CTC_PROTOCOLODH, :CTC_SEQUENCIAL, :CTC_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CTC_CODIGO,'
      '  CTC_CTE,'
      '  CTC_DATA,'
      '  CTC_DTATUALIZACAO,'
      '  CTC_HORA,'
      '  CTC_PROTOCOLO,'
      '  CTC_PROTOCOLODH,'
      '  CTC_SEQUENCIAL,'
      '  CTC_USUARIO'
      'from CTECCE '
      'where'
      '  CTC_CODIGO = :CTC_CODIGO')
    SelectSQL.Strings = (
      'select * from CTECCE'
      'where CTC_CTE=:CTE_CODIGO'
      'order by CTC_CODIGO desc')
    ModifySQL.Strings = (
      'update CTECCE'
      'set'
      '  CTC_CODIGO = :CTC_CODIGO,'
      '  CTC_CTE = :CTC_CTE,'
      '  CTC_DATA = :CTC_DATA,'
      '  CTC_DTATUALIZACAO = :CTC_DTATUALIZACAO,'
      '  CTC_HORA = :CTC_HORA,'
      '  CTC_PROTOCOLO = :CTC_PROTOCOLO,'
      '  CTC_PROTOCOLODH = :CTC_PROTOCOLODH,'
      '  CTC_SEQUENCIAL = :CTC_SEQUENCIAL,'
      '  CTC_USUARIO = :CTC_USUARIO'
      'where'
      '  CTC_CODIGO = :OLD_CTC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTC_CODIGO'
    GeneratorField.Generator = 'GEN_CTECCE'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCte
    Left = 1248
    Top = 24
    object TBCteCCeCTC_CODIGO: TIntegerField
      FieldName = 'CTC_CODIGO'
      Origin = '"CTECCE"."CTC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteCCeCTC_CTE: TIntegerField
      FieldName = 'CTC_CTE'
      Origin = '"CTECCE"."CTC_CTE"'
      Required = True
    end
    object TBCteCCeCTC_DATA: TDateField
      FieldName = 'CTC_DATA'
      Origin = '"CTECCE"."CTC_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCCeCTC_DTATUALIZACAO: TDateField
      FieldName = 'CTC_DTATUALIZACAO'
      Origin = '"CTECCE"."CTC_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCCeCTC_HORA: TTimeField
      FieldName = 'CTC_HORA'
      Origin = '"CTECCE"."CTC_HORA"'
    end
    object TBCteCCeCTC_PROTOCOLO: TIBStringField
      FieldName = 'CTC_PROTOCOLO'
      Origin = '"CTECCE"."CTC_PROTOCOLO"'
    end
    object TBCteCCeCTC_PROTOCOLODH: TIBStringField
      FieldName = 'CTC_PROTOCOLODH'
      Origin = '"CTECCE"."CTC_PROTOCOLODH"'
      Size = 30
    end
    object TBCteCCeCTC_SEQUENCIAL: TIntegerField
      FieldName = 'CTC_SEQUENCIAL'
      Origin = '"CTECCE"."CTC_SEQUENCIAL"'
    end
    object TBCteCCeCTC_USUARIO: TIBStringField
      FieldName = 'CTC_USUARIO'
      Origin = '"CTECCE"."CTC_USUARIO"'
    end
  end
  object DSCteCCe: TDataSource
    DataSet = TBCteCCe
    OnStateChange = DSCteCCeStateChange
    Left = 1248
    Top = 72
  end
  object TRCteCCe: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1248
    Top = 120
  end
  object TBCteCCeItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCteCCeItens
    AfterDelete = TBCteCCeItensAfterDelete
    AfterInsert = TBCteCCeItensAfterInsert
    AfterPost = TBCteCCeItensAfterPost
    BeforePost = TBCteCCeItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CTECCEITENS'
      'where'
      '  CTX_CODIGO = :OLD_CTX_CODIGO')
    InsertSQL.Strings = (
      'insert into CTECCEITENS'
      
        '  (CTX_CAMPO, CTX_CCE, CTX_CODIGO, CTX_GRUPO, CTX_VALOR, CTX_NUM' +
        'ITEM)'
      'values'
      
        '  (:CTX_CAMPO, :CTX_CCE, :CTX_CODIGO, :CTX_GRUPO, :CTX_VALOR, :C' +
        'TX_NUMITEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CTX_CAMPO,'
      '  CTX_CCE,'
      '  CTX_CODIGO,'
      '  CTX_GRUPO,'
      '  CTX_VALOR,'
      '  CTX_NUMITEM'
      'from CTECCEITENS '
      'where'
      '  CTX_CODIGO = :CTX_CODIGO')
    SelectSQL.Strings = (
      'select * from CTECCEITENS'
      'where CTX_CCE=:CTC_CODIGO'
      'order by CTX_CODIGO')
    ModifySQL.Strings = (
      'update CTECCEITENS'
      'set'
      '  CTX_CAMPO = :CTX_CAMPO,'
      '  CTX_CCE = :CTX_CCE,'
      '  CTX_CODIGO = :CTX_CODIGO,'
      '  CTX_GRUPO = :CTX_GRUPO,'
      '  CTX_VALOR = :CTX_VALOR,'
      '  CTX_NUMITEM = :CTX_NUMITEM'
      'where'
      '  CTX_CODIGO = :OLD_CTX_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CTX_CODIGO'
    GeneratorField.Generator = 'GEN_CTECCEITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCteCCe
    Left = 1312
    Top = 24
    object TBCteCCeItensCTX_CAMPO: TIBStringField
      FieldName = 'CTX_CAMPO'
      Origin = '"CTECCEITENS"."CTX_CAMPO"'
    end
    object TBCteCCeItensCTX_CCE: TIntegerField
      FieldName = 'CTX_CCE'
      Origin = '"CTECCEITENS"."CTX_CCE"'
      Required = True
    end
    object TBCteCCeItensCTX_CODIGO: TIntegerField
      FieldName = 'CTX_CODIGO'
      Origin = '"CTECCEITENS"."CTX_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCteCCeItensCTX_GRUPO: TIBStringField
      FieldName = 'CTX_GRUPO'
      Origin = '"CTECCEITENS"."CTX_GRUPO"'
    end
    object TBCteCCeItensCTX_NUMITEM: TIntegerField
      FieldName = 'CTX_NUMITEM'
      Origin = '"CTECCEITENS"."CTX_NUMITEM"'
    end
    object TBCteCCeItensCTX_VALOR: TIBStringField
      FieldName = 'CTX_VALOR'
      Origin = '"CTECCEITENS"."CTX_VALOR"'
      Size = 255
    end
  end
  object DSCteCCeItens: TDataSource
    DataSet = TBCteCCeItens
    Left = 1312
    Top = 72
  end
  object TRCteCCeItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1312
    Top = 120
  end
  object TBMarkups: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMarkups
    AfterDelete = TBMarkupsAfterDelete
    AfterInsert = TBMarkupsAfterInsert
    AfterPost = TBMarkupsAfterPost
    BeforeEdit = TBMarkupsBeforeEdit
    BeforeInsert = TBMarkupsBeforeInsert
    BeforePost = TBMarkupsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MARKUPS'
      'where'
      '  MKP_CODIGO = :OLD_MKP_CODIGO')
    InsertSQL.Strings = (
      'insert into MARKUPS'
      
        '  (MKP_CODIGO, MKP_DESCRICAO, MKP_MARKUP, MKP_DTCADASTRO, MKP_DT' +
        'ATUALIZACAO, '
      '   MKP_USUARIO)'
      'values'
      
        '  (:MKP_CODIGO, :MKP_DESCRICAO, :MKP_MARKUP, :MKP_DTCADASTRO, :M' +
        'KP_DTATUALIZACAO, '
      '   :MKP_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  MKP_CODIGO,'
      '  MKP_DESCRICAO,'
      '  MKP_MARKUP,'
      '  MKP_DTCADASTRO,'
      '  MKP_DTATUALIZACAO,'
      '  MKP_USUARIO'
      'from MARKUPS '
      'where'
      '  MKP_CODIGO = :MKP_CODIGO')
    SelectSQL.Strings = (
      'select * from MARKUPS'
      'where MKP_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MARKUPS'
      'set'
      '  MKP_CODIGO = :MKP_CODIGO,'
      '  MKP_DESCRICAO = :MKP_DESCRICAO,'
      '  MKP_MARKUP = :MKP_MARKUP,'
      '  MKP_DTCADASTRO = :MKP_DTCADASTRO,'
      '  MKP_DTATUALIZACAO = :MKP_DTATUALIZACAO,'
      '  MKP_USUARIO = :MKP_USUARIO'
      'where'
      '  MKP_CODIGO = :OLD_MKP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MKP_CODIGO'
    GeneratorField.Generator = 'GEN_MARKUPS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 480
    Top = 488
    object TBMarkupsMKP_CODIGO: TIntegerField
      FieldName = 'MKP_CODIGO'
      Origin = '"MARKUPS"."MKP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMarkupsMKP_DESCRICAO: TIBStringField
      FieldName = 'MKP_DESCRICAO'
      Origin = '"MARKUPS"."MKP_DESCRICAO"'
      Size = 50
    end
    object TBMarkupsMKP_MARKUP: TIBBCDField
      FieldName = 'MKP_MARKUP'
      Origin = '"MARKUPS"."MKP_MARKUP"'
      Precision = 18
      Size = 4
    end
    object TBMarkupsMKP_DTCADASTRO: TDateField
      FieldName = 'MKP_DTCADASTRO'
      Origin = '"MARKUPS"."MKP_DTCADASTRO"'
    end
    object TBMarkupsMKP_DTATUALIZACAO: TDateField
      FieldName = 'MKP_DTATUALIZACAO'
      Origin = '"MARKUPS"."MKP_DTATUALIZACAO"'
    end
    object TBMarkupsMKP_USUARIO: TIBStringField
      FieldName = 'MKP_USUARIO'
      Origin = '"MARKUPS"."MKP_USUARIO"'
    end
  end
  object DSMarkups: TDataSource
    DataSet = TBMarkups
    OnStateChange = DSMarkupsStateChange
    Left = 480
    Top = 536
  end
  object TRMarkups: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 480
    Top = 584
  end
  object TBMarkupsItens: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRMarkupsItens
    AfterDelete = TBMarkupsItensAfterDelete
    AfterInsert = TBMarkupsItensAfterInsert
    AfterPost = TBMarkupsItensAfterPost
    BeforePost = TBMarkupsItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MARKUPSITENS'
      'where'
      '  MKI_CODIGO = :OLD_MKI_CODIGO')
    InsertSQL.Strings = (
      'insert into MARKUPSITENS'
      '  (MKI_CODIGO, MKI_MARKUP, MKI_DESCRICAO, MKI_PORCENTAGEM)'
      'values'
      '  (:MKI_CODIGO, :MKI_MARKUP, :MKI_DESCRICAO, :MKI_PORCENTAGEM)')
    RefreshSQL.Strings = (
      'Select '
      '  MKI_CODIGO,'
      '  MKI_MARKUP,'
      '  MKI_DESCRICAO,'
      '  MKI_PORCENTAGEM'
      'from MARKUPSITENS '
      'where'
      '  MKI_CODIGO = :MKI_CODIGO')
    SelectSQL.Strings = (
      'select * from MARKUPSITENS'
      'where MKI_MARKUP=:MKP_CODIGO'
      'order by MKI_CODIGO')
    ModifySQL.Strings = (
      'update MARKUPSITENS'
      'set'
      '  MKI_CODIGO = :MKI_CODIGO,'
      '  MKI_MARKUP = :MKI_MARKUP,'
      '  MKI_DESCRICAO = :MKI_DESCRICAO,'
      '  MKI_PORCENTAGEM = :MKI_PORCENTAGEM'
      'where'
      '  MKI_CODIGO = :OLD_MKI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MKI_CODIGO'
    GeneratorField.Generator = 'GEN_MARKUPSITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMarkups
    Left = 544
    Top = 488
    object TBMarkupsItensMKI_CODIGO: TIntegerField
      FieldName = 'MKI_CODIGO'
      Origin = '"MARKUPSITENS"."MKI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMarkupsItensMKI_MARKUP: TIntegerField
      FieldName = 'MKI_MARKUP'
      Origin = '"MARKUPSITENS"."MKI_MARKUP"'
      Required = True
    end
    object TBMarkupsItensMKI_DESCRICAO: TIBStringField
      FieldName = 'MKI_DESCRICAO'
      Origin = '"MARKUPSITENS"."MKI_DESCRICAO"'
      Size = 50
    end
    object TBMarkupsItensMKI_PORCENTAGEM: TIBBCDField
      FieldName = 'MKI_PORCENTAGEM'
      Origin = '"MARKUPSITENS"."MKI_PORCENTAGEM"'
      Precision = 18
      Size = 4
    end
  end
  object DSMarkupsItens: TDataSource
    DataSet = TBMarkupsItens
    Left = 544
    Top = 536
  end
  object TRMarkupsItens: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 544
    Top = 584
  end
  object QYMarkupsItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRMarkupsItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MARKUPSITENS')
    Left = 544
    Top = 632
  end
end
