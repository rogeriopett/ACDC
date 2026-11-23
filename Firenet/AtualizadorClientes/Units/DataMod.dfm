object DM: TDM
  OldCreateOrder = False
  Left = 251
  Top = 140
  Height = 394
  Width = 848
  object DBDestino: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    Left = 40
    Top = 176
  end
  object DBOrigem: TIBDatabase
    DatabaseName = 'C:\Runtime\Firenet\Dados\firenet.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=borland')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object TBDClientes: TIBDataSet
    Database = DBDestino
    Transaction = TRDClientes
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
      
        '   CLI_CIDADECODIGO, CLI_CIDADECODIGOCOB, CLI_CLASSIFICACAO, CLI' +
        '_CNPJ, '
      
        '   CLI_CNPJCOB, CLI_CODIGO, CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB,' +
        ' CLI_CONDICAO, '
      
        '   CLI_CONTATO, CLI_CPF, CLI_DESCONTO, CLI_DIACOBRANCA, CLI_DTAT' +
        'UALIZACAO, '
      
        '   CLI_DTCADASTRO, CLI_DTNASC, CLI_EMAIL, CLI_EMAIL2, CLI_ENDERE' +
        'CO, CLI_ENDERECOCOB, '
      
        '   CLI_ESTADO, CLI_ESTADOCIVIL, CLI_ESTADOCOB, CLI_ESTADOCODIGO,' +
        ' CLI_ESTADOCODIGOCOB, '
      
        '   CLI_FANTASIA, CLI_FONE0800, CLI_FONE1, CLI_FONE2, CLI_FONE3, ' +
        'CLI_IE, '
      
        '   CLI_IECOB, CLI_LIMITECREDITO, CLI_LOCALESTUDA, CLI_LOCALTRABA' +
        'LHO, CLI_MAE, '
      
        '   CLI_MAEEMAIL, CLI_MAEFONE, CLI_MAILING, CLI_MENSALISTA, CLI_M' +
        'SN, CLI_NEXTEL, '
      
        '   CLI_NOME, CLI_NUMERO, CLI_NUMEROCOB, CLI_OBSERVACOES, CLI_ORI' +
        'ENTACAOCOBRANCA, '
      
        '   CLI_PAI, CLI_PAIEMAIL, CLI_PAIFONE, CLI_PASSWORD, CLI_PONTOS,' +
        ' CLI_REGPROFISSIONAL, '
      
        '   CLI_RG, CLI_SETOR, CLI_SITE, CLI_STATUS, CLI_TABELAPRECO, CLI' +
        '_TELEVENDA, '
      '   CLI_TIPOCLIENTE, CLI_TIPOPESSOA, CLI_USUARIO, CLI_VENDEDOR)'
      'values'
      
        '  (:CLI_AFE, :CLI_ALVARA, :CLI_ALVARASANITARIO, :CLI_ATIVIDADE, ' +
        ':CLI_BAIRRO, '
      
        '   :CLI_BAIRROCOB, :CLI_BLOQUEARVENDA, :CLI_CEP, :CLI_CEPCOB, :C' +
        'LI_CIDADE, '
      
        '   :CLI_CIDADECOB, :CLI_CIDADECODIGO, :CLI_CIDADECODIGOCOB, :CLI' +
        '_CLASSIFICACAO, '
      
        '   :CLI_CNPJ, :CLI_CNPJCOB, :CLI_CODIGO, :CLI_COMPLEMENTO, :CLI_' +
        'COMPLEMENTOCOB, '
      
        '   :CLI_CONDICAO, :CLI_CONTATO, :CLI_CPF, :CLI_DESCONTO, :CLI_DI' +
        'ACOBRANCA, '
      
        '   :CLI_DTATUALIZACAO, :CLI_DTCADASTRO, :CLI_DTNASC, :CLI_EMAIL,' +
        ' :CLI_EMAIL2, '
      
        '   :CLI_ENDERECO, :CLI_ENDERECOCOB, :CLI_ESTADO, :CLI_ESTADOCIVI' +
        'L, :CLI_ESTADOCOB, '
      
        '   :CLI_ESTADOCODIGO, :CLI_ESTADOCODIGOCOB, :CLI_FANTASIA, :CLI_' +
        'FONE0800, '
      
        '   :CLI_FONE1, :CLI_FONE2, :CLI_FONE3, :CLI_IE, :CLI_IECOB, :CLI' +
        '_LIMITECREDITO, '
      
        '   :CLI_LOCALESTUDA, :CLI_LOCALTRABALHO, :CLI_MAE, :CLI_MAEEMAIL' +
        ', :CLI_MAEFONE, '
      
        '   :CLI_MAILING, :CLI_MENSALISTA, :CLI_MSN, :CLI_NEXTEL, :CLI_NO' +
        'ME, :CLI_NUMERO, '
      
        '   :CLI_NUMEROCOB, :CLI_OBSERVACOES, :CLI_ORIENTACAOCOBRANCA, :C' +
        'LI_PAI, '
      
        '   :CLI_PAIEMAIL, :CLI_PAIFONE, :CLI_PASSWORD, :CLI_PONTOS, :CLI' +
        '_REGPROFISSIONAL, '
      
        '   :CLI_RG, :CLI_SETOR, :CLI_SITE, :CLI_STATUS, :CLI_TABELAPRECO' +
        ', :CLI_TELEVENDA, '
      
        '   :CLI_TIPOCLIENTE, :CLI_TIPOPESSOA, :CLI_USUARIO, :CLI_VENDEDO' +
        'R)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_CODIGO,'
      '  CLI_ATIVIDADE,'
      '  CLI_CONDICAO,'
      '  CLI_LOCALESTUDA,'
      '  CLI_LOCALTRABALHO,'
      '  CLI_MAILING,'
      '  CLI_TELEVENDA,'
      '  CLI_VENDEDOR,'
      '  CLI_AFE,'
      '  CLI_ALVARA,'
      '  CLI_ALVARASANITARIO,'
      '  CLI_BAIRRO,'
      '  CLI_BAIRROCOB,'
      '  CLI_BLOQUEARVENDA,'
      '  CLI_CEP,'
      '  CLI_CEPCOB,'
      '  CLI_CIDADE,'
      '  CLI_CIDADECOB,'
      '  CLI_CIDADECODIGO,'
      '  CLI_CIDADECODIGOCOB,'
      '  CLI_CLASSIFICACAO,'
      '  CLI_CNPJ,'
      '  CLI_CNPJCOB,'
      '  CLI_COMPLEMENTO,'
      '  CLI_COMPLEMENTOCOB,'
      '  CLI_CONTATO,'
      '  CLI_CPF,'
      '  CLI_DESCONTO,'
      '  CLI_DIACOBRANCA,'
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
      '  CLI_FONE0800,'
      '  CLI_FONE1,'
      '  CLI_FONE2,'
      '  CLI_FONE3,'
      '  CLI_IE,'
      '  CLI_IECOB,'
      '  CLI_LIMITECREDITO,'
      '  CLI_MAE,'
      '  CLI_MAEEMAIL,'
      '  CLI_MAEFONE,'
      '  CLI_MENSALISTA,'
      '  CLI_MSN,'
      '  CLI_NEXTEL,'
      '  CLI_NOME,'
      '  CLI_NUMERO,'
      '  CLI_NUMEROCOB,'
      '  CLI_OBSERVACOES,'
      '  CLI_ORIENTACAOCOBRANCA,'
      '  CLI_PAI,'
      '  CLI_PAIEMAIL,'
      '  CLI_PAIFONE,'
      '  CLI_PASSWORD,'
      '  CLI_PONTOS,'
      '  CLI_REGPROFISSIONAL,'
      '  CLI_RG,'
      '  CLI_SETOR,'
      '  CLI_SITE,'
      '  CLI_STATUS,'
      '  CLI_TABELAPRECO,'
      '  CLI_TIPOCLIENTE,'
      '  CLI_TIPOPESSOA,'
      '  CLI_USUARIO'
      'from CLIENTES '
      'where'
      '  CLI_CODIGO = :CLI_CODIGO')
    SelectSQL.Strings = (
      'select * from CLIENTES')
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
      '  CLI_CLASSIFICACAO = :CLI_CLASSIFICACAO,'
      '  CLI_CNPJ = :CLI_CNPJ,'
      '  CLI_CNPJCOB = :CLI_CNPJCOB,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  CLI_COMPLEMENTO = :CLI_COMPLEMENTO,'
      '  CLI_COMPLEMENTOCOB = :CLI_COMPLEMENTOCOB,'
      '  CLI_CONDICAO = :CLI_CONDICAO,'
      '  CLI_CONTATO = :CLI_CONTATO,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_DESCONTO = :CLI_DESCONTO,'
      '  CLI_DIACOBRANCA = :CLI_DIACOBRANCA,'
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
      '  CLI_LOCALESTUDA = :CLI_LOCALESTUDA,'
      '  CLI_LOCALTRABALHO = :CLI_LOCALTRABALHO,'
      '  CLI_MAE = :CLI_MAE,'
      '  CLI_MAEEMAIL = :CLI_MAEEMAIL,'
      '  CLI_MAEFONE = :CLI_MAEFONE,'
      '  CLI_MAILING = :CLI_MAILING,'
      '  CLI_MENSALISTA = :CLI_MENSALISTA,'
      '  CLI_MSN = :CLI_MSN,'
      '  CLI_NEXTEL = :CLI_NEXTEL,'
      '  CLI_NOME = :CLI_NOME,'
      '  CLI_NUMERO = :CLI_NUMERO,'
      '  CLI_NUMEROCOB = :CLI_NUMEROCOB,'
      '  CLI_OBSERVACOES = :CLI_OBSERVACOES,'
      '  CLI_ORIENTACAOCOBRANCA = :CLI_ORIENTACAOCOBRANCA,'
      '  CLI_PAI = :CLI_PAI,'
      '  CLI_PAIEMAIL = :CLI_PAIEMAIL,'
      '  CLI_PAIFONE = :CLI_PAIFONE,'
      '  CLI_PASSWORD = :CLI_PASSWORD,'
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
    Left = 280
    Top = 176
    object TBDClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QYOClientes: TIBQuery
    Database = DBOrigem
    Transaction = TROClientes
    SQL.Strings = (
      'select * from CLIENTES order by CLI_CODIGO')
    Left = 200
    Top = 24
    object QYOClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYOClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = '"CLIENTES"."CLI_ATIVIDADE"'
      Required = True
    end
    object QYOClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = '"CLIENTES"."CLI_CONDICAO"'
      Required = True
    end
    object QYOClientesCLI_LOCALESTUDA: TIntegerField
      FieldName = 'CLI_LOCALESTUDA'
      Origin = '"CLIENTES"."CLI_LOCALESTUDA"'
      Required = True
    end
    object QYOClientesCLI_LOCALTRABALHO: TIntegerField
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = '"CLIENTES"."CLI_LOCALTRABALHO"'
      Required = True
    end
    object QYOClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = '"CLIENTES"."CLI_MAILING"'
      Required = True
    end
    object QYOClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = '"CLIENTES"."CLI_TELEVENDA"'
      Required = True
    end
    object QYOClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = '"CLIENTES"."CLI_VENDEDOR"'
      Required = True
    end
    object QYOClientesCLI_AFE: TIBStringField
      FieldName = 'CLI_AFE'
      Origin = '"CLIENTES"."CLI_AFE"'
    end
    object QYOClientesCLI_ALVARA: TIBStringField
      FieldName = 'CLI_ALVARA'
      Origin = '"CLIENTES"."CLI_ALVARA"'
    end
    object QYOClientesCLI_ALVARASANITARIO: TIBStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = '"CLIENTES"."CLI_ALVARASANITARIO"'
    end
    object QYOClientesCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object QYOClientesCLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 50
    end
    object QYOClientesCLI_BLOQUEARVENDA: TIBStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = '"CLIENTES"."CLI_BLOQUEARVENDA"'
      Size = 1
    end
    object QYOClientesCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object QYOClientesCLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object QYOClientesCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 50
    end
    object QYOClientesCLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 50
    end
    object QYOClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = '"CLIENTES"."CLI_CIDADECODIGO"'
    end
    object QYOClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object QYOClientesCLI_CLASSIFICACAO: TIBStringField
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = '"CLIENTES"."CLI_CLASSIFICACAO"'
      Size = 1
    end
    object QYOClientesCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object QYOClientesCLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object QYOClientesCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object QYOClientesCLI_COMPLEMENTOCOB: TIBStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 30
    end
    object QYOClientesCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object QYOClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object QYOClientesCLI_DESCONTO: TIBBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = '"CLIENTES"."CLI_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object QYOClientesCLI_DIACOBRANCA: TIntegerField
      FieldName = 'CLI_DIACOBRANCA'
      Origin = '"CLIENTES"."CLI_DIACOBRANCA"'
    end
    object QYOClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object QYOClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object QYOClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
    object QYOClientesCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"CLIENTES"."CLI_EMAIL"'
      Size = 100
    end
    object QYOClientesCLI_EMAIL2: TIBStringField
      FieldName = 'CLI_EMAIL2'
      Origin = '"CLIENTES"."CLI_EMAIL2"'
      Size = 100
    end
    object QYOClientesCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
    end
    object QYOClientesCLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 100
    end
    object QYOClientesCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
    end
    object QYOClientesCLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"CLIENTES"."CLI_ESTADOCIVIL"'
      Size = 10
    end
    object QYOClientesCLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object QYOClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGO"'
    end
    object QYOClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
    object QYOClientesCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 50
    end
    object QYOClientesCLI_FONE0800: TIBStringField
      FieldName = 'CLI_FONE0800'
      Origin = '"CLIENTES"."CLI_FONE0800"'
    end
    object QYOClientesCLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object QYOClientesCLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object QYOClientesCLI_FONE3: TIBStringField
      FieldName = 'CLI_FONE3'
      Origin = '"CLIENTES"."CLI_FONE3"'
    end
    object QYOClientesCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"CLIENTES"."CLI_IE"'
    end
    object QYOClientesCLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object QYOClientesCLI_LIMITECREDITO: TIBBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = '"CLIENTES"."CLI_LIMITECREDITO"'
      Precision = 18
      Size = 4
    end
    object QYOClientesCLI_MAE: TIBStringField
      FieldName = 'CLI_MAE'
      Origin = '"CLIENTES"."CLI_MAE"'
      Size = 50
    end
    object QYOClientesCLI_MAEEMAIL: TIBStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = '"CLIENTES"."CLI_MAEEMAIL"'
      Size = 100
    end
    object QYOClientesCLI_MAEFONE: TIBStringField
      FieldName = 'CLI_MAEFONE'
      Origin = '"CLIENTES"."CLI_MAEFONE"'
    end
    object QYOClientesCLI_MENSALISTA: TIBStringField
      FieldName = 'CLI_MENSALISTA'
      Origin = '"CLIENTES"."CLI_MENSALISTA"'
      Size = 1
    end
    object QYOClientesCLI_MSN: TIBStringField
      FieldName = 'CLI_MSN'
      Origin = '"CLIENTES"."CLI_MSN"'
      Size = 100
    end
    object QYOClientesCLI_NEXTEL: TIBStringField
      FieldName = 'CLI_NEXTEL'
      Origin = '"CLIENTES"."CLI_NEXTEL"'
    end
    object QYOClientesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Required = True
      Size = 50
    end
    object QYOClientesCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
    end
    object QYOClientesCLI_NUMEROCOB: TIntegerField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
    end
    object QYOClientesCLI_OBSERVACOES: TWideMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = '"CLIENTES"."CLI_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYOClientesCLI_ORIENTACAOCOBRANCA: TIBStringField
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = '"CLIENTES"."CLI_ORIENTACAOCOBRANCA"'
      Size = 50
    end
    object QYOClientesCLI_PAI: TIBStringField
      FieldName = 'CLI_PAI'
      Origin = '"CLIENTES"."CLI_PAI"'
      Size = 50
    end
    object QYOClientesCLI_PAIEMAIL: TIBStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = '"CLIENTES"."CLI_PAIEMAIL"'
      Size = 100
    end
    object QYOClientesCLI_PAIFONE: TIBStringField
      FieldName = 'CLI_PAIFONE'
      Origin = '"CLIENTES"."CLI_PAIFONE"'
    end
    object QYOClientesCLI_PASSWORD: TIBStringField
      FieldName = 'CLI_PASSWORD'
      Origin = '"CLIENTES"."CLI_PASSWORD"'
      Size = 40
    end
    object QYOClientesCLI_PONTOS: TIBBCDField
      FieldName = 'CLI_PONTOS'
      Origin = '"CLIENTES"."CLI_PONTOS"'
      Precision = 18
      Size = 4
    end
    object QYOClientesCLI_REGPROFISSIONAL: TIBStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = '"CLIENTES"."CLI_REGPROFISSIONAL"'
    end
    object QYOClientesCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object QYOClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = '"CLIENTES"."CLI_SETOR"'
    end
    object QYOClientesCLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CLIENTES"."CLI_SITE"'
      Size = 100
    end
    object QYOClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object QYOClientesCLI_TABELAPRECO: TIBStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = '"CLIENTES"."CLI_TABELAPRECO"'
      Size = 1
    end
    object QYOClientesCLI_TIPOCLIENTE: TIBStringField
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = '"CLIENTES"."CLI_TIPOCLIENTE"'
      Size = 1
    end
    object QYOClientesCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
    object QYOClientesCLI_USUARIO: TIBStringField
      FieldName = 'CLI_USUARIO'
      Origin = '"CLIENTES"."CLI_USUARIO"'
    end
  end
  object TROClientes: TIBTransaction
    DefaultDatabase = DBOrigem
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 72
  end
  object QYOVersao: TIBQuery
    Database = DBOrigem
    Transaction = TROVersao
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
  object TRDClientes: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 280
    Top = 224
  end
  object QYDClientes: TIBQuery
    Database = DBDestino
    Transaction = TRQDClientes
    SQL.Strings = (
      'select * from CLIENTES order by CLI_CODIGO')
    Left = 200
    Top = 176
  end
  object TRQDClientes: TIBTransaction
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
    SQL.Strings = (
      'select RDB$FIELD_NAME from RDB$RELATION_FIELDS '
      'where RDB$RELATION_NAME='#39'CLIENTES'#39
      'order by RDB$FIELD_NAME')
    Left = 400
    Top = 24
  end
  object TROCampos: TIBTransaction
    DefaultDatabase = DBOrigem
    Left = 400
    Top = 72
  end
  object QYDAtividades: TIBQuery
    Database = DBDestino
    Transaction = TRDAtividades
    SQL.Strings = (
      'select ATI_CODIGO from ATIVIDADES')
    Left = 464
    Top = 176
  end
  object QYDVendedores: TIBQuery
    Database = DBDestino
    Transaction = TRDVendedores
    SQL.Strings = (
      'select VEN_CODIGO from VENDEDORES')
    Left = 536
    Top = 176
  end
  object QYDLocais: TIBQuery
    Database = DBDestino
    Transaction = TRDLocais
    SQL.Strings = (
      'select LCA_CODIGO from LOCAIS')
    Left = 664
    Top = 176
  end
  object QYDCondicoes: TIBQuery
    Database = DBDestino
    Transaction = TRDCondicoes
    SQL.Strings = (
      'select CPG_CODIGO from CONDICOES')
    Left = 736
    Top = 176
  end
  object TRDAtividades: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 464
    Top = 224
  end
  object TRDVendedores: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 536
    Top = 224
  end
  object TRDLocais: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 664
    Top = 224
  end
  object TRDCondicoes: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 224
  end
  object QYDMailings: TIBQuery
    Database = DBDestino
    Transaction = TRDMailings
    SQL.Strings = (
      'select MAI_CODIGO from MAILINGS')
    Left = 600
    Top = 176
  end
  object TRDMailings: TIBTransaction
    DefaultDatabase = DBDestino
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 600
    Top = 224
  end
end
