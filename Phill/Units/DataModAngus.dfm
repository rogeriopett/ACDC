object DMAngus: TDMAngus
  OnCreate = DataModuleCreate
  Height = 508
  Width = 595
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Runtime\Angus\Dados\ANGUS.FDB'
      'User_Name=SYSDBA'
      'Password=borland'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    BeforeConnect = FDConnection1BeforeConnect
    Left = 48
    Top = 32
  end
  object TBBlocos: TFDQuery
    Connection = FDConnection1
    Transaction = TRBlocos
    UpdateObject = UPBlocos
    SQL.Strings = (
      'select * from BLOCOS '
      'where BLO_CODIGO=:codigo'
      'order by BLO_CODIGO'
      '')
    Left = 48
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBBlocosBLO_CODIGO: TIntegerField
      FieldName = 'BLO_CODIGO'
      Origin = 'BLO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBBlocosBLO_CONTEUDO: TMemoField
      FieldName = 'BLO_CONTEUDO'
      Origin = 'BLO_CONTEUDO'
      BlobType = ftMemo
    end
    object TBBlocosBLO_HITS: TIntegerField
      FieldName = 'BLO_HITS'
      Origin = 'BLO_HITS'
    end
    object TBBlocosBLO_IMAGEMDESTAQUE: TStringField
      FieldName = 'BLO_IMAGEMDESTAQUE'
      Origin = 'BLO_IMAGEMDESTAQUE'
      Size = 400
    end
    object TBBlocosBLO_MOSTRARTITULO: TStringField
      FieldName = 'BLO_MOSTRARTITULO'
      Origin = 'BLO_MOSTRARTITULO'
      Size = 1
    end
    object TBBlocosBLO_NOME: TStringField
      FieldName = 'BLO_NOME'
      Origin = 'BLO_NOME'
      Size = 100
    end
    object TBBlocosBLO_PAGINA: TStringField
      FieldName = 'BLO_PAGINA'
      Origin = 'BLO_PAGINA'
      Size = 1
    end
    object TBBlocosBLO_SLUG: TStringField
      FieldName = 'BLO_SLUG'
      Origin = 'BLO_SLUG'
      Size = 100
    end
    object TBBlocosBLO_UNIDADE: TIntegerField
      FieldName = 'BLO_UNIDADE'
      Origin = 'BLO_UNIDADE'
      Required = True
    end
  end
  object TRBlocos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 48
    Top = 160
  end
  object UPBlocos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BLOCOS'
      '(BLO_CODIGO, BLO_CONTEUDO, BLO_HITS, BLO_IMAGEMDESTAQUE, '
      '  BLO_MOSTRARTITULO, BLO_NOME, BLO_PAGINA, '
      '  BLO_SLUG, BLO_UNIDADE)'
      
        'VALUES (gen_id(GEN_BLOCOS,1), :NEW_BLO_CONTEUDO, :NEW_BLO_HITS, ' +
        ':NEW_BLO_IMAGEMDESTAQUE, '
      '  :NEW_BLO_MOSTRARTITULO, :NEW_BLO_NOME, :NEW_BLO_PAGINA, '
      '  :NEW_BLO_SLUG, :NEW_BLO_UNIDADE)'
      
        'RETURNING BLO_CODIGO, BLO_CONTEUDO, BLO_HITS, BLO_IMAGEMDESTAQUE' +
        ', BLO_MOSTRARTITULO, BLO_NOME, BLO_PAGINA, BLO_SLUG, BLO_UNIDADE')
    ModifySQL.Strings = (
      'UPDATE BLOCOS'
      
        'SET BLO_CODIGO = :NEW_BLO_CODIGO, BLO_CONTEUDO = :NEW_BLO_CONTEU' +
        'DO, '
      
        '  BLO_HITS = :NEW_BLO_HITS, BLO_IMAGEMDESTAQUE = :NEW_BLO_IMAGEM' +
        'DESTAQUE, '
      
        '  BLO_MOSTRARTITULO = :NEW_BLO_MOSTRARTITULO, BLO_NOME = :NEW_BL' +
        'O_NOME, '
      '  BLO_PAGINA = :NEW_BLO_PAGINA, BLO_SLUG = :NEW_BLO_SLUG, '
      '  BLO_UNIDADE = :NEW_BLO_UNIDADE'
      'WHERE BLO_CODIGO = :OLD_BLO_CODIGO'
      
        'RETURNING BLO_CODIGO, BLO_CONTEUDO, BLO_HITS, BLO_IMAGEMDESTAQUE' +
        ', BLO_MOSTRARTITULO, BLO_NOME, BLO_PAGINA, BLO_SLUG, BLO_UNIDADE')
    DeleteSQL.Strings = (
      'DELETE FROM BLOCOS'
      'WHERE BLO_CODIGO = :OLD_BLO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT BLO_CODIGO, BLO_CONTEUDO, BLO_HITS, BLO_IMAGEMDESTAQUE, B' +
        'LO_MOSTRARTITULO, '
      '  BLO_NOME, BLO_PAGINA, BLO_SLUG, BLO_UNIDADE'
      'FROM BLOCOS'
      'WHERE BLO_CODIGO = :OLD_BLO_CODIGO')
    Left = 48
    Top = 208
  end
  object TBEmpresas: TFDQuery
    Connection = FDConnection1
    Transaction = TREmpresas
    UpdateObject = UPEmpresas
    SQL.Strings = (
      'select * from EMPRESAS '
      
        'where cast(EMP_CODIGO as varchar(40))=:codigo or EMP_HASH=:codig' +
        'o'
      'order by EMP_CODIGO'
      '')
    Left = 112
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBEmpresasEMP_API: TStringField
      FieldName = 'EMP_API'
      Origin = 'EMP_API'
      Size = 400
    end
    object TBEmpresasEMP_BASEDADOS: TStringField
      FieldName = 'EMP_BASEDADOS'
      Origin = 'EMP_BASEDADOS'
      Size = 400
    end
    object TBEmpresasEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
    end
    object TBEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBEmpresasEMP_DBPASS: TStringField
      FieldName = 'EMP_DBPASS'
      Origin = 'EMP_DBPASS'
      Size = 40
    end
    object TBEmpresasEMP_DBUSER: TStringField
      FieldName = 'EMP_DBUSER'
      Origin = 'EMP_DBUSER'
    end
    object TBEmpresasEMP_DTATUALIZACAO: TDateField
      FieldName = 'EMP_DTATUALIZACAO'
      Origin = 'EMP_DTATUALIZACAO'
    end
    object TBEmpresasEMP_DTCADASTRO: TDateField
      FieldName = 'EMP_DTCADASTRO'
      Origin = 'EMP_DTCADASTRO'
    end
    object TBEmpresasEMP_FONE1: TStringField
      FieldName = 'EMP_FONE1'
      Origin = 'EMP_FONE1'
      Size = 15
    end
    object TBEmpresasEMP_HASH: TStringField
      FieldName = 'EMP_HASH'
      Origin = 'EMP_HASH'
      Size = 40
    end
    object TBEmpresasEMP_HRATUALIZACAO: TTimeField
      FieldName = 'EMP_HRATUALIZACAO'
      Origin = 'EMP_HRATUALIZACAO'
    end
    object TBEmpresasEMP_HRCADASTRO: TTimeField
      FieldName = 'EMP_HRCADASTRO'
      Origin = 'EMP_HRCADASTRO'
    end
    object TBEmpresasEMP_LOGO: TStringField
      FieldName = 'EMP_LOGO'
      Origin = 'EMP_LOGO'
      Size = 100
    end
    object TBEmpresasEMP_NOME: TStringField
      FieldName = 'EMP_NOME'
      Origin = 'EMP_NOME'
      Size = 100
    end
    object TBEmpresasEMP_RESPONSAVEL: TIntegerField
      FieldName = 'EMP_RESPONSAVEL'
      Origin = 'EMP_RESPONSAVEL'
      Required = True
    end
    object TBEmpresasEMP_STATUS: TStringField
      FieldName = 'EMP_STATUS'
      Origin = 'EMP_STATUS'
      Size = 1
    end
  end
  object TREmpresas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 112
    Top = 160
  end
  object UPEmpresas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EMPRESAS'
      '(EMP_API, EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, '
      '  EMP_DBPASS, EMP_DBUSER, EMP_DTATUALIZACAO, '
      '  EMP_DTCADASTRO, EMP_FONE1, EMP_HASH, EMP_HRATUALIZACAO, '
      '  EMP_HRCADASTRO, EMP_LOGO, EMP_NOME, EMP_RESPONSAVEL, '
      '  EMP_STATUS)'
      
        'VALUES (:NEW_EMP_API, :NEW_EMP_BASEDADOS, :NEW_EMP_CNPJ, gen_id(' +
        'GEN_EMPRESAS,1), '
      '  :NEW_EMP_DBPASS, :NEW_EMP_DBUSER, :NEW_EMP_DTATUALIZACAO, '
      
        '  :NEW_EMP_DTCADASTRO, :NEW_EMP_FONE1, :NEW_EMP_HASH, :NEW_EMP_H' +
        'RATUALIZACAO, '
      
        '  :NEW_EMP_HRCADASTRO, :NEW_EMP_LOGO, :NEW_EMP_NOME, :NEW_EMP_RE' +
        'SPONSAVEL, '
      '  :NEW_EMP_STATUS)'
      
        'RETURNING EMP_API, EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, EMP_DBPA' +
        'SS, EMP_DBUSER, EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_FONE1, EM' +
        'P_HASH, EMP_HRATUALIZACAO, EMP_HRCADASTRO, EMP_LOGO, EMP_NOME, E' +
        'MP_RESPONSAVEL, EMP_STATUS')
    ModifySQL.Strings = (
      'UPDATE EMPRESAS'
      'SET EMP_API = :NEW_EMP_API, EMP_BASEDADOS = :NEW_EMP_BASEDADOS, '
      '  EMP_CNPJ = :NEW_EMP_CNPJ, EMP_CODIGO = :NEW_EMP_CODIGO, '
      '  EMP_DBPASS = :NEW_EMP_DBPASS, EMP_DBUSER = :NEW_EMP_DBUSER, '
      
        '  EMP_DTATUALIZACAO = :NEW_EMP_DTATUALIZACAO, EMP_DTCADASTRO = :' +
        'NEW_EMP_DTCADASTRO, '
      
        '  EMP_FONE1 = :NEW_EMP_FONE1, EMP_HASH = :NEW_EMP_HASH, EMP_HRAT' +
        'UALIZACAO = :NEW_EMP_HRATUALIZACAO, '
      
        '  EMP_HRCADASTRO = :NEW_EMP_HRCADASTRO, EMP_LOGO = :NEW_EMP_LOGO' +
        ', '
      
        '  EMP_NOME = :NEW_EMP_NOME, EMP_RESPONSAVEL = :NEW_EMP_RESPONSAV' +
        'EL, '
      '  EMP_STATUS = :NEW_EMP_STATUS'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO'
      
        'RETURNING EMP_API, EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, EMP_DBPA' +
        'SS, EMP_DBUSER, EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_FONE1, EM' +
        'P_HASH, EMP_HRATUALIZACAO, EMP_HRCADASTRO, EMP_LOGO, EMP_NOME, E' +
        'MP_RESPONSAVEL, EMP_STATUS')
    DeleteSQL.Strings = (
      'DELETE FROM EMPRESAS'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EMP_API, EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, EMP_DBPASS,' +
        ' EMP_DBUSER, '
      '  EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_FONE1, EMP_HASH, '
      
        '  EMP_HRATUALIZACAO, EMP_HRCADASTRO, EMP_LOGO, EMP_NOME, EMP_RES' +
        'PONSAVEL, '
      '  EMP_STATUS'
      'FROM EMPRESAS'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO')
    Left = 112
    Top = 208
  end
  object TBMenus: TFDQuery
    Connection = FDConnection1
    Transaction = TRMenus
    UpdateObject = UPMenus
    SQL.Strings = (
      'select * from MENU '
      'where MEN_CODIGO=:codigo'
      'order by MEN_CODIGO'
      '')
    Left = 176
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMenusMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Origin = 'MEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMenusMEN_DESCRICAO: TStringField
      FieldName = 'MEN_DESCRICAO'
      Origin = 'MEN_DESCRICAO'
      Size = 50
    end
    object TBMenusMEN_LINK: TStringField
      FieldName = 'MEN_LINK'
      Origin = 'MEN_LINK'
      Size = 400
    end
    object TBMenusMEN_ORDEM: TIntegerField
      FieldName = 'MEN_ORDEM'
      Origin = 'MEN_ORDEM'
    end
    object TBMenusMEN_MENUTITLE: TStringField
      FieldName = 'MEN_MENUTITLE'
      Origin = 'MEN_MENUTITLE'
      Size = 1
    end
    object TBMenusMEN_BLOCO: TIntegerField
      FieldName = 'MEN_BLOCO'
      Origin = 'MEN_BLOCO'
    end
    object TBMenusMEN_TARGET: TStringField
      FieldName = 'MEN_TARGET'
      Origin = 'MEN_TARGET'
      Size = 10
    end
    object TBMenusMEN_PAI: TIntegerField
      FieldName = 'MEN_PAI'
      Origin = 'MEN_PAI'
      Required = True
    end
    object TBMenusMEN_DROP: TStringField
      FieldName = 'MEN_DROP'
      Origin = 'MEN_DROP'
      Size = 1
    end
    object TBMenusMEN_TIPO: TStringField
      FieldName = 'MEN_TIPO'
      Origin = 'MEN_TIPO'
      Size = 1
    end
    object TBMenusMEN_ICONE: TStringField
      FieldName = 'MEN_ICONE'
      Origin = 'MEN_ICONE'
      Size = 50
    end
    object TBMenusMEN_VISIBLE: TStringField
      FieldName = 'MEN_VISIBLE'
      Origin = 'MEN_VISIBLE'
      Size = 1
    end
    object TBMenusMEN_ROOT: TIntegerField
      FieldName = 'MEN_ROOT'
      Origin = 'MEN_ROOT'
      Required = True
    end
    object TBMenusMEN_UNIDADE: TIntegerField
      FieldName = 'MEN_UNIDADE'
      Origin = 'MEN_UNIDADE'
      Required = True
    end
  end
  object TRMenus: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 176
    Top = 160
  end
  object UPMenus: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MENU'
      '(MEN_CODIGO, MEN_DESCRICAO, MEN_LINK, MEN_ORDEM, '
      '  MEN_MENUTITLE, MEN_BLOCO, MEN_TARGET, MEN_PAI, '
      '  MEN_DROP, MEN_TIPO, MEN_ICONE, MEN_VISIBLE, '
      '  MEN_ROOT, MEN_UNIDADE)'
      
        'VALUES (gen_id(GEN_MENU,1), :NEW_MEN_DESCRICAO, :NEW_MEN_LINK, :' +
        'NEW_MEN_ORDEM, '
      
        '  :NEW_MEN_MENUTITLE, :NEW_MEN_BLOCO, :NEW_MEN_TARGET, :NEW_MEN_' +
        'PAI, '
      
        '  :NEW_MEN_DROP, :NEW_MEN_TIPO, :NEW_MEN_ICONE, :NEW_MEN_VISIBLE' +
        ', '
      '  :NEW_MEN_ROOT, :NEW_MEN_UNIDADE)'
      
        'RETURNING MEN_CODIGO, MEN_DESCRICAO, MEN_LINK, MEN_ORDEM, MEN_ME' +
        'NUTITLE, MEN_BLOCO, MEN_TARGET, MEN_PAI, MEN_DROP, MEN_TIPO, MEN' +
        '_ICONE, MEN_VISIBLE, MEN_ROOT, MEN_UNIDADE')
    ModifySQL.Strings = (
      'UPDATE MENU'
      
        'SET MEN_CODIGO = :NEW_MEN_CODIGO, MEN_DESCRICAO = :NEW_MEN_DESCR' +
        'ICAO, '
      
        '  MEN_LINK = :NEW_MEN_LINK, MEN_ORDEM = :NEW_MEN_ORDEM, MEN_MENU' +
        'TITLE = :NEW_MEN_MENUTITLE, '
      '  MEN_BLOCO = :NEW_MEN_BLOCO, MEN_TARGET = :NEW_MEN_TARGET, '
      
        '  MEN_PAI = :NEW_MEN_PAI, MEN_DROP = :NEW_MEN_DROP, MEN_TIPO = :' +
        'NEW_MEN_TIPO, '
      '  MEN_ICONE = :NEW_MEN_ICONE, MEN_VISIBLE = :NEW_MEN_VISIBLE, '
      '  MEN_ROOT = :NEW_MEN_ROOT, MEN_UNIDADE = :NEW_MEN_UNIDADE'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO'
      
        'RETURNING MEN_CODIGO, MEN_DESCRICAO, MEN_LINK, MEN_ORDEM, MEN_ME' +
        'NUTITLE, MEN_BLOCO, MEN_TARGET, MEN_PAI, MEN_DROP, MEN_TIPO, MEN' +
        '_ICONE, MEN_VISIBLE, MEN_ROOT, MEN_UNIDADE')
    DeleteSQL.Strings = (
      'DELETE FROM MENU'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MEN_CODIGO, MEN_DESCRICAO, MEN_LINK, MEN_ORDEM, MEN_MENUT' +
        'ITLE, '
      
        '  MEN_BLOCO, MEN_TARGET, MEN_PAI, MEN_DROP, MEN_TIPO, MEN_ICONE,' +
        ' '
      '  MEN_VISIBLE, MEN_ROOT, MEN_UNIDADE'
      'FROM MENU'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO')
    Left = 176
    Top = 208
  end
  object TBParametros: TFDQuery
    Connection = FDConnection1
    Transaction = TRParametros
    UpdateObject = UPParametros
    SQL.Strings = (
      'select * from PARAMETROS where PAR_CODIGO=:codigo'
      '')
    Left = 240
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBParametrosPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBParametrosPAR_CONFIRMADO: TMemoField
      FieldName = 'PAR_CONFIRMADO'
      Origin = 'PAR_CONFIRMADO'
      BlobType = ftMemo
    end
    object TBParametrosPAR_FLEXDOCSNFE: TStringField
      FieldName = 'PAR_FLEXDOCSNFE'
      Origin = 'PAR_FLEXDOCSNFE'
      Size = 100
    end
    object TBParametrosPAR_FLEXDOCSPASTA: TStringField
      FieldName = 'PAR_FLEXDOCSPASTA'
      Origin = 'PAR_FLEXDOCSPASTA'
      Size = 400
    end
    object TBParametrosPAR_MAILADMIN: TStringField
      FieldName = 'PAR_MAILADMIN'
      Origin = 'PAR_MAILADMIN'
      Size = 100
    end
    object TBParametrosPAR_MAILFROM: TStringField
      FieldName = 'PAR_MAILFROM'
      Origin = 'PAR_MAILFROM'
      Size = 100
    end
    object TBParametrosPAR_MAILNAME: TStringField
      FieldName = 'PAR_MAILNAME'
      Origin = 'PAR_MAILNAME'
      Size = 100
    end
    object TBParametrosPAR_MAILPASS: TStringField
      FieldName = 'PAR_MAILPASS'
      Origin = 'PAR_MAILPASS'
      Size = 60
    end
    object TBParametrosPAR_MAILPORT: TIntegerField
      FieldName = 'PAR_MAILPORT'
      Origin = 'PAR_MAILPORT'
    end
    object TBParametrosPAR_MAILPREFIX: TStringField
      FieldName = 'PAR_MAILPREFIX'
      Origin = 'PAR_MAILPREFIX'
    end
    object TBParametrosPAR_MAILSMTP: TStringField
      FieldName = 'PAR_MAILSMTP'
      Origin = 'PAR_MAILSMTP'
      Size = 100
    end
    object TBParametrosPAR_MAILUSER: TStringField
      FieldName = 'PAR_MAILUSER'
      Origin = 'PAR_MAILUSER'
      Size = 100
    end
    object TBParametrosPAR_NOVOUSUARIO: TMemoField
      FieldName = 'PAR_NOVOUSUARIO'
      Origin = 'PAR_NOVOUSUARIO'
      BlobType = ftMemo
    end
    object TBParametrosPAR_REENVIAR: TMemoField
      FieldName = 'PAR_REENVIAR'
      Origin = 'PAR_REENVIAR'
      BlobType = ftMemo
    end
    object TBParametrosPAR_RESETARSENHA: TMemoField
      FieldName = 'PAR_RESETARSENHA'
      Origin = 'PAR_RESETARSENHA'
      BlobType = ftMemo
    end
    object TBParametrosPAR_SITENAME: TStringField
      FieldName = 'PAR_SITENAME'
      Origin = 'PAR_SITENAME'
      Size = 100
    end
  end
  object TRParametros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 240
    Top = 160
  end
  object UPParametros: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PARAMETROS'
      '(PAR_CODIGO, PAR_CONFIRMADO, PAR_FLEXDOCSNFE, '
      '  PAR_FLEXDOCSPASTA, PAR_MAILADMIN, PAR_MAILFROM, '
      '  PAR_MAILNAME, PAR_MAILPASS, PAR_MAILPORT, '
      '  PAR_MAILPREFIX, PAR_MAILSMTP, PAR_MAILUSER, '
      '  PAR_NOVOUSUARIO, PAR_REENVIAR, PAR_RESETARSENHA, '
      '  PAR_SITENAME)'
      
        'VALUES (:NEW_PAR_CODIGO, :NEW_PAR_CONFIRMADO, :NEW_PAR_FLEXDOCSN' +
        'FE, '
      
        '  :NEW_PAR_FLEXDOCSPASTA, :NEW_PAR_MAILADMIN, :NEW_PAR_MAILFROM,' +
        ' '
      '  :NEW_PAR_MAILNAME, :NEW_PAR_MAILPASS, :NEW_PAR_MAILPORT, '
      '  :NEW_PAR_MAILPREFIX, :NEW_PAR_MAILSMTP, :NEW_PAR_MAILUSER, '
      
        '  :NEW_PAR_NOVOUSUARIO, :NEW_PAR_REENVIAR, :NEW_PAR_RESETARSENHA' +
        ', '
      '  :NEW_PAR_SITENAME)'
      
        'RETURNING PAR_CODIGO, PAR_CONFIRMADO, PAR_FLEXDOCSNFE, PAR_FLEXD' +
        'OCSPASTA, PAR_MAILADMIN, PAR_MAILFROM, PAR_MAILNAME, PAR_MAILPAS' +
        'S, PAR_MAILPORT, PAR_MAILPREFIX, PAR_MAILSMTP, PAR_MAILUSER, PAR' +
        '_NOVOUSUARIO, PAR_REENVIAR, PAR_RESETARSENHA, PAR_SITENAME')
    ModifySQL.Strings = (
      'UPDATE PARAMETROS'
      
        'SET PAR_CODIGO = :NEW_PAR_CODIGO, PAR_CONFIRMADO = :NEW_PAR_CONF' +
        'IRMADO, '
      
        '  PAR_FLEXDOCSNFE = :NEW_PAR_FLEXDOCSNFE, PAR_FLEXDOCSPASTA = :N' +
        'EW_PAR_FLEXDOCSPASTA, '
      
        '  PAR_MAILADMIN = :NEW_PAR_MAILADMIN, PAR_MAILFROM = :NEW_PAR_MA' +
        'ILFROM, '
      
        '  PAR_MAILNAME = :NEW_PAR_MAILNAME, PAR_MAILPASS = :NEW_PAR_MAIL' +
        'PASS, '
      
        '  PAR_MAILPORT = :NEW_PAR_MAILPORT, PAR_MAILPREFIX = :NEW_PAR_MA' +
        'ILPREFIX, '
      
        '  PAR_MAILSMTP = :NEW_PAR_MAILSMTP, PAR_MAILUSER = :NEW_PAR_MAIL' +
        'USER, '
      
        '  PAR_NOVOUSUARIO = :NEW_PAR_NOVOUSUARIO, PAR_REENVIAR = :NEW_PA' +
        'R_REENVIAR, '
      
        '  PAR_RESETARSENHA = :NEW_PAR_RESETARSENHA, PAR_SITENAME = :NEW_' +
        'PAR_SITENAME'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO'
      
        'RETURNING PAR_CODIGO, PAR_CONFIRMADO, PAR_FLEXDOCSNFE, PAR_FLEXD' +
        'OCSPASTA, PAR_MAILADMIN, PAR_MAILFROM, PAR_MAILNAME, PAR_MAILPAS' +
        'S, PAR_MAILPORT, PAR_MAILPREFIX, PAR_MAILSMTP, PAR_MAILUSER, PAR' +
        '_NOVOUSUARIO, PAR_REENVIAR, PAR_RESETARSENHA, PAR_SITENAME')
    DeleteSQL.Strings = (
      'DELETE FROM PARAMETROS'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PAR_CODIGO, PAR_CONFIRMADO, PAR_FLEXDOCSNFE, PAR_FLEXDOCS' +
        'PASTA, '
      '  PAR_MAILADMIN, PAR_MAILFROM, PAR_MAILNAME, PAR_MAILPASS, '
      '  PAR_MAILPORT, PAR_MAILPREFIX, PAR_MAILSMTP, PAR_MAILUSER, '
      '  PAR_NOVOUSUARIO, PAR_REENVIAR, PAR_RESETARSENHA, PAR_SITENAME'
      'FROM PARAMETROS'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO')
    Left = 240
    Top = 208
  end
  object TBUsuarios: TFDQuery
    Connection = FDConnection1
    Transaction = TRUsuarios
    UpdateObject = UPUsuarios
    SQL.Strings = (
      'select '
      'USU_ADMIN,'
      'USU_APELIDO,'
      'USU_AVATAR,'
      'USU_CODIGO,'
      'USU_CONFIRMACAO,'
      'USU_CPF,'
      'USU_DTATUALIZACAO,'
      'USU_DTCADASTRO,'
      'USU_EMAIL,'
      'USU_FONE1,'
      'USU_GESTOR,'
      'USU_HASH,'
      'USU_HRATUALIZACAO,'
      'USU_HRCADASTRO,'
      'USU_NOME,'
      'USU_PASSWORD,'
      'USU_STATUS'
      'from USUARIOS '
      
        'where cast(USU_CODIGO as varchar(40))=:codigo or USU_HASH=:codig' +
        'o'
      'order by USU_CODIGO'
      '')
    Left = 304
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBUsuariosUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      Origin = 'USU_ADMIN'
      Size = 1
    end
    object TBUsuariosUSU_APELIDO: TStringField
      FieldName = 'USU_APELIDO'
      Origin = 'USU_APELIDO'
    end
    object TBUsuariosUSU_AVATAR: TStringField
      FieldName = 'USU_AVATAR'
      Origin = 'USU_AVATAR'
      Size = 100
    end
    object TBUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBUsuariosUSU_CONFIRMACAO: TStringField
      FieldName = 'USU_CONFIRMACAO'
      Origin = 'USU_CONFIRMACAO'
    end
    object TBUsuariosUSU_CPF: TStringField
      FieldName = 'USU_CPF'
      Origin = 'USU_CPF'
    end
    object TBUsuariosUSU_DTATUALIZACAO: TDateField
      FieldName = 'USU_DTATUALIZACAO'
      Origin = 'USU_DTATUALIZACAO'
    end
    object TBUsuariosUSU_DTCADASTRO: TDateField
      FieldName = 'USU_DTCADASTRO'
      Origin = 'USU_DTCADASTRO'
    end
    object TBUsuariosUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      Origin = 'USU_EMAIL'
      Size = 100
    end
    object TBUsuariosUSU_FONE1: TStringField
      FieldName = 'USU_FONE1'
      Origin = 'USU_FONE1'
      Size = 15
    end
    object TBUsuariosUSU_GESTOR: TStringField
      FieldName = 'USU_GESTOR'
      Origin = 'USU_GESTOR'
      Size = 1
    end
    object TBUsuariosUSU_HASH: TStringField
      FieldName = 'USU_HASH'
      Origin = 'USU_HASH'
      Size = 40
    end
    object TBUsuariosUSU_HRATUALIZACAO: TTimeField
      FieldName = 'USU_HRATUALIZACAO'
      Origin = 'USU_HRATUALIZACAO'
    end
    object TBUsuariosUSU_HRCADASTRO: TTimeField
      FieldName = 'USU_HRCADASTRO'
      Origin = 'USU_HRCADASTRO'
    end
    object TBUsuariosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 100
    end
    object TBUsuariosUSU_PASSWORD: TStringField
      FieldName = 'USU_PASSWORD'
      Origin = 'USU_PASSWORD'
      Size = 60
    end
    object TBUsuariosUSU_STATUS: TStringField
      FieldName = 'USU_STATUS'
      Origin = 'USU_STATUS'
      Size = 1
    end
  end
  object TRUsuarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 304
    Top = 160
  end
  object UPUsuarios: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS'
      '(USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CODIGO, '
      '  USU_CONFIRMACAO, USU_CPF, USU_DTATUALIZACAO, '
      '  USU_DTCADASTRO, USU_EMAIL, USU_FONE1, USU_GESTOR, '
      '  USU_HASH, USU_HRATUALIZACAO, USU_HRCADASTRO, '
      '  USU_NOME, USU_PASSWORD, USU_STATUS)'
      
        'VALUES (:NEW_USU_ADMIN, :NEW_USU_APELIDO, :NEW_USU_AVATAR, gen_i' +
        'd(GEN_USUARIOS,1), '
      '  :NEW_USU_CONFIRMACAO, :NEW_USU_CPF, :NEW_USU_DTATUALIZACAO, '
      
        '  :NEW_USU_DTCADASTRO, :NEW_USU_EMAIL, :NEW_USU_FONE1, :NEW_USU_' +
        'GESTOR, '
      '  :NEW_USU_HASH, :NEW_USU_HRATUALIZACAO, :NEW_USU_HRCADASTRO, '
      '  :NEW_USU_NOME, :NEW_USU_PASSWORD, :NEW_USU_STATUS)'
      
        'RETURNING USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CODIGO, USU_CO' +
        'NFIRMACAO, USU_CPF, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_EMAIL' +
        ', USU_FONE1, USU_GESTOR, USU_HASH, USU_HRATUALIZACAO, USU_HRCADA' +
        'STRO, USU_NOME, USU_PASSWORD, USU_STATUS')
    ModifySQL.Strings = (
      'UPDATE USUARIOS'
      'SET USU_ADMIN = :NEW_USU_ADMIN, USU_APELIDO = :NEW_USU_APELIDO, '
      '  USU_AVATAR = :NEW_USU_AVATAR, USU_CODIGO = :NEW_USU_CODIGO, '
      
        '  USU_CONFIRMACAO = :NEW_USU_CONFIRMACAO, USU_CPF = :NEW_USU_CPF' +
        ', '
      
        '  USU_DTATUALIZACAO = :NEW_USU_DTATUALIZACAO, USU_DTCADASTRO = :' +
        'NEW_USU_DTCADASTRO, '
      '  USU_EMAIL = :NEW_USU_EMAIL, USU_FONE1 = :NEW_USU_FONE1, '
      '  USU_GESTOR = :NEW_USU_GESTOR, USU_HASH = :NEW_USU_HASH, '
      
        '  USU_HRATUALIZACAO = :NEW_USU_HRATUALIZACAO, USU_HRCADASTRO = :' +
        'NEW_USU_HRCADASTRO, '
      '  USU_NOME = :NEW_USU_NOME, USU_PASSWORD = :NEW_USU_PASSWORD, '
      '  USU_STATUS = :NEW_USU_STATUS'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO'
      
        'RETURNING USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CODIGO, USU_CO' +
        'NFIRMACAO, USU_CPF, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_EMAIL' +
        ', USU_FONE1, USU_GESTOR, USU_HASH, USU_HRATUALIZACAO, USU_HRCADA' +
        'STRO, USU_NOME, USU_PASSWORD, USU_STATUS')
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CODIGO, USU_CONFI' +
        'RMACAO, '
      
        '  USU_CPF, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_EMAIL, USU_FON' +
        'E1, '
      '  USU_GESTOR, USU_HASH, USU_HRATUALIZACAO, USU_HRCADASTRO, '
      '  USU_NOME, USU_PASSWORD, USU_STATUS'
      'FROM USUARIOS'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO')
    Left = 304
    Top = 208
  end
  object TBUsuemp: TFDQuery
    Connection = FDConnection1
    Transaction = TRUsuemp
    UpdateObject = UPUsuemp
    SQL.Strings = (
      'select * from USUEMP '
      'where USE_EMPRESA=:empresa and '
      'USE_USUARIO=:usuario'
      '')
    Left = 368
    Top = 112
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBUsuempUSE_EMPRESA: TIntegerField
      FieldName = 'USE_EMPRESA'
      Origin = 'USE_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuempUSE_USUARIO: TIntegerField
      FieldName = 'USE_USUARIO'
      Origin = 'USE_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuempUSE_ACESSO: TStringField
      FieldName = 'USE_ACESSO'
      Origin = 'USE_ACESSO'
      Size = 1
    end
    object TBUsuempUSE_FIRENET: TStringField
      FieldName = 'USE_FIRENET'
      Origin = 'USE_FIRENET'
    end
  end
  object TRUsuemp: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 368
    Top = 160
  end
  object UPUsuemp: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO USUEMP'
      '(USE_EMPRESA, USE_USUARIO, USE_ACESSO, USE_FIRENET)'
      
        'VALUES (:NEW_USE_EMPRESA, :NEW_USE_USUARIO, :NEW_USE_ACESSO, :NE' +
        'W_USE_FIRENET)'
      'RETURNING USE_EMPRESA, USE_USUARIO, USE_ACESSO, USE_FIRENET')
    ModifySQL.Strings = (
      'UPDATE USUEMP'
      
        'SET USE_EMPRESA = :NEW_USE_EMPRESA, USE_USUARIO = :NEW_USE_USUAR' +
        'IO, '
      '  USE_ACESSO = :NEW_USE_ACESSO, USE_FIRENET = :NEW_USE_FIRENET'
      
        'WHERE USE_EMPRESA = :OLD_USE_EMPRESA AND USE_USUARIO = :OLD_USE_' +
        'USUARIO'
      'RETURNING USE_EMPRESA, USE_USUARIO, USE_ACESSO, USE_FIRENET')
    DeleteSQL.Strings = (
      'DELETE FROM USUEMP'
      
        'WHERE USE_EMPRESA = :OLD_USE_EMPRESA AND USE_USUARIO = :OLD_USE_' +
        'USUARIO')
    FetchRowSQL.Strings = (
      'SELECT USE_EMPRESA, USE_USUARIO, USE_ACESSO, USE_FIRENET'
      'FROM USUEMP'
      
        'WHERE USE_EMPRESA = :OLD_USE_EMPRESA AND USE_USUARIO = :OLD_USE_' +
        'USUARIO')
    Left = 368
    Top = 208
  end
  object TBUnidades: TFDQuery
    Connection = FDConnection1
    Transaction = TRUnidades
    SQL.Strings = (
      'select * from UNIDADES '
      'where UNI_CODIGO=:codigo'
      'order by UNI_CODIGO'
      '')
    Left = 432
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBUnidadesUNI_CODIGO: TIntegerField
      FieldName = 'UNI_CODIGO'
      Origin = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBUnidadesUNI_DESCRICAO: TStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      Size = 100
    end
    object TBUnidadesUNI_LOGO: TStringField
      FieldName = 'UNI_LOGO'
      Origin = 'UNI_LOGO'
      Size = 400
    end
  end
  object TRUnidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 432
    Top = 160
  end
  object UPUnidades: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO UNIDADES'
      '(UNI_CODIGO, UNI_DESCRICAO, UNI_LOGO)'
      
        'VALUES (gen_id(GEN_UNIDADES,1), :NEW_UNI_DESCRICAO, :NEW_UNI_LOG' +
        'O)'
      'RETURNING UNI_CODIGO, UNI_DESCRICAO, UNI_LOGO')
    ModifySQL.Strings = (
      'UPDATE UNIDADES'
      
        'SET UNI_CODIGO = :NEW_UNI_CODIGO, UNI_DESCRICAO = :NEW_UNI_DESCR' +
        'ICAO, '
      '  UNI_LOGO = :NEW_UNI_LOGO'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO'
      'RETURNING UNI_CODIGO, UNI_DESCRICAO, UNI_LOGO')
    DeleteSQL.Strings = (
      'DELETE FROM UNIDADES'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT UNI_CODIGO, UNI_DESCRICAO, UNI_LOGO'
      'FROM UNIDADES'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO')
    Left = 432
    Top = 208
  end
  object Query1: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery1
    SQL.Strings = (
      '')
    Left = 144
    Top = 32
  end
  object TRQuery1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 176
    Top = 32
  end
  object Query2: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery2
    SQL.Strings = (
      '')
    Left = 256
    Top = 32
  end
  object TRQuery2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 288
    Top = 32
  end
end
