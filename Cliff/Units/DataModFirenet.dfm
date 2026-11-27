object DMFirenet: TDMFirenet
  OnCreate = DataModuleCreate
  Height = 531
  Width = 1059
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Runtime\ACDC\Firenet\Dados\firenet_distribuidora.fdb'
      'User_Name=sysdba'
      'Password=borland'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 40
    Top = 24
  end
  object TBUsuarios: TFDQuery
    Connection = FDConnection1
    Transaction = TRUsuarios
    SQL.Strings = (
      'select * from USUARIOS order by USU_NOME'
      '')
    Left = 616
    Top = 288
    object TBUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBUsuariosUSU_DTATUALIZACAO: TDateField
      FieldName = 'USU_DTATUALIZACAO'
      Origin = 'USU_DTATUALIZACAO'
    end
    object TBUsuariosUSU_DTCADASTRO: TDateField
      FieldName = 'USU_DTCADASTRO'
      Origin = 'USU_DTCADASTRO'
    end
    object TBUsuariosUSU_DTLOGIN: TDateField
      FieldName = 'USU_DTLOGIN'
      Origin = 'USU_DTLOGIN'
    end
    object TBUsuariosUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      Origin = 'USU_EMAIL'
      Size = 100
    end
    object TBUsuariosUSU_HRATUALIZACAO: TTimeField
      FieldName = 'USU_HRATUALIZACAO'
      Origin = 'USU_HRATUALIZACAO'
    end
    object TBUsuariosUSU_HRCADASTRO: TTimeField
      FieldName = 'USU_HRCADASTRO'
      Origin = 'USU_HRCADASTRO'
    end
    object TBUsuariosUSU_HRLOGIN: TTimeField
      FieldName = 'USU_HRLOGIN'
      Origin = 'USU_HRLOGIN'
    end
    object TBUsuariosUSU_LOGADO: TStringField
      FieldName = 'USU_LOGADO'
      Origin = 'USU_LOGADO'
      Size = 1
    end
    object TBUsuariosUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USU_LOGIN'
      Required = True
    end
    object TBUsuariosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 80
    end
    object TBUsuariosUSU_PASSWORD: TStringField
      FieldName = 'USU_PASSWORD'
      Origin = 'USU_PASSWORD'
      Size = 40
    end
    object TBUsuariosUSU_SENHAEXPIRADA: TStringField
      FieldName = 'USU_SENHAEXPIRADA'
      Origin = 'USU_SENHAEXPIRADA'
      Size = 1
    end
    object TBUsuariosUSU_STATUS: TStringField
      FieldName = 'USU_STATUS'
      Origin = 'USU_STATUS'
      Size = 1
    end
    object TBUsuariosUSU_TEMA: TStringField
      FieldName = 'USU_TEMA'
      Origin = 'USU_TEMA'
      Size = 50
    end
    object TBUsuariosUSU_VENDEDOR: TIntegerField
      FieldName = 'USU_VENDEDOR'
      Origin = 'USU_VENDEDOR'
      Required = True
    end
  end
  object TRUsuarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 616
    Top = 336
  end
  object Query1: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery1
    Left = 144
    Top = 24
  end
  object TRQuery1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 176
    Top = 24
  end
  object Query2: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery2
    Left = 256
    Top = 24
  end
  object TRQuery2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 288
    Top = 24
  end
  object Query3: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery3
    Left = 368
    Top = 24
  end
  object TRQuery3: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 400
    Top = 24
  end
  object TBEmpresa: TFDQuery
    Connection = FDConnection1
    Transaction = TREmpresa
    SQL.Strings = (
      'select'
      'EMP_BAIRRO,'
      'EMP_CEP,'
      'EMP_CIDADE,'
      'EMP_CIDADECODIGO,'
      'EMP_CNAE,'
      'EMP_CNPJ,'
      'EMP_CODIGO,'
      'EMP_CONTABILIDADE,'
      'EMP_EMAIL,'
      'EMP_EMAILSUPORTE,'
      'EMP_ENDERECO,'
      'EMP_ENQUADRAMENTO,'
      'EMP_ENQUADRAMENTOISS,'
      'EMP_ESTADO,'
      'EMP_ESTADOCODIGO,'
      'EMP_FONE1,'
      'EMP_FONE2,'
      'EMP_HOMEPAGE,'
      'EMP_HRATUALIZACAO,'
      'EMP_IE,'
      'EMP_IM,'
      'EMP_LOGO,'
      'EMP_NOME,'
      'EMP_NOMEFANTASIA,'
      'EMP_NUMERO,'
      'EMP_PAIS,'
      'EMP_PAISCODIGO,'
      'EMP_SUPERSENHA'
      'from EMPRESA '
      'where EMP_CODIGO=:codigo '
      'order by EMP_CODIGO'
      '')
    Left = 616
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      Origin = 'EMP_BAIRRO'
      Size = 50
    end
    object TBEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Origin = 'EMP_CEP'
      Size = 10
    end
    object TBEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      Origin = 'EMP_CIDADE'
      Size = 50
    end
    object TBEmpresaEMP_CIDADECODIGO: TIntegerField
      FieldName = 'EMP_CIDADECODIGO'
      Origin = 'EMP_CIDADECODIGO'
    end
    object TBEmpresaEMP_CNAE: TStringField
      FieldName = 'EMP_CNAE'
      Origin = 'EMP_CNAE'
    end
    object TBEmpresaEMP_CNPJ: TStringField
      FieldName = 'EMP_CNPJ'
      Origin = 'EMP_CNPJ'
    end
    object TBEmpresaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmpresaEMP_CONTABILIDADE: TIntegerField
      FieldName = 'EMP_CONTABILIDADE'
      Origin = 'EMP_CONTABILIDADE'
    end
    object TBEmpresaEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Origin = 'EMP_EMAIL'
      Size = 100
    end
    object TBEmpresaEMP_EMAILSUPORTE: TStringField
      FieldName = 'EMP_EMAILSUPORTE'
      Origin = 'EMP_EMAILSUPORTE'
      Size = 100
    end
    object TBEmpresaEMP_ENDERECO: TStringField
      FieldName = 'EMP_ENDERECO'
      Origin = 'EMP_ENDERECO'
      Size = 100
    end
    object TBEmpresaEMP_ENQUADRAMENTO: TStringField
      FieldName = 'EMP_ENQUADRAMENTO'
      Origin = 'EMP_ENQUADRAMENTO'
      Size = 35
    end
    object TBEmpresaEMP_ENQUADRAMENTOISS: TStringField
      FieldName = 'EMP_ENQUADRAMENTOISS'
      Origin = 'EMP_ENQUADRAMENTOISS'
      Size = 50
    end
    object TBEmpresaEMP_ESTADO: TStringField
      FieldName = 'EMP_ESTADO'
      Origin = 'EMP_ESTADO'
      Size = 2
    end
    object TBEmpresaEMP_ESTADOCODIGO: TIntegerField
      FieldName = 'EMP_ESTADOCODIGO'
      Origin = 'EMP_ESTADOCODIGO'
    end
    object TBEmpresaEMP_FONE1: TStringField
      FieldName = 'EMP_FONE1'
      Origin = 'EMP_FONE1'
    end
    object TBEmpresaEMP_FONE2: TStringField
      FieldName = 'EMP_FONE2'
      Origin = 'EMP_FONE2'
    end
    object TBEmpresaEMP_HOMEPAGE: TStringField
      FieldName = 'EMP_HOMEPAGE'
      Origin = 'EMP_HOMEPAGE'
      Size = 100
    end
    object TBEmpresaEMP_HRATUALIZACAO: TTimeField
      FieldName = 'EMP_HRATUALIZACAO'
      Origin = 'EMP_HRATUALIZACAO'
    end
    object TBEmpresaEMP_IE: TStringField
      FieldName = 'EMP_IE'
      Origin = 'EMP_IE'
    end
    object TBEmpresaEMP_IM: TStringField
      FieldName = 'EMP_IM'
      Origin = 'EMP_IM'
    end
    object TBEmpresaEMP_LOGO: TStringField
      FieldName = 'EMP_LOGO'
      Origin = 'EMP_LOGO'
      Size = 80
    end
    object TBEmpresaEMP_NOME: TStringField
      FieldName = 'EMP_NOME'
      Origin = 'EMP_NOME'
      Size = 80
    end
    object TBEmpresaEMP_NOMEFANTASIA: TStringField
      FieldName = 'EMP_NOMEFANTASIA'
      Origin = 'EMP_NOMEFANTASIA'
      Size = 80
    end
    object TBEmpresaEMP_NUMERO: TStringField
      FieldName = 'EMP_NUMERO'
      Origin = 'EMP_NUMERO'
      Size = 15
    end
    object TBEmpresaEMP_PAIS: TStringField
      FieldName = 'EMP_PAIS'
      Origin = 'EMP_PAIS'
      Size = 80
    end
    object TBEmpresaEMP_PAISCODIGO: TIntegerField
      FieldName = 'EMP_PAISCODIGO'
      Origin = 'EMP_PAISCODIGO'
    end
    object TBEmpresaEMP_SUPERSENHA: TStringField
      FieldName = 'EMP_SUPERSENHA'
      Origin = 'EMP_SUPERSENHA'
      Size = 40
    end
  end
  object TREmpresa: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 616
    Top = 144
  end
  object TBClientes: TFDQuery
    AfterInsert = TBClientesAfterInsert
    BeforePost = TBClientesBeforePost
    Connection = FDConnection1
    Transaction = TRClientes
    UpdateObject = UPClientes
    SQL.Strings = (
      'select '
      'CLI_AFE, '
      'CLI_ALVARA, '
      'CLI_ALVARASANITARIO, '
      'CLI_ATIVIDADE, '
      'CLI_ATUALIZAR, '
      'CLI_BAIRRO, '
      'CLI_BAIRROCOB,'
      'CLI_BLOQUEARVENDA, '
      'CLI_CEP, '
      'CLI_CEPCOB, '
      'CLI_CIDADE, '
      'CLI_CIDADECOB, '
      'CLI_CIDADECODIGO, '
      'CLI_CIDADECODIGOCOB, '
      'CLI_CLASSIFICACAO, '
      'CLI_CNPJ, '
      'CLI_CNPJCOB, '
      'CLI_CNS, '
      'CLI_CODIGO, '
      'CLI_COMPLEMENTO, '
      'CLI_COMPLEMENTOCOB,'
      'CLI_CONDICAO, '
      'CLI_CONJUGE, '
      'CLI_CONJUGECPF, '
      'CLI_CONJUGEDTNASC, '
      'CLI_CONJUGERG, '
      'CLI_CONTATO, '
      'CLI_CONTRIBUINTEICMS, '
      'CLI_CPF, '
      'CLI_DESCONTO, '
      'CLI_DTATUALIZACAO, '
      'CLI_DTCADASTRO,'
      'CLI_DIACOBRANCA, '
      'CLI_DTNASC, '
      'CLI_DTOBITO, '
      'CLI_EMAIL, '
      'CLI_EMAIL2, '
      'CLI_ENDERECO, '
      'CLI_ENDERECOCOB, '
      'CLI_ENQUADRAMENTO, '
      'CLI_ESTADO, '
      'CLI_ESTADOCIVIL,'
      'CLI_ESTADOCOB, '
      'CLI_ESTADOCODIGO, '
      'CLI_ESTADOCODIGOCOB, '
      'CLI_FANTASIA, '
      'CLI_FONE0800,'
      'CLI_FONE1, '
      'CLI_FONE2, '
      'CLI_FONE3, '
      'CLI_FRETE,'
      'CLI_HRATUALIZACAO,'
      'CLI_HRCADASTRO,'
      'CLI_IDESTRANGEIRO, '
      'CLI_IE, '
      'CLI_IECOB, '
      'CLI_IM, '
      'CLI_LIMITECREDITO, '
      'CLI_LOCALTRABALHO, '
      'CLI_LOCALESTUDA,'
      'CLI_MAE, '
      'CLI_MAEEMAIL, '
      'CLI_MAEFONE, '
      'CLI_MAILING, '
      'CLI_MENSALISTA,  '
      'CLI_MSN, '
      'CLI_NATURALIDADE, '
      'CLI_NEXTEL, '
      'CLI_NOME, '
      'CLI_NUMERO,'
      'CLI_NUMEROCOB, '
      'CLI_OBITO, '
      'CLI_OBSERVACOES, '
      'CLI_ORIENTACAOCOBRANCA, '
      'CLI_PAI, '
      'CLI_PAIEMAIL, '
      'CLI_PAIFONE, '
      'CLI_PAIS, '
      'CLI_PAISCOB, '
      'CLI_PAISCODIGO, '
      'CLI_PAISCODIGOCOB,'
      'CLI_PASSWORD, '
      'CLI_PONTOS, '
      'CLI_PROFISSAO, '
      'CLI_RECEBEAVISOS, '
      'CLI_REGPROFISSIONAL, '
      'CLI_RG, '
      'CLI_SAME, '
      'CLI_SETOR, '
      'CLI_SEXO, '
      'CLI_SITE, '
      'CLI_STATUS, '
      'CLI_SUFRAMA,'
      'CLI_TABELAPRECO, '
      'CLI_TAXA,'
      'CLI_TELEVENDA, '
      'CLI_TIPOCLIENTE, '
      'CLI_TIPOCONSUMIDOR,'
      'CLI_TIPOPESSOA, '
      'CLI_TRANSPORTADORA, '
      'CLI_USUARIO, '
      'CLI_VENDEDOR, '
      'ATI_DESCRICAO, '
      'CPG_DESCRICAO, '
      'FOR_NOME,'
      'MAI_DESCRICAO, '
      'vend.VEN_NOME, '
      'tele.VEN_NOME as VEN_NOME1,'
      'trabalho.LCA_DESCRICAO, '
      'estuda.LCA_DESCRICAO as LCA_DESCRICAO1,'
      'TAX_DESCRICAO,'
      'TAX_TIPO,'
      'TAX_VALOR'
      'from CLIENTES'
      'left join ATIVIDADES on CLI_ATIVIDADE=ATI_CODIGO'
      'left join CONDICOES on CLI_CONDICAO=CPG_CODIGO'
      'left join FORNECEDORES on CLI_TRANSPORTADORA=FOR_CODIGO'
      
        'left join LOCAIS as trabalho on CLI_LOCALTRABALHO=trabalho.LCA_C' +
        'ODIGO'
      'left join LOCAIS as estuda on CLI_LOCALESTUDA=estuda.LCA_CODIGO'
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO'
      'left join VENDEDORES as vend on CLI_VENDEDOR=vend.VEN_CODIGO'
      'left join VENDEDORES as tele on CLI_TELEVENDA=tele.VEN_CODIGO'
      'left join TAXAS on CLI_TAXA=TAX_CODIGO'
      'where CLI_CODIGO=:codigo'
      'order by CLI_CODIGO'
      '')
    Left = 232
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBClientesCLI_AFE: TStringField
      FieldName = 'CLI_AFE'
      Origin = 'CLI_AFE'
    end
    object TBClientesCLI_ALVARA: TStringField
      FieldName = 'CLI_ALVARA'
      Origin = 'CLI_ALVARA'
    end
    object TBClientesCLI_ALVARASANITARIO: TStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = 'CLI_ALVARASANITARIO'
    end
    object TBClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLI_ATIVIDADE'
      Required = True
    end
    object TBClientesCLI_ATUALIZAR: TStringField
      FieldName = 'CLI_ATUALIZAR'
      Origin = 'CLI_ATUALIZAR'
      Size = 1
    end
    object TBClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 50
    end
    object TBClientesCLI_BAIRROCOB: TStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = 'CLI_BAIRROCOB'
      Size = 50
    end
    object TBClientesCLI_BLOQUEARVENDA: TStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      Size = 1
    end
    object TBClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 10
    end
    object TBClientesCLI_CEPCOB: TStringField
      FieldName = 'CLI_CEPCOB'
      Origin = 'CLI_CEPCOB'
      Size = 10
    end
    object TBClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 50
    end
    object TBClientesCLI_CIDADECOB: TStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = 'CLI_CIDADECOB'
      Size = 50
    end
    object TBClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
    end
    object TBClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = 'CLI_CIDADECODIGOCOB'
    end
    object TBClientesCLI_CLASSIFICACAO: TStringField
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = 'CLI_CLASSIFICACAO'
      Size = 1
    end
    object TBClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
    end
    object TBClientesCLI_CNPJCOB: TStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = 'CLI_CNPJCOB'
    end
    object TBClientesCLI_CNS: TStringField
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
    end
    object TBClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 80
    end
    object TBClientesCLI_COMPLEMENTOCOB: TStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = 'CLI_COMPLEMENTOCOB'
      Size = 80
    end
    object TBClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      Required = True
    end
    object TBClientesCLI_CONJUGE: TStringField
      FieldName = 'CLI_CONJUGE'
      Origin = 'CLI_CONJUGE'
      Size = 80
    end
    object TBClientesCLI_CONJUGECPF: TStringField
      FieldName = 'CLI_CONJUGECPF'
      Origin = 'CLI_CONJUGECPF'
    end
    object TBClientesCLI_CONJUGEDTNASC: TDateField
      FieldName = 'CLI_CONJUGEDTNASC'
      Origin = 'CLI_CONJUGEDTNASC'
    end
    object TBClientesCLI_CONJUGERG: TStringField
      FieldName = 'CLI_CONJUGERG'
      Origin = 'CLI_CONJUGERG'
    end
    object TBClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      Size = 80
    end
    object TBClientesCLI_CONTRIBUINTEICMS: TStringField
      FieldName = 'CLI_CONTRIBUINTEICMS'
      Origin = 'CLI_CONTRIBUINTEICMS'
      Size = 40
    end
    object TBClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object TBClientesCLI_DESCONTO: TFMTBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      Precision = 18
    end
    object TBClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = 'CLI_DTATUALIZACAO'
    end
    object TBClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = 'CLI_DTCADASTRO'
    end
    object TBClientesCLI_DIACOBRANCA: TIntegerField
      FieldName = 'CLI_DIACOBRANCA'
      Origin = 'CLI_DIACOBRANCA'
    end
    object TBClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
    end
    object TBClientesCLI_DTOBITO: TDateField
      FieldName = 'CLI_DTOBITO'
      Origin = 'CLI_DTOBITO'
    end
    object TBClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object TBClientesCLI_EMAIL2: TStringField
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      Size = 100
    end
    object TBClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 100
    end
    object TBClientesCLI_ENDERECOCOB: TStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = 'CLI_ENDERECOCOB'
      Size = 100
    end
    object TBClientesCLI_ENQUADRAMENTO: TStringField
      FieldName = 'CLI_ENQUADRAMENTO'
      Origin = 'CLI_ENQUADRAMENTO'
    end
    object TBClientesCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      Size = 2
    end
    object TBClientesCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = 'CLI_ESTADOCIVIL'
      Size = 10
    end
    object TBClientesCLI_ESTADOCOB: TStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = 'CLI_ESTADOCOB'
      Size = 2
    end
    object TBClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
    end
    object TBClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = 'CLI_ESTADOCODIGOCOB'
    end
    object TBClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 80
    end
    object TBClientesCLI_FONE0800: TStringField
      FieldName = 'CLI_FONE0800'
      Origin = 'CLI_FONE0800'
    end
    object TBClientesCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
    end
    object TBClientesCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
    end
    object TBClientesCLI_FONE3: TStringField
      FieldName = 'CLI_FONE3'
      Origin = 'CLI_FONE3'
    end
    object TBClientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      Size = 50
    end
    object TBClientesCLI_HRATUALIZACAO: TTimeField
      FieldName = 'CLI_HRATUALIZACAO'
      Origin = 'CLI_HRATUALIZACAO'
    end
    object TBClientesCLI_HRCADASTRO: TTimeField
      FieldName = 'CLI_HRCADASTRO'
      Origin = 'CLI_HRCADASTRO'
    end
    object TBClientesCLI_IDESTRANGEIRO: TStringField
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
    end
    object TBClientesCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
    end
    object TBClientesCLI_IECOB: TStringField
      FieldName = 'CLI_IECOB'
      Origin = 'CLI_IECOB'
    end
    object TBClientesCLI_IM: TIntegerField
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
    end
    object TBClientesCLI_LIMITECREDITO: TFMTBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      Precision = 18
    end
    object TBClientesCLI_LOCALTRABALHO: TIntegerField
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = 'CLI_LOCALTRABALHO'
      Required = True
    end
    object TBClientesCLI_LOCALESTUDA: TIntegerField
      FieldName = 'CLI_LOCALESTUDA'
      Origin = 'CLI_LOCALESTUDA'
      Required = True
    end
    object TBClientesCLI_MAE: TStringField
      FieldName = 'CLI_MAE'
      Origin = 'CLI_MAE'
      Size = 80
    end
    object TBClientesCLI_MAEEMAIL: TStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = 'CLI_MAEEMAIL'
      Size = 100
    end
    object TBClientesCLI_MAEFONE: TStringField
      FieldName = 'CLI_MAEFONE'
      Origin = 'CLI_MAEFONE'
    end
    object TBClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      Required = True
    end
    object TBClientesCLI_MENSALISTA: TStringField
      FieldName = 'CLI_MENSALISTA'
      Origin = 'CLI_MENSALISTA'
      Size = 1
    end
    object TBClientesCLI_MSN: TStringField
      FieldName = 'CLI_MSN'
      Origin = 'CLI_MSN'
      Size = 100
    end
    object TBClientesCLI_NATURALIDADE: TStringField
      FieldName = 'CLI_NATURALIDADE'
      Origin = 'CLI_NATURALIDADE'
      Size = 50
    end
    object TBClientesCLI_NEXTEL: TStringField
      FieldName = 'CLI_NEXTEL'
      Origin = 'CLI_NEXTEL'
    end
    object TBClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      Size = 80
    end
    object TBClientesCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      Size = 15
    end
    object TBClientesCLI_NUMEROCOB: TStringField
      FieldName = 'CLI_NUMEROCOB'
      Origin = 'CLI_NUMEROCOB'
      Size = 15
    end
    object TBClientesCLI_OBITO: TStringField
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      Size = 1
    end
    object TBClientesCLI_OBSERVACOES: TMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = 'CLI_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBClientesCLI_ORIENTACAOCOBRANCA: TStringField
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = 'CLI_ORIENTACAOCOBRANCA'
      Size = 50
    end
    object TBClientesCLI_PAI: TStringField
      FieldName = 'CLI_PAI'
      Origin = 'CLI_PAI'
      Size = 80
    end
    object TBClientesCLI_PAIEMAIL: TStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = 'CLI_PAIEMAIL'
      Size = 100
    end
    object TBClientesCLI_PAIFONE: TStringField
      FieldName = 'CLI_PAIFONE'
      Origin = 'CLI_PAIFONE'
    end
    object TBClientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 80
    end
    object TBClientesCLI_PAISCOB: TStringField
      FieldName = 'CLI_PAISCOB'
      Origin = 'CLI_PAISCOB'
      Size = 80
    end
    object TBClientesCLI_PAISCODIGO: TIntegerField
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
    end
    object TBClientesCLI_PAISCODIGOCOB: TIntegerField
      FieldName = 'CLI_PAISCODIGOCOB'
      Origin = 'CLI_PAISCODIGOCOB'
    end
    object TBClientesCLI_PASSWORD: TStringField
      FieldName = 'CLI_PASSWORD'
      Origin = 'CLI_PASSWORD'
      Size = 40
    end
    object TBClientesCLI_PONTOS: TFMTBCDField
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      Precision = 18
    end
    object TBClientesCLI_PROFISSAO: TStringField
      FieldName = 'CLI_PROFISSAO'
      Origin = 'CLI_PROFISSAO'
      Size = 50
    end
    object TBClientesCLI_RECEBEAVISOS: TStringField
      FieldName = 'CLI_RECEBEAVISOS'
      Origin = 'CLI_RECEBEAVISOS'
      Size = 1
    end
    object TBClientesCLI_REGPROFISSIONAL: TStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = 'CLI_REGPROFISSIONAL'
    end
    object TBClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
    end
    object TBClientesCLI_SAME: TStringField
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
    end
    object TBClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = 'CLI_SETOR'
    end
    object TBClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Origin = 'CLI_SEXO'
      Size = 1
    end
    object TBClientesCLI_SITE: TStringField
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      Size = 100
    end
    object TBClientesCLI_STATUS: TStringField
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      Size = 1
    end
    object TBClientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
    end
    object TBClientesCLI_TABELAPRECO: TStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      Size = 1
    end
    object TBClientesCLI_TAXA: TIntegerField
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      Required = True
    end
    object TBClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = 'CLI_TELEVENDA'
      Required = True
    end
    object TBClientesCLI_TIPOCLIENTE: TStringField
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = 'CLI_TIPOCLIENTE'
      Size = 1
    end
    object TBClientesCLI_TIPOCONSUMIDOR: TStringField
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      Size = 30
    end
    object TBClientesCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      Size = 1
    end
    object TBClientesCLI_TRANSPORTADORA: TIntegerField
      FieldName = 'CLI_TRANSPORTADORA'
      Origin = 'CLI_TRANSPORTADORA'
      Required = True
    end
    object TBClientesCLI_USUARIO: TStringField
      FieldName = 'CLI_USUARIO'
      Origin = 'CLI_USUARIO'
    end
    object TBClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      Required = True
    end
    object TBClientesATI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATI_DESCRICAO'
      Origin = 'ATI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBClientesMAI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBClientesVEN_NOME1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME1'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBClientesLCA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LCA_DESCRICAO'
      Origin = 'LCA_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesLCA_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LCA_DESCRICAO1'
      Origin = 'LCA_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesTAX_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBClientesTAX_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object TBClientesTAX_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      ProviderFlags = []
      Precision = 18
    end
  end
  object TRClientes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 232
    Top = 144
  end
  object UPClientes: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      '(CLI_AFE, CLI_ALVARA, CLI_ALVARASANITARIO, CLI_ATIVIDADE, '
      '  CLI_ATUALIZAR, CLI_BAIRRO, CLI_BAIRROCOB, '
      '  CLI_BLOQUEARVENDA, CLI_CEP, CLI_CEPCOB, CLI_CIDADE, '
      '  CLI_CIDADECOB, CLI_CIDADECODIGO, CLI_CIDADECODIGOCOB, '
      '  CLI_CLASSIFICACAO, CLI_CNPJ, CLI_CNPJCOB, '
      '  CLI_CNS, CLI_CODIGO, CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB, '
      '  CLI_CONDICAO, CLI_CONJUGE, CLI_CONJUGECPF, '
      '  CLI_CONJUGEDTNASC, CLI_CONJUGERG, CLI_CONTATO, '
      '  CLI_CONTRIBUINTEICMS, CLI_CPF, CLI_DESCONTO, '
      '  CLI_DIACOBRANCA, CLI_DTATUALIZACAO, CLI_DTCADASTRO, '
      '  CLI_DTNASC, CLI_DTOBITO, CLI_EMAIL, CLI_EMAIL2, '
      '  CLI_ENDERECO, CLI_ENDERECOCOB, CLI_ENQUADRAMENTO, '
      '  CLI_ESTADO, CLI_ESTADOCIVIL, CLI_ESTADOCOB, '
      '  CLI_ESTADOCODIGO, CLI_ESTADOCODIGOCOB, CLI_FANTASIA, '
      '  CLI_FONE0800, CLI_FONE1, CLI_FONE2, CLI_FONE3, '
      '  CLI_FRETE, CLI_HRATUALIZACAO, CLI_HRCADASTRO, '
      '  CLI_IDESTRANGEIRO, CLI_IE, CLI_IECOB, CLI_IM, '
      '  CLI_LIMITECREDITO, CLI_LOCALESTUDA, CLI_LOCALTRABALHO, '
      '  CLI_MAE, CLI_MAEEMAIL, CLI_MAEFONE, CLI_MAILING, '
      '  CLI_MENSALISTA, CLI_MSN, CLI_NATURALIDADE, '
      '  CLI_NEXTEL, CLI_NOME, CLI_NUMERO, CLI_NUMEROCOB, '
      '  CLI_OBITO, CLI_OBSERVACOES, CLI_ORIENTACAOCOBRANCA, '
      '  CLI_PAI, CLI_PAIEMAIL, CLI_PAIFONE, CLI_PAIS, '
      '  CLI_PAISCOB, CLI_PAISCODIGO, CLI_PAISCODIGOCOB, '
      '  CLI_PASSWORD, CLI_PONTOS, CLI_PROFISSAO, '
      '  CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_RG, '
      '  CLI_SAME, CLI_SETOR, CLI_SEXO, CLI_SITE, '
      '  CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPRECO, '
      '  CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, '
      '  CLI_TIPOCONSUMIDOR, CLI_TIPOPESSOA, CLI_TRANSPORTADORA, '
      '  CLI_USUARIO, CLI_VENDEDOR)'
      
        'VALUES (:NEW_CLI_AFE, :NEW_CLI_ALVARA, :NEW_CLI_ALVARASANITARIO,' +
        ' :NEW_CLI_ATIVIDADE, '
      '  :NEW_CLI_ATUALIZAR, :NEW_CLI_BAIRRO, :NEW_CLI_BAIRROCOB, '
      
        '  :NEW_CLI_BLOQUEARVENDA, :NEW_CLI_CEP, :NEW_CLI_CEPCOB, :NEW_CL' +
        'I_CIDADE, '
      
        '  :NEW_CLI_CIDADECOB, :NEW_CLI_CIDADECODIGO, :NEW_CLI_CIDADECODI' +
        'GOCOB, '
      '  :NEW_CLI_CLASSIFICACAO, :NEW_CLI_CNPJ, :NEW_CLI_CNPJCOB, '
      
        '  :NEW_CLI_CNS, gen_id(GEN_CLIENTES,1), :NEW_CLI_COMPLEMENTO, :N' +
        'EW_CLI_COMPLEMENTOCOB, '
      '  :NEW_CLI_CONDICAO, :NEW_CLI_CONJUGE, :NEW_CLI_CONJUGECPF, '
      '  :NEW_CLI_CONJUGEDTNASC, :NEW_CLI_CONJUGERG, :NEW_CLI_CONTATO, '
      '  :NEW_CLI_CONTRIBUINTEICMS, :NEW_CLI_CPF, :NEW_CLI_DESCONTO, '
      
        '  :NEW_CLI_DIACOBRANCA, :NEW_CLI_DTATUALIZACAO, :NEW_CLI_DTCADAS' +
        'TRO, '
      
        '  :NEW_CLI_DTNASC, :NEW_CLI_DTOBITO, :NEW_CLI_EMAIL, :NEW_CLI_EM' +
        'AIL2, '
      
        '  :NEW_CLI_ENDERECO, :NEW_CLI_ENDERECOCOB, :NEW_CLI_ENQUADRAMENT' +
        'O, '
      '  :NEW_CLI_ESTADO, :NEW_CLI_ESTADOCIVIL, :NEW_CLI_ESTADOCOB, '
      
        '  :NEW_CLI_ESTADOCODIGO, :NEW_CLI_ESTADOCODIGOCOB, :NEW_CLI_FANT' +
        'ASIA, '
      
        '  :NEW_CLI_FONE0800, :NEW_CLI_FONE1, :NEW_CLI_FONE2, :NEW_CLI_FO' +
        'NE3, '
      '  :NEW_CLI_FRETE, :NEW_CLI_HRATUALIZACAO, :NEW_CLI_HRCADASTRO, '
      
        '  :NEW_CLI_IDESTRANGEIRO, :NEW_CLI_IE, :NEW_CLI_IECOB, :NEW_CLI_' +
        'IM, '
      
        '  :NEW_CLI_LIMITECREDITO, :NEW_CLI_LOCALESTUDA, :NEW_CLI_LOCALTR' +
        'ABALHO, '
      
        '  :NEW_CLI_MAE, :NEW_CLI_MAEEMAIL, :NEW_CLI_MAEFONE, :NEW_CLI_MA' +
        'ILING, '
      '  :NEW_CLI_MENSALISTA, :NEW_CLI_MSN, :NEW_CLI_NATURALIDADE, '
      
        '  :NEW_CLI_NEXTEL, :NEW_CLI_NOME, :NEW_CLI_NUMERO, :NEW_CLI_NUME' +
        'ROCOB, '
      
        '  :NEW_CLI_OBITO, :NEW_CLI_OBSERVACOES, :NEW_CLI_ORIENTACAOCOBRA' +
        'NCA, '
      
        '  :NEW_CLI_PAI, :NEW_CLI_PAIEMAIL, :NEW_CLI_PAIFONE, :NEW_CLI_PA' +
        'IS, '
      
        '  :NEW_CLI_PAISCOB, :NEW_CLI_PAISCODIGO, :NEW_CLI_PAISCODIGOCOB,' +
        ' '
      '  :NEW_CLI_PASSWORD, :NEW_CLI_PONTOS, :NEW_CLI_PROFISSAO, '
      '  :NEW_CLI_RECEBEAVISOS, :NEW_CLI_REGPROFISSIONAL, :NEW_CLI_RG, '
      '  :NEW_CLI_SAME, :NEW_CLI_SETOR, :NEW_CLI_SEXO, :NEW_CLI_SITE, '
      '  :NEW_CLI_STATUS, :NEW_CLI_SUFRAMA, :NEW_CLI_TABELAPRECO, '
      '  :NEW_CLI_TAXA, :NEW_CLI_TELEVENDA, :NEW_CLI_TIPOCLIENTE, '
      
        '  :NEW_CLI_TIPOCONSUMIDOR, :NEW_CLI_TIPOPESSOA, :NEW_CLI_TRANSPO' +
        'RTADORA, '
      '  :NEW_CLI_USUARIO, :NEW_CLI_VENDEDOR)'
      
        'RETURNING CLI_AFE, CLI_ALVARA, CLI_ALVARASANITARIO, CLI_ATIVIDAD' +
        'E, CLI_ATUALIZAR, CLI_BAIRRO, CLI_BAIRROCOB, CLI_BLOQUEARVENDA, ' +
        'CLI_CEP, CLI_CEPCOB, CLI_CIDADE, CLI_CIDADECOB, CLI_CIDADECODIGO' +
        ', CLI_CIDADECODIGOCOB, CLI_CLASSIFICACAO, CLI_CNPJ, CLI_CNPJCOB,' +
        ' CLI_CNS, CLI_CODIGO, CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB, CLI_C' +
        'ONDICAO, CLI_CONJUGE, CLI_CONJUGECPF, CLI_CONJUGEDTNASC, CLI_CON' +
        'JUGERG, CLI_CONTATO, CLI_CONTRIBUINTEICMS, CLI_CPF, CLI_DESCONTO' +
        ', CLI_DIACOBRANCA, CLI_DTATUALIZACAO, CLI_DTCADASTRO, CLI_DTNASC' +
        ', CLI_DTOBITO, CLI_EMAIL, CLI_EMAIL2, CLI_ENDERECO, CLI_ENDERECO' +
        'COB, CLI_ENQUADRAMENTO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_ESTADOC' +
        'OB, CLI_ESTADOCODIGO, CLI_ESTADOCODIGOCOB, CLI_FANTASIA, CLI_FON' +
        'E0800, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_FRETE, CLI_HRATUALIZ' +
        'ACAO, CLI_HRCADASTRO, CLI_IDESTRANGEIRO, CLI_IE, CLI_IECOB, CLI_' +
        'IM, CLI_LIMITECREDITO, CLI_LOCALESTUDA, CLI_LOCALTRABALHO, CLI_M' +
        'AE, CLI_MAEEMAIL, CLI_MAEFONE, CLI_MAILING, CLI_MENSALISTA, CLI_' +
        'MSN, CLI_NATURALIDADE, CLI_NEXTEL, CLI_NOME, CLI_NUMERO, CLI_NUM' +
        'EROCOB, CLI_OBITO, CLI_OBSERVACOES, CLI_ORIENTACAOCOBRANCA, CLI_' +
        'PAI, CLI_PAIEMAIL, CLI_PAIFONE, CLI_PAIS, CLI_PAISCOB, CLI_PAISC' +
        'ODIGO, CLI_PAISCODIGOCOB, CLI_PASSWORD, CLI_PONTOS, CLI_PROFISSA' +
        'O, CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_RG, CLI_SAME, CLI_' +
        'SETOR, CLI_SEXO, CLI_SITE, CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPR' +
        'ECO, CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, CLI_TIPOCONSUMIDO' +
        'R, CLI_TIPOPESSOA, CLI_TRANSPORTADORA, CLI_USUARIO, CLI_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      
        'SET CLI_AFE = :NEW_CLI_AFE, CLI_ALVARA = :NEW_CLI_ALVARA, CLI_AL' +
        'VARASANITARIO = :NEW_CLI_ALVARASANITARIO, '
      
        '  CLI_ATIVIDADE = :NEW_CLI_ATIVIDADE, CLI_ATUALIZAR = :NEW_CLI_A' +
        'TUALIZAR, '
      
        '  CLI_BAIRRO = :NEW_CLI_BAIRRO, CLI_BAIRROCOB = :NEW_CLI_BAIRROC' +
        'OB, '
      
        '  CLI_BLOQUEARVENDA = :NEW_CLI_BLOQUEARVENDA, CLI_CEP = :NEW_CLI' +
        '_CEP, '
      '  CLI_CEPCOB = :NEW_CLI_CEPCOB, CLI_CIDADE = :NEW_CLI_CIDADE, '
      
        '  CLI_CIDADECOB = :NEW_CLI_CIDADECOB, CLI_CIDADECODIGO = :NEW_CL' +
        'I_CIDADECODIGO, '
      
        '  CLI_CIDADECODIGOCOB = :NEW_CLI_CIDADECODIGOCOB, CLI_CLASSIFICA' +
        'CAO = :NEW_CLI_CLASSIFICACAO, '
      '  CLI_CNPJ = :NEW_CLI_CNPJ, CLI_CNPJCOB = :NEW_CLI_CNPJCOB, '
      
        '  CLI_CNS = :NEW_CLI_CNS, CLI_CODIGO = :NEW_CLI_CODIGO, CLI_COMP' +
        'LEMENTO = :NEW_CLI_COMPLEMENTO, '
      
        '  CLI_COMPLEMENTOCOB = :NEW_CLI_COMPLEMENTOCOB, CLI_CONDICAO = :' +
        'NEW_CLI_CONDICAO, '
      
        '  CLI_CONJUGE = :NEW_CLI_CONJUGE, CLI_CONJUGECPF = :NEW_CLI_CONJ' +
        'UGECPF, '
      
        '  CLI_CONJUGEDTNASC = :NEW_CLI_CONJUGEDTNASC, CLI_CONJUGERG = :N' +
        'EW_CLI_CONJUGERG, '
      
        '  CLI_CONTATO = :NEW_CLI_CONTATO, CLI_CONTRIBUINTEICMS = :NEW_CL' +
        'I_CONTRIBUINTEICMS, '
      '  CLI_CPF = :NEW_CLI_CPF, CLI_DESCONTO = :NEW_CLI_DESCONTO, '
      
        '  CLI_DIACOBRANCA = :NEW_CLI_DIACOBRANCA, CLI_DTATUALIZACAO = :N' +
        'EW_CLI_DTATUALIZACAO, '
      
        '  CLI_DTCADASTRO = :NEW_CLI_DTCADASTRO, CLI_DTNASC = :NEW_CLI_DT' +
        'NASC, '
      '  CLI_DTOBITO = :NEW_CLI_DTOBITO, CLI_EMAIL = :NEW_CLI_EMAIL, '
      
        '  CLI_EMAIL2 = :NEW_CLI_EMAIL2, CLI_ENDERECO = :NEW_CLI_ENDERECO' +
        ', '
      
        '  CLI_ENDERECOCOB = :NEW_CLI_ENDERECOCOB, CLI_ENQUADRAMENTO = :N' +
        'EW_CLI_ENQUADRAMENTO, '
      
        '  CLI_ESTADO = :NEW_CLI_ESTADO, CLI_ESTADOCIVIL = :NEW_CLI_ESTAD' +
        'OCIVIL, '
      
        '  CLI_ESTADOCOB = :NEW_CLI_ESTADOCOB, CLI_ESTADOCODIGO = :NEW_CL' +
        'I_ESTADOCODIGO, '
      
        '  CLI_ESTADOCODIGOCOB = :NEW_CLI_ESTADOCODIGOCOB, CLI_FANTASIA =' +
        ' :NEW_CLI_FANTASIA, '
      '  CLI_FONE0800 = :NEW_CLI_FONE0800, CLI_FONE1 = :NEW_CLI_FONE1, '
      '  CLI_FONE2 = :NEW_CLI_FONE2, CLI_FONE3 = :NEW_CLI_FONE3, '
      
        '  CLI_FRETE = :NEW_CLI_FRETE, CLI_HRATUALIZACAO = :NEW_CLI_HRATU' +
        'ALIZACAO, '
      
        '  CLI_HRCADASTRO = :NEW_CLI_HRCADASTRO, CLI_IDESTRANGEIRO = :NEW' +
        '_CLI_IDESTRANGEIRO, '
      
        '  CLI_IE = :NEW_CLI_IE, CLI_IECOB = :NEW_CLI_IECOB, CLI_IM = :NE' +
        'W_CLI_IM, '
      
        '  CLI_LIMITECREDITO = :NEW_CLI_LIMITECREDITO, CLI_LOCALESTUDA = ' +
        ':NEW_CLI_LOCALESTUDA, '
      
        '  CLI_LOCALTRABALHO = :NEW_CLI_LOCALTRABALHO, CLI_MAE = :NEW_CLI' +
        '_MAE, '
      
        '  CLI_MAEEMAIL = :NEW_CLI_MAEEMAIL, CLI_MAEFONE = :NEW_CLI_MAEFO' +
        'NE, '
      
        '  CLI_MAILING = :NEW_CLI_MAILING, CLI_MENSALISTA = :NEW_CLI_MENS' +
        'ALISTA, '
      
        '  CLI_MSN = :NEW_CLI_MSN, CLI_NATURALIDADE = :NEW_CLI_NATURALIDA' +
        'DE, '
      '  CLI_NEXTEL = :NEW_CLI_NEXTEL, CLI_NOME = :NEW_CLI_NOME, '
      
        '  CLI_NUMERO = :NEW_CLI_NUMERO, CLI_NUMEROCOB = :NEW_CLI_NUMEROC' +
        'OB, '
      
        '  CLI_OBITO = :NEW_CLI_OBITO, CLI_OBSERVACOES = :NEW_CLI_OBSERVA' +
        'COES, '
      
        '  CLI_ORIENTACAOCOBRANCA = :NEW_CLI_ORIENTACAOCOBRANCA, CLI_PAI ' +
        '= :NEW_CLI_PAI, '
      
        '  CLI_PAIEMAIL = :NEW_CLI_PAIEMAIL, CLI_PAIFONE = :NEW_CLI_PAIFO' +
        'NE, '
      '  CLI_PAIS = :NEW_CLI_PAIS, CLI_PAISCOB = :NEW_CLI_PAISCOB, '
      
        '  CLI_PAISCODIGO = :NEW_CLI_PAISCODIGO, CLI_PAISCODIGOCOB = :NEW' +
        '_CLI_PAISCODIGOCOB, '
      
        '  CLI_PASSWORD = :NEW_CLI_PASSWORD, CLI_PONTOS = :NEW_CLI_PONTOS' +
        ', '
      
        '  CLI_PROFISSAO = :NEW_CLI_PROFISSAO, CLI_RECEBEAVISOS = :NEW_CL' +
        'I_RECEBEAVISOS, '
      
        '  CLI_REGPROFISSIONAL = :NEW_CLI_REGPROFISSIONAL, CLI_RG = :NEW_' +
        'CLI_RG, '
      
        '  CLI_SAME = :NEW_CLI_SAME, CLI_SETOR = :NEW_CLI_SETOR, CLI_SEXO' +
        ' = :NEW_CLI_SEXO, '
      '  CLI_SITE = :NEW_CLI_SITE, CLI_STATUS = :NEW_CLI_STATUS, '
      
        '  CLI_SUFRAMA = :NEW_CLI_SUFRAMA, CLI_TABELAPRECO = :NEW_CLI_TAB' +
        'ELAPRECO, '
      '  CLI_TAXA = :NEW_CLI_TAXA, CLI_TELEVENDA = :NEW_CLI_TELEVENDA, '
      
        '  CLI_TIPOCLIENTE = :NEW_CLI_TIPOCLIENTE, CLI_TIPOCONSUMIDOR = :' +
        'NEW_CLI_TIPOCONSUMIDOR, '
      
        '  CLI_TIPOPESSOA = :NEW_CLI_TIPOPESSOA, CLI_TRANSPORTADORA = :NE' +
        'W_CLI_TRANSPORTADORA, '
      
        '  CLI_USUARIO = :NEW_CLI_USUARIO, CLI_VENDEDOR = :NEW_CLI_VENDED' +
        'OR'
      'WHERE CLI_CODIGO = :OLD_CLI_CODIGO'
      
        'RETURNING CLI_AFE, CLI_ALVARA, CLI_ALVARASANITARIO, CLI_ATIVIDAD' +
        'E, CLI_ATUALIZAR, CLI_BAIRRO, CLI_BAIRROCOB, CLI_BLOQUEARVENDA, ' +
        'CLI_CEP, CLI_CEPCOB, CLI_CIDADE, CLI_CIDADECOB, CLI_CIDADECODIGO' +
        ', CLI_CIDADECODIGOCOB, CLI_CLASSIFICACAO, CLI_CNPJ, CLI_CNPJCOB,' +
        ' CLI_CNS, CLI_CODIGO, CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB, CLI_C' +
        'ONDICAO, CLI_CONJUGE, CLI_CONJUGECPF, CLI_CONJUGEDTNASC, CLI_CON' +
        'JUGERG, CLI_CONTATO, CLI_CONTRIBUINTEICMS, CLI_CPF, CLI_DESCONTO' +
        ', CLI_DIACOBRANCA, CLI_DTATUALIZACAO, CLI_DTCADASTRO, CLI_DTNASC' +
        ', CLI_DTOBITO, CLI_EMAIL, CLI_EMAIL2, CLI_ENDERECO, CLI_ENDERECO' +
        'COB, CLI_ENQUADRAMENTO, CLI_ESTADO, CLI_ESTADOCIVIL, CLI_ESTADOC' +
        'OB, CLI_ESTADOCODIGO, CLI_ESTADOCODIGOCOB, CLI_FANTASIA, CLI_FON' +
        'E0800, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_FRETE, CLI_HRATUALIZ' +
        'ACAO, CLI_HRCADASTRO, CLI_IDESTRANGEIRO, CLI_IE, CLI_IECOB, CLI_' +
        'IM, CLI_LIMITECREDITO, CLI_LOCALESTUDA, CLI_LOCALTRABALHO, CLI_M' +
        'AE, CLI_MAEEMAIL, CLI_MAEFONE, CLI_MAILING, CLI_MENSALISTA, CLI_' +
        'MSN, CLI_NATURALIDADE, CLI_NEXTEL, CLI_NOME, CLI_NUMERO, CLI_NUM' +
        'EROCOB, CLI_OBITO, CLI_OBSERVACOES, CLI_ORIENTACAOCOBRANCA, CLI_' +
        'PAI, CLI_PAIEMAIL, CLI_PAIFONE, CLI_PAIS, CLI_PAISCOB, CLI_PAISC' +
        'ODIGO, CLI_PAISCODIGOCOB, CLI_PASSWORD, CLI_PONTOS, CLI_PROFISSA' +
        'O, CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_RG, CLI_SAME, CLI_' +
        'SETOR, CLI_SEXO, CLI_SITE, CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPR' +
        'ECO, CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, CLI_TIPOCONSUMIDO' +
        'R, CLI_TIPOPESSOA, CLI_TRANSPORTADORA, CLI_USUARIO, CLI_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE CLI_CODIGO = :OLD_CLI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CLI_AFE, CLI_ALVARA, CLI_ALVARASANITARIO, CLI_ATIVIDADE, ' +
        'CLI_ATUALIZAR, '
      
        '  CLI_BAIRRO, CLI_BAIRROCOB, CLI_BLOQUEARVENDA, CLI_CEP, CLI_CEP' +
        'COB, '
      
        '  CLI_CIDADE, CLI_CIDADECOB, CLI_CIDADECODIGO, CLI_CIDADECODIGOC' +
        'OB, '
      
        '  CLI_CLASSIFICACAO, CLI_CNPJ, CLI_CNPJCOB, CLI_CNS, CLI_CODIGO,' +
        ' '
      
        '  CLI_COMPLEMENTO, CLI_COMPLEMENTOCOB, CLI_CONDICAO, CLI_CONJUGE' +
        ', '
      
        '  CLI_CONJUGECPF, CLI_CONJUGEDTNASC, CLI_CONJUGERG, CLI_CONTATO,' +
        ' '
      '  CLI_CONTRIBUINTEICMS, CLI_CPF, CLI_DESCONTO, CLI_DIACOBRANCA, '
      '  CLI_DTATUALIZACAO, CLI_DTCADASTRO, CLI_DTNASC, CLI_DTOBITO, '
      
        '  CLI_EMAIL, CLI_EMAIL2, CLI_ENDERECO, CLI_ENDERECOCOB, CLI_ENQU' +
        'ADRAMENTO, '
      '  CLI_ESTADO, CLI_ESTADOCIVIL, CLI_ESTADOCOB, CLI_ESTADOCODIGO, '
      '  CLI_ESTADOCODIGOCOB, CLI_FANTASIA, CLI_FONE0800, CLI_FONE1, '
      
        '  CLI_FONE2, CLI_FONE3, CLI_FRETE, CLI_HRATUALIZACAO, CLI_HRCADA' +
        'STRO, '
      
        '  CLI_IDESTRANGEIRO, CLI_IE, CLI_IECOB, CLI_IM, CLI_LIMITECREDIT' +
        'O, '
      '  CLI_LOCALESTUDA, CLI_LOCALTRABALHO, CLI_MAE, CLI_MAEEMAIL, '
      
        '  CLI_MAEFONE, CLI_MAILING, CLI_MENSALISTA, CLI_MSN, CLI_NATURAL' +
        'IDADE, '
      '  CLI_NEXTEL, CLI_NOME, CLI_NUMERO, CLI_NUMEROCOB, CLI_OBITO, '
      
        '  CLI_OBSERVACOES, CLI_ORIENTACAOCOBRANCA, CLI_PAI, CLI_PAIEMAIL' +
        ', '
      
        '  CLI_PAIFONE, CLI_PAIS, CLI_PAISCOB, CLI_PAISCODIGO, CLI_PAISCO' +
        'DIGOCOB, '
      '  CLI_PASSWORD, CLI_PONTOS, CLI_PROFISSAO, CLI_RECEBEAVISOS, '
      '  CLI_REGPROFISSIONAL, CLI_RG, CLI_SAME, CLI_SETOR, CLI_SEXO, '
      '  CLI_SITE, CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPRECO, CLI_TAXA, '
      
        '  CLI_TELEVENDA, CLI_TIPOCLIENTE, CLI_TIPOCONSUMIDOR, CLI_TIPOPE' +
        'SSOA, '
      '  CLI_TRANSPORTADORA, CLI_USUARIO, CLI_VENDEDOR'
      'FROM CLIENTES'
      'WHERE CLI_CODIGO = :OLD_CLI_CODIGO')
    Left = 232
    Top = 192
  end
  object TBParametros: TFDQuery
    Connection = FDConnection1
    Transaction = TRParametros
    SQL.Strings = (
      'select * from PARAMETROS '
      'where PAR_CODIGO=1'
      'order by PAR_CODIGO'
      '')
    Left = 104
    Top = 288
    object TBParametrosPAR_ABRIRLOCPRODUTOS: TStringField
      FieldName = 'PAR_ABRIRLOCPRODUTOS'
      Origin = 'PAR_ABRIRLOCPRODUTOS'
      Size = 1
    end
    object TBParametrosPAR_ACRESCIMOPOR: TStringField
      FieldName = 'PAR_ACRESCIMOPOR'
      Origin = 'PAR_ACRESCIMOPOR'
      Size = 1
    end
    object TBParametrosPAR_ACRESCIMOPORC: TFMTBCDField
      FieldName = 'PAR_ACRESCIMOPORC'
      Origin = 'PAR_ACRESCIMOPORC'
      Precision = 18
    end
    object TBParametrosPAR_ACRESCIMOVALOR: TFMTBCDField
      FieldName = 'PAR_ACRESCIMOVALOR'
      Origin = 'PAR_ACRESCIMOVALOR'
      Precision = 18
    end
    object TBParametrosPAR_ALMOXARIFADOPADRAO: TIntegerField
      FieldName = 'PAR_ALMOXARIFADOPADRAO'
      Origin = 'PAR_ALMOXARIFADOPADRAO'
      Required = True
    end
    object TBParametrosPAR_APIBRASILDEVICETOKEN: TStringField
      FieldName = 'PAR_APIBRASILDEVICETOKEN'
      Origin = 'PAR_APIBRASILDEVICETOKEN'
      Size = 40
    end
    object TBParametrosPAR_APIBRASILLOGIN: TStringField
      FieldName = 'PAR_APIBRASILLOGIN'
      Origin = 'PAR_APIBRASILLOGIN'
      Size = 100
    end
    object TBParametrosPAR_APIBRASILPLACA: TStringField
      FieldName = 'PAR_APIBRASILPLACA'
      Origin = 'PAR_APIBRASILPLACA'
      Size = 200
    end
    object TBParametrosPAR_APIBRASILSENHA: TStringField
      FieldName = 'PAR_APIBRASILSENHA'
      Origin = 'PAR_APIBRASILSENHA'
      Size = 40
    end
    object TBParametrosPAR_ARQUIVOCERTIFICADO: TStringField
      FieldName = 'PAR_ARQUIVOCERTIFICADO'
      Origin = 'PAR_ARQUIVOCERTIFICADO'
      Size = 200
    end
    object TBParametrosPAR_ATUALIZADOR: TStringField
      FieldName = 'PAR_ATUALIZADOR'
      Origin = 'PAR_ATUALIZADOR'
      Size = 200
    end
    object TBParametrosPAR_AULASFERIADOS: TStringField
      FieldName = 'PAR_AULASFERIADOS'
      Origin = 'PAR_AULASFERIADOS'
      Size = 1
    end
    object TBParametrosPAR_BAIRROPADRAO: TStringField
      FieldName = 'PAR_BAIRROPADRAO'
      Origin = 'PAR_BAIRROPADRAO'
      Size = 80
    end
    object TBParametrosPAR_BLOQUEARCLIENTEDIAS: TIntegerField
      FieldName = 'PAR_BLOQUEARCLIENTEDIAS'
      Origin = 'PAR_BLOQUEARCLIENTEDIAS'
    end
    object TBParametrosPAR_BOLETOPADRAO: TStringField
      FieldName = 'PAR_BOLETOPADRAO'
      Origin = 'PAR_BOLETOPADRAO'
      Size = 30
    end
    object TBParametrosPAR_BOLETOSEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_BOLETOSEMAILASSUNTO'
      Origin = 'PAR_BOLETOSEMAILASSUNTO'
    end
    object TBParametrosPAR_CALCULARPESOLIQUIDO: TStringField
      FieldName = 'PAR_CALCULARPESOLIQUIDO'
      Origin = 'PAR_CALCULARPESOLIQUIDO'
      Size = 1
    end
    object TBParametrosPAR_CALCULARPONTUACAO: TStringField
      FieldName = 'PAR_CALCULARPONTUACAO'
      Origin = 'PAR_CALCULARPONTUACAO'
      Size = 1
    end
    object TBParametrosPAR_CFOPFORAPADRAO: TIntegerField
      FieldName = 'PAR_CFOPFORAPADRAO'
      Origin = 'PAR_CFOPFORAPADRAO'
    end
    object TBParametrosPAR_CFOPPADRAO: TIntegerField
      FieldName = 'PAR_CFOPPADRAO'
      Origin = 'PAR_CFOPPADRAO'
    end
    object TBParametrosPAR_CFOPPRODUTO: TStringField
      FieldName = 'PAR_CFOPPRODUTO'
      Origin = 'PAR_CFOPPRODUTO'
      Size = 1
    end
    object TBParametrosPAR_CFOPSERVICOPADRAO: TIntegerField
      FieldName = 'PAR_CFOPSERVICOPADRAO'
      Origin = 'PAR_CFOPSERVICOPADRAO'
    end
    object TBParametrosPAR_CHATHABILITADO: TStringField
      FieldName = 'PAR_CHATHABILITADO'
      Origin = 'PAR_CHATHABILITADO'
      Size = 1
    end
    object TBParametrosPAR_CHAVECNPJA: TStringField
      FieldName = 'PAR_CHAVECNPJA'
      Origin = 'PAR_CHAVECNPJA'
      Size = 80
    end
    object TBParametrosPAR_CHECARSPED: TStringField
      FieldName = 'PAR_CHECARSPED'
      Origin = 'PAR_CHECARSPED'
      Size = 1
    end
    object TBParametrosPAR_CIDADEPADRAO: TStringField
      FieldName = 'PAR_CIDADEPADRAO'
      Origin = 'PAR_CIDADEPADRAO'
      Size = 80
    end
    object TBParametrosPAR_CLASSFISCALPADRAO: TIntegerField
      FieldName = 'PAR_CLASSFISCALPADRAO'
      Origin = 'PAR_CLASSFISCALPADRAO'
    end
    object TBParametrosPAR_CLI_ATIVIDADE: TIntegerField
      FieldName = 'PAR_CLI_ATIVIDADE'
      Origin = 'PAR_CLI_ATIVIDADE'
      Required = True
    end
    object TBParametrosPAR_CLI_BLOQUEARVENDA: TStringField
      FieldName = 'PAR_CLI_BLOQUEARVENDA'
      Origin = 'PAR_CLI_BLOQUEARVENDA'
      Size = 1
    end
    object TBParametrosPAR_CLI_MAILING: TIntegerField
      FieldName = 'PAR_CLI_MAILING'
      Origin = 'PAR_CLI_MAILING'
      Required = True
    end
    object TBParametrosPAR_CLI_TELEVENDA: TIntegerField
      FieldName = 'PAR_CLI_TELEVENDA'
      Origin = 'PAR_CLI_TELEVENDA'
      Required = True
    end
    object TBParametrosPAR_CLI_VENDEDOR: TIntegerField
      FieldName = 'PAR_CLI_VENDEDOR'
      Origin = 'PAR_CLI_VENDEDOR'
      Required = True
    end
    object TBParametrosPAR_CLIENTESANEXOSEMAIL: TIntegerField
      FieldName = 'PAR_CLIENTESANEXOSEMAIL'
      Origin = 'PAR_CLIENTESANEXOSEMAIL'
    end
    object TBParametrosPAR_CLIENTESTODOS: TStringField
      FieldName = 'PAR_CLIENTESTODOS'
      Origin = 'PAR_CLIENTESTODOS'
      Size = 1
    end
    object TBParametrosPAR_CNPJCERTIFICADO: TStringField
      FieldName = 'PAR_CNPJCERTIFICADO'
      Origin = 'PAR_CNPJCERTIFICADO'
    end
    object TBParametrosPAR_COBRARDESCONTO: TStringField
      FieldName = 'PAR_COBRARDESCONTO'
      Origin = 'PAR_COBRARDESCONTO'
      Size = 1
    end
    object TBParametrosPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBParametrosPAR_COMANDASCLIENTE: TIntegerField
      FieldName = 'PAR_COMANDASCLIENTE'
      Origin = 'PAR_COMANDASCLIENTE'
    end
    object TBParametrosPAR_COMANDASLF: TIntegerField
      FieldName = 'PAR_COMANDASLF'
      Origin = 'PAR_COMANDASLF'
    end
    object TBParametrosPAR_COMANDASLI: TIntegerField
      FieldName = 'PAR_COMANDASLI'
      Origin = 'PAR_COMANDASLI'
    end
    object TBParametrosPAR_COMANDASQL: TIntegerField
      FieldName = 'PAR_COMANDASQL'
      Origin = 'PAR_COMANDASQL'
    end
    object TBParametrosPAR_COMANDASRP: TStringField
      FieldName = 'PAR_COMANDASRP'
      Origin = 'PAR_COMANDASRP'
      Size = 50
    end
    object TBParametrosPAR_COMISSAOPOR: TStringField
      FieldName = 'PAR_COMISSAOPOR'
      Origin = 'PAR_COMISSAOPOR'
      Size = 1
    end
    object TBParametrosPAR_COMPRAEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_COMPRAEMAILASSUNTO'
      Origin = 'PAR_COMPRAEMAILASSUNTO'
    end
    object TBParametrosPAR_COMPRASEMAILBCC: TStringField
      FieldName = 'PAR_COMPRASEMAILBCC'
      Origin = 'PAR_COMPRASEMAILBCC'
      Size = 100
    end
    object TBParametrosPAR_CONCEITOAFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAFINAL'
      Origin = 'PAR_CONCEITOAFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOAINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAINICIAL'
      Origin = 'PAR_CONCEITOAINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOAMINUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAMINUSFINAL'
      Origin = 'PAR_CONCEITOAMINUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOAMINUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAMINUSINICIAL'
      Origin = 'PAR_CONCEITOAMINUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOAPLUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAPLUSFINAL'
      Origin = 'PAR_CONCEITOAPLUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOAPLUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOAPLUSINICIAL'
      Origin = 'PAR_CONCEITOAPLUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBFINAL'
      Origin = 'PAR_CONCEITOBFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBINICIAL'
      Origin = 'PAR_CONCEITOBINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBMINUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBMINUSFINAL'
      Origin = 'PAR_CONCEITOBMINUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBMINUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBMINUSINICIAL'
      Origin = 'PAR_CONCEITOBMINUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBPLUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBPLUSFINAL'
      Origin = 'PAR_CONCEITOBPLUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOBPLUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOBPLUSINICIAL'
      Origin = 'PAR_CONCEITOBPLUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCFINAL'
      Origin = 'PAR_CONCEITOCFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCINICIAL'
      Origin = 'PAR_CONCEITOCINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCMINUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCMINUSFINAL'
      Origin = 'PAR_CONCEITOCMINUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCMINUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCMINUSINICIAL'
      Origin = 'PAR_CONCEITOCMINUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCPLUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCPLUSFINAL'
      Origin = 'PAR_CONCEITOCPLUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOCPLUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOCPLUSINICIAL'
      Origin = 'PAR_CONCEITOCPLUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODFINAL'
      Origin = 'PAR_CONCEITODFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODINICIAL'
      Origin = 'PAR_CONCEITODINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODMINUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODMINUSFINAL'
      Origin = 'PAR_CONCEITODMINUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODMINUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODMINUSINICIAL'
      Origin = 'PAR_CONCEITODMINUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODPLUSFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODPLUSFINAL'
      Origin = 'PAR_CONCEITODPLUSFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITODPLUSINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITODPLUSINICIAL'
      Origin = 'PAR_CONCEITODPLUSINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOEFINAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOEFINAL'
      Origin = 'PAR_CONCEITOEFINAL'
      Precision = 18
    end
    object TBParametrosPAR_CONCEITOEINICIAL: TFMTBCDField
      FieldName = 'PAR_CONCEITOEINICIAL'
      Origin = 'PAR_CONCEITOEINICIAL'
      Precision = 18
    end
    object TBParametrosPAR_CONDICAOPADRAO: TIntegerField
      FieldName = 'PAR_CONDICAOPADRAO'
      Origin = 'PAR_CONDICAOPADRAO'
      Required = True
    end
    object TBParametrosPAR_CONSULTASANEXOSEMAIL: TIntegerField
      FieldName = 'PAR_CONSULTASANEXOSEMAIL'
      Origin = 'PAR_CONSULTASANEXOSEMAIL'
    end
    object TBParametrosPAR_CONTALOCALPADRAO: TIntegerField
      FieldName = 'PAR_CONTALOCALPADRAO'
      Origin = 'PAR_CONTALOCALPADRAO'
    end
    object TBParametrosPAR_CONTAPADRAO: TIntegerField
      FieldName = 'PAR_CONTAPADRAO'
      Origin = 'PAR_CONTAPADRAO'
      Required = True
    end
    object TBParametrosPAR_CORICONE: TStringField
      FieldName = 'PAR_CORICONE'
      Origin = 'PAR_CORICONE'
    end
    object TBParametrosPAR_CORTEPAPEL: TStringField
      FieldName = 'PAR_CORTEPAPEL'
      Origin = 'PAR_CORTEPAPEL'
      Size = 10
    end
    object TBParametrosPAR_COTACAOPONTOS: TFMTBCDField
      FieldName = 'PAR_COTACAOPONTOS'
      Origin = 'PAR_COTACAOPONTOS'
      Precision = 18
    end
    object TBParametrosPAR_CREDITOICMSSN: TFMTBCDField
      FieldName = 'PAR_CREDITOICMSSN'
      Origin = 'PAR_CREDITOICMSSN'
      Precision = 18
    end
    object TBParametrosPAR_CSRT: TStringField
      FieldName = 'PAR_CSRT'
      Origin = 'PAR_CSRT'
      Size = 40
    end
    object TBParametrosPAR_CSRTID: TIntegerField
      FieldName = 'PAR_CSRTID'
      Origin = 'PAR_CSRTID'
    end
    object TBParametrosPAR_CSTCOFINSPADRAO: TIntegerField
      FieldName = 'PAR_CSTCOFINSPADRAO'
      Origin = 'PAR_CSTCOFINSPADRAO'
    end
    object TBParametrosPAR_CSTICMSPADRAO: TIntegerField
      FieldName = 'PAR_CSTICMSPADRAO'
      Origin = 'PAR_CSTICMSPADRAO'
    end
    object TBParametrosPAR_CSTIPIPADRAO: TIntegerField
      FieldName = 'PAR_CSTIPIPADRAO'
      Origin = 'PAR_CSTIPIPADRAO'
    end
    object TBParametrosPAR_CSTPISPADRAO: TIntegerField
      FieldName = 'PAR_CSTPISPADRAO'
      Origin = 'PAR_CSTPISPADRAO'
    end
    object TBParametrosPAR_CTE_CSTICMS: TIntegerField
      FieldName = 'PAR_CTE_CSTICMS'
      Origin = 'PAR_CTE_CSTICMS'
    end
    object TBParametrosPAR_CTE_VEICULO: TIntegerField
      FieldName = 'PAR_CTE_VEICULO'
      Origin = 'PAR_CTE_VEICULO'
    end
    object TBParametrosPAR_CTEALIQTRIBUTOS: TFMTBCDField
      FieldName = 'PAR_CTEALIQTRIBUTOS'
      Origin = 'PAR_CTEALIQTRIBUTOS'
      Precision = 18
    end
    object TBParametrosPAR_CTECCEEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_CTECCEEMAILASSUNTO'
      Origin = 'PAR_CTECCEEMAILASSUNTO'
    end
    object TBParametrosPAR_CTEEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_CTEEMAILASSUNTO'
      Origin = 'PAR_CTEEMAILASSUNTO'
    end
    object TBParametrosPAR_CTEEMAILSISTEMA: TStringField
      FieldName = 'PAR_CTEEMAILSISTEMA'
      Origin = 'PAR_CTEEMAILSISTEMA'
      Size = 1
    end
    object TBParametrosPAR_CTEMODELO: TIntegerField
      FieldName = 'PAR_CTEMODELO'
      Origin = 'PAR_CTEMODELO'
    end
    object TBParametrosPAR_CTESERIE: TIntegerField
      FieldName = 'PAR_CTESERIE'
      Origin = 'PAR_CTESERIE'
    end
    object TBParametrosPAR_CTEVISUALIZARDACTE: TStringField
      FieldName = 'PAR_CTEVISUALIZARDACTE'
      Origin = 'PAR_CTEVISUALIZARDACTE'
      Size = 1
    end
    object TBParametrosPAR_DDDPADRAO: TStringField
      FieldName = 'PAR_DDDPADRAO'
      Origin = 'PAR_DDDPADRAO'
    end
    object TBParametrosPAR_DESCMAXPADRAO: TFMTBCDField
      FieldName = 'PAR_DESCMAXPADRAO'
      Origin = 'PAR_DESCMAXPADRAO'
      Precision = 18
    end
    object TBParametrosPAR_DESCONTOPORCLIENTE: TStringField
      FieldName = 'PAR_DESCONTOPORCLIENTE'
      Origin = 'PAR_DESCONTOPORCLIENTE'
      Size = 1
    end
    object TBParametrosPAR_DESPESAPADRAO: TIntegerField
      FieldName = 'PAR_DESPESAPADRAO'
      Origin = 'PAR_DESPESAPADRAO'
      Required = True
    end
    object TBParametrosPAR_DIAPREFERENCIAL01: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL01'
      Origin = 'PAR_DIAPREFERENCIAL01'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL02: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL02'
      Origin = 'PAR_DIAPREFERENCIAL02'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL03: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL03'
      Origin = 'PAR_DIAPREFERENCIAL03'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL04: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL04'
      Origin = 'PAR_DIAPREFERENCIAL04'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL05: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL05'
      Origin = 'PAR_DIAPREFERENCIAL05'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL06: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL06'
      Origin = 'PAR_DIAPREFERENCIAL06'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL07: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL07'
      Origin = 'PAR_DIAPREFERENCIAL07'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL08: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL08'
      Origin = 'PAR_DIAPREFERENCIAL08'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL09: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL09'
      Origin = 'PAR_DIAPREFERENCIAL09'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL10: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL10'
      Origin = 'PAR_DIAPREFERENCIAL10'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL11: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL11'
      Origin = 'PAR_DIAPREFERENCIAL11'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL12: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL12'
      Origin = 'PAR_DIAPREFERENCIAL12'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL13: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL13'
      Origin = 'PAR_DIAPREFERENCIAL13'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL14: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL14'
      Origin = 'PAR_DIAPREFERENCIAL14'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL15: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL15'
      Origin = 'PAR_DIAPREFERENCIAL15'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL16: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL16'
      Origin = 'PAR_DIAPREFERENCIAL16'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL17: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL17'
      Origin = 'PAR_DIAPREFERENCIAL17'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL18: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL18'
      Origin = 'PAR_DIAPREFERENCIAL18'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL19: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL19'
      Origin = 'PAR_DIAPREFERENCIAL19'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL20: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL20'
      Origin = 'PAR_DIAPREFERENCIAL20'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL21: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL21'
      Origin = 'PAR_DIAPREFERENCIAL21'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL22: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL22'
      Origin = 'PAR_DIAPREFERENCIAL22'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL23: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL23'
      Origin = 'PAR_DIAPREFERENCIAL23'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL24: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL24'
      Origin = 'PAR_DIAPREFERENCIAL24'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL25: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL25'
      Origin = 'PAR_DIAPREFERENCIAL25'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL26: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL26'
      Origin = 'PAR_DIAPREFERENCIAL26'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL27: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL27'
      Origin = 'PAR_DIAPREFERENCIAL27'
      Size = 1
    end
    object TBParametrosPAR_DIAPREFERENCIAL28: TStringField
      FieldName = 'PAR_DIAPREFERENCIAL28'
      Origin = 'PAR_DIAPREFERENCIAL28'
      Size = 1
    end
    object TBParametrosPAR_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'PAR_ENQUADRAMENTOIPI'
      Origin = 'PAR_ENQUADRAMENTOIPI'
    end
    object TBParametrosPAR_ESPECIEPADRAO: TStringField
      FieldName = 'PAR_ESPECIEPADRAO'
      Origin = 'PAR_ESPECIEPADRAO'
      Size = 50
    end
    object TBParametrosPAR_ESTADOPADRAO: TStringField
      FieldName = 'PAR_ESTADOPADRAO'
      Origin = 'PAR_ESTADOPADRAO'
      Size = 80
    end
    object TBParametrosPAR_ESTOQUEESPADRAO: TStringField
      FieldName = 'PAR_ESTOQUEESPADRAO'
      Origin = 'PAR_ESTOQUEESPADRAO'
      Size = 1
    end
    object TBParametrosPAR_ETIQUETACONFERENCIA: TIntegerField
      FieldName = 'PAR_ETIQUETACONFERENCIA'
      Origin = 'PAR_ETIQUETACONFERENCIA'
    end
    object TBParametrosPAR_ETIQUETAEMBALAGEM: TIntegerField
      FieldName = 'PAR_ETIQUETAEMBALAGEM'
      Origin = 'PAR_ETIQUETAEMBALAGEM'
    end
    object TBParametrosPAR_ETIQUETAMODELO1: TIntegerField
      FieldName = 'PAR_ETIQUETAMODELO1'
      Origin = 'PAR_ETIQUETAMODELO1'
    end
    object TBParametrosPAR_EXIBIRTELARESUMO: TStringField
      FieldName = 'PAR_EXIBIRTELARESUMO'
      Origin = 'PAR_EXIBIRTELARESUMO'
      Size = 1
    end
    object TBParametrosPAR_EXPEDIDOPORVENDEDOR: TStringField
      FieldName = 'PAR_EXPEDIDOPORVENDEDOR'
      Origin = 'PAR_EXPEDIDOPORVENDEDOR'
      Size = 1
    end
    object TBParametrosPAR_EXPEDIDOR: TIntegerField
      FieldName = 'PAR_EXPEDIDOR'
      Origin = 'PAR_EXPEDIDOR'
      Required = True
    end
    object TBParametrosPAR_FAMILIACURSOS: TIntegerField
      FieldName = 'PAR_FAMILIACURSOS'
      Origin = 'PAR_FAMILIACURSOS'
    end
    object TBParametrosPAR_FAMILIAMATERIAIS: TIntegerField
      FieldName = 'PAR_FAMILIAMATERIAIS'
      Origin = 'PAR_FAMILIAMATERIAIS'
    end
    object TBParametrosPAR_FORNECEDORESANEXOSEMAIL: TIntegerField
      FieldName = 'PAR_FORNECEDORESANEXOSEMAIL'
      Origin = 'PAR_FORNECEDORESANEXOSEMAIL'
    end
    object TBParametrosPAR_FRETEPORCONTA: TStringField
      FieldName = 'PAR_FRETEPORCONTA'
      Origin = 'PAR_FRETEPORCONTA'
      Size = 50
    end
    object TBParametrosPAR_FRETEPRIMEIRAPARCELA: TStringField
      FieldName = 'PAR_FRETEPRIMEIRAPARCELA'
      Origin = 'PAR_FRETEPRIMEIRAPARCELA'
      Size = 1
    end
    object TBParametrosPAR_FUSOHORARIO: TStringField
      FieldName = 'PAR_FUSOHORARIO'
      Origin = 'PAR_FUSOHORARIO'
      Size = 6
    end
    object TBParametrosPAR_GNRECONVENIO: TStringField
      FieldName = 'PAR_GNRECONVENIO'
      Origin = 'PAR_GNRECONVENIO'
      Size = 50
    end
    object TBParametrosPAR_GNRERECEITA: TStringField
      FieldName = 'PAR_GNRERECEITA'
      Origin = 'PAR_GNRERECEITA'
      Size = 120
    end
    object TBParametrosPAR_GNRESCHEMAS: TStringField
      FieldName = 'PAR_GNRESCHEMAS'
      Origin = 'PAR_GNRESCHEMAS'
      Size = 200
    end
    object TBParametrosPAR_HIGHHEIGHT: TIntegerField
      FieldName = 'PAR_HIGHHEIGHT'
      Origin = 'PAR_HIGHHEIGHT'
    end
    object TBParametrosPAR_HIGHWIDTH: TIntegerField
      FieldName = 'PAR_HIGHWIDTH'
      Origin = 'PAR_HIGHWIDTH'
    end
    object TBParametrosPAR_HORAAULA: TStringField
      FieldName = 'PAR_HORAAULA'
      Origin = 'PAR_HORAAULA'
      Size = 25
    end
    object TBParametrosPAR_HRCOMERCIALFIM: TTimeField
      FieldName = 'PAR_HRCOMERCIALFIM'
      Origin = 'PAR_HRCOMERCIALFIM'
    end
    object TBParametrosPAR_HRCOMERCIALINICIO: TTimeField
      FieldName = 'PAR_HRCOMERCIALINICIO'
      Origin = 'PAR_HRCOMERCIALINICIO'
    end
    object TBParametrosPAR_IDENTIFICACAOSISTEMA: TStringField
      FieldName = 'PAR_IDENTIFICACAOSISTEMA'
      Origin = 'PAR_IDENTIFICACAOSISTEMA'
      Size = 50
    end
    object TBParametrosPAR_IMPRIMIRCANHOTOPEDIDO: TStringField
      FieldName = 'PAR_IMPRIMIRCANHOTOPEDIDO'
      Origin = 'PAR_IMPRIMIRCANHOTOPEDIDO'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRCONDICAO: TStringField
      FieldName = 'PAR_IMPRIMIRCONDICAO'
      Origin = 'PAR_IMPRIMIRCONDICAO'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRLOGOTIPO: TStringField
      FieldName = 'PAR_IMPRIMIRLOGOTIPO'
      Origin = 'PAR_IMPRIMIRLOGOTIPO'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRNOMEFANTASIA: TStringField
      FieldName = 'PAR_IMPRIMIRNOMEFANTASIA'
      Origin = 'PAR_IMPRIMIRNOMEFANTASIA'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRNUMPEDIDO: TStringField
      FieldName = 'PAR_IMPRIMIRNUMPEDIDO'
      Origin = 'PAR_IMPRIMIRNUMPEDIDO'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRRECEBER: TStringField
      FieldName = 'PAR_IMPRIMIRRECEBER'
      Origin = 'PAR_IMPRIMIRRECEBER'
      Size = 1
    end
    object TBParametrosPAR_IMPRIMIRSALDOAC: TStringField
      FieldName = 'PAR_IMPRIMIRSALDOAC'
      Origin = 'PAR_IMPRIMIRSALDOAC'
      Size = 1
    end
    object TBParametrosPAR_INFOCOBRANCAXML: TStringField
      FieldName = 'PAR_INFOCOBRANCAXML'
      Origin = 'PAR_INFOCOBRANCAXML'
      Size = 1
    end
    object TBParametrosPAR_INTERMEDIADOR: TStringField
      FieldName = 'PAR_INTERMEDIADOR'
      Origin = 'PAR_INTERMEDIADOR'
      Size = 50
    end
    object TBParametrosPAR_INTERMEDIADORCAD: TStringField
      FieldName = 'PAR_INTERMEDIADORCAD'
      Origin = 'PAR_INTERMEDIADORCAD'
      Size = 50
    end
    object TBParametrosPAR_INTERMEDIADORCNPJ: TStringField
      FieldName = 'PAR_INTERMEDIADORCNPJ'
      Origin = 'PAR_INTERMEDIADORCNPJ'
    end
    object TBParametrosPAR_JURIDICOSITE1: TStringField
      FieldName = 'PAR_JURIDICOSITE1'
      Origin = 'PAR_JURIDICOSITE1'
      Size = 100
    end
    object TBParametrosPAR_JURIDICOSITE2: TStringField
      FieldName = 'PAR_JURIDICOSITE2'
      Origin = 'PAR_JURIDICOSITE2'
      Size = 100
    end
    object TBParametrosPAR_JURIDICOSITE3: TStringField
      FieldName = 'PAR_JURIDICOSITE3'
      Origin = 'PAR_JURIDICOSITE3'
      Size = 100
    end
    object TBParametrosPAR_JUROSMENSAL: TFMTBCDField
      FieldName = 'PAR_JUROSMENSAL'
      Origin = 'PAR_JUROSMENSAL'
      Precision = 18
    end
    object TBParametrosPAR_LIBCRYPT: TStringField
      FieldName = 'PAR_LIBCRYPT'
      Origin = 'PAR_LIBCRYPT'
    end
    object TBParametrosPAR_LIBHTTP: TStringField
      FieldName = 'PAR_LIBHTTP'
      Origin = 'PAR_LIBHTTP'
    end
    object TBParametrosPAR_LIBSSL: TStringField
      FieldName = 'PAR_LIBSSL'
      Origin = 'PAR_LIBSSL'
    end
    object TBParametrosPAR_LIBXMLSIGN: TStringField
      FieldName = 'PAR_LIBXMLSIGN'
      Origin = 'PAR_LIBXMLSIGN'
    end
    object TBParametrosPAR_LICENCADLL: TStringField
      FieldName = 'PAR_LICENCADLL'
      Origin = 'PAR_LICENCADLL'
      Size = 128
    end
    object TBParametrosPAR_LICENCADLLCTE: TStringField
      FieldName = 'PAR_LICENCADLLCTE'
      Origin = 'PAR_LICENCADLLCTE'
      Size = 128
    end
    object TBParametrosPAR_LICENCADLLMDFE: TStringField
      FieldName = 'PAR_LICENCADLLMDFE'
      Origin = 'PAR_LICENCADLLMDFE'
      Size = 128
    end
    object TBParametrosPAR_LIMITECREDITO: TFMTBCDField
      FieldName = 'PAR_LIMITECREDITO'
      Origin = 'PAR_LIMITECREDITO'
      Precision = 18
    end
    object TBParametrosPAR_LINHASFINALRECIBO: TIntegerField
      FieldName = 'PAR_LINHASFINALRECIBO'
      Origin = 'PAR_LINHASFINALRECIBO'
    end
    object TBParametrosPAR_LINHASINICIORECIBO: TIntegerField
      FieldName = 'PAR_LINHASINICIORECIBO'
      Origin = 'PAR_LINHASINICIORECIBO'
    end
    object TBParametrosPAR_LOCACOESDIAS: TIntegerField
      FieldName = 'PAR_LOCACOESDIAS'
      Origin = 'PAR_LOCACOESDIAS'
    end
    object TBParametrosPAR_LOCACOESHORALIMITE: TStringField
      FieldName = 'PAR_LOCACOESHORALIMITE'
      Origin = 'PAR_LOCACOESHORALIMITE'
      Size = 25
    end
    object TBParametrosPAR_LOCALANEXOSCLIENTES: TStringField
      FieldName = 'PAR_LOCALANEXOSCLIENTES'
      Origin = 'PAR_LOCALANEXOSCLIENTES'
      Size = 200
    end
    object TBParametrosPAR_LOCALANEXOSCONSULTAS: TStringField
      FieldName = 'PAR_LOCALANEXOSCONSULTAS'
      Origin = 'PAR_LOCALANEXOSCONSULTAS'
      Size = 200
    end
    object TBParametrosPAR_LOCALANEXOSFORNECEDORES: TStringField
      FieldName = 'PAR_LOCALANEXOSFORNECEDORES'
      Origin = 'PAR_LOCALANEXOSFORNECEDORES'
      Size = 200
    end
    object TBParametrosPAR_LOCALANEXOSPROCESSOS: TStringField
      FieldName = 'PAR_LOCALANEXOSPROCESSOS'
      Origin = 'PAR_LOCALANEXOSPROCESSOS'
      Size = 200
    end
    object TBParametrosPAR_LOCALANEXOSPRODUTOS: TStringField
      FieldName = 'PAR_LOCALANEXOSPRODUTOS'
      Origin = 'PAR_LOCALANEXOSPRODUTOS'
      Size = 200
    end
    object TBParametrosPAR_LOCALANEXOSSEGUROS: TStringField
      FieldName = 'PAR_LOCALANEXOSSEGUROS'
      Origin = 'PAR_LOCALANEXOSSEGUROS'
      Size = 200
    end
    object TBParametrosPAR_LOCALATUALIZACOES: TStringField
      FieldName = 'PAR_LOCALATUALIZACOES'
      Origin = 'PAR_LOCALATUALIZACOES'
      Size = 200
    end
    object TBParametrosPAR_LOCALDENTES: TStringField
      FieldName = 'PAR_LOCALDENTES'
      Origin = 'PAR_LOCALDENTES'
      Size = 200
    end
    object TBParametrosPAR_LOCALESTUDAPADRAO: TIntegerField
      FieldName = 'PAR_LOCALESTUDAPADRAO'
      Origin = 'PAR_LOCALESTUDAPADRAO'
    end
    object TBParametrosPAR_LOCALFOTOSIMOVEIS: TStringField
      FieldName = 'PAR_LOCALFOTOSIMOVEIS'
      Origin = 'PAR_LOCALFOTOSIMOVEIS'
      Size = 200
    end
    object TBParametrosPAR_LOCALFOTOSPRODUTOS: TStringField
      FieldName = 'PAR_LOCALFOTOSPRODUTOS'
      Origin = 'PAR_LOCALFOTOSPRODUTOS'
      Size = 200
    end
    object TBParametrosPAR_LOCALIMAGENSCONSULTAS: TStringField
      FieldName = 'PAR_LOCALIMAGENSCONSULTAS'
      Origin = 'PAR_LOCALIMAGENSCONSULTAS'
      Size = 200
    end
    object TBParametrosPAR_LOCALMODELOSDOC: TStringField
      FieldName = 'PAR_LOCALMODELOSDOC'
      Origin = 'PAR_LOCALMODELOSDOC'
      Size = 200
    end
    object TBParametrosPAR_LOCALPADRAO: TIntegerField
      FieldName = 'PAR_LOCALPADRAO'
      Origin = 'PAR_LOCALPADRAO'
    end
    object TBParametrosPAR_LOCALPRONTUARIOS: TStringField
      FieldName = 'PAR_LOCALPRONTUARIOS'
      Origin = 'PAR_LOCALPRONTUARIOS'
      Size = 200
    end
    object TBParametrosPAR_LOCPRODUTOSPRECOS: TStringField
      FieldName = 'PAR_LOCPRODUTOSPRECOS'
      Origin = 'PAR_LOCPRODUTOSPRECOS'
      Size = 1
    end
    object TBParametrosPAR_LOWHEIGHT: TIntegerField
      FieldName = 'PAR_LOWHEIGHT'
      Origin = 'PAR_LOWHEIGHT'
    end
    object TBParametrosPAR_LOWWIDTH: TIntegerField
      FieldName = 'PAR_LOWWIDTH'
      Origin = 'PAR_LOWWIDTH'
    end
    object TBParametrosPAR_MALCOLMREQ: TStringField
      FieldName = 'PAR_MALCOLMREQ'
      Origin = 'PAR_MALCOLMREQ'
      Size = 200
    end
    object TBParametrosPAR_MALCOLMRESP: TStringField
      FieldName = 'PAR_MALCOLMRESP'
      Origin = 'PAR_MALCOLMRESP'
      Size = 200
    end
    object TBParametrosPAR_MARCAPADRAO: TStringField
      FieldName = 'PAR_MARCAPADRAO'
      Origin = 'PAR_MARCAPADRAO'
      Size = 50
    end
    object TBParametrosPAR_MARGEMPADRAO: TFMTBCDField
      FieldName = 'PAR_MARGEMPADRAO'
      Origin = 'PAR_MARGEMPADRAO'
      Precision = 18
    end
    object TBParametrosPAR_MATRICULASEMMATERIAL: TStringField
      FieldName = 'PAR_MATRICULASEMMATERIAL'
      Origin = 'PAR_MATRICULASEMMATERIAL'
      Size = 1
    end
    object TBParametrosPAR_MDFEMODELO: TIntegerField
      FieldName = 'PAR_MDFEMODELO'
      Origin = 'PAR_MDFEMODELO'
    end
    object TBParametrosPAR_MDFESERIE: TIntegerField
      FieldName = 'PAR_MDFESERIE'
      Origin = 'PAR_MDFESERIE'
    end
    object TBParametrosPAR_MULTAPORC: TFMTBCDField
      FieldName = 'PAR_MULTAPORC'
      Origin = 'PAR_MULTAPORC'
      Precision = 18
    end
    object TBParametrosPAR_MULTATIPO: TStringField
      FieldName = 'PAR_MULTATIPO'
      Origin = 'PAR_MULTATIPO'
      Size = 1
    end
    object TBParametrosPAR_NFCECONTINGENCIADATA: TDateField
      FieldName = 'PAR_NFCECONTINGENCIADATA'
      Origin = 'PAR_NFCECONTINGENCIADATA'
    end
    object TBParametrosPAR_NFCECONTINGENCIAHORA: TTimeField
      FieldName = 'PAR_NFCECONTINGENCIAHORA'
      Origin = 'PAR_NFCECONTINGENCIAHORA'
    end
    object TBParametrosPAR_NFCECONTINGENCIAJUST: TStringField
      FieldName = 'PAR_NFCECONTINGENCIAJUST'
      Origin = 'PAR_NFCECONTINGENCIAJUST'
      Size = 50
    end
    object TBParametrosPAR_NFCECSC: TStringField
      FieldName = 'PAR_NFCECSC'
      Origin = 'PAR_NFCECSC'
      Size = 40
    end
    object TBParametrosPAR_NFCECSCID: TStringField
      FieldName = 'PAR_NFCECSCID'
      Origin = 'PAR_NFCECSCID'
      Size = 40
    end
    object TBParametrosPAR_NFCEMODELO: TIntegerField
      FieldName = 'PAR_NFCEMODELO'
      Origin = 'PAR_NFCEMODELO'
    end
    object TBParametrosPAR_NFCESCHEMAS: TStringField
      FieldName = 'PAR_NFCESCHEMAS'
      Origin = 'PAR_NFCESCHEMAS'
      Size = 200
    end
    object TBParametrosPAR_NFCESERIE: TIntegerField
      FieldName = 'PAR_NFCESERIE'
      Origin = 'PAR_NFCESERIE'
    end
    object TBParametrosPAR_NFCETIMEOUT: TIntegerField
      FieldName = 'PAR_NFCETIMEOUT'
      Origin = 'PAR_NFCETIMEOUT'
    end
    object TBParametrosPAR_NFCETIPOEMISSAO: TStringField
      FieldName = 'PAR_NFCETIPOEMISSAO'
      Origin = 'PAR_NFCETIPOEMISSAO'
      Size = 40
    end
    object TBParametrosPAR_NFECCEEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_NFECCEEMAILASSUNTO'
      Origin = 'PAR_NFECCEEMAILASSUNTO'
    end
    object TBParametrosPAR_NFECONTINGENCIADATA: TDateField
      FieldName = 'PAR_NFECONTINGENCIADATA'
      Origin = 'PAR_NFECONTINGENCIADATA'
    end
    object TBParametrosPAR_NFECONTINGENCIAHORA: TTimeField
      FieldName = 'PAR_NFECONTINGENCIAHORA'
      Origin = 'PAR_NFECONTINGENCIAHORA'
    end
    object TBParametrosPAR_NFECONTINGENCIAJUST: TStringField
      FieldName = 'PAR_NFECONTINGENCIAJUST'
      Origin = 'PAR_NFECONTINGENCIAJUST'
      Size = 50
    end
    object TBParametrosPAR_NFEEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_NFEEMAILASSUNTO'
      Origin = 'PAR_NFEEMAILASSUNTO'
    end
    object TBParametrosPAR_NFEEMAILAUTOMATICO: TStringField
      FieldName = 'PAR_NFEEMAILAUTOMATICO'
      Origin = 'PAR_NFEEMAILAUTOMATICO'
      Size = 1
    end
    object TBParametrosPAR_NFEEMAILBCC: TStringField
      FieldName = 'PAR_NFEEMAILBCC'
      Origin = 'PAR_NFEEMAILBCC'
      Size = 100
    end
    object TBParametrosPAR_NFEEMAILTRANSP: TStringField
      FieldName = 'PAR_NFEEMAILTRANSP'
      Origin = 'PAR_NFEEMAILTRANSP'
      Size = 1
    end
    object TBParametrosPAR_NFEMODELO: TIntegerField
      FieldName = 'PAR_NFEMODELO'
      Origin = 'PAR_NFEMODELO'
    end
    object TBParametrosPAR_NFESERIE: TIntegerField
      FieldName = 'PAR_NFESERIE'
      Origin = 'PAR_NFESERIE'
    end
    object TBParametrosPAR_NFETIPOATENDIMENTO: TStringField
      FieldName = 'PAR_NFETIPOATENDIMENTO'
      Origin = 'PAR_NFETIPOATENDIMENTO'
      Size = 50
    end
    object TBParametrosPAR_NFETIPOCONSUMIDOR: TStringField
      FieldName = 'PAR_NFETIPOCONSUMIDOR'
      Origin = 'PAR_NFETIPOCONSUMIDOR'
      Size = 30
    end
    object TBParametrosPAR_NFETIPOEMISSAO: TStringField
      FieldName = 'PAR_NFETIPOEMISSAO'
      Origin = 'PAR_NFETIPOEMISSAO'
      Size = 40
    end
    object TBParametrosPAR_NFEVISUALIZARDANFE: TStringField
      FieldName = 'PAR_NFEVISUALIZARDANFE'
      Origin = 'PAR_NFEVISUALIZARDANFE'
      Size = 1
    end
    object TBParametrosPAR_NFSEEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_NFSEEMAILASSUNTO'
      Origin = 'PAR_NFSEEMAILASSUNTO'
    end
    object TBParametrosPAR_NFSEEMAILAUTOMATICO: TStringField
      FieldName = 'PAR_NFSEEMAILAUTOMATICO'
      Origin = 'PAR_NFSEEMAILAUTOMATICO'
      Size = 1
    end
    object TBParametrosPAR_NFSEINFOADICIONAIS: TMemoField
      FieldName = 'PAR_NFSEINFOADICIONAIS'
      Origin = 'PAR_NFSEINFOADICIONAIS'
      BlobType = ftMemo
    end
    object TBParametrosPAR_NFSEPROVEDOR: TStringField
      FieldName = 'PAR_NFSEPROVEDOR'
      Origin = 'PAR_NFSEPROVEDOR'
      Size = 30
    end
    object TBParametrosPAR_NFSERETENCAO: TStringField
      FieldName = 'PAR_NFSERETENCAO'
      Origin = 'PAR_NFSERETENCAO'
      Size = 50
    end
    object TBParametrosPAR_NFSERETENCAORESP: TStringField
      FieldName = 'PAR_NFSERETENCAORESP'
      Origin = 'PAR_NFSERETENCAORESP'
      Size = 15
    end
    object TBParametrosPAR_NFSESCHEMAS: TStringField
      FieldName = 'PAR_NFSESCHEMAS'
      Origin = 'PAR_NFSESCHEMAS'
      Size = 200
    end
    object TBParametrosPAR_NFSESERIE: TStringField
      FieldName = 'PAR_NFSESERIE'
      Origin = 'PAR_NFSESERIE'
      Size = 40
    end
    object TBParametrosPAR_NFSESERVICO: TStringField
      FieldName = 'PAR_NFSESERVICO'
      Origin = 'PAR_NFSESERVICO'
      Size = 10
    end
    object TBParametrosPAR_NFSEVERSAO: TStringField
      FieldName = 'PAR_NFSEVERSAO'
      Origin = 'PAR_NFSEVERSAO'
      Size = 5
    end
    object TBParametrosPAR_NOMECERTIFICADO: TMemoField
      FieldName = 'PAR_NOMECERTIFICADO'
      Origin = 'PAR_NOMECERTIFICADO'
      BlobType = ftMemo
    end
    object TBParametrosPAR_NOTASLF: TIntegerField
      FieldName = 'PAR_NOTASLF'
      Origin = 'PAR_NOTASLF'
    end
    object TBParametrosPAR_NOTASLI: TIntegerField
      FieldName = 'PAR_NOTASLI'
      Origin = 'PAR_NOTASLI'
    end
    object TBParametrosPAR_NOTASQL: TIntegerField
      FieldName = 'PAR_NOTASQL'
      Origin = 'PAR_NOTASQL'
    end
    object TBParametrosPAR_NOTASQLOBS: TIntegerField
      FieldName = 'PAR_NOTASQLOBS'
      Origin = 'PAR_NOTASQLOBS'
    end
    object TBParametrosPAR_PASTAHIGH: TStringField
      FieldName = 'PAR_PASTAHIGH'
      Origin = 'PAR_PASTAHIGH'
    end
    object TBParametrosPAR_PASTALOW: TStringField
      FieldName = 'PAR_PASTALOW'
      Origin = 'PAR_PASTALOW'
    end
    object TBParametrosPAR_PREVISUALIZARVENDA: TStringField
      FieldName = 'PAR_PREVISUALIZARVENDA'
      Origin = 'PAR_PREVISUALIZARVENDA'
      Size = 1
    end
    object TBParametrosPAR_PRODUCAODTPREVISAO: TIntegerField
      FieldName = 'PAR_PRODUCAODTPREVISAO'
      Origin = 'PAR_PRODUCAODTPREVISAO'
    end
    object TBParametrosPAR_PRODUTOCODIGOLIVRE: TStringField
      FieldName = 'PAR_PRODUTOCODIGOLIVRE'
      Origin = 'PAR_PRODUTOCODIGOLIVRE'
      Size = 1
    end
    object TBParametrosPAR_PRODUTOMAODEOBRA: TIntegerField
      FieldName = 'PAR_PRODUTOMAODEOBRA'
      Origin = 'PAR_PRODUTOMAODEOBRA'
    end
    object TBParametrosPAR_PRODUTOSANEXOSEMAIL: TIntegerField
      FieldName = 'PAR_PRODUTOSANEXOSEMAIL'
      Origin = 'PAR_PRODUTOSANEXOSEMAIL'
    end
    object TBParametrosPAR_PRODUTOSCODIGOFAB: TStringField
      FieldName = 'PAR_PRODUTOSCODIGOFAB'
      Origin = 'PAR_PRODUTOSCODIGOFAB'
      Size = 1
    end
    object TBParametrosPAR_PRODUTOSLF: TIntegerField
      FieldName = 'PAR_PRODUTOSLF'
      Origin = 'PAR_PRODUTOSLF'
    end
    object TBParametrosPAR_PRODUTOSLI: TIntegerField
      FieldName = 'PAR_PRODUTOSLI'
      Origin = 'PAR_PRODUTOSLI'
    end
    object TBParametrosPAR_PRODUTOSQL: TIntegerField
      FieldName = 'PAR_PRODUTOSQL'
      Origin = 'PAR_PRODUTOSQL'
    end
    object TBParametrosPAR_PROFAMILIA: TIntegerField
      FieldName = 'PAR_PROFAMILIA'
      Origin = 'PAR_PROFAMILIA'
    end
    object TBParametrosPAR_PROFORNECEDOR: TIntegerField
      FieldName = 'PAR_PROFORNECEDOR'
      Origin = 'PAR_PROFORNECEDOR'
    end
    object TBParametrosPAR_PROGRUPO: TIntegerField
      FieldName = 'PAR_PROGRUPO'
      Origin = 'PAR_PROGRUPO'
    end
    object TBParametrosPAR_PROMARCA: TIntegerField
      FieldName = 'PAR_PROMARCA'
      Origin = 'PAR_PROMARCA'
    end
    object TBParametrosPAR_PROMISSORIASCODIGO: TStringField
      FieldName = 'PAR_PROMISSORIASCODIGO'
      Origin = 'PAR_PROMISSORIASCODIGO'
      Size = 1
    end
    object TBParametrosPAR_PROUNIDADE: TStringField
      FieldName = 'PAR_PROUNIDADE'
      Origin = 'PAR_PROUNIDADE'
      Size = 3
    end
    object TBParametrosPAR_PROXY: TStringField
      FieldName = 'PAR_PROXY'
      Origin = 'PAR_PROXY'
      Size = 1
    end
    object TBParametrosPAR_PROXYENDERECO: TStringField
      FieldName = 'PAR_PROXYENDERECO'
      Origin = 'PAR_PROXYENDERECO'
      Size = 100
    end
    object TBParametrosPAR_PROXYPASSWORD: TStringField
      FieldName = 'PAR_PROXYPASSWORD'
      Origin = 'PAR_PROXYPASSWORD'
      Size = 40
    end
    object TBParametrosPAR_PROXYPORTA: TIntegerField
      FieldName = 'PAR_PROXYPORTA'
      Origin = 'PAR_PROXYPORTA'
    end
    object TBParametrosPAR_PROXYUSER: TStringField
      FieldName = 'PAR_PROXYUSER'
      Origin = 'PAR_PROXYUSER'
    end
    object TBParametrosPAR_QTDENIVEISCOMPOSTO: TIntegerField
      FieldName = 'PAR_QTDENIVEISCOMPOSTO'
      Origin = 'PAR_QTDENIVEISCOMPOSTO'
    end
    object TBParametrosPAR_RECEITAPADRAO: TIntegerField
      FieldName = 'PAR_RECEITAPADRAO'
      Origin = 'PAR_RECEITAPADRAO'
      Required = True
    end
    object TBParametrosPAR_RECIBOSEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_RECIBOSEMAILASSUNTO'
      Origin = 'PAR_RECIBOSEMAILASSUNTO'
    end
    object TBParametrosPAR_REFORMATRIBUTARIA: TStringField
      FieldName = 'PAR_REFORMATRIBUTARIA'
      Origin = 'PAR_REFORMATRIBUTARIA'
      Size = 1
    end
    object TBParametrosPAR_REE_DTJUROSAPOS: TIntegerField
      FieldName = 'PAR_REE_DTJUROSAPOS'
      Origin = 'PAR_REE_DTJUROSAPOS'
    end
    object TBParametrosPAR_REPOSITORIOBOLETOS: TStringField
      FieldName = 'PAR_REPOSITORIOBOLETOS'
      Origin = 'PAR_REPOSITORIOBOLETOS'
      Size = 200
    end
    object TBParametrosPAR_REPOSITORIOCTE: TStringField
      FieldName = 'PAR_REPOSITORIOCTE'
      Origin = 'PAR_REPOSITORIOCTE'
      Size = 200
    end
    object TBParametrosPAR_REPOSITORIOMDFE: TStringField
      FieldName = 'PAR_REPOSITORIOMDFE'
      Origin = 'PAR_REPOSITORIOMDFE'
      Size = 200
    end
    object TBParametrosPAR_REPOSITORIONFCE: TStringField
      FieldName = 'PAR_REPOSITORIONFCE'
      Origin = 'PAR_REPOSITORIONFCE'
      Size = 200
    end
    object TBParametrosPAR_REPOSITORIONFE: TStringField
      FieldName = 'PAR_REPOSITORIONFE'
      Origin = 'PAR_REPOSITORIONFE'
      Size = 200
    end
    object TBParametrosPAR_REPOSITORIONFSE: TStringField
      FieldName = 'PAR_REPOSITORIONFSE'
      Origin = 'PAR_REPOSITORIONFSE'
      Size = 200
    end
    object TBParametrosPAR_RNTRC: TStringField
      FieldName = 'PAR_RNTRC'
      Origin = 'PAR_RNTRC'
    end
    object TBParametrosPAR_SEGUROSANEXOSEMAIL: TIntegerField
      FieldName = 'PAR_SEGUROSANEXOSEMAIL'
      Origin = 'PAR_SEGUROSANEXOSEMAIL'
    end
    object TBParametrosPAR_SENHACERTIFICADO: TStringField
      FieldName = 'PAR_SENHACERTIFICADO'
      Origin = 'PAR_SENHACERTIFICADO'
      Size = 40
    end
    object TBParametrosPAR_SERIALCERTIFICADO: TStringField
      FieldName = 'PAR_SERIALCERTIFICADO'
      Origin = 'PAR_SERIALCERTIFICADO'
      Size = 50
    end
    object TBParametrosPAR_SERVICOSCLIENTEDIFERENTE: TStringField
      FieldName = 'PAR_SERVICOSCLIENTEDIFERENTE'
      Origin = 'PAR_SERVICOSCLIENTEDIFERENTE'
      Size = 1
    end
    object TBParametrosPAR_SERVICOSDTPREVISAO: TIntegerField
      FieldName = 'PAR_SERVICOSDTPREVISAO'
      Origin = 'PAR_SERVICOSDTPREVISAO'
    end
    object TBParametrosPAR_SERVICOSEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_SERVICOSEMAILASSUNTO'
      Origin = 'PAR_SERVICOSEMAILASSUNTO'
    end
    object TBParametrosPAR_SERVICOSLF: TIntegerField
      FieldName = 'PAR_SERVICOSLF'
      Origin = 'PAR_SERVICOSLF'
    end
    object TBParametrosPAR_SERVICOSLI: TIntegerField
      FieldName = 'PAR_SERVICOSLI'
      Origin = 'PAR_SERVICOSLI'
    end
    object TBParametrosPAR_SERVICOSORCLF: TIntegerField
      FieldName = 'PAR_SERVICOSORCLF'
      Origin = 'PAR_SERVICOSORCLF'
    end
    object TBParametrosPAR_SERVICOSORCLI: TIntegerField
      FieldName = 'PAR_SERVICOSORCLI'
      Origin = 'PAR_SERVICOSORCLI'
    end
    object TBParametrosPAR_SERVICOSORCQL: TIntegerField
      FieldName = 'PAR_SERVICOSORCQL'
      Origin = 'PAR_SERVICOSORCQL'
    end
    object TBParametrosPAR_SERVICOSORCRP: TStringField
      FieldName = 'PAR_SERVICOSORCRP'
      Origin = 'PAR_SERVICOSORCRP'
      Size = 50
    end
    object TBParametrosPAR_SERVICOSPRINTPADRAO: TStringField
      FieldName = 'PAR_SERVICOSPRINTPADRAO'
      Origin = 'PAR_SERVICOSPRINTPADRAO'
    end
    object TBParametrosPAR_SERVICOSPV: TStringField
      FieldName = 'PAR_SERVICOSPV'
      Origin = 'PAR_SERVICOSPV'
      Size = 1
    end
    object TBParametrosPAR_SERVICOSRPA: TStringField
      FieldName = 'PAR_SERVICOSRPA'
      Origin = 'PAR_SERVICOSRPA'
      Size = 50
    end
    object TBParametrosPAR_SERVICOSRPF: TStringField
      FieldName = 'PAR_SERVICOSRPF'
      Origin = 'PAR_SERVICOSRPF'
      Size = 50
    end
    object TBParametrosPAR_SERVICOSSERIEMASK: TStringField
      FieldName = 'PAR_SERVICOSSERIEMASK'
      Origin = 'PAR_SERVICOSSERIEMASK'
      Size = 40
    end
    object TBParametrosPAR_SERVICOSTIMBRADA: TStringField
      FieldName = 'PAR_SERVICOSTIMBRADA'
      Origin = 'PAR_SERVICOSTIMBRADA'
      Size = 1
    end
    object TBParametrosPAR_SIGLAUF: TStringField
      FieldName = 'PAR_SIGLAUF'
      Origin = 'PAR_SIGLAUF'
      Size = 2
    end
    object TBParametrosPAR_SIGLAUFCTE: TStringField
      FieldName = 'PAR_SIGLAUFCTE'
      Origin = 'PAR_SIGLAUFCTE'
      Size = 2
    end
    object TBParametrosPAR_SIGLAUFMDFE: TStringField
      FieldName = 'PAR_SIGLAUFMDFE'
      Origin = 'PAR_SIGLAUFMDFE'
      Size = 2
    end
    object TBParametrosPAR_SIGLAWS: TStringField
      FieldName = 'PAR_SIGLAWS'
      Origin = 'PAR_SIGLAWS'
      Size = 4
    end
    object TBParametrosPAR_SIGLAWSCTE: TStringField
      FieldName = 'PAR_SIGLAWSCTE'
      Origin = 'PAR_SIGLAWSCTE'
      Size = 4
    end
    object TBParametrosPAR_SIGLAWSGNRE: TStringField
      FieldName = 'PAR_SIGLAWSGNRE'
      Origin = 'PAR_SIGLAWSGNRE'
      Size = 2
    end
    object TBParametrosPAR_SIGLAWSMDFE: TStringField
      FieldName = 'PAR_SIGLAWSMDFE'
      Origin = 'PAR_SIGLAWSMDFE'
      Size = 4
    end
    object TBParametrosPAR_STPRIMEIRAPARCELA: TStringField
      FieldName = 'PAR_STPRIMEIRAPARCELA'
      Origin = 'PAR_STPRIMEIRAPARCELA'
      Size = 1
    end
    object TBParametrosPAR_TABELAPRECO: TStringField
      FieldName = 'PAR_TABELAPRECO'
      Origin = 'PAR_TABELAPRECO'
      Size = 1
    end
    object TBParametrosPAR_TAXAPADRAO: TIntegerField
      FieldName = 'PAR_TAXAPADRAO'
      Origin = 'PAR_TAXAPADRAO'
    end
    object TBParametrosPAR_TELEVENDAPROXCONTATO: TIntegerField
      FieldName = 'PAR_TELEVENDAPROXCONTATO'
      Origin = 'PAR_TELEVENDAPROXCONTATO'
    end
    object TBParametrosPAR_TEMPERATURA1: TIntegerField
      FieldName = 'PAR_TEMPERATURA1'
      Origin = 'PAR_TEMPERATURA1'
    end
    object TBParametrosPAR_TEMPERATURA2: TIntegerField
      FieldName = 'PAR_TEMPERATURA2'
      Origin = 'PAR_TEMPERATURA2'
    end
    object TBParametrosPAR_TEMPERATURA3: TIntegerField
      FieldName = 'PAR_TEMPERATURA3'
      Origin = 'PAR_TEMPERATURA3'
    end
    object TBParametrosPAR_TEMPERATURA4: TIntegerField
      FieldName = 'PAR_TEMPERATURA4'
      Origin = 'PAR_TEMPERATURA4'
    end
    object TBParametrosPAR_TEMPERATURA5: TIntegerField
      FieldName = 'PAR_TEMPERATURA5'
      Origin = 'PAR_TEMPERATURA5'
    end
    object TBParametrosPAR_TEMPOPADRAO: TIntegerField
      FieldName = 'PAR_TEMPOPADRAO'
      Origin = 'PAR_TEMPOPADRAO'
    end
    object TBParametrosPAR_TIPOAMBIENTE: TStringField
      FieldName = 'PAR_TIPOAMBIENTE'
      Origin = 'PAR_TIPOAMBIENTE'
      Size = 1
    end
    object TBParametrosPAR_TIPOAMBIENTECTE: TStringField
      FieldName = 'PAR_TIPOAMBIENTECTE'
      Origin = 'PAR_TIPOAMBIENTECTE'
      Size = 1
    end
    object TBParametrosPAR_TIPOAMBIENTEGNRE: TStringField
      FieldName = 'PAR_TIPOAMBIENTEGNRE'
      Origin = 'PAR_TIPOAMBIENTEGNRE'
      Size = 1
    end
    object TBParametrosPAR_TIPOAMBIENTEMDFE: TStringField
      FieldName = 'PAR_TIPOAMBIENTEMDFE'
      Origin = 'PAR_TIPOAMBIENTEMDFE'
      Size = 1
    end
    object TBParametrosPAR_TIPOAMBIENTENFSE: TStringField
      FieldName = 'PAR_TIPOAMBIENTENFSE'
      Origin = 'PAR_TIPOAMBIENTENFSE'
      Size = 1
    end
    object TBParametrosPAR_TIPOCODIGOEXPRESSO: TStringField
      FieldName = 'PAR_TIPOCODIGOEXPRESSO'
      Origin = 'PAR_TIPOCODIGOEXPRESSO'
      Size = 10
    end
    object TBParametrosPAR_TRANSPORTADORAPADRAO: TIntegerField
      FieldName = 'PAR_TRANSPORTADORAPADRAO'
      Origin = 'PAR_TRANSPORTADORAPADRAO'
    end
    object TBParametrosPAR_USARCODIGOFAB: TStringField
      FieldName = 'PAR_USARCODIGOFAB'
      Origin = 'PAR_USARCODIGOFAB'
      Size = 1
    end
    object TBParametrosPAR_USARMARKUP: TStringField
      FieldName = 'PAR_USARMARKUP'
      Origin = 'PAR_USARMARKUP'
      Size = 1
    end
    object TBParametrosPAR_VALFINALCERTIFICADO: TDateField
      FieldName = 'PAR_VALFINALCERTIFICADO'
      Origin = 'PAR_VALFINALCERTIFICADO'
    end
    object TBParametrosPAR_VALINICIALCERTIFICADO: TDateField
      FieldName = 'PAR_VALINICIALCERTIFICADO'
      Origin = 'PAR_VALINICIALCERTIFICADO'
    end
    object TBParametrosPAR_VALORBOLETO: TFMTBCDField
      FieldName = 'PAR_VALORBOLETO'
      Origin = 'PAR_VALORBOLETO'
      Precision = 18
    end
    object TBParametrosPAR_VALORMULTA: TFMTBCDField
      FieldName = 'PAR_VALORMULTA'
      Origin = 'PAR_VALORMULTA'
      Precision = 18
    end
    object TBParametrosPAR_VEICULOSPORCLUCRO: TIntegerField
      FieldName = 'PAR_VEICULOSPORCLUCRO'
      Origin = 'PAR_VEICULOSPORCLUCRO'
    end
    object TBParametrosPAR_VENDAEMAILASSUNTO: TIntegerField
      FieldName = 'PAR_VENDAEMAILASSUNTO'
      Origin = 'PAR_VENDAEMAILASSUNTO'
    end
    object TBParametrosPAR_VENDASLF: TIntegerField
      FieldName = 'PAR_VENDASLF'
      Origin = 'PAR_VENDASLF'
    end
    object TBParametrosPAR_VENDASLF2: TIntegerField
      FieldName = 'PAR_VENDASLF2'
      Origin = 'PAR_VENDASLF2'
    end
    object TBParametrosPAR_VENDASLI: TIntegerField
      FieldName = 'PAR_VENDASLI'
      Origin = 'PAR_VENDASLI'
    end
    object TBParametrosPAR_VENDASQL: TIntegerField
      FieldName = 'PAR_VENDASQL'
      Origin = 'PAR_VENDASQL'
    end
    object TBParametrosPAR_VENDASQL2: TIntegerField
      FieldName = 'PAR_VENDASQL2'
      Origin = 'PAR_VENDASQL2'
    end
    object TBParametrosPAR_VENDASRP: TStringField
      FieldName = 'PAR_VENDASRP'
      Origin = 'PAR_VENDASRP'
      Size = 50
    end
    object TBParametrosPAR_VENDEESTOQUEZERO: TStringField
      FieldName = 'PAR_VENDEESTOQUEZERO'
      Origin = 'PAR_VENDEESTOQUEZERO'
      Size = 1
    end
    object TBParametrosPAR_VENDERCOMPOSTO: TStringField
      FieldName = 'PAR_VENDERCOMPOSTO'
      Origin = 'PAR_VENDERCOMPOSTO'
      Size = 1
    end
    object TBParametrosPAR_VERSAOXML: TStringField
      FieldName = 'PAR_VERSAOXML'
      Origin = 'PAR_VERSAOXML'
      Size = 10
    end
    object TBParametrosPAR_VERSAOXMLCTE: TStringField
      FieldName = 'PAR_VERSAOXMLCTE'
      Origin = 'PAR_VERSAOXMLCTE'
      Size = 10
    end
    object TBParametrosPAR_VERSAOXMLMDFE: TStringField
      FieldName = 'PAR_VERSAOXMLMDFE'
      Origin = 'PAR_VERSAOXMLMDFE'
      Size = 10
    end
  end
  object TRParametros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 104
    Top = 336
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from PARAMETROS '
      'where PAR_CODIGO=:codigo'
      'order by PAR_CODIGO'
      '')
    Left = 856
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 856
    Top = 72
  end
  object TRNaturezas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 40
    Top = 336
  end
  object TBNaturezas: TFDQuery
    Connection = FDConnection1
    Transaction = TRNaturezas
    SQL.Strings = (
      'select * from NATUREZAS '
      'where NAT_CODIGO=:codigo'
      'order by NAT_CODIGO'
      '')
    Left = 40
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBNaturezasNAT_CALCULACOMISSAO: TStringField
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      Size = 1
    end
    object TBNaturezasNAT_CALCULACREDITOSN: TStringField
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      Size = 1
    end
    object TBNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Origin = 'NAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBNaturezasNAT_DESCRICAO: TStringField
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      Size = 120
    end
    object TBNaturezasNAT_DESTACARIMPOSTOS: TStringField
      FieldName = 'NAT_DESTACARIMPOSTOS'
      Origin = 'NAT_DESTACARIMPOSTOS'
      Size = 1
    end
    object TBNaturezasNAT_DEVOLUCAO: TStringField
      FieldName = 'NAT_DEVOLUCAO'
      Origin = 'NAT_DEVOLUCAO'
      Size = 1
    end
    object TBNaturezasNAT_DTATUALIZACAO: TDateField
      FieldName = 'NAT_DTATUALIZACAO'
      Origin = 'NAT_DTATUALIZACAO'
    end
    object TBNaturezasNAT_DTCADASTRO: TDateField
      FieldName = 'NAT_DTCADASTRO'
      Origin = 'NAT_DTCADASTRO'
    end
    object TBNaturezasNAT_ENTRADASAIDA: TStringField
      FieldName = 'NAT_ENTRADASAIDA'
      Origin = 'NAT_ENTRADASAIDA'
      Size = 1
    end
    object TBNaturezasNAT_HRATUALIZACAO: TTimeField
      FieldName = 'NAT_HRATUALIZACAO'
      Origin = 'NAT_HRATUALIZACAO'
    end
    object TBNaturezasNAT_HRCADASTRO: TTimeField
      FieldName = 'NAT_HRCADASTRO'
      Origin = 'NAT_HRCADASTRO'
    end
    object TBNaturezasNAT_INFORMADIFAL: TStringField
      FieldName = 'NAT_INFORMADIFAL'
      Origin = 'NAT_INFORMADIFAL'
      Size = 1
    end
    object TBNaturezasNAT_MOVIMENTAESTOQUE: TStringField
      FieldName = 'NAT_MOVIMENTAESTOQUE'
      Origin = 'NAT_MOVIMENTAESTOQUE'
      Size = 1
    end
    object TBNaturezasNAT_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'NAT_MOVIMENTAFINANCEIRO'
      Origin = 'NAT_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object TBNaturezasNAT_OBSERVACOES: TMemoField
      FieldName = 'NAT_OBSERVACOES'
      Origin = 'NAT_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBNaturezasNAT_USUARIO: TStringField
      FieldName = 'NAT_USUARIO'
      Origin = 'NAT_USUARIO'
    end
  end
  object TBMetas: TFDQuery
    Connection = FDConnection1
    Transaction = TRMetas
    SQL.Strings = (
      'select '
      'MET_BONUSPORC,'
      'MET_BONUSVALOR,'
      'MET_CODIGO,'
      'MET_COMISSAO,'
      'MET_COMISSAOTIPO,'
      'MET_DTATUALIZACAO,'
      'MET_DTBAIXA,'
      'MET_DTCADASTRO,'
      'MET_DTFIM,'
      'MET_DTINICIO,'
      'MET_HRATUALIZACAO,'
      'MET_HRCADASTRO,'
      'MET_METAATINGIDA,'
      'MET_METAVALOR,'
      'MET_SALARIOBASE,'
      'MET_STATUS,'
      'MET_TOTALCOMISSAO,'
      'MET_TOTALLIQUIDADO,'
      'MET_TOTALVENDAS,'
      'MET_TOTALVENDASCOMISSIONADAS,'
      'MET_USUARIO,'
      'MET_VENDEDOR,'
      'VEN_NOME from METAS'
      'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO'
      'where MET_CODIGO=:codigo'
      'order by MET_CODIGO'
      '')
    Left = 744
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBMetasMET_BONUSPORC: TFMTBCDField
      FieldName = 'MET_BONUSPORC'
      Origin = 'MET_BONUSPORC'
      Precision = 18
    end
    object TBMetasMET_BONUSVALOR: TFMTBCDField
      FieldName = 'MET_BONUSVALOR'
      Origin = 'MET_BONUSVALOR'
      Precision = 18
    end
    object TBMetasMET_CODIGO: TIntegerField
      FieldName = 'MET_CODIGO'
      Origin = 'MET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMetasMET_COMISSAO: TFMTBCDField
      FieldName = 'MET_COMISSAO'
      Origin = 'MET_COMISSAO'
      Precision = 18
    end
    object TBMetasMET_COMISSAOTIPO: TStringField
      FieldName = 'MET_COMISSAOTIPO'
      Origin = 'MET_COMISSAOTIPO'
      Size = 15
    end
    object TBMetasMET_DTATUALIZACAO: TDateField
      FieldName = 'MET_DTATUALIZACAO'
      Origin = 'MET_DTATUALIZACAO'
    end
    object TBMetasMET_DTBAIXA: TDateField
      FieldName = 'MET_DTBAIXA'
      Origin = 'MET_DTBAIXA'
    end
    object TBMetasMET_DTCADASTRO: TDateField
      FieldName = 'MET_DTCADASTRO'
      Origin = 'MET_DTCADASTRO'
    end
    object TBMetasMET_DTFIM: TDateField
      FieldName = 'MET_DTFIM'
      Origin = 'MET_DTFIM'
    end
    object TBMetasMET_DTINICIO: TDateField
      FieldName = 'MET_DTINICIO'
      Origin = 'MET_DTINICIO'
    end
    object TBMetasMET_HRATUALIZACAO: TTimeField
      FieldName = 'MET_HRATUALIZACAO'
      Origin = 'MET_HRATUALIZACAO'
    end
    object TBMetasMET_HRCADASTRO: TTimeField
      FieldName = 'MET_HRCADASTRO'
      Origin = 'MET_HRCADASTRO'
    end
    object TBMetasMET_METAATINGIDA: TFMTBCDField
      FieldName = 'MET_METAATINGIDA'
      Origin = 'MET_METAATINGIDA'
      Precision = 18
    end
    object TBMetasMET_METAVALOR: TFMTBCDField
      FieldName = 'MET_METAVALOR'
      Origin = 'MET_METAVALOR'
      Precision = 18
    end
    object TBMetasMET_SALARIOBASE: TFMTBCDField
      FieldName = 'MET_SALARIOBASE'
      Origin = 'MET_SALARIOBASE'
      Precision = 18
    end
    object TBMetasMET_STATUS: TStringField
      FieldName = 'MET_STATUS'
      Origin = 'MET_STATUS'
      Size = 1
    end
    object TBMetasMET_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'MET_TOTALCOMISSAO'
      Origin = 'MET_TOTALCOMISSAO'
      Precision = 18
    end
    object TBMetasMET_TOTALLIQUIDADO: TFMTBCDField
      FieldName = 'MET_TOTALLIQUIDADO'
      Origin = 'MET_TOTALLIQUIDADO'
      Precision = 18
    end
    object TBMetasMET_TOTALVENDAS: TFMTBCDField
      FieldName = 'MET_TOTALVENDAS'
      Origin = 'MET_TOTALVENDAS'
      Precision = 18
    end
    object TBMetasMET_TOTALVENDASCOMISSIONADAS: TFMTBCDField
      FieldName = 'MET_TOTALVENDASCOMISSIONADAS'
      Origin = 'MET_TOTALVENDASCOMISSIONADAS'
      Precision = 18
    end
    object TBMetasMET_USUARIO: TStringField
      FieldName = 'MET_USUARIO'
      Origin = 'MET_USUARIO'
    end
    object TBMetasMET_VENDEDOR: TIntegerField
      FieldName = 'MET_VENDEDOR'
      Origin = 'MET_VENDEDOR'
      Required = True
    end
    object TBMetasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRMetas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 744
    Top = 144
  end
  object TBVendedores: TFDQuery
    Connection = FDConnection1
    Transaction = TRVendedores
    SQL.Strings = (
      'select '
      'VEN_ATUALIZAR, '
      'VEN_BAIRRO, '
      'VEN_CEP, '
      'VEN_CIDADE, '
      'VEN_CIDADECODIGO, '
      'VEN_CNPJ, '
      'VEN_CODIGO, '
      'VEN_COMISSAO, '
      'VEN_COMISSAOTIPO, '
      'VEN_COMPLEMENTO, '
      'VEN_CONTATO, '
      'VEN_COR, '
      'VEN_CPF,'
      'VEN_DTATUALIZACAO, '
      'VEN_DTCADASTRO, '
      'VEN_DTNASC, '
      'VEN_EMAIL, '
      'VEN_EMAILCONTA, '
      'VEN_ENDERECO, '
      'VEN_ESTADO, '
      'VEN_ESTADOCIVIL, '
      'VEN_FONE1, '
      'VEN_FONE2, '
      'VEN_FONE3,'
      'VEN_HRATUALIZACAO,'
      'VEN_HRCADASTRO, '
      'VEN_IE, '
      'VEN_MOSTRARAGENDA,'
      'VEN_NOME, '
      'VEN_NUMERO, '
      'VEN_OBSERVACOES, '
      'VEN_REGPROFISSIONAL, '
      'VEN_RG, '
      'VEN_SALARIOBASE, '
      'VEN_SALDOATUAL, '
      'VEN_SALDOHORAS, '
      'VEN_SITE, '
      'VEN_STATUS, '
      'VEN_TIPOPESSOA, '
      'VEN_USUARIO, '
      'EMC_NOME '
      'from VENDEDORES'
      'left join EMAILSCONTAS on VEN_EMAILCONTA=EMC_CODIGO'
      'where VEN_CODIGO=:codigo'
      'order by VEN_CODIGO'
      '')
    Left = 808
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBVendedoresVEN_ATUALIZAR: TStringField
      FieldName = 'VEN_ATUALIZAR'
      Origin = 'VEN_ATUALIZAR'
      Size = 1
    end
    object TBVendedoresVEN_BAIRRO: TStringField
      FieldName = 'VEN_BAIRRO'
      Origin = 'VEN_BAIRRO'
      Size = 50
    end
    object TBVendedoresVEN_CEP: TStringField
      FieldName = 'VEN_CEP'
      Origin = 'VEN_CEP'
      Size = 10
    end
    object TBVendedoresVEN_CIDADE: TStringField
      FieldName = 'VEN_CIDADE'
      Origin = 'VEN_CIDADE'
      Size = 50
    end
    object TBVendedoresVEN_CIDADECODIGO: TIntegerField
      FieldName = 'VEN_CIDADECODIGO'
      Origin = 'VEN_CIDADECODIGO'
    end
    object TBVendedoresVEN_CNPJ: TStringField
      FieldName = 'VEN_CNPJ'
      Origin = 'VEN_CNPJ'
    end
    object TBVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVendedoresVEN_COMISSAO: TFMTBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = 'VEN_COMISSAO'
      Precision = 18
    end
    object TBVendedoresVEN_COMISSAOTIPO: TStringField
      FieldName = 'VEN_COMISSAOTIPO'
      Origin = 'VEN_COMISSAOTIPO'
      Size = 15
    end
    object TBVendedoresVEN_COMPLEMENTO: TStringField
      FieldName = 'VEN_COMPLEMENTO'
      Origin = 'VEN_COMPLEMENTO'
      Size = 80
    end
    object TBVendedoresVEN_CONTATO: TStringField
      FieldName = 'VEN_CONTATO'
      Origin = 'VEN_CONTATO'
      Size = 80
    end
    object TBVendedoresVEN_COR: TStringField
      FieldName = 'VEN_COR'
      Origin = 'VEN_COR'
    end
    object TBVendedoresVEN_CPF: TStringField
      FieldName = 'VEN_CPF'
      Origin = 'VEN_CPF'
    end
    object TBVendedoresVEN_DTATUALIZACAO: TDateField
      FieldName = 'VEN_DTATUALIZACAO'
      Origin = 'VEN_DTATUALIZACAO'
    end
    object TBVendedoresVEN_DTCADASTRO: TDateField
      FieldName = 'VEN_DTCADASTRO'
      Origin = 'VEN_DTCADASTRO'
    end
    object TBVendedoresVEN_DTNASC: TDateField
      FieldName = 'VEN_DTNASC'
      Origin = 'VEN_DTNASC'
    end
    object TBVendedoresVEN_EMAIL: TStringField
      FieldName = 'VEN_EMAIL'
      Origin = 'VEN_EMAIL'
      Size = 100
    end
    object TBVendedoresVEN_EMAILCONTA: TIntegerField
      FieldName = 'VEN_EMAILCONTA'
      Origin = 'VEN_EMAILCONTA'
      Required = True
    end
    object TBVendedoresVEN_ENDERECO: TStringField
      FieldName = 'VEN_ENDERECO'
      Origin = 'VEN_ENDERECO'
      Size = 100
    end
    object TBVendedoresVEN_ESTADO: TStringField
      FieldName = 'VEN_ESTADO'
      Origin = 'VEN_ESTADO'
      Size = 2
    end
    object TBVendedoresVEN_ESTADOCIVIL: TStringField
      FieldName = 'VEN_ESTADOCIVIL'
      Origin = 'VEN_ESTADOCIVIL'
      Size = 10
    end
    object TBVendedoresVEN_FONE1: TStringField
      FieldName = 'VEN_FONE1'
      Origin = 'VEN_FONE1'
    end
    object TBVendedoresVEN_FONE2: TStringField
      FieldName = 'VEN_FONE2'
      Origin = 'VEN_FONE2'
    end
    object TBVendedoresVEN_FONE3: TStringField
      FieldName = 'VEN_FONE3'
      Origin = 'VEN_FONE3'
    end
    object TBVendedoresVEN_HRATUALIZACAO: TTimeField
      FieldName = 'VEN_HRATUALIZACAO'
      Origin = 'VEN_HRATUALIZACAO'
    end
    object TBVendedoresVEN_HRCADASTRO: TTimeField
      FieldName = 'VEN_HRCADASTRO'
      Origin = 'VEN_HRCADASTRO'
    end
    object TBVendedoresVEN_IE: TStringField
      FieldName = 'VEN_IE'
      Origin = 'VEN_IE'
    end
    object TBVendedoresVEN_MOSTRARAGENDA: TStringField
      FieldName = 'VEN_MOSTRARAGENDA'
      Origin = 'VEN_MOSTRARAGENDA'
      Size = 1
    end
    object TBVendedoresVEN_NOME: TStringField
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      Required = True
      Size = 80
    end
    object TBVendedoresVEN_NUMERO: TStringField
      FieldName = 'VEN_NUMERO'
      Origin = 'VEN_NUMERO'
      Size = 15
    end
    object TBVendedoresVEN_OBSERVACOES: TMemoField
      FieldName = 'VEN_OBSERVACOES'
      Origin = 'VEN_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBVendedoresVEN_REGPROFISSIONAL: TStringField
      FieldName = 'VEN_REGPROFISSIONAL'
      Origin = 'VEN_REGPROFISSIONAL'
    end
    object TBVendedoresVEN_RG: TStringField
      FieldName = 'VEN_RG'
      Origin = 'VEN_RG'
    end
    object TBVendedoresVEN_SALARIOBASE: TFMTBCDField
      FieldName = 'VEN_SALARIOBASE'
      Origin = 'VEN_SALARIOBASE'
      Precision = 18
    end
    object TBVendedoresVEN_SALDOATUAL: TFMTBCDField
      FieldName = 'VEN_SALDOATUAL'
      Origin = 'VEN_SALDOATUAL'
      Precision = 18
    end
    object TBVendedoresVEN_SALDOHORAS: TCurrencyField
      FieldName = 'VEN_SALDOHORAS'
      Origin = 'VEN_SALDOHORAS'
    end
    object TBVendedoresVEN_SITE: TStringField
      FieldName = 'VEN_SITE'
      Origin = 'VEN_SITE'
      Size = 100
    end
    object TBVendedoresVEN_STATUS: TStringField
      FieldName = 'VEN_STATUS'
      Origin = 'VEN_STATUS'
      Size = 1
    end
    object TBVendedoresVEN_TIPOPESSOA: TStringField
      FieldName = 'VEN_TIPOPESSOA'
      Origin = 'VEN_TIPOPESSOA'
      Size = 1
    end
    object TBVendedoresVEN_USUARIO: TStringField
      FieldName = 'VEN_USUARIO'
      Origin = 'VEN_USUARIO'
    end
    object TBVendedoresEMC_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRVendedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 808
    Top = 336
  end
  object TBVendas: TFDQuery
    AfterInsert = TBVendasAfterInsert
    BeforePost = TBVendasBeforePost
    Connection = FDConnection1
    Transaction = TRVendas
    UpdateObject = UPVendas
    SQL.Strings = (
      'select '
      'VED_ALIQICMSCREDSN,'
      'VED_BAIRRO,'
      'VED_BAIXADATA,'
      'VED_BAIXAPOR,'
      'VED_BASECOFINS,'
      'VED_BASECOFINSST,'
      'VED_BASEIBSCBS,'
      'VED_BASEICMS,'
      'VED_BASEICMSST,'
      'VED_BASEII,'
      'VED_BASEIPI,'
      'VED_BASEIS,'
      'VED_BASEISS,'
      'VED_BASEPIS,'
      'VED_BASEPISST,'
      'VED_CBSCREDPRES,'
      'VED_CBSCREDPRESSUS,'
      'VED_CBSDEVOLUCAO,'
      'VED_CBSDIFERIMENTO,'
      'VED_CBSMONO,'
      'VED_CBSMONORETENCAO,'
      'VED_CBSMONORETIDO,'
      'VED_CBSVALOR,'
      'VED_CEP,'
      'VED_CFOP,'
      'VED_CFOPDESC,'
      'VED_CIDADE,'
      'VED_CIDADECODIGO,'
      'VED_CLIENTE,'
      'VED_CNPJ,'
      'VED_CODIGO,'
      'VED_CODIMPORTACAO,'
      'VED_COMISSAO,'
      'VED_COMISSAOPOR,'
      'VED_COMISSAOREP,'
      'VED_COMPLEMENTO,'
      'VED_CONDICAO,'
      'VED_CONDICAOMEMO,'
      'VED_CONFERIDO,'
      'VED_CONFERIDODATA,'
      'VED_CONFERIDOPOR,'
      'VED_CONTATO,'
      'VED_CPF,'
      'VED_CUSTOTOTAL,'
      'VED_DAV,'
      'VED_DESCPORC,'
      'VED_DESCPORCCLIENTE,'
      'VED_DESCPORCCONDICAO,'
      'VED_DESCVALOR,'
      'VED_DESTACARIMPOSTOS,'
      'VED_DIAPREFERENCIAL,'
      'VED_DTATUALIZACAO,'
      'VED_DTCADASTRO,'
      'VED_DTEMISSAO,'
      'VED_DTPRESTSERVICO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO,'
      'VED_ENTRADASAIDA,'
      'VED_ENTREGUE,'
      'VED_ESPECIE,'
      'VED_ESTADO,'
      'VED_ESTADOCODIGO,'
      'VED_EXLOCAL,'
      'VED_EXPEDIDOPOR,'
      'VED_EXUFSAIDA,'
      'VED_FONE1,'
      'VED_FORMAPAGTO,'
      'VED_FRETE,'
      'VED_GOVERNAMENTAL,'
      'VED_GOVERNAMENTALALIQRED,'
      'VED_GOVERNAMENTALOP,'
      'VED_HRATUALIZACAO,'
      'VED_HRCADASTRO,'
      'VED_IBSCREDPRES,'
      'VED_IBSCREDPRESSUS,'
      'VED_IBSMONO,'
      'VED_IBSMONORETENCAO,'
      'VED_IBSMONORETIDO,'
      'VED_IBSMUNDEVOLUCAO,'
      'VED_IBSMUNDIFERIMENTO,'
      'VED_IBSMUNVALOR,'
      'VED_IBSUFDEVOLUCAO,'
      'VED_IBSUFDIFERIMENTO,'
      'VED_IBSUFVALOR,'
      'VED_IBSVALOR,'
      'VED_IDESTRANGEIRO,'
      'VED_IE,'
      'VED_INFOADICFISCO,'
      'VED_INFOCOMPLEMENTAR,'
      'VED_LACRES,'
      'VED_LUCROPORC,'
      'VED_LUCROVALOR,'
      'VED_MANUAL,'
      'VED_MARCA,'
      'VED_MOVIMENTAESTOQUE,'
      'VED_MOVIMENTAFINANCEIRO,'
      'VED_NFCE,'
      'VED_NFE,'
      'VED_NOME,'
      'VED_NOTA,'
      'VED_NOTACREDITO,'
      'VED_NOTADEBITO,'
      'VED_NUMERO,'
      'VED_OBSERVACOES,'
      'VED_PAIS,'
      'VED_PAISCODIGO,'
      'VED_PEDIDOCLIENTE,'
      'VED_PESOBRUTO,'
      'VED_PESOLIQ,'
      'VED_REBOQUEPLACA,'
      'VED_REBOQUEPLACAUF,'
      'VED_REBOQUERNTC,'
      'VED_REPRESENTANTE,'
      'VED_RG,'
      'VED_SEQUENCIAITEM,'
      'VED_STATUS,'
      'VED_SUFRAMA,'
      'VED_TABELAPRECO,'
      'VED_TIPOATENDIMENTO,'
      'VED_TIPOCONSUMIDOR,'
      'VED_TIPOOPERACAO,'
      'VED_TOTALADUANA,'
      'VED_TOTALBRUTO,'
      'VED_TOTALCOFINS,'
      'VED_TOTALCOFINSST,'
      'VED_TOTALCOMISSAO,'
      'VED_TOTALCOMISSAOREP,'
      'VED_TOTALFCP,'
      'VED_TOTALFCPST,'
      'VED_TOTALICMS,'
      'VED_TOTALICMSCREDSN,'
      'VED_TOTALICMSST,'
      'VED_TOTALICMSUFDEST,'
      'VED_TOTALICMSUFREMET,'
      'VED_TOTALII,'
      'VED_TOTALIOF,'
      'VED_TOTALIPI,'
      'VED_TOTALIS,'
      'VED_TOTALISS,'
      'VED_TOTALISSDEDUCAO,'
      'VED_TOTALISSDESCCOND,'
      'VED_TOTALISSDESCINCOND,'
      'VED_TOTALISSOUTROS,'
      'VED_TOTALISSRETENCAO,'
      'VED_TOTALITENS,'
      'VED_TOTALPIS,'
      'VED_TOTALPISST,'
      'VED_TOTALPRODUTOS,'
      'VED_TOTALSERVICOS,'
      'VED_TOTALTRIBUTOS,'
      'VED_TOTALTRIBUTOSEST,'
      'VED_TOTALTRIBUTOSFED,'
      'VED_TOTALTRIBUTOSIMP,'
      'VED_TOTALTRIBUTOSMUN,'
      'VED_TRANSPCIDADE,'
      'VED_TRANSPCNPJ,'
      'VED_TRANSPCPF,'
      'VED_TRANSPEMAIL,'
      'VED_TRANSPENDERECO,'
      'VED_TRANSPESTADO,'
      'VED_TRANSPFONE,'
      'VED_TRANSPIE,'
      'VED_TRANSPNOME,'
      'VED_TRANSPORTADORA,'
      'VED_USUARIO,'
      'VED_VALORDESPACES,'
      'VED_VALORFRETE,'
      'VED_VALORSEGURO,'
      'VED_VALORTOTAL,'
      'VED_VALORTOTALRTC,'
      'VED_VEICULOPLACA,'
      'VED_VEICULOPLACAUF,'
      'VED_VEICULORNTC,'
      'VED_VENDEDOR,'
      'VED_VIAINTERNET,'
      'VED_VIAINTERNETSTATUS,'
      'VED_VOLUMES,'
      'VED_VOLUMESNUM,'
      'CLI_FANTASIA,'
      'CPG_DESCRICAO,'
      'CPG_MEIOPAGAMENTO,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TIPOPAGAMENTO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'vendedores.VEN_NOME as VEN_NOME,'
      'expedidores.VEN_NOME as VEN_NOME1'
      'from VENDAS'
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      
        'left join VENDEDORES as vendedores on VED_VENDEDOR=vendedores.VE' +
        'N_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      
        'left join VENDEDORES as expedidores on VED_EXPEDIDOPOR=expedidor' +
        'es.VEN_CODIGO'
      'left join NATUREZAS on VED_CFOP=NAT_CODIGO'
      'where VED_CODIGO=:codigo'
      '')
    Left = 680
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBVendasVED_ALIQICMSCREDSN: TFMTBCDField
      FieldName = 'VED_ALIQICMSCREDSN'
      Origin = 'VED_ALIQICMSCREDSN'
      Precision = 18
    end
    object TBVendasVED_BAIRRO: TStringField
      FieldName = 'VED_BAIRRO'
      Origin = 'VED_BAIRRO'
      Size = 50
    end
    object TBVendasVED_BAIXADATA: TDateField
      FieldName = 'VED_BAIXADATA'
      Origin = 'VED_BAIXADATA'
    end
    object TBVendasVED_BAIXAPOR: TStringField
      FieldName = 'VED_BAIXAPOR'
      Origin = 'VED_BAIXAPOR'
    end
    object TBVendasVED_BASECOFINS: TFMTBCDField
      FieldName = 'VED_BASECOFINS'
      Origin = 'VED_BASECOFINS'
      Precision = 18
    end
    object TBVendasVED_BASECOFINSST: TFMTBCDField
      FieldName = 'VED_BASECOFINSST'
      Origin = 'VED_BASECOFINSST'
      Precision = 18
    end
    object TBVendasVED_BASEIBSCBS: TFMTBCDField
      FieldName = 'VED_BASEIBSCBS'
      Origin = 'VED_BASEIBSCBS'
      Precision = 18
    end
    object TBVendasVED_BASEICMS: TFMTBCDField
      FieldName = 'VED_BASEICMS'
      Origin = 'VED_BASEICMS'
      Precision = 18
    end
    object TBVendasVED_BASEICMSST: TFMTBCDField
      FieldName = 'VED_BASEICMSST'
      Origin = 'VED_BASEICMSST'
      Precision = 18
    end
    object TBVendasVED_BASEII: TFMTBCDField
      FieldName = 'VED_BASEII'
      Origin = 'VED_BASEII'
      Precision = 18
    end
    object TBVendasVED_BASEIPI: TFMTBCDField
      FieldName = 'VED_BASEIPI'
      Origin = 'VED_BASEIPI'
      Precision = 18
    end
    object TBVendasVED_BASEIS: TFMTBCDField
      FieldName = 'VED_BASEIS'
      Origin = 'VED_BASEIS'
      Precision = 18
    end
    object TBVendasVED_BASEISS: TFMTBCDField
      FieldName = 'VED_BASEISS'
      Origin = 'VED_BASEISS'
      Precision = 18
    end
    object TBVendasVED_BASEPIS: TFMTBCDField
      FieldName = 'VED_BASEPIS'
      Origin = 'VED_BASEPIS'
      Precision = 18
    end
    object TBVendasVED_BASEPISST: TFMTBCDField
      FieldName = 'VED_BASEPISST'
      Origin = 'VED_BASEPISST'
      Precision = 18
    end
    object TBVendasVED_CBSCREDPRES: TFMTBCDField
      FieldName = 'VED_CBSCREDPRES'
      Origin = 'VED_CBSCREDPRES'
      Precision = 18
    end
    object TBVendasVED_CBSCREDPRESSUS: TFMTBCDField
      FieldName = 'VED_CBSCREDPRESSUS'
      Origin = 'VED_CBSCREDPRESSUS'
      Precision = 18
    end
    object TBVendasVED_CBSDEVOLUCAO: TFMTBCDField
      FieldName = 'VED_CBSDEVOLUCAO'
      Origin = 'VED_CBSDEVOLUCAO'
      Precision = 18
    end
    object TBVendasVED_CBSDIFERIMENTO: TFMTBCDField
      FieldName = 'VED_CBSDIFERIMENTO'
      Origin = 'VED_CBSDIFERIMENTO'
      Precision = 18
    end
    object TBVendasVED_CBSMONO: TFMTBCDField
      FieldName = 'VED_CBSMONO'
      Origin = 'VED_CBSMONO'
      Precision = 18
    end
    object TBVendasVED_CBSMONORETENCAO: TFMTBCDField
      FieldName = 'VED_CBSMONORETENCAO'
      Origin = 'VED_CBSMONORETENCAO'
      Precision = 18
    end
    object TBVendasVED_CBSMONORETIDO: TFMTBCDField
      FieldName = 'VED_CBSMONORETIDO'
      Origin = 'VED_CBSMONORETIDO'
      Precision = 18
    end
    object TBVendasVED_CBSVALOR: TFMTBCDField
      FieldName = 'VED_CBSVALOR'
      Origin = 'VED_CBSVALOR'
      Precision = 18
    end
    object TBVendasVED_CEP: TStringField
      FieldName = 'VED_CEP'
      Origin = 'VED_CEP'
      Size = 10
    end
    object TBVendasVED_CFOP: TIntegerField
      FieldName = 'VED_CFOP'
      Origin = 'VED_CFOP'
    end
    object TBVendasVED_CFOPDESC: TStringField
      FieldName = 'VED_CFOPDESC'
      Origin = 'VED_CFOPDESC'
      Size = 120
    end
    object TBVendasVED_CIDADE: TStringField
      FieldName = 'VED_CIDADE'
      Origin = 'VED_CIDADE'
      Size = 50
    end
    object TBVendasVED_CIDADECODIGO: TIntegerField
      FieldName = 'VED_CIDADECODIGO'
      Origin = 'VED_CIDADECODIGO'
    end
    object TBVendasVED_CLIENTE: TIntegerField
      FieldName = 'VED_CLIENTE'
      Origin = 'VED_CLIENTE'
      Required = True
    end
    object TBVendasVED_CNPJ: TStringField
      FieldName = 'VED_CNPJ'
      Origin = 'VED_CNPJ'
    end
    object TBVendasVED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = 'VED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVendasVED_CODIMPORTACAO: TStringField
      FieldName = 'VED_CODIMPORTACAO'
      Origin = 'VED_CODIMPORTACAO'
      Size = 30
    end
    object TBVendasVED_COMISSAO: TFMTBCDField
      FieldName = 'VED_COMISSAO'
      Origin = 'VED_COMISSAO'
      Precision = 18
    end
    object TBVendasVED_COMISSAOPOR: TStringField
      FieldName = 'VED_COMISSAOPOR'
      Origin = 'VED_COMISSAOPOR'
      Size = 1
    end
    object TBVendasVED_COMISSAOREP: TFMTBCDField
      FieldName = 'VED_COMISSAOREP'
      Origin = 'VED_COMISSAOREP'
      Precision = 18
    end
    object TBVendasVED_COMPLEMENTO: TStringField
      FieldName = 'VED_COMPLEMENTO'
      Origin = 'VED_COMPLEMENTO'
      Size = 80
    end
    object TBVendasVED_CONDICAO: TIntegerField
      FieldName = 'VED_CONDICAO'
      Origin = 'VED_CONDICAO'
      Required = True
    end
    object TBVendasVED_CONDICAOMEMO: TMemoField
      FieldName = 'VED_CONDICAOMEMO'
      Origin = 'VED_CONDICAOMEMO'
      BlobType = ftMemo
    end
    object TBVendasVED_CONFERIDO: TStringField
      FieldName = 'VED_CONFERIDO'
      Origin = 'VED_CONFERIDO'
      Size = 1
    end
    object TBVendasVED_CONFERIDODATA: TDateField
      FieldName = 'VED_CONFERIDODATA'
      Origin = 'VED_CONFERIDODATA'
    end
    object TBVendasVED_CONFERIDOPOR: TStringField
      FieldName = 'VED_CONFERIDOPOR'
      Origin = 'VED_CONFERIDOPOR'
    end
    object TBVendasVED_CONTATO: TStringField
      FieldName = 'VED_CONTATO'
      Origin = 'VED_CONTATO'
      Size = 80
    end
    object TBVendasVED_CPF: TStringField
      FieldName = 'VED_CPF'
      Origin = 'VED_CPF'
    end
    object TBVendasVED_CUSTOTOTAL: TFMTBCDField
      FieldName = 'VED_CUSTOTOTAL'
      Origin = 'VED_CUSTOTOTAL'
      Precision = 18
    end
    object TBVendasVED_DAV: TStringField
      FieldName = 'VED_DAV'
      Origin = 'VED_DAV'
      Size = 1
    end
    object TBVendasVED_DESCPORC: TFMTBCDField
      FieldName = 'VED_DESCPORC'
      Origin = 'VED_DESCPORC'
      Precision = 18
    end
    object TBVendasVED_DESCPORCCLIENTE: TFMTBCDField
      FieldName = 'VED_DESCPORCCLIENTE'
      Origin = 'VED_DESCPORCCLIENTE'
      Precision = 18
    end
    object TBVendasVED_DESCPORCCONDICAO: TFMTBCDField
      FieldName = 'VED_DESCPORCCONDICAO'
      Origin = 'VED_DESCPORCCONDICAO'
      Precision = 18
    end
    object TBVendasVED_DESCVALOR: TFMTBCDField
      FieldName = 'VED_DESCVALOR'
      Origin = 'VED_DESCVALOR'
      Precision = 18
    end
    object TBVendasVED_DESTACARIMPOSTOS: TStringField
      FieldName = 'VED_DESTACARIMPOSTOS'
      Origin = 'VED_DESTACARIMPOSTOS'
      Size = 1
    end
    object TBVendasVED_DIAPREFERENCIAL: TIntegerField
      FieldName = 'VED_DIAPREFERENCIAL'
      Origin = 'VED_DIAPREFERENCIAL'
    end
    object TBVendasVED_DTATUALIZACAO: TDateField
      FieldName = 'VED_DTATUALIZACAO'
      Origin = 'VED_DTATUALIZACAO'
    end
    object TBVendasVED_DTCADASTRO: TDateField
      FieldName = 'VED_DTCADASTRO'
      Origin = 'VED_DTCADASTRO'
    end
    object TBVendasVED_DTEMISSAO: TDateField
      FieldName = 'VED_DTEMISSAO'
      Origin = 'VED_DTEMISSAO'
    end
    object TBVendasVED_DTPRESTSERVICO: TDateField
      FieldName = 'VED_DTPRESTSERVICO'
      Origin = 'VED_DTPRESTSERVICO'
    end
    object TBVendasVED_DTSAIDA: TDateField
      FieldName = 'VED_DTSAIDA'
      Origin = 'VED_DTSAIDA'
    end
    object TBVendasVED_ENDERECO: TStringField
      FieldName = 'VED_ENDERECO'
      Origin = 'VED_ENDERECO'
      Size = 100
    end
    object TBVendasVED_ENTRADASAIDA: TStringField
      FieldName = 'VED_ENTRADASAIDA'
      Origin = 'VED_ENTRADASAIDA'
      Size = 1
    end
    object TBVendasVED_ENTREGUE: TStringField
      FieldName = 'VED_ENTREGUE'
      Origin = 'VED_ENTREGUE'
      Size = 1
    end
    object TBVendasVED_ESPECIE: TStringField
      FieldName = 'VED_ESPECIE'
      Origin = 'VED_ESPECIE'
      Size = 50
    end
    object TBVendasVED_ESTADO: TStringField
      FieldName = 'VED_ESTADO'
      Origin = 'VED_ESTADO'
      Size = 2
    end
    object TBVendasVED_ESTADOCODIGO: TIntegerField
      FieldName = 'VED_ESTADOCODIGO'
      Origin = 'VED_ESTADOCODIGO'
    end
    object TBVendasVED_EXLOCAL: TStringField
      FieldName = 'VED_EXLOCAL'
      Origin = 'VED_EXLOCAL'
      Size = 80
    end
    object TBVendasVED_EXPEDIDOPOR: TIntegerField
      FieldName = 'VED_EXPEDIDOPOR'
      Origin = 'VED_EXPEDIDOPOR'
      Required = True
    end
    object TBVendasVED_EXUFSAIDA: TStringField
      FieldName = 'VED_EXUFSAIDA'
      Origin = 'VED_EXUFSAIDA'
      Size = 2
    end
    object TBVendasVED_FONE1: TStringField
      FieldName = 'VED_FONE1'
      Origin = 'VED_FONE1'
    end
    object TBVendasVED_FORMAPAGTO: TStringField
      FieldName = 'VED_FORMAPAGTO'
      Origin = 'VED_FORMAPAGTO'
      Size = 15
    end
    object TBVendasVED_FRETE: TStringField
      FieldName = 'VED_FRETE'
      Origin = 'VED_FRETE'
      Size = 50
    end
    object TBVendasVED_GOVERNAMENTAL: TStringField
      FieldName = 'VED_GOVERNAMENTAL'
      Origin = 'VED_GOVERNAMENTAL'
    end
    object TBVendasVED_GOVERNAMENTALALIQRED: TFMTBCDField
      FieldName = 'VED_GOVERNAMENTALALIQRED'
      Origin = 'VED_GOVERNAMENTALALIQRED'
      Precision = 18
    end
    object TBVendasVED_GOVERNAMENTALOP: TStringField
      FieldName = 'VED_GOVERNAMENTALOP'
      Origin = 'VED_GOVERNAMENTALOP'
      Size = 30
    end
    object TBVendasVED_HRATUALIZACAO: TTimeField
      FieldName = 'VED_HRATUALIZACAO'
      Origin = 'VED_HRATUALIZACAO'
    end
    object TBVendasVED_HRCADASTRO: TTimeField
      FieldName = 'VED_HRCADASTRO'
      Origin = 'VED_HRCADASTRO'
    end
    object TBVendasVED_IBSCREDPRES: TFMTBCDField
      FieldName = 'VED_IBSCREDPRES'
      Origin = 'VED_IBSCREDPRES'
      Precision = 18
    end
    object TBVendasVED_IBSCREDPRESSUS: TFMTBCDField
      FieldName = 'VED_IBSCREDPRESSUS'
      Origin = 'VED_IBSCREDPRESSUS'
      Precision = 18
    end
    object TBVendasVED_IBSMONO: TFMTBCDField
      FieldName = 'VED_IBSMONO'
      Origin = 'VED_IBSMONO'
      Precision = 18
    end
    object TBVendasVED_IBSMONORETENCAO: TFMTBCDField
      FieldName = 'VED_IBSMONORETENCAO'
      Origin = 'VED_IBSMONORETENCAO'
      Precision = 18
    end
    object TBVendasVED_IBSMONORETIDO: TFMTBCDField
      FieldName = 'VED_IBSMONORETIDO'
      Origin = 'VED_IBSMONORETIDO'
      Precision = 18
    end
    object TBVendasVED_IBSMUNDEVOLUCAO: TFMTBCDField
      FieldName = 'VED_IBSMUNDEVOLUCAO'
      Origin = 'VED_IBSMUNDEVOLUCAO'
      Precision = 18
    end
    object TBVendasVED_IBSMUNDIFERIMENTO: TFMTBCDField
      FieldName = 'VED_IBSMUNDIFERIMENTO'
      Origin = 'VED_IBSMUNDIFERIMENTO'
      Precision = 18
    end
    object TBVendasVED_IBSMUNVALOR: TFMTBCDField
      FieldName = 'VED_IBSMUNVALOR'
      Origin = 'VED_IBSMUNVALOR'
      Precision = 18
    end
    object TBVendasVED_IBSUFDEVOLUCAO: TFMTBCDField
      FieldName = 'VED_IBSUFDEVOLUCAO'
      Origin = 'VED_IBSUFDEVOLUCAO'
      Precision = 18
    end
    object TBVendasVED_IBSUFDIFERIMENTO: TFMTBCDField
      FieldName = 'VED_IBSUFDIFERIMENTO'
      Origin = 'VED_IBSUFDIFERIMENTO'
      Precision = 18
    end
    object TBVendasVED_IBSUFVALOR: TFMTBCDField
      FieldName = 'VED_IBSUFVALOR'
      Origin = 'VED_IBSUFVALOR'
      Precision = 18
    end
    object TBVendasVED_IBSVALOR: TFMTBCDField
      FieldName = 'VED_IBSVALOR'
      Origin = 'VED_IBSVALOR'
      Precision = 18
    end
    object TBVendasVED_IDESTRANGEIRO: TStringField
      FieldName = 'VED_IDESTRANGEIRO'
      Origin = 'VED_IDESTRANGEIRO'
    end
    object TBVendasVED_IE: TStringField
      FieldName = 'VED_IE'
      Origin = 'VED_IE'
    end
    object TBVendasVED_INFOADICFISCO: TMemoField
      FieldName = 'VED_INFOADICFISCO'
      Origin = 'VED_INFOADICFISCO'
      BlobType = ftMemo
    end
    object TBVendasVED_INFOCOMPLEMENTAR: TMemoField
      FieldName = 'VED_INFOCOMPLEMENTAR'
      Origin = 'VED_INFOCOMPLEMENTAR'
      BlobType = ftMemo
    end
    object TBVendasVED_LACRES: TStringField
      FieldName = 'VED_LACRES'
      Origin = 'VED_LACRES'
      Size = 50
    end
    object TBVendasVED_LUCROPORC: TFMTBCDField
      FieldName = 'VED_LUCROPORC'
      Origin = 'VED_LUCROPORC'
      Precision = 18
    end
    object TBVendasVED_LUCROVALOR: TFMTBCDField
      FieldName = 'VED_LUCROVALOR'
      Origin = 'VED_LUCROVALOR'
      Precision = 18
    end
    object TBVendasVED_MANUAL: TStringField
      FieldName = 'VED_MANUAL'
      Origin = 'VED_MANUAL'
      Size = 1
    end
    object TBVendasVED_MARCA: TStringField
      FieldName = 'VED_MARCA'
      Origin = 'VED_MARCA'
      Size = 50
    end
    object TBVendasVED_MOVIMENTAESTOQUE: TStringField
      FieldName = 'VED_MOVIMENTAESTOQUE'
      Origin = 'VED_MOVIMENTAESTOQUE'
      Size = 1
    end
    object TBVendasVED_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'VED_MOVIMENTAFINANCEIRO'
      Origin = 'VED_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object TBVendasVED_NFCE: TIntegerField
      FieldName = 'VED_NFCE'
      Origin = 'VED_NFCE'
    end
    object TBVendasVED_NFE: TIntegerField
      FieldName = 'VED_NFE'
      Origin = 'VED_NFE'
    end
    object TBVendasVED_NOME: TStringField
      FieldName = 'VED_NOME'
      Origin = 'VED_NOME'
      Size = 80
    end
    object TBVendasVED_NOTA: TIntegerField
      FieldName = 'VED_NOTA'
      Origin = 'VED_NOTA'
    end
    object TBVendasVED_NOTACREDITO: TStringField
      FieldName = 'VED_NOTACREDITO'
      Origin = 'VED_NOTACREDITO'
      Size = 100
    end
    object TBVendasVED_NOTADEBITO: TStringField
      FieldName = 'VED_NOTADEBITO'
      Origin = 'VED_NOTADEBITO'
      Size = 100
    end
    object TBVendasVED_NUMERO: TStringField
      FieldName = 'VED_NUMERO'
      Origin = 'VED_NUMERO'
      Size = 15
    end
    object TBVendasVED_OBSERVACOES: TMemoField
      FieldName = 'VED_OBSERVACOES'
      Origin = 'VED_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBVendasVED_PAIS: TStringField
      FieldName = 'VED_PAIS'
      Origin = 'VED_PAIS'
      Size = 80
    end
    object TBVendasVED_PAISCODIGO: TIntegerField
      FieldName = 'VED_PAISCODIGO'
      Origin = 'VED_PAISCODIGO'
    end
    object TBVendasVED_PEDIDOCLIENTE: TStringField
      FieldName = 'VED_PEDIDOCLIENTE'
      Origin = 'VED_PEDIDOCLIENTE'
      Size = 15
    end
    object TBVendasVED_PESOBRUTO: TFMTBCDField
      FieldName = 'VED_PESOBRUTO'
      Origin = 'VED_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object TBVendasVED_PESOLIQ: TFMTBCDField
      FieldName = 'VED_PESOLIQ'
      Origin = 'VED_PESOLIQ'
      Precision = 18
      Size = 3
    end
    object TBVendasVED_REBOQUEPLACA: TStringField
      FieldName = 'VED_REBOQUEPLACA'
      Origin = 'VED_REBOQUEPLACA'
      Size = 10
    end
    object TBVendasVED_REBOQUEPLACAUF: TStringField
      FieldName = 'VED_REBOQUEPLACAUF'
      Origin = 'VED_REBOQUEPLACAUF'
      Size = 2
    end
    object TBVendasVED_REBOQUERNTC: TStringField
      FieldName = 'VED_REBOQUERNTC'
      Origin = 'VED_REBOQUERNTC'
    end
    object TBVendasVED_REPRESENTANTE: TIntegerField
      FieldName = 'VED_REPRESENTANTE'
      Origin = 'VED_REPRESENTANTE'
      Required = True
    end
    object TBVendasVED_RG: TStringField
      FieldName = 'VED_RG'
      Origin = 'VED_RG'
    end
    object TBVendasVED_SEQUENCIAITEM: TIntegerField
      FieldName = 'VED_SEQUENCIAITEM'
      Origin = 'VED_SEQUENCIAITEM'
    end
    object TBVendasVED_STATUS: TStringField
      FieldName = 'VED_STATUS'
      Origin = 'VED_STATUS'
      Size = 1
    end
    object TBVendasVED_SUFRAMA: TStringField
      FieldName = 'VED_SUFRAMA'
      Origin = 'VED_SUFRAMA'
    end
    object TBVendasVED_TABELAPRECO: TStringField
      FieldName = 'VED_TABELAPRECO'
      Origin = 'VED_TABELAPRECO'
      Size = 1
    end
    object TBVendasVED_TIPOATENDIMENTO: TStringField
      FieldName = 'VED_TIPOATENDIMENTO'
      Origin = 'VED_TIPOATENDIMENTO'
      Size = 50
    end
    object TBVendasVED_TIPOCONSUMIDOR: TStringField
      FieldName = 'VED_TIPOCONSUMIDOR'
      Origin = 'VED_TIPOCONSUMIDOR'
      Size = 30
    end
    object TBVendasVED_TIPOOPERACAO: TStringField
      FieldName = 'VED_TIPOOPERACAO'
      Origin = 'VED_TIPOOPERACAO'
      Size = 30
    end
    object TBVendasVED_TOTALADUANA: TFMTBCDField
      FieldName = 'VED_TOTALADUANA'
      Origin = 'VED_TOTALADUANA'
      Precision = 18
    end
    object TBVendasVED_TOTALBRUTO: TFMTBCDField
      FieldName = 'VED_TOTALBRUTO'
      Origin = 'VED_TOTALBRUTO'
      Precision = 18
    end
    object TBVendasVED_TOTALCOFINS: TFMTBCDField
      FieldName = 'VED_TOTALCOFINS'
      Origin = 'VED_TOTALCOFINS'
      Precision = 18
    end
    object TBVendasVED_TOTALCOFINSST: TFMTBCDField
      FieldName = 'VED_TOTALCOFINSST'
      Origin = 'VED_TOTALCOFINSST'
      Precision = 18
    end
    object TBVendasVED_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'VED_TOTALCOMISSAO'
      Origin = 'VED_TOTALCOMISSAO'
      Precision = 18
    end
    object TBVendasVED_TOTALCOMISSAOREP: TFMTBCDField
      FieldName = 'VED_TOTALCOMISSAOREP'
      Origin = 'VED_TOTALCOMISSAOREP'
      Precision = 18
    end
    object TBVendasVED_TOTALFCP: TFMTBCDField
      FieldName = 'VED_TOTALFCP'
      Origin = 'VED_TOTALFCP'
      Precision = 18
    end
    object TBVendasVED_TOTALFCPST: TFMTBCDField
      FieldName = 'VED_TOTALFCPST'
      Origin = 'VED_TOTALFCPST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMS: TFMTBCDField
      FieldName = 'VED_TOTALICMS'
      Origin = 'VED_TOTALICMS'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSCREDSN: TFMTBCDField
      FieldName = 'VED_TOTALICMSCREDSN'
      Origin = 'VED_TOTALICMSCREDSN'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSST: TFMTBCDField
      FieldName = 'VED_TOTALICMSST'
      Origin = 'VED_TOTALICMSST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSUFDEST: TFMTBCDField
      FieldName = 'VED_TOTALICMSUFDEST'
      Origin = 'VED_TOTALICMSUFDEST'
      Precision = 18
    end
    object TBVendasVED_TOTALICMSUFREMET: TFMTBCDField
      FieldName = 'VED_TOTALICMSUFREMET'
      Origin = 'VED_TOTALICMSUFREMET'
      Precision = 18
    end
    object TBVendasVED_TOTALII: TFMTBCDField
      FieldName = 'VED_TOTALII'
      Origin = 'VED_TOTALII'
      Precision = 18
    end
    object TBVendasVED_TOTALIOF: TFMTBCDField
      FieldName = 'VED_TOTALIOF'
      Origin = 'VED_TOTALIOF'
      Precision = 18
    end
    object TBVendasVED_TOTALIPI: TFMTBCDField
      FieldName = 'VED_TOTALIPI'
      Origin = 'VED_TOTALIPI'
      Precision = 18
    end
    object TBVendasVED_TOTALIS: TFMTBCDField
      FieldName = 'VED_TOTALIS'
      Origin = 'VED_TOTALIS'
      Precision = 18
    end
    object TBVendasVED_TOTALISS: TFMTBCDField
      FieldName = 'VED_TOTALISS'
      Origin = 'VED_TOTALISS'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDEDUCAO: TFMTBCDField
      FieldName = 'VED_TOTALISSDEDUCAO'
      Origin = 'VED_TOTALISSDEDUCAO'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDESCCOND: TFMTBCDField
      FieldName = 'VED_TOTALISSDESCCOND'
      Origin = 'VED_TOTALISSDESCCOND'
      Precision = 18
    end
    object TBVendasVED_TOTALISSDESCINCOND: TFMTBCDField
      FieldName = 'VED_TOTALISSDESCINCOND'
      Origin = 'VED_TOTALISSDESCINCOND'
      Precision = 18
    end
    object TBVendasVED_TOTALISSOUTROS: TFMTBCDField
      FieldName = 'VED_TOTALISSOUTROS'
      Origin = 'VED_TOTALISSOUTROS'
      Precision = 18
    end
    object TBVendasVED_TOTALISSRETENCAO: TFMTBCDField
      FieldName = 'VED_TOTALISSRETENCAO'
      Origin = 'VED_TOTALISSRETENCAO'
      Precision = 18
    end
    object TBVendasVED_TOTALITENS: TFMTBCDField
      FieldName = 'VED_TOTALITENS'
      Origin = 'VED_TOTALITENS'
      Precision = 18
    end
    object TBVendasVED_TOTALPIS: TFMTBCDField
      FieldName = 'VED_TOTALPIS'
      Origin = 'VED_TOTALPIS'
      Precision = 18
    end
    object TBVendasVED_TOTALPISST: TFMTBCDField
      FieldName = 'VED_TOTALPISST'
      Origin = 'VED_TOTALPISST'
      Precision = 18
    end
    object TBVendasVED_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'VED_TOTALPRODUTOS'
      Origin = 'VED_TOTALPRODUTOS'
      Precision = 18
    end
    object TBVendasVED_TOTALSERVICOS: TFMTBCDField
      FieldName = 'VED_TOTALSERVICOS'
      Origin = 'VED_TOTALSERVICOS'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOS'
      Origin = 'VED_TOTALTRIBUTOS'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSEST'
      Origin = 'VED_TOTALTRIBUTOSEST'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSFED'
      Origin = 'VED_TOTALTRIBUTOSFED'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSIMP: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSIMP'
      Origin = 'VED_TOTALTRIBUTOSIMP'
      Precision = 18
    end
    object TBVendasVED_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'VED_TOTALTRIBUTOSMUN'
      Origin = 'VED_TOTALTRIBUTOSMUN'
      Precision = 18
    end
    object TBVendasVED_TRANSPCIDADE: TStringField
      FieldName = 'VED_TRANSPCIDADE'
      Origin = 'VED_TRANSPCIDADE'
      Size = 50
    end
    object TBVendasVED_TRANSPCNPJ: TStringField
      FieldName = 'VED_TRANSPCNPJ'
      Origin = 'VED_TRANSPCNPJ'
    end
    object TBVendasVED_TRANSPCPF: TStringField
      FieldName = 'VED_TRANSPCPF'
      Origin = 'VED_TRANSPCPF'
    end
    object TBVendasVED_TRANSPEMAIL: TStringField
      FieldName = 'VED_TRANSPEMAIL'
      Origin = 'VED_TRANSPEMAIL'
      Size = 100
    end
    object TBVendasVED_TRANSPENDERECO: TStringField
      FieldName = 'VED_TRANSPENDERECO'
      Origin = 'VED_TRANSPENDERECO'
      Size = 100
    end
    object TBVendasVED_TRANSPESTADO: TStringField
      FieldName = 'VED_TRANSPESTADO'
      Origin = 'VED_TRANSPESTADO'
      Size = 2
    end
    object TBVendasVED_TRANSPFONE: TStringField
      FieldName = 'VED_TRANSPFONE'
      Origin = 'VED_TRANSPFONE'
    end
    object TBVendasVED_TRANSPIE: TStringField
      FieldName = 'VED_TRANSPIE'
      Origin = 'VED_TRANSPIE'
    end
    object TBVendasVED_TRANSPNOME: TStringField
      FieldName = 'VED_TRANSPNOME'
      Origin = 'VED_TRANSPNOME'
      Size = 80
    end
    object TBVendasVED_TRANSPORTADORA: TIntegerField
      FieldName = 'VED_TRANSPORTADORA'
      Origin = 'VED_TRANSPORTADORA'
    end
    object TBVendasVED_USUARIO: TStringField
      FieldName = 'VED_USUARIO'
      Origin = 'VED_USUARIO'
    end
    object TBVendasVED_VALORDESPACES: TFMTBCDField
      FieldName = 'VED_VALORDESPACES'
      Origin = 'VED_VALORDESPACES'
      Precision = 18
    end
    object TBVendasVED_VALORFRETE: TFMTBCDField
      FieldName = 'VED_VALORFRETE'
      Origin = 'VED_VALORFRETE'
      Precision = 18
    end
    object TBVendasVED_VALORSEGURO: TFMTBCDField
      FieldName = 'VED_VALORSEGURO'
      Origin = 'VED_VALORSEGURO'
      Precision = 18
    end
    object TBVendasVED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = 'VED_VALORTOTAL'
      Precision = 18
    end
    object TBVendasVED_VALORTOTALRTC: TFMTBCDField
      FieldName = 'VED_VALORTOTALRTC'
      Origin = 'VED_VALORTOTALRTC'
      Precision = 18
    end
    object TBVendasVED_VEICULOPLACA: TStringField
      FieldName = 'VED_VEICULOPLACA'
      Origin = 'VED_VEICULOPLACA'
      Size = 10
    end
    object TBVendasVED_VEICULOPLACAUF: TStringField
      FieldName = 'VED_VEICULOPLACAUF'
      Origin = 'VED_VEICULOPLACAUF'
      Size = 2
    end
    object TBVendasVED_VEICULORNTC: TStringField
      FieldName = 'VED_VEICULORNTC'
      Origin = 'VED_VEICULORNTC'
    end
    object TBVendasVED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = 'VED_VENDEDOR'
      Required = True
    end
    object TBVendasVED_VIAINTERNET: TStringField
      FieldName = 'VED_VIAINTERNET'
      Origin = 'VED_VIAINTERNET'
      Size = 1
    end
    object TBVendasVED_VIAINTERNETSTATUS: TStringField
      FieldName = 'VED_VIAINTERNETSTATUS'
      Origin = 'VED_VIAINTERNETSTATUS'
      Size = 1
    end
    object TBVendasVED_VOLUMES: TIntegerField
      FieldName = 'VED_VOLUMES'
      Origin = 'VED_VOLUMES'
    end
    object TBVendasVED_VOLUMESNUM: TStringField
      FieldName = 'VED_VOLUMESNUM'
      Origin = 'VED_VOLUMESNUM'
      Size = 50
    end
    object TBVendasCLI_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      ProviderFlags = []
      Size = 80
    end
    object TBVendasCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBVendasCPG_MEIOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      ProviderFlags = []
      Size = 50
    end
    object TBVendasCPG_TIPOINTEGRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      ProviderFlags = []
      Size = 30
    end
    object TBVendasCPG_TIPOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TIPOPAGAMENTO'
      Origin = 'CPG_TIPOPAGAMENTO'
      ProviderFlags = []
      Size = 30
    end
    object TBVendasNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBVendasVEN_NOME1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME1'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 680
    Top = 336
  end
  object TBVendasItens: TFDQuery
    AfterInsert = TBVendasItensAfterInsert
    BeforePost = TBVendasItensBeforePost
    AfterPost = TBVendasItensAfterPost
    MasterSource = DSVendas
    MasterFields = 'VED_CODIGO'
    Connection = FDConnection1
    Transaction = TRVendasItens
    UpdateObject = UPVendasItens
    SQL.Strings = (
      'select'
      'VEI_ALIQCBS,'
      'VEI_ALIQCBSCREDPRES,'
      'VEI_ALIQCBSDIF,'
      'VEI_ALIQCBSEFE,'
      'VEI_ALIQCBSRED,'
      'VEI_ALIQCOFINS,'
      'VEI_ALIQCOFINSST,'
      'VEI_ALIQFCP,'
      'VEI_ALIQFCPST,'
      'VEI_ALIQIBSCREDPRES,'
      'VEI_ALIQIBSMUN,'
      'VEI_ALIQIBSMUNDIF,'
      'VEI_ALIQIBSMUNEFE,'
      'VEI_ALIQIBSMUNRED,'
      'VEI_ALIQIBSUF,'
      'VEI_ALIQIBSUFDIF,'
      'VEI_ALIQIBSUFEFE,'
      'VEI_ALIQIBSUFRED,'
      'VEI_ALIQICMS,'
      'VEI_ALIQICMSADICST,'
      'VEI_ALIQICMSINTER,'
      'VEI_ALIQICMSINTERPART,'
      'VEI_ALIQICMSRED,'
      'VEI_ALIQICMSST,'
      'VEI_ALIQICMSSTRET,'
      'VEI_ALIQII,'
      'VEI_ALIQIPI,'
      'VEI_ALIQIS,'
      'VEI_ALIQISESP,'
      'VEI_ALIQISS,'
      'VEI_ALIQPIS,'
      'VEI_ALIQPISST,'
      'VEI_ALMOXARIFADO,'
      'VEI_BASECOFINS,'
      'VEI_BASECOFINSST,'
      'VEI_BASEIBSCBS,'
      'VEI_BASEICMS,'
      'VEI_BASEICMSRED,'
      'VEI_BASEICMSST,'
      'VEI_BASEICMSSTRET,'
      'VEI_BASEII,'
      'VEI_BASEIPI,'
      'VEI_BASEIS,'
      'VEI_BASEISS,'
      'VEI_BASEPIS,'
      'VEI_BASEPISST,'
      'VEI_BENEFICIO,'
      'VEI_CBSCREDITOPRES,'
      'VEI_CEST,'
      'VEI_CFOP,'
      'VEI_CIDADEISS,'
      'VEI_CLASSFISCAL,'
      'VEI_CLASSTRIBIBSCBS,'
      'VEI_CLASSTRIBIS,'
      'VEI_CODIGO,'
      'VEI_CODIGOBARRAS,'
      'VEI_CODIGOFAB,'
      'VEI_COMISSAO,'
      'VEI_COMISSAOREP,'
      'VEI_COMPLEMENTO,'
      'VEI_COMPOEBASEICMS,'
      'VEI_COMPOEBASEICMSST,'
      'VEI_COMPOETOTAL,'
      'VEI_CONVERSAO,'
      'VEI_CSTCOFINS,'
      'VEI_CSTIBSCBS,'
      'VEI_CSTICMS,'
      'VEI_CSTIPI,'
      'VEI_CSTIS,'
      'VEI_CSTPIS,'
      'VEI_DESCMAX,'
      'VEI_DESCPORC,'
      'VEI_DESCRICAO,'
      'VEI_DESCVALOR,'
      'VEI_DESONERACAO,'
      'VEI_DFEREF,'
      'VEI_DFEREFITEM,'
      'VEI_DICNPJ,'
      'VEI_DIDATA,'
      'VEI_DIDESEMBARACODATA,'
      'VEI_DIDESEMBARACOLOCAL,'
      'VEI_DIDESEMBARACOUF,'
      'VEI_DIEXPORTADORCOD,'
      'VEI_DIINTERMEDIO,'
      'VEI_DINUMERO,'
      'VEI_DITERCEIROUF,'
      'VEI_DITRANSPORTE,'
      'VEI_DIVALORAFRMM,'
      'VEI_ENQUADRAMENTOIPI,'
      'VEI_EXCECAO,'
      'VEI_EXCHAVEACESSO,'
      'VEI_EXDRAWBACK,'
      'VEI_EXQUANTIDADE,'
      'VEI_EXREGISTRO,'
      'VEI_FCI,'
      'VEI_IBSCREDITOPRES,'
      'VEI_INCENTIVOISS,'
      'VEI_INDICADORISS,'
      'VEI_INFOADICIONAL,'
      'VEI_LOCALIZACAO,'
      'VEI_LOTE,'
      'VEI_LUCROPORC,'
      'VEI_LUCROVALOR,'
      'VEI_MODICMS,'
      'VEI_MODICMSST,'
      'VEI_ORIGEM,'
      'VEI_PAISISS,'
      'VEI_PEDIDOCLIENTE,'
      'VEI_PEDIDOCLIENTEITEM,'
      'VEI_PESO,'
      'VEI_PESOTOTAL,'
      'VEI_PRECOCUSTO,'
      'VEI_PRECOCUSTOTOTAL,'
      'VEI_PROCESSOISS,'
      'VEI_PRODUTO,'
      'VEI_PRODUTOREAL,'
      'VEI_QUANTIDADE,'
      'VEI_QUANTIDADETROCA,'
      'VEI_SEQUENCIA,'
      'VEI_SERVICOISS,'
      'VEI_SOMACOFINSST,'
      'VEI_SOMAPISST,'
      'VEI_TIPO,'
      'VEI_TIPOISS,'
      'VEI_UNIDADE,'
      'VEI_VALORACESSORIAS,'
      'VEI_VALORADUANA,'
      'VEI_VALORCBS,'
      'VEI_VALORCBSCREDPRES,'
      'VEI_VALORCBSCREDPRESSUS,'
      'VEI_VALORCBSDEV,'
      'VEI_VALORCBSDIF,'
      'VEI_VALORCOFINS,'
      'VEI_VALORCOFINSST,'
      'VEI_VALORCOMISSAO,'
      'VEI_VALORCOMISSAOREP,'
      'VEI_VALORFCP,'
      'VEI_VALORFCPST,'
      'VEI_VALORFRETE,'
      'VEI_VALORIBS,'
      'VEI_VALORIBSCREDPRES,'
      'VEI_VALORIBSCREDPRESSUS,'
      'VEI_VALORIBSMUN,'
      'VEI_VALORIBSMUNDEV,'
      'VEI_VALORIBSMUNDIF,'
      'VEI_VALORIBSUF,'
      'VEI_VALORIBSUFDEV,'
      'VEI_VALORIBSUFDIF,'
      'VEI_VALORICMS,'
      'VEI_VALORICMSCREDSN,'
      'VEI_VALORICMSDESONERADO,'
      'VEI_VALORICMSST,'
      'VEI_VALORICMSSTRET,'
      'VEI_VALORICMSSUBSTITUTO,'
      'VEI_VALORICMSUFDEST,'
      'VEI_VALORICMSUFREMET,'
      'VEI_VALORII,'
      'VEI_VALORIOF,'
      'VEI_VALORIPI,'
      'VEI_VALORIS,'
      'VEI_VALORISS,'
      'VEI_VALORISSDEDUCAO,'
      'VEI_VALORISSDESCCOND,'
      'VEI_VALORISSDESCINCOND,'
      'VEI_VALORISSOUTROS,'
      'VEI_VALORISSRETENCAO,'
      'VEI_VALORPIS,'
      'VEI_VALORPISST,'
      'VEI_VALORSEGURO,'
      'VEI_VALORTOTAL,'
      'VEI_VALORTOTALBRUTO,'
      'VEI_VALORTRIBUTOS,'
      'VEI_VALORTRIBUTOSEST,'
      'VEI_VALORTRIBUTOSFED,'
      'VEI_VALORTRIBUTOSIMP,'
      'VEI_VALORTRIBUTOSMUN,'
      'VEI_VALORUNIT,'
      'VEI_VENDA,'
      'ALM_DESCRICAO,'
      'CLF_DESCRICAO,'
      'ICM_CALCULACREDITOSN,'
      'ICM_DESCRICAO,'
      'IPI_DESCRICAO,'
      'ISS_DESCRICAO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'NAT_DESCRICAO,'
      'NAT_CODIGO,'
      'pis.PIS_DESCRICAO as PIS_DESCRICAO,'
      'cofins.PIS_DESCRICAO as PIS_DESCRICAO1,'
      'PRO_CLASSFISCAL,'
      'PRO_CSTICMS,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_TIPO,'
      'PRO_UNIDADE,'
      'CLASSTRIBIBSCBS.CLT_DESCRICAO as CLT_DESCRICAO,'
      'CLASSTRIBIS.CLT_DESCRICAO as CLT_DESCRICAO1'
      'from VENDASITENS '
      'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO'
      'left join ALMOXARIFADOS on VEI_ALMOXARIFADO=ALM_CODIGO'
      'left join NATUREZAS on VEI_CFOP=NAT_CODIGO'
      
        'left join CLASSFISCAL on VEI_CLASSFISCAL=CLF_CODIGO and VEI_EXCE' +
        'CAO=CLF_EXCECAO'
      'left join ICMS on VEI_CSTICMS=ICM_CODIGO'
      'left join IPI on VEI_CSTIPI=IPI_CODIGO'
      'left join ISS on VEI_TIPOISS=ISS_CODIGO'
      'left join PISCOFINS as PIS on VEI_CSTPIS=PIS.PIS_CODIGO'
      'left join PISCOFINS as COFINS on VEI_CSTCOFINS=COFINS.PIS_CODIGO'
      
        'left join CLASSTRIB as CLASSTRIBIBSCBS on VEI_CLASSTRIBIBSCBS=CL' +
        'ASSTRIBIBSCBS.CLT_CODIGO'
      
        'left join CLASSTRIB as CLASSTRIBIS on VEI_CLASSTRIBIS=CLASSTRIBI' +
        'S.CLT_CODIGO '
      'where VEI_VENDA=:VED_CODIGO'
      'order by VEI_SEQUENCIA'
      '')
    Left = 744
    Top = 288
    ParamData = <
      item
        Name = 'VED_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBVendasItensVEI_ALIQCBS: TFMTBCDField
      FieldName = 'VEI_ALIQCBS'
      Origin = 'VEI_ALIQCBS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCBSCREDPRES: TFMTBCDField
      FieldName = 'VEI_ALIQCBSCREDPRES'
      Origin = 'VEI_ALIQCBSCREDPRES'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCBSDIF: TFMTBCDField
      FieldName = 'VEI_ALIQCBSDIF'
      Origin = 'VEI_ALIQCBSDIF'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCBSEFE: TFMTBCDField
      FieldName = 'VEI_ALIQCBSEFE'
      Origin = 'VEI_ALIQCBSEFE'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCBSRED: TFMTBCDField
      FieldName = 'VEI_ALIQCBSRED'
      Origin = 'VEI_ALIQCBSRED'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCOFINS: TFMTBCDField
      FieldName = 'VEI_ALIQCOFINS'
      Origin = 'VEI_ALIQCOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQCOFINSST: TFMTBCDField
      FieldName = 'VEI_ALIQCOFINSST'
      Origin = 'VEI_ALIQCOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSCREDPRES: TFMTBCDField
      FieldName = 'VEI_ALIQIBSCREDPRES'
      Origin = 'VEI_ALIQIBSCREDPRES'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSMUN: TFMTBCDField
      FieldName = 'VEI_ALIQIBSMUN'
      Origin = 'VEI_ALIQIBSMUN'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSMUNDIF: TFMTBCDField
      FieldName = 'VEI_ALIQIBSMUNDIF'
      Origin = 'VEI_ALIQIBSMUNDIF'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSMUNEFE: TFMTBCDField
      FieldName = 'VEI_ALIQIBSMUNEFE'
      Origin = 'VEI_ALIQIBSMUNEFE'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSMUNRED: TFMTBCDField
      FieldName = 'VEI_ALIQIBSMUNRED'
      Origin = 'VEI_ALIQIBSMUNRED'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSUF: TFMTBCDField
      FieldName = 'VEI_ALIQIBSUF'
      Origin = 'VEI_ALIQIBSUF'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSUFDIF: TFMTBCDField
      FieldName = 'VEI_ALIQIBSUFDIF'
      Origin = 'VEI_ALIQIBSUFDIF'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSUFEFE: TFMTBCDField
      FieldName = 'VEI_ALIQIBSUFEFE'
      Origin = 'VEI_ALIQIBSUFEFE'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIBSUFRED: TFMTBCDField
      FieldName = 'VEI_ALIQIBSUFRED'
      Origin = 'VEI_ALIQIBSUFRED'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQFCP: TFMTBCDField
      FieldName = 'VEI_ALIQFCP'
      Origin = 'VEI_ALIQFCP'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQFCPST: TFMTBCDField
      FieldName = 'VEI_ALIQFCPST'
      Origin = 'VEI_ALIQFCPST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMS: TFMTBCDField
      FieldName = 'VEI_ALIQICMS'
      Origin = 'VEI_ALIQICMS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSADICST: TFMTBCDField
      FieldName = 'VEI_ALIQICMSADICST'
      Origin = 'VEI_ALIQICMSADICST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSINTER: TFMTBCDField
      FieldName = 'VEI_ALIQICMSINTER'
      Origin = 'VEI_ALIQICMSINTER'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'VEI_ALIQICMSINTERPART'
      Origin = 'VEI_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSRED: TFMTBCDField
      FieldName = 'VEI_ALIQICMSRED'
      Origin = 'VEI_ALIQICMSRED'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSST: TFMTBCDField
      FieldName = 'VEI_ALIQICMSST'
      Origin = 'VEI_ALIQICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQICMSSTRET: TFMTBCDField
      FieldName = 'VEI_ALIQICMSSTRET'
      Origin = 'VEI_ALIQICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQII: TFMTBCDField
      FieldName = 'VEI_ALIQII'
      Origin = 'VEI_ALIQII'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIPI: TFMTBCDField
      FieldName = 'VEI_ALIQIPI'
      Origin = 'VEI_ALIQIPI'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQIS: TFMTBCDField
      FieldName = 'VEI_ALIQIS'
      Origin = 'VEI_ALIQIS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQISESP: TFMTBCDField
      FieldName = 'VEI_ALIQISESP'
      Origin = 'VEI_ALIQISESP'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQISS: TFMTBCDField
      FieldName = 'VEI_ALIQISS'
      Origin = 'VEI_ALIQISS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQPIS: TFMTBCDField
      FieldName = 'VEI_ALIQPIS'
      Origin = 'VEI_ALIQPIS'
      Precision = 18
    end
    object TBVendasItensVEI_ALIQPISST: TFMTBCDField
      FieldName = 'VEI_ALIQPISST'
      Origin = 'VEI_ALIQPISST'
      Precision = 18
    end
    object TBVendasItensVEI_ALMOXARIFADO: TIntegerField
      FieldName = 'VEI_ALMOXARIFADO'
      Origin = 'VEI_ALMOXARIFADO'
      Required = True
    end
    object TBVendasItensVEI_BASECOFINS: TFMTBCDField
      FieldName = 'VEI_BASECOFINS'
      Origin = 'VEI_BASECOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_BASECOFINSST: TFMTBCDField
      FieldName = 'VEI_BASECOFINSST'
      Origin = 'VEI_BASECOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_BASEIBSCBS: TFMTBCDField
      FieldName = 'VEI_BASEIBSCBS'
      Origin = 'VEI_BASEIBSCBS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMS: TFMTBCDField
      FieldName = 'VEI_BASEICMS'
      Origin = 'VEI_BASEICMS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSRED: TFMTBCDField
      FieldName = 'VEI_BASEICMSRED'
      Origin = 'VEI_BASEICMSRED'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSST: TFMTBCDField
      FieldName = 'VEI_BASEICMSST'
      Origin = 'VEI_BASEICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_BASEICMSSTRET: TFMTBCDField
      FieldName = 'VEI_BASEICMSSTRET'
      Origin = 'VEI_BASEICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_BASEII: TFMTBCDField
      FieldName = 'VEI_BASEII'
      Origin = 'VEI_BASEII'
      Precision = 18
    end
    object TBVendasItensVEI_BASEIPI: TFMTBCDField
      FieldName = 'VEI_BASEIPI'
      Origin = 'VEI_BASEIPI'
      Precision = 18
    end
    object TBVendasItensVEI_BASEIS: TFMTBCDField
      FieldName = 'VEI_BASEIS'
      Origin = 'VEI_BASEIS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEISS: TFMTBCDField
      FieldName = 'VEI_BASEISS'
      Origin = 'VEI_BASEISS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEPIS: TFMTBCDField
      FieldName = 'VEI_BASEPIS'
      Origin = 'VEI_BASEPIS'
      Precision = 18
    end
    object TBVendasItensVEI_BASEPISST: TFMTBCDField
      FieldName = 'VEI_BASEPISST'
      Origin = 'VEI_BASEPISST'
      Precision = 18
    end
    object TBVendasItensVEI_BENEFICIO: TStringField
      FieldName = 'VEI_BENEFICIO'
      Origin = 'VEI_BENEFICIO'
    end
    object TBVendasItensVEI_CBSCREDITOPRES: TIntegerField
      FieldName = 'VEI_CBSCREDITOPRES'
      Origin = 'VEI_CBSCREDITOPRES'
    end
    object TBVendasItensVEI_CEST: TStringField
      FieldName = 'VEI_CEST'
      Origin = 'VEI_CEST'
    end
    object TBVendasItensVEI_CFOP: TIntegerField
      FieldName = 'VEI_CFOP'
      Origin = 'VEI_CFOP'
    end
    object TBVendasItensVEI_CIDADEISS: TIntegerField
      FieldName = 'VEI_CIDADEISS'
      Origin = 'VEI_CIDADEISS'
    end
    object TBVendasItensVEI_CLASSFISCAL: TStringField
      FieldName = 'VEI_CLASSFISCAL'
      Origin = 'VEI_CLASSFISCAL'
    end
    object TBVendasItensVEI_CLASSTRIBIS: TStringField
      FieldName = 'VEI_CLASSTRIBIS'
      Origin = 'VEI_CLASSTRIBIS'
      Size = 15
    end
    object TBVendasItensVEI_CLASSTRIBIBSCBS: TStringField
      FieldName = 'VEI_CLASSTRIBIBSCBS'
      Origin = 'VEI_CLASSTRIBIBSCBS'
      Size = 15
    end
    object TBVendasItensVEI_CODIGO: TIntegerField
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVendasItensVEI_CODIGOBARRAS: TStringField
      FieldName = 'VEI_CODIGOBARRAS'
      Origin = 'VEI_CODIGOBARRAS'
      Size = 60
    end
    object TBVendasItensVEI_CODIGOFAB: TStringField
      FieldName = 'VEI_CODIGOFAB'
      Origin = 'VEI_CODIGOFAB'
    end
    object TBVendasItensVEI_COMISSAO: TFMTBCDField
      FieldName = 'VEI_COMISSAO'
      Origin = 'VEI_COMISSAO'
      Precision = 18
    end
    object TBVendasItensVEI_COMISSAOREP: TFMTBCDField
      FieldName = 'VEI_COMISSAOREP'
      Origin = 'VEI_COMISSAOREP'
      Precision = 18
    end
    object TBVendasItensVEI_COMPLEMENTO: TStringField
      FieldName = 'VEI_COMPLEMENTO'
      Origin = 'VEI_COMPLEMENTO'
      Size = 50
    end
    object TBVendasItensVEI_COMPOEBASEICMS: TStringField
      FieldName = 'VEI_COMPOEBASEICMS'
      Origin = 'VEI_COMPOEBASEICMS'
      Size = 1
    end
    object TBVendasItensVEI_COMPOEBASEICMSST: TStringField
      FieldName = 'VEI_COMPOEBASEICMSST'
      Origin = 'VEI_COMPOEBASEICMSST'
      Size = 1
    end
    object TBVendasItensVEI_COMPOETOTAL: TStringField
      FieldName = 'VEI_COMPOETOTAL'
      Origin = 'VEI_COMPOETOTAL'
      Size = 1
    end
    object TBVendasItensVEI_CONVERSAO: TFMTBCDField
      FieldName = 'VEI_CONVERSAO'
      Origin = 'VEI_CONVERSAO'
      Precision = 18
    end
    object TBVendasItensVEI_CSTCOFINS: TIntegerField
      FieldName = 'VEI_CSTCOFINS'
      Origin = 'VEI_CSTCOFINS'
    end
    object TBVendasItensVEI_CSTIBSCBS: TStringField
      FieldName = 'VEI_CSTIBSCBS'
      Origin = 'VEI_CSTIBSCBS'
      Size = 15
    end
    object TBVendasItensVEI_CSTICMS: TIntegerField
      FieldName = 'VEI_CSTICMS'
      Origin = 'VEI_CSTICMS'
    end
    object TBVendasItensVEI_CSTIPI: TIntegerField
      FieldName = 'VEI_CSTIPI'
      Origin = 'VEI_CSTIPI'
    end
    object TBVendasItensVEI_CSTIS: TStringField
      FieldName = 'VEI_CSTIS'
      Origin = 'VEI_CSTIS'
      Size = 15
    end
    object TBVendasItensVEI_CSTPIS: TIntegerField
      FieldName = 'VEI_CSTPIS'
      Origin = 'VEI_CSTPIS'
    end
    object TBVendasItensVEI_DESCMAX: TFMTBCDField
      FieldName = 'VEI_DESCMAX'
      Origin = 'VEI_DESCMAX'
      Precision = 18
    end
    object TBVendasItensVEI_DESCPORC: TFMTBCDField
      FieldName = 'VEI_DESCPORC'
      Origin = 'VEI_DESCPORC'
      Precision = 18
    end
    object TBVendasItensVEI_DESCRICAO: TStringField
      FieldName = 'VEI_DESCRICAO'
      Origin = 'VEI_DESCRICAO'
      Size = 100
    end
    object TBVendasItensVEI_DESCVALOR: TFMTBCDField
      FieldName = 'VEI_DESCVALOR'
      Origin = 'VEI_DESCVALOR'
      Precision = 18
    end
    object TBVendasItensVEI_DESONERACAO: TStringField
      FieldName = 'VEI_DESONERACAO'
      Origin = 'VEI_DESONERACAO'
      Size = 80
    end
    object TBVendasItensVEI_DFEREF: TStringField
      FieldName = 'VEI_DFEREF'
      Origin = 'VEI_DFEREF'
      Size = 50
    end
    object TBVendasItensVEI_DFEREFITEM: TIntegerField
      FieldName = 'VEI_DFEREFITEM'
      Origin = 'VEI_DFEREFITEM'
    end
    object TBVendasItensVEI_DICNPJ: TStringField
      FieldName = 'VEI_DICNPJ'
      Origin = 'VEI_DICNPJ'
    end
    object TBVendasItensVEI_DIDATA: TDateField
      FieldName = 'VEI_DIDATA'
      Origin = 'VEI_DIDATA'
    end
    object TBVendasItensVEI_DIDESEMBARACODATA: TDateField
      FieldName = 'VEI_DIDESEMBARACODATA'
      Origin = 'VEI_DIDESEMBARACODATA'
    end
    object TBVendasItensVEI_DIDESEMBARACOLOCAL: TStringField
      FieldName = 'VEI_DIDESEMBARACOLOCAL'
      Origin = 'VEI_DIDESEMBARACOLOCAL'
      Size = 80
    end
    object TBVendasItensVEI_DIDESEMBARACOUF: TStringField
      FieldName = 'VEI_DIDESEMBARACOUF'
      Origin = 'VEI_DIDESEMBARACOUF'
      Size = 2
    end
    object TBVendasItensVEI_DIEXPORTADORCOD: TStringField
      FieldName = 'VEI_DIEXPORTADORCOD'
      Origin = 'VEI_DIEXPORTADORCOD'
      Size = 50
    end
    object TBVendasItensVEI_DIINTERMEDIO: TStringField
      FieldName = 'VEI_DIINTERMEDIO'
      Origin = 'VEI_DIINTERMEDIO'
      Size = 35
    end
    object TBVendasItensVEI_DINUMERO: TStringField
      FieldName = 'VEI_DINUMERO'
      Origin = 'VEI_DINUMERO'
      Size = 10
    end
    object TBVendasItensVEI_DITERCEIROUF: TStringField
      FieldName = 'VEI_DITERCEIROUF'
      Origin = 'VEI_DITERCEIROUF'
      Size = 2
    end
    object TBVendasItensVEI_DITRANSPORTE: TStringField
      FieldName = 'VEI_DITRANSPORTE'
      Origin = 'VEI_DITRANSPORTE'
      Size = 30
    end
    object TBVendasItensVEI_DIVALORAFRMM: TFMTBCDField
      FieldName = 'VEI_DIVALORAFRMM'
      Origin = 'VEI_DIVALORAFRMM'
      Precision = 18
    end
    object TBVendasItensVEI_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'VEI_ENQUADRAMENTOIPI'
      Origin = 'VEI_ENQUADRAMENTOIPI'
    end
    object TBVendasItensVEI_EXCECAO: TIntegerField
      FieldName = 'VEI_EXCECAO'
      Origin = 'VEI_EXCECAO'
    end
    object TBVendasItensVEI_EXCHAVEACESSO: TStringField
      FieldName = 'VEI_EXCHAVEACESSO'
      Origin = 'VEI_EXCHAVEACESSO'
      Size = 50
    end
    object TBVendasItensVEI_EXDRAWBACK: TStringField
      FieldName = 'VEI_EXDRAWBACK'
      Origin = 'VEI_EXDRAWBACK'
      Size = 15
    end
    object TBVendasItensVEI_EXQUANTIDADE: TFMTBCDField
      FieldName = 'VEI_EXQUANTIDADE'
      Origin = 'VEI_EXQUANTIDADE'
      Precision = 18
    end
    object TBVendasItensVEI_EXREGISTRO: TStringField
      FieldName = 'VEI_EXREGISTRO'
      Origin = 'VEI_EXREGISTRO'
      Size = 15
    end
    object TBVendasItensVEI_FCI: TStringField
      FieldName = 'VEI_FCI'
      Origin = 'VEI_FCI'
      Size = 40
    end
    object TBVendasItensVEI_IBSCREDITOPRES: TIntegerField
      FieldName = 'VEI_IBSCREDITOPRES'
      Origin = 'VEI_IBSCREDITOPRES'
    end
    object TBVendasItensVEI_INCENTIVOISS: TStringField
      FieldName = 'VEI_INCENTIVOISS'
      Origin = 'VEI_INCENTIVOISS'
      Size = 1
    end
    object TBVendasItensVEI_INDICADORISS: TStringField
      FieldName = 'VEI_INDICADORISS'
      Origin = 'VEI_INDICADORISS'
      Size = 50
    end
    object TBVendasItensVEI_INFOADICIONAL: TMemoField
      FieldName = 'VEI_INFOADICIONAL'
      Origin = 'VEI_INFOADICIONAL'
      BlobType = ftMemo
    end
    object TBVendasItensVEI_LOCALIZACAO: TStringField
      FieldName = 'VEI_LOCALIZACAO'
      Origin = 'VEI_LOCALIZACAO'
    end
    object TBVendasItensVEI_LOTE: TStringField
      FieldName = 'VEI_LOTE'
      Origin = 'VEI_LOTE'
    end
    object TBVendasItensVEI_LUCROPORC: TFMTBCDField
      FieldName = 'VEI_LUCROPORC'
      Origin = 'VEI_LUCROPORC'
      Precision = 18
    end
    object TBVendasItensVEI_LUCROVALOR: TFMTBCDField
      FieldName = 'VEI_LUCROVALOR'
      Origin = 'VEI_LUCROVALOR'
      Precision = 18
    end
    object TBVendasItensVEI_MODICMS: TStringField
      FieldName = 'VEI_MODICMS'
      Origin = 'VEI_MODICMS'
      Size = 40
    end
    object TBVendasItensVEI_MODICMSST: TStringField
      FieldName = 'VEI_MODICMSST'
      Origin = 'VEI_MODICMSST'
      Size = 40
    end
    object TBVendasItensVEI_ORIGEM: TStringField
      FieldName = 'VEI_ORIGEM'
      Origin = 'VEI_ORIGEM'
      Size = 120
    end
    object TBVendasItensVEI_PAISISS: TIntegerField
      FieldName = 'VEI_PAISISS'
      Origin = 'VEI_PAISISS'
    end
    object TBVendasItensVEI_PEDIDOCLIENTE: TStringField
      FieldName = 'VEI_PEDIDOCLIENTE'
      Origin = 'VEI_PEDIDOCLIENTE'
      Size = 15
    end
    object TBVendasItensVEI_PEDIDOCLIENTEITEM: TIntegerField
      FieldName = 'VEI_PEDIDOCLIENTEITEM'
      Origin = 'VEI_PEDIDOCLIENTEITEM'
    end
    object TBVendasItensVEI_PESO: TFMTBCDField
      FieldName = 'VEI_PESO'
      Origin = 'VEI_PESO'
      Precision = 18
      Size = 3
    end
    object TBVendasItensVEI_PESOTOTAL: TFMTBCDField
      FieldName = 'VEI_PESOTOTAL'
      Origin = 'VEI_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object TBVendasItensVEI_PRECOCUSTO: TFMTBCDField
      FieldName = 'VEI_PRECOCUSTO'
      Origin = 'VEI_PRECOCUSTO'
      Precision = 18
    end
    object TBVendasItensVEI_PRECOCUSTOTOTAL: TFMTBCDField
      FieldName = 'VEI_PRECOCUSTOTOTAL'
      Origin = 'VEI_PRECOCUSTOTOTAL'
      Precision = 18
    end
    object TBVendasItensVEI_PROCESSOISS: TStringField
      FieldName = 'VEI_PROCESSOISS'
      Origin = 'VEI_PROCESSOISS'
      Size = 30
    end
    object TBVendasItensVEI_PRODUTO: TIntegerField
      FieldName = 'VEI_PRODUTO'
      Origin = 'VEI_PRODUTO'
      Required = True
    end
    object TBVendasItensVEI_PRODUTOREAL: TIntegerField
      FieldName = 'VEI_PRODUTOREAL'
      Origin = 'VEI_PRODUTOREAL'
    end
    object TBVendasItensVEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      Origin = 'VEI_QUANTIDADE'
      Precision = 18
    end
    object TBVendasItensVEI_QUANTIDADETROCA: TFMTBCDField
      FieldName = 'VEI_QUANTIDADETROCA'
      Origin = 'VEI_QUANTIDADETROCA'
      Precision = 18
    end
    object TBVendasItensVEI_SEQUENCIA: TIntegerField
      FieldName = 'VEI_SEQUENCIA'
      Origin = 'VEI_SEQUENCIA'
    end
    object TBVendasItensVEI_SERVICOISS: TStringField
      FieldName = 'VEI_SERVICOISS'
      Origin = 'VEI_SERVICOISS'
    end
    object TBVendasItensVEI_SOMACOFINSST: TStringField
      FieldName = 'VEI_SOMACOFINSST'
      Origin = 'VEI_SOMACOFINSST'
      Size = 1
    end
    object TBVendasItensVEI_SOMAPISST: TStringField
      FieldName = 'VEI_SOMAPISST'
      Origin = 'VEI_SOMAPISST'
      Size = 1
    end
    object TBVendasItensVEI_TIPO: TStringField
      FieldName = 'VEI_TIPO'
      Origin = 'VEI_TIPO'
      Size = 1
    end
    object TBVendasItensVEI_TIPOISS: TStringField
      FieldName = 'VEI_TIPOISS'
      Origin = 'VEI_TIPOISS'
      Size = 15
    end
    object TBVendasItensVEI_UNIDADE: TStringField
      FieldName = 'VEI_UNIDADE'
      Origin = 'VEI_UNIDADE'
      Size = 3
    end
    object TBVendasItensVEI_VALORACESSORIAS: TFMTBCDField
      FieldName = 'VEI_VALORACESSORIAS'
      Origin = 'VEI_VALORACESSORIAS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORADUANA: TFMTBCDField
      FieldName = 'VEI_VALORADUANA'
      Origin = 'VEI_VALORADUANA'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCBS: TFMTBCDField
      FieldName = 'VEI_VALORCBS'
      Origin = 'VEI_VALORCBS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCBSCREDPRES: TFMTBCDField
      FieldName = 'VEI_VALORCBSCREDPRES'
      Origin = 'VEI_VALORCBSCREDPRES'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCBSCREDPRESSUS: TFMTBCDField
      FieldName = 'VEI_VALORCBSCREDPRESSUS'
      Origin = 'VEI_VALORCBSCREDPRESSUS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCBSDEV: TFMTBCDField
      FieldName = 'VEI_VALORCBSDEV'
      Origin = 'VEI_VALORCBSDEV'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCBSDIF: TFMTBCDField
      FieldName = 'VEI_VALORCBSDIF'
      Origin = 'VEI_VALORCBSDIF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOFINS: TFMTBCDField
      FieldName = 'VEI_VALORCOFINS'
      Origin = 'VEI_VALORCOFINS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOFINSST: TFMTBCDField
      FieldName = 'VEI_VALORCOFINSST'
      Origin = 'VEI_VALORCOFINSST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOMISSAO: TFMTBCDField
      FieldName = 'VEI_VALORCOMISSAO'
      Origin = 'VEI_VALORCOMISSAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORCOMISSAOREP: TFMTBCDField
      FieldName = 'VEI_VALORCOMISSAOREP'
      Origin = 'VEI_VALORCOMISSAOREP'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFCP: TFMTBCDField
      FieldName = 'VEI_VALORFCP'
      Origin = 'VEI_VALORFCP'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFCPST: TFMTBCDField
      FieldName = 'VEI_VALORFCPST'
      Origin = 'VEI_VALORFCPST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORFRETE: TFMTBCDField
      FieldName = 'VEI_VALORFRETE'
      Origin = 'VEI_VALORFRETE'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBS: TFMTBCDField
      FieldName = 'VEI_VALORIBS'
      Origin = 'VEI_VALORIBS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSCREDPRES: TFMTBCDField
      FieldName = 'VEI_VALORIBSCREDPRES'
      Origin = 'VEI_VALORIBSCREDPRES'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSCREDPRESSUS: TFMTBCDField
      FieldName = 'VEI_VALORIBSCREDPRESSUS'
      Origin = 'VEI_VALORIBSCREDPRESSUS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSMUN: TFMTBCDField
      FieldName = 'VEI_VALORIBSMUN'
      Origin = 'VEI_VALORIBSMUN'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSMUNDEV: TFMTBCDField
      FieldName = 'VEI_VALORIBSMUNDEV'
      Origin = 'VEI_VALORIBSMUNDEV'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSMUNDIF: TFMTBCDField
      FieldName = 'VEI_VALORIBSMUNDIF'
      Origin = 'VEI_VALORIBSMUNDIF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSUF: TFMTBCDField
      FieldName = 'VEI_VALORIBSUF'
      Origin = 'VEI_VALORIBSUF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSUFDEV: TFMTBCDField
      FieldName = 'VEI_VALORIBSUFDEV'
      Origin = 'VEI_VALORIBSUFDEV'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIBSUFDIF: TFMTBCDField
      FieldName = 'VEI_VALORIBSUFDIF'
      Origin = 'VEI_VALORIBSUFDIF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMS: TFMTBCDField
      FieldName = 'VEI_VALORICMS'
      Origin = 'VEI_VALORICMS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSCREDSN: TFMTBCDField
      FieldName = 'VEI_VALORICMSCREDSN'
      Origin = 'VEI_VALORICMSCREDSN'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSDESONERADO: TFMTBCDField
      FieldName = 'VEI_VALORICMSDESONERADO'
      Origin = 'VEI_VALORICMSDESONERADO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSST: TFMTBCDField
      FieldName = 'VEI_VALORICMSST'
      Origin = 'VEI_VALORICMSST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSSTRET: TFMTBCDField
      FieldName = 'VEI_VALORICMSSTRET'
      Origin = 'VEI_VALORICMSSTRET'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSSUBSTITUTO: TFMTBCDField
      FieldName = 'VEI_VALORICMSSUBSTITUTO'
      Origin = 'VEI_VALORICMSSUBSTITUTO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSUFDEST: TFMTBCDField
      FieldName = 'VEI_VALORICMSUFDEST'
      Origin = 'VEI_VALORICMSUFDEST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORICMSUFREMET: TFMTBCDField
      FieldName = 'VEI_VALORICMSUFREMET'
      Origin = 'VEI_VALORICMSUFREMET'
      Precision = 18
    end
    object TBVendasItensVEI_VALORII: TFMTBCDField
      FieldName = 'VEI_VALORII'
      Origin = 'VEI_VALORII'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIOF: TFMTBCDField
      FieldName = 'VEI_VALORIOF'
      Origin = 'VEI_VALORIOF'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIPI: TFMTBCDField
      FieldName = 'VEI_VALORIPI'
      Origin = 'VEI_VALORIPI'
      Precision = 18
    end
    object TBVendasItensVEI_VALORIS: TFMTBCDField
      FieldName = 'VEI_VALORIS'
      Origin = 'VEI_VALORIS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISS: TFMTBCDField
      FieldName = 'VEI_VALORISS'
      Origin = 'VEI_VALORISS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDEDUCAO: TFMTBCDField
      FieldName = 'VEI_VALORISSDEDUCAO'
      Origin = 'VEI_VALORISSDEDUCAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDESCCOND: TFMTBCDField
      FieldName = 'VEI_VALORISSDESCCOND'
      Origin = 'VEI_VALORISSDESCCOND'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSDESCINCOND: TFMTBCDField
      FieldName = 'VEI_VALORISSDESCINCOND'
      Origin = 'VEI_VALORISSDESCINCOND'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSOUTROS: TFMTBCDField
      FieldName = 'VEI_VALORISSOUTROS'
      Origin = 'VEI_VALORISSOUTROS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORISSRETENCAO: TFMTBCDField
      FieldName = 'VEI_VALORISSRETENCAO'
      Origin = 'VEI_VALORISSRETENCAO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORPIS: TFMTBCDField
      FieldName = 'VEI_VALORPIS'
      Origin = 'VEI_VALORPIS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORPISST: TFMTBCDField
      FieldName = 'VEI_VALORPISST'
      Origin = 'VEI_VALORPISST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORSEGURO: TFMTBCDField
      FieldName = 'VEI_VALORSEGURO'
      Origin = 'VEI_VALORSEGURO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTOTAL: TFMTBCDField
      FieldName = 'VEI_VALORTOTAL'
      Origin = 'VEI_VALORTOTAL'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTOTALBRUTO: TFMTBCDField
      FieldName = 'VEI_VALORTOTALBRUTO'
      Origin = 'VEI_VALORTOTALBRUTO'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOS: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOS'
      Origin = 'VEI_VALORTRIBUTOS'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSEST: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSEST'
      Origin = 'VEI_VALORTRIBUTOSEST'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSFED: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSFED'
      Origin = 'VEI_VALORTRIBUTOSFED'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSIMP: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSIMP'
      Origin = 'VEI_VALORTRIBUTOSIMP'
      Precision = 18
    end
    object TBVendasItensVEI_VALORTRIBUTOSMUN: TFMTBCDField
      FieldName = 'VEI_VALORTRIBUTOSMUN'
      Origin = 'VEI_VALORTRIBUTOSMUN'
      Precision = 18
    end
    object TBVendasItensVEI_VALORUNIT: TFMTBCDField
      FieldName = 'VEI_VALORUNIT'
      Origin = 'VEI_VALORUNIT'
      Precision = 18
    end
    object TBVendasItensVEI_VENDA: TIntegerField
      FieldName = 'VEI_VENDA'
      Origin = 'VEI_VENDA'
      Required = True
    end
    object TBVendasItensALM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBVendasItensCLF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensCLT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBVendasItensCLT_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO1'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBVendasItensICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasItensICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensIPI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      Size = 1000
    end
    object TBVendasItensNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasItensNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasItensNAT_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CODIGO'
      Origin = 'NAT_CODIGO'
      ProviderFlags = []
    end
    object TBVendasItensNAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensPIS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensPIS_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO1'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensPRO_CLASSFISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRO_CLASSFISCAL'
      ProviderFlags = []
    end
    object TBVendasItensPRO_CSTICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CSTICMS'
      Origin = 'PRO_CSTICMS'
      ProviderFlags = []
    end
    object TBVendasItensPRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      Size = 100
    end
    object TBVendasItensPRO_PRECOVENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      ProviderFlags = []
      Precision = 18
    end
    object TBVendasItensPRO_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_TIPO'
      Origin = 'PRO_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object TBVendasItensPRO_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      ProviderFlags = []
      Size = 3
    end
  end
  object TRVendasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 744
    Top = 336
  end
  object TBProdutos: TFDQuery
    Connection = FDConnection1
    Transaction = TRProdutos
    SQL.Strings = (
      'select'
      'PRO_ALIQCOFINS,'
      'PRO_ALIQCOFINSST,'
      'PRO_ALIQICMS,'
      'PRO_ALIQICMSADICST,'
      'PRO_ALIQICMSRED,'
      'PRO_ALIQICMSST,'
      'PRO_ALIQIPI,'
      'PRO_ALIQISS,'
      'PRO_ALIQOUTROS,'
      'PRO_ALIQPIS,'
      'PRO_ALIQPISST,'
      'PRO_ALTURA,'
      'PRO_ATUALIZAR,'
      'PRO_ATUALIZATABELA,'
      'PRO_BENEFICIO,'
      'PRO_CEST,'
      'PRO_CFOP,'
      'PRO_CFOPFORA,'
      'PRO_CLASSFISCAL,'
      'PRO_CODIGO,'
      'PRO_CODIGOBARRAS,'
      'PRO_CODIGOFAB,'
      'PRO_COMISSAO,'
      'PRO_COMPOEBASEICMS,'
      'PRO_COMPOEBASEICMSST,'
      'PRO_COMPOSTO,'
      'PRO_CONVERSAO,'
      'PRO_CORSABOR,'
      'PRO_CSTCOFINS,'
      'PRO_CSTICMS,'
      'PRO_CSTIPI,'
      'PRO_CSTPIS,'
      'PRO_CUBICO,'
      'PRO_DESCMAX,'
      'PRO_DESCRICAO,'
      'PRO_DTATUALIZACAO,'
      'PRO_DTCADASTRO,'
      'PRO_DTULTCOMPRA,'
      'PRO_DTULTVENDA,'
      'PRO_ENQUADRAMENTOIPI,'
      'PRO_ESTOQUEATUAL,'
      'PRO_ESTOQUEMAX,'
      'PRO_ESTOQUEMIN,'
      'PRO_EXCECAO,'
      'PRO_FAMILIA,'
      'PRO_FCI,'
      'PRO_FORNECEDOR,'
      'PRO_HRATUALIZACAO,'
      'PRO_HRCADASTRO,'
      'PRO_GENERO,'
      'PRO_GRUPO,'
      'PRO_ICMSALIQUOTAPOR,'
      'PRO_INCENTIVOISS,'
      'PRO_INDICADORISS,'
      'PRO_INTERNET,'
      'PRO_LARGURA,'
      'PRO_LOCALIZACAO,'
      'PRO_MARCA,'
      'PRO_MARGEM,'
      'PRO_MARGEM1,'
      'PRO_MARGEM2,'
      'PRO_MARGEM3,'
      'PRO_MARGEM4,'
      'PRO_MARGEM5,'
      'PRO_MARGEM6,'
      'PRO_MARKUP,'
      'PRO_MARKUPCODIGO,'
      'PRO_MODICMS,'
      'PRO_MODICMSST,'
      'PRO_NOME,'
      'PRO_OBSERVACOES,'
      'PRO_OFERTA,'
      'PRO_ORIGEM,'
      'PRO_PALAVRASCHAVE,'
      'PRO_PESAVEL,'
      'PRO_PESO,'
      'PRO_PRECO1,'
      'PRO_PRECO2,'
      'PRO_PRECO3,'
      'PRO_PRECO4,'
      'PRO_PRECO5,'
      'PRO_PRECO6,'
      'PRO_PRECOCUSTO,'
      'PRO_PRECOCUSTOCOMP,'
      'PRO_PRECOCUSTOMEDIO,'
      'PRO_PRECOCUSTOULT,'
      'PRO_PRECOVENDA,'
      'PRO_PRECOVENDAMEDIO,'
      'PRO_PRECOVENDAULT,'
      'PRO_PRODUCAO,'
      'PRO_PRODUTOREAL,'
      'PRO_PROFUNDIDADE,'
      'PRO_REGISTROMS,'
      'PRO_REGRAFISCAL,'
      'PRO_STATUS,'
      'PRO_SUBSTITUICAOTRIB,'
      'PRO_TABPRECO1,'
      'PRO_TABPRECO2,'
      'PRO_TABPRECO3,'
      'PRO_TABPRECO4,'
      'PRO_TABPRECO5,'
      'PRO_TABPRECO6,'
      'PRO_TAMANHO,'
      'PRO_TIPO,'
      'PRO_TIPOISS,'
      'PRO_TIPOITEM,'
      'PRO_TRIBUTO,'
      'PRO_TROCA,'
      'PRO_UNIDADE,'
      'PRO_USUARIO,'
      'CLF_DESCRICAO,'
      'FAM_DESCRICAO,'
      'FOR_NOME,'
      'GRU_DESCRICAO,'
      'ICM_CALCULACREDITOSN,'
      'ICM_DESCRICAO,'
      'IPI_DESCRICAO,'
      'ISS_DESCRICAO,'
      'MAR_DESCRICAO,'
      'PIS.PIS_DESCRICAO as PIS_DESCRICAO,'
      'COFINS.PIS_DESCRICAO as PIS_DESCRICAO1,'
      'UNI_DESCRICAO'
      'from PRODUTOS'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join UNIDADES on PRO_UNIDADE=UNI_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO'
      'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO'
      
        'left join CLASSFISCAL on PRO_CLASSFISCAL=CLF_CODIGO and PRO_EXCE' +
        'CAO=CLF_EXCECAO'
      'left join ICMS on PRO_CSTICMS=ICM_CODIGO'
      'left join IPI on PRO_CSTIPI=IPI_CODIGO'
      'left join ISS on PRO_TIPOISS=ISS_CODIGO'
      'left join PISCOFINS as PIS on PRO_CSTPIS=PIS.PIS_CODIGO'
      'left join PISCOFINS as COFINS on PRO_CSTCOFINS=COFINS.PIS_CODIGO'
      'where PRO_CODIGO=:codigo'
      'order by PRO_CODIGO'
      '')
    Left = 168
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBProdutosPRO_ALIQCOFINS: TFMTBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = 'PRO_ALIQCOFINS'
      Precision = 18
    end
    object TBProdutosPRO_ALIQCOFINSST: TFMTBCDField
      FieldName = 'PRO_ALIQCOFINSST'
      Origin = 'PRO_ALIQCOFINSST'
      Precision = 18
    end
    object TBProdutosPRO_ALIQICMS: TFMTBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = 'PRO_ALIQICMS'
      Precision = 18
    end
    object TBProdutosPRO_ALIQICMSADICST: TFMTBCDField
      FieldName = 'PRO_ALIQICMSADICST'
      Origin = 'PRO_ALIQICMSADICST'
      Precision = 18
    end
    object TBProdutosPRO_ALIQICMSRED: TFMTBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = 'PRO_ALIQICMSRED'
      Precision = 18
    end
    object TBProdutosPRO_ALIQICMSST: TFMTBCDField
      FieldName = 'PRO_ALIQICMSST'
      Origin = 'PRO_ALIQICMSST'
      Precision = 18
    end
    object TBProdutosPRO_ALIQIPI: TFMTBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = 'PRO_ALIQIPI'
      Precision = 18
    end
    object TBProdutosPRO_ALIQISS: TFMTBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = 'PRO_ALIQISS'
      Precision = 18
    end
    object TBProdutosPRO_ALIQOUTROS: TFMTBCDField
      FieldName = 'PRO_ALIQOUTROS'
      Origin = 'PRO_ALIQOUTROS'
      Precision = 18
    end
    object TBProdutosPRO_ALIQPIS: TFMTBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = 'PRO_ALIQPIS'
      Precision = 18
    end
    object TBProdutosPRO_ALIQPISST: TFMTBCDField
      FieldName = 'PRO_ALIQPISST'
      Origin = 'PRO_ALIQPISST'
      Precision = 18
    end
    object TBProdutosPRO_ALTURA: TIntegerField
      FieldName = 'PRO_ALTURA'
      Origin = 'PRO_ALTURA'
    end
    object TBProdutosPRO_ATUALIZAR: TStringField
      FieldName = 'PRO_ATUALIZAR'
      Origin = 'PRO_ATUALIZAR'
      Size = 1
    end
    object TBProdutosPRO_ATUALIZATABELA: TStringField
      FieldName = 'PRO_ATUALIZATABELA'
      Origin = 'PRO_ATUALIZATABELA'
      Size = 1
    end
    object TBProdutosPRO_BENEFICIO: TStringField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'PRO_BENEFICIO'
    end
    object TBProdutosPRO_CEST: TStringField
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
    end
    object TBProdutosPRO_CFOP: TIntegerField
      FieldName = 'PRO_CFOP'
      Origin = 'PRO_CFOP'
    end
    object TBProdutosPRO_CFOPFORA: TIntegerField
      FieldName = 'PRO_CFOPFORA'
      Origin = 'PRO_CFOPFORA'
    end
    object TBProdutosPRO_CLASSFISCAL: TStringField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRO_CLASSFISCAL'
    end
    object TBProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosPRO_CODIGOBARRAS: TStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      Size = 60
    end
    object TBProdutosPRO_CODIGOFAB: TStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = 'PRO_CODIGOFAB'
    end
    object TBProdutosPRO_COMISSAO: TFMTBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = 'PRO_COMISSAO'
      Precision = 18
    end
    object TBProdutosPRO_COMPOEBASEICMS: TStringField
      FieldName = 'PRO_COMPOEBASEICMS'
      Origin = 'PRO_COMPOEBASEICMS'
      Size = 1
    end
    object TBProdutosPRO_COMPOEBASEICMSST: TStringField
      FieldName = 'PRO_COMPOEBASEICMSST'
      Origin = 'PRO_COMPOEBASEICMSST'
      Size = 1
    end
    object TBProdutosPRO_COMPOSTO: TStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = 'PRO_COMPOSTO'
      Size = 1
    end
    object TBProdutosPRO_CONVERSAO: TFMTBCDField
      FieldName = 'PRO_CONVERSAO'
      Origin = 'PRO_CONVERSAO'
      Precision = 18
    end
    object TBProdutosPRO_CORSABOR: TStringField
      FieldName = 'PRO_CORSABOR'
      Origin = 'PRO_CORSABOR'
    end
    object TBProdutosPRO_CSTCOFINS: TIntegerField
      FieldName = 'PRO_CSTCOFINS'
      Origin = 'PRO_CSTCOFINS'
    end
    object TBProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = 'PRO_CSTICMS'
    end
    object TBProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = 'PRO_CSTIPI'
    end
    object TBProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = 'PRO_CSTPIS'
    end
    object TBProdutosPRO_CUBICO: TIntegerField
      FieldName = 'PRO_CUBICO'
      Origin = 'PRO_CUBICO'
    end
    object TBProdutosPRO_DESCMAX: TFMTBCDField
      FieldName = 'PRO_DESCMAX'
      Origin = 'PRO_DESCMAX'
      Precision = 18
    end
    object TBProdutosPRO_DESCRICAO: TMemoField
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      BlobType = ftMemo
    end
    object TBProdutosPRO_DTATUALIZACAO: TDateField
      FieldName = 'PRO_DTATUALIZACAO'
      Origin = 'PRO_DTATUALIZACAO'
    end
    object TBProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = 'PRO_DTCADASTRO'
    end
    object TBProdutosPRO_DTULTCOMPRA: TDateField
      FieldName = 'PRO_DTULTCOMPRA'
      Origin = 'PRO_DTULTCOMPRA'
    end
    object TBProdutosPRO_DTULTVENDA: TDateField
      FieldName = 'PRO_DTULTVENDA'
      Origin = 'PRO_DTULTVENDA'
    end
    object TBProdutosPRO_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'PRO_ENQUADRAMENTOIPI'
      Origin = 'PRO_ENQUADRAMENTOIPI'
    end
    object TBProdutosPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      Precision = 18
    end
    object TBProdutosPRO_ESTOQUEMAX: TFMTBCDField
      FieldName = 'PRO_ESTOQUEMAX'
      Origin = 'PRO_ESTOQUEMAX'
      Precision = 18
    end
    object TBProdutosPRO_ESTOQUEMIN: TFMTBCDField
      FieldName = 'PRO_ESTOQUEMIN'
      Origin = 'PRO_ESTOQUEMIN'
      Precision = 18
    end
    object TBProdutosPRO_EXCECAO: TIntegerField
      FieldName = 'PRO_EXCECAO'
      Origin = 'PRO_EXCECAO'
    end
    object TBProdutosPRO_FAMILIA: TIntegerField
      FieldName = 'PRO_FAMILIA'
      Origin = 'PRO_FAMILIA'
      Required = True
    end
    object TBProdutosPRO_FCI: TStringField
      FieldName = 'PRO_FCI'
      Origin = 'PRO_FCI'
      Size = 40
    end
    object TBProdutosPRO_FORNECEDOR: TIntegerField
      FieldName = 'PRO_FORNECEDOR'
      Origin = 'PRO_FORNECEDOR'
      Required = True
    end
    object TBProdutosPRO_HRATUALIZACAO: TTimeField
      FieldName = 'PRO_HRATUALIZACAO'
      Origin = 'PRO_HRATUALIZACAO'
    end
    object TBProdutosPRO_HRCADASTRO: TTimeField
      FieldName = 'PRO_HRCADASTRO'
      Origin = 'PRO_HRCADASTRO'
    end
    object TBProdutosPRO_GENERO: TIntegerField
      FieldName = 'PRO_GENERO'
      Origin = 'PRO_GENERO'
    end
    object TBProdutosPRO_GRUPO: TIntegerField
      FieldName = 'PRO_GRUPO'
      Origin = 'PRO_GRUPO'
      Required = True
    end
    object TBProdutosPRO_ICMSALIQUOTAPOR: TStringField
      FieldName = 'PRO_ICMSALIQUOTAPOR'
      Origin = 'PRO_ICMSALIQUOTAPOR'
      Size = 1
    end
    object TBProdutosPRO_INCENTIVOISS: TStringField
      FieldName = 'PRO_INCENTIVOISS'
      Origin = 'PRO_INCENTIVOISS'
      Size = 1
    end
    object TBProdutosPRO_INDICADORISS: TStringField
      FieldName = 'PRO_INDICADORISS'
      Origin = 'PRO_INDICADORISS'
      Size = 50
    end
    object TBProdutosPRO_INTERNET: TStringField
      FieldName = 'PRO_INTERNET'
      Origin = 'PRO_INTERNET'
      Size = 1
    end
    object TBProdutosPRO_LARGURA: TIntegerField
      FieldName = 'PRO_LARGURA'
      Origin = 'PRO_LARGURA'
    end
    object TBProdutosPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
    end
    object TBProdutosPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = 'PRO_MARCA'
      Required = True
    end
    object TBProdutosPRO_MARGEM: TFMTBCDField
      FieldName = 'PRO_MARGEM'
      Origin = 'PRO_MARGEM'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM1: TFMTBCDField
      FieldName = 'PRO_MARGEM1'
      Origin = 'PRO_MARGEM1'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM2: TFMTBCDField
      FieldName = 'PRO_MARGEM2'
      Origin = 'PRO_MARGEM2'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM3: TFMTBCDField
      FieldName = 'PRO_MARGEM3'
      Origin = 'PRO_MARGEM3'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM4: TFMTBCDField
      FieldName = 'PRO_MARGEM4'
      Origin = 'PRO_MARGEM4'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM5: TFMTBCDField
      FieldName = 'PRO_MARGEM5'
      Origin = 'PRO_MARGEM5'
      Precision = 18
    end
    object TBProdutosPRO_MARGEM6: TFMTBCDField
      FieldName = 'PRO_MARGEM6'
      Origin = 'PRO_MARGEM6'
      Precision = 18
    end
    object TBProdutosPRO_MARKUP: TFMTBCDField
      FieldName = 'PRO_MARKUP'
      Origin = 'PRO_MARKUP'
      Precision = 18
    end
    object TBProdutosPRO_MARKUPCODIGO: TIntegerField
      FieldName = 'PRO_MARKUPCODIGO'
      Origin = 'PRO_MARKUPCODIGO'
    end
    object TBProdutosPRO_MODICMS: TStringField
      FieldName = 'PRO_MODICMS'
      Origin = 'PRO_MODICMS'
      Size = 40
    end
    object TBProdutosPRO_MODICMSST: TStringField
      FieldName = 'PRO_MODICMSST'
      Origin = 'PRO_MODICMSST'
      Size = 40
    end
    object TBProdutosPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      Required = True
      Size = 100
    end
    object TBProdutosPRO_OBSERVACOES: TMemoField
      FieldName = 'PRO_OBSERVACOES'
      Origin = 'PRO_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBProdutosPRO_OFERTA: TStringField
      FieldName = 'PRO_OFERTA'
      Origin = 'PRO_OFERTA'
      Size = 1
    end
    object TBProdutosPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      Origin = 'PRO_ORIGEM'
      Size = 120
    end
    object TBProdutosPRO_PALAVRASCHAVE: TStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = 'PRO_PALAVRASCHAVE'
      Size = 120
    end
    object TBProdutosPRO_PESAVEL: TStringField
      FieldName = 'PRO_PESAVEL'
      Origin = 'PRO_PESAVEL'
      Size = 1
    end
    object TBProdutosPRO_PESO: TFMTBCDField
      FieldName = 'PRO_PESO'
      Origin = 'PRO_PESO'
      Precision = 18
      Size = 3
    end
    object TBProdutosPRO_PRECO1: TFMTBCDField
      FieldName = 'PRO_PRECO1'
      Origin = 'PRO_PRECO1'
      Precision = 18
    end
    object TBProdutosPRO_PRECO2: TFMTBCDField
      FieldName = 'PRO_PRECO2'
      Origin = 'PRO_PRECO2'
      Precision = 18
    end
    object TBProdutosPRO_PRECO3: TFMTBCDField
      FieldName = 'PRO_PRECO3'
      Origin = 'PRO_PRECO3'
      Precision = 18
    end
    object TBProdutosPRO_PRECO4: TFMTBCDField
      FieldName = 'PRO_PRECO4'
      Origin = 'PRO_PRECO4'
      Precision = 18
    end
    object TBProdutosPRO_PRECO5: TFMTBCDField
      FieldName = 'PRO_PRECO5'
      Origin = 'PRO_PRECO5'
      Precision = 18
    end
    object TBProdutosPRO_PRECO6: TFMTBCDField
      FieldName = 'PRO_PRECO6'
      Origin = 'PRO_PRECO6'
      Precision = 18
    end
    object TBProdutosPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = 'PRO_PRECOCUSTO'
      Precision = 18
    end
    object TBProdutosPRO_PRECOCUSTOCOMP: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOCOMP'
      Origin = 'PRO_PRECOCUSTOCOMP'
      Precision = 18
    end
    object TBProdutosPRO_PRECOCUSTOMEDIO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOMEDIO'
      Origin = 'PRO_PRECOCUSTOMEDIO'
      Precision = 18
    end
    object TBProdutosPRO_PRECOCUSTOULT: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTOULT'
      Origin = 'PRO_PRECOCUSTOULT'
      Precision = 18
    end
    object TBProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      Precision = 18
    end
    object TBProdutosPRO_PRECOVENDAMEDIO: TFMTBCDField
      FieldName = 'PRO_PRECOVENDAMEDIO'
      Origin = 'PRO_PRECOVENDAMEDIO'
      Precision = 18
    end
    object TBProdutosPRO_PRECOVENDAULT: TFMTBCDField
      FieldName = 'PRO_PRECOVENDAULT'
      Origin = 'PRO_PRECOVENDAULT'
      Precision = 18
    end
    object TBProdutosPRO_PRODUCAO: TStringField
      FieldName = 'PRO_PRODUCAO'
      Origin = 'PRO_PRODUCAO'
      Size = 1
    end
    object TBProdutosPRO_PRODUTOREAL: TIntegerField
      FieldName = 'PRO_PRODUTOREAL'
      Origin = 'PRO_PRODUTOREAL'
    end
    object TBProdutosPRO_PROFUNDIDADE: TIntegerField
      FieldName = 'PRO_PROFUNDIDADE'
      Origin = 'PRO_PROFUNDIDADE'
    end
    object TBProdutosPRO_REGISTROMS: TStringField
      FieldName = 'PRO_REGISTROMS'
      Origin = 'PRO_REGISTROMS'
    end
    object TBProdutosPRO_REGRAFISCAL: TIntegerField
      FieldName = 'PRO_REGRAFISCAL'
      Origin = 'PRO_REGRAFISCAL'
      Required = True
    end
    object TBProdutosPRO_STATUS: TStringField
      FieldName = 'PRO_STATUS'
      Origin = 'PRO_STATUS'
      Size = 1
    end
    object TBProdutosPRO_SUBSTITUICAOTRIB: TStringField
      FieldName = 'PRO_SUBSTITUICAOTRIB'
      Origin = 'PRO_SUBSTITUICAOTRIB'
      Size = 1
    end
    object TBProdutosPRO_TABPRECO1: TStringField
      FieldName = 'PRO_TABPRECO1'
      Origin = 'PRO_TABPRECO1'
      Size = 50
    end
    object TBProdutosPRO_TABPRECO2: TStringField
      FieldName = 'PRO_TABPRECO2'
      Origin = 'PRO_TABPRECO2'
      Size = 50
    end
    object TBProdutosPRO_TABPRECO3: TStringField
      FieldName = 'PRO_TABPRECO3'
      Origin = 'PRO_TABPRECO3'
      Size = 50
    end
    object TBProdutosPRO_TABPRECO4: TStringField
      FieldName = 'PRO_TABPRECO4'
      Origin = 'PRO_TABPRECO4'
      Size = 50
    end
    object TBProdutosPRO_TABPRECO5: TStringField
      FieldName = 'PRO_TABPRECO5'
      Origin = 'PRO_TABPRECO5'
      Size = 50
    end
    object TBProdutosPRO_TABPRECO6: TStringField
      FieldName = 'PRO_TABPRECO6'
      Origin = 'PRO_TABPRECO6'
      Size = 50
    end
    object TBProdutosPRO_TAMANHO: TStringField
      FieldName = 'PRO_TAMANHO'
      Origin = 'PRO_TAMANHO'
    end
    object TBProdutosPRO_TIPO: TStringField
      FieldName = 'PRO_TIPO'
      Origin = 'PRO_TIPO'
      Size = 1
    end
    object TBProdutosPRO_TIPOISS: TStringField
      FieldName = 'PRO_TIPOISS'
      Origin = 'PRO_TIPOISS'
      Size = 15
    end
    object TBProdutosPRO_TIPOITEM: TStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = 'PRO_TIPOITEM'
      Size = 30
    end
    object TBProdutosPRO_TRIBUTO: TStringField
      FieldName = 'PRO_TRIBUTO'
      Origin = 'PRO_TRIBUTO'
      Size = 10
    end
    object TBProdutosPRO_TROCA: TStringField
      FieldName = 'PRO_TROCA'
      Origin = 'PRO_TROCA'
      Size = 1
    end
    object TBProdutosPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      Size = 3
    end
    object TBProdutosPRO_USUARIO: TStringField
      FieldName = 'PRO_USUARIO'
      Origin = 'PRO_USUARIO'
    end
    object TBProdutosCLF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBProdutosFAM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAM_DESCRICAO'
      Origin = 'FAM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBProdutosFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBProdutosGRU_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBProdutosICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBProdutosICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBProdutosIPI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBProdutosISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
    object TBProdutosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBProdutosPIS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBProdutosPIS_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO1'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBProdutosUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 168
    Top = 336
  end
  object TBProdutosQtde: TFDQuery
    MasterSource = DSProdutos
    MasterFields = 'PRO_CODIGO'
    Connection = FDConnection1
    Transaction = TRProdutosQtde
    SQL.Strings = (
      'select '
      'PRQ_ALMOXARIFADO,'
      'PRQ_PRODUTO,'
      'PRQ_QUANTIDADE,'
      'ALM_DESCRICAO'
      'from PRODUTOSQTDE'
      'left join ALMOXARIFADOS on PRQ_ALMOXARIFADO=ALM_CODIGO'
      'where PRQ_PRODUTO=:PRO_CODIGO and ALM_STATUS='#39'A'#39
      'order by ALM_CODIGO'
      '')
    Left = 296
    Top = 288
    ParamData = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField
      FieldName = 'PRQ_ALMOXARIFADO'
      Origin = 'PRQ_ALMOXARIFADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosQtdePRQ_PRODUTO: TIntegerField
      FieldName = 'PRQ_PRODUTO'
      Origin = 'PRQ_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField
      FieldName = 'PRQ_QUANTIDADE'
      Origin = 'PRQ_QUANTIDADE'
      Precision = 18
    end
    object TBProdutosQtdeALM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRProdutosQtde: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 296
    Top = 336
  end
  object TBReceber: TFDQuery
    Connection = FDConnection1
    Transaction = TRReceber
    SQL.Strings = (
      'select'
      'REE_ACRESCIMOPORC,'
      'REE_ACRESCIMOPORCPAGO,'
      'REE_ACRESCIMOVALOR,'
      'REE_ACRESCIMOVALORPAGO,'
      'REE_BAIXADOPOR,'
      'REE_BOLETO,'
      'REE_CLIENTE,'
      'REE_CODIGO,'
      'REE_CONTA,'
      'REE_DESCPORC,'
      'REE_DESCPORCVENCIMENTO,'
      'REE_DESCRICAO,'
      'REE_DESCVALOR,'
      'REE_DIASATRASO,'
      'REE_DIASPRAZO,'
      'REE_DTATUALIZACAO,'
      'REE_DTCADASTRO,'
      'REE_DTEMISSAO,'
      'REE_DTJUROSAPOS,'
      'REE_DTPAGAMENTO,'
      'REE_DTVENCIMENTO,'
      'REE_HRATUALIZACAO,'
      'REE_HRCADASTRO,'
      'REE_JUROSPAGO,'
      'REE_MULTAPAGO,'
      'REE_NOVOCODIGO,'
      'REE_NUMDOCTO,'
      'REE_OBSERVACOES,'
      'REE_PARCELANUM,'
      'REE_PARCELAQTDE,'
      'REE_PORCJUROS,'
      'REE_RECEITA,'
      'REE_STATUS,'
      'REE_TIPOBAIXA,'
      'REE_TIPODOCTO,'
      'REE_USUARIO,'
      'REE_VALOR,'
      'REE_VALORACESSORIAS,'
      'REE_VALORJUROS,'
      'REE_VALORMULTA,'
      'REE_VALORORIGINAL,'
      'REE_VALORPAGO,'
      'REE_VALORSEMDESCONTO,'
      'REE_VENDA,'
      'REE_VENDEDOR,'
      'CLI_BAIRROCOB,'
      'CLI_CEPCOB,'
      'CLI_CIDADECOB,'
      'CLI_CIDADECODIGOCOB,'
      'CLI_CODIGO,'
      'CLI_CNPJCOB,'
      'CLI_CPF,'
      'CLI_ENDERECOCOB,'
      'CLI_ESTADOCOB,'
      'CLI_ESTADOCODIGOCOB,'
      'CLI_NOME,'
      'CLI_NUMEROCOB,'
      'CLI_TIPOPESSOA,'
      'CON_CODIGO,'
      'CON_NOME,'
      'CON_SALDO,'
      'REC_CODIGO,'
      'REC_DESCRICAO,'
      'VEN_CODIGO,'
      'VEN_NOME'
      'from RECEBER'
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO'
      'left join RECEITAS on REE_RECEITA=REC_CODIGO'
      'left join CONTAS on REE_CONTA=CON_CODIGO'
      'left join VENDEDORES on REE_VENDEDOR=VEN_CODIGO'
      'where REE_CODIGO=:codigo'
      'order by REE_CODIGO'
      '')
    Left = 360
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBReceberREE_ACRESCIMOPORC: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORC'
      Origin = 'REE_ACRESCIMOPORC'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORCPAGO'
      Origin = 'REE_ACRESCIMOPORCPAGO'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOVALOR: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALOR'
      Origin = 'REE_ACRESCIMOVALOR'
      Precision = 18
    end
    object TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALORPAGO'
      Origin = 'REE_ACRESCIMOVALORPAGO'
      Precision = 18
    end
    object TBReceberREE_BAIXADOPOR: TStringField
      FieldName = 'REE_BAIXADOPOR'
      Origin = 'REE_BAIXADOPOR'
    end
    object TBReceberREE_BOLETO: TIntegerField
      FieldName = 'REE_BOLETO'
      Origin = 'REE_BOLETO'
    end
    object TBReceberREE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
      Origin = 'REE_CLIENTE'
      Required = True
    end
    object TBReceberREE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = 'REE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBReceberREE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
      Origin = 'REE_CONTA'
      Required = True
    end
    object TBReceberREE_DESCPORC: TFMTBCDField
      FieldName = 'REE_DESCPORC'
      Origin = 'REE_DESCPORC'
      Precision = 18
    end
    object TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField
      FieldName = 'REE_DESCPORCVENCIMENTO'
      Origin = 'REE_DESCPORCVENCIMENTO'
      Precision = 18
    end
    object TBReceberREE_DESCRICAO: TStringField
      FieldName = 'REE_DESCRICAO'
      Origin = 'REE_DESCRICAO'
      Size = 120
    end
    object TBReceberREE_DESCVALOR: TFMTBCDField
      FieldName = 'REE_DESCVALOR'
      Origin = 'REE_DESCVALOR'
      Precision = 18
    end
    object TBReceberREE_DIASATRASO: TIntegerField
      FieldName = 'REE_DIASATRASO'
      Origin = 'REE_DIASATRASO'
    end
    object TBReceberREE_DIASPRAZO: TIntegerField
      FieldName = 'REE_DIASPRAZO'
      Origin = 'REE_DIASPRAZO'
    end
    object TBReceberREE_DTATUALIZACAO: TDateField
      FieldName = 'REE_DTATUALIZACAO'
      Origin = 'REE_DTATUALIZACAO'
    end
    object TBReceberREE_DTCADASTRO: TDateField
      FieldName = 'REE_DTCADASTRO'
      Origin = 'REE_DTCADASTRO'
    end
    object TBReceberREE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = 'REE_DTEMISSAO'
    end
    object TBReceberREE_DTJUROSAPOS: TDateField
      FieldName = 'REE_DTJUROSAPOS'
      Origin = 'REE_DTJUROSAPOS'
    end
    object TBReceberREE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
      Origin = 'REE_DTPAGAMENTO'
    end
    object TBReceberREE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = 'REE_DTVENCIMENTO'
    end
    object TBReceberREE_HRATUALIZACAO: TTimeField
      FieldName = 'REE_HRATUALIZACAO'
      Origin = 'REE_HRATUALIZACAO'
    end
    object TBReceberREE_HRCADASTRO: TTimeField
      FieldName = 'REE_HRCADASTRO'
      Origin = 'REE_HRCADASTRO'
    end
    object TBReceberREE_JUROSPAGO: TFMTBCDField
      FieldName = 'REE_JUROSPAGO'
      Origin = 'REE_JUROSPAGO'
      Precision = 18
    end
    object TBReceberREE_MULTAPAGO: TFMTBCDField
      FieldName = 'REE_MULTAPAGO'
      Origin = 'REE_MULTAPAGO'
      Precision = 18
    end
    object TBReceberREE_NOVOCODIGO: TIntegerField
      FieldName = 'REE_NOVOCODIGO'
      Origin = 'REE_NOVOCODIGO'
    end
    object TBReceberREE_NUMDOCTO: TStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = 'REE_NUMDOCTO'
    end
    object TBReceberREE_OBSERVACOES: TMemoField
      FieldName = 'REE_OBSERVACOES'
      Origin = 'REE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBReceberREE_PARCELANUM: TIntegerField
      FieldName = 'REE_PARCELANUM'
      Origin = 'REE_PARCELANUM'
    end
    object TBReceberREE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
      Origin = 'REE_PARCELAQTDE'
    end
    object TBReceberREE_PORCJUROS: TFMTBCDField
      FieldName = 'REE_PORCJUROS'
      Origin = 'REE_PORCJUROS'
      Precision = 18
    end
    object TBReceberREE_RECEITA: TIntegerField
      FieldName = 'REE_RECEITA'
      Origin = 'REE_RECEITA'
      Required = True
    end
    object TBReceberREE_STATUS: TStringField
      FieldName = 'REE_STATUS'
      Origin = 'REE_STATUS'
      Size = 1
    end
    object TBReceberREE_TIPOBAIXA: TStringField
      FieldName = 'REE_TIPOBAIXA'
      Origin = 'REE_TIPOBAIXA'
      Size = 1
    end
    object TBReceberREE_TIPODOCTO: TStringField
      FieldName = 'REE_TIPODOCTO'
      Origin = 'REE_TIPODOCTO'
    end
    object TBReceberREE_USUARIO: TStringField
      FieldName = 'REE_USUARIO'
      Origin = 'REE_USUARIO'
    end
    object TBReceberREE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = 'REE_VALOR'
      Precision = 18
    end
    object TBReceberREE_VALORACESSORIAS: TFMTBCDField
      FieldName = 'REE_VALORACESSORIAS'
      Origin = 'REE_VALORACESSORIAS'
      Precision = 18
    end
    object TBReceberREE_VALORJUROS: TFMTBCDField
      FieldName = 'REE_VALORJUROS'
      Origin = 'REE_VALORJUROS'
      Precision = 18
    end
    object TBReceberREE_VALORMULTA: TFMTBCDField
      FieldName = 'REE_VALORMULTA'
      Origin = 'REE_VALORMULTA'
      Precision = 18
    end
    object TBReceberREE_VALORORIGINAL: TFMTBCDField
      FieldName = 'REE_VALORORIGINAL'
      Origin = 'REE_VALORORIGINAL'
      Precision = 18
    end
    object TBReceberREE_VALORPAGO: TFMTBCDField
      FieldName = 'REE_VALORPAGO'
      Origin = 'REE_VALORPAGO'
      Precision = 18
    end
    object TBReceberREE_VALORSEMDESCONTO: TFMTBCDField
      FieldName = 'REE_VALORSEMDESCONTO'
      Origin = 'REE_VALORSEMDESCONTO'
      Precision = 18
    end
    object TBReceberREE_VENDA: TIntegerField
      FieldName = 'REE_VENDA'
      Origin = 'REE_VENDA'
    end
    object TBReceberREE_VENDEDOR: TIntegerField
      FieldName = 'REE_VENDEDOR'
      Origin = 'REE_VENDEDOR'
      Required = True
    end
    object TBReceberCLI_BAIRROCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BAIRROCOB'
      Origin = 'CLI_BAIRROCOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBReceberCLI_CEPCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CEPCOB'
      Origin = 'CLI_CEPCOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object TBReceberCLI_CIDADECOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECOB'
      Origin = 'CLI_CIDADECOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBReceberCLI_CIDADECODIGOCOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = 'CLI_CIDADECODIGOCOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCLI_CNPJCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNPJCOB'
      Origin = 'CLI_CNPJCOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCLI_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCLI_ENDERECOCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENDERECOCOB'
      Origin = 'CLI_ENDERECOCOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TBReceberCLI_ESTADOCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCOB'
      Origin = 'CLI_ESTADOCOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object TBReceberCLI_ESTADOCODIGOCOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = 'CLI_ESTADOCODIGOCOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBReceberCLI_NUMEROCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NUMEROCOB'
      Origin = 'CLI_NUMEROCOB'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object TBReceberCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBReceberCON_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CODIGO'
      Origin = 'CON_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBReceberCON_SALDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CON_SALDO'
      Origin = 'CON_SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object TBReceberREC_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REC_CODIGO'
      Origin = 'REC_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberREC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TBReceberVEN_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBReceberVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRReceber: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 360
    Top = 336
  end
  object TBCondicoes: TFDQuery
    Connection = FDConnection1
    Transaction = TRCondicoes
    SQL.Strings = (
      'select'
      'CPG_ATUALIZAR,'
      'CPG_BAIXARPRIMEIRAPARC,'
      'CPG_CODIGO,'
      'CPG_CONTA,'
      'CPG_CUPOM,'
      'CPG_DESCPORC,'
      'CPG_DESCRICAO,'
      'CPG_DESCRICAOCUPOM,'
      'CPG_DTATUALIZACAO,'
      'CPG_DTCADASTRO,'
      'CPG_FORMAPAGTO,'
      'CPG_HRATUALIZACAO,'
      'CPG_HRCADASTRO,'
      'CPG_MEIOPAGAMENTO,'
      'CPG_MENSAL,'
      'CPG_MOBILE,'
      'CPG_PARCELASIGUAIS,'
      'CPG_STATUS,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TOTALPARCELAS,'
      'CPG_TOTALPORCENTAGEM,'
      'CPG_USUARIO,'
      'CON_NOME'
      'from CONDICOES'
      'left join CONTAS on CPG_CONTA=CON_CODIGO'
      'where CPG_CODIGO=:codigo'
      'order by CPG_CODIGO'
      '')
    Left = 296
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBCondicoesCPG_ATUALIZAR: TStringField
      FieldName = 'CPG_ATUALIZAR'
      Origin = 'CPG_ATUALIZAR'
      Size = 1
    end
    object TBCondicoesCPG_BAIXARPRIMEIRAPARC: TStringField
      FieldName = 'CPG_BAIXARPRIMEIRAPARC'
      Origin = 'CPG_BAIXARPRIMEIRAPARC'
      Size = 1
    end
    object TBCondicoesCPG_CODIGO: TIntegerField
      FieldName = 'CPG_CODIGO'
      Origin = 'CPG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCondicoesCPG_CONTA: TIntegerField
      FieldName = 'CPG_CONTA'
      Origin = 'CPG_CONTA'
      Required = True
    end
    object TBCondicoesCPG_CUPOM: TStringField
      FieldName = 'CPG_CUPOM'
      Origin = 'CPG_CUPOM'
      Size = 1
    end
    object TBCondicoesCPG_DESCPORC: TFMTBCDField
      FieldName = 'CPG_DESCPORC'
      Origin = 'CPG_DESCPORC'
      Precision = 18
    end
    object TBCondicoesCPG_DESCRICAO: TStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      Size = 50
    end
    object TBCondicoesCPG_DESCRICAOCUPOM: TStringField
      FieldName = 'CPG_DESCRICAOCUPOM'
      Origin = 'CPG_DESCRICAOCUPOM'
    end
    object TBCondicoesCPG_DTATUALIZACAO: TDateField
      FieldName = 'CPG_DTATUALIZACAO'
      Origin = 'CPG_DTATUALIZACAO'
    end
    object TBCondicoesCPG_DTCADASTRO: TDateField
      FieldName = 'CPG_DTCADASTRO'
      Origin = 'CPG_DTCADASTRO'
    end
    object TBCondicoesCPG_FORMAPAGTO: TStringField
      FieldName = 'CPG_FORMAPAGTO'
      Origin = 'CPG_FORMAPAGTO'
      Size = 15
    end
    object TBCondicoesCPG_HRATUALIZACAO: TTimeField
      FieldName = 'CPG_HRATUALIZACAO'
      Origin = 'CPG_HRATUALIZACAO'
    end
    object TBCondicoesCPG_HRCADASTRO: TTimeField
      FieldName = 'CPG_HRCADASTRO'
      Origin = 'CPG_HRCADASTRO'
    end
    object TBCondicoesCPG_MEIOPAGAMENTO: TStringField
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      Size = 50
    end
    object TBCondicoesCPG_MENSAL: TStringField
      FieldName = 'CPG_MENSAL'
      Origin = 'CPG_MENSAL'
      Size = 1
    end
    object TBCondicoesCPG_MOBILE: TStringField
      FieldName = 'CPG_MOBILE'
      Origin = 'CPG_MOBILE'
      Size = 1
    end
    object TBCondicoesCPG_PARCELASIGUAIS: TStringField
      FieldName = 'CPG_PARCELASIGUAIS'
      Origin = 'CPG_PARCELASIGUAIS'
      Size = 1
    end
    object TBCondicoesCPG_STATUS: TStringField
      FieldName = 'CPG_STATUS'
      Origin = 'CPG_STATUS'
      Size = 1
    end
    object TBCondicoesCPG_TIPOINTEGRACAO: TStringField
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      Size = 30
    end
    object TBCondicoesCPG_TOTALPARCELAS: TIntegerField
      FieldName = 'CPG_TOTALPARCELAS'
      Origin = 'CPG_TOTALPARCELAS'
    end
    object TBCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField
      FieldName = 'CPG_TOTALPORCENTAGEM'
      Origin = 'CPG_TOTALPORCENTAGEM'
      Precision = 18
    end
    object TBCondicoesCPG_USUARIO: TStringField
      FieldName = 'CPG_USUARIO'
      Origin = 'CPG_USUARIO'
    end
    object TBCondicoesCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRCondicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 296
    Top = 144
  end
  object TBCondicoesItens: TFDQuery
    Connection = FDConnection1
    Transaction = TRCondicoesItens
    SQL.Strings = (
      'select * from CONDICOESITENS'
      'where CPI_CONDICAO=:CPG_CODIGO'
      'order by CPI_DIAS'
      '')
    Left = 360
    Top = 96
    ParamData = <
      item
        Name = 'CPG_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCondicoesItensCPI_CODIGO: TIntegerField
      FieldName = 'CPI_CODIGO'
      Origin = 'CPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCondicoesItensCPI_CONDICAO: TIntegerField
      FieldName = 'CPI_CONDICAO'
      Origin = 'CPI_CONDICAO'
      Required = True
    end
    object TBCondicoesItensCPI_DIAS: TIntegerField
      FieldName = 'CPI_DIAS'
      Origin = 'CPI_DIAS'
      Required = True
    end
    object TBCondicoesItensCPI_PORCENTAGEM: TFMTBCDField
      FieldName = 'CPI_PORCENTAGEM'
      Origin = 'CPI_PORCENTAGEM'
      Required = True
      Precision = 18
    end
  end
  object TRCondicoesItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 360
    Top = 144
  end
  object TRDateTime: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 536
    Top = 24
  end
  object QYDateTime: TFDQuery
    Connection = FDConnection1
    Transaction = TRDateTime
    SQL.Strings = (
      
        'SELECT CAST('#39'NOW'#39' AS DATE) as DATA, CAST('#39'NOW'#39' AS TIME) as HORA ' +
        'FROM RDB$DATABASE'
      '')
    Left = 504
    Top = 24
    object QYDateTimeDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYDateTimeHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TBClassFiscal: TFDQuery
    Connection = FDConnection1
    Transaction = TRClassFiscal
    SQL.Strings = (
      'select * from CLASSFISCAL '
      'where CLF_CODIGO=:codigo and CLF_EXCECAO=:excecao'
      'order by CLF_CODIGO'
      '')
    Left = 168
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EXCECAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBClassFiscalCLF_ALIQUOTAESTADUAL: TFMTBCDField
      FieldName = 'CLF_ALIQUOTAESTADUAL'
      Origin = 'CLF_ALIQUOTAESTADUAL'
      Precision = 18
    end
    object TBClassFiscalCLF_ALIQUOTAIMPORTACAO: TFMTBCDField
      FieldName = 'CLF_ALIQUOTAIMPORTACAO'
      Origin = 'CLF_ALIQUOTAIMPORTACAO'
      Precision = 18
    end
    object TBClassFiscalCLF_ALIQUOTAMUNICIPAL: TFMTBCDField
      FieldName = 'CLF_ALIQUOTAMUNICIPAL'
      Origin = 'CLF_ALIQUOTAMUNICIPAL'
      Precision = 18
    end
    object TBClassFiscalCLF_ALIQUOTANACIONAL: TFMTBCDField
      FieldName = 'CLF_ALIQUOTANACIONAL'
      Origin = 'CLF_ALIQUOTANACIONAL'
      Precision = 18
    end
    object TBClassFiscalCLF_CODIGO: TStringField
      FieldName = 'CLF_CODIGO'
      Origin = 'CLF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClassFiscalCLF_DESCRICAO: TStringField
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      Size = 120
    end
    object TBClassFiscalCLF_DTATUALIZACAO: TDateField
      FieldName = 'CLF_DTATUALIZACAO'
      Origin = 'CLF_DTATUALIZACAO'
    end
    object TBClassFiscalCLF_DTCADASTRO: TDateField
      FieldName = 'CLF_DTCADASTRO'
      Origin = 'CLF_DTCADASTRO'
    end
    object TBClassFiscalCLF_EXCECAO: TIntegerField
      FieldName = 'CLF_EXCECAO'
      Origin = 'CLF_EXCECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClassFiscalCLF_HRATUALIZACAO: TTimeField
      FieldName = 'CLF_HRATUALIZACAO'
      Origin = 'CLF_HRATUALIZACAO'
    end
    object TBClassFiscalCLF_HRCADASTRO: TTimeField
      FieldName = 'CLF_HRCADASTRO'
      Origin = 'CLF_HRCADASTRO'
    end
    object TBClassFiscalCLF_USUARIO: TStringField
      FieldName = 'CLF_USUARIO'
      Origin = 'CLF_USUARIO'
    end
    object TBClassFiscalCLF_VERSAO: TStringField
      FieldName = 'CLF_VERSAO'
      Origin = 'CLF_VERSAO'
      Size = 10
    end
    object TBClassFiscalCLF_VIGENCIAFIM: TDateField
      FieldName = 'CLF_VIGENCIAFIM'
      Origin = 'CLF_VIGENCIAFIM'
    end
    object TBClassFiscalCLF_VIGENCIAINI: TDateField
      FieldName = 'CLF_VIGENCIAINI'
      Origin = 'CLF_VIGENCIAINI'
    end
  end
  object TRClassFiscal: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 168
    Top = 144
  end
  object TBAliquotas: TFDQuery
    Connection = FDConnection1
    Transaction = TRAliquotas
    SQL.Strings = (
      'select * from ALIQUOTAS where ALI_ESTADO=:codigo'
      '')
    Left = 40
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBAliquotasALI_ALIQCBS: TFMTBCDField
      FieldName = 'ALI_ALIQCBS'
      Origin = 'ALI_ALIQCBS'
      Precision = 18
    end
    object TBAliquotasALI_ALIQFCP: TFMTBCDField
      FieldName = 'ALI_ALIQFCP'
      Origin = 'ALI_ALIQFCP'
      Precision = 18
    end
    object TBAliquotasALI_ALIQFCPST: TFMTBCDField
      FieldName = 'ALI_ALIQFCPST'
      Origin = 'ALI_ALIQFCPST'
      Precision = 18
    end
    object TBAliquotasALI_ALIQIBSMUN: TFMTBCDField
      FieldName = 'ALI_ALIQIBSMUN'
      Origin = 'ALI_ALIQIBSMUN'
      Precision = 18
    end
    object TBAliquotasALI_ALIQIBSUF: TFMTBCDField
      FieldName = 'ALI_ALIQIBSUF'
      Origin = 'ALI_ALIQIBSUF'
      Precision = 18
    end
    object TBAliquotasALI_ALIQICMSADICST: TFMTBCDField
      FieldName = 'ALI_ALIQICMSADICST'
      Origin = 'ALI_ALIQICMSADICST'
      Precision = 18
    end
    object TBAliquotasALI_ALIQICMSINTER: TFMTBCDField
      FieldName = 'ALI_ALIQICMSINTER'
      Origin = 'ALI_ALIQICMSINTER'
      Precision = 18
    end
    object TBAliquotasALI_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'ALI_ALIQICMSINTERPART'
      Origin = 'ALI_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBAliquotasALI_ALIQICMSRED: TFMTBCDField
      FieldName = 'ALI_ALIQICMSRED'
      Origin = 'ALI_ALIQICMSRED'
      Precision = 18
    end
    object TBAliquotasALI_ALIQICMSST: TFMTBCDField
      FieldName = 'ALI_ALIQICMSST'
      Origin = 'ALI_ALIQICMSST'
      Precision = 18
    end
    object TBAliquotasALI_ALIQUOTA: TFMTBCDField
      FieldName = 'ALI_ALIQUOTA'
      Origin = 'ALI_ALIQUOTA'
      Required = True
      Precision = 18
    end
    object TBAliquotasALI_ESTADO: TStringField
      FieldName = 'ALI_ESTADO'
      Origin = 'ALI_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object TBAliquotasALI_IEST: TStringField
      FieldName = 'ALI_IEST'
      Origin = 'ALI_IEST'
    end
    object TBAliquotasALI_NOMEESTADO: TStringField
      FieldName = 'ALI_NOMEESTADO'
      Origin = 'ALI_NOMEESTADO'
      Size = 80
    end
  end
  object TRAliquotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 40
    Top = 144
  end
  object DSVendas: TDataSource
    DataSet = TBVendas
    Left = 680
    Top = 432
  end
  object UPVendas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VENDAS'
      '(VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, '
      '  VED_BAIXAPOR, VED_BASECOFINS, VED_BASECOFINSST, '
      '  VED_BASEIBSCBS, VED_BASEICMS, VED_BASEICMSST, '
      '  VED_BASEII, VED_BASEIPI, VED_BASEIS, VED_BASEISS, '
      '  VED_BASEPIS, VED_BASEPISST, VED_CBSCREDPRES, '
      '  VED_CBSCREDPRESSUS, VED_CBSDEVOLUCAO, VED_CBSDIFERIMENTO, '
      '  VED_CBSMONO, VED_CBSMONORETENCAO, VED_CBSMONORETIDO, '
      '  VED_CBSVALOR, VED_CEP, VED_CFOP, VED_CFOPDESC, '
      '  VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, '
      '  VED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, '
      '  VED_COMISSAO, VED_COMISSAOPOR, VED_COMPLEMENTO, '
      '  VED_COMISSAOREP, VED_REPRESENTANTE, VED_TOTALCOMISSAOREP, '
      '  VED_CONDICAO, VED_CONDICAOMEMO, VED_CONFERIDO, '
      '  VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_CONTATO, '
      '  VED_CPF, VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, '
      '  VED_DESCPORCCLIENTE, VED_DESCPORCCONDICAO, VED_DESCVALOR, '
      '  VED_DESTACARIMPOSTOS, VED_DIAPREFERENCIAL, VED_DTATUALIZACAO, '
      '  VED_DTCADASTRO, VED_DTEMISSAO, VED_DTPRESTSERVICO, '
      '  VED_DTSAIDA, VED_ENDERECO, VED_ENTRADASAIDA, '
      '  VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, VED_ESTADOCODIGO, '
      '  VED_EXLOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, '
      '  VED_FONE1, VED_FORMAPAGTO, VED_FRETE, VED_GOVERNAMENTAL, '
      '  VED_GOVERNAMENTALALIQRED, VED_GOVERNAMENTALOP, '
      '  VED_HRATUALIZACAO, VED_HRCADASTRO, VED_IBSCREDPRES, '
      '  VED_IBSCREDPRESSUS, VED_IBSMONO, VED_IBSMONORETENCAO, '
      
        '  VED_IBSMONORETIDO, VED_IBSMUNDEVOLUCAO, VED_IBSMUNDIFERIMENTO,' +
        ' '
      '  VED_IBSMUNVALOR, VED_IBSUFDEVOLUCAO, VED_IBSUFDIFERIMENTO, '
      '  VED_IBSUFVALOR, VED_IBSVALOR, VED_IDESTRANGEIRO, '
      '  VED_IE, VED_INFOADICFISCO, VED_INFOCOMPLEMENTAR, '
      '  VED_LACRES, VED_LUCROPORC, VED_LUCROVALOR, '
      '  VED_MANUAL, VED_MARCA, VED_MOVIMENTAESTOQUE, '
      '  VED_MOVIMENTAFINANCEIRO, VED_NFCE, VED_NFE, '
      '  VED_NOME, VED_NOTA, VED_NOTACREDITO, VED_NOTADEBITO, '
      '  VED_NUMERO, VED_OBSERVACOES, VED_PAIS, VED_PAISCODIGO, '
      '  VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_PESOLIQ, '
      '  VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, '
      '  VED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, '
      '  VED_TABELAPRECO, VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, '
      '  VED_TIPOOPERACAO, VED_TOTALADUANA, VED_TOTALBRUTO, '
      '  VED_TOTALCOFINS, VED_TOTALCOFINSST, VED_TOTALCOMISSAO, '
      '  VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS, '
      '  VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, '
      '  VED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, '
      '  VED_TOTALIPI, VED_TOTALIS, VED_TOTALISS, '
      
        '  VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, VED_TOTALISSDESCINC' +
        'OND, '
      '  VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOTALITENS, '
      '  VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, '
      '  VED_TOTALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, '
      
        '  VED_TOTALTRIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSM' +
        'UN, '
      '  VED_TRANSPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, '
      '  VED_TRANSPEMAIL, VED_TRANSPENDERECO, VED_TRANSPESTADO, '
      '  VED_TRANSPFONE, VED_TRANSPIE, VED_TRANSPNOME, '
      '  VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES, '
      '  VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, '
      '  VED_VALORTOTALRTC, VED_VEICULOPLACA, VED_VEICULOPLACAUF, '
      '  VED_VEICULORNTC, VED_VENDEDOR, VED_VIAINTERNET, '
      '  VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOLUMESNUM)'
      
        'VALUES (:NEW_VED_ALIQICMSCREDSN, :NEW_VED_BAIRRO, :NEW_VED_BAIXA' +
        'DATA, '
      
        '  :NEW_VED_BAIXAPOR, :NEW_VED_BASECOFINS, :NEW_VED_BASECOFINSST,' +
        ' '
      '  :NEW_VED_BASEIBSCBS, :NEW_VED_BASEICMS, :NEW_VED_BASEICMSST, '
      
        '  :NEW_VED_BASEII, :NEW_VED_BASEIPI, :NEW_VED_BASEIS, :NEW_VED_B' +
        'ASEISS, '
      '  :NEW_VED_BASEPIS, :NEW_VED_BASEPISST, :NEW_VED_CBSCREDPRES, '
      
        '  :NEW_VED_CBSCREDPRESSUS, :NEW_VED_CBSDEVOLUCAO, :NEW_VED_CBSDI' +
        'FERIMENTO, '
      
        '  :NEW_VED_CBSMONO, :NEW_VED_CBSMONORETENCAO, :NEW_VED_CBSMONORE' +
        'TIDO, '
      
        '  :NEW_VED_CBSVALOR, :NEW_VED_CEP, :NEW_VED_CFOP, :NEW_VED_CFOPD' +
        'ESC, '
      '  :NEW_VED_CIDADE, :NEW_VED_CIDADECODIGO, :NEW_VED_CLIENTE, '
      '  :NEW_VED_CNPJ, gen_id(GEN_VENDAS,1), :NEW_VED_CODIMPORTACAO, '
      
        '  :NEW_VED_COMISSAO, :NEW_VED_COMISSAOPOR, :NEW_VED_COMPLEMENTO,' +
        ' '
      
        '  :NEW_VED_COMISSAOREP, :NEW_VED_REPRESENTANTE, :NEW_VED_TOTALCO' +
        'MISSAOREP, '
      '  :NEW_VED_CONDICAO, :NEW_VED_CONDICAOMEMO, :NEW_VED_CONFERIDO, '
      
        '  :NEW_VED_CONFERIDODATA, :NEW_VED_CONFERIDOPOR, :NEW_VED_CONTAT' +
        'O, '
      
        '  :NEW_VED_CPF, :NEW_VED_CUSTOTOTAL, :NEW_VED_DAV, :NEW_VED_DESC' +
        'PORC, '
      
        '  :NEW_VED_DESCPORCCLIENTE, :NEW_VED_DESCPORCCONDICAO, :NEW_VED_' +
        'DESCVALOR, '
      
        '  :NEW_VED_DESTACARIMPOSTOS, :NEW_VED_DIAPREFERENCIAL, :NEW_VED_' +
        'DTATUALIZACAO, '
      
        '  :NEW_VED_DTCADASTRO, :NEW_VED_DTEMISSAO, :NEW_VED_DTPRESTSERVI' +
        'CO, '
      '  :NEW_VED_DTSAIDA, :NEW_VED_ENDERECO, :NEW_VED_ENTRADASAIDA, '
      
        '  :NEW_VED_ENTREGUE, :NEW_VED_ESPECIE, :NEW_VED_ESTADO, :NEW_VED' +
        '_ESTADOCODIGO, '
      '  :NEW_VED_EXLOCAL, :NEW_VED_EXPEDIDOPOR, :NEW_VED_EXUFSAIDA, '
      
        '  :NEW_VED_FONE1, :NEW_VED_FORMAPAGTO, :NEW_VED_FRETE, :NEW_VED_' +
        'GOVERNAMENTAL, '
      '  :NEW_VED_GOVERNAMENTALALIQRED, :NEW_VED_GOVERNAMENTALOP, '
      
        '  :NEW_VED_HRATUALIZACAO, :NEW_VED_HRCADASTRO, :NEW_VED_IBSCREDP' +
        'RES, '
      
        '  :NEW_VED_IBSCREDPRESSUS, :NEW_VED_IBSMONO, :NEW_VED_IBSMONORET' +
        'ENCAO, '
      
        '  :NEW_VED_IBSMONORETIDO, :NEW_VED_IBSMUNDEVOLUCAO, :NEW_VED_IBS' +
        'MUNDIFERIMENTO, '
      
        '  :NEW_VED_IBSMUNVALOR, :NEW_VED_IBSUFDEVOLUCAO, :NEW_VED_IBSUFD' +
        'IFERIMENTO, '
      
        '  :NEW_VED_IBSUFVALOR, :NEW_VED_IBSVALOR, :NEW_VED_IDESTRANGEIRO' +
        ', '
      
        '  :NEW_VED_IE, :NEW_VED_INFOADICFISCO, :NEW_VED_INFOCOMPLEMENTAR' +
        ', '
      '  :NEW_VED_LACRES, :NEW_VED_LUCROPORC, :NEW_VED_LUCROVALOR, '
      '  :NEW_VED_MANUAL, :NEW_VED_MARCA, :NEW_VED_MOVIMENTAESTOQUE, '
      '  :NEW_VED_MOVIMENTAFINANCEIRO, :NEW_VED_NFCE, :NEW_VED_NFE, '
      
        '  :NEW_VED_NOME, :NEW_VED_NOTA, :NEW_VED_NOTACREDITO, :NEW_VED_N' +
        'OTADEBITO, '
      
        '  :NEW_VED_NUMERO, :NEW_VED_OBSERVACOES, :NEW_VED_PAIS, :NEW_VED' +
        '_PAISCODIGO, '
      '  :NEW_VED_PEDIDOCLIENTE, :NEW_VED_PESOBRUTO, :NEW_VED_PESOLIQ, '
      
        '  :NEW_VED_REBOQUEPLACA, :NEW_VED_REBOQUEPLACAUF, :NEW_VED_REBOQ' +
        'UERNTC, '
      
        '  :NEW_VED_RG, :NEW_VED_SEQUENCIAITEM, :NEW_VED_STATUS, :NEW_VED' +
        '_SUFRAMA, '
      
        '  :NEW_VED_TABELAPRECO, :NEW_VED_TIPOATENDIMENTO, :NEW_VED_TIPOC' +
        'ONSUMIDOR, '
      
        '  :NEW_VED_TIPOOPERACAO, :NEW_VED_TOTALADUANA, :NEW_VED_TOTALBRU' +
        'TO, '
      
        '  :NEW_VED_TOTALCOFINS, :NEW_VED_TOTALCOFINSST, :NEW_VED_TOTALCO' +
        'MISSAO, '
      '  :NEW_VED_TOTALFCP, :NEW_VED_TOTALFCPST, :NEW_VED_TOTALICMS, '
      
        '  :NEW_VED_TOTALICMSCREDSN, :NEW_VED_TOTALICMSST, :NEW_VED_TOTAL' +
        'ICMSUFDEST, '
      
        '  :NEW_VED_TOTALICMSUFREMET, :NEW_VED_TOTALII, :NEW_VED_TOTALIOF' +
        ', '
      '  :NEW_VED_TOTALIPI, :NEW_VED_TOTALIS, :NEW_VED_TOTALISS, '
      
        '  :NEW_VED_TOTALISSDEDUCAO, :NEW_VED_TOTALISSDESCCOND, :NEW_VED_' +
        'TOTALISSDESCINCOND, '
      
        '  :NEW_VED_TOTALISSOUTROS, :NEW_VED_TOTALISSRETENCAO, :NEW_VED_T' +
        'OTALITENS, '
      
        '  :NEW_VED_TOTALPIS, :NEW_VED_TOTALPISST, :NEW_VED_TOTALPRODUTOS' +
        ', '
      
        '  :NEW_VED_TOTALSERVICOS, :NEW_VED_TOTALTRIBUTOS, :NEW_VED_TOTAL' +
        'TRIBUTOSEST, '
      
        '  :NEW_VED_TOTALTRIBUTOSFED, :NEW_VED_TOTALTRIBUTOSIMP, :NEW_VED' +
        '_TOTALTRIBUTOSMUN, '
      
        '  :NEW_VED_TRANSPCIDADE, :NEW_VED_TRANSPCNPJ, :NEW_VED_TRANSPCPF' +
        ', '
      
        '  :NEW_VED_TRANSPEMAIL, :NEW_VED_TRANSPENDERECO, :NEW_VED_TRANSP' +
        'ESTADO, '
      '  :NEW_VED_TRANSPFONE, :NEW_VED_TRANSPIE, :NEW_VED_TRANSPNOME, '
      
        '  :NEW_VED_TRANSPORTADORA, :NEW_VED_USUARIO, :NEW_VED_VALORDESPA' +
        'CES, '
      
        '  :NEW_VED_VALORFRETE, :NEW_VED_VALORSEGURO, :NEW_VED_VALORTOTAL' +
        ', '
      
        '  :NEW_VED_VALORTOTALRTC, :NEW_VED_VEICULOPLACA, :NEW_VED_VEICUL' +
        'OPLACAUF, '
      
        '  :NEW_VED_VEICULORNTC, :NEW_VED_VENDEDOR, :NEW_VED_VIAINTERNET,' +
        ' '
      
        '  :NEW_VED_VIAINTERNETSTATUS, :NEW_VED_VOLUMES, :NEW_VED_VOLUMES' +
        'NUM)'
      
        'RETURNING VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAI' +
        'XAPOR, VED_BASECOFINS, VED_BASECOFINSST, VED_BASEIBSCBS, VED_BAS' +
        'EICMS, VED_BASEICMSST, VED_BASEII, VED_BASEIPI, VED_BASEIS, VED_' +
        'BASEISS, VED_BASEPIS, VED_BASEPISST, VED_CBSCREDPRES, VED_CBSCRE' +
        'DPRESSUS, VED_CBSDEVOLUCAO, VED_CBSDIFERIMENTO, VED_CBSMONO, VED' +
        '_CBSMONORETENCAO, VED_CBSMONORETIDO, VED_CBSVALOR, VED_CEP, VED_' +
        'CFOP, VED_CFOPDESC, VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, V' +
        'ED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, VED_COMISSAO, VED_COMISS' +
        'AOPOR, VED_COMPLEMENTO, VED_CONDICAO, VED_CONDICAOMEMO, VED_CONF' +
        'ERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_CONTATO, VED_CPF' +
        ', VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, VED_DESCPORCCLIENTE, VE' +
        'D_DESCPORCCONDICAO, VED_DESCVALOR, VED_DESTACARIMPOSTOS, VED_DIA' +
        'PREFERENCIAL, VED_DTATUALIZACAO, VED_DTCADASTRO, VED_DTEMISSAO, ' +
        'VED_DTPRESTSERVICO, VED_DTSAIDA, VED_ENDERECO, VED_ENTRADASAIDA,' +
        ' VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, VED_ESTADOCODIGO, VED_EX' +
        'LOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, VED_FONE1, VED_FORMAPAGTO' +
        ', VED_FRETE, VED_GOVERNAMENTAL, VED_GOVERNAMENTALALIQRED, VED_GO' +
        'VERNAMENTALOP, VED_HRATUALIZACAO, VED_HRCADASTRO, VED_IBSCREDPRE' +
        'S, VED_IBSCREDPRESSUS, VED_IBSMONO, VED_IBSMONORETENCAO, VED_IBS' +
        'MONORETIDO, VED_IBSMUNDEVOLUCAO, VED_IBSMUNDIFERIMENTO, VED_IBSM' +
        'UNVALOR, VED_IBSUFDEVOLUCAO, VED_IBSUFDIFERIMENTO, VED_IBSUFVALO' +
        'R, VED_IBSVALOR, VED_IDESTRANGEIRO, VED_IE, VED_INFOADICFISCO, V' +
        'ED_INFOCOMPLEMENTAR, VED_LACRES, VED_LUCROPORC, VED_LUCROVALOR, ' +
        'VED_MANUAL, VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINANC' +
        'EIRO, VED_NFCE, VED_NFE, VED_NOME, VED_NOTA, VED_NOTACREDITO, VE' +
        'D_NOTADEBITO, VED_NUMERO, VED_OBSERVACOES, VED_PAIS, VED_PAISCOD' +
        'IGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_PESOLIQ, VED_REBOQUEP' +
        'LACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, VED_RG, VED_SEQUENCIA' +
        'ITEM, VED_STATUS, VED_SUFRAMA, VED_TABELAPRECO, VED_TIPOATENDIME' +
        'NTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, VED_TOTALADUANA, VED_' +
        'TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOFINSST, VED_TOTALCOMISSA' +
        'O, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS, VED_TOTALICMSCRE' +
        'DSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, VED_TOTALICMSUFREMET,' +
        ' VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI, VED_TOTALIS, VED_TOTAL' +
        'ISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, VED_TOTALISSDESC' +
        'INCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOTALITENS' +
        ', VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, VED_TOTALSERV' +
        'ICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, VED_TOTALTRIBUTOS' +
        'FED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSMUN, VED_TRANSPCIDAD' +
        'E, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMAIL, VED_TRANSPEND' +
        'ERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRANSPIE, VED_TRANS' +
        'PNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES, VED_V' +
        'ALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VALORTOTALRTC, V' +
        'ED_VEICULOPLACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VENDED' +
        'OR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOL' +
        'UMESNUM')
    ModifySQL.Strings = (
      'UPDATE VENDAS'
      
        'SET VED_ALIQICMSCREDSN = :NEW_VED_ALIQICMSCREDSN, VED_BAIRRO = :' +
        'NEW_VED_BAIRRO, '
      
        '  VED_BAIXADATA = :NEW_VED_BAIXADATA, VED_BAIXAPOR = :NEW_VED_BA' +
        'IXAPOR, '
      
        '  VED_BASECOFINS = :NEW_VED_BASECOFINS, VED_BASECOFINSST = :NEW_' +
        'VED_BASECOFINSST, '
      
        '  VED_BASEIBSCBS = :NEW_VED_BASEIBSCBS, VED_BASEICMS = :NEW_VED_' +
        'BASEICMS, '
      
        '  VED_BASEICMSST = :NEW_VED_BASEICMSST, VED_BASEII = :NEW_VED_BA' +
        'SEII, '
      '  VED_BASEIPI = :NEW_VED_BASEIPI, VED_BASEIS = :NEW_VED_BASEIS, '
      
        '  VED_BASEISS = :NEW_VED_BASEISS, VED_BASEPIS = :NEW_VED_BASEPIS' +
        ', '
      
        '  VED_BASEPISST = :NEW_VED_BASEPISST, VED_CBSCREDPRES = :NEW_VED' +
        '_CBSCREDPRES, '
      
        '  VED_CBSCREDPRESSUS = :NEW_VED_CBSCREDPRESSUS, VED_CBSDEVOLUCAO' +
        ' = :NEW_VED_CBSDEVOLUCAO, '
      
        '  VED_CBSDIFERIMENTO = :NEW_VED_CBSDIFERIMENTO, VED_CBSMONO = :N' +
        'EW_VED_CBSMONO, '
      
        '  VED_CBSMONORETENCAO = :NEW_VED_CBSMONORETENCAO, VED_CBSMONORET' +
        'IDO = :NEW_VED_CBSMONORETIDO, '
      '  VED_CBSVALOR = :NEW_VED_CBSVALOR, VED_CEP = :NEW_VED_CEP, '
      '  VED_CFOP = :NEW_VED_CFOP, VED_CFOPDESC = :NEW_VED_CFOPDESC, '
      
        '  VED_CIDADE = :NEW_VED_CIDADE, VED_CIDADECODIGO = :NEW_VED_CIDA' +
        'DECODIGO, '
      '  VED_CLIENTE = :NEW_VED_CLIENTE, VED_CNPJ = :NEW_VED_CNPJ, '
      
        '  VED_CODIGO = :NEW_VED_CODIGO, VED_CODIMPORTACAO = :NEW_VED_COD' +
        'IMPORTACAO, '
      
        '  VED_COMISSAO = :NEW_VED_COMISSAO, VED_COMISSAOPOR = :NEW_VED_C' +
        'OMISSAOPOR, '
      
        '  VED_COMISSAOREP = :NEW_VED_COMISSAOREP, VED_REPRESENTANTE = :N' +
        'EW_VED_REPRESENTANTE, '
      '  VED_TOTALCOMISSAOREP = :NEW_VED_TOTALCOMISSAOREP, '
      
        '  VED_COMPLEMENTO = :NEW_VED_COMPLEMENTO, VED_CONDICAO = :NEW_VE' +
        'D_CONDICAO, '
      
        '  VED_CONDICAOMEMO = :NEW_VED_CONDICAOMEMO, VED_CONFERIDO = :NEW' +
        '_VED_CONFERIDO, '
      
        '  VED_CONFERIDODATA = :NEW_VED_CONFERIDODATA, VED_CONFERIDOPOR =' +
        ' :NEW_VED_CONFERIDOPOR, '
      '  VED_CONTATO = :NEW_VED_CONTATO, VED_CPF = :NEW_VED_CPF, '
      '  VED_CUSTOTOTAL = :NEW_VED_CUSTOTOTAL, VED_DAV = :NEW_VED_DAV, '
      
        '  VED_DESCPORC = :NEW_VED_DESCPORC, VED_DESCPORCCLIENTE = :NEW_V' +
        'ED_DESCPORCCLIENTE, '
      
        '  VED_DESCPORCCONDICAO = :NEW_VED_DESCPORCCONDICAO, VED_DESCVALO' +
        'R = :NEW_VED_DESCVALOR, '
      
        '  VED_DESTACARIMPOSTOS = :NEW_VED_DESTACARIMPOSTOS, VED_DIAPREFE' +
        'RENCIAL = :NEW_VED_DIAPREFERENCIAL, '
      
        '  VED_DTATUALIZACAO = :NEW_VED_DTATUALIZACAO, VED_DTCADASTRO = :' +
        'NEW_VED_DTCADASTRO, '
      
        '  VED_DTEMISSAO = :NEW_VED_DTEMISSAO, VED_DTPRESTSERVICO = :NEW_' +
        'VED_DTPRESTSERVICO, '
      
        '  VED_DTSAIDA = :NEW_VED_DTSAIDA, VED_ENDERECO = :NEW_VED_ENDERE' +
        'CO, '
      
        '  VED_ENTRADASAIDA = :NEW_VED_ENTRADASAIDA, VED_ENTREGUE = :NEW_' +
        'VED_ENTREGUE, '
      '  VED_ESPECIE = :NEW_VED_ESPECIE, VED_ESTADO = :NEW_VED_ESTADO, '
      
        '  VED_ESTADOCODIGO = :NEW_VED_ESTADOCODIGO, VED_EXLOCAL = :NEW_V' +
        'ED_EXLOCAL, '
      
        '  VED_EXPEDIDOPOR = :NEW_VED_EXPEDIDOPOR, VED_EXUFSAIDA = :NEW_V' +
        'ED_EXUFSAIDA, '
      
        '  VED_FONE1 = :NEW_VED_FONE1, VED_FORMAPAGTO = :NEW_VED_FORMAPAG' +
        'TO, '
      
        '  VED_FRETE = :NEW_VED_FRETE, VED_GOVERNAMENTAL = :NEW_VED_GOVER' +
        'NAMENTAL, '
      '  VED_GOVERNAMENTALALIQRED = :NEW_VED_GOVERNAMENTALALIQRED, '
      
        '  VED_GOVERNAMENTALOP = :NEW_VED_GOVERNAMENTALOP, VED_HRATUALIZA' +
        'CAO = :NEW_VED_HRATUALIZACAO, '
      
        '  VED_HRCADASTRO = :NEW_VED_HRCADASTRO, VED_IBSCREDPRES = :NEW_V' +
        'ED_IBSCREDPRES, '
      
        '  VED_IBSCREDPRESSUS = :NEW_VED_IBSCREDPRESSUS, VED_IBSMONO = :N' +
        'EW_VED_IBSMONO, '
      
        '  VED_IBSMONORETENCAO = :NEW_VED_IBSMONORETENCAO, VED_IBSMONORET' +
        'IDO = :NEW_VED_IBSMONORETIDO, '
      
        '  VED_IBSMUNDEVOLUCAO = :NEW_VED_IBSMUNDEVOLUCAO, VED_IBSMUNDIFE' +
        'RIMENTO = :NEW_VED_IBSMUNDIFERIMENTO, '
      
        '  VED_IBSMUNVALOR = :NEW_VED_IBSMUNVALOR, VED_IBSUFDEVOLUCAO = :' +
        'NEW_VED_IBSUFDEVOLUCAO, '
      
        '  VED_IBSUFDIFERIMENTO = :NEW_VED_IBSUFDIFERIMENTO, VED_IBSUFVAL' +
        'OR = :NEW_VED_IBSUFVALOR, '
      
        '  VED_IBSVALOR = :NEW_VED_IBSVALOR, VED_IDESTRANGEIRO = :NEW_VED' +
        '_IDESTRANGEIRO, '
      
        '  VED_IE = :NEW_VED_IE, VED_INFOADICFISCO = :NEW_VED_INFOADICFIS' +
        'CO, '
      
        '  VED_INFOCOMPLEMENTAR = :NEW_VED_INFOCOMPLEMENTAR, VED_LACRES =' +
        ' :NEW_VED_LACRES, '
      
        '  VED_LUCROPORC = :NEW_VED_LUCROPORC, VED_LUCROVALOR = :NEW_VED_' +
        'LUCROVALOR, '
      '  VED_MANUAL = :NEW_VED_MANUAL, VED_MARCA = :NEW_VED_MARCA, '
      
        '  VED_MOVIMENTAESTOQUE = :NEW_VED_MOVIMENTAESTOQUE, VED_MOVIMENT' +
        'AFINANCEIRO = :NEW_VED_MOVIMENTAFINANCEIRO, '
      
        '  VED_NFCE = :NEW_VED_NFCE, VED_NFE = :NEW_VED_NFE, VED_NOME = :' +
        'NEW_VED_NOME, '
      
        '  VED_NOTA = :NEW_VED_NOTA, VED_NOTACREDITO = :NEW_VED_NOTACREDI' +
        'TO, '
      
        '  VED_NOTADEBITO = :NEW_VED_NOTADEBITO, VED_NUMERO = :NEW_VED_NU' +
        'MERO, '
      
        '  VED_OBSERVACOES = :NEW_VED_OBSERVACOES, VED_PAIS = :NEW_VED_PA' +
        'IS, '
      
        '  VED_PAISCODIGO = :NEW_VED_PAISCODIGO, VED_PEDIDOCLIENTE = :NEW' +
        '_VED_PEDIDOCLIENTE, '
      
        '  VED_PESOBRUTO = :NEW_VED_PESOBRUTO, VED_PESOLIQ = :NEW_VED_PES' +
        'OLIQ, '
      
        '  VED_REBOQUEPLACA = :NEW_VED_REBOQUEPLACA, VED_REBOQUEPLACAUF =' +
        ' :NEW_VED_REBOQUEPLACAUF, '
      '  VED_REBOQUERNTC = :NEW_VED_REBOQUERNTC, VED_RG = :NEW_VED_RG, '
      
        '  VED_SEQUENCIAITEM = :NEW_VED_SEQUENCIAITEM, VED_STATUS = :NEW_' +
        'VED_STATUS, '
      
        '  VED_SUFRAMA = :NEW_VED_SUFRAMA, VED_TABELAPRECO = :NEW_VED_TAB' +
        'ELAPRECO, '
      
        '  VED_TIPOATENDIMENTO = :NEW_VED_TIPOATENDIMENTO, VED_TIPOCONSUM' +
        'IDOR = :NEW_VED_TIPOCONSUMIDOR, '
      
        '  VED_TIPOOPERACAO = :NEW_VED_TIPOOPERACAO, VED_TOTALADUANA = :N' +
        'EW_VED_TOTALADUANA, '
      
        '  VED_TOTALBRUTO = :NEW_VED_TOTALBRUTO, VED_TOTALCOFINS = :NEW_V' +
        'ED_TOTALCOFINS, '
      
        '  VED_TOTALCOFINSST = :NEW_VED_TOTALCOFINSST, VED_TOTALCOMISSAO ' +
        '= :NEW_VED_TOTALCOMISSAO, '
      
        '  VED_TOTALFCP = :NEW_VED_TOTALFCP, VED_TOTALFCPST = :NEW_VED_TO' +
        'TALFCPST, '
      
        '  VED_TOTALICMS = :NEW_VED_TOTALICMS, VED_TOTALICMSCREDSN = :NEW' +
        '_VED_TOTALICMSCREDSN, '
      
        '  VED_TOTALICMSST = :NEW_VED_TOTALICMSST, VED_TOTALICMSUFDEST = ' +
        ':NEW_VED_TOTALICMSUFDEST, '
      
        '  VED_TOTALICMSUFREMET = :NEW_VED_TOTALICMSUFREMET, VED_TOTALII ' +
        '= :NEW_VED_TOTALII, '
      
        '  VED_TOTALIOF = :NEW_VED_TOTALIOF, VED_TOTALIPI = :NEW_VED_TOTA' +
        'LIPI, '
      
        '  VED_TOTALIS = :NEW_VED_TOTALIS, VED_TOTALISS = :NEW_VED_TOTALI' +
        'SS, '
      
        '  VED_TOTALISSDEDUCAO = :NEW_VED_TOTALISSDEDUCAO, VED_TOTALISSDE' +
        'SCCOND = :NEW_VED_TOTALISSDESCCOND, '
      
        '  VED_TOTALISSDESCINCOND = :NEW_VED_TOTALISSDESCINCOND, VED_TOTA' +
        'LISSOUTROS = :NEW_VED_TOTALISSOUTROS, '
      
        '  VED_TOTALISSRETENCAO = :NEW_VED_TOTALISSRETENCAO, VED_TOTALITE' +
        'NS = :NEW_VED_TOTALITENS, '
      
        '  VED_TOTALPIS = :NEW_VED_TOTALPIS, VED_TOTALPISST = :NEW_VED_TO' +
        'TALPISST, '
      
        '  VED_TOTALPRODUTOS = :NEW_VED_TOTALPRODUTOS, VED_TOTALSERVICOS ' +
        '= :NEW_VED_TOTALSERVICOS, '
      
        '  VED_TOTALTRIBUTOS = :NEW_VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSE' +
        'ST = :NEW_VED_TOTALTRIBUTOSEST, '
      
        '  VED_TOTALTRIBUTOSFED = :NEW_VED_TOTALTRIBUTOSFED, VED_TOTALTRI' +
        'BUTOSIMP = :NEW_VED_TOTALTRIBUTOSIMP, '
      
        '  VED_TOTALTRIBUTOSMUN = :NEW_VED_TOTALTRIBUTOSMUN, VED_TRANSPCI' +
        'DADE = :NEW_VED_TRANSPCIDADE, '
      
        '  VED_TRANSPCNPJ = :NEW_VED_TRANSPCNPJ, VED_TRANSPCPF = :NEW_VED' +
        '_TRANSPCPF, '
      
        '  VED_TRANSPEMAIL = :NEW_VED_TRANSPEMAIL, VED_TRANSPENDERECO = :' +
        'NEW_VED_TRANSPENDERECO, '
      
        '  VED_TRANSPESTADO = :NEW_VED_TRANSPESTADO, VED_TRANSPFONE = :NE' +
        'W_VED_TRANSPFONE, '
      
        '  VED_TRANSPIE = :NEW_VED_TRANSPIE, VED_TRANSPNOME = :NEW_VED_TR' +
        'ANSPNOME, '
      
        '  VED_TRANSPORTADORA = :NEW_VED_TRANSPORTADORA, VED_USUARIO = :N' +
        'EW_VED_USUARIO, '
      
        '  VED_VALORDESPACES = :NEW_VED_VALORDESPACES, VED_VALORFRETE = :' +
        'NEW_VED_VALORFRETE, '
      
        '  VED_VALORSEGURO = :NEW_VED_VALORSEGURO, VED_VALORTOTAL = :NEW_' +
        'VED_VALORTOTAL, '
      
        '  VED_VALORTOTALRTC = :NEW_VED_VALORTOTALRTC, VED_VEICULOPLACA =' +
        ' :NEW_VED_VEICULOPLACA, '
      
        '  VED_VEICULOPLACAUF = :NEW_VED_VEICULOPLACAUF, VED_VEICULORNTC ' +
        '= :NEW_VED_VEICULORNTC, '
      
        '  VED_VENDEDOR = :NEW_VED_VENDEDOR, VED_VIAINTERNET = :NEW_VED_V' +
        'IAINTERNET, '
      
        '  VED_VIAINTERNETSTATUS = :NEW_VED_VIAINTERNETSTATUS, VED_VOLUME' +
        'S = :NEW_VED_VOLUMES, '
      '  VED_VOLUMESNUM = :NEW_VED_VOLUMESNUM'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO'
      
        'RETURNING VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAI' +
        'XAPOR, VED_BASECOFINS, VED_BASECOFINSST, VED_BASEIBSCBS, VED_BAS' +
        'EICMS, VED_BASEICMSST, VED_BASEII, VED_BASEIPI, VED_BASEIS, VED_' +
        'BASEISS, VED_BASEPIS, VED_BASEPISST, VED_CBSCREDPRES, VED_CBSCRE' +
        'DPRESSUS, VED_CBSDEVOLUCAO, VED_CBSDIFERIMENTO, VED_CBSMONO, VED' +
        '_CBSMONORETENCAO, VED_CBSMONORETIDO, VED_CBSVALOR, VED_CEP, VED_' +
        'CFOP, VED_CFOPDESC, VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, V' +
        'ED_CNPJ, VED_CODIGO, VED_CODIMPORTACAO, VED_COMISSAO, VED_COMISS' +
        'AOPOR, VED_COMPLEMENTO, VED_CONDICAO, VED_CONDICAOMEMO, VED_CONF' +
        'ERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_CONTATO, VED_CPF' +
        ', VED_CUSTOTOTAL, VED_DAV, VED_DESCPORC, VED_DESCPORCCLIENTE, VE' +
        'D_DESCPORCCONDICAO, VED_DESCVALOR, VED_DESTACARIMPOSTOS, VED_DIA' +
        'PREFERENCIAL, VED_DTATUALIZACAO, VED_DTCADASTRO, VED_DTEMISSAO, ' +
        'VED_DTPRESTSERVICO, VED_DTSAIDA, VED_ENDERECO, VED_ENTRADASAIDA,' +
        ' VED_ENTREGUE, VED_ESPECIE, VED_ESTADO, VED_ESTADOCODIGO, VED_EX' +
        'LOCAL, VED_EXPEDIDOPOR, VED_EXUFSAIDA, VED_FONE1, VED_FORMAPAGTO' +
        ', VED_FRETE, VED_GOVERNAMENTAL, VED_GOVERNAMENTALALIQRED, VED_GO' +
        'VERNAMENTALOP, VED_HRATUALIZACAO, VED_HRCADASTRO, VED_IBSCREDPRE' +
        'S, VED_IBSCREDPRESSUS, VED_IBSMONO, VED_IBSMONORETENCAO, VED_IBS' +
        'MONORETIDO, VED_IBSMUNDEVOLUCAO, VED_IBSMUNDIFERIMENTO, VED_IBSM' +
        'UNVALOR, VED_IBSUFDEVOLUCAO, VED_IBSUFDIFERIMENTO, VED_IBSUFVALO' +
        'R, VED_IBSVALOR, VED_IDESTRANGEIRO, VED_IE, VED_INFOADICFISCO, V' +
        'ED_INFOCOMPLEMENTAR, VED_LACRES, VED_LUCROPORC, VED_LUCROVALOR, ' +
        'VED_MANUAL, VED_MARCA, VED_MOVIMENTAESTOQUE, VED_MOVIMENTAFINANC' +
        'EIRO, VED_NFCE, VED_NFE, VED_NOME, VED_NOTA, VED_NOTACREDITO, VE' +
        'D_NOTADEBITO, VED_NUMERO, VED_OBSERVACOES, VED_PAIS, VED_PAISCOD' +
        'IGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, VED_PESOLIQ, VED_REBOQUEP' +
        'LACA, VED_REBOQUEPLACAUF, VED_REBOQUERNTC, VED_RG, VED_SEQUENCIA' +
        'ITEM, VED_STATUS, VED_SUFRAMA, VED_TABELAPRECO, VED_TIPOATENDIME' +
        'NTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, VED_TOTALADUANA, VED_' +
        'TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOFINSST, VED_TOTALCOMISSA' +
        'O, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS, VED_TOTALICMSCRE' +
        'DSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, VED_TOTALICMSUFREMET,' +
        ' VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI, VED_TOTALIS, VED_TOTAL' +
        'ISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDESCCOND, VED_TOTALISSDESC' +
        'INCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENCAO, VED_TOTALITENS' +
        ', VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTOS, VED_TOTALSERV' +
        'ICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, VED_TOTALTRIBUTOS' +
        'FED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSMUN, VED_TRANSPCIDAD' +
        'E, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMAIL, VED_TRANSPEND' +
        'ERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRANSPIE, VED_TRANS' +
        'PNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESPACES, VED_V' +
        'ALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VALORTOTALRTC, V' +
        'ED_VEICULOPLACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VENDED' +
        'OR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOL' +
        'UMESNUM')
    DeleteSQL.Strings = (
      'DELETE FROM VENDAS'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VED_ALIQICMSCREDSN, VED_BAIRRO, VED_BAIXADATA, VED_BAIXAP' +
        'OR, '
      
        '  VED_BASECOFINS, VED_BASECOFINSST, VED_BASEIBSCBS, VED_BASEICMS' +
        ', '
      
        '  VED_BASEICMSST, VED_BASEII, VED_BASEIPI, VED_BASEIS, VED_BASEI' +
        'SS, '
      
        '  VED_BASEPIS, VED_BASEPISST, VED_CBSCREDPRES, VED_CBSCREDPRESSU' +
        'S, '
      
        '  VED_CBSDEVOLUCAO, VED_CBSDIFERIMENTO, VED_CBSMONO, VED_CBSMONO' +
        'RETENCAO, '
      
        '  VED_CBSMONORETIDO, VED_CBSVALOR, VED_CEP, VED_CFOP, VED_CFOPDE' +
        'SC, '
      
        '  VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, VED_CNPJ, VED_CODIG' +
        'O, '
      
        '  VED_CODIMPORTACAO, VED_COMISSAO, VED_COMISSAOPOR, VED_COMPLEME' +
        'NTO, '
      
        '  VED_CONDICAO, VED_CONDICAOMEMO, VED_CONFERIDO, VED_CONFERIDODA' +
        'TA, '
      '  VED_CONFERIDOPOR, VED_CONTATO, VED_CPF, VED_CUSTOTOTAL, '
      
        '  VED_DAV, VED_DESCPORC, VED_DESCPORCCLIENTE, VED_DESCPORCCONDIC' +
        'AO, '
      '  VED_DESCVALOR, VED_DESTACARIMPOSTOS, VED_DIAPREFERENCIAL, '
      
        '  VED_DTATUALIZACAO, VED_DTCADASTRO, VED_DTEMISSAO, VED_DTPRESTS' +
        'ERVICO, '
      '  VED_DTSAIDA, VED_ENDERECO, VED_ENTRADASAIDA, VED_ENTREGUE, '
      '  VED_ESPECIE, VED_ESTADO, VED_ESTADOCODIGO, VED_EXLOCAL, '
      '  VED_EXPEDIDOPOR, VED_EXUFSAIDA, VED_FONE1, VED_FORMAPAGTO, '
      '  VED_FRETE, VED_GOVERNAMENTAL, VED_GOVERNAMENTALALIQRED, '
      '  VED_GOVERNAMENTALOP, VED_HRATUALIZACAO, VED_HRCADASTRO, '
      
        '  VED_IBSCREDPRES, VED_IBSCREDPRESSUS, VED_IBSMONO, VED_IBSMONOR' +
        'ETENCAO, '
      
        '  VED_IBSMONORETIDO, VED_IBSMUNDEVOLUCAO, VED_IBSMUNDIFERIMENTO,' +
        ' '
      '  VED_IBSMUNVALOR, VED_IBSUFDEVOLUCAO, VED_IBSUFDIFERIMENTO, '
      '  VED_IBSUFVALOR, VED_IBSVALOR, VED_IDESTRANGEIRO, VED_IE, '
      
        '  VED_INFOADICFISCO, VED_INFOCOMPLEMENTAR, VED_LACRES, VED_LUCRO' +
        'PORC, '
      '  VED_LUCROVALOR, VED_MANUAL, VED_MARCA, VED_MOVIMENTAESTOQUE, '
      
        '  VED_MOVIMENTAFINANCEIRO, VED_NFCE, VED_NFE, VED_NOME, VED_NOTA' +
        ', '
      '  VED_NOTACREDITO, VED_NOTADEBITO, VED_NUMERO, VED_OBSERVACOES, '
      '  VED_PAIS, VED_PAISCODIGO, VED_PEDIDOCLIENTE, VED_PESOBRUTO, '
      
        '  VED_PESOLIQ, VED_REBOQUEPLACA, VED_REBOQUEPLACAUF, VED_REBOQUE' +
        'RNTC, '
      
        '  VED_RG, VED_SEQUENCIAITEM, VED_STATUS, VED_SUFRAMA, VED_TABELA' +
        'PRECO, '
      '  VED_TIPOATENDIMENTO, VED_TIPOCONSUMIDOR, VED_TIPOOPERACAO, '
      
        '  VED_TOTALADUANA, VED_TOTALBRUTO, VED_TOTALCOFINS, VED_TOTALCOF' +
        'INSST, '
      
        '  VED_TOTALCOMISSAO, VED_TOTALFCP, VED_TOTALFCPST, VED_TOTALICMS' +
        ', '
      '  VED_TOTALICMSCREDSN, VED_TOTALICMSST, VED_TOTALICMSUFDEST, '
      
        '  VED_TOTALICMSUFREMET, VED_TOTALII, VED_TOTALIOF, VED_TOTALIPI,' +
        ' '
      
        '  VED_TOTALIS, VED_TOTALISS, VED_TOTALISSDEDUCAO, VED_TOTALISSDE' +
        'SCCOND, '
      
        '  VED_TOTALISSDESCINCOND, VED_TOTALISSOUTROS, VED_TOTALISSRETENC' +
        'AO, '
      
        '  VED_TOTALITENS, VED_TOTALPIS, VED_TOTALPISST, VED_TOTALPRODUTO' +
        'S, '
      '  VED_TOTALSERVICOS, VED_TOTALTRIBUTOS, VED_TOTALTRIBUTOSEST, '
      
        '  VED_TOTALTRIBUTOSFED, VED_TOTALTRIBUTOSIMP, VED_TOTALTRIBUTOSM' +
        'UN, '
      
        '  VED_TRANSPCIDADE, VED_TRANSPCNPJ, VED_TRANSPCPF, VED_TRANSPEMA' +
        'IL, '
      
        '  VED_TRANSPENDERECO, VED_TRANSPESTADO, VED_TRANSPFONE, VED_TRAN' +
        'SPIE, '
      
        '  VED_TRANSPNOME, VED_TRANSPORTADORA, VED_USUARIO, VED_VALORDESP' +
        'ACES, '
      
        '  VED_VALORFRETE, VED_VALORSEGURO, VED_VALORTOTAL, VED_VALORTOTA' +
        'LRTC, '
      
        '  VED_VEICULOPLACA, VED_VEICULOPLACAUF, VED_VEICULORNTC, VED_VEN' +
        'DEDOR, '
      
        '  VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VED_VOLUMES, VED_VOLUM' +
        'ESNUM'
      'FROM VENDAS'
      'WHERE VED_CODIGO = :OLD_VED_CODIGO')
    Left = 680
    Top = 384
  end
  object UPVendasItens: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VENDASITENS'
      '(VEI_ALIQCBS, VEI_ALIQCBSCREDPRES, VEI_ALIQCBSDIF, '
      '  VEI_ALIQCBSEFE, VEI_ALIQCBSRED, VEI_ALIQCOFINS, '
      '  VEI_ALIQCOFINSST, VEI_ALIQFCP, VEI_ALIQFCPST, '
      '  VEI_ALIQIBSCREDPRES, VEI_ALIQIBSMUN, VEI_ALIQIBSMUNDIF, '
      '  VEI_ALIQIBSMUNEFE, VEI_ALIQIBSMUNRED, VEI_ALIQIBSUF, '
      '  VEI_ALIQIBSUFDIF, VEI_ALIQIBSUFEFE, VEI_ALIQIBSUFRED, '
      '  VEI_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, '
      '  VEI_ALIQICMSINTERPART, VEI_ALIQICMSRED, VEI_ALIQICMSST, '
      '  VEI_ALIQICMSSTRET, VEI_ALIQII, VEI_ALIQIPI, '
      '  VEI_ALIQIS, VEI_ALIQISESP, VEI_ALIQISS, VEI_ALIQPIS, '
      '  VEI_ALIQPISST, VEI_ALMOXARIFADO, VEI_BASECOFINS, '
      '  VEI_BASECOFINSST, VEI_BASEIBSCBS, VEI_BASEICMS, '
      '  VEI_BASEICMSRED, VEI_BASEICMSST, VEI_BASEICMSSTRET, '
      '  VEI_BASEII, VEI_BASEIPI, VEI_BASEIS, VEI_BASEISS, '
      '  VEI_BASEPIS, VEI_BASEPISST, VEI_BENEFICIO, '
      '  VEI_CBSCREDITOPRES, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, '
      '  VEI_CLASSFISCAL, VEI_CLASSTRIBIBSCBS, VEI_CLASSTRIBIS, '
      '  VEI_CODIGO, VEI_CODIGOBARRAS, VEI_CODIGOFAB, '
      '  VEI_COMISSAO, VEI_COMPLEMENTO, VEI_COMPOEBASEICMS, '
      '  VEI_COMISSAOREP, VEI_VALORCOMISSAOREP, '
      '  VEI_COMPOEBASEICMSST, VEI_COMPOETOTAL, VEI_CONVERSAO, '
      '  VEI_CSTCOFINS, VEI_CSTIBSCBS, VEI_CSTICMS, '
      '  VEI_CSTIPI, VEI_CSTIS, VEI_CSTPIS, VEI_DESCMAX, '
      '  VEI_DESCPORC, VEI_DESCRICAO, VEI_DESCVALOR, '
      '  VEI_DESONERACAO, VEI_DFEREF, VEI_DFEREFITEM, '
      '  VEI_DICNPJ, VEI_DIDATA, VEI_DIDESEMBARACODATA, '
      
        '  VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPORTADORC' +
        'OD, '
      '  VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, '
      '  VEI_DITRANSPORTE, VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, '
      '  VEI_EXCECAO, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK, '
      '  VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, '
      '  VEI_IBSCREDITOPRES, VEI_INCENTIVOISS, VEI_INDICADORISS, '
      '  VEI_INFOADICIONAL, VEI_LOCALIZACAO, VEI_LOTE, '
      '  VEI_LUCROPORC, VEI_LUCROVALOR, VEI_MODICMS, '
      '  VEI_MODICMSST, VEI_ORIGEM, VEI_PAISISS, VEI_PEDIDOCLIENTE, '
      '  VEI_PEDIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, '
      '  VEI_PRECOCUSTO, VEI_PRECOCUSTOTOTAL, VEI_PROCESSOISS, '
      '  VEI_PRODUTO, VEI_PRODUTOREAL, VEI_QUANTIDADE, '
      '  VEI_QUANTIDADETROCA, VEI_SEQUENCIA, VEI_SERVICOISS, '
      '  VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, '
      '  VEI_TIPOISS, VEI_UNIDADE, VEI_VALORACESSORIAS, '
      '  VEI_VALORADUANA, VEI_VALORCBS, VEI_VALORCBSCREDPRES, '
      '  VEI_VALORCBSCREDPRESSUS, VEI_VALORCBSDEV, VEI_VALORCBSDIF, '
      '  VEI_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALORCOMISSAO, '
      '  VEI_VALORFCP, VEI_VALORFCPST, VEI_VALORFRETE, '
      '  VEI_VALORIBS, VEI_VALORIBSCREDPRES, VEI_VALORIBSCREDPRESSUS, '
      '  VEI_VALORIBSMUN, VEI_VALORIBSMUNDEV, VEI_VALORIBSMUNDIF, '
      '  VEI_VALORIBSUF, VEI_VALORIBSUFDEV, VEI_VALORIBSUFDIF, '
      '  VEI_VALORICMS, VEI_VALORICMSCREDSN, VEI_VALORICMSDESONERADO, '
      '  VEI_VALORICMSST, VEI_VALORICMSSTRET, VEI_VALORICMSSUBSTITUTO, '
      '  VEI_VALORICMSUFDEST, VEI_VALORICMSUFREMET, VEI_VALORII, '
      '  VEI_VALORIOF, VEI_VALORIPI, VEI_VALORIS, '
      '  VEI_VALORISS, VEI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, '
      
        '  VEI_VALORISSDESCINCOND, VEI_VALORISSOUTROS, VEI_VALORISSRETENC' +
        'AO, '
      '  VEI_VALORPIS, VEI_VALORPISST, VEI_VALORSEGURO, '
      '  VEI_VALORTOTAL, VEI_VALORTOTALBRUTO, VEI_VALORTRIBUTOS, '
      
        '  VEI_VALORTRIBUTOSEST, VEI_VALORTRIBUTOSFED, VEI_VALORTRIBUTOSI' +
        'MP, '
      '  VEI_VALORTRIBUTOSMUN, VEI_VALORUNIT, VEI_VENDA)'
      
        'VALUES (:NEW_VEI_ALIQCBS, :NEW_VEI_ALIQCBSCREDPRES, :NEW_VEI_ALI' +
        'QCBSDIF, '
      
        '  :NEW_VEI_ALIQCBSEFE, :NEW_VEI_ALIQCBSRED, :NEW_VEI_ALIQCOFINS,' +
        ' '
      '  :NEW_VEI_ALIQCOFINSST, :NEW_VEI_ALIQFCP, :NEW_VEI_ALIQFCPST, '
      
        '  :NEW_VEI_ALIQIBSCREDPRES, :NEW_VEI_ALIQIBSMUN, :NEW_VEI_ALIQIB' +
        'SMUNDIF, '
      
        '  :NEW_VEI_ALIQIBSMUNEFE, :NEW_VEI_ALIQIBSMUNRED, :NEW_VEI_ALIQI' +
        'BSUF, '
      
        '  :NEW_VEI_ALIQIBSUFDIF, :NEW_VEI_ALIQIBSUFEFE, :NEW_VEI_ALIQIBS' +
        'UFRED, '
      
        '  :NEW_VEI_ALIQICMS, :NEW_VEI_ALIQICMSADICST, :NEW_VEI_ALIQICMSI' +
        'NTER, '
      
        '  :NEW_VEI_ALIQICMSINTERPART, :NEW_VEI_ALIQICMSRED, :NEW_VEI_ALI' +
        'QICMSST, '
      '  :NEW_VEI_ALIQICMSSTRET, :NEW_VEI_ALIQII, :NEW_VEI_ALIQIPI, '
      
        '  :NEW_VEI_ALIQIS, :NEW_VEI_ALIQISESP, :NEW_VEI_ALIQISS, :NEW_VE' +
        'I_ALIQPIS, '
      
        '  :NEW_VEI_ALIQPISST, :NEW_VEI_ALMOXARIFADO, :NEW_VEI_BASECOFINS' +
        ', '
      
        '  :NEW_VEI_BASECOFINSST, :NEW_VEI_BASEIBSCBS, :NEW_VEI_BASEICMS,' +
        ' '
      
        '  :NEW_VEI_BASEICMSRED, :NEW_VEI_BASEICMSST, :NEW_VEI_BASEICMSST' +
        'RET, '
      
        '  :NEW_VEI_BASEII, :NEW_VEI_BASEIPI, :NEW_VEI_BASEIS, :NEW_VEI_B' +
        'ASEISS, '
      '  :NEW_VEI_BASEPIS, :NEW_VEI_BASEPISST, :NEW_VEI_BENEFICIO, '
      
        '  :NEW_VEI_CBSCREDITOPRES, :NEW_VEI_CEST, :NEW_VEI_CFOP, :NEW_VE' +
        'I_CIDADEISS, '
      
        '  :NEW_VEI_CLASSFISCAL, :NEW_VEI_CLASSTRIBIBSCBS, :NEW_VEI_CLASS' +
        'TRIBIS, '
      
        '  gen_id(GEN_VENDASITENS,1), :NEW_VEI_CODIGOBARRAS, :NEW_VEI_COD' +
        'IGOFAB, '
      
        '  :NEW_VEI_COMISSAO, :NEW_VEI_COMPLEMENTO, :NEW_VEI_COMPOEBASEIC' +
        'MS, '
      '  :NEW_VEI_COMISSAOREP, :NEW_VEI_VALORCOMISSAOREP, '
      
        '  :NEW_VEI_COMPOEBASEICMSST, :NEW_VEI_COMPOETOTAL, :NEW_VEI_CONV' +
        'ERSAO, '
      '  :NEW_VEI_CSTCOFINS, :NEW_VEI_CSTIBSCBS, :NEW_VEI_CSTICMS, '
      
        '  :NEW_VEI_CSTIPI, :NEW_VEI_CSTIS, :NEW_VEI_CSTPIS, :NEW_VEI_DES' +
        'CMAX, '
      '  :NEW_VEI_DESCPORC, :NEW_VEI_DESCRICAO, :NEW_VEI_DESCVALOR, '
      '  :NEW_VEI_DESONERACAO, :NEW_VEI_DFEREF, :NEW_VEI_DFEREFITEM, '
      '  :NEW_VEI_DICNPJ, :NEW_VEI_DIDATA, :NEW_VEI_DIDESEMBARACODATA, '
      
        '  :NEW_VEI_DIDESEMBARACOLOCAL, :NEW_VEI_DIDESEMBARACOUF, :NEW_VE' +
        'I_DIEXPORTADORCOD, '
      
        '  :NEW_VEI_DIINTERMEDIO, :NEW_VEI_DINUMERO, :NEW_VEI_DITERCEIROU' +
        'F, '
      
        '  :NEW_VEI_DITRANSPORTE, :NEW_VEI_DIVALORAFRMM, :NEW_VEI_ENQUADR' +
        'AMENTOIPI, '
      
        '  :NEW_VEI_EXCECAO, :NEW_VEI_EXCHAVEACESSO, :NEW_VEI_EXDRAWBACK,' +
        ' '
      '  :NEW_VEI_EXQUANTIDADE, :NEW_VEI_EXREGISTRO, :NEW_VEI_FCI, '
      
        '  :NEW_VEI_IBSCREDITOPRES, :NEW_VEI_INCENTIVOISS, :NEW_VEI_INDIC' +
        'ADORISS, '
      '  :NEW_VEI_INFOADICIONAL, :NEW_VEI_LOCALIZACAO, :NEW_VEI_LOTE, '
      '  :NEW_VEI_LUCROPORC, :NEW_VEI_LUCROVALOR, :NEW_VEI_MODICMS, '
      
        '  :NEW_VEI_MODICMSST, :NEW_VEI_ORIGEM, :NEW_VEI_PAISISS, :NEW_VE' +
        'I_PEDIDOCLIENTE, '
      
        '  :NEW_VEI_PEDIDOCLIENTEITEM, :NEW_VEI_PESO, :NEW_VEI_PESOTOTAL,' +
        ' '
      
        '  :NEW_VEI_PRECOCUSTO, :NEW_VEI_PRECOCUSTOTOTAL, :NEW_VEI_PROCES' +
        'SOISS, '
      '  :NEW_VEI_PRODUTO, :NEW_VEI_PRODUTOREAL, :NEW_VEI_QUANTIDADE, '
      
        '  :NEW_VEI_QUANTIDADETROCA, :NEW_VEI_SEQUENCIA, :NEW_VEI_SERVICO' +
        'ISS, '
      '  :NEW_VEI_SOMACOFINSST, :NEW_VEI_SOMAPISST, :NEW_VEI_TIPO, '
      '  :NEW_VEI_TIPOISS, :NEW_VEI_UNIDADE, :NEW_VEI_VALORACESSORIAS, '
      
        '  :NEW_VEI_VALORADUANA, :NEW_VEI_VALORCBS, :NEW_VEI_VALORCBSCRED' +
        'PRES, '
      
        '  :NEW_VEI_VALORCBSCREDPRESSUS, :NEW_VEI_VALORCBSDEV, :NEW_VEI_V' +
        'ALORCBSDIF, '
      
        '  :NEW_VEI_VALORCOFINS, :NEW_VEI_VALORCOFINSST, :NEW_VEI_VALORCO' +
        'MISSAO, '
      '  :NEW_VEI_VALORFCP, :NEW_VEI_VALORFCPST, :NEW_VEI_VALORFRETE, '
      
        '  :NEW_VEI_VALORIBS, :NEW_VEI_VALORIBSCREDPRES, :NEW_VEI_VALORIB' +
        'SCREDPRESSUS, '
      
        '  :NEW_VEI_VALORIBSMUN, :NEW_VEI_VALORIBSMUNDEV, :NEW_VEI_VALORI' +
        'BSMUNDIF, '
      
        '  :NEW_VEI_VALORIBSUF, :NEW_VEI_VALORIBSUFDEV, :NEW_VEI_VALORIBS' +
        'UFDIF, '
      
        '  :NEW_VEI_VALORICMS, :NEW_VEI_VALORICMSCREDSN, :NEW_VEI_VALORIC' +
        'MSDESONERADO, '
      
        '  :NEW_VEI_VALORICMSST, :NEW_VEI_VALORICMSSTRET, :NEW_VEI_VALORI' +
        'CMSSUBSTITUTO, '
      
        '  :NEW_VEI_VALORICMSUFDEST, :NEW_VEI_VALORICMSUFREMET, :NEW_VEI_' +
        'VALORII, '
      '  :NEW_VEI_VALORIOF, :NEW_VEI_VALORIPI, :NEW_VEI_VALORIS, '
      
        '  :NEW_VEI_VALORISS, :NEW_VEI_VALORISSDEDUCAO, :NEW_VEI_VALORISS' +
        'DESCCOND, '
      
        '  :NEW_VEI_VALORISSDESCINCOND, :NEW_VEI_VALORISSOUTROS, :NEW_VEI' +
        '_VALORISSRETENCAO, '
      '  :NEW_VEI_VALORPIS, :NEW_VEI_VALORPISST, :NEW_VEI_VALORSEGURO, '
      
        '  :NEW_VEI_VALORTOTAL, :NEW_VEI_VALORTOTALBRUTO, :NEW_VEI_VALORT' +
        'RIBUTOS, '
      
        '  :NEW_VEI_VALORTRIBUTOSEST, :NEW_VEI_VALORTRIBUTOSFED, :NEW_VEI' +
        '_VALORTRIBUTOSIMP, '
      '  :NEW_VEI_VALORTRIBUTOSMUN, :NEW_VEI_VALORUNIT, :NEW_VEI_VENDA)'
      
        'RETURNING VEI_ALIQCBS, VEI_ALIQCBSCREDPRES, VEI_ALIQCBSDIF, VEI_' +
        'ALIQCBSEFE, VEI_ALIQCBSRED, VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VE' +
        'I_ALIQFCP, VEI_ALIQFCPST, VEI_ALIQIBSCREDPRES, VEI_ALIQIBSMUN, V' +
        'EI_ALIQIBSMUNDIF, VEI_ALIQIBSMUNEFE, VEI_ALIQIBSMUNRED, VEI_ALIQ' +
        'IBSUF, VEI_ALIQIBSUFDIF, VEI_ALIQIBSUFEFE, VEI_ALIQIBSUFRED, VEI' +
        '_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, VEI_ALIQICMSIN' +
        'TERPART, VEI_ALIQICMSRED, VEI_ALIQICMSST, VEI_ALIQICMSSTRET, VEI' +
        '_ALIQII, VEI_ALIQIPI, VEI_ALIQIS, VEI_ALIQISESP, VEI_ALIQISS, VE' +
        'I_ALIQPIS, VEI_ALIQPISST, VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_' +
        'BASECOFINSST, VEI_BASEIBSCBS, VEI_BASEICMS, VEI_BASEICMSRED, VEI' +
        '_BASEICMSST, VEI_BASEICMSSTRET, VEI_BASEII, VEI_BASEIPI, VEI_BAS' +
        'EIS, VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST, VEI_BENEFICIO, VEI' +
        '_CBSCREDITOPRES, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFIS' +
        'CAL, VEI_CLASSTRIBIBSCBS, VEI_CLASSTRIBIS, VEI_CODIGO, VEI_CODIG' +
        'OBARRAS, VEI_CODIGOFAB, VEI_COMISSAO, VEI_COMPLEMENTO, VEI_COMPO' +
        'EBASEICMS, VEI_COMPOEBASEICMSST, VEI_COMPOETOTAL, VEI_CONVERSAO,' +
        ' VEI_CSTCOFINS, VEI_CSTIBSCBS, VEI_CSTICMS, VEI_CSTIPI, VEI_CSTI' +
        'S, VEI_CSTPIS, VEI_DESCMAX, VEI_DESCPORC, VEI_DESCRICAO, VEI_DES' +
        'CVALOR, VEI_DESONERACAO, VEI_DFEREF, VEI_DFEREFITEM, VEI_DICNPJ,' +
        ' VEI_DIDATA, VEI_DIDESEMBARACODATA, VEI_DIDESEMBARACOLOCAL, VEI_' +
        'DIDESEMBARACOUF, VEI_DIEXPORTADORCOD, VEI_DIINTERMEDIO, VEI_DINU' +
        'MERO, VEI_DITERCEIROUF, VEI_DITRANSPORTE, VEI_DIVALORAFRMM, VEI_' +
        'ENQUADRAMENTOIPI, VEI_EXCECAO, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK' +
        ', VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, VEI_IBSCREDITOPRES,' +
        ' VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADICIONAL, VEI_LOCA' +
        'LIZACAO, VEI_LOTE, VEI_LUCROPORC, VEI_LUCROVALOR, VEI_MODICMS, V' +
        'EI_MODICMSST, VEI_ORIGEM, VEI_PAISISS, VEI_PEDIDOCLIENTE, VEI_PE' +
        'DIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, VEI_PRECOCUSTO, VEI_PR' +
        'ECOCUSTOTOTAL, VEI_PROCESSOISS, VEI_PRODUTO, VEI_PRODUTOREAL, VE' +
        'I_QUANTIDADE, VEI_QUANTIDADETROCA, VEI_SEQUENCIA, VEI_SERVICOISS' +
        ', VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, VEI_TIPOISS, VEI_UN' +
        'IDADE, VEI_VALORACESSORIAS, VEI_VALORADUANA, VEI_VALORCBS, VEI_V' +
        'ALORCBSCREDPRES, VEI_VALORCBSCREDPRESSUS, VEI_VALORCBSDEV, VEI_V' +
        'ALORCBSDIF, VEI_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALORCOMISSA' +
        'O, VEI_VALORFCP, VEI_VALORFCPST, VEI_VALORFRETE, VEI_VALORIBS, V' +
        'EI_VALORIBSCREDPRES, VEI_VALORIBSCREDPRESSUS, VEI_VALORIBSMUN, V' +
        'EI_VALORIBSMUNDEV, VEI_VALORIBSMUNDIF, VEI_VALORIBSUF, VEI_VALOR' +
        'IBSUFDEV, VEI_VALORIBSUFDIF, VEI_VALORICMS, VEI_VALORICMSCREDSN,' +
        ' VEI_VALORICMSDESONERADO, VEI_VALORICMSST, VEI_VALORICMSSTRET, V' +
        'EI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDEST, VEI_VALORICMSUFREME' +
        'T, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI, VEI_VALORIS, VEI_VAL' +
        'ORISS, VEI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, VEI_VALORISSDE' +
        'SCINCOND, VEI_VALORISSOUTROS, VEI_VALORISSRETENCAO, VEI_VALORPIS' +
        ', VEI_VALORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL, VEI_VALORTOTA' +
        'LBRUTO, VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, VEI_VALORTRIBUT' +
        'OSFED, VEI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSMUN, VEI_VALORUNIT' +
        ', VEI_VENDA')
    ModifySQL.Strings = (
      'UPDATE VENDASITENS'
      
        'SET VEI_ALIQCBS = :NEW_VEI_ALIQCBS, VEI_ALIQCBSCREDPRES = :NEW_V' +
        'EI_ALIQCBSCREDPRES, '
      
        '  VEI_ALIQCBSDIF = :NEW_VEI_ALIQCBSDIF, VEI_ALIQCBSEFE = :NEW_VE' +
        'I_ALIQCBSEFE, '
      
        '  VEI_ALIQCBSRED = :NEW_VEI_ALIQCBSRED, VEI_ALIQCOFINS = :NEW_VE' +
        'I_ALIQCOFINS, '
      
        '  VEI_ALIQCOFINSST = :NEW_VEI_ALIQCOFINSST, VEI_ALIQFCP = :NEW_V' +
        'EI_ALIQFCP, '
      
        '  VEI_ALIQFCPST = :NEW_VEI_ALIQFCPST, VEI_ALIQIBSCREDPRES = :NEW' +
        '_VEI_ALIQIBSCREDPRES, '
      
        '  VEI_ALIQIBSMUN = :NEW_VEI_ALIQIBSMUN, VEI_ALIQIBSMUNDIF = :NEW' +
        '_VEI_ALIQIBSMUNDIF, '
      
        '  VEI_ALIQIBSMUNEFE = :NEW_VEI_ALIQIBSMUNEFE, VEI_ALIQIBSMUNRED ' +
        '= :NEW_VEI_ALIQIBSMUNRED, '
      
        '  VEI_ALIQIBSUF = :NEW_VEI_ALIQIBSUF, VEI_ALIQIBSUFDIF = :NEW_VE' +
        'I_ALIQIBSUFDIF, '
      
        '  VEI_ALIQIBSUFEFE = :NEW_VEI_ALIQIBSUFEFE, VEI_ALIQIBSUFRED = :' +
        'NEW_VEI_ALIQIBSUFRED, '
      
        '  VEI_ALIQICMS = :NEW_VEI_ALIQICMS, VEI_ALIQICMSADICST = :NEW_VE' +
        'I_ALIQICMSADICST, '
      
        '  VEI_ALIQICMSINTER = :NEW_VEI_ALIQICMSINTER, VEI_ALIQICMSINTERP' +
        'ART = :NEW_VEI_ALIQICMSINTERPART, '
      
        '  VEI_ALIQICMSRED = :NEW_VEI_ALIQICMSRED, VEI_ALIQICMSST = :NEW_' +
        'VEI_ALIQICMSST, '
      
        '  VEI_ALIQICMSSTRET = :NEW_VEI_ALIQICMSSTRET, VEI_ALIQII = :NEW_' +
        'VEI_ALIQII, '
      '  VEI_ALIQIPI = :NEW_VEI_ALIQIPI, VEI_ALIQIS = :NEW_VEI_ALIQIS, '
      
        '  VEI_ALIQISESP = :NEW_VEI_ALIQISESP, VEI_ALIQISS = :NEW_VEI_ALI' +
        'QISS, '
      
        '  VEI_ALIQPIS = :NEW_VEI_ALIQPIS, VEI_ALIQPISST = :NEW_VEI_ALIQP' +
        'ISST, '
      
        '  VEI_ALMOXARIFADO = :NEW_VEI_ALMOXARIFADO, VEI_BASECOFINS = :NE' +
        'W_VEI_BASECOFINS, '
      
        '  VEI_BASECOFINSST = :NEW_VEI_BASECOFINSST, VEI_BASEIBSCBS = :NE' +
        'W_VEI_BASEIBSCBS, '
      
        '  VEI_BASEICMS = :NEW_VEI_BASEICMS, VEI_BASEICMSRED = :NEW_VEI_B' +
        'ASEICMSRED, '
      
        '  VEI_BASEICMSST = :NEW_VEI_BASEICMSST, VEI_BASEICMSSTRET = :NEW' +
        '_VEI_BASEICMSSTRET, '
      '  VEI_BASEII = :NEW_VEI_BASEII, VEI_BASEIPI = :NEW_VEI_BASEIPI, '
      '  VEI_BASEIS = :NEW_VEI_BASEIS, VEI_BASEISS = :NEW_VEI_BASEISS, '
      
        '  VEI_BASEPIS = :NEW_VEI_BASEPIS, VEI_BASEPISST = :NEW_VEI_BASEP' +
        'ISST, '
      
        '  VEI_BENEFICIO = :NEW_VEI_BENEFICIO, VEI_CBSCREDITOPRES = :NEW_' +
        'VEI_CBSCREDITOPRES, '
      
        '  VEI_CEST = :NEW_VEI_CEST, VEI_CFOP = :NEW_VEI_CFOP, VEI_CIDADE' +
        'ISS = :NEW_VEI_CIDADEISS, '
      
        '  VEI_CLASSFISCAL = :NEW_VEI_CLASSFISCAL, VEI_CLASSTRIBIBSCBS = ' +
        ':NEW_VEI_CLASSTRIBIBSCBS, '
      
        '  VEI_CLASSTRIBIS = :NEW_VEI_CLASSTRIBIS, VEI_CODIGO = :NEW_VEI_' +
        'CODIGO, '
      
        '  VEI_CODIGOBARRAS = :NEW_VEI_CODIGOBARRAS, VEI_CODIGOFAB = :NEW' +
        '_VEI_CODIGOFAB, '
      
        '  VEI_COMISSAO = :NEW_VEI_COMISSAO, VEI_COMPLEMENTO = :NEW_VEI_C' +
        'OMPLEMENTO, '
      
        '  VEI_COMISSAOREP = :NEW_VEI_COMISSAOREP, VEI_VALORCOMISSAOREP =' +
        ' :NEW_VEI_VALORCOMISSAOREP, '
      
        '  VEI_COMPOEBASEICMS = :NEW_VEI_COMPOEBASEICMS, VEI_COMPOEBASEIC' +
        'MSST = :NEW_VEI_COMPOEBASEICMSST, '
      
        '  VEI_COMPOETOTAL = :NEW_VEI_COMPOETOTAL, VEI_CONVERSAO = :NEW_V' +
        'EI_CONVERSAO, '
      
        '  VEI_CSTCOFINS = :NEW_VEI_CSTCOFINS, VEI_CSTIBSCBS = :NEW_VEI_C' +
        'STIBSCBS, '
      '  VEI_CSTICMS = :NEW_VEI_CSTICMS, VEI_CSTIPI = :NEW_VEI_CSTIPI, '
      '  VEI_CSTIS = :NEW_VEI_CSTIS, VEI_CSTPIS = :NEW_VEI_CSTPIS, '
      
        '  VEI_DESCMAX = :NEW_VEI_DESCMAX, VEI_DESCPORC = :NEW_VEI_DESCPO' +
        'RC, '
      
        '  VEI_DESCRICAO = :NEW_VEI_DESCRICAO, VEI_DESCVALOR = :NEW_VEI_D' +
        'ESCVALOR, '
      
        '  VEI_DESONERACAO = :NEW_VEI_DESONERACAO, VEI_DFEREF = :NEW_VEI_' +
        'DFEREF, '
      
        '  VEI_DFEREFITEM = :NEW_VEI_DFEREFITEM, VEI_DICNPJ = :NEW_VEI_DI' +
        'CNPJ, '
      
        '  VEI_DIDATA = :NEW_VEI_DIDATA, VEI_DIDESEMBARACODATA = :NEW_VEI' +
        '_DIDESEMBARACODATA, '
      
        '  VEI_DIDESEMBARACOLOCAL = :NEW_VEI_DIDESEMBARACOLOCAL, VEI_DIDE' +
        'SEMBARACOUF = :NEW_VEI_DIDESEMBARACOUF, '
      
        '  VEI_DIEXPORTADORCOD = :NEW_VEI_DIEXPORTADORCOD, VEI_DIINTERMED' +
        'IO = :NEW_VEI_DIINTERMEDIO, '
      
        '  VEI_DINUMERO = :NEW_VEI_DINUMERO, VEI_DITERCEIROUF = :NEW_VEI_' +
        'DITERCEIROUF, '
      
        '  VEI_DITRANSPORTE = :NEW_VEI_DITRANSPORTE, VEI_DIVALORAFRMM = :' +
        'NEW_VEI_DIVALORAFRMM, '
      
        '  VEI_ENQUADRAMENTOIPI = :NEW_VEI_ENQUADRAMENTOIPI, VEI_EXCECAO ' +
        '= :NEW_VEI_EXCECAO, '
      
        '  VEI_EXCHAVEACESSO = :NEW_VEI_EXCHAVEACESSO, VEI_EXDRAWBACK = :' +
        'NEW_VEI_EXDRAWBACK, '
      
        '  VEI_EXQUANTIDADE = :NEW_VEI_EXQUANTIDADE, VEI_EXREGISTRO = :NE' +
        'W_VEI_EXREGISTRO, '
      
        '  VEI_FCI = :NEW_VEI_FCI, VEI_IBSCREDITOPRES = :NEW_VEI_IBSCREDI' +
        'TOPRES, '
      
        '  VEI_INCENTIVOISS = :NEW_VEI_INCENTIVOISS, VEI_INDICADORISS = :' +
        'NEW_VEI_INDICADORISS, '
      
        '  VEI_INFOADICIONAL = :NEW_VEI_INFOADICIONAL, VEI_LOCALIZACAO = ' +
        ':NEW_VEI_LOCALIZACAO, '
      '  VEI_LOTE = :NEW_VEI_LOTE, VEI_LUCROPORC = :NEW_VEI_LUCROPORC, '
      
        '  VEI_LUCROVALOR = :NEW_VEI_LUCROVALOR, VEI_MODICMS = :NEW_VEI_M' +
        'ODICMS, '
      
        '  VEI_MODICMSST = :NEW_VEI_MODICMSST, VEI_ORIGEM = :NEW_VEI_ORIG' +
        'EM, '
      
        '  VEI_PAISISS = :NEW_VEI_PAISISS, VEI_PEDIDOCLIENTE = :NEW_VEI_P' +
        'EDIDOCLIENTE, '
      
        '  VEI_PEDIDOCLIENTEITEM = :NEW_VEI_PEDIDOCLIENTEITEM, VEI_PESO =' +
        ' :NEW_VEI_PESO, '
      
        '  VEI_PESOTOTAL = :NEW_VEI_PESOTOTAL, VEI_PRECOCUSTO = :NEW_VEI_' +
        'PRECOCUSTO, '
      
        '  VEI_PRECOCUSTOTOTAL = :NEW_VEI_PRECOCUSTOTOTAL, VEI_PROCESSOIS' +
        'S = :NEW_VEI_PROCESSOISS, '
      
        '  VEI_PRODUTO = :NEW_VEI_PRODUTO, VEI_PRODUTOREAL = :NEW_VEI_PRO' +
        'DUTOREAL, '
      
        '  VEI_QUANTIDADE = :NEW_VEI_QUANTIDADE, VEI_QUANTIDADETROCA = :N' +
        'EW_VEI_QUANTIDADETROCA, '
      
        '  VEI_SEQUENCIA = :NEW_VEI_SEQUENCIA, VEI_SERVICOISS = :NEW_VEI_' +
        'SERVICOISS, '
      
        '  VEI_SOMACOFINSST = :NEW_VEI_SOMACOFINSST, VEI_SOMAPISST = :NEW' +
        '_VEI_SOMAPISST, '
      '  VEI_TIPO = :NEW_VEI_TIPO, VEI_TIPOISS = :NEW_VEI_TIPOISS, '
      
        '  VEI_UNIDADE = :NEW_VEI_UNIDADE, VEI_VALORACESSORIAS = :NEW_VEI' +
        '_VALORACESSORIAS, '
      
        '  VEI_VALORADUANA = :NEW_VEI_VALORADUANA, VEI_VALORCBS = :NEW_VE' +
        'I_VALORCBS, '
      
        '  VEI_VALORCBSCREDPRES = :NEW_VEI_VALORCBSCREDPRES, VEI_VALORCBS' +
        'CREDPRESSUS = :NEW_VEI_VALORCBSCREDPRESSUS, '
      
        '  VEI_VALORCBSDEV = :NEW_VEI_VALORCBSDEV, VEI_VALORCBSDIF = :NEW' +
        '_VEI_VALORCBSDIF, '
      
        '  VEI_VALORCOFINS = :NEW_VEI_VALORCOFINS, VEI_VALORCOFINSST = :N' +
        'EW_VEI_VALORCOFINSST, '
      
        '  VEI_VALORCOMISSAO = :NEW_VEI_VALORCOMISSAO, VEI_VALORFCP = :NE' +
        'W_VEI_VALORFCP, '
      
        '  VEI_VALORFCPST = :NEW_VEI_VALORFCPST, VEI_VALORFRETE = :NEW_VE' +
        'I_VALORFRETE, '
      
        '  VEI_VALORIBS = :NEW_VEI_VALORIBS, VEI_VALORIBSCREDPRES = :NEW_' +
        'VEI_VALORIBSCREDPRES, '
      '  VEI_VALORIBSCREDPRESSUS = :NEW_VEI_VALORIBSCREDPRESSUS, '
      
        '  VEI_VALORIBSMUN = :NEW_VEI_VALORIBSMUN, VEI_VALORIBSMUNDEV = :' +
        'NEW_VEI_VALORIBSMUNDEV, '
      
        '  VEI_VALORIBSMUNDIF = :NEW_VEI_VALORIBSMUNDIF, VEI_VALORIBSUF =' +
        ' :NEW_VEI_VALORIBSUF, '
      
        '  VEI_VALORIBSUFDEV = :NEW_VEI_VALORIBSUFDEV, VEI_VALORIBSUFDIF ' +
        '= :NEW_VEI_VALORIBSUFDIF, '
      
        '  VEI_VALORICMS = :NEW_VEI_VALORICMS, VEI_VALORICMSCREDSN = :NEW' +
        '_VEI_VALORICMSCREDSN, '
      '  VEI_VALORICMSDESONERADO = :NEW_VEI_VALORICMSDESONERADO, '
      
        '  VEI_VALORICMSST = :NEW_VEI_VALORICMSST, VEI_VALORICMSSTRET = :' +
        'NEW_VEI_VALORICMSSTRET, '
      '  VEI_VALORICMSSUBSTITUTO = :NEW_VEI_VALORICMSSUBSTITUTO, '
      
        '  VEI_VALORICMSUFDEST = :NEW_VEI_VALORICMSUFDEST, VEI_VALORICMSU' +
        'FREMET = :NEW_VEI_VALORICMSUFREMET, '
      
        '  VEI_VALORII = :NEW_VEI_VALORII, VEI_VALORIOF = :NEW_VEI_VALORI' +
        'OF, '
      
        '  VEI_VALORIPI = :NEW_VEI_VALORIPI, VEI_VALORIS = :NEW_VEI_VALOR' +
        'IS, '
      
        '  VEI_VALORISS = :NEW_VEI_VALORISS, VEI_VALORISSDEDUCAO = :NEW_V' +
        'EI_VALORISSDEDUCAO, '
      
        '  VEI_VALORISSDESCCOND = :NEW_VEI_VALORISSDESCCOND, VEI_VALORISS' +
        'DESCINCOND = :NEW_VEI_VALORISSDESCINCOND, '
      
        '  VEI_VALORISSOUTROS = :NEW_VEI_VALORISSOUTROS, VEI_VALORISSRETE' +
        'NCAO = :NEW_VEI_VALORISSRETENCAO, '
      
        '  VEI_VALORPIS = :NEW_VEI_VALORPIS, VEI_VALORPISST = :NEW_VEI_VA' +
        'LORPISST, '
      
        '  VEI_VALORSEGURO = :NEW_VEI_VALORSEGURO, VEI_VALORTOTAL = :NEW_' +
        'VEI_VALORTOTAL, '
      
        '  VEI_VALORTOTALBRUTO = :NEW_VEI_VALORTOTALBRUTO, VEI_VALORTRIBU' +
        'TOS = :NEW_VEI_VALORTRIBUTOS, '
      
        '  VEI_VALORTRIBUTOSEST = :NEW_VEI_VALORTRIBUTOSEST, VEI_VALORTRI' +
        'BUTOSFED = :NEW_VEI_VALORTRIBUTOSFED, '
      
        '  VEI_VALORTRIBUTOSIMP = :NEW_VEI_VALORTRIBUTOSIMP, VEI_VALORTRI' +
        'BUTOSMUN = :NEW_VEI_VALORTRIBUTOSMUN, '
      '  VEI_VALORUNIT = :NEW_VEI_VALORUNIT, VEI_VENDA = :NEW_VEI_VENDA'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO'
      
        'RETURNING VEI_ALIQCBS, VEI_ALIQCBSCREDPRES, VEI_ALIQCBSDIF, VEI_' +
        'ALIQCBSEFE, VEI_ALIQCBSRED, VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VE' +
        'I_ALIQFCP, VEI_ALIQFCPST, VEI_ALIQIBSCREDPRES, VEI_ALIQIBSMUN, V' +
        'EI_ALIQIBSMUNDIF, VEI_ALIQIBSMUNEFE, VEI_ALIQIBSMUNRED, VEI_ALIQ' +
        'IBSUF, VEI_ALIQIBSUFDIF, VEI_ALIQIBSUFEFE, VEI_ALIQIBSUFRED, VEI' +
        '_ALIQICMS, VEI_ALIQICMSADICST, VEI_ALIQICMSINTER, VEI_ALIQICMSIN' +
        'TERPART, VEI_ALIQICMSRED, VEI_ALIQICMSST, VEI_ALIQICMSSTRET, VEI' +
        '_ALIQII, VEI_ALIQIPI, VEI_ALIQIS, VEI_ALIQISESP, VEI_ALIQISS, VE' +
        'I_ALIQPIS, VEI_ALIQPISST, VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_' +
        'BASECOFINSST, VEI_BASEIBSCBS, VEI_BASEICMS, VEI_BASEICMSRED, VEI' +
        '_BASEICMSST, VEI_BASEICMSSTRET, VEI_BASEII, VEI_BASEIPI, VEI_BAS' +
        'EIS, VEI_BASEISS, VEI_BASEPIS, VEI_BASEPISST, VEI_BENEFICIO, VEI' +
        '_CBSCREDITOPRES, VEI_CEST, VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFIS' +
        'CAL, VEI_CLASSTRIBIBSCBS, VEI_CLASSTRIBIS, VEI_CODIGO, VEI_CODIG' +
        'OBARRAS, VEI_CODIGOFAB, VEI_COMISSAO, VEI_COMPLEMENTO, VEI_COMPO' +
        'EBASEICMS, VEI_COMPOEBASEICMSST, VEI_COMPOETOTAL, VEI_CONVERSAO,' +
        ' VEI_CSTCOFINS, VEI_CSTIBSCBS, VEI_CSTICMS, VEI_CSTIPI, VEI_CSTI' +
        'S, VEI_CSTPIS, VEI_DESCMAX, VEI_DESCPORC, VEI_DESCRICAO, VEI_DES' +
        'CVALOR, VEI_DESONERACAO, VEI_DFEREF, VEI_DFEREFITEM, VEI_DICNPJ,' +
        ' VEI_DIDATA, VEI_DIDESEMBARACODATA, VEI_DIDESEMBARACOLOCAL, VEI_' +
        'DIDESEMBARACOUF, VEI_DIEXPORTADORCOD, VEI_DIINTERMEDIO, VEI_DINU' +
        'MERO, VEI_DITERCEIROUF, VEI_DITRANSPORTE, VEI_DIVALORAFRMM, VEI_' +
        'ENQUADRAMENTOIPI, VEI_EXCECAO, VEI_EXCHAVEACESSO, VEI_EXDRAWBACK' +
        ', VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, VEI_IBSCREDITOPRES,' +
        ' VEI_INCENTIVOISS, VEI_INDICADORISS, VEI_INFOADICIONAL, VEI_LOCA' +
        'LIZACAO, VEI_LOTE, VEI_LUCROPORC, VEI_LUCROVALOR, VEI_MODICMS, V' +
        'EI_MODICMSST, VEI_ORIGEM, VEI_PAISISS, VEI_PEDIDOCLIENTE, VEI_PE' +
        'DIDOCLIENTEITEM, VEI_PESO, VEI_PESOTOTAL, VEI_PRECOCUSTO, VEI_PR' +
        'ECOCUSTOTOTAL, VEI_PROCESSOISS, VEI_PRODUTO, VEI_PRODUTOREAL, VE' +
        'I_QUANTIDADE, VEI_QUANTIDADETROCA, VEI_SEQUENCIA, VEI_SERVICOISS' +
        ', VEI_SOMACOFINSST, VEI_SOMAPISST, VEI_TIPO, VEI_TIPOISS, VEI_UN' +
        'IDADE, VEI_VALORACESSORIAS, VEI_VALORADUANA, VEI_VALORCBS, VEI_V' +
        'ALORCBSCREDPRES, VEI_VALORCBSCREDPRESSUS, VEI_VALORCBSDEV, VEI_V' +
        'ALORCBSDIF, VEI_VALORCOFINS, VEI_VALORCOFINSST, VEI_VALORCOMISSA' +
        'O, VEI_VALORFCP, VEI_VALORFCPST, VEI_VALORFRETE, VEI_VALORIBS, V' +
        'EI_VALORIBSCREDPRES, VEI_VALORIBSCREDPRESSUS, VEI_VALORIBSMUN, V' +
        'EI_VALORIBSMUNDEV, VEI_VALORIBSMUNDIF, VEI_VALORIBSUF, VEI_VALOR' +
        'IBSUFDEV, VEI_VALORIBSUFDIF, VEI_VALORICMS, VEI_VALORICMSCREDSN,' +
        ' VEI_VALORICMSDESONERADO, VEI_VALORICMSST, VEI_VALORICMSSTRET, V' +
        'EI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDEST, VEI_VALORICMSUFREME' +
        'T, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI, VEI_VALORIS, VEI_VAL' +
        'ORISS, VEI_VALORISSDEDUCAO, VEI_VALORISSDESCCOND, VEI_VALORISSDE' +
        'SCINCOND, VEI_VALORISSOUTROS, VEI_VALORISSRETENCAO, VEI_VALORPIS' +
        ', VEI_VALORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL, VEI_VALORTOTA' +
        'LBRUTO, VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, VEI_VALORTRIBUT' +
        'OSFED, VEI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSMUN, VEI_VALORUNIT' +
        ', VEI_VENDA')
    DeleteSQL.Strings = (
      'DELETE FROM VENDASITENS'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEI_ALIQCBS, VEI_ALIQCBSCREDPRES, VEI_ALIQCBSDIF, VEI_ALI' +
        'QCBSEFE, '
      
        '  VEI_ALIQCBSRED, VEI_ALIQCOFINS, VEI_ALIQCOFINSST, VEI_ALIQFCP,' +
        ' '
      
        '  VEI_ALIQFCPST, VEI_ALIQIBSCREDPRES, VEI_ALIQIBSMUN, VEI_ALIQIB' +
        'SMUNDIF, '
      
        '  VEI_ALIQIBSMUNEFE, VEI_ALIQIBSMUNRED, VEI_ALIQIBSUF, VEI_ALIQI' +
        'BSUFDIF, '
      
        '  VEI_ALIQIBSUFEFE, VEI_ALIQIBSUFRED, VEI_ALIQICMS, VEI_ALIQICMS' +
        'ADICST, '
      '  VEI_ALIQICMSINTER, VEI_ALIQICMSINTERPART, VEI_ALIQICMSRED, '
      '  VEI_ALIQICMSST, VEI_ALIQICMSSTRET, VEI_ALIQII, VEI_ALIQIPI, '
      
        '  VEI_ALIQIS, VEI_ALIQISESP, VEI_ALIQISS, VEI_ALIQPIS, VEI_ALIQP' +
        'ISST, '
      
        '  VEI_ALMOXARIFADO, VEI_BASECOFINS, VEI_BASECOFINSST, VEI_BASEIB' +
        'SCBS, '
      
        '  VEI_BASEICMS, VEI_BASEICMSRED, VEI_BASEICMSST, VEI_BASEICMSSTR' +
        'ET, '
      
        '  VEI_BASEII, VEI_BASEIPI, VEI_BASEIS, VEI_BASEISS, VEI_BASEPIS,' +
        ' '
      '  VEI_BASEPISST, VEI_BENEFICIO, VEI_CBSCREDITOPRES, VEI_CEST, '
      
        '  VEI_CFOP, VEI_CIDADEISS, VEI_CLASSFISCAL, VEI_CLASSTRIBIBSCBS,' +
        ' '
      '  VEI_CLASSTRIBIS, VEI_CODIGO, VEI_CODIGOBARRAS, VEI_CODIGOFAB, '
      
        '  VEI_COMISSAO, VEI_COMPLEMENTO, VEI_COMPOEBASEICMS, VEI_COMPOEB' +
        'ASEICMSST, '
      '  VEI_COMPOETOTAL, VEI_CONVERSAO, VEI_CSTCOFINS, VEI_CSTIBSCBS, '
      '  VEI_CSTICMS, VEI_CSTIPI, VEI_CSTIS, VEI_CSTPIS, VEI_DESCMAX, '
      '  VEI_DESCPORC, VEI_DESCRICAO, VEI_DESCVALOR, VEI_DESONERACAO, '
      
        '  VEI_DFEREF, VEI_DFEREFITEM, VEI_DICNPJ, VEI_DIDATA, VEI_DIDESE' +
        'MBARACODATA, '
      
        '  VEI_DIDESEMBARACOLOCAL, VEI_DIDESEMBARACOUF, VEI_DIEXPORTADORC' +
        'OD, '
      
        '  VEI_DIINTERMEDIO, VEI_DINUMERO, VEI_DITERCEIROUF, VEI_DITRANSP' +
        'ORTE, '
      
        '  VEI_DIVALORAFRMM, VEI_ENQUADRAMENTOIPI, VEI_EXCECAO, VEI_EXCHA' +
        'VEACESSO, '
      '  VEI_EXDRAWBACK, VEI_EXQUANTIDADE, VEI_EXREGISTRO, VEI_FCI, '
      '  VEI_IBSCREDITOPRES, VEI_INCENTIVOISS, VEI_INDICADORISS, '
      '  VEI_INFOADICIONAL, VEI_LOCALIZACAO, VEI_LOTE, VEI_LUCROPORC, '
      '  VEI_LUCROVALOR, VEI_MODICMS, VEI_MODICMSST, VEI_ORIGEM, '
      
        '  VEI_PAISISS, VEI_PEDIDOCLIENTE, VEI_PEDIDOCLIENTEITEM, VEI_PES' +
        'O, '
      
        '  VEI_PESOTOTAL, VEI_PRECOCUSTO, VEI_PRECOCUSTOTOTAL, VEI_PROCES' +
        'SOISS, '
      
        '  VEI_PRODUTO, VEI_PRODUTOREAL, VEI_QUANTIDADE, VEI_QUANTIDADETR' +
        'OCA, '
      
        '  VEI_SEQUENCIA, VEI_SERVICOISS, VEI_SOMACOFINSST, VEI_SOMAPISST' +
        ', '
      '  VEI_TIPO, VEI_TIPOISS, VEI_UNIDADE, VEI_VALORACESSORIAS, '
      
        '  VEI_VALORADUANA, VEI_VALORCBS, VEI_VALORCBSCREDPRES, VEI_VALOR' +
        'CBSCREDPRESSUS, '
      
        '  VEI_VALORCBSDEV, VEI_VALORCBSDIF, VEI_VALORCOFINS, VEI_VALORCO' +
        'FINSST, '
      
        '  VEI_VALORCOMISSAO, VEI_VALORFCP, VEI_VALORFCPST, VEI_VALORFRET' +
        'E, '
      '  VEI_VALORIBS, VEI_VALORIBSCREDPRES, VEI_VALORIBSCREDPRESSUS, '
      '  VEI_VALORIBSMUN, VEI_VALORIBSMUNDEV, VEI_VALORIBSMUNDIF, '
      
        '  VEI_VALORIBSUF, VEI_VALORIBSUFDEV, VEI_VALORIBSUFDIF, VEI_VALO' +
        'RICMS, '
      
        '  VEI_VALORICMSCREDSN, VEI_VALORICMSDESONERADO, VEI_VALORICMSST,' +
        ' '
      
        '  VEI_VALORICMSSTRET, VEI_VALORICMSSUBSTITUTO, VEI_VALORICMSUFDE' +
        'ST, '
      
        '  VEI_VALORICMSUFREMET, VEI_VALORII, VEI_VALORIOF, VEI_VALORIPI,' +
        ' '
      
        '  VEI_VALORIS, VEI_VALORISS, VEI_VALORISSDEDUCAO, VEI_VALORISSDE' +
        'SCCOND, '
      
        '  VEI_VALORISSDESCINCOND, VEI_VALORISSOUTROS, VEI_VALORISSRETENC' +
        'AO, '
      
        '  VEI_VALORPIS, VEI_VALORPISST, VEI_VALORSEGURO, VEI_VALORTOTAL,' +
        ' '
      '  VEI_VALORTOTALBRUTO, VEI_VALORTRIBUTOS, VEI_VALORTRIBUTOSEST, '
      
        '  VEI_VALORTRIBUTOSFED, VEI_VALORTRIBUTOSIMP, VEI_VALORTRIBUTOSM' +
        'UN, '
      '  VEI_VALORUNIT, VEI_VENDA'
      'FROM VENDASITENS'
      'WHERE VEI_CODIGO = :OLD_VEI_CODIGO')
    Left = 744
    Top = 384
  end
  object DSProdutos: TDataSource
    DataSet = TBProdutos
    Left = 168
    Top = 384
  end
  object TBProdutosFotos: TFDQuery
    AfterInsert = TBProdutosFotosAfterInsert
    BeforePost = TBProdutosFotosBeforePost
    MasterSource = DSProdutos
    MasterFields = 'PRO_CODIGO'
    Connection = FDConnection1
    Transaction = TRProdutosFotos
    UpdateObject = UPProdutosFotos
    SQL.Strings = (
      'select'
      'PRF_ARQUIVO, '
      'PRF_CODIGO, '
      'PRF_DESCRICAO, '
      'PRF_DTATUALIZACAO, '
      'PRF_DTCADASTRO, '
      'PRF_HRATUALIZACAO, '
      'PRF_HRCADASTRO, '
      'PRF_PRINCIPAL, '
      'PRF_PRODUTO, '
      'PRF_USUARIO'
      'from PRODUTOSFOTOS '
      'where PRF_PRODUTO=:PRO_CODIGO'
      'order by PRF_CODIGO'
      '')
    Left = 232
    Top = 288
    ParamData = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBProdutosFotosPRF_ARQUIVO: TStringField
      FieldName = 'PRF_ARQUIVO'
      Origin = 'PRF_ARQUIVO'
      Size = 30
    end
    object TBProdutosFotosPRF_CODIGO: TIntegerField
      FieldName = 'PRF_CODIGO'
      Origin = 'PRF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProdutosFotosPRF_DESCRICAO: TStringField
      FieldName = 'PRF_DESCRICAO'
      Origin = 'PRF_DESCRICAO'
      Size = 80
    end
    object TBProdutosFotosPRF_DTATUALIZACAO: TDateField
      FieldName = 'PRF_DTATUALIZACAO'
      Origin = 'PRF_DTATUALIZACAO'
    end
    object TBProdutosFotosPRF_DTCADASTRO: TDateField
      FieldName = 'PRF_DTCADASTRO'
      Origin = 'PRF_DTCADASTRO'
    end
    object TBProdutosFotosPRF_HRATUALIZACAO: TTimeField
      FieldName = 'PRF_HRATUALIZACAO'
      Origin = 'PRF_HRATUALIZACAO'
    end
    object TBProdutosFotosPRF_HRCADASTRO: TTimeField
      FieldName = 'PRF_HRCADASTRO'
      Origin = 'PRF_HRCADASTRO'
    end
    object TBProdutosFotosPRF_PRINCIPAL: TStringField
      FieldName = 'PRF_PRINCIPAL'
      Origin = 'PRF_PRINCIPAL'
      Size = 1
    end
    object TBProdutosFotosPRF_PRODUTO: TIntegerField
      FieldName = 'PRF_PRODUTO'
      Origin = 'PRF_PRODUTO'
      Required = True
    end
    object TBProdutosFotosPRF_USUARIO: TStringField
      FieldName = 'PRF_USUARIO'
      Origin = 'PRF_USUARIO'
    end
  end
  object TRProdutosFotos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 232
    Top = 336
  end
  object UPProdutosFotos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PRODUTOSFOTOS'
      '(PRF_ARQUIVO, PRF_CODIGO, PRF_DESCRICAO, PRF_DTATUALIZACAO, '
      '  PRF_DTCADASTRO, PRF_HRATUALIZACAO, PRF_HRCADASTRO, '
      '  PRF_PRINCIPAL, PRF_PRODUTO, PRF_USUARIO)'
      
        'VALUES (:NEW_PRF_ARQUIVO, gen_id(GEN_PRODUTOSFOTOS,1), :NEW_PRF_' +
        'DESCRICAO, :NEW_PRF_DTATUALIZACAO, '
      
        '  :NEW_PRF_DTCADASTRO, :NEW_PRF_HRATUALIZACAO, :NEW_PRF_HRCADAST' +
        'RO, '
      '  :NEW_PRF_PRINCIPAL, :NEW_PRF_PRODUTO, :NEW_PRF_USUARIO)'
      
        'RETURNING PRF_ARQUIVO, PRF_CODIGO, PRF_DESCRICAO, PRF_DTATUALIZA' +
        'CAO, PRF_DTCADASTRO, PRF_HRATUALIZACAO, PRF_HRCADASTRO, PRF_PRIN' +
        'CIPAL, PRF_PRODUTO, PRF_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PRODUTOSFOTOS'
      
        'SET PRF_ARQUIVO = :NEW_PRF_ARQUIVO, PRF_CODIGO = :NEW_PRF_CODIGO' +
        ', '
      
        '  PRF_DESCRICAO = :NEW_PRF_DESCRICAO, PRF_DTATUALIZACAO = :NEW_P' +
        'RF_DTATUALIZACAO, '
      
        '  PRF_DTCADASTRO = :NEW_PRF_DTCADASTRO, PRF_HRATUALIZACAO = :NEW' +
        '_PRF_HRATUALIZACAO, '
      
        '  PRF_HRCADASTRO = :NEW_PRF_HRCADASTRO, PRF_PRINCIPAL = :NEW_PRF' +
        '_PRINCIPAL, '
      '  PRF_PRODUTO = :NEW_PRF_PRODUTO, PRF_USUARIO = :NEW_PRF_USUARIO'
      'WHERE PRF_CODIGO = :OLD_PRF_CODIGO'
      
        'RETURNING PRF_ARQUIVO, PRF_CODIGO, PRF_DESCRICAO, PRF_DTATUALIZA' +
        'CAO, PRF_DTCADASTRO, PRF_HRATUALIZACAO, PRF_HRCADASTRO, PRF_PRIN' +
        'CIPAL, PRF_PRODUTO, PRF_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PRODUTOSFOTOS'
      'WHERE PRF_CODIGO = :OLD_PRF_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PRF_ARQUIVO, PRF_CODIGO, PRF_DESCRICAO, PRF_DTATUALIZACAO' +
        ', PRF_DTCADASTRO, '
      
        '  PRF_HRATUALIZACAO, PRF_HRCADASTRO, PRF_PRINCIPAL, PRF_PRODUTO,' +
        ' '
      '  PRF_USUARIO'
      'FROM PRODUTOSFOTOS'
      'WHERE PRF_CODIGO = :OLD_PRF_CODIGO')
    Left = 232
    Top = 384
  end
  object TBServicos: TFDQuery
    AfterInsert = TBServicosAfterInsert
    BeforePost = TBServicosBeforePost
    Connection = FDConnection1
    Transaction = TRServicos
    UpdateObject = UPServicos
    SQL.Strings = (
      'select'
      'SER_ABERTOPOR, '
      'SER_ACESSORIOS, '
      'SER_ALIQICMSCREDSN, '
      'SER_ANDAMENTO, '
      'SER_BAIXADOPOR, '
      'SER_BASECOFINS, '
      'SER_BASECOFINSST, '
      'SER_BASEICMS, '
      'SER_BASEICMSST, '
      'SER_BASEIPI, '
      'SER_BASEISS, '
      'SER_BASEPIS, '
      'SER_BASEPISST, '
      'SER_CFOP, '
      'SER_CFOPDESC, '
      'SER_CLIENTE, '
      'SER_CODIGO, '
      'SER_COMISSAO, '
      'SER_CONSERTO, '
      'SER_CUSTOTOTAL, '
      'SER_DEFEITO, '
      'SER_DESCPORC, '
      'SER_DESCVALOR, '
      'SER_DTATUALIZACAO, '
      'SER_DTCADASTRO, '
      'SER_DTENTRADA, '
      'SER_DTPREVISAO, '
      'SER_DTSAIDA, '
      'SER_DTTECNICO, '
      'SER_EQUIPAMENTO, '
      'SER_ESTADO, '
      'SER_FINALIZADOPOR, '
      'SER_HRATUALIZACAO, '
      'SER_HRCADASTRO, '
      'SER_KMATUAL, '
      'SER_LOCALIZACAO, '
      'SER_LUCROPORC, '
      'SER_LUCROVALOR, '
      'SER_OBSERVACOES, '
      'SER_PESOLIQ, '
      'SER_SENHAONLINE, '
      'SER_SEQUENCIAITEM, '
      'SER_STATUS, '
      'SER_TABELAPRECO, '
      'SER_TECNICO, '
      'SER_TOTALBRUTO, '
      'SER_TOTALCOFINS, '
      'SER_TOTALCOFINSST, '
      'SER_TOTALCOMISSAO, '
      'SER_TOTALFCP, '
      'SER_TOTALFCPST, '
      'SER_TOTALHORAS, '
      'SER_TOTALHORASDEC, '
      'SER_TOTALICMS, '
      'SER_TOTALICMSCREDSN, '
      'SER_TOTALICMSST, '
      'SER_TOTALICMSUFDEST, '
      'SER_TOTALICMSUFREMET, '
      'SER_TOTALIPI, '
      'SER_TOTALISS, '
      'SER_TOTALISSDEDUCAO, '
      'SER_TOTALISSDESCCOND, '
      'SER_TOTALISSDESCINCOND, '
      'SER_TOTALISSOUTROS, '
      'SER_TOTALISSRETENCAO, '
      'SER_TOTALITENS, '
      'SER_TOTALPIS, '
      'SER_TOTALPISST, '
      'SER_TOTALPRODUTOS, '
      'SER_TOTALSERVICOS, '
      'SER_TOTALTRIBUTOS, '
      'SER_TOTALTRIBUTOSEST, '
      'SER_TOTALTRIBUTOSFED, '
      'SER_TOTALTRIBUTOSIMP, '
      'SER_TOTALTRIBUTOSMUN, '
      'SER_USUARIO, '
      'SER_VALOR, '
      'SER_VALORDESPACES, '
      'SER_VALORFRETE, '
      'SER_VALORSEGURO, '
      'SER_VALORTOTAL,'
      'CLI_EMAIL,'
      'CLI_FONE1,'
      'CLI_FONE2,'
      'CLI_NOME,'
      'EQP_ACESSORIOS,'
      'EQP_ANOFAB,'
      'EQP_ANOMOD,'
      'EQP_CHASSI,'
      'EQP_COMBUSTIVEL,'
      'EQP_COR,'
      'EQP_DESCRICAO,'
      'EQP_LOCALIZACAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_REVENDEDOR,'
      'EQP_SERIE,'
      'EQP_TAMANHO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'VEN_NOME '
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'left join NATUREZAS on SER_CFOP=NAT_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 488
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBServicosSER_ABERTOPOR: TStringField
      FieldName = 'SER_ABERTOPOR'
      Origin = 'SER_ABERTOPOR'
    end
    object TBServicosSER_ACESSORIOS: TStringField
      FieldName = 'SER_ACESSORIOS'
      Origin = 'SER_ACESSORIOS'
      Size = 40
    end
    object TBServicosSER_ALIQICMSCREDSN: TFMTBCDField
      FieldName = 'SER_ALIQICMSCREDSN'
      Origin = 'SER_ALIQICMSCREDSN'
      Precision = 18
    end
    object TBServicosSER_ANDAMENTO: TStringField
      FieldName = 'SER_ANDAMENTO'
      Origin = 'SER_ANDAMENTO'
      Size = 30
    end
    object TBServicosSER_BAIXADOPOR: TStringField
      FieldName = 'SER_BAIXADOPOR'
      Origin = 'SER_BAIXADOPOR'
    end
    object TBServicosSER_BASECOFINS: TFMTBCDField
      FieldName = 'SER_BASECOFINS'
      Origin = 'SER_BASECOFINS'
      Precision = 18
    end
    object TBServicosSER_BASECOFINSST: TFMTBCDField
      FieldName = 'SER_BASECOFINSST'
      Origin = 'SER_BASECOFINSST'
      Precision = 18
    end
    object TBServicosSER_BASEICMS: TFMTBCDField
      FieldName = 'SER_BASEICMS'
      Origin = 'SER_BASEICMS'
      Precision = 18
    end
    object TBServicosSER_BASEICMSST: TFMTBCDField
      FieldName = 'SER_BASEICMSST'
      Origin = 'SER_BASEICMSST'
      Precision = 18
    end
    object TBServicosSER_BASEIPI: TFMTBCDField
      FieldName = 'SER_BASEIPI'
      Origin = 'SER_BASEIPI'
      Precision = 18
    end
    object TBServicosSER_BASEISS: TFMTBCDField
      FieldName = 'SER_BASEISS'
      Origin = 'SER_BASEISS'
      Precision = 18
    end
    object TBServicosSER_BASEPIS: TFMTBCDField
      FieldName = 'SER_BASEPIS'
      Origin = 'SER_BASEPIS'
      Precision = 18
    end
    object TBServicosSER_BASEPISST: TFMTBCDField
      FieldName = 'SER_BASEPISST'
      Origin = 'SER_BASEPISST'
      Precision = 18
    end
    object TBServicosSER_CFOP: TIntegerField
      FieldName = 'SER_CFOP'
      Origin = 'SER_CFOP'
    end
    object TBServicosSER_CFOPDESC: TStringField
      FieldName = 'SER_CFOPDESC'
      Origin = 'SER_CFOPDESC'
      Size = 120
    end
    object TBServicosSER_CLIENTE: TIntegerField
      FieldName = 'SER_CLIENTE'
      Origin = 'SER_CLIENTE'
      Required = True
    end
    object TBServicosSER_CODIGO: TIntegerField
      FieldName = 'SER_CODIGO'
      Origin = 'SER_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBServicosSER_COMISSAO: TFMTBCDField
      FieldName = 'SER_COMISSAO'
      Origin = 'SER_COMISSAO'
      Precision = 18
    end
    object TBServicosSER_CONSERTO: TMemoField
      FieldName = 'SER_CONSERTO'
      Origin = 'SER_CONSERTO'
      BlobType = ftMemo
    end
    object TBServicosSER_CUSTOTOTAL: TFMTBCDField
      FieldName = 'SER_CUSTOTOTAL'
      Origin = 'SER_CUSTOTOTAL'
      Precision = 18
    end
    object TBServicosSER_DEFEITO: TMemoField
      FieldName = 'SER_DEFEITO'
      Origin = 'SER_DEFEITO'
      BlobType = ftMemo
    end
    object TBServicosSER_DESCPORC: TFMTBCDField
      FieldName = 'SER_DESCPORC'
      Origin = 'SER_DESCPORC'
      Precision = 18
    end
    object TBServicosSER_DESCVALOR: TFMTBCDField
      FieldName = 'SER_DESCVALOR'
      Origin = 'SER_DESCVALOR'
      Precision = 18
    end
    object TBServicosSER_DTATUALIZACAO: TDateField
      FieldName = 'SER_DTATUALIZACAO'
      Origin = 'SER_DTATUALIZACAO'
    end
    object TBServicosSER_DTCADASTRO: TDateField
      FieldName = 'SER_DTCADASTRO'
      Origin = 'SER_DTCADASTRO'
    end
    object TBServicosSER_DTENTRADA: TDateField
      FieldName = 'SER_DTENTRADA'
      Origin = 'SER_DTENTRADA'
    end
    object TBServicosSER_DTPREVISAO: TDateField
      FieldName = 'SER_DTPREVISAO'
      Origin = 'SER_DTPREVISAO'
    end
    object TBServicosSER_DTSAIDA: TDateField
      FieldName = 'SER_DTSAIDA'
      Origin = 'SER_DTSAIDA'
    end
    object TBServicosSER_DTTECNICO: TDateField
      FieldName = 'SER_DTTECNICO'
      Origin = 'SER_DTTECNICO'
    end
    object TBServicosSER_EQUIPAMENTO: TIntegerField
      FieldName = 'SER_EQUIPAMENTO'
      Origin = 'SER_EQUIPAMENTO'
      Required = True
    end
    object TBServicosSER_ESTADO: TStringField
      FieldName = 'SER_ESTADO'
      Origin = 'SER_ESTADO'
      Size = 2
    end
    object TBServicosSER_FINALIZADOPOR: TStringField
      FieldName = 'SER_FINALIZADOPOR'
      Origin = 'SER_FINALIZADOPOR'
    end
    object TBServicosSER_HRATUALIZACAO: TTimeField
      FieldName = 'SER_HRATUALIZACAO'
      Origin = 'SER_HRATUALIZACAO'
    end
    object TBServicosSER_HRCADASTRO: TTimeField
      FieldName = 'SER_HRCADASTRO'
      Origin = 'SER_HRCADASTRO'
    end
    object TBServicosSER_KMATUAL: TIntegerField
      FieldName = 'SER_KMATUAL'
      Origin = 'SER_KMATUAL'
    end
    object TBServicosSER_LOCALIZACAO: TStringField
      FieldName = 'SER_LOCALIZACAO'
      Origin = 'SER_LOCALIZACAO'
    end
    object TBServicosSER_LUCROPORC: TFMTBCDField
      FieldName = 'SER_LUCROPORC'
      Origin = 'SER_LUCROPORC'
      Precision = 18
    end
    object TBServicosSER_LUCROVALOR: TFMTBCDField
      FieldName = 'SER_LUCROVALOR'
      Origin = 'SER_LUCROVALOR'
      Precision = 18
    end
    object TBServicosSER_OBSERVACOES: TMemoField
      FieldName = 'SER_OBSERVACOES'
      Origin = 'SER_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBServicosSER_PESOLIQ: TFMTBCDField
      FieldName = 'SER_PESOLIQ'
      Origin = 'SER_PESOLIQ'
      Precision = 18
      Size = 3
    end
    object TBServicosSER_SENHAONLINE: TStringField
      FieldName = 'SER_SENHAONLINE'
      Origin = 'SER_SENHAONLINE'
      Size = 40
    end
    object TBServicosSER_SEQUENCIAITEM: TIntegerField
      FieldName = 'SER_SEQUENCIAITEM'
      Origin = 'SER_SEQUENCIAITEM'
    end
    object TBServicosSER_STATUS: TStringField
      FieldName = 'SER_STATUS'
      Origin = 'SER_STATUS'
      Size = 1
    end
    object TBServicosSER_TABELAPRECO: TStringField
      FieldName = 'SER_TABELAPRECO'
      Origin = 'SER_TABELAPRECO'
      Size = 1
    end
    object TBServicosSER_TECNICO: TIntegerField
      FieldName = 'SER_TECNICO'
      Origin = 'SER_TECNICO'
      Required = True
    end
    object TBServicosSER_TOTALBRUTO: TFMTBCDField
      FieldName = 'SER_TOTALBRUTO'
      Origin = 'SER_TOTALBRUTO'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALCOFINS: TFMTBCDField
      FieldName = 'SER_TOTALCOFINS'
      Origin = 'SER_TOTALCOFINS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALCOFINSST: TFMTBCDField
      FieldName = 'SER_TOTALCOFINSST'
      Origin = 'SER_TOTALCOFINSST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'SER_TOTALCOMISSAO'
      Origin = 'SER_TOTALCOMISSAO'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALFCP: TFMTBCDField
      FieldName = 'SER_TOTALFCP'
      Origin = 'SER_TOTALFCP'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALFCPST: TFMTBCDField
      FieldName = 'SER_TOTALFCPST'
      Origin = 'SER_TOTALFCPST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALHORAS: TStringField
      FieldName = 'SER_TOTALHORAS'
      Origin = 'SER_TOTALHORAS'
      Size = 25
    end
    object TBServicosSER_TOTALHORASDEC: TFMTBCDField
      FieldName = 'SER_TOTALHORASDEC'
      Origin = 'SER_TOTALHORASDEC'
      Precision = 18
    end
    object TBServicosSER_TOTALICMS: TFMTBCDField
      FieldName = 'SER_TOTALICMS'
      Origin = 'SER_TOTALICMS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALICMSCREDSN: TFMTBCDField
      FieldName = 'SER_TOTALICMSCREDSN'
      Origin = 'SER_TOTALICMSCREDSN'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALICMSST: TFMTBCDField
      FieldName = 'SER_TOTALICMSST'
      Origin = 'SER_TOTALICMSST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALICMSUFDEST: TFMTBCDField
      FieldName = 'SER_TOTALICMSUFDEST'
      Origin = 'SER_TOTALICMSUFDEST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALICMSUFREMET: TFMTBCDField
      FieldName = 'SER_TOTALICMSUFREMET'
      Origin = 'SER_TOTALICMSUFREMET'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALIPI: TFMTBCDField
      FieldName = 'SER_TOTALIPI'
      Origin = 'SER_TOTALIPI'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISS: TFMTBCDField
      FieldName = 'SER_TOTALISS'
      Origin = 'SER_TOTALISS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISSDEDUCAO: TFMTBCDField
      FieldName = 'SER_TOTALISSDEDUCAO'
      Origin = 'SER_TOTALISSDEDUCAO'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISSDESCCOND: TFMTBCDField
      FieldName = 'SER_TOTALISSDESCCOND'
      Origin = 'SER_TOTALISSDESCCOND'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISSDESCINCOND: TFMTBCDField
      FieldName = 'SER_TOTALISSDESCINCOND'
      Origin = 'SER_TOTALISSDESCINCOND'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISSOUTROS: TFMTBCDField
      FieldName = 'SER_TOTALISSOUTROS'
      Origin = 'SER_TOTALISSOUTROS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALISSRETENCAO: TFMTBCDField
      FieldName = 'SER_TOTALISSRETENCAO'
      Origin = 'SER_TOTALISSRETENCAO'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALITENS: TFMTBCDField
      FieldName = 'SER_TOTALITENS'
      Origin = 'SER_TOTALITENS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALPIS: TFMTBCDField
      FieldName = 'SER_TOTALPIS'
      Origin = 'SER_TOTALPIS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALPISST: TFMTBCDField
      FieldName = 'SER_TOTALPISST'
      Origin = 'SER_TOTALPISST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'SER_TOTALPRODUTOS'
      Origin = 'SER_TOTALPRODUTOS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALSERVICOS: TFMTBCDField
      FieldName = 'SER_TOTALSERVICOS'
      Origin = 'SER_TOTALSERVICOS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'SER_TOTALTRIBUTOS'
      Origin = 'SER_TOTALTRIBUTOS'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'SER_TOTALTRIBUTOSEST'
      Origin = 'SER_TOTALTRIBUTOSEST'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'SER_TOTALTRIBUTOSFED'
      Origin = 'SER_TOTALTRIBUTOSFED'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALTRIBUTOSIMP: TFMTBCDField
      FieldName = 'SER_TOTALTRIBUTOSIMP'
      Origin = 'SER_TOTALTRIBUTOSIMP'
      currency = True
      Precision = 18
    end
    object TBServicosSER_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'SER_TOTALTRIBUTOSMUN'
      Origin = 'SER_TOTALTRIBUTOSMUN'
      currency = True
      Precision = 18
    end
    object TBServicosSER_USUARIO: TStringField
      FieldName = 'SER_USUARIO'
      Origin = 'SER_USUARIO'
    end
    object TBServicosSER_VALOR: TFMTBCDField
      FieldName = 'SER_VALOR'
      Origin = 'SER_VALOR'
      currency = True
      Precision = 18
    end
    object TBServicosSER_VALORDESPACES: TFMTBCDField
      FieldName = 'SER_VALORDESPACES'
      Origin = 'SER_VALORDESPACES'
      currency = True
      Precision = 18
    end
    object TBServicosSER_VALORFRETE: TFMTBCDField
      FieldName = 'SER_VALORFRETE'
      Origin = 'SER_VALORFRETE'
      currency = True
      Precision = 18
    end
    object TBServicosSER_VALORSEGURO: TFMTBCDField
      FieldName = 'SER_VALORSEGURO'
      Origin = 'SER_VALORSEGURO'
      currency = True
      Precision = 18
    end
    object TBServicosSER_VALORTOTAL: TFMTBCDField
      FieldName = 'SER_VALORTOTAL'
      Origin = 'SER_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBServicosCLI_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object TBServicosCLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
    end
    object TBServicosCLI_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
      ProviderFlags = []
    end
    object TBServicosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBServicosEQP_ACESSORIOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_ACESSORIOS'
      Origin = 'EQP_ACESSORIOS'
      ProviderFlags = []
      Size = 40
    end
    object TBServicosEQP_ANOFAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_ANOFAB'
      Origin = 'EQP_ANOFAB'
      ProviderFlags = []
    end
    object TBServicosEQP_ANOMOD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_ANOMOD'
      Origin = 'EQP_ANOMOD'
      ProviderFlags = []
    end
    object TBServicosEQP_CHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_CHASSI'
      Origin = 'EQP_CHASSI'
      ProviderFlags = []
      Size = 35
    end
    object TBServicosEQP_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_COMBUSTIVEL'
      Origin = 'EQP_COMBUSTIVEL'
      ProviderFlags = []
      Size = 30
    end
    object TBServicosEQP_COR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_COR'
      Origin = 'EQP_COR'
      ProviderFlags = []
    end
    object TBServicosEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBServicosEQP_LOCALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_LOCALIZACAO'
      Origin = 'EQP_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object TBServicosEQP_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_MARCA'
      Origin = 'EQP_MARCA'
      ProviderFlags = []
      Size = 40
    end
    object TBServicosEQP_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_MODELO'
      Origin = 'EQP_MODELO'
      ProviderFlags = []
      Size = 40
    end
    object TBServicosEQP_REVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_REVENDEDOR'
      Origin = 'EQP_REVENDEDOR'
      ProviderFlags = []
      Size = 80
    end
    object TBServicosEQP_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_SERIE'
      Origin = 'EQP_SERIE'
      ProviderFlags = []
      Size = 40
    end
    object TBServicosEQP_TAMANHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_TAMANHO'
      Origin = 'EQP_TAMANHO'
      ProviderFlags = []
      Size = 15
    end
    object TBServicosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBServicosNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBServicosNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
  end
  object TRServicos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 488
    Top = 336
  end
  object TBServicosItens: TFDQuery
    AfterInsert = TBServicosItensAfterInsert
    BeforePost = TBServicosItensBeforePost
    AfterPost = TBServicosItensAfterPost
    MasterSource = DSServicos
    MasterFields = 'SER_CODIGO'
    Connection = FDConnection1
    Transaction = TRServicosItens
    UpdateObject = UPServicosItens
    SQL.Strings = (
      'select'
      'SEI_ALIQCOFINS, '
      'SEI_ALIQCOFINSST, '
      'SEI_ALIQFCP, '
      'SEI_ALIQFCPST, '
      'SEI_ALIQICMS, '
      'SEI_ALIQICMSADICST, '
      'SEI_ALIQICMSINTER, '
      'SEI_ALIQICMSINTERPART, '
      'SEI_ALIQICMSRED, '
      'SEI_ALIQICMSST, '
      'SEI_ALIQIPI, '
      'SEI_ALIQISS, '
      'SEI_ALIQPIS, '
      'SEI_ALIQPISST, '
      'SEI_ALMOXARIFADO, '
      'SEI_BASECOFINS, '
      'SEI_BASECOFINSST, '
      'SEI_BASEICMS, '
      'SEI_BASEICMSRED, '
      'SEI_BASEICMSST, '
      'SEI_BASEIPI, '
      'SEI_BASEISS, '
      'SEI_BASEPIS, '
      'SEI_BASEPISST, '
      'SEI_BENEFICIO, '
      'SEI_CEST, '
      'SEI_CFOP, '
      'SEI_CIDADEISS, '
      'SEI_CLASSFISCAL, '
      'SEI_CODIGO, '
      'SEI_CODIGOBARRAS, '
      'SEI_CODIGOFAB, '
      'SEI_COMISSAO, '
      'SEI_COMPLEMENTO, '
      'SEI_COMPOEBASEICMS, '
      'SEI_COMPOEBASEICMSST, '
      'SEI_COMPOETOTAL, '
      'SEI_CONVERSAO, '
      'SEI_CSTCOFINS, '
      'SEI_CSTICMS, '
      'SEI_CSTIPI, '
      'SEI_CSTPIS, '
      'SEI_DESCMAX, '
      'SEI_DESCPORC, '
      'SEI_DESCRICAO, '
      'SEI_DESCVALOR, '
      'SEI_ENQUADRAMENTOIPI, '
      'SEI_EXCECAO, '
      'SEI_FCI, '
      'SEI_INCENTIVOISS, '
      'SEI_INDICADORISS, '
      'SEI_INFOADICIONAL, '
      'SEI_LOCALIZACAO, '
      'SEI_LOTE, '
      'SEI_LUCROPORC, '
      'SEI_LUCROVALOR, '
      'SEI_MODICMS, '
      'SEI_MODICMSST, '
      'SEI_ORIGEM, '
      'SEI_PAISISS, '
      'SEI_PESO, '
      'SEI_PESOTOTAL, '
      'SEI_PRECOCUSTO, '
      'SEI_PRECOCUSTOTOTAL, '
      'SEI_PROCESSOISS, '
      'SEI_PRODUTO, '
      'SEI_PRODUTOREAL, '
      'SEI_QUANTIDADE, '
      'SEI_QUANTIDADETROCA, '
      'SEI_SEQUENCIA, '
      'SEI_SERVICO, '
      'SEI_SERVICOISS, '
      'SEI_TIPO, '
      'SEI_TIPOISS, '
      'SEI_UNIDADE, '
      'SEI_VALORACESSORIAS, '
      'SEI_VALORCOFINS, '
      'SEI_VALORCOFINSST, '
      'SEI_VALORCOMISSAO, '
      'SEI_VALORFCP, '
      'SEI_VALORFCPST, '
      'SEI_VALORFRETE, '
      'SEI_VALORICMS, '
      'SEI_VALORICMSCREDSN, '
      'SEI_VALORICMSST, '
      'SEI_VALORICMSUFDEST, '
      'SEI_VALORICMSUFREMET, '
      'SEI_VALORIPI, '
      'SEI_VALORISS, '
      'SEI_VALORISSDEDUCAO, '
      'SEI_VALORISSDESCCOND, '
      'SEI_VALORISSDESCINCOND, '
      'SEI_VALORISSOUTROS, '
      'SEI_VALORISSRETENCAO, '
      'SEI_VALORPIS, '
      'SEI_VALORPISST, '
      'SEI_VALORSEGURO, '
      'SEI_VALORTOTAL, '
      'SEI_VALORTOTALBRUTO, '
      'SEI_VALORTRIBUTOS, '
      'SEI_VALORTRIBUTOSEST, '
      'SEI_VALORTRIBUTOSFED, '
      'SEI_VALORTRIBUTOSIMP, '
      'SEI_VALORTRIBUTOSMUN, '
      'SEI_VALORUNIT,'
      'CLF_DESCRICAO,'
      'ICM_CALCULACREDITOSN,'
      'ICM_DESCRICAO,'
      'IPI_DESCRICAO,'
      'ISS_DESCRICAO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'NAT_DESCRICAO,'
      'PIS.PIS_DESCRICAO as PIS_DESCRICAO,'
      'COFINS.PIS_DESCRICAO as PIS_DESCRICAO1'
      'from SERVICOSITENS '
      'left join PRODUTOS on SEI_PRODUTO=PRO_CODIGO'
      'left join NATUREZAS on SEI_CFOP=NAT_CODIGO'
      
        'left join CLASSFISCAL on SEI_CLASSFISCAL=CLF_CODIGO and SEI_EXCE' +
        'CAO=CLF_EXCECAO'
      'left join ICMS on SEI_CSTICMS=ICM_CODIGO'
      'left join IPI on SEI_CSTIPI=IPI_CODIGO'
      'left join ISS on SEI_TIPOISS=ISS_CODIGO'
      'left join PISCOFINS as PIS on SEI_CSTPIS=PIS.PIS_CODIGO'
      
        'left join PISCOFINS as COFINS on SEI_CSTCOFINS=COFINS.PIS_CODIGO' +
        ' '
      'where SEI_SERVICO=:SER_CODIGO'
      '')
    Left = 552
    Top = 288
    ParamData = <
      item
        Name = 'SER_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBServicosItensSEI_ALIQCOFINS: TFMTBCDField
      FieldName = 'SEI_ALIQCOFINS'
      Origin = 'SEI_ALIQCOFINS'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQCOFINSST: TFMTBCDField
      FieldName = 'SEI_ALIQCOFINSST'
      Origin = 'SEI_ALIQCOFINSST'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQFCP: TFMTBCDField
      FieldName = 'SEI_ALIQFCP'
      Origin = 'SEI_ALIQFCP'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQFCPST: TFMTBCDField
      FieldName = 'SEI_ALIQFCPST'
      Origin = 'SEI_ALIQFCPST'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMS: TFMTBCDField
      FieldName = 'SEI_ALIQICMS'
      Origin = 'SEI_ALIQICMS'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMSADICST: TFMTBCDField
      FieldName = 'SEI_ALIQICMSADICST'
      Origin = 'SEI_ALIQICMSADICST'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMSINTER: TFMTBCDField
      FieldName = 'SEI_ALIQICMSINTER'
      Origin = 'SEI_ALIQICMSINTER'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'SEI_ALIQICMSINTERPART'
      Origin = 'SEI_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMSRED: TFMTBCDField
      FieldName = 'SEI_ALIQICMSRED'
      Origin = 'SEI_ALIQICMSRED'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQICMSST: TFMTBCDField
      FieldName = 'SEI_ALIQICMSST'
      Origin = 'SEI_ALIQICMSST'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQIPI: TFMTBCDField
      FieldName = 'SEI_ALIQIPI'
      Origin = 'SEI_ALIQIPI'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQISS: TFMTBCDField
      FieldName = 'SEI_ALIQISS'
      Origin = 'SEI_ALIQISS'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQPIS: TFMTBCDField
      FieldName = 'SEI_ALIQPIS'
      Origin = 'SEI_ALIQPIS'
      Precision = 18
    end
    object TBServicosItensSEI_ALIQPISST: TFMTBCDField
      FieldName = 'SEI_ALIQPISST'
      Origin = 'SEI_ALIQPISST'
      Precision = 18
    end
    object TBServicosItensSEI_ALMOXARIFADO: TIntegerField
      FieldName = 'SEI_ALMOXARIFADO'
      Origin = 'SEI_ALMOXARIFADO'
      Required = True
    end
    object TBServicosItensSEI_BASECOFINS: TFMTBCDField
      FieldName = 'SEI_BASECOFINS'
      Origin = 'SEI_BASECOFINS'
      Precision = 18
    end
    object TBServicosItensSEI_BASECOFINSST: TFMTBCDField
      FieldName = 'SEI_BASECOFINSST'
      Origin = 'SEI_BASECOFINSST'
      Precision = 18
    end
    object TBServicosItensSEI_BASEICMS: TFMTBCDField
      FieldName = 'SEI_BASEICMS'
      Origin = 'SEI_BASEICMS'
      Precision = 18
    end
    object TBServicosItensSEI_BASEICMSRED: TFMTBCDField
      FieldName = 'SEI_BASEICMSRED'
      Origin = 'SEI_BASEICMSRED'
      Precision = 18
    end
    object TBServicosItensSEI_BASEICMSST: TFMTBCDField
      FieldName = 'SEI_BASEICMSST'
      Origin = 'SEI_BASEICMSST'
      Precision = 18
    end
    object TBServicosItensSEI_BASEIPI: TFMTBCDField
      FieldName = 'SEI_BASEIPI'
      Origin = 'SEI_BASEIPI'
      Precision = 18
    end
    object TBServicosItensSEI_BASEISS: TFMTBCDField
      FieldName = 'SEI_BASEISS'
      Origin = 'SEI_BASEISS'
      Precision = 18
    end
    object TBServicosItensSEI_BASEPIS: TFMTBCDField
      FieldName = 'SEI_BASEPIS'
      Origin = 'SEI_BASEPIS'
      Precision = 18
    end
    object TBServicosItensSEI_BASEPISST: TFMTBCDField
      FieldName = 'SEI_BASEPISST'
      Origin = 'SEI_BASEPISST'
      Precision = 18
    end
    object TBServicosItensSEI_BENEFICIO: TStringField
      FieldName = 'SEI_BENEFICIO'
      Origin = 'SEI_BENEFICIO'
    end
    object TBServicosItensSEI_CEST: TStringField
      FieldName = 'SEI_CEST'
      Origin = 'SEI_CEST'
    end
    object TBServicosItensSEI_CFOP: TIntegerField
      FieldName = 'SEI_CFOP'
      Origin = 'SEI_CFOP'
    end
    object TBServicosItensSEI_CIDADEISS: TIntegerField
      FieldName = 'SEI_CIDADEISS'
      Origin = 'SEI_CIDADEISS'
    end
    object TBServicosItensSEI_CLASSFISCAL: TStringField
      FieldName = 'SEI_CLASSFISCAL'
      Origin = 'SEI_CLASSFISCAL'
    end
    object TBServicosItensSEI_CODIGO: TIntegerField
      FieldName = 'SEI_CODIGO'
      Origin = 'SEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBServicosItensSEI_CODIGOBARRAS: TStringField
      FieldName = 'SEI_CODIGOBARRAS'
      Origin = 'SEI_CODIGOBARRAS'
      Size = 60
    end
    object TBServicosItensSEI_CODIGOFAB: TStringField
      FieldName = 'SEI_CODIGOFAB'
      Origin = 'SEI_CODIGOFAB'
    end
    object TBServicosItensSEI_COMISSAO: TFMTBCDField
      FieldName = 'SEI_COMISSAO'
      Origin = 'SEI_COMISSAO'
      Precision = 18
    end
    object TBServicosItensSEI_COMPLEMENTO: TStringField
      FieldName = 'SEI_COMPLEMENTO'
      Origin = 'SEI_COMPLEMENTO'
      Size = 50
    end
    object TBServicosItensSEI_COMPOEBASEICMS: TStringField
      FieldName = 'SEI_COMPOEBASEICMS'
      Origin = 'SEI_COMPOEBASEICMS'
      Size = 1
    end
    object TBServicosItensSEI_COMPOEBASEICMSST: TStringField
      FieldName = 'SEI_COMPOEBASEICMSST'
      Origin = 'SEI_COMPOEBASEICMSST'
      Size = 1
    end
    object TBServicosItensSEI_COMPOETOTAL: TStringField
      FieldName = 'SEI_COMPOETOTAL'
      Origin = 'SEI_COMPOETOTAL'
      Size = 1
    end
    object TBServicosItensSEI_CONVERSAO: TFMTBCDField
      FieldName = 'SEI_CONVERSAO'
      Origin = 'SEI_CONVERSAO'
      Precision = 18
    end
    object TBServicosItensSEI_CSTCOFINS: TIntegerField
      FieldName = 'SEI_CSTCOFINS'
      Origin = 'SEI_CSTCOFINS'
    end
    object TBServicosItensSEI_CSTICMS: TIntegerField
      FieldName = 'SEI_CSTICMS'
      Origin = 'SEI_CSTICMS'
    end
    object TBServicosItensSEI_CSTIPI: TIntegerField
      FieldName = 'SEI_CSTIPI'
      Origin = 'SEI_CSTIPI'
    end
    object TBServicosItensSEI_CSTPIS: TIntegerField
      FieldName = 'SEI_CSTPIS'
      Origin = 'SEI_CSTPIS'
    end
    object TBServicosItensSEI_DESCMAX: TFMTBCDField
      FieldName = 'SEI_DESCMAX'
      Origin = 'SEI_DESCMAX'
      Precision = 18
    end
    object TBServicosItensSEI_DESCPORC: TFMTBCDField
      FieldName = 'SEI_DESCPORC'
      Origin = 'SEI_DESCPORC'
      Precision = 18
    end
    object TBServicosItensSEI_DESCRICAO: TStringField
      FieldName = 'SEI_DESCRICAO'
      Origin = 'SEI_DESCRICAO'
      Size = 100
    end
    object TBServicosItensSEI_DESCVALOR: TFMTBCDField
      FieldName = 'SEI_DESCVALOR'
      Origin = 'SEI_DESCVALOR'
      Precision = 18
    end
    object TBServicosItensSEI_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'SEI_ENQUADRAMENTOIPI'
      Origin = 'SEI_ENQUADRAMENTOIPI'
    end
    object TBServicosItensSEI_EXCECAO: TIntegerField
      FieldName = 'SEI_EXCECAO'
      Origin = 'SEI_EXCECAO'
    end
    object TBServicosItensSEI_FCI: TStringField
      FieldName = 'SEI_FCI'
      Origin = 'SEI_FCI'
      Size = 40
    end
    object TBServicosItensSEI_INCENTIVOISS: TStringField
      FieldName = 'SEI_INCENTIVOISS'
      Origin = 'SEI_INCENTIVOISS'
      Size = 1
    end
    object TBServicosItensSEI_INDICADORISS: TStringField
      FieldName = 'SEI_INDICADORISS'
      Origin = 'SEI_INDICADORISS'
      Size = 50
    end
    object TBServicosItensSEI_INFOADICIONAL: TMemoField
      FieldName = 'SEI_INFOADICIONAL'
      Origin = 'SEI_INFOADICIONAL'
      BlobType = ftMemo
    end
    object TBServicosItensSEI_LOCALIZACAO: TStringField
      FieldName = 'SEI_LOCALIZACAO'
      Origin = 'SEI_LOCALIZACAO'
    end
    object TBServicosItensSEI_LOTE: TStringField
      FieldName = 'SEI_LOTE'
      Origin = 'SEI_LOTE'
    end
    object TBServicosItensSEI_LUCROPORC: TFMTBCDField
      FieldName = 'SEI_LUCROPORC'
      Origin = 'SEI_LUCROPORC'
      Precision = 18
    end
    object TBServicosItensSEI_LUCROVALOR: TFMTBCDField
      FieldName = 'SEI_LUCROVALOR'
      Origin = 'SEI_LUCROVALOR'
      Precision = 18
    end
    object TBServicosItensSEI_MODICMS: TStringField
      FieldName = 'SEI_MODICMS'
      Origin = 'SEI_MODICMS'
      Size = 40
    end
    object TBServicosItensSEI_MODICMSST: TStringField
      FieldName = 'SEI_MODICMSST'
      Origin = 'SEI_MODICMSST'
      Size = 40
    end
    object TBServicosItensSEI_ORIGEM: TStringField
      FieldName = 'SEI_ORIGEM'
      Origin = 'SEI_ORIGEM'
      Size = 120
    end
    object TBServicosItensSEI_PAISISS: TIntegerField
      FieldName = 'SEI_PAISISS'
      Origin = 'SEI_PAISISS'
    end
    object TBServicosItensSEI_PESO: TFMTBCDField
      FieldName = 'SEI_PESO'
      Origin = 'SEI_PESO'
      Precision = 18
      Size = 3
    end
    object TBServicosItensSEI_PESOTOTAL: TFMTBCDField
      FieldName = 'SEI_PESOTOTAL'
      Origin = 'SEI_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object TBServicosItensSEI_PRECOCUSTO: TFMTBCDField
      FieldName = 'SEI_PRECOCUSTO'
      Origin = 'SEI_PRECOCUSTO'
      Precision = 18
    end
    object TBServicosItensSEI_PRECOCUSTOTOTAL: TFMTBCDField
      FieldName = 'SEI_PRECOCUSTOTOTAL'
      Origin = 'SEI_PRECOCUSTOTOTAL'
      Precision = 18
    end
    object TBServicosItensSEI_PROCESSOISS: TStringField
      FieldName = 'SEI_PROCESSOISS'
      Origin = 'SEI_PROCESSOISS'
      Size = 30
    end
    object TBServicosItensSEI_PRODUTO: TIntegerField
      FieldName = 'SEI_PRODUTO'
      Origin = 'SEI_PRODUTO'
      Required = True
    end
    object TBServicosItensSEI_PRODUTOREAL: TIntegerField
      FieldName = 'SEI_PRODUTOREAL'
      Origin = 'SEI_PRODUTOREAL'
    end
    object TBServicosItensSEI_QUANTIDADE: TFMTBCDField
      FieldName = 'SEI_QUANTIDADE'
      Origin = 'SEI_QUANTIDADE'
      Precision = 18
    end
    object TBServicosItensSEI_QUANTIDADETROCA: TFMTBCDField
      FieldName = 'SEI_QUANTIDADETROCA'
      Origin = 'SEI_QUANTIDADETROCA'
      Precision = 18
    end
    object TBServicosItensSEI_SEQUENCIA: TIntegerField
      FieldName = 'SEI_SEQUENCIA'
      Origin = 'SEI_SEQUENCIA'
    end
    object TBServicosItensSEI_SERVICO: TIntegerField
      FieldName = 'SEI_SERVICO'
      Origin = 'SEI_SERVICO'
      Required = True
    end
    object TBServicosItensSEI_SERVICOISS: TStringField
      FieldName = 'SEI_SERVICOISS'
      Origin = 'SEI_SERVICOISS'
    end
    object TBServicosItensSEI_TIPO: TStringField
      FieldName = 'SEI_TIPO'
      Origin = 'SEI_TIPO'
      Size = 1
    end
    object TBServicosItensSEI_TIPOISS: TStringField
      FieldName = 'SEI_TIPOISS'
      Origin = 'SEI_TIPOISS'
      Size = 15
    end
    object TBServicosItensSEI_UNIDADE: TStringField
      FieldName = 'SEI_UNIDADE'
      Origin = 'SEI_UNIDADE'
      Size = 3
    end
    object TBServicosItensSEI_VALORACESSORIAS: TFMTBCDField
      FieldName = 'SEI_VALORACESSORIAS'
      Origin = 'SEI_VALORACESSORIAS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORCOFINS: TFMTBCDField
      FieldName = 'SEI_VALORCOFINS'
      Origin = 'SEI_VALORCOFINS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORCOFINSST: TFMTBCDField
      FieldName = 'SEI_VALORCOFINSST'
      Origin = 'SEI_VALORCOFINSST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORCOMISSAO: TFMTBCDField
      FieldName = 'SEI_VALORCOMISSAO'
      Origin = 'SEI_VALORCOMISSAO'
      Precision = 18
    end
    object TBServicosItensSEI_VALORFCP: TFMTBCDField
      FieldName = 'SEI_VALORFCP'
      Origin = 'SEI_VALORFCP'
      Precision = 18
    end
    object TBServicosItensSEI_VALORFCPST: TFMTBCDField
      FieldName = 'SEI_VALORFCPST'
      Origin = 'SEI_VALORFCPST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORFRETE: TFMTBCDField
      FieldName = 'SEI_VALORFRETE'
      Origin = 'SEI_VALORFRETE'
      Precision = 18
    end
    object TBServicosItensSEI_VALORICMS: TFMTBCDField
      FieldName = 'SEI_VALORICMS'
      Origin = 'SEI_VALORICMS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORICMSCREDSN: TFMTBCDField
      FieldName = 'SEI_VALORICMSCREDSN'
      Origin = 'SEI_VALORICMSCREDSN'
      Precision = 18
    end
    object TBServicosItensSEI_VALORICMSST: TFMTBCDField
      FieldName = 'SEI_VALORICMSST'
      Origin = 'SEI_VALORICMSST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORICMSUFDEST: TFMTBCDField
      FieldName = 'SEI_VALORICMSUFDEST'
      Origin = 'SEI_VALORICMSUFDEST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORICMSUFREMET: TFMTBCDField
      FieldName = 'SEI_VALORICMSUFREMET'
      Origin = 'SEI_VALORICMSUFREMET'
      Precision = 18
    end
    object TBServicosItensSEI_VALORIPI: TFMTBCDField
      FieldName = 'SEI_VALORIPI'
      Origin = 'SEI_VALORIPI'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISS: TFMTBCDField
      FieldName = 'SEI_VALORISS'
      Origin = 'SEI_VALORISS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISSDEDUCAO: TFMTBCDField
      FieldName = 'SEI_VALORISSDEDUCAO'
      Origin = 'SEI_VALORISSDEDUCAO'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISSDESCCOND: TFMTBCDField
      FieldName = 'SEI_VALORISSDESCCOND'
      Origin = 'SEI_VALORISSDESCCOND'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISSDESCINCOND: TFMTBCDField
      FieldName = 'SEI_VALORISSDESCINCOND'
      Origin = 'SEI_VALORISSDESCINCOND'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISSOUTROS: TFMTBCDField
      FieldName = 'SEI_VALORISSOUTROS'
      Origin = 'SEI_VALORISSOUTROS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORISSRETENCAO: TFMTBCDField
      FieldName = 'SEI_VALORISSRETENCAO'
      Origin = 'SEI_VALORISSRETENCAO'
      Precision = 18
    end
    object TBServicosItensSEI_VALORPIS: TFMTBCDField
      FieldName = 'SEI_VALORPIS'
      Origin = 'SEI_VALORPIS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORPISST: TFMTBCDField
      FieldName = 'SEI_VALORPISST'
      Origin = 'SEI_VALORPISST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORSEGURO: TFMTBCDField
      FieldName = 'SEI_VALORSEGURO'
      Origin = 'SEI_VALORSEGURO'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTOTAL: TFMTBCDField
      FieldName = 'SEI_VALORTOTAL'
      Origin = 'SEI_VALORTOTAL'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTOTALBRUTO: TFMTBCDField
      FieldName = 'SEI_VALORTOTALBRUTO'
      Origin = 'SEI_VALORTOTALBRUTO'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTRIBUTOS: TFMTBCDField
      FieldName = 'SEI_VALORTRIBUTOS'
      Origin = 'SEI_VALORTRIBUTOS'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTRIBUTOSEST: TFMTBCDField
      FieldName = 'SEI_VALORTRIBUTOSEST'
      Origin = 'SEI_VALORTRIBUTOSEST'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTRIBUTOSFED: TFMTBCDField
      FieldName = 'SEI_VALORTRIBUTOSFED'
      Origin = 'SEI_VALORTRIBUTOSFED'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTRIBUTOSIMP: TFMTBCDField
      FieldName = 'SEI_VALORTRIBUTOSIMP'
      Origin = 'SEI_VALORTRIBUTOSIMP'
      Precision = 18
    end
    object TBServicosItensSEI_VALORTRIBUTOSMUN: TFMTBCDField
      FieldName = 'SEI_VALORTRIBUTOSMUN'
      Origin = 'SEI_VALORTRIBUTOSMUN'
      Precision = 18
    end
    object TBServicosItensSEI_VALORUNIT: TFMTBCDField
      FieldName = 'SEI_VALORUNIT'
      Origin = 'SEI_VALORUNIT'
      Precision = 18
    end
    object TBServicosItensCLF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBServicosItensICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBServicosItensICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBServicosItensIPI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBServicosItensISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      Size = 1000
    end
    object TBServicosItensNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBServicosItensNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBServicosItensNAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBServicosItensPIS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBServicosItensPIS_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO1'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
  end
  object TRServicosItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 552
    Top = 336
  end
  object DSServicos: TDataSource
    DataSet = TBServicos
    Left = 488
    Top = 432
  end
  object UPServicos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SERVICOS'
      '(SER_ABERTOPOR, SER_ACESSORIOS, SER_ALIQICMSCREDSN, '
      '  SER_ANDAMENTO, SER_BAIXADOPOR, SER_BASECOFINS, '
      '  SER_BASECOFINSST, SER_BASEICMS, SER_BASEICMSST, '
      '  SER_BASEIPI, SER_BASEISS, SER_BASEPIS, SER_BASEPISST, '
      '  SER_CFOP, SER_CFOPDESC, SER_CLIENTE, SER_CODIGO, '
      '  SER_COMISSAO, SER_CONSERTO, SER_CUSTOTOTAL, '
      '  SER_DEFEITO, SER_DESCPORC, SER_DESCVALOR, '
      '  SER_DTATUALIZACAO, SER_DTCADASTRO, SER_DTENTRADA, '
      '  SER_DTPREVISAO, SER_DTSAIDA, SER_DTTECNICO, '
      '  SER_EQUIPAMENTO, SER_ESTADO, SER_FINALIZADOPOR, '
      '  SER_HRATUALIZACAO, SER_HRCADASTRO, SER_KMATUAL, '
      '  SER_LOCALIZACAO, SER_LUCROPORC, SER_LUCROVALOR, '
      '  SER_OBSERVACOES, SER_PESOLIQ, SER_SENHAONLINE, '
      '  SER_SEQUENCIAITEM, SER_STATUS, SER_TABELAPRECO, '
      '  SER_TECNICO, SER_TOTALBRUTO, SER_TOTALCOFINS, '
      '  SER_TOTALCOFINSST, SER_TOTALCOMISSAO, SER_TOTALFCP, '
      '  SER_TOTALFCPST, SER_TOTALHORAS, SER_TOTALHORASDEC, '
      '  SER_TOTALICMS, SER_TOTALICMSCREDSN, SER_TOTALICMSST, '
      '  SER_TOTALICMSUFDEST, SER_TOTALICMSUFREMET, SER_TOTALIPI, '
      '  SER_TOTALISS, SER_TOTALISSDEDUCAO, SER_TOTALISSDESCCOND, '
      
        '  SER_TOTALISSDESCINCOND, SER_TOTALISSOUTROS, SER_TOTALISSRETENC' +
        'AO, '
      '  SER_TOTALITENS, SER_TOTALPIS, SER_TOTALPISST, '
      '  SER_TOTALPRODUTOS, SER_TOTALSERVICOS, SER_TOTALTRIBUTOS, '
      
        '  SER_TOTALTRIBUTOSEST, SER_TOTALTRIBUTOSFED, SER_TOTALTRIBUTOSI' +
        'MP, '
      '  SER_TOTALTRIBUTOSMUN, SER_USUARIO, SER_VALOR, '
      '  SER_VALORDESPACES, SER_VALORFRETE, SER_VALORSEGURO, '
      '  SER_VALORTOTAL)'
      
        'VALUES (:NEW_SER_ABERTOPOR, :NEW_SER_ACESSORIOS, :NEW_SER_ALIQIC' +
        'MSCREDSN, '
      '  :NEW_SER_ANDAMENTO, :NEW_SER_BAIXADOPOR, :NEW_SER_BASECOFINS, '
      
        '  :NEW_SER_BASECOFINSST, :NEW_SER_BASEICMS, :NEW_SER_BASEICMSST,' +
        ' '
      
        '  :NEW_SER_BASEIPI, :NEW_SER_BASEISS, :NEW_SER_BASEPIS, :NEW_SER' +
        '_BASEPISST, '
      
        '  :NEW_SER_CFOP, :NEW_SER_CFOPDESC, :NEW_SER_CLIENTE, gen_id(GEN' +
        '_SERVICOS,1), '
      '  :NEW_SER_COMISSAO, :NEW_SER_CONSERTO, :NEW_SER_CUSTOTOTAL, '
      '  :NEW_SER_DEFEITO, :NEW_SER_DESCPORC, :NEW_SER_DESCVALOR, '
      
        '  :NEW_SER_DTATUALIZACAO, :NEW_SER_DTCADASTRO, :NEW_SER_DTENTRAD' +
        'A, '
      '  :NEW_SER_DTPREVISAO, :NEW_SER_DTSAIDA, :NEW_SER_DTTECNICO, '
      
        '  :NEW_SER_EQUIPAMENTO, :NEW_SER_ESTADO, :NEW_SER_FINALIZADOPOR,' +
        ' '
      
        '  :NEW_SER_HRATUALIZACAO, :NEW_SER_HRCADASTRO, :NEW_SER_KMATUAL,' +
        ' '
      
        '  :NEW_SER_LOCALIZACAO, :NEW_SER_LUCROPORC, :NEW_SER_LUCROVALOR,' +
        ' '
      '  :NEW_SER_OBSERVACOES, :NEW_SER_PESOLIQ, :NEW_SER_SENHAONLINE, '
      
        '  :NEW_SER_SEQUENCIAITEM, :NEW_SER_STATUS, :NEW_SER_TABELAPRECO,' +
        ' '
      '  :NEW_SER_TECNICO, :NEW_SER_TOTALBRUTO, :NEW_SER_TOTALCOFINS, '
      
        '  :NEW_SER_TOTALCOFINSST, :NEW_SER_TOTALCOMISSAO, :NEW_SER_TOTAL' +
        'FCP, '
      
        '  :NEW_SER_TOTALFCPST, :NEW_SER_TOTALHORAS, :NEW_SER_TOTALHORASD' +
        'EC, '
      
        '  :NEW_SER_TOTALICMS, :NEW_SER_TOTALICMSCREDSN, :NEW_SER_TOTALIC' +
        'MSST, '
      
        '  :NEW_SER_TOTALICMSUFDEST, :NEW_SER_TOTALICMSUFREMET, :NEW_SER_' +
        'TOTALIPI, '
      
        '  :NEW_SER_TOTALISS, :NEW_SER_TOTALISSDEDUCAO, :NEW_SER_TOTALISS' +
        'DESCCOND, '
      
        '  :NEW_SER_TOTALISSDESCINCOND, :NEW_SER_TOTALISSOUTROS, :NEW_SER' +
        '_TOTALISSRETENCAO, '
      '  :NEW_SER_TOTALITENS, :NEW_SER_TOTALPIS, :NEW_SER_TOTALPISST, '
      
        '  :NEW_SER_TOTALPRODUTOS, :NEW_SER_TOTALSERVICOS, :NEW_SER_TOTAL' +
        'TRIBUTOS, '
      
        '  :NEW_SER_TOTALTRIBUTOSEST, :NEW_SER_TOTALTRIBUTOSFED, :NEW_SER' +
        '_TOTALTRIBUTOSIMP, '
      '  :NEW_SER_TOTALTRIBUTOSMUN, :NEW_SER_USUARIO, :NEW_SER_VALOR, '
      
        '  :NEW_SER_VALORDESPACES, :NEW_SER_VALORFRETE, :NEW_SER_VALORSEG' +
        'URO, '
      '  :NEW_SER_VALORTOTAL)'
      
        'RETURNING SER_ABERTOPOR, SER_ACESSORIOS, SER_ALIQICMSCREDSN, SER' +
        '_ANDAMENTO, SER_BAIXADOPOR, SER_BASECOFINS, SER_BASECOFINSST, SE' +
        'R_BASEICMS, SER_BASEICMSST, SER_BASEIPI, SER_BASEISS, SER_BASEPI' +
        'S, SER_BASEPISST, SER_CFOP, SER_CFOPDESC, SER_CLIENTE, SER_CODIG' +
        'O, SER_COMISSAO, SER_CONSERTO, SER_CUSTOTOTAL, SER_DEFEITO, SER_' +
        'DESCPORC, SER_DESCVALOR, SER_DTATUALIZACAO, SER_DTCADASTRO, SER_' +
        'DTENTRADA, SER_DTPREVISAO, SER_DTSAIDA, SER_DTTECNICO, SER_EQUIP' +
        'AMENTO, SER_ESTADO, SER_FINALIZADOPOR, SER_HRATUALIZACAO, SER_HR' +
        'CADASTRO, SER_KMATUAL, SER_LOCALIZACAO, SER_LUCROPORC, SER_LUCRO' +
        'VALOR, SER_OBSERVACOES, SER_PESOLIQ, SER_SENHAONLINE, SER_SEQUEN' +
        'CIAITEM, SER_STATUS, SER_TABELAPRECO, SER_TECNICO, SER_TOTALBRUT' +
        'O, SER_TOTALCOFINS, SER_TOTALCOFINSST, SER_TOTALCOMISSAO, SER_TO' +
        'TALFCP, SER_TOTALFCPST, SER_TOTALHORAS, SER_TOTALHORASDEC, SER_T' +
        'OTALICMS, SER_TOTALICMSCREDSN, SER_TOTALICMSST, SER_TOTALICMSUFD' +
        'EST, SER_TOTALICMSUFREMET, SER_TOTALIPI, SER_TOTALISS, SER_TOTAL' +
        'ISSDEDUCAO, SER_TOTALISSDESCCOND, SER_TOTALISSDESCINCOND, SER_TO' +
        'TALISSOUTROS, SER_TOTALISSRETENCAO, SER_TOTALITENS, SER_TOTALPIS' +
        ', SER_TOTALPISST, SER_TOTALPRODUTOS, SER_TOTALSERVICOS, SER_TOTA' +
        'LTRIBUTOS, SER_TOTALTRIBUTOSEST, SER_TOTALTRIBUTOSFED, SER_TOTAL' +
        'TRIBUTOSIMP, SER_TOTALTRIBUTOSMUN, SER_USUARIO, SER_VALOR, SER_V' +
        'ALORDESPACES, SER_VALORFRETE, SER_VALORSEGURO, SER_VALORTOTAL')
    ModifySQL.Strings = (
      'UPDATE SERVICOS'
      
        'SET SER_ABERTOPOR = :NEW_SER_ABERTOPOR, SER_ACESSORIOS = :NEW_SE' +
        'R_ACESSORIOS, '
      
        '  SER_ALIQICMSCREDSN = :NEW_SER_ALIQICMSCREDSN, SER_ANDAMENTO = ' +
        ':NEW_SER_ANDAMENTO, '
      
        '  SER_BAIXADOPOR = :NEW_SER_BAIXADOPOR, SER_BASECOFINS = :NEW_SE' +
        'R_BASECOFINS, '
      
        '  SER_BASECOFINSST = :NEW_SER_BASECOFINSST, SER_BASEICMS = :NEW_' +
        'SER_BASEICMS, '
      
        '  SER_BASEICMSST = :NEW_SER_BASEICMSST, SER_BASEIPI = :NEW_SER_B' +
        'ASEIPI, '
      
        '  SER_BASEISS = :NEW_SER_BASEISS, SER_BASEPIS = :NEW_SER_BASEPIS' +
        ', '
      '  SER_BASEPISST = :NEW_SER_BASEPISST, SER_CFOP = :NEW_SER_CFOP, '
      
        '  SER_CFOPDESC = :NEW_SER_CFOPDESC, SER_CLIENTE = :NEW_SER_CLIEN' +
        'TE, '
      
        '  SER_CODIGO = :NEW_SER_CODIGO, SER_COMISSAO = :NEW_SER_COMISSAO' +
        ', '
      
        '  SER_CONSERTO = :NEW_SER_CONSERTO, SER_CUSTOTOTAL = :NEW_SER_CU' +
        'STOTOTAL, '
      
        '  SER_DEFEITO = :NEW_SER_DEFEITO, SER_DESCPORC = :NEW_SER_DESCPO' +
        'RC, '
      
        '  SER_DESCVALOR = :NEW_SER_DESCVALOR, SER_DTATUALIZACAO = :NEW_S' +
        'ER_DTATUALIZACAO, '
      
        '  SER_DTCADASTRO = :NEW_SER_DTCADASTRO, SER_DTENTRADA = :NEW_SER' +
        '_DTENTRADA, '
      
        '  SER_DTPREVISAO = :NEW_SER_DTPREVISAO, SER_DTSAIDA = :NEW_SER_D' +
        'TSAIDA, '
      
        '  SER_DTTECNICO = :NEW_SER_DTTECNICO, SER_EQUIPAMENTO = :NEW_SER' +
        '_EQUIPAMENTO, '
      
        '  SER_ESTADO = :NEW_SER_ESTADO, SER_FINALIZADOPOR = :NEW_SER_FIN' +
        'ALIZADOPOR, '
      
        '  SER_HRATUALIZACAO = :NEW_SER_HRATUALIZACAO, SER_HRCADASTRO = :' +
        'NEW_SER_HRCADASTRO, '
      
        '  SER_KMATUAL = :NEW_SER_KMATUAL, SER_LOCALIZACAO = :NEW_SER_LOC' +
        'ALIZACAO, '
      
        '  SER_LUCROPORC = :NEW_SER_LUCROPORC, SER_LUCROVALOR = :NEW_SER_' +
        'LUCROVALOR, '
      
        '  SER_OBSERVACOES = :NEW_SER_OBSERVACOES, SER_PESOLIQ = :NEW_SER' +
        '_PESOLIQ, '
      
        '  SER_SENHAONLINE = :NEW_SER_SENHAONLINE, SER_SEQUENCIAITEM = :N' +
        'EW_SER_SEQUENCIAITEM, '
      
        '  SER_STATUS = :NEW_SER_STATUS, SER_TABELAPRECO = :NEW_SER_TABEL' +
        'APRECO, '
      
        '  SER_TECNICO = :NEW_SER_TECNICO, SER_TOTALBRUTO = :NEW_SER_TOTA' +
        'LBRUTO, '
      
        '  SER_TOTALCOFINS = :NEW_SER_TOTALCOFINS, SER_TOTALCOFINSST = :N' +
        'EW_SER_TOTALCOFINSST, '
      
        '  SER_TOTALCOMISSAO = :NEW_SER_TOTALCOMISSAO, SER_TOTALFCP = :NE' +
        'W_SER_TOTALFCP, '
      
        '  SER_TOTALFCPST = :NEW_SER_TOTALFCPST, SER_TOTALHORAS = :NEW_SE' +
        'R_TOTALHORAS, '
      
        '  SER_TOTALHORASDEC = :NEW_SER_TOTALHORASDEC, SER_TOTALICMS = :N' +
        'EW_SER_TOTALICMS, '
      
        '  SER_TOTALICMSCREDSN = :NEW_SER_TOTALICMSCREDSN, SER_TOTALICMSS' +
        'T = :NEW_SER_TOTALICMSST, '
      
        '  SER_TOTALICMSUFDEST = :NEW_SER_TOTALICMSUFDEST, SER_TOTALICMSU' +
        'FREMET = :NEW_SER_TOTALICMSUFREMET, '
      
        '  SER_TOTALIPI = :NEW_SER_TOTALIPI, SER_TOTALISS = :NEW_SER_TOTA' +
        'LISS, '
      
        '  SER_TOTALISSDEDUCAO = :NEW_SER_TOTALISSDEDUCAO, SER_TOTALISSDE' +
        'SCCOND = :NEW_SER_TOTALISSDESCCOND, '
      
        '  SER_TOTALISSDESCINCOND = :NEW_SER_TOTALISSDESCINCOND, SER_TOTA' +
        'LISSOUTROS = :NEW_SER_TOTALISSOUTROS, '
      
        '  SER_TOTALISSRETENCAO = :NEW_SER_TOTALISSRETENCAO, SER_TOTALITE' +
        'NS = :NEW_SER_TOTALITENS, '
      
        '  SER_TOTALPIS = :NEW_SER_TOTALPIS, SER_TOTALPISST = :NEW_SER_TO' +
        'TALPISST, '
      
        '  SER_TOTALPRODUTOS = :NEW_SER_TOTALPRODUTOS, SER_TOTALSERVICOS ' +
        '= :NEW_SER_TOTALSERVICOS, '
      
        '  SER_TOTALTRIBUTOS = :NEW_SER_TOTALTRIBUTOS, SER_TOTALTRIBUTOSE' +
        'ST = :NEW_SER_TOTALTRIBUTOSEST, '
      
        '  SER_TOTALTRIBUTOSFED = :NEW_SER_TOTALTRIBUTOSFED, SER_TOTALTRI' +
        'BUTOSIMP = :NEW_SER_TOTALTRIBUTOSIMP, '
      
        '  SER_TOTALTRIBUTOSMUN = :NEW_SER_TOTALTRIBUTOSMUN, SER_USUARIO ' +
        '= :NEW_SER_USUARIO, '
      
        '  SER_VALOR = :NEW_SER_VALOR, SER_VALORDESPACES = :NEW_SER_VALOR' +
        'DESPACES, '
      
        '  SER_VALORFRETE = :NEW_SER_VALORFRETE, SER_VALORSEGURO = :NEW_S' +
        'ER_VALORSEGURO, '
      '  SER_VALORTOTAL = :NEW_SER_VALORTOTAL'
      'WHERE SER_CODIGO = :OLD_SER_CODIGO'
      
        'RETURNING SER_ABERTOPOR, SER_ACESSORIOS, SER_ALIQICMSCREDSN, SER' +
        '_ANDAMENTO, SER_BAIXADOPOR, SER_BASECOFINS, SER_BASECOFINSST, SE' +
        'R_BASEICMS, SER_BASEICMSST, SER_BASEIPI, SER_BASEISS, SER_BASEPI' +
        'S, SER_BASEPISST, SER_CFOP, SER_CFOPDESC, SER_CLIENTE, SER_CODIG' +
        'O, SER_COMISSAO, SER_CONSERTO, SER_CUSTOTOTAL, SER_DEFEITO, SER_' +
        'DESCPORC, SER_DESCVALOR, SER_DTATUALIZACAO, SER_DTCADASTRO, SER_' +
        'DTENTRADA, SER_DTPREVISAO, SER_DTSAIDA, SER_DTTECNICO, SER_EQUIP' +
        'AMENTO, SER_ESTADO, SER_FINALIZADOPOR, SER_HRATUALIZACAO, SER_HR' +
        'CADASTRO, SER_KMATUAL, SER_LOCALIZACAO, SER_LUCROPORC, SER_LUCRO' +
        'VALOR, SER_OBSERVACOES, SER_PESOLIQ, SER_SENHAONLINE, SER_SEQUEN' +
        'CIAITEM, SER_STATUS, SER_TABELAPRECO, SER_TECNICO, SER_TOTALBRUT' +
        'O, SER_TOTALCOFINS, SER_TOTALCOFINSST, SER_TOTALCOMISSAO, SER_TO' +
        'TALFCP, SER_TOTALFCPST, SER_TOTALHORAS, SER_TOTALHORASDEC, SER_T' +
        'OTALICMS, SER_TOTALICMSCREDSN, SER_TOTALICMSST, SER_TOTALICMSUFD' +
        'EST, SER_TOTALICMSUFREMET, SER_TOTALIPI, SER_TOTALISS, SER_TOTAL' +
        'ISSDEDUCAO, SER_TOTALISSDESCCOND, SER_TOTALISSDESCINCOND, SER_TO' +
        'TALISSOUTROS, SER_TOTALISSRETENCAO, SER_TOTALITENS, SER_TOTALPIS' +
        ', SER_TOTALPISST, SER_TOTALPRODUTOS, SER_TOTALSERVICOS, SER_TOTA' +
        'LTRIBUTOS, SER_TOTALTRIBUTOSEST, SER_TOTALTRIBUTOSFED, SER_TOTAL' +
        'TRIBUTOSIMP, SER_TOTALTRIBUTOSMUN, SER_USUARIO, SER_VALOR, SER_V' +
        'ALORDESPACES, SER_VALORFRETE, SER_VALORSEGURO, SER_VALORTOTAL')
    DeleteSQL.Strings = (
      'DELETE FROM SERVICOS'
      'WHERE SER_CODIGO = :OLD_SER_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT SER_ABERTOPOR, SER_ACESSORIOS, SER_ALIQICMSCREDSN, SER_AN' +
        'DAMENTO, '
      
        '  SER_BAIXADOPOR, SER_BASECOFINS, SER_BASECOFINSST, SER_BASEICMS' +
        ', '
      
        '  SER_BASEICMSST, SER_BASEIPI, SER_BASEISS, SER_BASEPIS, SER_BAS' +
        'EPISST, '
      
        '  SER_CFOP, SER_CFOPDESC, SER_CLIENTE, SER_CODIGO, SER_COMISSAO,' +
        ' '
      '  SER_CONSERTO, SER_CUSTOTOTAL, SER_DEFEITO, SER_DESCPORC, '
      
        '  SER_DESCVALOR, SER_DTATUALIZACAO, SER_DTCADASTRO, SER_DTENTRAD' +
        'A, '
      '  SER_DTPREVISAO, SER_DTSAIDA, SER_DTTECNICO, SER_EQUIPAMENTO, '
      
        '  SER_ESTADO, SER_FINALIZADOPOR, SER_HRATUALIZACAO, SER_HRCADAST' +
        'RO, '
      '  SER_KMATUAL, SER_LOCALIZACAO, SER_LUCROPORC, SER_LUCROVALOR, '
      
        '  SER_OBSERVACOES, SER_PESOLIQ, SER_SENHAONLINE, SER_SEQUENCIAIT' +
        'EM, '
      '  SER_STATUS, SER_TABELAPRECO, SER_TECNICO, SER_TOTALBRUTO, '
      
        '  SER_TOTALCOFINS, SER_TOTALCOFINSST, SER_TOTALCOMISSAO, SER_TOT' +
        'ALFCP, '
      
        '  SER_TOTALFCPST, SER_TOTALHORAS, SER_TOTALHORASDEC, SER_TOTALIC' +
        'MS, '
      '  SER_TOTALICMSCREDSN, SER_TOTALICMSST, SER_TOTALICMSUFDEST, '
      
        '  SER_TOTALICMSUFREMET, SER_TOTALIPI, SER_TOTALISS, SER_TOTALISS' +
        'DEDUCAO, '
      
        '  SER_TOTALISSDESCCOND, SER_TOTALISSDESCINCOND, SER_TOTALISSOUTR' +
        'OS, '
      
        '  SER_TOTALISSRETENCAO, SER_TOTALITENS, SER_TOTALPIS, SER_TOTALP' +
        'ISST, '
      '  SER_TOTALPRODUTOS, SER_TOTALSERVICOS, SER_TOTALTRIBUTOS, '
      
        '  SER_TOTALTRIBUTOSEST, SER_TOTALTRIBUTOSFED, SER_TOTALTRIBUTOSI' +
        'MP, '
      
        '  SER_TOTALTRIBUTOSMUN, SER_USUARIO, SER_VALOR, SER_VALORDESPACE' +
        'S, '
      '  SER_VALORFRETE, SER_VALORSEGURO, SER_VALORTOTAL'
      'FROM SERVICOS'
      'WHERE SER_CODIGO = :OLD_SER_CODIGO')
    Left = 488
    Top = 384
  end
  object UPServicosItens: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SERVICOSITENS'
      '(SEI_ALIQCOFINS, SEI_ALIQCOFINSST, SEI_ALIQFCP, '
      '  SEI_ALIQFCPST, SEI_ALIQICMS, SEI_ALIQICMSADICST, '
      '  SEI_ALIQICMSINTER, SEI_ALIQICMSINTERPART, SEI_ALIQICMSRED, '
      '  SEI_ALIQICMSST, SEI_ALIQIPI, SEI_ALIQISS, '
      '  SEI_ALIQPIS, SEI_ALIQPISST, SEI_ALMOXARIFADO, '
      '  SEI_BASECOFINS, SEI_BASECOFINSST, SEI_BASEICMS, '
      '  SEI_BASEICMSRED, SEI_BASEICMSST, SEI_BASEIPI, '
      '  SEI_BASEISS, SEI_BASEPIS, SEI_BASEPISST, '
      '  SEI_CEST, SEI_CFOP, SEI_CIDADEISS, SEI_CLASSFISCAL, '
      '  SEI_CODIGO, SEI_CODIGOBARRAS, SEI_CODIGOFAB, '
      '  SEI_COMISSAO, SEI_COMPLEMENTO, SEI_COMPOEBASEICMS, '
      '  SEI_COMPOEBASEICMSST, SEI_COMPOETOTAL, SEI_CONVERSAO, '
      '  SEI_CSTCOFINS, SEI_CSTICMS, SEI_CSTIPI, SEI_CSTPIS, '
      '  SEI_DESCMAX, SEI_DESCPORC, SEI_DESCRICAO, '
      '  SEI_DESCVALOR, SEI_ENQUADRAMENTOIPI, SEI_EXCECAO, '
      '  SEI_FCI, SEI_INCENTIVOISS, SEI_INDICADORISS, '
      '  SEI_INFOADICIONAL, SEI_LOCALIZACAO, SEI_LOTE, '
      '  SEI_LUCROPORC, SEI_LUCROVALOR, SEI_MODICMS, '
      '  SEI_MODICMSST, SEI_ORIGEM, SEI_PAISISS, SEI_PESO, '
      '  SEI_PESOTOTAL, SEI_PRECOCUSTO, SEI_PRECOCUSTOTOTAL, '
      '  SEI_PROCESSOISS, SEI_PRODUTO, SEI_PRODUTOREAL, '
      '  SEI_QUANTIDADE, SEI_QUANTIDADETROCA, SEI_SEQUENCIA, '
      '  SEI_SERVICO, SEI_SERVICOISS, SEI_TIPO, SEI_TIPOISS, '
      '  SEI_UNIDADE, SEI_VALORACESSORIAS, SEI_VALORCOFINS, '
      '  SEI_VALORCOFINSST, SEI_VALORCOMISSAO, SEI_VALORFCP, '
      '  SEI_VALORFCPST, SEI_VALORFRETE, SEI_VALORICMS, '
      '  SEI_VALORICMSCREDSN, SEI_VALORICMSST, SEI_VALORICMSUFDEST, '
      '  SEI_VALORICMSUFREMET, SEI_VALORIPI, SEI_VALORISS, '
      
        '  SEI_VALORISSDEDUCAO, SEI_VALORISSDESCCOND, SEI_VALORISSDESCINC' +
        'OND, '
      '  SEI_VALORISSOUTROS, SEI_VALORISSRETENCAO, SEI_VALORPIS, '
      '  SEI_VALORPISST, SEI_VALORSEGURO, SEI_VALORTOTAL, '
      '  SEI_VALORTOTALBRUTO, SEI_VALORTRIBUTOS, SEI_VALORTRIBUTOSEST, '
      
        '  SEI_VALORTRIBUTOSFED, SEI_VALORTRIBUTOSIMP, SEI_VALORTRIBUTOSM' +
        'UN, '
      '  SEI_VALORUNIT, SEI_BENEFICIO)'
      
        'VALUES (:NEW_SEI_ALIQCOFINS, :NEW_SEI_ALIQCOFINSST, :NEW_SEI_ALI' +
        'QFCP, '
      
        '  :NEW_SEI_ALIQFCPST, :NEW_SEI_ALIQICMS, :NEW_SEI_ALIQICMSADICST' +
        ', '
      
        '  :NEW_SEI_ALIQICMSINTER, :NEW_SEI_ALIQICMSINTERPART, :NEW_SEI_A' +
        'LIQICMSRED, '
      '  :NEW_SEI_ALIQICMSST, :NEW_SEI_ALIQIPI, :NEW_SEI_ALIQISS, '
      '  :NEW_SEI_ALIQPIS, :NEW_SEI_ALIQPISST, :NEW_SEI_ALMOXARIFADO, '
      
        '  :NEW_SEI_BASECOFINS, :NEW_SEI_BASECOFINSST, :NEW_SEI_BASEICMS,' +
        ' '
      '  :NEW_SEI_BASEICMSRED, :NEW_SEI_BASEICMSST, :NEW_SEI_BASEIPI, '
      '  :NEW_SEI_BASEISS, :NEW_SEI_BASEPIS, :NEW_SEI_BASEPISST, '
      
        '  :NEW_SEI_CEST, :NEW_SEI_CFOP, :NEW_SEI_CIDADEISS, :NEW_SEI_CLA' +
        'SSFISCAL, '
      
        '  gen_id(GEN_SERVICOSITENS,1), :NEW_SEI_CODIGOBARRAS, :NEW_SEI_C' +
        'ODIGOFAB, '
      
        '  :NEW_SEI_COMISSAO, :NEW_SEI_COMPLEMENTO, :NEW_SEI_COMPOEBASEIC' +
        'MS, '
      
        '  :NEW_SEI_COMPOEBASEICMSST, :NEW_SEI_COMPOETOTAL, :NEW_SEI_CONV' +
        'ERSAO, '
      
        '  :NEW_SEI_CSTCOFINS, :NEW_SEI_CSTICMS, :NEW_SEI_CSTIPI, :NEW_SE' +
        'I_CSTPIS, '
      '  :NEW_SEI_DESCMAX, :NEW_SEI_DESCPORC, :NEW_SEI_DESCRICAO, '
      
        '  :NEW_SEI_DESCVALOR, :NEW_SEI_ENQUADRAMENTOIPI, :NEW_SEI_EXCECA' +
        'O, '
      '  :NEW_SEI_FCI, :NEW_SEI_INCENTIVOISS, :NEW_SEI_INDICADORISS, '
      '  :NEW_SEI_INFOADICIONAL, :NEW_SEI_LOCALIZACAO, :NEW_SEI_LOTE, '
      '  :NEW_SEI_LUCROPORC, :NEW_SEI_LUCROVALOR, :NEW_SEI_MODICMS, '
      
        '  :NEW_SEI_MODICMSST, :NEW_SEI_ORIGEM, :NEW_SEI_PAISISS, :NEW_SE' +
        'I_PESO, '
      
        '  :NEW_SEI_PESOTOTAL, :NEW_SEI_PRECOCUSTO, :NEW_SEI_PRECOCUSTOTO' +
        'TAL, '
      '  :NEW_SEI_PROCESSOISS, :NEW_SEI_PRODUTO, :NEW_SEI_PRODUTOREAL, '
      
        '  :NEW_SEI_QUANTIDADE, :NEW_SEI_QUANTIDADETROCA, :NEW_SEI_SEQUEN' +
        'CIA, '
      
        '  :NEW_SEI_SERVICO, :NEW_SEI_SERVICOISS, :NEW_SEI_TIPO, :NEW_SEI' +
        '_TIPOISS, '
      
        '  :NEW_SEI_UNIDADE, :NEW_SEI_VALORACESSORIAS, :NEW_SEI_VALORCOFI' +
        'NS, '
      
        '  :NEW_SEI_VALORCOFINSST, :NEW_SEI_VALORCOMISSAO, :NEW_SEI_VALOR' +
        'FCP, '
      '  :NEW_SEI_VALORFCPST, :NEW_SEI_VALORFRETE, :NEW_SEI_VALORICMS, '
      
        '  :NEW_SEI_VALORICMSCREDSN, :NEW_SEI_VALORICMSST, :NEW_SEI_VALOR' +
        'ICMSUFDEST, '
      
        '  :NEW_SEI_VALORICMSUFREMET, :NEW_SEI_VALORIPI, :NEW_SEI_VALORIS' +
        'S, '
      
        '  :NEW_SEI_VALORISSDEDUCAO, :NEW_SEI_VALORISSDESCCOND, :NEW_SEI_' +
        'VALORISSDESCINCOND, '
      
        '  :NEW_SEI_VALORISSOUTROS, :NEW_SEI_VALORISSRETENCAO, :NEW_SEI_V' +
        'ALORPIS, '
      
        '  :NEW_SEI_VALORPISST, :NEW_SEI_VALORSEGURO, :NEW_SEI_VALORTOTAL' +
        ', '
      
        '  :NEW_SEI_VALORTOTALBRUTO, :NEW_SEI_VALORTRIBUTOS, :NEW_SEI_VAL' +
        'ORTRIBUTOSEST, '
      
        '  :NEW_SEI_VALORTRIBUTOSFED, :NEW_SEI_VALORTRIBUTOSIMP, :NEW_SEI' +
        '_VALORTRIBUTOSMUN, '
      '  :NEW_SEI_VALORUNIT, :NEW_SEI_BENEFICIO)'
      
        'RETURNING SEI_ALIQCOFINS, SEI_ALIQCOFINSST, SEI_ALIQFCP, SEI_ALI' +
        'QFCPST, SEI_ALIQICMS, SEI_ALIQICMSADICST, SEI_ALIQICMSINTER, SEI' +
        '_ALIQICMSINTERPART, SEI_ALIQICMSRED, SEI_ALIQICMSST, SEI_ALIQIPI' +
        ', SEI_ALIQISS, SEI_ALIQPIS, SEI_ALIQPISST, SEI_ALMOXARIFADO, SEI' +
        '_BASECOFINS, SEI_BASECOFINSST, SEI_BASEICMS, SEI_BASEICMSRED, SE' +
        'I_BASEICMSST, SEI_BASEIPI, SEI_BASEISS, SEI_BASEPIS, SEI_BASEPIS' +
        'ST, SEI_CEST, SEI_CFOP, SEI_CIDADEISS, SEI_CLASSFISCAL, SEI_CODI' +
        'GO, SEI_CODIGOBARRAS, SEI_CODIGOFAB, SEI_COMISSAO, SEI_COMPLEMEN' +
        'TO, SEI_COMPOEBASEICMS, SEI_COMPOEBASEICMSST, SEI_COMPOETOTAL, S' +
        'EI_CONVERSAO, SEI_CSTCOFINS, SEI_CSTICMS, SEI_CSTIPI, SEI_CSTPIS' +
        ', SEI_DESCMAX, SEI_DESCPORC, SEI_DESCRICAO, SEI_DESCVALOR, SEI_E' +
        'NQUADRAMENTOIPI, SEI_EXCECAO, SEI_FCI, SEI_INCENTIVOISS, SEI_IND' +
        'ICADORISS, SEI_INFOADICIONAL, SEI_LOCALIZACAO, SEI_LOTE, SEI_LUC' +
        'ROPORC, SEI_LUCROVALOR, SEI_MODICMS, SEI_MODICMSST, SEI_ORIGEM, ' +
        'SEI_PAISISS, SEI_PESO, SEI_PESOTOTAL, SEI_PRECOCUSTO, SEI_PRECOC' +
        'USTOTOTAL, SEI_PROCESSOISS, SEI_PRODUTO, SEI_PRODUTOREAL, SEI_QU' +
        'ANTIDADE, SEI_QUANTIDADETROCA, SEI_SEQUENCIA, SEI_SERVICO, SEI_S' +
        'ERVICOISS, SEI_TIPO, SEI_TIPOISS, SEI_UNIDADE, SEI_VALORACESSORI' +
        'AS, SEI_VALORCOFINS, SEI_VALORCOFINSST, SEI_VALORCOMISSAO, SEI_V' +
        'ALORFCP, SEI_VALORFCPST, SEI_VALORFRETE, SEI_VALORICMS, SEI_VALO' +
        'RICMSCREDSN, SEI_VALORICMSST, SEI_VALORICMSUFDEST, SEI_VALORICMS' +
        'UFREMET, SEI_VALORIPI, SEI_VALORISS, SEI_VALORISSDEDUCAO, SEI_VA' +
        'LORISSDESCCOND, SEI_VALORISSDESCINCOND, SEI_VALORISSOUTROS, SEI_' +
        'VALORISSRETENCAO, SEI_VALORPIS, SEI_VALORPISST, SEI_VALORSEGURO,' +
        ' SEI_VALORTOTAL, SEI_VALORTOTALBRUTO, SEI_VALORTRIBUTOS, SEI_VAL' +
        'ORTRIBUTOSEST, SEI_VALORTRIBUTOSFED, SEI_VALORTRIBUTOSIMP, SEI_V' +
        'ALORTRIBUTOSMUN, SEI_VALORUNIT, SEI_BENEFICIO')
    ModifySQL.Strings = (
      'UPDATE SERVICOSITENS'
      
        'SET SEI_ALIQCOFINS = :NEW_SEI_ALIQCOFINS, SEI_ALIQCOFINSST = :NE' +
        'W_SEI_ALIQCOFINSST, '
      
        '  SEI_ALIQFCP = :NEW_SEI_ALIQFCP, SEI_ALIQFCPST = :NEW_SEI_ALIQF' +
        'CPST, '
      
        '  SEI_ALIQICMS = :NEW_SEI_ALIQICMS, SEI_ALIQICMSADICST = :NEW_SE' +
        'I_ALIQICMSADICST, '
      
        '  SEI_ALIQICMSINTER = :NEW_SEI_ALIQICMSINTER, SEI_ALIQICMSINTERP' +
        'ART = :NEW_SEI_ALIQICMSINTERPART, '
      
        '  SEI_ALIQICMSRED = :NEW_SEI_ALIQICMSRED, SEI_ALIQICMSST = :NEW_' +
        'SEI_ALIQICMSST, '
      
        '  SEI_ALIQIPI = :NEW_SEI_ALIQIPI, SEI_ALIQISS = :NEW_SEI_ALIQISS' +
        ', '
      
        '  SEI_ALIQPIS = :NEW_SEI_ALIQPIS, SEI_ALIQPISST = :NEW_SEI_ALIQP' +
        'ISST, '
      
        '  SEI_ALMOXARIFADO = :NEW_SEI_ALMOXARIFADO, SEI_BASECOFINS = :NE' +
        'W_SEI_BASECOFINS, '
      
        '  SEI_BASECOFINSST = :NEW_SEI_BASECOFINSST, SEI_BASEICMS = :NEW_' +
        'SEI_BASEICMS, '
      
        '  SEI_BASEICMSRED = :NEW_SEI_BASEICMSRED, SEI_BASEICMSST = :NEW_' +
        'SEI_BASEICMSST, '
      
        '  SEI_BASEIPI = :NEW_SEI_BASEIPI, SEI_BASEISS = :NEW_SEI_BASEISS' +
        ', '
      
        '  SEI_BASEPIS = :NEW_SEI_BASEPIS, SEI_BASEPISST = :NEW_SEI_BASEP' +
        'ISST, '
      
        '  SEI_CEST = :NEW_SEI_CEST, SEI_CFOP = :NEW_SEI_CFOP, SEI_CIDADE' +
        'ISS = :NEW_SEI_CIDADEISS, '
      
        '  SEI_CLASSFISCAL = :NEW_SEI_CLASSFISCAL, SEI_CODIGO = :NEW_SEI_' +
        'CODIGO, '
      
        '  SEI_CODIGOBARRAS = :NEW_SEI_CODIGOBARRAS, SEI_CODIGOFAB = :NEW' +
        '_SEI_CODIGOFAB, '
      
        '  SEI_COMISSAO = :NEW_SEI_COMISSAO, SEI_COMPLEMENTO = :NEW_SEI_C' +
        'OMPLEMENTO, '
      
        '  SEI_COMPOEBASEICMS = :NEW_SEI_COMPOEBASEICMS, SEI_COMPOEBASEIC' +
        'MSST = :NEW_SEI_COMPOEBASEICMSST, '
      
        '  SEI_COMPOETOTAL = :NEW_SEI_COMPOETOTAL, SEI_CONVERSAO = :NEW_S' +
        'EI_CONVERSAO, '
      
        '  SEI_CSTCOFINS = :NEW_SEI_CSTCOFINS, SEI_CSTICMS = :NEW_SEI_CST' +
        'ICMS, '
      '  SEI_CSTIPI = :NEW_SEI_CSTIPI, SEI_CSTPIS = :NEW_SEI_CSTPIS, '
      
        '  SEI_DESCMAX = :NEW_SEI_DESCMAX, SEI_DESCPORC = :NEW_SEI_DESCPO' +
        'RC, '
      
        '  SEI_DESCRICAO = :NEW_SEI_DESCRICAO, SEI_DESCVALOR = :NEW_SEI_D' +
        'ESCVALOR, '
      
        '  SEI_ENQUADRAMENTOIPI = :NEW_SEI_ENQUADRAMENTOIPI, SEI_EXCECAO ' +
        '= :NEW_SEI_EXCECAO, '
      
        '  SEI_FCI = :NEW_SEI_FCI, SEI_INCENTIVOISS = :NEW_SEI_INCENTIVOI' +
        'SS, '
      
        '  SEI_INDICADORISS = :NEW_SEI_INDICADORISS, SEI_INFOADICIONAL = ' +
        ':NEW_SEI_INFOADICIONAL, '
      
        '  SEI_LOCALIZACAO = :NEW_SEI_LOCALIZACAO, SEI_LOTE = :NEW_SEI_LO' +
        'TE, '
      
        '  SEI_LUCROPORC = :NEW_SEI_LUCROPORC, SEI_LUCROVALOR = :NEW_SEI_' +
        'LUCROVALOR, '
      
        '  SEI_MODICMS = :NEW_SEI_MODICMS, SEI_MODICMSST = :NEW_SEI_MODIC' +
        'MSST, '
      '  SEI_ORIGEM = :NEW_SEI_ORIGEM, SEI_PAISISS = :NEW_SEI_PAISISS, '
      '  SEI_PESO = :NEW_SEI_PESO, SEI_PESOTOTAL = :NEW_SEI_PESOTOTAL, '
      
        '  SEI_PRECOCUSTO = :NEW_SEI_PRECOCUSTO, SEI_PRECOCUSTOTOTAL = :N' +
        'EW_SEI_PRECOCUSTOTOTAL, '
      
        '  SEI_PROCESSOISS = :NEW_SEI_PROCESSOISS, SEI_PRODUTO = :NEW_SEI' +
        '_PRODUTO, '
      
        '  SEI_PRODUTOREAL = :NEW_SEI_PRODUTOREAL, SEI_QUANTIDADE = :NEW_' +
        'SEI_QUANTIDADE, '
      
        '  SEI_QUANTIDADETROCA = :NEW_SEI_QUANTIDADETROCA, SEI_SEQUENCIA ' +
        '= :NEW_SEI_SEQUENCIA, '
      
        '  SEI_SERVICO = :NEW_SEI_SERVICO, SEI_SERVICOISS = :NEW_SEI_SERV' +
        'ICOISS, '
      '  SEI_TIPO = :NEW_SEI_TIPO, SEI_TIPOISS = :NEW_SEI_TIPOISS, '
      
        '  SEI_UNIDADE = :NEW_SEI_UNIDADE, SEI_VALORACESSORIAS = :NEW_SEI' +
        '_VALORACESSORIAS, '
      
        '  SEI_VALORCOFINS = :NEW_SEI_VALORCOFINS, SEI_VALORCOFINSST = :N' +
        'EW_SEI_VALORCOFINSST, '
      
        '  SEI_VALORCOMISSAO = :NEW_SEI_VALORCOMISSAO, SEI_VALORFCP = :NE' +
        'W_SEI_VALORFCP, '
      
        '  SEI_VALORFCPST = :NEW_SEI_VALORFCPST, SEI_VALORFRETE = :NEW_SE' +
        'I_VALORFRETE, '
      
        '  SEI_VALORICMS = :NEW_SEI_VALORICMS, SEI_VALORICMSCREDSN = :NEW' +
        '_SEI_VALORICMSCREDSN, '
      
        '  SEI_VALORICMSST = :NEW_SEI_VALORICMSST, SEI_VALORICMSUFDEST = ' +
        ':NEW_SEI_VALORICMSUFDEST, '
      
        '  SEI_VALORICMSUFREMET = :NEW_SEI_VALORICMSUFREMET, SEI_VALORIPI' +
        ' = :NEW_SEI_VALORIPI, '
      
        '  SEI_VALORISS = :NEW_SEI_VALORISS, SEI_VALORISSDEDUCAO = :NEW_S' +
        'EI_VALORISSDEDUCAO, '
      
        '  SEI_VALORISSDESCCOND = :NEW_SEI_VALORISSDESCCOND, SEI_VALORISS' +
        'DESCINCOND = :NEW_SEI_VALORISSDESCINCOND, '
      
        '  SEI_VALORISSOUTROS = :NEW_SEI_VALORISSOUTROS, SEI_VALORISSRETE' +
        'NCAO = :NEW_SEI_VALORISSRETENCAO, '
      
        '  SEI_VALORPIS = :NEW_SEI_VALORPIS, SEI_VALORPISST = :NEW_SEI_VA' +
        'LORPISST, '
      
        '  SEI_VALORSEGURO = :NEW_SEI_VALORSEGURO, SEI_VALORTOTAL = :NEW_' +
        'SEI_VALORTOTAL, '
      
        '  SEI_VALORTOTALBRUTO = :NEW_SEI_VALORTOTALBRUTO, SEI_VALORTRIBU' +
        'TOS = :NEW_SEI_VALORTRIBUTOS, '
      
        '  SEI_VALORTRIBUTOSEST = :NEW_SEI_VALORTRIBUTOSEST, SEI_VALORTRI' +
        'BUTOSFED = :NEW_SEI_VALORTRIBUTOSFED, '
      
        '  SEI_VALORTRIBUTOSIMP = :NEW_SEI_VALORTRIBUTOSIMP, SEI_VALORTRI' +
        'BUTOSMUN = :NEW_SEI_VALORTRIBUTOSMUN, '
      
        '  SEI_VALORUNIT = :NEW_SEI_VALORUNIT, SEI_BENEFICIO = :NEW_SEI_B' +
        'ENEFICIO'
      'WHERE SEI_CODIGO = :OLD_SEI_CODIGO'
      
        'RETURNING SEI_ALIQCOFINS, SEI_ALIQCOFINSST, SEI_ALIQFCP, SEI_ALI' +
        'QFCPST, SEI_ALIQICMS, SEI_ALIQICMSADICST, SEI_ALIQICMSINTER, SEI' +
        '_ALIQICMSINTERPART, SEI_ALIQICMSRED, SEI_ALIQICMSST, SEI_ALIQIPI' +
        ', SEI_ALIQISS, SEI_ALIQPIS, SEI_ALIQPISST, SEI_ALMOXARIFADO, SEI' +
        '_BASECOFINS, SEI_BASECOFINSST, SEI_BASEICMS, SEI_BASEICMSRED, SE' +
        'I_BASEICMSST, SEI_BASEIPI, SEI_BASEISS, SEI_BASEPIS, SEI_BASEPIS' +
        'ST, SEI_CEST, SEI_CFOP, SEI_CIDADEISS, SEI_CLASSFISCAL, SEI_CODI' +
        'GO, SEI_CODIGOBARRAS, SEI_CODIGOFAB, SEI_COMISSAO, SEI_COMPLEMEN' +
        'TO, SEI_COMPOEBASEICMS, SEI_COMPOEBASEICMSST, SEI_COMPOETOTAL, S' +
        'EI_CONVERSAO, SEI_CSTCOFINS, SEI_CSTICMS, SEI_CSTIPI, SEI_CSTPIS' +
        ', SEI_DESCMAX, SEI_DESCPORC, SEI_DESCRICAO, SEI_DESCVALOR, SEI_E' +
        'NQUADRAMENTOIPI, SEI_EXCECAO, SEI_FCI, SEI_INCENTIVOISS, SEI_IND' +
        'ICADORISS, SEI_INFOADICIONAL, SEI_LOCALIZACAO, SEI_LOTE, SEI_LUC' +
        'ROPORC, SEI_LUCROVALOR, SEI_MODICMS, SEI_MODICMSST, SEI_ORIGEM, ' +
        'SEI_PAISISS, SEI_PESO, SEI_PESOTOTAL, SEI_PRECOCUSTO, SEI_PRECOC' +
        'USTOTOTAL, SEI_PROCESSOISS, SEI_PRODUTO, SEI_PRODUTOREAL, SEI_QU' +
        'ANTIDADE, SEI_QUANTIDADETROCA, SEI_SEQUENCIA, SEI_SERVICO, SEI_S' +
        'ERVICOISS, SEI_TIPO, SEI_TIPOISS, SEI_UNIDADE, SEI_VALORACESSORI' +
        'AS, SEI_VALORCOFINS, SEI_VALORCOFINSST, SEI_VALORCOMISSAO, SEI_V' +
        'ALORFCP, SEI_VALORFCPST, SEI_VALORFRETE, SEI_VALORICMS, SEI_VALO' +
        'RICMSCREDSN, SEI_VALORICMSST, SEI_VALORICMSUFDEST, SEI_VALORICMS' +
        'UFREMET, SEI_VALORIPI, SEI_VALORISS, SEI_VALORISSDEDUCAO, SEI_VA' +
        'LORISSDESCCOND, SEI_VALORISSDESCINCOND, SEI_VALORISSOUTROS, SEI_' +
        'VALORISSRETENCAO, SEI_VALORPIS, SEI_VALORPISST, SEI_VALORSEGURO,' +
        ' SEI_VALORTOTAL, SEI_VALORTOTALBRUTO, SEI_VALORTRIBUTOS, SEI_VAL' +
        'ORTRIBUTOSEST, SEI_VALORTRIBUTOSFED, SEI_VALORTRIBUTOSIMP, SEI_V' +
        'ALORTRIBUTOSMUN, SEI_VALORUNIT, SEI_BENEFICIO')
    DeleteSQL.Strings = (
      'DELETE FROM SERVICOSITENS'
      'WHERE SEI_CODIGO = :OLD_SEI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT SEI_ALIQCOFINS, SEI_ALIQCOFINSST, SEI_ALIQFCP, SEI_ALIQFC' +
        'PST, '
      
        '  SEI_ALIQICMS, SEI_ALIQICMSADICST, SEI_ALIQICMSINTER, SEI_ALIQI' +
        'CMSINTERPART, '
      '  SEI_ALIQICMSRED, SEI_ALIQICMSST, SEI_ALIQIPI, SEI_ALIQISS, '
      '  SEI_ALIQPIS, SEI_ALIQPISST, SEI_ALMOXARIFADO, SEI_BASECOFINS, '
      
        '  SEI_BASECOFINSST, SEI_BASEICMS, SEI_BASEICMSRED, SEI_BASEICMSS' +
        'T, '
      
        '  SEI_BASEIPI, SEI_BASEISS, SEI_BASEPIS, SEI_BASEPISST, SEI_CEST' +
        ', '
      
        '  SEI_CFOP, SEI_CIDADEISS, SEI_CLASSFISCAL, SEI_CODIGO, SEI_CODI' +
        'GOBARRAS, '
      
        '  SEI_CODIGOFAB, SEI_COMISSAO, SEI_COMPLEMENTO, SEI_COMPOEBASEIC' +
        'MS, '
      
        '  SEI_COMPOEBASEICMSST, SEI_COMPOETOTAL, SEI_CONVERSAO, SEI_CSTC' +
        'OFINS, '
      
        '  SEI_CSTICMS, SEI_CSTIPI, SEI_CSTPIS, SEI_DESCMAX, SEI_DESCPORC' +
        ', '
      
        '  SEI_DESCRICAO, SEI_DESCVALOR, SEI_ENQUADRAMENTOIPI, SEI_EXCECA' +
        'O, '
      
        '  SEI_FCI, SEI_INCENTIVOISS, SEI_INDICADORISS, SEI_INFOADICIONAL' +
        ', '
      '  SEI_LOCALIZACAO, SEI_LOTE, SEI_LUCROPORC, SEI_LUCROVALOR, '
      
        '  SEI_MODICMS, SEI_MODICMSST, SEI_ORIGEM, SEI_PAISISS, SEI_PESO,' +
        ' '
      
        '  SEI_PESOTOTAL, SEI_PRECOCUSTO, SEI_PRECOCUSTOTOTAL, SEI_PROCES' +
        'SOISS, '
      
        '  SEI_PRODUTO, SEI_PRODUTOREAL, SEI_QUANTIDADE, SEI_QUANTIDADETR' +
        'OCA, '
      
        '  SEI_SEQUENCIA, SEI_SERVICO, SEI_SERVICOISS, SEI_TIPO, SEI_TIPO' +
        'ISS, '
      
        '  SEI_UNIDADE, SEI_VALORACESSORIAS, SEI_VALORCOFINS, SEI_VALORCO' +
        'FINSST, '
      
        '  SEI_VALORCOMISSAO, SEI_VALORFCP, SEI_VALORFCPST, SEI_VALORFRET' +
        'E, '
      
        '  SEI_VALORICMS, SEI_VALORICMSCREDSN, SEI_VALORICMSST, SEI_VALOR' +
        'ICMSUFDEST, '
      
        '  SEI_VALORICMSUFREMET, SEI_VALORIPI, SEI_VALORISS, SEI_VALORISS' +
        'DEDUCAO, '
      
        '  SEI_VALORISSDESCCOND, SEI_VALORISSDESCINCOND, SEI_VALORISSOUTR' +
        'OS, '
      
        '  SEI_VALORISSRETENCAO, SEI_VALORPIS, SEI_VALORPISST, SEI_VALORS' +
        'EGURO, '
      '  SEI_VALORTOTAL, SEI_VALORTOTALBRUTO, SEI_VALORTRIBUTOS, '
      
        '  SEI_VALORTRIBUTOSEST, SEI_VALORTRIBUTOSFED, SEI_VALORTRIBUTOSI' +
        'MP, '
      '  SEI_VALORTRIBUTOSMUN, SEI_VALORUNIT, SEI_BENEFICIO'
      'FROM SERVICOSITENS'
      'WHERE SEI_CODIGO = :OLD_SEI_CODIGO')
    Left = 552
    Top = 384
  end
  object TBEquipamentos: TFDQuery
    AfterInsert = TBEquipamentosAfterInsert
    BeforePost = TBEquipamentosBeforePost
    Connection = FDConnection1
    Transaction = TREquipamentos
    UpdateObject = UPEquipamentos
    SQL.Strings = (
      'select '
      'EQP_ACESSORIOS,'
      'EQP_ANOFAB,'
      'EQP_ANOMOD,'
      'EQP_CHASSI,'
      'EQP_CLIENTE,'
      'EQP_CODIGO,'
      'EQP_COMBUSTIVEL,'
      'EQP_COR,'
      'EQP_DESCRICAO,'
      'EQP_DTATUALIZACAO,'
      'EQP_DTCADASTRO,'
      'EQP_DTFILTRO,'
      'EQP_DTGERAL,'
      'EQP_DTLIMPEZA,'
      'EQP_DTNOTA,'
      'EQP_HASH,'
      'EQP_HRATUALIZACAO,'
      'EQP_HRCADASTRO,'
      'EQP_LOCALIZACAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_NOTA,'
      'EQP_OBSERVACOES,'
      'EQP_REVENDEDOR,'
      'EQP_SERIE,'
      'EQP_STATUS,'
      'EQP_TAMANHO,'
      'EQP_TOTALFOTOS,'
      'EQP_USUARIO,'
      'CLI_NOME'
      'from EQUIPAMENTOS '
      'left join CLIENTES on EQP_CLIENTE=CLI_CODIGO'
      'where EQP_CODIGO=:codigo'
      '')
    Left = 680
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBEquipamentosEQP_ACESSORIOS: TStringField
      FieldName = 'EQP_ACESSORIOS'
      Origin = 'EQP_ACESSORIOS'
      Size = 40
    end
    object TBEquipamentosEQP_ANOFAB: TIntegerField
      FieldName = 'EQP_ANOFAB'
      Origin = 'EQP_ANOFAB'
    end
    object TBEquipamentosEQP_ANOMOD: TIntegerField
      FieldName = 'EQP_ANOMOD'
      Origin = 'EQP_ANOMOD'
    end
    object TBEquipamentosEQP_CHASSI: TStringField
      FieldName = 'EQP_CHASSI'
      Origin = 'EQP_CHASSI'
      Size = 35
    end
    object TBEquipamentosEQP_CLIENTE: TIntegerField
      FieldName = 'EQP_CLIENTE'
      Origin = 'EQP_CLIENTE'
      Required = True
    end
    object TBEquipamentosEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBEquipamentosEQP_COMBUSTIVEL: TStringField
      FieldName = 'EQP_COMBUSTIVEL'
      Origin = 'EQP_COMBUSTIVEL'
      Size = 30
    end
    object TBEquipamentosEQP_COR: TStringField
      FieldName = 'EQP_COR'
      Origin = 'EQP_COR'
    end
    object TBEquipamentosEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 50
    end
    object TBEquipamentosEQP_DTATUALIZACAO: TDateField
      FieldName = 'EQP_DTATUALIZACAO'
      Origin = 'EQP_DTATUALIZACAO'
    end
    object TBEquipamentosEQP_DTCADASTRO: TDateField
      FieldName = 'EQP_DTCADASTRO'
      Origin = 'EQP_DTCADASTRO'
    end
    object TBEquipamentosEQP_DTFILTRO: TDateField
      FieldName = 'EQP_DTFILTRO'
      Origin = 'EQP_DTFILTRO'
    end
    object TBEquipamentosEQP_DTGERAL: TDateField
      FieldName = 'EQP_DTGERAL'
      Origin = 'EQP_DTGERAL'
    end
    object TBEquipamentosEQP_DTLIMPEZA: TDateField
      FieldName = 'EQP_DTLIMPEZA'
      Origin = 'EQP_DTLIMPEZA'
    end
    object TBEquipamentosEQP_DTNOTA: TDateField
      FieldName = 'EQP_DTNOTA'
      Origin = 'EQP_DTNOTA'
    end
    object TBEquipamentosEQP_HASH: TStringField
      FieldName = 'EQP_HASH'
      Origin = 'EQP_HASH'
      Size = 35
    end
    object TBEquipamentosEQP_HRATUALIZACAO: TTimeField
      FieldName = 'EQP_HRATUALIZACAO'
      Origin = 'EQP_HRATUALIZACAO'
    end
    object TBEquipamentosEQP_HRCADASTRO: TTimeField
      FieldName = 'EQP_HRCADASTRO'
      Origin = 'EQP_HRCADASTRO'
    end
    object TBEquipamentosEQP_LOCALIZACAO: TStringField
      FieldName = 'EQP_LOCALIZACAO'
      Origin = 'EQP_LOCALIZACAO'
      Size = 50
    end
    object TBEquipamentosEQP_MARCA: TStringField
      FieldName = 'EQP_MARCA'
      Origin = 'EQP_MARCA'
      Size = 40
    end
    object TBEquipamentosEQP_MODELO: TStringField
      FieldName = 'EQP_MODELO'
      Origin = 'EQP_MODELO'
      Size = 40
    end
    object TBEquipamentosEQP_NOTA: TIntegerField
      FieldName = 'EQP_NOTA'
      Origin = 'EQP_NOTA'
    end
    object TBEquipamentosEQP_OBSERVACOES: TMemoField
      FieldName = 'EQP_OBSERVACOES'
      Origin = 'EQP_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBEquipamentosEQP_REVENDEDOR: TStringField
      FieldName = 'EQP_REVENDEDOR'
      Origin = 'EQP_REVENDEDOR'
      Size = 80
    end
    object TBEquipamentosEQP_SERIE: TStringField
      FieldName = 'EQP_SERIE'
      Origin = 'EQP_SERIE'
      Size = 40
    end
    object TBEquipamentosEQP_STATUS: TStringField
      FieldName = 'EQP_STATUS'
      Origin = 'EQP_STATUS'
      Size = 1
    end
    object TBEquipamentosEQP_TAMANHO: TStringField
      FieldName = 'EQP_TAMANHO'
      Origin = 'EQP_TAMANHO'
      Size = 15
    end
    object TBEquipamentosEQP_TOTALFOTOS: TIntegerField
      FieldName = 'EQP_TOTALFOTOS'
      Origin = 'EQP_TOTALFOTOS'
    end
    object TBEquipamentosEQP_USUARIO: TStringField
      FieldName = 'EQP_USUARIO'
      Origin = 'EQP_USUARIO'
    end
    object TBEquipamentosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TREquipamentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 680
    Top = 144
  end
  object UPEquipamentos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EQUIPAMENTOS'
      '(EQP_ACESSORIOS, EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, '
      '  EQP_CLIENTE, EQP_CODIGO, EQP_COMBUSTIVEL, '
      '  EQP_COR, EQP_DESCRICAO, EQP_DTATUALIZACAO, '
      '  EQP_DTCADASTRO, EQP_DTFILTRO, EQP_DTGERAL, '
      '  EQP_DTLIMPEZA, EQP_DTNOTA, EQP_HASH, EQP_HRATUALIZACAO, '
      '  EQP_HRCADASTRO, EQP_LOCALIZACAO, EQP_MARCA, '
      '  EQP_MODELO, EQP_NOTA, EQP_OBSERVACOES, EQP_REVENDEDOR, '
      '  EQP_SERIE, EQP_STATUS, EQP_TAMANHO, EQP_TOTALFOTOS, '
      '  EQP_USUARIO)'
      
        'VALUES (:NEW_EQP_ACESSORIOS, :NEW_EQP_ANOFAB, :NEW_EQP_ANOMOD, :' +
        'NEW_EQP_CHASSI, '
      
        '  :NEW_EQP_CLIENTE, gen_id(GEN_EQUIPAMENTOS,1), :NEW_EQP_COMBUST' +
        'IVEL, '
      '  :NEW_EQP_COR, :NEW_EQP_DESCRICAO, :NEW_EQP_DTATUALIZACAO, '
      '  :NEW_EQP_DTCADASTRO, :NEW_EQP_DTFILTRO, :NEW_EQP_DTGERAL, '
      
        '  :NEW_EQP_DTLIMPEZA, :NEW_EQP_DTNOTA, :NEW_EQP_HASH, :NEW_EQP_H' +
        'RATUALIZACAO, '
      '  :NEW_EQP_HRCADASTRO, :NEW_EQP_LOCALIZACAO, :NEW_EQP_MARCA, '
      
        '  :NEW_EQP_MODELO, :NEW_EQP_NOTA, :NEW_EQP_OBSERVACOES, :NEW_EQP' +
        '_REVENDEDOR, '
      
        '  :NEW_EQP_SERIE, :NEW_EQP_STATUS, :NEW_EQP_TAMANHO, :NEW_EQP_TO' +
        'TALFOTOS, '
      '  :NEW_EQP_USUARIO)'
      
        'RETURNING EQP_ACESSORIOS, EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, EQ' +
        'P_CLIENTE, EQP_CODIGO, EQP_COMBUSTIVEL, EQP_COR, EQP_DESCRICAO, ' +
        'EQP_DTATUALIZACAO, EQP_DTCADASTRO, EQP_DTFILTRO, EQP_DTGERAL, EQ' +
        'P_DTLIMPEZA, EQP_DTNOTA, EQP_HASH, EQP_HRATUALIZACAO, EQP_HRCADA' +
        'STRO, EQP_LOCALIZACAO, EQP_MARCA, EQP_MODELO, EQP_NOTA, EQP_OBSE' +
        'RVACOES, EQP_REVENDEDOR, EQP_SERIE, EQP_STATUS, EQP_TAMANHO, EQP' +
        '_TOTALFOTOS, EQP_USUARIO')
    ModifySQL.Strings = (
      'UPDATE EQUIPAMENTOS'
      
        'SET EQP_ACESSORIOS = :NEW_EQP_ACESSORIOS, EQP_ANOFAB = :NEW_EQP_' +
        'ANOFAB, '
      '  EQP_ANOMOD = :NEW_EQP_ANOMOD, EQP_CHASSI = :NEW_EQP_CHASSI, '
      '  EQP_CLIENTE = :NEW_EQP_CLIENTE, EQP_CODIGO = :NEW_EQP_CODIGO, '
      
        '  EQP_COMBUSTIVEL = :NEW_EQP_COMBUSTIVEL, EQP_COR = :NEW_EQP_COR' +
        ', '
      
        '  EQP_DESCRICAO = :NEW_EQP_DESCRICAO, EQP_DTATUALIZACAO = :NEW_E' +
        'QP_DTATUALIZACAO, '
      
        '  EQP_DTCADASTRO = :NEW_EQP_DTCADASTRO, EQP_DTFILTRO = :NEW_EQP_' +
        'DTFILTRO, '
      
        '  EQP_DTGERAL = :NEW_EQP_DTGERAL, EQP_DTLIMPEZA = :NEW_EQP_DTLIM' +
        'PEZA, '
      '  EQP_DTNOTA = :NEW_EQP_DTNOTA, EQP_HASH = :NEW_EQP_HASH, '
      
        '  EQP_HRATUALIZACAO = :NEW_EQP_HRATUALIZACAO, EQP_HRCADASTRO = :' +
        'NEW_EQP_HRCADASTRO, '
      
        '  EQP_LOCALIZACAO = :NEW_EQP_LOCALIZACAO, EQP_MARCA = :NEW_EQP_M' +
        'ARCA, '
      '  EQP_MODELO = :NEW_EQP_MODELO, EQP_NOTA = :NEW_EQP_NOTA, '
      
        '  EQP_OBSERVACOES = :NEW_EQP_OBSERVACOES, EQP_REVENDEDOR = :NEW_' +
        'EQP_REVENDEDOR, '
      '  EQP_SERIE = :NEW_EQP_SERIE, EQP_STATUS = :NEW_EQP_STATUS, '
      
        '  EQP_TAMANHO = :NEW_EQP_TAMANHO, EQP_TOTALFOTOS = :NEW_EQP_TOTA' +
        'LFOTOS, '
      '  EQP_USUARIO = :NEW_EQP_USUARIO'
      'WHERE EQP_CODIGO = :OLD_EQP_CODIGO'
      
        'RETURNING EQP_ACESSORIOS, EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, EQ' +
        'P_CLIENTE, EQP_CODIGO, EQP_COMBUSTIVEL, EQP_COR, EQP_DESCRICAO, ' +
        'EQP_DTATUALIZACAO, EQP_DTCADASTRO, EQP_DTFILTRO, EQP_DTGERAL, EQ' +
        'P_DTLIMPEZA, EQP_DTNOTA, EQP_HASH, EQP_HRATUALIZACAO, EQP_HRCADA' +
        'STRO, EQP_LOCALIZACAO, EQP_MARCA, EQP_MODELO, EQP_NOTA, EQP_OBSE' +
        'RVACOES, EQP_REVENDEDOR, EQP_SERIE, EQP_STATUS, EQP_TAMANHO, EQP' +
        '_TOTALFOTOS, EQP_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM EQUIPAMENTOS'
      'WHERE EQP_CODIGO = :OLD_EQP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EQP_ACESSORIOS, EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, EQP_C' +
        'LIENTE, '
      
        '  EQP_CODIGO, EQP_COMBUSTIVEL, EQP_COR, EQP_DESCRICAO, EQP_DTATU' +
        'ALIZACAO, '
      '  EQP_DTCADASTRO, EQP_DTFILTRO, EQP_DTGERAL, EQP_DTLIMPEZA, '
      '  EQP_DTNOTA, EQP_HASH, EQP_HRATUALIZACAO, EQP_HRCADASTRO, '
      
        '  EQP_LOCALIZACAO, EQP_MARCA, EQP_MODELO, EQP_NOTA, EQP_OBSERVAC' +
        'OES, '
      
        '  EQP_REVENDEDOR, EQP_SERIE, EQP_STATUS, EQP_TAMANHO, EQP_TOTALF' +
        'OTOS, '
      '  EQP_USUARIO'
      'FROM EQUIPAMENTOS'
      'WHERE EQP_CODIGO = :OLD_EQP_CODIGO')
    Left = 680
    Top = 192
  end
  object QYAux: TFDQuery
    Connection = FDConnection1
    Transaction = TRAux
    SQL.Strings = (
      'select * from PARAMETROS '
      'where PAR_CODIGO=:codigo'
      'order by PAR_CODIGO'
      '')
    Left = 704
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TRAux: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 736
    Top = 24
  end
  object TBGrupos: TFDQuery
    Connection = FDConnection1
    Transaction = TRGrupos
    SQL.Strings = (
      'select '
      'GRU_CODIGO,'
      'GRU_DESCRICAO'
      'from GRUPOS '
      'where GRU_CODIGO=:codigo'
      'order by GRU_CODIGO'
      '')
    Left = 424
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TRGrupos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 424
    Top = 144
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 616
    Top = 24
  end
  object TBAssuntos: TFDQuery
    Connection = FDConnection1
    Transaction = TRAssuntos
    SQL.Strings = (
      'select'
      'ASS_CODIGO,'
      'ASS_DESCRICAO,'
      'ASS_DTATUALIZACAO,'
      'ASS_DTCADASTRO,'
      'ASS_HRATUALIZACAO,'
      'ASS_HRCADASTRO,'
      'ASS_HTML,'
      'ASS_STATUS,'
      'ASS_TEXTO,'
      'ASS_USUARIO  '
      'from ASSUNTOS '
      'where ASS_CODIGO=:codigo'
      'order by ASS_CODIGO'
      '')
    Left = 104
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBAssuntosASS_CODIGO: TIntegerField
      FieldName = 'ASS_CODIGO'
      Origin = 'ASS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBAssuntosASS_DESCRICAO: TStringField
      FieldName = 'ASS_DESCRICAO'
      Origin = 'ASS_DESCRICAO'
      Size = 50
    end
    object TBAssuntosASS_DTATUALIZACAO: TDateField
      FieldName = 'ASS_DTATUALIZACAO'
      Origin = 'ASS_DTATUALIZACAO'
    end
    object TBAssuntosASS_DTCADASTRO: TDateField
      FieldName = 'ASS_DTCADASTRO'
      Origin = 'ASS_DTCADASTRO'
    end
    object TBAssuntosASS_HRATUALIZACAO: TTimeField
      FieldName = 'ASS_HRATUALIZACAO'
      Origin = 'ASS_HRATUALIZACAO'
    end
    object TBAssuntosASS_HRCADASTRO: TTimeField
      FieldName = 'ASS_HRCADASTRO'
      Origin = 'ASS_HRCADASTRO'
    end
    object TBAssuntosASS_HTML: TStringField
      FieldName = 'ASS_HTML'
      Origin = 'ASS_HTML'
      Size = 1
    end
    object TBAssuntosASS_STATUS: TStringField
      FieldName = 'ASS_STATUS'
      Origin = 'ASS_STATUS'
      Size = 1
    end
    object TBAssuntosASS_TEXTO: TMemoField
      FieldName = 'ASS_TEXTO'
      Origin = 'ASS_TEXTO'
      BlobType = ftMemo
    end
    object TBAssuntosASS_USUARIO: TStringField
      FieldName = 'ASS_USUARIO'
      Origin = 'ASS_USUARIO'
    end
  end
  object TRAssuntos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 104
    Top = 144
  end
  object TBEmailsContas: TFDQuery
    Connection = FDConnection1
    Transaction = TREmailsContas
    SQL.Strings = (
      'select'
      'EMC_ASSINATURA,'
      'EMC_CODIGO,'
      'EMC_CONFIRMACAO,'
      'EMC_DTATUALIZACAO,'
      'EMC_DTCADASTRO,'
      'EMC_EMAIL,'
      'EMC_HRATUALIZACAO,'
      'EMC_HRCADASTRO,'
      'EMC_LOGIN,'
      'EMC_NOME,'
      'EMC_POP,'
      'EMC_POPPORTA,'
      'EMC_REPLYTO,'
      'EMC_SENHA,'
      'EMC_SMTP,'
      'EMC_SMTPPORTA,'
      'EMC_SSL,'
      'EMC_STATUS,'
      'EMC_TIMEOUT,'
      'EMC_TLS,'
      'EMC_USUARIO'
      'from EMAILSCONTAS '
      'where EMC_CODIGO=:codigo'
      'order by EMC_CODIGO'
      '')
    Left = 552
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBEmailsContasEMC_ASSINATURA: TMemoField
      FieldName = 'EMC_ASSINATURA'
      Origin = 'EMC_ASSINATURA'
      BlobType = ftMemo
    end
    object TBEmailsContasEMC_CODIGO: TIntegerField
      FieldName = 'EMC_CODIGO'
      Origin = 'EMC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmailsContasEMC_CONFIRMACAO: TStringField
      FieldName = 'EMC_CONFIRMACAO'
      Origin = 'EMC_CONFIRMACAO'
      Size = 1
    end
    object TBEmailsContasEMC_DTATUALIZACAO: TDateField
      FieldName = 'EMC_DTATUALIZACAO'
      Origin = 'EMC_DTATUALIZACAO'
    end
    object TBEmailsContasEMC_DTCADASTRO: TDateField
      FieldName = 'EMC_DTCADASTRO'
      Origin = 'EMC_DTCADASTRO'
    end
    object TBEmailsContasEMC_EMAIL: TStringField
      FieldName = 'EMC_EMAIL'
      Origin = 'EMC_EMAIL'
      Size = 100
    end
    object TBEmailsContasEMC_HRATUALIZACAO: TTimeField
      FieldName = 'EMC_HRATUALIZACAO'
      Origin = 'EMC_HRATUALIZACAO'
    end
    object TBEmailsContasEMC_HRCADASTRO: TTimeField
      FieldName = 'EMC_HRCADASTRO'
      Origin = 'EMC_HRCADASTRO'
    end
    object TBEmailsContasEMC_LOGIN: TStringField
      FieldName = 'EMC_LOGIN'
      Origin = 'EMC_LOGIN'
      Size = 100
    end
    object TBEmailsContasEMC_NOME: TStringField
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      Size = 80
    end
    object TBEmailsContasEMC_POP: TStringField
      FieldName = 'EMC_POP'
      Origin = 'EMC_POP'
      Size = 50
    end
    object TBEmailsContasEMC_POPPORTA: TIntegerField
      FieldName = 'EMC_POPPORTA'
      Origin = 'EMC_POPPORTA'
    end
    object TBEmailsContasEMC_REPLYTO: TStringField
      FieldName = 'EMC_REPLYTO'
      Origin = 'EMC_REPLYTO'
      Size = 100
    end
    object TBEmailsContasEMC_SENHA: TStringField
      FieldName = 'EMC_SENHA'
      Origin = 'EMC_SENHA'
      Size = 40
    end
    object TBEmailsContasEMC_SMTP: TStringField
      FieldName = 'EMC_SMTP'
      Origin = 'EMC_SMTP'
      Size = 50
    end
    object TBEmailsContasEMC_SMTPPORTA: TIntegerField
      FieldName = 'EMC_SMTPPORTA'
      Origin = 'EMC_SMTPPORTA'
    end
    object TBEmailsContasEMC_SSL: TStringField
      FieldName = 'EMC_SSL'
      Origin = 'EMC_SSL'
      Size = 1
    end
    object TBEmailsContasEMC_STATUS: TStringField
      FieldName = 'EMC_STATUS'
      Origin = 'EMC_STATUS'
      Size = 1
    end
    object TBEmailsContasEMC_TIMEOUT: TIntegerField
      FieldName = 'EMC_TIMEOUT'
      Origin = 'EMC_TIMEOUT'
    end
    object TBEmailsContasEMC_TLS: TStringField
      FieldName = 'EMC_TLS'
      Origin = 'EMC_TLS'
      Size = 1
    end
    object TBEmailsContasEMC_USUARIO: TStringField
      FieldName = 'EMC_USUARIO'
      Origin = 'EMC_USUARIO'
    end
  end
  object TREmailsContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 552
    Top = 144
  end
  object TBEmails: TFDQuery
    AfterInsert = TBEmailsAfterInsert
    BeforePost = TBEmailsBeforePost
    Connection = FDConnection1
    Transaction = TREmails
    UpdateObject = UPEmails
    SQL.Strings = (
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
      'EMA_HRATUALIZACAO,'
      'EMA_HRCADASTRO,'
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
      'where EMA_CODIGO=:codigo'
      '')
    Left = 488
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBEmailsEMA_ANEXO: TStringField
      FieldName = 'EMA_ANEXO'
      Origin = 'EMA_ANEXO'
      Size = 200
    end
    object TBEmailsEMA_ANEXO2: TStringField
      FieldName = 'EMA_ANEXO2'
      Origin = 'EMA_ANEXO2'
      Size = 200
    end
    object TBEmailsEMA_ANEXO3: TStringField
      FieldName = 'EMA_ANEXO3'
      Origin = 'EMA_ANEXO3'
      Size = 200
    end
    object TBEmailsEMA_ASSINATURA: TMemoField
      FieldName = 'EMA_ASSINATURA'
      Origin = 'EMA_ASSINATURA'
      BlobType = ftMemo
    end
    object TBEmailsEMA_ASSUNTO: TIntegerField
      FieldName = 'EMA_ASSUNTO'
      Origin = 'EMA_ASSUNTO'
      Required = True
    end
    object TBEmailsEMA_CLIENTE: TIntegerField
      FieldName = 'EMA_CLIENTE'
      Origin = 'EMA_CLIENTE'
      Required = True
    end
    object TBEmailsEMA_CODIGO: TIntegerField
      FieldName = 'EMA_CODIGO'
      Origin = 'EMA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBEmailsEMA_CONFIRMACAO: TStringField
      FieldName = 'EMA_CONFIRMACAO'
      Origin = 'EMA_CONFIRMACAO'
      Size = 1
    end
    object TBEmailsEMA_COPIAOCULTA: TStringField
      FieldName = 'EMA_COPIAOCULTA'
      Origin = 'EMA_COPIAOCULTA'
      Size = 100
    end
    object TBEmailsEMA_DESTINATARIOS: TStringField
      FieldName = 'EMA_DESTINATARIOS'
      Origin = 'EMA_DESTINATARIOS'
      Size = 300
    end
    object TBEmailsEMA_DTATUALIZACAO: TDateField
      FieldName = 'EMA_DTATUALIZACAO'
      Origin = 'EMA_DTATUALIZACAO'
    end
    object TBEmailsEMA_DTCADASTRO: TDateField
      FieldName = 'EMA_DTCADASTRO'
      Origin = 'EMA_DTCADASTRO'
    end
    object TBEmailsEMA_DTULTENVIO: TDateField
      FieldName = 'EMA_DTULTENVIO'
      Origin = 'EMA_DTULTENVIO'
    end
    object TBEmailsEMA_EMAILCONTA: TIntegerField
      FieldName = 'EMA_EMAILCONTA'
      Origin = 'EMA_EMAILCONTA'
      Required = True
    end
    object TBEmailsEMA_ENVIADO: TStringField
      FieldName = 'EMA_ENVIADO'
      Origin = 'EMA_ENVIADO'
      Size = 1
    end
    object TBEmailsEMA_HRATUALIZACAO: TTimeField
      FieldName = 'EMA_HRATUALIZACAO'
      Origin = 'EMA_HRATUALIZACAO'
    end
    object TBEmailsEMA_HRCADASTRO: TTimeField
      FieldName = 'EMA_HRCADASTRO'
      Origin = 'EMA_HRCADASTRO'
    end
    object TBEmailsEMA_HTML: TStringField
      FieldName = 'EMA_HTML'
      Origin = 'EMA_HTML'
      Size = 1
    end
    object TBEmailsEMA_MENSAGEM: TMemoField
      FieldName = 'EMA_MENSAGEM'
      Origin = 'EMA_MENSAGEM'
      BlobType = ftMemo
    end
    object TBEmailsEMA_USUARIO: TStringField
      FieldName = 'EMA_USUARIO'
      Origin = 'EMA_USUARIO'
    end
    object TBEmailsEMA_VENDEDOR: TIntegerField
      FieldName = 'EMA_VENDEDOR'
      Origin = 'EMA_VENDEDOR'
      Required = True
    end
    object TBEmailsASS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ASS_DESCRICAO'
      Origin = 'ASS_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBEmailsCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBEmailsEMC_ASSINATURA: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_ASSINATURA'
      Origin = 'EMC_ASSINATURA'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object TBEmailsEMC_CONFIRMACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_CONFIRMACAO'
      Origin = 'EMC_CONFIRMACAO'
      ProviderFlags = []
      Size = 1
    end
    object TBEmailsEMC_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_EMAIL'
      Origin = 'EMC_EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object TBEmailsEMC_LOGIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_LOGIN'
      Origin = 'EMC_LOGIN'
      ProviderFlags = []
      Size = 100
    end
    object TBEmailsEMC_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBEmailsEMC_POP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_POP'
      Origin = 'EMC_POP'
      ProviderFlags = []
      Size = 50
    end
    object TBEmailsEMC_POPPORTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_POPPORTA'
      Origin = 'EMC_POPPORTA'
      ProviderFlags = []
    end
    object TBEmailsEMC_REPLYTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_REPLYTO'
      Origin = 'EMC_REPLYTO'
      ProviderFlags = []
      Size = 100
    end
    object TBEmailsEMC_SENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_SENHA'
      Origin = 'EMC_SENHA'
      ProviderFlags = []
      Size = 40
    end
    object TBEmailsEMC_SMTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_SMTP'
      Origin = 'EMC_SMTP'
      ProviderFlags = []
      Size = 50
    end
    object TBEmailsEMC_SMTPPORTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_SMTPPORTA'
      Origin = 'EMC_SMTPPORTA'
      ProviderFlags = []
    end
    object TBEmailsEMC_SSL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_SSL'
      Origin = 'EMC_SSL'
      ProviderFlags = []
      Size = 1
    end
    object TBEmailsEMC_TLS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMC_TLS'
      Origin = 'EMC_TLS'
      ProviderFlags = []
      Size = 1
    end
    object TBEmailsVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TREmails: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 488
    Top = 144
  end
  object UPEmails: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EMAILS'
      '(EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, '
      '  EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_CONFIRMACAO, '
      '  EMA_COPIAOCULTA, EMA_DESTINATARIOS, EMA_DTATUALIZACAO, '
      '  EMA_DTCADASTRO, EMA_DTULTENVIO, EMA_EMAILCONTA, '
      '  EMA_ENVIADO, EMA_HRATUALIZACAO, EMA_HRCADASTRO, '
      '  EMA_HTML, EMA_MENSAGEM, EMA_USUARIO, EMA_VENDEDOR)'
      
        'VALUES (:NEW_EMA_ANEXO, :NEW_EMA_ANEXO2, :NEW_EMA_ANEXO3, :NEW_E' +
        'MA_ASSINATURA, '
      
        '  :NEW_EMA_ASSUNTO, :NEW_EMA_CLIENTE, gen_id(GEN_EMAILS,1), :NEW' +
        '_EMA_CONFIRMACAO, '
      
        '  :NEW_EMA_COPIAOCULTA, :NEW_EMA_DESTINATARIOS, :NEW_EMA_DTATUAL' +
        'IZACAO, '
      
        '  :NEW_EMA_DTCADASTRO, :NEW_EMA_DTULTENVIO, :NEW_EMA_EMAILCONTA,' +
        ' '
      
        '  :NEW_EMA_ENVIADO, :NEW_EMA_HRATUALIZACAO, :NEW_EMA_HRCADASTRO,' +
        ' '
      
        '  :NEW_EMA_HTML, :NEW_EMA_MENSAGEM, :NEW_EMA_USUARIO, :NEW_EMA_V' +
        'ENDEDOR)'
      
        'RETURNING EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, EMA' +
        '_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_CONFIRMACAO, EMA_COPIAOCU' +
        'LTA, EMA_DESTINATARIOS, EMA_DTATUALIZACAO, EMA_DTCADASTRO, EMA_D' +
        'TULTENVIO, EMA_EMAILCONTA, EMA_ENVIADO, EMA_HRATUALIZACAO, EMA_H' +
        'RCADASTRO, EMA_HTML, EMA_MENSAGEM, EMA_USUARIO, EMA_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE EMAILS'
      
        'SET EMA_ANEXO = :NEW_EMA_ANEXO, EMA_ANEXO2 = :NEW_EMA_ANEXO2, EM' +
        'A_ANEXO3 = :NEW_EMA_ANEXO3, '
      
        '  EMA_ASSINATURA = :NEW_EMA_ASSINATURA, EMA_ASSUNTO = :NEW_EMA_A' +
        'SSUNTO, '
      '  EMA_CLIENTE = :NEW_EMA_CLIENTE, EMA_CODIGO = :NEW_EMA_CODIGO, '
      
        '  EMA_CONFIRMACAO = :NEW_EMA_CONFIRMACAO, EMA_COPIAOCULTA = :NEW' +
        '_EMA_COPIAOCULTA, '
      
        '  EMA_DESTINATARIOS = :NEW_EMA_DESTINATARIOS, EMA_DTATUALIZACAO ' +
        '= :NEW_EMA_DTATUALIZACAO, '
      
        '  EMA_DTCADASTRO = :NEW_EMA_DTCADASTRO, EMA_DTULTENVIO = :NEW_EM' +
        'A_DTULTENVIO, '
      
        '  EMA_EMAILCONTA = :NEW_EMA_EMAILCONTA, EMA_ENVIADO = :NEW_EMA_E' +
        'NVIADO, '
      
        '  EMA_HRATUALIZACAO = :NEW_EMA_HRATUALIZACAO, EMA_HRCADASTRO = :' +
        'NEW_EMA_HRCADASTRO, '
      '  EMA_HTML = :NEW_EMA_HTML, EMA_MENSAGEM = :NEW_EMA_MENSAGEM, '
      
        '  EMA_USUARIO = :NEW_EMA_USUARIO, EMA_VENDEDOR = :NEW_EMA_VENDED' +
        'OR'
      'WHERE EMA_CODIGO = :OLD_EMA_CODIGO'
      
        'RETURNING EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, EMA' +
        '_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_CONFIRMACAO, EMA_COPIAOCU' +
        'LTA, EMA_DESTINATARIOS, EMA_DTATUALIZACAO, EMA_DTCADASTRO, EMA_D' +
        'TULTENVIO, EMA_EMAILCONTA, EMA_ENVIADO, EMA_HRATUALIZACAO, EMA_H' +
        'RCADASTRO, EMA_HTML, EMA_MENSAGEM, EMA_USUARIO, EMA_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM EMAILS'
      'WHERE EMA_CODIGO = :OLD_EMA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, EMA_AS' +
        'SUNTO, '
      '  EMA_CLIENTE, EMA_CODIGO, EMA_CONFIRMACAO, EMA_COPIAOCULTA, '
      
        '  EMA_DESTINATARIOS, EMA_DTATUALIZACAO, EMA_DTCADASTRO, EMA_DTUL' +
        'TENVIO, '
      
        '  EMA_EMAILCONTA, EMA_ENVIADO, EMA_HRATUALIZACAO, EMA_HRCADASTRO' +
        ', '
      '  EMA_HTML, EMA_MENSAGEM, EMA_USUARIO, EMA_VENDEDOR'
      'FROM EMAILS'
      'WHERE EMA_CODIGO = :OLD_EMA_CODIGO')
    Left = 488
    Top = 192
  end
  object TBRegrasFiscais: TFDQuery
    Connection = FDConnection1
    Transaction = TRRegrasFiscais
    SQL.Strings = (
      'select'
      'RGF_ALIQCBS, '
      'RGF_ALIQIBSMUN, '
      'RGF_ALIQIBSUF,'
      'RGF_ALIQIS, '
      'RGF_CLASSTRIBIBSCBS, '
      'RGF_CLASSTRIBIS, '
      'RGF_CODIGO, '
      'RGF_CREDITOPRES, '
      'RGF_CSTIBSCBS, '
      'RGF_CSTIS, '
      'RGF_DESCRICAO, '
      'RGF_DTATUALIZACAO, '
      'RGF_DTCADASTRO, '
      'RGF_HRATUALIZACAO, '
      'RGF_HRCADASTRO, '
      'RGF_OBSERVACOES, '
      'RGF_USUARIO,'
      'CPR_APROPRIADFE,'
      'CPR_APROPRIAEVENTO,'
      'CPR_CBS,'
      'CPR_DEDUZTOTAL,'
      'CPR_DESCRICAO,'
      'CPR_IBS,'
      'IBSCBS.CLT_DESCRICAO as CLT_DESCRICAO_IC,'
      'IBSCBS.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IC,'
      'IBSCBS.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IC,'
      'IBSCBS.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IC,'
      'IBSCBS.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IC,'
      'IBSCBS.CLT_MONOFASICO as CLT_MONOFASICO_IC,'
      'IBSCBS.CLT_MONORETENCAO as CLT_MONORETENCAO_IC,'
      'IBSCBS.CLT_MONORETIDO as CLT_MONORETIDO_IC,'
      'IBSCBS.CLT_REDBASE as CLT_REDBASE_IC,'
      'IBSCBS.CLT_TIPOALIQUOTA as CLT_TIPOALIQUOTA_IC,'
      'IBSCBS.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IC,'
      'IS_.CLT_DESCRICAO as CLT_DESCRICAO_IS,'
      'IS_.CLT_ALIQCBSRED as CLT_ALIQCBSRED_IS,'
      'IS_.CLT_ALIQIBSRED as CLT_ALIQIBSRED_IS,'
      'IS_.CLT_CREDITOPRESUMIDO as CLT_CREDITOPRESUMIDO_IS,'
      'IS_.CLT_MONODIFERIMENTO as CLT_MONODIFERIMENTO_IS,'
      'IS_.CLT_MONOFASICO as CLT_MONOFASICO_IS,'
      'IS_.CLT_MONORETENCAO as CLT_MONORETENCAO_IS,'
      'IS_.CLT_MONORETIDO as CLT_MONORETIDO_IS,'
      'IS_.CLT_REDBASE as CLT_REDBASE_IS,'
      'IS_.CLT_TIPOALIQUOTA as CLT_TIPOALIQUOTA_IS,'
      'IS_.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IS'
      'from REGRASFISCAIS'
      
        'left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_COD' +
        'IGO'
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO'
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO'
      'where RGF_CODIGO=:codigo'
      'order by RGF_CODIGO')
    Left = 424
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBRegrasFiscaisRGF_ALIQCBS: TFMTBCDField
      FieldName = 'RGF_ALIQCBS'
      Origin = 'RGF_ALIQCBS'
      Required = True
      Precision = 18
    end
    object TBRegrasFiscaisRGF_ALIQIBSMUN: TFMTBCDField
      FieldName = 'RGF_ALIQIBSMUN'
      Origin = 'RGF_ALIQIBSMUN'
      Required = True
      Precision = 18
    end
    object TBRegrasFiscaisRGF_ALIQIBSUF: TFMTBCDField
      FieldName = 'RGF_ALIQIBSUF'
      Origin = 'RGF_ALIQIBSUF'
      Required = True
      Precision = 18
    end
    object TBRegrasFiscaisRGF_ALIQIS: TFMTBCDField
      FieldName = 'RGF_ALIQIS'
      Origin = 'RGF_ALIQIS'
      Precision = 18
    end
    object TBRegrasFiscaisRGF_CLASSTRIBIBSCBS: TStringField
      FieldName = 'RGF_CLASSTRIBIBSCBS'
      Origin = 'RGF_CLASSTRIBIBSCBS'
      Required = True
      Size = 15
    end
    object TBRegrasFiscaisRGF_CLASSTRIBIS: TStringField
      FieldName = 'RGF_CLASSTRIBIS'
      Origin = 'RGF_CLASSTRIBIS'
      Required = True
      Size = 15
    end
    object TBRegrasFiscaisRGF_CODIGO: TIntegerField
      FieldName = 'RGF_CODIGO'
      Origin = 'RGF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRegrasFiscaisRGF_CREDITOPRES: TIntegerField
      FieldName = 'RGF_CREDITOPRES'
      Origin = 'RGF_CREDITOPRES'
      Required = True
    end
    object TBRegrasFiscaisRGF_CSTIBSCBS: TStringField
      FieldName = 'RGF_CSTIBSCBS'
      Origin = 'RGF_CSTIBSCBS'
      Required = True
      Size = 15
    end
    object TBRegrasFiscaisRGF_CSTIS: TStringField
      FieldName = 'RGF_CSTIS'
      Origin = 'RGF_CSTIS'
      Required = True
      Size = 15
    end
    object TBRegrasFiscaisRGF_DESCRICAO: TStringField
      FieldName = 'RGF_DESCRICAO'
      Origin = 'RGF_DESCRICAO'
      Required = True
      Size = 50
    end
    object TBRegrasFiscaisRGF_DTATUALIZACAO: TDateField
      FieldName = 'RGF_DTATUALIZACAO'
      Origin = 'RGF_DTATUALIZACAO'
    end
    object TBRegrasFiscaisRGF_DTCADASTRO: TDateField
      FieldName = 'RGF_DTCADASTRO'
      Origin = 'RGF_DTCADASTRO'
    end
    object TBRegrasFiscaisRGF_HRATUALIZACAO: TTimeField
      FieldName = 'RGF_HRATUALIZACAO'
      Origin = 'RGF_HRATUALIZACAO'
    end
    object TBRegrasFiscaisRGF_HRCADASTRO: TTimeField
      FieldName = 'RGF_HRCADASTRO'
      Origin = 'RGF_HRCADASTRO'
    end
    object TBRegrasFiscaisRGF_OBSERVACOES: TMemoField
      FieldName = 'RGF_OBSERVACOES'
      Origin = 'RGF_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBRegrasFiscaisRGF_USUARIO: TStringField
      FieldName = 'RGF_USUARIO'
      Origin = 'RGF_USUARIO'
    end
    object TBRegrasFiscaisCPR_APROPRIADFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCPR_APROPRIAEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCPR_CBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCPR_DEDUZTOTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCPR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object TBRegrasFiscaisCPR_IBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_DESCRICAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IC'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object TBRegrasFiscaisCLT_ALIQCBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IC'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object TBRegrasFiscaisCLT_ALIQIBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IC'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object TBRegrasFiscaisCLT_CREDITOPRESUMIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IC'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONODIFERIMENTO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IC'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONOFASICO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IC'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONORETENCAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IC'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONORETIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IC'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_REDBASE_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IC'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_TIPOALIQUOTA_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TIPOALIQUOTA_IC'
      Origin = 'CLT_TIPOALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object TBRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IC'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_DESCRICAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IS'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object TBRegrasFiscaisCLT_ALIQCBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IS'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object TBRegrasFiscaisCLT_ALIQIBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IS'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object TBRegrasFiscaisCLT_CREDITOPRESUMIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IS'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONODIFERIMENTO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IS'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONOFASICO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IS'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONORETENCAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IS'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_MONORETIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IS'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_REDBASE_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IS'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object TBRegrasFiscaisCLT_TIPOALIQUOTA_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TIPOALIQUOTA_IS'
      Origin = 'CLT_TIPOALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object TBRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IS'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRRegrasFiscais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 424
    Top = 336
  end
  object TBVias: TFDQuery
    Connection = FDConnection1
    Transaction = TRVias
    UpdateObject = UPVias
    SQL.Strings = (
      'select '
      'VIA_CODIGO,'
      'VIA_DESCRICAO,'
      'VIA_DTATUALIZACAO,'
      'VIA_DTCADASTRO,'
      'VIA_HRATUALIZACAO,'
      'VIA_HRCADASTRO,'
      'VIA_STATUS,'
      'VIA_USUARIO'
      'from VIAS'
      'where VIA_CODIGO=:codigo'
      'order by VIA_CODIGO'
      '')
    Left = 872
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBViasVIA_CODIGO: TIntegerField
      FieldName = 'VIA_CODIGO'
      Origin = 'VIA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBViasVIA_DESCRICAO: TStringField
      FieldName = 'VIA_DESCRICAO'
      Origin = 'VIA_DESCRICAO'
      Size = 50
    end
    object TBViasVIA_DTATUALIZACAO: TDateField
      FieldName = 'VIA_DTATUALIZACAO'
      Origin = 'VIA_DTATUALIZACAO'
    end
    object TBViasVIA_DTCADASTRO: TDateField
      FieldName = 'VIA_DTCADASTRO'
      Origin = 'VIA_DTCADASTRO'
    end
    object TBViasVIA_HRATUALIZACAO: TTimeField
      FieldName = 'VIA_HRATUALIZACAO'
      Origin = 'VIA_HRATUALIZACAO'
    end
    object TBViasVIA_HRCADASTRO: TTimeField
      FieldName = 'VIA_HRCADASTRO'
      Origin = 'VIA_HRCADASTRO'
    end
    object TBViasVIA_STATUS: TStringField
      FieldName = 'VIA_STATUS'
      Origin = 'VIA_STATUS'
      Size = 1
    end
    object TBViasVIA_USUARIO: TStringField
      FieldName = 'VIA_USUARIO'
      Origin = 'VIA_USUARIO'
    end
  end
  object TRVias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 872
    Top = 336
  end
  object UPVias: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VIAS'
      '(VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, '
      '  VIA_DTCADASTRO, VIA_HRATUALIZACAO, VIA_HRCADASTRO, '
      '  VIA_STATUS, VIA_USUARIO)'
      
        'VALUES (gen_id(GEN_VIAS,1), :NEW_VIA_DESCRICAO, :NEW_VIA_DTATUAL' +
        'IZACAO, '
      
        '  :NEW_VIA_DTCADASTRO, :NEW_VIA_HRATUALIZACAO, :NEW_VIA_HRCADAST' +
        'RO, '
      '  :NEW_VIA_STATUS, :NEW_VIA_USUARIO)'
      
        'RETURNING VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCA' +
        'DASTRO, VIA_HRATUALIZACAO, VIA_HRCADASTRO, VIA_STATUS, VIA_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE VIAS'
      
        'SET VIA_CODIGO = :NEW_VIA_CODIGO, VIA_DESCRICAO = :NEW_VIA_DESCR' +
        'ICAO, '
      
        '  VIA_DTATUALIZACAO = :NEW_VIA_DTATUALIZACAO, VIA_DTCADASTRO = :' +
        'NEW_VIA_DTCADASTRO, '
      
        '  VIA_HRATUALIZACAO = :NEW_VIA_HRATUALIZACAO, VIA_HRCADASTRO = :' +
        'NEW_VIA_HRCADASTRO, '
      '  VIA_STATUS = :NEW_VIA_STATUS, VIA_USUARIO = :NEW_VIA_USUARIO'
      'WHERE VIA_CODIGO = :OLD_VIA_CODIGO'
      
        'RETURNING VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCA' +
        'DASTRO, VIA_HRATUALIZACAO, VIA_HRCADASTRO, VIA_STATUS, VIA_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM VIAS'
      'WHERE VIA_CODIGO = :OLD_VIA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADAS' +
        'TRO, '
      '  VIA_HRATUALIZACAO, VIA_HRCADASTRO, VIA_STATUS, VIA_USUARIO'
      'FROM VIAS'
      'WHERE VIA_CODIGO = :OLD_VIA_CODIGO')
    Left = 872
    Top = 384
  end
  object TBMotivos: TFDQuery
    Connection = FDConnection1
    Transaction = TRMotivos
    UpdateObject = UPMotivos
    SQL.Strings = (
      'select '
      'MOT_CODIGO,'
      'MOT_DESCRICAO,'
      'MOT_DTATUALIZACAO,'
      'MOT_DTCADASTRO,'
      'MOT_HRATUALIZACAO,'
      'MOT_HRCADASTRO,'
      'MOT_STATUS,'
      'MOT_USUARIO'
      'from MOTIVOS'
      'where MOT_CODIGO=:codigo'
      'order by MOT_CODIGO'
      '')
    Left = 808
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBMotivosMOT_CODIGO: TIntegerField
      FieldName = 'MOT_CODIGO'
      Origin = 'MOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMotivosMOT_DESCRICAO: TStringField
      FieldName = 'MOT_DESCRICAO'
      Origin = 'MOT_DESCRICAO'
      Size = 120
    end
    object TBMotivosMOT_DTATUALIZACAO: TDateField
      FieldName = 'MOT_DTATUALIZACAO'
      Origin = 'MOT_DTATUALIZACAO'
    end
    object TBMotivosMOT_DTCADASTRO: TDateField
      FieldName = 'MOT_DTCADASTRO'
      Origin = 'MOT_DTCADASTRO'
    end
    object TBMotivosMOT_HRATUALIZACAO: TTimeField
      FieldName = 'MOT_HRATUALIZACAO'
      Origin = 'MOT_HRATUALIZACAO'
    end
    object TBMotivosMOT_HRCADASTRO: TTimeField
      FieldName = 'MOT_HRCADASTRO'
      Origin = 'MOT_HRCADASTRO'
    end
    object TBMotivosMOT_STATUS: TStringField
      FieldName = 'MOT_STATUS'
      Origin = 'MOT_STATUS'
      Size = 1
    end
    object TBMotivosMOT_USUARIO: TStringField
      FieldName = 'MOT_USUARIO'
      Origin = 'MOT_USUARIO'
    end
  end
  object TRMotivos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 808
    Top = 144
  end
  object UPMotivos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MOTIVOS'
      '(MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, '
      '  MOT_DTCADASTRO, MOT_HRATUALIZACAO, MOT_HRCADASTRO, '
      '  MOT_STATUS, MOT_USUARIO)'
      
        'VALUES (gen_id(GEN_MOTIVOS,1), :NEW_MOT_DESCRICAO, :NEW_MOT_DTAT' +
        'UALIZACAO, '
      
        '  :NEW_MOT_DTCADASTRO, :NEW_MOT_HRATUALIZACAO, :NEW_MOT_HRCADAST' +
        'RO, '
      '  :NEW_MOT_STATUS, :NEW_MOT_USUARIO)'
      
        'RETURNING MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCA' +
        'DASTRO, MOT_HRATUALIZACAO, MOT_HRCADASTRO, MOT_STATUS, MOT_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE MOTIVOS'
      
        'SET MOT_CODIGO = :NEW_MOT_CODIGO, MOT_DESCRICAO = :NEW_MOT_DESCR' +
        'ICAO, '
      
        '  MOT_DTATUALIZACAO = :NEW_MOT_DTATUALIZACAO, MOT_DTCADASTRO = :' +
        'NEW_MOT_DTCADASTRO, '
      
        '  MOT_HRATUALIZACAO = :NEW_MOT_HRATUALIZACAO, MOT_HRCADASTRO = :' +
        'NEW_MOT_HRCADASTRO, '
      '  MOT_STATUS = :NEW_MOT_STATUS, MOT_USUARIO = :NEW_MOT_USUARIO'
      'WHERE MOT_CODIGO = :OLD_MOT_CODIGO'
      
        'RETURNING MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCA' +
        'DASTRO, MOT_HRATUALIZACAO, MOT_HRCADASTRO, MOT_STATUS, MOT_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM MOTIVOS'
      'WHERE MOT_CODIGO = :OLD_MOT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCADAS' +
        'TRO, '
      '  MOT_HRATUALIZACAO, MOT_HRCADASTRO, MOT_STATUS, MOT_USUARIO'
      'FROM MOTIVOS'
      'WHERE MOT_CODIGO = :OLD_MOT_CODIGO')
    Left = 808
    Top = 192
  end
  object TBTelevendas: TFDQuery
    Connection = FDConnection1
    Transaction = TRTelevendas
    UpdateObject = UPTelevendas
    SQL.Strings = (
      'select '
      'TEV_BAIXADOPOR,'
      'TEV_CLIENTE,'
      'TEV_CODIGO,'
      'TEV_DATA,'
      'TEV_DATABAIXA,'
      'TEV_DATAPROX,'
      'TEV_DEMODATA,'
      'TEV_DEMOHORA,'
      'TEV_DESCRICAO,'
      'TEV_DTATUALIZACAO,'
      'TEV_DTCADASTRO,'
      'TEV_FIXA,'
      'TEV_HORAPROX,'
      'TEV_HRATUALIZACAO,'
      'TEV_HRCADASTRO,'
      'TEV_MOTIVO,'
      'TEV_OBSERVACOES,'
      'TEV_REAGENDADO,'
      'TEV_STATUS,'
      'TEV_TEMPERATURA,'
      'TEV_TEMPERATURADATA,'
      'TEV_USUARIO,'
      'TEV_VENDA,'
      'TEV_VENDEDOR,'
      'TEV_VIA,'
      'CLI_NOME,'
      'MOT_DESCRICAO,'
      'VEN_NOME,'
      'VIA_DESCRICAO'
      'from TELEVENDAS'
      'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO'
      'left join MOTIVOS on TEV_MOTIVO=MOT_CODIGO'
      'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO'
      'left join VIAS on TEV_VIA=VIA_CODIGO'
      'where TEV_CODIGO=:codigo'
      'order by TEV_CODIGO'
      '')
    Left = 936
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBTelevendasTEV_BAIXADOPOR: TStringField
      FieldName = 'TEV_BAIXADOPOR'
      Origin = 'TEV_BAIXADOPOR'
    end
    object TBTelevendasTEV_CLIENTE: TIntegerField
      FieldName = 'TEV_CLIENTE'
      Origin = 'TEV_CLIENTE'
      Required = True
    end
    object TBTelevendasTEV_CODIGO: TIntegerField
      FieldName = 'TEV_CODIGO'
      Origin = 'TEV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTelevendasTEV_DATA: TDateField
      FieldName = 'TEV_DATA'
      Origin = 'TEV_DATA'
    end
    object TBTelevendasTEV_DATABAIXA: TDateField
      FieldName = 'TEV_DATABAIXA'
      Origin = 'TEV_DATABAIXA'
    end
    object TBTelevendasTEV_DATAPROX: TDateField
      FieldName = 'TEV_DATAPROX'
      Origin = 'TEV_DATAPROX'
    end
    object TBTelevendasTEV_DEMODATA: TDateField
      FieldName = 'TEV_DEMODATA'
      Origin = 'TEV_DEMODATA'
    end
    object TBTelevendasTEV_DEMOHORA: TTimeField
      FieldName = 'TEV_DEMOHORA'
      Origin = 'TEV_DEMOHORA'
    end
    object TBTelevendasTEV_DESCRICAO: TStringField
      FieldName = 'TEV_DESCRICAO'
      Origin = 'TEV_DESCRICAO'
      Size = 50
    end
    object TBTelevendasTEV_DTATUALIZACAO: TDateField
      FieldName = 'TEV_DTATUALIZACAO'
      Origin = 'TEV_DTATUALIZACAO'
    end
    object TBTelevendasTEV_DTCADASTRO: TDateField
      FieldName = 'TEV_DTCADASTRO'
      Origin = 'TEV_DTCADASTRO'
    end
    object TBTelevendasTEV_FIXA: TStringField
      FieldName = 'TEV_FIXA'
      Origin = 'TEV_FIXA'
      Size = 1
    end
    object TBTelevendasTEV_HORAPROX: TTimeField
      FieldName = 'TEV_HORAPROX'
      Origin = 'TEV_HORAPROX'
    end
    object TBTelevendasTEV_HRATUALIZACAO: TTimeField
      FieldName = 'TEV_HRATUALIZACAO'
      Origin = 'TEV_HRATUALIZACAO'
    end
    object TBTelevendasTEV_HRCADASTRO: TTimeField
      FieldName = 'TEV_HRCADASTRO'
      Origin = 'TEV_HRCADASTRO'
    end
    object TBTelevendasTEV_MOTIVO: TIntegerField
      FieldName = 'TEV_MOTIVO'
      Origin = 'TEV_MOTIVO'
      Required = True
    end
    object TBTelevendasTEV_OBSERVACOES: TMemoField
      FieldName = 'TEV_OBSERVACOES'
      Origin = 'TEV_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBTelevendasTEV_REAGENDADO: TStringField
      FieldName = 'TEV_REAGENDADO'
      Origin = 'TEV_REAGENDADO'
      Size = 1
    end
    object TBTelevendasTEV_STATUS: TStringField
      FieldName = 'TEV_STATUS'
      Origin = 'TEV_STATUS'
      Size = 1
    end
    object TBTelevendasTEV_TEMPERATURA: TStringField
      FieldName = 'TEV_TEMPERATURA'
      Origin = 'TEV_TEMPERATURA'
    end
    object TBTelevendasTEV_TEMPERATURADATA: TDateField
      FieldName = 'TEV_TEMPERATURADATA'
      Origin = 'TEV_TEMPERATURADATA'
    end
    object TBTelevendasTEV_USUARIO: TStringField
      FieldName = 'TEV_USUARIO'
      Origin = 'TEV_USUARIO'
    end
    object TBTelevendasTEV_VENDA: TIntegerField
      FieldName = 'TEV_VENDA'
      Origin = 'TEV_VENDA'
    end
    object TBTelevendasTEV_VENDEDOR: TIntegerField
      FieldName = 'TEV_VENDEDOR'
      Origin = 'TEV_VENDEDOR'
      Required = True
    end
    object TBTelevendasTEV_VIA: TIntegerField
      FieldName = 'TEV_VIA'
      Origin = 'TEV_VIA'
      Required = True
    end
    object TBTelevendasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBTelevendasMOT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOT_DESCRICAO'
      Origin = 'MOT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object TBTelevendasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBTelevendasVIA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIA_DESCRICAO'
      Origin = 'VIA_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRTelevendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 936
    Top = 336
  end
  object UPTelevendas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO TELEVENDAS'
      '(TEV_BAIXADOPOR, TEV_CLIENTE, TEV_CODIGO, TEV_DATA, '
      '  TEV_DATABAIXA, TEV_DATAPROX, TEV_DEMODATA, '
      '  TEV_DEMOHORA, TEV_DESCRICAO, TEV_DTATUALIZACAO, '
      '  TEV_DTCADASTRO, TEV_FIXA, TEV_HORAPROX, TEV_HRATUALIZACAO, '
      '  TEV_HRCADASTRO, TEV_MOTIVO, TEV_OBSERVACOES, '
      '  TEV_REAGENDADO, TEV_STATUS, TEV_TEMPERATURA, '
      '  TEV_TEMPERATURADATA, TEV_USUARIO, TEV_VENDA, '
      '  TEV_VENDEDOR, TEV_VIA)'
      
        'VALUES (:NEW_TEV_BAIXADOPOR, :NEW_TEV_CLIENTE, gen_id(GEN_TELEVE' +
        'NDAS,1), :NEW_TEV_DATA, '
      '  :NEW_TEV_DATABAIXA, :NEW_TEV_DATAPROX, :NEW_TEV_DEMODATA, '
      
        '  :NEW_TEV_DEMOHORA, :NEW_TEV_DESCRICAO, :NEW_TEV_DTATUALIZACAO,' +
        ' '
      
        '  :NEW_TEV_DTCADASTRO, :NEW_TEV_FIXA, :NEW_TEV_HORAPROX, :NEW_TE' +
        'V_HRATUALIZACAO, '
      '  :NEW_TEV_HRCADASTRO, :NEW_TEV_MOTIVO, :NEW_TEV_OBSERVACOES, '
      '  :NEW_TEV_REAGENDADO, :NEW_TEV_STATUS, :NEW_TEV_TEMPERATURA, '
      '  :NEW_TEV_TEMPERATURADATA, :NEW_TEV_USUARIO, :NEW_TEV_VENDA, '
      '  :NEW_TEV_VENDEDOR, :NEW_TEV_VIA)'
      
        'RETURNING TEV_BAIXADOPOR, TEV_CLIENTE, TEV_CODIGO, TEV_DATA, TEV' +
        '_DATABAIXA, TEV_DATAPROX, TEV_DEMODATA, TEV_DEMOHORA, TEV_DESCRI' +
        'CAO, TEV_DTATUALIZACAO, TEV_DTCADASTRO, TEV_FIXA, TEV_HORAPROX, ' +
        'TEV_HRATUALIZACAO, TEV_HRCADASTRO, TEV_MOTIVO, TEV_OBSERVACOES, ' +
        'TEV_REAGENDADO, TEV_STATUS, TEV_TEMPERATURA, TEV_TEMPERATURADATA' +
        ', TEV_USUARIO, TEV_VENDA, TEV_VENDEDOR, TEV_VIA')
    ModifySQL.Strings = (
      'UPDATE TELEVENDAS'
      
        'SET TEV_BAIXADOPOR = :NEW_TEV_BAIXADOPOR, TEV_CLIENTE = :NEW_TEV' +
        '_CLIENTE, '
      '  TEV_CODIGO = :NEW_TEV_CODIGO, TEV_DATA = :NEW_TEV_DATA, '
      
        '  TEV_DATABAIXA = :NEW_TEV_DATABAIXA, TEV_DATAPROX = :NEW_TEV_DA' +
        'TAPROX, '
      
        '  TEV_DEMODATA = :NEW_TEV_DEMODATA, TEV_DEMOHORA = :NEW_TEV_DEMO' +
        'HORA, '
      
        '  TEV_DESCRICAO = :NEW_TEV_DESCRICAO, TEV_DTATUALIZACAO = :NEW_T' +
        'EV_DTATUALIZACAO, '
      
        '  TEV_DTCADASTRO = :NEW_TEV_DTCADASTRO, TEV_FIXA = :NEW_TEV_FIXA' +
        ', '
      
        '  TEV_HORAPROX = :NEW_TEV_HORAPROX, TEV_HRATUALIZACAO = :NEW_TEV' +
        '_HRATUALIZACAO, '
      
        '  TEV_HRCADASTRO = :NEW_TEV_HRCADASTRO, TEV_MOTIVO = :NEW_TEV_MO' +
        'TIVO, '
      
        '  TEV_OBSERVACOES = :NEW_TEV_OBSERVACOES, TEV_REAGENDADO = :NEW_' +
        'TEV_REAGENDADO, '
      
        '  TEV_STATUS = :NEW_TEV_STATUS, TEV_TEMPERATURA = :NEW_TEV_TEMPE' +
        'RATURA, '
      
        '  TEV_TEMPERATURADATA = :NEW_TEV_TEMPERATURADATA, TEV_USUARIO = ' +
        ':NEW_TEV_USUARIO, '
      '  TEV_VENDA = :NEW_TEV_VENDA, TEV_VENDEDOR = :NEW_TEV_VENDEDOR, '
      '  TEV_VIA = :NEW_TEV_VIA'
      'WHERE TEV_CODIGO = :OLD_TEV_CODIGO'
      
        'RETURNING TEV_BAIXADOPOR, TEV_CLIENTE, TEV_CODIGO, TEV_DATA, TEV' +
        '_DATABAIXA, TEV_DATAPROX, TEV_DEMODATA, TEV_DEMOHORA, TEV_DESCRI' +
        'CAO, TEV_DTATUALIZACAO, TEV_DTCADASTRO, TEV_FIXA, TEV_HORAPROX, ' +
        'TEV_HRATUALIZACAO, TEV_HRCADASTRO, TEV_MOTIVO, TEV_OBSERVACOES, ' +
        'TEV_REAGENDADO, TEV_STATUS, TEV_TEMPERATURA, TEV_TEMPERATURADATA' +
        ', TEV_USUARIO, TEV_VENDA, TEV_VENDEDOR, TEV_VIA')
    DeleteSQL.Strings = (
      'DELETE FROM TELEVENDAS'
      'WHERE TEV_CODIGO = :OLD_TEV_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT TEV_BAIXADOPOR, TEV_CLIENTE, TEV_CODIGO, TEV_DATA, TEV_DA' +
        'TABAIXA, '
      '  TEV_DATAPROX, TEV_DEMODATA, TEV_DEMOHORA, TEV_DESCRICAO, '
      '  TEV_DTATUALIZACAO, TEV_DTCADASTRO, TEV_FIXA, TEV_HORAPROX, '
      
        '  TEV_HRATUALIZACAO, TEV_HRCADASTRO, TEV_MOTIVO, TEV_OBSERVACOES' +
        ', '
      
        '  TEV_REAGENDADO, TEV_STATUS, TEV_TEMPERATURA, TEV_TEMPERATURADA' +
        'TA, '
      '  TEV_USUARIO, TEV_VENDA, TEV_VENDEDOR, TEV_VIA'
      'FROM TELEVENDAS'
      'WHERE TEV_CODIGO = :OLD_TEV_CODIGO')
    Left = 936
    Top = 384
  end
end
