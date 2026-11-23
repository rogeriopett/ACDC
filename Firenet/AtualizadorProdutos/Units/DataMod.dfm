object DM: TDM
  OldCreateOrder = False
  Height = 322
  Width = 848
  object DBDestino: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet_oficial.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 176
  end
  object DBOrigem: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet_oficial.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 24
  end
  object TBDProdutos: TIBDataSet
    Database = DBDestino
    Transaction = TRDProdutos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      
        '  (PRO_CODIGO, PRO_FAMILIA, PRO_FORNECEDOR, PRO_GRUPO, PRO_MARCA' +
        ', PRO_ALIQCOFINS, '
      
        '   PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQICMSADICST, PRO_ALIQI' +
        'CMSRED, '
      
        '   PRO_ALIQICMSST, PRO_ALIQIPI, PRO_ALIQISS, PRO_ALIQOUTROS, PRO' +
        '_ALIQPIS, '
      
        '   PRO_ALIQPISST, PRO_ATUALIZAR, PRO_ATUALIZATABELA, PRO_CEST, P' +
        'RO_CFOP, '
      
        '   PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGOBARRAS, PRO_CODIGOFA' +
        'B, PRO_COMISSAO, '
      
        '   PRO_COMPOEBASEICMS, PRO_COMPOEBASEICMSST, PRO_COMPOSTO, PRO_C' +
        'ONVERSAO, '
      
        '   PRO_CORSABOR, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CST' +
        'PIS, PRO_DESCMAX, '
      
        '   PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_DTULTCO' +
        'MPRA, PRO_DTULTVENDA, '
      
        '   PRO_ECFICMS, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN' +
        ', PRO_FCI, '
      
        '   PRO_GENERO, PRO_INCENTIVOISS, PRO_INDICADORISS, PRO_INTERNET,' +
        ' PRO_LOCALIZACAO, '
      
        '   PRO_MARGEM, PRO_MARGEM1, PRO_MARGEM2, PRO_MARGEM3, PRO_MARGEM' +
        '4, PRO_MARGEM5, '
      
        '   PRO_MARGEM6, PRO_MODICMS, PRO_MODICMSST, PRO_NOME, PRO_OBSERV' +
        'ACOES, '
      
        '   PRO_OFERTA, PRO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_P' +
        'ESO, PRO_PRECO1, '
      
        '   PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, P' +
        'RO_PRECOCUSTO, '
      
        '   PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOCUSTOULT, P' +
        'RO_PRECOVENDA, '
      
        '   PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT, PRO_PRODUCAO, PRO_PRO' +
        'DUTOREAL, '
      
        '   PRO_REGISTROMS, PRO_STATUS, PRO_SUBSTITUICAOTRIB, PRO_TABPREC' +
        'O1, PRO_TABPRECO2, '
      
        '   PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, PRO_TABPRECO6, P' +
        'RO_TAMANHO, '
      
        '   PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM, PRO_TOTALIZADORPARCIAL, ' +
        'PRO_TRIBUTO, '
      '   PRO_UNIDADE, PRO_USUARIO)'
      'values'
      
        '  (:PRO_CODIGO, :PRO_FAMILIA, :PRO_FORNECEDOR, :PRO_GRUPO, :PRO_' +
        'MARCA, '
      
        '   :PRO_ALIQCOFINS, :PRO_ALIQCOFINSST, :PRO_ALIQICMS, :PRO_ALIQI' +
        'CMSADICST, '
      
        '   :PRO_ALIQICMSRED, :PRO_ALIQICMSST, :PRO_ALIQIPI, :PRO_ALIQISS' +
        ', :PRO_ALIQOUTROS, '
      
        '   :PRO_ALIQPIS, :PRO_ALIQPISST, :PRO_ATUALIZAR, :PRO_ATUALIZATA' +
        'BELA, :PRO_CEST, '
      
        '   :PRO_CFOP, :PRO_CFOPFORA, :PRO_CLASSFISCAL, :PRO_CODIGOBARRAS' +
        ', :PRO_CODIGOFAB, '
      
        '   :PRO_COMISSAO, :PRO_COMPOEBASEICMS, :PRO_COMPOEBASEICMSST, :P' +
        'RO_COMPOSTO, '
      
        '   :PRO_CONVERSAO, :PRO_CORSABOR, :PRO_CSTCOFINS, :PRO_CSTICMS, ' +
        ':PRO_CSTIPI, '
      
        '   :PRO_CSTPIS, :PRO_DESCMAX, :PRO_DESCRICAO, :PRO_DTATUALIZACAO' +
        ', :PRO_DTCADASTRO, '
      
        '   :PRO_DTULTCOMPRA, :PRO_DTULTVENDA, :PRO_ECFICMS, :PRO_ESTOQUE' +
        'ATUAL, '
      
        '   :PRO_ESTOQUEMAX, :PRO_ESTOQUEMIN, :PRO_FCI, :PRO_GENERO, :PRO' +
        '_INCENTIVOISS, '
      
        '   :PRO_INDICADORISS, :PRO_INTERNET, :PRO_LOCALIZACAO, :PRO_MARG' +
        'EM, :PRO_MARGEM1, '
      
        '   :PRO_MARGEM2, :PRO_MARGEM3, :PRO_MARGEM4, :PRO_MARGEM5, :PRO_' +
        'MARGEM6, '
      
        '   :PRO_MODICMS, :PRO_MODICMSST, :PRO_NOME, :PRO_OBSERVACOES, :P' +
        'RO_OFERTA, '
      
        '   :PRO_ORIGEM, :PRO_PALAVRASCHAVE, :PRO_PESAVEL, :PRO_PESO, :PR' +
        'O_PRECO1, '
      
        '   :PRO_PRECO2, :PRO_PRECO3, :PRO_PRECO4, :PRO_PRECO5, :PRO_PREC' +
        'O6, :PRO_PRECOCUSTO, '
      
        '   :PRO_PRECOCUSTOCOMP, :PRO_PRECOCUSTOMEDIO, :PRO_PRECOCUSTOULT' +
        ', :PRO_PRECOVENDA, '
      
        '   :PRO_PRECOVENDAMEDIO, :PRO_PRECOVENDAULT, :PRO_PRODUCAO, :PRO' +
        '_PRODUTOREAL, '
      
        '   :PRO_REGISTROMS, :PRO_STATUS, :PRO_SUBSTITUICAOTRIB, :PRO_TAB' +
        'PRECO1, '
      
        '   :PRO_TABPRECO2, :PRO_TABPRECO3, :PRO_TABPRECO4, :PRO_TABPRECO' +
        '5, :PRO_TABPRECO6, '
      
        '   :PRO_TAMANHO, :PRO_TIPO, :PRO_TIPOISS, :PRO_TIPOITEM, :PRO_TO' +
        'TALIZADORPARCIAL, '
      '   :PRO_TRIBUTO, :PRO_UNIDADE, :PRO_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PRO_CODIGO,'
      '  PRO_FAMILIA,'
      '  PRO_FORNECEDOR,'
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
      '  PRO_ATUALIZAR,'
      '  PRO_ATUALIZATABELA,'
      '  PRO_CEST,'
      '  PRO_CFOP,'
      '  PRO_CFOPFORA,'
      '  PRO_CLASSFISCAL,'
      '  PRO_CODIGOBARRAS,'
      '  PRO_CODIGOFAB,'
      '  PRO_COMISSAO,'
      '  PRO_COMPOEBASEICMS,'
      '  PRO_COMPOEBASEICMSST,'
      '  PRO_COMPOSTO,'
      '  PRO_CONVERSAO,'
      '  PRO_CORSABOR,'
      '  PRO_CSTCOFINS,'
      '  PRO_CSTICMS,'
      '  PRO_CSTIPI,'
      '  PRO_CSTPIS,'
      '  PRO_DESCMAX,'
      '  PRO_DESCRICAO,'
      '  PRO_DTATUALIZACAO,'
      '  PRO_DTCADASTRO,'
      '  PRO_DTULTCOMPRA,'
      '  PRO_DTULTVENDA,'
      '  PRO_ECFICMS,'
      '  PRO_ESTOQUEATUAL,'
      '  PRO_ESTOQUEMAX,'
      '  PRO_ESTOQUEMIN,'
      '  PRO_FCI,'
      '  PRO_GENERO,'
      '  PRO_INCENTIVOISS,'
      '  PRO_INDICADORISS,'
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
      '  PRO_OBSERVACOES,'
      '  PRO_OFERTA,'
      '  PRO_ORIGEM,'
      '  PRO_PALAVRASCHAVE,'
      '  PRO_PESAVEL,'
      '  PRO_PESO,'
      '  PRO_PRECO1,'
      '  PRO_PRECO2,'
      '  PRO_PRECO3,'
      '  PRO_PRECO4,'
      '  PRO_PRECO5,'
      '  PRO_PRECO6,'
      '  PRO_PRECOCUSTO,'
      '  PRO_PRECOCUSTOCOMP,'
      '  PRO_PRECOCUSTOMEDIO,'
      '  PRO_PRECOCUSTOULT,'
      '  PRO_PRECOVENDA,'
      '  PRO_PRECOVENDAMEDIO,'
      '  PRO_PRECOVENDAULT,'
      '  PRO_PRODUCAO,'
      '  PRO_PRODUTOREAL,'
      '  PRO_REGISTROMS,'
      '  PRO_STATUS,'
      '  PRO_SUBSTITUICAOTRIB,'
      '  PRO_TABPRECO1,'
      '  PRO_TABPRECO2,'
      '  PRO_TABPRECO3,'
      '  PRO_TABPRECO4,'
      '  PRO_TABPRECO5,'
      '  PRO_TABPRECO6,'
      '  PRO_TAMANHO,'
      '  PRO_TIPO,'
      '  PRO_TIPOISS,'
      '  PRO_TIPOITEM,'
      '  PRO_TOTALIZADORPARCIAL,'
      '  PRO_TRIBUTO,'
      '  PRO_UNIDADE,'
      '  PRO_USUARIO'
      'from PRODUTOS '
      'where'
      '  PRO_CODIGO = :PRO_CODIGO')
    SelectSQL.Strings = (
      'select * from PRODUTOS')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  PRO_CODIGO = :PRO_CODIGO,'
      '  PRO_FAMILIA = :PRO_FAMILIA,'
      '  PRO_FORNECEDOR = :PRO_FORNECEDOR,'
      '  PRO_GRUPO = :PRO_GRUPO,'
      '  PRO_MARCA = :PRO_MARCA,'
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
      '  PRO_ATUALIZAR = :PRO_ATUALIZAR,'
      '  PRO_ATUALIZATABELA = :PRO_ATUALIZATABELA,'
      '  PRO_CEST = :PRO_CEST,'
      '  PRO_CFOP = :PRO_CFOP,'
      '  PRO_CFOPFORA = :PRO_CFOPFORA,'
      '  PRO_CLASSFISCAL = :PRO_CLASSFISCAL,'
      '  PRO_CODIGOBARRAS = :PRO_CODIGOBARRAS,'
      '  PRO_CODIGOFAB = :PRO_CODIGOFAB,'
      '  PRO_COMISSAO = :PRO_COMISSAO,'
      '  PRO_COMPOEBASEICMS = :PRO_COMPOEBASEICMS,'
      '  PRO_COMPOEBASEICMSST = :PRO_COMPOEBASEICMSST,'
      '  PRO_COMPOSTO = :PRO_COMPOSTO,'
      '  PRO_CONVERSAO = :PRO_CONVERSAO,'
      '  PRO_CORSABOR = :PRO_CORSABOR,'
      '  PRO_CSTCOFINS = :PRO_CSTCOFINS,'
      '  PRO_CSTICMS = :PRO_CSTICMS,'
      '  PRO_CSTIPI = :PRO_CSTIPI,'
      '  PRO_CSTPIS = :PRO_CSTPIS,'
      '  PRO_DESCMAX = :PRO_DESCMAX,'
      '  PRO_DESCRICAO = :PRO_DESCRICAO,'
      '  PRO_DTATUALIZACAO = :PRO_DTATUALIZACAO,'
      '  PRO_DTCADASTRO = :PRO_DTCADASTRO,'
      '  PRO_DTULTCOMPRA = :PRO_DTULTCOMPRA,'
      '  PRO_DTULTVENDA = :PRO_DTULTVENDA,'
      '  PRO_ECFICMS = :PRO_ECFICMS,'
      '  PRO_ESTOQUEATUAL = :PRO_ESTOQUEATUAL,'
      '  PRO_ESTOQUEMAX = :PRO_ESTOQUEMAX,'
      '  PRO_ESTOQUEMIN = :PRO_ESTOQUEMIN,'
      '  PRO_FCI = :PRO_FCI,'
      '  PRO_GENERO = :PRO_GENERO,'
      '  PRO_INCENTIVOISS = :PRO_INCENTIVOISS,'
      '  PRO_INDICADORISS = :PRO_INDICADORISS,'
      '  PRO_INTERNET = :PRO_INTERNET,'
      '  PRO_LOCALIZACAO = :PRO_LOCALIZACAO,'
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
      '  PRO_PESAVEL = :PRO_PESAVEL,'
      '  PRO_PESO = :PRO_PESO,'
      '  PRO_PRECO1 = :PRO_PRECO1,'
      '  PRO_PRECO2 = :PRO_PRECO2,'
      '  PRO_PRECO3 = :PRO_PRECO3,'
      '  PRO_PRECO4 = :PRO_PRECO4,'
      '  PRO_PRECO5 = :PRO_PRECO5,'
      '  PRO_PRECO6 = :PRO_PRECO6,'
      '  PRO_PRECOCUSTO = :PRO_PRECOCUSTO,'
      '  PRO_PRECOCUSTOCOMP = :PRO_PRECOCUSTOCOMP,'
      '  PRO_PRECOCUSTOMEDIO = :PRO_PRECOCUSTOMEDIO,'
      '  PRO_PRECOCUSTOULT = :PRO_PRECOCUSTOULT,'
      '  PRO_PRECOVENDA = :PRO_PRECOVENDA,'
      '  PRO_PRECOVENDAMEDIO = :PRO_PRECOVENDAMEDIO,'
      '  PRO_PRECOVENDAULT = :PRO_PRECOVENDAULT,'
      '  PRO_PRODUCAO = :PRO_PRODUCAO,'
      '  PRO_PRODUTOREAL = :PRO_PRODUTOREAL,'
      '  PRO_REGISTROMS = :PRO_REGISTROMS,'
      '  PRO_STATUS = :PRO_STATUS,'
      '  PRO_SUBSTITUICAOTRIB = :PRO_SUBSTITUICAOTRIB,'
      '  PRO_TABPRECO1 = :PRO_TABPRECO1,'
      '  PRO_TABPRECO2 = :PRO_TABPRECO2,'
      '  PRO_TABPRECO3 = :PRO_TABPRECO3,'
      '  PRO_TABPRECO4 = :PRO_TABPRECO4,'
      '  PRO_TABPRECO5 = :PRO_TABPRECO5,'
      '  PRO_TABPRECO6 = :PRO_TABPRECO6,'
      '  PRO_TAMANHO = :PRO_TAMANHO,'
      '  PRO_TIPO = :PRO_TIPO,'
      '  PRO_TIPOISS = :PRO_TIPOISS,'
      '  PRO_TIPOITEM = :PRO_TIPOITEM,'
      '  PRO_TOTALIZADORPARCIAL = :PRO_TOTALIZADORPARCIAL,'
      '  PRO_TRIBUTO = :PRO_TRIBUTO,'
      '  PRO_UNIDADE = :PRO_UNIDADE,'
      '  PRO_USUARIO = :PRO_USUARIO'
      'where'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 280
    Top = 176
    object TBDProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QYOProdutos: TIBQuery
    Database = DBOrigem
    Transaction = TROProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS order by PRO_CODIGO')
    Left = 200
    Top = 24
    object QYOProdutosPRO_ALIQCOFINS: TFMTBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINS"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQCOFINSST: TFMTBCDField
      FieldName = 'PRO_ALIQCOFINSST'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINSST"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQICMS: TFMTBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = '"PRODUTOS"."PRO_ALIQICMS"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQICMSADICST: TFMTBCDField
      FieldName = 'PRO_ALIQICMSADICST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSADICST"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQICMSRED: TFMTBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = '"PRODUTOS"."PRO_ALIQICMSRED"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQICMSST: TFMTBCDField
      FieldName = 'PRO_ALIQICMSST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSST"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQIPI: TFMTBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = '"PRODUTOS"."PRO_ALIQIPI"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQISS: TFMTBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = '"PRODUTOS"."PRO_ALIQISS"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQOUTROS: TFMTBCDField
      FieldName = 'PRO_ALIQOUTROS'
      Origin = '"PRODUTOS"."PRO_ALIQOUTROS"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQPIS: TFMTBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = '"PRODUTOS"."PRO_ALIQPIS"'
      Precision = 18
    end
    object QYOProdutosPRO_ALIQPISST: TFMTBCDField
      FieldName = 'PRO_ALIQPISST'
      Origin = '"PRODUTOS"."PRO_ALIQPISST"'
      Precision = 18
    end
    object QYOProdutosPRO_ATUALIZAR: TIBStringField
      FieldName = 'PRO_ATUALIZAR'
      Origin = '"PRODUTOS"."PRO_ATUALIZAR"'
      Size = 1
    end
    object QYOProdutosPRO_ATUALIZATABELA: TIBStringField
      FieldName = 'PRO_ATUALIZATABELA'
      Origin = '"PRODUTOS"."PRO_ATUALIZATABELA"'
      Size = 1
    end
    object QYOProdutosPRO_CEST: TIBStringField
      FieldName = 'PRO_CEST'
      Origin = '"PRODUTOS"."PRO_CEST"'
    end
    object QYOProdutosPRO_CFOP: TIntegerField
      FieldName = 'PRO_CFOP'
      Origin = '"PRODUTOS"."PRO_CFOP"'
    end
    object QYOProdutosPRO_CFOPFORA: TIntegerField
      FieldName = 'PRO_CFOPFORA'
      Origin = '"PRODUTOS"."PRO_CFOPFORA"'
    end
    object QYOProdutosPRO_CLASSFISCAL: TIBStringField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRODUTOS.PRO_CLASSFISCAL'
    end
    object QYOProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYOProdutosPRO_CODIGOBARRAS: TIBStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGOBARRAS"'
      Size = 60
    end
    object QYOProdutosPRO_CODIGOFAB: TIBStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = '"PRODUTOS"."PRO_CODIGOFAB"'
    end
    object QYOProdutosPRO_COMISSAO: TFMTBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = '"PRODUTOS"."PRO_COMISSAO"'
      Precision = 18
    end
    object QYOProdutosPRO_COMPOEBASEICMS: TIBStringField
      FieldName = 'PRO_COMPOEBASEICMS'
      Origin = '"PRODUTOS"."PRO_COMPOEBASEICMS"'
      Size = 1
    end
    object QYOProdutosPRO_COMPOEBASEICMSST: TIBStringField
      FieldName = 'PRO_COMPOEBASEICMSST'
      Origin = '"PRODUTOS"."PRO_COMPOEBASEICMSST"'
      Size = 1
    end
    object QYOProdutosPRO_COMPOSTO: TIBStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = '"PRODUTOS"."PRO_COMPOSTO"'
      Size = 1
    end
    object QYOProdutosPRO_CONVERSAO: TFMTBCDField
      FieldName = 'PRO_CONVERSAO'
      Precision = 18
    end
    object QYOProdutosPRO_CORSABOR: TIBStringField
      FieldName = 'PRO_CORSABOR'
      Origin = '"PRODUTOS"."PRO_CORSABOR"'
    end
    object QYOProdutosPRO_CSTCOFINS: TIntegerField
      FieldName = 'PRO_CSTCOFINS'
      Origin = '"PRODUTOS"."PRO_CSTCOFINS"'
    end
    object QYOProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = '"PRODUTOS"."PRO_CSTICMS"'
    end
    object QYOProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = '"PRODUTOS"."PRO_CSTIPI"'
    end
    object QYOProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
    end
    object QYOProdutosPRO_DESCMAX: TFMTBCDField
      FieldName = 'PRO_DESCMAX'
      Origin = '"PRODUTOS"."PRO_DESCMAX"'
      Precision = 18
    end
    object QYOProdutosPRO_DESCRICAO: TMemoField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYOProdutosPRO_DTATUALIZACAO: TDateField
      FieldName = 'PRO_DTATUALIZACAO'
      Origin = '"PRODUTOS"."PRO_DTATUALIZACAO"'
    end
    object QYOProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object QYOProdutosPRO_DTULTCOMPRA: TDateField
      FieldName = 'PRO_DTULTCOMPRA'
      Origin = '"PRODUTOS"."PRO_DTULTCOMPRA"'
    end
    object QYOProdutosPRO_DTULTVENDA: TDateField
      FieldName = 'PRO_DTULTVENDA'
      Origin = '"PRODUTOS"."PRO_DTULTVENDA"'
    end
    object QYOProdutosPRO_ECFICMS: TIBStringField
      FieldName = 'PRO_ECFICMS'
      Origin = '"PRODUTOS"."PRO_ECFICMS"'
      Size = 10
    end
    object QYOProdutosPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = '"PRODUTOS"."PRO_ESTOQUEATUAL"'
      Precision = 18
    end
    object QYOProdutosPRO_ESTOQUEMAX: TFMTBCDField
      FieldName = 'PRO_ESTOQUEMAX'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMAX"'
      Precision = 18
    end
    object QYOProdutosPRO_ESTOQUEMIN: TFMTBCDField
      FieldName = 'PRO_ESTOQUEMIN'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMIN"'
      Precision = 18
    end
    object QYOProdutosPRO_EXCECAO: TIntegerField
      FieldName = 'PRO_EXCECAO'
      Origin = 'PRODUTOS.PRO_EXCECAO'
    end
    object QYOProdutosPRO_FAMILIA: TIntegerField
      FieldName = 'PRO_FAMILIA'
      Origin = '"PRODUTOS"."PRO_FAMILIA"'
      Required = True
    end
    object QYOProdutosPRO_FCI: TIBStringField
      FieldName = 'PRO_FCI'
      Origin = '"PRODUTOS"."PRO_FCI"'
      Size = 40
    end
    object QYOProdutosPRO_FORNECEDOR: TIntegerField
      FieldName = 'PRO_FORNECEDOR'
      Origin = '"PRODUTOS"."PRO_FORNECEDOR"'
      Required = True
    end
    object QYOProdutosPRO_GENERO: TIntegerField
      FieldName = 'PRO_GENERO'
      Origin = '"PRODUTOS"."PRO_GENERO"'
    end
    object QYOProdutosPRO_GRUPO: TIntegerField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      Required = True
    end
    object QYOProdutosPRO_INCENTIVOISS: TIBStringField
      FieldName = 'PRO_INCENTIVOISS'
      Origin = '"PRODUTOS"."PRO_INCENTIVOISS"'
      Size = 1
    end
    object QYOProdutosPRO_INDICADORISS: TIBStringField
      FieldName = 'PRO_INDICADORISS'
      Origin = '"PRODUTOS"."PRO_INDICADORISS"'
      Size = 50
    end
    object QYOProdutosPRO_INTERNET: TIBStringField
      FieldName = 'PRO_INTERNET'
      Origin = '"PRODUTOS"."PRO_INTERNET"'
      Size = 1
    end
    object QYOProdutosPRO_LOCALIZACAO: TIBStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = '"PRODUTOS"."PRO_LOCALIZACAO"'
    end
    object QYOProdutosPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
      Required = True
    end
    object QYOProdutosPRO_MARGEM: TFMTBCDField
      FieldName = 'PRO_MARGEM'
      Origin = '"PRODUTOS"."PRO_MARGEM"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM1: TFMTBCDField
      FieldName = 'PRO_MARGEM1'
      Origin = '"PRODUTOS"."PRO_MARGEM1"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM2: TFMTBCDField
      FieldName = 'PRO_MARGEM2'
      Origin = '"PRODUTOS"."PRO_MARGEM2"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM3: TFMTBCDField
      FieldName = 'PRO_MARGEM3'
      Origin = '"PRODUTOS"."PRO_MARGEM3"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM4: TFMTBCDField
      FieldName = 'PRO_MARGEM4'
      Origin = '"PRODUTOS"."PRO_MARGEM4"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM5: TFMTBCDField
      FieldName = 'PRO_MARGEM5'
      Origin = '"PRODUTOS"."PRO_MARGEM5"'
      Precision = 18
    end
    object QYOProdutosPRO_MARGEM6: TFMTBCDField
      FieldName = 'PRO_MARGEM6'
      Origin = '"PRODUTOS"."PRO_MARGEM6"'
      Precision = 18
    end
    object QYOProdutosPRO_MARKUP: TFMTBCDField
      FieldName = 'PRO_MARKUP'
      Origin = '"PRODUTOS"."PRO_MARKUP"'
      Precision = 18
    end
    object QYOProdutosPRO_MARKUPCODIGO: TIntegerField
      FieldName = 'PRO_MARKUPCODIGO'
      Origin = '"PRODUTOS"."PRO_MARKUPCODIGO"'
    end
    object QYOProdutosPRO_MODICMS: TIBStringField
      FieldName = 'PRO_MODICMS'
      Origin = '"PRODUTOS"."PRO_MODICMS"'
      Size = 40
    end
    object QYOProdutosPRO_MODICMSST: TIBStringField
      FieldName = 'PRO_MODICMSST'
      Origin = '"PRODUTOS"."PRO_MODICMSST"'
      Size = 40
    end
    object QYOProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 100
    end
    object QYOProdutosPRO_OBSERVACOES: TMemoField
      FieldName = 'PRO_OBSERVACOES'
      Origin = '"PRODUTOS"."PRO_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYOProdutosPRO_OFERTA: TIBStringField
      FieldName = 'PRO_OFERTA'
      Origin = '"PRODUTOS"."PRO_OFERTA"'
      Size = 1
    end
    object QYOProdutosPRO_ORIGEM: TIBStringField
      DisplayWidth = 50
      FieldName = 'PRO_ORIGEM'
      Origin = '"PRODUTOS"."PRO_ORIGEM"'
      Size = 50
    end
    object QYOProdutosPRO_PALAVRASCHAVE: TIBStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = '"PRODUTOS"."PRO_PALAVRASCHAVE"'
      Size = 120
    end
    object QYOProdutosPRO_PESAVEL: TIBStringField
      FieldName = 'PRO_PESAVEL'
      Origin = '"PRODUTOS"."PRO_PESAVEL"'
      Size = 1
    end
    object QYOProdutosPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 3
    end
    object QYOProdutosPRO_PRECO1: TFMTBCDField
      FieldName = 'PRO_PRECO1'
      Origin = '"PRODUTOS"."PRO_PRECO1"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECO2: TFMTBCDField
      FieldName = 'PRO_PRECO2'
      Origin = '"PRODUTOS"."PRO_PRECO2"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECO3: TFMTBCDField
      FieldName = 'PRO_PRECO3'
      Origin = '"PRODUTOS"."PRO_PRECO3"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECO4: TFMTBCDField
      FieldName = 'PRO_PRECO4'
      Origin = '"PRODUTOS"."PRO_PRECO4"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECO5: TFMTBCDField
      FieldName = 'PRO_PRECO5'
      Origin = '"PRODUTOS"."PRO_PRECO5"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECO6: TFMTBCDField
      FieldName = 'PRO_PRECO6'
      Origin = '"PRODUTOS"."PRO_PRECO6"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOCUSTOCOMP: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOCOMP'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOCOMP"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOCUSTOMEDIO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOMEDIO"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOCUSTOULT: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOULT'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOULT"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOVENDAMEDIO: TFMTBCDField
      FieldName = 'PRO_PRECOVENDAMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAMEDIO"'
      Precision = 18
    end
    object QYOProdutosPRO_PRECOVENDAULT: TFMTBCDField
      FieldName = 'PRO_PRECOVENDAULT'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAULT"'
      Precision = 18
    end
    object QYOProdutosPRO_PRODUCAO: TIBStringField
      FieldName = 'PRO_PRODUCAO'
      Origin = '"PRODUTOS"."PRO_PRODUCAO"'
      Size = 1
    end
    object QYOProdutosPRO_PRODUTOREAL: TIntegerField
      FieldName = 'PRO_PRODUTOREAL'
      Origin = '"PRODUTOS"."PRO_PRODUTOREAL"'
    end
    object QYOProdutosPRO_REGISTROMS: TIBStringField
      FieldName = 'PRO_REGISTROMS'
      Origin = '"PRODUTOS"."PRO_REGISTROMS"'
    end
    object QYOProdutosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 1
    end
    object QYOProdutosPRO_SUBSTITUICAOTRIB: TIBStringField
      FieldName = 'PRO_SUBSTITUICAOTRIB'
      Origin = '"PRODUTOS"."PRO_SUBSTITUICAOTRIB"'
      Size = 1
    end
    object QYOProdutosPRO_TABPRECO1: TIBStringField
      FieldName = 'PRO_TABPRECO1'
      Origin = '"PRODUTOS"."PRO_TABPRECO1"'
      Size = 50
    end
    object QYOProdutosPRO_TABPRECO2: TIBStringField
      FieldName = 'PRO_TABPRECO2'
      Origin = '"PRODUTOS"."PRO_TABPRECO2"'
      Size = 50
    end
    object QYOProdutosPRO_TABPRECO3: TIBStringField
      FieldName = 'PRO_TABPRECO3'
      Origin = '"PRODUTOS"."PRO_TABPRECO3"'
      Size = 50
    end
    object QYOProdutosPRO_TABPRECO4: TIBStringField
      FieldName = 'PRO_TABPRECO4'
      Origin = '"PRODUTOS"."PRO_TABPRECO4"'
      Size = 50
    end
    object QYOProdutosPRO_TABPRECO5: TIBStringField
      FieldName = 'PRO_TABPRECO5'
      Origin = '"PRODUTOS"."PRO_TABPRECO5"'
      Size = 50
    end
    object QYOProdutosPRO_TABPRECO6: TIBStringField
      FieldName = 'PRO_TABPRECO6'
      Origin = '"PRODUTOS"."PRO_TABPRECO6"'
      Size = 50
    end
    object QYOProdutosPRO_TAMANHO: TIBStringField
      FieldName = 'PRO_TAMANHO'
      Origin = '"PRODUTOS"."PRO_TAMANHO"'
    end
    object QYOProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"PRODUTOS"."PRO_TIPO"'
      Size = 1
    end
    object QYOProdutosPRO_TIPOISS: TIBStringField
      FieldName = 'PRO_TIPOISS'
      Origin = '"PRODUTOS"."PRO_TIPOISS"'
      Size = 15
    end
    object QYOProdutosPRO_TIPOITEM: TIBStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = '"PRODUTOS"."PRO_TIPOITEM"'
      Size = 30
    end
    object QYOProdutosPRO_TOTALIZADORPARCIAL: TIBStringField
      FieldName = 'PRO_TOTALIZADORPARCIAL'
      Origin = '"PRODUTOS"."PRO_TOTALIZADORPARCIAL"'
      Size = 10
    end
    object QYOProdutosPRO_TRIBUTO: TIBStringField
      FieldName = 'PRO_TRIBUTO'
      Origin = '"PRODUTOS"."PRO_TRIBUTO"'
      Size = 10
    end
    object QYOProdutosPRO_TROCA: TIBStringField
      FieldName = 'PRO_TROCA'
      Origin = '"PRODUTOS"."PRO_TROCA"'
      Size = 1
    end
    object QYOProdutosPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
    object QYOProdutosPRO_USUARIO: TIBStringField
      FieldName = 'PRO_USUARIO'
      Origin = '"PRODUTOS"."PRO_USUARIO"'
    end
  end
  object TROProdutos: TIBTransaction
    DefaultDatabase = DBOrigem
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 72
  end
  object QYOAlmoxarifados: TIBQuery
    Database = DBDestino
    Transaction = TROAlmoxarifados
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ALMOXARIFADOS order by ALM_CODIGO')
    Left = 280
    Top = 24
    object QYOAlmoxarifadosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = '"ALMOXARIFADOS"."ALM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYOAlmoxarifadosALM_DESCRICAO: TIBStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = '"ALMOXARIFADOS"."ALM_DESCRICAO"'
      Size = 50
    end
    object QYOAlmoxarifadosALM_DTCADASTRO: TDateField
      FieldName = 'ALM_DTCADASTRO'
      Origin = '"ALMOXARIFADOS"."ALM_DTCADASTRO"'
    end
    object QYOAlmoxarifadosALM_DTATUALIZACAO: TDateField
      FieldName = 'ALM_DTATUALIZACAO'
      Origin = '"ALMOXARIFADOS"."ALM_DTATUALIZACAO"'
    end
    object QYOAlmoxarifadosALM_STATUS: TIBStringField
      FieldName = 'ALM_STATUS'
      Origin = '"ALMOXARIFADOS"."ALM_STATUS"'
      Size = 1
    end
    object QYOAlmoxarifadosALM_USUARIO: TIBStringField
      FieldName = 'ALM_USUARIO'
      Origin = '"ALMOXARIFADOS"."ALM_USUARIO"'
    end
  end
  object TROAlmoxarifados: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 280
    Top = 72
  end
  object QYOVersao: TIBQuery
    Database = DBOrigem
    Transaction = TROVersao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VERSAO')
    Left = 120
    Top = 24
    object QYOVersaoVER_VERSAOBASE: TIBStringField
      FieldName = 'VER_VERSAOBASE'
      Origin = '"VERSAO"."VER_VERSAOBASE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object TROVersao: TIBTransaction
    DefaultDatabase = DBOrigem
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 72
  end
  object TRDVersao: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 224
  end
  object QYDVersao: TIBQuery
    Database = DBDestino
    Transaction = TRDVersao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VERSAO')
    Left = 120
    Top = 176
    object QYDVersaoVER_VERSAOBASE: TIBStringField
      FieldName = 'VER_VERSAOBASE'
      Origin = '"VERSAO"."VER_VERSAOBASE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object TRDProdutosQtde: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 360
    Top = 224
  end
  object TBDProdutosQtde: TIBDataSet
    Database = DBDestino
    Transaction = TRDProdutosQtde
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
      'where PRQ_PRODUTO=:PRO_CODIGO')
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
    Left = 360
    Top = 176
    object TBDProdutosQtdePRQ_ALMOXARIFADO: TIntegerField
      FieldName = 'PRQ_ALMOXARIFADO'
      Origin = '"PRODUTOSQTDE"."PRQ_ALMOXARIFADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDProdutosQtdePRQ_PRODUTO: TIntegerField
      FieldName = 'PRQ_PRODUTO'
      Origin = '"PRODUTOSQTDE"."PRQ_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDProdutosQtdePRQ_QUANTIDADE: TFMTBCDField
      FieldName = 'PRQ_QUANTIDADE'
      Origin = '"PRODUTOSQTDE"."PRQ_QUANTIDADE"'
      Precision = 18
    end
  end
  object TRDProdutos: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 280
    Top = 224
  end
  object QYDProdutos: TIBQuery
    Database = DBDestino
    Transaction = TRQDProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTOS order by PRO_CODIGO')
    Left = 200
    Top = 176
  end
  object TRQDProdutos: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 224
  end
  object QYOCampos: TIBQuery
    Database = DBOrigem
    Transaction = TROCampos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select RDB$FIELD_NAME from RDB$RELATION_FIELDS '
      'where RDB$RELATION_NAME='#39'PRODUTOS'#39
      'order by RDB$FIELD_NAME')
    Left = 400
    Top = 24
  end
  object TROCampos: TIBTransaction
    DefaultDatabase = DBOrigem
    Left = 400
    Top = 72
  end
  object QYDFamilias: TIBQuery
    Database = DBDestino
    Transaction = TRDFamilias
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select FAM_CODIGO from FAMILIAS')
    Left = 464
    Top = 176
  end
  object QYDGrupos: TIBQuery
    Database = DBDestino
    Transaction = TRDGrupos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select GRU_CODIGO from GRUPOS')
    Left = 536
    Top = 176
  end
  object QYDMarcas: TIBQuery
    Database = DBDestino
    Transaction = TRDMarcas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select MAR_CODIGO from MARCAS')
    Left = 664
    Top = 176
  end
  object QYDFornecedores: TIBQuery
    Database = DBDestino
    Transaction = TRDFornecedores
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select FOR_CODIGO from FORNECEDORES')
    Left = 736
    Top = 176
  end
  object TRDFamilias: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 464
    Top = 224
  end
  object TRDGrupos: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 536
    Top = 224
  end
  object TRDMarcas: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 664
    Top = 224
  end
  object TRDFornecedores: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 224
  end
  object QYDUnidades: TIBQuery
    Database = DBDestino
    Transaction = TRDGrupos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select UNI_CODIGO from UNIDADES')
    Left = 600
    Top = 176
  end
  object TRDUnidades: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 600
    Top = 224
  end
end
