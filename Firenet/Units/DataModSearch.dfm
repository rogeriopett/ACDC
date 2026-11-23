object DMS: TDMS
  OnCreate = DataModuleCreate
  Height = 536
  Width = 1072
  object TRVias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 880
    Top = 424
  end
  object QYVias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVias
    SQL.Strings = (
      'select VIA_CODIGO, VIA_DESCRICAO from VIAS'
      'where VIA_CODIGO=:codigo'
      '')
    Left = 880
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYViasVIA_CODIGO: TIntegerField
      FieldName = 'VIA_CODIGO'
      Origin = 'VIA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYViasVIA_DESCRICAO: TStringField
      FieldName = 'VIA_DESCRICAO'
      Origin = 'VIA_DESCRICAO'
      Size = 50
    end
  end
  object TRAgrupadores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 112
    Top = 88
  end
  object QYAgrupadores: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAgrupadores
    SQL.Strings = (
      'select AGR_CODIGO, AGR_DESCRICAO from AGRUPADORES'
      'where AGR_CODIGO=:codigo'
      '')
    Left = 112
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAgrupadoresAGR_CODIGO: TIntegerField
      FieldName = 'AGR_CODIGO'
      Origin = 'AGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAgrupadoresAGR_DESCRICAO: TStringField
      FieldName = 'AGR_DESCRICAO'
      Origin = 'AGR_DESCRICAO'
      Size = 50
    end
  end
  object TRAcoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Left = 48
    Top = 88
  end
  object QYAcoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAcoes
    SQL.Strings = (
      'select ACO_CODIGO, ACO_DESCRICAO from ACOES'
      'where ACO_CODIGO=:codigo')
    Left = 48
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAcoesACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
      Origin = 'ACO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAcoesACO_DESCRICAO: TStringField
      FieldName = 'ACO_DESCRICAO'
      Origin = 'ACO_DESCRICAO'
      Size = 50
    end
  end
  object TRAlmoxarifados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 88
  end
  object QYAlmoxarifados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAlmoxarifados
    SQL.Strings = (
      'select ALM_CODIGO, ALM_DESCRICAO from ALMOXARIFADOS'
      'where ALM_STATUS='#39'A'#39' and ALM_CODIGO=:codigo'
      '')
    Left = 176
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAlmoxarifadosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ALM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAlmoxarifadosALM_DESCRICAO: TStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      Size = 50
    end
  end
  object TRAssuntos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 240
    Top = 88
  end
  object QYAssuntos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAssuntos
    SQL.Strings = (
      'select ASS_CODIGO, ASS_DESCRICAO, ASS_TEXTO from ASSUNTOS'
      'where ASS_CODIGO=:codigo'
      '')
    Left = 240
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAssuntosASS_CODIGO: TIntegerField
      FieldName = 'ASS_CODIGO'
      Origin = 'ASS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAssuntosASS_DESCRICAO: TStringField
      FieldName = 'ASS_DESCRICAO'
      Origin = 'ASS_DESCRICAO'
      Size = 50
    end
    object QYAssuntosASS_TEXTO: TMemoField
      FieldName = 'ASS_TEXTO'
      Origin = 'ASS_TEXTO'
      BlobType = ftMemo
    end
  end
  object TRAtividades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 88
  end
  object QYAtividades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAtividades
    SQL.Strings = (
      'select ATI_CODIGO, ATI_DESCRICAO from ATIVIDADES'
      'where ATI_CODIGO=:codigo'
      '')
    Left = 304
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAtividadesATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      Origin = 'ATI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAtividadesATI_DESCRICAO: TStringField
      FieldName = 'ATI_DESCRICAO'
      Origin = 'ATI_DESCRICAO'
      Size = 50
    end
  end
  object TRAvaliacoesTipo: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 368
    Top = 88
  end
  object QYAvaliacoesTipo: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAvaliacoesTipo
    SQL.Strings = (
      'select AVT_CODIGO, AVT_DESCRICAO from AVALIACOESTIPO'
      'where AVT_CODIGO=:codigo'
      '')
    Left = 368
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYAvaliacoesTipoAVT_CODIGO: TIntegerField
      FieldName = 'AVT_CODIGO'
      Origin = 'AVT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYAvaliacoesTipoAVT_DESCRICAO: TStringField
      FieldName = 'AVT_DESCRICAO'
      Origin = 'AVT_DESCRICAO'
      Size = 50
    end
  end
  object TRBairros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 432
    Top = 88
  end
  object QYBairros: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBairros
    SQL.Strings = (
      'select '
      'BAI_CODIGO, '
      'BAI_NOME,'
      'BAI_ESTADO,'
      'BAI_PAIS,'
      'BAI_CIDADE, '
      'CID_NOME, '
      'ESD_NOME,'
      'PAI_NOME'
      'from BAIRROS'
      'left join CIDADES on BAI_CIDADE=CID_CODIGO'
      'left join ESTADOS on BAI_ESTADO=ESD_CODIGO'
      'left join PAISES on BAI_PAIS=PAI_CODIGO'
      'where BAI_CODIGO=:codigo'
      '')
    Left = 432
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYBairrosBAI_CODIGO: TIntegerField
      FieldName = 'BAI_CODIGO'
      Origin = 'BAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYBairrosBAI_NOME: TStringField
      FieldName = 'BAI_NOME'
      Origin = 'BAI_NOME'
      Size = 80
    end
    object QYBairrosBAI_ESTADO: TIntegerField
      FieldName = 'BAI_ESTADO'
      Origin = 'BAI_ESTADO'
      Required = True
    end
    object QYBairrosBAI_PAIS: TIntegerField
      FieldName = 'BAI_PAIS'
      Origin = 'BAI_PAIS'
      Required = True
    end
    object QYBairrosBAI_CIDADE: TIntegerField
      FieldName = 'BAI_CIDADE'
      Origin = 'BAI_CIDADE'
      Required = True
    end
    object QYBairrosCID_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYBairrosESD_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYBairrosPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRBancos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 496
    Top = 88
  end
  object QYBancos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRBancos
    SQL.Strings = (
      'select BAN_CODIGO, BAN_NOME from BANCOS'
      'where BAN_CODIGO=:codigo'
      '')
    Left = 496
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      Size = 80
    end
  end
  object TRCidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 560
    Top = 88
  end
  object QYCidades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCidades
    SQL.Strings = (
      'select '
      'CID_CODIGO, '
      'CID_NOME, '
      'CID_ESTADO,'
      'CID_PAIS,'
      'ESD_NOME,'
      'PAI_NOME'
      'from CIDADES'
      'left join ESTADOS on CID_ESTADO=ESD_CODIGO'
      'left join PAISES on CID_PAIS=PAI_CODIGO'
      'where CID_CODIGO=:codigo'
      '')
    Left = 560
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Size = 80
    end
    object QYCidadesCID_ESTADO: TIntegerField
      FieldName = 'CID_ESTADO'
      Origin = 'CID_ESTADO'
      Required = True
    end
    object QYCidadesCID_PAIS: TIntegerField
      FieldName = 'CID_PAIS'
      Origin = 'CID_PAIS'
      Required = True
    end
    object QYCidadesESD_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCidadesPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRClasses: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 88
  end
  object QYClasses: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClasses
    SQL.Strings = (
      'select CLS_CODIGO, CLS_DESCRICAO from CLASSES'
      'where CLS_CODIGO=:codigo'
      '')
    Left = 624
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYClassesCLS_CODIGO: TIntegerField
      FieldName = 'CLS_CODIGO'
      Origin = 'CLS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassesCLS_DESCRICAO: TStringField
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      Size = 50
    end
  end
  object TRClassFiscal: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 688
    Top = 88
  end
  object QYClassFiscal: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClassFiscal
    SQL.Strings = (
      'select '
      'CLF_CODIGO, '
      'CLF_DESCRICAO,'
      'CLF_EXCECAO'
      'from CLASSFISCAL'
      'where CLF_CODIGO=:codigo'
      '')
    Left = 688
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object QYClassFiscalCLF_CODIGO: TStringField
      FieldName = 'CLF_CODIGO'
      Origin = 'CLF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClassFiscalCLF_DESCRICAO: TStringField
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      Size = 120
    end
    object QYClassFiscalCLF_EXCECAO: TIntegerField
      FieldName = 'CLF_EXCECAO'
      Origin = 'CLF_EXCECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TRClientes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 816
    Top = 88
  end
  object QYClientes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClientes
    SQL.Strings = (
      'select '
      'CLI_BAIRRO,'
      'CLI_BLOQUEARVENDA,'
      'CLI_CEP,'
      'CLI_CIDADE,'
      'CLI_CIDADECODIGO,'
      'CLI_CNPJ,'
      'CLI_CNS, '
      'CLI_CODIGO,'
      'CLI_COMPLEMENTO,'
      'CLI_CONDICAO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_DESCONTO,'
      'CLI_EMAIL,'
      'CLI_EMAIL2,'
      'CLI_ENDERECO,'
      'CLI_ESTADO,'
      'CLI_ESTADOCODIGO,'
      'CLI_FONE1,'
      'CLI_FONE2,'
      'CLI_FRETE,'
      'CLI_IDESTRANGEIRO,'
      'CLI_IE,'
      'CLI_IM,'
      'CLI_LIMITECREDITO,'
      'CLI_MAILING,'
      'CLI_NOME,'
      'CLI_NUMERO,'
      'CLI_OBITO,'
      'CLI_PAIS,'
      'CLI_PAISCODIGO,'
      'CLI_PONTOS,'
      'CLI_RG,'
      'CLI_SAME,'
      'CLI_SITE,'
      'CLI_SUFRAMA,'
      'CLI_VENDEDOR,'
      'CLI_TABELAPRECO,'
      'CLI_TAXA,'
      'CLI_TIPOCONSUMIDOR,'
      'CLI_TIPOPESSOA,'
      'MAI_DESCRICAO,'
      'TAX_DESCRICAO,'
      'TAX_TIPO,'
      'TAX_VALOR,'
      'VEN_NOME'
      'from CLIENTES'
      'left join VENDEDORES on CLI_VENDEDOR=VEN_CODIGO'
      'left join MAILINGS on CLI_MAILING=MAI_CODIGO'
      'left join TAXAS on CLI_TAXA=TAX_CODIGO'
      'where CLI_CODIGO=:codigo'
      '')
    Left = 816
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 50
    end
    object QYClientesCLI_BLOQUEARVENDA: TStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      Size = 1
    end
    object QYClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 10
    end
    object QYClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 50
    end
    object QYClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
    end
    object QYClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
    end
    object QYClientesCLI_CNS: TStringField
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
    end
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      Size = 80
    end
    object QYClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      Required = True
    end
    object QYClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      Size = 80
    end
    object QYClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object QYClientesCLI_DESCONTO: TFMTBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      Precision = 18
    end
    object QYClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 100
    end
    object QYClientesCLI_EMAIL2: TStringField
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      Size = 100
    end
    object QYClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      Size = 100
    end
    object QYClientesCLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      Size = 2
    end
    object QYClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
    end
    object QYClientesCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
    end
    object QYClientesCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
    end
    object QYClientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      Size = 50
    end
    object QYClientesCLI_IDESTRANGEIRO: TStringField
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
    end
    object QYClientesCLI_IE: TStringField
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
    end
    object QYClientesCLI_IM: TIntegerField
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
    end
    object QYClientesCLI_LIMITECREDITO: TFMTBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      Precision = 18
    end
    object QYClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      Required = True
    end
    object QYClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      Size = 80
    end
    object QYClientesCLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      Size = 15
    end
    object QYClientesCLI_OBITO: TStringField
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      Size = 1
    end
    object QYClientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 80
    end
    object QYClientesCLI_PAISCODIGO: TIntegerField
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
    end
    object QYClientesCLI_PONTOS: TFMTBCDField
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      Precision = 18
    end
    object QYClientesCLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
    end
    object QYClientesCLI_SAME: TStringField
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
    end
    object QYClientesCLI_SITE: TStringField
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      Size = 100
    end
    object QYClientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
    end
    object QYClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      Required = True
    end
    object QYClientesCLI_TABELAPRECO: TStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      Size = 1
    end
    object QYClientesCLI_TAXA: TIntegerField
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      Required = True
    end
    object QYClientesCLI_TIPOCONSUMIDOR: TStringField
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      Size = 30
    end
    object QYClientesCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      Size = 1
    end
    object QYClientesMAI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYClientesTAX_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYClientesTAX_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYClientesTAX_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYClientesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRCondicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 944
    Top = 88
  end
  object QYCondicoes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCondicoes
    SQL.Strings = (
      'select '
      'CPG_CODIGO, '
      'CPG_DESCRICAO, '
      'CPG_DESCPORC,'
      'CPG_FORMAPAGTO, '
      'CPG_MEIOPAGAMENTO,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TIPOPAGAMENTO,'
      'CPG_TOTALPARCELAS,'
      'CPG_TOTALPORCENTAGEM'
      'from CONDICOES'
      'where CPG_CODIGO=:codigo'
      '')
    Left = 944
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCondicoesCPG_CODIGO: TIntegerField
      FieldName = 'CPG_CODIGO'
      Origin = 'CPG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCondicoesCPG_DESCRICAO: TStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      Size = 50
    end
    object QYCondicoesCPG_DESCPORC: TFMTBCDField
      FieldName = 'CPG_DESCPORC'
      Origin = 'CPG_DESCPORC'
      Precision = 18
    end
    object QYCondicoesCPG_FORMAPAGTO: TStringField
      FieldName = 'CPG_FORMAPAGTO'
      Origin = 'CPG_FORMAPAGTO'
      Size = 15
    end
    object QYCondicoesCPG_MEIOPAGAMENTO: TStringField
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      Size = 50
    end
    object QYCondicoesCPG_TIPOINTEGRACAO: TStringField
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      Size = 30
    end
    object QYCondicoesCPG_TIPOPAGAMENTO: TStringField
      FieldName = 'CPG_TIPOPAGAMENTO'
      Origin = 'CPG_TIPOPAGAMENTO'
      Size = 30
    end
    object QYCondicoesCPG_TOTALPARCELAS: TIntegerField
      FieldName = 'CPG_TOTALPARCELAS'
      Origin = 'CPG_TOTALPARCELAS'
    end
    object QYCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField
      FieldName = 'CPG_TOTALPORCENTAGEM'
      Origin = 'CPG_TOTALPORCENTAGEM'
      Precision = 18
    end
  end
  object TRContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 200
  end
  object QYContas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRContas
    SQL.Strings = (
      'select '
      'CON_AGENCIA,'
      'CON_AGENCIADIGITO,'
      'CON_BAIXACODIGO,'
      'CON_BANCO,'
      'CON_CARTEIRA,'
      'CON_CARTEIRACOD,'
      'CON_CEDENTE,'
      'CON_CEDENTEDIGITO,'
      'CON_CEDENTENOME,'
      'CON_CODIGO, '
      'CON_CONTA,'
      'CON_CONTADIGITO,'
      'CON_CONVENIO,'
      'CON_DESCONTOTIPO,'
      'CON_DIASBAIXA,'
      'CON_DIASPROTESTO,'
      'CON_ESPECIE,'
      'CON_ESPECIEDOC,'
      'CON_INSTRUCAO1,'
      'CON_INSTRUCAO2,'
      'CON_INSTRUCAO3,'
      'CON_INSTRUCAO4,'
      'CON_INSTRUCAO5,'
      'CON_LAYOUT,'
      'CON_LOCALPAGTO,'
      'CON_MODALIDADE,'
      'CON_MORACODIGO,'
      'CON_MORAJUROS,'
      'CON_MORATIPO,'
      'CON_MULTA,'
      'CON_MULTATIPO,'
      'CON_NOME,'
      'CON_NOSSONUMDIGITOS,'
      'CON_NOSSONUMFORMATAR,'
      'CON_PROTESTOCODIGO,'
      'CON_PROTESTOTIPO,'
      'CON_TIPOCOBRANCA,'
      'CON_VALORBOLETO,'
      'BAN_NOME'
      'from CONTAS'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'where CON_CODIGO=:codigo'
      '')
    Left = 48
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYContasCON_AGENCIA: TStringField
      FieldName = 'CON_AGENCIA'
      Origin = 'CON_AGENCIA'
      Size = 10
    end
    object QYContasCON_AGENCIADIGITO: TIntegerField
      FieldName = 'CON_AGENCIADIGITO'
      Origin = 'CON_AGENCIADIGITO'
    end
    object QYContasCON_BAIXACODIGO: TIntegerField
      FieldName = 'CON_BAIXACODIGO'
      Origin = 'CON_BAIXACODIGO'
    end
    object QYContasCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
      Required = True
    end
    object QYContasCON_CARTEIRA: TStringField
      FieldName = 'CON_CARTEIRA'
      Origin = 'CON_CARTEIRA'
      Size = 10
    end
    object QYContasCON_CARTEIRACOD: TIntegerField
      FieldName = 'CON_CARTEIRACOD'
      Origin = 'CON_CARTEIRACOD'
    end
    object QYContasCON_CEDENTE: TStringField
      FieldName = 'CON_CEDENTE'
      Origin = 'CON_CEDENTE'
    end
    object QYContasCON_CEDENTEDIGITO: TIntegerField
      FieldName = 'CON_CEDENTEDIGITO'
      Origin = 'CON_CEDENTEDIGITO'
    end
    object QYContasCON_CEDENTENOME: TStringField
      FieldName = 'CON_CEDENTENOME'
      Origin = 'CON_CEDENTENOME'
      Size = 80
    end
    object QYContasCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
      Origin = 'CON_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYContasCON_CONTA: TStringField
      FieldName = 'CON_CONTA'
      Origin = 'CON_CONTA'
      Size = 15
    end
    object QYContasCON_CONTADIGITO: TIntegerField
      FieldName = 'CON_CONTADIGITO'
      Origin = 'CON_CONTADIGITO'
    end
    object QYContasCON_CONVENIO: TStringField
      FieldName = 'CON_CONVENIO'
      Origin = 'CON_CONVENIO'
    end
    object QYContasCON_DESCONTOTIPO: TStringField
      FieldName = 'CON_DESCONTOTIPO'
      Origin = 'CON_DESCONTOTIPO'
      Size = 15
    end
    object QYContasCON_DIASBAIXA: TIntegerField
      FieldName = 'CON_DIASBAIXA'
      Origin = 'CON_DIASBAIXA'
    end
    object QYContasCON_DIASPROTESTO: TIntegerField
      FieldName = 'CON_DIASPROTESTO'
      Origin = 'CON_DIASPROTESTO'
    end
    object QYContasCON_ESPECIE: TStringField
      FieldName = 'CON_ESPECIE'
      Origin = 'CON_ESPECIE'
      Size = 5
    end
    object QYContasCON_ESPECIEDOC: TStringField
      FieldName = 'CON_ESPECIEDOC'
      Origin = 'CON_ESPECIEDOC'
      Size = 50
    end
    object QYContasCON_INSTRUCAO1: TStringField
      FieldName = 'CON_INSTRUCAO1'
      Origin = 'CON_INSTRUCAO1'
      Size = 100
    end
    object QYContasCON_INSTRUCAO2: TStringField
      FieldName = 'CON_INSTRUCAO2'
      Origin = 'CON_INSTRUCAO2'
      Size = 100
    end
    object QYContasCON_INSTRUCAO3: TStringField
      FieldName = 'CON_INSTRUCAO3'
      Origin = 'CON_INSTRUCAO3'
      Size = 100
    end
    object QYContasCON_INSTRUCAO4: TStringField
      FieldName = 'CON_INSTRUCAO4'
      Origin = 'CON_INSTRUCAO4'
      Size = 100
    end
    object QYContasCON_INSTRUCAO5: TStringField
      FieldName = 'CON_INSTRUCAO5'
      Origin = 'CON_INSTRUCAO5'
      Size = 100
    end
    object QYContasCON_LAYOUT: TStringField
      FieldName = 'CON_LAYOUT'
      Origin = 'CON_LAYOUT'
      Size = 8
    end
    object QYContasCON_LOCALPAGTO: TStringField
      FieldName = 'CON_LOCALPAGTO'
      Origin = 'CON_LOCALPAGTO'
      Size = 120
    end
    object QYContasCON_MODALIDADE: TIntegerField
      FieldName = 'CON_MODALIDADE'
      Origin = 'CON_MODALIDADE'
    end
    object QYContasCON_MORACODIGO: TStringField
      FieldName = 'CON_MORACODIGO'
      Origin = 'CON_MORACODIGO'
      Size = 5
    end
    object QYContasCON_MORAJUROS: TFMTBCDField
      FieldName = 'CON_MORAJUROS'
      Origin = 'CON_MORAJUROS'
      Precision = 18
    end
    object QYContasCON_MORATIPO: TStringField
      FieldName = 'CON_MORATIPO'
      Origin = 'CON_MORATIPO'
      Size = 15
    end
    object QYContasCON_MULTA: TFMTBCDField
      FieldName = 'CON_MULTA'
      Origin = 'CON_MULTA'
      Precision = 18
    end
    object QYContasCON_MULTATIPO: TStringField
      FieldName = 'CON_MULTATIPO'
      Origin = 'CON_MULTATIPO'
      Size = 10
    end
    object QYContasCON_NOME: TStringField
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      Required = True
      Size = 80
    end
    object QYContasCON_NOSSONUMDIGITOS: TIntegerField
      FieldName = 'CON_NOSSONUMDIGITOS'
      Origin = 'CON_NOSSONUMDIGITOS'
    end
    object QYContasCON_NOSSONUMFORMATAR: TStringField
      FieldName = 'CON_NOSSONUMFORMATAR'
      Origin = 'CON_NOSSONUMFORMATAR'
      Size = 1
    end
    object QYContasCON_PROTESTOCODIGO: TIntegerField
      FieldName = 'CON_PROTESTOCODIGO'
      Origin = 'CON_PROTESTOCODIGO'
    end
    object QYContasCON_PROTESTOTIPO: TStringField
      FieldName = 'CON_PROTESTOTIPO'
      Origin = 'CON_PROTESTOTIPO'
    end
    object QYContasCON_TIPOCOBRANCA: TStringField
      FieldName = 'CON_TIPOCOBRANCA'
      Origin = 'CON_TIPOCOBRANCA'
    end
    object QYContasCON_VALORBOLETO: TFMTBCDField
      FieldName = 'CON_VALORBOLETO'
      Origin = 'CON_VALORBOLETO'
      Precision = 18
    end
    object QYContasBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRConvenios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 112
    Top = 200
  end
  object QYConvenios: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRConvenios
    SQL.Strings = (
      'select '
      'COV_CODIGO,'
      'COV_DESCRICAO'
      'from CONVENIOS'
      'where COV_CODIGO=:codigo'
      '')
    Left = 112
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYConveniosCOV_CODIGO: TIntegerField
      FieldName = 'COV_CODIGO'
      Origin = 'COV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYConveniosCOV_DESCRICAO: TStringField
      FieldName = 'COV_DESCRICAO'
      Origin = 'COV_DESCRICAO'
      Size = 50
    end
  end
  object TRCursos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 200
  end
  object QYCursos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCursos
    SQL.Strings = (
      'select CUR_CODIGO, CUR_DESCRICAO from CURSOS'
      'where CUR_CODIGO=:codigo'
      '')
    Left = 176
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCursosCUR_CODIGO: TIntegerField
      FieldName = 'CUR_CODIGO'
      Origin = 'CUR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCursosCUR_DESCRICAO: TStringField
      FieldName = 'CUR_DESCRICAO'
      Origin = 'CUR_DESCRICAO'
      Size = 50
    end
  end
  object TRDespesas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 240
    Top = 200
  end
  object QYDespesas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRDespesas
    SQL.Strings = (
      'select DES_CODIGO, DES_DESCRICAO from DESPESAS'
      'where DES_CODIGO=:codigo'
      '')
    Left = 240
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYDespesasDES_CODIGO: TIntegerField
      FieldName = 'DES_CODIGO'
      Origin = 'DES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYDespesasDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Origin = 'DES_DESCRICAO'
      Size = 50
    end
  end
  object TREmailsContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 200
  end
  object QYEmailsContas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREmailsContas
    SQL.Strings = (
      
        'select EMC_CODIGO, EMC_NOME, EMC_CONFIRMACAO, EMC_ASSINATURA fro' +
        'm EMAILSCONTAS'
      'where EMC_CODIGO=:codigo'
      '')
    Left = 304
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYEmailsContasEMC_CODIGO: TIntegerField
      FieldName = 'EMC_CODIGO'
      Origin = 'EMC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEmailsContasEMC_NOME: TStringField
      FieldName = 'EMC_NOME'
      Origin = 'EMC_NOME'
      Size = 80
    end
    object QYEmailsContasEMC_CONFIRMACAO: TStringField
      FieldName = 'EMC_CONFIRMACAO'
      Origin = 'EMC_CONFIRMACAO'
      Size = 1
    end
    object QYEmailsContasEMC_ASSINATURA: TMemoField
      FieldName = 'EMC_ASSINATURA'
      Origin = 'EMC_ASSINATURA'
      BlobType = ftMemo
    end
  end
  object TREquipamentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 368
    Top = 200
  end
  object QYEquipamentos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREquipamentos
    SQL.Strings = (
      'select '
      'EQP_ACESSORIOS,'
      'EQP_ANOFAB,'
      'EQP_ANOMOD,'
      'EQP_CHASSI,'
      'EQP_CLIENTE,'
      'EQP_CODIGO,'
      'EQP_COMBUSTIVEL,'
      'EQP_COR, '
      'EQP_DESCRICAO,'
      'EQP_LOCALIZACAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_REVENDEDOR,'
      'EQP_SERIE,'
      'EQP_TAMANHO'
      'from EQUIPAMENTOS'
      'where EQP_CODIGO=:codigo'
      '')
    Left = 368
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYEquipamentosEQP_ACESSORIOS: TStringField
      FieldName = 'EQP_ACESSORIOS'
      Origin = 'EQP_ACESSORIOS'
      Size = 40
    end
    object QYEquipamentosEQP_ANOFAB: TIntegerField
      FieldName = 'EQP_ANOFAB'
      Origin = 'EQP_ANOFAB'
    end
    object QYEquipamentosEQP_ANOMOD: TIntegerField
      FieldName = 'EQP_ANOMOD'
      Origin = 'EQP_ANOMOD'
    end
    object QYEquipamentosEQP_CHASSI: TStringField
      FieldName = 'EQP_CHASSI'
      Origin = 'EQP_CHASSI'
      Size = 35
    end
    object QYEquipamentosEQP_CLIENTE: TIntegerField
      FieldName = 'EQP_CLIENTE'
      Origin = 'EQP_CLIENTE'
      Required = True
    end
    object QYEquipamentosEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEquipamentosEQP_COMBUSTIVEL: TStringField
      FieldName = 'EQP_COMBUSTIVEL'
      Origin = 'EQP_COMBUSTIVEL'
      Size = 30
    end
    object QYEquipamentosEQP_COR: TStringField
      FieldName = 'EQP_COR'
      Origin = 'EQP_COR'
    end
    object QYEquipamentosEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 50
    end
    object QYEquipamentosEQP_LOCALIZACAO: TStringField
      FieldName = 'EQP_LOCALIZACAO'
      Origin = 'EQP_LOCALIZACAO'
      Size = 50
    end
    object QYEquipamentosEQP_MARCA: TStringField
      FieldName = 'EQP_MARCA'
      Origin = 'EQP_MARCA'
      Size = 40
    end
    object QYEquipamentosEQP_MODELO: TStringField
      FieldName = 'EQP_MODELO'
      Origin = 'EQP_MODELO'
      Size = 40
    end
    object QYEquipamentosEQP_REVENDEDOR: TStringField
      FieldName = 'EQP_REVENDEDOR'
      Origin = 'EQP_REVENDEDOR'
      Size = 80
    end
    object QYEquipamentosEQP_SERIE: TStringField
      FieldName = 'EQP_SERIE'
      Origin = 'EQP_SERIE'
      Size = 40
    end
    object QYEquipamentosEQP_TAMANHO: TStringField
      FieldName = 'EQP_TAMANHO'
      Origin = 'EQP_TAMANHO'
      Size = 15
    end
  end
  object TREstados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 432
    Top = 200
  end
  object QYEstados: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREstados
    SQL.Strings = (
      'select '
      'ESD_CODIGO, '
      'ESD_NOME,'
      'ESD_PAIS,'
      'PAI_NOME'
      'from ESTADOS'
      'left join PAISES on ESD_PAIS=PAI_CODIGO'
      'where ESD_CODIGO=:codigo'
      '')
    Left = 432
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYEstadosESD_CODIGO: TIntegerField
      FieldName = 'ESD_CODIGO'
      Origin = 'ESD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEstadosESD_NOME: TStringField
      FieldName = 'ESD_NOME'
      Origin = 'ESD_NOME'
      Size = 80
    end
    object QYEstadosESD_PAIS: TIntegerField
      FieldName = 'ESD_PAIS'
      Origin = 'ESD_PAIS'
      Required = True
    end
    object QYEstadosPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TREtapas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 496
    Top = 200
  end
  object QYEtapas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TREtapas
    SQL.Strings = (
      'select '
      'ETP_CODIGO, '
      'ETP_DESCRICAO,'
      'ETP_SIGLA,'
      'ETP_TEMPO'
      'from ETAPAS'
      'where ETP_CODIGO=:codigo'
      '')
    Left = 496
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYEtapasETP_CODIGO: TIntegerField
      FieldName = 'ETP_CODIGO'
      Origin = 'ETP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYEtapasETP_DESCRICAO: TStringField
      FieldName = 'ETP_DESCRICAO'
      Origin = 'ETP_DESCRICAO'
      Size = 50
    end
    object QYEtapasETP_SIGLA: TStringField
      FieldName = 'ETP_SIGLA'
      Origin = 'ETP_SIGLA'
      Size = 15
    end
    object QYEtapasETP_TEMPO: TStringField
      FieldName = 'ETP_TEMPO'
      Origin = 'ETP_TEMPO'
      Size = 25
    end
  end
  object TRExamesTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 560
    Top = 200
  end
  object QYExamesTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRExamesTipos
    SQL.Strings = (
      'select '
      'EXT_CODIGO, '
      'EXT_DESCRICAO, '
      'EXT_SIGLA, '
      'EXT_VALOR '
      'from EXAMESTIPOS'
      'where EXT_CODIGO=:codigo'
      '')
    Left = 560
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYExamesTiposEXT_CODIGO: TIntegerField
      FieldName = 'EXT_CODIGO'
      Origin = 'EXT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYExamesTiposEXT_DESCRICAO: TStringField
      FieldName = 'EXT_DESCRICAO'
      Origin = 'EXT_DESCRICAO'
      Size = 120
    end
    object QYExamesTiposEXT_SIGLA: TStringField
      FieldName = 'EXT_SIGLA'
      Origin = 'EXT_SIGLA'
      Size = 10
    end
    object QYExamesTiposEXT_VALOR: TFMTBCDField
      FieldName = 'EXT_VALOR'
      Origin = 'EXT_VALOR'
      Precision = 18
    end
  end
  object TRFamilias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 200
  end
  object QYFamilias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFamilias
    SQL.Strings = (
      'select FAM_CODIGO, FAM_DESCRICAO from FAMILIAS'
      'where FAM_CODIGO=:codigo'
      '')
    Left = 624
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYFamiliasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'FAM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFamiliasFAM_DESCRICAO: TStringField
      FieldName = 'FAM_DESCRICAO'
      Origin = 'FAM_DESCRICAO'
      Size = 50
    end
  end
  object TRFases: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 688
    Top = 200
  end
  object QYFases: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFases
    SQL.Strings = (
      'select FAS_CODIGO, FAS_DESCRICAO from FASES'
      'where FAS_CODIGO=:codigo'
      '')
    Left = 688
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYFasesFAS_CODIGO: TIntegerField
      FieldName = 'FAS_CODIGO'
      Origin = 'FAS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFasesFAS_DESCRICAO: TStringField
      FieldName = 'FAS_DESCRICAO'
      Origin = 'FAS_DESCRICAO'
      Size = 50
    end
  end
  object TRFornecedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 752
    Top = 200
  end
  object QYFornecedores: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFornecedores
    SQL.Strings = (
      'select FOR_CODIGO, '
      'FOR_BAIRRO,'
      'FOR_CEP,'
      'FOR_CIDADE,'
      'FOR_CIDADECODIGO,'
      'FOR_CNPJ,'
      'FOR_COMPLEMENTO,'
      'FOR_CONTATO,'
      'FOR_CPF,'
      'FOR_EMAIL,'
      'FOR_ENDERECO,'
      'FOR_ESTADO,'
      'FOR_FONE1,'
      'FOR_IE,'
      'FOR_NOME, '
      'FOR_NUMERO,'
      'FOR_RG'
      'from FORNECEDORES'
      'where FOR_CODIGO=:codigo'
      '')
    Left = 752
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYFornecedoresFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFornecedoresFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Origin = 'FOR_BAIRRO'
      Size = 50
    end
    object QYFornecedoresFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR_CEP'
      Size = 10
    end
    object QYFornecedoresFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR_CIDADE'
      Size = 50
    end
    object QYFornecedoresFOR_CIDADECODIGO: TIntegerField
      FieldName = 'FOR_CIDADECODIGO'
      Origin = 'FOR_CIDADECODIGO'
    end
    object QYFornecedoresFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
    end
    object QYFornecedoresFOR_COMPLEMENTO: TStringField
      FieldName = 'FOR_COMPLEMENTO'
      Origin = 'FOR_COMPLEMENTO'
      Size = 80
    end
    object QYFornecedoresFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR_CONTATO'
      Size = 80
    end
    object QYFornecedoresFOR_CPF: TStringField
      FieldName = 'FOR_CPF'
      Origin = 'FOR_CPF'
    end
    object QYFornecedoresFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      Size = 100
    end
    object QYFornecedoresFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      Origin = 'FOR_ENDERECO'
      Size = 100
    end
    object QYFornecedoresFOR_ESTADO: TStringField
      FieldName = 'FOR_ESTADO'
      Origin = 'FOR_ESTADO'
      Size = 2
    end
    object QYFornecedoresFOR_FONE1: TStringField
      FieldName = 'FOR_FONE1'
      Origin = 'FOR_FONE1'
    end
    object QYFornecedoresFOR_IE: TStringField
      FieldName = 'FOR_IE'
      Origin = 'FOR_IE'
    end
    object QYFornecedoresFOR_NOME: TStringField
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      Required = True
      Size = 80
    end
    object QYFornecedoresFOR_NUMERO: TStringField
      FieldName = 'FOR_NUMERO'
      Origin = 'FOR_NUMERO'
      Size = 15
    end
    object QYFornecedoresFOR_RG: TStringField
      FieldName = 'FOR_RG'
      Origin = 'FOR_RG'
    end
  end
  object TRForos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 816
    Top = 200
  end
  object QYForos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRForos
    SQL.Strings = (
      'select FRS_CODIGO, FRS_NOME'
      'from FOROS'
      'where FRS_CODIGO=:codigo'
      '')
    Left = 816
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYForosFRS_CODIGO: TIntegerField
      FieldName = 'FRS_CODIGO'
      Origin = 'FRS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYForosFRS_NOME: TStringField
      FieldName = 'FRS_NOME'
      Origin = 'FRS_NOME'
      Size = 80
    end
  end
  object TRFrotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 880
    Top = 200
  end
  object QYFrotas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRFrotas
    SQL.Strings = (
      'select FRO_CODIGO,'
      'FRO_DESCRICAO,'
      'FRO_PLACA,'
      'FRO_RNTRC'
      'from FROTAS'
      'where FRO_CODIGO=:codigo'
      '')
    Left = 880
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYFrotasFRO_CODIGO: TIntegerField
      FieldName = 'FRO_CODIGO'
      Origin = 'FRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFrotasFRO_DESCRICAO: TStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = 'FRO_DESCRICAO'
      Size = 50
    end
    object QYFrotasFRO_PLACA: TStringField
      FieldName = 'FRO_PLACA'
      Origin = 'FRO_PLACA'
      Size = 10
    end
    object QYFrotasFRO_RNTRC: TStringField
      FieldName = 'FRO_RNTRC'
      Origin = 'FRO_RNTRC'
    end
  end
  object TRGrupos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 944
    Top = 200
  end
  object QYGrupos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRGrupos
    SQL.Strings = (
      'select GRU_CODIGO, GRU_DESCRICAO from GRUPOS'
      'where GRU_CODIGO=:codigo'
      '')
    Left = 944
    Top = 152
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = 'GRU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      Size = 50
    end
  end
  object TRIcms: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 312
  end
  object QYIcms: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIcms
    SQL.Strings = (
      'select ICM_CODIGO, ICM_DESCRICAO, ICM_CALCULACREDITOSN from ICMS'
      'where ICM_CODIGO=:codigo'
      '')
    Left = 48
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYIcmsICM_CODIGO: TIntegerField
      FieldName = 'ICM_CODIGO'
      Origin = 'ICM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYIcmsICM_DESCRICAO: TStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      Size = 120
    end
    object QYIcmsICM_CALCULACREDITOSN: TStringField
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      Size = 1
    end
  end
  object TRImoveis: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 112
    Top = 312
  end
  object QYImoveis: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRImoveis
    SQL.Strings = (
      'select * from IMOVEIS'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO'
      'where IMO_STATUS='#39'A'#39' and IMO_CODIGO=:codigo'
      '')
    Left = 112
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYImoveisIMO_AREALOCALIZACAO: TStringField
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = 'IMO_AREALOCALIZACAO'
      Size = 1
    end
    object QYImoveisIMO_BAIRRO: TStringField
      FieldName = 'IMO_BAIRRO'
      Origin = 'IMO_BAIRRO'
      Size = 50
    end
    object QYImoveisIMO_CEP: TStringField
      FieldName = 'IMO_CEP'
      Origin = 'IMO_CEP'
      Size = 10
    end
    object QYImoveisIMO_CIDADE: TStringField
      FieldName = 'IMO_CIDADE'
      Origin = 'IMO_CIDADE'
      Size = 50
    end
    object QYImoveisIMO_CIDADECODIGO: TIntegerField
      FieldName = 'IMO_CIDADECODIGO'
      Origin = 'IMO_CIDADECODIGO'
    end
    object QYImoveisIMO_CIDADECODIGODIMOB: TIntegerField
      FieldName = 'IMO_CIDADECODIGODIMOB'
      Origin = 'IMO_CIDADECODIGODIMOB'
    end
    object QYImoveisIMO_CLIENTE: TIntegerField
      FieldName = 'IMO_CLIENTE'
      Origin = 'IMO_CLIENTE'
      Required = True
    end
    object QYImoveisIMO_CODIGO: TIntegerField
      FieldName = 'IMO_CODIGO'
      Origin = 'IMO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYImoveisIMO_COMISSAO: TFMTBCDField
      FieldName = 'IMO_COMISSAO'
      Origin = 'IMO_COMISSAO'
      Precision = 18
    end
    object QYImoveisIMO_COMPLEMENTO: TStringField
      FieldName = 'IMO_COMPLEMENTO'
      Origin = 'IMO_COMPLEMENTO'
      Size = 80
    end
    object QYImoveisIMO_CONTRATO: TIntegerField
      FieldName = 'IMO_CONTRATO'
      Origin = 'IMO_CONTRATO'
    end
    object QYImoveisIMO_DESCQTDE: TIntegerField
      FieldName = 'IMO_DESCQTDE'
      Origin = 'IMO_DESCQTDE'
    end
    object QYImoveisIMO_DESCRICAO: TStringField
      FieldName = 'IMO_DESCRICAO'
      Origin = 'IMO_DESCRICAO'
      Size = 120
    end
    object QYImoveisIMO_DESCVALOR: TFMTBCDField
      FieldName = 'IMO_DESCVALOR'
      Origin = 'IMO_DESCVALOR'
      Precision = 18
    end
    object QYImoveisIMO_DIAPAGAMENTO: TIntegerField
      FieldName = 'IMO_DIAPAGAMENTO'
      Origin = 'IMO_DIAPAGAMENTO'
    end
    object QYImoveisIMO_DTATUALIZACAO: TDateField
      FieldName = 'IMO_DTATUALIZACAO'
      Origin = 'IMO_DTATUALIZACAO'
    end
    object QYImoveisIMO_DTCADASTRO: TDateField
      FieldName = 'IMO_DTCADASTRO'
      Origin = 'IMO_DTCADASTRO'
    end
    object QYImoveisIMO_ENDERECO: TStringField
      FieldName = 'IMO_ENDERECO'
      Origin = 'IMO_ENDERECO'
      Size = 100
    end
    object QYImoveisIMO_ESTADO: TStringField
      FieldName = 'IMO_ESTADO'
      Origin = 'IMO_ESTADO'
      Size = 2
    end
    object QYImoveisIMO_FINALIDADE: TStringField
      FieldName = 'IMO_FINALIDADE'
      Origin = 'IMO_FINALIDADE'
      Size = 1
    end
    object QYImoveisIMO_HRATUALIZACAO: TTimeField
      FieldName = 'IMO_HRATUALIZACAO'
      Origin = 'IMO_HRATUALIZACAO'
    end
    object QYImoveisIMO_HRCADASTRO: TTimeField
      FieldName = 'IMO_HRCADASTRO'
      Origin = 'IMO_HRCADASTRO'
    end
    object QYImoveisIMO_NUMERO: TStringField
      FieldName = 'IMO_NUMERO'
      Origin = 'IMO_NUMERO'
      Size = 15
    end
    object QYImoveisIMO_OBSERVACOES: TMemoField
      FieldName = 'IMO_OBSERVACOES'
      Origin = 'IMO_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYImoveisIMO_RESERVADO: TStringField
      FieldName = 'IMO_RESERVADO'
      Origin = 'IMO_RESERVADO'
      Size = 1
    end
    object QYImoveisIMO_STATUS: TStringField
      FieldName = 'IMO_STATUS'
      Origin = 'IMO_STATUS'
      Size = 1
    end
    object QYImoveisIMO_TIPOIMOVEL: TIntegerField
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = 'IMO_TIPOIMOVEL'
      Required = True
    end
    object QYImoveisIMO_TIPONEGOCIO: TStringField
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = 'IMO_TIPONEGOCIO'
      Size = 1
    end
    object QYImoveisIMO_TIPOPAGAMENTO: TStringField
      FieldName = 'IMO_TIPOPAGAMENTO'
      Origin = 'IMO_TIPOPAGAMENTO'
      Size = 1
    end
    object QYImoveisIMO_USUARIO: TStringField
      FieldName = 'IMO_USUARIO'
      Origin = 'IMO_USUARIO'
    end
    object QYImoveisIMO_VALORALUGUEL: TFMTBCDField
      FieldName = 'IMO_VALORALUGUEL'
      Origin = 'IMO_VALORALUGUEL'
      Precision = 18
    end
    object QYImoveisIMT_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_CODIGO'
      Origin = 'IMT_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisIMT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisIMT_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DTATUALIZACAO'
      Origin = 'IMT_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisIMT_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DTCADASTRO'
      Origin = 'IMT_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisIMT_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_HRATUALIZACAO'
      Origin = 'IMT_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisIMT_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_HRCADASTRO'
      Origin = 'IMT_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisIMT_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_STATUS'
      Origin = 'IMT_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisIMT_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_USUARIO'
      Origin = 'IMT_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_AFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_AFE'
      Origin = 'CLI_AFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ALVARA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ALVARA'
      Origin = 'CLI_ALVARA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ALVARASANITARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = 'CLI_ALVARASANITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ATIVIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLI_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ATUALIZAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ATUALIZAR'
      Origin = 'CLI_ATUALIZAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_BLOQUEARVENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYImoveisCLI_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = 'CLI_CLASSIFICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CNS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_CONDICAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CONJUGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGE'
      Origin = 'CLI_CONJUGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_CONJUGECPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGECPF'
      Origin = 'CLI_CONJUGECPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CONJUGEDTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGEDTNASC'
      Origin = 'CLI_CONJUGEDTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CONJUGERG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGERG'
      Origin = 'CLI_CONJUGERG'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_CONTRIBUINTEICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONTRIBUINTEICMS'
      Origin = 'CLI_CONTRIBUINTEICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QYImoveisCLI_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYImoveisCLI_DIACOBRANCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DIACOBRANCA'
      Origin = 'CLI_DIACOBRANCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = 'CLI_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTCADASTRO'
      Origin = 'CLI_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_DTOBITO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTOBITO'
      Origin = 'CLI_DTOBITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_EMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_ENQUADRAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENQUADRAMENTO'
      Origin = 'CLI_ENQUADRAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYImoveisCLI_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = 'CLI_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYImoveisCLI_ESTADOCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_FONE0800: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE0800'
      Origin = 'CLI_FONE0800'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_FONE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE3'
      Origin = 'CLI_FONE3'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_FRETE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_HRATUALIZACAO'
      Origin = 'CLI_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_HRCADASTRO'
      Origin = 'CLI_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_IDESTRANGEIRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_IM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_LIMITECREDITO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYImoveisCLI_LOCALESTUDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LOCALESTUDA'
      Origin = 'CLI_LOCALESTUDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_LOCALTRABALHO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = 'CLI_LOCALTRABALHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAE'
      Origin = 'CLI_MAE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_MAEEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAEEMAIL'
      Origin = 'CLI_MAEEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_MAEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAEFONE'
      Origin = 'CLI_MAEFONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_MAILING: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_MENSALISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MENSALISTA'
      Origin = 'CLI_MENSALISTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_MSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MSN'
      Origin = 'CLI_MSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_NATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NATURALIDADE'
      Origin = 'CLI_NATURALIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_NEXTEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NEXTEL'
      Origin = 'CLI_NEXTEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYImoveisCLI_OBITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_OBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_OBSERVACOES'
      Origin = 'CLI_OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QYImoveisCLI_ORIENTACAOCOBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = 'CLI_ORIENTACAOCOBRANCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAI'
      Origin = 'CLI_PAI'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_PAIEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIEMAIL'
      Origin = 'CLI_PAIEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_PAIFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIFONE'
      Origin = 'CLI_PAIFONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYImoveisCLI_PAISCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_PASSWORD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PASSWORD'
      Origin = 'CLI_PASSWORD'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QYImoveisCLI_PONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYImoveisCLI_PROFISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PROFISSAO'
      Origin = 'CLI_PROFISSAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYImoveisCLI_RECEBEAVISOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_RECEBEAVISOS'
      Origin = 'CLI_RECEBEAVISOS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = 'CLI_REGPROFISSIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_SAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_SETOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SETOR'
      Origin = 'CLI_SETOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_SEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SEXO'
      Origin = 'CLI_SEXO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYImoveisCLI_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_SUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_TABELAPRECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_TAXA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_TELEVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TELEVENDA'
      Origin = 'CLI_TELEVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_TIPOCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = 'CLI_TIPOCLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_TIPOCONSUMIDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QYImoveisCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYImoveisCLI_TRANSPORTADORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TRANSPORTADORA'
      Origin = 'CLI_TRANSPORTADORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_USUARIO'
      Origin = 'CLI_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYImoveisCLI_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TRImoveisTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 312
  end
  object QYImoveisTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRImoveisTipos
    SQL.Strings = (
      'select IMT_CODIGO, IMT_DESCRICAO from IMOVEISTIPOS'
      'where IMT_CODIGO=:codigo'
      '')
    Left = 176
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYImoveisTiposIMT_CODIGO: TIntegerField
      FieldName = 'IMT_CODIGO'
      Origin = 'IMT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYImoveisTiposIMT_DESCRICAO: TStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      Size = 50
    end
  end
  object TRIpi: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 240
    Top = 312
  end
  object QYIpi: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIpi
    SQL.Strings = (
      'select IPI_CODIGO, IPI_DESCRICAO from IPI'
      'where IPI_CODIGO=:codigo'
      '')
    Left = 240
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYIpiIPI_CODIGO: TIntegerField
      FieldName = 'IPI_CODIGO'
      Origin = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYIpiIPI_DESCRICAO: TStringField
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      Size = 120
    end
  end
  object TRIss: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 312
  end
  object QYIss: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIss
    SQL.Strings = (
      'select '
      'ISS_ALIQUOTAESTADUAL,'
      'ISS_ALIQUOTAIMPORTACAO,'
      'ISS_ALIQUOTAMUNICIPAL, '
      'ISS_ALIQUOTANACIONAL,'
      'ISS_CODIGO, '
      'ISS_DESCRICAO from ISS'
      'where ISS_CODIGO=:codigo'
      '')
    Left = 304
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
    object QYIssISS_ALIQUOTAESTADUAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAESTADUAL'
      Origin = 'ISS_ALIQUOTAESTADUAL'
      Precision = 18
    end
    object QYIssISS_ALIQUOTAIMPORTACAO: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAIMPORTACAO'
      Origin = 'ISS_ALIQUOTAIMPORTACAO'
      Precision = 18
    end
    object QYIssISS_ALIQUOTAMUNICIPAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAMUNICIPAL'
      Origin = 'ISS_ALIQUOTAMUNICIPAL'
      Precision = 18
    end
    object QYIssISS_ALIQUOTANACIONAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTANACIONAL'
      Origin = 'ISS_ALIQUOTANACIONAL'
      Precision = 18
    end
    object QYIssISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      Origin = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYIssISS_DESCRICAO: TStringField
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      Size = 1000
    end
  end
  object TRLocais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 368
    Top = 312
  end
  object QYLocais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRLocais
    SQL.Strings = (
      'select LCA_CODIGO, LCA_DESCRICAO from LOCAIS'
      'where LCA_CODIGO=:codigo'
      '')
    Left = 368
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYLocaisLCA_CODIGO: TIntegerField
      FieldName = 'LCA_CODIGO'
      Origin = 'LCA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYLocaisLCA_DESCRICAO: TStringField
      FieldName = 'LCA_DESCRICAO'
      Origin = 'LCA_DESCRICAO'
      Size = 50
    end
  end
  object TRMailings: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 496
    Top = 312
  end
  object QYMailings: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMailings
    SQL.Strings = (
      'select MAI_CODIGO, MAI_DESCRICAO from MAILINGS'
      'where MAI_CODIGO=:codigo'
      '')
    Left = 496
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMailingsMAI_CODIGO: TIntegerField
      FieldName = 'MAI_CODIGO'
      Origin = 'MAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMailingsMAI_DESCRICAO: TStringField
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      Size = 50
    end
  end
  object TRMarcas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 560
    Top = 312
  end
  object QYMarcas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMarcas
    SQL.Strings = (
      'select MAR_CODIGO, MAR_DESCRICAO from MARCAS'
      'where MAR_CODIGO=:codigo'
      '')
    Left = 560
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMarcasMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'MAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMarcasMAR_DESCRICAO: TStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      Size = 50
    end
  end
  object TRMedicamentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 312
  end
  object QYMedicamentos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMedicamentos
    SQL.Strings = (
      'select MTO_CODIGO, MTO_NOME from MEDICAMENTOS'
      'where MTO_CODIGO=:codigo'
      '')
    Left = 624
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMedicamentosMTO_CODIGO: TIntegerField
      FieldName = 'MTO_CODIGO'
      Origin = 'MTO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMedicamentosMTO_NOME: TStringField
      FieldName = 'MTO_NOME'
      Origin = 'MTO_NOME'
      Size = 80
    end
  end
  object TRMotivos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 688
    Top = 312
  end
  object QYMotivos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMotivos
    SQL.Strings = (
      'select MOT_CODIGO, MOT_DESCRICAO from MOTIVOS'
      'where MOT_CODIGO=:codigo'
      '')
    Left = 688
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMotivosMOT_CODIGO: TIntegerField
      FieldName = 'MOT_CODIGO'
      Origin = 'MOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYMotivosMOT_DESCRICAO: TStringField
      FieldName = 'MOT_DESCRICAO'
      Origin = 'MOT_DESCRICAO'
      Size = 120
    end
  end
  object TRNaturezas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 752
    Top = 312
  end
  object QYNaturezas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNaturezas
    SQL.Strings = (
      'select '
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'NAT_CODIGO, '
      'NAT_DESCRICAO, '
      'NAT_DESTACARIMPOSTOS,'
      'NAT_DEVOLUCAO,'
      'NAT_ENTRADASAIDA, '
      'NAT_OBSERVACOES,'
      'NAT_MOVIMENTAESTOQUE,'
      'NAT_MOVIMENTAFINANCEIRO'
      'from NATUREZAS where NAT_CODIGO=:codigo'
      '')
    Left = 752
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYNaturezasNAT_CALCULACOMISSAO: TStringField
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      Size = 1
    end
    object QYNaturezasNAT_CALCULACREDITOSN: TStringField
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      Size = 1
    end
    object QYNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Origin = 'NAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNaturezasNAT_DESCRICAO: TStringField
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      Size = 120
    end
    object QYNaturezasNAT_DESTACARIMPOSTOS: TStringField
      FieldName = 'NAT_DESTACARIMPOSTOS'
      Origin = 'NAT_DESTACARIMPOSTOS'
      Size = 1
    end
    object QYNaturezasNAT_DEVOLUCAO: TStringField
      FieldName = 'NAT_DEVOLUCAO'
      Origin = 'NAT_DEVOLUCAO'
      Size = 1
    end
    object QYNaturezasNAT_ENTRADASAIDA: TStringField
      FieldName = 'NAT_ENTRADASAIDA'
      Origin = 'NAT_ENTRADASAIDA'
      Size = 1
    end
    object QYNaturezasNAT_OBSERVACOES: TMemoField
      FieldName = 'NAT_OBSERVACOES'
      Origin = 'NAT_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYNaturezasNAT_MOVIMENTAESTOQUE: TStringField
      FieldName = 'NAT_MOVIMENTAESTOQUE'
      Origin = 'NAT_MOVIMENTAESTOQUE'
      Size = 1
    end
    object QYNaturezasNAT_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'NAT_MOVIMENTAFINANCEIRO'
      Origin = 'NAT_MOVIMENTAFINANCEIRO'
      Size = 1
    end
  end
  object TRObjetos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 880
    Top = 312
  end
  object QYObjetos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRObjetos
    SQL.Strings = (
      'select '
      'OBJ_CODIGO, '
      'OBJ_DESCRICAO, '
      'OBJ_SERIAL,'
      'OBJ_VALOR,'
      'OBJ_VALORLOCACAO'
      'from OBJETOS'
      'where OBJ_CODIGO=:codigo'
      '')
    Left = 880
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYObjetosOBJ_CODIGO: TIntegerField
      FieldName = 'OBJ_CODIGO'
      Origin = 'OBJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYObjetosOBJ_DESCRICAO: TStringField
      FieldName = 'OBJ_DESCRICAO'
      Origin = 'OBJ_DESCRICAO'
      Size = 50
    end
    object QYObjetosOBJ_SERIAL: TStringField
      FieldName = 'OBJ_SERIAL'
      Origin = 'OBJ_SERIAL'
      Size = 40
    end
    object QYObjetosOBJ_VALOR: TFMTBCDField
      FieldName = 'OBJ_VALOR'
      Origin = 'OBJ_VALOR'
      Precision = 18
    end
    object QYObjetosOBJ_VALORLOCACAO: TFMTBCDField
      FieldName = 'OBJ_VALORLOCACAO'
      Origin = 'OBJ_VALORLOCACAO'
      Precision = 18
    end
  end
  object TRPaises: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 944
    Top = 312
  end
  object QYPaises: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPaises
    SQL.Strings = (
      'select PAI_CODIGO, PAI_NOME, PAI_SIGLA from PAISES'
      'where PAI_CODIGO=:codigo'
      '')
    Left = 944
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYPaisesPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYPaisesPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      Size = 80
    end
    object QYPaisesPAI_SIGLA: TStringField
      FieldName = 'PAI_SIGLA'
      Origin = 'PAI_SIGLA'
      Size = 3
    end
  end
  object TRPiscofins: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 424
  end
  object QYPiscofins: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRPiscofins
    SQL.Strings = (
      'select PIS_CODIGO, PIS_DESCRICAO from PISCOFINS'
      'where PIS_CODIGO=:codigo'
      '')
    Left = 48
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYPiscofinsPIS_CODIGO: TIntegerField
      FieldName = 'PIS_CODIGO'
      Origin = 'PIS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYPiscofinsPIS_DESCRICAO: TStringField
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      Size = 120
    end
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 112
    Top = 424
  end
  object QYProdutos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProdutos
    SQL.Strings = (
      'select'
      'PRO_ALIQISS, '
      'PRO_CEST, '
      'PRO_CLASSFISCAL, '
      'PRO_CODIGO, '
      'PRO_CODIGOBARRAS, '
      'PRO_CODIGOFAB, '
      'PRO_COMPOSTO, '
      'PRO_ESTOQUEATUAL,'
      'PRO_LOCALIZACAO,'
      'PRO_NBS, '
      'PRO_NOME,'
      'PRO_PALAVRASCHAVE, '
      'PRO_PRECO1,'
      'PRO_PRECO2,'
      'PRO_PRECO3,'
      'PRO_PRECO4,'
      'PRO_PRECO5,'
      'PRO_PRECO6, '
      'PRO_PRECOCUSTO, '
      'PRO_PRECOVENDA, '
      'PRO_PRODUTOREAL, '
      'PRO_TIPOISS, '
      'PRO_TIPOITEM, '
      'PRO_UNIDADE,'
      'GRU_DESCRICAO, '
      'ISS_DESCRICAO,'
      'MAR_DESCRICAO,'
      'NBS_DESCRICAO '
      'from PRODUTOS'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join ISS on PRO_TIPOISS=ISS_CODIGO'
      'left join MARCAS on PRO_MARCA=MAR_CODIGO'
      'left join NBS on PRO_NBS=NBS_CODIGO'
      
        'where PRO_CODIGO=:codigo or PRO_CODIGOFAB like '#39'%'#39' || :codigo ||' +
        ' '#39'%'#39
      '')
    Left = 112
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYProdutosPRO_ALIQISS: TFMTBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = 'PRO_ALIQISS'
      Precision = 18
    end
    object QYProdutosPRO_CEST: TStringField
      FieldName = 'PRO_CEST'
      Origin = 'PRO_CEST'
    end
    object QYProdutosPRO_CLASSFISCAL: TStringField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRO_CLASSFISCAL'
    end
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_CODIGOBARRAS: TStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      Size = 60
    end
    object QYProdutosPRO_CODIGOFAB: TStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = 'PRO_CODIGOFAB'
    end
    object QYProdutosPRO_COMPOSTO: TStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = 'PRO_COMPOSTO'
      Size = 1
    end
    object QYProdutosPRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      Precision = 18
    end
    object QYProdutosPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = 'PRO_LOCALIZACAO'
    end
    object QYProdutosPRO_NBS: TStringField
      FieldName = 'PRO_NBS'
      Origin = 'PRO_NBS'
      Size = 15
    end
    object QYProdutosPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      Required = True
      Size = 100
    end
    object QYProdutosPRO_PALAVRASCHAVE: TStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = 'PRO_PALAVRASCHAVE'
      Size = 120
    end
    object QYProdutosPRO_PRECO1: TFMTBCDField
      FieldName = 'PRO_PRECO1'
      Origin = 'PRO_PRECO1'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO2: TFMTBCDField
      FieldName = 'PRO_PRECO2'
      Origin = 'PRO_PRECO2'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO3: TFMTBCDField
      FieldName = 'PRO_PRECO3'
      Origin = 'PRO_PRECO3'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO4: TFMTBCDField
      FieldName = 'PRO_PRECO4'
      Origin = 'PRO_PRECO4'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO5: TFMTBCDField
      FieldName = 'PRO_PRECO5'
      Origin = 'PRO_PRECO5'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECO6: TFMTBCDField
      FieldName = 'PRO_PRECO6'
      Origin = 'PRO_PRECO6'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = 'PRO_PRECOCUSTO'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      currency = True
      Precision = 18
    end
    object QYProdutosPRO_PRODUTOREAL: TIntegerField
      FieldName = 'PRO_PRODUTOREAL'
      Origin = 'PRO_PRODUTOREAL'
    end
    object QYProdutosPRO_TIPOISS: TStringField
      FieldName = 'PRO_TIPOISS'
      Origin = 'PRO_TIPOISS'
      Size = 15
    end
    object QYProdutosPRO_TIPOITEM: TStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = 'PRO_TIPOITEM'
      Size = 30
    end
    object QYProdutosPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      Size = 3
    end
    object QYProdutosGRU_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYProdutosISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
    object QYProdutosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYProdutosNBS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NBS_DESCRICAO'
      Origin = 'NBS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
  end
  object TRProjetosTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 176
    Top = 424
  end
  object QYProjetosTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRProjetosTipos
    SQL.Strings = (
      'select PJT_CODIGO, PJT_DESCRICAO from PROJETOSTIPOS'
      'where PJT_CODIGO=:codigo'
      '')
    Left = 176
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYProjetosTiposPJT_CODIGO: TIntegerField
      FieldName = 'PJT_CODIGO'
      Origin = 'PJT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProjetosTiposPJT_DESCRICAO: TStringField
      FieldName = 'PJT_DESCRICAO'
      Origin = 'PJT_DESCRICAO'
      Size = 50
    end
  end
  object TRReceitas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 240
    Top = 424
  end
  object QYReceitas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReceitas
    SQL.Strings = (
      'select REC_CODIGO, REC_DESCRICAO from RECEITAS'
      'where REC_CODIGO=:codigo'
      '')
    Left = 240
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYReceitasREC_CODIGO: TIntegerField
      FieldName = 'REC_CODIGO'
      Origin = 'REC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYReceitasREC_DESCRICAO: TStringField
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      Size = 50
    end
  end
  object TRRuas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 368
    Top = 424
  end
  object QYRuas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRRuas
    SQL.Strings = (
      'select '
      'RUA_NOME, '
      'RUA_ESTADO,'
      'RUA_CIDADE,'
      'RUA_BAIRRO,'
      'RUA_PAIS,'
      'ESD_SIGLA,'
      'CID_NOME,'
      'CID_DIMOB,'
      'BAI_NOME,'
      'PAI_NOME'
      'from RUAS'
      'left join ESTADOS on RUA_ESTADO=ESD_CODIGO'
      'left join CIDADES on RUA_CIDADE=CID_CODIGO'
      'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO'
      'left join PAISES on RUA_PAIS=PAI_CODIGO'
      'where RUA_CEP=:codigo'
      '')
    Left = 368
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object QYRuasRUA_NOME: TStringField
      FieldName = 'RUA_NOME'
      Origin = 'RUA_NOME'
      Size = 100
    end
    object QYRuasRUA_ESTADO: TIntegerField
      FieldName = 'RUA_ESTADO'
      Origin = 'RUA_ESTADO'
      Required = True
    end
    object QYRuasRUA_CIDADE: TIntegerField
      FieldName = 'RUA_CIDADE'
      Origin = 'RUA_CIDADE'
      Required = True
    end
    object QYRuasRUA_BAIRRO: TIntegerField
      FieldName = 'RUA_BAIRRO'
      Origin = 'RUA_BAIRRO'
      Required = True
    end
    object QYRuasRUA_PAIS: TIntegerField
      FieldName = 'RUA_PAIS'
      Origin = 'RUA_PAIS'
      Required = True
    end
    object QYRuasESD_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESD_SIGLA'
      Origin = 'ESD_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYRuasCID_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYRuasCID_DIMOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CID_DIMOB'
      Origin = 'CID_DIMOB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYRuasBAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAI_NOME'
      Origin = 'BAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYRuasPAI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRSegurosTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 432
    Top = 424
  end
  object QYSegurosTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRSegurosTipos
    SQL.Strings = (
      'select SGT_CODIGO, SGT_DESCRICAO from SEGUROSTIPOS'
      'where SGT_CODIGO=:codigo'
      '')
    Left = 432
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYSegurosTiposSGT_CODIGO: TIntegerField
      FieldName = 'SGT_CODIGO'
      Origin = 'SGT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYSegurosTiposSGT_DESCRICAO: TStringField
      FieldName = 'SGT_DESCRICAO'
      Origin = 'SGT_DESCRICAO'
      Size = 50
    end
  end
  object TRTaxas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 496
    Top = 424
  end
  object QYTaxas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTaxas
    SQL.Strings = (
      'select TAX_CODIGO, TAX_DESCRICAO, TAX_TIPO, TAX_VALOR from TAXAS'
      'where TAX_CODIGO=:codigo'
      '')
    Left = 496
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYTaxasTAX_CODIGO: TIntegerField
      FieldName = 'TAX_CODIGO'
      Origin = 'TAX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYTaxasTAX_DESCRICAO: TStringField
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      Size = 50
    end
    object QYTaxasTAX_TIPO: TStringField
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      Size = 1
    end
    object QYTaxasTAX_VALOR: TFMTBCDField
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      Precision = 18
    end
  end
  object TRTurmas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 560
    Top = 424
  end
  object QYTurmas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTurmas
    SQL.Strings = (
      'select TUR_CODIGO, TUR_DESCRICAO from TURMAS'
      'where TUR_STATUS='#39'A'#39' and TUR_CODIGO=:codigo'
      '')
    Left = 560
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYTurmasTUR_CODIGO: TIntegerField
      FieldName = 'TUR_CODIGO'
      Origin = 'TUR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYTurmasTUR_DESCRICAO: TStringField
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      Size = 50
    end
  end
  object TRUnidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 424
  end
  object QYUnidades: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRUnidades
    SQL.Strings = (
      'select UNI_CODIGO, UNI_DESCRICAO from UNIDADES'
      'where UNI_CODIGO=:codigo'
      '')
    Left = 624
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
    object QYUnidadesUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      Origin = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QYUnidadesUNI_DESCRICAO: TStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      Size = 50
    end
  end
  object TRVeiculos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 688
    Top = 424
  end
  object QYVeiculos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVeiculos
    SQL.Strings = (
      'select * from VEICULOS'
      'where VEL_CODIGO=:codigo and VEL_STATUS='#39'A'#39
      '')
    Left = 688
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYVeiculosVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = 'VEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVeiculosVEL_DESCRICAO: TStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      Size = 50
    end
    object QYVeiculosVEL_DTATUALIZACAO: TDateField
      FieldName = 'VEL_DTATUALIZACAO'
      Origin = 'VEL_DTATUALIZACAO'
    end
    object QYVeiculosVEL_DTCADASTRO: TDateField
      FieldName = 'VEL_DTCADASTRO'
      Origin = 'VEL_DTCADASTRO'
    end
    object QYVeiculosVEL_HRATUALIZACAO: TTimeField
      FieldName = 'VEL_HRATUALIZACAO'
      Origin = 'VEL_HRATUALIZACAO'
    end
    object QYVeiculosVEL_HRCADASTRO: TTimeField
      FieldName = 'VEL_HRCADASTRO'
      Origin = 'VEL_HRCADASTRO'
    end
    object QYVeiculosVEL_STATUS: TStringField
      FieldName = 'VEL_STATUS'
      Origin = 'VEL_STATUS'
      Size = 1
    end
    object QYVeiculosVEL_USUARIO: TStringField
      FieldName = 'VEL_USUARIO'
      Origin = 'VEL_USUARIO'
    end
  end
  object TRVendedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 752
    Top = 424
  end
  object QYVendedores: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendedores
    SQL.Strings = (
      'select '
      'VEN_CODIGO, '
      'VEN_NOME, '
      'VEN_COMISSAO,'
      'VEN_COMISSAOTIPO,'
      'VEN_SALARIOBASE'
      'from VENDEDORES'
      'where VEN_CODIGO=:codigo'
      '')
    Left = 752
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendedoresVEN_NOME: TStringField
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      Required = True
      Size = 80
    end
    object QYVendedoresVEN_COMISSAO: TFMTBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = 'VEN_COMISSAO'
      Precision = 18
    end
    object QYVendedoresVEN_COMISSAOTIPO: TStringField
      FieldName = 'VEN_COMISSAOTIPO'
      Origin = 'VEN_COMISSAOTIPO'
      Size = 15
    end
    object QYVendedoresVEN_SALARIOBASE: TFMTBCDField
      FieldName = 'VEN_SALARIOBASE'
      Origin = 'VEN_SALARIOBASE'
      Precision = 18
    end
  end
  object TRVendedoresHistTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 816
    Top = 424
  end
  object QYVendedoresHistTipos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendedoresHistTipos
    SQL.Strings = (
      'select VHT_CODIGO, VHT_DESCRICAO from VENDEDORESHISTTIPOS'
      'where VHT_CODIGO=:codigo'
      '')
    Left = 816
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYVendedoresHistTiposVHT_CODIGO: TIntegerField
      FieldName = 'VHT_CODIGO'
      Origin = 'VHT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendedoresHistTiposVHT_DESCRICAO: TStringField
      FieldName = 'VHT_DESCRICAO'
      Origin = 'VHT_DESCRICAO'
      Size = 50
    end
  end
  object TRClassTrib: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 752
    Top = 88
  end
  object QYClassTrib: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRClassTrib
    SQL.Strings = (
      'select'
      'CLT_ALIQCBSRED,'
      'CLT_ALIQIBSRED, '
      'CLT_CODIGO, '
      'CLT_CREDITOPRESUMIDO,'
      'CLT_DESCRICAO,'
      'CLT_MONODIFERIMENTO,'
      'CLT_MONOFASICO,'
      'CLT_MONORETENCAO,'
      'CLT_MONORETIDO,'
      'CLT_REDBASE,'
      'CLT_TRIBUTACAOREGULAR'
      'from CLASSTRIB'
      'where CLT_CODIGO=:codigo'
      '')
    Left = 752
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QYClassTribCLT_ALIQCBSRED: TFMTBCDField
      FieldName = 'CLT_ALIQCBSRED'
      Origin = 'CLT_ALIQCBSRED'
      Precision = 18
    end
    object QYClassTribCLT_ALIQIBSRED: TFMTBCDField
      FieldName = 'CLT_ALIQIBSRED'
      Origin = 'CLT_ALIQIBSRED'
      Precision = 18
    end
    object QYClassTribCLT_CODIGO: TStringField
      FieldName = 'CLT_CODIGO'
      Origin = 'CLT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYClassTribCLT_CREDITOPRESUMIDO: TStringField
      FieldName = 'CLT_CREDITOPRESUMIDO'
      Origin = 'CLT_CREDITOPRESUMIDO'
      Size = 1
    end
    object QYClassTribCLT_DESCRICAO: TStringField
      FieldName = 'CLT_DESCRICAO'
      Origin = 'CLT_DESCRICAO'
      Size = 300
    end
    object QYClassTribCLT_MONODIFERIMENTO: TStringField
      FieldName = 'CLT_MONODIFERIMENTO'
      Origin = 'CLT_MONODIFERIMENTO'
      Size = 1
    end
    object QYClassTribCLT_MONOFASICO: TStringField
      FieldName = 'CLT_MONOFASICO'
      Origin = 'CLT_MONOFASICO'
      Size = 1
    end
    object QYClassTribCLT_MONORETENCAO: TStringField
      FieldName = 'CLT_MONORETENCAO'
      Origin = 'CLT_MONORETENCAO'
      Size = 1
    end
    object QYClassTribCLT_MONORETIDO: TStringField
      FieldName = 'CLT_MONORETIDO'
      Origin = 'CLT_MONORETIDO'
      Size = 1
    end
    object QYClassTribCLT_REDBASE: TStringField
      FieldName = 'CLT_REDBASE'
      Origin = 'CLT_REDBASE'
      Size = 1
    end
    object QYClassTribCLT_TRIBUTACAOREGULAR: TStringField
      FieldName = 'CLT_TRIBUTACAOREGULAR'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      Size = 1
    end
  end
  object TRRegrasFiscais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 424
  end
  object QYRegrasFiscais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRRegrasFiscais
    SQL.Strings = (
      'select'
      'RGF_ALIQCBS, '
      'RGF_ALIQIBSMUN, '
      'RGF_ALIQIBSUF, '
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
      'IS_.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IS'
      'from REGRASFISCAIS'
      
        'left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_COD' +
        'IGO'
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO'
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO'
      'where RGF_CODIGO=:codigo'
      '')
    Left = 304
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYRegrasFiscaisRGF_ALIQCBS: TFMTBCDField
      FieldName = 'RGF_ALIQCBS'
      Origin = 'RGF_ALIQCBS'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_ALIQIBSMUN: TFMTBCDField
      FieldName = 'RGF_ALIQIBSMUN'
      Origin = 'RGF_ALIQIBSMUN'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_ALIQIBSUF: TFMTBCDField
      FieldName = 'RGF_ALIQIBSUF'
      Origin = 'RGF_ALIQIBSUF'
      Required = True
      Precision = 18
    end
    object QYRegrasFiscaisRGF_CLASSTRIBIBSCBS: TStringField
      FieldName = 'RGF_CLASSTRIBIBSCBS'
      Origin = 'RGF_CLASSTRIBIBSCBS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CLASSTRIBIS: TStringField
      FieldName = 'RGF_CLASSTRIBIS'
      Origin = 'RGF_CLASSTRIBIS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CODIGO: TIntegerField
      FieldName = 'RGF_CODIGO'
      Origin = 'RGF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYRegrasFiscaisRGF_CREDITOPRES: TIntegerField
      FieldName = 'RGF_CREDITOPRES'
      Origin = 'RGF_CREDITOPRES'
      Required = True
    end
    object QYRegrasFiscaisRGF_CSTIBSCBS: TStringField
      FieldName = 'RGF_CSTIBSCBS'
      Origin = 'RGF_CSTIBSCBS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_CSTIS: TStringField
      FieldName = 'RGF_CSTIS'
      Origin = 'RGF_CSTIS'
      Required = True
      Size = 15
    end
    object QYRegrasFiscaisRGF_DESCRICAO: TStringField
      FieldName = 'RGF_DESCRICAO'
      Origin = 'RGF_DESCRICAO'
      Required = True
      Size = 50
    end
    object QYRegrasFiscaisRGF_DTATUALIZACAO: TDateField
      FieldName = 'RGF_DTATUALIZACAO'
      Origin = 'RGF_DTATUALIZACAO'
    end
    object QYRegrasFiscaisRGF_DTCADASTRO: TDateField
      FieldName = 'RGF_DTCADASTRO'
      Origin = 'RGF_DTCADASTRO'
    end
    object QYRegrasFiscaisRGF_HRATUALIZACAO: TTimeField
      FieldName = 'RGF_HRATUALIZACAO'
      Origin = 'RGF_HRATUALIZACAO'
    end
    object QYRegrasFiscaisRGF_HRCADASTRO: TTimeField
      FieldName = 'RGF_HRCADASTRO'
      Origin = 'RGF_HRCADASTRO'
    end
    object QYRegrasFiscaisRGF_OBSERVACOES: TMemoField
      FieldName = 'RGF_OBSERVACOES'
      Origin = 'RGF_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYRegrasFiscaisRGF_USUARIO: TStringField
      FieldName = 'RGF_USUARIO'
      Origin = 'RGF_USUARIO'
    end
    object QYRegrasFiscaisCPR_APROPRIADFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_APROPRIAEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_CBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_DEDUZTOTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCPR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCPR_IBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_DESCRICAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IC'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCLT_ALIQCBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IC'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_ALIQIBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IC'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IC'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONODIFERIMENTO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IC'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONOFASICO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IC'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETENCAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IC'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IC'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_REDBASE_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IC'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IC'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_DESCRICAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IS'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object QYRegrasFiscaisCLT_ALIQCBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IS'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_ALIQIBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IS'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IS'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONODIFERIMENTO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IS'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONOFASICO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IS'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETENCAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IS'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_MONORETIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IS'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_REDBASE_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IS'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IS'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object TRCreditoPres: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 880
    Top = 88
  end
  object QYCreditoPres: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCreditoPres
    SQL.Strings = (
      'select '
      'CPR_APROPRIADFE,'
      'CPR_APROPRIAEVENTO,'
      'CPR_CBS,'
      'CPR_CODIGO,'
      'CPR_DEDUZTOTAL,'
      'CPR_DESCRICAO,'
      'CPR_IBS'
      'from CREDITOPRES'
      'where CPR_CODIGO=:codigo'
      '')
    Left = 880
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYCreditoPresCPR_APROPRIADFE: TStringField
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      Size = 1
    end
    object QYCreditoPresCPR_APROPRIAEVENTO: TStringField
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      Size = 1
    end
    object QYCreditoPresCPR_CBS: TStringField
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      Size = 1
    end
    object QYCreditoPresCPR_CODIGO: TIntegerField
      FieldName = 'CPR_CODIGO'
      Origin = 'CPR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCreditoPresCPR_DEDUZTOTAL: TStringField
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      Size = 1
    end
    object QYCreditoPresCPR_DESCRICAO: TStringField
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      Size = 300
    end
    object QYCreditoPresCPR_IBS: TStringField
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      Size = 1
    end
  end
  object TRNbs: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 816
    Top = 312
  end
  object QYNbs: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRNbs
    SQL.Strings = (
      'select '
      'NBS_CODIGO, '
      'NBS_DESCRICAO from NBS'
      'where NBS_CODIGO=:codigo'
      '')
    Left = 816
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object QYNbsNBS_CODIGO: TStringField
      FieldName = 'NBS_CODIGO'
      Origin = 'NBS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QYNbsNBS_DESCRICAO: TStringField
      FieldName = 'NBS_DESCRICAO'
      Origin = 'NBS_DESCRICAO'
      Size = 1000
    end
  end
  object QYZapInstancias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRZapInstancias
    SQL.Strings = (
      'select ZIN_CODIGO, ZIN_NOME from ZAPINSTANCIAS'
      'where ZIN_CODIGO=:codigo'
      '')
    Left = 944
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYZapInstanciasZIN_CODIGO: TIntegerField
      FieldName = 'ZIN_CODIGO'
      Origin = 'ZIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYZapInstanciasZIN_NOME: TStringField
      FieldName = 'ZIN_NOME'
      Origin = 'ZIN_NOME'
      Size = 80
    end
  end
  object TRZapInstancias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 944
    Top = 424
  end
  object TRLotes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 432
    Top = 312
  end
  object QYLotes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRLotes
    SQL.Strings = (
      'select LOT_CODIGO, LOT_LOTE from LOTES'
      'where LOT_CODIGO=:codigo'
      '')
    Left = 432
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QYLotesLOT_CODIGO: TIntegerField
      FieldName = 'LOT_CODIGO'
      Origin = 'LOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYLotesLOT_LOTE: TStringField
      FieldName = 'LOT_LOTE'
      Origin = 'LOT_LOTE'
    end
  end
end
