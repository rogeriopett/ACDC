object DMAngus: TDMAngus
  OnCreate = DataModuleCreate
  Height = 298
  Width = 595
  object IBDatabase1: TIBDatabase
    DatabaseName = 'localhost/3050:C:\Runtime\Angus\Dados\angus.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    BeforeConnect = IBDatabase1BeforeConnect
    Left = 32
    Top = 32
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 320
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 32
  end
  object TBBlocos: TIBDataSet
    Database = IBDatabase1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOCOS'
      'where'
      '  BLO_CODIGO = :OLD_BLO_CODIGO')
    InsertSQL.Strings = (
      'insert into BLOCOS'
      
        '  (BLO_CODIGO, BLO_CONTEUDO, BLO_HITS, BLO_IMAGEMDESTAQUE, BLO_M' +
        'OSTRARTITULO, '
      '   BLO_NOME, BLO_PAGINA, BLO_SLUG, BLO_UNIDADE)'
      'values'
      
        '  (:BLO_CODIGO, :BLO_CONTEUDO, :BLO_HITS, :BLO_IMAGEMDESTAQUE, :' +
        'BLO_MOSTRARTITULO, '
      '   :BLO_NOME, :BLO_PAGINA, :BLO_SLUG, :BLO_UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  BLO_CODIGO,'
      '  BLO_CONTEUDO,'
      '  BLO_HITS,'
      '  BLO_IMAGEMDESTAQUE,'
      '  BLO_MOSTRARTITULO,'
      '  BLO_NOME,'
      '  BLO_PAGINA,'
      '  BLO_SLUG,'
      '  BLO_UNIDADE'
      'from BLOCOS '
      'where'
      '  BLO_CODIGO = :BLO_CODIGO')
    SelectSQL.Strings = (
      'select * from BLOCOS '
      'where BLO_CODIGO=:codigo'
      'order by BLO_CODIGO')
    ModifySQL.Strings = (
      'update BLOCOS'
      'set'
      '  BLO_CODIGO = :BLO_CODIGO,'
      '  BLO_CONTEUDO = :BLO_CONTEUDO,'
      '  BLO_HITS = :BLO_HITS,'
      '  BLO_IMAGEMDESTAQUE = :BLO_IMAGEMDESTAQUE,'
      '  BLO_MOSTRARTITULO = :BLO_MOSTRARTITULO,'
      '  BLO_NOME = :BLO_NOME,'
      '  BLO_PAGINA = :BLO_PAGINA,'
      '  BLO_SLUG = :BLO_SLUG,'
      '  BLO_UNIDADE = :BLO_UNIDADE'
      'where'
      '  BLO_CODIGO = :OLD_BLO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'BLO_CODIGO'
    GeneratorField.Generator = 'GEN_BLOCOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 88
    object TBBlocosBLO_CODIGO: TIntegerField
      FieldName = 'BLO_CODIGO'
      Origin = 'BLOCOS.BLO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBlocosBLO_CONTEUDO: TWideMemoField
      FieldName = 'BLO_CONTEUDO'
      Origin = 'BLOCOS.BLO_CONTEUDO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBBlocosBLO_HITS: TIntegerField
      FieldName = 'BLO_HITS'
      Origin = 'BLOCOS.BLO_HITS'
    end
    object TBBlocosBLO_IMAGEMDESTAQUE: TIBStringField
      FieldName = 'BLO_IMAGEMDESTAQUE'
      Origin = 'BLOCOS.BLO_IMAGEMDESTAQUE'
      Size = 400
    end
    object TBBlocosBLO_MOSTRARTITULO: TIBStringField
      FieldName = 'BLO_MOSTRARTITULO'
      Origin = 'BLOCOS.BLO_MOSTRARTITULO'
      Size = 1
    end
    object TBBlocosBLO_NOME: TIBStringField
      FieldName = 'BLO_NOME'
      Origin = 'BLOCOS.BLO_NOME'
      Size = 100
    end
    object TBBlocosBLO_PAGINA: TIBStringField
      FieldName = 'BLO_PAGINA'
      Origin = 'BLOCOS.BLO_PAGINA'
      Size = 1
    end
    object TBBlocosBLO_SLUG: TIBStringField
      FieldName = 'BLO_SLUG'
      Origin = 'BLOCOS.BLO_SLUG'
      Size = 100
    end
    object TBBlocosBLO_UNIDADE: TIntegerField
      FieldName = 'BLO_UNIDADE'
      Origin = 'BLOCOS.BLO_UNIDADE'
      Required = True
    end
  end
  object TRBlocos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 144
  end
  object TBEmpresas: TIBDataSet
    Database = IBDatabase1
    Transaction = TREmpresas
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from EMPRESAS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    InsertSQL.Strings = (
      'insert into EMPRESAS'
      
        '  (EMP_API, EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, EMP_DBPASS, EMP' +
        '_DBUSER, '
      
        '   EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_FONE1, EMP_HASH, EMP_H' +
        'RATUALIZACAO, '
      
        '   EMP_HRCADASTRO, EMP_LOGO, EMP_NOME, EMP_RESPONSAVEL, EMP_STAT' +
        'US)'
      'values'
      
        '  (:EMP_API, :EMP_BASEDADOS, :EMP_CNPJ, :EMP_CODIGO, :EMP_DBPASS' +
        ', :EMP_DBUSER, '
      
        '   :EMP_DTATUALIZACAO, :EMP_DTCADASTRO, :EMP_FONE1, :EMP_HASH, :' +
        'EMP_HRATUALIZACAO, '
      
        '   :EMP_HRCADASTRO, :EMP_LOGO, :EMP_NOME, :EMP_RESPONSAVEL, :EMP' +
        '_STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  EMP_API,'
      '  EMP_BASEDADOS,'
      '  EMP_CNPJ,'
      '  EMP_CODIGO,'
      '  EMP_DBPASS,'
      '  EMP_DBUSER,'
      '  EMP_DTATUALIZACAO,'
      '  EMP_DTCADASTRO,'
      '  EMP_FONE1,'
      '  EMP_HASH,'
      '  EMP_HRATUALIZACAO,'
      '  EMP_HRCADASTRO,'
      '  EMP_LOGO,'
      '  EMP_NOME,'
      '  EMP_RESPONSAVEL,'
      '  EMP_STATUS'
      'from EMPRESAS '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO')
    SelectSQL.Strings = (
      'select * from EMPRESAS '
      'where cast(EMP_CODIGO as varchar(40))=:codigo or '
      'EMP_HASH=:codigo'
      'order by EMP_CODIGO')
    ModifySQL.Strings = (
      'update EMPRESAS'
      'set'
      '  EMP_API = :EMP_API,'
      '  EMP_BASEDADOS = :EMP_BASEDADOS,'
      '  EMP_CNPJ = :EMP_CNPJ,'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  EMP_DBPASS = :EMP_DBPASS,'
      '  EMP_DBUSER = :EMP_DBUSER,'
      '  EMP_DTATUALIZACAO = :EMP_DTATUALIZACAO,'
      '  EMP_DTCADASTRO = :EMP_DTCADASTRO,'
      '  EMP_FONE1 = :EMP_FONE1,'
      '  EMP_HASH = :EMP_HASH,'
      '  EMP_HRATUALIZACAO = :EMP_HRATUALIZACAO,'
      '  EMP_HRCADASTRO = :EMP_HRCADASTRO,'
      '  EMP_LOGO = :EMP_LOGO,'
      '  EMP_NOME = :EMP_NOME,'
      '  EMP_RESPONSAVEL = :EMP_RESPONSAVEL,'
      '  EMP_STATUS = :EMP_STATUS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'EMP_CODIGO'
    GeneratorField.Generator = 'GEN_EMPRESAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 88
    object TBEmpresasEMP_API: TIBStringField
      FieldName = 'EMP_API'
      Origin = 'EMPRESAS.EMP_API'
      Size = 400
    end
    object TBEmpresasEMP_BASEDADOS: TIBStringField
      FieldName = 'EMP_BASEDADOS'
      Origin = 'EMPRESAS.EMP_BASEDADOS'
      Size = 400
    end
    object TBEmpresasEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMPRESAS.EMP_CNPJ'
    end
    object TBEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMPRESAS.EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmpresasEMP_DBPASS: TIBStringField
      FieldName = 'EMP_DBPASS'
      Origin = 'EMPRESAS.EMP_DBPASS'
      Size = 40
    end
    object TBEmpresasEMP_DBUSER: TIBStringField
      FieldName = 'EMP_DBUSER'
      Origin = 'EMPRESAS.EMP_DBUSER'
    end
    object TBEmpresasEMP_DTATUALIZACAO: TDateField
      FieldName = 'EMP_DTATUALIZACAO'
      Origin = 'EMPRESAS.EMP_DTATUALIZACAO'
    end
    object TBEmpresasEMP_DTCADASTRO: TDateField
      FieldName = 'EMP_DTCADASTRO'
      Origin = 'EMPRESAS.EMP_DTCADASTRO'
    end
    object TBEmpresasEMP_FONE1: TIBStringField
      FieldName = 'EMP_FONE1'
      Origin = 'EMPRESAS.EMP_FONE1'
      Size = 15
    end
    object TBEmpresasEMP_HASH: TIBStringField
      FieldName = 'EMP_HASH'
      Origin = 'EMPRESAS.EMP_HASH'
      Size = 40
    end
    object TBEmpresasEMP_HRATUALIZACAO: TTimeField
      FieldName = 'EMP_HRATUALIZACAO'
      Origin = 'EMPRESAS.EMP_HRATUALIZACAO'
    end
    object TBEmpresasEMP_HRCADASTRO: TTimeField
      FieldName = 'EMP_HRCADASTRO'
      Origin = 'EMPRESAS.EMP_HRCADASTRO'
    end
    object TBEmpresasEMP_LOGO: TIBStringField
      FieldName = 'EMP_LOGO'
      Origin = 'EMPRESAS.EMP_LOGO'
      Size = 100
    end
    object TBEmpresasEMP_NOME: TIBStringField
      FieldName = 'EMP_NOME'
      Origin = 'EMPRESAS.EMP_NOME'
      Size = 100
    end
    object TBEmpresasEMP_RESPONSAVEL: TIntegerField
      FieldName = 'EMP_RESPONSAVEL'
      Origin = 'EMPRESAS.EMP_RESPONSAVEL'
      Required = True
    end
    object TBEmpresasEMP_STATUS: TIBStringField
      FieldName = 'EMP_STATUS'
      Origin = 'EMPRESAS.EMP_STATUS'
      Size = 1
    end
  end
  object TREmpresas: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 144
  end
  object TBMenus: TIBDataSet
    Database = IBDatabase1
    Transaction = TRMenus
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MENU'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
    InsertSQL.Strings = (
      'insert into MENU'
      
        '  (MEN_CODIGO, MEN_DESCRICAO, MEN_LINK, MEN_ORDEM, MEN_MENUTITLE' +
        ', MEN_BLOCO, '
      
        '   MEN_TARGET, MEN_PAI, MEN_DROP, MEN_TIPO, MEN_ICONE, MEN_VISIB' +
        'LE, MEN_ROOT, '
      '   MEN_UNIDADE)'
      'values'
      
        '  (:MEN_CODIGO, :MEN_DESCRICAO, :MEN_LINK, :MEN_ORDEM, :MEN_MENU' +
        'TITLE, '
      
        '   :MEN_BLOCO, :MEN_TARGET, :MEN_PAI, :MEN_DROP, :MEN_TIPO, :MEN' +
        '_ICONE, '
      '   :MEN_VISIBLE, :MEN_ROOT, :MEN_UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  MEN_CODIGO,'
      '  MEN_DESCRICAO,'
      '  MEN_LINK,'
      '  MEN_ORDEM,'
      '  MEN_MENUTITLE,'
      '  MEN_BLOCO,'
      '  MEN_TARGET,'
      '  MEN_PAI,'
      '  MEN_DROP,'
      '  MEN_TIPO,'
      '  MEN_ICONE,'
      '  MEN_VISIBLE,'
      '  MEN_ROOT,'
      '  MEN_UNIDADE'
      'from MENU '
      'where'
      '  MEN_CODIGO = :MEN_CODIGO')
    SelectSQL.Strings = (
      'select * from MENU '
      'where MEN_CODIGO=:codigo'
      'order by MEN_CODIGO')
    ModifySQL.Strings = (
      'update MENU'
      'set'
      '  MEN_CODIGO = :MEN_CODIGO,'
      '  MEN_DESCRICAO = :MEN_DESCRICAO,'
      '  MEN_LINK = :MEN_LINK,'
      '  MEN_ORDEM = :MEN_ORDEM,'
      '  MEN_MENUTITLE = :MEN_MENUTITLE,'
      '  MEN_BLOCO = :MEN_BLOCO,'
      '  MEN_TARGET = :MEN_TARGET,'
      '  MEN_PAI = :MEN_PAI,'
      '  MEN_DROP = :MEN_DROP,'
      '  MEN_TIPO = :MEN_TIPO,'
      '  MEN_ICONE = :MEN_ICONE,'
      '  MEN_VISIBLE = :MEN_VISIBLE,'
      '  MEN_ROOT = :MEN_ROOT,'
      '  MEN_UNIDADE = :MEN_UNIDADE'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MEN_CODIGO'
    GeneratorField.Generator = 'GEN_MENU'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 160
    Top = 88
    object TBMenusMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Origin = 'MENU.MEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMenusMEN_DESCRICAO: TIBStringField
      FieldName = 'MEN_DESCRICAO'
      Origin = 'MENU.MEN_DESCRICAO'
      Size = 50
    end
    object TBMenusMEN_LINK: TIBStringField
      FieldName = 'MEN_LINK'
      Origin = 'MENU.MEN_LINK'
      Size = 400
    end
    object TBMenusMEN_ORDEM: TIntegerField
      FieldName = 'MEN_ORDEM'
      Origin = 'MENU.MEN_ORDEM'
    end
    object TBMenusMEN_MENUTITLE: TIBStringField
      FieldName = 'MEN_MENUTITLE'
      Origin = 'MENU.MEN_MENUTITLE'
      Size = 1
    end
    object TBMenusMEN_BLOCO: TIntegerField
      FieldName = 'MEN_BLOCO'
      Origin = 'MENU.MEN_BLOCO'
    end
    object TBMenusMEN_TARGET: TIBStringField
      FieldName = 'MEN_TARGET'
      Origin = 'MENU.MEN_TARGET'
      Size = 10
    end
    object TBMenusMEN_PAI: TIntegerField
      FieldName = 'MEN_PAI'
      Origin = 'MENU.MEN_PAI'
      Required = True
    end
    object TBMenusMEN_DROP: TIBStringField
      FieldName = 'MEN_DROP'
      Origin = 'MENU.MEN_DROP'
      Size = 1
    end
    object TBMenusMEN_TIPO: TIBStringField
      FieldName = 'MEN_TIPO'
      Origin = 'MENU.MEN_TIPO'
      Size = 1
    end
    object TBMenusMEN_ICONE: TIBStringField
      FieldName = 'MEN_ICONE'
      Origin = 'MENU.MEN_ICONE'
      Size = 50
    end
    object TBMenusMEN_VISIBLE: TIBStringField
      FieldName = 'MEN_VISIBLE'
      Origin = 'MENU.MEN_VISIBLE'
      Size = 1
    end
    object TBMenusMEN_ROOT: TIntegerField
      FieldName = 'MEN_ROOT'
      Origin = 'MENU.MEN_ROOT'
      Required = True
    end
    object TBMenusMEN_UNIDADE: TIntegerField
      FieldName = 'MEN_UNIDADE'
      Origin = 'MENU.MEN_UNIDADE'
      Required = True
    end
  end
  object TRMenus: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 144
  end
  object TBParametros: TIBDataSet
    Database = IBDatabase1
    Transaction = TRParametros
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PARAMETROS'
      'where'
      '  PAR_CODIGO = :OLD_PAR_CODIGO')
    InsertSQL.Strings = (
      'insert into PARAMETROS'
      
        '  (PAR_CODIGO, PAR_CONFIRMADO, PAR_FLEXDOCSNFE, PAR_FLEXDOCSPAST' +
        'A, PAR_MAILADMIN, '
      
        '   PAR_MAILFROM, PAR_MAILNAME, PAR_MAILPASS, PAR_MAILPORT, PAR_M' +
        'AILPREFIX, '
      
        '   PAR_MAILSMTP, PAR_MAILUSER, PAR_NOVOUSUARIO, PAR_REENVIAR, PA' +
        'R_RESETARSENHA, '
      '   PAR_SITENAME)'
      'values'
      
        '  (:PAR_CODIGO, :PAR_CONFIRMADO, :PAR_FLEXDOCSNFE, :PAR_FLEXDOCS' +
        'PASTA, '
      
        '   :PAR_MAILADMIN, :PAR_MAILFROM, :PAR_MAILNAME, :PAR_MAILPASS, ' +
        ':PAR_MAILPORT, '
      
        '   :PAR_MAILPREFIX, :PAR_MAILSMTP, :PAR_MAILUSER, :PAR_NOVOUSUAR' +
        'IO, :PAR_REENVIAR, '
      '   :PAR_RESETARSENHA, :PAR_SITENAME)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_CODIGO,'
      '  PAR_CONFIRMADO,'
      '  PAR_FLEXDOCSNFE,'
      '  PAR_FLEXDOCSPASTA,'
      '  PAR_MAILADMIN,'
      '  PAR_MAILFROM,'
      '  PAR_MAILNAME,'
      '  PAR_MAILPASS,'
      '  PAR_MAILPORT,'
      '  PAR_MAILPREFIX,'
      '  PAR_MAILSMTP,'
      '  PAR_MAILUSER,'
      '  PAR_NOVOUSUARIO,'
      '  PAR_REENVIAR,'
      '  PAR_RESETARSENHA,'
      '  PAR_SITENAME'
      'from PARAMETROS '
      'where'
      '  PAR_CODIGO = :PAR_CODIGO')
    SelectSQL.Strings = (
      'select * from PARAMETROS where PAR_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PARAMETROS'
      'set'
      '  PAR_CODIGO = :PAR_CODIGO,'
      '  PAR_CONFIRMADO = :PAR_CONFIRMADO,'
      '  PAR_FLEXDOCSNFE = :PAR_FLEXDOCSNFE,'
      '  PAR_FLEXDOCSPASTA = :PAR_FLEXDOCSPASTA,'
      '  PAR_MAILADMIN = :PAR_MAILADMIN,'
      '  PAR_MAILFROM = :PAR_MAILFROM,'
      '  PAR_MAILNAME = :PAR_MAILNAME,'
      '  PAR_MAILPASS = :PAR_MAILPASS,'
      '  PAR_MAILPORT = :PAR_MAILPORT,'
      '  PAR_MAILPREFIX = :PAR_MAILPREFIX,'
      '  PAR_MAILSMTP = :PAR_MAILSMTP,'
      '  PAR_MAILUSER = :PAR_MAILUSER,'
      '  PAR_NOVOUSUARIO = :PAR_NOVOUSUARIO,'
      '  PAR_REENVIAR = :PAR_REENVIAR,'
      '  PAR_RESETARSENHA = :PAR_RESETARSENHA,'
      '  PAR_SITENAME = :PAR_SITENAME'
      'where'
      '  PAR_CODIGO = :OLD_PAR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 224
    Top = 88
    object TBParametrosPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Origin = 'PARAMETROS.PAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBParametrosPAR_CONFIRMADO: TWideMemoField
      FieldName = 'PAR_CONFIRMADO'
      Origin = 'PARAMETROS.PAR_CONFIRMADO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBParametrosPAR_FLEXDOCSNFE: TIBStringField
      FieldName = 'PAR_FLEXDOCSNFE'
      Origin = 'PARAMETROS.PAR_FLEXDOCSNFE'
      Size = 100
    end
    object TBParametrosPAR_FLEXDOCSPASTA: TIBStringField
      FieldName = 'PAR_FLEXDOCSPASTA'
      Origin = 'PARAMETROS.PAR_FLEXDOCSPASTA'
      Size = 400
    end
    object TBParametrosPAR_MAILADMIN: TIBStringField
      FieldName = 'PAR_MAILADMIN'
      Origin = 'PARAMETROS.PAR_MAILADMIN'
      Size = 100
    end
    object TBParametrosPAR_MAILFROM: TIBStringField
      FieldName = 'PAR_MAILFROM'
      Origin = 'PARAMETROS.PAR_MAILFROM'
      Size = 100
    end
    object TBParametrosPAR_MAILNAME: TIBStringField
      FieldName = 'PAR_MAILNAME'
      Origin = 'PARAMETROS.PAR_MAILNAME'
      Size = 100
    end
    object TBParametrosPAR_MAILPASS: TIBStringField
      FieldName = 'PAR_MAILPASS'
      Origin = 'PARAMETROS.PAR_MAILPASS'
      Size = 60
    end
    object TBParametrosPAR_MAILPORT: TIntegerField
      FieldName = 'PAR_MAILPORT'
      Origin = 'PARAMETROS.PAR_MAILPORT'
    end
    object TBParametrosPAR_MAILPREFIX: TIBStringField
      FieldName = 'PAR_MAILPREFIX'
      Origin = 'PARAMETROS.PAR_MAILPREFIX'
    end
    object TBParametrosPAR_MAILSMTP: TIBStringField
      FieldName = 'PAR_MAILSMTP'
      Origin = 'PARAMETROS.PAR_MAILSMTP'
      Size = 100
    end
    object TBParametrosPAR_MAILUSER: TIBStringField
      FieldName = 'PAR_MAILUSER'
      Origin = 'PARAMETROS.PAR_MAILUSER'
      Size = 100
    end
    object TBParametrosPAR_NOVOUSUARIO: TWideMemoField
      FieldName = 'PAR_NOVOUSUARIO'
      Origin = 'PARAMETROS.PAR_NOVOUSUARIO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBParametrosPAR_REENVIAR: TWideMemoField
      FieldName = 'PAR_REENVIAR'
      Origin = 'PARAMETROS.PAR_REENVIAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBParametrosPAR_RESETARSENHA: TWideMemoField
      FieldName = 'PAR_RESETARSENHA'
      Origin = 'PARAMETROS.PAR_RESETARSENHA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBParametrosPAR_SITENAME: TIBStringField
      FieldName = 'PAR_SITENAME'
      Origin = 'PARAMETROS.PAR_SITENAME'
      Size = 100
    end
  end
  object TRParametros: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 144
  end
  object TBUsuarios: TIBDataSet
    Database = IBDatabase1
    Transaction = TRUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  USU_CODIGO = :OLD_USU_CODIGO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CODIGO, USU_CONFIRMAC' +
        'AO, USU_CPF, '
      
        '   USU_DTATUALIZACAO, USU_DTCADASTRO, USU_EMAIL, USU_FONE1, USU_' +
        'GESTOR, '
      
        '   USU_HASH, USU_HRATUALIZACAO, USU_HRCADASTRO, USU_NOME, USU_PA' +
        'SSWORD, '
      '   USU_STATUS)'
      'values'
      
        '  (:USU_ADMIN, :USU_APELIDO, :USU_AVATAR, :USU_CODIGO, :USU_CONF' +
        'IRMACAO, '
      
        '   :USU_CPF, :USU_DTATUALIZACAO, :USU_DTCADASTRO, :USU_EMAIL, :U' +
        'SU_FONE1, '
      
        '   :USU_GESTOR, :USU_HASH, :USU_HRATUALIZACAO, :USU_HRCADASTRO, ' +
        ':USU_NOME, '
      '   :USU_PASSWORD, :USU_STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  USU_ADMIN,'
      '  USU_APELIDO,'
      '  USU_AVATAR,'
      '  USU_CODIGO,'
      '  USU_CONFIRMACAO,'
      '  USU_CPF,'
      '  USU_DTATUALIZACAO,'
      '  USU_DTCADASTRO,'
      '  USU_EMAIL,'
      '  USU_FONE1,'
      '  USU_GESTOR,'
      '  USU_HASH,'
      '  USU_HRATUALIZACAO,'
      '  USU_HRCADASTRO,'
      '  USU_NOME,'
      '  USU_PASSWORD,'
      '  USU_STATUS'
      'from USUARIOS '
      'where'
      '  USU_CODIGO = :USU_CODIGO')
    SelectSQL.Strings = (
      'select * from USUARIOS '
      'where cast(USU_CODIGO as varchar(40))=:codigo or '
      'USU_HASH=:codigo'
      'order by USU_CODIGO')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  USU_ADMIN = :USU_ADMIN,'
      '  USU_APELIDO = :USU_APELIDO,'
      '  USU_AVATAR = :USU_AVATAR,'
      '  USU_CODIGO = :USU_CODIGO,'
      '  USU_CONFIRMACAO = :USU_CONFIRMACAO,'
      '  USU_CPF = :USU_CPF,'
      '  USU_DTATUALIZACAO = :USU_DTATUALIZACAO,'
      '  USU_DTCADASTRO = :USU_DTCADASTRO,'
      '  USU_EMAIL = :USU_EMAIL,'
      '  USU_FONE1 = :USU_FONE1,'
      '  USU_GESTOR = :USU_GESTOR,'
      '  USU_HASH = :USU_HASH,'
      '  USU_HRATUALIZACAO = :USU_HRATUALIZACAO,'
      '  USU_HRCADASTRO = :USU_HRCADASTRO,'
      '  USU_NOME = :USU_NOME,'
      '  USU_PASSWORD = :USU_PASSWORD,'
      '  USU_STATUS = :USU_STATUS'
      'where'
      '  USU_CODIGO = :OLD_USU_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 288
    Top = 88
    object TBUsuariosUSU_ADMIN: TIBStringField
      FieldName = 'USU_ADMIN'
      Origin = 'USUARIOS.USU_ADMIN'
      Size = 1
    end
    object TBUsuariosUSU_APELIDO: TIBStringField
      FieldName = 'USU_APELIDO'
      Origin = 'USUARIOS.USU_APELIDO'
    end
    object TBUsuariosUSU_AVATAR: TIBStringField
      FieldName = 'USU_AVATAR'
      Origin = 'USUARIOS.USU_AVATAR'
      Size = 100
    end
    object TBUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USUARIOS.USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuariosUSU_CONFIRMACAO: TIBStringField
      FieldName = 'USU_CONFIRMACAO'
      Origin = 'USUARIOS.USU_CONFIRMACAO'
    end
    object TBUsuariosUSU_CPF: TIBStringField
      FieldName = 'USU_CPF'
      Origin = 'USUARIOS.USU_CPF'
    end
    object TBUsuariosUSU_DTATUALIZACAO: TDateField
      FieldName = 'USU_DTATUALIZACAO'
      Origin = 'USUARIOS.USU_DTATUALIZACAO'
    end
    object TBUsuariosUSU_DTCADASTRO: TDateField
      FieldName = 'USU_DTCADASTRO'
      Origin = 'USUARIOS.USU_DTCADASTRO'
    end
    object TBUsuariosUSU_EMAIL: TIBStringField
      FieldName = 'USU_EMAIL'
      Origin = 'USUARIOS.USU_EMAIL'
      Size = 100
    end
    object TBUsuariosUSU_FONE1: TIBStringField
      FieldName = 'USU_FONE1'
      Origin = 'USUARIOS.USU_FONE1'
      Size = 15
    end
    object TBUsuariosUSU_GESTOR: TIBStringField
      FieldName = 'USU_GESTOR'
      Origin = 'USUARIOS.USU_GESTOR'
      Size = 1
    end
    object TBUsuariosUSU_HASH: TIBStringField
      FieldName = 'USU_HASH'
      Origin = 'USUARIOS.USU_HASH'
      Size = 40
    end
    object TBUsuariosUSU_HRATUALIZACAO: TTimeField
      FieldName = 'USU_HRATUALIZACAO'
      Origin = 'USUARIOS.USU_HRATUALIZACAO'
    end
    object TBUsuariosUSU_HRCADASTRO: TTimeField
      FieldName = 'USU_HRCADASTRO'
      Origin = 'USUARIOS.USU_HRCADASTRO'
    end
    object TBUsuariosUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Origin = 'USUARIOS.USU_NOME'
      Size = 100
    end
    object TBUsuariosUSU_PASSWORD: TIBStringField
      FieldName = 'USU_PASSWORD'
      Origin = 'USUARIOS.USU_PASSWORD'
      Size = 60
    end
    object TBUsuariosUSU_STATUS: TIBStringField
      FieldName = 'USU_STATUS'
      Origin = 'USUARIOS.USU_STATUS'
      Size = 1
    end
  end
  object TRUsuarios: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 288
    Top = 144
  end
  object TRUsuemp: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 352
    Top = 144
  end
  object TBUsuemp: TIBDataSet
    Database = IBDatabase1
    Transaction = TRUsuemp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUEMP'
      'where'
      '  USE_EMPRESA = :OLD_USE_EMPRESA and'
      '  USE_USUARIO = :OLD_USE_USUARIO')
    InsertSQL.Strings = (
      'insert into USUEMP'
      '  (USE_EMPRESA, USE_USUARIO, USE_ACESSO, USE_FIRENET)'
      'values'
      '  (:USE_EMPRESA, :USE_USUARIO, :USE_ACESSO, :USE_FIRENET)')
    RefreshSQL.Strings = (
      'Select '
      '  USE_EMPRESA,'
      '  USE_USUARIO,'
      '  USE_ACESSO,'
      '  USE_FIRENET'
      'from USUEMP '
      'where'
      '  USE_EMPRESA = :USE_EMPRESA and'
      '  USE_USUARIO = :USE_USUARIO')
    SelectSQL.Strings = (
      'select * from USUEMP '
      'where USE_EMPRESA=:empresa and '
      'USE_USUARIO=:usuario')
    ModifySQL.Strings = (
      'update USUEMP'
      'set'
      '  USE_EMPRESA = :USE_EMPRESA,'
      '  USE_USUARIO = :USE_USUARIO,'
      '  USE_ACESSO = :USE_ACESSO,'
      '  USE_FIRENET = :USE_FIRENET'
      'where'
      '  USE_EMPRESA = :OLD_USE_EMPRESA and'
      '  USE_USUARIO = :OLD_USE_USUARIO')
    ParamCheck = True
    UniDirectional = False
    Left = 352
    Top = 88
    object TBUsuempUSE_EMPRESA: TIntegerField
      FieldName = 'USE_EMPRESA'
      Origin = 'USUEMP.USE_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuempUSE_USUARIO: TIntegerField
      FieldName = 'USE_USUARIO'
      Origin = 'USUEMP.USE_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuempUSE_ACESSO: TIBStringField
      FieldName = 'USE_ACESSO'
      Origin = 'USUEMP.USE_ACESSO'
      Size = 1
    end
    object TBUsuempUSE_FIRENET: TIBStringField
      FieldName = 'USE_FIRENET'
      Origin = 'USUEMP.USE_FIRENET'
    end
  end
  object TBUnidades: TIBDataSet
    Database = IBDatabase1
    Transaction = TRUnidades
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from UNIDADES'
      'where'
      '  UNI_CODIGO = :OLD_UNI_CODIGO')
    InsertSQL.Strings = (
      'insert into UNIDADES'
      '  (UNI_CODIGO, UNI_DESCRICAO, UNI_LOGO)'
      'values'
      '  (:UNI_CODIGO, :UNI_DESCRICAO, :UNI_LOGO)')
    RefreshSQL.Strings = (
      'Select '
      '  UNI_CODIGO,'
      '  UNI_DESCRICAO,'
      '  UNI_LOGO'
      'from UNIDADES '
      'where'
      '  UNI_CODIGO = :UNI_CODIGO')
    SelectSQL.Strings = (
      'select * from UNIDADES '
      'where UNI_CODIGO=:codigo'
      'order by UNI_CODIGO')
    ModifySQL.Strings = (
      'update UNIDADES'
      'set'
      '  UNI_CODIGO = :UNI_CODIGO,'
      '  UNI_DESCRICAO = :UNI_DESCRICAO,'
      '  UNI_LOGO = :UNI_LOGO'
      'where'
      '  UNI_CODIGO = :OLD_UNI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 416
    Top = 88
    object TBUnidadesUNI_CODIGO: TIntegerField
      FieldName = 'UNI_CODIGO'
      Origin = 'UNIDADES.UNI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUnidadesUNI_DESCRICAO: TIBStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNIDADES.UNI_DESCRICAO'
      Size = 100
    end
    object TBUnidadesUNI_LOGO: TIBStringField
      FieldName = 'UNI_LOGO'
      Origin = 'UNIDADES.UNI_LOGO'
      Size = 400
    end
  end
  object TRUnidades: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 144
  end
  object Query1: TIBQuery
    Database = IBDatabase1
    Transaction = TRQuery1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    PrecommittedReads = False
    Left = 96
    Top = 32
  end
  object Query2: TIBQuery
    Database = IBDatabase1
    Transaction = TRQuery2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    PrecommittedReads = False
    Left = 192
    Top = 32
  end
  object TRQuery1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 128
    Top = 32
  end
  object TRQuery2: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 224
    Top = 32
  end
end
