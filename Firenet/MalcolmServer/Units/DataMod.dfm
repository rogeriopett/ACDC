object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 420
  Width = 875
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet_oficial.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 48
    Top = 32
  end
  object QYClientes: TIBQuery
    Database = IBDatabase1
    Transaction = TRClientes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'CLI_BAIRROCOB,'
      'CLI_CEPCOB,'
      'CLI_CIDADECOB,'
      'CLI_CIDADECODIGOCOB,'
      'CLI_CNPJCOB,'
      'CLI_CODIGO,'
      'CLI_COMPLEMENTOCOB,'
      'CLI_CPF,'
      'CLI_DTATUALIZACAO,'
      'CLI_DTCADASTRO,'
      'CLI_ENDERECOCOB,'
      'CLI_ESTADOCOB,'
      'CLI_ESTADOCODIGOCOB,'
      'CLI_FANTASIA,'
      'CLI_FONE1,'
      'CLI_FONE2,'
      'CLI_IECOB,'
      'CLI_NOME,'
      'CLI_NUMEROCOB,'
      'CLI_RG,'
      'CLI_STATUS,'
      'CLI_TIPOPESSOA'
      'from CLIENTES'
      'order by CLI_CODIGO')
    Left = 176
    Top = 96
    object QYClientesCLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 50
    end
    object QYClientesCLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object QYClientesCLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 50
    end
    object QYClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object QYClientesCLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_COMPLEMENTOCOB: TIBStringField
      DisplayWidth = 80
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 80
    end
    object QYClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object QYClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object QYClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object QYClientesCLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 100
    end
    object QYClientesCLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object QYClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
    object QYClientesCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 80
    end
    object QYClientesCLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object QYClientesCLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object QYClientesCLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object QYClientesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Required = True
      Size = 80
    end
    object QYClientesCLI_NUMEROCOB: TIBStringField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
      Size = 15
    end
    object QYClientesCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object QYClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object QYClientesCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
  end
  object TRClientes: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 176
    Top = 144
  end
  object QYUsuarios: TIBQuery
    Database = IBDatabase1
    Transaction = TRUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'USU_VENDEDOR,'
      'VEN_NOME,'
      'VEN_COMISSAO'
      'from USUARIOS'
      'left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO'
      'where USU_VENDEDOR<>1'
      'order by VEN_CODIGO')
    Left = 768
    Top = 96
    object QYUsuariosVEN_COMISSAO: TFMTBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = '"VENDEDORES"."VEN_COMISSAO"'
      Precision = 18
    end
    object QYUsuariosVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
    object QYUsuariosUSU_VENDEDOR: TIntegerField
      FieldName = 'USU_VENDEDOR'
      Origin = '"USUARIOS"."USU_VENDEDOR"'
    end
  end
  object TRUsuarios: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 768
    Top = 144
  end
  object QYProdutos: TIBQuery
    Database = IBDatabase1
    Transaction = TRProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'PRO_ALIQCOFINS,'
      'PRO_ALIQICMS,'
      'PRO_ALIQICMSRED,'
      'PRO_ALIQIPI,'
      'PRO_ALIQPIS,'
      'PRO_BENEFICIO,'
      'PRO_CEST,'
      'PRO_CFOP,'
      'PRO_CLASSFISCAL,'
      'PRO_CODIGO,'
      'PRO_CODIGOBARRAS,'
      'PRO_CODIGOFAB,'
      'PRO_CSTICMS,'
      'PRO_CSTIPI,'
      'PRO_CSTPIS,'
      'PRO_EXCECAO,'
      'PRO_GENERO,'
      'PRO_NOME,'
      'PRO_PESAVEL,'
      'PRO_PRODUCAO,'
      'PRO_PRECOCUSTO,'
      'PRO_PRECOVENDA,'
      'PRO_STATUS,'
      'PRO_TIPO,'
      'PRO_TIPOISS,'
      'PRO_TIPOITEM,'
      'PRO_TRIBUTO,'
      'PRO_UNIDADE'
      'from PRODUTOS'
      'order by PRO_CODIGO')
    Left = 576
    Top = 96
    object QYProdutosPRO_ALIQCOFINS: TFMTBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = 'PRODUTOS.PRO_ALIQCOFINS'
      Precision = 18
    end
    object QYProdutosPRO_ALIQICMS: TFMTBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = 'PRODUTOS.PRO_ALIQICMS'
      Precision = 18
    end
    object QYProdutosPRO_ALIQICMSRED: TFMTBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = 'PRODUTOS.PRO_ALIQICMSRED'
      Precision = 18
    end
    object QYProdutosPRO_ALIQIPI: TFMTBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = 'PRODUTOS.PRO_ALIQIPI'
      Precision = 18
    end
    object QYProdutosPRO_ALIQPIS: TFMTBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = 'PRODUTOS.PRO_ALIQPIS'
      Precision = 18
    end
    object QYProdutosPRO_BENEFICIO: TIBStringField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'PRODUTOS.PRO_BENEFICIO'
    end
    object QYProdutosPRO_CEST: TIBStringField
      FieldName = 'PRO_CEST'
      Origin = '"PRODUTOS"."PRO_CEST"'
    end
    object QYProdutosPRO_CFOP: TIntegerField
      FieldName = 'PRO_CFOP'
      Origin = '"PRODUTOS"."PRO_CFOP"'
    end
    object QYProdutosPRO_CLASSFISCAL: TIBStringField
      FieldName = 'PRO_CLASSFISCAL'
    end
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_CODIGOBARRAS: TIBStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGOBARRAS"'
      Size = 60
    end
    object QYProdutosPRO_CODIGOFAB: TIBStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = '"PRODUTOS"."PRO_CODIGOFAB"'
    end
    object QYProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = '"PRODUTOS"."PRO_CSTICMS"'
    end
    object QYProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = '"PRODUTOS"."PRO_CSTIPI"'
    end
    object QYProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = 'PRODUTOS.PRO_CSTPIS'
    end
    object QYProdutosPRO_EXCECAO: TIntegerField
      FieldName = 'PRO_EXCECAO'
      Origin = 'PRODUTOS.PRO_EXCECAO'
    end
    object QYProdutosPRO_GENERO: TIntegerField
      FieldName = 'PRO_GENERO'
      Origin = '"PRODUTOS"."PRO_GENERO"'
    end
    object QYProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 100
    end
    object QYProdutosPRO_PESAVEL: TIBStringField
      FieldName = 'PRO_PESAVEL'
      Origin = '"PRODUTOS"."PRO_PESAVEL"'
      Size = 1
    end
    object QYProdutosPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRODUCAO: TIBStringField
      FieldName = 'PRO_PRODUCAO'
      Origin = '"PRODUTOS"."PRO_PRODUCAO"'
      Size = 1
    end
    object QYProdutosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 1
    end
    object QYProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = 'PRODUTOS.PRO_TIPO'
      Size = 1
    end
    object QYProdutosPRO_TIPOISS: TIBStringField
      FieldName = 'PRO_TIPOISS'
      Origin = '"PRODUTOS"."PRO_TIPOISS"'
      Size = 15
    end
    object QYProdutosPRO_TIPOITEM: TIBStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = '"PRODUTOS"."PRO_TIPOITEM"'
      Size = 30
    end
    object QYProdutosPRO_TRIBUTO: TIBStringField
      FieldName = 'PRO_TRIBUTO'
      Origin = '"PRODUTOS"."PRO_TRIBUTO"'
      Size = 10
    end
    object QYProdutosPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
  end
  object TRProdutos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 576
    Top = 144
  end
  object QYTributos: TIBQuery
    Database = IBDatabase1
    Transaction = TRTributos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TRIBUTOS order by TRI_CODIGO')
    Left = 640
    Top = 96
    object QYTributosTRI_ALIQCOFINS: TFMTBCDField
      FieldName = 'TRI_ALIQCOFINS'
      Origin = 'TRIBUTOS.TRI_ALIQCOFINS'
      Precision = 18
    end
    object QYTributosTRI_ALIQICMS: TFMTBCDField
      FieldName = 'TRI_ALIQICMS'
      Origin = 'TRIBUTOS.TRI_ALIQICMS'
      Precision = 18
    end
    object QYTributosTRI_ALIQIPI: TFMTBCDField
      FieldName = 'TRI_ALIQIPI'
      Origin = 'TRIBUTOS.TRI_ALIQIPI'
      Precision = 18
    end
    object QYTributosTRI_ALIQPIS: TFMTBCDField
      FieldName = 'TRI_ALIQPIS'
      Origin = 'TRIBUTOS.TRI_ALIQPIS'
      Precision = 18
    end
    object QYTributosTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
      Origin = 'TRIBUTOS.TRI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYTributosTRI_CSTPIS: TIntegerField
      FieldName = 'TRI_CSTPIS'
      Origin = 'TRIBUTOS.TRI_CSTPIS'
    end
    object QYTributosTRI_SERVICO: TIBStringField
      FieldName = 'TRI_SERVICO'
      Origin = 'TRIBUTOS.TRI_SERVICO'
      Size = 1
    end
  end
  object TRTributos: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 640
    Top = 144
  end
  object QYEstoqueSaldo: TIBQuery
    Database = IBDatabase1
    Transaction = TREstoqueSaldo
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'PRO_ESTOQUEATUAL,'
      'PRO_CODIGO'
      'from PRODUTOS'
      'order by PRO_CODIGO')
    Left = 496
    Top = 96
    object QYEstoqueSaldoPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = '"PRODUTOS"."PRO_ESTOQUEATUAL"'
      Precision = 18
    end
    object QYEstoqueSaldoPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TREstoqueSaldo: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 496
    Top = 144
  end
  object QYCondicoes: TIBQuery
    Database = IBDatabase1
    Transaction = TRCondicoes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'CPG_CODIGO,'
      'CPG_DESCRICAO,'
      'CPG_DESCRICAOCUPOM,'
      'CPG_MEIOPAGAMENTO,'
      'CPG_TOTALPARCELAS'
      'from CONDICOES'
      'where CPG_CUPOM='#39'S'#39
      'order by CPG_CODIGO')
    Left = 240
    Top = 96
    object QYCondicoesCPG_CODIGO: TIntegerField
      FieldName = 'CPG_CODIGO'
      Origin = '"CONDICOES"."CPG_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCondicoesCPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
    object QYCondicoesCPG_DESCRICAOCUPOM: TIBStringField
      FieldName = 'CPG_DESCRICAOCUPOM'
      Origin = '"CONDICOES"."CPG_DESCRICAOCUPOM"'
    end
    object QYCondicoesCPG_MEIOPAGAMENTO: TIBStringField
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CONDICOES.CPG_MEIOPAGAMENTO'
      Size = 50
    end
    object QYCondicoesCPG_TOTALPARCELAS: TIntegerField
      FieldName = 'CPG_TOTALPARCELAS'
      Origin = '"CONDICOES"."CPG_TOTALPARCELAS"'
    end
  end
  object TRCondicoes: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 240
    Top = 144
  end
  object QYCondicoesItens: TIBQuery
    Database = IBDatabase1
    Transaction = TRCondicoesItens
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'CPI_DIAS,'
      'CPI_PORCENTAGEM'
      'from CONDICOESITENS'
      'where CPI_CONDICAO=:codigo'
      'order by CPI_CODIGO')
    Left = 304
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYCondicoesItensCPI_DIAS: TIntegerField
      FieldName = 'CPI_DIAS'
      Origin = '"CONDICOESITENS"."CPI_DIAS"'
      Required = True
    end
    object QYCondicoesItensCPI_PORCENTAGEM: TFMTBCDField
      FieldName = 'CPI_PORCENTAGEM'
      Origin = '"CONDICOESITENS"."CPI_PORCENTAGEM"'
      Required = True
      Precision = 18
    end
  end
  object TRCondicoesItens: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 304
    Top = 144
  end
  object QYContas: TIBQuery
    Database = IBDatabase1
    Transaction = TRContas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'CON_BANCO,'
      'CON_CODIGO,'
      'BAN_NOME'
      'from CONTAS'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'order by CON_CODIGO')
    Left = 368
    Top = 96
    object QYContasCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = '"CONTAS"."CON_BANCO"'
      Required = True
    end
    object QYContasCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
      Origin = '"CONTAS"."CON_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContasBAN_NOME: TIBStringField
      FieldName = 'BAN_NOME'
      Origin = '"BANCOS"."BAN_NOME"'
      Size = 50
    end
  end
  object TRContas: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 368
    Top = 144
  end
  object QYUnidades: TIBQuery
    Database = IBDatabase1
    Transaction = TRUnidades
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'UNI_CODIGO,'
      'UNI_DESCRICAO'
      'from UNIDADES'
      'order by UNI_CODIGO')
    Left = 704
    Top = 96
    object QYUnidadesUNI_CODIGO: TIBStringField
      FieldName = 'UNI_CODIGO'
      Origin = '"UNIDADES"."UNI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QYUnidadesUNI_DESCRICAO: TIBStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = '"UNIDADES"."UNI_DESCRICAO"'
      Size = 50
    end
  end
  object TRUnidades: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 704
    Top = 144
  end
  object QYAux: TIBQuery
    Database = IBDatabase1
    Transaction = TRAux
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'UNI_CODIGO,'
      'UNI_DESCRICAO'
      'from UNIDADES'
      'order by UNI_CODIGO')
    Left = 48
    Top = 96
  end
  object TRAux: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 48
    Top = 144
  end
  object QYEcf: TIBQuery
    Database = IBDatabase1
    Transaction = TREcf
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ECF'
      'order by ECF_CODIGO')
    Left = 432
    Top = 96
    object QYEcfECF_CODIGO: TIntegerField
      FieldName = 'ECF_CODIGO'
      Origin = '"ECF"."ECF_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEcfECF_DESCRICAO: TIBStringField
      FieldName = 'ECF_DESCRICAO'
      Origin = '"ECF"."ECF_DESCRICAO"'
      Size = 50
    end
    object QYEcfECF_DTATUALIZACAO: TDateField
      FieldName = 'ECF_DTATUALIZACAO'
      Origin = '"ECF"."ECF_DTATUALIZACAO"'
    end
    object QYEcfECF_DTCADASTRO: TDateField
      FieldName = 'ECF_DTCADASTRO'
      Origin = '"ECF"."ECF_DTCADASTRO"'
    end
    object QYEcfECF_MARCA: TIBStringField
      FieldName = 'ECF_MARCA'
      Origin = '"ECF"."ECF_MARCA"'
      Size = 40
    end
    object QYEcfECF_MODELO: TIBStringField
      FieldName = 'ECF_MODELO'
      Origin = '"ECF"."ECF_MODELO"'
      Size = 40
    end
    object QYEcfECF_SERIAL: TIBStringField
      FieldName = 'ECF_SERIAL'
      Origin = '"ECF"."ECF_SERIAL"'
    end
    object QYEcfECF_STATUS: TIBStringField
      FieldName = 'ECF_STATUS'
      Origin = '"ECF"."ECF_STATUS"'
      Size = 1
    end
    object QYEcfECF_USUARIO: TIBStringField
      FieldName = 'ECF_USUARIO'
      Origin = '"ECF"."ECF_USUARIO"'
    end
  end
  object TREcf: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 432
    Top = 144
  end
  object TBCupom: TIBDataSet
    Database = IBDatabase1
    Transaction = TRCupom
    AfterDelete = TBCupomAfterDelete
    AfterInsert = TBCupomAfterInsert
    AfterPost = TBCupomAfterPost
    BeforePost = TBCupomBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUPOM'
      'where'
      '  CUP_CODIGO = :OLD_CUP_CODIGO')
    InsertSQL.Strings = (
      'insert into CUPOM'
      
        '  (CUP_CODIGO, CUP_CLIENTE, CUP_ECF, CUP_ACREVALOR, CUP_CCF, CUP' +
        '_CONDICAO, '
      
        '   CUP_COO, CUP_DESCVALOR, CUP_DTATUALIZACAO, CUP_DTEMISSAO, CUP' +
        '_MOTIVO, '
      
        '   CUP_STATUS, CUP_USUARIO, CUP_VALORTOTAL, CUP_VENDA, CUP_VENDE' +
        'DOR, CUP_TOTALITENS, '
      '   CUP_CHAVEACESSO, CUP_PROTOCOLO, CUP_PROTOCOLODH, CUP_NFCE)'
      'values'
      
        '  (:CUP_CODIGO, :CUP_CLIENTE, :CUP_ECF, :CUP_ACREVALOR, :CUP_CCF' +
        ', :CUP_CONDICAO, '
      
        '   :CUP_COO, :CUP_DESCVALOR, :CUP_DTATUALIZACAO, :CUP_DTEMISSAO,' +
        ' :CUP_MOTIVO, '
      
        '   :CUP_STATUS, :CUP_USUARIO, :CUP_VALORTOTAL, :CUP_VENDA, :CUP_' +
        'VENDEDOR, '
      
        '   :CUP_TOTALITENS, :CUP_CHAVEACESSO, :CUP_PROTOCOLO, :CUP_PROTO' +
        'COLODH, '
      '   :CUP_NFCE)')
    RefreshSQL.Strings = (
      'Select '
      '  CUP_CODIGO,'
      '  CUP_CLIENTE,'
      '  CUP_ECF,'
      '  CUP_ACREVALOR,'
      '  CUP_CCF,'
      '  CUP_CONDICAO,'
      '  CUP_COO,'
      '  CUP_DESCVALOR,'
      '  CUP_DTATUALIZACAO,'
      '  CUP_DTEMISSAO,'
      '  CUP_MOTIVO,'
      '  CUP_STATUS,'
      '  CUP_USUARIO,'
      '  CUP_VALORTOTAL,'
      '  CUP_VENDA,'
      '  CUP_VENDEDOR,'
      '  CUP_TOTALITENS,'
      '  CUP_CHAVEACESSO,'
      '  CUP_PROTOCOLO,'
      '  CUP_PROTOCOLODH,'
      '  CUP_NFCE'
      'from CUPOM '
      'where'
      '  CUP_CODIGO = :CUP_CODIGO')
    SelectSQL.Strings = (
      'select * from CUPOM'
      'where CUP_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CUPOM'
      'set'
      '  CUP_CODIGO = :CUP_CODIGO,'
      '  CUP_CLIENTE = :CUP_CLIENTE,'
      '  CUP_ECF = :CUP_ECF,'
      '  CUP_ACREVALOR = :CUP_ACREVALOR,'
      '  CUP_CCF = :CUP_CCF,'
      '  CUP_CONDICAO = :CUP_CONDICAO,'
      '  CUP_COO = :CUP_COO,'
      '  CUP_DESCVALOR = :CUP_DESCVALOR,'
      '  CUP_DTATUALIZACAO = :CUP_DTATUALIZACAO,'
      '  CUP_DTEMISSAO = :CUP_DTEMISSAO,'
      '  CUP_MOTIVO = :CUP_MOTIVO,'
      '  CUP_STATUS = :CUP_STATUS,'
      '  CUP_USUARIO = :CUP_USUARIO,'
      '  CUP_VALORTOTAL = :CUP_VALORTOTAL,'
      '  CUP_VENDA = :CUP_VENDA,'
      '  CUP_VENDEDOR = :CUP_VENDEDOR,'
      '  CUP_TOTALITENS = :CUP_TOTALITENS,'
      '  CUP_CHAVEACESSO = :CUP_CHAVEACESSO,'
      '  CUP_PROTOCOLO = :CUP_PROTOCOLO,'
      '  CUP_PROTOCOLODH = :CUP_PROTOCOLODH,'
      '  CUP_NFCE = :CUP_NFCE'
      'where'
      '  CUP_CODIGO = :OLD_CUP_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CUP_CODIGO'
    GeneratorField.Generator = 'GEN_CUPOM'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 112
    Top = 232
    object TBCupomCUP_ACREVALOR: TFMTBCDField
      FieldName = 'CUP_ACREVALOR'
      Origin = '"CUPOM"."CUP_ACREVALOR"'
      Precision = 18
    end
    object TBCupomCUP_CCF: TIntegerField
      FieldName = 'CUP_CCF'
      Origin = '"CUPOM"."CUP_CCF"'
    end
    object TBCupomCUP_CHAVEACESSO: TIBStringField
      FieldName = 'CUP_CHAVEACESSO'
      Origin = 'CUPOM.CUP_CHAVEACESSO'
      Size = 50
    end
    object TBCupomCUP_CLIENTE: TIntegerField
      FieldName = 'CUP_CLIENTE'
      Origin = '"CUPOM"."CUP_CLIENTE"'
      Required = True
    end
    object TBCupomCUP_CODIGO: TIntegerField
      FieldName = 'CUP_CODIGO'
      Origin = '"CUPOM"."CUP_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCupomCUP_CONDICAO: TIntegerField
      FieldName = 'CUP_CONDICAO'
      Origin = '"CUPOM"."CUP_CONDICAO"'
      Required = True
    end
    object TBCupomCUP_COO: TIntegerField
      FieldName = 'CUP_COO'
      Origin = '"CUPOM"."CUP_COO"'
    end
    object TBCupomCUP_DESCVALOR: TFMTBCDField
      FieldName = 'CUP_DESCVALOR'
      Origin = '"CUPOM"."CUP_DESCVALOR"'
      Precision = 18
    end
    object TBCupomCUP_DTATUALIZACAO: TDateField
      FieldName = 'CUP_DTATUALIZACAO'
      Origin = '"CUPOM"."CUP_DTATUALIZACAO"'
    end
    object TBCupomCUP_DTEMISSAO: TDateField
      FieldName = 'CUP_DTEMISSAO'
      Origin = '"CUPOM"."CUP_DTEMISSAO"'
    end
    object TBCupomCUP_ECF: TIntegerField
      FieldName = 'CUP_ECF'
      Origin = '"CUPOM"."CUP_ECF"'
      Required = True
    end
    object TBCupomCUP_MOTIVO: TIBStringField
      FieldName = 'CUP_MOTIVO'
      Origin = '"CUPOM"."CUP_MOTIVO"'
      Size = 1
    end
    object TBCupomCUP_NFCE: TIntegerField
      FieldName = 'CUP_NFCE'
      Origin = 'CUPOM.CUP_NFCE'
    end
    object TBCupomCUP_PROTOCOLODH: TIBStringField
      FieldName = 'CUP_PROTOCOLODH'
      Origin = 'CUPOM.CUP_PROTOCOLODH'
      Size = 30
    end
    object TBCupomCUP_PROTOCOLO: TIBStringField
      FieldName = 'CUP_PROTOCOLO'
      Origin = 'CUPOM.CUP_PROTOCOLO'
      Size = 40
    end
    object TBCupomCUP_STATUS: TIBStringField
      FieldName = 'CUP_STATUS'
      Origin = '"CUPOM"."CUP_STATUS"'
      Size = 1
    end
    object TBCupomCUP_TOTALITENS: TFMTBCDField
      FieldName = 'CUP_TOTALITENS'
      Origin = 'CUPOM.CUP_TOTALITENS'
      Precision = 18
    end
    object TBCupomCUP_USUARIO: TIBStringField
      FieldName = 'CUP_USUARIO'
      Origin = '"CUPOM"."CUP_USUARIO"'
    end
    object TBCupomCUP_VALORTOTAL: TFMTBCDField
      FieldName = 'CUP_VALORTOTAL'
      Origin = '"CUPOM"."CUP_VALORTOTAL"'
      Precision = 18
    end
    object TBCupomCUP_VENDA: TIntegerField
      FieldName = 'CUP_VENDA'
      Origin = '"CUPOM"."CUP_VENDA"'
    end
    object TBCupomCUP_VENDEDOR: TIntegerField
      FieldName = 'CUP_VENDEDOR'
      Origin = '"CUPOM"."CUP_VENDEDOR"'
      Required = True
    end
  end
  object TRCupom: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 280
  end
  object TBCupomItens: TIBDataSet
    Database = IBDatabase1
    Transaction = TRCupomItens
    AfterDelete = TBCupomItensAfterDelete
    AfterPost = TBCupomItensAfterPost
    BeforePost = TBCupomItensBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CUPOMITENS'
      'where'
      '  CUI_CODIGO = :OLD_CUI_CODIGO')
    InsertSQL.Strings = (
      'insert into CUPOMITENS'
      
        '  (CUI_CODIGO, CUI_CUPOM, CUI_ITEM, CUI_PRODUTO, CUI_QUANTIDADE,' +
        ' CUI_VALORUNIT, '
      '   CUI_VALORTOTAL, CUI_TRIBUTO, CUI_DESCVALOR, CUI_ACREVALOR)'
      'values'
      
        '  (:CUI_CODIGO, :CUI_CUPOM, :CUI_ITEM, :CUI_PRODUTO, :CUI_QUANTI' +
        'DADE, :CUI_VALORUNIT, '
      
        '   :CUI_VALORTOTAL, :CUI_TRIBUTO, :CUI_DESCVALOR, :CUI_ACREVALOR' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CUI_CODIGO,'
      '  CUI_CUPOM,'
      '  CUI_ITEM,'
      '  CUI_PRODUTO,'
      '  CUI_QUANTIDADE,'
      '  CUI_VALORUNIT,'
      '  CUI_VALORTOTAL,'
      '  CUI_TRIBUTO,'
      '  CUI_DESCVALOR,'
      '  CUI_ACREVALOR'
      'from CUPOMITENS '
      'where'
      '  CUI_CODIGO = :CUI_CODIGO')
    SelectSQL.Strings = (
      'select * from CUPOMITENS'
      'where CUI_CUPOM=:CUP_CODIGO'
      'order by CUI_CODIGO')
    ModifySQL.Strings = (
      'update CUPOMITENS'
      'set'
      '  CUI_CODIGO = :CUI_CODIGO,'
      '  CUI_CUPOM = :CUI_CUPOM,'
      '  CUI_ITEM = :CUI_ITEM,'
      '  CUI_PRODUTO = :CUI_PRODUTO,'
      '  CUI_QUANTIDADE = :CUI_QUANTIDADE,'
      '  CUI_VALORUNIT = :CUI_VALORUNIT,'
      '  CUI_VALORTOTAL = :CUI_VALORTOTAL,'
      '  CUI_TRIBUTO = :CUI_TRIBUTO,'
      '  CUI_DESCVALOR = :CUI_DESCVALOR,'
      '  CUI_ACREVALOR = :CUI_ACREVALOR'
      'where'
      '  CUI_CODIGO = :OLD_CUI_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CUI_CODIGO'
    GeneratorField.Generator = 'GEN_CUPOMITENS'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DSCupom
    Left = 176
    Top = 232
    object TBCupomItensCUI_ACREVALOR: TFMTBCDField
      FieldName = 'CUI_ACREVALOR'
      Origin = '"CUPOMITENS"."CUI_ACREVALOR"'
      Precision = 18
    end
    object TBCupomItensCUI_CODIGO: TIntegerField
      FieldName = 'CUI_CODIGO'
      Origin = '"CUPOMITENS"."CUI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCupomItensCUI_CUPOM: TIntegerField
      FieldName = 'CUI_CUPOM'
      Origin = '"CUPOMITENS"."CUI_CUPOM"'
      Required = True
    end
    object TBCupomItensCUI_DESCVALOR: TFMTBCDField
      FieldName = 'CUI_DESCVALOR'
      Origin = '"CUPOMITENS"."CUI_DESCVALOR"'
      Precision = 18
    end
    object TBCupomItensCUI_ITEM: TIntegerField
      FieldName = 'CUI_ITEM'
      Origin = '"CUPOMITENS"."CUI_ITEM"'
    end
    object TBCupomItensCUI_PRODUTO: TIntegerField
      FieldName = 'CUI_PRODUTO'
      Origin = '"CUPOMITENS"."CUI_PRODUTO"'
      Required = True
    end
    object TBCupomItensCUI_QUANTIDADE: TFMTBCDField
      FieldName = 'CUI_QUANTIDADE'
      Origin = '"CUPOMITENS"."CUI_QUANTIDADE"'
      Precision = 18
    end
    object TBCupomItensCUI_VALORTOTAL: TFMTBCDField
      FieldName = 'CUI_VALORTOTAL'
      Origin = '"CUPOMITENS"."CUI_VALORTOTAL"'
      Precision = 18
    end
    object TBCupomItensCUI_VALORUNIT: TFMTBCDField
      FieldName = 'CUI_VALORUNIT'
      Origin = '"CUPOMITENS"."CUI_VALORUNIT"'
      Precision = 18
    end
    object TBCupomItensCUI_TRIBUTO: TIBStringField
      FieldName = 'CUI_TRIBUTO'
      Origin = '"CUPOMITENS"."CUI_TRIBUTO"'
      Size = 10
    end
  end
  object TRCupomItens: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 176
    Top = 280
  end
  object TBReceber: TIBDataSet
    Database = IBDatabase1
    Transaction = TRReceber
    AfterDelete = TBReceberAfterDelete
    AfterInsert = TBReceberAfterInsert
    AfterPost = TBReceberAfterPost
    BeforePost = TBReceberBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RECEBER'
      'where'
      '  REE_CODIGO = :OLD_REE_CODIGO')
    InsertSQL.Strings = (
      'insert into RECEBER'
      
        '  (REE_CODIGO, REE_CLIENTE, REE_CONTA, REE_RECEITA, REE_VENDEDOR' +
        ', REE_ACRESCIMOPORC, '
      
        '   REE_ACRESCIMOPORCPAGO, REE_ACRESCIMOVALOR, REE_ACRESCIMOVALOR' +
        'PAGO, REE_BAIXADOPOR, '
      
        '   REE_BOLETO, REE_DESCPORC, REE_DESCPORCVENCIMENTO, REE_DESCRIC' +
        'AO, REE_DESCVALOR, '
      
        '   REE_DIASATRASO, REE_DIASPRAZO, REE_DTATUALIZACAO, REE_DTCADAS' +
        'TRO, REE_DTEMISSAO, '
      
        '   REE_DTJUROSAPOS, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_JUROS' +
        'PAGO, REE_MULTAPAGO, '
      
        '   REE_NOVOCODIGO, REE_NUMDOCTO, REE_OBSERVACOES, REE_PARCELANUM' +
        ', REE_PARCELAQTDE, '
      
        '   REE_PORCJUROS, REE_STATUS, REE_TIPOBAIXA, REE_TIPODOCTO, REE_' +
        'USUARIO, '
      
        '   REE_VALOR, REE_VALORACESSORIAS, REE_VALORJUROS, REE_VALORMULT' +
        'A, REE_VALORORIGINAL, '
      '   REE_VALORPAGO, REE_VALORSEMDESCONTO, REE_VENDA)'
      'values'
      
        '  (:REE_CODIGO, :REE_CLIENTE, :REE_CONTA, :REE_RECEITA, :REE_VEN' +
        'DEDOR, '
      
        '   :REE_ACRESCIMOPORC, :REE_ACRESCIMOPORCPAGO, :REE_ACRESCIMOVAL' +
        'OR, :REE_ACRESCIMOVALORPAGO, '
      
        '   :REE_BAIXADOPOR, :REE_BOLETO, :REE_DESCPORC, :REE_DESCPORCVEN' +
        'CIMENTO, '
      
        '   :REE_DESCRICAO, :REE_DESCVALOR, :REE_DIASATRASO, :REE_DIASPRA' +
        'ZO, :REE_DTATUALIZACAO, '
      
        '   :REE_DTCADASTRO, :REE_DTEMISSAO, :REE_DTJUROSAPOS, :REE_DTPAG' +
        'AMENTO, '
      
        '   :REE_DTVENCIMENTO, :REE_JUROSPAGO, :REE_MULTAPAGO, :REE_NOVOC' +
        'ODIGO, '
      
        '   :REE_NUMDOCTO, :REE_OBSERVACOES, :REE_PARCELANUM, :REE_PARCEL' +
        'AQTDE, '
      
        '   :REE_PORCJUROS, :REE_STATUS, :REE_TIPOBAIXA, :REE_TIPODOCTO, ' +
        ':REE_USUARIO, '
      
        '   :REE_VALOR, :REE_VALORACESSORIAS, :REE_VALORJUROS, :REE_VALOR' +
        'MULTA, '
      
        '   :REE_VALORORIGINAL, :REE_VALORPAGO, :REE_VALORSEMDESCONTO, :R' +
        'EE_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  REE_CODIGO,'
      '  REE_CLIENTE,'
      '  REE_CONTA,'
      '  REE_RECEITA,'
      '  REE_VENDEDOR,'
      '  REE_ACRESCIMOPORC,'
      '  REE_ACRESCIMOPORCPAGO,'
      '  REE_ACRESCIMOVALOR,'
      '  REE_ACRESCIMOVALORPAGO,'
      '  REE_BAIXADOPOR,'
      '  REE_BOLETO,'
      '  REE_DESCPORC,'
      '  REE_DESCPORCVENCIMENTO,'
      '  REE_DESCRICAO,'
      '  REE_DESCVALOR,'
      '  REE_DIASATRASO,'
      '  REE_DIASPRAZO,'
      '  REE_DTATUALIZACAO,'
      '  REE_DTCADASTRO,'
      '  REE_DTEMISSAO,'
      '  REE_DTJUROSAPOS,'
      '  REE_DTPAGAMENTO,'
      '  REE_DTVENCIMENTO,'
      '  REE_JUROSPAGO,'
      '  REE_MULTAPAGO,'
      '  REE_NOVOCODIGO,'
      '  REE_NUMDOCTO,'
      '  REE_OBSERVACOES,'
      '  REE_PARCELANUM,'
      '  REE_PARCELAQTDE,'
      '  REE_PORCJUROS,'
      '  REE_STATUS,'
      '  REE_TIPOBAIXA,'
      '  REE_TIPODOCTO,'
      '  REE_USUARIO,'
      '  REE_VALOR,'
      '  REE_VALORACESSORIAS,'
      '  REE_VALORJUROS,'
      '  REE_VALORMULTA,'
      '  REE_VALORORIGINAL,'
      '  REE_VALORPAGO,'
      '  REE_VALORSEMDESCONTO,'
      '  REE_VENDA'
      'from RECEBER '
      'where'
      '  REE_CODIGO = :REE_CODIGO')
    SelectSQL.Strings = (
      'select * from RECEBER'
      'where REE_CODIGO=:codigo'
      '')
    ModifySQL.Strings = (
      'update RECEBER'
      'set'
      '  REE_CODIGO = :REE_CODIGO,'
      '  REE_CLIENTE = :REE_CLIENTE,'
      '  REE_CONTA = :REE_CONTA,'
      '  REE_RECEITA = :REE_RECEITA,'
      '  REE_VENDEDOR = :REE_VENDEDOR,'
      '  REE_ACRESCIMOPORC = :REE_ACRESCIMOPORC,'
      '  REE_ACRESCIMOPORCPAGO = :REE_ACRESCIMOPORCPAGO,'
      '  REE_ACRESCIMOVALOR = :REE_ACRESCIMOVALOR,'
      '  REE_ACRESCIMOVALORPAGO = :REE_ACRESCIMOVALORPAGO,'
      '  REE_BAIXADOPOR = :REE_BAIXADOPOR,'
      '  REE_BOLETO = :REE_BOLETO,'
      '  REE_DESCPORC = :REE_DESCPORC,'
      '  REE_DESCPORCVENCIMENTO = :REE_DESCPORCVENCIMENTO,'
      '  REE_DESCRICAO = :REE_DESCRICAO,'
      '  REE_DESCVALOR = :REE_DESCVALOR,'
      '  REE_DIASATRASO = :REE_DIASATRASO,'
      '  REE_DIASPRAZO = :REE_DIASPRAZO,'
      '  REE_DTATUALIZACAO = :REE_DTATUALIZACAO,'
      '  REE_DTCADASTRO = :REE_DTCADASTRO,'
      '  REE_DTEMISSAO = :REE_DTEMISSAO,'
      '  REE_DTJUROSAPOS = :REE_DTJUROSAPOS,'
      '  REE_DTPAGAMENTO = :REE_DTPAGAMENTO,'
      '  REE_DTVENCIMENTO = :REE_DTVENCIMENTO,'
      '  REE_JUROSPAGO = :REE_JUROSPAGO,'
      '  REE_MULTAPAGO = :REE_MULTAPAGO,'
      '  REE_NOVOCODIGO = :REE_NOVOCODIGO,'
      '  REE_NUMDOCTO = :REE_NUMDOCTO,'
      '  REE_OBSERVACOES = :REE_OBSERVACOES,'
      '  REE_PARCELANUM = :REE_PARCELANUM,'
      '  REE_PARCELAQTDE = :REE_PARCELAQTDE,'
      '  REE_PORCJUROS = :REE_PORCJUROS,'
      '  REE_STATUS = :REE_STATUS,'
      '  REE_TIPOBAIXA = :REE_TIPOBAIXA,'
      '  REE_TIPODOCTO = :REE_TIPODOCTO,'
      '  REE_USUARIO = :REE_USUARIO,'
      '  REE_VALOR = :REE_VALOR,'
      '  REE_VALORACESSORIAS = :REE_VALORACESSORIAS,'
      '  REE_VALORJUROS = :REE_VALORJUROS,'
      '  REE_VALORMULTA = :REE_VALORMULTA,'
      '  REE_VALORORIGINAL = :REE_VALORORIGINAL,'
      '  REE_VALORPAGO = :REE_VALORPAGO,'
      '  REE_VALORSEMDESCONTO = :REE_VALORSEMDESCONTO,'
      '  REE_VENDA = :REE_VENDA'
      'where'
      '  REE_CODIGO = :OLD_REE_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'REE_CODIGO'
    GeneratorField.Generator = 'GEN_RECEBER'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 368
    Top = 232
    object TBReceberREE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = '"RECEBER"."REE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBReceberREE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
      Origin = '"RECEBER"."REE_CLIENTE"'
      Required = True
    end
    object TBReceberREE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
      Origin = '"RECEBER"."REE_CONTA"'
      Required = True
    end
    object TBReceberREE_RECEITA: TIntegerField
      FieldName = 'REE_RECEITA'
      Origin = '"RECEBER"."REE_RECEITA"'
      Required = True
    end
    object TBReceberREE_VENDEDOR: TIntegerField
      FieldName = 'REE_VENDEDOR'
      Origin = '"RECEBER"."REE_VENDEDOR"'
      Required = True
    end
    object TBReceberREE_ACRESCIMOPORC: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORC'
      Origin = '"RECEBER"."REE_ACRESCIMOPORC"'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORCPAGO'
      Origin = '"RECEBER"."REE_ACRESCIMOPORCPAGO"'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOVALOR: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALOR'
      Origin = '"RECEBER"."REE_ACRESCIMOVALOR"'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALORPAGO'
      Origin = '"RECEBER"."REE_ACRESCIMOVALORPAGO"'
      Precision = 18
    end
    object TBReceberREE_BAIXADOPOR: TIBStringField
      FieldName = 'REE_BAIXADOPOR'
      Origin = '"RECEBER"."REE_BAIXADOPOR"'
    end
    object TBReceberREE_BOLETO: TIntegerField
      FieldName = 'REE_BOLETO'
      Origin = '"RECEBER"."REE_BOLETO"'
    end
    object TBReceberREE_DESCPORC: TFMTBCDField
      FieldName = 'REE_DESCPORC'
      Origin = '"RECEBER"."REE_DESCPORC"'
      Precision = 18
    end
    object TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField
      FieldName = 'REE_DESCPORCVENCIMENTO'
      Origin = '"RECEBER"."REE_DESCPORCVENCIMENTO"'
      Precision = 18
    end
    object TBReceberREE_DESCRICAO: TIBStringField
      FieldName = 'REE_DESCRICAO'
      Origin = '"RECEBER"."REE_DESCRICAO"'
      Size = 50
    end
    object TBReceberREE_DESCVALOR: TFMTBCDField
      FieldName = 'REE_DESCVALOR'
      Origin = '"RECEBER"."REE_DESCVALOR"'
      Precision = 18
    end
    object TBReceberREE_DIASATRASO: TIntegerField
      FieldName = 'REE_DIASATRASO'
      Origin = '"RECEBER"."REE_DIASATRASO"'
    end
    object TBReceberREE_DIASPRAZO: TIntegerField
      FieldName = 'REE_DIASPRAZO'
      Origin = '"RECEBER"."REE_DIASPRAZO"'
    end
    object TBReceberREE_DTATUALIZACAO: TDateField
      FieldName = 'REE_DTATUALIZACAO'
      Origin = '"RECEBER"."REE_DTATUALIZACAO"'
    end
    object TBReceberREE_DTCADASTRO: TDateField
      FieldName = 'REE_DTCADASTRO'
      Origin = '"RECEBER"."REE_DTCADASTRO"'
    end
    object TBReceberREE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = '"RECEBER"."REE_DTEMISSAO"'
    end
    object TBReceberREE_DTJUROSAPOS: TDateField
      FieldName = 'REE_DTJUROSAPOS'
      Origin = '"RECEBER"."REE_DTJUROSAPOS"'
    end
    object TBReceberREE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
      Origin = '"RECEBER"."REE_DTPAGAMENTO"'
    end
    object TBReceberREE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = '"RECEBER"."REE_DTVENCIMENTO"'
    end
    object TBReceberREE_JUROSPAGO: TFMTBCDField
      FieldName = 'REE_JUROSPAGO'
      Origin = '"RECEBER"."REE_JUROSPAGO"'
      Precision = 18
    end
    object TBReceberREE_MULTAPAGO: TFMTBCDField
      FieldName = 'REE_MULTAPAGO'
      Origin = '"RECEBER"."REE_MULTAPAGO"'
      Precision = 18
    end
    object TBReceberREE_NOVOCODIGO: TIntegerField
      FieldName = 'REE_NOVOCODIGO'
      Origin = '"RECEBER"."REE_NOVOCODIGO"'
    end
    object TBReceberREE_NUMDOCTO: TIBStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = '"RECEBER"."REE_NUMDOCTO"'
    end
    object TBReceberREE_OBSERVACOES: TWideMemoField
      FieldName = 'REE_OBSERVACOES'
      Origin = '"RECEBER"."REE_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBReceberREE_PARCELANUM: TIntegerField
      FieldName = 'REE_PARCELANUM'
      Origin = '"RECEBER"."REE_PARCELANUM"'
    end
    object TBReceberREE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
      Origin = '"RECEBER"."REE_PARCELAQTDE"'
    end
    object TBReceberREE_PORCJUROS: TFMTBCDField
      FieldName = 'REE_PORCJUROS'
      Origin = '"RECEBER"."REE_PORCJUROS"'
      Precision = 18
    end
    object TBReceberREE_STATUS: TIBStringField
      FieldName = 'REE_STATUS'
      Origin = '"RECEBER"."REE_STATUS"'
      Size = 1
    end
    object TBReceberREE_TIPOBAIXA: TIBStringField
      FieldName = 'REE_TIPOBAIXA'
      Origin = '"RECEBER"."REE_TIPOBAIXA"'
      Size = 1
    end
    object TBReceberREE_TIPODOCTO: TIBStringField
      FieldName = 'REE_TIPODOCTO'
      Origin = '"RECEBER"."REE_TIPODOCTO"'
    end
    object TBReceberREE_USUARIO: TIBStringField
      FieldName = 'REE_USUARIO'
      Origin = '"RECEBER"."REE_USUARIO"'
    end
    object TBReceberREE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = '"RECEBER"."REE_VALOR"'
      Precision = 18
    end
    object TBReceberREE_VALORACESSORIAS: TFMTBCDField
      FieldName = 'REE_VALORACESSORIAS'
      Origin = '"RECEBER"."REE_VALORACESSORIAS"'
      Precision = 18
    end
    object TBReceberREE_VALORJUROS: TFMTBCDField
      FieldName = 'REE_VALORJUROS'
      Origin = '"RECEBER"."REE_VALORJUROS"'
      Precision = 18
    end
    object TBReceberREE_VALORMULTA: TFMTBCDField
      FieldName = 'REE_VALORMULTA'
      Origin = '"RECEBER"."REE_VALORMULTA"'
      Precision = 18
    end
    object TBReceberREE_VALORORIGINAL: TFMTBCDField
      FieldName = 'REE_VALORORIGINAL'
      Origin = '"RECEBER"."REE_VALORORIGINAL"'
      Precision = 18
    end
    object TBReceberREE_VALORPAGO: TFMTBCDField
      FieldName = 'REE_VALORPAGO'
      Origin = '"RECEBER"."REE_VALORPAGO"'
      Precision = 18
    end
    object TBReceberREE_VALORSEMDESCONTO: TFMTBCDField
      FieldName = 'REE_VALORSEMDESCONTO'
      Origin = '"RECEBER"."REE_VALORSEMDESCONTO"'
      Precision = 18
    end
    object TBReceberREE_VENDA: TIntegerField
      FieldName = 'REE_VENDA'
      Origin = '"RECEBER"."REE_VENDA"'
    end
  end
  object TRReceber: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 368
    Top = 280
  end
  object IBScript: TIBScript
    Database = IBDatabase1
    Transaction = TRScript
    Terminator = ';'
    Left = 120
    Top = 32
  end
  object TRScript: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 152
    Top = 32
  end
  object TBEstoque: TIBDataSet
    Database = IBDatabase1
    Transaction = TREstoque
    AfterInsert = TBEstoqueAfterInsert
    AfterPost = TBEstoqueAfterPost
    BeforePost = TBEstoqueBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  EST_CODIGO = :OLD_EST_CODIGO')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      
        '  (EST_CODIGO, EST_ALMOXARIFADO, EST_PRODUTO, EST_CLIENTE, EST_C' +
        'ONVERSAO, '
      
        '   EST_DATA, EST_DESCRICAO, EST_DTATUALIZACAO, EST_DTCADASTRO, E' +
        'ST_ESTOQUEANTERIOR, '
      
        '   EST_ESTOQUEPOSTERIOR, EST_FORNECEDOR, EST_NUMDOCTO, EST_OBSER' +
        'VACOES, '
      
        '   EST_PRODUTOREAL, EST_QUANTIDADE, EST_QUANTIDADEREAL, EST_TIPO' +
        'DOCTO, '
      '   EST_TRANSACAO, EST_USUARIO, EST_VALORUNIT, EST_VENDEDOR)'
      'values'
      
        '  (:EST_CODIGO, :EST_ALMOXARIFADO, :EST_PRODUTO, :EST_CLIENTE, :' +
        'EST_CONVERSAO, '
      
        '   :EST_DATA, :EST_DESCRICAO, :EST_DTATUALIZACAO, :EST_DTCADASTR' +
        'O, :EST_ESTOQUEANTERIOR, '
      
        '   :EST_ESTOQUEPOSTERIOR, :EST_FORNECEDOR, :EST_NUMDOCTO, :EST_O' +
        'BSERVACOES, '
      
        '   :EST_PRODUTOREAL, :EST_QUANTIDADE, :EST_QUANTIDADEREAL, :EST_' +
        'TIPODOCTO, '
      '   :EST_TRANSACAO, :EST_USUARIO, :EST_VALORUNIT, :EST_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  EST_CODIGO,'
      '  EST_ALMOXARIFADO,'
      '  EST_PRODUTO,'
      '  EST_CLIENTE,'
      '  EST_CONVERSAO,'
      '  EST_DATA,'
      '  EST_DESCRICAO,'
      '  EST_DTATUALIZACAO,'
      '  EST_DTCADASTRO,'
      '  EST_ESTOQUEANTERIOR,'
      '  EST_ESTOQUEPOSTERIOR,'
      '  EST_FORNECEDOR,'
      '  EST_NUMDOCTO,'
      '  EST_OBSERVACOES,'
      '  EST_PRODUTOREAL,'
      '  EST_QUANTIDADE,'
      '  EST_QUANTIDADEREAL,'
      '  EST_TIPODOCTO,'
      '  EST_TRANSACAO,'
      '  EST_USUARIO,'
      '  EST_VALORUNIT,'
      '  EST_VENDEDOR'
      'from ESTOQUE '
      'where'
      '  EST_CODIGO = :EST_CODIGO')
    SelectSQL.Strings = (
      'select * from ESTOQUE'
      'where EST_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  EST_CODIGO = :EST_CODIGO,'
      '  EST_ALMOXARIFADO = :EST_ALMOXARIFADO,'
      '  EST_PRODUTO = :EST_PRODUTO,'
      '  EST_CLIENTE = :EST_CLIENTE,'
      '  EST_CONVERSAO = :EST_CONVERSAO,'
      '  EST_DATA = :EST_DATA,'
      '  EST_DESCRICAO = :EST_DESCRICAO,'
      '  EST_DTATUALIZACAO = :EST_DTATUALIZACAO,'
      '  EST_DTCADASTRO = :EST_DTCADASTRO,'
      '  EST_ESTOQUEANTERIOR = :EST_ESTOQUEANTERIOR,'
      '  EST_ESTOQUEPOSTERIOR = :EST_ESTOQUEPOSTERIOR,'
      '  EST_FORNECEDOR = :EST_FORNECEDOR,'
      '  EST_NUMDOCTO = :EST_NUMDOCTO,'
      '  EST_OBSERVACOES = :EST_OBSERVACOES,'
      '  EST_PRODUTOREAL = :EST_PRODUTOREAL,'
      '  EST_QUANTIDADE = :EST_QUANTIDADE,'
      '  EST_QUANTIDADEREAL = :EST_QUANTIDADEREAL,'
      '  EST_TIPODOCTO = :EST_TIPODOCTO,'
      '  EST_TRANSACAO = :EST_TRANSACAO,'
      '  EST_USUARIO = :EST_USUARIO,'
      '  EST_VALORUNIT = :EST_VALORUNIT,'
      '  EST_VENDEDOR = :EST_VENDEDOR'
      'where'
      '  EST_CODIGO = :OLD_EST_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'EST_CODIGO'
    GeneratorField.Generator = 'GEN_ESTOQUE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 240
    Top = 232
    object TBEstoqueEST_CODIGO: TIntegerField
      FieldName = 'EST_CODIGO'
      Origin = '"ESTOQUE"."EST_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEstoqueEST_ALMOXARIFADO: TIntegerField
      FieldName = 'EST_ALMOXARIFADO'
      Origin = '"ESTOQUE"."EST_ALMOXARIFADO"'
      Required = True
    end
    object TBEstoqueEST_PRODUTO: TIntegerField
      FieldName = 'EST_PRODUTO'
      Origin = '"ESTOQUE"."EST_PRODUTO"'
      Required = True
    end
    object TBEstoqueEST_CLIENTE: TIntegerField
      FieldName = 'EST_CLIENTE'
      Origin = '"ESTOQUE"."EST_CLIENTE"'
    end
    object TBEstoqueEST_CONVERSAO: TFMTBCDField
      FieldName = 'EST_CONVERSAO'
      Origin = '"ESTOQUE"."EST_CONVERSAO"'
      Precision = 18
    end
    object TBEstoqueEST_DATA: TDateField
      FieldName = 'EST_DATA'
      Origin = '"ESTOQUE"."EST_DATA"'
    end
    object TBEstoqueEST_DESCRICAO: TIBStringField
      FieldName = 'EST_DESCRICAO'
      Origin = '"ESTOQUE"."EST_DESCRICAO"'
      Size = 50
    end
    object TBEstoqueEST_DTATUALIZACAO: TDateField
      FieldName = 'EST_DTATUALIZACAO'
      Origin = '"ESTOQUE"."EST_DTATUALIZACAO"'
    end
    object TBEstoqueEST_DTCADASTRO: TDateField
      FieldName = 'EST_DTCADASTRO'
      Origin = '"ESTOQUE"."EST_DTCADASTRO"'
    end
    object TBEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEANTERIOR'
      Origin = '"ESTOQUE"."EST_ESTOQUEANTERIOR"'
      Precision = 18
    end
    object TBEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEPOSTERIOR'
      Origin = '"ESTOQUE"."EST_ESTOQUEPOSTERIOR"'
      Precision = 18
    end
    object TBEstoqueEST_FORNECEDOR: TIntegerField
      FieldName = 'EST_FORNECEDOR'
      Origin = '"ESTOQUE"."EST_FORNECEDOR"'
    end
    object TBEstoqueEST_NUMDOCTO: TIBStringField
      FieldName = 'EST_NUMDOCTO'
      Origin = '"ESTOQUE"."EST_NUMDOCTO"'
    end
    object TBEstoqueEST_OBSERVACOES: TWideMemoField
      FieldName = 'EST_OBSERVACOES'
      Origin = '"ESTOQUE"."EST_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object TBEstoqueEST_PRODUTOREAL: TIntegerField
      FieldName = 'EST_PRODUTOREAL'
      Origin = '"ESTOQUE"."EST_PRODUTOREAL"'
    end
    object TBEstoqueEST_QUANTIDADE: TFMTBCDField
      FieldName = 'EST_QUANTIDADE'
      Origin = '"ESTOQUE"."EST_QUANTIDADE"'
      Precision = 18
    end
    object TBEstoqueEST_QUANTIDADEREAL: TFMTBCDField
      FieldName = 'EST_QUANTIDADEREAL'
      Origin = '"ESTOQUE"."EST_QUANTIDADEREAL"'
      Precision = 18
    end
    object TBEstoqueEST_TIPODOCTO: TIBStringField
      FieldName = 'EST_TIPODOCTO'
      Origin = '"ESTOQUE"."EST_TIPODOCTO"'
    end
    object TBEstoqueEST_TRANSACAO: TIBStringField
      FieldName = 'EST_TRANSACAO'
      Origin = '"ESTOQUE"."EST_TRANSACAO"'
      Size = 1
    end
    object TBEstoqueEST_USUARIO: TIBStringField
      FieldName = 'EST_USUARIO'
      Origin = '"ESTOQUE"."EST_USUARIO"'
    end
    object TBEstoqueEST_VALORUNIT: TFMTBCDField
      FieldName = 'EST_VALORUNIT'
      Origin = '"ESTOQUE"."EST_VALORUNIT"'
      Precision = 18
    end
    object TBEstoqueEST_VENDEDOR: TIntegerField
      FieldName = 'EST_VENDEDOR'
      Origin = '"ESTOQUE"."EST_VENDEDOR"'
    end
  end
  object TREstoque: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 240
    Top = 280
  end
  object TBProdutosQtde: TIBDataSet
    Database = IBDatabase1
    Transaction = TRProdutosQtde
    AfterDelete = TBProdutosQtdeAfterDelete
    AfterPost = TBProdutosQtdeAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOSQTDE'
      'where'
      '  PRQ_PRODUTO = :OLD_PRQ_PRODUTO and'
      '  PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO')
    InsertSQL.Strings = (
      'insert into PRODUTOSQTDE'
      '  (PRQ_PRODUTO, PRQ_ALMOXARIFADO, PRQ_QUANTIDADE)'
      'values'
      '  (:PRQ_PRODUTO, :PRQ_ALMOXARIFADO, :PRQ_QUANTIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  PRQ_PRODUTO,'
      '  PRQ_ALMOXARIFADO,'
      '  PRQ_QUANTIDADE'
      'from PRODUTOSQTDE '
      'where'
      '  PRQ_PRODUTO = :PRQ_PRODUTO and'
      '  PRQ_ALMOXARIFADO = :PRQ_ALMOXARIFADO')
    SelectSQL.Strings = (
      'select * from PRODUTOSQTDE'
      'where PRQ_PRODUTO=:produto and PRQ_ALMOXARIFADO=:almoxarifado'
      ''
      '')
    ModifySQL.Strings = (
      'update PRODUTOSQTDE'
      'set'
      '  PRQ_PRODUTO = :PRQ_PRODUTO,'
      '  PRQ_ALMOXARIFADO = :PRQ_ALMOXARIFADO,'
      '  PRQ_QUANTIDADE = :PRQ_QUANTIDADE'
      'where'
      '  PRQ_PRODUTO = :OLD_PRQ_PRODUTO and'
      '  PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 304
    Top = 232
    object TBProdutosQtdePRQ_PRODUTO: TIntegerField
      FieldName = 'PRQ_PRODUTO'
      Required = True
    end
    object TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField
      FieldName = 'PRQ_ALMOXARIFADO'
      Required = True
    end
    object TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField
      FieldName = 'PRQ_QUANTIDADE'
      Origin = '"PRODUTOSQTDE"."PRQ_QUANTIDADE"'
      Precision = 18
    end
  end
  object TRProdutosQtde: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 304
    Top = 280
  end
  object DSCupom: TDataSource
    DataSet = TBCupom
    Left = 112
    Top = 328
  end
  object QYAux2: TIBQuery
    Database = IBDatabase1
    Transaction = TRAux2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'UNI_CODIGO,'
      'UNI_DESCRICAO'
      'from UNIDADES'
      'order by UNI_CODIGO')
    Left = 112
    Top = 96
  end
  object TRAux2: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
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
      '  (PAR_CONTALOCALPADRAO)'
      'values'
      '  (:PAR_CONTALOCALPADRAO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_CODIGO,'
      '  PAR_CONTALOCALPADRAO'
      'from PARAMETROS '
      'where'
      '  PAR_CODIGO = :PAR_CODIGO')
    SelectSQL.Strings = (
      'select PAR_CONTALOCALPADRAO from PARAMETROS'
      'where PAR_CODIGO=1'
      '')
    ModifySQL.Strings = (
      'update PARAMETROS'
      'set'
      '  PAR_CONTALOCALPADRAO = :PAR_CONTALOCALPADRAO'
      'where'
      '  PAR_CODIGO = :OLD_PAR_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.ApplyEvent = gamOnPost
    Left = 432
    Top = 232
    object TBParametrosPAR_CONTALOCALPADRAO: TIntegerField
      FieldName = 'PAR_CONTALOCALPADRAO'
      Origin = '"PARAMETROS"."PAR_CONTALOCALPADRAO"'
    end
  end
  object TRParametros: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 432
    Top = 280
  end
  object TBBlocox: TIBDataSet
    Database = IBDatabase1
    Transaction = TRBlocox
    AfterDelete = TBBlocoxAfterDelete
    AfterInsert = TBBlocoxAfterInsert
    AfterPost = TBBlocoxAfterPost
    BeforePost = TBBlocoxBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOCOX'
      'where'
      '  BLX_CODIGO = :OLD_BLX_CODIGO')
    InsertSQL.Strings = (
      'insert into BLOCOX'
      '  (BLX_ANO, BLX_CODIGO, BLX_DTCADASTRO, BLX_HRCADASTRO, BLX_MES)'
      'values'
      
        '  (:BLX_ANO, :BLX_CODIGO, :BLX_DTCADASTRO, :BLX_HRCADASTRO, :BLX' +
        '_MES)')
    RefreshSQL.Strings = (
      'Select '
      '  BLX_ANO,'
      '  BLX_CODIGO,'
      '  BLX_DTCADASTRO,'
      '  BLX_HRCADASTRO,'
      '  BLX_MES'
      'from BLOCOX '
      'where'
      '  BLX_CODIGO = :BLX_CODIGO')
    SelectSQL.Strings = (
      'select * from BLOCOX'
      'order by BLX_CODIGO desc'
      '')
    ModifySQL.Strings = (
      'update BLOCOX'
      'set'
      '  BLX_ANO = :BLX_ANO,'
      '  BLX_CODIGO = :BLX_CODIGO,'
      '  BLX_DTCADASTRO = :BLX_DTCADASTRO,'
      '  BLX_HRCADASTRO = :BLX_HRCADASTRO,'
      '  BLX_MES = :BLX_MES'
      'where'
      '  BLX_CODIGO = :OLD_BLX_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'BLX_CODIGO'
    GeneratorField.Generator = 'GEN_BLOCOX'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 48
    Top = 232
    object TBBlocoxBLX_ANO: TIntegerField
      FieldName = 'BLX_ANO'
      Origin = '"BLOCOX"."BLX_ANO"'
    end
    object TBBlocoxBLX_CODIGO: TIntegerField
      FieldName = 'BLX_CODIGO'
      Origin = '"BLOCOX"."BLX_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBlocoxBLX_DTCADASTRO: TDateField
      FieldName = 'BLX_DTCADASTRO'
      Origin = '"BLOCOX"."BLX_DTCADASTRO"'
    end
    object TBBlocoxBLX_HRCADASTRO: TTimeField
      FieldName = 'BLX_HRCADASTRO'
      Origin = '"BLOCOX"."BLX_HRCADASTRO"'
    end
    object TBBlocoxBLX_MES: TIntegerField
      FieldName = 'BLX_MES'
      Origin = '"BLOCOX"."BLX_MES"'
    end
  end
  object TRBlocox: TIBTransaction
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 48
    Top = 280
  end
  object DSBlocox: TDataSource
    DataSet = TBBlocox
    Left = 48
    Top = 328
  end
end
