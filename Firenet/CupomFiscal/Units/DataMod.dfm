object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 493
  Width = 1146
  object TBCupomFiscal: TIBDataSet
    Database = IBDatabase1
    Transaction = TRCupomFiscal
    AfterDelete = TBCupomFiscalAfterDelete
    AfterEdit = TBCupomFiscalAfterEdit
    AfterInsert = TBCupomFiscalAfterInsert
    AfterPost = TBCupomFiscalAfterPost
    BeforePost = TBCupomFiscalBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUPOMFISCAL'
      'where'
      '  CUP_CODIGO = :OLD_CUP_CODIGO')
    InsertSQL.Strings = (
      'insert into CUPOMFISCAL'
      
        '  (CUP_ACREPORC, CUP_ACREVALOR, CUP_BASEICMS, CUP_CCF, CUP_CFOP,' +
        ' CUP_CLIENTE, '
      
        '   CUP_CODIGO, CUP_COO, CUP_DATA, CUP_DATAHORA, CUP_DAV, CUP_DES' +
        'CPORC, '
      
        '   CUP_DESCVALOR, CUP_DOCUMENTO, CUP_HORA, CUP_MOVIMENTO, CUP_NO' +
        'ME, CUP_PREVENDA, '
      
        '   CUP_SINCRONIZADO, CUP_STATUS, CUP_TABELAPRECO, CUP_TOTALCOFIN' +
        'S, CUP_TOTALICMS, '
      
        '   CUP_TOTALICMSOUTRAS, CUP_TOTALISS, CUP_TOTALITENS, CUP_TOTALP' +
        'IS, CUP_VALORCANCELADO, '
      
        '   CUP_VALORRECEBIDO, CUP_VALORTOTAL, CUP_VALORTROCO, CUP_VENDED' +
        'OR)'
      'values'
      
        '  (:CUP_ACREPORC, :CUP_ACREVALOR, :CUP_BASEICMS, :CUP_CCF, :CUP_' +
        'CFOP, :CUP_CLIENTE, '
      
        '   :CUP_CODIGO, :CUP_COO, :CUP_DATA, :CUP_DATAHORA, :CUP_DAV, :C' +
        'UP_DESCPORC, '
      
        '   :CUP_DESCVALOR, :CUP_DOCUMENTO, :CUP_HORA, :CUP_MOVIMENTO, :C' +
        'UP_NOME, '
      
        '   :CUP_PREVENDA, :CUP_SINCRONIZADO, :CUP_STATUS, :CUP_TABELAPRE' +
        'CO, :CUP_TOTALCOFINS, '
      
        '   :CUP_TOTALICMS, :CUP_TOTALICMSOUTRAS, :CUP_TOTALISS, :CUP_TOT' +
        'ALITENS, '
      
        '   :CUP_TOTALPIS, :CUP_VALORCANCELADO, :CUP_VALORRECEBIDO, :CUP_' +
        'VALORTOTAL, '
      '   :CUP_VALORTROCO, :CUP_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CUP_CODIGO,'
      '  CUP_MOVIMENTO,'
      '  CUP_DAV,'
      '  CUP_PREVENDA,'
      '  CUP_VENDEDOR,'
      '  CUP_CLIENTE,'
      '  CUP_COO,'
      '  CUP_CCF,'
      '  CUP_DATA,'
      '  CUP_HORA,'
      '  CUP_DESCPORC,'
      '  CUP_DESCVALOR,'
      '  CUP_ACREPORC,'
      '  CUP_ACREVALOR,'
      '  CUP_VALORTOTAL,'
      '  CUP_VALORRECEBIDO,'
      '  CUP_VALORTROCO,'
      '  CUP_VALORCANCELADO,'
      '  CUP_TOTALITENS,'
      '  CUP_BASEICMS,'
      '  CUP_TOTALICMS,'
      '  CUP_TOTALICMSOUTRAS,'
      '  CUP_TOTALISS,'
      '  CUP_TOTALPIS,'
      '  CUP_TOTALCOFINS,'
      '  CUP_NOME,'
      '  CUP_DOCUMENTO,'
      '  CUP_SINCRONIZADO,'
      '  CUP_STATUS,'
      '  CUP_TABELAPRECO,'
      '  CUP_DATAHORA,'
      '  CUP_CFOP'
      'from CUPOMFISCAL '
      'where'
      '  CUP_CODIGO = :CUP_CODIGO')
    SelectSQL.Strings = (
      'select * from CUPOMFISCAL'
      'where CUP_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CUPOMFISCAL'
      'set'
      '  CUP_ACREPORC = :CUP_ACREPORC,'
      '  CUP_ACREVALOR = :CUP_ACREVALOR,'
      '  CUP_BASEICMS = :CUP_BASEICMS,'
      '  CUP_CCF = :CUP_CCF,'
      '  CUP_CFOP = :CUP_CFOP,'
      '  CUP_CLIENTE = :CUP_CLIENTE,'
      '  CUP_CODIGO = :CUP_CODIGO,'
      '  CUP_COO = :CUP_COO,'
      '  CUP_DATA = :CUP_DATA,'
      '  CUP_DATAHORA = :CUP_DATAHORA,'
      '  CUP_DAV = :CUP_DAV,'
      '  CUP_DESCPORC = :CUP_DESCPORC,'
      '  CUP_DESCVALOR = :CUP_DESCVALOR,'
      '  CUP_DOCUMENTO = :CUP_DOCUMENTO,'
      '  CUP_HORA = :CUP_HORA,'
      '  CUP_MOVIMENTO = :CUP_MOVIMENTO,'
      '  CUP_NOME = :CUP_NOME,'
      '  CUP_PREVENDA = :CUP_PREVENDA,'
      '  CUP_SINCRONIZADO = :CUP_SINCRONIZADO,'
      '  CUP_STATUS = :CUP_STATUS,'
      '  CUP_TABELAPRECO = :CUP_TABELAPRECO,'
      '  CUP_TOTALCOFINS = :CUP_TOTALCOFINS,'
      '  CUP_TOTALICMS = :CUP_TOTALICMS,'
      '  CUP_TOTALICMSOUTRAS = :CUP_TOTALICMSOUTRAS,'
      '  CUP_TOTALISS = :CUP_TOTALISS,'
      '  CUP_TOTALITENS = :CUP_TOTALITENS,'
      '  CUP_TOTALPIS = :CUP_TOTALPIS,'
      '  CUP_VALORCANCELADO = :CUP_VALORCANCELADO,'
      '  CUP_VALORRECEBIDO = :CUP_VALORRECEBIDO,'
      '  CUP_VALORTOTAL = :CUP_VALORTOTAL,'
      '  CUP_VALORTROCO = :CUP_VALORTROCO,'
      '  CUP_VENDEDOR = :CUP_VENDEDOR'
      'where'
      '  CUP_CODIGO = :OLD_CUP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CUP_CODIGO'
    GeneratorField.Generator = 'GEN_CUPOMFISCAL'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 392
    Top = 72
    object TBCupomFiscalCUP_ACREPORC: TIBBCDField
      FieldName = 'CUP_ACREPORC'
      Origin = '"CUPOMFISCAL"."CUP_ACREPORC"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_ACREVALOR: TIBBCDField
      FieldName = 'CUP_ACREVALOR'
      Origin = '"CUPOMFISCAL"."CUP_ACREVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_BASEICMS: TIBBCDField
      FieldName = 'CUP_BASEICMS'
      Origin = '"CUPOMFISCAL"."CUP_BASEICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_CLIENTE: TIntegerField
      FieldName = 'CUP_CLIENTE'
      Origin = '"CUPOMFISCAL"."CUP_CLIENTE"'
    end
    object TBCupomFiscalCUP_CCF: TIntegerField
      FieldName = 'CUP_CCF'
      Origin = '"CUPOMFISCAL"."CUP_CCF"'
    end
    object TBCupomFiscalCUP_CFOP: TIBStringField
      FieldName = 'CUP_CFOP'
      Origin = '"CUPOMFISCAL"."CUP_CFOP"'
      Size = 10
    end
    object TBCupomFiscalCUP_CODIGO: TIntegerField
      FieldName = 'CUP_CODIGO'
      Origin = '"CUPOMFISCAL"."CUP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCupomFiscalCUP_COO: TIntegerField
      FieldName = 'CUP_COO'
      Origin = '"CUPOMFISCAL"."CUP_COO"'
    end
    object TBCupomFiscalCUP_DATA: TDateField
      FieldName = 'CUP_DATA'
      Origin = '"CUPOMFISCAL"."CUP_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCupomFiscalCUP_DATAHORA: TDateTimeField
      FieldName = 'CUP_DATAHORA'
      Origin = '"CUPOMFISCAL"."CUP_DATAHORA"'
    end
    object TBCupomFiscalCUP_DAV: TIntegerField
      FieldName = 'CUP_DAV'
      Origin = '"CUPOMFISCAL"."CUP_DAV"'
    end
    object TBCupomFiscalCUP_DESCPORC: TIBBCDField
      FieldName = 'CUP_DESCPORC'
      Origin = '"CUPOMFISCAL"."CUP_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_DESCVALOR: TIBBCDField
      FieldName = 'CUP_DESCVALOR'
      Origin = '"CUPOMFISCAL"."CUP_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_DOCUMENTO: TIBStringField
      FieldName = 'CUP_DOCUMENTO'
      Origin = '"CUPOMFISCAL"."CUP_DOCUMENTO"'
    end
    object TBCupomFiscalCUP_HORA: TIBStringField
      FieldName = 'CUP_HORA'
      Origin = '"CUPOMFISCAL"."CUP_HORA"'
      Size = 8
    end
    object TBCupomFiscalCUP_MOVIMENTO: TIntegerField
      FieldName = 'CUP_MOVIMENTO'
      Origin = '"CUPOMFISCAL"."CUP_MOVIMENTO"'
      Required = True
    end
    object TBCupomFiscalCUP_NOME: TIBStringField
      FieldName = 'CUP_NOME'
      Origin = '"CUPOMFISCAL"."CUP_NOME"'
      Size = 50
    end
    object TBCupomFiscalCUP_PREVENDA: TIntegerField
      FieldName = 'CUP_PREVENDA'
      Origin = '"CUPOMFISCAL"."CUP_PREVENDA"'
    end
    object TBCupomFiscalCUP_SINCRONIZADO: TIBStringField
      FieldName = 'CUP_SINCRONIZADO'
      Origin = '"CUPOMFISCAL"."CUP_SINCRONIZADO"'
      Size = 1
    end
    object TBCupomFiscalCUP_STATUS: TIBStringField
      FieldName = 'CUP_STATUS'
      Origin = '"CUPOMFISCAL"."CUP_STATUS"'
      Size = 1
    end
    object TBCupomFiscalCUP_TABELAPRECO: TIBStringField
      FieldName = 'CUP_TABELAPRECO'
      Origin = '"CUPOMFISCAL"."CUP_TABELAPRECO"'
      Size = 1
    end
    object TBCupomFiscalCUP_TOTALCOFINS: TIBBCDField
      FieldName = 'CUP_TOTALCOFINS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALCOFINS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_TOTALICMS: TIBBCDField
      FieldName = 'CUP_TOTALICMS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_TOTALICMSOUTRAS: TIBBCDField
      FieldName = 'CUP_TOTALICMSOUTRAS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALICMSOUTRAS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_TOTALISS: TIBBCDField
      FieldName = 'CUP_TOTALISS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALISS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_TOTALPIS: TIBBCDField
      FieldName = 'CUP_TOTALPIS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALPIS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_TOTALITENS: TIBBCDField
      FieldName = 'CUP_TOTALITENS'
      Origin = '"CUPOMFISCAL"."CUP_TOTALITENS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_VALORCANCELADO: TIBBCDField
      FieldName = 'CUP_VALORCANCELADO'
      Origin = '"CUPOMFISCAL"."CUP_VALORCANCELADO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_VALORRECEBIDO: TIBBCDField
      FieldName = 'CUP_VALORRECEBIDO'
      Origin = '"CUPOMFISCAL"."CUP_VALORRECEBIDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_VALORTOTAL: TIBBCDField
      FieldName = 'CUP_VALORTOTAL'
      Origin = '"CUPOMFISCAL"."CUP_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_VALORTROCO: TIBBCDField
      FieldName = 'CUP_VALORTROCO'
      Origin = '"CUPOMFISCAL"."CUP_VALORTROCO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalCUP_VENDEDOR: TIntegerField
      FieldName = 'CUP_VENDEDOR'
      Origin = '"CUPOMFISCAL"."CUP_VENDEDOR"'
      Required = True
    end
  end
  object TBCupomFiscalItens: TIBDataSet
    Database = IBDatabase1
    Transaction = TRCupomFiscalItens
    AfterDelete = TBCupomFiscalItensAfterDelete
    AfterInsert = TBCupomFiscalItensAfterInsert
    AfterPost = TBCupomFiscalItensAfterPost
    BeforePost = TBCupomFiscalItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUPOMFISCALITENS'
      'where'
      '  CUI_CODIGO = :OLD_CUI_CODIGO')
    InsertSQL.Strings = (
      'insert into CUPOMFISCALITENS'
      
        '  (CUI_ACREPORC, CUI_ACREVALOR, CUI_ALIQCOFINS, CUI_ALIQICMS, CU' +
        'I_ALIQISS, '
      
        '   CUI_ALIQPIS, CUI_ALMOXARIFADO, CUI_BASEICMS, CUI_CANCELADO, C' +
        'UI_CFOP, '
      
        '   CUI_CODIGO, CUI_CODIGOBARRAS, CUI_CSTICMS, CUI_CUPOMFISCAL, C' +
        'UI_DESCPORC, '
      
        '   CUI_DESCVALOR, CUI_ITEM, CUI_MOVIMENTAESTOQUE, CUI_PRODUTO, C' +
        'UI_QUANTIDADE, '
      
        '   CUI_TOTALIZADORPARCIAL, CUI_VALORCOFINS, CUI_VALORICMS, CUI_V' +
        'ALORISS, '
      '   CUI_VALORPIS, CUI_VALORTOTAL, CUI_VALORUNITARIO)'
      'values'
      
        '  (:CUI_ACREPORC, :CUI_ACREVALOR, :CUI_ALIQCOFINS, :CUI_ALIQICMS' +
        ', :CUI_ALIQISS, '
      
        '   :CUI_ALIQPIS, :CUI_ALMOXARIFADO, :CUI_BASEICMS, :CUI_CANCELAD' +
        'O, :CUI_CFOP, '
      
        '   :CUI_CODIGO, :CUI_CODIGOBARRAS, :CUI_CSTICMS, :CUI_CUPOMFISCA' +
        'L, :CUI_DESCPORC, '
      
        '   :CUI_DESCVALOR, :CUI_ITEM, :CUI_MOVIMENTAESTOQUE, :CUI_PRODUT' +
        'O, :CUI_QUANTIDADE, '
      
        '   :CUI_TOTALIZADORPARCIAL, :CUI_VALORCOFINS, :CUI_VALORICMS, :C' +
        'UI_VALORISS, '
      '   :CUI_VALORPIS, :CUI_VALORTOTAL, :CUI_VALORUNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CUI_CODIGO,'
      '  CUI_CUPOMFISCAL,'
      '  CUI_PRODUTO,'
      '  CUI_CODIGOBARRAS,'
      '  CUI_ITEM,'
      '  CUI_QUANTIDADE,'
      '  CUI_VALORUNITARIO,'
      '  CUI_VALORTOTAL,'
      '  CUI_BASEICMS,'
      '  CUI_ALIQICMS,'
      '  CUI_VALORICMS,'
      '  CUI_DESCVALOR,'
      '  CUI_DESCPORC,'
      '  CUI_ALIQISS,'
      '  CUI_VALORISS,'
      '  CUI_ALIQPIS,'
      '  CUI_VALORPIS,'
      '  CUI_ALIQCOFINS,'
      '  CUI_VALORCOFINS,'
      '  CUI_ACREPORC,'
      '  CUI_ACREVALOR,'
      '  CUI_TOTALIZADORPARCIAL,'
      '  CUI_CANCELADO,'
      '  CUI_MOVIMENTAESTOQUE,'
      '  CUI_ALMOXARIFADO,'
      '  CUI_CFOP,'
      '  CUI_CSTICMS'
      'from CUPOMFISCALITENS '
      'where'
      '  CUI_CODIGO = :CUI_CODIGO')
    SelectSQL.Strings = (
      'select * from CUPOMFISCALITENS'
      'left join PRODUTOS on CUI_PRODUTO=PRO_CODIGO'
      'where CUI_CUPOMFISCAL=:CUP_CODIGO'
      'order by CUI_ITEM')
    ModifySQL.Strings = (
      'update CUPOMFISCALITENS'
      'set'
      '  CUI_ACREPORC = :CUI_ACREPORC,'
      '  CUI_ACREVALOR = :CUI_ACREVALOR,'
      '  CUI_ALIQCOFINS = :CUI_ALIQCOFINS,'
      '  CUI_ALIQICMS = :CUI_ALIQICMS,'
      '  CUI_ALIQISS = :CUI_ALIQISS,'
      '  CUI_ALIQPIS = :CUI_ALIQPIS,'
      '  CUI_ALMOXARIFADO = :CUI_ALMOXARIFADO,'
      '  CUI_BASEICMS = :CUI_BASEICMS,'
      '  CUI_CANCELADO = :CUI_CANCELADO,'
      '  CUI_CFOP = :CUI_CFOP,'
      '  CUI_CODIGO = :CUI_CODIGO,'
      '  CUI_CODIGOBARRAS = :CUI_CODIGOBARRAS,'
      '  CUI_CSTICMS = :CUI_CSTICMS,'
      '  CUI_CUPOMFISCAL = :CUI_CUPOMFISCAL,'
      '  CUI_DESCPORC = :CUI_DESCPORC,'
      '  CUI_DESCVALOR = :CUI_DESCVALOR,'
      '  CUI_ITEM = :CUI_ITEM,'
      '  CUI_MOVIMENTAESTOQUE = :CUI_MOVIMENTAESTOQUE,'
      '  CUI_PRODUTO = :CUI_PRODUTO,'
      '  CUI_QUANTIDADE = :CUI_QUANTIDADE,'
      '  CUI_TOTALIZADORPARCIAL = :CUI_TOTALIZADORPARCIAL,'
      '  CUI_VALORCOFINS = :CUI_VALORCOFINS,'
      '  CUI_VALORICMS = :CUI_VALORICMS,'
      '  CUI_VALORISS = :CUI_VALORISS,'
      '  CUI_VALORPIS = :CUI_VALORPIS,'
      '  CUI_VALORTOTAL = :CUI_VALORTOTAL,'
      '  CUI_VALORUNITARIO = :CUI_VALORUNITARIO'
      'where'
      '  CUI_CODIGO = :OLD_CUI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CUI_CODIGO'
    GeneratorField.Generator = 'GEN_CUPOMFISCALITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCupomFiscal
    Left = 488
    Top = 72
    object TBCupomFiscalItensCUI_ACREPORC: TIBBCDField
      FieldName = 'CUI_ACREPORC'
      Origin = '"CUPOMFISCALITENS"."CUI_ACREPORC"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ACREVALOR: TIBBCDField
      FieldName = 'CUI_ACREVALOR'
      Origin = '"CUPOMFISCALITENS"."CUI_ACREVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ALIQCOFINS: TIBBCDField
      FieldName = 'CUI_ALIQCOFINS'
      Origin = '"CUPOMFISCALITENS"."CUI_ALIQCOFINS"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ALIQICMS: TIBBCDField
      FieldName = 'CUI_ALIQICMS'
      Origin = '"CUPOMFISCALITENS"."CUI_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ALIQISS: TIBBCDField
      FieldName = 'CUI_ALIQISS'
      Origin = '"CUPOMFISCALITENS"."CUI_ALIQISS"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ALIQPIS: TIBBCDField
      FieldName = 'CUI_ALIQPIS'
      Origin = '"CUPOMFISCALITENS"."CUI_ALIQPIS"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ALMOXARIFADO: TIntegerField
      FieldName = 'CUI_ALMOXARIFADO'
      Origin = '"CUPOMFISCALITENS"."CUI_ALMOXARIFADO"'
    end
    object TBCupomFiscalItensCUI_BASEICMS: TIBBCDField
      FieldName = 'CUI_BASEICMS'
      Origin = '"CUPOMFISCALITENS"."CUI_BASEICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_CANCELADO: TIBStringField
      FieldName = 'CUI_CANCELADO'
      Origin = '"CUPOMFISCALITENS"."CUI_CANCELADO"'
      Size = 1
    end
    object TBCupomFiscalItensCUI_CFOP: TIBStringField
      FieldName = 'CUI_CFOP'
      Origin = '"CUPOMFISCALITENS"."CUI_CFOP"'
      Size = 10
    end
    object TBCupomFiscalItensCUI_CODIGO: TIntegerField
      FieldName = 'CUI_CODIGO'
      Origin = '"CUPOMFISCALITENS"."CUI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCupomFiscalItensCUI_CODIGOBARRAS: TIBStringField
      FieldName = 'CUI_CODIGOBARRAS'
      Origin = '"CUPOMFISCALITENS"."CUI_CODIGOBARRAS"'
      Size = 60
    end
    object TBCupomFiscalItensCUI_CSTICMS: TIBStringField
      FieldName = 'CUI_CSTICMS'
      Origin = '"CUPOMFISCALITENS"."CUI_CSTICMS"'
      Size = 10
    end
    object TBCupomFiscalItensCUI_CUPOMFISCAL: TIntegerField
      FieldName = 'CUI_CUPOMFISCAL'
      Origin = '"CUPOMFISCALITENS"."CUI_CUPOMFISCAL"'
      Required = True
    end
    object TBCupomFiscalItensCUI_DESCPORC: TIBBCDField
      FieldName = 'CUI_DESCPORC'
      Origin = '"CUPOMFISCALITENS"."CUI_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_DESCVALOR: TIBBCDField
      FieldName = 'CUI_DESCVALOR'
      Origin = '"CUPOMFISCALITENS"."CUI_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_ITEM: TIntegerField
      FieldName = 'CUI_ITEM'
      Origin = '"CUPOMFISCALITENS"."CUI_ITEM"'
    end
    object TBCupomFiscalItensCUI_MOVIMENTAESTOQUE: TIBStringField
      FieldName = 'CUI_MOVIMENTAESTOQUE'
      Origin = '"CUPOMFISCALITENS"."CUI_MOVIMENTAESTOQUE"'
      Size = 1
    end
    object TBCupomFiscalItensCUI_PRODUTO: TIntegerField
      FieldName = 'CUI_PRODUTO'
      Origin = '"CUPOMFISCALITENS"."CUI_PRODUTO"'
      Required = True
    end
    object TBCupomFiscalItensCUI_QUANTIDADE: TIBBCDField
      FieldName = 'CUI_QUANTIDADE'
      Origin = '"CUPOMFISCALITENS"."CUI_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_TOTALIZADORPARCIAL: TIBStringField
      FieldName = 'CUI_TOTALIZADORPARCIAL'
      Origin = '"CUPOMFISCALITENS"."CUI_TOTALIZADORPARCIAL"'
      Size = 10
    end
    object TBCupomFiscalItensCUI_VALORCOFINS: TIBBCDField
      FieldName = 'CUI_VALORCOFINS'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORCOFINS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_VALORICMS: TIBBCDField
      FieldName = 'CUI_VALORICMS'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORICMS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_VALORISS: TIBBCDField
      FieldName = 'CUI_VALORISS'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORISS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_VALORPIS: TIBBCDField
      FieldName = 'CUI_VALORPIS'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORPIS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_VALORTOTAL: TIBBCDField
      FieldName = 'CUI_VALORTOTAL'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensCUI_VALORUNITARIO: TIBBCDField
      FieldName = 'CUI_VALORUNITARIO'
      Origin = '"CUPOMFISCALITENS"."CUI_VALORUNITARIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBCupomFiscalItensPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 50
    end
    object TBCupomFiscalItensPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
  end
  object DSCupomFiscal: TDataSource
    DataSet = TBCupomFiscal
    Left = 392
    Top = 120
  end
  object DSCupomFiscalItens: TDataSource
    DataSet = TBCupomFiscalItens
    Left = 488
    Top = 120
  end
  object TRCupomFiscal: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 392
    Top = 168
  end
  object TRCupomFiscalItens: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 488
    Top = 168
  end
  object QYCupomFiscalItens: TIBQuery
    Database = IBDatabase1
    Transaction = TRCupomFiscalItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select sum(CUI_VALORTOTAL) as TOTALSERVICOS from CUPOMFISCALITEN' +
        'S'
      'where CUI_TIPO='#39'S'#39' and CUI_VENDA=:cupom')
    Left = 488
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cupom'
        ParamType = ptUnknown
      end>
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
        'ADO, EMP_LIMITEUSUARIOS, '
      
        '   EMP_NOME, EMP_NOMEFANTASIA, EMP_NOSSOBAIRRO, EMP_NOSSOCEP, EM' +
        'P_NOSSOCIDADE, '
      
        '   EMP_NOSSOCNPJ, EMP_NOSSOEMAIL, EMP_NOSSOENDERECO, EMP_NOSSOES' +
        'TADO, EMP_NOSSOFONE1, '
      
        '   EMP_NOSSOFONE2, EMP_NOSSOIE, EMP_NOSSOIM, EMP_NOSSONOME, EMP_' +
        'NOSSONUMERO, '
      
        '   EMP_NOSSOSITE, EMP_NOSSOSITESENHA, EMP_NUMERO, EMP_PAFLAUDO, ' +
        'EMP_PAFMD5, '
      '   EMP_PAFNOME, EMP_PAFVERSAO, EMP_SUPERSENHA)'
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
      
        '   :EMP_IE, :EMP_IM, :EMP_LIBERADO, :EMP_LIMITEUSUARIOS, :EMP_NO' +
        'ME, :EMP_NOMEFANTASIA, '
      
        '   :EMP_NOSSOBAIRRO, :EMP_NOSSOCEP, :EMP_NOSSOCIDADE, :EMP_NOSSO' +
        'CNPJ, :EMP_NOSSOEMAIL, '
      
        '   :EMP_NOSSOENDERECO, :EMP_NOSSOESTADO, :EMP_NOSSOFONE1, :EMP_N' +
        'OSSOFONE2, '
      
        '   :EMP_NOSSOIE, :EMP_NOSSOIM, :EMP_NOSSONOME, :EMP_NOSSONUMERO,' +
        ' :EMP_NOSSOSITE, '
      
        '   :EMP_NOSSOSITESENHA, :EMP_NUMERO, :EMP_PAFLAUDO, :EMP_PAFMD5,' +
        ' :EMP_PAFNOME, '
      '   :EMP_PAFVERSAO, :EMP_SUPERSENHA)')
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
      '  EMP_SUPERSENHA = :EMP_SUPERSENHA'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 40
    Top = 72
    object TBEmpresaEMP_BAIRRO: TIBStringField
      FieldName = 'EMP_BAIRRO'
      Origin = '"EMPRESA"."EMP_BAIRRO"'
      Size = 30
    end
    object TBEmpresaEMP_CEP: TIBStringField
      FieldName = 'EMP_CEP'
      Origin = '"EMPRESA"."EMP_CEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBEmpresaEMP_CIDADE: TIBStringField
      FieldName = 'EMP_CIDADE'
      Origin = '"EMPRESA"."EMP_CIDADE"'
      Size = 30
    end
    object TBEmpresaEMP_CIDADECODIGO: TIntegerField
      FieldName = 'EMP_CIDADECODIGO'
      Origin = '"EMPRESA"."EMP_CIDADECODIGO"'
    end
    object TBEmpresaEMP_CNAE: TIBStringField
      FieldName = 'EMP_CNAE'
      Origin = '"EMPRESA"."EMP_CNAE"'
    end
    object TBEmpresaEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = '"EMPRESA"."EMP_CNPJ"'
      EditMask = '99\.999\.999\/9999\-99;1;_'
    end
    object TBEmpresaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = '"EMPRESA"."EMP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmpresaEMP_CODIGOCLIENTE: TIntegerField
      FieldName = 'EMP_CODIGOCLIENTE'
      Origin = '"EMPRESA"."EMP_CODIGOCLIENTE"'
    end
    object TBEmpresaEMP_CODIGOSISTEMA: TIntegerField
      FieldName = 'EMP_CODIGOSISTEMA'
      Origin = '"EMPRESA"."EMP_CODIGOSISTEMA"'
    end
    object TBEmpresaEMP_CONTABILIDADE: TIntegerField
      FieldName = 'EMP_CONTABILIDADE'
      Origin = '"EMPRESA"."EMP_CONTABILIDADE"'
    end
    object TBEmpresaEMP_DATALIBERACAO: TIBStringField
      FieldName = 'EMP_DATALIBERACAO'
      Origin = '"EMPRESA"."EMP_DATALIBERACAO"'
    end
    object TBEmpresaEMP_DATAULTUTILIZACAO: TIBStringField
      FieldName = 'EMP_DATAULTUTILIZACAO'
      Origin = '"EMPRESA"."EMP_DATAULTUTILIZACAO"'
    end
    object TBEmpresaEMP_DIASLIBERACAO: TIBStringField
      FieldName = 'EMP_DIASLIBERACAO'
      Origin = '"EMPRESA"."EMP_DIASLIBERACAO"'
    end
    object TBEmpresaEMP_EMAIL: TIBStringField
      FieldName = 'EMP_EMAIL'
      Origin = '"EMPRESA"."EMP_EMAIL"'
      Size = 100
    end
    object TBEmpresaEMP_EMAILSUPORTE: TIBStringField
      FieldName = 'EMP_EMAILSUPORTE'
      Origin = '"EMPRESA"."EMP_EMAILSUPORTE"'
      Size = 100
    end
    object TBEmpresaEMP_ENDERECO: TIBStringField
      FieldName = 'EMP_ENDERECO'
      Origin = '"EMPRESA"."EMP_ENDERECO"'
      Size = 40
    end
    object TBEmpresaEMP_ENQUADRAMENTO: TIBStringField
      FieldName = 'EMP_ENQUADRAMENTO'
      Origin = '"EMPRESA"."EMP_ENQUADRAMENTO"'
    end
    object TBEmpresaEMP_ENQUADRAMENTOISS: TIBStringField
      FieldName = 'EMP_ENQUADRAMENTOISS'
      Origin = '"EMPRESA"."EMP_ENQUADRAMENTOISS"'
      Size = 50
    end
    object TBEmpresaEMP_ESTADO: TIBStringField
      FieldName = 'EMP_ESTADO'
      Origin = '"EMPRESA"."EMP_ESTADO"'
      Size = 2
    end
    object TBEmpresaEMP_ESTADOCODIGO: TIntegerField
      FieldName = 'EMP_ESTADOCODIGO'
      Origin = '"EMPRESA"."EMP_ESTADOCODIGO"'
    end
    object TBEmpresaEMP_FONE1: TIBStringField
      FieldName = 'EMP_FONE1'
      Origin = '"EMPRESA"."EMP_FONE1"'
      EditMask = '!\(999\)\ 9999\-9999;1;_'
    end
    object TBEmpresaEMP_FONE2: TIBStringField
      FieldName = 'EMP_FONE2'
      Origin = '"EMPRESA"."EMP_FONE2"'
      EditMask = '!\(999\)\ 9999\-9999;1;_'
    end
    object TBEmpresaEMP_HOMEPAGE: TIBStringField
      FieldName = 'EMP_HOMEPAGE'
      Origin = '"EMPRESA"."EMP_HOMEPAGE"'
      Size = 100
    end
    object TBEmpresaEMP_IE: TIBStringField
      FieldName = 'EMP_IE'
      Origin = '"EMPRESA"."EMP_IE"'
    end
    object TBEmpresaEMP_IM: TIBStringField
      FieldName = 'EMP_IM'
      Origin = '"EMPRESA"."EMP_IM"'
    end
    object TBEmpresaEMP_LIBERADO: TIBStringField
      FieldName = 'EMP_LIBERADO'
      Origin = '"EMPRESA"."EMP_LIBERADO"'
    end
    object TBEmpresaEMP_LIMITEUSUARIOS: TIBStringField
      FieldName = 'EMP_LIMITEUSUARIOS'
      Origin = '"EMPRESA"."EMP_LIMITEUSUARIOS"'
    end
    object TBEmpresaEMP_NOME: TIBStringField
      FieldName = 'EMP_NOME'
      Origin = '"EMPRESA"."EMP_NOME"'
      Size = 50
    end
    object TBEmpresaEMP_NOMEFANTASIA: TIBStringField
      FieldName = 'EMP_NOMEFANTASIA'
      Origin = '"EMPRESA"."EMP_NOMEFANTASIA"'
      Size = 50
    end
    object TBEmpresaEMP_NOSSOBAIRRO: TIBStringField
      FieldName = 'EMP_NOSSOBAIRRO'
      Origin = '"EMPRESA"."EMP_NOSSOBAIRRO"'
      Size = 30
    end
    object TBEmpresaEMP_NOSSOCEP: TIBStringField
      FieldName = 'EMP_NOSSOCEP'
      Origin = '"EMPRESA"."EMP_NOSSOCEP"'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBEmpresaEMP_NOSSOCIDADE: TIBStringField
      FieldName = 'EMP_NOSSOCIDADE'
      Origin = '"EMPRESA"."EMP_NOSSOCIDADE"'
      Size = 30
    end
    object TBEmpresaEMP_NOSSOCNPJ: TIBStringField
      FieldName = 'EMP_NOSSOCNPJ'
      Origin = '"EMPRESA"."EMP_NOSSOCNPJ"'
    end
    object TBEmpresaEMP_NOSSOEMAIL: TIBStringField
      FieldName = 'EMP_NOSSOEMAIL'
      Origin = '"EMPRESA"."EMP_NOSSOEMAIL"'
      Size = 100
    end
    object TBEmpresaEMP_NOSSOENDERECO: TIBStringField
      FieldName = 'EMP_NOSSOENDERECO'
      Origin = '"EMPRESA"."EMP_NOSSOENDERECO"'
      Size = 40
    end
    object TBEmpresaEMP_NOSSOESTADO: TIBStringField
      FieldName = 'EMP_NOSSOESTADO'
      Origin = '"EMPRESA"."EMP_NOSSOESTADO"'
      Size = 2
    end
    object TBEmpresaEMP_NOSSOFONE1: TIBStringField
      FieldName = 'EMP_NOSSOFONE1'
      Origin = '"EMPRESA"."EMP_NOSSOFONE1"'
      EditMask = '!\(999\)\ 9999\-9999;1;_'
    end
    object TBEmpresaEMP_NOSSOFONE2: TIBStringField
      FieldName = 'EMP_NOSSOFONE2'
      Origin = '"EMPRESA"."EMP_NOSSOFONE2"'
      EditMask = '!\(999\)\ 9999\-9999;1;_'
    end
    object TBEmpresaEMP_NOSSOIE: TIBStringField
      FieldName = 'EMP_NOSSOIE'
      Origin = '"EMPRESA"."EMP_NOSSOIE"'
    end
    object TBEmpresaEMP_NOSSOIM: TIBStringField
      FieldName = 'EMP_NOSSOIM'
      Origin = '"EMPRESA"."EMP_NOSSOIM"'
    end
    object TBEmpresaEMP_NOSSONOME: TIBStringField
      FieldName = 'EMP_NOSSONOME'
      Origin = '"EMPRESA"."EMP_NOSSONOME"'
      Size = 50
    end
    object TBEmpresaEMP_NOSSONUMERO: TIBStringField
      FieldName = 'EMP_NOSSONUMERO'
      Origin = '"EMPRESA"."EMP_NOSSONUMERO"'
      Size = 15
    end
    object TBEmpresaEMP_NOSSOSITE: TIBStringField
      FieldName = 'EMP_NOSSOSITE'
      Origin = '"EMPRESA"."EMP_NOSSOSITE"'
      Size = 100
    end
    object TBEmpresaEMP_NOSSOSITESENHA: TIBStringField
      FieldName = 'EMP_NOSSOSITESENHA'
      Origin = '"EMPRESA"."EMP_NOSSOSITESENHA"'
      Size = 100
    end
    object TBEmpresaEMP_NUMERO: TIBStringField
      FieldName = 'EMP_NUMERO'
      Origin = '"EMPRESA"."EMP_NUMERO"'
      Size = 15
    end
    object TBEmpresaEMP_PAFLAUDO: TIntegerField
      FieldName = 'EMP_PAFLAUDO'
      Origin = '"EMPRESA"."EMP_PAFLAUDO"'
    end
    object TBEmpresaEMP_PAFMD5: TIBStringField
      FieldName = 'EMP_PAFMD5'
      Origin = '"EMPRESA"."EMP_PAFMD5"'
      Size = 40
    end
    object TBEmpresaEMP_PAFNOME: TIBStringField
      FieldName = 'EMP_PAFNOME'
      Origin = '"EMPRESA"."EMP_PAFNOME"'
      Size = 50
    end
    object TBEmpresaEMP_PAFVERSAO: TIBStringField
      FieldName = 'EMP_PAFVERSAO'
      Origin = '"EMPRESA"."EMP_PAFVERSAO"'
      Size = 10
    end
    object TBEmpresaEMP_SUPERSENHA: TIBStringField
      FieldName = 'EMP_SUPERSENHA'
      Origin = '"EMPRESA"."EMP_SUPERSENHA"'
    end
  end
  object DSEmpresa: TDataSource
    DataSet = TBEmpresa
    Left = 40
    Top = 120
  end
  object TREmpresa: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 40
    Top = 168
  end
  object TRParametros: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 168
  end
  object DSParametros: TDataSource
    DataSet = TBParametros
    Left = 112
    Top = 120
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
      
        '  (PAR_CODIGO, PAR_ABRIRLOCPRODUTOS, PAR_ACRESCIMOPOR, PAR_ACRES' +
        'CIMOPORC, '
      
        '   PAR_ACRESCIMOVALOR, PAR_ALMOXARIFADOPADRAO, PAR_ATUALIZADOR, ' +
        'PAR_AULASFERIADOS, '
      
        '   PAR_BAIRROPADRAO, PAR_BLOQUEARCLIENTEDIAS, PAR_CALCULARPONTUA' +
        'CAO, PAR_CFOPFORAPADRAO, '
      
        '   PAR_CFOPPADRAO, PAR_CFOPPRODUTO, PAR_CFOPSERVICOPADRAO, PAR_C' +
        'HATHABILITADO, '
      
        '   PAR_CIDADEPADRAO, PAR_CLASSFISCALPADRAO, PAR_CLI_ATIVIDADE, P' +
        'AR_CLI_BLOQUEARVENDA, '
      
        '   PAR_CLI_MAILING, PAR_CLI_TELEVENDA, PAR_CLI_VENDEDOR, PAR_COB' +
        'RARDESCONTO, '
      
        '   PAR_COMANDASCLIENTE, PAR_COMANDASLF, PAR_COMANDASLI, PAR_COMA' +
        'NDASQL, '
      
        '   PAR_COMANDASRP, PAR_COMISSAOPOR, PAR_CONCEITOAFINAL, PAR_CONC' +
        'EITOAINICIAL, '
      
        '   PAR_CONCEITOAMINUSFINAL, PAR_CONCEITOAMINUSINICIAL, PAR_CONCE' +
        'ITOAPLUSFINAL, '
      
        '   PAR_CONCEITOAPLUSINICIAL, PAR_CONCEITOBFINAL, PAR_CONCEITOBIN' +
        'ICIAL, '
      
        '   PAR_CONCEITOBMINUSFINAL, PAR_CONCEITOBMINUSINICIAL, PAR_CONCE' +
        'ITOBPLUSFINAL, '
      
        '   PAR_CONCEITOBPLUSINICIAL, PAR_CONCEITOCFINAL, PAR_CONCEITOCIN' +
        'ICIAL, '
      
        '   PAR_CONCEITOCMINUSFINAL, PAR_CONCEITOCMINUSINICIAL, PAR_CONCE' +
        'ITOCPLUSFINAL, '
      
        '   PAR_CONCEITOCPLUSINICIAL, PAR_CONCEITODFINAL, PAR_CONCEITODIN' +
        'ICIAL, '
      
        '   PAR_CONCEITODMINUSFINAL, PAR_CONCEITODMINUSINICIAL, PAR_CONCE' +
        'ITODPLUSFINAL, '
      
        '   PAR_CONCEITODPLUSINICIAL, PAR_CONCEITOEFINAL, PAR_CONCEITOEIN' +
        'ICIAL, '
      
        '   PAR_CONDICAOPADRAO, PAR_CONTAPADRAO, PAR_CORTEPAPEL, PAR_COTA' +
        'CAOPONTOS, '
      
        '   PAR_CREDITOICMSSN, PAR_CSTCOFINSPADRAO, PAR_CSTICMSPADRAO, PA' +
        'R_CSTIPIPADRAO, '
      
        '   PAR_CSTPISPADRAO, PAR_CTE_CSTICMS, PAR_CTE_VEICULO, PAR_CTEAL' +
        'IQTRIBUTOS, '
      
        '   PAR_CTEEMAILASSUNTO, PAR_CTEEMAILCONTA, PAR_CTEEMAILHTML, PAR' +
        '_CTEEMAILSISTEMA, '
      
        '   PAR_CTEMODELO, PAR_CTESERIE, PAR_CTEVISUALIZARDACTE, PAR_DDDP' +
        'ADRAO, '
      
        '   PAR_DESCMAXPADRAO, PAR_DESCONTOPORCLIENTE, PAR_DESPESAPADRAO,' +
        ' PAR_DIAPREFERENCIAL01, '
      
        '   PAR_DIAPREFERENCIAL02, PAR_DIAPREFERENCIAL03, PAR_DIAPREFEREN' +
        'CIAL04, '
      
        '   PAR_DIAPREFERENCIAL05, PAR_DIAPREFERENCIAL06, PAR_DIAPREFEREN' +
        'CIAL07, '
      
        '   PAR_DIAPREFERENCIAL08, PAR_DIAPREFERENCIAL09, PAR_DIAPREFEREN' +
        'CIAL10, '
      
        '   PAR_DIAPREFERENCIAL11, PAR_DIAPREFERENCIAL12, PAR_DIAPREFEREN' +
        'CIAL13, '
      
        '   PAR_DIAPREFERENCIAL14, PAR_DIAPREFERENCIAL15, PAR_DIAPREFEREN' +
        'CIAL16, '
      
        '   PAR_DIAPREFERENCIAL17, PAR_DIAPREFERENCIAL18, PAR_DIAPREFEREN' +
        'CIAL19, '
      
        '   PAR_DIAPREFERENCIAL20, PAR_DIAPREFERENCIAL21, PAR_DIAPREFEREN' +
        'CIAL22, '
      
        '   PAR_DIAPREFERENCIAL23, PAR_DIAPREFERENCIAL24, PAR_DIAPREFEREN' +
        'CIAL25, '
      
        '   PAR_DIAPREFERENCIAL26, PAR_DIAPREFERENCIAL27, PAR_DIAPREFEREN' +
        'CIAL28, '
      
        '   PAR_ECFCFOP, PAR_ECFCFOPNF2, PAR_ECFDESCSANGRIA, PAR_ECFDESCS' +
        'UPRIMENTO, '
      
        '   PAR_ECFMENSAGEMCUPOM, PAR_ECFTITULOTELA, PAR_ESPECIEPADRAO, P' +
        'AR_ESTADOPADRAO, '
      
        '   PAR_ESTOQUEESPADRAO, PAR_EXIBIRTELARESUMO, PAR_EXPEDIDOPORVEN' +
        'DEDOR, '
      
        '   PAR_EXPEDIDOR, PAR_FAMILIACURSOS, PAR_FAMILIAMATERIAIS, PAR_F' +
        'RETEPORCONTA, '
      
        '   PAR_FUSOHORARIO, PAR_HORAAULA, PAR_ICMSALIQUOTAPOR, PAR_IDENT' +
        'IFICACAOSISTEMA, '
      
        '   PAR_IMPRIMIRLOGOTIPO, PAR_IMPRIMIRNOMEFANTASIA, PAR_IMPRIMIRR' +
        'ECEBER, '
      
        '   PAR_IMPRIMIRSALDOAC, PAR_JURIDICOSITE1, PAR_JURIDICOSITE2, PA' +
        'R_JURIDICOSITE3, '
      
        '   PAR_JUROSMENSAL, PAR_LICENCADLL, PAR_LICENCADLLCTE, PAR_LIMIT' +
        'ECREDITO, '
      
        '   PAR_LINHASFINALRECIBO, PAR_LINHASINICIORECIBO, PAR_LOCACOESDI' +
        'AS, PAR_LOCACOESHORALIMITE, '
      
        '   PAR_LOCALANEXOSCLIENTES, PAR_LOCALANEXOSPROCESSOS, PAR_LOCALA' +
        'NEXOSPRODUTOS, '
      
        '   PAR_LOCALATUALIZACOES, PAR_LOCALESTUDAPADRAO, PAR_LOCALFOTOSF' +
        'ILMES, '
      
        '   PAR_LOCALFOTOSIMOVEIS, PAR_LOCALFOTOSPRODUTOS, PAR_LOCALMODEL' +
        'OSDOC, '
      
        '   PAR_LOCALPADRAO, PAR_LOCPRODUTOSPRECOS, PAR_MARCAPADRAO, PAR_' +
        'MARGEMPADRAO, '
      
        '   PAR_MULTAPORC, PAR_MULTATIPO, PAR_NFECONTINGENCIADATA, PAR_NF' +
        'ECONTINGENCIAHORA, '
      
        '   PAR_NFECONTINGENCIAJUST, PAR_NFEEMAILASSUNTO, PAR_NFEEMAILAUT' +
        'OMATICO, '
      
        '   PAR_NFEEMAILBCC, PAR_NFEEMAILCONTA, PAR_NFEEMAILDLL, PAR_NFEE' +
        'MAILHTML, '
      
        '   PAR_NFEEMAILSISTEMA, PAR_NFEMODELO, PAR_NFESERIE, PAR_NFETIPO' +
        'EMISSAO, '
      
        '   PAR_NFEVISUALIZARDANFE, PAR_NOMECERTIFICADO, PAR_NOTASLF, PAR' +
        '_NOTASLI, '
      
        '   PAR_NOTASQL, PAR_NOTASQLOBS, PAR_PAG_DESTINOBAIXA, PAR_PREVIS' +
        'UALIZARVENDA, '
      
        '   PAR_PRODUCAODTPREVISAO, PAR_PRODUCAOLF, PAR_PRODUCAOLI, PAR_P' +
        'RODUCAOQL, '
      
        '   PAR_PRODUTOCODIGOLIVRE, PAR_PRODUTOMAODEOBRA, PAR_PRODUTOSLF,' +
        ' PAR_PRODUTOSLI, '
      
        '   PAR_PRODUTOSQL, PAR_PROMISSORIASCODIGO, PAR_PROXY, PAR_PROXYE' +
        'NDERECO, '
      
        '   PAR_PROXYPASSWORD, PAR_PROXYPORTA, PAR_PROXYUSER, PAR_QTDENIV' +
        'EISCOMPOSTO, '
      
        '   PAR_RECEITAPADRAO, PAR_REE_DESTINOBAIXA, PAR_REE_DTJUROSAPOS,' +
        ' PAR_REPOSITORIOBOLETOS, '
      
        '   PAR_REPOSITORIOCTE, PAR_REPOSITORIONFE, PAR_SERIALCERTIFICADO' +
        ', PAR_SERVICOSDTPREVISAO, '
      
        '   PAR_SERVICOSLF, PAR_SERVICOSLI, PAR_SERVICOSORCLF, PAR_SERVIC' +
        'OSORCLI, '
      
        '   PAR_SERVICOSORCQL, PAR_SERVICOSORCRP, PAR_SERVICOSPRINTPADRAO' +
        ', PAR_SERVICOSPV, '
      
        '   PAR_SERVICOSRPA, PAR_SERVICOSRPF, PAR_SERVICOSTIMBRADA, PAR_S' +
        'IGLAUF, '
      
        '   PAR_SIGLAUFCTE, PAR_SIGLAWS, PAR_SIGLAWSCTE, PAR_STPRIMEIRAPA' +
        'RCELA, '
      
        '   PAR_TABELAPRECO, PAR_TELEVENDAPROXCONTATO, PAR_TIPOAMBIENTE, ' +
        'PAR_TIPOAMBIENTECTE, '
      
        '   PAR_VALORBOLETO, PAR_VALORMULTA, PAR_VEICULOSPORCLUCRO, PAR_V' +
        'ENDAEMAILASSUNTO, '
      
        '   PAR_VENDAEMAILCONTA, PAR_VENDAEMAILSISTEMA, PAR_VENDASLF, PAR' +
        '_VENDASLF2, '
      
        '   PAR_VENDASLI, PAR_VENDASQL, PAR_VENDASQL2, PAR_VENDASRP, PAR_' +
        'VENDEESTOQUEZERO, '
      
        '   PAR_VENDERCOMPOSTO, PAR_VERSAOXML, PAR_VERSAOXMLCTE, PAR_CNPJ' +
        'CERTIFICADO, '
      
        '   PAR_VALINICIALCERTIFICADO, PAR_VALFINALCERTIFICADO, PAR_IMPRI' +
        'MIRCONDICAO, '
      
        '   PAR_ALERTAKG, PAR_RNTRC, PAR_MDFEMODELO, PAR_MDFESERIE, PAR_R' +
        'EPOSITORIOMDFE, '
      
        '   PAR_VERSAOXMLMDFE, PAR_TIPOAMBIENTEMDFE, PAR_SIGLAUFMDFE, PAR' +
        '_SIGLAWSMDFE, '
      '   PAR_LICENCADLLMDFE)'
      'values'
      
        '  (:PAR_CODIGO, :PAR_ABRIRLOCPRODUTOS, :PAR_ACRESCIMOPOR, :PAR_A' +
        'CRESCIMOPORC, '
      
        '   :PAR_ACRESCIMOVALOR, :PAR_ALMOXARIFADOPADRAO, :PAR_ATUALIZADO' +
        'R, :PAR_AULASFERIADOS, '
      
        '   :PAR_BAIRROPADRAO, :PAR_BLOQUEARCLIENTEDIAS, :PAR_CALCULARPON' +
        'TUACAO, '
      
        '   :PAR_CFOPFORAPADRAO, :PAR_CFOPPADRAO, :PAR_CFOPPRODUTO, :PAR_' +
        'CFOPSERVICOPADRAO, '
      
        '   :PAR_CHATHABILITADO, :PAR_CIDADEPADRAO, :PAR_CLASSFISCALPADRA' +
        'O, :PAR_CLI_ATIVIDADE, '
      
        '   :PAR_CLI_BLOQUEARVENDA, :PAR_CLI_MAILING, :PAR_CLI_TELEVENDA,' +
        ' :PAR_CLI_VENDEDOR, '
      
        '   :PAR_COBRARDESCONTO, :PAR_COMANDASCLIENTE, :PAR_COMANDASLF, :' +
        'PAR_COMANDASLI, '
      
        '   :PAR_COMANDASQL, :PAR_COMANDASRP, :PAR_COMISSAOPOR, :PAR_CONC' +
        'EITOAFINAL, '
      
        '   :PAR_CONCEITOAINICIAL, :PAR_CONCEITOAMINUSFINAL, :PAR_CONCEIT' +
        'OAMINUSINICIAL, '
      
        '   :PAR_CONCEITOAPLUSFINAL, :PAR_CONCEITOAPLUSINICIAL, :PAR_CONC' +
        'EITOBFINAL, '
      
        '   :PAR_CONCEITOBINICIAL, :PAR_CONCEITOBMINUSFINAL, :PAR_CONCEIT' +
        'OBMINUSINICIAL, '
      
        '   :PAR_CONCEITOBPLUSFINAL, :PAR_CONCEITOBPLUSINICIAL, :PAR_CONC' +
        'EITOCFINAL, '
      
        '   :PAR_CONCEITOCINICIAL, :PAR_CONCEITOCMINUSFINAL, :PAR_CONCEIT' +
        'OCMINUSINICIAL, '
      
        '   :PAR_CONCEITOCPLUSFINAL, :PAR_CONCEITOCPLUSINICIAL, :PAR_CONC' +
        'EITODFINAL, '
      
        '   :PAR_CONCEITODINICIAL, :PAR_CONCEITODMINUSFINAL, :PAR_CONCEIT' +
        'ODMINUSINICIAL, '
      
        '   :PAR_CONCEITODPLUSFINAL, :PAR_CONCEITODPLUSINICIAL, :PAR_CONC' +
        'EITOEFINAL, '
      
        '   :PAR_CONCEITOEINICIAL, :PAR_CONDICAOPADRAO, :PAR_CONTAPADRAO,' +
        ' :PAR_CORTEPAPEL, '
      
        '   :PAR_COTACAOPONTOS, :PAR_CREDITOICMSSN, :PAR_CSTCOFINSPADRAO,' +
        ' :PAR_CSTICMSPADRAO, '
      
        '   :PAR_CSTIPIPADRAO, :PAR_CSTPISPADRAO, :PAR_CTE_CSTICMS, :PAR_' +
        'CTE_VEICULO, '
      
        '   :PAR_CTEALIQTRIBUTOS, :PAR_CTEEMAILASSUNTO, :PAR_CTEEMAILCONT' +
        'A, :PAR_CTEEMAILHTML, '
      
        '   :PAR_CTEEMAILSISTEMA, :PAR_CTEMODELO, :PAR_CTESERIE, :PAR_CTE' +
        'VISUALIZARDACTE, '
      
        '   :PAR_DDDPADRAO, :PAR_DESCMAXPADRAO, :PAR_DESCONTOPORCLIENTE, ' +
        ':PAR_DESPESAPADRAO, '
      
        '   :PAR_DIAPREFERENCIAL01, :PAR_DIAPREFERENCIAL02, :PAR_DIAPREFE' +
        'RENCIAL03, '
      
        '   :PAR_DIAPREFERENCIAL04, :PAR_DIAPREFERENCIAL05, :PAR_DIAPREFE' +
        'RENCIAL06, '
      
        '   :PAR_DIAPREFERENCIAL07, :PAR_DIAPREFERENCIAL08, :PAR_DIAPREFE' +
        'RENCIAL09, '
      
        '   :PAR_DIAPREFERENCIAL10, :PAR_DIAPREFERENCIAL11, :PAR_DIAPREFE' +
        'RENCIAL12, '
      
        '   :PAR_DIAPREFERENCIAL13, :PAR_DIAPREFERENCIAL14, :PAR_DIAPREFE' +
        'RENCIAL15, '
      
        '   :PAR_DIAPREFERENCIAL16, :PAR_DIAPREFERENCIAL17, :PAR_DIAPREFE' +
        'RENCIAL18, '
      
        '   :PAR_DIAPREFERENCIAL19, :PAR_DIAPREFERENCIAL20, :PAR_DIAPREFE' +
        'RENCIAL21, '
      
        '   :PAR_DIAPREFERENCIAL22, :PAR_DIAPREFERENCIAL23, :PAR_DIAPREFE' +
        'RENCIAL24, '
      
        '   :PAR_DIAPREFERENCIAL25, :PAR_DIAPREFERENCIAL26, :PAR_DIAPREFE' +
        'RENCIAL27, '
      
        '   :PAR_DIAPREFERENCIAL28, :PAR_ECFCFOP, :PAR_ECFCFOPNF2, :PAR_E' +
        'CFDESCSANGRIA, '
      
        '   :PAR_ECFDESCSUPRIMENTO, :PAR_ECFMENSAGEMCUPOM, :PAR_ECFTITULO' +
        'TELA, :PAR_ESPECIEPADRAO, '
      
        '   :PAR_ESTADOPADRAO, :PAR_ESTOQUEESPADRAO, :PAR_EXIBIRTELARESUM' +
        'O, :PAR_EXPEDIDOPORVENDEDOR, '
      
        '   :PAR_EXPEDIDOR, :PAR_FAMILIACURSOS, :PAR_FAMILIAMATERIAIS, :P' +
        'AR_FRETEPORCONTA, '
      
        '   :PAR_FUSOHORARIO, :PAR_HORAAULA, :PAR_ICMSALIQUOTAPOR, :PAR_I' +
        'DENTIFICACAOSISTEMA, '
      
        '   :PAR_IMPRIMIRLOGOTIPO, :PAR_IMPRIMIRNOMEFANTASIA, :PAR_IMPRIM' +
        'IRRECEBER, '
      
        '   :PAR_IMPRIMIRSALDOAC, :PAR_JURIDICOSITE1, :PAR_JURIDICOSITE2,' +
        ' :PAR_JURIDICOSITE3, '
      
        '   :PAR_JUROSMENSAL, :PAR_LICENCADLL, :PAR_LICENCADLLCTE, :PAR_L' +
        'IMITECREDITO, '
      
        '   :PAR_LINHASFINALRECIBO, :PAR_LINHASINICIORECIBO, :PAR_LOCACOE' +
        'SDIAS, '
      
        '   :PAR_LOCACOESHORALIMITE, :PAR_LOCALANEXOSCLIENTES, :PAR_LOCAL' +
        'ANEXOSPROCESSOS, '
      
        '   :PAR_LOCALANEXOSPRODUTOS, :PAR_LOCALATUALIZACOES, :PAR_LOCALE' +
        'STUDAPADRAO, '
      
        '   :PAR_LOCALFOTOSFILMES, :PAR_LOCALFOTOSIMOVEIS, :PAR_LOCALFOTO' +
        'SPRODUTOS, '
      
        '   :PAR_LOCALMODELOSDOC, :PAR_LOCALPADRAO, :PAR_LOCPRODUTOSPRECO' +
        'S, :PAR_MARCAPADRAO, '
      
        '   :PAR_MARGEMPADRAO, :PAR_MULTAPORC, :PAR_MULTATIPO, :PAR_NFECO' +
        'NTINGENCIADATA, '
      
        '   :PAR_NFECONTINGENCIAHORA, :PAR_NFECONTINGENCIAJUST, :PAR_NFEE' +
        'MAILASSUNTO, '
      
        '   :PAR_NFEEMAILAUTOMATICO, :PAR_NFEEMAILBCC, :PAR_NFEEMAILCONTA' +
        ', :PAR_NFEEMAILDLL, '
      
        '   :PAR_NFEEMAILHTML, :PAR_NFEEMAILSISTEMA, :PAR_NFEMODELO, :PAR' +
        '_NFESERIE, '
      
        '   :PAR_NFETIPOEMISSAO, :PAR_NFEVISUALIZARDANFE, :PAR_NOMECERTIF' +
        'ICADO, '
      
        '   :PAR_NOTASLF, :PAR_NOTASLI, :PAR_NOTASQL, :PAR_NOTASQLOBS, :P' +
        'AR_PAG_DESTINOBAIXA, '
      
        '   :PAR_PREVISUALIZARVENDA, :PAR_PRODUCAODTPREVISAO, :PAR_PRODUC' +
        'AOLF, :PAR_PRODUCAOLI, '
      
        '   :PAR_PRODUCAOQL, :PAR_PRODUTOCODIGOLIVRE, :PAR_PRODUTOMAODEOB' +
        'RA, :PAR_PRODUTOSLF, '
      
        '   :PAR_PRODUTOSLI, :PAR_PRODUTOSQL, :PAR_PROMISSORIASCODIGO, :P' +
        'AR_PROXY, '
      
        '   :PAR_PROXYENDERECO, :PAR_PROXYPASSWORD, :PAR_PROXYPORTA, :PAR' +
        '_PROXYUSER, '
      
        '   :PAR_QTDENIVEISCOMPOSTO, :PAR_RECEITAPADRAO, :PAR_REE_DESTINO' +
        'BAIXA, '
      
        '   :PAR_REE_DTJUROSAPOS, :PAR_REPOSITORIOBOLETOS, :PAR_REPOSITOR' +
        'IOCTE, '
      
        '   :PAR_REPOSITORIONFE, :PAR_SERIALCERTIFICADO, :PAR_SERVICOSDTP' +
        'REVISAO, '
      
        '   :PAR_SERVICOSLF, :PAR_SERVICOSLI, :PAR_SERVICOSORCLF, :PAR_SE' +
        'RVICOSORCLI, '
      
        '   :PAR_SERVICOSORCQL, :PAR_SERVICOSORCRP, :PAR_SERVICOSPRINTPAD' +
        'RAO, :PAR_SERVICOSPV, '
      
        '   :PAR_SERVICOSRPA, :PAR_SERVICOSRPF, :PAR_SERVICOSTIMBRADA, :P' +
        'AR_SIGLAUF, '
      
        '   :PAR_SIGLAUFCTE, :PAR_SIGLAWS, :PAR_SIGLAWSCTE, :PAR_STPRIMEI' +
        'RAPARCELA, '
      
        '   :PAR_TABELAPRECO, :PAR_TELEVENDAPROXCONTATO, :PAR_TIPOAMBIENT' +
        'E, :PAR_TIPOAMBIENTECTE, '
      
        '   :PAR_VALORBOLETO, :PAR_VALORMULTA, :PAR_VEICULOSPORCLUCRO, :P' +
        'AR_VENDAEMAILASSUNTO, '
      
        '   :PAR_VENDAEMAILCONTA, :PAR_VENDAEMAILSISTEMA, :PAR_VENDASLF, ' +
        ':PAR_VENDASLF2, '
      
        '   :PAR_VENDASLI, :PAR_VENDASQL, :PAR_VENDASQL2, :PAR_VENDASRP, ' +
        ':PAR_VENDEESTOQUEZERO, '
      
        '   :PAR_VENDERCOMPOSTO, :PAR_VERSAOXML, :PAR_VERSAOXMLCTE, :PAR_' +
        'CNPJCERTIFICADO, '
      
        '   :PAR_VALINICIALCERTIFICADO, :PAR_VALFINALCERTIFICADO, :PAR_IM' +
        'PRIMIRCONDICAO, '
      
        '   :PAR_ALERTAKG, :PAR_RNTRC, :PAR_MDFEMODELO, :PAR_MDFESERIE, :' +
        'PAR_REPOSITORIOMDFE, '
      
        '   :PAR_VERSAOXMLMDFE, :PAR_TIPOAMBIENTEMDFE, :PAR_SIGLAUFMDFE, ' +
        ':PAR_SIGLAWSMDFE, '
      '   :PAR_LICENCADLLMDFE)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_CODIGO,'
      '  PAR_ABRIRLOCPRODUTOS,'
      '  PAR_ACRESCIMOPOR,'
      '  PAR_ACRESCIMOPORC,'
      '  PAR_ACRESCIMOVALOR,'
      '  PAR_ALMOXARIFADOPADRAO,'
      '  PAR_ATUALIZADOR,'
      '  PAR_AULASFERIADOS,'
      '  PAR_BAIRROPADRAO,'
      '  PAR_BLOQUEARCLIENTEDIAS,'
      '  PAR_CALCULARPONTUACAO,'
      '  PAR_CFOPFORAPADRAO,'
      '  PAR_CFOPPADRAO,'
      '  PAR_CFOPPRODUTO,'
      '  PAR_CFOPSERVICOPADRAO,'
      '  PAR_CHATHABILITADO,'
      '  PAR_CIDADEPADRAO,'
      '  PAR_CLASSFISCALPADRAO,'
      '  PAR_CLI_ATIVIDADE,'
      '  PAR_CLI_BLOQUEARVENDA,'
      '  PAR_CLI_MAILING,'
      '  PAR_CLI_TELEVENDA,'
      '  PAR_CLI_VENDEDOR,'
      '  PAR_COBRARDESCONTO,'
      '  PAR_COMANDASCLIENTE,'
      '  PAR_COMANDASLF,'
      '  PAR_COMANDASLI,'
      '  PAR_COMANDASQL,'
      '  PAR_COMANDASRP,'
      '  PAR_COMISSAOPOR,'
      '  PAR_CONCEITOAFINAL,'
      '  PAR_CONCEITOAINICIAL,'
      '  PAR_CONCEITOAMINUSFINAL,'
      '  PAR_CONCEITOAMINUSINICIAL,'
      '  PAR_CONCEITOAPLUSFINAL,'
      '  PAR_CONCEITOAPLUSINICIAL,'
      '  PAR_CONCEITOBFINAL,'
      '  PAR_CONCEITOBINICIAL,'
      '  PAR_CONCEITOBMINUSFINAL,'
      '  PAR_CONCEITOBMINUSINICIAL,'
      '  PAR_CONCEITOBPLUSFINAL,'
      '  PAR_CONCEITOBPLUSINICIAL,'
      '  PAR_CONCEITOCFINAL,'
      '  PAR_CONCEITOCINICIAL,'
      '  PAR_CONCEITOCMINUSFINAL,'
      '  PAR_CONCEITOCMINUSINICIAL,'
      '  PAR_CONCEITOCPLUSFINAL,'
      '  PAR_CONCEITOCPLUSINICIAL,'
      '  PAR_CONCEITODFINAL,'
      '  PAR_CONCEITODINICIAL,'
      '  PAR_CONCEITODMINUSFINAL,'
      '  PAR_CONCEITODMINUSINICIAL,'
      '  PAR_CONCEITODPLUSFINAL,'
      '  PAR_CONCEITODPLUSINICIAL,'
      '  PAR_CONCEITOEFINAL,'
      '  PAR_CONCEITOEINICIAL,'
      '  PAR_CONDICAOPADRAO,'
      '  PAR_CONTAPADRAO,'
      '  PAR_CORTEPAPEL,'
      '  PAR_COTACAOPONTOS,'
      '  PAR_CREDITOICMSSN,'
      '  PAR_CSTCOFINSPADRAO,'
      '  PAR_CSTICMSPADRAO,'
      '  PAR_CSTIPIPADRAO,'
      '  PAR_CSTPISPADRAO,'
      '  PAR_CTE_CSTICMS,'
      '  PAR_CTE_VEICULO,'
      '  PAR_CTEALIQTRIBUTOS,'
      '  PAR_CTEEMAILASSUNTO,'
      '  PAR_CTEEMAILCONTA,'
      '  PAR_CTEEMAILHTML,'
      '  PAR_CTEEMAILSISTEMA,'
      '  PAR_CTEMODELO,'
      '  PAR_CTESERIE,'
      '  PAR_CTEVISUALIZARDACTE,'
      '  PAR_DDDPADRAO,'
      '  PAR_DESCMAXPADRAO,'
      '  PAR_DESCONTOPORCLIENTE,'
      '  PAR_DESPESAPADRAO,'
      '  PAR_DIAPREFERENCIAL01,'
      '  PAR_DIAPREFERENCIAL02,'
      '  PAR_DIAPREFERENCIAL03,'
      '  PAR_DIAPREFERENCIAL04,'
      '  PAR_DIAPREFERENCIAL05,'
      '  PAR_DIAPREFERENCIAL06,'
      '  PAR_DIAPREFERENCIAL07,'
      '  PAR_DIAPREFERENCIAL08,'
      '  PAR_DIAPREFERENCIAL09,'
      '  PAR_DIAPREFERENCIAL10,'
      '  PAR_DIAPREFERENCIAL11,'
      '  PAR_DIAPREFERENCIAL12,'
      '  PAR_DIAPREFERENCIAL13,'
      '  PAR_DIAPREFERENCIAL14,'
      '  PAR_DIAPREFERENCIAL15,'
      '  PAR_DIAPREFERENCIAL16,'
      '  PAR_DIAPREFERENCIAL17,'
      '  PAR_DIAPREFERENCIAL18,'
      '  PAR_DIAPREFERENCIAL19,'
      '  PAR_DIAPREFERENCIAL20,'
      '  PAR_DIAPREFERENCIAL21,'
      '  PAR_DIAPREFERENCIAL22,'
      '  PAR_DIAPREFERENCIAL23,'
      '  PAR_DIAPREFERENCIAL24,'
      '  PAR_DIAPREFERENCIAL25,'
      '  PAR_DIAPREFERENCIAL26,'
      '  PAR_DIAPREFERENCIAL27,'
      '  PAR_DIAPREFERENCIAL28,'
      '  PAR_ECFCFOP,'
      '  PAR_ECFCFOPNF2,'
      '  PAR_ECFDESCSANGRIA,'
      '  PAR_ECFDESCSUPRIMENTO,'
      '  PAR_ECFMENSAGEMCUPOM,'
      '  PAR_ECFTITULOTELA,'
      '  PAR_ESPECIEPADRAO,'
      '  PAR_ESTADOPADRAO,'
      '  PAR_ESTOQUEESPADRAO,'
      '  PAR_EXIBIRTELARESUMO,'
      '  PAR_EXPEDIDOPORVENDEDOR,'
      '  PAR_EXPEDIDOR,'
      '  PAR_FAMILIACURSOS,'
      '  PAR_FAMILIAMATERIAIS,'
      '  PAR_FRETEPORCONTA,'
      '  PAR_FUSOHORARIO,'
      '  PAR_HORAAULA,'
      '  PAR_ICMSALIQUOTAPOR,'
      '  PAR_IDENTIFICACAOSISTEMA,'
      '  PAR_IMPRIMIRLOGOTIPO,'
      '  PAR_IMPRIMIRNOMEFANTASIA,'
      '  PAR_IMPRIMIRRECEBER,'
      '  PAR_IMPRIMIRSALDOAC,'
      '  PAR_JURIDICOSITE1,'
      '  PAR_JURIDICOSITE2,'
      '  PAR_JURIDICOSITE3,'
      '  PAR_JUROSMENSAL,'
      '  PAR_LICENCADLL,'
      '  PAR_LICENCADLLCTE,'
      '  PAR_LIMITECREDITO,'
      '  PAR_LINHASFINALRECIBO,'
      '  PAR_LINHASINICIORECIBO,'
      '  PAR_LOCACOESDIAS,'
      '  PAR_LOCACOESHORALIMITE,'
      '  PAR_LOCALANEXOSCLIENTES,'
      '  PAR_LOCALANEXOSPROCESSOS,'
      '  PAR_LOCALANEXOSPRODUTOS,'
      '  PAR_LOCALATUALIZACOES,'
      '  PAR_LOCALESTUDAPADRAO,'
      '  PAR_LOCALFOTOSFILMES,'
      '  PAR_LOCALFOTOSIMOVEIS,'
      '  PAR_LOCALFOTOSPRODUTOS,'
      '  PAR_LOCALMODELOSDOC,'
      '  PAR_LOCALPADRAO,'
      '  PAR_LOCPRODUTOSPRECOS,'
      '  PAR_MARCAPADRAO,'
      '  PAR_MARGEMPADRAO,'
      '  PAR_MULTAPORC,'
      '  PAR_MULTATIPO,'
      '  PAR_NFECONTINGENCIADATA,'
      '  PAR_NFECONTINGENCIAHORA,'
      '  PAR_NFECONTINGENCIAJUST,'
      '  PAR_NFEEMAILASSUNTO,'
      '  PAR_NFEEMAILAUTOMATICO,'
      '  PAR_NFEEMAILBCC,'
      '  PAR_NFEEMAILCONTA,'
      '  PAR_NFEEMAILDLL,'
      '  PAR_NFEEMAILHTML,'
      '  PAR_NFEEMAILSISTEMA,'
      '  PAR_NFEMODELO,'
      '  PAR_NFESERIE,'
      '  PAR_NFETIPOEMISSAO,'
      '  PAR_NFEVISUALIZARDANFE,'
      '  PAR_NOMECERTIFICADO,'
      '  PAR_NOTASLF,'
      '  PAR_NOTASLI,'
      '  PAR_NOTASQL,'
      '  PAR_NOTASQLOBS,'
      '  PAR_PAG_DESTINOBAIXA,'
      '  PAR_PREVISUALIZARVENDA,'
      '  PAR_PRODUCAODTPREVISAO,'
      '  PAR_PRODUCAOLF,'
      '  PAR_PRODUCAOLI,'
      '  PAR_PRODUCAOQL,'
      '  PAR_PRODUTOCODIGOLIVRE,'
      '  PAR_PRODUTOMAODEOBRA,'
      '  PAR_PRODUTOSLF,'
      '  PAR_PRODUTOSLI,'
      '  PAR_PRODUTOSQL,'
      '  PAR_PROMISSORIASCODIGO,'
      '  PAR_PROXY,'
      '  PAR_PROXYENDERECO,'
      '  PAR_PROXYPASSWORD,'
      '  PAR_PROXYPORTA,'
      '  PAR_PROXYUSER,'
      '  PAR_QTDENIVEISCOMPOSTO,'
      '  PAR_RECEITAPADRAO,'
      '  PAR_REE_DESTINOBAIXA,'
      '  PAR_REE_DTJUROSAPOS,'
      '  PAR_REPOSITORIOBOLETOS,'
      '  PAR_REPOSITORIOCTE,'
      '  PAR_REPOSITORIONFE,'
      '  PAR_SERIALCERTIFICADO,'
      '  PAR_SERVICOSDTPREVISAO,'
      '  PAR_SERVICOSLF,'
      '  PAR_SERVICOSLI,'
      '  PAR_SERVICOSORCLF,'
      '  PAR_SERVICOSORCLI,'
      '  PAR_SERVICOSORCQL,'
      '  PAR_SERVICOSORCRP,'
      '  PAR_SERVICOSPRINTPADRAO,'
      '  PAR_SERVICOSPV,'
      '  PAR_SERVICOSRPA,'
      '  PAR_SERVICOSRPF,'
      '  PAR_SERVICOSTIMBRADA,'
      '  PAR_SIGLAUF,'
      '  PAR_SIGLAUFCTE,'
      '  PAR_SIGLAWS,'
      '  PAR_SIGLAWSCTE,'
      '  PAR_STPRIMEIRAPARCELA,'
      '  PAR_TABELAPRECO,'
      '  PAR_TELEVENDAPROXCONTATO,'
      '  PAR_TIPOAMBIENTE,'
      '  PAR_TIPOAMBIENTECTE,'
      '  PAR_VALORBOLETO,'
      '  PAR_VALORMULTA,'
      '  PAR_VEICULOSPORCLUCRO,'
      '  PAR_VENDAEMAILASSUNTO,'
      '  PAR_VENDAEMAILCONTA,'
      '  PAR_VENDAEMAILSISTEMA,'
      '  PAR_VENDASLF,'
      '  PAR_VENDASLF2,'
      '  PAR_VENDASLI,'
      '  PAR_VENDASQL,'
      '  PAR_VENDASQL2,'
      '  PAR_VENDASRP,'
      '  PAR_VENDEESTOQUEZERO,'
      '  PAR_VENDERCOMPOSTO,'
      '  PAR_VERSAOXML,'
      '  PAR_VERSAOXMLCTE,'
      '  PAR_CNPJCERTIFICADO,'
      '  PAR_VALINICIALCERTIFICADO,'
      '  PAR_VALFINALCERTIFICADO,'
      '  PAR_IMPRIMIRCONDICAO,'
      '  PAR_ALERTAKG,'
      '  PAR_RNTRC,'
      '  PAR_MDFEMODELO,'
      '  PAR_MDFESERIE,'
      '  PAR_REPOSITORIOMDFE,'
      '  PAR_VERSAOXMLMDFE,'
      '  PAR_TIPOAMBIENTEMDFE,'
      '  PAR_SIGLAUFMDFE,'
      '  PAR_SIGLAWSMDFE,'
      '  PAR_LICENCADLLMDFE'
      'from PARAMETROS '
      'where'
      '  PAR_CODIGO = :PAR_CODIGO')
    SelectSQL.Strings = (
      'select * from PARAMETROS')
    ModifySQL.Strings = (
      'update PARAMETROS'
      'set'
      '  PAR_CODIGO = :PAR_CODIGO,'
      '  PAR_ABRIRLOCPRODUTOS = :PAR_ABRIRLOCPRODUTOS,'
      '  PAR_ACRESCIMOPOR = :PAR_ACRESCIMOPOR,'
      '  PAR_ACRESCIMOPORC = :PAR_ACRESCIMOPORC,'
      '  PAR_ACRESCIMOVALOR = :PAR_ACRESCIMOVALOR,'
      '  PAR_ALMOXARIFADOPADRAO = :PAR_ALMOXARIFADOPADRAO,'
      '  PAR_ATUALIZADOR = :PAR_ATUALIZADOR,'
      '  PAR_AULASFERIADOS = :PAR_AULASFERIADOS,'
      '  PAR_BAIRROPADRAO = :PAR_BAIRROPADRAO,'
      '  PAR_BLOQUEARCLIENTEDIAS = :PAR_BLOQUEARCLIENTEDIAS,'
      '  PAR_CALCULARPONTUACAO = :PAR_CALCULARPONTUACAO,'
      '  PAR_CFOPFORAPADRAO = :PAR_CFOPFORAPADRAO,'
      '  PAR_CFOPPADRAO = :PAR_CFOPPADRAO,'
      '  PAR_CFOPPRODUTO = :PAR_CFOPPRODUTO,'
      '  PAR_CFOPSERVICOPADRAO = :PAR_CFOPSERVICOPADRAO,'
      '  PAR_CHATHABILITADO = :PAR_CHATHABILITADO,'
      '  PAR_CIDADEPADRAO = :PAR_CIDADEPADRAO,'
      '  PAR_CLASSFISCALPADRAO = :PAR_CLASSFISCALPADRAO,'
      '  PAR_CLI_ATIVIDADE = :PAR_CLI_ATIVIDADE,'
      '  PAR_CLI_BLOQUEARVENDA = :PAR_CLI_BLOQUEARVENDA,'
      '  PAR_CLI_MAILING = :PAR_CLI_MAILING,'
      '  PAR_CLI_TELEVENDA = :PAR_CLI_TELEVENDA,'
      '  PAR_CLI_VENDEDOR = :PAR_CLI_VENDEDOR,'
      '  PAR_COBRARDESCONTO = :PAR_COBRARDESCONTO,'
      '  PAR_COMANDASCLIENTE = :PAR_COMANDASCLIENTE,'
      '  PAR_COMANDASLF = :PAR_COMANDASLF,'
      '  PAR_COMANDASLI = :PAR_COMANDASLI,'
      '  PAR_COMANDASQL = :PAR_COMANDASQL,'
      '  PAR_COMANDASRP = :PAR_COMANDASRP,'
      '  PAR_COMISSAOPOR = :PAR_COMISSAOPOR,'
      '  PAR_CONCEITOAFINAL = :PAR_CONCEITOAFINAL,'
      '  PAR_CONCEITOAINICIAL = :PAR_CONCEITOAINICIAL,'
      '  PAR_CONCEITOAMINUSFINAL = :PAR_CONCEITOAMINUSFINAL,'
      '  PAR_CONCEITOAMINUSINICIAL = :PAR_CONCEITOAMINUSINICIAL,'
      '  PAR_CONCEITOAPLUSFINAL = :PAR_CONCEITOAPLUSFINAL,'
      '  PAR_CONCEITOAPLUSINICIAL = :PAR_CONCEITOAPLUSINICIAL,'
      '  PAR_CONCEITOBFINAL = :PAR_CONCEITOBFINAL,'
      '  PAR_CONCEITOBINICIAL = :PAR_CONCEITOBINICIAL,'
      '  PAR_CONCEITOBMINUSFINAL = :PAR_CONCEITOBMINUSFINAL,'
      '  PAR_CONCEITOBMINUSINICIAL = :PAR_CONCEITOBMINUSINICIAL,'
      '  PAR_CONCEITOBPLUSFINAL = :PAR_CONCEITOBPLUSFINAL,'
      '  PAR_CONCEITOBPLUSINICIAL = :PAR_CONCEITOBPLUSINICIAL,'
      '  PAR_CONCEITOCFINAL = :PAR_CONCEITOCFINAL,'
      '  PAR_CONCEITOCINICIAL = :PAR_CONCEITOCINICIAL,'
      '  PAR_CONCEITOCMINUSFINAL = :PAR_CONCEITOCMINUSFINAL,'
      '  PAR_CONCEITOCMINUSINICIAL = :PAR_CONCEITOCMINUSINICIAL,'
      '  PAR_CONCEITOCPLUSFINAL = :PAR_CONCEITOCPLUSFINAL,'
      '  PAR_CONCEITOCPLUSINICIAL = :PAR_CONCEITOCPLUSINICIAL,'
      '  PAR_CONCEITODFINAL = :PAR_CONCEITODFINAL,'
      '  PAR_CONCEITODINICIAL = :PAR_CONCEITODINICIAL,'
      '  PAR_CONCEITODMINUSFINAL = :PAR_CONCEITODMINUSFINAL,'
      '  PAR_CONCEITODMINUSINICIAL = :PAR_CONCEITODMINUSINICIAL,'
      '  PAR_CONCEITODPLUSFINAL = :PAR_CONCEITODPLUSFINAL,'
      '  PAR_CONCEITODPLUSINICIAL = :PAR_CONCEITODPLUSINICIAL,'
      '  PAR_CONCEITOEFINAL = :PAR_CONCEITOEFINAL,'
      '  PAR_CONCEITOEINICIAL = :PAR_CONCEITOEINICIAL,'
      '  PAR_CONDICAOPADRAO = :PAR_CONDICAOPADRAO,'
      '  PAR_CONTAPADRAO = :PAR_CONTAPADRAO,'
      '  PAR_CORTEPAPEL = :PAR_CORTEPAPEL,'
      '  PAR_COTACAOPONTOS = :PAR_COTACAOPONTOS,'
      '  PAR_CREDITOICMSSN = :PAR_CREDITOICMSSN,'
      '  PAR_CSTCOFINSPADRAO = :PAR_CSTCOFINSPADRAO,'
      '  PAR_CSTICMSPADRAO = :PAR_CSTICMSPADRAO,'
      '  PAR_CSTIPIPADRAO = :PAR_CSTIPIPADRAO,'
      '  PAR_CSTPISPADRAO = :PAR_CSTPISPADRAO,'
      '  PAR_CTE_CSTICMS = :PAR_CTE_CSTICMS,'
      '  PAR_CTE_VEICULO = :PAR_CTE_VEICULO,'
      '  PAR_CTEALIQTRIBUTOS = :PAR_CTEALIQTRIBUTOS,'
      '  PAR_CTEEMAILASSUNTO = :PAR_CTEEMAILASSUNTO,'
      '  PAR_CTEEMAILCONTA = :PAR_CTEEMAILCONTA,'
      '  PAR_CTEEMAILHTML = :PAR_CTEEMAILHTML,'
      '  PAR_CTEEMAILSISTEMA = :PAR_CTEEMAILSISTEMA,'
      '  PAR_CTEMODELO = :PAR_CTEMODELO,'
      '  PAR_CTESERIE = :PAR_CTESERIE,'
      '  PAR_CTEVISUALIZARDACTE = :PAR_CTEVISUALIZARDACTE,'
      '  PAR_DDDPADRAO = :PAR_DDDPADRAO,'
      '  PAR_DESCMAXPADRAO = :PAR_DESCMAXPADRAO,'
      '  PAR_DESCONTOPORCLIENTE = :PAR_DESCONTOPORCLIENTE,'
      '  PAR_DESPESAPADRAO = :PAR_DESPESAPADRAO,'
      '  PAR_DIAPREFERENCIAL01 = :PAR_DIAPREFERENCIAL01,'
      '  PAR_DIAPREFERENCIAL02 = :PAR_DIAPREFERENCIAL02,'
      '  PAR_DIAPREFERENCIAL03 = :PAR_DIAPREFERENCIAL03,'
      '  PAR_DIAPREFERENCIAL04 = :PAR_DIAPREFERENCIAL04,'
      '  PAR_DIAPREFERENCIAL05 = :PAR_DIAPREFERENCIAL05,'
      '  PAR_DIAPREFERENCIAL06 = :PAR_DIAPREFERENCIAL06,'
      '  PAR_DIAPREFERENCIAL07 = :PAR_DIAPREFERENCIAL07,'
      '  PAR_DIAPREFERENCIAL08 = :PAR_DIAPREFERENCIAL08,'
      '  PAR_DIAPREFERENCIAL09 = :PAR_DIAPREFERENCIAL09,'
      '  PAR_DIAPREFERENCIAL10 = :PAR_DIAPREFERENCIAL10,'
      '  PAR_DIAPREFERENCIAL11 = :PAR_DIAPREFERENCIAL11,'
      '  PAR_DIAPREFERENCIAL12 = :PAR_DIAPREFERENCIAL12,'
      '  PAR_DIAPREFERENCIAL13 = :PAR_DIAPREFERENCIAL13,'
      '  PAR_DIAPREFERENCIAL14 = :PAR_DIAPREFERENCIAL14,'
      '  PAR_DIAPREFERENCIAL15 = :PAR_DIAPREFERENCIAL15,'
      '  PAR_DIAPREFERENCIAL16 = :PAR_DIAPREFERENCIAL16,'
      '  PAR_DIAPREFERENCIAL17 = :PAR_DIAPREFERENCIAL17,'
      '  PAR_DIAPREFERENCIAL18 = :PAR_DIAPREFERENCIAL18,'
      '  PAR_DIAPREFERENCIAL19 = :PAR_DIAPREFERENCIAL19,'
      '  PAR_DIAPREFERENCIAL20 = :PAR_DIAPREFERENCIAL20,'
      '  PAR_DIAPREFERENCIAL21 = :PAR_DIAPREFERENCIAL21,'
      '  PAR_DIAPREFERENCIAL22 = :PAR_DIAPREFERENCIAL22,'
      '  PAR_DIAPREFERENCIAL23 = :PAR_DIAPREFERENCIAL23,'
      '  PAR_DIAPREFERENCIAL24 = :PAR_DIAPREFERENCIAL24,'
      '  PAR_DIAPREFERENCIAL25 = :PAR_DIAPREFERENCIAL25,'
      '  PAR_DIAPREFERENCIAL26 = :PAR_DIAPREFERENCIAL26,'
      '  PAR_DIAPREFERENCIAL27 = :PAR_DIAPREFERENCIAL27,'
      '  PAR_DIAPREFERENCIAL28 = :PAR_DIAPREFERENCIAL28,'
      '  PAR_ECFCFOP = :PAR_ECFCFOP,'
      '  PAR_ECFCFOPNF2 = :PAR_ECFCFOPNF2,'
      '  PAR_ECFDESCSANGRIA = :PAR_ECFDESCSANGRIA,'
      '  PAR_ECFDESCSUPRIMENTO = :PAR_ECFDESCSUPRIMENTO,'
      '  PAR_ECFMENSAGEMCUPOM = :PAR_ECFMENSAGEMCUPOM,'
      '  PAR_ECFTITULOTELA = :PAR_ECFTITULOTELA,'
      '  PAR_ESPECIEPADRAO = :PAR_ESPECIEPADRAO,'
      '  PAR_ESTADOPADRAO = :PAR_ESTADOPADRAO,'
      '  PAR_ESTOQUEESPADRAO = :PAR_ESTOQUEESPADRAO,'
      '  PAR_EXIBIRTELARESUMO = :PAR_EXIBIRTELARESUMO,'
      '  PAR_EXPEDIDOPORVENDEDOR = :PAR_EXPEDIDOPORVENDEDOR,'
      '  PAR_EXPEDIDOR = :PAR_EXPEDIDOR,'
      '  PAR_FAMILIACURSOS = :PAR_FAMILIACURSOS,'
      '  PAR_FAMILIAMATERIAIS = :PAR_FAMILIAMATERIAIS,'
      '  PAR_FRETEPORCONTA = :PAR_FRETEPORCONTA,'
      '  PAR_FUSOHORARIO = :PAR_FUSOHORARIO,'
      '  PAR_HORAAULA = :PAR_HORAAULA,'
      '  PAR_ICMSALIQUOTAPOR = :PAR_ICMSALIQUOTAPOR,'
      '  PAR_IDENTIFICACAOSISTEMA = :PAR_IDENTIFICACAOSISTEMA,'
      '  PAR_IMPRIMIRLOGOTIPO = :PAR_IMPRIMIRLOGOTIPO,'
      '  PAR_IMPRIMIRNOMEFANTASIA = :PAR_IMPRIMIRNOMEFANTASIA,'
      '  PAR_IMPRIMIRRECEBER = :PAR_IMPRIMIRRECEBER,'
      '  PAR_IMPRIMIRSALDOAC = :PAR_IMPRIMIRSALDOAC,'
      '  PAR_JURIDICOSITE1 = :PAR_JURIDICOSITE1,'
      '  PAR_JURIDICOSITE2 = :PAR_JURIDICOSITE2,'
      '  PAR_JURIDICOSITE3 = :PAR_JURIDICOSITE3,'
      '  PAR_JUROSMENSAL = :PAR_JUROSMENSAL,'
      '  PAR_LICENCADLL = :PAR_LICENCADLL,'
      '  PAR_LICENCADLLCTE = :PAR_LICENCADLLCTE,'
      '  PAR_LIMITECREDITO = :PAR_LIMITECREDITO,'
      '  PAR_LINHASFINALRECIBO = :PAR_LINHASFINALRECIBO,'
      '  PAR_LINHASINICIORECIBO = :PAR_LINHASINICIORECIBO,'
      '  PAR_LOCACOESDIAS = :PAR_LOCACOESDIAS,'
      '  PAR_LOCACOESHORALIMITE = :PAR_LOCACOESHORALIMITE,'
      '  PAR_LOCALANEXOSCLIENTES = :PAR_LOCALANEXOSCLIENTES,'
      '  PAR_LOCALANEXOSPROCESSOS = :PAR_LOCALANEXOSPROCESSOS,'
      '  PAR_LOCALANEXOSPRODUTOS = :PAR_LOCALANEXOSPRODUTOS,'
      '  PAR_LOCALATUALIZACOES = :PAR_LOCALATUALIZACOES,'
      '  PAR_LOCALESTUDAPADRAO = :PAR_LOCALESTUDAPADRAO,'
      '  PAR_LOCALFOTOSFILMES = :PAR_LOCALFOTOSFILMES,'
      '  PAR_LOCALFOTOSIMOVEIS = :PAR_LOCALFOTOSIMOVEIS,'
      '  PAR_LOCALFOTOSPRODUTOS = :PAR_LOCALFOTOSPRODUTOS,'
      '  PAR_LOCALMODELOSDOC = :PAR_LOCALMODELOSDOC,'
      '  PAR_LOCALPADRAO = :PAR_LOCALPADRAO,'
      '  PAR_LOCPRODUTOSPRECOS = :PAR_LOCPRODUTOSPRECOS,'
      '  PAR_MARCAPADRAO = :PAR_MARCAPADRAO,'
      '  PAR_MARGEMPADRAO = :PAR_MARGEMPADRAO,'
      '  PAR_MULTAPORC = :PAR_MULTAPORC,'
      '  PAR_MULTATIPO = :PAR_MULTATIPO,'
      '  PAR_NFECONTINGENCIADATA = :PAR_NFECONTINGENCIADATA,'
      '  PAR_NFECONTINGENCIAHORA = :PAR_NFECONTINGENCIAHORA,'
      '  PAR_NFECONTINGENCIAJUST = :PAR_NFECONTINGENCIAJUST,'
      '  PAR_NFEEMAILASSUNTO = :PAR_NFEEMAILASSUNTO,'
      '  PAR_NFEEMAILAUTOMATICO = :PAR_NFEEMAILAUTOMATICO,'
      '  PAR_NFEEMAILBCC = :PAR_NFEEMAILBCC,'
      '  PAR_NFEEMAILCONTA = :PAR_NFEEMAILCONTA,'
      '  PAR_NFEEMAILDLL = :PAR_NFEEMAILDLL,'
      '  PAR_NFEEMAILHTML = :PAR_NFEEMAILHTML,'
      '  PAR_NFEEMAILSISTEMA = :PAR_NFEEMAILSISTEMA,'
      '  PAR_NFEMODELO = :PAR_NFEMODELO,'
      '  PAR_NFESERIE = :PAR_NFESERIE,'
      '  PAR_NFETIPOEMISSAO = :PAR_NFETIPOEMISSAO,'
      '  PAR_NFEVISUALIZARDANFE = :PAR_NFEVISUALIZARDANFE,'
      '  PAR_NOMECERTIFICADO = :PAR_NOMECERTIFICADO,'
      '  PAR_NOTASLF = :PAR_NOTASLF,'
      '  PAR_NOTASLI = :PAR_NOTASLI,'
      '  PAR_NOTASQL = :PAR_NOTASQL,'
      '  PAR_NOTASQLOBS = :PAR_NOTASQLOBS,'
      '  PAR_PAG_DESTINOBAIXA = :PAR_PAG_DESTINOBAIXA,'
      '  PAR_PREVISUALIZARVENDA = :PAR_PREVISUALIZARVENDA,'
      '  PAR_PRODUCAODTPREVISAO = :PAR_PRODUCAODTPREVISAO,'
      '  PAR_PRODUCAOLF = :PAR_PRODUCAOLF,'
      '  PAR_PRODUCAOLI = :PAR_PRODUCAOLI,'
      '  PAR_PRODUCAOQL = :PAR_PRODUCAOQL,'
      '  PAR_PRODUTOCODIGOLIVRE = :PAR_PRODUTOCODIGOLIVRE,'
      '  PAR_PRODUTOMAODEOBRA = :PAR_PRODUTOMAODEOBRA,'
      '  PAR_PRODUTOSLF = :PAR_PRODUTOSLF,'
      '  PAR_PRODUTOSLI = :PAR_PRODUTOSLI,'
      '  PAR_PRODUTOSQL = :PAR_PRODUTOSQL,'
      '  PAR_PROMISSORIASCODIGO = :PAR_PROMISSORIASCODIGO,'
      '  PAR_PROXY = :PAR_PROXY,'
      '  PAR_PROXYENDERECO = :PAR_PROXYENDERECO,'
      '  PAR_PROXYPASSWORD = :PAR_PROXYPASSWORD,'
      '  PAR_PROXYPORTA = :PAR_PROXYPORTA,'
      '  PAR_PROXYUSER = :PAR_PROXYUSER,'
      '  PAR_QTDENIVEISCOMPOSTO = :PAR_QTDENIVEISCOMPOSTO,'
      '  PAR_RECEITAPADRAO = :PAR_RECEITAPADRAO,'
      '  PAR_REE_DESTINOBAIXA = :PAR_REE_DESTINOBAIXA,'
      '  PAR_REE_DTJUROSAPOS = :PAR_REE_DTJUROSAPOS,'
      '  PAR_REPOSITORIOBOLETOS = :PAR_REPOSITORIOBOLETOS,'
      '  PAR_REPOSITORIOCTE = :PAR_REPOSITORIOCTE,'
      '  PAR_REPOSITORIONFE = :PAR_REPOSITORIONFE,'
      '  PAR_SERIALCERTIFICADO = :PAR_SERIALCERTIFICADO,'
      '  PAR_SERVICOSDTPREVISAO = :PAR_SERVICOSDTPREVISAO,'
      '  PAR_SERVICOSLF = :PAR_SERVICOSLF,'
      '  PAR_SERVICOSLI = :PAR_SERVICOSLI,'
      '  PAR_SERVICOSORCLF = :PAR_SERVICOSORCLF,'
      '  PAR_SERVICOSORCLI = :PAR_SERVICOSORCLI,'
      '  PAR_SERVICOSORCQL = :PAR_SERVICOSORCQL,'
      '  PAR_SERVICOSORCRP = :PAR_SERVICOSORCRP,'
      '  PAR_SERVICOSPRINTPADRAO = :PAR_SERVICOSPRINTPADRAO,'
      '  PAR_SERVICOSPV = :PAR_SERVICOSPV,'
      '  PAR_SERVICOSRPA = :PAR_SERVICOSRPA,'
      '  PAR_SERVICOSRPF = :PAR_SERVICOSRPF,'
      '  PAR_SERVICOSTIMBRADA = :PAR_SERVICOSTIMBRADA,'
      '  PAR_SIGLAUF = :PAR_SIGLAUF,'
      '  PAR_SIGLAUFCTE = :PAR_SIGLAUFCTE,'
      '  PAR_SIGLAWS = :PAR_SIGLAWS,'
      '  PAR_SIGLAWSCTE = :PAR_SIGLAWSCTE,'
      '  PAR_STPRIMEIRAPARCELA = :PAR_STPRIMEIRAPARCELA,'
      '  PAR_TABELAPRECO = :PAR_TABELAPRECO,'
      '  PAR_TELEVENDAPROXCONTATO = :PAR_TELEVENDAPROXCONTATO,'
      '  PAR_TIPOAMBIENTE = :PAR_TIPOAMBIENTE,'
      '  PAR_TIPOAMBIENTECTE = :PAR_TIPOAMBIENTECTE,'
      '  PAR_VALORBOLETO = :PAR_VALORBOLETO,'
      '  PAR_VALORMULTA = :PAR_VALORMULTA,'
      '  PAR_VEICULOSPORCLUCRO = :PAR_VEICULOSPORCLUCRO,'
      '  PAR_VENDAEMAILASSUNTO = :PAR_VENDAEMAILASSUNTO,'
      '  PAR_VENDAEMAILCONTA = :PAR_VENDAEMAILCONTA,'
      '  PAR_VENDAEMAILSISTEMA = :PAR_VENDAEMAILSISTEMA,'
      '  PAR_VENDASLF = :PAR_VENDASLF,'
      '  PAR_VENDASLF2 = :PAR_VENDASLF2,'
      '  PAR_VENDASLI = :PAR_VENDASLI,'
      '  PAR_VENDASQL = :PAR_VENDASQL,'
      '  PAR_VENDASQL2 = :PAR_VENDASQL2,'
      '  PAR_VENDASRP = :PAR_VENDASRP,'
      '  PAR_VENDEESTOQUEZERO = :PAR_VENDEESTOQUEZERO,'
      '  PAR_VENDERCOMPOSTO = :PAR_VENDERCOMPOSTO,'
      '  PAR_VERSAOXML = :PAR_VERSAOXML,'
      '  PAR_VERSAOXMLCTE = :PAR_VERSAOXMLCTE,'
      '  PAR_CNPJCERTIFICADO = :PAR_CNPJCERTIFICADO,'
      '  PAR_VALINICIALCERTIFICADO = :PAR_VALINICIALCERTIFICADO,'
      '  PAR_VALFINALCERTIFICADO = :PAR_VALFINALCERTIFICADO,'
      '  PAR_IMPRIMIRCONDICAO = :PAR_IMPRIMIRCONDICAO,'
      '  PAR_ALERTAKG = :PAR_ALERTAKG,'
      '  PAR_RNTRC = :PAR_RNTRC,'
      '  PAR_MDFEMODELO = :PAR_MDFEMODELO,'
      '  PAR_MDFESERIE = :PAR_MDFESERIE,'
      '  PAR_REPOSITORIOMDFE = :PAR_REPOSITORIOMDFE,'
      '  PAR_VERSAOXMLMDFE = :PAR_VERSAOXMLMDFE,'
      '  PAR_TIPOAMBIENTEMDFE = :PAR_TIPOAMBIENTEMDFE,'
      '  PAR_SIGLAUFMDFE = :PAR_SIGLAUFMDFE,'
      '  PAR_SIGLAWSMDFE = :PAR_SIGLAWSMDFE,'
      '  PAR_LICENCADLLMDFE = :PAR_LICENCADLLMDFE'
      'where'
      '  PAR_CODIGO = :OLD_PAR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 112
    Top = 72
    object TBParametrosPAR_ECFCFOP: TIntegerField
      FieldName = 'PAR_ECFCFOP'
      Origin = '"PARAMETROS"."PAR_ECFCFOP"'
    end
    object TBParametrosPAR_ECFCFOPNF2: TIntegerField
      FieldName = 'PAR_ECFCFOPNF2'
      Origin = '"PARAMETROS"."PAR_ECFCFOPNF2"'
    end
    object TBParametrosPAR_ECFDESCSANGRIA: TIBStringField
      FieldName = 'PAR_ECFDESCSANGRIA'
      Origin = '"PARAMETROS"."PAR_ECFDESCSANGRIA"'
      Size = 50
    end
    object TBParametrosPAR_ECFDESCSUPRIMENTO: TIBStringField
      FieldName = 'PAR_ECFDESCSUPRIMENTO'
      Origin = '"PARAMETROS"."PAR_ECFDESCSUPRIMENTO"'
      Size = 50
    end
    object TBParametrosPAR_ECFMENSAGEMCUPOM: TIBStringField
      FieldName = 'PAR_ECFMENSAGEMCUPOM'
      Origin = '"PARAMETROS"."PAR_ECFMENSAGEMCUPOM"'
      Size = 120
    end
    object TBParametrosPAR_ECFTITULOTELA: TIBStringField
      FieldName = 'PAR_ECFTITULOTELA'
      Origin = '"PARAMETROS"."PAR_ECFTITULOTELA"'
      Size = 120
    end
    object TBParametrosPAR_LOCPRODUTOSPRECOS: TIBStringField
      FieldName = 'PAR_LOCPRODUTOSPRECOS'
      Origin = '"PARAMETROS"."PAR_LOCPRODUTOSPRECOS"'
      Size = 1
    end
    object TBParametrosPAR_DDDPADRAO: TIBStringField
      FieldName = 'PAR_DDDPADRAO'
      Origin = '"PARAMETROS"."PAR_DDDPADRAO"'
    end
    object TBParametrosPAR_LOCALFOTOSPRODUTOS: TIBStringField
      FieldName = 'PAR_LOCALFOTOSPRODUTOS'
      Origin = '"PARAMETROS"."PAR_LOCALFOTOSPRODUTOS"'
      Size = 200
    end
  end
  object TBClientes: TIBDataSet
    Database = IBDatabase1
    Transaction = TRClientes
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (CLI_AFE, CLI_ALVARA, CLI_ALVARASANITARIO, CLI_ATIVIDADE, CLI_' +
        'BAIRRO, '
      
        '   CLI_BAIRROCOB, CLI_BLOQUEARVENDA, CLI_CEP, CLI_CEPCOB, CLI_CI' +
        'DADE, CLI_CIDADECOB, '
      
        '   CLI_CIDADECODIGO, CLI_CIDADECODIGOCOB, CLI_CNPJ, CLI_CNPJCOB,' +
        ' CLI_CODIGO, '
      
        '   CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB, CLI_CONDICAO, CLI_CONTAT' +
        'O, CLI_CPF, '
      
        '   CLI_DESCONTO, CLI_DTATUALIZACAO, CLI_DTCADASTRO, CLI_DTNASC, ' +
        'CLI_EMAIL, '
      
        '   CLI_EMAIL2, CLI_ENDERECO, CLI_ENDERECOCOB, CLI_ESTADO, CLI_ES' +
        'TADOCIVIL, '
      
        '   CLI_ESTADOCOB, CLI_ESTADOCODIGO, CLI_ESTADOCODIGOCOB, CLI_FAN' +
        'TASIA, '
      
        '   CLI_FONE0800, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_IE, CLI_IE' +
        'COB, CLI_LIMITECREDITO, '
      
        '   CLI_LOCALTRABALHO, CLI_MAE, CLI_MAEEMAIL, CLI_MAEFONE, CLI_MA' +
        'ILING, '
      
        '   CLI_MSN, CLI_NEXTEL, CLI_NOME, CLI_NUMERO, CLI_NUMEROCOB, CLI' +
        '_OBSERVACOES, '
      
        '   CLI_PAI, CLI_PAIEMAIL, CLI_PAIFONE, CLI_PONTOS, CLI_REGPROFIS' +
        'SIONAL, '
      
        '   CLI_RG, CLI_SETOR, CLI_SITE, CLI_STATUS, CLI_TABELAPRECO, CLI' +
        '_TELEVENDA, '
      '   CLI_TIPOCLIENTE, CLI_TIPOPESSOA, CLI_USUARIO, CLI_VENDEDOR)'
      'values'
      
        '  (:CLI_AFE, :CLI_ALVARA, :CLI_ALVARASANITARIO, :CLI_ATIVIDADE, ' +
        ':CLI_BAIRRO, '
      
        '   :CLI_BAIRROCOB, :CLI_BLOQUEARVENDA, :CLI_CEP, :CLI_CEPCOB, :C' +
        'LI_CIDADE, '
      
        '   :CLI_CIDADECOB, :CLI_CIDADECODIGO, :CLI_CIDADECODIGOCOB, :CLI' +
        '_CNPJ, '
      
        '   :CLI_CNPJCOB, :CLI_CODIGO, :CLI_COMPLEMENTO, :CLI_COMPLEMENTO' +
        'COB, :CLI_CONDICAO, '
      
        '   :CLI_CONTATO, :CLI_CPF, :CLI_DESCONTO, :CLI_DTATUALIZACAO, :C' +
        'LI_DTCADASTRO, '
      
        '   :CLI_DTNASC, :CLI_EMAIL, :CLI_EMAIL2, :CLI_ENDERECO, :CLI_END' +
        'ERECOCOB, '
      
        '   :CLI_ESTADO, :CLI_ESTADOCIVIL, :CLI_ESTADOCOB, :CLI_ESTADOCOD' +
        'IGO, :CLI_ESTADOCODIGOCOB, '
      
        '   :CLI_FANTASIA, :CLI_FONE0800, :CLI_FONE1, :CLI_FONE2, :CLI_FO' +
        'NE3, :CLI_IE, '
      
        '   :CLI_IECOB, :CLI_LIMITECREDITO, :CLI_LOCALTRABALHO, :CLI_MAE,' +
        ' :CLI_MAEEMAIL, '
      
        '   :CLI_MAEFONE, :CLI_MAILING, :CLI_MSN, :CLI_NEXTEL, :CLI_NOME,' +
        ' :CLI_NUMERO, '
      
        '   :CLI_NUMEROCOB, :CLI_OBSERVACOES, :CLI_PAI, :CLI_PAIEMAIL, :C' +
        'LI_PAIFONE, '
      
        '   :CLI_PONTOS, :CLI_REGPROFISSIONAL, :CLI_RG, :CLI_SETOR, :CLI_' +
        'SITE, :CLI_STATUS, '
      
        '   :CLI_TABELAPRECO, :CLI_TELEVENDA, :CLI_TIPOCLIENTE, :CLI_TIPO' +
        'PESSOA, '
      '   :CLI_USUARIO, :CLI_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_CODIGO,'
      '  CLI_AFE,'
      '  CLI_ALVARA,'
      '  CLI_ALVARASANITARIO,'
      '  CLI_ATIVIDADE,'
      '  CLI_BAIRRO,'
      '  CLI_BAIRROCOB,'
      '  CLI_BLOQUEARVENDA,'
      '  CLI_CEP,'
      '  CLI_CEPCOB,'
      '  CLI_CIDADE,'
      '  CLI_CIDADECOB,'
      '  CLI_CIDADECODIGO,'
      '  CLI_CIDADECODIGOCOB,'
      '  CLI_CNPJ,'
      '  CLI_CNPJCOB,'
      '  CLI_COMPLEMENTO,'
      '  CLI_COMPLEMENTOCOB,'
      '  CLI_CONTATO,'
      '  CLI_CPF,'
      '  CLI_DESCONTO,'
      '  CLI_DTATUALIZACAO,'
      '  CLI_DTCADASTRO,'
      '  CLI_DTNASC,'
      '  CLI_EMAIL,'
      '  CLI_EMAIL2,'
      '  CLI_ENDERECO,'
      '  CLI_ENDERECOCOB,'
      '  CLI_ESTADO,'
      '  CLI_ESTADOCIVIL,'
      '  CLI_ESTADOCOB,'
      '  CLI_ESTADOCODIGO,'
      '  CLI_ESTADOCODIGOCOB,'
      '  CLI_FANTASIA,'
      '  CLI_FONE1,'
      '  CLI_FONE2,'
      '  CLI_FONE3,'
      '  CLI_IE,'
      '  CLI_IECOB,'
      '  CLI_LIMITECREDITO,'
      '  CLI_MAE,'
      '  CLI_MAEEMAIL,'
      '  CLI_MAEFONE,'
      '  CLI_MAILING,'
      '  CLI_NOME,'
      '  CLI_NUMERO,'
      '  CLI_NUMEROCOB,'
      '  CLI_OBSERVACOES,'
      '  CLI_PAI,'
      '  CLI_PAIEMAIL,'
      '  CLI_PAIFONE,'
      '  CLI_PONTOS,'
      '  CLI_REGPROFISSIONAL,'
      '  CLI_RG,'
      '  CLI_SETOR,'
      '  CLI_SITE,'
      '  CLI_STATUS,'
      '  CLI_TABELAPRECO,'
      '  CLI_TELEVENDA,'
      '  CLI_TIPOPESSOA,'
      '  CLI_USUARIO,'
      '  CLI_VENDEDOR,'
      '  CLI_TIPOCLIENTE,'
      '  CLI_LOCALTRABALHO,'
      '  CLI_NEXTEL,'
      '  CLI_MSN,'
      '  CLI_FONE0800,'
      '  CLI_CONDICAO'
      'from CLIENTES '
      'where'
      '  CLI_CODIGO = :CLI_CODIGO')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'left join ATIVIDADES on CLI_ATIVIDADE=ATI_CODIGO'
      'left join CONDICOES on CLI_CONDICAO=CPG_CODIGO'
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO'
      'left join VENDEDORES as vend on CLI_VENDEDOR=vend.VEN_CODIGO'
      'left join VENDEDORES as tele on CLI_TELEVENDA=tele.VEN_CODIGO'
      'where CLI_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  CLI_AFE = :CLI_AFE,'
      '  CLI_ALVARA = :CLI_ALVARA,'
      '  CLI_ALVARASANITARIO = :CLI_ALVARASANITARIO,'
      '  CLI_ATIVIDADE = :CLI_ATIVIDADE,'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_BAIRROCOB = :CLI_BAIRROCOB,'
      '  CLI_BLOQUEARVENDA = :CLI_BLOQUEARVENDA,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CEPCOB = :CLI_CEPCOB,'
      '  CLI_CIDADE = :CLI_CIDADE,'
      '  CLI_CIDADECOB = :CLI_CIDADECOB,'
      '  CLI_CIDADECODIGO = :CLI_CIDADECODIGO,'
      '  CLI_CIDADECODIGOCOB = :CLI_CIDADECODIGOCOB,'
      '  CLI_CNPJ = :CLI_CNPJ,'
      '  CLI_CNPJCOB = :CLI_CNPJCOB,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  CLI_COMPLEMENTO = :CLI_COMPLEMENTO,'
      '  CLI_COMPLEMENTOCOB = :CLI_COMPLEMENTOCOB,'
      '  CLI_CONDICAO = :CLI_CONDICAO,'
      '  CLI_CONTATO = :CLI_CONTATO,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_DESCONTO = :CLI_DESCONTO,'
      '  CLI_DTATUALIZACAO = :CLI_DTATUALIZACAO,'
      '  CLI_DTCADASTRO = :CLI_DTCADASTRO,'
      '  CLI_DTNASC = :CLI_DTNASC,'
      '  CLI_EMAIL = :CLI_EMAIL,'
      '  CLI_EMAIL2 = :CLI_EMAIL2,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_ENDERECOCOB = :CLI_ENDERECOCOB,'
      '  CLI_ESTADO = :CLI_ESTADO,'
      '  CLI_ESTADOCIVIL = :CLI_ESTADOCIVIL,'
      '  CLI_ESTADOCOB = :CLI_ESTADOCOB,'
      '  CLI_ESTADOCODIGO = :CLI_ESTADOCODIGO,'
      '  CLI_ESTADOCODIGOCOB = :CLI_ESTADOCODIGOCOB,'
      '  CLI_FANTASIA = :CLI_FANTASIA,'
      '  CLI_FONE0800 = :CLI_FONE0800,'
      '  CLI_FONE1 = :CLI_FONE1,'
      '  CLI_FONE2 = :CLI_FONE2,'
      '  CLI_FONE3 = :CLI_FONE3,'
      '  CLI_IE = :CLI_IE,'
      '  CLI_IECOB = :CLI_IECOB,'
      '  CLI_LIMITECREDITO = :CLI_LIMITECREDITO,'
      '  CLI_LOCALTRABALHO = :CLI_LOCALTRABALHO,'
      '  CLI_MAE = :CLI_MAE,'
      '  CLI_MAEEMAIL = :CLI_MAEEMAIL,'
      '  CLI_MAEFONE = :CLI_MAEFONE,'
      '  CLI_MAILING = :CLI_MAILING,'
      '  CLI_MSN = :CLI_MSN,'
      '  CLI_NEXTEL = :CLI_NEXTEL,'
      '  CLI_NOME = :CLI_NOME,'
      '  CLI_NUMERO = :CLI_NUMERO,'
      '  CLI_NUMEROCOB = :CLI_NUMEROCOB,'
      '  CLI_OBSERVACOES = :CLI_OBSERVACOES,'
      '  CLI_PAI = :CLI_PAI,'
      '  CLI_PAIEMAIL = :CLI_PAIEMAIL,'
      '  CLI_PAIFONE = :CLI_PAIFONE,'
      '  CLI_PONTOS = :CLI_PONTOS,'
      '  CLI_REGPROFISSIONAL = :CLI_REGPROFISSIONAL,'
      '  CLI_RG = :CLI_RG,'
      '  CLI_SETOR = :CLI_SETOR,'
      '  CLI_SITE = :CLI_SITE,'
      '  CLI_STATUS = :CLI_STATUS,'
      '  CLI_TABELAPRECO = :CLI_TABELAPRECO,'
      '  CLI_TELEVENDA = :CLI_TELEVENDA,'
      '  CLI_TIPOCLIENTE = :CLI_TIPOCLIENTE,'
      '  CLI_TIPOPESSOA = :CLI_TIPOPESSOA,'
      '  CLI_USUARIO = :CLI_USUARIO,'
      '  CLI_VENDEDOR = :CLI_VENDEDOR'
      'where'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CLI_CODIGO'
    GeneratorField.Generator = 'GEN_CLIENTES'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 320
    Top = 72
    object TBClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = '"CLIENTES"."CLI_ATIVIDADE"'
      Required = True
    end
    object TBClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = '"CLIENTES"."CLI_CONDICAO"'
      Required = True
    end
    object TBClientesCLI_LOCALTRABALHO: TIntegerField
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = '"CLIENTES"."CLI_LOCALTRABALHO"'
      Required = True
    end
    object TBClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = '"CLIENTES"."CLI_MAILING"'
      Required = True
    end
    object TBClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = '"CLIENTES"."CLI_TELEVENDA"'
      Required = True
    end
    object TBClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = '"CLIENTES"."CLI_VENDEDOR"'
      Required = True
    end
    object TBClientesCLI_AFE: TIBStringField
      FieldName = 'CLI_AFE'
      Origin = '"CLIENTES"."CLI_AFE"'
    end
    object TBClientesCLI_ALVARA: TIBStringField
      FieldName = 'CLI_ALVARA'
      Origin = '"CLIENTES"."CLI_ALVARA"'
    end
    object TBClientesCLI_ALVARASANITARIO: TIBStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = '"CLIENTES"."CLI_ALVARASANITARIO"'
    end
    object TBClientesCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object TBClientesCLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 50
    end
    object TBClientesCLI_BLOQUEARVENDA: TIBStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = '"CLIENTES"."CLI_BLOQUEARVENDA"'
      Size = 1
    end
    object TBClientesCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object TBClientesCLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object TBClientesCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 50
    end
    object TBClientesCLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 50
    end
    object TBClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = '"CLIENTES"."CLI_CIDADECODIGO"'
    end
    object TBClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object TBClientesCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object TBClientesCLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object TBClientesCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object TBClientesCLI_COMPLEMENTOCOB: TIBStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 30
    end
    object TBClientesCLI_CONJUGE: TIBStringField
      FieldName = 'CLI_CONJUGE'
      Origin = '"CLIENTES"."CLI_CONJUGE"'
      Size = 50
    end
    object TBClientesCLI_CONJUGECPF: TIBStringField
      FieldName = 'CLI_CONJUGECPF'
      Origin = '"CLIENTES"."CLI_CONJUGECPF"'
    end
    object TBClientesCLI_CONJUGEDTNASC: TDateField
      FieldName = 'CLI_CONJUGEDTNASC'
      Origin = '"CLIENTES"."CLI_CONJUGEDTNASC"'
    end
    object TBClientesCLI_CONJUGERG: TIBStringField
      FieldName = 'CLI_CONJUGERG'
      Origin = '"CLIENTES"."CLI_CONJUGERG"'
    end
    object TBClientesCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object TBClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object TBClientesCLI_DESCONTO: TIBBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = '"CLIENTES"."CLI_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object TBClientesCLI_DIACOBRANCA: TIntegerField
      FieldName = 'CLI_DIACOBRANCA'
      Origin = '"CLIENTES"."CLI_DIACOBRANCA"'
    end
    object TBClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object TBClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object TBClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
    object TBClientesCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"CLIENTES"."CLI_EMAIL"'
      Size = 100
    end
    object TBClientesCLI_EMAIL2: TIBStringField
      FieldName = 'CLI_EMAIL2'
      Origin = '"CLIENTES"."CLI_EMAIL2"'
      Size = 100
    end
    object TBClientesCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
    end
    object TBClientesCLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 100
    end
    object TBClientesCLI_ENQUADRAMENTO: TIBStringField
      FieldName = 'CLI_ENQUADRAMENTO'
      Origin = '"CLIENTES"."CLI_ENQUADRAMENTO"'
    end
    object TBClientesCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
    end
    object TBClientesCLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"CLIENTES"."CLI_ESTADOCIVIL"'
      Size = 10
    end
    object TBClientesCLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object TBClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGO"'
    end
    object TBClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
    object TBClientesCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 50
    end
    object TBClientesCLI_FONE0800: TIBStringField
      FieldName = 'CLI_FONE0800'
      Origin = '"CLIENTES"."CLI_FONE0800"'
    end
    object TBClientesCLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object TBClientesCLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object TBClientesCLI_FONE3: TIBStringField
      FieldName = 'CLI_FONE3'
      Origin = '"CLIENTES"."CLI_FONE3"'
    end
    object TBClientesCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"CLIENTES"."CLI_IE"'
    end
    object TBClientesCLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object TBClientesCLI_LIMITECREDITO: TIBBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = '"CLIENTES"."CLI_LIMITECREDITO"'
      Precision = 18
      Size = 4
    end
    object TBClientesCLI_LOCALESTUDA: TIntegerField
      FieldName = 'CLI_LOCALESTUDA'
      Origin = '"CLIENTES"."CLI_LOCALESTUDA"'
      Required = True
    end
    object TBClientesCLI_MAE: TIBStringField
      FieldName = 'CLI_MAE'
      Origin = '"CLIENTES"."CLI_MAE"'
      Size = 50
    end
    object TBClientesCLI_MAEEMAIL: TIBStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = '"CLIENTES"."CLI_MAEEMAIL"'
      Size = 100
    end
    object TBClientesCLI_MAEFONE: TIBStringField
      FieldName = 'CLI_MAEFONE'
      Origin = '"CLIENTES"."CLI_MAEFONE"'
    end
    object TBClientesCLI_MENSALISTA: TIBStringField
      FieldName = 'CLI_MENSALISTA'
      Origin = '"CLIENTES"."CLI_MENSALISTA"'
      Size = 1
    end
    object TBClientesCLI_MSN: TIBStringField
      FieldName = 'CLI_MSN'
      Origin = '"CLIENTES"."CLI_MSN"'
      Size = 100
    end
    object TBClientesCLI_NATURALIDADE: TIBStringField
      FieldName = 'CLI_NATURALIDADE'
      Origin = '"CLIENTES"."CLI_NATURALIDADE"'
      Size = 50
    end
    object TBClientesCLI_NEXTEL: TIBStringField
      FieldName = 'CLI_NEXTEL'
      Origin = '"CLIENTES"."CLI_NEXTEL"'
    end
    object TBClientesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Required = True
      Size = 50
    end
    object TBClientesCLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
      Size = 15
    end
    object TBClientesCLI_NUMEROCOB: TIBStringField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
      Size = 15
    end
    object TBClientesCLI_OBSERVACOES: TWideMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = '"CLIENTES"."CLI_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBClientesCLI_PAI: TIBStringField
      FieldName = 'CLI_PAI'
      Origin = '"CLIENTES"."CLI_PAI"'
      Size = 50
    end
    object TBClientesCLI_PAIEMAIL: TIBStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = '"CLIENTES"."CLI_PAIEMAIL"'
      Size = 100
    end
    object TBClientesCLI_PAIFONE: TIBStringField
      FieldName = 'CLI_PAIFONE'
      Origin = '"CLIENTES"."CLI_PAIFONE"'
    end
    object TBClientesCLI_PASSWORD: TIBStringField
      FieldName = 'CLI_PASSWORD'
      Origin = '"CLIENTES"."CLI_PASSWORD"'
      Size = 40
    end
    object TBClientesCLI_PONTOS: TIBBCDField
      FieldName = 'CLI_PONTOS'
      Origin = '"CLIENTES"."CLI_PONTOS"'
      Precision = 18
      Size = 4
    end
    object TBClientesCLI_REGPROFISSIONAL: TIBStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = '"CLIENTES"."CLI_REGPROFISSIONAL"'
    end
    object TBClientesCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object TBClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = '"CLIENTES"."CLI_SETOR"'
    end
    object TBClientesCLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CLIENTES"."CLI_SITE"'
      Size = 100
    end
    object TBClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object TBClientesCLI_TABELAPRECO: TIBStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = '"CLIENTES"."CLI_TABELAPRECO"'
      Size = 1
    end
    object TBClientesCLI_TIPOCLIENTE: TIBStringField
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = '"CLIENTES"."CLI_TIPOCLIENTE"'
      Size = 1
    end
    object TBClientesCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
    object TBClientesCLI_USUARIO: TIBStringField
      FieldName = 'CLI_USUARIO'
      Origin = '"CLIENTES"."CLI_USUARIO"'
    end
    object TBClientesCLI_CLASSIFICACAO: TIBStringField
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = '"CLIENTES"."CLI_CLASSIFICACAO"'
      Size = 1
    end
    object TBClientesCLI_ORIENTACAOCOBRANCA: TIBStringField
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = '"CLIENTES"."CLI_ORIENTACAOCOBRANCA"'
      Size = 50
    end
    object TBClientesCLI_CONTRIBUINTEICMS: TIBStringField
      FieldName = 'CLI_CONTRIBUINTEICMS'
      Origin = '"CLIENTES"."CLI_CONTRIBUINTEICMS"'
      Size = 40
    end
    object TBClientesCLI_PROFISSAO: TIBStringField
      FieldName = 'CLI_PROFISSAO'
      Origin = '"CLIENTES"."CLI_PROFISSAO"'
      Size = 50
    end
    object TBClientesCLI_RECEBEAVISOS: TIBStringField
      FieldName = 'CLI_RECEBEAVISOS'
      Origin = '"CLIENTES"."CLI_RECEBEAVISOS"'
      Size = 1
    end
  end
  object DSClientes: TDataSource
    DataSet = TBClientes
    Left = 320
    Top = 120
  end
  object TRClientes: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 320
    Top = 168
  end
  object TBGrupos: TIBDataSet
    Database = IBDatabase1
    Transaction = TRGrupos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GRUPOS'
      'where'
      '  GRU_CODIGO = :OLD_GRU_CODIGO')
    InsertSQL.Strings = (
      'insert into GRUPOS'
      
        '  (GRU_CODIGO, GRU_DESCRICAO, GRU_DTATUALIZACAO, GRU_DTCADASTRO,' +
        ' GRU_USUARIO)'
      'values'
      
        '  (:GRU_CODIGO, :GRU_DESCRICAO, :GRU_DTATUALIZACAO, :GRU_DTCADAS' +
        'TRO, :GRU_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  GRU_CODIGO,'
      '  GRU_DESCRICAO,'
      '  GRU_DTCADASTRO,'
      '  GRU_DTATUALIZACAO,'
      '  GRU_USUARIO'
      'from GRUPOS '
      'where'
      '  GRU_CODIGO = :GRU_CODIGO')
    SelectSQL.Strings = (
      'select * from GRUPOS'
      'where GRU_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update GRUPOS'
      'set'
      '  GRU_CODIGO = :GRU_CODIGO,'
      '  GRU_DESCRICAO = :GRU_DESCRICAO,'
      '  GRU_DTATUALIZACAO = :GRU_DTATUALIZACAO,'
      '  GRU_DTCADASTRO = :GRU_DTCADASTRO,'
      '  GRU_USUARIO = :GRU_USUARIO'
      'where'
      '  GRU_CODIGO = :OLD_GRU_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'GRU_CODIGO'
    GeneratorField.Generator = 'GEN_GRUPOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 800
    Top = 72
    object TBGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = '"GRUPOS"."GRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBGruposGRU_DESCRICAO: TIBStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = '"GRUPOS"."GRU_DESCRICAO"'
      Size = 50
    end
    object TBGruposGRU_DTCADASTRO: TDateField
      FieldName = 'GRU_DTCADASTRO'
      Origin = '"GRUPOS"."GRU_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGruposGRU_DTATUALIZACAO: TDateField
      FieldName = 'GRU_DTATUALIZACAO'
      Origin = '"GRUPOS"."GRU_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGruposGRU_USUARIO: TIBStringField
      FieldName = 'GRU_USUARIO'
      Origin = '"GRUPOS"."GRU_USUARIO"'
    end
  end
  object DSGrupos: TDataSource
    DataSet = TBGrupos
    Left = 800
    Top = 120
  end
  object TRGrupos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 800
    Top = 168
  end
  object TBFamilias: TIBDataSet
    Database = IBDatabase1
    Transaction = TRFamilias
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FAMILIAS'
      'where'
      '  FAM_CODIGO = :OLD_FAM_CODIGO')
    InsertSQL.Strings = (
      'insert into FAMILIAS'
      
        '  (FAM_CODIGO, FAM_DESCRICAO, FAM_DTATUALIZACAO, FAM_DTCADASTRO,' +
        ' FAM_USUARIO)'
      'values'
      
        '  (:FAM_CODIGO, :FAM_DESCRICAO, :FAM_DTATUALIZACAO, :FAM_DTCADAS' +
        'TRO, :FAM_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  FAM_CODIGO,'
      '  FAM_DESCRICAO,'
      '  FAM_DTCADASTRO,'
      '  FAM_DTATUALIZACAO,'
      '  FAM_USUARIO'
      'from FAMILIAS '
      'where'
      '  FAM_CODIGO = :FAM_CODIGO')
    SelectSQL.Strings = (
      'select * from FAMILIAS'
      'where FAM_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update FAMILIAS'
      'set'
      '  FAM_CODIGO = :FAM_CODIGO,'
      '  FAM_DESCRICAO = :FAM_DESCRICAO,'
      '  FAM_DTATUALIZACAO = :FAM_DTATUALIZACAO,'
      '  FAM_DTCADASTRO = :FAM_DTCADASTRO,'
      '  FAM_USUARIO = :FAM_USUARIO'
      'where'
      '  FAM_CODIGO = :OLD_FAM_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'FAM_CODIGO'
    GeneratorField.Generator = 'GEN_FAMILIAS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 736
    Top = 72
    object TBFamiliasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = '"FAMILIAS"."FAM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFamiliasFAM_DESCRICAO: TIBStringField
      FieldName = 'FAM_DESCRICAO'
      Origin = '"FAMILIAS"."FAM_DESCRICAO"'
      Size = 50
    end
    object TBFamiliasFAM_DTCADASTRO: TDateField
      FieldName = 'FAM_DTCADASTRO'
      Origin = '"FAMILIAS"."FAM_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFamiliasFAM_DTATUALIZACAO: TDateField
      FieldName = 'FAM_DTATUALIZACAO'
      Origin = '"FAMILIAS"."FAM_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBFamiliasFAM_USUARIO: TIBStringField
      FieldName = 'FAM_USUARIO'
      Origin = '"FAMILIAS"."FAM_USUARIO"'
    end
  end
  object DSFamilias: TDataSource
    DataSet = TBFamilias
    Left = 736
    Top = 120
  end
  object TRFamilias: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 168
  end
  object TBProdutos: TIBDataSet
    Database = IBDatabase1
    Transaction = TRProdutos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQICMSA' +
        'DICST, '
      
        '   PRO_ALIQICMSRED, PRO_ALIQICMSST, PRO_ALIQIPI, PRO_ALIQISS, PR' +
        'O_ALIQOUTROS, '
      
        '   PRO_ALIQPIS, PRO_ALIQPISST, PRO_ATUALIZATABELA, PRO_CLASSFISC' +
        'AL, PRO_CODIGO, '
      
        '   PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASE' +
        'ICMS, PRO_COMPOSTO, '
      
        '   PRO_CORSABOR, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CST' +
        'ISS, PRO_CSTPIS, '
      
        '   PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_DTULTCO' +
        'MPRA, PRO_DTULTVENDA, '
      
        '   PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA' +
        ', PRO_GRUPO, '
      
        '   PRO_INTERNET, PRO_LOCALIZACAO, PRO_MARCA, PRO_MARGEM, PRO_MAR' +
        'GEM1, PRO_MARGEM2, '
      
        '   PRO_MARGEM3, PRO_MARGEM4, PRO_MARGEM5, PRO_MARGEM6, PRO_MODIC' +
        'MS, PRO_MODICMSST, '
      
        '   PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, PRO_ORIGEM, PRO_PALAVR' +
        'ASCHAVE, '
      
        '   PRO_PESO, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO' +
        '_PRECO5, '
      
        '   PRO_PRECO6, PRO_PRECOCUSTO, PRO_PRECOCUSTOMEDIO, PRO_PRECOCUS' +
        'TOULT, '
      
        '   PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT, PRO_R' +
        'EGISTROMS, '
      
        '   PRO_STATUS, PRO_TABPRECO1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_' +
        'TABPRECO4, '
      
        '   PRO_TABPRECO5, PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_UNID' +
        'ADE, PRO_USUARIO)'
      'values'
      
        '  (:PRO_ALIQCOFINS, :PRO_ALIQCOFINSST, :PRO_ALIQICMS, :PRO_ALIQI' +
        'CMSADICST, '
      
        '   :PRO_ALIQICMSRED, :PRO_ALIQICMSST, :PRO_ALIQIPI, :PRO_ALIQISS' +
        ', :PRO_ALIQOUTROS, '
      
        '   :PRO_ALIQPIS, :PRO_ALIQPISST, :PRO_ATUALIZATABELA, :PRO_CLASS' +
        'FISCAL, '
      
        '   :PRO_CODIGO, :PRO_CODIGOBARRAS, :PRO_CODIGOFAB, :PRO_COMISSAO' +
        ', :PRO_COMPOEBASEICMS, '
      
        '   :PRO_COMPOSTO, :PRO_CORSABOR, :PRO_CSTCOFINS, :PRO_CSTICMS, :' +
        'PRO_CSTIPI, '
      
        '   :PRO_CSTISS, :PRO_CSTPIS, :PRO_DESCRICAO, :PRO_DTATUALIZACAO,' +
        ' :PRO_DTCADASTRO, '
      
        '   :PRO_DTULTCOMPRA, :PRO_DTULTVENDA, :PRO_ESTOQUEATUAL, :PRO_ES' +
        'TOQUEMAX, '
      
        '   :PRO_ESTOQUEMIN, :PRO_FAMILIA, :PRO_GRUPO, :PRO_INTERNET, :PR' +
        'O_LOCALIZACAO, '
      
        '   :PRO_MARCA, :PRO_MARGEM, :PRO_MARGEM1, :PRO_MARGEM2, :PRO_MAR' +
        'GEM3, :PRO_MARGEM4, '
      
        '   :PRO_MARGEM5, :PRO_MARGEM6, :PRO_MODICMS, :PRO_MODICMSST, :PR' +
        'O_NOME, '
      
        '   :PRO_OBSERVACOES, :PRO_OFERTA, :PRO_ORIGEM, :PRO_PALAVRASCHAV' +
        'E, :PRO_PESO, '
      
        '   :PRO_PRECO1, :PRO_PRECO2, :PRO_PRECO3, :PRO_PRECO4, :PRO_PREC' +
        'O5, :PRO_PRECO6, '
      
        '   :PRO_PRECOCUSTO, :PRO_PRECOCUSTOMEDIO, :PRO_PRECOCUSTOULT, :P' +
        'RO_PRECOVENDA, '
      
        '   :PRO_PRECOVENDAMEDIO, :PRO_PRECOVENDAULT, :PRO_REGISTROMS, :P' +
        'RO_STATUS, '
      
        '   :PRO_TABPRECO1, :PRO_TABPRECO2, :PRO_TABPRECO3, :PRO_TABPRECO' +
        '4, :PRO_TABPRECO5, '
      
        '   :PRO_TABPRECO6, :PRO_TAMANHO, :PRO_TIPO, :PRO_UNIDADE, :PRO_U' +
        'SUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PRO_CODIGO,'
      '  PRO_FAMILIA,'
      '  PRO_GRUPO,'
      '  PRO_MARCA,'
      '  PRO_ALIQCOFINS,'
      '  PRO_ALIQCOFINSST,'
      '  PRO_ALIQICMS,'
      '  PRO_ALIQICMSADICST,'
      '  PRO_ALIQICMSRED,'
      '  PRO_ALIQICMSST,'
      '  PRO_ALIQIPI,'
      '  PRO_ALIQISS,'
      '  PRO_ALIQOUTROS,'
      '  PRO_ALIQPIS,'
      '  PRO_ALIQPISST,'
      '  PRO_ATUALIZATABELA,'
      '  PRO_CLASSFISCAL,'
      '  PRO_CODIGOBARRAS,'
      '  PRO_CODIGOFAB,'
      '  PRO_COMISSAO,'
      '  PRO_COMPOSTO,'
      '  PRO_CORSABOR,'
      '  PRO_CSTCOFINS,'
      '  PRO_CSTICMS,'
      '  PRO_CSTIPI,'
      '  PRO_CSTISS,'
      '  PRO_CSTPIS,'
      '  PRO_DESCRICAO,'
      '  PRO_DTATUALIZACAO,'
      '  PRO_DTCADASTRO,'
      '  PRO_DTULTCOMPRA,'
      '  PRO_DTULTVENDA,'
      '  PRO_ESTOQUEATUAL,'
      '  PRO_ESTOQUEMAX,'
      '  PRO_ESTOQUEMIN,'
      '  PRO_INTERNET,'
      '  PRO_LOCALIZACAO,'
      '  PRO_MARGEM,'
      '  PRO_MARGEM1,'
      '  PRO_MARGEM2,'
      '  PRO_MARGEM3,'
      '  PRO_MARGEM4,'
      '  PRO_MARGEM5,'
      '  PRO_MARGEM6,'
      '  PRO_MODICMS,'
      '  PRO_MODICMSST,'
      '  PRO_NOME,'
      '  PRO_OFERTA,'
      '  PRO_ORIGEM,'
      '  PRO_PALAVRASCHAVE,'
      '  PRO_PESO,'
      '  PRO_PRECO1,'
      '  PRO_PRECO2,'
      '  PRO_PRECO3,'
      '  PRO_PRECO4,'
      '  PRO_PRECO5,'
      '  PRO_PRECO6,'
      '  PRO_PRECOCUSTO,'
      '  PRO_PRECOCUSTOMEDIO,'
      '  PRO_PRECOCUSTOULT,'
      '  PRO_PRECOVENDA,'
      '  PRO_PRECOVENDAMEDIO,'
      '  PRO_PRECOVENDAULT,'
      '  PRO_REGISTROMS,'
      '  PRO_STATUS,'
      '  PRO_TABPRECO1,'
      '  PRO_TABPRECO2,'
      '  PRO_TABPRECO3,'
      '  PRO_TABPRECO4,'
      '  PRO_TABPRECO5,'
      '  PRO_TABPRECO6,'
      '  PRO_TAMANHO,'
      '  PRO_TIPO,'
      '  PRO_UNIDADE,'
      '  PRO_USUARIO,'
      '  PRO_OBSERVACOES,'
      '  PRO_COMPOEBASEICMS'
      'from PRODUTOS '
      'where'
      '  PRO_CODIGO = :PRO_CODIGO')
    SelectSQL.Strings = (
      'select * from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join CLASSFISCAL on PRO_CLASSFISCAL=CLF_CODIGO'
      'left join ICMS on PRO_CSTICMS=ICM_CODIGO'
      'left join IPI on PRO_CSTIPI=IPI_CODIGO'
      'left join ISS on PRO_CSTISS=ISS_CODIGO'
      'left join PISCOFINS as PIS on PRO_CSTPIS=PIS.PIS_CODIGO'
      'left join PISCOFINS as COFINS on PRO_CSTCOFINS=COFINS.PIS_CODIGO'
      'where PRO_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  PRO_ALIQCOFINS = :PRO_ALIQCOFINS,'
      '  PRO_ALIQCOFINSST = :PRO_ALIQCOFINSST,'
      '  PRO_ALIQICMS = :PRO_ALIQICMS,'
      '  PRO_ALIQICMSADICST = :PRO_ALIQICMSADICST,'
      '  PRO_ALIQICMSRED = :PRO_ALIQICMSRED,'
      '  PRO_ALIQICMSST = :PRO_ALIQICMSST,'
      '  PRO_ALIQIPI = :PRO_ALIQIPI,'
      '  PRO_ALIQISS = :PRO_ALIQISS,'
      '  PRO_ALIQOUTROS = :PRO_ALIQOUTROS,'
      '  PRO_ALIQPIS = :PRO_ALIQPIS,'
      '  PRO_ALIQPISST = :PRO_ALIQPISST,'
      '  PRO_ATUALIZATABELA = :PRO_ATUALIZATABELA,'
      '  PRO_CLASSFISCAL = :PRO_CLASSFISCAL,'
      '  PRO_CODIGO = :PRO_CODIGO,'
      '  PRO_CODIGOBARRAS = :PRO_CODIGOBARRAS,'
      '  PRO_CODIGOFAB = :PRO_CODIGOFAB,'
      '  PRO_COMISSAO = :PRO_COMISSAO,'
      '  PRO_COMPOEBASEICMS = :PRO_COMPOEBASEICMS,'
      '  PRO_COMPOSTO = :PRO_COMPOSTO,'
      '  PRO_CORSABOR = :PRO_CORSABOR,'
      '  PRO_CSTCOFINS = :PRO_CSTCOFINS,'
      '  PRO_CSTICMS = :PRO_CSTICMS,'
      '  PRO_CSTIPI = :PRO_CSTIPI,'
      '  PRO_CSTISS = :PRO_CSTISS,'
      '  PRO_CSTPIS = :PRO_CSTPIS,'
      '  PRO_DESCRICAO = :PRO_DESCRICAO,'
      '  PRO_DTATUALIZACAO = :PRO_DTATUALIZACAO,'
      '  PRO_DTCADASTRO = :PRO_DTCADASTRO,'
      '  PRO_DTULTCOMPRA = :PRO_DTULTCOMPRA,'
      '  PRO_DTULTVENDA = :PRO_DTULTVENDA,'
      '  PRO_ESTOQUEATUAL = :PRO_ESTOQUEATUAL,'
      '  PRO_ESTOQUEMAX = :PRO_ESTOQUEMAX,'
      '  PRO_ESTOQUEMIN = :PRO_ESTOQUEMIN,'
      '  PRO_FAMILIA = :PRO_FAMILIA,'
      '  PRO_GRUPO = :PRO_GRUPO,'
      '  PRO_INTERNET = :PRO_INTERNET,'
      '  PRO_LOCALIZACAO = :PRO_LOCALIZACAO,'
      '  PRO_MARCA = :PRO_MARCA,'
      '  PRO_MARGEM = :PRO_MARGEM,'
      '  PRO_MARGEM1 = :PRO_MARGEM1,'
      '  PRO_MARGEM2 = :PRO_MARGEM2,'
      '  PRO_MARGEM3 = :PRO_MARGEM3,'
      '  PRO_MARGEM4 = :PRO_MARGEM4,'
      '  PRO_MARGEM5 = :PRO_MARGEM5,'
      '  PRO_MARGEM6 = :PRO_MARGEM6,'
      '  PRO_MODICMS = :PRO_MODICMS,'
      '  PRO_MODICMSST = :PRO_MODICMSST,'
      '  PRO_NOME = :PRO_NOME,'
      '  PRO_OBSERVACOES = :PRO_OBSERVACOES,'
      '  PRO_OFERTA = :PRO_OFERTA,'
      '  PRO_ORIGEM = :PRO_ORIGEM,'
      '  PRO_PALAVRASCHAVE = :PRO_PALAVRASCHAVE,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PRECO1 = :PRO_PRECO1,'
      '  PRO_PRECO2 = :PRO_PRECO2,'
      '  PRO_PRECO3 = :PRO_PRECO3,'
      '  PRO_PRECO4 = :PRO_PRECO4,'
      '  PRO_PRECO5 = :PRO_PRECO5,'
      '  PRO_PRECO6 = :PRO_PRECO6,'
      '  PRO_PRECOCUSTO = :PRO_PRECOCUSTO,'
      '  PRO_PRECOCUSTOMEDIO = :PRO_PRECOCUSTOMEDIO,'
      '  PRO_PRECOCUSTOULT = :PRO_PRECOCUSTOULT,'
      '  PRO_PRECOVENDA = :PRO_PRECOVENDA,'
      '  PRO_PRECOVENDAMEDIO = :PRO_PRECOVENDAMEDIO,'
      '  PRO_PRECOVENDAULT = :PRO_PRECOVENDAULT,'
      '  PRO_REGISTROMS = :PRO_REGISTROMS,'
      '  PRO_STATUS = :PRO_STATUS,'
      '  PRO_TABPRECO1 = :PRO_TABPRECO1,'
      '  PRO_TABPRECO2 = :PRO_TABPRECO2,'
      '  PRO_TABPRECO3 = :PRO_TABPRECO3,'
      '  PRO_TABPRECO4 = :PRO_TABPRECO4,'
      '  PRO_TABPRECO5 = :PRO_TABPRECO5,'
      '  PRO_TABPRECO6 = :PRO_TABPRECO6,'
      '  PRO_TAMANHO = :PRO_TAMANHO,'
      '  PRO_TIPO = :PRO_TIPO,'
      '  PRO_UNIDADE = :PRO_UNIDADE,'
      '  PRO_USUARIO = :PRO_USUARIO'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PRO_CODIGO'
    GeneratorField.Generator = 'GEN_PRODUTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 864
    Top = 72
    object TBProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosPRO_CODIGOFAB: TIBStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = '"PRODUTOS"."PRO_CODIGOFAB"'
    end
    object TBProdutosPRO_CODIGOBARRAS: TIBStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGOBARRAS"'
      Size = 60
    end
    object TBProdutosPRO_FAMILIA: TIntegerField
      FieldName = 'PRO_FAMILIA'
      Origin = '"PRODUTOS"."PRO_FAMILIA"'
      Required = True
    end
    object TBProdutosPRO_GRUPO: TIntegerField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      Required = True
    end
    object TBProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 50
    end
    object TBProdutosPRO_DESCRICAO: TMemoField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBProdutosPRO_CORSABOR: TIBStringField
      FieldName = 'PRO_CORSABOR'
      Origin = '"PRODUTOS"."PRO_CORSABOR"'
    end
    object TBProdutosPRO_TAMANHO: TIBStringField
      FieldName = 'PRO_TAMANHO'
      Origin = '"PRODUTOS"."PRO_TAMANHO"'
    end
    object TBProdutosPRO_LOCALIZACAO: TIBStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = '"PRODUTOS"."PRO_LOCALIZACAO"'
    end
    object TBProdutosPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
    object TBProdutosPRO_ESTOQUEMIN: TIBBCDField
      FieldName = 'PRO_ESTOQUEMIN'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMIN"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ESTOQUEMAX: TIBBCDField
      FieldName = 'PRO_ESTOQUEMAX'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMAX"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ESTOQUEATUAL: TIBBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = '"PRODUTOS"."PRO_ESTOQUEATUAL"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQICMS: TIBBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = '"PRODUTOS"."PRO_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQICMSRED: TIBBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = '"PRODUTOS"."PRO_ALIQICMSRED"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQIPI: TIBBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = '"PRODUTOS"."PRO_ALIQIPI"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQISS: TIBBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = '"PRODUTOS"."PRO_ALIQISS"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQOUTROS: TIBBCDField
      FieldName = 'PRO_ALIQOUTROS'
      Origin = '"PRODUTOS"."PRO_ALIQOUTROS"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_COMISSAO: TIBBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = '"PRODUTOS"."PRO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOCUSTO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOCUSTOULT: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOULT'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOULT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOMEDIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOVENDA: TIBBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOVENDAULT: TIBBCDField
      FieldName = 'PRO_PRECOVENDAULT'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAULT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECOVENDAMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOVENDAMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAMEDIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO1: TIBStringField
      FieldName = 'PRO_TABPRECO1'
      Origin = '"PRODUTOS"."PRO_TABPRECO1"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM1: TIBBCDField
      FieldName = 'PRO_MARGEM1'
      Origin = '"PRODUTOS"."PRO_MARGEM1"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO1: TIBBCDField
      FieldName = 'PRO_PRECO1'
      Origin = '"PRODUTOS"."PRO_PRECO1"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO2: TIBStringField
      FieldName = 'PRO_TABPRECO2'
      Origin = '"PRODUTOS"."PRO_TABPRECO2"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM2: TIBBCDField
      FieldName = 'PRO_MARGEM2'
      Origin = '"PRODUTOS"."PRO_MARGEM2"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO2: TIBBCDField
      FieldName = 'PRO_PRECO2'
      Origin = '"PRODUTOS"."PRO_PRECO2"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO3: TIBStringField
      FieldName = 'PRO_TABPRECO3'
      Origin = '"PRODUTOS"."PRO_TABPRECO3"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM3: TIBBCDField
      FieldName = 'PRO_MARGEM3'
      Origin = '"PRODUTOS"."PRO_MARGEM3"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO3: TIBBCDField
      FieldName = 'PRO_PRECO3'
      Origin = '"PRODUTOS"."PRO_PRECO3"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO4: TIBStringField
      FieldName = 'PRO_TABPRECO4'
      Origin = '"PRODUTOS"."PRO_TABPRECO4"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM4: TIBBCDField
      FieldName = 'PRO_MARGEM4'
      Origin = '"PRODUTOS"."PRO_MARGEM4"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO4: TIBBCDField
      FieldName = 'PRO_PRECO4'
      Origin = '"PRODUTOS"."PRO_PRECO4"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO5: TIBStringField
      FieldName = 'PRO_TABPRECO5'
      Origin = '"PRODUTOS"."PRO_TABPRECO5"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM5: TIBBCDField
      FieldName = 'PRO_MARGEM5'
      Origin = '"PRODUTOS"."PRO_MARGEM5"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO5: TIBBCDField
      FieldName = 'PRO_PRECO5'
      Origin = '"PRODUTOS"."PRO_PRECO5"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TABPRECO6: TIBStringField
      FieldName = 'PRO_TABPRECO6'
      Origin = '"PRODUTOS"."PRO_TABPRECO6"'
      Size = 50
    end
    object TBProdutosPRO_MARGEM6: TIBBCDField
      FieldName = 'PRO_MARGEM6'
      Origin = '"PRODUTOS"."PRO_MARGEM6"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_PRECO6: TIBBCDField
      FieldName = 'PRO_PRECO6'
      Origin = '"PRODUTOS"."PRO_PRECO6"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ATUALIZATABELA: TIBStringField
      FieldName = 'PRO_ATUALIZATABELA'
      Origin = '"PRODUTOS"."PRO_ATUALIZATABELA"'
      Size = 1
    end
    object TBProdutosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 1
    end
    object TBProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProdutosPRO_DTATUALIZACAO: TDateField
      FieldName = 'PRO_DTATUALIZACAO'
      Origin = '"PRODUTOS"."PRO_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProdutosPRO_USUARIO: TIBStringField
      FieldName = 'PRO_USUARIO'
      Origin = '"PRODUTOS"."PRO_USUARIO"'
    end
    object TBProdutosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = '"FAMILIAS"."FAM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProdutosFAM_DESCRICAO: TIBStringField
      FieldName = 'FAM_DESCRICAO'
      Origin = '"FAMILIAS"."FAM_DESCRICAO"'
      Size = 50
    end
    object TBProdutosGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = '"GRUPOS"."GRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProdutosGRU_DESCRICAO: TIBStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = '"GRUPOS"."GRU_DESCRICAO"'
      Size = 50
    end
    object TBProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"PRODUTOS"."PRO_TIPO"'
      Size = 1
    end
    object TBProdutosPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 3
    end
    object TBProdutosPRO_MARGEM: TIBBCDField
      FieldName = 'PRO_MARGEM'
      Origin = '"PRODUTOS"."PRO_MARGEM"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_REGISTROMS: TIBStringField
      FieldName = 'PRO_REGISTROMS'
      Origin = '"PRODUTOS"."PRO_REGISTROMS"'
    end
    object TBProdutosPRO_COMPOSTO: TIBStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = '"PRODUTOS"."PRO_COMPOSTO"'
      Size = 1
    end
    object TBProdutosPRO_DTULTCOMPRA: TDateField
      FieldName = 'PRO_DTULTCOMPRA'
      Origin = '"PRODUTOS"."PRO_DTULTCOMPRA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProdutosPRO_DTULTVENDA: TDateField
      FieldName = 'PRO_DTULTVENDA'
      Origin = '"PRODUTOS"."PRO_DTULTVENDA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProdutosPRO_INTERNET: TIBStringField
      FieldName = 'PRO_INTERNET'
      Origin = '"PRODUTOS"."PRO_INTERNET"'
      Size = 1
    end
    object TBProdutosPRO_OFERTA: TIBStringField
      FieldName = 'PRO_OFERTA'
      Origin = '"PRODUTOS"."PRO_OFERTA"'
      Size = 1
    end
    object TBProdutosPRO_ALIQPIS: TIBBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = '"PRODUTOS"."PRO_ALIQPIS"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQCOFINS: TIBBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINS"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = '"PRODUTOS"."PRO_CSTICMS"'
    end
    object TBProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
    end
    object TBProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = '"PRODUTOS"."PRO_CSTIPI"'
    end
    object TBProdutosPRO_CSTCOFINS: TIntegerField
      FieldName = 'PRO_CSTCOFINS'
      Origin = '"PRODUTOS"."PRO_CSTCOFINS"'
    end
    object TBProdutosPRO_ORIGEM: TIBStringField
      FieldName = 'PRO_ORIGEM'
      Origin = '"PRODUTOS"."PRO_ORIGEM"'
    end
    object TBProdutosPRO_MODICMS: TIBStringField
      FieldName = 'PRO_MODICMS'
      Origin = '"PRODUTOS"."PRO_MODICMS"'
      Size = 40
    end
    object TBProdutosPRO_MODICMSST: TIBStringField
      FieldName = 'PRO_MODICMSST'
      Origin = '"PRODUTOS"."PRO_MODICMSST"'
      Size = 40
    end
    object TBProdutosPRO_ALIQICMSST: TIBBCDField
      FieldName = 'PRO_ALIQICMSST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSST"'
      Precision = 18
      Size = 4
    end
    object TBProdutosICM_DESCRICAO: TIBStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = '"ICMS"."ICM_DESCRICAO"'
      Size = 90
    end
    object TBProdutosPIS_DESCRICAO: TIBStringField
      FieldName = 'PIS_DESCRICAO'
      Origin = '"PISCOFINS"."PIS_DESCRICAO"'
      Size = 90
    end
    object TBProdutosPIS_DESCRICAO1: TIBStringField
      FieldName = 'PIS_DESCRICAO1'
      Origin = '"PISCOFINS"."PIS_DESCRICAO"'
      Size = 90
    end
    object TBProdutosIPI_DESCRICAO: TIBStringField
      FieldName = 'IPI_DESCRICAO'
      Origin = '"IPI"."IPI_DESCRICAO"'
      Size = 90
    end
    object TBProdutosPRO_CSTISS: TIntegerField
      FieldName = 'PRO_CSTISS'
      Origin = '"PRODUTOS"."PRO_CSTISS"'
    end
    object TBProdutosISS_DESCRICAO: TIBStringField
      FieldName = 'ISS_DESCRICAO'
      Size = 50
    end
    object TBProdutosCLF_DESCRICAO: TIBStringField
      FieldName = 'CLF_DESCRICAO'
      Origin = '"CLASSFISCAL"."CLF_DESCRICAO"'
      Size = 50
    end
    object TBProdutosPRO_CLASSFISCAL: TIntegerField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
    end
    object TBProdutosPRO_ALIQPISST: TIBBCDField
      FieldName = 'PRO_ALIQPISST'
      Origin = '"PRODUTOS"."PRO_ALIQPISST"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQCOFINSST: TIBBCDField
      FieldName = 'PRO_ALIQCOFINSST'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINSST"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_ALIQICMSADICST: TIBBCDField
      FieldName = 'PRO_ALIQICMSADICST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSADICST"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
      Required = True
    end
    object TBProdutosPRO_PALAVRASCHAVE: TIBStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = '"PRODUTOS"."PRO_PALAVRASCHAVE"'
      Size = 90
    end
    object TBProdutosPRO_OBSERVACOES: TMemoField
      FieldName = 'PRO_OBSERVACOES'
      Origin = '"PRODUTOS"."PRO_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object TBProdutosPRO_COMPOEBASEICMS: TIBStringField
      FieldName = 'PRO_COMPOEBASEICMS'
      Origin = '"PRODUTOS"."PRO_COMPOEBASEICMS"'
      Size = 1
    end
    object TBProdutosPRO_FORNECEDOR: TIntegerField
      FieldName = 'PRO_FORNECEDOR'
      Origin = '"PRODUTOS"."PRO_FORNECEDOR"'
      Required = True
    end
    object TBProdutosPRO_PRECOCUSTOCOMP: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOCOMP'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOCOMP"'
      Precision = 18
      Size = 4
    end
    object TBProdutosPRO_TIPOITEM: TIBStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = '"PRODUTOS"."PRO_TIPOITEM"'
      Size = 30
    end
    object TBProdutosPRO_SUBSTITUICAOTRIB: TIBStringField
      FieldName = 'PRO_SUBSTITUICAOTRIB'
      Origin = '"PRODUTOS"."PRO_SUBSTITUICAOTRIB"'
      Size = 1
    end
    object TBProdutosPRO_ECFICMS: TIBStringField
      FieldName = 'PRO_ECFICMS'
      Origin = '"PRODUTOS"."PRO_ECFICMS"'
      Size = 10
    end
    object TBProdutosPRO_TOTALIZADORPARCIAL: TIBStringField
      FieldName = 'PRO_TOTALIZADORPARCIAL'
      Origin = '"PRODUTOS"."PRO_TOTALIZADORPARCIAL"'
      Size = 10
    end
  end
  object DSProdutos: TDataSource
    DataSet = TBProdutos
    Left = 864
    Top = 120
  end
  object TRProdutos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 864
    Top = 168
  end
  object TBProdutosComp: TIBDataSet
    Database = IBDatabase1
    Transaction = TRProdutosComp
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOSCOMP'
      'where'
      '  PRC_CODIGO = :OLD_PRC_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOSCOMP'
      
        '  (PRC_CODIGO, PRC_DTATUALIZACAO, PRC_DTCADASTRO, PRC_PRODUTO, P' +
        'RC_PRODUTOCOMP, '
      '   PRC_QUANTIDADE, PRC_USUARIO)'
      'values'
      
        '  (:PRC_CODIGO, :PRC_DTATUALIZACAO, :PRC_DTCADASTRO, :PRC_PRODUT' +
        'O, :PRC_PRODUTOCOMP, '
      '   :PRC_QUANTIDADE, :PRC_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PRC_CODIGO,'
      '  PRC_PRODUTO,'
      '  PRC_PRODUTOCOMP,'
      '  PRC_QUANTIDADE,'
      '  PRC_DTCADASTRO,'
      '  PRC_DTATUALIZACAO,'
      '  PRC_USUARIO'
      'from PRODUTOSCOMP '
      'where'
      '  PRC_CODIGO = :PRC_CODIGO')
    SelectSQL.Strings = (
      'select * from PRODUTOSCOMP'
      'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO'
      'where PRC_PRODUTO=:PRO_CODIGO'
      'order by PRC_CODIGO')
    ModifySQL.Strings = (
      'update PRODUTOSCOMP'
      'set'
      '  PRC_CODIGO = :PRC_CODIGO,'
      '  PRC_DTATUALIZACAO = :PRC_DTATUALIZACAO,'
      '  PRC_DTCADASTRO = :PRC_DTCADASTRO,'
      '  PRC_PRODUTO = :PRC_PRODUTO,'
      '  PRC_PRODUTOCOMP = :PRC_PRODUTOCOMP,'
      '  PRC_QUANTIDADE = :PRC_QUANTIDADE,'
      '  PRC_USUARIO = :PRC_USUARIO'
      'where'
      '  PRC_CODIGO = :OLD_PRC_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PRC_CODIGO'
    GeneratorField.Generator = 'GEN_PRODUTOSCOMP'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProdutos
    Left = 936
    Top = 72
    object TBProdutosCompPRC_CODIGO: TIntegerField
      FieldName = 'PRC_CODIGO'
      Origin = '"PRODUTOSCOMP"."PRC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosCompPRC_PRODUTO: TIntegerField
      FieldName = 'PRC_PRODUTO'
      Origin = '"PRODUTOSCOMP"."PRC_PRODUTO"'
      Required = True
    end
    object TBProdutosCompPRC_QUANTIDADE: TIBBCDField
      FieldName = 'PRC_QUANTIDADE'
      Origin = '"PRODUTOSCOMP"."PRC_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object TBProdutosCompPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 50
    end
    object TBProdutosCompPRC_DTCADASTRO: TDateField
      FieldName = 'PRC_DTCADASTRO'
      Origin = '"PRODUTOSCOMP"."PRC_DTCADASTRO"'
    end
    object TBProdutosCompPRC_DTATUALIZACAO: TDateField
      FieldName = 'PRC_DTATUALIZACAO'
      Origin = '"PRODUTOSCOMP"."PRC_DTATUALIZACAO"'
    end
    object TBProdutosCompPRC_USUARIO: TIBStringField
      FieldName = 'PRC_USUARIO'
      Origin = '"PRODUTOSCOMP"."PRC_USUARIO"'
    end
    object TBProdutosCompPRC_PRODUTOCOMP: TIntegerField
      FieldName = 'PRC_PRODUTOCOMP'
      Origin = '"PRODUTOSCOMP"."PRC_PRODUTOCOMP"'
      Required = True
    end
    object TBProdutosCompPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
  end
  object DSProdutosComp: TDataSource
    DataSet = TBProdutosComp
    Left = 936
    Top = 120
  end
  object TRProdutosComp: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 936
    Top = 168
  end
  object TBAlmoxarifados: TIBDataSet
    Database = IBDatabase1
    Transaction = TRAlmoxarifados
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALMOXARIFADOS'
      'where'
      '  ALM_CODIGO = :OLD_ALM_CODIGO')
    InsertSQL.Strings = (
      'insert into ALMOXARIFADOS'
      
        '  (ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, ALM_DTCADASTRO,' +
        ' ALM_STATUS, '
      '   ALM_USUARIO)'
      'values'
      
        '  (:ALM_CODIGO, :ALM_DESCRICAO, :ALM_DTATUALIZACAO, :ALM_DTCADAS' +
        'TRO, :ALM_STATUS, '
      '   :ALM_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ALM_CODIGO,'
      '  ALM_DESCRICAO,'
      '  ALM_DTCADASTRO,'
      '  ALM_DTATUALIZACAO,'
      '  ALM_USUARIO,'
      '  ALM_STATUS'
      'from ALMOXARIFADOS '
      'where'
      '  ALM_CODIGO = :ALM_CODIGO')
    SelectSQL.Strings = (
      'select * from ALMOXARIFADOS'
      'where ALM_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update ALMOXARIFADOS'
      'set'
      '  ALM_CODIGO = :ALM_CODIGO,'
      '  ALM_DESCRICAO = :ALM_DESCRICAO,'
      '  ALM_DTATUALIZACAO = :ALM_DTATUALIZACAO,'
      '  ALM_DTCADASTRO = :ALM_DTCADASTRO,'
      '  ALM_STATUS = :ALM_STATUS,'
      '  ALM_USUARIO = :ALM_USUARIO'
      'where'
      '  ALM_CODIGO = :OLD_ALM_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ALM_CODIGO'
    GeneratorField.Generator = 'GEN_ALMOXARIFADOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 664
    Top = 72
    object TBAlmoxarifadosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = '"ALMOXARIFADOS"."ALM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAlmoxarifadosALM_DESCRICAO: TIBStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = '"ALMOXARIFADOS"."ALM_DESCRICAO"'
      Size = 50
    end
    object TBAlmoxarifadosALM_DTCADASTRO: TDateField
      FieldName = 'ALM_DTCADASTRO'
      Origin = '"ALMOXARIFADOS"."ALM_DTCADASTRO"'
    end
    object TBAlmoxarifadosALM_DTATUALIZACAO: TDateField
      FieldName = 'ALM_DTATUALIZACAO'
      Origin = '"ALMOXARIFADOS"."ALM_DTATUALIZACAO"'
    end
    object TBAlmoxarifadosALM_USUARIO: TIBStringField
      FieldName = 'ALM_USUARIO'
      Origin = '"ALMOXARIFADOS"."ALM_USUARIO"'
    end
    object TBAlmoxarifadosALM_STATUS: TIBStringField
      FieldName = 'ALM_STATUS'
      Origin = '"ALMOXARIFADOS"."ALM_STATUS"'
      Size = 1
    end
  end
  object DSAlmoxarifados: TDataSource
    DataSet = TBAlmoxarifados
    Left = 664
    Top = 120
  end
  object TRAlmoxarifados: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 664
    Top = 168
  end
  object TBProdutosQtde: TIBDataSet
    Database = IBDatabase1
    Transaction = TRProdutosQtde
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOSQTDE'
      'where'
      '  PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO and'
      '  PRQ_PRODUTO = :OLD_PRQ_PRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTOSQTDE'
      '  (PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE)'
      'values'
      '  (:PRQ_ALMOXARIFADO, :PRQ_PRODUTO, :PRQ_QUANTIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  PRQ_ALMOXARIFADO,'
      '  PRQ_PRODUTO,'
      '  PRQ_QUANTIDADE'
      'from PRODUTOSQTDE '
      'where'
      '  PRQ_ALMOXARIFADO = :PRQ_ALMOXARIFADO and'
      '  PRQ_PRODUTO = :PRQ_PRODUTO')
    SelectSQL.Strings = (
      'select * from PRODUTOSQTDE'
      'left join ALMOXARIFADOS on PRQ_ALMOXARIFADO=ALM_CODIGO'
      'where PRQ_PRODUTO=:PRO_CODIGO and ALM_STATUS='#39'A'#39)
    ModifySQL.Strings = (
      'update PRODUTOSQTDE'
      'set'
      '  PRQ_ALMOXARIFADO = :PRQ_ALMOXARIFADO,'
      '  PRQ_PRODUTO = :PRQ_PRODUTO,'
      '  PRQ_QUANTIDADE = :PRQ_QUANTIDADE'
      'where'
      '  PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO and'
      '  PRQ_PRODUTO = :OLD_PRQ_PRODUTO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSProdutos
    Left = 1016
    Top = 72
    object TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField
      FieldName = 'PRQ_ALMOXARIFADO'
      Origin = '"PRODUTOSQTDE"."PRQ_ALMOXARIFADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosQtdePRQ_PRODUTO: TIntegerField
      FieldName = 'PRQ_PRODUTO'
      Origin = '"PRODUTOSQTDE"."PRQ_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosQtdePRQ_QUANTIDADE: TIBBCDField
      FieldName = 'PRQ_QUANTIDADE'
      Origin = '"PRODUTOSQTDE"."PRQ_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object TBProdutosQtdeALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = '"ALMOXARIFADOS"."ALM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProdutosQtdeALM_DESCRICAO: TIBStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = '"ALMOXARIFADOS"."ALM_DESCRICAO"'
      Size = 50
    end
  end
  object DSProdutosQtde: TDataSource
    DataSet = TBProdutosQtde
    Left = 1016
    Top = 120
  end
  object TRProdutosQtde: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1016
    Top = 168
  end
  object QYProdutosQtde: TIBQuery
    Database = IBDatabase1
    Transaction = TRProdutosQtde
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'delete from PRODUTOSQTDE where PRQ_PRODUTO=:codigo')
    Left = 1016
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object IBDatabaseInfo1: TIBDatabaseInfo
    Database = IBDatabase1
    Left = 112
    Top = 16
  end
  object ACBrECF: TACBrECF
    QuebraLinhaRodape = False
    Modelo = ecfSweda
    Porta = 'COM3'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    BloqueiaMouseTeclado = False
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    DecimaisPreco = 2
    MemoBobina = FormMain.BobinaMemo
    MemoParams.Strings = (
      '[Cabecalho]'
      
        'LIN000=<body style="border: none; background: #FFEDB9; scrollbar' +
        '-base-color:#FFEDB9; scrollbar-darkshadow-color:#FFEDB9; scrollb' +
        'ar-shadow-color:#FFEDB9; scrollbar-highlight-color:#FFEDB9; scro' +
        'llbar-3dlight-color:#FFEDB9; scrollbar-face-color:#FFEDB9; scrol' +
        'lbar-arrow-color:#000000;"><center><b>Runtime Sistemas Ltda. ME.' +
        '</b></center>'
      'LIN001=<center>Angelo Torinelli, 78  -  Vila Nova</center>'
      'LIN002=<center>Jaragu'#225' do Sul  -  SC  -  89259-200</center>'
      
        'LIN003=<center>CNPJ: 12.843.516/0001-87    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      
        'LIN005=<table width=100%><tr><td style="border-top: 1px dashed #' +
        '000000; font-size: 1px;">&nbsp;</td></tr></table>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO     DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      
        'LIN002=<table width=100%><tr><td style="border-top: 1px dashed #' +
        '000000; font-size: 1px;">&nbsp;</td></tr></table>'
      
        'MascaraItem=III CCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      
        'LIN000=<table width=100%><tr><td style="border-top: 1px dashed #' +
        '000000; font-size: 1px;">&nbsp;</td></tr></table>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Runtime Sistemas: <b><code>A' +
        'CBR</code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      
        'LIN003=<table width=100%><tr><td style="border-top: 1px dashed #' +
        '000000; font-size: 1px;">&nbsp;</td></tr></table>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=3'
      
        'HTML_Font=<font style="font-size: 12px; font-family: Courier New' +
        ';">')
    OnBobinaAdicionaLinhas = ACBrECFBobinaAdicionaLinhas
    Device.HandShake = hsDTR_DSR
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 3
    ConfigBarras.Altura = 10
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 184
    Top = 16
  end
  object ACBrPAF: TACBrPAF
    LinesBuffer = 1000
    Path = 'C:\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\'
    Left = 248
    Top = 16
  end
  object QYAux: TIBQuery
    Database = IBDatabase1
    Transaction = TRAux
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 32
    Top = 256
  end
  object TRAux: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 304
  end
  object TBReducoeszItens: TIBDataSet
    Database = IBDatabase1
    Transaction = TRReducoeszItens
    AfterDelete = TBReducoeszItensAfterDelete
    AfterInsert = TBReducoeszItensAfterInsert
    AfterPost = TBReducoeszItensAfterPost
    BeforePost = TBReducoeszItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REDUCOESZITENS'
      'where'
      '  RZI_CODIGO = :OLD_RZI_CODIGO')
    InsertSQL.Strings = (
      'insert into REDUCOESZITENS'
      
        '  (RZI_CODIGO, RZI_REDUCAOZ, RZI_TOTALIZADORPARCIAL, RZI_VALORAC' +
        'UMULADO)'
      'values'
      
        '  (:RZI_CODIGO, :RZI_REDUCAOZ, :RZI_TOTALIZADORPARCIAL, :RZI_VAL' +
        'ORACUMULADO)')
    RefreshSQL.Strings = (
      'Select '
      '  RZI_CODIGO,'
      '  RZI_REDUCAOZ,'
      '  RZI_TOTALIZADORPARCIAL,'
      '  RZI_VALORACUMULADO'
      'from REDUCOESZITENS '
      'where'
      '  RZI_CODIGO = :RZI_CODIGO')
    SelectSQL.Strings = (
      'select * from REDUCOESZITENS '
      'where RZI_REDUCAOZ=:RDZ_CODIGO')
    ModifySQL.Strings = (
      'update REDUCOESZITENS'
      'set'
      '  RZI_CODIGO = :RZI_CODIGO,'
      '  RZI_REDUCAOZ = :RZI_REDUCAOZ,'
      '  RZI_TOTALIZADORPARCIAL = :RZI_TOTALIZADORPARCIAL,'
      '  RZI_VALORACUMULADO = :RZI_VALORACUMULADO'
      'where'
      '  RZI_CODIGO = :OLD_RZI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'RZI_CODIGO'
    GeneratorField.Generator = 'GEN_REDUCOESZITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSReducoesz
    Left = 664
    Top = 296
    object TBReducoeszItensRZI_CODIGO: TIntegerField
      FieldName = 'RZI_CODIGO'
      Origin = '"REDUCOESZITENS"."RZI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBReducoeszItensRZI_REDUCAOZ: TIntegerField
      FieldName = 'RZI_REDUCAOZ'
      Origin = '"REDUCOESZITENS"."RZI_REDUCAOZ"'
      Required = True
    end
    object TBReducoeszItensRZI_TOTALIZADORPARCIAL: TIBStringField
      FieldName = 'RZI_TOTALIZADORPARCIAL'
      Origin = '"REDUCOESZITENS"."RZI_TOTALIZADORPARCIAL"'
      Size = 10
    end
    object TBReducoeszItensRZI_VALORACUMULADO: TIBBCDField
      FieldName = 'RZI_VALORACUMULADO'
      Origin = '"REDUCOESZITENS"."RZI_VALORACUMULADO"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSReducoeszItens: TDataSource
    DataSet = TBReducoeszItens
    Left = 664
    Top = 344
  end
  object TRReducoeszItens: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 664
    Top = 392
  end
  object TBReducoesz: TIBDataSet
    Database = IBDatabase1
    Transaction = TRReducoesz
    AfterDelete = TBReducoeszAfterDelete
    AfterInsert = TBReducoeszAfterInsert
    AfterPost = TBReducoeszAfterPost
    BeforePost = TBReducoeszBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REDUCOESZ'
      'where'
      '  RDZ_CODIGO = :OLD_RDZ_CODIGO')
    InsertSQL.Strings = (
      'insert into REDUCOESZ'
      
        '  (RDZ_CODIGO, RDZ_COO, RDZ_CRO, RDZ_CRZ, RDZ_DTEMISSAO, RDZ_DTM' +
        'OVIMENTO, '
      
        '   RDZ_GRANDETOTAL, RDZ_HREMISSAO, RDZ_SINCRONIZADO, RDZ_TERMINA' +
        'L, RDZ_USUARIO, '
      '   RDZ_VENDABRUTA)'
      'values'
      
        '  (:RDZ_CODIGO, :RDZ_COO, :RDZ_CRO, :RDZ_CRZ, :RDZ_DTEMISSAO, :R' +
        'DZ_DTMOVIMENTO, '
      
        '   :RDZ_GRANDETOTAL, :RDZ_HREMISSAO, :RDZ_SINCRONIZADO, :RDZ_TER' +
        'MINAL, '
      '   :RDZ_USUARIO, :RDZ_VENDABRUTA)')
    RefreshSQL.Strings = (
      'Select '
      '  RDZ_CODIGO,'
      '  RDZ_TERMINAL,'
      '  RDZ_CRZ,'
      '  RDZ_COO,'
      '  RDZ_CRO,'
      '  RDZ_DTMOVIMENTO,'
      '  RDZ_DTEMISSAO,'
      '  RDZ_HREMISSAO,'
      '  RDZ_VENDABRUTA,'
      '  RDZ_GRANDETOTAL,'
      '  RDZ_SINCRONIZADO,'
      '  RDZ_USUARIO'
      'from REDUCOESZ '
      'where'
      '  RDZ_CODIGO = :RDZ_CODIGO')
    SelectSQL.Strings = (
      'select * from REDUCOESZ'
      'where RDZ_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update REDUCOESZ'
      'set'
      '  RDZ_CODIGO = :RDZ_CODIGO,'
      '  RDZ_COO = :RDZ_COO,'
      '  RDZ_CRO = :RDZ_CRO,'
      '  RDZ_CRZ = :RDZ_CRZ,'
      '  RDZ_DTEMISSAO = :RDZ_DTEMISSAO,'
      '  RDZ_DTMOVIMENTO = :RDZ_DTMOVIMENTO,'
      '  RDZ_GRANDETOTAL = :RDZ_GRANDETOTAL,'
      '  RDZ_HREMISSAO = :RDZ_HREMISSAO,'
      '  RDZ_SINCRONIZADO = :RDZ_SINCRONIZADO,'
      '  RDZ_TERMINAL = :RDZ_TERMINAL,'
      '  RDZ_USUARIO = :RDZ_USUARIO,'
      '  RDZ_VENDABRUTA = :RDZ_VENDABRUTA'
      'where'
      '  RDZ_CODIGO = :OLD_RDZ_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'RDZ_CODIGO'
    GeneratorField.Generator = 'GEN_REDUCOESZ'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 568
    Top = 296
    object TBReducoeszRDZ_CODIGO: TIntegerField
      FieldName = 'RDZ_CODIGO'
      Origin = '"REDUCOESZ"."RDZ_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBReducoeszRDZ_TERMINAL: TIntegerField
      FieldName = 'RDZ_TERMINAL'
      Origin = '"REDUCOESZ"."RDZ_TERMINAL"'
      Required = True
    end
    object TBReducoeszRDZ_CRZ: TIntegerField
      FieldName = 'RDZ_CRZ'
      Origin = '"REDUCOESZ"."RDZ_CRZ"'
    end
    object TBReducoeszRDZ_COO: TIntegerField
      FieldName = 'RDZ_COO'
      Origin = '"REDUCOESZ"."RDZ_COO"'
    end
    object TBReducoeszRDZ_CRO: TIntegerField
      FieldName = 'RDZ_CRO'
      Origin = '"REDUCOESZ"."RDZ_CRO"'
    end
    object TBReducoeszRDZ_DTMOVIMENTO: TDateField
      FieldName = 'RDZ_DTMOVIMENTO'
      Origin = '"REDUCOESZ"."RDZ_DTMOVIMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBReducoeszRDZ_DTEMISSAO: TDateField
      FieldName = 'RDZ_DTEMISSAO'
      Origin = '"REDUCOESZ"."RDZ_DTEMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBReducoeszRDZ_HREMISSAO: TIBStringField
      FieldName = 'RDZ_HREMISSAO'
      Origin = '"REDUCOESZ"."RDZ_HREMISSAO"'
      Size = 8
    end
    object TBReducoeszRDZ_VENDABRUTA: TIBBCDField
      FieldName = 'RDZ_VENDABRUTA'
      Origin = '"REDUCOESZ"."RDZ_VENDABRUTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBReducoeszRDZ_GRANDETOTAL: TIBBCDField
      FieldName = 'RDZ_GRANDETOTAL'
      Origin = '"REDUCOESZ"."RDZ_GRANDETOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBReducoeszRDZ_SINCRONIZADO: TIBStringField
      FieldName = 'RDZ_SINCRONIZADO'
      Origin = '"REDUCOESZ"."RDZ_SINCRONIZADO"'
      Size = 1
    end
    object TBReducoeszRDZ_USUARIO: TIBStringField
      FieldName = 'RDZ_USUARIO'
      Origin = '"REDUCOESZ"."RDZ_USUARIO"'
    end
  end
  object TBSintegra60m: TIBDataSet
    Database = IBDatabase1
    Transaction = TRSintegra60m
    AfterDelete = TBSintegra60mAfterDelete
    AfterInsert = TBSintegra60mAfterInsert
    AfterPost = TBSintegra60mAfterPost
    BeforePost = TBSintegra60mBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SINTEGRA60M'
      'where'
      '  SIN_CODIGO = :OLD_SIN_CODIGO')
    InsertSQL.Strings = (
      'insert into SINTEGRA60M'
      
        '  (SIN_CODIGO, SIN_COOFINAL, SIN_COOINICIAL, SIN_CRO, SIN_CRZ, S' +
        'IN_DTEMISSAO, '
      
        '   SIN_ECFNUMERO, SIN_ECFSERIAL, SIN_GRANTETOTAL, SIN_MODELODOCT' +
        'O, SIN_SINCRONIZADO, '
      '   SIN_USUARIO, SIN_VENDABRUTA)'
      'values'
      
        '  (:SIN_CODIGO, :SIN_COOFINAL, :SIN_COOINICIAL, :SIN_CRO, :SIN_C' +
        'RZ, :SIN_DTEMISSAO, '
      
        '   :SIN_ECFNUMERO, :SIN_ECFSERIAL, :SIN_GRANTETOTAL, :SIN_MODELO' +
        'DOCTO, '
      '   :SIN_SINCRONIZADO, :SIN_USUARIO, :SIN_VENDABRUTA)')
    RefreshSQL.Strings = (
      'Select '
      '  SIN_CODIGO,'
      '  SIN_DTEMISSAO,'
      '  SIN_ECFSERIAL,'
      '  SIN_ECFNUMERO,'
      '  SIN_MODELODOCTO,'
      '  SIN_COOINICIAL,'
      '  SIN_COOFINAL,'
      '  SIN_CRZ,'
      '  SIN_CRO,'
      '  SIN_VENDABRUTA,'
      '  SIN_GRANTETOTAL,'
      '  SIN_SINCRONIZADO,'
      '  SIN_USUARIO'
      'from SINTEGRA60M '
      'where'
      '  SIN_CODIGO = :SIN_CODIGO')
    SelectSQL.Strings = (
      'select * from SINTEGRA60M'
      'where SIN_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update SINTEGRA60M'
      'set'
      '  SIN_CODIGO = :SIN_CODIGO,'
      '  SIN_COOFINAL = :SIN_COOFINAL,'
      '  SIN_COOINICIAL = :SIN_COOINICIAL,'
      '  SIN_CRO = :SIN_CRO,'
      '  SIN_CRZ = :SIN_CRZ,'
      '  SIN_DTEMISSAO = :SIN_DTEMISSAO,'
      '  SIN_ECFNUMERO = :SIN_ECFNUMERO,'
      '  SIN_ECFSERIAL = :SIN_ECFSERIAL,'
      '  SIN_GRANTETOTAL = :SIN_GRANTETOTAL,'
      '  SIN_MODELODOCTO = :SIN_MODELODOCTO,'
      '  SIN_SINCRONIZADO = :SIN_SINCRONIZADO,'
      '  SIN_USUARIO = :SIN_USUARIO,'
      '  SIN_VENDABRUTA = :SIN_VENDABRUTA'
      'where'
      '  SIN_CODIGO = :OLD_SIN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'SIN_CODIGO'
    GeneratorField.Generator = 'GEN_SINTEGRA'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 760
    Top = 296
    object TBSintegra60mSIN_CODIGO: TIntegerField
      FieldName = 'SIN_CODIGO'
      Origin = '"SINTEGRA60M"."SIN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBSintegra60mSIN_DTEMISSAO: TDateField
      FieldName = 'SIN_DTEMISSAO'
      Origin = '"SINTEGRA60M"."SIN_DTEMISSAO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSintegra60mSIN_ECFSERIAL: TIBStringField
      FieldName = 'SIN_ECFSERIAL'
      Origin = '"SINTEGRA60M"."SIN_ECFSERIAL"'
    end
    object TBSintegra60mSIN_ECFNUMERO: TIntegerField
      FieldName = 'SIN_ECFNUMERO'
      Origin = '"SINTEGRA60M"."SIN_ECFNUMERO"'
    end
    object TBSintegra60mSIN_MODELODOCTO: TIBStringField
      FieldName = 'SIN_MODELODOCTO'
      Origin = '"SINTEGRA60M"."SIN_MODELODOCTO"'
      Size = 2
    end
    object TBSintegra60mSIN_COOINICIAL: TIntegerField
      FieldName = 'SIN_COOINICIAL'
      Origin = '"SINTEGRA60M"."SIN_COOINICIAL"'
    end
    object TBSintegra60mSIN_COOFINAL: TIntegerField
      FieldName = 'SIN_COOFINAL'
      Origin = '"SINTEGRA60M"."SIN_COOFINAL"'
    end
    object TBSintegra60mSIN_CRZ: TIntegerField
      FieldName = 'SIN_CRZ'
      Origin = '"SINTEGRA60M"."SIN_CRZ"'
    end
    object TBSintegra60mSIN_CRO: TIntegerField
      FieldName = 'SIN_CRO'
      Origin = '"SINTEGRA60M"."SIN_CRO"'
    end
    object TBSintegra60mSIN_VENDABRUTA: TIBBCDField
      FieldName = 'SIN_VENDABRUTA'
      Origin = '"SINTEGRA60M"."SIN_VENDABRUTA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBSintegra60mSIN_GRANTETOTAL: TIBBCDField
      FieldName = 'SIN_GRANTETOTAL'
      Origin = '"SINTEGRA60M"."SIN_GRANTETOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBSintegra60mSIN_SINCRONIZADO: TIBStringField
      FieldName = 'SIN_SINCRONIZADO'
      Origin = '"SINTEGRA60M"."SIN_SINCRONIZADO"'
      Size = 1
    end
    object TBSintegra60mSIN_USUARIO: TIBStringField
      FieldName = 'SIN_USUARIO'
      Origin = '"SINTEGRA60M"."SIN_USUARIO"'
    end
  end
  object TBSintegra60a: TIBDataSet
    Database = IBDatabase1
    Transaction = TRSintegra60a
    AfterDelete = TBSintegra60aAfterDelete
    AfterInsert = TBSintegra60aAfterInsert
    AfterPost = TBSintegra60aAfterPost
    BeforePost = TBSintegra60aBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SINTEGRA60A'
      'where'
      '  SII_CODIGO = :OLD_SII_CODIGO')
    InsertSQL.Strings = (
      'insert into SINTEGRA60A'
      
        '  (SII_CODIGO, SII_SINTEGRA60M, SII_SITUACAOTRIBUTARIA, SII_VALO' +
        'R)'
      'values'
      
        '  (:SII_CODIGO, :SII_SINTEGRA60M, :SII_SITUACAOTRIBUTARIA, :SII_' +
        'VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  SII_CODIGO,'
      '  SII_SINTEGRA60M,'
      '  SII_SITUACAOTRIBUTARIA,'
      '  SII_VALOR'
      'from SINTEGRA60A '
      'where'
      '  SII_CODIGO = :SII_CODIGO')
    SelectSQL.Strings = (
      'select * from SINTEGRA60A'
      'where SII_SINTEGRA60M=:SIN_CODIGO')
    ModifySQL.Strings = (
      'update SINTEGRA60A'
      'set'
      '  SII_CODIGO = :SII_CODIGO,'
      '  SII_SINTEGRA60M = :SII_SINTEGRA60M,'
      '  SII_SITUACAOTRIBUTARIA = :SII_SITUACAOTRIBUTARIA,'
      '  SII_VALOR = :SII_VALOR'
      'where'
      '  SII_CODIGO = :OLD_SII_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'SII_CODIGO'
    GeneratorField.Generator = 'GEN_SINTEGRAITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSSintegra60m
    Left = 848
    Top = 296
    object TBSintegra60aSII_CODIGO: TIntegerField
      FieldName = 'SII_CODIGO'
      Origin = '"SINTEGRA60A"."SII_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBSintegra60aSII_SINTEGRA60M: TIntegerField
      FieldName = 'SII_SINTEGRA60M'
      Origin = '"SINTEGRA60A"."SII_SINTEGRA60M"'
      Required = True
    end
    object TBSintegra60aSII_SITUACAOTRIBUTARIA: TIBStringField
      FieldName = 'SII_SITUACAOTRIBUTARIA'
      Origin = '"SINTEGRA60A"."SII_SITUACAOTRIBUTARIA"'
      Size = 10
    end
    object TBSintegra60aSII_VALOR: TIBBCDField
      FieldName = 'SII_VALOR'
      Origin = '"SINTEGRA60A"."SII_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSReducoesz: TDataSource
    DataSet = TBReducoesz
    Left = 568
    Top = 344
  end
  object TRReducoesz: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 568
    Top = 392
  end
  object DSSintegra60m: TDataSource
    DataSet = TBSintegra60m
    Left = 760
    Top = 344
  end
  object TRSintegra60m: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 760
    Top = 392
  end
  object TRSintegra60a: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 848
    Top = 392
  end
  object DSSintegra60a: TDataSource
    DataSet = TBSintegra60a
    Left = 848
    Top = 344
  end
  object TBTerminais: TIBDataSet
    Database = IBDatabase1
    Transaction = TRTerminais
    AfterDelete = TBTerminaisAfterDelete
    AfterPost = TBTerminaisAfterPost
    BeforePost = TBTerminaisBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TERMINAIS'
      'where'
      '  TER_CODIGO = :OLD_TER_CODIGO')
    InsertSQL.Strings = (
      'insert into TERMINAIS'
      
        '  (TER_CODIGO, TER_DESCRICAO, TER_DTATUALIZACAO, TER_DTCADASTRO,' +
        ' TER_ECFCRENAMFD, '
      
        '   TER_ECFDOCTO, TER_ECFIDENTIFICACAO, TER_ECFINTERVALO, TER_ECF' +
        'LE, TER_ECFLEF, '
      
        '   TER_ECFMARCA, TER_ECFMC, TER_ECFMD, TER_ECFMFD, TER_ECFMODELO' +
        ', TER_ECFMODELOACBR, '
      
        '   TER_ECFSERIE, TER_ECFTIMEOUT, TER_ECFTIPO, TER_ECFVERSAO, TER' +
        '_ECFVR, '
      
        '   TER_INDICEDAV, TER_PORTABALANCA, TER_PORTAECF, TER_PORTAPINPA' +
        'D, TER_SINCRONIZADO, '
      
        '   TER_STATUS, TER_TEFIP, TER_TEFNUMEROVIAS, TER_TEFTEMPOESPERA,' +
        ' TER_TEFTEMPOESPERASTS, '
      '   TER_TEFTIPO, TER_TEFTIPOGP, TER_USUARIO)'
      'values'
      
        '  (:TER_CODIGO, :TER_DESCRICAO, :TER_DTATUALIZACAO, :TER_DTCADAS' +
        'TRO, :TER_ECFCRENAMFD, '
      
        '   :TER_ECFDOCTO, :TER_ECFIDENTIFICACAO, :TER_ECFINTERVALO, :TER' +
        '_ECFLE, '
      
        '   :TER_ECFLEF, :TER_ECFMARCA, :TER_ECFMC, :TER_ECFMD, :TER_ECFM' +
        'FD, :TER_ECFMODELO, '
      
        '   :TER_ECFMODELOACBR, :TER_ECFSERIE, :TER_ECFTIMEOUT, :TER_ECFT' +
        'IPO, :TER_ECFVERSAO, '
      
        '   :TER_ECFVR, :TER_INDICEDAV, :TER_PORTABALANCA, :TER_PORTAECF,' +
        ' :TER_PORTAPINPAD, '
      
        '   :TER_SINCRONIZADO, :TER_STATUS, :TER_TEFIP, :TER_TEFNUMEROVIA' +
        'S, :TER_TEFTEMPOESPERA, '
      
        '   :TER_TEFTEMPOESPERASTS, :TER_TEFTIPO, :TER_TEFTIPOGP, :TER_US' +
        'UARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  TER_CODIGO,'
      '  TER_DESCRICAO,'
      '  TER_DTCADASTRO,'
      '  TER_PORTAECF,'
      '  TER_PORTAPINPAD,'
      '  TER_PORTABALANCA,'
      '  TER_TEFTIPO,'
      '  TER_TEFTIPOGP,'
      '  TER_TEFTEMPOESPERA,'
      '  TER_TEFTEMPOESPERASTS,'
      '  TER_TEFNUMEROVIAS,'
      '  TER_TEFIP,'
      '  TER_ECFTIMEOUT,'
      '  TER_ECFINTERVALO,'
      '  TER_ECFSERIE,'
      '  TER_ECFIDENTIFICACAO,'
      '  TER_ECFMARCA,'
      '  TER_ECFMODELO,'
      '  TER_ECFMODELOACBR,'
      '  TER_ECFVERSAO,'
      '  TER_ECFTIPO,'
      '  TER_ECFMC,'
      '  TER_ECFMD,'
      '  TER_ECFVR,'
      '  TER_ECFLE,'
      '  TER_ECFLEF,'
      '  TER_ECFMFD,'
      '  TER_ECFCRENAMFD,'
      '  TER_ECFDOCTO,'
      '  TER_DTATUALIZACAO,'
      '  TER_USUARIO,'
      '  TER_STATUS,'
      '  TER_SINCRONIZADO,'
      '  TER_INDICEDAV'
      'from TERMINAIS '
      'where'
      '  TER_CODIGO = :TER_CODIGO')
    SelectSQL.Strings = (
      'select * from TERMINAIS'
      'left join ALMOXARIFADOS on TER_ALMOXARIFADO=ALM_CODIGO'
      'where TER_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update TERMINAIS'
      'set'
      '  TER_CODIGO = :TER_CODIGO,'
      '  TER_DESCRICAO = :TER_DESCRICAO,'
      '  TER_DTATUALIZACAO = :TER_DTATUALIZACAO,'
      '  TER_DTCADASTRO = :TER_DTCADASTRO,'
      '  TER_ECFCRENAMFD = :TER_ECFCRENAMFD,'
      '  TER_ECFDOCTO = :TER_ECFDOCTO,'
      '  TER_ECFIDENTIFICACAO = :TER_ECFIDENTIFICACAO,'
      '  TER_ECFINTERVALO = :TER_ECFINTERVALO,'
      '  TER_ECFLE = :TER_ECFLE,'
      '  TER_ECFLEF = :TER_ECFLEF,'
      '  TER_ECFMARCA = :TER_ECFMARCA,'
      '  TER_ECFMC = :TER_ECFMC,'
      '  TER_ECFMD = :TER_ECFMD,'
      '  TER_ECFMFD = :TER_ECFMFD,'
      '  TER_ECFMODELO = :TER_ECFMODELO,'
      '  TER_ECFMODELOACBR = :TER_ECFMODELOACBR,'
      '  TER_ECFSERIE = :TER_ECFSERIE,'
      '  TER_ECFTIMEOUT = :TER_ECFTIMEOUT,'
      '  TER_ECFTIPO = :TER_ECFTIPO,'
      '  TER_ECFVERSAO = :TER_ECFVERSAO,'
      '  TER_ECFVR = :TER_ECFVR,'
      '  TER_INDICEDAV = :TER_INDICEDAV,'
      '  TER_PORTABALANCA = :TER_PORTABALANCA,'
      '  TER_PORTAECF = :TER_PORTAECF,'
      '  TER_PORTAPINPAD = :TER_PORTAPINPAD,'
      '  TER_SINCRONIZADO = :TER_SINCRONIZADO,'
      '  TER_STATUS = :TER_STATUS,'
      '  TER_TEFIP = :TER_TEFIP,'
      '  TER_TEFNUMEROVIAS = :TER_TEFNUMEROVIAS,'
      '  TER_TEFTEMPOESPERA = :TER_TEFTEMPOESPERA,'
      '  TER_TEFTEMPOESPERASTS = :TER_TEFTEMPOESPERASTS,'
      '  TER_TEFTIPO = :TER_TEFTIPO,'
      '  TER_TEFTIPOGP = :TER_TEFTIPOGP,'
      '  TER_USUARIO = :TER_USUARIO'
      'where'
      '  TER_CODIGO = :OLD_TER_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'TER_CODIGO'
    GeneratorField.Generator = 'GEN_TERMINAIS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 488
    Top = 296
    object TBTerminaisTER_ALMOXARIFADO: TIntegerField
      FieldName = 'TER_ALMOXARIFADO'
      Origin = '"TERMINAIS"."TER_ALMOXARIFADO"'
    end
    object TBTerminaisTER_CODIGO: TIntegerField
      FieldName = 'TER_CODIGO'
      Origin = '"TERMINAIS"."TER_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBTerminaisTER_DESCRICAO: TIBStringField
      FieldName = 'TER_DESCRICAO'
      Origin = '"TERMINAIS"."TER_DESCRICAO"'
      Size = 50
    end
    object TBTerminaisTER_DTATUALIZACAO: TDateField
      FieldName = 'TER_DTATUALIZACAO'
      Origin = '"TERMINAIS"."TER_DTATUALIZACAO"'
    end
    object TBTerminaisTER_DTCADASTRO: TDateField
      FieldName = 'TER_DTCADASTRO'
      Origin = '"TERMINAIS"."TER_DTCADASTRO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTerminaisTER_ECFCRENAMFD: TIBStringField
      FieldName = 'TER_ECFCRENAMFD'
      Origin = '"TERMINAIS"."TER_ECFCRENAMFD"'
      Size = 1
    end
    object TBTerminaisTER_ECFDOCTO: TIBStringField
      FieldName = 'TER_ECFDOCTO'
      Origin = '"TERMINAIS"."TER_ECFDOCTO"'
      Size = 50
    end
    object TBTerminaisTER_ECFIDENTIFICACAO: TIBStringField
      FieldName = 'TER_ECFIDENTIFICACAO'
      Origin = '"TERMINAIS"."TER_ECFIDENTIFICACAO"'
      Size = 255
    end
    object TBTerminaisTER_ECFINTERVALO: TIntegerField
      FieldName = 'TER_ECFINTERVALO'
      Origin = '"TERMINAIS"."TER_ECFINTERVALO"'
    end
    object TBTerminaisTER_ECFLE: TIBStringField
      FieldName = 'TER_ECFLE'
      Origin = '"TERMINAIS"."TER_ECFLE"'
      Size = 1
    end
    object TBTerminaisTER_ECFLEF: TIBStringField
      FieldName = 'TER_ECFLEF'
      Origin = '"TERMINAIS"."TER_ECFLEF"'
      Size = 1
    end
    object TBTerminaisTER_ECFMARCA: TIBStringField
      FieldName = 'TER_ECFMARCA'
      Origin = '"TERMINAIS"."TER_ECFMARCA"'
      Size = 40
    end
    object TBTerminaisTER_ECFMC: TIBStringField
      FieldName = 'TER_ECFMC'
      Origin = '"TERMINAIS"."TER_ECFMC"'
      Size = 2
    end
    object TBTerminaisTER_ECFMD: TIBStringField
      FieldName = 'TER_ECFMD'
      Origin = '"TERMINAIS"."TER_ECFMD"'
      Size = 2
    end
    object TBTerminaisTER_ECFMFD: TIBStringField
      FieldName = 'TER_ECFMFD'
      Origin = '"TERMINAIS"."TER_ECFMFD"'
      Size = 1
    end
    object TBTerminaisTER_ECFMODELO: TIBStringField
      FieldName = 'TER_ECFMODELO'
      Origin = '"TERMINAIS"."TER_ECFMODELO"'
      Size = 40
    end
    object TBTerminaisTER_ECFMODELOACBR: TIBStringField
      FieldName = 'TER_ECFMODELOACBR'
      Origin = '"TERMINAIS"."TER_ECFMODELOACBR"'
      Size = 40
    end
    object TBTerminaisTER_ECFSERIE: TIBStringField
      FieldName = 'TER_ECFSERIE'
      Origin = '"TERMINAIS"."TER_ECFSERIE"'
    end
    object TBTerminaisTER_ECFTIPO: TIBStringField
      FieldName = 'TER_ECFTIPO'
      Origin = '"TERMINAIS"."TER_ECFTIPO"'
      Size = 10
    end
    object TBTerminaisTER_ECFTIMEOUT: TIntegerField
      FieldName = 'TER_ECFTIMEOUT'
      Origin = '"TERMINAIS"."TER_ECFTIMEOUT"'
    end
    object TBTerminaisTER_ECFVERSAO: TIBStringField
      FieldName = 'TER_ECFVERSAO'
      Origin = '"TERMINAIS"."TER_ECFVERSAO"'
      Size = 10
    end
    object TBTerminaisTER_ECFVR: TIBStringField
      FieldName = 'TER_ECFVR'
      Origin = '"TERMINAIS"."TER_ECFVR"'
      Size = 2
    end
    object TBTerminaisTER_INDICEDAV: TIntegerField
      FieldName = 'TER_INDICEDAV'
      Origin = '"TERMINAIS"."TER_INDICEDAV"'
    end
    object TBTerminaisTER_PORTABALANCA: TIBStringField
      FieldName = 'TER_PORTABALANCA'
      Origin = '"TERMINAIS"."TER_PORTABALANCA"'
      Size = 10
    end
    object TBTerminaisTER_PORTAECF: TIBStringField
      FieldName = 'TER_PORTAECF'
      Origin = '"TERMINAIS"."TER_PORTAECF"'
      Size = 10
    end
    object TBTerminaisTER_PORTAPINPAD: TIBStringField
      FieldName = 'TER_PORTAPINPAD'
      Origin = '"TERMINAIS"."TER_PORTAPINPAD"'
      Size = 10
    end
    object TBTerminaisTER_SINCRONIZADO: TIBStringField
      FieldName = 'TER_SINCRONIZADO'
      Origin = '"TERMINAIS"."TER_SINCRONIZADO"'
      Size = 1
    end
    object TBTerminaisTER_STATUS: TIBStringField
      FieldName = 'TER_STATUS'
      Origin = '"TERMINAIS"."TER_STATUS"'
      Size = 1
    end
    object TBTerminaisTER_TEFIP: TIBStringField
      FieldName = 'TER_TEFIP'
      Origin = '"TERMINAIS"."TER_TEFIP"'
      Size = 15
    end
    object TBTerminaisTER_TEFNUMEROVIAS: TIntegerField
      FieldName = 'TER_TEFNUMEROVIAS'
      Origin = '"TERMINAIS"."TER_TEFNUMEROVIAS"'
    end
    object TBTerminaisTER_TEFTEMPOESPERA: TIntegerField
      FieldName = 'TER_TEFTEMPOESPERA'
      Origin = '"TERMINAIS"."TER_TEFTEMPOESPERA"'
    end
    object TBTerminaisTER_TEFTEMPOESPERASTS: TIntegerField
      FieldName = 'TER_TEFTEMPOESPERASTS'
      Origin = '"TERMINAIS"."TER_TEFTEMPOESPERASTS"'
    end
    object TBTerminaisTER_TEFTIPO: TIBStringField
      FieldName = 'TER_TEFTIPO'
      Origin = '"TERMINAIS"."TER_TEFTIPO"'
      Size = 10
    end
    object TBTerminaisTER_TEFTIPOGP: TIntegerField
      FieldName = 'TER_TEFTIPOGP'
      Origin = '"TERMINAIS"."TER_TEFTIPOGP"'
    end
    object TBTerminaisTER_USUARIO: TIBStringField
      FieldName = 'TER_USUARIO'
      Origin = '"TERMINAIS"."TER_USUARIO"'
    end
    object TBTerminaisALM_DESCRICAO: TIBStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = '"ALMOXARIFADOS"."ALM_DESCRICAO"'
      Size = 50
    end
  end
  object DSTerminais: TDataSource
    DataSet = TBTerminais
    Left = 488
    Top = 344
  end
  object TRTerminais: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 488
    Top = 392
  end
  object QYAux2: TIBQuery
    Database = IBDatabase1
    Transaction = TRAux2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 88
    Top = 256
  end
  object TRAux2: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 88
    Top = 304
  end
  object TBMovimentos: TIBDataSet
    Database = IBDatabase1
    Transaction = TRMovimentos
    AfterInsert = TBMovimentosAfterInsert
    AfterPost = TBMovimentosAfterPost
    BeforePost = TBMovimentosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MOVIMENTOS'
      'where'
      '  MOV_CODIGO = :OLD_MOV_CODIGO')
    InsertSQL.Strings = (
      'insert into MOVIMENTOS'
      
        '  (MOV_CODIGO, MOV_DTABERTURA, MOV_DTATUALIZACAO, MOV_DTFECHAMEN' +
        'TO, MOV_HRABERTURA, '
      
        '   MOV_HRFECHAMENTO, MOV_SINCRONIZADO, MOV_STATUS, MOV_TERMINAL,' +
        ' MOV_TOTALACRESCIMO, '
      
        '   MOV_TOTALCANCELADO, MOV_TOTALDESCONTO, MOV_TOTALFINAL, MOV_TO' +
        'TALNAOFISCAL, '
      
        '   MOV_TOTALRECEBIDO, MOV_TOTALSANGRIA, MOV_TOTALSUPRIMENTO, MOV' +
        '_TOTALTROCO, '
      '   MOV_TOTALVENDA, MOV_USUARIO)'
      'values'
      
        '  (:MOV_CODIGO, :MOV_DTABERTURA, :MOV_DTATUALIZACAO, :MOV_DTFECH' +
        'AMENTO, '
      
        '   :MOV_HRABERTURA, :MOV_HRFECHAMENTO, :MOV_SINCRONIZADO, :MOV_S' +
        'TATUS, '
      
        '   :MOV_TERMINAL, :MOV_TOTALACRESCIMO, :MOV_TOTALCANCELADO, :MOV' +
        '_TOTALDESCONTO, '
      
        '   :MOV_TOTALFINAL, :MOV_TOTALNAOFISCAL, :MOV_TOTALRECEBIDO, :MO' +
        'V_TOTALSANGRIA, '
      
        '   :MOV_TOTALSUPRIMENTO, :MOV_TOTALTROCO, :MOV_TOTALVENDA, :MOV_' +
        'USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  MOV_CODIGO,'
      '  MOV_TERMINAL,'
      '  MOV_DTABERTURA,'
      '  MOV_HRABERTURA,'
      '  MOV_DTFECHAMENTO,'
      '  MOV_HRFECHAMENTO,'
      '  MOV_TOTALSUPRIMENTO,'
      '  MOV_TOTALSANGRIA,'
      '  MOV_TOTALNAOFISCAL,'
      '  MOV_TOTALVENDA,'
      '  MOV_TOTALDESCONTO,'
      '  MOV_TOTALACRESCIMO,'
      '  MOV_TOTALFINAL,'
      '  MOV_TOTALRECEBIDO,'
      '  MOV_TOTALTROCO,'
      '  MOV_TOTALCANCELADO,'
      '  MOV_STATUS,'
      '  MOV_SINCRONIZADO,'
      '  MOV_USUARIO,'
      '  MOV_DTATUALIZACAO'
      'from MOVIMENTOS '
      'where'
      '  MOV_CODIGO = :MOV_CODIGO')
    SelectSQL.Strings = (
      'select * from MOVIMENTOS'
      'where MOV_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update MOVIMENTOS'
      'set'
      '  MOV_CODIGO = :MOV_CODIGO,'
      '  MOV_DTABERTURA = :MOV_DTABERTURA,'
      '  MOV_DTATUALIZACAO = :MOV_DTATUALIZACAO,'
      '  MOV_DTFECHAMENTO = :MOV_DTFECHAMENTO,'
      '  MOV_HRABERTURA = :MOV_HRABERTURA,'
      '  MOV_HRFECHAMENTO = :MOV_HRFECHAMENTO,'
      '  MOV_SINCRONIZADO = :MOV_SINCRONIZADO,'
      '  MOV_STATUS = :MOV_STATUS,'
      '  MOV_TERMINAL = :MOV_TERMINAL,'
      '  MOV_TOTALACRESCIMO = :MOV_TOTALACRESCIMO,'
      '  MOV_TOTALCANCELADO = :MOV_TOTALCANCELADO,'
      '  MOV_TOTALDESCONTO = :MOV_TOTALDESCONTO,'
      '  MOV_TOTALFINAL = :MOV_TOTALFINAL,'
      '  MOV_TOTALNAOFISCAL = :MOV_TOTALNAOFISCAL,'
      '  MOV_TOTALRECEBIDO = :MOV_TOTALRECEBIDO,'
      '  MOV_TOTALSANGRIA = :MOV_TOTALSANGRIA,'
      '  MOV_TOTALSUPRIMENTO = :MOV_TOTALSUPRIMENTO,'
      '  MOV_TOTALTROCO = :MOV_TOTALTROCO,'
      '  MOV_TOTALVENDA = :MOV_TOTALVENDA,'
      '  MOV_USUARIO = :MOV_USUARIO'
      'where'
      '  MOV_CODIGO = :OLD_MOV_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'MOV_CODIGO'
    GeneratorField.Generator = 'GEN_MOVIMENTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 416
    Top = 296
    object TBMovimentosMOV_CODIGO: TIntegerField
      FieldName = 'MOV_CODIGO'
      Origin = '"MOVIMENTOS"."MOV_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMovimentosMOV_TERMINAL: TIntegerField
      FieldName = 'MOV_TERMINAL'
      Origin = '"MOVIMENTOS"."MOV_TERMINAL"'
      Required = True
    end
    object TBMovimentosMOV_DTABERTURA: TDateField
      FieldName = 'MOV_DTABERTURA'
      Origin = '"MOVIMENTOS"."MOV_DTABERTURA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMovimentosMOV_HRABERTURA: TIBStringField
      FieldName = 'MOV_HRABERTURA'
      Origin = '"MOVIMENTOS"."MOV_HRABERTURA"'
      Size = 8
    end
    object TBMovimentosMOV_DTFECHAMENTO: TDateField
      FieldName = 'MOV_DTFECHAMENTO'
      Origin = '"MOVIMENTOS"."MOV_DTFECHAMENTO"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMovimentosMOV_HRFECHAMENTO: TIBStringField
      FieldName = 'MOV_HRFECHAMENTO'
      Origin = '"MOVIMENTOS"."MOV_HRFECHAMENTO"'
      Size = 8
    end
    object TBMovimentosMOV_TOTALSUPRIMENTO: TIBBCDField
      FieldName = 'MOV_TOTALSUPRIMENTO'
      Origin = '"MOVIMENTOS"."MOV_TOTALSUPRIMENTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALSANGRIA: TIBBCDField
      FieldName = 'MOV_TOTALSANGRIA'
      Origin = '"MOVIMENTOS"."MOV_TOTALSANGRIA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALNAOFISCAL: TIBBCDField
      FieldName = 'MOV_TOTALNAOFISCAL'
      Origin = '"MOVIMENTOS"."MOV_TOTALNAOFISCAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALVENDA: TIBBCDField
      FieldName = 'MOV_TOTALVENDA'
      Origin = '"MOVIMENTOS"."MOV_TOTALVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALDESCONTO: TIBBCDField
      FieldName = 'MOV_TOTALDESCONTO'
      Origin = '"MOVIMENTOS"."MOV_TOTALDESCONTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALACRESCIMO: TIBBCDField
      FieldName = 'MOV_TOTALACRESCIMO'
      Origin = '"MOVIMENTOS"."MOV_TOTALACRESCIMO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALFINAL: TIBBCDField
      FieldName = 'MOV_TOTALFINAL'
      Origin = '"MOVIMENTOS"."MOV_TOTALFINAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALRECEBIDO: TIBBCDField
      FieldName = 'MOV_TOTALRECEBIDO'
      Origin = '"MOVIMENTOS"."MOV_TOTALRECEBIDO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALTROCO: TIBBCDField
      FieldName = 'MOV_TOTALTROCO'
      Origin = '"MOVIMENTOS"."MOV_TOTALTROCO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_TOTALCANCELADO: TIBBCDField
      FieldName = 'MOV_TOTALCANCELADO'
      Origin = '"MOVIMENTOS"."MOV_TOTALCANCELADO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBMovimentosMOV_STATUS: TIBStringField
      FieldName = 'MOV_STATUS'
      Origin = '"MOVIMENTOS"."MOV_STATUS"'
      Size = 1
    end
    object TBMovimentosMOV_SINCRONIZADO: TIBStringField
      FieldName = 'MOV_SINCRONIZADO'
      Origin = '"MOVIMENTOS"."MOV_SINCRONIZADO"'
      Size = 1
    end
    object TBMovimentosMOV_USUARIO: TIBStringField
      FieldName = 'MOV_USUARIO'
      Origin = '"MOVIMENTOS"."MOV_USUARIO"'
    end
    object TBMovimentosMOV_DTATUALIZACAO: TDateField
      FieldName = 'MOV_DTATUALIZACAO'
      Origin = '"MOVIMENTOS"."MOV_DTATUALIZACAO"'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object DSMovimentos: TDataSource
    DataSet = TBMovimentos
    Left = 416
    Top = 344
  end
  object TRMovimentos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 392
  end
  object ACBrCalculadora1: TACBrCalculadora
    Titulo = 'Runtime Sistemas'
    Centraliza = True
    BorderStyle = bsDialog
    Left = 392
    Top = 16
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
      
        '  (USU_EMAIL, USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU' +
        '_SENHAEXPIRADA, '
      '   USU_VENDEDOR)'
      'values'
      
        '  (:USU_EMAIL, :USU_LOGADO, :USU_LOGIN, :USU_NOME, :USU_PASSWORD' +
        ', :USU_SENHAEXPIRADA, '
      '   :USU_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  USU_LOGIN,'
      '  USU_EMAIL,'
      '  USU_LOGADO,'
      '  USU_NOME,'
      '  USU_PASSWORD,'
      '  USU_SENHAEXPIRADA,'
      '  USU_VENDEDOR'
      'from USUARIOS '
      'where'
      '  USU_LOGIN = :USU_LOGIN')
    SelectSQL.Strings = (
      'select * from USUARIOS'
      'where USU_LOGIN=:codigo')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  USU_EMAIL = :USU_EMAIL,'
      '  USU_LOGADO = :USU_LOGADO,'
      '  USU_LOGIN = :USU_LOGIN,'
      '  USU_NOME = :USU_NOME,'
      '  USU_PASSWORD = :USU_PASSWORD,'
      '  USU_SENHAEXPIRADA = :USU_SENHAEXPIRADA,'
      '  USU_VENDEDOR = :USU_VENDEDOR'
      'where'
      '  USU_LOGIN = :OLD_USU_LOGIN')
    ParamCheck = True
    UniDirectional = False
    Left = 184
    Top = 72
    object TBUsuariosUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = '"USUARIOS"."USU_LOGIN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuariosUSU_EMAIL: TIBStringField
      FieldName = 'USU_EMAIL'
      Origin = '"USUARIOS"."USU_EMAIL"'
      Size = 100
    end
    object TBUsuariosUSU_LOGADO: TIBStringField
      FieldName = 'USU_LOGADO'
      Origin = '"USUARIOS"."USU_LOGADO"'
      Size = 1
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
    object TBUsuariosUSU_VENDEDOR: TIntegerField
      FieldName = 'USU_VENDEDOR'
      Origin = '"USUARIOS"."USU_VENDEDOR"'
    end
  end
  object DSUsuarios: TDataSource
    DataSet = TBUsuarios
    Left = 184
    Top = 120
  end
  object TRUsuarios: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 184
    Top = 168
  end
  object TBVendedores: TIBDataSet
    Database = IBDatabase1
    Transaction = TRVendedores
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  USU_LOGIN = :OLD_USU_LOGIN')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (USU_EMAIL, USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU' +
        '_SENHAEXPIRADA, '
      '   USU_VENDEDOR)'
      'values'
      
        '  (:USU_EMAIL, :USU_LOGADO, :USU_LOGIN, :USU_NOME, :USU_PASSWORD' +
        ', :USU_SENHAEXPIRADA, '
      '   :USU_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  USU_LOGIN,'
      '  USU_EMAIL,'
      '  USU_LOGADO,'
      '  USU_NOME,'
      '  USU_PASSWORD,'
      '  USU_SENHAEXPIRADA,'
      '  USU_VENDEDOR'
      'from USUARIOS '
      'where'
      '  USU_LOGIN = :USU_LOGIN')
    SelectSQL.Strings = (
      'select '
      'VEN_CODIGO, '
      'VEN_NOME, '
      'VEN_COMISSAO,'
      'VEN_STATUS'
      'from VENDEDORES'
      'where VEN_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  USU_EMAIL = :USU_EMAIL,'
      '  USU_LOGADO = :USU_LOGADO,'
      '  USU_LOGIN = :USU_LOGIN,'
      '  USU_NOME = :USU_NOME,'
      '  USU_PASSWORD = :USU_PASSWORD,'
      '  USU_SENHAEXPIRADA = :USU_SENHAEXPIRADA,'
      '  USU_VENDEDOR = :USU_VENDEDOR'
      'where'
      '  USU_LOGIN = :OLD_USU_LOGIN')
    ParamCheck = True
    UniDirectional = False
    Left = 248
    Top = 72
    object TBVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = '"VENDEDORES"."VEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVendedoresVEN_COMISSAO: TIBBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = '"VENDEDORES"."VEN_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object TBVendedoresVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Required = True
      Size = 50
    end
    object TBVendedoresVEN_STATUS: TIBStringField
      FieldName = 'VEN_STATUS'
      Origin = '"VENDEDORES"."VEN_STATUS"'
      Size = 1
    end
  end
  object DSVendedores: TDataSource
    DataSet = TBVendedores
    Left = 248
    Top = 120
  end
  object TRVendedores: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 248
    Top = 168
  end
  object ACBrTEFD: TACBrTEFD
    AutoFinalizarCupom = False
    EsperaSTS = 7
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnAguardaResp = ACBrTEFDAguardaResp
    OnExibeMsg = ACBrTEFDExibeMsg
    OnBloqueiaMouseTeclado = ACBrTEFDBloqueiaMouseTeclado
    OnRestauraFocoAplicacao = ACBrTEFDRestauraFocoAplicacao
    OnComandaECF = ACBrTEFDComandaECF
    OnComandaECFPagamento = ACBrTEFDComandaECFPagamento
    OnComandaECFAbreVinculado = ACBrTEFDComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFDComandaECFImprimeVia
    OnInfoECF = ACBrTEFDInfoECF
    OnAntesFinalizarRequisicao = ACBrTEFDAntesFinalizarRequisicao
    OnDepoisConfirmarTransacoes = ACBrTEFDDepoisConfirmarTransacoes
    OnAntesCancelarTransacao = ACBrTEFDAntesCancelarTransacao
    Left = 320
    Top = 16
  end
  object TBSangrias: TIBDataSet
    Database = IBDatabase1
    Transaction = TRSangrias
    AfterDelete = TBSangriasAfterDelete
    AfterInsert = TBSangriasAfterInsert
    AfterPost = TBSangriasAfterPost
    BeforePost = TBSangriasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SANGRIAS'
      'where'
      '  SAN_CODIGO = :OLD_SAN_CODIGO')
    InsertSQL.Strings = (
      'insert into SANGRIAS'
      '  (SAN_CODIGO, SAN_DATA, SAN_MOVIMENTO, SAN_USUARIO, SAN_VALOR)'
      'values'
      
        '  (:SAN_CODIGO, :SAN_DATA, :SAN_MOVIMENTO, :SAN_USUARIO, :SAN_VA' +
        'LOR)')
    RefreshSQL.Strings = (
      'Select '
      '  SAN_CODIGO,'
      '  SAN_MOVIMENTO,'
      '  SAN_DATA,'
      '  SAN_VALOR,'
      '  SAN_USUARIO'
      'from SANGRIAS '
      'where'
      '  SAN_CODIGO = :SAN_CODIGO')
    SelectSQL.Strings = (
      'select * from SANGRIAS'
      'where SAN_MOVIMENTO=:MOV_CODIGO')
    ModifySQL.Strings = (
      'update SANGRIAS'
      'set'
      '  SAN_CODIGO = :SAN_CODIGO,'
      '  SAN_DATA = :SAN_DATA,'
      '  SAN_MOVIMENTO = :SAN_MOVIMENTO,'
      '  SAN_USUARIO = :SAN_USUARIO,'
      '  SAN_VALOR = :SAN_VALOR'
      'where'
      '  SAN_CODIGO = :OLD_SAN_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'SAN_CODIGO'
    GeneratorField.Generator = 'GEN_SANGRIAS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMovimentos
    Left = 344
    Top = 296
    object TBSangriasSAN_CODIGO: TIntegerField
      FieldName = 'SAN_CODIGO'
      Origin = '"SANGRIAS"."SAN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBSangriasSAN_MOVIMENTO: TIntegerField
      FieldName = 'SAN_MOVIMENTO'
      Origin = '"SANGRIAS"."SAN_MOVIMENTO"'
      Required = True
    end
    object TBSangriasSAN_DATA: TDateField
      FieldName = 'SAN_DATA'
      Origin = '"SANGRIAS"."SAN_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSangriasSAN_VALOR: TIBBCDField
      FieldName = 'SAN_VALOR'
      Origin = '"SANGRIAS"."SAN_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBSangriasSAN_USUARIO: TIBStringField
      FieldName = 'SAN_USUARIO'
      Origin = '"SANGRIAS"."SAN_USUARIO"'
    end
  end
  object DSSangrias: TDataSource
    DataSet = TBSangrias
    Left = 344
    Top = 344
  end
  object TRSangrias: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 344
    Top = 392
  end
  object TBSuprimentos: TIBDataSet
    Database = IBDatabase1
    Transaction = TRSuprimentos
    AfterDelete = TBSuprimentosAfterDelete
    AfterInsert = TBSuprimentosAfterInsert
    AfterPost = TBSuprimentosAfterPost
    BeforePost = TBSuprimentosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SUPRIMENTOS'
      'where'
      '  SUP_CODIGO = :OLD_SUP_CODIGO')
    InsertSQL.Strings = (
      'insert into SUPRIMENTOS'
      '  (SUP_CODIGO, SUP_DATA, SUP_MOVIMENTO, SUP_USUARIO, SUP_VALOR)'
      'values'
      
        '  (:SUP_CODIGO, :SUP_DATA, :SUP_MOVIMENTO, :SUP_USUARIO, :SUP_VA' +
        'LOR)')
    RefreshSQL.Strings = (
      'Select '
      '  SUP_CODIGO,'
      '  SUP_MOVIMENTO,'
      '  SUP_DATA,'
      '  SUP_VALOR,'
      '  SUP_USUARIO'
      'from SUPRIMENTOS '
      'where'
      '  SUP_CODIGO = :SUP_CODIGO')
    SelectSQL.Strings = (
      'select * from SUPRIMENTOS'
      'where SUP_MOVIMENTO=:MOV_CODIGO')
    ModifySQL.Strings = (
      'update SUPRIMENTOS'
      'set'
      '  SUP_CODIGO = :SUP_CODIGO,'
      '  SUP_DATA = :SUP_DATA,'
      '  SUP_MOVIMENTO = :SUP_MOVIMENTO,'
      '  SUP_USUARIO = :SUP_USUARIO,'
      '  SUP_VALOR = :SUP_VALOR'
      'where'
      '  SUP_CODIGO = :OLD_SUP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'SUP_CODIGO'
    GeneratorField.Generator = 'GEN_SUPRIMENTOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSMovimentos
    Left = 272
    Top = 296
    object TBSuprimentosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = '"SUPRIMENTOS"."SUP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBSuprimentosSUP_MOVIMENTO: TIntegerField
      FieldName = 'SUP_MOVIMENTO'
      Origin = '"SUPRIMENTOS"."SUP_MOVIMENTO"'
      Required = True
    end
    object TBSuprimentosSUP_DATA: TDateField
      FieldName = 'SUP_DATA'
      Origin = '"SUPRIMENTOS"."SUP_DATA"'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSuprimentosSUP_VALOR: TIBBCDField
      FieldName = 'SUP_VALOR'
      Origin = '"SUPRIMENTOS"."SUP_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object TBSuprimentosSUP_USUARIO: TIBStringField
      FieldName = 'SUP_USUARIO'
      Origin = '"SUPRIMENTOS"."SUP_USUARIO"'
    end
  end
  object DSSuprimentos: TDataSource
    DataSet = TBSuprimentos
    Left = 272
    Top = 344
  end
  object TRSuprimentos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 272
    Top = 392
  end
  object TBCupomFiscalPagtos: TIBDataSet
    Database = IBDatabase1
    Transaction = TRCupomFiscalPagtos
    AfterDelete = TBCupomFiscalPagtosAfterDelete
    AfterInsert = TBCupomFiscalPagtosAfterInsert
    AfterPost = TBCupomFiscalPagtosAfterPost
    BeforePost = TBCupomFiscalPagtosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUPOMFISCALPAGTOS'
      'where'
      '  CFP_CODIGO = :OLD_CFP_CODIGO')
    InsertSQL.Strings = (
      'insert into CUPOMFISCALPAGTOS'
      
        '  (CFP_CODIGO, CFP_CODIGOPAGAMENTO, CFP_CUPOMFISCAL, CFP_DESCRIC' +
        'AO, CFP_FORMAPAGAMENTO, '
      '   CFP_IMPRIMEVINCULADO, CFP_NSU, CFP_TEF, CFP_VALOR)'
      'values'
      
        '  (:CFP_CODIGO, :CFP_CODIGOPAGAMENTO, :CFP_CUPOMFISCAL, :CFP_DES' +
        'CRICAO, '
      
        '   :CFP_FORMAPAGAMENTO, :CFP_IMPRIMEVINCULADO, :CFP_NSU, :CFP_TE' +
        'F, :CFP_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CFP_CODIGO,'
      '  CFP_CUPOMFISCAL,'
      '  CFP_FORMAPAGAMENTO,'
      '  CFP_VALOR,'
      '  CFP_NSU,'
      '  CFP_TEF,'
      '  CFP_IMPRIMEVINCULADO,'
      '  CFP_DESCRICAO,'
      '  CFP_CODIGOPAGAMENTO'
      'from CUPOMFISCALPAGTOS '
      'where'
      '  CFP_CODIGO = :CFP_CODIGO')
    SelectSQL.Strings = (
      'select * from CUPOMFISCALPAGTOS'
      'where CFP_CUPOMFISCAL=:CUP_CODIGO')
    ModifySQL.Strings = (
      'update CUPOMFISCALPAGTOS'
      'set'
      '  CFP_CODIGO = :CFP_CODIGO,'
      '  CFP_CODIGOPAGAMENTO = :CFP_CODIGOPAGAMENTO,'
      '  CFP_CUPOMFISCAL = :CFP_CUPOMFISCAL,'
      '  CFP_DESCRICAO = :CFP_DESCRICAO,'
      '  CFP_FORMAPAGAMENTO = :CFP_FORMAPAGAMENTO,'
      '  CFP_IMPRIMEVINCULADO = :CFP_IMPRIMEVINCULADO,'
      '  CFP_NSU = :CFP_NSU,'
      '  CFP_TEF = :CFP_TEF,'
      '  CFP_VALOR = :CFP_VALOR'
      'where'
      '  CFP_CODIGO = :OLD_CFP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CFP_CODIGO'
    GeneratorField.Generator = 'GEN_CUPOMFISCALPAGTOS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCupomFiscal
    Left = 576
    Top = 72
    object TBCupomFiscalPagtosCFP_CODIGO: TIntegerField
      FieldName = 'CFP_CODIGO'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCupomFiscalPagtosCFP_CODIGOPAGAMENTO: TIBStringField
      FieldName = 'CFP_CODIGOPAGAMENTO'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_CODIGOPAGAMENTO"'
      Size = 3
    end
    object TBCupomFiscalPagtosCFP_CUPOMFISCAL: TIntegerField
      FieldName = 'CFP_CUPOMFISCAL'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_CUPOMFISCAL"'
      Required = True
    end
    object TBCupomFiscalPagtosCFP_DESCRICAO: TIBStringField
      FieldName = 'CFP_DESCRICAO'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_DESCRICAO"'
      Size = 50
    end
    object TBCupomFiscalPagtosCFP_FORMAPAGAMENTO: TIntegerField
      FieldName = 'CFP_FORMAPAGAMENTO'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_FORMAPAGAMENTO"'
      Required = True
    end
    object TBCupomFiscalPagtosCFP_IMPRIMEVINCULADO: TIBStringField
      FieldName = 'CFP_IMPRIMEVINCULADO'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_IMPRIMEVINCULADO"'
      Size = 1
    end
    object TBCupomFiscalPagtosCFP_NSU: TLargeintField
      FieldName = 'CFP_NSU'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_NSU"'
    end
    object TBCupomFiscalPagtosCFP_TEF: TIBStringField
      FieldName = 'CFP_TEF'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_TEF"'
      Size = 1
    end
    object TBCupomFiscalPagtosCFP_VALOR: TIBBCDField
      FieldName = 'CFP_VALOR'
      Origin = '"CUPOMFISCALPAGTOS"."CFP_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
  end
  object DSCupomFiscalPagtos: TDataSource
    DataSet = TBCupomFiscalPagtos
    Left = 576
    Top = 120
  end
  object TRCupomFiscalPagtos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 576
    Top = 168
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 16
  end
end
