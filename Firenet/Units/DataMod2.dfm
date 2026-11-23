object DM2: TDM2
  OnCreate = DataModuleCreate
  Height = 550
  Width = 1216
  object DSClasses: TDataSource
    DataSet = TBClasses
    OnStateChange = DSClassesStateChange
    Left = 384
    Top = 120
  end
  object DSObjetos: TDataSource
    DataSet = TBObjetos
    OnStateChange = DSObjetosStateChange
    Left = 1056
    Top = 272
  end
  object DSFases: TDataSource
    DataSet = TBFases
    OnStateChange = DSFasesStateChange
    Left = 128
    Top = 272
  end
  object DSProjetosTipos: TDataSource
    DataSet = TBProjetosTipos
    OnStateChange = DSProjetosTiposStateChange
    Left = 352
    Top = 424
  end
  object DSProjetos: TDataSource
    DataSet = TBProjetos
    OnStateChange = DSProjetosStateChange
    Left = 224
    Top = 424
  end
  object DSProjetosItens: TDataSource
    DataSet = TBProjetosItens
    Left = 320
    Top = 424
  end
  object DSProjetosHistorico: TDataSource
    DataSet = TBProjetosHistorico
    OnStateChange = DSProjetosHistoricoStateChange
    Left = 288
    Top = 424
  end
  object DSProjetosFases: TDataSource
    DataSet = TBProjetosFases
    OnStateChange = DSProjetosFasesStateChange
    Left = 256
    Top = 424
  end
  object DSPromissorias: TDataSource
    DataSet = TBPromissorias
    OnStateChange = DSPromissoriasStateChange
    Left = 384
    Top = 424
  end
  object DSCheques: TDataSource
    DataSet = TBCheques
    OnStateChange = DSChequesStateChange
    Left = 352
    Top = 120
  end
  object DSBancos: TDataSource
    DataSet = TBBancos
    OnStateChange = DSBancosStateChange
    Left = 192
    Top = 120
  end
  object DSTeleVendas: TDataSource
    DataSet = TBTelevendas
    OnStateChange = DSTeleVendasStateChange
    OnDataChange = DSTeleVendasDataChange
    Left = 736
    Top = 424
  end
  object DSVeiculos: TDataSource
    DataSet = TBVeiculos
    OnStateChange = DSVeiculosStateChange
    Left = 832
    Top = 424
  end
  object DSOpcionais: TDataSource
    DataSet = TBOpcionais
    OnStateChange = DSOpcionaisStateChange
    Left = 32
    Top = 424
  end
  object DSClassificados: TDataSource
    DataSet = TBClassificados
    OnStateChange = DSClassificadosStateChange
    Left = 416
    Top = 120
  end
  object DSVeiculosVenda: TDataSource
    DataSet = TBVeiculosVenda
    OnStateChange = DSVeiculosVendaStateChange
    Left = 896
    Top = 424
  end
  object DSVeiculosCliente: TDataSource
    DataSet = TBVeiculosCliente
    OnStateChange = DSVeiculosClienteStateChange
    Left = 864
    Top = 424
  end
  object DSTurmas: TDataSource
    DataSet = TBTurmas
    OnStateChange = DSTurmasStateChange
    Left = 768
    Top = 424
  end
  object DSCalendarios: TDataSource
    DataSet = TBCalendarios
    Left = 288
    Top = 120
  end
  object DSMatriculas: TDataSource
    DataSet = TBMatriculas
    OnStateChange = DSMatriculasStateChange
    Left = 640
    Top = 272
  end
  object DSChamadas: TDataSource
    DataSet = TBChamadas
    Left = 320
    Top = 120
  end
  object DSConteudos: TDataSource
    DataSet = TBConteudos
    OnStateChange = DSConteudosStateChange
    Left = 608
    Top = 120
  end
  object DSExercicios: TDataSource
    DataSet = TBExercicios
    OnStateChange = DSExerciciosStateChange
    Left = 96
    Top = 272
  end
  object DSAvaliacoesTipo: TDataSource
    DataSet = TBAvaliacoesTipo
    OnStateChange = DSAvaliacoesTipoStateChange
    Left = 160
    Top = 120
  end
  object DSAvaliacoes: TDataSource
    DataSet = TBAvaliacoes
    OnStateChange = DSAvaliacoesStateChange
    Left = 128
    Top = 120
  end
  object DSRecibos: TDataSource
    DataSet = TBRecibos
    OnStateChange = DSRecibosStateChange
    Left = 480
    Top = 424
  end
  object DSPontos: TDataSource
    DataSet = TBPontos
    OnStateChange = DSPontosStateChange
    Left = 64
    Top = 424
  end
  object DSMotivos: TDataSource
    DataSet = TBMotivos
    OnStateChange = DSMotivosStateChange
    Left = 1024
    Top = 272
  end
  object DSLocais: TDataSource
    DataSet = TBLocais
    OnStateChange = DSLocaisStateChange
    Left = 512
    Top = 272
  end
  object DSFeriados: TDataSource
    DataSet = TBFeriados
    OnStateChange = DSFeriadosStateChange
    Left = 160
    Top = 272
  end
  object DSMarcas: TDataSource
    DataSet = TBMarcas
    OnStateChange = DSMarcasStateChange
    Left = 544
    Top = 272
  end
  object DSCte: TDataSource
    DataSet = TBCte
    OnStateChange = DSCteStateChange
    Left = 704
    Top = 120
  end
  object DSCteNotas: TDataSource
    DataSet = TBCteNotas
    Left = 928
    Top = 120
  end
  object DSFrotas: TDataSource
    DataSet = TBFrotas
    OnStateChange = DSFrotasStateChange
    Left = 288
    Top = 272
  end
  object DSCteCodigo: TDataSource
    DataSet = TBCteCodigo
    Left = 864
    Top = 120
  end
  object DSUnidades: TDataSource
    DataSet = TBUnidades
    OnStateChange = DSUnidadesStateChange
    Left = 800
    Top = 424
  end
  object DSBoletos: TDataSource
    DataSet = TBBoletos
    OnStateChange = DSBoletosStateChange
    Left = 224
    Top = 120
  end
  object DSBoletosItens: TDataSource
    DataSet = TBBoletosItens
    Left = 256
    Top = 120
  end
  object DSRemessas: TDataSource
    DataSet = TBRemessas
    Left = 512
    Top = 424
  end
  object DSRemessasItens: TDataSource
    DataSet = TBRemessasItens
    Left = 544
    Top = 424
  end
  object DSSqls: TDataSource
    DataSet = TBSqls
    Left = 704
    Top = 424
  end
  object DSImoveisTipos: TDataSource
    DataSet = TBImoveisTipos
    OnStateChange = DSImoveisTiposStateChange
    Left = 448
    Top = 272
  end
  object DSImoveis: TDataSource
    DataSet = TBImoveis
    OnStateChange = DSImoveisStateChange
    Left = 416
    Top = 272
  end
  object DSComandas: TDataSource
    DataSet = TBComandas
    OnStateChange = DSComandasStateChange
    Left = 448
    Top = 120
  end
  object DSComandasItens: TDataSource
    DataSet = TBComandasItens
    Left = 480
    Top = 120
  end
  object DSContratos: TDataSource
    DataSet = TBContratos
    OnStateChange = DSContratosStateChange
    Left = 640
    Top = 120
  end
  object DSCteCarga: TDataSource
    DataSet = TBCteCarga
    Left = 768
    Top = 120
  end
  object DSAtendimentos: TDataSource
    DataSet = TBAtendimentos
    OnStateChange = DSAtendimentosStateChange
    OnDataChange = DSAtendimentosDataChange
    Left = 96
    Top = 120
  end
  object DSCursos: TDataSource
    DataSet = TBCursos
    OnStateChange = DSCursosStateChange
    Left = 992
    Top = 120
  end
  object DSAssuntos: TDataSource
    DataSet = TBAssuntos
    OnStateChange = DSAssuntosStateChange
    OnDataChange = DSAssuntosDataChange
    Left = 64
    Top = 120
  end
  object DSEmailsContas: TDataSource
    DataSet = TBEmailsContas
    OnStateChange = DSEmailsContasStateChange
    Left = 1120
    Top = 120
  end
  object DSEmails: TDataSource
    DataSet = TBEmails
    OnStateChange = DSEmailsStateChange
    OnDataChange = DSEmailsDataChange
    Left = 1088
    Top = 120
  end
  object DSContratosPartes: TDataSource
    DataSet = TBContratosPartes
    Left = 672
    Top = 120
  end
  object DSCteInutilizados: TDataSource
    DataSet = TBCteInutilizados
    OnStateChange = DSCteInutilizadosStateChange
    Left = 896
    Top = 120
  end
  object DSForos: TDataSource
    DataSet = TBForos
    OnStateChange = DSForosStateChange
    Left = 256
    Top = 272
  end
  object DSAcoes: TDataSource
    DataSet = TBAcoes
    OnStateChange = DSAcoesStateChange
    Left = 32
    Top = 120
  end
  object DSProcessos: TDataSource
    DataSet = TBProcessos
    OnStateChange = DSProcessosStateChange
    Left = 96
    Top = 424
  end
  object DSProcessosPartes: TDataSource
    DataSet = TBProcessosPartes
    OnStateChange = DSProcessosPartesStateChange
    Left = 192
    Top = 424
  end
  object DSProcessosCustas: TDataSource
    DataSet = TBProcessosCustas
    OnStateChange = DSProcessosCustasStateChange
    Left = 128
    Top = 424
  end
  object DSProcessosHistorico: TDataSource
    DataSet = TBProcessosHistorico
    OnStateChange = DSProcessosHistoricoStateChange
    Left = 160
    Top = 424
  end
  object DSMensagens: TDataSource
    DataSet = TBMensagens
    Left = 928
    Top = 272
  end
  object DSContatos: TDataSource
    DataSet = TBContatos
    Left = 576
    Top = 120
  end
  object DSCteVeiculos: TDataSource
    DataSet = TBCteVeiculos
    Left = 960
    Top = 120
  end
  object DSMdfe: TDataSource
    DataSet = TBMdfe
    OnStateChange = DSMdfeStateChange
    Left = 672
    Top = 272
  end
  object DSMdfeCarrega: TDataSource
    DataSet = TBMdfeCarrega
    Left = 704
    Top = 272
  end
  object DSMdfeMotoristas: TDataSource
    DataSet = TBMdfeMotoristas
    Left = 800
    Top = 272
  end
  object DSMdfePercursos: TDataSource
    DataSet = TBMdfePercursos
    Left = 832
    Top = 272
  end
  object DSMdfeDocs: TDataSource
    DataSet = TBMdfeDocs
    Left = 768
    Top = 272
  end
  object DSMdfeDescarrega: TDataSource
    DataSet = TBMdfeDescarrega
    Left = 736
    Top = 272
  end
  object DSGnre: TDataSource
    DataSet = TBGnre
    OnStateChange = DSGnreStateChange
    Left = 320
    Top = 272
  end
  object DSForms: TDataSource
    DataSet = TBForms
    Left = 224
    Top = 272
  end
  object DSCteCampos: TDataSource
    DataSet = TBCteCampos
    OnStateChange = DSCteCamposStateChange
    Left = 736
    Top = 120
  end
  object DSCteCCe: TDataSource
    DataSet = TBCtecce
    OnStateChange = DSCteCCeStateChange
    Left = 800
    Top = 120
  end
  object DSCteCCeItens: TDataSource
    DataSet = TBCtecceItens
    Left = 832
    Top = 120
  end
  object DSMarkups: TDataSource
    DataSet = TBMarkups
    OnStateChange = DSMarkupsStateChange
    Left = 576
    Top = 272
  end
  object DSMarkupsItens: TDataSource
    DataSet = TBMarkupsItens
    Left = 608
    Top = 272
  end
  object DSLocacoes: TDataSource
    DataSet = TBLocacoes
    OnStateChange = DSLocacoesStateChange
    OnDataChange = DSLocacoesDataChange
    Left = 480
    Top = 272
  end
  object DSMedicoes: TDataSource
    DataSet = TBMedicoes
    OnStateChange = DSMedicoesStateChange
    Left = 896
    Top = 272
  end
  object DSEvolucoes: TDataSource
    DataSet = TBEvolucoes
    OnStateChange = DSEvolucoesStateChange
    Left = 32
    Top = 272
  end
  object DSMedicamentos: TDataSource
    DataSet = TBMedicamentos
    OnStateChange = DSMedicamentosStateChange
    Left = 864
    Top = 272
  end
  object DSReceituarios: TDataSource
    DataSet = TBReceituarios
    OnStateChange = DSReceituariosStateChange
    Left = 448
    Top = 424
  end
  object DSMensalidades: TDataSource
    DataSet = TBMensalidades
    OnStateChange = DSMensalidadesStateChange
    Left = 992
    Top = 272
  end
  object DSProntuarios: TDataSource
    DataSet = TBProntuarios
    OnStateChange = DSProntuariosStateChange
    Left = 416
    Top = 424
  end
  object DSExamesTipos: TDataSource
    DataSet = TBExamesTipos
    OnStateChange = DSExamesTiposStateChange
    Left = 64
    Top = 272
  end
  object DSConsultas: TDataSource
    DataSet = TBConsultas
    OnStateChange = DSConsultasStateChange
    OnDataChange = DSConsultasDataChange
    Left = 512
    Top = 120
  end
  object DSConsultasItens: TDataSource
    DataSet = TBConsultasItens
    Left = 544
    Top = 120
  end
  object DSDeliverys: TDataSource
    DataSet = TBDeliverys
    OnStateChange = DSDeliverysStateChange
    Left = 1024
    Top = 120
  end
  object DSDeliverysItens: TDataSource
    DataSet = TBDeliverysItens
    Left = 1056
    Top = 120
  end
  object DSSegurosTipos: TDataSource
    DataSet = TBSegurosTipos
    OnStateChange = DSSegurosTiposStateChange
    Left = 672
    Top = 424
  end
  object DSSeguros: TDataSource
    DataSet = TBSeguros
    OnStateChange = DSSegurosStateChange
    Left = 576
    Top = 424
  end
  object DSSegurosParcelas: TDataSource
    DataSet = TBSegurosParcelas
    Left = 640
    Top = 424
  end
  object DSSegurosEndossos: TDataSource
    DataSet = TBSegurosEndossos
    Left = 608
    Top = 424
  end
  object DSOdontogramas: TDataSource
    DataSet = TBOdontogramas
    OnStateChange = DSOdontogramasStateChange
    OnDataChange = DSOdontogramasDataChange
    Left = 1088
    Top = 272
  end
  object DSOdontogramasOpcoes: TDataSource
    DataSet = TBOdontogramasOpcoes
    OnStateChange = DSOdontogramasOpcoesStateChange
    OnDataChange = DSOdontogramasOpcoesDataChange
    Left = 1120
    Top = 272
  end
  object TRVeiculosVenda: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 896
    Top = 392
  end
  object UPVeiculosVenda: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VEICULOSVENDA'
      '(VEV_ANOFAB, VEV_ANOMOD, VEV_CATEGORIA, VEV_CLIENTE, '
      '  VEV_CODIGO, VEV_COMBUSTIVEL, VEV_CONDICOES, '
      '  VEV_COR, VEV_DESPESAS, VEV_DTATUALIZACAO, '
      '  VEV_DTCADASTRO, VEV_DTENTRADA, VEV_DTVENDA, '
      '  VEV_EXPROPRIETARIO, VEV_HRATUALIZACAO, VEV_HRCADASTRO, '
      '  VEV_KM, VEV_MESA, VEV_OPCIONAIS, VEV_PLACA, '
      '  VEV_RENAVAN, VEV_STATUS, VEV_TIPO, VEV_USUARIO, '
      '  VEV_VALORCOMPRA, VEV_VALORSUGERIDO, VEV_VALORVENDA, '
      '  VEV_VALORVENDIDO, VEV_VEICULO, VEV_VENDEDOR)'
      
        'VALUES (:NEW_VEV_ANOFAB, :NEW_VEV_ANOMOD, :NEW_VEV_CATEGORIA, :N' +
        'EW_VEV_CLIENTE, '
      
        '  gen_id(GEN_VEICULOSVENDA,1), :NEW_VEV_COMBUSTIVEL, :NEW_VEV_CO' +
        'NDICOES, '
      '  :NEW_VEV_COR, :NEW_VEV_DESPESAS, :NEW_VEV_DTATUALIZACAO, '
      '  :NEW_VEV_DTCADASTRO, :NEW_VEV_DTENTRADA, :NEW_VEV_DTVENDA, '
      
        '  :NEW_VEV_EXPROPRIETARIO, :NEW_VEV_HRATUALIZACAO, :NEW_VEV_HRCA' +
        'DASTRO, '
      
        '  :NEW_VEV_KM, :NEW_VEV_MESA, :NEW_VEV_OPCIONAIS, :NEW_VEV_PLACA' +
        ', '
      
        '  :NEW_VEV_RENAVAN, :NEW_VEV_STATUS, :NEW_VEV_TIPO, :NEW_VEV_USU' +
        'ARIO, '
      
        '  :NEW_VEV_VALORCOMPRA, :NEW_VEV_VALORSUGERIDO, :NEW_VEV_VALORVE' +
        'NDA, '
      '  :NEW_VEV_VALORVENDIDO, :NEW_VEV_VEICULO, :NEW_VEV_VENDEDOR)'
      
        'RETURNING VEV_ANOFAB, VEV_ANOMOD, VEV_CATEGORIA, VEV_CLIENTE, VE' +
        'V_CODIGO, VEV_COMBUSTIVEL, VEV_CONDICOES, VEV_COR, VEV_DESPESAS,' +
        ' VEV_DTATUALIZACAO, VEV_DTCADASTRO, VEV_DTENTRADA, VEV_DTVENDA, ' +
        'VEV_EXPROPRIETARIO, VEV_HRATUALIZACAO, VEV_HRCADASTRO, VEV_KM, V' +
        'EV_MESA, VEV_OPCIONAIS, VEV_PLACA, VEV_RENAVAN, VEV_STATUS, VEV_' +
        'TIPO, VEV_USUARIO, VEV_VALORCOMPRA, VEV_VALORSUGERIDO, VEV_VALOR' +
        'VENDA, VEV_VALORVENDIDO, VEV_VEICULO, VEV_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE VEICULOSVENDA'
      'SET VEV_ANOFAB = :NEW_VEV_ANOFAB, VEV_ANOMOD = :NEW_VEV_ANOMOD, '
      
        '  VEV_CATEGORIA = :NEW_VEV_CATEGORIA, VEV_CLIENTE = :NEW_VEV_CLI' +
        'ENTE, '
      
        '  VEV_CODIGO = :NEW_VEV_CODIGO, VEV_COMBUSTIVEL = :NEW_VEV_COMBU' +
        'STIVEL, '
      '  VEV_CONDICOES = :NEW_VEV_CONDICOES, VEV_COR = :NEW_VEV_COR, '
      
        '  VEV_DESPESAS = :NEW_VEV_DESPESAS, VEV_DTATUALIZACAO = :NEW_VEV' +
        '_DTATUALIZACAO, '
      
        '  VEV_DTCADASTRO = :NEW_VEV_DTCADASTRO, VEV_DTENTRADA = :NEW_VEV' +
        '_DTENTRADA, '
      
        '  VEV_DTVENDA = :NEW_VEV_DTVENDA, VEV_EXPROPRIETARIO = :NEW_VEV_' +
        'EXPROPRIETARIO, '
      
        '  VEV_HRATUALIZACAO = :NEW_VEV_HRATUALIZACAO, VEV_HRCADASTRO = :' +
        'NEW_VEV_HRCADASTRO, '
      
        '  VEV_KM = :NEW_VEV_KM, VEV_MESA = :NEW_VEV_MESA, VEV_OPCIONAIS ' +
        '= :NEW_VEV_OPCIONAIS, '
      '  VEV_PLACA = :NEW_VEV_PLACA, VEV_RENAVAN = :NEW_VEV_RENAVAN, '
      '  VEV_STATUS = :NEW_VEV_STATUS, VEV_TIPO = :NEW_VEV_TIPO, '
      
        '  VEV_USUARIO = :NEW_VEV_USUARIO, VEV_VALORCOMPRA = :NEW_VEV_VAL' +
        'ORCOMPRA, '
      
        '  VEV_VALORSUGERIDO = :NEW_VEV_VALORSUGERIDO, VEV_VALORVENDA = :' +
        'NEW_VEV_VALORVENDA, '
      
        '  VEV_VALORVENDIDO = :NEW_VEV_VALORVENDIDO, VEV_VEICULO = :NEW_V' +
        'EV_VEICULO, '
      '  VEV_VENDEDOR = :NEW_VEV_VENDEDOR'
      'WHERE VEV_CODIGO = :OLD_VEV_CODIGO'
      
        'RETURNING VEV_ANOFAB, VEV_ANOMOD, VEV_CATEGORIA, VEV_CLIENTE, VE' +
        'V_CODIGO, VEV_COMBUSTIVEL, VEV_CONDICOES, VEV_COR, VEV_DESPESAS,' +
        ' VEV_DTATUALIZACAO, VEV_DTCADASTRO, VEV_DTENTRADA, VEV_DTVENDA, ' +
        'VEV_EXPROPRIETARIO, VEV_HRATUALIZACAO, VEV_HRCADASTRO, VEV_KM, V' +
        'EV_MESA, VEV_OPCIONAIS, VEV_PLACA, VEV_RENAVAN, VEV_STATUS, VEV_' +
        'TIPO, VEV_USUARIO, VEV_VALORCOMPRA, VEV_VALORSUGERIDO, VEV_VALOR' +
        'VENDA, VEV_VALORVENDIDO, VEV_VEICULO, VEV_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM VEICULOSVENDA'
      'WHERE VEV_CODIGO = :OLD_VEV_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEV_ANOFAB, VEV_ANOMOD, VEV_CATEGORIA, VEV_CLIENTE, VEV_C' +
        'ODIGO, '
      
        '  VEV_COMBUSTIVEL, VEV_CONDICOES, VEV_COR, VEV_DESPESAS, VEV_DTA' +
        'TUALIZACAO, '
      
        '  VEV_DTCADASTRO, VEV_DTENTRADA, VEV_DTVENDA, VEV_EXPROPRIETARIO' +
        ', '
      
        '  VEV_HRATUALIZACAO, VEV_HRCADASTRO, VEV_KM, VEV_MESA, VEV_OPCIO' +
        'NAIS, '
      '  VEV_PLACA, VEV_RENAVAN, VEV_STATUS, VEV_TIPO, VEV_USUARIO, '
      
        '  VEV_VALORCOMPRA, VEV_VALORSUGERIDO, VEV_VALORVENDA, VEV_VALORV' +
        'ENDIDO, '
      '  VEV_VEICULO, VEV_VENDEDOR'
      'FROM VEICULOSVENDA'
      'WHERE VEV_CODIGO = :OLD_VEV_CODIGO')
    Left = 896
    Top = 360
  end
  object TBVeiculosVenda: TFDQuery
    BeforeInsert = TBVeiculosVendaBeforeInsert
    AfterInsert = TBVeiculosVendaAfterInsert
    BeforeEdit = TBVeiculosVendaBeforeEdit
    AfterEdit = TBVeiculosVendaAfterEdit
    BeforePost = TBVeiculosVendaBeforePost
    Connection = DM.FDConnection1
    Transaction = TRVeiculosVenda
    UpdateObject = UPVeiculosVenda
    SQL.Strings = (
      'select'
      'VEV_ANOFAB,'
      'VEV_ANOMOD,'
      'VEV_CATEGORIA,'
      'VEV_CLIENTE,'
      'VEV_CODIGO,'
      'VEV_COMBUSTIVEL,'
      'VEV_CONDICOES,'
      'VEV_COR,'
      'VEV_DESPESAS,'
      'VEV_DTATUALIZACAO,'
      'VEV_DTCADASTRO,'
      'VEV_DTENTRADA,'
      'VEV_DTVENDA,'
      'VEV_EXPROPRIETARIO,'
      'VEV_HRATUALIZACAO,'
      'VEV_HRCADASTRO,'
      'VEV_KM,'
      'VEV_MESA,'
      'VEV_OPCIONAIS,'
      'VEV_PLACA,'
      'VEV_RENAVAN,'
      'VEV_STATUS,'
      'VEV_TIPO,'
      'VEV_USUARIO,'
      'VEV_VALORCOMPRA,'
      'VEV_VALORSUGERIDO,'
      'VEV_VALORVENDA,'
      'VEV_VALORVENDIDO,'
      'VEV_VEICULO,'
      'VEV_VENDEDOR,'
      'CLI_NOME,'
      'VEL_CODIGO,'
      'VEL_DESCRICAO,'
      'VEN_NOME'
      'from VEICULOSVENDA'
      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO'
      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO'
      'where VEV_CODIGO=:codigo'
      '')
    Left = 896
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBVeiculosVendaVEV_ANOFAB: TStringField
      FieldName = 'VEV_ANOFAB'
      Origin = 'VEV_ANOFAB'
      EditMask = '!99/99/9999;1;_'
      Size = 4
    end
    object TBVeiculosVendaVEV_ANOMOD: TStringField
      FieldName = 'VEV_ANOMOD'
      Origin = 'VEV_ANOMOD'
      EditMask = '!99/99/9999;1;_'
      Size = 4
    end
    object TBVeiculosVendaVEV_CATEGORIA: TStringField
      FieldName = 'VEV_CATEGORIA'
      Origin = 'VEV_CATEGORIA'
      Size = 1
    end
    object TBVeiculosVendaVEV_CLIENTE: TIntegerField
      FieldName = 'VEV_CLIENTE'
      Origin = 'VEV_CLIENTE'
    end
    object TBVeiculosVendaVEV_CODIGO: TIntegerField
      FieldName = 'VEV_CODIGO'
      Origin = 'VEV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVeiculosVendaVEV_COMBUSTIVEL: TStringField
      FieldName = 'VEV_COMBUSTIVEL'
      Origin = 'VEV_COMBUSTIVEL'
      Size = 30
    end
    object TBVeiculosVendaVEV_CONDICOES: TMemoField
      FieldName = 'VEV_CONDICOES'
      Origin = 'VEV_CONDICOES'
      BlobType = ftMemo
    end
    object TBVeiculosVendaVEV_COR: TStringField
      FieldName = 'VEV_COR'
      Origin = 'VEV_COR'
    end
    object TBVeiculosVendaVEV_DESPESAS: TFMTBCDField
      FieldName = 'VEV_DESPESAS'
      Origin = 'VEV_DESPESAS'
      Precision = 18
    end
    object TBVeiculosVendaVEV_DTATUALIZACAO: TDateField
      FieldName = 'VEV_DTATUALIZACAO'
      Origin = 'VEV_DTATUALIZACAO'
    end
    object TBVeiculosVendaVEV_DTCADASTRO: TDateField
      FieldName = 'VEV_DTCADASTRO'
      Origin = 'VEV_DTCADASTRO'
    end
    object TBVeiculosVendaVEV_DTENTRADA: TDateField
      FieldName = 'VEV_DTENTRADA'
      Origin = 'VEV_DTENTRADA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_DTVENDA: TDateField
      FieldName = 'VEV_DTVENDA'
      Origin = 'VEV_DTVENDA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosVendaVEV_EXPROPRIETARIO: TStringField
      FieldName = 'VEV_EXPROPRIETARIO'
      Origin = 'VEV_EXPROPRIETARIO'
      Size = 80
    end
    object TBVeiculosVendaVEV_HRATUALIZACAO: TTimeField
      FieldName = 'VEV_HRATUALIZACAO'
      Origin = 'VEV_HRATUALIZACAO'
    end
    object TBVeiculosVendaVEV_HRCADASTRO: TTimeField
      FieldName = 'VEV_HRCADASTRO'
      Origin = 'VEV_HRCADASTRO'
    end
    object TBVeiculosVendaVEV_KM: TIntegerField
      FieldName = 'VEV_KM'
      Origin = 'VEV_KM'
    end
    object TBVeiculosVendaVEV_MESA: TStringField
      FieldName = 'VEV_MESA'
      Origin = 'VEV_MESA'
    end
    object TBVeiculosVendaVEV_OPCIONAIS: TMemoField
      FieldName = 'VEV_OPCIONAIS'
      Origin = 'VEV_OPCIONAIS'
      BlobType = ftMemo
    end
    object TBVeiculosVendaVEV_PLACA: TStringField
      FieldName = 'VEV_PLACA'
      Origin = 'VEV_PLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBVeiculosVendaVEV_RENAVAN: TStringField
      FieldName = 'VEV_RENAVAN'
      Origin = 'VEV_RENAVAN'
    end
    object TBVeiculosVendaVEV_STATUS: TStringField
      FieldName = 'VEV_STATUS'
      Origin = 'VEV_STATUS'
      Size = 1
    end
    object TBVeiculosVendaVEV_TIPO: TStringField
      FieldName = 'VEV_TIPO'
      Origin = 'VEV_TIPO'
      Size = 1
    end
    object TBVeiculosVendaVEV_USUARIO: TStringField
      FieldName = 'VEV_USUARIO'
      Origin = 'VEV_USUARIO'
    end
    object TBVeiculosVendaVEV_VALORCOMPRA: TFMTBCDField
      FieldName = 'VEV_VALORCOMPRA'
      Origin = 'VEV_VALORCOMPRA'
      currency = True
      Precision = 18
    end
    object TBVeiculosVendaVEV_VALORSUGERIDO: TFMTBCDField
      FieldName = 'VEV_VALORSUGERIDO'
      Origin = 'VEV_VALORSUGERIDO'
      currency = True
      Precision = 18
    end
    object TBVeiculosVendaVEV_VALORVENDA: TFMTBCDField
      FieldName = 'VEV_VALORVENDA'
      Origin = 'VEV_VALORVENDA'
      currency = True
      Precision = 18
    end
    object TBVeiculosVendaVEV_VALORVENDIDO: TFMTBCDField
      FieldName = 'VEV_VALORVENDIDO'
      Origin = 'VEV_VALORVENDIDO'
      currency = True
      Precision = 18
    end
    object TBVeiculosVendaVEV_VEICULO: TIntegerField
      FieldName = 'VEV_VEICULO'
      Origin = 'VEV_VEICULO'
      Required = True
    end
    object TBVeiculosVendaVEV_VENDEDOR: TIntegerField
      FieldName = 'VEV_VENDEDOR'
      Origin = 'VEV_VENDEDOR'
    end
    object TBVeiculosVendaCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBVeiculosVendaVEL_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_CODIGO'
      Origin = 'VEL_CODIGO'
      ProviderFlags = []
    end
    object TBVeiculosVendaVEL_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBVeiculosVendaVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRAcoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 88
  end
  object UPAcoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ACOES'
      '(ACO_CODIGO, ACO_DESCRICAO, ACO_DTATUALIZACAO, '
      '  ACO_DTCADASTRO, ACO_HRATUALIZACAO, ACO_HRCADASTRO, '
      '  ACO_STATUS, ACO_USUARIO)'
      
        'VALUES (gen_id(GEN_ACOES,1), :NEW_ACO_DESCRICAO, :NEW_ACO_DTATUA' +
        'LIZACAO, '
      
        '  :NEW_ACO_DTCADASTRO, :NEW_ACO_HRATUALIZACAO, :NEW_ACO_HRCADAST' +
        'RO, '
      '  :NEW_ACO_STATUS, :NEW_ACO_USUARIO)'
      
        'RETURNING ACO_CODIGO, ACO_DESCRICAO, ACO_DTATUALIZACAO, ACO_DTCA' +
        'DASTRO, ACO_HRATUALIZACAO, ACO_HRCADASTRO, ACO_STATUS, ACO_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE ACOES'
      
        'SET ACO_CODIGO = :NEW_ACO_CODIGO, ACO_DESCRICAO = :NEW_ACO_DESCR' +
        'ICAO, '
      
        '  ACO_DTATUALIZACAO = :NEW_ACO_DTATUALIZACAO, ACO_DTCADASTRO = :' +
        'NEW_ACO_DTCADASTRO, '
      
        '  ACO_HRATUALIZACAO = :NEW_ACO_HRATUALIZACAO, ACO_HRCADASTRO = :' +
        'NEW_ACO_HRCADASTRO, '
      '  ACO_STATUS = :NEW_ACO_STATUS, ACO_USUARIO = :NEW_ACO_USUARIO'
      'WHERE ACO_CODIGO = :OLD_ACO_CODIGO'
      
        'RETURNING ACO_CODIGO, ACO_DESCRICAO, ACO_DTATUALIZACAO, ACO_DTCA' +
        'DASTRO, ACO_HRATUALIZACAO, ACO_HRCADASTRO, ACO_STATUS, ACO_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM ACOES'
      'WHERE ACO_CODIGO = :OLD_ACO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ACO_CODIGO, ACO_DESCRICAO, ACO_DTATUALIZACAO, ACO_DTCADAS' +
        'TRO, '
      '  ACO_HRATUALIZACAO, ACO_HRCADASTRO, ACO_STATUS, ACO_USUARIO'
      'FROM ACOES'
      'WHERE ACO_CODIGO = :OLD_ACO_CODIGO')
    Left = 32
    Top = 56
  end
  object TBAcoes: TFDQuery
    BeforeInsert = TBAcoesBeforeInsert
    AfterInsert = TBAcoesAfterInsert
    BeforeEdit = TBAcoesBeforeEdit
    BeforePost = TBAcoesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRAcoes
    UpdateObject = UPAcoes
    SQL.Strings = (
      'select'
      'ACO_CODIGO, '
      'ACO_DESCRICAO, '
      'ACO_DTATUALIZACAO, '
      'ACO_DTCADASTRO, '
      'ACO_HRATUALIZACAO, '
      'ACO_HRCADASTRO, '
      'ACO_STATUS, '
      'ACO_USUARIO'
      'from ACOES'
      'where ACO_CODIGO=:codigo'
      '')
    Left = 32
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAcoesACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
      Origin = 'ACO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAcoesACO_DESCRICAO: TStringField
      FieldName = 'ACO_DESCRICAO'
      Origin = 'ACO_DESCRICAO'
      Size = 50
    end
    object TBAcoesACO_DTATUALIZACAO: TDateField
      FieldName = 'ACO_DTATUALIZACAO'
      Origin = 'ACO_DTATUALIZACAO'
    end
    object TBAcoesACO_DTCADASTRO: TDateField
      FieldName = 'ACO_DTCADASTRO'
      Origin = 'ACO_DTCADASTRO'
    end
    object TBAcoesACO_HRATUALIZACAO: TTimeField
      FieldName = 'ACO_HRATUALIZACAO'
      Origin = 'ACO_HRATUALIZACAO'
    end
    object TBAcoesACO_HRCADASTRO: TTimeField
      FieldName = 'ACO_HRCADASTRO'
      Origin = 'ACO_HRCADASTRO'
    end
    object TBAcoesACO_STATUS: TStringField
      FieldName = 'ACO_STATUS'
      Origin = 'ACO_STATUS'
      Size = 1
    end
    object TBAcoesACO_USUARIO: TStringField
      FieldName = 'ACO_USUARIO'
      Origin = 'ACO_USUARIO'
    end
  end
  object TRAssuntos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 64
    Top = 88
  end
  object UPAssuntos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ASSUNTOS'
      '(ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, '
      '  ASS_DTCADASTRO, ASS_HRATUALIZACAO, ASS_HRCADASTRO, '
      '  ASS_HTML, ASS_STATUS, ASS_TEXTO, ASS_USUARIO)'
      
        'VALUES (gen_id(GEN_ASSUNTOS,1), :NEW_ASS_DESCRICAO, :NEW_ASS_DTA' +
        'TUALIZACAO, '
      
        '  :NEW_ASS_DTCADASTRO, :NEW_ASS_HRATUALIZACAO, :NEW_ASS_HRCADAST' +
        'RO, '
      
        '  :NEW_ASS_HTML, :NEW_ASS_STATUS, :NEW_ASS_TEXTO, :NEW_ASS_USUAR' +
        'IO)'
      
        'RETURNING ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCA' +
        'DASTRO, ASS_HRATUALIZACAO, ASS_HRCADASTRO, ASS_HTML, ASS_STATUS,' +
        ' ASS_TEXTO, ASS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ASSUNTOS'
      
        'SET ASS_CODIGO = :NEW_ASS_CODIGO, ASS_DESCRICAO = :NEW_ASS_DESCR' +
        'ICAO, '
      
        '  ASS_DTATUALIZACAO = :NEW_ASS_DTATUALIZACAO, ASS_DTCADASTRO = :' +
        'NEW_ASS_DTCADASTRO, '
      
        '  ASS_HRATUALIZACAO = :NEW_ASS_HRATUALIZACAO, ASS_HRCADASTRO = :' +
        'NEW_ASS_HRCADASTRO, '
      '  ASS_HTML = :NEW_ASS_HTML, ASS_STATUS = :NEW_ASS_STATUS, '
      '  ASS_TEXTO = :NEW_ASS_TEXTO, ASS_USUARIO = :NEW_ASS_USUARIO'
      'WHERE ASS_CODIGO = :OLD_ASS_CODIGO'
      
        'RETURNING ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCA' +
        'DASTRO, ASS_HRATUALIZACAO, ASS_HRCADASTRO, ASS_HTML, ASS_STATUS,' +
        ' ASS_TEXTO, ASS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ASSUNTOS'
      'WHERE ASS_CODIGO = :OLD_ASS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCADAS' +
        'TRO, '
      '  ASS_HRATUALIZACAO, ASS_HRCADASTRO, ASS_HTML, ASS_STATUS, '
      '  ASS_TEXTO, ASS_USUARIO'
      'FROM ASSUNTOS'
      'WHERE ASS_CODIGO = :OLD_ASS_CODIGO')
    Left = 64
    Top = 56
  end
  object TBAssuntos: TFDQuery
    BeforeInsert = TBAssuntosBeforeInsert
    AfterInsert = TBAssuntosAfterInsert
    BeforeEdit = TBAssuntosBeforeEdit
    BeforePost = TBAssuntosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRAssuntos
    UpdateObject = UPAssuntos
    SQL.Strings = (
      'select'
      'ASS_CODIGO, '
      'ASS_DESCRICAO, '
      'ASS_DTATUALIZACAO, '
      'ASS_DTCADASTRO, '
      'ASS_HRATUALIZACAO, '
      'ASS_HRCADASTRO, '
      'ASS_HTML, '
      'ASS_STATUS, '
      'ASS_TEXTO, '
      'ASS_USUARIO'
      'from ASSUNTOS'
      'where ASS_CODIGO=:codigo'
      '')
    Left = 64
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAssuntosASS_CODIGO: TIntegerField
      FieldName = 'ASS_CODIGO'
      Origin = 'ASS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object TRAtendimentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 96
    Top = 88
  end
  object UPAtendimentos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ATENDIMENTOS'
      '(ATE_AULA, ATE_AULADATA, ATE_AULAHORA, ATE_CLIENTE, '
      '  ATE_CODIGO, ATE_CURSO, ATE_DTATUALIZACAO, '
      '  ATE_DTCADASTRO, ATE_HRATUALIZACAO, ATE_HRCADASTRO, '
      '  ATE_MAILING, ATE_NIVELESCRITO, ATE_NIVELORAL, '
      '  ATE_OBSERVACOES, ATE_TESTEESCRITO, ATE_TESTEESCRITODATA, '
      '  ATE_TESTEESCRITOHORA, ATE_TESTEORAL, ATE_TESTEORALDATA, '
      '  ATE_TESTEORALHORA, ATE_USUARIO, ATE_VENDEDOR)'
      
        'VALUES (:NEW_ATE_AULA, :NEW_ATE_AULADATA, :NEW_ATE_AULAHORA, :NE' +
        'W_ATE_CLIENTE, '
      
        '  gen_id(GEN_ATENDIMENTOS,1), :NEW_ATE_CURSO, :NEW_ATE_DTATUALIZ' +
        'ACAO, '
      
        '  :NEW_ATE_DTCADASTRO, :NEW_ATE_HRATUALIZACAO, :NEW_ATE_HRCADAST' +
        'RO, '
      '  :NEW_ATE_MAILING, :NEW_ATE_NIVELESCRITO, :NEW_ATE_NIVELORAL, '
      
        '  :NEW_ATE_OBSERVACOES, :NEW_ATE_TESTEESCRITO, :NEW_ATE_TESTEESC' +
        'RITODATA, '
      
        '  :NEW_ATE_TESTEESCRITOHORA, :NEW_ATE_TESTEORAL, :NEW_ATE_TESTEO' +
        'RALDATA, '
      '  :NEW_ATE_TESTEORALHORA, :NEW_ATE_USUARIO, :NEW_ATE_VENDEDOR)'
      
        'RETURNING ATE_AULA, ATE_AULADATA, ATE_AULAHORA, ATE_CLIENTE, ATE' +
        '_CODIGO, ATE_CURSO, ATE_DTATUALIZACAO, ATE_DTCADASTRO, ATE_HRATU' +
        'ALIZACAO, ATE_HRCADASTRO, ATE_MAILING, ATE_NIVELESCRITO, ATE_NIV' +
        'ELORAL, ATE_OBSERVACOES, ATE_TESTEESCRITO, ATE_TESTEESCRITODATA,' +
        ' ATE_TESTEESCRITOHORA, ATE_TESTEORAL, ATE_TESTEORALDATA, ATE_TES' +
        'TEORALHORA, ATE_USUARIO, ATE_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE ATENDIMENTOS'
      'SET ATE_AULA = :NEW_ATE_AULA, ATE_AULADATA = :NEW_ATE_AULADATA, '
      
        '  ATE_AULAHORA = :NEW_ATE_AULAHORA, ATE_CLIENTE = :NEW_ATE_CLIEN' +
        'TE, '
      '  ATE_CODIGO = :NEW_ATE_CODIGO, ATE_CURSO = :NEW_ATE_CURSO, '
      
        '  ATE_DTATUALIZACAO = :NEW_ATE_DTATUALIZACAO, ATE_DTCADASTRO = :' +
        'NEW_ATE_DTCADASTRO, '
      
        '  ATE_HRATUALIZACAO = :NEW_ATE_HRATUALIZACAO, ATE_HRCADASTRO = :' +
        'NEW_ATE_HRCADASTRO, '
      
        '  ATE_MAILING = :NEW_ATE_MAILING, ATE_NIVELESCRITO = :NEW_ATE_NI' +
        'VELESCRITO, '
      
        '  ATE_NIVELORAL = :NEW_ATE_NIVELORAL, ATE_OBSERVACOES = :NEW_ATE' +
        '_OBSERVACOES, '
      
        '  ATE_TESTEESCRITO = :NEW_ATE_TESTEESCRITO, ATE_TESTEESCRITODATA' +
        ' = :NEW_ATE_TESTEESCRITODATA, '
      
        '  ATE_TESTEESCRITOHORA = :NEW_ATE_TESTEESCRITOHORA, ATE_TESTEORA' +
        'L = :NEW_ATE_TESTEORAL, '
      
        '  ATE_TESTEORALDATA = :NEW_ATE_TESTEORALDATA, ATE_TESTEORALHORA ' +
        '= :NEW_ATE_TESTEORALHORA, '
      
        '  ATE_USUARIO = :NEW_ATE_USUARIO, ATE_VENDEDOR = :NEW_ATE_VENDED' +
        'OR'
      'WHERE ATE_CODIGO = :OLD_ATE_CODIGO'
      
        'RETURNING ATE_AULA, ATE_AULADATA, ATE_AULAHORA, ATE_CLIENTE, ATE' +
        '_CODIGO, ATE_CURSO, ATE_DTATUALIZACAO, ATE_DTCADASTRO, ATE_HRATU' +
        'ALIZACAO, ATE_HRCADASTRO, ATE_MAILING, ATE_NIVELESCRITO, ATE_NIV' +
        'ELORAL, ATE_OBSERVACOES, ATE_TESTEESCRITO, ATE_TESTEESCRITODATA,' +
        ' ATE_TESTEESCRITOHORA, ATE_TESTEORAL, ATE_TESTEORALDATA, ATE_TES' +
        'TEORALHORA, ATE_USUARIO, ATE_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM ATENDIMENTOS'
      'WHERE ATE_CODIGO = :OLD_ATE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ATE_AULA, ATE_AULADATA, ATE_AULAHORA, ATE_CLIENTE, ATE_CO' +
        'DIGO, '
      
        '  ATE_CURSO, ATE_DTATUALIZACAO, ATE_DTCADASTRO, ATE_HRATUALIZACA' +
        'O, '
      '  ATE_HRCADASTRO, ATE_MAILING, ATE_NIVELESCRITO, ATE_NIVELORAL, '
      '  ATE_OBSERVACOES, ATE_TESTEESCRITO, ATE_TESTEESCRITODATA, '
      '  ATE_TESTEESCRITOHORA, ATE_TESTEORAL, ATE_TESTEORALDATA, '
      '  ATE_TESTEORALHORA, ATE_USUARIO, ATE_VENDEDOR'
      'FROM ATENDIMENTOS'
      'WHERE ATE_CODIGO = :OLD_ATE_CODIGO')
    Left = 96
    Top = 56
  end
  object TBAtendimentos: TFDQuery
    BeforeInsert = TBAtendimentosBeforeInsert
    AfterInsert = TBAtendimentosAfterInsert
    BeforeEdit = TBAtendimentosBeforeEdit
    BeforePost = TBAtendimentosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRAtendimentos
    UpdateObject = UPAtendimentos
    SQL.Strings = (
      'select '
      'ATE_AULA,'
      'ATE_AULADATA,'
      'ATE_AULAHORA,'
      'ATE_CLIENTE,'
      'ATE_CODIGO,'
      'ATE_CURSO,'
      'ATE_DTATUALIZACAO,'
      'ATE_DTCADASTRO,'
      'ATE_HRATUALIZACAO,'
      'ATE_HRCADASTRO,'
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
      'where ATE_CODIGO=:codigo'
      '')
    Left = 96
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAtendimentosATE_AULA: TStringField
      FieldName = 'ATE_AULA'
      Origin = 'ATE_AULA'
      Size = 1
    end
    object TBAtendimentosATE_AULADATA: TDateField
      FieldName = 'ATE_AULADATA'
      Origin = 'ATE_AULADATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_AULAHORA: TTimeField
      FieldName = 'ATE_AULAHORA'
      Origin = 'ATE_AULAHORA'
      EditMask = '!99:99:00;1;_'
    end
    object TBAtendimentosATE_CLIENTE: TIntegerField
      FieldName = 'ATE_CLIENTE'
      Origin = 'ATE_CLIENTE'
      Required = True
    end
    object TBAtendimentosATE_CODIGO: TIntegerField
      FieldName = 'ATE_CODIGO'
      Origin = 'ATE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAtendimentosATE_CURSO: TIntegerField
      FieldName = 'ATE_CURSO'
      Origin = 'ATE_CURSO'
      Required = True
    end
    object TBAtendimentosATE_DTATUALIZACAO: TDateField
      FieldName = 'ATE_DTATUALIZACAO'
      Origin = 'ATE_DTATUALIZACAO'
    end
    object TBAtendimentosATE_DTCADASTRO: TDateField
      FieldName = 'ATE_DTCADASTRO'
      Origin = 'ATE_DTCADASTRO'
    end
    object TBAtendimentosATE_HRATUALIZACAO: TTimeField
      FieldName = 'ATE_HRATUALIZACAO'
      Origin = 'ATE_HRATUALIZACAO'
    end
    object TBAtendimentosATE_HRCADASTRO: TTimeField
      FieldName = 'ATE_HRCADASTRO'
      Origin = 'ATE_HRCADASTRO'
    end
    object TBAtendimentosATE_MAILING: TIntegerField
      FieldName = 'ATE_MAILING'
      Origin = 'ATE_MAILING'
      Required = True
    end
    object TBAtendimentosATE_NIVELESCRITO: TStringField
      FieldName = 'ATE_NIVELESCRITO'
      Origin = 'ATE_NIVELESCRITO'
      Size = 5
    end
    object TBAtendimentosATE_NIVELORAL: TStringField
      FieldName = 'ATE_NIVELORAL'
      Origin = 'ATE_NIVELORAL'
      Size = 5
    end
    object TBAtendimentosATE_OBSERVACOES: TMemoField
      FieldName = 'ATE_OBSERVACOES'
      Origin = 'ATE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBAtendimentosATE_TESTEESCRITO: TStringField
      FieldName = 'ATE_TESTEESCRITO'
      Origin = 'ATE_TESTEESCRITO'
      Size = 1
    end
    object TBAtendimentosATE_TESTEESCRITODATA: TDateField
      FieldName = 'ATE_TESTEESCRITODATA'
      Origin = 'ATE_TESTEESCRITODATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_TESTEESCRITOHORA: TTimeField
      FieldName = 'ATE_TESTEESCRITOHORA'
      Origin = 'ATE_TESTEESCRITOHORA'
      EditMask = '!99:99:99;1;_'
    end
    object TBAtendimentosATE_TESTEORAL: TStringField
      FieldName = 'ATE_TESTEORAL'
      Origin = 'ATE_TESTEORAL'
      Size = 1
    end
    object TBAtendimentosATE_TESTEORALDATA: TDateField
      FieldName = 'ATE_TESTEORALDATA'
      Origin = 'ATE_TESTEORALDATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBAtendimentosATE_TESTEORALHORA: TTimeField
      FieldName = 'ATE_TESTEORALHORA'
      Origin = 'ATE_TESTEORALHORA'
      EditMask = '!99:99:99;1;_'
    end
    object TBAtendimentosATE_USUARIO: TStringField
      FieldName = 'ATE_USUARIO'
      Origin = 'ATE_USUARIO'
    end
    object TBAtendimentosATE_VENDEDOR: TIntegerField
      FieldName = 'ATE_VENDEDOR'
      Origin = 'ATE_VENDEDOR'
      Required = True
    end
    object TBAtendimentosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBAtendimentosCUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUR_DESCRICAO'
      Origin = 'CUR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBAtendimentosMAI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBAtendimentosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRAvaliacoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 128
    Top = 88
  end
  object UPAvaliacoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO AVALIACOES'
      '(AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO, '
      '  AVA_DTCADASTRO, AVA_HRATUALIZACAO, AVA_HRCADASTRO, '
      '  AVA_MATRICULA, AVA_NOTA, AVA_TIPO, AVA_USUARIO)'
      
        'VALUES (gen_id(GEN_AVALIACOES,1), :NEW_AVA_CONTAMEDIA, :NEW_AVA_' +
        'DTATUALIZACAO, '
      
        '  :NEW_AVA_DTCADASTRO, :NEW_AVA_HRATUALIZACAO, :NEW_AVA_HRCADAST' +
        'RO, '
      
        '  :NEW_AVA_MATRICULA, :NEW_AVA_NOTA, :NEW_AVA_TIPO, :NEW_AVA_USU' +
        'ARIO)'
      
        'RETURNING AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO, AVA_DTC' +
        'ADASTRO, AVA_HRATUALIZACAO, AVA_HRCADASTRO, AVA_MATRICULA, AVA_N' +
        'OTA, AVA_TIPO, AVA_USUARIO')
    ModifySQL.Strings = (
      'UPDATE AVALIACOES'
      
        'SET AVA_CODIGO = :NEW_AVA_CODIGO, AVA_CONTAMEDIA = :NEW_AVA_CONT' +
        'AMEDIA, '
      
        '  AVA_DTATUALIZACAO = :NEW_AVA_DTATUALIZACAO, AVA_DTCADASTRO = :' +
        'NEW_AVA_DTCADASTRO, '
      
        '  AVA_HRATUALIZACAO = :NEW_AVA_HRATUALIZACAO, AVA_HRCADASTRO = :' +
        'NEW_AVA_HRCADASTRO, '
      '  AVA_MATRICULA = :NEW_AVA_MATRICULA, AVA_NOTA = :NEW_AVA_NOTA, '
      '  AVA_TIPO = :NEW_AVA_TIPO, AVA_USUARIO = :NEW_AVA_USUARIO'
      'WHERE AVA_CODIGO = :OLD_AVA_CODIGO'
      
        'RETURNING AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO, AVA_DTC' +
        'ADASTRO, AVA_HRATUALIZACAO, AVA_HRCADASTRO, AVA_MATRICULA, AVA_N' +
        'OTA, AVA_TIPO, AVA_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM AVALIACOES'
      'WHERE AVA_CODIGO = :OLD_AVA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT AVA_CODIGO, AVA_CONTAMEDIA, AVA_DTATUALIZACAO, AVA_DTCADA' +
        'STRO, '
      '  AVA_HRATUALIZACAO, AVA_HRCADASTRO, AVA_MATRICULA, AVA_NOTA, '
      '  AVA_TIPO, AVA_USUARIO'
      'FROM AVALIACOES'
      'WHERE AVA_CODIGO = :OLD_AVA_CODIGO')
    Left = 128
    Top = 56
  end
  object TBAvaliacoes: TFDQuery
    BeforeInsert = TBAvaliacoesBeforeInsert
    AfterInsert = TBAvaliacoesAfterInsert
    BeforeEdit = TBAvaliacoesBeforeEdit
    BeforePost = TBAvaliacoesBeforePost
    AfterPost = TBAvaliacoesAfterPost
    AfterDelete = TBAvaliacoesAfterDelete
    MasterSource = DSMatriculas
    MasterFields = 'MAT_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRAvaliacoes
    UpdateObject = UPAvaliacoes
    SQL.Strings = (
      'select '
      'AVA_CODIGO, '
      'AVA_CONTAMEDIA, '
      'AVA_DTATUALIZACAO,'
      'AVA_DTCADASTRO, '
      'AVA_HRATUALIZACAO,'
      'AVA_HRCADASTRO,'
      'AVA_MATRICULA, '
      'AVA_NOTA, '
      'AVA_TIPO,'
      'AVA_USUARIO, '
      'CLI_NOME, '
      'AVT_DESCRICAO'
      'from AVALIACOES'
      'left join AVALIACOESTIPO on AVA_TIPO=AVT_CODIGO'
      'left join MATRICULAS on AVA_MATRICULA=MAT_CODIGO'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'where AVA_MATRICULA=:MAT_CODIGO'
      'order by AVA_DTCADASTRO desc'
      '')
    Left = 128
    Top = 24
    ParamData = <
      item
        Name = 'MAT_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAvaliacoesAVA_CODIGO: TIntegerField
      FieldName = 'AVA_CODIGO'
      Origin = 'AVA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAvaliacoesAVA_CONTAMEDIA: TStringField
      FieldName = 'AVA_CONTAMEDIA'
      Origin = 'AVA_CONTAMEDIA'
      Size = 1
    end
    object TBAvaliacoesAVA_DTATUALIZACAO: TDateField
      FieldName = 'AVA_DTATUALIZACAO'
      Origin = 'AVA_DTATUALIZACAO'
    end
    object TBAvaliacoesAVA_DTCADASTRO: TDateField
      FieldName = 'AVA_DTCADASTRO'
      Origin = 'AVA_DTCADASTRO'
    end
    object TBAvaliacoesAVA_HRATUALIZACAO: TTimeField
      FieldName = 'AVA_HRATUALIZACAO'
      Origin = 'AVA_HRATUALIZACAO'
    end
    object TBAvaliacoesAVA_HRCADASTRO: TTimeField
      FieldName = 'AVA_HRCADASTRO'
      Origin = 'AVA_HRCADASTRO'
    end
    object TBAvaliacoesAVA_MATRICULA: TIntegerField
      FieldName = 'AVA_MATRICULA'
      Origin = 'AVA_MATRICULA'
      Required = True
    end
    object TBAvaliacoesAVA_NOTA: TFMTBCDField
      FieldName = 'AVA_NOTA'
      Origin = 'AVA_NOTA'
      Precision = 18
    end
    object TBAvaliacoesAVA_TIPO: TIntegerField
      FieldName = 'AVA_TIPO'
      Origin = 'AVA_TIPO'
      Required = True
    end
    object TBAvaliacoesAVA_USUARIO: TStringField
      FieldName = 'AVA_USUARIO'
      Origin = 'AVA_USUARIO'
    end
    object TBAvaliacoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBAvaliacoesAVT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVT_DESCRICAO'
      Origin = 'AVT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRAvaliacoesTipo: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 88
  end
  object UPAvaliacoesTipo: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO AVALIACOESTIPO'
      '(AVT_CODIGO, AVT_DESCRICAO, AVT_DTATUALIZACAO, '
      '  AVT_DTCADASTRO, AVT_HRATUALIZACAO, AVT_HRCADASTRO, '
      '  AVT_USUARIO)'
      
        'VALUES (gen_id(GEN_AVALIACOESTIPO,1), :NEW_AVT_DESCRICAO, :NEW_A' +
        'VT_DTATUALIZACAO, '
      
        '  :NEW_AVT_DTCADASTRO, :NEW_AVT_HRATUALIZACAO, :NEW_AVT_HRCADAST' +
        'RO, '
      '  :NEW_AVT_USUARIO)'
      
        'RETURNING AVT_CODIGO, AVT_DESCRICAO, AVT_DTATUALIZACAO, AVT_DTCA' +
        'DASTRO, AVT_HRATUALIZACAO, AVT_HRCADASTRO, AVT_USUARIO')
    ModifySQL.Strings = (
      'UPDATE AVALIACOESTIPO'
      
        'SET AVT_CODIGO = :NEW_AVT_CODIGO, AVT_DESCRICAO = :NEW_AVT_DESCR' +
        'ICAO, '
      
        '  AVT_DTATUALIZACAO = :NEW_AVT_DTATUALIZACAO, AVT_DTCADASTRO = :' +
        'NEW_AVT_DTCADASTRO, '
      
        '  AVT_HRATUALIZACAO = :NEW_AVT_HRATUALIZACAO, AVT_HRCADASTRO = :' +
        'NEW_AVT_HRCADASTRO, '
      '  AVT_USUARIO = :NEW_AVT_USUARIO'
      'WHERE AVT_CODIGO = :OLD_AVT_CODIGO'
      
        'RETURNING AVT_CODIGO, AVT_DESCRICAO, AVT_DTATUALIZACAO, AVT_DTCA' +
        'DASTRO, AVT_HRATUALIZACAO, AVT_HRCADASTRO, AVT_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM AVALIACOESTIPO'
      'WHERE AVT_CODIGO = :OLD_AVT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT AVT_CODIGO, AVT_DESCRICAO, AVT_DTATUALIZACAO, AVT_DTCADAS' +
        'TRO, '
      '  AVT_HRATUALIZACAO, AVT_HRCADASTRO, AVT_USUARIO'
      'FROM AVALIACOESTIPO'
      'WHERE AVT_CODIGO = :OLD_AVT_CODIGO')
    Left = 160
    Top = 56
  end
  object TBAvaliacoesTipo: TFDQuery
    BeforeInsert = TBAvaliacoesTipoBeforeInsert
    AfterInsert = TBAvaliacoesTipoAfterInsert
    BeforeEdit = TBAvaliacoesTipoBeforeEdit
    BeforePost = TBAvaliacoesTipoBeforePost
    Connection = DM.FDConnection1
    Transaction = TRAvaliacoesTipo
    UpdateObject = UPAvaliacoesTipo
    SQL.Strings = (
      'select'
      'AVT_CODIGO, '
      'AVT_DESCRICAO, '
      'AVT_DTATUALIZACAO, '
      'AVT_DTCADASTRO, '
      'AVT_HRATUALIZACAO, '
      'AVT_HRCADASTRO, '
      'AVT_USUARIO'
      'from AVALIACOESTIPO'
      'where AVT_CODIGO=:codigo'
      '')
    Left = 160
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAvaliacoesTipoAVT_CODIGO: TIntegerField
      FieldName = 'AVT_CODIGO'
      Origin = 'AVT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAvaliacoesTipoAVT_DESCRICAO: TStringField
      FieldName = 'AVT_DESCRICAO'
      Origin = 'AVT_DESCRICAO'
      Size = 50
    end
    object TBAvaliacoesTipoAVT_DTATUALIZACAO: TDateField
      FieldName = 'AVT_DTATUALIZACAO'
      Origin = 'AVT_DTATUALIZACAO'
    end
    object TBAvaliacoesTipoAVT_DTCADASTRO: TDateField
      FieldName = 'AVT_DTCADASTRO'
      Origin = 'AVT_DTCADASTRO'
    end
    object TBAvaliacoesTipoAVT_HRATUALIZACAO: TTimeField
      FieldName = 'AVT_HRATUALIZACAO'
      Origin = 'AVT_HRATUALIZACAO'
    end
    object TBAvaliacoesTipoAVT_HRCADASTRO: TTimeField
      FieldName = 'AVT_HRCADASTRO'
      Origin = 'AVT_HRCADASTRO'
    end
    object TBAvaliacoesTipoAVT_USUARIO: TStringField
      FieldName = 'AVT_USUARIO'
      Origin = 'AVT_USUARIO'
    end
  end
  object TRBancos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 88
  end
  object UPBancos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BANCOS'
      '(BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, '
      '  BAN_HRATUALIZACAO, BAN_HRCADASTRO, BAN_NOME, '
      '  BAN_STATUS, BAN_USUARIO)'
      
        'VALUES (:NEW_BAN_CODIGO, :NEW_BAN_DTATUALIZACAO, :NEW_BAN_DTCADA' +
        'STRO, '
      '  :NEW_BAN_HRATUALIZACAO, :NEW_BAN_HRCADASTRO, :NEW_BAN_NOME, '
      '  :NEW_BAN_STATUS, :NEW_BAN_USUARIO)'
      
        'RETURNING BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, BAN_HRA' +
        'TUALIZACAO, BAN_HRCADASTRO, BAN_NOME, BAN_STATUS, BAN_USUARIO')
    ModifySQL.Strings = (
      'UPDATE BANCOS'
      
        'SET BAN_CODIGO = :NEW_BAN_CODIGO, BAN_DTATUALIZACAO = :NEW_BAN_D' +
        'TATUALIZACAO, '
      
        '  BAN_DTCADASTRO = :NEW_BAN_DTCADASTRO, BAN_HRATUALIZACAO = :NEW' +
        '_BAN_HRATUALIZACAO, '
      
        '  BAN_HRCADASTRO = :NEW_BAN_HRCADASTRO, BAN_NOME = :NEW_BAN_NOME' +
        ', '
      '  BAN_STATUS = :NEW_BAN_STATUS, BAN_USUARIO = :NEW_BAN_USUARIO'
      'WHERE BAN_CODIGO = :OLD_BAN_CODIGO'
      
        'RETURNING BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, BAN_HRA' +
        'TUALIZACAO, BAN_HRCADASTRO, BAN_NOME, BAN_STATUS, BAN_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM BANCOS'
      'WHERE BAN_CODIGO = :OLD_BAN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, BAN_HRATUA' +
        'LIZACAO, '
      '  BAN_HRCADASTRO, BAN_NOME, BAN_STATUS, BAN_USUARIO'
      'FROM BANCOS'
      'WHERE BAN_CODIGO = :OLD_BAN_CODIGO')
    Left = 192
    Top = 56
  end
  object TBBancos: TFDQuery
    BeforeInsert = TBBancosBeforeInsert
    AfterInsert = TBBancosAfterInsert
    BeforeEdit = TBBancosBeforeEdit
    BeforePost = TBBancosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRBancos
    UpdateObject = UPBancos
    SQL.Strings = (
      'select'
      'BAN_CODIGO,'
      'BAN_DTATUALIZACAO,'
      'BAN_DTCADASTRO,'
      'BAN_HRATUALIZACAO,'
      'BAN_HRCADASTRO,'
      'BAN_NOME,'
      'BAN_STATUS,'
      'BAN_USUARIO'
      'from BANCOS'
      'where BAN_CODIGO=:codigo'
      '')
    Left = 192
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBBancosBAN_DTATUALIZACAO: TDateField
      FieldName = 'BAN_DTATUALIZACAO'
      Origin = 'BAN_DTATUALIZACAO'
    end
    object TBBancosBAN_DTCADASTRO: TDateField
      FieldName = 'BAN_DTCADASTRO'
      Origin = 'BAN_DTCADASTRO'
    end
    object TBBancosBAN_HRATUALIZACAO: TTimeField
      FieldName = 'BAN_HRATUALIZACAO'
      Origin = 'BAN_HRATUALIZACAO'
    end
    object TBBancosBAN_HRCADASTRO: TTimeField
      FieldName = 'BAN_HRCADASTRO'
      Origin = 'BAN_HRCADASTRO'
    end
    object TBBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      Size = 80
    end
    object TBBancosBAN_STATUS: TStringField
      FieldName = 'BAN_STATUS'
      Origin = 'BAN_STATUS'
      Size = 1
    end
    object TBBancosBAN_USUARIO: TStringField
      FieldName = 'BAN_USUARIO'
      Origin = 'BAN_USUARIO'
    end
  end
  object TRBoletos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 88
  end
  object UPBoletos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BOLETOS'
      '(BOL_ACEITE, BOL_BAIRRO, BOL_BAIXACODIGO, BOL_BAIXADOPOR, '
      '  BOL_CARTEIRA, BOL_CARTEIRACOD, BOL_CEP, BOL_CIDADE, '
      '  BOL_CLIENTE, BOL_CNPJ, BOL_CODIGO, BOL_CODIGOBARRAS, '
      '  BOL_CODIGOSOLICITACAO, BOL_COMPLEMENTO, BOL_CONTA, '
      '  BOL_CONVENIO, BOL_CPF, BOL_DESCONTOTIPO, '
      '  BOL_DESCPORC, BOL_DESCTIPO, BOL_DESCVALOR, '
      '  BOL_DIASBAIXA, BOL_DIASPROTESTO, BOL_DTATUALIZACAO, '
      '  BOL_DTBAIXABANCO, BOL_DTCADASTRO, BOL_DTDESCONTO, '
      '  BOL_DTJUROSAPOS, BOL_DTPAGAMENTO, BOL_DTPROTESTO, '
      '  BOL_DTVENCIMENTO, BOL_ENDERECO, BOL_ESPECIE, '
      '  BOL_ESPECIEDOC, BOL_ESTADO, BOL_GEROUREMESSA, '
      '  BOL_HRATUALIZACAO, BOL_HRCADASTRO, BOL_INSTRUCAO1, '
      '  BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INSTRUCAO4, '
      '  BOL_INSTRUCAO5, BOL_LINHADIGITAVEL, BOL_LOCALPAGTO, '
      '  BOL_MODALIDADE, BOL_MORACODIGO, BOL_MORAJUROS, '
      '  BOL_MORATIPO, BOL_MULTA, BOL_MULTATIPO, BOL_NOME, '
      '  BOL_NOSSONUMERO, BOL_NUMERO, BOL_OBSERVACOES, '
      '  BOL_PROTESTOCODIGO, BOL_PROTESTOTIPO, BOL_QRCODEPIX, '
      '  BOL_STATUS, BOL_TIPOPESSOA, BOL_USUARIO, '
      '  BOL_VALORBOLETO, BOL_VALORITENS, BOL_VALORJUROS, '
      '  BOL_VALORMULTA, BOL_VALORPAGO, BOL_VALORTOTAL)'
      
        'VALUES (:NEW_BOL_ACEITE, :NEW_BOL_BAIRRO, :NEW_BOL_BAIXACODIGO, ' +
        ':NEW_BOL_BAIXADOPOR, '
      
        '  :NEW_BOL_CARTEIRA, :NEW_BOL_CARTEIRACOD, :NEW_BOL_CEP, :NEW_BO' +
        'L_CIDADE, '
      
        '  :NEW_BOL_CLIENTE, :NEW_BOL_CNPJ, gen_id(GEN_BOLETOS,1), :NEW_B' +
        'OL_CODIGOBARRAS, '
      
        '  :NEW_BOL_CODIGOSOLICITACAO, :NEW_BOL_COMPLEMENTO, :NEW_BOL_CON' +
        'TA, '
      '  :NEW_BOL_CONVENIO, :NEW_BOL_CPF, :NEW_BOL_DESCONTOTIPO, '
      '  :NEW_BOL_DESCPORC, :NEW_BOL_DESCTIPO, :NEW_BOL_DESCVALOR, '
      
        '  :NEW_BOL_DIASBAIXA, :NEW_BOL_DIASPROTESTO, :NEW_BOL_DTATUALIZA' +
        'CAO, '
      
        '  :NEW_BOL_DTBAIXABANCO, :NEW_BOL_DTCADASTRO, :NEW_BOL_DTDESCONT' +
        'O, '
      
        '  :NEW_BOL_DTJUROSAPOS, :NEW_BOL_DTPAGAMENTO, :NEW_BOL_DTPROTEST' +
        'O, '
      '  :NEW_BOL_DTVENCIMENTO, :NEW_BOL_ENDERECO, :NEW_BOL_ESPECIE, '
      '  :NEW_BOL_ESPECIEDOC, :NEW_BOL_ESTADO, :NEW_BOL_GEROUREMESSA, '
      
        '  :NEW_BOL_HRATUALIZACAO, :NEW_BOL_HRCADASTRO, :NEW_BOL_INSTRUCA' +
        'O1, '
      
        '  :NEW_BOL_INSTRUCAO2, :NEW_BOL_INSTRUCAO3, :NEW_BOL_INSTRUCAO4,' +
        ' '
      
        '  :NEW_BOL_INSTRUCAO5, :NEW_BOL_LINHADIGITAVEL, :NEW_BOL_LOCALPA' +
        'GTO, '
      '  :NEW_BOL_MODALIDADE, :NEW_BOL_MORACODIGO, :NEW_BOL_MORAJUROS, '
      
        '  :NEW_BOL_MORATIPO, :NEW_BOL_MULTA, :NEW_BOL_MULTATIPO, :NEW_BO' +
        'L_NOME, '
      '  :NEW_BOL_NOSSONUMERO, :NEW_BOL_NUMERO, :NEW_BOL_OBSERVACOES, '
      
        '  :NEW_BOL_PROTESTOCODIGO, :NEW_BOL_PROTESTOTIPO, :NEW_BOL_QRCOD' +
        'EPIX, '
      '  :NEW_BOL_STATUS, :NEW_BOL_TIPOPESSOA, :NEW_BOL_USUARIO, '
      
        '  :NEW_BOL_VALORBOLETO, :NEW_BOL_VALORITENS, :NEW_BOL_VALORJUROS' +
        ', '
      '  :NEW_BOL_VALORMULTA, :NEW_BOL_VALORPAGO, :NEW_BOL_VALORTOTAL)'
      
        'RETURNING BOL_ACEITE, BOL_BAIRRO, BOL_BAIXACODIGO, BOL_BAIXADOPO' +
        'R, BOL_CARTEIRA, BOL_CARTEIRACOD, BOL_CEP, BOL_CIDADE, BOL_CLIEN' +
        'TE, BOL_CNPJ, BOL_CODIGO, BOL_CODIGOBARRAS, BOL_CODIGOSOLICITACA' +
        'O, BOL_COMPLEMENTO, BOL_CONTA, BOL_CONVENIO, BOL_CPF, BOL_DESCON' +
        'TOTIPO, BOL_DESCPORC, BOL_DESCTIPO, BOL_DESCVALOR, BOL_DIASBAIXA' +
        ', BOL_DIASPROTESTO, BOL_DTATUALIZACAO, BOL_DTBAIXABANCO, BOL_DTC' +
        'ADASTRO, BOL_DTDESCONTO, BOL_DTJUROSAPOS, BOL_DTPAGAMENTO, BOL_D' +
        'TPROTESTO, BOL_DTVENCIMENTO, BOL_ENDERECO, BOL_ESPECIE, BOL_ESPE' +
        'CIEDOC, BOL_ESTADO, BOL_GEROUREMESSA, BOL_HRATUALIZACAO, BOL_HRC' +
        'ADASTRO, BOL_INSTRUCAO1, BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INS' +
        'TRUCAO4, BOL_INSTRUCAO5, BOL_LINHADIGITAVEL, BOL_LOCALPAGTO, BOL' +
        '_MODALIDADE, BOL_MORACODIGO, BOL_MORAJUROS, BOL_MORATIPO, BOL_MU' +
        'LTA, BOL_MULTATIPO, BOL_NOME, BOL_NOSSONUMERO, BOL_NUMERO, BOL_O' +
        'BSERVACOES, BOL_PROTESTOCODIGO, BOL_PROTESTOTIPO, BOL_QRCODEPIX,' +
        ' BOL_STATUS, BOL_TIPOPESSOA, BOL_USUARIO, BOL_VALORBOLETO, BOL_V' +
        'ALORITENS, BOL_VALORJUROS, BOL_VALORMULTA, BOL_VALORPAGO, BOL_VA' +
        'LORTOTAL')
    ModifySQL.Strings = (
      'UPDATE BOLETOS'
      'SET BOL_ACEITE = :NEW_BOL_ACEITE, BOL_BAIRRO = :NEW_BOL_BAIRRO, '
      
        '  BOL_BAIXACODIGO = :NEW_BOL_BAIXACODIGO, BOL_BAIXADOPOR = :NEW_' +
        'BOL_BAIXADOPOR, '
      
        '  BOL_CARTEIRA = :NEW_BOL_CARTEIRA, BOL_CARTEIRACOD = :NEW_BOL_C' +
        'ARTEIRACOD, '
      
        '  BOL_CEP = :NEW_BOL_CEP, BOL_CIDADE = :NEW_BOL_CIDADE, BOL_CLIE' +
        'NTE = :NEW_BOL_CLIENTE, '
      '  BOL_CNPJ = :NEW_BOL_CNPJ, BOL_CODIGO = :NEW_BOL_CODIGO, '
      
        '  BOL_CODIGOBARRAS = :NEW_BOL_CODIGOBARRAS, BOL_CODIGOSOLICITACA' +
        'O = :NEW_BOL_CODIGOSOLICITACAO, '
      
        '  BOL_COMPLEMENTO = :NEW_BOL_COMPLEMENTO, BOL_CONTA = :NEW_BOL_C' +
        'ONTA, '
      '  BOL_CONVENIO = :NEW_BOL_CONVENIO, BOL_CPF = :NEW_BOL_CPF, '
      
        '  BOL_DESCONTOTIPO = :NEW_BOL_DESCONTOTIPO, BOL_DESCPORC = :NEW_' +
        'BOL_DESCPORC, '
      
        '  BOL_DESCTIPO = :NEW_BOL_DESCTIPO, BOL_DESCVALOR = :NEW_BOL_DES' +
        'CVALOR, '
      
        '  BOL_DIASBAIXA = :NEW_BOL_DIASBAIXA, BOL_DIASPROTESTO = :NEW_BO' +
        'L_DIASPROTESTO, '
      
        '  BOL_DTATUALIZACAO = :NEW_BOL_DTATUALIZACAO, BOL_DTBAIXABANCO =' +
        ' :NEW_BOL_DTBAIXABANCO, '
      
        '  BOL_DTCADASTRO = :NEW_BOL_DTCADASTRO, BOL_DTDESCONTO = :NEW_BO' +
        'L_DTDESCONTO, '
      
        '  BOL_DTJUROSAPOS = :NEW_BOL_DTJUROSAPOS, BOL_DTPAGAMENTO = :NEW' +
        '_BOL_DTPAGAMENTO, '
      
        '  BOL_DTPROTESTO = :NEW_BOL_DTPROTESTO, BOL_DTVENCIMENTO = :NEW_' +
        'BOL_DTVENCIMENTO, '
      
        '  BOL_ENDERECO = :NEW_BOL_ENDERECO, BOL_ESPECIE = :NEW_BOL_ESPEC' +
        'IE, '
      
        '  BOL_ESPECIEDOC = :NEW_BOL_ESPECIEDOC, BOL_ESTADO = :NEW_BOL_ES' +
        'TADO, '
      
        '  BOL_GEROUREMESSA = :NEW_BOL_GEROUREMESSA, BOL_HRATUALIZACAO = ' +
        ':NEW_BOL_HRATUALIZACAO, '
      
        '  BOL_HRCADASTRO = :NEW_BOL_HRCADASTRO, BOL_INSTRUCAO1 = :NEW_BO' +
        'L_INSTRUCAO1, '
      
        '  BOL_INSTRUCAO2 = :NEW_BOL_INSTRUCAO2, BOL_INSTRUCAO3 = :NEW_BO' +
        'L_INSTRUCAO3, '
      
        '  BOL_INSTRUCAO4 = :NEW_BOL_INSTRUCAO4, BOL_INSTRUCAO5 = :NEW_BO' +
        'L_INSTRUCAO5, '
      
        '  BOL_LINHADIGITAVEL = :NEW_BOL_LINHADIGITAVEL, BOL_LOCALPAGTO =' +
        ' :NEW_BOL_LOCALPAGTO, '
      
        '  BOL_MODALIDADE = :NEW_BOL_MODALIDADE, BOL_MORACODIGO = :NEW_BO' +
        'L_MORACODIGO, '
      
        '  BOL_MORAJUROS = :NEW_BOL_MORAJUROS, BOL_MORATIPO = :NEW_BOL_MO' +
        'RATIPO, '
      
        '  BOL_MULTA = :NEW_BOL_MULTA, BOL_MULTATIPO = :NEW_BOL_MULTATIPO' +
        ', '
      
        '  BOL_NOME = :NEW_BOL_NOME, BOL_NOSSONUMERO = :NEW_BOL_NOSSONUME' +
        'RO, '
      
        '  BOL_NUMERO = :NEW_BOL_NUMERO, BOL_OBSERVACOES = :NEW_BOL_OBSER' +
        'VACOES, '
      
        '  BOL_PROTESTOCODIGO = :NEW_BOL_PROTESTOCODIGO, BOL_PROTESTOTIPO' +
        ' = :NEW_BOL_PROTESTOTIPO, '
      
        '  BOL_QRCODEPIX = :NEW_BOL_QRCODEPIX, BOL_STATUS = :NEW_BOL_STAT' +
        'US, '
      
        '  BOL_TIPOPESSOA = :NEW_BOL_TIPOPESSOA, BOL_USUARIO = :NEW_BOL_U' +
        'SUARIO, '
      
        '  BOL_VALORBOLETO = :NEW_BOL_VALORBOLETO, BOL_VALORITENS = :NEW_' +
        'BOL_VALORITENS, '
      
        '  BOL_VALORJUROS = :NEW_BOL_VALORJUROS, BOL_VALORMULTA = :NEW_BO' +
        'L_VALORMULTA, '
      
        '  BOL_VALORPAGO = :NEW_BOL_VALORPAGO, BOL_VALORTOTAL = :NEW_BOL_' +
        'VALORTOTAL'
      'WHERE BOL_CODIGO = :OLD_BOL_CODIGO'
      
        'RETURNING BOL_ACEITE, BOL_BAIRRO, BOL_BAIXACODIGO, BOL_BAIXADOPO' +
        'R, BOL_CARTEIRA, BOL_CARTEIRACOD, BOL_CEP, BOL_CIDADE, BOL_CLIEN' +
        'TE, BOL_CNPJ, BOL_CODIGO, BOL_CODIGOBARRAS, BOL_CODIGOSOLICITACA' +
        'O, BOL_COMPLEMENTO, BOL_CONTA, BOL_CONVENIO, BOL_CPF, BOL_DESCON' +
        'TOTIPO, BOL_DESCPORC, BOL_DESCTIPO, BOL_DESCVALOR, BOL_DIASBAIXA' +
        ', BOL_DIASPROTESTO, BOL_DTATUALIZACAO, BOL_DTBAIXABANCO, BOL_DTC' +
        'ADASTRO, BOL_DTDESCONTO, BOL_DTJUROSAPOS, BOL_DTPAGAMENTO, BOL_D' +
        'TPROTESTO, BOL_DTVENCIMENTO, BOL_ENDERECO, BOL_ESPECIE, BOL_ESPE' +
        'CIEDOC, BOL_ESTADO, BOL_GEROUREMESSA, BOL_HRATUALIZACAO, BOL_HRC' +
        'ADASTRO, BOL_INSTRUCAO1, BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INS' +
        'TRUCAO4, BOL_INSTRUCAO5, BOL_LINHADIGITAVEL, BOL_LOCALPAGTO, BOL' +
        '_MODALIDADE, BOL_MORACODIGO, BOL_MORAJUROS, BOL_MORATIPO, BOL_MU' +
        'LTA, BOL_MULTATIPO, BOL_NOME, BOL_NOSSONUMERO, BOL_NUMERO, BOL_O' +
        'BSERVACOES, BOL_PROTESTOCODIGO, BOL_PROTESTOTIPO, BOL_QRCODEPIX,' +
        ' BOL_STATUS, BOL_TIPOPESSOA, BOL_USUARIO, BOL_VALORBOLETO, BOL_V' +
        'ALORITENS, BOL_VALORJUROS, BOL_VALORMULTA, BOL_VALORPAGO, BOL_VA' +
        'LORTOTAL')
    DeleteSQL.Strings = (
      'DELETE FROM BOLETOS'
      'WHERE BOL_CODIGO = :OLD_BOL_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT BOL_ACEITE, BOL_BAIRRO, BOL_BAIXACODIGO, BOL_BAIXADOPOR, ' +
        'BOL_CARTEIRA, '
      '  BOL_CARTEIRACOD, BOL_CEP, BOL_CIDADE, BOL_CLIENTE, BOL_CNPJ, '
      
        '  BOL_CODIGO, BOL_CODIGOBARRAS, BOL_CODIGOSOLICITACAO, BOL_COMPL' +
        'EMENTO, '
      
        '  BOL_CONTA, BOL_CONVENIO, BOL_CPF, BOL_DESCONTOTIPO, BOL_DESCPO' +
        'RC, '
      '  BOL_DESCTIPO, BOL_DESCVALOR, BOL_DIASBAIXA, BOL_DIASPROTESTO, '
      
        '  BOL_DTATUALIZACAO, BOL_DTBAIXABANCO, BOL_DTCADASTRO, BOL_DTDES' +
        'CONTO, '
      
        '  BOL_DTJUROSAPOS, BOL_DTPAGAMENTO, BOL_DTPROTESTO, BOL_DTVENCIM' +
        'ENTO, '
      
        '  BOL_ENDERECO, BOL_ESPECIE, BOL_ESPECIEDOC, BOL_ESTADO, BOL_GER' +
        'OUREMESSA, '
      
        '  BOL_HRATUALIZACAO, BOL_HRCADASTRO, BOL_INSTRUCAO1, BOL_INSTRUC' +
        'AO2, '
      
        '  BOL_INSTRUCAO3, BOL_INSTRUCAO4, BOL_INSTRUCAO5, BOL_LINHADIGIT' +
        'AVEL, '
      
        '  BOL_LOCALPAGTO, BOL_MODALIDADE, BOL_MORACODIGO, BOL_MORAJUROS,' +
        ' '
      
        '  BOL_MORATIPO, BOL_MULTA, BOL_MULTATIPO, BOL_NOME, BOL_NOSSONUM' +
        'ERO, '
      
        '  BOL_NUMERO, BOL_OBSERVACOES, BOL_PROTESTOCODIGO, BOL_PROTESTOT' +
        'IPO, '
      '  BOL_QRCODEPIX, BOL_STATUS, BOL_TIPOPESSOA, BOL_USUARIO, '
      
        '  BOL_VALORBOLETO, BOL_VALORITENS, BOL_VALORJUROS, BOL_VALORMULT' +
        'A, '
      '  BOL_VALORPAGO, BOL_VALORTOTAL'
      'FROM BOLETOS'
      'WHERE BOL_CODIGO = :OLD_BOL_CODIGO')
    Left = 224
    Top = 56
  end
  object TBBoletos: TFDQuery
    BeforeInsert = TBBoletosBeforeInsert
    AfterInsert = TBBoletosAfterInsert
    BeforeEdit = TBBoletosBeforeEdit
    AfterEdit = TBBoletosAfterEdit
    BeforePost = TBBoletosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRBoletos
    UpdateObject = UPBoletos
    SQL.Strings = (
      'select'
      'BOL_ACEITE,'
      'BOL_BAIRRO,'
      'BOL_BAIXACODIGO,'
      'BOL_BAIXADOPOR,'
      'BOL_CARTEIRA,'
      'BOL_CARTEIRACOD,'
      'BOL_CEP,'
      'BOL_CIDADE,'
      'BOL_CLIENTE,'
      'BOL_CNPJ,'
      'BOL_CODIGO,'
      'BOL_CODIGOBARRAS,'
      'BOL_CODIGOSOLICITACAO,'
      'BOL_COMPLEMENTO,'
      'BOL_CONTA,'
      'BOL_CONVENIO,'
      'BOL_CPF,'
      'BOL_DESCONTOTIPO,'
      'BOL_DESCPORC,'
      'BOL_DESCTIPO,'
      'BOL_DESCVALOR,'
      'BOL_DIASBAIXA,'
      'BOL_DIASPROTESTO,'
      'BOL_DTATUALIZACAO,'
      'BOL_DTBAIXABANCO,'
      'BOL_DTCADASTRO,'
      'BOL_DTDESCONTO,'
      'BOL_DTJUROSAPOS,'
      'BOL_DTPAGAMENTO,'
      'BOL_DTPROTESTO,'
      'BOL_DTVENCIMENTO,'
      'BOL_ENDERECO,'
      'BOL_ESPECIE,'
      'BOL_ESPECIEDOC,'
      'BOL_ESTADO,'
      'BOL_GEROUREMESSA,'
      'BOL_HRATUALIZACAO,'
      'BOL_HRCADASTRO,'
      'BOL_INSTRUCAO1,'
      'BOL_INSTRUCAO2,'
      'BOL_INSTRUCAO3,'
      'BOL_INSTRUCAO4,'
      'BOL_INSTRUCAO5,'
      'BOL_LINHADIGITAVEL,'
      'BOL_LOCALPAGTO,'
      'BOL_MODALIDADE,'
      'BOL_MORACODIGO,'
      'BOL_MORAJUROS,'
      'BOL_MORATIPO,'
      'BOL_MULTA,'
      'BOL_MULTATIPO,'
      'BOL_NOME,'
      'BOL_NOSSONUMERO,'
      'BOL_NUMERO,'
      'BOL_OBSERVACOES,'
      'BOL_PROTESTOCODIGO,'
      'BOL_PROTESTOTIPO,'
      'BOL_QRCODEPIX,'
      'BOL_STATUS,'
      'BOL_TIPOPESSOA,'
      'BOL_USUARIO,'
      'BOL_VALORBOLETO,'
      'BOL_VALORITENS,'
      'BOL_VALORJUROS,'
      'BOL_VALORMULTA,'
      'BOL_VALORPAGO,'
      'BOL_VALORTOTAL,'
      'BAN_NOME,'
      'CON_AGENCIA,'
      'CON_AGENCIADIGITO,'
      'CON_BANCO,'
      'CON_CEDENTE,'
      'CON_CEDENTEDIGITO,'
      'CON_CEDENTENOME,'
      'CON_CHAVEPIX,'
      'CON_CLIENTID,'
      'CON_CLIENTSECRET,'
      'CON_CONTA,'
      'CON_CONTADIGITO,'
      'CON_KEYUSER,'
      'CON_NOME,'
      'CON_NOSSONUMDIGITOS,'
      'CON_NOSSONUMFORMATAR,'
      'CON_TIPOCOBRANCA,CON_VALORBOLETO'
      'from BOLETOS'
      'left join CONTAS on BOL_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'where BOL_CODIGO=:codigo'
      '')
    Left = 224
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBBoletosBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      Origin = 'BOL_ACEITE'
      Size = 1
    end
    object TBBoletosBOL_BAIRRO: TStringField
      FieldName = 'BOL_BAIRRO'
      Origin = 'BOL_BAIRRO'
      Size = 50
    end
    object TBBoletosBOL_BAIXACODIGO: TIntegerField
      FieldName = 'BOL_BAIXACODIGO'
      Origin = 'BOL_BAIXACODIGO'
    end
    object TBBoletosBOL_BAIXADOPOR: TStringField
      FieldName = 'BOL_BAIXADOPOR'
      Origin = 'BOL_BAIXADOPOR'
    end
    object TBBoletosBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      Origin = 'BOL_CARTEIRA'
      Size = 10
    end
    object TBBoletosBOL_CARTEIRACOD: TIntegerField
      FieldName = 'BOL_CARTEIRACOD'
      Origin = 'BOL_CARTEIRACOD'
    end
    object TBBoletosBOL_CEP: TStringField
      FieldName = 'BOL_CEP'
      Origin = 'BOL_CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBBoletosBOL_CIDADE: TStringField
      FieldName = 'BOL_CIDADE'
      Origin = 'BOL_CIDADE'
      Size = 50
    end
    object TBBoletosBOL_CLIENTE: TIntegerField
      FieldName = 'BOL_CLIENTE'
      Origin = 'BOL_CLIENTE'
      Required = True
    end
    object TBBoletosBOL_CNPJ: TStringField
      FieldName = 'BOL_CNPJ'
      Origin = 'BOL_CNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBBoletosBOL_CODIGO: TIntegerField
      FieldName = 'BOL_CODIGO'
      Origin = 'BOL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBBoletosBOL_CODIGOBARRAS: TStringField
      FieldName = 'BOL_CODIGOBARRAS'
      Origin = 'BOL_CODIGOBARRAS'
      Size = 50
    end
    object TBBoletosBOL_CODIGOSOLICITACAO: TStringField
      FieldName = 'BOL_CODIGOSOLICITACAO'
      Origin = 'BOL_CODIGOSOLICITACAO'
      Size = 50
    end
    object TBBoletosBOL_COMPLEMENTO: TStringField
      FieldName = 'BOL_COMPLEMENTO'
      Origin = 'BOL_COMPLEMENTO'
      Size = 80
    end
    object TBBoletosBOL_CONTA: TIntegerField
      FieldName = 'BOL_CONTA'
      Origin = 'BOL_CONTA'
      Required = True
    end
    object TBBoletosBOL_CONVENIO: TStringField
      FieldName = 'BOL_CONVENIO'
      Origin = 'BOL_CONVENIO'
    end
    object TBBoletosBOL_CPF: TStringField
      FieldName = 'BOL_CPF'
      Origin = 'BOL_CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBBoletosBOL_DESCONTOTIPO: TStringField
      FieldName = 'BOL_DESCONTOTIPO'
      Origin = 'BOL_DESCONTOTIPO'
      Size = 15
    end
    object TBBoletosBOL_DESCPORC: TFMTBCDField
      FieldName = 'BOL_DESCPORC'
      Origin = 'BOL_DESCPORC'
      Precision = 18
    end
    object TBBoletosBOL_DESCTIPO: TStringField
      FieldName = 'BOL_DESCTIPO'
      Origin = 'BOL_DESCTIPO'
      Size = 50
    end
    object TBBoletosBOL_DESCVALOR: TFMTBCDField
      FieldName = 'BOL_DESCVALOR'
      Origin = 'BOL_DESCVALOR'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_DIASBAIXA: TIntegerField
      FieldName = 'BOL_DIASBAIXA'
      Origin = 'BOL_DIASBAIXA'
    end
    object TBBoletosBOL_DIASPROTESTO: TIntegerField
      FieldName = 'BOL_DIASPROTESTO'
      Origin = 'BOL_DIASPROTESTO'
    end
    object TBBoletosBOL_DTATUALIZACAO: TDateField
      FieldName = 'BOL_DTATUALIZACAO'
      Origin = 'BOL_DTATUALIZACAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTBAIXABANCO: TDateField
      FieldName = 'BOL_DTBAIXABANCO'
      Origin = 'BOL_DTBAIXABANCO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTCADASTRO: TDateField
      FieldName = 'BOL_DTCADASTRO'
      Origin = 'BOL_DTCADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTDESCONTO: TDateField
      FieldName = 'BOL_DTDESCONTO'
      Origin = 'BOL_DTDESCONTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTJUROSAPOS: TDateField
      FieldName = 'BOL_DTJUROSAPOS'
      Origin = 'BOL_DTJUROSAPOS'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTPAGAMENTO: TDateField
      FieldName = 'BOL_DTPAGAMENTO'
      Origin = 'BOL_DTPAGAMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTPROTESTO: TDateField
      FieldName = 'BOL_DTPROTESTO'
      Origin = 'BOL_DTPROTESTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_DTVENCIMENTO: TDateField
      FieldName = 'BOL_DTVENCIMENTO'
      Origin = 'BOL_DTVENCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBBoletosBOL_ENDERECO: TStringField
      FieldName = 'BOL_ENDERECO'
      Origin = 'BOL_ENDERECO'
      Size = 100
    end
    object TBBoletosBOL_ESPECIE: TStringField
      FieldName = 'BOL_ESPECIE'
      Origin = 'BOL_ESPECIE'
      Size = 5
    end
    object TBBoletosBOL_ESPECIEDOC: TStringField
      FieldName = 'BOL_ESPECIEDOC'
      Origin = 'BOL_ESPECIEDOC'
      Size = 50
    end
    object TBBoletosBOL_ESTADO: TStringField
      FieldName = 'BOL_ESTADO'
      Origin = 'BOL_ESTADO'
      Size = 2
    end
    object TBBoletosBOL_GEROUREMESSA: TStringField
      FieldName = 'BOL_GEROUREMESSA'
      Origin = 'BOL_GEROUREMESSA'
      Size = 1
    end
    object TBBoletosBOL_HRATUALIZACAO: TTimeField
      FieldName = 'BOL_HRATUALIZACAO'
      Origin = 'BOL_HRATUALIZACAO'
    end
    object TBBoletosBOL_HRCADASTRO: TTimeField
      FieldName = 'BOL_HRCADASTRO'
      Origin = 'BOL_HRCADASTRO'
    end
    object TBBoletosBOL_INSTRUCAO1: TStringField
      FieldName = 'BOL_INSTRUCAO1'
      Origin = 'BOL_INSTRUCAO1'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO2: TStringField
      FieldName = 'BOL_INSTRUCAO2'
      Origin = 'BOL_INSTRUCAO2'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO3: TStringField
      FieldName = 'BOL_INSTRUCAO3'
      Origin = 'BOL_INSTRUCAO3'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO4: TStringField
      FieldName = 'BOL_INSTRUCAO4'
      Origin = 'BOL_INSTRUCAO4'
      Size = 100
    end
    object TBBoletosBOL_INSTRUCAO5: TStringField
      FieldName = 'BOL_INSTRUCAO5'
      Origin = 'BOL_INSTRUCAO5'
      Size = 100
    end
    object TBBoletosBOL_LINHADIGITAVEL: TStringField
      FieldName = 'BOL_LINHADIGITAVEL'
      Origin = 'BOL_LINHADIGITAVEL'
      Size = 55
    end
    object TBBoletosBOL_LOCALPAGTO: TStringField
      FieldName = 'BOL_LOCALPAGTO'
      Origin = 'BOL_LOCALPAGTO'
      Size = 120
    end
    object TBBoletosBOL_MODALIDADE: TIntegerField
      FieldName = 'BOL_MODALIDADE'
      Origin = 'BOL_MODALIDADE'
    end
    object TBBoletosBOL_MORACODIGO: TStringField
      FieldName = 'BOL_MORACODIGO'
      Origin = 'BOL_MORACODIGO'
      Size = 5
    end
    object TBBoletosBOL_MORAJUROS: TFMTBCDField
      FieldName = 'BOL_MORAJUROS'
      Origin = 'BOL_MORAJUROS'
      Precision = 18
    end
    object TBBoletosBOL_MORATIPO: TStringField
      FieldName = 'BOL_MORATIPO'
      Origin = 'BOL_MORATIPO'
      Size = 15
    end
    object TBBoletosBOL_MULTA: TFMTBCDField
      FieldName = 'BOL_MULTA'
      Origin = 'BOL_MULTA'
      Precision = 18
    end
    object TBBoletosBOL_MULTATIPO: TStringField
      FieldName = 'BOL_MULTATIPO'
      Origin = 'BOL_MULTATIPO'
      Size = 10
    end
    object TBBoletosBOL_NOME: TStringField
      FieldName = 'BOL_NOME'
      Origin = 'BOL_NOME'
      Size = 80
    end
    object TBBoletosBOL_NOSSONUMERO: TStringField
      FieldName = 'BOL_NOSSONUMERO'
      Origin = 'BOL_NOSSONUMERO'
      Size = 30
    end
    object TBBoletosBOL_NUMERO: TStringField
      FieldName = 'BOL_NUMERO'
      Origin = 'BOL_NUMERO'
      Size = 15
    end
    object TBBoletosBOL_OBSERVACOES: TMemoField
      FieldName = 'BOL_OBSERVACOES'
      Origin = 'BOL_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBBoletosBOL_PROTESTOCODIGO: TIntegerField
      FieldName = 'BOL_PROTESTOCODIGO'
      Origin = 'BOL_PROTESTOCODIGO'
    end
    object TBBoletosBOL_PROTESTOTIPO: TStringField
      FieldName = 'BOL_PROTESTOTIPO'
      Origin = 'BOL_PROTESTOTIPO'
    end
    object TBBoletosBOL_QRCODEPIX: TStringField
      FieldName = 'BOL_QRCODEPIX'
      Origin = 'BOL_QRCODEPIX'
      Size = 250
    end
    object TBBoletosBOL_STATUS: TStringField
      FieldName = 'BOL_STATUS'
      Origin = 'BOL_STATUS'
      Size = 1
    end
    object TBBoletosBOL_TIPOPESSOA: TStringField
      FieldName = 'BOL_TIPOPESSOA'
      Origin = 'BOL_TIPOPESSOA'
      Size = 1
    end
    object TBBoletosBOL_USUARIO: TStringField
      FieldName = 'BOL_USUARIO'
      Origin = 'BOL_USUARIO'
    end
    object TBBoletosBOL_VALORBOLETO: TFMTBCDField
      FieldName = 'BOL_VALORBOLETO'
      Origin = 'BOL_VALORBOLETO'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_VALORITENS: TFMTBCDField
      FieldName = 'BOL_VALORITENS'
      Origin = 'BOL_VALORITENS'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_VALORJUROS: TFMTBCDField
      FieldName = 'BOL_VALORJUROS'
      Origin = 'BOL_VALORJUROS'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_VALORMULTA: TFMTBCDField
      FieldName = 'BOL_VALORMULTA'
      Origin = 'BOL_VALORMULTA'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_VALORPAGO: TFMTBCDField
      FieldName = 'BOL_VALORPAGO'
      Origin = 'BOL_VALORPAGO'
      currency = True
      Precision = 18
    end
    object TBBoletosBOL_VALORTOTAL: TFMTBCDField
      FieldName = 'BOL_VALORTOTAL'
      Origin = 'BOL_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBBoletosBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBBoletosCON_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_AGENCIA'
      Origin = 'CON_AGENCIA'
      ProviderFlags = []
      Size = 10
    end
    object TBBoletosCON_AGENCIADIGITO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_AGENCIADIGITO'
      Origin = 'CON_AGENCIADIGITO'
      ProviderFlags = []
    end
    object TBBoletosCON_BANCO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
      ProviderFlags = []
    end
    object TBBoletosCON_CEDENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CEDENTE'
      Origin = 'CON_CEDENTE'
      ProviderFlags = []
    end
    object TBBoletosCON_CEDENTEDIGITO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CEDENTEDIGITO'
      Origin = 'CON_CEDENTEDIGITO'
      ProviderFlags = []
    end
    object TBBoletosCON_CEDENTENOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CEDENTENOME'
      Origin = 'CON_CEDENTENOME'
      ProviderFlags = []
      Size = 80
    end
    object TBBoletosCON_CHAVEPIX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CHAVEPIX'
      Origin = 'CON_CHAVEPIX'
      ProviderFlags = []
      Size = 50
    end
    object TBBoletosCON_CLIENTID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CLIENTID'
      Origin = 'CON_CLIENTID'
      ProviderFlags = []
      Size = 300
    end
    object TBBoletosCON_CLIENTSECRET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CLIENTSECRET'
      Origin = 'CON_CLIENTSECRET'
      ProviderFlags = []
      Size = 300
    end
    object TBBoletosCON_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CONTA'
      Origin = 'CON_CONTA'
      ProviderFlags = []
      Size = 15
    end
    object TBBoletosCON_CONTADIGITO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CONTADIGITO'
      Origin = 'CON_CONTADIGITO'
      ProviderFlags = []
    end
    object TBBoletosCON_KEYUSER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_KEYUSER'
      Origin = 'CON_KEYUSER'
      ProviderFlags = []
      Size = 300
    end
    object TBBoletosCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBBoletosCON_NOSSONUMDIGITOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOSSONUMDIGITOS'
      Origin = 'CON_NOSSONUMDIGITOS'
      ProviderFlags = []
    end
    object TBBoletosCON_NOSSONUMFORMATAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOSSONUMFORMATAR'
      Origin = 'CON_NOSSONUMFORMATAR'
      ProviderFlags = []
      Size = 1
    end
    object TBBoletosCON_TIPOCOBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_TIPOCOBRANCA'
      Origin = 'CON_TIPOCOBRANCA'
      ProviderFlags = []
    end
    object TBBoletosCON_VALORBOLETO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CON_VALORBOLETO'
      Origin = 'CON_VALORBOLETO'
      ProviderFlags = []
      Precision = 18
    end
  end
  object TRBoletosItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 256
    Top = 88
  end
  object UPBoletosItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BOLETOSITENS'
      '(BOI_BOLETO, BOI_CODIGO, BOI_RECEBER)'
      
        'VALUES (:NEW_BOI_BOLETO, gen_id(GEN_BOLETOSITENS,1), :NEW_BOI_RE' +
        'CEBER)'
      'RETURNING BOI_BOLETO, BOI_CODIGO, BOI_RECEBER')
    ModifySQL.Strings = (
      'UPDATE BOLETOSITENS'
      'SET BOI_BOLETO = :NEW_BOI_BOLETO, BOI_CODIGO = :NEW_BOI_CODIGO, '
      '  BOI_RECEBER = :NEW_BOI_RECEBER'
      'WHERE BOI_CODIGO = :OLD_BOI_CODIGO'
      'RETURNING BOI_BOLETO, BOI_CODIGO, BOI_RECEBER')
    DeleteSQL.Strings = (
      'DELETE FROM BOLETOSITENS'
      'WHERE BOI_CODIGO = :OLD_BOI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT BOI_BOLETO, BOI_CODIGO, BOI_RECEBER'
      'FROM BOLETOSITENS'
      'WHERE BOI_CODIGO = :OLD_BOI_CODIGO')
    Left = 256
    Top = 56
  end
  object TBBoletosItens: TFDQuery
    AfterInsert = TBBoletosItensAfterInsert
    AfterPost = TBBoletosItensAfterPost
    MasterSource = DSBoletos
    MasterFields = 'BOL_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRBoletosItens
    UpdateObject = UPBoletosItens
    SQL.Strings = (
      'select'
      'BOI_BOLETO,'
      'BOI_CODIGO,'
      'BOI_RECEBER,'
      'REE_CLIENTE,'
      'REE_CONTA,'
      'REE_DTEMISSAO,'
      'REE_DTPAGAMENTO,'
      'REE_DTVENCIMENTO,'
      'REE_NUMDOCTO,'
      'REE_PARCELANUM,'
      'REE_PARCELAQTDE,'
      'REE_STATUS,'
      'REE_TIPODOCTO,'
      'REE_VALOR,'
      'REE_VALORPAGO,'
      'REE_VENDEDOR'
      'from BOLETOSITENS'
      'left join RECEBER on BOI_RECEBER=REE_CODIGO'
      'where BOI_BOLETO=:BOL_CODIGO'
      'order by REE_DTVENCIMENTO'
      '')
    Left = 256
    Top = 24
    ParamData = <
      item
        Name = 'BOL_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBBoletosItensBOI_BOLETO: TIntegerField
      FieldName = 'BOI_BOLETO'
      Origin = 'BOI_BOLETO'
      Required = True
    end
    object TBBoletosItensBOI_CODIGO: TIntegerField
      FieldName = 'BOI_CODIGO'
      Origin = 'BOI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBBoletosItensBOI_RECEBER: TIntegerField
      FieldName = 'BOI_RECEBER'
      Origin = 'BOI_RECEBER'
      Required = True
    end
    object TBBoletosItensREE_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REE_CLIENTE'
      Origin = 'REE_CLIENTE'
      ProviderFlags = []
    end
    object TBBoletosItensREE_CONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REE_CONTA'
      Origin = 'REE_CONTA'
      ProviderFlags = []
    end
    object TBBoletosItensREE_DTEMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REE_DTEMISSAO'
      Origin = 'REE_DTEMISSAO'
      ProviderFlags = []
    end
    object TBBoletosItensREE_DTPAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REE_DTPAGAMENTO'
      Origin = 'REE_DTPAGAMENTO'
      ProviderFlags = []
    end
    object TBBoletosItensREE_DTVENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REE_DTVENCIMENTO'
      Origin = 'REE_DTVENCIMENTO'
      ProviderFlags = []
    end
    object TBBoletosItensREE_NUMDOCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REE_NUMDOCTO'
      Origin = 'REE_NUMDOCTO'
      ProviderFlags = []
    end
    object TBBoletosItensREE_PARCELANUM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REE_PARCELANUM'
      Origin = 'REE_PARCELANUM'
      ProviderFlags = []
    end
    object TBBoletosItensREE_PARCELAQTDE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REE_PARCELAQTDE'
      Origin = 'REE_PARCELAQTDE'
      ProviderFlags = []
    end
    object TBBoletosItensREE_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REE_STATUS'
      Origin = 'REE_STATUS'
      ProviderFlags = []
      Size = 1
    end
    object TBBoletosItensREE_TIPODOCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REE_TIPODOCTO'
      Origin = 'REE_TIPODOCTO'
      ProviderFlags = []
    end
    object TBBoletosItensREE_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REE_VALOR'
      Origin = 'REE_VALOR'
      ProviderFlags = []
      currency = True
      Precision = 18
    end
    object TBBoletosItensREE_VALORPAGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REE_VALORPAGO'
      Origin = 'REE_VALORPAGO'
      ProviderFlags = []
      currency = True
      Precision = 18
    end
    object TBBoletosItensREE_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REE_VENDEDOR'
      Origin = 'REE_VENDEDOR'
      ProviderFlags = []
    end
  end
  object TRCalendarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 288
    Top = 88
  end
  object UPCalendarios: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CALENDARIOS'
      '(CAL_CODIGO, CAL_CONTADOR, CAL_DATA, CAL_STATUSCHAMADA, '
      '  CAL_TIPO, CAL_TURMA)'
      
        'VALUES (gen_id(GEN_CALENDARIOS,1), :NEW_CAL_CONTADOR, :NEW_CAL_D' +
        'ATA, :NEW_CAL_STATUSCHAMADA, '
      '  :NEW_CAL_TIPO, :NEW_CAL_TURMA)'
      
        'RETURNING CAL_CODIGO, CAL_CONTADOR, CAL_DATA, CAL_STATUSCHAMADA,' +
        ' CAL_TIPO, CAL_TURMA')
    ModifySQL.Strings = (
      'UPDATE CALENDARIOS'
      
        'SET CAL_CODIGO = :NEW_CAL_CODIGO, CAL_CONTADOR = :NEW_CAL_CONTAD' +
        'OR, '
      
        '  CAL_DATA = :NEW_CAL_DATA, CAL_STATUSCHAMADA = :NEW_CAL_STATUSC' +
        'HAMADA, '
      '  CAL_TIPO = :NEW_CAL_TIPO, CAL_TURMA = :NEW_CAL_TURMA'
      'WHERE CAL_CODIGO = :OLD_CAL_CODIGO'
      
        'RETURNING CAL_CODIGO, CAL_CONTADOR, CAL_DATA, CAL_STATUSCHAMADA,' +
        ' CAL_TIPO, CAL_TURMA')
    DeleteSQL.Strings = (
      'DELETE FROM CALENDARIOS'
      'WHERE CAL_CODIGO = :OLD_CAL_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CAL_CODIGO, CAL_CONTADOR, CAL_DATA, CAL_STATUSCHAMADA, CA' +
        'L_TIPO, '
      '  CAL_TURMA'
      'FROM CALENDARIOS'
      'WHERE CAL_CODIGO = :OLD_CAL_CODIGO')
    Left = 288
    Top = 56
  end
  object TBCalendarios: TFDQuery
    AfterInsert = TBCalendariosAfterInsert
    MasterSource = DSTurmas
    MasterFields = 'TUR_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCalendarios
    UpdateObject = UPCalendarios
    SQL.Strings = (
      'select'
      'CAL_CODIGO,'
      'CAL_CONTADOR,'
      'CAL_DATA,'
      'CAL_STATUSCHAMADA,'
      'CAL_TIPO,'
      'CAL_TURMA'
      'from CALENDARIOS'
      'where CAL_TURMA=:TUR_CODIGO'
      'order by CAL_CONTADOR'
      '')
    Left = 288
    Top = 24
    ParamData = <
      item
        Name = 'TUR_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCalendariosCAL_CODIGO: TIntegerField
      FieldName = 'CAL_CODIGO'
      Origin = 'CAL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCalendariosCAL_CONTADOR: TIntegerField
      FieldName = 'CAL_CONTADOR'
      Origin = 'CAL_CONTADOR'
    end
    object TBCalendariosCAL_DATA: TDateField
      FieldName = 'CAL_DATA'
      Origin = 'CAL_DATA'
    end
    object TBCalendariosCAL_STATUSCHAMADA: TStringField
      FieldName = 'CAL_STATUSCHAMADA'
      Origin = 'CAL_STATUSCHAMADA'
      Size = 1
    end
    object TBCalendariosCAL_TIPO: TStringField
      FieldName = 'CAL_TIPO'
      Origin = 'CAL_TIPO'
      Size = 10
    end
    object TBCalendariosCAL_TURMA: TIntegerField
      FieldName = 'CAL_TURMA'
      Origin = 'CAL_TURMA'
      Required = True
    end
  end
  object TRChamadas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 320
    Top = 88
  end
  object UPChamadas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CHAMADAS'
      '(CHA_CALENDARIO, CHA_CLIENTE, CHA_CODIGO, CHA_MATRICULA, '
      '  CHA_PRESENCA)'
      
        'VALUES (:NEW_CHA_CALENDARIO, :NEW_CHA_CLIENTE, gen_id(GEN_CHAMAD' +
        'AS,1), :NEW_CHA_MATRICULA, '
      '  :NEW_CHA_PRESENCA)'
      
        'RETURNING CHA_CALENDARIO, CHA_CLIENTE, CHA_CODIGO, CHA_MATRICULA' +
        ', CHA_PRESENCA')
    ModifySQL.Strings = (
      'UPDATE CHAMADAS'
      
        'SET CHA_CALENDARIO = :NEW_CHA_CALENDARIO, CHA_CLIENTE = :NEW_CHA' +
        '_CLIENTE, '
      
        '  CHA_CODIGO = :NEW_CHA_CODIGO, CHA_MATRICULA = :NEW_CHA_MATRICU' +
        'LA, '
      '  CHA_PRESENCA = :NEW_CHA_PRESENCA'
      'WHERE CHA_CODIGO = :OLD_CHA_CODIGO'
      
        'RETURNING CHA_CALENDARIO, CHA_CLIENTE, CHA_CODIGO, CHA_MATRICULA' +
        ', CHA_PRESENCA')
    DeleteSQL.Strings = (
      'DELETE FROM CHAMADAS'
      'WHERE CHA_CODIGO = :OLD_CHA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CHA_CALENDARIO, CHA_CLIENTE, CHA_CODIGO, CHA_MATRICULA, C' +
        'HA_PRESENCA'
      'FROM CHAMADAS'
      'WHERE CHA_CODIGO = :OLD_CHA_CODIGO')
    Left = 320
    Top = 56
  end
  object TBChamadas: TFDQuery
    AfterInsert = TBChamadasAfterInsert
    MasterSource = DSCalendarios
    MasterFields = 'CAL_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRChamadas
    UpdateObject = UPChamadas
    SQL.Strings = (
      'select'
      'CHA_CALENDARIO,'
      'CHA_CLIENTE,'
      'CHA_CODIGO,'
      'CHA_MATRICULA,'
      'CHA_PRESENCA,'
      'CAL_DATA,'
      'CLI_NOME,'
      'MAT_STATUS'
      'from CHAMADAS'
      'left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO'
      'left join CLIENTES on CHA_CLIENTE=CLI_CODIGO'
      'left join MATRICULAS on CHA_MATRICULA=MAT_CODIGO'
      'where CHA_CALENDARIO=:CAL_CODIGO'
      'order by CLI_NOME, CHA_CODIGO'
      '')
    Left = 320
    Top = 24
    ParamData = <
      item
        Name = 'CAL_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBChamadasCHA_CALENDARIO: TIntegerField
      FieldName = 'CHA_CALENDARIO'
      Origin = 'CHA_CALENDARIO'
      Required = True
    end
    object TBChamadasCHA_CLIENTE: TIntegerField
      FieldName = 'CHA_CLIENTE'
      Origin = 'CHA_CLIENTE'
      Required = True
    end
    object TBChamadasCHA_CODIGO: TIntegerField
      FieldName = 'CHA_CODIGO'
      Origin = 'CHA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBChamadasCHA_MATRICULA: TIntegerField
      FieldName = 'CHA_MATRICULA'
      Origin = 'CHA_MATRICULA'
      Required = True
    end
    object TBChamadasCHA_PRESENCA: TStringField
      FieldName = 'CHA_PRESENCA'
      Origin = 'CHA_PRESENCA'
      Size = 1
    end
    object TBChamadasCAL_DATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CAL_DATA'
      Origin = 'CAL_DATA'
      ProviderFlags = []
    end
    object TBChamadasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBChamadasMAT_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAT_STATUS'
      Origin = 'MAT_STATUS'
      ProviderFlags = []
      Size = 1
    end
  end
  object TRCheques: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 352
    Top = 88
  end
  object UPCheques: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CHEQUES'
      '(CHE_AGENCIA, CHE_BANCO, CHE_BOMPARA, CHE_CLIENTE, '
      '  CHE_CODIGO, CHE_CONTA, CHE_DTATUALIZACAO, '
      '  CHE_DTCADASTRO, CHE_ESPECIAL, CHE_HRATUALIZACAO, '
      '  CHE_HRCADASTRO, CHE_NOME, CHE_NUMERO, CHE_OBSERVACOES, '
      '  CHE_PREDATADO, CHE_STATUS, CHE_USUARIO, CHE_VALOR)'
      
        'VALUES (:NEW_CHE_AGENCIA, :NEW_CHE_BANCO, :NEW_CHE_BOMPARA, :NEW' +
        '_CHE_CLIENTE, '
      
        '  gen_id(GEN_CHEQUES,1), :NEW_CHE_CONTA, :NEW_CHE_DTATUALIZACAO,' +
        ' '
      
        '  :NEW_CHE_DTCADASTRO, :NEW_CHE_ESPECIAL, :NEW_CHE_HRATUALIZACAO' +
        ', '
      
        '  :NEW_CHE_HRCADASTRO, :NEW_CHE_NOME, :NEW_CHE_NUMERO, :NEW_CHE_' +
        'OBSERVACOES, '
      
        '  :NEW_CHE_PREDATADO, :NEW_CHE_STATUS, :NEW_CHE_USUARIO, :NEW_CH' +
        'E_VALOR)'
      
        'RETURNING CHE_AGENCIA, CHE_BANCO, CHE_BOMPARA, CHE_CLIENTE, CHE_' +
        'CODIGO, CHE_CONTA, CHE_DTATUALIZACAO, CHE_DTCADASTRO, CHE_ESPECI' +
        'AL, CHE_HRATUALIZACAO, CHE_HRCADASTRO, CHE_NOME, CHE_NUMERO, CHE' +
        '_OBSERVACOES, CHE_PREDATADO, CHE_STATUS, CHE_USUARIO, CHE_VALOR')
    ModifySQL.Strings = (
      'UPDATE CHEQUES'
      'SET CHE_AGENCIA = :NEW_CHE_AGENCIA, CHE_BANCO = :NEW_CHE_BANCO, '
      
        '  CHE_BOMPARA = :NEW_CHE_BOMPARA, CHE_CLIENTE = :NEW_CHE_CLIENTE' +
        ', '
      '  CHE_CODIGO = :NEW_CHE_CODIGO, CHE_CONTA = :NEW_CHE_CONTA, '
      
        '  CHE_DTATUALIZACAO = :NEW_CHE_DTATUALIZACAO, CHE_DTCADASTRO = :' +
        'NEW_CHE_DTCADASTRO, '
      
        '  CHE_ESPECIAL = :NEW_CHE_ESPECIAL, CHE_HRATUALIZACAO = :NEW_CHE' +
        '_HRATUALIZACAO, '
      
        '  CHE_HRCADASTRO = :NEW_CHE_HRCADASTRO, CHE_NOME = :NEW_CHE_NOME' +
        ', '
      
        '  CHE_NUMERO = :NEW_CHE_NUMERO, CHE_OBSERVACOES = :NEW_CHE_OBSER' +
        'VACOES, '
      
        '  CHE_PREDATADO = :NEW_CHE_PREDATADO, CHE_STATUS = :NEW_CHE_STAT' +
        'US, '
      '  CHE_USUARIO = :NEW_CHE_USUARIO, CHE_VALOR = :NEW_CHE_VALOR'
      'WHERE CHE_CODIGO = :OLD_CHE_CODIGO'
      
        'RETURNING CHE_AGENCIA, CHE_BANCO, CHE_BOMPARA, CHE_CLIENTE, CHE_' +
        'CODIGO, CHE_CONTA, CHE_DTATUALIZACAO, CHE_DTCADASTRO, CHE_ESPECI' +
        'AL, CHE_HRATUALIZACAO, CHE_HRCADASTRO, CHE_NOME, CHE_NUMERO, CHE' +
        '_OBSERVACOES, CHE_PREDATADO, CHE_STATUS, CHE_USUARIO, CHE_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM CHEQUES'
      'WHERE CHE_CODIGO = :OLD_CHE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CHE_AGENCIA, CHE_BANCO, CHE_BOMPARA, CHE_CLIENTE, CHE_COD' +
        'IGO, '
      '  CHE_CONTA, CHE_DTATUALIZACAO, CHE_DTCADASTRO, CHE_ESPECIAL, '
      '  CHE_HRATUALIZACAO, CHE_HRCADASTRO, CHE_NOME, CHE_NUMERO, '
      '  CHE_OBSERVACOES, CHE_PREDATADO, CHE_STATUS, CHE_USUARIO, '
      '  CHE_VALOR'
      'FROM CHEQUES'
      'WHERE CHE_CODIGO = :OLD_CHE_CODIGO')
    Left = 352
    Top = 56
  end
  object TBCheques: TFDQuery
    BeforeInsert = TBChequesBeforeInsert
    AfterInsert = TBChequesAfterInsert
    BeforeEdit = TBChequesBeforeEdit
    BeforePost = TBChequesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRCheques
    UpdateObject = UPCheques
    SQL.Strings = (
      'select'
      'CHE_AGENCIA,'
      'CHE_BANCO,'
      'CHE_BOMPARA,'
      'CHE_CLIENTE,'
      'CHE_CODIGO,'
      'CHE_CONTA,'
      'CHE_DTATUALIZACAO,'
      'CHE_DTCADASTRO,'
      'CHE_ESPECIAL,'
      'CHE_HRATUALIZACAO,'
      'CHE_HRCADASTRO,'
      'CHE_NOME,'
      'CHE_NUMERO,'
      'CHE_OBSERVACOES,'
      'CHE_PREDATADO,'
      'CHE_STATUS,'
      'CHE_USUARIO,'
      'CHE_VALOR,'
      'BAN_NOME,'
      'CLI_NOME'
      'from CHEQUES'
      'left join BANCOS on CHE_BANCO=BAN_CODIGO'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'where CHE_CODIGO=:codigo'
      '')
    Left = 352
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBChequesCHE_AGENCIA: TStringField
      FieldName = 'CHE_AGENCIA'
      Origin = 'CHE_AGENCIA'
      Size = 10
    end
    object TBChequesCHE_BANCO: TIntegerField
      FieldName = 'CHE_BANCO'
      Origin = 'CHE_BANCO'
      Required = True
    end
    object TBChequesCHE_BOMPARA: TDateField
      FieldName = 'CHE_BOMPARA'
      Origin = 'CHE_BOMPARA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBChequesCHE_CLIENTE: TIntegerField
      FieldName = 'CHE_CLIENTE'
      Origin = 'CHE_CLIENTE'
      Required = True
    end
    object TBChequesCHE_CODIGO: TIntegerField
      FieldName = 'CHE_CODIGO'
      Origin = 'CHE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBChequesCHE_CONTA: TStringField
      FieldName = 'CHE_CONTA'
      Origin = 'CHE_CONTA'
      Size = 15
    end
    object TBChequesCHE_DTATUALIZACAO: TDateField
      FieldName = 'CHE_DTATUALIZACAO'
      Origin = 'CHE_DTATUALIZACAO'
    end
    object TBChequesCHE_DTCADASTRO: TDateField
      FieldName = 'CHE_DTCADASTRO'
      Origin = 'CHE_DTCADASTRO'
    end
    object TBChequesCHE_ESPECIAL: TStringField
      FieldName = 'CHE_ESPECIAL'
      Origin = 'CHE_ESPECIAL'
      Size = 1
    end
    object TBChequesCHE_HRATUALIZACAO: TTimeField
      FieldName = 'CHE_HRATUALIZACAO'
      Origin = 'CHE_HRATUALIZACAO'
    end
    object TBChequesCHE_HRCADASTRO: TTimeField
      FieldName = 'CHE_HRCADASTRO'
      Origin = 'CHE_HRCADASTRO'
    end
    object TBChequesCHE_NOME: TStringField
      FieldName = 'CHE_NOME'
      Origin = 'CHE_NOME'
      Size = 80
    end
    object TBChequesCHE_NUMERO: TIntegerField
      FieldName = 'CHE_NUMERO'
      Origin = 'CHE_NUMERO'
    end
    object TBChequesCHE_OBSERVACOES: TMemoField
      FieldName = 'CHE_OBSERVACOES'
      Origin = 'CHE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBChequesCHE_PREDATADO: TStringField
      FieldName = 'CHE_PREDATADO'
      Origin = 'CHE_PREDATADO'
      Size = 1
    end
    object TBChequesCHE_STATUS: TStringField
      FieldName = 'CHE_STATUS'
      Origin = 'CHE_STATUS'
      Size = 1
    end
    object TBChequesCHE_USUARIO: TStringField
      FieldName = 'CHE_USUARIO'
      Origin = 'CHE_USUARIO'
    end
    object TBChequesCHE_VALOR: TFMTBCDField
      FieldName = 'CHE_VALOR'
      Origin = 'CHE_VALOR'
      currency = True
      Precision = 18
    end
    object TBChequesBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBChequesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRClasses: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 384
    Top = 88
  end
  object UPClasses: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CLASSES'
      '(CLS_CODIGO, CLS_DESCRICAO, CLS_DTATUALIZACAO, '
      '  CLS_DTCADASTRO, CLS_HRATUALIZACAO, CLS_HRCADASTRO, '
      '  CLS_USUARIO)'
      
        'VALUES (gen_id(GEN_CLASSES,1), :NEW_CLS_DESCRICAO, :NEW_CLS_DTAT' +
        'UALIZACAO, '
      
        '  :NEW_CLS_DTCADASTRO, :NEW_CLS_HRATUALIZACAO, :NEW_CLS_HRCADAST' +
        'RO, '
      '  :NEW_CLS_USUARIO)'
      
        'RETURNING CLS_CODIGO, CLS_DESCRICAO, CLS_DTATUALIZACAO, CLS_DTCA' +
        'DASTRO, CLS_HRATUALIZACAO, CLS_HRCADASTRO, CLS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CLASSES'
      
        'SET CLS_CODIGO = :NEW_CLS_CODIGO, CLS_DESCRICAO = :NEW_CLS_DESCR' +
        'ICAO, '
      
        '  CLS_DTATUALIZACAO = :NEW_CLS_DTATUALIZACAO, CLS_DTCADASTRO = :' +
        'NEW_CLS_DTCADASTRO, '
      
        '  CLS_HRATUALIZACAO = :NEW_CLS_HRATUALIZACAO, CLS_HRCADASTRO = :' +
        'NEW_CLS_HRCADASTRO, '
      '  CLS_USUARIO = :NEW_CLS_USUARIO'
      'WHERE CLS_CODIGO = :OLD_CLS_CODIGO'
      
        'RETURNING CLS_CODIGO, CLS_DESCRICAO, CLS_DTATUALIZACAO, CLS_DTCA' +
        'DASTRO, CLS_HRATUALIZACAO, CLS_HRCADASTRO, CLS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CLASSES'
      'WHERE CLS_CODIGO = :OLD_CLS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CLS_CODIGO, CLS_DESCRICAO, CLS_DTATUALIZACAO, CLS_DTCADAS' +
        'TRO, '
      '  CLS_HRATUALIZACAO, CLS_HRCADASTRO, CLS_USUARIO'
      'FROM CLASSES'
      'WHERE CLS_CODIGO = :OLD_CLS_CODIGO')
    Left = 384
    Top = 56
  end
  object TBClasses: TFDQuery
    BeforeInsert = TBClassesBeforeInsert
    AfterInsert = TBClassesAfterInsert
    BeforeEdit = TBClassesBeforeEdit
    BeforePost = TBClassesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRClasses
    UpdateObject = UPClasses
    SQL.Strings = (
      'select'
      'CLS_CODIGO,'
      'CLS_DESCRICAO,'
      'CLS_DTATUALIZACAO,'
      'CLS_DTCADASTRO,'
      'CLS_HRATUALIZACAO,'
      'CLS_HRCADASTRO,'
      'CLS_USUARIO'
      'from CLASSES'
      'where CLS_CODIGO=:codigo'
      '')
    Left = 384
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBClassesCLS_CODIGO: TIntegerField
      FieldName = 'CLS_CODIGO'
      Origin = 'CLS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBClassesCLS_DESCRICAO: TStringField
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      Size = 50
    end
    object TBClassesCLS_DTATUALIZACAO: TDateField
      FieldName = 'CLS_DTATUALIZACAO'
      Origin = 'CLS_DTATUALIZACAO'
    end
    object TBClassesCLS_DTCADASTRO: TDateField
      FieldName = 'CLS_DTCADASTRO'
      Origin = 'CLS_DTCADASTRO'
    end
    object TBClassesCLS_HRATUALIZACAO: TTimeField
      FieldName = 'CLS_HRATUALIZACAO'
      Origin = 'CLS_HRATUALIZACAO'
    end
    object TBClassesCLS_HRCADASTRO: TTimeField
      FieldName = 'CLS_HRCADASTRO'
      Origin = 'CLS_HRCADASTRO'
    end
    object TBClassesCLS_USUARIO: TStringField
      FieldName = 'CLS_USUARIO'
      Origin = 'CLS_USUARIO'
    end
  end
  object TRClassificados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 416
    Top = 88
  end
  object UPClassificados: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CLASSIFICADOS'
      '(CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CLIENTE, '
      '  CLA_CODIGO, CLA_COR, CLA_DTATUALIZACAO, CLA_DTCADASTRO, '
      '  CLA_FONE1, CLA_FONE2, CLA_HRATUALIZACAO, '
      '  CLA_HRCADASTRO, CLA_NOME, CLA_OBJETIVO, CLA_OBSERVACOES, '
      '  CLA_USUARIO, CLA_VEICULO)'
      
        'VALUES (:NEW_CLA_ANOFAB, :NEW_CLA_ANOMOD, :NEW_CLA_CATEGORIA, :N' +
        'EW_CLA_CLIENTE, '
      
        '  gen_id(GEN_CLASSIFICADOS,1), :NEW_CLA_COR, :NEW_CLA_DTATUALIZA' +
        'CAO, :NEW_CLA_DTCADASTRO, '
      '  :NEW_CLA_FONE1, :NEW_CLA_FONE2, :NEW_CLA_HRATUALIZACAO, '
      
        '  :NEW_CLA_HRCADASTRO, :NEW_CLA_NOME, :NEW_CLA_OBJETIVO, :NEW_CL' +
        'A_OBSERVACOES, '
      '  :NEW_CLA_USUARIO, :NEW_CLA_VEICULO)'
      
        'RETURNING CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CLIENTE, CL' +
        'A_CODIGO, CLA_COR, CLA_DTATUALIZACAO, CLA_DTCADASTRO, CLA_FONE1,' +
        ' CLA_FONE2, CLA_HRATUALIZACAO, CLA_HRCADASTRO, CLA_NOME, CLA_OBJ' +
        'ETIVO, CLA_OBSERVACOES, CLA_USUARIO, CLA_VEICULO')
    ModifySQL.Strings = (
      'UPDATE CLASSIFICADOS'
      'SET CLA_ANOFAB = :NEW_CLA_ANOFAB, CLA_ANOMOD = :NEW_CLA_ANOMOD, '
      
        '  CLA_CATEGORIA = :NEW_CLA_CATEGORIA, CLA_CLIENTE = :NEW_CLA_CLI' +
        'ENTE, '
      
        '  CLA_CODIGO = :NEW_CLA_CODIGO, CLA_COR = :NEW_CLA_COR, CLA_DTAT' +
        'UALIZACAO = :NEW_CLA_DTATUALIZACAO, '
      
        '  CLA_DTCADASTRO = :NEW_CLA_DTCADASTRO, CLA_FONE1 = :NEW_CLA_FON' +
        'E1, '
      
        '  CLA_FONE2 = :NEW_CLA_FONE2, CLA_HRATUALIZACAO = :NEW_CLA_HRATU' +
        'ALIZACAO, '
      
        '  CLA_HRCADASTRO = :NEW_CLA_HRCADASTRO, CLA_NOME = :NEW_CLA_NOME' +
        ', '
      
        '  CLA_OBJETIVO = :NEW_CLA_OBJETIVO, CLA_OBSERVACOES = :NEW_CLA_O' +
        'BSERVACOES, '
      '  CLA_USUARIO = :NEW_CLA_USUARIO, CLA_VEICULO = :NEW_CLA_VEICULO'
      'WHERE CLA_CODIGO = :OLD_CLA_CODIGO'
      
        'RETURNING CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CLIENTE, CL' +
        'A_CODIGO, CLA_COR, CLA_DTATUALIZACAO, CLA_DTCADASTRO, CLA_FONE1,' +
        ' CLA_FONE2, CLA_HRATUALIZACAO, CLA_HRCADASTRO, CLA_NOME, CLA_OBJ' +
        'ETIVO, CLA_OBSERVACOES, CLA_USUARIO, CLA_VEICULO')
    DeleteSQL.Strings = (
      'DELETE FROM CLASSIFICADOS'
      'WHERE CLA_CODIGO = :OLD_CLA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CLIENTE, CLA_C' +
        'ODIGO, '
      
        '  CLA_COR, CLA_DTATUALIZACAO, CLA_DTCADASTRO, CLA_FONE1, CLA_FON' +
        'E2, '
      '  CLA_HRATUALIZACAO, CLA_HRCADASTRO, CLA_NOME, CLA_OBJETIVO, '
      '  CLA_OBSERVACOES, CLA_USUARIO, CLA_VEICULO'
      'FROM CLASSIFICADOS'
      'WHERE CLA_CODIGO = :OLD_CLA_CODIGO')
    Left = 416
    Top = 56
  end
  object TBClassificados: TFDQuery
    BeforeInsert = TBClassificadosBeforeInsert
    AfterInsert = TBClassificadosAfterInsert
    BeforeEdit = TBClassificadosBeforeEdit
    BeforePost = TBClassificadosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRClassificados
    UpdateObject = UPClassificados
    SQL.Strings = (
      'select'
      'CLA_ANOFAB,'
      'CLA_ANOMOD,'
      'CLA_CATEGORIA,'
      'CLA_CLIENTE,'
      'CLA_CODIGO,'
      'CLA_COR,'
      'CLA_DTATUALIZACAO,'
      'CLA_DTCADASTRO,'
      'CLA_FONE1,'
      'CLA_FONE2,'
      'CLA_HRATUALIZACAO,'
      'CLA_HRCADASTRO,'
      'CLA_NOME,'
      'CLA_OBJETIVO,'
      'CLA_OBSERVACOES,'
      'CLA_USUARIO,'
      'CLA_VEICULO,'
      'VEL_DESCRICAO'
      'from CLASSIFICADOS'
      'left join VEICULOS on CLA_VEICULO=VEL_CODIGO'
      'where CLA_CODIGO=:codigo'
      '')
    Left = 416
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBClassificadosCLA_ANOFAB: TStringField
      FieldName = 'CLA_ANOFAB'
      Origin = 'CLA_ANOFAB'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBClassificadosCLA_ANOMOD: TStringField
      FieldName = 'CLA_ANOMOD'
      Origin = 'CLA_ANOMOD'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBClassificadosCLA_CATEGORIA: TStringField
      FieldName = 'CLA_CATEGORIA'
      Origin = 'CLA_CATEGORIA'
      Size = 1
    end
    object TBClassificadosCLA_CLIENTE: TIntegerField
      FieldName = 'CLA_CLIENTE'
      Origin = 'CLA_CLIENTE'
    end
    object TBClassificadosCLA_CODIGO: TIntegerField
      FieldName = 'CLA_CODIGO'
      Origin = 'CLA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBClassificadosCLA_COR: TStringField
      FieldName = 'CLA_COR'
      Origin = 'CLA_COR'
    end
    object TBClassificadosCLA_DTATUALIZACAO: TDateField
      FieldName = 'CLA_DTATUALIZACAO'
      Origin = 'CLA_DTATUALIZACAO'
    end
    object TBClassificadosCLA_DTCADASTRO: TDateField
      FieldName = 'CLA_DTCADASTRO'
      Origin = 'CLA_DTCADASTRO'
    end
    object TBClassificadosCLA_FONE1: TStringField
      FieldName = 'CLA_FONE1'
      Origin = 'CLA_FONE1'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassificadosCLA_FONE2: TStringField
      FieldName = 'CLA_FONE2'
      Origin = 'CLA_FONE2'
      EditMask = '!99/99/9999;1;_'
    end
    object TBClassificadosCLA_HRATUALIZACAO: TTimeField
      FieldName = 'CLA_HRATUALIZACAO'
      Origin = 'CLA_HRATUALIZACAO'
    end
    object TBClassificadosCLA_HRCADASTRO: TTimeField
      FieldName = 'CLA_HRCADASTRO'
      Origin = 'CLA_HRCADASTRO'
    end
    object TBClassificadosCLA_NOME: TStringField
      FieldName = 'CLA_NOME'
      Origin = 'CLA_NOME'
      Size = 80
    end
    object TBClassificadosCLA_OBJETIVO: TStringField
      FieldName = 'CLA_OBJETIVO'
      Origin = 'CLA_OBJETIVO'
      Size = 1
    end
    object TBClassificadosCLA_OBSERVACOES: TMemoField
      FieldName = 'CLA_OBSERVACOES'
      Origin = 'CLA_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBClassificadosCLA_USUARIO: TStringField
      FieldName = 'CLA_USUARIO'
      Origin = 'CLA_USUARIO'
    end
    object TBClassificadosCLA_VEICULO: TIntegerField
      FieldName = 'CLA_VEICULO'
      Origin = 'CLA_VEICULO'
      Required = True
    end
    object TBClassificadosVEL_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRComandas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 448
    Top = 88
  end
  object UPComandas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO COMANDAS'
      '(CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, '
      '  CMD_DATA, CMD_DATABAIXA, CMD_DESCPORC, CMD_DESCVALOR, '
      '  CMD_DINHEIRO, CMD_DTATUALIZACAO, CMD_DTCADASTRO, '
      '  CMD_HORAFIM, CMD_HORAFIMMIN, CMD_HORAINICIO, '
      '  CMD_HORAINICIOMIN, CMD_HRATUALIZACAO, CMD_HRCADASTRO, '
      '  CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, '
      '  CMD_TEMPOTOTAL, CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, '
      '  CMD_TOTALITENS, CMD_TROCO, CMD_USUARIO, CMD_VALORCOMISSAO, '
      '  CMD_VALORPAGAR, CMD_VALORPAGO, CMD_VALORTOTAL, '
      '  CMD_VENDEDOR)'
      
        'VALUES (:NEW_CMD_CLIENTE, gen_id(GEN_COMANDAS,1), :NEW_CMD_COMAN' +
        'DA, :NEW_CMD_COMISSAO, '
      
        '  :NEW_CMD_DATA, :NEW_CMD_DATABAIXA, :NEW_CMD_DESCPORC, :NEW_CMD' +
        '_DESCVALOR, '
      
        '  :NEW_CMD_DINHEIRO, :NEW_CMD_DTATUALIZACAO, :NEW_CMD_DTCADASTRO' +
        ', '
      '  :NEW_CMD_HORAFIM, :NEW_CMD_HORAFIMMIN, :NEW_CMD_HORAINICIO, '
      
        '  :NEW_CMD_HORAINICIOMIN, :NEW_CMD_HRATUALIZACAO, :NEW_CMD_HRCAD' +
        'ASTRO, '
      
        '  :NEW_CMD_OBSERVACOES, :NEW_CMD_SEQUENCIAITEM, :NEW_CMD_STATUS,' +
        ' '
      
        '  :NEW_CMD_TEMPOTOTAL, :NEW_CMD_TEMPOTOTALDEC, :NEW_CMD_TEMPOTOT' +
        'ALMIN, '
      
        '  :NEW_CMD_TOTALITENS, :NEW_CMD_TROCO, :NEW_CMD_USUARIO, :NEW_CM' +
        'D_VALORCOMISSAO, '
      '  :NEW_CMD_VALORPAGAR, :NEW_CMD_VALORPAGO, :NEW_CMD_VALORTOTAL, '
      '  :NEW_CMD_VENDEDOR)'
      
        'RETURNING CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CM' +
        'D_DATA, CMD_DATABAIXA, CMD_DESCPORC, CMD_DESCVALOR, CMD_DINHEIRO' +
        ', CMD_DTATUALIZACAO, CMD_DTCADASTRO, CMD_HORAFIM, CMD_HORAFIMMIN' +
        ', CMD_HORAINICIO, CMD_HORAINICIOMIN, CMD_HRATUALIZACAO, CMD_HRCA' +
        'DASTRO, CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, CMD_TEMP' +
        'OTOTAL, CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, CMD_TOTALITENS, CM' +
        'D_TROCO, CMD_USUARIO, CMD_VALORCOMISSAO, CMD_VALORPAGAR, CMD_VAL' +
        'ORPAGO, CMD_VALORTOTAL, CMD_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE COMANDAS'
      
        'SET CMD_CLIENTE = :NEW_CMD_CLIENTE, CMD_CODIGO = :NEW_CMD_CODIGO' +
        ', '
      
        '  CMD_COMANDA = :NEW_CMD_COMANDA, CMD_COMISSAO = :NEW_CMD_COMISS' +
        'AO, '
      '  CMD_DATA = :NEW_CMD_DATA, CMD_DATABAIXA = :NEW_CMD_DATABAIXA, '
      
        '  CMD_DESCPORC = :NEW_CMD_DESCPORC, CMD_DESCVALOR = :NEW_CMD_DES' +
        'CVALOR, '
      
        '  CMD_DINHEIRO = :NEW_CMD_DINHEIRO, CMD_DTATUALIZACAO = :NEW_CMD' +
        '_DTATUALIZACAO, '
      
        '  CMD_DTCADASTRO = :NEW_CMD_DTCADASTRO, CMD_HORAFIM = :NEW_CMD_H' +
        'ORAFIM, '
      
        '  CMD_HORAFIMMIN = :NEW_CMD_HORAFIMMIN, CMD_HORAINICIO = :NEW_CM' +
        'D_HORAINICIO, '
      
        '  CMD_HORAINICIOMIN = :NEW_CMD_HORAINICIOMIN, CMD_HRATUALIZACAO ' +
        '= :NEW_CMD_HRATUALIZACAO, '
      
        '  CMD_HRCADASTRO = :NEW_CMD_HRCADASTRO, CMD_OBSERVACOES = :NEW_C' +
        'MD_OBSERVACOES, '
      
        '  CMD_SEQUENCIAITEM = :NEW_CMD_SEQUENCIAITEM, CMD_STATUS = :NEW_' +
        'CMD_STATUS, '
      
        '  CMD_TEMPOTOTAL = :NEW_CMD_TEMPOTOTAL, CMD_TEMPOTOTALDEC = :NEW' +
        '_CMD_TEMPOTOTALDEC, '
      
        '  CMD_TEMPOTOTALMIN = :NEW_CMD_TEMPOTOTALMIN, CMD_TOTALITENS = :' +
        'NEW_CMD_TOTALITENS, '
      '  CMD_TROCO = :NEW_CMD_TROCO, CMD_USUARIO = :NEW_CMD_USUARIO, '
      
        '  CMD_VALORCOMISSAO = :NEW_CMD_VALORCOMISSAO, CMD_VALORPAGAR = :' +
        'NEW_CMD_VALORPAGAR, '
      
        '  CMD_VALORPAGO = :NEW_CMD_VALORPAGO, CMD_VALORTOTAL = :NEW_CMD_' +
        'VALORTOTAL, '
      '  CMD_VENDEDOR = :NEW_CMD_VENDEDOR'
      'WHERE CMD_CODIGO = :OLD_CMD_CODIGO'
      
        'RETURNING CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CM' +
        'D_DATA, CMD_DATABAIXA, CMD_DESCPORC, CMD_DESCVALOR, CMD_DINHEIRO' +
        ', CMD_DTATUALIZACAO, CMD_DTCADASTRO, CMD_HORAFIM, CMD_HORAFIMMIN' +
        ', CMD_HORAINICIO, CMD_HORAINICIOMIN, CMD_HRATUALIZACAO, CMD_HRCA' +
        'DASTRO, CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, CMD_TEMP' +
        'OTOTAL, CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, CMD_TOTALITENS, CM' +
        'D_TROCO, CMD_USUARIO, CMD_VALORCOMISSAO, CMD_VALORPAGAR, CMD_VAL' +
        'ORPAGO, CMD_VALORTOTAL, CMD_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM COMANDAS'
      'WHERE CMD_CODIGO = :OLD_CMD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CMD_D' +
        'ATA, '
      '  CMD_DATABAIXA, CMD_DESCPORC, CMD_DESCVALOR, CMD_DINHEIRO, '
      
        '  CMD_DTATUALIZACAO, CMD_DTCADASTRO, CMD_HORAFIM, CMD_HORAFIMMIN' +
        ', '
      
        '  CMD_HORAINICIO, CMD_HORAINICIOMIN, CMD_HRATUALIZACAO, CMD_HRCA' +
        'DASTRO, '
      
        '  CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, CMD_TEMPOTOTAL' +
        ', '
      
        '  CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, CMD_TOTALITENS, CMD_TROC' +
        'O, '
      
        '  CMD_USUARIO, CMD_VALORCOMISSAO, CMD_VALORPAGAR, CMD_VALORPAGO,' +
        ' '
      '  CMD_VALORTOTAL, CMD_VENDEDOR'
      'FROM COMANDAS'
      'WHERE CMD_CODIGO = :OLD_CMD_CODIGO')
    Left = 448
    Top = 56
  end
  object TBComandas: TFDQuery
    BeforeInsert = TBComandasBeforeInsert
    AfterInsert = TBComandasAfterInsert
    BeforeEdit = TBComandasBeforeEdit
    AfterEdit = TBComandasAfterEdit
    BeforePost = TBComandasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRComandas
    UpdateObject = UPComandas
    SQL.Strings = (
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
      'CMD_DTCADASTRO,'
      'CMD_HORAINICIO,'
      'CMD_HORAINICIOMIN,'
      'CMD_HORAFIM,'
      'CMD_HORAFIMMIN,'
      'CMD_HRATUALIZACAO,'
      'CMD_HRCADASTRO,'
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
      'where CMD_CODIGO=:codigo'
      '')
    Left = 448
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBComandasCMD_CLIENTE: TIntegerField
      FieldName = 'CMD_CLIENTE'
      Origin = 'CMD_CLIENTE'
      Required = True
    end
    object TBComandasCMD_CODIGO: TIntegerField
      FieldName = 'CMD_CODIGO'
      Origin = 'CMD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBComandasCMD_COMANDA: TIntegerField
      FieldName = 'CMD_COMANDA'
      Origin = 'CMD_COMANDA'
      Required = True
    end
    object TBComandasCMD_COMISSAO: TFMTBCDField
      FieldName = 'CMD_COMISSAO'
      Origin = 'CMD_COMISSAO'
      Precision = 18
    end
    object TBComandasCMD_DATA: TDateField
      FieldName = 'CMD_DATA'
      Origin = 'CMD_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBComandasCMD_DATABAIXA: TDateField
      FieldName = 'CMD_DATABAIXA'
      Origin = 'CMD_DATABAIXA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBComandasCMD_DESCPORC: TFMTBCDField
      FieldName = 'CMD_DESCPORC'
      Origin = 'CMD_DESCPORC'
      Precision = 18
    end
    object TBComandasCMD_DESCVALOR: TFMTBCDField
      FieldName = 'CMD_DESCVALOR'
      Origin = 'CMD_DESCVALOR'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_DINHEIRO: TFMTBCDField
      FieldName = 'CMD_DINHEIRO'
      Origin = 'CMD_DINHEIRO'
      Precision = 18
    end
    object TBComandasCMD_DTATUALIZACAO: TDateField
      FieldName = 'CMD_DTATUALIZACAO'
      Origin = 'CMD_DTATUALIZACAO'
    end
    object TBComandasCMD_DTCADASTRO: TDateField
      FieldName = 'CMD_DTCADASTRO'
      Origin = 'CMD_DTCADASTRO'
    end
    object TBComandasCMD_HORAINICIO: TTimeField
      FieldName = 'CMD_HORAINICIO'
      Origin = 'CMD_HORAINICIO'
      EditMask = '!00:00:99;1;_'
    end
    object TBComandasCMD_HORAINICIOMIN: TIntegerField
      FieldName = 'CMD_HORAINICIOMIN'
      Origin = 'CMD_HORAINICIOMIN'
    end
    object TBComandasCMD_HORAFIM: TTimeField
      FieldName = 'CMD_HORAFIM'
      Origin = 'CMD_HORAFIM'
      EditMask = '!00:00:99;1;_'
    end
    object TBComandasCMD_HORAFIMMIN: TIntegerField
      FieldName = 'CMD_HORAFIMMIN'
      Origin = 'CMD_HORAFIMMIN'
    end
    object TBComandasCMD_HRATUALIZACAO: TTimeField
      FieldName = 'CMD_HRATUALIZACAO'
      Origin = 'CMD_HRATUALIZACAO'
    end
    object TBComandasCMD_HRCADASTRO: TTimeField
      FieldName = 'CMD_HRCADASTRO'
      Origin = 'CMD_HRCADASTRO'
    end
    object TBComandasCMD_OBSERVACOES: TMemoField
      FieldName = 'CMD_OBSERVACOES'
      Origin = 'CMD_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBComandasCMD_SEQUENCIAITEM: TIntegerField
      FieldName = 'CMD_SEQUENCIAITEM'
      Origin = 'CMD_SEQUENCIAITEM'
    end
    object TBComandasCMD_STATUS: TStringField
      FieldName = 'CMD_STATUS'
      Origin = 'CMD_STATUS'
      Size = 1
    end
    object TBComandasCMD_TEMPOTOTAL: TStringField
      FieldName = 'CMD_TEMPOTOTAL'
      Origin = 'CMD_TEMPOTOTAL'
      Size = 25
    end
    object TBComandasCMD_TEMPOTOTALDEC: TFMTBCDField
      FieldName = 'CMD_TEMPOTOTALDEC'
      Origin = 'CMD_TEMPOTOTALDEC'
      Precision = 18
    end
    object TBComandasCMD_TEMPOTOTALMIN: TIntegerField
      FieldName = 'CMD_TEMPOTOTALMIN'
      Origin = 'CMD_TEMPOTOTALMIN'
    end
    object TBComandasCMD_TOTALITENS: TFMTBCDField
      FieldName = 'CMD_TOTALITENS'
      Origin = 'CMD_TOTALITENS'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_TROCO: TFMTBCDField
      FieldName = 'CMD_TROCO'
      Origin = 'CMD_TROCO'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_USUARIO: TStringField
      FieldName = 'CMD_USUARIO'
      Origin = 'CMD_USUARIO'
    end
    object TBComandasCMD_VALORCOMISSAO: TFMTBCDField
      FieldName = 'CMD_VALORCOMISSAO'
      Origin = 'CMD_VALORCOMISSAO'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_VALORPAGAR: TFMTBCDField
      FieldName = 'CMD_VALORPAGAR'
      Origin = 'CMD_VALORPAGAR'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_VALORPAGO: TFMTBCDField
      FieldName = 'CMD_VALORPAGO'
      Origin = 'CMD_VALORPAGO'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_VALORTOTAL: TFMTBCDField
      FieldName = 'CMD_VALORTOTAL'
      Origin = 'CMD_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBComandasCMD_VENDEDOR: TIntegerField
      FieldName = 'CMD_VENDEDOR'
      Origin = 'CMD_VENDEDOR'
      Required = True
    end
    object TBComandasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBComandasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRComandasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 88
  end
  object UPComandasItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO COMANDASITENS'
      '(CDI_CODIGO, CDI_COMANDA, CDI_DESCRICAO, CDI_ITEM, '
      '  CDI_OBSERVACOES, CDI_PAGO, CDI_PRODUTO, CDI_QUANTIDADE, '
      '  CDI_TIPO, CDI_VALORTOTAL, CDI_VALORUNITARIO)'
      
        'VALUES (gen_id(GEN_COMANDASITENS,1), :NEW_CDI_COMANDA, :NEW_CDI_' +
        'DESCRICAO, :NEW_CDI_ITEM, '
      
        '  :NEW_CDI_OBSERVACOES, :NEW_CDI_PAGO, :NEW_CDI_PRODUTO, :NEW_CD' +
        'I_QUANTIDADE, '
      '  :NEW_CDI_TIPO, :NEW_CDI_VALORTOTAL, :NEW_CDI_VALORUNITARIO)'
      
        'RETURNING CDI_CODIGO, CDI_COMANDA, CDI_DESCRICAO, CDI_ITEM, CDI_' +
        'OBSERVACOES, CDI_PAGO, CDI_PRODUTO, CDI_QUANTIDADE, CDI_TIPO, CD' +
        'I_VALORTOTAL, CDI_VALORUNITARIO')
    ModifySQL.Strings = (
      'UPDATE COMANDASITENS'
      
        'SET CDI_CODIGO = :NEW_CDI_CODIGO, CDI_COMANDA = :NEW_CDI_COMANDA' +
        ', '
      '  CDI_DESCRICAO = :NEW_CDI_DESCRICAO, CDI_ITEM = :NEW_CDI_ITEM, '
      
        '  CDI_OBSERVACOES = :NEW_CDI_OBSERVACOES, CDI_PAGO = :NEW_CDI_PA' +
        'GO, '
      
        '  CDI_PRODUTO = :NEW_CDI_PRODUTO, CDI_QUANTIDADE = :NEW_CDI_QUAN' +
        'TIDADE, '
      
        '  CDI_TIPO = :NEW_CDI_TIPO, CDI_VALORTOTAL = :NEW_CDI_VALORTOTAL' +
        ', '
      '  CDI_VALORUNITARIO = :NEW_CDI_VALORUNITARIO'
      'WHERE CDI_CODIGO = :OLD_CDI_CODIGO'
      
        'RETURNING CDI_CODIGO, CDI_COMANDA, CDI_DESCRICAO, CDI_ITEM, CDI_' +
        'OBSERVACOES, CDI_PAGO, CDI_PRODUTO, CDI_QUANTIDADE, CDI_TIPO, CD' +
        'I_VALORTOTAL, CDI_VALORUNITARIO')
    DeleteSQL.Strings = (
      'DELETE FROM COMANDASITENS'
      'WHERE CDI_CODIGO = :OLD_CDI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CDI_CODIGO, CDI_COMANDA, CDI_DESCRICAO, CDI_ITEM, CDI_OBS' +
        'ERVACOES, '
      
        '  CDI_PAGO, CDI_PRODUTO, CDI_QUANTIDADE, CDI_TIPO, CDI_VALORTOTA' +
        'L, '
      '  CDI_VALORUNITARIO'
      'FROM COMANDASITENS'
      'WHERE CDI_CODIGO = :OLD_CDI_CODIGO')
    Left = 480
    Top = 56
  end
  object TBComandasItens: TFDQuery
    AfterInsert = TBComandasItensAfterInsert
    BeforePost = TBComandasItensBeforePost
    AfterPost = TBComandasItensAfterPost
    MasterSource = DSComandas
    MasterFields = 'CMD_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRComandasItens
    UpdateObject = UPComandasItens
    SQL.Strings = (
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
      'where CDI_COMANDA=:CMD_CODIGO'
      '')
    Left = 480
    Top = 24
    ParamData = <
      item
        Name = 'CMD_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBComandasItensCDI_CODIGO: TIntegerField
      FieldName = 'CDI_CODIGO'
      Origin = 'CDI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBComandasItensCDI_COMANDA: TIntegerField
      FieldName = 'CDI_COMANDA'
      Origin = 'CDI_COMANDA'
      Required = True
    end
    object TBComandasItensCDI_DESCRICAO: TStringField
      FieldName = 'CDI_DESCRICAO'
      Origin = 'CDI_DESCRICAO'
      Size = 80
    end
    object TBComandasItensCDI_ITEM: TIntegerField
      FieldName = 'CDI_ITEM'
      Origin = 'CDI_ITEM'
    end
    object TBComandasItensCDI_OBSERVACOES: TStringField
      FieldName = 'CDI_OBSERVACOES'
      Origin = 'CDI_OBSERVACOES'
      Size = 50
    end
    object TBComandasItensCDI_PAGO: TStringField
      FieldName = 'CDI_PAGO'
      Origin = 'CDI_PAGO'
      Size = 1
    end
    object TBComandasItensCDI_PRODUTO: TIntegerField
      FieldName = 'CDI_PRODUTO'
      Origin = 'CDI_PRODUTO'
      Required = True
    end
    object TBComandasItensCDI_QUANTIDADE: TFMTBCDField
      FieldName = 'CDI_QUANTIDADE'
      Origin = 'CDI_QUANTIDADE'
      Precision = 18
    end
    object TBComandasItensCDI_TIPO: TStringField
      FieldName = 'CDI_TIPO'
      Origin = 'CDI_TIPO'
      Size = 1
    end
    object TBComandasItensCDI_VALORTOTAL: TFMTBCDField
      FieldName = 'CDI_VALORTOTAL'
      Origin = 'CDI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBComandasItensCDI_VALORUNITARIO: TFMTBCDField
      FieldName = 'CDI_VALORUNITARIO'
      Origin = 'CDI_VALORUNITARIO'
      currency = True
      Precision = 18
    end
  end
  object TRConsultas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 512
    Top = 88
  end
  object UPConsultas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONSULTAS'
      '(COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, '
      '  COS_DATAINICIO, COS_DTATUALIZACAO, COS_DTCADASTRO, '
      '  COS_FIM, COS_HORAFIM, COS_HORAINICIO, COS_HRATUALIZACAO, '
      '  COS_HRCADASTRO, COS_INICIO, COS_MEDICO, COS_SOLICITANTE, '
      '  COS_STATUS, COS_USUARIO, COS_VALORTOTAL)'
      
        'VALUES (:NEW_COS_CLIENTE, gen_id(GEN_CONSULTAS,1), :NEW_COS_CONV' +
        'ENIO, :NEW_COS_DATAFIM, '
      
        '  :NEW_COS_DATAINICIO, :NEW_COS_DTATUALIZACAO, :NEW_COS_DTCADAST' +
        'RO, '
      
        '  :NEW_COS_FIM, :NEW_COS_HORAFIM, :NEW_COS_HORAINICIO, :NEW_COS_' +
        'HRATUALIZACAO, '
      
        '  :NEW_COS_HRCADASTRO, :NEW_COS_INICIO, :NEW_COS_MEDICO, :NEW_CO' +
        'S_SOLICITANTE, '
      '  :NEW_COS_STATUS, :NEW_COS_USUARIO, :NEW_COS_VALORTOTAL)'
      
        'RETURNING COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, CO' +
        'S_DATAINICIO, COS_DTATUALIZACAO, COS_DTCADASTRO, COS_FIM, COS_HO' +
        'RAFIM, COS_HORAINICIO, COS_HRATUALIZACAO, COS_HRCADASTRO, COS_IN' +
        'ICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, COS_USUARIO, COS_' +
        'VALORTOTAL')
    ModifySQL.Strings = (
      'UPDATE CONSULTAS'
      
        'SET COS_CLIENTE = :NEW_COS_CLIENTE, COS_CODIGO = :NEW_COS_CODIGO' +
        ', '
      
        '  COS_CONVENIO = :NEW_COS_CONVENIO, COS_DATAFIM = :NEW_COS_DATAF' +
        'IM, '
      
        '  COS_DATAINICIO = :NEW_COS_DATAINICIO, COS_DTATUALIZACAO = :NEW' +
        '_COS_DTATUALIZACAO, '
      '  COS_DTCADASTRO = :NEW_COS_DTCADASTRO, COS_FIM = :NEW_COS_FIM, '
      
        '  COS_HORAFIM = :NEW_COS_HORAFIM, COS_HORAINICIO = :NEW_COS_HORA' +
        'INICIO, '
      
        '  COS_HRATUALIZACAO = :NEW_COS_HRATUALIZACAO, COS_HRCADASTRO = :' +
        'NEW_COS_HRCADASTRO, '
      '  COS_INICIO = :NEW_COS_INICIO, COS_MEDICO = :NEW_COS_MEDICO, '
      
        '  COS_SOLICITANTE = :NEW_COS_SOLICITANTE, COS_STATUS = :NEW_COS_' +
        'STATUS, '
      
        '  COS_USUARIO = :NEW_COS_USUARIO, COS_VALORTOTAL = :NEW_COS_VALO' +
        'RTOTAL'
      'WHERE COS_CODIGO = :OLD_COS_CODIGO'
      
        'RETURNING COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, CO' +
        'S_DATAINICIO, COS_DTATUALIZACAO, COS_DTCADASTRO, COS_FIM, COS_HO' +
        'RAFIM, COS_HORAINICIO, COS_HRATUALIZACAO, COS_HRCADASTRO, COS_IN' +
        'ICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, COS_USUARIO, COS_' +
        'VALORTOTAL')
    DeleteSQL.Strings = (
      'DELETE FROM CONSULTAS'
      'WHERE COS_CODIGO = :OLD_COS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, COS_D' +
        'ATAINICIO, '
      '  COS_DTATUALIZACAO, COS_DTCADASTRO, COS_FIM, COS_HORAFIM, '
      
        '  COS_HORAINICIO, COS_HRATUALIZACAO, COS_HRCADASTRO, COS_INICIO,' +
        ' '
      
        '  COS_MEDICO, COS_SOLICITANTE, COS_STATUS, COS_USUARIO, COS_VALO' +
        'RTOTAL'
      'FROM CONSULTAS'
      'WHERE COS_CODIGO = :OLD_COS_CODIGO')
    Left = 512
    Top = 56
  end
  object TBConsultas: TFDQuery
    BeforeInsert = TBConsultasBeforeInsert
    AfterInsert = TBConsultasAfterInsert
    BeforeEdit = TBConsultasBeforeEdit
    BeforePost = TBConsultasBeforePost
    AfterPost = TBConsultasAfterPost
    Connection = DM.FDConnection1
    Transaction = TRConsultas
    UpdateObject = UPConsultas
    SQL.Strings = (
      'select '
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAFIM,'
      'COS_DATAINICIO,'
      'COS_DTATUALIZACAO,'
      'COS_DTCADASTRO,'
      'COS_FIM,'
      'COS_HORAFIM,'
      'COS_HORAINICIO,'
      'COS_HRATUALIZACAO,'
      'COS_HRCADASTRO,'
      'COS_INICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_USUARIO,'
      'COS_VALORTOTAL,'
      'A.CLI_DTNASC,'
      'A.CLI_FONE1,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'B.CLI_REGPROFISSIONAL,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'where COS_CODIGO=:codigo'
      '')
    Left = 512
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBConsultasCOS_CLIENTE: TIntegerField
      FieldName = 'COS_CLIENTE'
      Origin = 'COS_CLIENTE'
      Required = True
    end
    object TBConsultasCOS_CODIGO: TIntegerField
      FieldName = 'COS_CODIGO'
      Origin = 'COS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBConsultasCOS_CONVENIO: TIntegerField
      FieldName = 'COS_CONVENIO'
      Origin = 'COS_CONVENIO'
      Required = True
    end
    object TBConsultasCOS_DATAFIM: TDateField
      FieldName = 'COS_DATAFIM'
      Origin = 'COS_DATAFIM'
      EditMask = '!99/99/9999;1;_'
    end
    object TBConsultasCOS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
      Origin = 'COS_DATAINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBConsultasCOS_DTATUALIZACAO: TDateField
      FieldName = 'COS_DTATUALIZACAO'
      Origin = 'COS_DTATUALIZACAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBConsultasCOS_DTCADASTRO: TDateField
      FieldName = 'COS_DTCADASTRO'
      Origin = 'COS_DTCADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBConsultasCOS_FIM: TSQLTimeStampField
      FieldName = 'COS_FIM'
      Origin = 'COS_FIM'
    end
    object TBConsultasCOS_HORAFIM: TTimeField
      FieldName = 'COS_HORAFIM'
      Origin = 'COS_HORAFIM'
      EditMask = '!99:99:99;1;_'
    end
    object TBConsultasCOS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
      Origin = 'COS_HORAINICIO'
      EditMask = '!99:99:99;1;_'
    end
    object TBConsultasCOS_HRATUALIZACAO: TTimeField
      FieldName = 'COS_HRATUALIZACAO'
      Origin = 'COS_HRATUALIZACAO'
    end
    object TBConsultasCOS_HRCADASTRO: TTimeField
      FieldName = 'COS_HRCADASTRO'
      Origin = 'COS_HRCADASTRO'
    end
    object TBConsultasCOS_INICIO: TSQLTimeStampField
      FieldName = 'COS_INICIO'
      Origin = 'COS_INICIO'
    end
    object TBConsultasCOS_MEDICO: TIntegerField
      FieldName = 'COS_MEDICO'
      Origin = 'COS_MEDICO'
      Required = True
    end
    object TBConsultasCOS_SOLICITANTE: TIntegerField
      FieldName = 'COS_SOLICITANTE'
      Origin = 'COS_SOLICITANTE'
      Required = True
    end
    object TBConsultasCOS_STATUS: TStringField
      FieldName = 'COS_STATUS'
      Origin = 'COS_STATUS'
      Size = 1
    end
    object TBConsultasCOS_USUARIO: TStringField
      FieldName = 'COS_USUARIO'
      Origin = 'COS_USUARIO'
    end
    object TBConsultasCOS_VALORTOTAL: TFMTBCDField
      FieldName = 'COS_VALORTOTAL'
      Origin = 'COS_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBConsultasCLI_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
      ProviderFlags = []
    end
    object TBConsultasCLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
    end
    object TBConsultasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBConsultasCLI_NOMESOLICITANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOMESOLICITANTE'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBConsultasCLI_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = 'CLI_REGPROFISSIONAL'
      ProviderFlags = []
    end
    object TBConsultasCOV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COV_DESCRICAO'
      Origin = 'COV_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBConsultasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRConsultasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 88
  end
  object UPConsultasItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONSULTASITENS'
      '(CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, '
      '  CSI_SIGLA, CSI_VALOR)'
      
        'VALUES (gen_id(GEN_CONSULTASITENS,1), :NEW_CSI_CONSULTA, :NEW_CS' +
        'I_DESCRICAO, :NEW_CSI_EXAME, '
      '  :NEW_CSI_SIGLA, :NEW_CSI_VALOR)'
      
        'RETURNING CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, CS' +
        'I_SIGLA, CSI_VALOR')
    ModifySQL.Strings = (
      'UPDATE CONSULTASITENS'
      
        'SET CSI_CODIGO = :NEW_CSI_CODIGO, CSI_CONSULTA = :NEW_CSI_CONSUL' +
        'TA, '
      
        '  CSI_DESCRICAO = :NEW_CSI_DESCRICAO, CSI_EXAME = :NEW_CSI_EXAME' +
        ', '
      '  CSI_SIGLA = :NEW_CSI_SIGLA, CSI_VALOR = :NEW_CSI_VALOR'
      'WHERE CSI_CODIGO = :OLD_CSI_CODIGO'
      
        'RETURNING CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, CS' +
        'I_SIGLA, CSI_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM CONSULTASITENS'
      'WHERE CSI_CODIGO = :OLD_CSI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, CSI_S' +
        'IGLA, '
      '  CSI_VALOR'
      'FROM CONSULTASITENS'
      'WHERE CSI_CODIGO = :OLD_CSI_CODIGO')
    Left = 544
    Top = 56
  end
  object TBConsultasItens: TFDQuery
    AfterInsert = TBConsultasItensAfterInsert
    AfterPost = TBConsultasItensAfterPost
    MasterSource = DSConsultas
    MasterFields = 'COS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRConsultasItens
    UpdateObject = UPConsultasItens
    SQL.Strings = (
      'select '
      'CSI_CODIGO,'
      'CSI_CONSULTA,'
      'CSI_EXAME,'
      'CSI_DESCRICAO,'
      'CSI_SIGLA,'
      'CSI_VALOR'
      'from CONSULTASITENS'
      'where CSI_CONSULTA=:COS_CODIGO'
      'order by CSI_CODIGO'
      '')
    Left = 544
    Top = 24
    ParamData = <
      item
        Name = 'COS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBConsultasItensCSI_CODIGO: TIntegerField
      FieldName = 'CSI_CODIGO'
      Origin = 'CSI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBConsultasItensCSI_CONSULTA: TIntegerField
      FieldName = 'CSI_CONSULTA'
      Origin = 'CSI_CONSULTA'
      Required = True
    end
    object TBConsultasItensCSI_EXAME: TIntegerField
      FieldName = 'CSI_EXAME'
      Origin = 'CSI_EXAME'
      Required = True
    end
    object TBConsultasItensCSI_DESCRICAO: TStringField
      FieldName = 'CSI_DESCRICAO'
      Origin = 'CSI_DESCRICAO'
      Size = 120
    end
    object TBConsultasItensCSI_SIGLA: TStringField
      FieldName = 'CSI_SIGLA'
      Origin = 'CSI_SIGLA'
      Size = 10
    end
    object TBConsultasItensCSI_VALOR: TFMTBCDField
      FieldName = 'CSI_VALOR'
      Origin = 'CSI_VALOR'
      currency = True
      Precision = 18
    end
  end
  object TRConteudos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 608
    Top = 88
  end
  object UPConteudos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONTEUDOS'
      '(CTO_CALENDARIO, CTO_CODIGO, CTO_CONTEUDO, CTO_DTATUALIZACAO, '
      '  CTO_DTCADASTRO, CTO_HRATUALIZACAO, CTO_HRCADASTRO, '
      '  CTO_USUARIO)'
      
        'VALUES (:NEW_CTO_CALENDARIO, gen_id(GEN_CONTEUDOS,1), :NEW_CTO_C' +
        'ONTEUDO, :NEW_CTO_DTATUALIZACAO, '
      
        '  :NEW_CTO_DTCADASTRO, :NEW_CTO_HRATUALIZACAO, :NEW_CTO_HRCADAST' +
        'RO, '
      '  :NEW_CTO_USUARIO)'
      
        'RETURNING CTO_CALENDARIO, CTO_CODIGO, CTO_CONTEUDO, CTO_DTATUALI' +
        'ZACAO, CTO_DTCADASTRO, CTO_HRATUALIZACAO, CTO_HRCADASTRO, CTO_US' +
        'UARIO')
    ModifySQL.Strings = (
      'UPDATE CONTEUDOS'
      
        'SET CTO_CALENDARIO = :NEW_CTO_CALENDARIO, CTO_CODIGO = :NEW_CTO_' +
        'CODIGO, '
      
        '  CTO_CONTEUDO = :NEW_CTO_CONTEUDO, CTO_DTATUALIZACAO = :NEW_CTO' +
        '_DTATUALIZACAO, '
      
        '  CTO_DTCADASTRO = :NEW_CTO_DTCADASTRO, CTO_HRATUALIZACAO = :NEW' +
        '_CTO_HRATUALIZACAO, '
      
        '  CTO_HRCADASTRO = :NEW_CTO_HRCADASTRO, CTO_USUARIO = :NEW_CTO_U' +
        'SUARIO'
      'WHERE CTO_CODIGO = :OLD_CTO_CODIGO'
      
        'RETURNING CTO_CALENDARIO, CTO_CODIGO, CTO_CONTEUDO, CTO_DTATUALI' +
        'ZACAO, CTO_DTCADASTRO, CTO_HRATUALIZACAO, CTO_HRCADASTRO, CTO_US' +
        'UARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CONTEUDOS'
      'WHERE CTO_CODIGO = :OLD_CTO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTO_CALENDARIO, CTO_CODIGO, CTO_CONTEUDO, CTO_DTATUALIZAC' +
        'AO, '
      '  CTO_DTCADASTRO, CTO_HRATUALIZACAO, CTO_HRCADASTRO, CTO_USUARIO'
      'FROM CONTEUDOS'
      'WHERE CTO_CODIGO = :OLD_CTO_CODIGO')
    Left = 608
    Top = 56
  end
  object TBConteudos: TFDQuery
    BeforeInsert = TBConteudosBeforeInsert
    AfterInsert = TBConteudosAfterInsert
    BeforeEdit = TBConteudosBeforeEdit
    BeforePost = TBConteudosBeforePost
    MasterSource = DSCalendarios
    MasterFields = 'CAL_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRConteudos
    UpdateObject = UPConteudos
    SQL.Strings = (
      'select'
      'CTO_CALENDARIO,'
      'CTO_CODIGO,'
      'CTO_CONTEUDO,'
      'CTO_DTATUALIZACAO,'
      'CTO_DTCADASTRO,'
      'CTO_HRATUALIZACAO,'
      'CTO_HRCADASTRO,'
      'CTO_USUARIO'
      'from CONTEUDOS'
      'where CTO_CALENDARIO=:CAL_CODIGO'
      '')
    Left = 608
    Top = 24
    ParamData = <
      item
        Name = 'CAL_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBConteudosCTO_CALENDARIO: TIntegerField
      FieldName = 'CTO_CALENDARIO'
      Origin = 'CTO_CALENDARIO'
      Required = True
    end
    object TBConteudosCTO_CODIGO: TIntegerField
      FieldName = 'CTO_CODIGO'
      Origin = 'CTO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBConteudosCTO_CONTEUDO: TMemoField
      FieldName = 'CTO_CONTEUDO'
      Origin = 'CTO_CONTEUDO'
      BlobType = ftMemo
    end
    object TBConteudosCTO_DTATUALIZACAO: TDateField
      FieldName = 'CTO_DTATUALIZACAO'
      Origin = 'CTO_DTATUALIZACAO'
    end
    object TBConteudosCTO_DTCADASTRO: TDateField
      FieldName = 'CTO_DTCADASTRO'
      Origin = 'CTO_DTCADASTRO'
    end
    object TBConteudosCTO_HRATUALIZACAO: TTimeField
      FieldName = 'CTO_HRATUALIZACAO'
      Origin = 'CTO_HRATUALIZACAO'
    end
    object TBConteudosCTO_HRCADASTRO: TTimeField
      FieldName = 'CTO_HRCADASTRO'
      Origin = 'CTO_HRCADASTRO'
    end
    object TBConteudosCTO_USUARIO: TStringField
      FieldName = 'CTO_USUARIO'
      Origin = 'CTO_USUARIO'
    end
  end
  object TRContratos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 640
    Top = 88
  end
  object UPContratos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONTRATOS'
      '(CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, '
      '  CTI_AVALISTA2CPF, CTI_CODIGO, CTI_DESCPARCELAPORC, '
      '  CTI_DESCPARCELAQTDE, CTI_DESCPARCELAVALOR, CTI_DESCPORCVECTO, '
      '  CTI_DIAVENCIMENTO, CTI_DTATUALIZACAO, CTI_DTCADASTRO, '
      '  CTI_FINALIDADE, CTI_HRATUALIZACAO, CTI_HRCADASTRO, '
      '  CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, '
      '  CTI_LOCADORCEP, CTI_LOCADORCIDADE, CTI_LOCADORCIDADECODIGO, '
      '  CTI_LOCADORCNPJ, CTI_LOCADORCOMPLEMENTO, CTI_LOCADORCPF, '
      
        '  CTI_LOCADORENDERECO, CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVIL' +
        ', '
      '  CTI_LOCADORNOME, CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, '
      '  CTI_MEMOPAGAR, CTI_MEMORECEBER, CTI_STATUS, '
      '  CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF, CTI_TESTEMUNHA2, '
      '  CTI_TESTEMUNHA2CPF, CTI_USUARIO, CTI_VALORALUGUEL, '
      '  CTI_VALORALUGUELVECTO, CTI_VIGENCIAFIM, CTI_VIGENCIAINICIO, '
      '  CTI_VIGENCIATOTAL)'
      
        'VALUES (:NEW_CTI_AVALISTA1, :NEW_CTI_AVALISTA1CPF, :NEW_CTI_AVAL' +
        'ISTA2, '
      
        '  :NEW_CTI_AVALISTA2CPF, gen_id(GEN_CONTRATOS,1), :NEW_CTI_DESCP' +
        'ARCELAPORC, '
      
        '  :NEW_CTI_DESCPARCELAQTDE, :NEW_CTI_DESCPARCELAVALOR, :NEW_CTI_' +
        'DESCPORCVECTO, '
      
        '  :NEW_CTI_DIAVENCIMENTO, :NEW_CTI_DTATUALIZACAO, :NEW_CTI_DTCAD' +
        'ASTRO, '
      
        '  :NEW_CTI_FINALIDADE, :NEW_CTI_HRATUALIZACAO, :NEW_CTI_HRCADAST' +
        'RO, '
      '  :NEW_CTI_IMOVEL, :NEW_CTI_LOCADOR, :NEW_CTI_LOCADORBAIRRO, '
      
        '  :NEW_CTI_LOCADORCEP, :NEW_CTI_LOCADORCIDADE, :NEW_CTI_LOCADORC' +
        'IDADECODIGO, '
      
        '  :NEW_CTI_LOCADORCNPJ, :NEW_CTI_LOCADORCOMPLEMENTO, :NEW_CTI_LO' +
        'CADORCPF, '
      
        '  :NEW_CTI_LOCADORENDERECO, :NEW_CTI_LOCADORESTADO, :NEW_CTI_LOC' +
        'ADORESTADOCIVIL, '
      
        '  :NEW_CTI_LOCADORNOME, :NEW_CTI_LOCADORNUMERO, :NEW_CTI_LOCADOR' +
        'TIPOPESSOA, '
      '  :NEW_CTI_MEMOPAGAR, :NEW_CTI_MEMORECEBER, :NEW_CTI_STATUS, '
      
        '  :NEW_CTI_TESTEMUNHA1, :NEW_CTI_TESTEMUNHA1CPF, :NEW_CTI_TESTEM' +
        'UNHA2, '
      
        '  :NEW_CTI_TESTEMUNHA2CPF, :NEW_CTI_USUARIO, :NEW_CTI_VALORALUGU' +
        'EL, '
      
        '  :NEW_CTI_VALORALUGUELVECTO, :NEW_CTI_VIGENCIAFIM, :NEW_CTI_VIG' +
        'ENCIAINICIO, '
      '  :NEW_CTI_VIGENCIATOTAL)'
      
        'RETURNING CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, CTI_AV' +
        'ALISTA2CPF, CTI_CODIGO, CTI_DESCPARCELAPORC, CTI_DESCPARCELAQTDE' +
        ', CTI_DESCPARCELAVALOR, CTI_DESCPORCVECTO, CTI_DIAVENCIMENTO, CT' +
        'I_DTATUALIZACAO, CTI_DTCADASTRO, CTI_FINALIDADE, CTI_HRATUALIZAC' +
        'AO, CTI_HRCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, ' +
        'CTI_LOCADORCEP, CTI_LOCADORCIDADE, CTI_LOCADORCIDADECODIGO, CTI_' +
        'LOCADORCNPJ, CTI_LOCADORCOMPLEMENTO, CTI_LOCADORCPF, CTI_LOCADOR' +
        'ENDERECO, CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVIL, CTI_LOCADOR' +
        'NOME, CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, CTI_MEMOPAGAR, C' +
        'TI_MEMORECEBER, CTI_STATUS, CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF,' +
        ' CTI_TESTEMUNHA2, CTI_TESTEMUNHA2CPF, CTI_USUARIO, CTI_VALORALUG' +
        'UEL, CTI_VALORALUGUELVECTO, CTI_VIGENCIAFIM, CTI_VIGENCIAINICIO,' +
        ' CTI_VIGENCIATOTAL')
    ModifySQL.Strings = (
      'UPDATE CONTRATOS'
      
        'SET CTI_AVALISTA1 = :NEW_CTI_AVALISTA1, CTI_AVALISTA1CPF = :NEW_' +
        'CTI_AVALISTA1CPF, '
      
        '  CTI_AVALISTA2 = :NEW_CTI_AVALISTA2, CTI_AVALISTA2CPF = :NEW_CT' +
        'I_AVALISTA2CPF, '
      
        '  CTI_CODIGO = :NEW_CTI_CODIGO, CTI_DESCPARCELAPORC = :NEW_CTI_D' +
        'ESCPARCELAPORC, '
      
        '  CTI_DESCPARCELAQTDE = :NEW_CTI_DESCPARCELAQTDE, CTI_DESCPARCEL' +
        'AVALOR = :NEW_CTI_DESCPARCELAVALOR, '
      
        '  CTI_DESCPORCVECTO = :NEW_CTI_DESCPORCVECTO, CTI_DIAVENCIMENTO ' +
        '= :NEW_CTI_DIAVENCIMENTO, '
      
        '  CTI_DTATUALIZACAO = :NEW_CTI_DTATUALIZACAO, CTI_DTCADASTRO = :' +
        'NEW_CTI_DTCADASTRO, '
      
        '  CTI_FINALIDADE = :NEW_CTI_FINALIDADE, CTI_HRATUALIZACAO = :NEW' +
        '_CTI_HRATUALIZACAO, '
      
        '  CTI_HRCADASTRO = :NEW_CTI_HRCADASTRO, CTI_IMOVEL = :NEW_CTI_IM' +
        'OVEL, '
      
        '  CTI_LOCADOR = :NEW_CTI_LOCADOR, CTI_LOCADORBAIRRO = :NEW_CTI_L' +
        'OCADORBAIRRO, '
      
        '  CTI_LOCADORCEP = :NEW_CTI_LOCADORCEP, CTI_LOCADORCIDADE = :NEW' +
        '_CTI_LOCADORCIDADE, '
      '  CTI_LOCADORCIDADECODIGO = :NEW_CTI_LOCADORCIDADECODIGO, '
      
        '  CTI_LOCADORCNPJ = :NEW_CTI_LOCADORCNPJ, CTI_LOCADORCOMPLEMENTO' +
        ' = :NEW_CTI_LOCADORCOMPLEMENTO, '
      
        '  CTI_LOCADORCPF = :NEW_CTI_LOCADORCPF, CTI_LOCADORENDERECO = :N' +
        'EW_CTI_LOCADORENDERECO, '
      
        '  CTI_LOCADORESTADO = :NEW_CTI_LOCADORESTADO, CTI_LOCADORESTADOC' +
        'IVIL = :NEW_CTI_LOCADORESTADOCIVIL, '
      
        '  CTI_LOCADORNOME = :NEW_CTI_LOCADORNOME, CTI_LOCADORNUMERO = :N' +
        'EW_CTI_LOCADORNUMERO, '
      
        '  CTI_LOCADORTIPOPESSOA = :NEW_CTI_LOCADORTIPOPESSOA, CTI_MEMOPA' +
        'GAR = :NEW_CTI_MEMOPAGAR, '
      
        '  CTI_MEMORECEBER = :NEW_CTI_MEMORECEBER, CTI_STATUS = :NEW_CTI_' +
        'STATUS, '
      
        '  CTI_TESTEMUNHA1 = :NEW_CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF = :' +
        'NEW_CTI_TESTEMUNHA1CPF, '
      
        '  CTI_TESTEMUNHA2 = :NEW_CTI_TESTEMUNHA2, CTI_TESTEMUNHA2CPF = :' +
        'NEW_CTI_TESTEMUNHA2CPF, '
      
        '  CTI_USUARIO = :NEW_CTI_USUARIO, CTI_VALORALUGUEL = :NEW_CTI_VA' +
        'LORALUGUEL, '
      
        '  CTI_VALORALUGUELVECTO = :NEW_CTI_VALORALUGUELVECTO, CTI_VIGENC' +
        'IAFIM = :NEW_CTI_VIGENCIAFIM, '
      
        '  CTI_VIGENCIAINICIO = :NEW_CTI_VIGENCIAINICIO, CTI_VIGENCIATOTA' +
        'L = :NEW_CTI_VIGENCIATOTAL'
      'WHERE CTI_CODIGO = :OLD_CTI_CODIGO'
      
        'RETURNING CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, CTI_AV' +
        'ALISTA2CPF, CTI_CODIGO, CTI_DESCPARCELAPORC, CTI_DESCPARCELAQTDE' +
        ', CTI_DESCPARCELAVALOR, CTI_DESCPORCVECTO, CTI_DIAVENCIMENTO, CT' +
        'I_DTATUALIZACAO, CTI_DTCADASTRO, CTI_FINALIDADE, CTI_HRATUALIZAC' +
        'AO, CTI_HRCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, ' +
        'CTI_LOCADORCEP, CTI_LOCADORCIDADE, CTI_LOCADORCIDADECODIGO, CTI_' +
        'LOCADORCNPJ, CTI_LOCADORCOMPLEMENTO, CTI_LOCADORCPF, CTI_LOCADOR' +
        'ENDERECO, CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVIL, CTI_LOCADOR' +
        'NOME, CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, CTI_MEMOPAGAR, C' +
        'TI_MEMORECEBER, CTI_STATUS, CTI_TESTEMUNHA1, CTI_TESTEMUNHA1CPF,' +
        ' CTI_TESTEMUNHA2, CTI_TESTEMUNHA2CPF, CTI_USUARIO, CTI_VALORALUG' +
        'UEL, CTI_VALORALUGUELVECTO, CTI_VIGENCIAFIM, CTI_VIGENCIAINICIO,' +
        ' CTI_VIGENCIATOTAL')
    DeleteSQL.Strings = (
      'DELETE FROM CONTRATOS'
      'WHERE CTI_CODIGO = :OLD_CTI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTI_AVALISTA1, CTI_AVALISTA1CPF, CTI_AVALISTA2, CTI_AVALI' +
        'STA2CPF, '
      
        '  CTI_CODIGO, CTI_DESCPARCELAPORC, CTI_DESCPARCELAQTDE, CTI_DESC' +
        'PARCELAVALOR, '
      '  CTI_DESCPORCVECTO, CTI_DIAVENCIMENTO, CTI_DTATUALIZACAO, '
      
        '  CTI_DTCADASTRO, CTI_FINALIDADE, CTI_HRATUALIZACAO, CTI_HRCADAS' +
        'TRO, '
      '  CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORBAIRRO, CTI_LOCADORCEP, '
      '  CTI_LOCADORCIDADE, CTI_LOCADORCIDADECODIGO, CTI_LOCADORCNPJ, '
      '  CTI_LOCADORCOMPLEMENTO, CTI_LOCADORCPF, CTI_LOCADORENDERECO, '
      '  CTI_LOCADORESTADO, CTI_LOCADORESTADOCIVIL, CTI_LOCADORNOME, '
      '  CTI_LOCADORNUMERO, CTI_LOCADORTIPOPESSOA, CTI_MEMOPAGAR, '
      
        '  CTI_MEMORECEBER, CTI_STATUS, CTI_TESTEMUNHA1, CTI_TESTEMUNHA1C' +
        'PF, '
      
        '  CTI_TESTEMUNHA2, CTI_TESTEMUNHA2CPF, CTI_USUARIO, CTI_VALORALU' +
        'GUEL, '
      '  CTI_VALORALUGUELVECTO, CTI_VIGENCIAFIM, CTI_VIGENCIAINICIO, '
      '  CTI_VIGENCIATOTAL'
      'FROM CONTRATOS'
      'WHERE CTI_CODIGO = :OLD_CTI_CODIGO')
    Left = 640
    Top = 56
  end
  object TBContratos: TFDQuery
    BeforeInsert = TBContratosBeforeInsert
    AfterInsert = TBContratosAfterInsert
    BeforeEdit = TBContratosBeforeEdit
    AfterEdit = TBContratosAfterEdit
    BeforePost = TBContratosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRContratos
    UpdateObject = UPContratos
    SQL.Strings = (
      'select'
      'CTI_AVALISTA1,'
      'CTI_AVALISTA1CPF,'
      'CTI_AVALISTA2,'
      'CTI_AVALISTA2CPF,'
      'CTI_CODIGO,'
      'CTI_DESCPARCELAPORC,'
      'CTI_DESCPARCELAQTDE,'
      'CTI_DESCPARCELAVALOR,'
      'CTI_DESCPORCVECTO,'
      'CTI_DIAVENCIMENTO,'
      'CTI_DTATUALIZACAO,'
      'CTI_DTCADASTRO,'
      'CTI_FINALIDADE,'
      'CTI_HRATUALIZACAO,'
      'CTI_HRCADASTRO,'
      'CTI_IMOVEL,'
      'CTI_LOCADOR,'
      'CTI_LOCADORBAIRRO,'
      'CTI_LOCADORCEP,'
      'CTI_LOCADORCIDADE,'
      'CTI_LOCADORCIDADECODIGO,'
      'CTI_LOCADORCNPJ,'
      'CTI_LOCADORCOMPLEMENTO,'
      'CTI_LOCADORCPF,'
      'CTI_LOCADORENDERECO,'
      'CTI_LOCADORESTADO,'
      'CTI_LOCADORESTADOCIVIL,'
      'CTI_LOCADORNOME,'
      'CTI_LOCADORNUMERO,'
      'CTI_LOCADORTIPOPESSOA,'
      'CTI_MEMOPAGAR,'
      'CTI_MEMORECEBER,'
      'CTI_STATUS,'
      'CTI_TESTEMUNHA1,'
      'CTI_TESTEMUNHA1CPF,'
      'CTI_TESTEMUNHA2,'
      'CTI_TESTEMUNHA2CPF,'
      'CTI_USUARIO,'
      'CTI_VALORALUGUEL,'
      'CTI_VALORALUGUELVECTO,'
      'CTI_VIGENCIAFIM,'
      'CTI_VIGENCIAINICIO,'
      'CTI_VIGENCIATOTAL,'
      'IMO_AREALOCALIZACAO,'
      'IMO_BAIRRO,'
      'IMO_CEP,'
      'IMO_CIDADE,'
      'IMO_CIDADECODIGO,'
      'IMO_CIDADECODIGODIMOB,'
      'IMO_CLIENTE,'
      'IMO_COMISSAO,'
      'IMO_COMPLEMENTO,'
      'IMO_DESCQTDE,'
      'IMO_DESCRICAO,'
      'IMO_DESCVALOR,'
      'IMO_DIAPAGAMENTO,'
      'IMO_ENDERECO,'
      'IMO_ESTADO,'
      'IMO_FINALIDADE,'
      'IMO_NUMERO,'
      'IMO_TIPOIMOVEL,'
      'IMO_TIPONEGOCIO,'
      'IMO_TIPOPAGAMENTO,'
      'IMO_VALORALUGUEL,'
      'IMT_DESCRICAO'
      'from CONTRATOS'
      'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'where CTI_CODIGO=:codigo'
      '')
    Left = 640
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBContratosCTI_AVALISTA1: TStringField
      FieldName = 'CTI_AVALISTA1'
      Origin = 'CTI_AVALISTA1'
      Size = 80
    end
    object TBContratosCTI_AVALISTA1CPF: TStringField
      FieldName = 'CTI_AVALISTA1CPF'
      Origin = 'CTI_AVALISTA1CPF'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_AVALISTA2: TStringField
      FieldName = 'CTI_AVALISTA2'
      Origin = 'CTI_AVALISTA2'
      Size = 80
    end
    object TBContratosCTI_AVALISTA2CPF: TStringField
      FieldName = 'CTI_AVALISTA2CPF'
      Origin = 'CTI_AVALISTA2CPF'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_CODIGO: TIntegerField
      FieldName = 'CTI_CODIGO'
      Origin = 'CTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBContratosCTI_DESCPARCELAPORC: TFMTBCDField
      FieldName = 'CTI_DESCPARCELAPORC'
      Origin = 'CTI_DESCPARCELAPORC'
      Precision = 18
    end
    object TBContratosCTI_DESCPARCELAQTDE: TIntegerField
      FieldName = 'CTI_DESCPARCELAQTDE'
      Origin = 'CTI_DESCPARCELAQTDE'
    end
    object TBContratosCTI_DESCPARCELAVALOR: TFMTBCDField
      FieldName = 'CTI_DESCPARCELAVALOR'
      Origin = 'CTI_DESCPARCELAVALOR'
      currency = True
      Precision = 18
    end
    object TBContratosCTI_DESCPORCVECTO: TFMTBCDField
      FieldName = 'CTI_DESCPORCVECTO'
      Origin = 'CTI_DESCPORCVECTO'
      Precision = 18
    end
    object TBContratosCTI_DIAVENCIMENTO: TIntegerField
      FieldName = 'CTI_DIAVENCIMENTO'
      Origin = 'CTI_DIAVENCIMENTO'
    end
    object TBContratosCTI_DTATUALIZACAO: TDateField
      FieldName = 'CTI_DTATUALIZACAO'
      Origin = 'CTI_DTATUALIZACAO'
    end
    object TBContratosCTI_DTCADASTRO: TDateField
      FieldName = 'CTI_DTCADASTRO'
      Origin = 'CTI_DTCADASTRO'
    end
    object TBContratosCTI_FINALIDADE: TStringField
      FieldName = 'CTI_FINALIDADE'
      Origin = 'CTI_FINALIDADE'
      Size = 1
    end
    object TBContratosCTI_HRATUALIZACAO: TTimeField
      FieldName = 'CTI_HRATUALIZACAO'
      Origin = 'CTI_HRATUALIZACAO'
    end
    object TBContratosCTI_HRCADASTRO: TTimeField
      FieldName = 'CTI_HRCADASTRO'
      Origin = 'CTI_HRCADASTRO'
    end
    object TBContratosCTI_IMOVEL: TIntegerField
      FieldName = 'CTI_IMOVEL'
      Origin = 'CTI_IMOVEL'
      Required = True
    end
    object TBContratosCTI_LOCADOR: TIntegerField
      FieldName = 'CTI_LOCADOR'
      Origin = 'CTI_LOCADOR'
      Required = True
    end
    object TBContratosCTI_LOCADORBAIRRO: TStringField
      FieldName = 'CTI_LOCADORBAIRRO'
      Origin = 'CTI_LOCADORBAIRRO'
      Size = 50
    end
    object TBContratosCTI_LOCADORCEP: TStringField
      FieldName = 'CTI_LOCADORCEP'
      Origin = 'CTI_LOCADORCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBContratosCTI_LOCADORCIDADE: TStringField
      FieldName = 'CTI_LOCADORCIDADE'
      Origin = 'CTI_LOCADORCIDADE'
      Size = 50
    end
    object TBContratosCTI_LOCADORCIDADECODIGO: TIntegerField
      FieldName = 'CTI_LOCADORCIDADECODIGO'
      Origin = 'CTI_LOCADORCIDADECODIGO'
    end
    object TBContratosCTI_LOCADORCNPJ: TStringField
      FieldName = 'CTI_LOCADORCNPJ'
      Origin = 'CTI_LOCADORCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBContratosCTI_LOCADORCOMPLEMENTO: TStringField
      FieldName = 'CTI_LOCADORCOMPLEMENTO'
      Origin = 'CTI_LOCADORCOMPLEMENTO'
      Size = 80
    end
    object TBContratosCTI_LOCADORCPF: TStringField
      FieldName = 'CTI_LOCADORCPF'
      Origin = 'CTI_LOCADORCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_LOCADORENDERECO: TStringField
      FieldName = 'CTI_LOCADORENDERECO'
      Origin = 'CTI_LOCADORENDERECO'
      Size = 100
    end
    object TBContratosCTI_LOCADORESTADO: TStringField
      FieldName = 'CTI_LOCADORESTADO'
      Origin = 'CTI_LOCADORESTADO'
      Size = 2
    end
    object TBContratosCTI_LOCADORESTADOCIVIL: TStringField
      FieldName = 'CTI_LOCADORESTADOCIVIL'
      Origin = 'CTI_LOCADORESTADOCIVIL'
      Size = 10
    end
    object TBContratosCTI_LOCADORNOME: TStringField
      FieldName = 'CTI_LOCADORNOME'
      Origin = 'CTI_LOCADORNOME'
      Size = 80
    end
    object TBContratosCTI_LOCADORNUMERO: TStringField
      FieldName = 'CTI_LOCADORNUMERO'
      Origin = 'CTI_LOCADORNUMERO'
      Size = 15
    end
    object TBContratosCTI_LOCADORTIPOPESSOA: TStringField
      FieldName = 'CTI_LOCADORTIPOPESSOA'
      Origin = 'CTI_LOCADORTIPOPESSOA'
      Size = 1
    end
    object TBContratosCTI_MEMOPAGAR: TMemoField
      FieldName = 'CTI_MEMOPAGAR'
      Origin = 'CTI_MEMOPAGAR'
      BlobType = ftMemo
    end
    object TBContratosCTI_MEMORECEBER: TMemoField
      FieldName = 'CTI_MEMORECEBER'
      Origin = 'CTI_MEMORECEBER'
      BlobType = ftMemo
    end
    object TBContratosCTI_STATUS: TStringField
      FieldName = 'CTI_STATUS'
      Origin = 'CTI_STATUS'
      Size = 1
    end
    object TBContratosCTI_TESTEMUNHA1: TStringField
      FieldName = 'CTI_TESTEMUNHA1'
      Origin = 'CTI_TESTEMUNHA1'
      Size = 80
    end
    object TBContratosCTI_TESTEMUNHA1CPF: TStringField
      FieldName = 'CTI_TESTEMUNHA1CPF'
      Origin = 'CTI_TESTEMUNHA1CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_TESTEMUNHA2: TStringField
      FieldName = 'CTI_TESTEMUNHA2'
      Origin = 'CTI_TESTEMUNHA2'
      Size = 80
    end
    object TBContratosCTI_TESTEMUNHA2CPF: TStringField
      FieldName = 'CTI_TESTEMUNHA2CPF'
      Origin = 'CTI_TESTEMUNHA2CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosCTI_USUARIO: TStringField
      FieldName = 'CTI_USUARIO'
      Origin = 'CTI_USUARIO'
    end
    object TBContratosCTI_VALORALUGUEL: TFMTBCDField
      FieldName = 'CTI_VALORALUGUEL'
      Origin = 'CTI_VALORALUGUEL'
      currency = True
      Precision = 18
    end
    object TBContratosCTI_VALORALUGUELVECTO: TFMTBCDField
      FieldName = 'CTI_VALORALUGUELVECTO'
      Origin = 'CTI_VALORALUGUELVECTO'
      currency = True
      Precision = 18
    end
    object TBContratosCTI_VIGENCIAFIM: TDateField
      FieldName = 'CTI_VIGENCIAFIM'
      Origin = 'CTI_VIGENCIAFIM'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_VIGENCIAINICIO: TDateField
      FieldName = 'CTI_VIGENCIAINICIO'
      Origin = 'CTI_VIGENCIAINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBContratosCTI_VIGENCIATOTAL: TIntegerField
      FieldName = 'CTI_VIGENCIATOTAL'
      Origin = 'CTI_VIGENCIATOTAL'
    end
    object TBContratosIMO_AREALOCALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = 'IMO_AREALOCALIZACAO'
      ProviderFlags = []
      Size = 1
    end
    object TBContratosIMO_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_BAIRRO'
      Origin = 'IMO_BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object TBContratosIMO_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_CEP'
      Origin = 'IMO_CEP'
      ProviderFlags = []
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBContratosIMO_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_CIDADE'
      Origin = 'IMO_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object TBContratosIMO_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_CIDADECODIGO'
      Origin = 'IMO_CIDADECODIGO'
      ProviderFlags = []
    end
    object TBContratosIMO_CIDADECODIGODIMOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_CIDADECODIGODIMOB'
      Origin = 'IMO_CIDADECODIGODIMOB'
      ProviderFlags = []
    end
    object TBContratosIMO_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_CLIENTE'
      Origin = 'IMO_CLIENTE'
      ProviderFlags = []
    end
    object TBContratosIMO_COMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_COMISSAO'
      Origin = 'IMO_COMISSAO'
      ProviderFlags = []
      Precision = 18
    end
    object TBContratosIMO_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_COMPLEMENTO'
      Origin = 'IMO_COMPLEMENTO'
      ProviderFlags = []
      Size = 80
    end
    object TBContratosIMO_DESCQTDE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_DESCQTDE'
      Origin = 'IMO_DESCQTDE'
      ProviderFlags = []
    end
    object TBContratosIMO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_DESCRICAO'
      Origin = 'IMO_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBContratosIMO_DESCVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_DESCVALOR'
      Origin = 'IMO_DESCVALOR'
      ProviderFlags = []
      Precision = 18
    end
    object TBContratosIMO_DIAPAGAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_DIAPAGAMENTO'
      Origin = 'IMO_DIAPAGAMENTO'
      ProviderFlags = []
    end
    object TBContratosIMO_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_ENDERECO'
      Origin = 'IMO_ENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object TBContratosIMO_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_ESTADO'
      Origin = 'IMO_ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object TBContratosIMO_FINALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_FINALIDADE'
      Origin = 'IMO_FINALIDADE'
      ProviderFlags = []
      Size = 1
    end
    object TBContratosIMO_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_NUMERO'
      Origin = 'IMO_NUMERO'
      ProviderFlags = []
      Size = 15
    end
    object TBContratosIMO_TIPOIMOVEL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = 'IMO_TIPOIMOVEL'
      ProviderFlags = []
    end
    object TBContratosIMO_TIPONEGOCIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = 'IMO_TIPONEGOCIO'
      ProviderFlags = []
      Size = 1
    end
    object TBContratosIMO_TIPOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_TIPOPAGAMENTO'
      Origin = 'IMO_TIPOPAGAMENTO'
      ProviderFlags = []
      Size = 1
    end
    object TBContratosIMO_VALORALUGUEL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMO_VALORALUGUEL'
      Origin = 'IMO_VALORALUGUEL'
      ProviderFlags = []
      currency = True
      Precision = 18
    end
    object TBContratosIMT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRContratosPartes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 672
    Top = 88
  end
  object UPContratosPartes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONTRATOSPARTES'
      '(CTP_BAIRRO, CTP_CEP, CTP_CIDADE, CTP_CIDADECODIGO, '
      '  CTP_CLIENTE, CTP_CNPJ, CTP_CODIGO, CTP_COMPLEMENTO, '
      '  CTP_CONJUGE, CTP_CONJUGECPF, CTP_CONTRATO, '
      '  CTP_CPF, CTP_ENDERECO, CTP_ESTADO, CTP_ESTADOCIVIL, '
      '  CTP_ESTADOCODIGO, CTP_FONE1, CTP_NOME, CTP_NUMERO, '
      '  CTP_PROFISSAO, CTP_TIPO, CTP_TIPOPESSOA)'
      
        'VALUES (:NEW_CTP_BAIRRO, :NEW_CTP_CEP, :NEW_CTP_CIDADE, :NEW_CTP' +
        '_CIDADECODIGO, '
      
        '  :NEW_CTP_CLIENTE, :NEW_CTP_CNPJ, gen_id(GEN_CONTRATOSPARTES,1)' +
        ', :NEW_CTP_COMPLEMENTO, '
      '  :NEW_CTP_CONJUGE, :NEW_CTP_CONJUGECPF, :NEW_CTP_CONTRATO, '
      
        '  :NEW_CTP_CPF, :NEW_CTP_ENDERECO, :NEW_CTP_ESTADO, :NEW_CTP_EST' +
        'ADOCIVIL, '
      
        '  :NEW_CTP_ESTADOCODIGO, :NEW_CTP_FONE1, :NEW_CTP_NOME, :NEW_CTP' +
        '_NUMERO, '
      '  :NEW_CTP_PROFISSAO, :NEW_CTP_TIPO, :NEW_CTP_TIPOPESSOA)'
      
        'RETURNING CTP_BAIRRO, CTP_CEP, CTP_CIDADE, CTP_CIDADECODIGO, CTP' +
        '_CLIENTE, CTP_CNPJ, CTP_CODIGO, CTP_COMPLEMENTO, CTP_CONJUGE, CT' +
        'P_CONJUGECPF, CTP_CONTRATO, CTP_CPF, CTP_ENDERECO, CTP_ESTADO, C' +
        'TP_ESTADOCIVIL, CTP_ESTADOCODIGO, CTP_FONE1, CTP_NOME, CTP_NUMER' +
        'O, CTP_PROFISSAO, CTP_TIPO, CTP_TIPOPESSOA')
    ModifySQL.Strings = (
      'UPDATE CONTRATOSPARTES'
      
        'SET CTP_BAIRRO = :NEW_CTP_BAIRRO, CTP_CEP = :NEW_CTP_CEP, CTP_CI' +
        'DADE = :NEW_CTP_CIDADE, '
      
        '  CTP_CIDADECODIGO = :NEW_CTP_CIDADECODIGO, CTP_CLIENTE = :NEW_C' +
        'TP_CLIENTE, '
      '  CTP_CNPJ = :NEW_CTP_CNPJ, CTP_CODIGO = :NEW_CTP_CODIGO, '
      
        '  CTP_COMPLEMENTO = :NEW_CTP_COMPLEMENTO, CTP_CONJUGE = :NEW_CTP' +
        '_CONJUGE, '
      
        '  CTP_CONJUGECPF = :NEW_CTP_CONJUGECPF, CTP_CONTRATO = :NEW_CTP_' +
        'CONTRATO, '
      '  CTP_CPF = :NEW_CTP_CPF, CTP_ENDERECO = :NEW_CTP_ENDERECO, '
      
        '  CTP_ESTADO = :NEW_CTP_ESTADO, CTP_ESTADOCIVIL = :NEW_CTP_ESTAD' +
        'OCIVIL, '
      
        '  CTP_ESTADOCODIGO = :NEW_CTP_ESTADOCODIGO, CTP_FONE1 = :NEW_CTP' +
        '_FONE1, '
      '  CTP_NOME = :NEW_CTP_NOME, CTP_NUMERO = :NEW_CTP_NUMERO, '
      '  CTP_PROFISSAO = :NEW_CTP_PROFISSAO, CTP_TIPO = :NEW_CTP_TIPO, '
      '  CTP_TIPOPESSOA = :NEW_CTP_TIPOPESSOA'
      'WHERE CTP_CODIGO = :OLD_CTP_CODIGO'
      
        'RETURNING CTP_BAIRRO, CTP_CEP, CTP_CIDADE, CTP_CIDADECODIGO, CTP' +
        '_CLIENTE, CTP_CNPJ, CTP_CODIGO, CTP_COMPLEMENTO, CTP_CONJUGE, CT' +
        'P_CONJUGECPF, CTP_CONTRATO, CTP_CPF, CTP_ENDERECO, CTP_ESTADO, C' +
        'TP_ESTADOCIVIL, CTP_ESTADOCODIGO, CTP_FONE1, CTP_NOME, CTP_NUMER' +
        'O, CTP_PROFISSAO, CTP_TIPO, CTP_TIPOPESSOA')
    DeleteSQL.Strings = (
      'DELETE FROM CONTRATOSPARTES'
      'WHERE CTP_CODIGO = :OLD_CTP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTP_BAIRRO, CTP_CEP, CTP_CIDADE, CTP_CIDADECODIGO, CTP_CL' +
        'IENTE, '
      
        '  CTP_CNPJ, CTP_CODIGO, CTP_COMPLEMENTO, CTP_CONJUGE, CTP_CONJUG' +
        'ECPF, '
      
        '  CTP_CONTRATO, CTP_CPF, CTP_ENDERECO, CTP_ESTADO, CTP_ESTADOCIV' +
        'IL, '
      
        '  CTP_ESTADOCODIGO, CTP_FONE1, CTP_NOME, CTP_NUMERO, CTP_PROFISS' +
        'AO, '
      '  CTP_TIPO, CTP_TIPOPESSOA'
      'FROM CONTRATOSPARTES'
      'WHERE CTP_CODIGO = :OLD_CTP_CODIGO')
    Left = 672
    Top = 56
  end
  object TBContratosPartes: TFDQuery
    AfterInsert = TBContratosPartesAfterInsert
    MasterSource = DSContratos
    MasterFields = 'CTI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRContratosPartes
    UpdateObject = UPContratosPartes
    SQL.Strings = (
      'select'
      'CTP_BAIRRO,'
      'CTP_CEP,'
      'CTP_CIDADE,'
      'CTP_CIDADECODIGO,'
      'CTP_CLIENTE,'
      'CTP_CNPJ,'
      'CTP_CODIGO,'
      'CTP_COMPLEMENTO,'
      'CTP_CONJUGE,'
      'CTP_CONJUGECPF,'
      'CTP_CONTRATO,'
      'CTP_CPF,'
      'CTP_ENDERECO,'
      'CTP_ESTADO,'
      'CTP_ESTADOCIVIL,'
      'CTP_ESTADOCODIGO,'
      'CTP_FONE1,'
      'CTP_NOME,'
      'CTP_NUMERO,'
      'CTP_PROFISSAO,'
      'CTP_TIPO,'
      'CTP_TIPOPESSOA'
      'from CONTRATOSPARTES'
      'where CTP_CONTRATO=:CTI_CODIGO'
      'order by CTP_NOME'
      '')
    Left = 672
    Top = 24
    ParamData = <
      item
        Name = 'CTI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBContratosPartesCTP_BAIRRO: TStringField
      FieldName = 'CTP_BAIRRO'
      Origin = 'CTP_BAIRRO'
      Size = 50
    end
    object TBContratosPartesCTP_CEP: TStringField
      FieldName = 'CTP_CEP'
      Origin = 'CTP_CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBContratosPartesCTP_CIDADE: TStringField
      FieldName = 'CTP_CIDADE'
      Origin = 'CTP_CIDADE'
      Size = 50
    end
    object TBContratosPartesCTP_CIDADECODIGO: TIntegerField
      FieldName = 'CTP_CIDADECODIGO'
      Origin = 'CTP_CIDADECODIGO'
    end
    object TBContratosPartesCTP_CLIENTE: TIntegerField
      FieldName = 'CTP_CLIENTE'
      Origin = 'CTP_CLIENTE'
      Required = True
    end
    object TBContratosPartesCTP_CNPJ: TStringField
      FieldName = 'CTP_CNPJ'
      Origin = 'CTP_CNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBContratosPartesCTP_CODIGO: TIntegerField
      FieldName = 'CTP_CODIGO'
      Origin = 'CTP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBContratosPartesCTP_COMPLEMENTO: TStringField
      FieldName = 'CTP_COMPLEMENTO'
      Origin = 'CTP_COMPLEMENTO'
      Size = 80
    end
    object TBContratosPartesCTP_CONJUGE: TStringField
      FieldName = 'CTP_CONJUGE'
      Origin = 'CTP_CONJUGE'
      Size = 80
    end
    object TBContratosPartesCTP_CONJUGECPF: TStringField
      FieldName = 'CTP_CONJUGECPF'
      Origin = 'CTP_CONJUGECPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosPartesCTP_CONTRATO: TIntegerField
      FieldName = 'CTP_CONTRATO'
      Origin = 'CTP_CONTRATO'
      Required = True
    end
    object TBContratosPartesCTP_CPF: TStringField
      FieldName = 'CTP_CPF'
      Origin = 'CTP_CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBContratosPartesCTP_ENDERECO: TStringField
      FieldName = 'CTP_ENDERECO'
      Origin = 'CTP_ENDERECO'
      Size = 100
    end
    object TBContratosPartesCTP_ESTADO: TStringField
      FieldName = 'CTP_ESTADO'
      Origin = 'CTP_ESTADO'
      Size = 2
    end
    object TBContratosPartesCTP_ESTADOCIVIL: TStringField
      FieldName = 'CTP_ESTADOCIVIL'
      Origin = 'CTP_ESTADOCIVIL'
      Size = 10
    end
    object TBContratosPartesCTP_ESTADOCODIGO: TIntegerField
      FieldName = 'CTP_ESTADOCODIGO'
      Origin = 'CTP_ESTADOCODIGO'
    end
    object TBContratosPartesCTP_FONE1: TStringField
      FieldName = 'CTP_FONE1'
      Origin = 'CTP_FONE1'
    end
    object TBContratosPartesCTP_NOME: TStringField
      FieldName = 'CTP_NOME'
      Origin = 'CTP_NOME'
      Size = 80
    end
    object TBContratosPartesCTP_NUMERO: TStringField
      FieldName = 'CTP_NUMERO'
      Origin = 'CTP_NUMERO'
      Size = 15
    end
    object TBContratosPartesCTP_PROFISSAO: TStringField
      FieldName = 'CTP_PROFISSAO'
      Origin = 'CTP_PROFISSAO'
      Size = 50
    end
    object TBContratosPartesCTP_TIPO: TStringField
      FieldName = 'CTP_TIPO'
      Origin = 'CTP_TIPO'
      Size = 1
    end
    object TBContratosPartesCTP_TIPOPESSOA: TStringField
      FieldName = 'CTP_TIPOPESSOA'
      Origin = 'CTP_TIPOPESSOA'
      Size = 1
    end
  end
  object TRCte: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 704
    Top = 88
  end
  object UPCte: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTE'
      '(CTE_AEREODIMENSAO, CTE_AEREODTPREVISTA, CTE_AEREOIATA, '
      '  CTE_AEREOIMP, CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL, '
      '  CTE_AEREOOCA, CTE_AEREOTARIFACLASSE, CTE_AEREOTARIFACODIGO, '
      '  CTE_AEREOTARIFAVALOR, CTE_ALIQFCP, CTE_ALIQICMS, '
      '  CTE_ALIQICMSINTER, CTE_ALIQICMSINTERPART, CTE_ALIQICMSRED, '
      '  CTE_ALIQICMSST, CTE_ALIQICMSUFFIM, CTE_ALIQTRIBUTOS, '
      '  CTE_BAIXADATA, CTE_BAIXAPOR, CTE_BASEICMS, '
      '  CTE_BASEICMSRED, CTE_BASEICMSST, CTE_CARGAOUTRASCARAC, '
      '  CTE_CFOP, CTE_CFOPDESC, CTE_CHAVEACESSO, '
      '  CTE_CIOT, CTE_CODIGO, CTE_CODIGONUMERICO, '
      '  CTE_COMISSAO, CTE_CONDICAO, CTE_CONDICAOMEMO, '
      '  CTE_CONSULTADA, CTE_CSTICMS, CTE_CTEREFERENCIADO, '
      '  CTE_DATAHORA, CTE_DATAHORACONTINGENCIA, CTE_DESBAIRRO, '
      '  CTE_DESCEP, CTE_DESCIDADE, CTE_DESCIDADECODIGO, '
      '  CTE_DESCNPJ, CTE_DESCOMPLEMENTO, CTE_DESCONTATO, '
      '  CTE_DESCPF, CTE_DESCPORC, CTE_DESCVALOR, '
      '  CTE_DESENDERECO, CTE_DESESTADO, CTE_DESESTADOCODIGO, '
      '  CTE_DESFONE, CTE_DESIE, CTE_DESNOME, CTE_DESNUMERO, '
      '  CTE_DESPAIS, CTE_DESPAISCODIGO, CTE_DESTINATARIO, '
      '  CTE_DIAPREFERENCIAL, CTE_DTATUALIZACAO, CTE_DTCADASTRO, '
      '  CTE_DTEMISSAO, CTE_ENTREGADATA, CTE_ENTREGADATAFINAL, '
      
        '  CTE_ENTREGADATAINICIAL, CTE_ENTREGAHORA, CTE_ENTREGAHORAFINAL,' +
        ' '
      '  CTE_ENTREGAHORAINICIAL, CTE_ENVIADO, CTE_EXPBAIRRO, '
      '  CTE_EXPCEP, CTE_EXPCIDADE, CTE_EXPCIDADECODIGO, '
      '  CTE_EXPCNPJ, CTE_EXPCOMPLEMENTO, CTE_EXPCONTATO, '
      '  CTE_EXPCPF, CTE_EXPEDIDOR, CTE_EXPENDERECO, '
      '  CTE_EXPESTADO, CTE_EXPESTADOCODIGO, CTE_EXPFONE, '
      '  CTE_EXPIE, CTE_EXPNOME, CTE_EXPNUMERO, CTE_EXPPAIS, '
      '  CTE_EXPPAISCODIGO, CTE_FINALIDADE, CTE_FORMAPAGTO, '
      '  CTE_FORMAPAGTOSERVICO, CTE_HRATUALIZACAO, CTE_HRCADASTRO, '
      '  CTE_ICMSALIQUOTAUF, CTE_ICMSPOR, CTE_INFOADICFISCO, '
      '  CTE_LOTACAO, CTE_LOTE, CTE_MODAL, CTE_MODELO, '
      '  CTE_MOTIVOCANCELAMENTO, CTE_MOTIVOCONTINGENCIA, '
      '  CTE_MOTIVOINUTILIZACAO, CTE_MOTORISTA, CTE_MOTORISTACPF, '
      '  CTE_MOVIMENTAFINANCEIRO, CTE_OBSERVACOES, CTE_PAGOPOR, '
      '  CTE_PESOTOTAL, CTE_PRODUTOPREDOM, CTE_PROTOCOLO, '
      '  CTE_PROTOCOLOCANC, CTE_PROTOCOLOCANCDH, CTE_PROTOCOLODH, '
      '  CTE_PROTOCOLOINUT, CTE_PROTOCOLOINUTDH, CTE_RECBAIRRO, '
      '  CTE_RECCEP, CTE_RECCIDADE, CTE_RECCIDADECODIGO, '
      '  CTE_RECCNPJ, CTE_RECCOMPLEMENTO, CTE_RECCONTATO, '
      '  CTE_RECCPF, CTE_RECEBEDOR, CTE_RECEBIDODATA, '
      '  CTE_RECEBIDOPOR, CTE_RECENDERECO, CTE_RECESTADO, '
      '  CTE_RECESTADOCODIGO, CTE_RECFONE, CTE_RECIBO, '
      '  CTE_RECIBODH, CTE_RECIE, CTE_RECNOME, CTE_RECNUMERO, '
      '  CTE_RECPAIS, CTE_RECPAISCODIGO, CTE_REFERENCIA, '
      '  CTE_REMBAIRRO, CTE_REMCEP, CTE_REMCIDADE, '
      '  CTE_REMCIDADECODIGO, CTE_REMCNPJ, CTE_REMCOMPLEMENTO, '
      '  CTE_REMCONTATO, CTE_REMCPF, CTE_REMENDERECO, '
      '  CTE_REMESTADO, CTE_REMESTADOCODIGO, CTE_REMETENTE, '
      '  CTE_REMFONE, CTE_REMIE, CTE_REMNOME, CTE_REMNUMERO, '
      '  CTE_REMPAIS, CTE_REMPAISCODIGO, CTE_RETIRA, '
      '  CTE_RETIRADETALHES, CTE_SEGURO, CTE_SEGUROAPOLICE, '
      '  CTE_SEGUROAVERBACAO, CTE_SEGURONOME, CTE_SEGUROVALOR, '
      '  CTE_SERIE, CTE_STATUS, CTE_TIPOCTE, CTE_TIPOEMISSAO, '
      '  CTE_TIPOSERVICO, CTE_TOMADOR, CTE_TOMADORBAIRRO, '
      '  CTE_TOMADORCEP, CTE_TOMADORCIDADE, CTE_TOMADORCIDADECODIGO, '
      '  CTE_TOMADORCNPJ, CTE_TOMADORCODIGO, CTE_TOMADORCOMPLEMENTO, '
      '  CTE_TOMADORCONTATO, CTE_TOMADORCPF, CTE_TOMADORENDERECO, '
      '  CTE_TOMADORESTADO, CTE_TOMADORESTADOCODIGO, CTE_TOMADORFONE, '
      '  CTE_TOMADORIE, CTE_TOMADORNOME, CTE_TOMADORNUMERO, '
      '  CTE_TOMADORPAIS, CTE_TOMADORPAISCODIGO, CTE_TOTALCCE, '
      '  CTE_TOTALCOMISSAO, CTE_TOTALFCP, CTE_TOTALICMS, '
      '  CTE_TOTALICMSST, CTE_TOTALICMSUFFIM, CTE_TOTALICMSUFINI, '
      '  CTE_TOTALTRIBUTOS, CTE_USUARIO, CTE_VALORCREDITOICMS, '
      '  CTE_VALORFRETE, CTE_VALORNOTAS, CTE_VALOROUTROS, '
      '  CTE_VALORSEGURO, CTE_VALORTOTAL, CTE_VENDEDOR)'
      
        'VALUES (:NEW_CTE_AEREODIMENSAO, :NEW_CTE_AEREODTPREVISTA, :NEW_C' +
        'TE_AEREOIATA, '
      
        '  :NEW_CTE_AEREOIMP, :NEW_CTE_AEREOMINUTA, :NEW_CTE_AEREONOMEFIL' +
        'IAL, '
      
        '  :NEW_CTE_AEREOOCA, :NEW_CTE_AEREOTARIFACLASSE, :NEW_CTE_AEREOT' +
        'ARIFACODIGO, '
      
        '  :NEW_CTE_AEREOTARIFAVALOR, :NEW_CTE_ALIQFCP, :NEW_CTE_ALIQICMS' +
        ', '
      
        '  :NEW_CTE_ALIQICMSINTER, :NEW_CTE_ALIQICMSINTERPART, :NEW_CTE_A' +
        'LIQICMSRED, '
      
        '  :NEW_CTE_ALIQICMSST, :NEW_CTE_ALIQICMSUFFIM, :NEW_CTE_ALIQTRIB' +
        'UTOS, '
      '  :NEW_CTE_BAIXADATA, :NEW_CTE_BAIXAPOR, :NEW_CTE_BASEICMS, '
      
        '  :NEW_CTE_BASEICMSRED, :NEW_CTE_BASEICMSST, :NEW_CTE_CARGAOUTRA' +
        'SCARAC, '
      '  :NEW_CTE_CFOP, :NEW_CTE_CFOPDESC, :NEW_CTE_CHAVEACESSO, '
      '  :NEW_CTE_CIOT, gen_id(GEN_CTE,1), :NEW_CTE_CODIGONUMERICO, '
      '  :NEW_CTE_COMISSAO, :NEW_CTE_CONDICAO, :NEW_CTE_CONDICAOMEMO, '
      
        '  :NEW_CTE_CONSULTADA, :NEW_CTE_CSTICMS, :NEW_CTE_CTEREFERENCIAD' +
        'O, '
      
        '  :NEW_CTE_DATAHORA, :NEW_CTE_DATAHORACONTINGENCIA, :NEW_CTE_DES' +
        'BAIRRO, '
      
        '  :NEW_CTE_DESCEP, :NEW_CTE_DESCIDADE, :NEW_CTE_DESCIDADECODIGO,' +
        ' '
      
        '  :NEW_CTE_DESCNPJ, :NEW_CTE_DESCOMPLEMENTO, :NEW_CTE_DESCONTATO' +
        ', '
      '  :NEW_CTE_DESCPF, :NEW_CTE_DESCPORC, :NEW_CTE_DESCVALOR, '
      
        '  :NEW_CTE_DESENDERECO, :NEW_CTE_DESESTADO, :NEW_CTE_DESESTADOCO' +
        'DIGO, '
      
        '  :NEW_CTE_DESFONE, :NEW_CTE_DESIE, :NEW_CTE_DESNOME, :NEW_CTE_D' +
        'ESNUMERO, '
      
        '  :NEW_CTE_DESPAIS, :NEW_CTE_DESPAISCODIGO, :NEW_CTE_DESTINATARI' +
        'O, '
      
        '  :NEW_CTE_DIAPREFERENCIAL, :NEW_CTE_DTATUALIZACAO, :NEW_CTE_DTC' +
        'ADASTRO, '
      
        '  :NEW_CTE_DTEMISSAO, :NEW_CTE_ENTREGADATA, :NEW_CTE_ENTREGADATA' +
        'FINAL, '
      
        '  :NEW_CTE_ENTREGADATAINICIAL, :NEW_CTE_ENTREGAHORA, :NEW_CTE_EN' +
        'TREGAHORAFINAL, '
      
        '  :NEW_CTE_ENTREGAHORAINICIAL, :NEW_CTE_ENVIADO, :NEW_CTE_EXPBAI' +
        'RRO, '
      
        '  :NEW_CTE_EXPCEP, :NEW_CTE_EXPCIDADE, :NEW_CTE_EXPCIDADECODIGO,' +
        ' '
      
        '  :NEW_CTE_EXPCNPJ, :NEW_CTE_EXPCOMPLEMENTO, :NEW_CTE_EXPCONTATO' +
        ', '
      '  :NEW_CTE_EXPCPF, :NEW_CTE_EXPEDIDOR, :NEW_CTE_EXPENDERECO, '
      
        '  :NEW_CTE_EXPESTADO, :NEW_CTE_EXPESTADOCODIGO, :NEW_CTE_EXPFONE' +
        ', '
      
        '  :NEW_CTE_EXPIE, :NEW_CTE_EXPNOME, :NEW_CTE_EXPNUMERO, :NEW_CTE' +
        '_EXPPAIS, '
      
        '  :NEW_CTE_EXPPAISCODIGO, :NEW_CTE_FINALIDADE, :NEW_CTE_FORMAPAG' +
        'TO, '
      
        '  :NEW_CTE_FORMAPAGTOSERVICO, :NEW_CTE_HRATUALIZACAO, :NEW_CTE_H' +
        'RCADASTRO, '
      
        '  :NEW_CTE_ICMSALIQUOTAUF, :NEW_CTE_ICMSPOR, :NEW_CTE_INFOADICFI' +
        'SCO, '
      
        '  :NEW_CTE_LOTACAO, :NEW_CTE_LOTE, :NEW_CTE_MODAL, :NEW_CTE_MODE' +
        'LO, '
      '  :NEW_CTE_MOTIVOCANCELAMENTO, :NEW_CTE_MOTIVOCONTINGENCIA, '
      
        '  :NEW_CTE_MOTIVOINUTILIZACAO, :NEW_CTE_MOTORISTA, :NEW_CTE_MOTO' +
        'RISTACPF, '
      
        '  :NEW_CTE_MOVIMENTAFINANCEIRO, :NEW_CTE_OBSERVACOES, :NEW_CTE_P' +
        'AGOPOR, '
      
        '  :NEW_CTE_PESOTOTAL, :NEW_CTE_PRODUTOPREDOM, :NEW_CTE_PROTOCOLO' +
        ', '
      
        '  :NEW_CTE_PROTOCOLOCANC, :NEW_CTE_PROTOCOLOCANCDH, :NEW_CTE_PRO' +
        'TOCOLODH, '
      
        '  :NEW_CTE_PROTOCOLOINUT, :NEW_CTE_PROTOCOLOINUTDH, :NEW_CTE_REC' +
        'BAIRRO, '
      
        '  :NEW_CTE_RECCEP, :NEW_CTE_RECCIDADE, :NEW_CTE_RECCIDADECODIGO,' +
        ' '
      
        '  :NEW_CTE_RECCNPJ, :NEW_CTE_RECCOMPLEMENTO, :NEW_CTE_RECCONTATO' +
        ', '
      '  :NEW_CTE_RECCPF, :NEW_CTE_RECEBEDOR, :NEW_CTE_RECEBIDODATA, '
      
        '  :NEW_CTE_RECEBIDOPOR, :NEW_CTE_RECENDERECO, :NEW_CTE_RECESTADO' +
        ', '
      '  :NEW_CTE_RECESTADOCODIGO, :NEW_CTE_RECFONE, :NEW_CTE_RECIBO, '
      
        '  :NEW_CTE_RECIBODH, :NEW_CTE_RECIE, :NEW_CTE_RECNOME, :NEW_CTE_' +
        'RECNUMERO, '
      
        '  :NEW_CTE_RECPAIS, :NEW_CTE_RECPAISCODIGO, :NEW_CTE_REFERENCIA,' +
        ' '
      '  :NEW_CTE_REMBAIRRO, :NEW_CTE_REMCEP, :NEW_CTE_REMCIDADE, '
      
        '  :NEW_CTE_REMCIDADECODIGO, :NEW_CTE_REMCNPJ, :NEW_CTE_REMCOMPLE' +
        'MENTO, '
      '  :NEW_CTE_REMCONTATO, :NEW_CTE_REMCPF, :NEW_CTE_REMENDERECO, '
      
        '  :NEW_CTE_REMESTADO, :NEW_CTE_REMESTADOCODIGO, :NEW_CTE_REMETEN' +
        'TE, '
      
        '  :NEW_CTE_REMFONE, :NEW_CTE_REMIE, :NEW_CTE_REMNOME, :NEW_CTE_R' +
        'EMNUMERO, '
      '  :NEW_CTE_REMPAIS, :NEW_CTE_REMPAISCODIGO, :NEW_CTE_RETIRA, '
      
        '  :NEW_CTE_RETIRADETALHES, :NEW_CTE_SEGURO, :NEW_CTE_SEGUROAPOLI' +
        'CE, '
      
        '  :NEW_CTE_SEGUROAVERBACAO, :NEW_CTE_SEGURONOME, :NEW_CTE_SEGURO' +
        'VALOR, '
      
        '  :NEW_CTE_SERIE, :NEW_CTE_STATUS, :NEW_CTE_TIPOCTE, :NEW_CTE_TI' +
        'POEMISSAO, '
      
        '  :NEW_CTE_TIPOSERVICO, :NEW_CTE_TOMADOR, :NEW_CTE_TOMADORBAIRRO' +
        ', '
      
        '  :NEW_CTE_TOMADORCEP, :NEW_CTE_TOMADORCIDADE, :NEW_CTE_TOMADORC' +
        'IDADECODIGO, '
      
        '  :NEW_CTE_TOMADORCNPJ, :NEW_CTE_TOMADORCODIGO, :NEW_CTE_TOMADOR' +
        'COMPLEMENTO, '
      
        '  :NEW_CTE_TOMADORCONTATO, :NEW_CTE_TOMADORCPF, :NEW_CTE_TOMADOR' +
        'ENDERECO, '
      
        '  :NEW_CTE_TOMADORESTADO, :NEW_CTE_TOMADORESTADOCODIGO, :NEW_CTE' +
        '_TOMADORFONE, '
      
        '  :NEW_CTE_TOMADORIE, :NEW_CTE_TOMADORNOME, :NEW_CTE_TOMADORNUME' +
        'RO, '
      
        '  :NEW_CTE_TOMADORPAIS, :NEW_CTE_TOMADORPAISCODIGO, :NEW_CTE_TOT' +
        'ALCCE, '
      
        '  :NEW_CTE_TOTALCOMISSAO, :NEW_CTE_TOTALFCP, :NEW_CTE_TOTALICMS,' +
        ' '
      
        '  :NEW_CTE_TOTALICMSST, :NEW_CTE_TOTALICMSUFFIM, :NEW_CTE_TOTALI' +
        'CMSUFINI, '
      
        '  :NEW_CTE_TOTALTRIBUTOS, :NEW_CTE_USUARIO, :NEW_CTE_VALORCREDIT' +
        'OICMS, '
      
        '  :NEW_CTE_VALORFRETE, :NEW_CTE_VALORNOTAS, :NEW_CTE_VALOROUTROS' +
        ', '
      '  :NEW_CTE_VALORSEGURO, :NEW_CTE_VALORTOTAL, :NEW_CTE_VENDEDOR)'
      
        'RETURNING CTE_AEREODIMENSAO, CTE_AEREODTPREVISTA, CTE_AEREOIATA,' +
        ' CTE_AEREOIMP, CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL, CTE_AEREOOC' +
        'A, CTE_AEREOTARIFACLASSE, CTE_AEREOTARIFACODIGO, CTE_AEREOTARIFA' +
        'VALOR, CTE_ALIQFCP, CTE_ALIQICMS, CTE_ALIQICMSINTER, CTE_ALIQICM' +
        'SINTERPART, CTE_ALIQICMSRED, CTE_ALIQICMSST, CTE_ALIQICMSUFFIM, ' +
        'CTE_ALIQTRIBUTOS, CTE_BAIXADATA, CTE_BAIXAPOR, CTE_BASEICMS, CTE' +
        '_BASEICMSRED, CTE_BASEICMSST, CTE_CARGAOUTRASCARAC, CTE_CFOP, CT' +
        'E_CFOPDESC, CTE_CHAVEACESSO, CTE_CIOT, CTE_CODIGO, CTE_CODIGONUM' +
        'ERICO, CTE_COMISSAO, CTE_CONDICAO, CTE_CONDICAOMEMO, CTE_CONSULT' +
        'ADA, CTE_CSTICMS, CTE_CTEREFERENCIADO, CTE_DATAHORA, CTE_DATAHOR' +
        'ACONTINGENCIA, CTE_DESBAIRRO, CTE_DESCEP, CTE_DESCIDADE, CTE_DES' +
        'CIDADECODIGO, CTE_DESCNPJ, CTE_DESCOMPLEMENTO, CTE_DESCONTATO, C' +
        'TE_DESCPF, CTE_DESCPORC, CTE_DESCVALOR, CTE_DESENDERECO, CTE_DES' +
        'ESTADO, CTE_DESESTADOCODIGO, CTE_DESFONE, CTE_DESIE, CTE_DESNOME' +
        ', CTE_DESNUMERO, CTE_DESPAIS, CTE_DESPAISCODIGO, CTE_DESTINATARI' +
        'O, CTE_DIAPREFERENCIAL, CTE_DTATUALIZACAO, CTE_DTCADASTRO, CTE_D' +
        'TEMISSAO, CTE_ENTREGADATA, CTE_ENTREGADATAFINAL, CTE_ENTREGADATA' +
        'INICIAL, CTE_ENTREGAHORA, CTE_ENTREGAHORAFINAL, CTE_ENTREGAHORAI' +
        'NICIAL, CTE_ENVIADO, CTE_EXPBAIRRO, CTE_EXPCEP, CTE_EXPCIDADE, C' +
        'TE_EXPCIDADECODIGO, CTE_EXPCNPJ, CTE_EXPCOMPLEMENTO, CTE_EXPCONT' +
        'ATO, CTE_EXPCPF, CTE_EXPEDIDOR, CTE_EXPENDERECO, CTE_EXPESTADO, ' +
        'CTE_EXPESTADOCODIGO, CTE_EXPFONE, CTE_EXPIE, CTE_EXPNOME, CTE_EX' +
        'PNUMERO, CTE_EXPPAIS, CTE_EXPPAISCODIGO, CTE_FINALIDADE, CTE_FOR' +
        'MAPAGTO, CTE_FORMAPAGTOSERVICO, CTE_HRATUALIZACAO, CTE_HRCADASTR' +
        'O, CTE_ICMSALIQUOTAUF, CTE_ICMSPOR, CTE_INFOADICFISCO, CTE_LOTAC' +
        'AO, CTE_LOTE, CTE_MODAL, CTE_MODELO, CTE_MOTIVOCANCELAMENTO, CTE' +
        '_MOTIVOCONTINGENCIA, CTE_MOTIVOINUTILIZACAO, CTE_MOTORISTA, CTE_' +
        'MOTORISTACPF, CTE_MOVIMENTAFINANCEIRO, CTE_OBSERVACOES, CTE_PAGO' +
        'POR, CTE_PESOTOTAL, CTE_PRODUTOPREDOM, CTE_PROTOCOLO, CTE_PROTOC' +
        'OLOCANC, CTE_PROTOCOLOCANCDH, CTE_PROTOCOLODH, CTE_PROTOCOLOINUT' +
        ', CTE_PROTOCOLOINUTDH, CTE_RECBAIRRO, CTE_RECCEP, CTE_RECCIDADE,' +
        ' CTE_RECCIDADECODIGO, CTE_RECCNPJ, CTE_RECCOMPLEMENTO, CTE_RECCO' +
        'NTATO, CTE_RECCPF, CTE_RECEBEDOR, CTE_RECEBIDODATA, CTE_RECEBIDO' +
        'POR, CTE_RECENDERECO, CTE_RECESTADO, CTE_RECESTADOCODIGO, CTE_RE' +
        'CFONE, CTE_RECIBO, CTE_RECIBODH, CTE_RECIE, CTE_RECNOME, CTE_REC' +
        'NUMERO, CTE_RECPAIS, CTE_RECPAISCODIGO, CTE_REFERENCIA, CTE_REMB' +
        'AIRRO, CTE_REMCEP, CTE_REMCIDADE, CTE_REMCIDADECODIGO, CTE_REMCN' +
        'PJ, CTE_REMCOMPLEMENTO, CTE_REMCONTATO, CTE_REMCPF, CTE_REMENDER' +
        'ECO, CTE_REMESTADO, CTE_REMESTADOCODIGO, CTE_REMETENTE, CTE_REMF' +
        'ONE, CTE_REMIE, CTE_REMNOME, CTE_REMNUMERO, CTE_REMPAIS, CTE_REM' +
        'PAISCODIGO, CTE_RETIRA, CTE_RETIRADETALHES, CTE_SEGURO, CTE_SEGU' +
        'ROAPOLICE, CTE_SEGUROAVERBACAO, CTE_SEGURONOME, CTE_SEGUROVALOR,' +
        ' CTE_SERIE, CTE_STATUS, CTE_TIPOCTE, CTE_TIPOEMISSAO, CTE_TIPOSE' +
        'RVICO, CTE_TOMADOR, CTE_TOMADORBAIRRO, CTE_TOMADORCEP, CTE_TOMAD' +
        'ORCIDADE, CTE_TOMADORCIDADECODIGO, CTE_TOMADORCNPJ, CTE_TOMADORC' +
        'ODIGO, CTE_TOMADORCOMPLEMENTO, CTE_TOMADORCONTATO, CTE_TOMADORCP' +
        'F, CTE_TOMADORENDERECO, CTE_TOMADORESTADO, CTE_TOMADORESTADOCODI' +
        'GO, CTE_TOMADORFONE, CTE_TOMADORIE, CTE_TOMADORNOME, CTE_TOMADOR' +
        'NUMERO, CTE_TOMADORPAIS, CTE_TOMADORPAISCODIGO, CTE_TOTALCCE, CT' +
        'E_TOTALCOMISSAO, CTE_TOTALFCP, CTE_TOTALICMS, CTE_TOTALICMSST, C' +
        'TE_TOTALICMSUFFIM, CTE_TOTALICMSUFINI, CTE_TOTALTRIBUTOS, CTE_US' +
        'UARIO, CTE_VALORCREDITOICMS, CTE_VALORFRETE, CTE_VALORNOTAS, CTE' +
        '_VALOROUTROS, CTE_VALORSEGURO, CTE_VALORTOTAL, CTE_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE CTE'
      
        'SET CTE_AEREODIMENSAO = :NEW_CTE_AEREODIMENSAO, CTE_AEREODTPREVI' +
        'STA = :NEW_CTE_AEREODTPREVISTA, '
      
        '  CTE_AEREOIATA = :NEW_CTE_AEREOIATA, CTE_AEREOIMP = :NEW_CTE_AE' +
        'REOIMP, '
      
        '  CTE_AEREOMINUTA = :NEW_CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL = ' +
        ':NEW_CTE_AEREONOMEFILIAL, '
      
        '  CTE_AEREOOCA = :NEW_CTE_AEREOOCA, CTE_AEREOTARIFACLASSE = :NEW' +
        '_CTE_AEREOTARIFACLASSE, '
      
        '  CTE_AEREOTARIFACODIGO = :NEW_CTE_AEREOTARIFACODIGO, CTE_AEREOT' +
        'ARIFAVALOR = :NEW_CTE_AEREOTARIFAVALOR, '
      
        '  CTE_ALIQFCP = :NEW_CTE_ALIQFCP, CTE_ALIQICMS = :NEW_CTE_ALIQIC' +
        'MS, '
      
        '  CTE_ALIQICMSINTER = :NEW_CTE_ALIQICMSINTER, CTE_ALIQICMSINTERP' +
        'ART = :NEW_CTE_ALIQICMSINTERPART, '
      
        '  CTE_ALIQICMSRED = :NEW_CTE_ALIQICMSRED, CTE_ALIQICMSST = :NEW_' +
        'CTE_ALIQICMSST, '
      
        '  CTE_ALIQICMSUFFIM = :NEW_CTE_ALIQICMSUFFIM, CTE_ALIQTRIBUTOS =' +
        ' :NEW_CTE_ALIQTRIBUTOS, '
      
        '  CTE_BAIXADATA = :NEW_CTE_BAIXADATA, CTE_BAIXAPOR = :NEW_CTE_BA' +
        'IXAPOR, '
      
        '  CTE_BASEICMS = :NEW_CTE_BASEICMS, CTE_BASEICMSRED = :NEW_CTE_B' +
        'ASEICMSRED, '
      
        '  CTE_BASEICMSST = :NEW_CTE_BASEICMSST, CTE_CARGAOUTRASCARAC = :' +
        'NEW_CTE_CARGAOUTRASCARAC, '
      '  CTE_CFOP = :NEW_CTE_CFOP, CTE_CFOPDESC = :NEW_CTE_CFOPDESC, '
      
        '  CTE_CHAVEACESSO = :NEW_CTE_CHAVEACESSO, CTE_CIOT = :NEW_CTE_CI' +
        'OT, '
      
        '  CTE_CODIGO = :NEW_CTE_CODIGO, CTE_CODIGONUMERICO = :NEW_CTE_CO' +
        'DIGONUMERICO, '
      
        '  CTE_COMISSAO = :NEW_CTE_COMISSAO, CTE_CONDICAO = :NEW_CTE_COND' +
        'ICAO, '
      
        '  CTE_CONDICAOMEMO = :NEW_CTE_CONDICAOMEMO, CTE_CONSULTADA = :NE' +
        'W_CTE_CONSULTADA, '
      
        '  CTE_CSTICMS = :NEW_CTE_CSTICMS, CTE_CTEREFERENCIADO = :NEW_CTE' +
        '_CTEREFERENCIADO, '
      
        '  CTE_DATAHORA = :NEW_CTE_DATAHORA, CTE_DATAHORACONTINGENCIA = :' +
        'NEW_CTE_DATAHORACONTINGENCIA, '
      
        '  CTE_DESBAIRRO = :NEW_CTE_DESBAIRRO, CTE_DESCEP = :NEW_CTE_DESC' +
        'EP, '
      
        '  CTE_DESCIDADE = :NEW_CTE_DESCIDADE, CTE_DESCIDADECODIGO = :NEW' +
        '_CTE_DESCIDADECODIGO, '
      
        '  CTE_DESCNPJ = :NEW_CTE_DESCNPJ, CTE_DESCOMPLEMENTO = :NEW_CTE_' +
        'DESCOMPLEMENTO, '
      
        '  CTE_DESCONTATO = :NEW_CTE_DESCONTATO, CTE_DESCPF = :NEW_CTE_DE' +
        'SCPF, '
      
        '  CTE_DESCPORC = :NEW_CTE_DESCPORC, CTE_DESCVALOR = :NEW_CTE_DES' +
        'CVALOR, '
      
        '  CTE_DESENDERECO = :NEW_CTE_DESENDERECO, CTE_DESESTADO = :NEW_C' +
        'TE_DESESTADO, '
      
        '  CTE_DESESTADOCODIGO = :NEW_CTE_DESESTADOCODIGO, CTE_DESFONE = ' +
        ':NEW_CTE_DESFONE, '
      '  CTE_DESIE = :NEW_CTE_DESIE, CTE_DESNOME = :NEW_CTE_DESNOME, '
      
        '  CTE_DESNUMERO = :NEW_CTE_DESNUMERO, CTE_DESPAIS = :NEW_CTE_DES' +
        'PAIS, '
      
        '  CTE_DESPAISCODIGO = :NEW_CTE_DESPAISCODIGO, CTE_DESTINATARIO =' +
        ' :NEW_CTE_DESTINATARIO, '
      
        '  CTE_DIAPREFERENCIAL = :NEW_CTE_DIAPREFERENCIAL, CTE_DTATUALIZA' +
        'CAO = :NEW_CTE_DTATUALIZACAO, '
      
        '  CTE_DTCADASTRO = :NEW_CTE_DTCADASTRO, CTE_DTEMISSAO = :NEW_CTE' +
        '_DTEMISSAO, '
      
        '  CTE_ENTREGADATA = :NEW_CTE_ENTREGADATA, CTE_ENTREGADATAFINAL =' +
        ' :NEW_CTE_ENTREGADATAFINAL, '
      
        '  CTE_ENTREGADATAINICIAL = :NEW_CTE_ENTREGADATAINICIAL, CTE_ENTR' +
        'EGAHORA = :NEW_CTE_ENTREGAHORA, '
      
        '  CTE_ENTREGAHORAFINAL = :NEW_CTE_ENTREGAHORAFINAL, CTE_ENTREGAH' +
        'ORAINICIAL = :NEW_CTE_ENTREGAHORAINICIAL, '
      
        '  CTE_ENVIADO = :NEW_CTE_ENVIADO, CTE_EXPBAIRRO = :NEW_CTE_EXPBA' +
        'IRRO, '
      
        '  CTE_EXPCEP = :NEW_CTE_EXPCEP, CTE_EXPCIDADE = :NEW_CTE_EXPCIDA' +
        'DE, '
      
        '  CTE_EXPCIDADECODIGO = :NEW_CTE_EXPCIDADECODIGO, CTE_EXPCNPJ = ' +
        ':NEW_CTE_EXPCNPJ, '
      
        '  CTE_EXPCOMPLEMENTO = :NEW_CTE_EXPCOMPLEMENTO, CTE_EXPCONTATO =' +
        ' :NEW_CTE_EXPCONTATO, '
      
        '  CTE_EXPCPF = :NEW_CTE_EXPCPF, CTE_EXPEDIDOR = :NEW_CTE_EXPEDID' +
        'OR, '
      
        '  CTE_EXPENDERECO = :NEW_CTE_EXPENDERECO, CTE_EXPESTADO = :NEW_C' +
        'TE_EXPESTADO, '
      
        '  CTE_EXPESTADOCODIGO = :NEW_CTE_EXPESTADOCODIGO, CTE_EXPFONE = ' +
        ':NEW_CTE_EXPFONE, '
      '  CTE_EXPIE = :NEW_CTE_EXPIE, CTE_EXPNOME = :NEW_CTE_EXPNOME, '
      
        '  CTE_EXPNUMERO = :NEW_CTE_EXPNUMERO, CTE_EXPPAIS = :NEW_CTE_EXP' +
        'PAIS, '
      
        '  CTE_EXPPAISCODIGO = :NEW_CTE_EXPPAISCODIGO, CTE_FINALIDADE = :' +
        'NEW_CTE_FINALIDADE, '
      
        '  CTE_FORMAPAGTO = :NEW_CTE_FORMAPAGTO, CTE_FORMAPAGTOSERVICO = ' +
        ':NEW_CTE_FORMAPAGTOSERVICO, '
      
        '  CTE_HRATUALIZACAO = :NEW_CTE_HRATUALIZACAO, CTE_HRCADASTRO = :' +
        'NEW_CTE_HRCADASTRO, '
      
        '  CTE_ICMSALIQUOTAUF = :NEW_CTE_ICMSALIQUOTAUF, CTE_ICMSPOR = :N' +
        'EW_CTE_ICMSPOR, '
      
        '  CTE_INFOADICFISCO = :NEW_CTE_INFOADICFISCO, CTE_LOTACAO = :NEW' +
        '_CTE_LOTACAO, '
      
        '  CTE_LOTE = :NEW_CTE_LOTE, CTE_MODAL = :NEW_CTE_MODAL, CTE_MODE' +
        'LO = :NEW_CTE_MODELO, '
      
        '  CTE_MOTIVOCANCELAMENTO = :NEW_CTE_MOTIVOCANCELAMENTO, CTE_MOTI' +
        'VOCONTINGENCIA = :NEW_CTE_MOTIVOCONTINGENCIA, '
      
        '  CTE_MOTIVOINUTILIZACAO = :NEW_CTE_MOTIVOINUTILIZACAO, CTE_MOTO' +
        'RISTA = :NEW_CTE_MOTORISTA, '
      
        '  CTE_MOTORISTACPF = :NEW_CTE_MOTORISTACPF, CTE_MOVIMENTAFINANCE' +
        'IRO = :NEW_CTE_MOVIMENTAFINANCEIRO, '
      
        '  CTE_OBSERVACOES = :NEW_CTE_OBSERVACOES, CTE_PAGOPOR = :NEW_CTE' +
        '_PAGOPOR, '
      
        '  CTE_PESOTOTAL = :NEW_CTE_PESOTOTAL, CTE_PRODUTOPREDOM = :NEW_C' +
        'TE_PRODUTOPREDOM, '
      
        '  CTE_PROTOCOLO = :NEW_CTE_PROTOCOLO, CTE_PROTOCOLOCANC = :NEW_C' +
        'TE_PROTOCOLOCANC, '
      
        '  CTE_PROTOCOLOCANCDH = :NEW_CTE_PROTOCOLOCANCDH, CTE_PROTOCOLOD' +
        'H = :NEW_CTE_PROTOCOLODH, '
      
        '  CTE_PROTOCOLOINUT = :NEW_CTE_PROTOCOLOINUT, CTE_PROTOCOLOINUTD' +
        'H = :NEW_CTE_PROTOCOLOINUTDH, '
      
        '  CTE_RECBAIRRO = :NEW_CTE_RECBAIRRO, CTE_RECCEP = :NEW_CTE_RECC' +
        'EP, '
      
        '  CTE_RECCIDADE = :NEW_CTE_RECCIDADE, CTE_RECCIDADECODIGO = :NEW' +
        '_CTE_RECCIDADECODIGO, '
      
        '  CTE_RECCNPJ = :NEW_CTE_RECCNPJ, CTE_RECCOMPLEMENTO = :NEW_CTE_' +
        'RECCOMPLEMENTO, '
      
        '  CTE_RECCONTATO = :NEW_CTE_RECCONTATO, CTE_RECCPF = :NEW_CTE_RE' +
        'CCPF, '
      
        '  CTE_RECEBEDOR = :NEW_CTE_RECEBEDOR, CTE_RECEBIDODATA = :NEW_CT' +
        'E_RECEBIDODATA, '
      
        '  CTE_RECEBIDOPOR = :NEW_CTE_RECEBIDOPOR, CTE_RECENDERECO = :NEW' +
        '_CTE_RECENDERECO, '
      
        '  CTE_RECESTADO = :NEW_CTE_RECESTADO, CTE_RECESTADOCODIGO = :NEW' +
        '_CTE_RECESTADOCODIGO, '
      '  CTE_RECFONE = :NEW_CTE_RECFONE, CTE_RECIBO = :NEW_CTE_RECIBO, '
      '  CTE_RECIBODH = :NEW_CTE_RECIBODH, CTE_RECIE = :NEW_CTE_RECIE, '
      
        '  CTE_RECNOME = :NEW_CTE_RECNOME, CTE_RECNUMERO = :NEW_CTE_RECNU' +
        'MERO, '
      
        '  CTE_RECPAIS = :NEW_CTE_RECPAIS, CTE_RECPAISCODIGO = :NEW_CTE_R' +
        'ECPAISCODIGO, '
      
        '  CTE_REFERENCIA = :NEW_CTE_REFERENCIA, CTE_REMBAIRRO = :NEW_CTE' +
        '_REMBAIRRO, '
      
        '  CTE_REMCEP = :NEW_CTE_REMCEP, CTE_REMCIDADE = :NEW_CTE_REMCIDA' +
        'DE, '
      
        '  CTE_REMCIDADECODIGO = :NEW_CTE_REMCIDADECODIGO, CTE_REMCNPJ = ' +
        ':NEW_CTE_REMCNPJ, '
      
        '  CTE_REMCOMPLEMENTO = :NEW_CTE_REMCOMPLEMENTO, CTE_REMCONTATO =' +
        ' :NEW_CTE_REMCONTATO, '
      
        '  CTE_REMCPF = :NEW_CTE_REMCPF, CTE_REMENDERECO = :NEW_CTE_REMEN' +
        'DERECO, '
      
        '  CTE_REMESTADO = :NEW_CTE_REMESTADO, CTE_REMESTADOCODIGO = :NEW' +
        '_CTE_REMESTADOCODIGO, '
      
        '  CTE_REMETENTE = :NEW_CTE_REMETENTE, CTE_REMFONE = :NEW_CTE_REM' +
        'FONE, '
      '  CTE_REMIE = :NEW_CTE_REMIE, CTE_REMNOME = :NEW_CTE_REMNOME, '
      
        '  CTE_REMNUMERO = :NEW_CTE_REMNUMERO, CTE_REMPAIS = :NEW_CTE_REM' +
        'PAIS, '
      
        '  CTE_REMPAISCODIGO = :NEW_CTE_REMPAISCODIGO, CTE_RETIRA = :NEW_' +
        'CTE_RETIRA, '
      
        '  CTE_RETIRADETALHES = :NEW_CTE_RETIRADETALHES, CTE_SEGURO = :NE' +
        'W_CTE_SEGURO, '
      
        '  CTE_SEGUROAPOLICE = :NEW_CTE_SEGUROAPOLICE, CTE_SEGUROAVERBACA' +
        'O = :NEW_CTE_SEGUROAVERBACAO, '
      
        '  CTE_SEGURONOME = :NEW_CTE_SEGURONOME, CTE_SEGUROVALOR = :NEW_C' +
        'TE_SEGUROVALOR, '
      '  CTE_SERIE = :NEW_CTE_SERIE, CTE_STATUS = :NEW_CTE_STATUS, '
      
        '  CTE_TIPOCTE = :NEW_CTE_TIPOCTE, CTE_TIPOEMISSAO = :NEW_CTE_TIP' +
        'OEMISSAO, '
      
        '  CTE_TIPOSERVICO = :NEW_CTE_TIPOSERVICO, CTE_TOMADOR = :NEW_CTE' +
        '_TOMADOR, '
      
        '  CTE_TOMADORBAIRRO = :NEW_CTE_TOMADORBAIRRO, CTE_TOMADORCEP = :' +
        'NEW_CTE_TOMADORCEP, '
      
        '  CTE_TOMADORCIDADE = :NEW_CTE_TOMADORCIDADE, CTE_TOMADORCIDADEC' +
        'ODIGO = :NEW_CTE_TOMADORCIDADECODIGO, '
      
        '  CTE_TOMADORCNPJ = :NEW_CTE_TOMADORCNPJ, CTE_TOMADORCODIGO = :N' +
        'EW_CTE_TOMADORCODIGO, '
      
        '  CTE_TOMADORCOMPLEMENTO = :NEW_CTE_TOMADORCOMPLEMENTO, CTE_TOMA' +
        'DORCONTATO = :NEW_CTE_TOMADORCONTATO, '
      
        '  CTE_TOMADORCPF = :NEW_CTE_TOMADORCPF, CTE_TOMADORENDERECO = :N' +
        'EW_CTE_TOMADORENDERECO, '
      
        '  CTE_TOMADORESTADO = :NEW_CTE_TOMADORESTADO, CTE_TOMADORESTADOC' +
        'ODIGO = :NEW_CTE_TOMADORESTADOCODIGO, '
      
        '  CTE_TOMADORFONE = :NEW_CTE_TOMADORFONE, CTE_TOMADORIE = :NEW_C' +
        'TE_TOMADORIE, '
      
        '  CTE_TOMADORNOME = :NEW_CTE_TOMADORNOME, CTE_TOMADORNUMERO = :N' +
        'EW_CTE_TOMADORNUMERO, '
      
        '  CTE_TOMADORPAIS = :NEW_CTE_TOMADORPAIS, CTE_TOMADORPAISCODIGO ' +
        '= :NEW_CTE_TOMADORPAISCODIGO, '
      
        '  CTE_TOTALCCE = :NEW_CTE_TOTALCCE, CTE_TOTALCOMISSAO = :NEW_CTE' +
        '_TOTALCOMISSAO, '
      
        '  CTE_TOTALFCP = :NEW_CTE_TOTALFCP, CTE_TOTALICMS = :NEW_CTE_TOT' +
        'ALICMS, '
      
        '  CTE_TOTALICMSST = :NEW_CTE_TOTALICMSST, CTE_TOTALICMSUFFIM = :' +
        'NEW_CTE_TOTALICMSUFFIM, '
      
        '  CTE_TOTALICMSUFINI = :NEW_CTE_TOTALICMSUFINI, CTE_TOTALTRIBUTO' +
        'S = :NEW_CTE_TOTALTRIBUTOS, '
      
        '  CTE_USUARIO = :NEW_CTE_USUARIO, CTE_VALORCREDITOICMS = :NEW_CT' +
        'E_VALORCREDITOICMS, '
      
        '  CTE_VALORFRETE = :NEW_CTE_VALORFRETE, CTE_VALORNOTAS = :NEW_CT' +
        'E_VALORNOTAS, '
      
        '  CTE_VALOROUTROS = :NEW_CTE_VALOROUTROS, CTE_VALORSEGURO = :NEW' +
        '_CTE_VALORSEGURO, '
      
        '  CTE_VALORTOTAL = :NEW_CTE_VALORTOTAL, CTE_VENDEDOR = :NEW_CTE_' +
        'VENDEDOR'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO'
      
        'RETURNING CTE_AEREODIMENSAO, CTE_AEREODTPREVISTA, CTE_AEREOIATA,' +
        ' CTE_AEREOIMP, CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL, CTE_AEREOOC' +
        'A, CTE_AEREOTARIFACLASSE, CTE_AEREOTARIFACODIGO, CTE_AEREOTARIFA' +
        'VALOR, CTE_ALIQFCP, CTE_ALIQICMS, CTE_ALIQICMSINTER, CTE_ALIQICM' +
        'SINTERPART, CTE_ALIQICMSRED, CTE_ALIQICMSST, CTE_ALIQICMSUFFIM, ' +
        'CTE_ALIQTRIBUTOS, CTE_BAIXADATA, CTE_BAIXAPOR, CTE_BASEICMS, CTE' +
        '_BASEICMSRED, CTE_BASEICMSST, CTE_CARGAOUTRASCARAC, CTE_CFOP, CT' +
        'E_CFOPDESC, CTE_CHAVEACESSO, CTE_CIOT, CTE_CODIGO, CTE_CODIGONUM' +
        'ERICO, CTE_COMISSAO, CTE_CONDICAO, CTE_CONDICAOMEMO, CTE_CONSULT' +
        'ADA, CTE_CSTICMS, CTE_CTEREFERENCIADO, CTE_DATAHORA, CTE_DATAHOR' +
        'ACONTINGENCIA, CTE_DESBAIRRO, CTE_DESCEP, CTE_DESCIDADE, CTE_DES' +
        'CIDADECODIGO, CTE_DESCNPJ, CTE_DESCOMPLEMENTO, CTE_DESCONTATO, C' +
        'TE_DESCPF, CTE_DESCPORC, CTE_DESCVALOR, CTE_DESENDERECO, CTE_DES' +
        'ESTADO, CTE_DESESTADOCODIGO, CTE_DESFONE, CTE_DESIE, CTE_DESNOME' +
        ', CTE_DESNUMERO, CTE_DESPAIS, CTE_DESPAISCODIGO, CTE_DESTINATARI' +
        'O, CTE_DIAPREFERENCIAL, CTE_DTATUALIZACAO, CTE_DTCADASTRO, CTE_D' +
        'TEMISSAO, CTE_ENTREGADATA, CTE_ENTREGADATAFINAL, CTE_ENTREGADATA' +
        'INICIAL, CTE_ENTREGAHORA, CTE_ENTREGAHORAFINAL, CTE_ENTREGAHORAI' +
        'NICIAL, CTE_ENVIADO, CTE_EXPBAIRRO, CTE_EXPCEP, CTE_EXPCIDADE, C' +
        'TE_EXPCIDADECODIGO, CTE_EXPCNPJ, CTE_EXPCOMPLEMENTO, CTE_EXPCONT' +
        'ATO, CTE_EXPCPF, CTE_EXPEDIDOR, CTE_EXPENDERECO, CTE_EXPESTADO, ' +
        'CTE_EXPESTADOCODIGO, CTE_EXPFONE, CTE_EXPIE, CTE_EXPNOME, CTE_EX' +
        'PNUMERO, CTE_EXPPAIS, CTE_EXPPAISCODIGO, CTE_FINALIDADE, CTE_FOR' +
        'MAPAGTO, CTE_FORMAPAGTOSERVICO, CTE_HRATUALIZACAO, CTE_HRCADASTR' +
        'O, CTE_ICMSALIQUOTAUF, CTE_ICMSPOR, CTE_INFOADICFISCO, CTE_LOTAC' +
        'AO, CTE_LOTE, CTE_MODAL, CTE_MODELO, CTE_MOTIVOCANCELAMENTO, CTE' +
        '_MOTIVOCONTINGENCIA, CTE_MOTIVOINUTILIZACAO, CTE_MOTORISTA, CTE_' +
        'MOTORISTACPF, CTE_MOVIMENTAFINANCEIRO, CTE_OBSERVACOES, CTE_PAGO' +
        'POR, CTE_PESOTOTAL, CTE_PRODUTOPREDOM, CTE_PROTOCOLO, CTE_PROTOC' +
        'OLOCANC, CTE_PROTOCOLOCANCDH, CTE_PROTOCOLODH, CTE_PROTOCOLOINUT' +
        ', CTE_PROTOCOLOINUTDH, CTE_RECBAIRRO, CTE_RECCEP, CTE_RECCIDADE,' +
        ' CTE_RECCIDADECODIGO, CTE_RECCNPJ, CTE_RECCOMPLEMENTO, CTE_RECCO' +
        'NTATO, CTE_RECCPF, CTE_RECEBEDOR, CTE_RECEBIDODATA, CTE_RECEBIDO' +
        'POR, CTE_RECENDERECO, CTE_RECESTADO, CTE_RECESTADOCODIGO, CTE_RE' +
        'CFONE, CTE_RECIBO, CTE_RECIBODH, CTE_RECIE, CTE_RECNOME, CTE_REC' +
        'NUMERO, CTE_RECPAIS, CTE_RECPAISCODIGO, CTE_REFERENCIA, CTE_REMB' +
        'AIRRO, CTE_REMCEP, CTE_REMCIDADE, CTE_REMCIDADECODIGO, CTE_REMCN' +
        'PJ, CTE_REMCOMPLEMENTO, CTE_REMCONTATO, CTE_REMCPF, CTE_REMENDER' +
        'ECO, CTE_REMESTADO, CTE_REMESTADOCODIGO, CTE_REMETENTE, CTE_REMF' +
        'ONE, CTE_REMIE, CTE_REMNOME, CTE_REMNUMERO, CTE_REMPAIS, CTE_REM' +
        'PAISCODIGO, CTE_RETIRA, CTE_RETIRADETALHES, CTE_SEGURO, CTE_SEGU' +
        'ROAPOLICE, CTE_SEGUROAVERBACAO, CTE_SEGURONOME, CTE_SEGUROVALOR,' +
        ' CTE_SERIE, CTE_STATUS, CTE_TIPOCTE, CTE_TIPOEMISSAO, CTE_TIPOSE' +
        'RVICO, CTE_TOMADOR, CTE_TOMADORBAIRRO, CTE_TOMADORCEP, CTE_TOMAD' +
        'ORCIDADE, CTE_TOMADORCIDADECODIGO, CTE_TOMADORCNPJ, CTE_TOMADORC' +
        'ODIGO, CTE_TOMADORCOMPLEMENTO, CTE_TOMADORCONTATO, CTE_TOMADORCP' +
        'F, CTE_TOMADORENDERECO, CTE_TOMADORESTADO, CTE_TOMADORESTADOCODI' +
        'GO, CTE_TOMADORFONE, CTE_TOMADORIE, CTE_TOMADORNOME, CTE_TOMADOR' +
        'NUMERO, CTE_TOMADORPAIS, CTE_TOMADORPAISCODIGO, CTE_TOTALCCE, CT' +
        'E_TOTALCOMISSAO, CTE_TOTALFCP, CTE_TOTALICMS, CTE_TOTALICMSST, C' +
        'TE_TOTALICMSUFFIM, CTE_TOTALICMSUFINI, CTE_TOTALTRIBUTOS, CTE_US' +
        'UARIO, CTE_VALORCREDITOICMS, CTE_VALORFRETE, CTE_VALORNOTAS, CTE' +
        '_VALOROUTROS, CTE_VALORSEGURO, CTE_VALORTOTAL, CTE_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM CTE'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTE_AEREODIMENSAO, CTE_AEREODTPREVISTA, CTE_AEREOIATA, CT' +
        'E_AEREOIMP, '
      
        '  CTE_AEREOMINUTA, CTE_AEREONOMEFILIAL, CTE_AEREOOCA, CTE_AEREOT' +
        'ARIFACLASSE, '
      '  CTE_AEREOTARIFACODIGO, CTE_AEREOTARIFAVALOR, CTE_ALIQFCP, '
      '  CTE_ALIQICMS, CTE_ALIQICMSINTER, CTE_ALIQICMSINTERPART, '
      
        '  CTE_ALIQICMSRED, CTE_ALIQICMSST, CTE_ALIQICMSUFFIM, CTE_ALIQTR' +
        'IBUTOS, '
      '  CTE_BAIXADATA, CTE_BAIXAPOR, CTE_BASEICMS, CTE_BASEICMSRED, '
      '  CTE_BASEICMSST, CTE_CARGAOUTRASCARAC, CTE_CFOP, CTE_CFOPDESC, '
      '  CTE_CHAVEACESSO, CTE_CIOT, CTE_CODIGO, CTE_CODIGONUMERICO, '
      '  CTE_COMISSAO, CTE_CONDICAO, CTE_CONDICAOMEMO, CTE_CONSULTADA, '
      
        '  CTE_CSTICMS, CTE_CTEREFERENCIADO, CTE_DATAHORA, CTE_DATAHORACO' +
        'NTINGENCIA, '
      
        '  CTE_DESBAIRRO, CTE_DESCEP, CTE_DESCIDADE, CTE_DESCIDADECODIGO,' +
        ' '
      '  CTE_DESCNPJ, CTE_DESCOMPLEMENTO, CTE_DESCONTATO, CTE_DESCPF, '
      '  CTE_DESCPORC, CTE_DESCVALOR, CTE_DESENDERECO, CTE_DESESTADO, '
      '  CTE_DESESTADOCODIGO, CTE_DESFONE, CTE_DESIE, CTE_DESNOME, '
      
        '  CTE_DESNUMERO, CTE_DESPAIS, CTE_DESPAISCODIGO, CTE_DESTINATARI' +
        'O, '
      '  CTE_DIAPREFERENCIAL, CTE_DTATUALIZACAO, CTE_DTCADASTRO, '
      
        '  CTE_DTEMISSAO, CTE_ENTREGADATA, CTE_ENTREGADATAFINAL, CTE_ENTR' +
        'EGADATAINICIAL, '
      
        '  CTE_ENTREGAHORA, CTE_ENTREGAHORAFINAL, CTE_ENTREGAHORAINICIAL,' +
        ' '
      
        '  CTE_ENVIADO, CTE_EXPBAIRRO, CTE_EXPCEP, CTE_EXPCIDADE, CTE_EXP' +
        'CIDADECODIGO, '
      '  CTE_EXPCNPJ, CTE_EXPCOMPLEMENTO, CTE_EXPCONTATO, CTE_EXPCPF, '
      
        '  CTE_EXPEDIDOR, CTE_EXPENDERECO, CTE_EXPESTADO, CTE_EXPESTADOCO' +
        'DIGO, '
      
        '  CTE_EXPFONE, CTE_EXPIE, CTE_EXPNOME, CTE_EXPNUMERO, CTE_EXPPAI' +
        'S, '
      
        '  CTE_EXPPAISCODIGO, CTE_FINALIDADE, CTE_FORMAPAGTO, CTE_FORMAPA' +
        'GTOSERVICO, '
      
        '  CTE_HRATUALIZACAO, CTE_HRCADASTRO, CTE_ICMSALIQUOTAUF, CTE_ICM' +
        'SPOR, '
      
        '  CTE_INFOADICFISCO, CTE_LOTACAO, CTE_LOTE, CTE_MODAL, CTE_MODEL' +
        'O, '
      
        '  CTE_MOTIVOCANCELAMENTO, CTE_MOTIVOCONTINGENCIA, CTE_MOTIVOINUT' +
        'ILIZACAO, '
      '  CTE_MOTORISTA, CTE_MOTORISTACPF, CTE_MOVIMENTAFINANCEIRO, '
      
        '  CTE_OBSERVACOES, CTE_PAGOPOR, CTE_PESOTOTAL, CTE_PRODUTOPREDOM' +
        ', '
      
        '  CTE_PROTOCOLO, CTE_PROTOCOLOCANC, CTE_PROTOCOLOCANCDH, CTE_PRO' +
        'TOCOLODH, '
      
        '  CTE_PROTOCOLOINUT, CTE_PROTOCOLOINUTDH, CTE_RECBAIRRO, CTE_REC' +
        'CEP, '
      
        '  CTE_RECCIDADE, CTE_RECCIDADECODIGO, CTE_RECCNPJ, CTE_RECCOMPLE' +
        'MENTO, '
      '  CTE_RECCONTATO, CTE_RECCPF, CTE_RECEBEDOR, CTE_RECEBIDODATA, '
      
        '  CTE_RECEBIDOPOR, CTE_RECENDERECO, CTE_RECESTADO, CTE_RECESTADO' +
        'CODIGO, '
      
        '  CTE_RECFONE, CTE_RECIBO, CTE_RECIBODH, CTE_RECIE, CTE_RECNOME,' +
        ' '
      
        '  CTE_RECNUMERO, CTE_RECPAIS, CTE_RECPAISCODIGO, CTE_REFERENCIA,' +
        ' '
      
        '  CTE_REMBAIRRO, CTE_REMCEP, CTE_REMCIDADE, CTE_REMCIDADECODIGO,' +
        ' '
      '  CTE_REMCNPJ, CTE_REMCOMPLEMENTO, CTE_REMCONTATO, CTE_REMCPF, '
      
        '  CTE_REMENDERECO, CTE_REMESTADO, CTE_REMESTADOCODIGO, CTE_REMET' +
        'ENTE, '
      
        '  CTE_REMFONE, CTE_REMIE, CTE_REMNOME, CTE_REMNUMERO, CTE_REMPAI' +
        'S, '
      
        '  CTE_REMPAISCODIGO, CTE_RETIRA, CTE_RETIRADETALHES, CTE_SEGURO,' +
        ' '
      '  CTE_SEGUROAPOLICE, CTE_SEGUROAVERBACAO, CTE_SEGURONOME, '
      
        '  CTE_SEGUROVALOR, CTE_SERIE, CTE_STATUS, CTE_TIPOCTE, CTE_TIPOE' +
        'MISSAO, '
      
        '  CTE_TIPOSERVICO, CTE_TOMADOR, CTE_TOMADORBAIRRO, CTE_TOMADORCE' +
        'P, '
      '  CTE_TOMADORCIDADE, CTE_TOMADORCIDADECODIGO, CTE_TOMADORCNPJ, '
      
        '  CTE_TOMADORCODIGO, CTE_TOMADORCOMPLEMENTO, CTE_TOMADORCONTATO,' +
        ' '
      '  CTE_TOMADORCPF, CTE_TOMADORENDERECO, CTE_TOMADORESTADO, '
      '  CTE_TOMADORESTADOCODIGO, CTE_TOMADORFONE, CTE_TOMADORIE, '
      
        '  CTE_TOMADORNOME, CTE_TOMADORNUMERO, CTE_TOMADORPAIS, CTE_TOMAD' +
        'ORPAISCODIGO, '
      '  CTE_TOTALCCE, CTE_TOTALCOMISSAO, CTE_TOTALFCP, CTE_TOTALICMS, '
      '  CTE_TOTALICMSST, CTE_TOTALICMSUFFIM, CTE_TOTALICMSUFINI, '
      
        '  CTE_TOTALTRIBUTOS, CTE_USUARIO, CTE_VALORCREDITOICMS, CTE_VALO' +
        'RFRETE, '
      
        '  CTE_VALORNOTAS, CTE_VALOROUTROS, CTE_VALORSEGURO, CTE_VALORTOT' +
        'AL, '
      '  CTE_VENDEDOR'
      'FROM CTE'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO')
    Left = 704
    Top = 56
  end
  object TBCte: TFDQuery
    BeforeInsert = TBCteBeforeInsert
    AfterInsert = TBCteAfterInsert
    BeforeEdit = TBCteBeforeEdit
    AfterEdit = TBCteAfterEdit
    BeforePost = TBCteBeforePost
    AfterPost = TBCteAfterPost
    Connection = DM.FDConnection1
    Transaction = TRCte
    UpdateObject = UPCte
    SQL.Strings = (
      'select'
      'CTE_AEREODIMENSAO,'
      'CTE_AEREODTPREVISTA,'
      'CTE_AEREOIATA,'
      'CTE_AEREOIMP,'
      'CTE_AEREOMINUTA,'
      'CTE_AEREONOMEFILIAL,'
      'CTE_AEREOOCA,'
      'CTE_AEREOTARIFACLASSE,'
      'CTE_AEREOTARIFACODIGO,'
      'CTE_AEREOTARIFAVALOR,'
      'CTE_ALIQFCP,'
      'CTE_ALIQICMS,'
      'CTE_ALIQICMSINTER,'
      'CTE_ALIQICMSINTERPART,'
      'CTE_ALIQICMSRED,'
      'CTE_ALIQICMSST,'
      'CTE_ALIQICMSUFFIM,'
      'CTE_ALIQTRIBUTOS,'
      'CTE_BAIXADATA,'
      'CTE_BAIXAPOR,'
      'CTE_BASEICMS,'
      'CTE_BASEICMSRED,'
      'CTE_BASEICMSST,'
      'CTE_CARGAOUTRASCARAC,'
      'CTE_CFOP,'
      'CTE_CFOPDESC,'
      'CTE_CHAVEACESSO,'
      'CTE_CIOT,'
      'CTE_CODIGO,'
      'CTE_CODIGONUMERICO,'
      'CTE_COMISSAO,'
      'CTE_CONDICAO,'
      'CTE_CONDICAOMEMO,'
      'CTE_CONSULTADA,'
      'CTE_CSTICMS,'
      'CTE_CTEREFERENCIADO,'
      'CTE_DATAHORA,'
      'CTE_DATAHORACONTINGENCIA,'
      'CTE_DESBAIRRO,'
      'CTE_DESCEP,'
      'CTE_DESCIDADE,'
      'CTE_DESCIDADECODIGO,'
      'CTE_DESCNPJ,'
      'CTE_DESCOMPLEMENTO,'
      'CTE_DESCONTATO,'
      'CTE_DESCPF,'
      'CTE_DESCPORC,'
      'CTE_DESCVALOR,'
      'CTE_DESENDERECO,'
      'CTE_DESESTADO,'
      'CTE_DESESTADOCODIGO,'
      'CTE_DESFONE,'
      'CTE_DESIE,'
      'CTE_DESNOME,'
      'CTE_DESNUMERO,'
      'CTE_DESPAIS,'
      'CTE_DESPAISCODIGO,'
      'CTE_DESTINATARIO,'
      'CTE_DIAPREFERENCIAL,'
      'CTE_DTATUALIZACAO,'
      'CTE_DTCADASTRO,'
      'CTE_DTEMISSAO,'
      'CTE_ENTREGADATA,'
      'CTE_ENTREGADATAFINAL,'
      'CTE_ENTREGADATAINICIAL,'
      'CTE_ENTREGAHORA,'
      'CTE_ENTREGAHORAFINAL,'
      'CTE_ENTREGAHORAINICIAL,'
      'CTE_ENVIADO,'
      'CTE_EXPBAIRRO,'
      'CTE_EXPCEP,'
      'CTE_EXPCIDADE,'
      'CTE_EXPCIDADECODIGO,'
      'CTE_EXPCNPJ,'
      'CTE_EXPCOMPLEMENTO,'
      'CTE_EXPCONTATO,'
      'CTE_EXPCPF,'
      'CTE_EXPEDIDOR,'
      'CTE_EXPENDERECO,'
      'CTE_EXPESTADO,'
      'CTE_EXPESTADOCODIGO,'
      'CTE_EXPFONE,'
      'CTE_EXPIE,'
      'CTE_EXPNOME,'
      'CTE_EXPNUMERO,'
      'CTE_EXPPAIS,'
      'CTE_EXPPAISCODIGO,'
      'CTE_FINALIDADE,'
      'CTE_FORMAPAGTO,'
      'CTE_FORMAPAGTOSERVICO,'
      'CTE_HRATUALIZACAO,'
      'CTE_HRCADASTRO,'
      'CTE_ICMSALIQUOTAUF,'
      'CTE_ICMSPOR,'
      'CTE_INFOADICFISCO,'
      'CTE_LOTACAO,'
      'CTE_LOTE,'
      'CTE_MODAL,'
      'CTE_MODELO,'
      'CTE_MOTIVOCANCELAMENTO,'
      'CTE_MOTIVOCONTINGENCIA,'
      'CTE_MOTIVOINUTILIZACAO,'
      'CTE_MOTORISTA,'
      'CTE_MOTORISTACPF,'
      'CTE_MOVIMENTAFINANCEIRO,'
      'CTE_OBSERVACOES,'
      'CTE_PAGOPOR,'
      'CTE_PESOTOTAL,'
      'CTE_PRODUTOPREDOM,'
      'CTE_PROTOCOLO,'
      'CTE_PROTOCOLOCANC,'
      'CTE_PROTOCOLOCANCDH,'
      'CTE_PROTOCOLODH,'
      'CTE_PROTOCOLOINUT,'
      'CTE_PROTOCOLOINUTDH,'
      'CTE_RECBAIRRO,'
      'CTE_RECCEP,'
      'CTE_RECCIDADE,'
      'CTE_RECCIDADECODIGO,'
      'CTE_RECCNPJ,'
      'CTE_RECCOMPLEMENTO,'
      'CTE_RECCONTATO,'
      'CTE_RECCPF,'
      'CTE_RECEBEDOR,'
      'CTE_RECEBIDODATA,'
      'CTE_RECEBIDOPOR,'
      'CTE_RECENDERECO,'
      'CTE_RECESTADO,'
      'CTE_RECESTADOCODIGO,'
      'CTE_RECFONE,'
      'CTE_RECIBO,'
      'CTE_RECIBODH,'
      'CTE_RECIE,'
      'CTE_RECNOME,'
      'CTE_RECNUMERO,'
      'CTE_RECPAIS,'
      'CTE_RECPAISCODIGO,'
      'CTE_REFERENCIA,'
      'CTE_REMBAIRRO,'
      'CTE_REMCEP,'
      'CTE_REMCIDADE,'
      'CTE_REMCIDADECODIGO,'
      'CTE_REMCNPJ,'
      'CTE_REMCOMPLEMENTO,'
      'CTE_REMCONTATO,'
      'CTE_REMCPF,'
      'CTE_REMENDERECO,'
      'CTE_REMESTADO,'
      'CTE_REMESTADOCODIGO,'
      'CTE_REMETENTE,'
      'CTE_REMFONE,'
      'CTE_REMIE,'
      'CTE_REMNOME,'
      'CTE_REMNUMERO,'
      'CTE_REMPAIS,'
      'CTE_REMPAISCODIGO,'
      'CTE_RETIRA,'
      'CTE_RETIRADETALHES,'
      'CTE_SEGURO,'
      'CTE_SEGUROAPOLICE,'
      'CTE_SEGUROAVERBACAO,'
      'CTE_SEGURONOME,'
      'CTE_SEGUROVALOR,'
      'CTE_SERIE,'
      'CTE_STATUS,'
      'CTE_TIPOCTE,'
      'CTE_TIPOEMISSAO,'
      'CTE_TIPOSERVICO,'
      'CTE_TOMADOR,'
      'CTE_TOMADORBAIRRO,'
      'CTE_TOMADORCEP,'
      'CTE_TOMADORCIDADE,'
      'CTE_TOMADORCIDADECODIGO,'
      'CTE_TOMADORCNPJ,'
      'CTE_TOMADORCODIGO,'
      'CTE_TOMADORCOMPLEMENTO,'
      'CTE_TOMADORCONTATO,'
      'CTE_TOMADORCPF,'
      'CTE_TOMADORENDERECO,'
      'CTE_TOMADORESTADO,'
      'CTE_TOMADORESTADOCODIGO,'
      'CTE_TOMADORFONE,'
      'CTE_TOMADORIE,'
      'CTE_TOMADORNOME,'
      'CTE_TOMADORNUMERO,'
      'CTE_TOMADORPAIS,'
      'CTE_TOMADORPAISCODIGO,'
      'CTE_TOTALCCE,'
      'CTE_TOTALCOMISSAO,'
      'CTE_TOTALFCP,'
      'CTE_TOTALICMS,'
      'CTE_TOTALICMSST,'
      'CTE_TOTALICMSUFFIM,'
      'CTE_TOTALICMSUFINI,'
      'CTE_TOTALTRIBUTOS,'
      'CTE_USUARIO,'
      'CTE_VALORCREDITOICMS,'
      'CTE_VALORFRETE,'
      'CTE_VALORNOTAS,'
      'CTE_VALOROUTROS,'
      'CTE_VALORSEGURO,'
      'CTE_VALORTOTAL,'
      'CTE_VENDEDOR,'
      'CPG_DESCRICAO,'
      'ICM_DESCRICAO,'
      'VEN_NOME'
      'from CTE'
      'left join CONDICOES on CTE_CONDICAO=CPG_CODIGO'
      'left join ICMS on CTE_CSTICMS=ICM_CODIGO'
      'left join VENDEDORES on CTE_VENDEDOR=VEN_CODIGO'
      'where CTE_CODIGO=:codigo'
      '')
    Left = 704
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCteCTE_AEREODIMENSAO: TStringField
      FieldName = 'CTE_AEREODIMENSAO'
      Origin = 'CTE_AEREODIMENSAO'
      EditMask = '0000\X0000\X0000;1;_'
      Size = 14
    end
    object TBCteCTE_AEREODTPREVISTA: TDateField
      FieldName = 'CTE_AEREODTPREVISTA'
      Origin = 'CTE_AEREODTPREVISTA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_AEREOIATA: TStringField
      FieldName = 'CTE_AEREOIATA'
      Origin = 'CTE_AEREOIATA'
      Size = 14
    end
    object TBCteCTE_AEREOIMP: TStringField
      FieldName = 'CTE_AEREOIMP'
      Origin = 'CTE_AEREOIMP'
      Size = 3
    end
    object TBCteCTE_AEREOMINUTA: TIntegerField
      FieldName = 'CTE_AEREOMINUTA'
      Origin = 'CTE_AEREOMINUTA'
    end
    object TBCteCTE_AEREONOMEFILIAL: TStringField
      FieldName = 'CTE_AEREONOMEFILIAL'
      Origin = 'CTE_AEREONOMEFILIAL'
    end
    object TBCteCTE_AEREOOCA: TStringField
      FieldName = 'CTE_AEREOOCA'
      Origin = 'CTE_AEREOOCA'
      EditMask = '99999999999;1;_'
      Size = 14
    end
    object TBCteCTE_AEREOTARIFACLASSE: TStringField
      FieldName = 'CTE_AEREOTARIFACLASSE'
      Origin = 'CTE_AEREOTARIFACLASSE'
      Size = 25
    end
    object TBCteCTE_AEREOTARIFACODIGO: TIntegerField
      FieldName = 'CTE_AEREOTARIFACODIGO'
      Origin = 'CTE_AEREOTARIFACODIGO'
    end
    object TBCteCTE_AEREOTARIFAVALOR: TFMTBCDField
      FieldName = 'CTE_AEREOTARIFAVALOR'
      Origin = 'CTE_AEREOTARIFAVALOR'
      Precision = 18
    end
    object TBCteCTE_ALIQFCP: TFMTBCDField
      FieldName = 'CTE_ALIQFCP'
      Origin = 'CTE_ALIQFCP'
      Precision = 18
    end
    object TBCteCTE_ALIQICMS: TFMTBCDField
      FieldName = 'CTE_ALIQICMS'
      Origin = 'CTE_ALIQICMS'
      Precision = 18
    end
    object TBCteCTE_ALIQICMSINTER: TFMTBCDField
      FieldName = 'CTE_ALIQICMSINTER'
      Origin = 'CTE_ALIQICMSINTER'
      Precision = 18
    end
    object TBCteCTE_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'CTE_ALIQICMSINTERPART'
      Origin = 'CTE_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBCteCTE_ALIQICMSRED: TFMTBCDField
      FieldName = 'CTE_ALIQICMSRED'
      Origin = 'CTE_ALIQICMSRED'
      Precision = 18
    end
    object TBCteCTE_ALIQICMSST: TFMTBCDField
      FieldName = 'CTE_ALIQICMSST'
      Origin = 'CTE_ALIQICMSST'
      Precision = 18
    end
    object TBCteCTE_ALIQICMSUFFIM: TFMTBCDField
      FieldName = 'CTE_ALIQICMSUFFIM'
      Origin = 'CTE_ALIQICMSUFFIM'
      Precision = 18
    end
    object TBCteCTE_ALIQTRIBUTOS: TFMTBCDField
      FieldName = 'CTE_ALIQTRIBUTOS'
      Origin = 'CTE_ALIQTRIBUTOS'
      Precision = 18
    end
    object TBCteCTE_BAIXADATA: TDateField
      FieldName = 'CTE_BAIXADATA'
      Origin = 'CTE_BAIXADATA'
    end
    object TBCteCTE_BAIXAPOR: TStringField
      FieldName = 'CTE_BAIXAPOR'
      Origin = 'CTE_BAIXAPOR'
    end
    object TBCteCTE_BASEICMS: TFMTBCDField
      FieldName = 'CTE_BASEICMS'
      Origin = 'CTE_BASEICMS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_BASEICMSRED: TFMTBCDField
      FieldName = 'CTE_BASEICMSRED'
      Origin = 'CTE_BASEICMSRED'
      currency = True
      Precision = 18
    end
    object TBCteCTE_BASEICMSST: TFMTBCDField
      FieldName = 'CTE_BASEICMSST'
      Origin = 'CTE_BASEICMSST'
      currency = True
      Precision = 18
    end
    object TBCteCTE_CARGAOUTRASCARAC: TStringField
      FieldName = 'CTE_CARGAOUTRASCARAC'
      Origin = 'CTE_CARGAOUTRASCARAC'
      Size = 80
    end
    object TBCteCTE_CFOP: TIntegerField
      FieldName = 'CTE_CFOP'
      Origin = 'CTE_CFOP'
    end
    object TBCteCTE_CFOPDESC: TStringField
      FieldName = 'CTE_CFOPDESC'
      Origin = 'CTE_CFOPDESC'
      Size = 120
    end
    object TBCteCTE_CHAVEACESSO: TStringField
      FieldName = 'CTE_CHAVEACESSO'
      Origin = 'CTE_CHAVEACESSO'
      Size = 50
    end
    object TBCteCTE_CIOT: TStringField
      FieldName = 'CTE_CIOT'
      Origin = 'CTE_CIOT'
      Size = 15
    end
    object TBCteCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = 'CTE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteCTE_CODIGONUMERICO: TStringField
      FieldName = 'CTE_CODIGONUMERICO'
      Origin = 'CTE_CODIGONUMERICO'
      Size = 10
    end
    object TBCteCTE_COMISSAO: TFMTBCDField
      FieldName = 'CTE_COMISSAO'
      Origin = 'CTE_COMISSAO'
      Precision = 18
    end
    object TBCteCTE_CONDICAO: TIntegerField
      FieldName = 'CTE_CONDICAO'
      Origin = 'CTE_CONDICAO'
      Required = True
    end
    object TBCteCTE_CONDICAOMEMO: TMemoField
      FieldName = 'CTE_CONDICAOMEMO'
      Origin = 'CTE_CONDICAOMEMO'
      BlobType = ftMemo
    end
    object TBCteCTE_CONSULTADA: TStringField
      FieldName = 'CTE_CONSULTADA'
      Origin = 'CTE_CONSULTADA'
      Size = 1
    end
    object TBCteCTE_CSTICMS: TIntegerField
      FieldName = 'CTE_CSTICMS'
      Origin = 'CTE_CSTICMS'
    end
    object TBCteCTE_CTEREFERENCIADO: TStringField
      FieldName = 'CTE_CTEREFERENCIADO'
      Origin = 'CTE_CTEREFERENCIADO'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBCteCTE_DATAHORA: TStringField
      FieldName = 'CTE_DATAHORA'
      Origin = 'CTE_DATAHORA'
      Size = 30
    end
    object TBCteCTE_DATAHORACONTINGENCIA: TStringField
      FieldName = 'CTE_DATAHORACONTINGENCIA'
      Origin = 'CTE_DATAHORACONTINGENCIA'
      Size = 30
    end
    object TBCteCTE_DESBAIRRO: TStringField
      FieldName = 'CTE_DESBAIRRO'
      Origin = 'CTE_DESBAIRRO'
      Size = 50
    end
    object TBCteCTE_DESCEP: TStringField
      FieldName = 'CTE_DESCEP'
      Origin = 'CTE_DESCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_DESCIDADE: TStringField
      FieldName = 'CTE_DESCIDADE'
      Origin = 'CTE_DESCIDADE'
      Size = 50
    end
    object TBCteCTE_DESCIDADECODIGO: TIntegerField
      FieldName = 'CTE_DESCIDADECODIGO'
      Origin = 'CTE_DESCIDADECODIGO'
    end
    object TBCteCTE_DESCNPJ: TStringField
      FieldName = 'CTE_DESCNPJ'
      Origin = 'CTE_DESCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteCTE_DESCOMPLEMENTO: TStringField
      FieldName = 'CTE_DESCOMPLEMENTO'
      Origin = 'CTE_DESCOMPLEMENTO'
      Size = 80
    end
    object TBCteCTE_DESCONTATO: TStringField
      FieldName = 'CTE_DESCONTATO'
      Origin = 'CTE_DESCONTATO'
      Size = 80
    end
    object TBCteCTE_DESCPF: TStringField
      FieldName = 'CTE_DESCPF'
      Origin = 'CTE_DESCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_DESCPORC: TFMTBCDField
      FieldName = 'CTE_DESCPORC'
      Origin = 'CTE_DESCPORC'
      Precision = 18
    end
    object TBCteCTE_DESCVALOR: TFMTBCDField
      FieldName = 'CTE_DESCVALOR'
      Origin = 'CTE_DESCVALOR'
      currency = True
      Precision = 18
    end
    object TBCteCTE_DESENDERECO: TStringField
      FieldName = 'CTE_DESENDERECO'
      Origin = 'CTE_DESENDERECO'
      Size = 100
    end
    object TBCteCTE_DESESTADO: TStringField
      FieldName = 'CTE_DESESTADO'
      Origin = 'CTE_DESESTADO'
      Size = 2
    end
    object TBCteCTE_DESESTADOCODIGO: TIntegerField
      FieldName = 'CTE_DESESTADOCODIGO'
      Origin = 'CTE_DESESTADOCODIGO'
    end
    object TBCteCTE_DESFONE: TStringField
      FieldName = 'CTE_DESFONE'
      Origin = 'CTE_DESFONE'
    end
    object TBCteCTE_DESIE: TStringField
      FieldName = 'CTE_DESIE'
      Origin = 'CTE_DESIE'
    end
    object TBCteCTE_DESNOME: TStringField
      FieldName = 'CTE_DESNOME'
      Origin = 'CTE_DESNOME'
      Size = 80
    end
    object TBCteCTE_DESNUMERO: TStringField
      FieldName = 'CTE_DESNUMERO'
      Origin = 'CTE_DESNUMERO'
      Size = 15
    end
    object TBCteCTE_DESPAIS: TStringField
      FieldName = 'CTE_DESPAIS'
      Origin = 'CTE_DESPAIS'
      Size = 80
    end
    object TBCteCTE_DESPAISCODIGO: TIntegerField
      FieldName = 'CTE_DESPAISCODIGO'
      Origin = 'CTE_DESPAISCODIGO'
    end
    object TBCteCTE_DESTINATARIO: TIntegerField
      FieldName = 'CTE_DESTINATARIO'
      Origin = 'CTE_DESTINATARIO'
      Required = True
    end
    object TBCteCTE_DIAPREFERENCIAL: TIntegerField
      FieldName = 'CTE_DIAPREFERENCIAL'
      Origin = 'CTE_DIAPREFERENCIAL'
    end
    object TBCteCTE_DTATUALIZACAO: TDateField
      FieldName = 'CTE_DTATUALIZACAO'
      Origin = 'CTE_DTATUALIZACAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_DTCADASTRO: TDateField
      FieldName = 'CTE_DTCADASTRO'
      Origin = 'CTE_DTCADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_DTEMISSAO: TDateField
      FieldName = 'CTE_DTEMISSAO'
      Origin = 'CTE_DTEMISSAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGADATA: TStringField
      FieldName = 'CTE_ENTREGADATA'
      Origin = 'CTE_ENTREGADATA'
      Size = 30
    end
    object TBCteCTE_ENTREGADATAFINAL: TDateField
      FieldName = 'CTE_ENTREGADATAFINAL'
      Origin = 'CTE_ENTREGADATAFINAL'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGADATAINICIAL: TDateField
      FieldName = 'CTE_ENTREGADATAINICIAL'
      Origin = 'CTE_ENTREGADATAINICIAL'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_ENTREGAHORA: TStringField
      FieldName = 'CTE_ENTREGAHORA'
      Origin = 'CTE_ENTREGAHORA'
      Size = 30
    end
    object TBCteCTE_ENTREGAHORAFINAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAFINAL'
      Origin = 'CTE_ENTREGAHORAFINAL'
      EditMask = '!99:99:99;1;_'
    end
    object TBCteCTE_ENTREGAHORAINICIAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAINICIAL'
      Origin = 'CTE_ENTREGAHORAINICIAL'
      EditMask = '!99:99:99;1;_'
    end
    object TBCteCTE_ENVIADO: TStringField
      FieldName = 'CTE_ENVIADO'
      Origin = 'CTE_ENVIADO'
      Size = 1
    end
    object TBCteCTE_EXPBAIRRO: TStringField
      FieldName = 'CTE_EXPBAIRRO'
      Origin = 'CTE_EXPBAIRRO'
      Size = 50
    end
    object TBCteCTE_EXPCEP: TStringField
      FieldName = 'CTE_EXPCEP'
      Origin = 'CTE_EXPCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_EXPCIDADE: TStringField
      FieldName = 'CTE_EXPCIDADE'
      Origin = 'CTE_EXPCIDADE'
      Size = 50
    end
    object TBCteCTE_EXPCIDADECODIGO: TIntegerField
      FieldName = 'CTE_EXPCIDADECODIGO'
      Origin = 'CTE_EXPCIDADECODIGO'
    end
    object TBCteCTE_EXPCNPJ: TStringField
      FieldName = 'CTE_EXPCNPJ'
      Origin = 'CTE_EXPCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteCTE_EXPCOMPLEMENTO: TStringField
      FieldName = 'CTE_EXPCOMPLEMENTO'
      Origin = 'CTE_EXPCOMPLEMENTO'
      Size = 80
    end
    object TBCteCTE_EXPCONTATO: TStringField
      FieldName = 'CTE_EXPCONTATO'
      Origin = 'CTE_EXPCONTATO'
      Size = 80
    end
    object TBCteCTE_EXPCPF: TStringField
      FieldName = 'CTE_EXPCPF'
      Origin = 'CTE_EXPCPF'
    end
    object TBCteCTE_EXPEDIDOR: TIntegerField
      FieldName = 'CTE_EXPEDIDOR'
      Origin = 'CTE_EXPEDIDOR'
      Required = True
    end
    object TBCteCTE_EXPENDERECO: TStringField
      FieldName = 'CTE_EXPENDERECO'
      Origin = 'CTE_EXPENDERECO'
      Size = 100
    end
    object TBCteCTE_EXPESTADO: TStringField
      FieldName = 'CTE_EXPESTADO'
      Origin = 'CTE_EXPESTADO'
      Size = 2
    end
    object TBCteCTE_EXPESTADOCODIGO: TIntegerField
      FieldName = 'CTE_EXPESTADOCODIGO'
      Origin = 'CTE_EXPESTADOCODIGO'
    end
    object TBCteCTE_EXPFONE: TStringField
      FieldName = 'CTE_EXPFONE'
      Origin = 'CTE_EXPFONE'
    end
    object TBCteCTE_EXPIE: TStringField
      FieldName = 'CTE_EXPIE'
      Origin = 'CTE_EXPIE'
    end
    object TBCteCTE_EXPNOME: TStringField
      FieldName = 'CTE_EXPNOME'
      Origin = 'CTE_EXPNOME'
      Size = 80
    end
    object TBCteCTE_EXPNUMERO: TStringField
      FieldName = 'CTE_EXPNUMERO'
      Origin = 'CTE_EXPNUMERO'
      Size = 15
    end
    object TBCteCTE_EXPPAIS: TStringField
      FieldName = 'CTE_EXPPAIS'
      Origin = 'CTE_EXPPAIS'
      Size = 80
    end
    object TBCteCTE_EXPPAISCODIGO: TIntegerField
      FieldName = 'CTE_EXPPAISCODIGO'
      Origin = 'CTE_EXPPAISCODIGO'
    end
    object TBCteCTE_FINALIDADE: TStringField
      FieldName = 'CTE_FINALIDADE'
      Origin = 'CTE_FINALIDADE'
      Size = 30
    end
    object TBCteCTE_FORMAPAGTO: TStringField
      FieldName = 'CTE_FORMAPAGTO'
      Origin = 'CTE_FORMAPAGTO'
      Size = 15
    end
    object TBCteCTE_FORMAPAGTOSERVICO: TStringField
      FieldName = 'CTE_FORMAPAGTOSERVICO'
      Origin = 'CTE_FORMAPAGTOSERVICO'
      Size = 15
    end
    object TBCteCTE_HRATUALIZACAO: TTimeField
      FieldName = 'CTE_HRATUALIZACAO'
      Origin = 'CTE_HRATUALIZACAO'
    end
    object TBCteCTE_HRCADASTRO: TTimeField
      FieldName = 'CTE_HRCADASTRO'
      Origin = 'CTE_HRCADASTRO'
    end
    object TBCteCTE_ICMSALIQUOTAUF: TFMTBCDField
      FieldName = 'CTE_ICMSALIQUOTAUF'
      Origin = 'CTE_ICMSALIQUOTAUF'
      Precision = 18
    end
    object TBCteCTE_ICMSPOR: TStringField
      FieldName = 'CTE_ICMSPOR'
      Origin = 'CTE_ICMSPOR'
      Size = 1
    end
    object TBCteCTE_INFOADICFISCO: TMemoField
      FieldName = 'CTE_INFOADICFISCO'
      Origin = 'CTE_INFOADICFISCO'
      BlobType = ftMemo
    end
    object TBCteCTE_LOTACAO: TStringField
      FieldName = 'CTE_LOTACAO'
      Origin = 'CTE_LOTACAO'
      Size = 10
    end
    object TBCteCTE_LOTE: TStringField
      FieldName = 'CTE_LOTE'
      Origin = 'CTE_LOTE'
    end
    object TBCteCTE_MODAL: TStringField
      FieldName = 'CTE_MODAL'
      Origin = 'CTE_MODAL'
      Size = 40
    end
    object TBCteCTE_MODELO: TIntegerField
      FieldName = 'CTE_MODELO'
      Origin = 'CTE_MODELO'
    end
    object TBCteCTE_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'CTE_MOTIVOCANCELAMENTO'
      Origin = 'CTE_MOTIVOCANCELAMENTO'
      Size = 120
    end
    object TBCteCTE_MOTIVOCONTINGENCIA: TStringField
      FieldName = 'CTE_MOTIVOCONTINGENCIA'
      Origin = 'CTE_MOTIVOCONTINGENCIA'
      Size = 120
    end
    object TBCteCTE_MOTIVOINUTILIZACAO: TStringField
      FieldName = 'CTE_MOTIVOINUTILIZACAO'
      Origin = 'CTE_MOTIVOINUTILIZACAO'
      Size = 120
    end
    object TBCteCTE_MOTORISTA: TStringField
      FieldName = 'CTE_MOTORISTA'
      Origin = 'CTE_MOTORISTA'
      Size = 80
    end
    object TBCteCTE_MOTORISTACPF: TStringField
      FieldName = 'CTE_MOTORISTACPF'
      Origin = 'CTE_MOTORISTACPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'CTE_MOVIMENTAFINANCEIRO'
      Origin = 'CTE_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object TBCteCTE_OBSERVACOES: TMemoField
      FieldName = 'CTE_OBSERVACOES'
      Origin = 'CTE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBCteCTE_PAGOPOR: TStringField
      FieldName = 'CTE_PAGOPOR'
      Origin = 'CTE_PAGOPOR'
      Size = 1
    end
    object TBCteCTE_PESOTOTAL: TFMTBCDField
      FieldName = 'CTE_PESOTOTAL'
      Origin = 'CTE_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object TBCteCTE_PRODUTOPREDOM: TStringField
      FieldName = 'CTE_PRODUTOPREDOM'
      Origin = 'CTE_PRODUTOPREDOM'
      Size = 50
    end
    object TBCteCTE_PROTOCOLO: TStringField
      FieldName = 'CTE_PROTOCOLO'
      Origin = 'CTE_PROTOCOLO'
      Size = 40
    end
    object TBCteCTE_PROTOCOLOCANC: TStringField
      FieldName = 'CTE_PROTOCOLOCANC'
      Origin = 'CTE_PROTOCOLOCANC'
      Size = 40
    end
    object TBCteCTE_PROTOCOLOCANCDH: TStringField
      FieldName = 'CTE_PROTOCOLOCANCDH'
      Origin = 'CTE_PROTOCOLOCANCDH'
      Size = 30
    end
    object TBCteCTE_PROTOCOLODH: TStringField
      FieldName = 'CTE_PROTOCOLODH'
      Origin = 'CTE_PROTOCOLODH'
      Size = 30
    end
    object TBCteCTE_PROTOCOLOINUT: TStringField
      FieldName = 'CTE_PROTOCOLOINUT'
      Origin = 'CTE_PROTOCOLOINUT'
      Size = 40
    end
    object TBCteCTE_PROTOCOLOINUTDH: TStringField
      FieldName = 'CTE_PROTOCOLOINUTDH'
      Origin = 'CTE_PROTOCOLOINUTDH'
      Size = 30
    end
    object TBCteCTE_RECBAIRRO: TStringField
      FieldName = 'CTE_RECBAIRRO'
      Origin = 'CTE_RECBAIRRO'
      Size = 50
    end
    object TBCteCTE_RECCEP: TStringField
      FieldName = 'CTE_RECCEP'
      Origin = 'CTE_RECCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_RECCIDADE: TStringField
      FieldName = 'CTE_RECCIDADE'
      Origin = 'CTE_RECCIDADE'
      Size = 50
    end
    object TBCteCTE_RECCIDADECODIGO: TIntegerField
      FieldName = 'CTE_RECCIDADECODIGO'
      Origin = 'CTE_RECCIDADECODIGO'
    end
    object TBCteCTE_RECCNPJ: TStringField
      FieldName = 'CTE_RECCNPJ'
      Origin = 'CTE_RECCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteCTE_RECCOMPLEMENTO: TStringField
      FieldName = 'CTE_RECCOMPLEMENTO'
      Origin = 'CTE_RECCOMPLEMENTO'
      Size = 80
    end
    object TBCteCTE_RECCONTATO: TStringField
      FieldName = 'CTE_RECCONTATO'
      Origin = 'CTE_RECCONTATO'
      Size = 80
    end
    object TBCteCTE_RECCPF: TStringField
      FieldName = 'CTE_RECCPF'
      Origin = 'CTE_RECCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_RECEBEDOR: TIntegerField
      FieldName = 'CTE_RECEBEDOR'
      Origin = 'CTE_RECEBEDOR'
      Required = True
    end
    object TBCteCTE_RECEBIDODATA: TDateField
      FieldName = 'CTE_RECEBIDODATA'
      Origin = 'CTE_RECEBIDODATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteCTE_RECEBIDOPOR: TStringField
      FieldName = 'CTE_RECEBIDOPOR'
      Origin = 'CTE_RECEBIDOPOR'
      Size = 80
    end
    object TBCteCTE_RECENDERECO: TStringField
      FieldName = 'CTE_RECENDERECO'
      Origin = 'CTE_RECENDERECO'
      Size = 100
    end
    object TBCteCTE_RECESTADO: TStringField
      FieldName = 'CTE_RECESTADO'
      Origin = 'CTE_RECESTADO'
      Size = 2
    end
    object TBCteCTE_RECESTADOCODIGO: TIntegerField
      FieldName = 'CTE_RECESTADOCODIGO'
      Origin = 'CTE_RECESTADOCODIGO'
    end
    object TBCteCTE_RECFONE: TStringField
      FieldName = 'CTE_RECFONE'
      Origin = 'CTE_RECFONE'
    end
    object TBCteCTE_RECIBO: TStringField
      FieldName = 'CTE_RECIBO'
      Origin = 'CTE_RECIBO'
      Size = 40
    end
    object TBCteCTE_RECIBODH: TStringField
      FieldName = 'CTE_RECIBODH'
      Origin = 'CTE_RECIBODH'
      Size = 30
    end
    object TBCteCTE_RECIE: TStringField
      FieldName = 'CTE_RECIE'
      Origin = 'CTE_RECIE'
    end
    object TBCteCTE_RECNOME: TStringField
      FieldName = 'CTE_RECNOME'
      Origin = 'CTE_RECNOME'
      Size = 80
    end
    object TBCteCTE_RECNUMERO: TStringField
      FieldName = 'CTE_RECNUMERO'
      Origin = 'CTE_RECNUMERO'
      Size = 15
    end
    object TBCteCTE_RECPAIS: TStringField
      FieldName = 'CTE_RECPAIS'
      Origin = 'CTE_RECPAIS'
      Size = 80
    end
    object TBCteCTE_RECPAISCODIGO: TIntegerField
      FieldName = 'CTE_RECPAISCODIGO'
      Origin = 'CTE_RECPAISCODIGO'
    end
    object TBCteCTE_REFERENCIA: TStringField
      FieldName = 'CTE_REFERENCIA'
      Origin = 'CTE_REFERENCIA'
    end
    object TBCteCTE_REMBAIRRO: TStringField
      FieldName = 'CTE_REMBAIRRO'
      Origin = 'CTE_REMBAIRRO'
      Size = 50
    end
    object TBCteCTE_REMCEP: TStringField
      FieldName = 'CTE_REMCEP'
      Origin = 'CTE_REMCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_REMCIDADE: TStringField
      FieldName = 'CTE_REMCIDADE'
      Origin = 'CTE_REMCIDADE'
      Size = 50
    end
    object TBCteCTE_REMCIDADECODIGO: TIntegerField
      FieldName = 'CTE_REMCIDADECODIGO'
      Origin = 'CTE_REMCIDADECODIGO'
    end
    object TBCteCTE_REMCNPJ: TStringField
      FieldName = 'CTE_REMCNPJ'
      Origin = 'CTE_REMCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteCTE_REMCOMPLEMENTO: TStringField
      FieldName = 'CTE_REMCOMPLEMENTO'
      Origin = 'CTE_REMCOMPLEMENTO'
      Size = 80
    end
    object TBCteCTE_REMCONTATO: TStringField
      FieldName = 'CTE_REMCONTATO'
      Origin = 'CTE_REMCONTATO'
      Size = 80
    end
    object TBCteCTE_REMCPF: TStringField
      FieldName = 'CTE_REMCPF'
      Origin = 'CTE_REMCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_REMENDERECO: TStringField
      FieldName = 'CTE_REMENDERECO'
      Origin = 'CTE_REMENDERECO'
      Size = 100
    end
    object TBCteCTE_REMESTADO: TStringField
      FieldName = 'CTE_REMESTADO'
      Origin = 'CTE_REMESTADO'
      Size = 2
    end
    object TBCteCTE_REMESTADOCODIGO: TIntegerField
      FieldName = 'CTE_REMESTADOCODIGO'
      Origin = 'CTE_REMESTADOCODIGO'
    end
    object TBCteCTE_REMETENTE: TIntegerField
      FieldName = 'CTE_REMETENTE'
      Origin = 'CTE_REMETENTE'
      Required = True
    end
    object TBCteCTE_REMFONE: TStringField
      FieldName = 'CTE_REMFONE'
      Origin = 'CTE_REMFONE'
    end
    object TBCteCTE_REMIE: TStringField
      FieldName = 'CTE_REMIE'
      Origin = 'CTE_REMIE'
    end
    object TBCteCTE_REMNOME: TStringField
      FieldName = 'CTE_REMNOME'
      Origin = 'CTE_REMNOME'
      Size = 80
    end
    object TBCteCTE_REMNUMERO: TStringField
      FieldName = 'CTE_REMNUMERO'
      Origin = 'CTE_REMNUMERO'
      Size = 15
    end
    object TBCteCTE_REMPAIS: TStringField
      FieldName = 'CTE_REMPAIS'
      Origin = 'CTE_REMPAIS'
      Size = 80
    end
    object TBCteCTE_REMPAISCODIGO: TIntegerField
      FieldName = 'CTE_REMPAISCODIGO'
      Origin = 'CTE_REMPAISCODIGO'
    end
    object TBCteCTE_RETIRA: TStringField
      FieldName = 'CTE_RETIRA'
      Origin = 'CTE_RETIRA'
      Size = 1
    end
    object TBCteCTE_RETIRADETALHES: TStringField
      FieldName = 'CTE_RETIRADETALHES'
      Origin = 'CTE_RETIRADETALHES'
      Size = 120
    end
    object TBCteCTE_SEGURO: TStringField
      FieldName = 'CTE_SEGURO'
      Origin = 'CTE_SEGURO'
    end
    object TBCteCTE_SEGUROAPOLICE: TStringField
      FieldName = 'CTE_SEGUROAPOLICE'
      Origin = 'CTE_SEGUROAPOLICE'
    end
    object TBCteCTE_SEGUROAVERBACAO: TStringField
      FieldName = 'CTE_SEGUROAVERBACAO'
      Origin = 'CTE_SEGUROAVERBACAO'
    end
    object TBCteCTE_SEGURONOME: TStringField
      FieldName = 'CTE_SEGURONOME'
      Origin = 'CTE_SEGURONOME'
      Size = 80
    end
    object TBCteCTE_SEGUROVALOR: TFMTBCDField
      FieldName = 'CTE_SEGUROVALOR'
      Origin = 'CTE_SEGUROVALOR'
      currency = True
      Precision = 18
    end
    object TBCteCTE_SERIE: TIntegerField
      FieldName = 'CTE_SERIE'
      Origin = 'CTE_SERIE'
    end
    object TBCteCTE_STATUS: TStringField
      FieldName = 'CTE_STATUS'
      Origin = 'CTE_STATUS'
      Size = 1
    end
    object TBCteCTE_TIPOCTE: TStringField
      FieldName = 'CTE_TIPOCTE'
      Origin = 'CTE_TIPOCTE'
      Size = 40
    end
    object TBCteCTE_TIPOEMISSAO: TStringField
      FieldName = 'CTE_TIPOEMISSAO'
      Origin = 'CTE_TIPOEMISSAO'
      Size = 40
    end
    object TBCteCTE_TIPOSERVICO: TStringField
      FieldName = 'CTE_TIPOSERVICO'
      Origin = 'CTE_TIPOSERVICO'
      Size = 40
    end
    object TBCteCTE_TOMADOR: TStringField
      FieldName = 'CTE_TOMADOR'
      Origin = 'CTE_TOMADOR'
    end
    object TBCteCTE_TOMADORBAIRRO: TStringField
      FieldName = 'CTE_TOMADORBAIRRO'
      Origin = 'CTE_TOMADORBAIRRO'
      Size = 50
    end
    object TBCteCTE_TOMADORCEP: TStringField
      FieldName = 'CTE_TOMADORCEP'
      Origin = 'CTE_TOMADORCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBCteCTE_TOMADORCIDADE: TStringField
      FieldName = 'CTE_TOMADORCIDADE'
      Origin = 'CTE_TOMADORCIDADE'
      Size = 50
    end
    object TBCteCTE_TOMADORCIDADECODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCIDADECODIGO'
      Origin = 'CTE_TOMADORCIDADECODIGO'
    end
    object TBCteCTE_TOMADORCNPJ: TStringField
      FieldName = 'CTE_TOMADORCNPJ'
      Origin = 'CTE_TOMADORCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteCTE_TOMADORCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCODIGO'
      Origin = 'CTE_TOMADORCODIGO'
    end
    object TBCteCTE_TOMADORCOMPLEMENTO: TStringField
      FieldName = 'CTE_TOMADORCOMPLEMENTO'
      Origin = 'CTE_TOMADORCOMPLEMENTO'
      Size = 80
    end
    object TBCteCTE_TOMADORCONTATO: TStringField
      FieldName = 'CTE_TOMADORCONTATO'
      Origin = 'CTE_TOMADORCONTATO'
      Size = 80
    end
    object TBCteCTE_TOMADORCPF: TStringField
      FieldName = 'CTE_TOMADORCPF'
      Origin = 'CTE_TOMADORCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBCteCTE_TOMADORENDERECO: TStringField
      FieldName = 'CTE_TOMADORENDERECO'
      Origin = 'CTE_TOMADORENDERECO'
      Size = 100
    end
    object TBCteCTE_TOMADORESTADO: TStringField
      FieldName = 'CTE_TOMADORESTADO'
      Origin = 'CTE_TOMADORESTADO'
      Size = 2
    end
    object TBCteCTE_TOMADORESTADOCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORESTADOCODIGO'
      Origin = 'CTE_TOMADORESTADOCODIGO'
    end
    object TBCteCTE_TOMADORFONE: TStringField
      FieldName = 'CTE_TOMADORFONE'
      Origin = 'CTE_TOMADORFONE'
    end
    object TBCteCTE_TOMADORIE: TStringField
      FieldName = 'CTE_TOMADORIE'
      Origin = 'CTE_TOMADORIE'
    end
    object TBCteCTE_TOMADORNOME: TStringField
      FieldName = 'CTE_TOMADORNOME'
      Origin = 'CTE_TOMADORNOME'
      Size = 80
    end
    object TBCteCTE_TOMADORNUMERO: TStringField
      FieldName = 'CTE_TOMADORNUMERO'
      Origin = 'CTE_TOMADORNUMERO'
      Size = 15
    end
    object TBCteCTE_TOMADORPAIS: TStringField
      FieldName = 'CTE_TOMADORPAIS'
      Origin = 'CTE_TOMADORPAIS'
      Size = 80
    end
    object TBCteCTE_TOMADORPAISCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORPAISCODIGO'
      Origin = 'CTE_TOMADORPAISCODIGO'
    end
    object TBCteCTE_TOTALCCE: TIntegerField
      FieldName = 'CTE_TOTALCCE'
      Origin = 'CTE_TOTALCCE'
    end
    object TBCteCTE_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'CTE_TOTALCOMISSAO'
      Origin = 'CTE_TOTALCOMISSAO'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALFCP: TFMTBCDField
      FieldName = 'CTE_TOTALFCP'
      Origin = 'CTE_TOTALFCP'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALICMS: TFMTBCDField
      FieldName = 'CTE_TOTALICMS'
      Origin = 'CTE_TOTALICMS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALICMSST: TFMTBCDField
      FieldName = 'CTE_TOTALICMSST'
      Origin = 'CTE_TOTALICMSST'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALICMSUFFIM: TFMTBCDField
      FieldName = 'CTE_TOTALICMSUFFIM'
      Origin = 'CTE_TOTALICMSUFFIM'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALICMSUFINI: TFMTBCDField
      FieldName = 'CTE_TOTALICMSUFINI'
      Origin = 'CTE_TOTALICMSUFINI'
      currency = True
      Precision = 18
    end
    object TBCteCTE_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'CTE_TOTALTRIBUTOS'
      Origin = 'CTE_TOTALTRIBUTOS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_USUARIO: TStringField
      FieldName = 'CTE_USUARIO'
      Origin = 'CTE_USUARIO'
    end
    object TBCteCTE_VALORCREDITOICMS: TFMTBCDField
      FieldName = 'CTE_VALORCREDITOICMS'
      Origin = 'CTE_VALORCREDITOICMS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VALORFRETE: TFMTBCDField
      FieldName = 'CTE_VALORFRETE'
      Origin = 'CTE_VALORFRETE'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VALORNOTAS: TFMTBCDField
      FieldName = 'CTE_VALORNOTAS'
      Origin = 'CTE_VALORNOTAS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VALOROUTROS: TFMTBCDField
      FieldName = 'CTE_VALOROUTROS'
      Origin = 'CTE_VALOROUTROS'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VALORSEGURO: TFMTBCDField
      FieldName = 'CTE_VALORSEGURO'
      Origin = 'CTE_VALORSEGURO'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VALORTOTAL: TFMTBCDField
      FieldName = 'CTE_VALORTOTAL'
      Origin = 'CTE_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBCteCTE_VENDEDOR: TIntegerField
      FieldName = 'CTE_VENDEDOR'
      Origin = 'CTE_VENDEDOR'
      Required = True
    end
    object TBCteCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBCteICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBCteVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRCteCampos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 736
    Top = 88
  end
  object UPCteCampos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTECAMPOS'
      '(CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, '
      '  CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO)'
      
        'VALUES (:NEW_CTF_ALTERAVEL, :NEW_CTF_CAMPO, gen_id(GEN_CTECAMPOS' +
        ',1), :NEW_CTF_DESCRICAO, '
      '  :NEW_CTF_GRUPO, :NEW_CTF_NIVEL, :NEW_CTF_PAI, :NEW_CTF_TIPO)'
      
        'RETURNING CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, C' +
        'TF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO')
    ModifySQL.Strings = (
      'UPDATE CTECAMPOS'
      
        'SET CTF_ALTERAVEL = :NEW_CTF_ALTERAVEL, CTF_CAMPO = :NEW_CTF_CAM' +
        'PO, '
      
        '  CTF_CODIGO = :NEW_CTF_CODIGO, CTF_DESCRICAO = :NEW_CTF_DESCRIC' +
        'AO, '
      '  CTF_GRUPO = :NEW_CTF_GRUPO, CTF_NIVEL = :NEW_CTF_NIVEL, '
      '  CTF_PAI = :NEW_CTF_PAI, CTF_TIPO = :NEW_CTF_TIPO'
      'WHERE CTF_CODIGO = :OLD_CTF_CODIGO'
      
        'RETURNING CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, C' +
        'TF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO')
    DeleteSQL.Strings = (
      'DELETE FROM CTECAMPOS'
      'WHERE CTF_CODIGO = :OLD_CTF_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_' +
        'GRUPO, '
      '  CTF_NIVEL, CTF_PAI, CTF_TIPO'
      'FROM CTECAMPOS'
      'WHERE CTF_CODIGO = :OLD_CTF_CODIGO')
    Left = 736
    Top = 56
  end
  object TBCteCampos: TFDQuery
    BeforeInsert = TBCteCamposBeforeInsert
    AfterInsert = TBCteCamposAfterInsert
    Connection = DM.FDConnection1
    Transaction = TRCteCampos
    UpdateObject = UPCteCampos
    SQL.Strings = (
      'select'
      'CTF_ALTERAVEL,'
      'CTF_CAMPO,'
      'CTF_CODIGO,'
      'CTF_DESCRICAO,'
      'CTF_GRUPO,'
      'CTF_NIVEL,'
      'CTF_PAI,'
      'CTF_TIPO'
      'from CTECAMPOS '
      'order by CTF_CODIGO'
      '')
    Left = 736
    Top = 24
    object TBCteCamposCTF_ALTERAVEL: TStringField
      FieldName = 'CTF_ALTERAVEL'
      Origin = 'CTF_ALTERAVEL'
      Size = 1
    end
    object TBCteCamposCTF_CAMPO: TStringField
      FieldName = 'CTF_CAMPO'
      Origin = 'CTF_CAMPO'
    end
    object TBCteCamposCTF_CODIGO: TIntegerField
      FieldName = 'CTF_CODIGO'
      Origin = 'CTF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteCamposCTF_DESCRICAO: TStringField
      FieldName = 'CTF_DESCRICAO'
      Origin = 'CTF_DESCRICAO'
      Size = 50
    end
    object TBCteCamposCTF_GRUPO: TStringField
      FieldName = 'CTF_GRUPO'
      Origin = 'CTF_GRUPO'
    end
    object TBCteCamposCTF_NIVEL: TIntegerField
      FieldName = 'CTF_NIVEL'
      Origin = 'CTF_NIVEL'
    end
    object TBCteCamposCTF_PAI: TIntegerField
      FieldName = 'CTF_PAI'
      Origin = 'CTF_PAI'
    end
    object TBCteCamposCTF_TIPO: TStringField
      FieldName = 'CTF_TIPO'
      Origin = 'CTF_TIPO'
      Size = 1
    end
  end
  object TRCteCarga: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 768
    Top = 88
  end
  object UPCteCarga: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTECARGA'
      '(CCG_CODIGO, CCG_CTE, CCG_QUANTIDADE, CCG_TIPOMEDIDA, '
      '  CCG_UNIDADEMEDIDA)'
      
        'VALUES (gen_id(GEN_CTECARGA,1), :NEW_CCG_CTE, :NEW_CCG_QUANTIDAD' +
        'E, :NEW_CCG_TIPOMEDIDA, '
      '  :NEW_CCG_UNIDADEMEDIDA)'
      
        'RETURNING CCG_CODIGO, CCG_CTE, CCG_QUANTIDADE, CCG_TIPOMEDIDA, C' +
        'CG_UNIDADEMEDIDA')
    ModifySQL.Strings = (
      'UPDATE CTECARGA'
      
        'SET CCG_CODIGO = :NEW_CCG_CODIGO, CCG_CTE = :NEW_CCG_CTE, CCG_QU' +
        'ANTIDADE = :NEW_CCG_QUANTIDADE, '
      
        '  CCG_TIPOMEDIDA = :NEW_CCG_TIPOMEDIDA, CCG_UNIDADEMEDIDA = :NEW' +
        '_CCG_UNIDADEMEDIDA'
      'WHERE CCG_CODIGO = :OLD_CCG_CODIGO'
      
        'RETURNING CCG_CODIGO, CCG_CTE, CCG_QUANTIDADE, CCG_TIPOMEDIDA, C' +
        'CG_UNIDADEMEDIDA')
    DeleteSQL.Strings = (
      'DELETE FROM CTECARGA'
      'WHERE CCG_CODIGO = :OLD_CCG_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CCG_CODIGO, CCG_CTE, CCG_QUANTIDADE, CCG_TIPOMEDIDA, CCG_' +
        'UNIDADEMEDIDA'
      'FROM CTECARGA'
      'WHERE CCG_CODIGO = :OLD_CCG_CODIGO')
    Left = 768
    Top = 56
  end
  object TBCteCarga: TFDQuery
    AfterInsert = TBCteCargaAfterInsert
    MasterSource = DSCte
    MasterFields = 'CTE_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCteCarga
    UpdateObject = UPCteCarga
    SQL.Strings = (
      'select'
      'CCG_CODIGO,'
      'CCG_CTE,'
      'CCG_UNIDADEMEDIDA,'
      'CCG_TIPOMEDIDA,'
      'CCG_QUANTIDADE'
      'from CTECARGA'
      'where CCG_CTE=:CTE_CODIGO'
      'order by CCG_CODIGO'
      '')
    Left = 768
    Top = 24
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCteCargaCCG_CODIGO: TIntegerField
      FieldName = 'CCG_CODIGO'
      Origin = 'CCG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteCargaCCG_CTE: TIntegerField
      FieldName = 'CCG_CTE'
      Origin = 'CCG_CTE'
      Required = True
    end
    object TBCteCargaCCG_UNIDADEMEDIDA: TStringField
      FieldName = 'CCG_UNIDADEMEDIDA'
      Origin = 'CCG_UNIDADEMEDIDA'
    end
    object TBCteCargaCCG_TIPOMEDIDA: TStringField
      FieldName = 'CCG_TIPOMEDIDA'
      Origin = 'CCG_TIPOMEDIDA'
    end
    object TBCteCargaCCG_QUANTIDADE: TFMTBCDField
      FieldName = 'CCG_QUANTIDADE'
      Origin = 'CCG_QUANTIDADE'
      Precision = 18
    end
  end
  object TRCtecce: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 800
    Top = 88
  end
  object UPCtecce: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTECCE'
      '(CTC_CODIGO, CTC_CTE, CTC_DATA, CTC_DTATUALIZACAO, '
      '  CTC_HORA, CTC_HRATUALIZACAO, CTC_PROTOCOLO, '
      '  CTC_PROTOCOLODH, CTC_SEQUENCIAL, CTC_USUARIO)'
      
        'VALUES (gen_id(GEN_CTECCE,1), :NEW_CTC_CTE, :NEW_CTC_DATA, :NEW_' +
        'CTC_DTATUALIZACAO, '
      '  :NEW_CTC_HORA, :NEW_CTC_HRATUALIZACAO, :NEW_CTC_PROTOCOLO, '
      '  :NEW_CTC_PROTOCOLODH, :NEW_CTC_SEQUENCIAL, :NEW_CTC_USUARIO)'
      
        'RETURNING CTC_CODIGO, CTC_CTE, CTC_DATA, CTC_DTATUALIZACAO, CTC_' +
        'HORA, CTC_HRATUALIZACAO, CTC_PROTOCOLO, CTC_PROTOCOLODH, CTC_SEQ' +
        'UENCIAL, CTC_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CTECCE'
      
        'SET CTC_CODIGO = :NEW_CTC_CODIGO, CTC_CTE = :NEW_CTC_CTE, CTC_DA' +
        'TA = :NEW_CTC_DATA, '
      
        '  CTC_DTATUALIZACAO = :NEW_CTC_DTATUALIZACAO, CTC_HORA = :NEW_CT' +
        'C_HORA, '
      
        '  CTC_HRATUALIZACAO = :NEW_CTC_HRATUALIZACAO, CTC_PROTOCOLO = :N' +
        'EW_CTC_PROTOCOLO, '
      
        '  CTC_PROTOCOLODH = :NEW_CTC_PROTOCOLODH, CTC_SEQUENCIAL = :NEW_' +
        'CTC_SEQUENCIAL, '
      '  CTC_USUARIO = :NEW_CTC_USUARIO'
      'WHERE CTC_CODIGO = :OLD_CTC_CODIGO'
      
        'RETURNING CTC_CODIGO, CTC_CTE, CTC_DATA, CTC_DTATUALIZACAO, CTC_' +
        'HORA, CTC_HRATUALIZACAO, CTC_PROTOCOLO, CTC_PROTOCOLODH, CTC_SEQ' +
        'UENCIAL, CTC_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CTECCE'
      'WHERE CTC_CODIGO = :OLD_CTC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTC_CODIGO, CTC_CTE, CTC_DATA, CTC_DTATUALIZACAO, CTC_HOR' +
        'A, '
      
        '  CTC_HRATUALIZACAO, CTC_PROTOCOLO, CTC_PROTOCOLODH, CTC_SEQUENC' +
        'IAL, '
      '  CTC_USUARIO'
      'FROM CTECCE'
      'WHERE CTC_CODIGO = :OLD_CTC_CODIGO')
    Left = 800
    Top = 56
  end
  object TBCtecce: TFDQuery
    BeforeInsert = TBCtecceBeforeInsert
    AfterInsert = TBCtecceAfterInsert
    BeforeEdit = TBCtecceBeforeEdit
    AfterEdit = TBCtecceAfterEdit
    BeforePost = TBCtecceBeforePost
    AfterPost = TBCtecceAfterPost
    BeforeDelete = TBCtecceBeforeDelete
    AfterDelete = TBCtecceAfterDelete
    MasterSource = DSCte
    MasterFields = 'CTE_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCtecce
    UpdateObject = UPCtecce
    SQL.Strings = (
      'select'
      'CTC_CODIGO,'
      'CTC_CTE,'
      'CTC_DATA,'
      'CTC_DTATUALIZACAO,'
      'CTC_HORA,'
      'CTC_HRATUALIZACAO,'
      'CTC_PROTOCOLO,'
      'CTC_PROTOCOLODH,'
      'CTC_SEQUENCIAL,'
      'CTC_USUARIO'
      'from CTECCE'
      'where CTC_CTE=:CTE_CODIGO'
      'order by CTC_CODIGO desc'
      '')
    Left = 800
    Top = 24
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCtecceCTC_CODIGO: TIntegerField
      FieldName = 'CTC_CODIGO'
      Origin = 'CTC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCtecceCTC_CTE: TIntegerField
      FieldName = 'CTC_CTE'
      Origin = 'CTC_CTE'
      Required = True
    end
    object TBCtecceCTC_DATA: TDateField
      FieldName = 'CTC_DATA'
      Origin = 'CTC_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCtecceCTC_DTATUALIZACAO: TDateField
      FieldName = 'CTC_DTATUALIZACAO'
      Origin = 'CTC_DTATUALIZACAO'
    end
    object TBCtecceCTC_HORA: TTimeField
      FieldName = 'CTC_HORA'
      Origin = 'CTC_HORA'
    end
    object TBCtecceCTC_HRATUALIZACAO: TTimeField
      FieldName = 'CTC_HRATUALIZACAO'
      Origin = 'CTC_HRATUALIZACAO'
    end
    object TBCtecceCTC_PROTOCOLO: TStringField
      FieldName = 'CTC_PROTOCOLO'
      Origin = 'CTC_PROTOCOLO'
      Size = 40
    end
    object TBCtecceCTC_PROTOCOLODH: TStringField
      FieldName = 'CTC_PROTOCOLODH'
      Origin = 'CTC_PROTOCOLODH'
      Size = 30
    end
    object TBCtecceCTC_SEQUENCIAL: TIntegerField
      FieldName = 'CTC_SEQUENCIAL'
      Origin = 'CTC_SEQUENCIAL'
    end
    object TBCtecceCTC_USUARIO: TStringField
      FieldName = 'CTC_USUARIO'
      Origin = 'CTC_USUARIO'
    end
  end
  object TRCtecceItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 88
  end
  object UPCtecceItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTECCEITENS'
      '(CTX_CAMPO, CTX_CCE, CTX_CODIGO, CTX_GRUPO, '
      '  CTX_NUMITEM, CTX_VALOR)'
      
        'VALUES (:NEW_CTX_CAMPO, :NEW_CTX_CCE, gen_id(GEN_CTECCEITENS,1),' +
        ' :NEW_CTX_GRUPO, '
      '  :NEW_CTX_NUMITEM, :NEW_CTX_VALOR)'
      
        'RETURNING CTX_CAMPO, CTX_CCE, CTX_CODIGO, CTX_GRUPO, CTX_NUMITEM' +
        ', CTX_VALOR')
    ModifySQL.Strings = (
      'UPDATE CTECCEITENS'
      
        'SET CTX_CAMPO = :NEW_CTX_CAMPO, CTX_CCE = :NEW_CTX_CCE, CTX_CODI' +
        'GO = :NEW_CTX_CODIGO, '
      '  CTX_GRUPO = :NEW_CTX_GRUPO, CTX_NUMITEM = :NEW_CTX_NUMITEM, '
      '  CTX_VALOR = :NEW_CTX_VALOR'
      'WHERE CTX_CODIGO = :OLD_CTX_CODIGO'
      
        'RETURNING CTX_CAMPO, CTX_CCE, CTX_CODIGO, CTX_GRUPO, CTX_NUMITEM' +
        ', CTX_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM CTECCEITENS'
      'WHERE CTX_CODIGO = :OLD_CTX_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTX_CAMPO, CTX_CCE, CTX_CODIGO, CTX_GRUPO, CTX_NUMITEM, C' +
        'TX_VALOR'
      'FROM CTECCEITENS'
      'WHERE CTX_CODIGO = :OLD_CTX_CODIGO')
    Left = 832
    Top = 56
  end
  object TBCtecceItens: TFDQuery
    AfterInsert = TBCtecceItensAfterInsert
    MasterSource = DSCteCCe
    MasterFields = 'CTC_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCtecceItens
    UpdateObject = UPCtecceItens
    SQL.Strings = (
      'select'
      'CTX_CAMPO,'
      'CTX_CCE,'
      'CTX_CODIGO,'
      'CTX_GRUPO,'
      'CTX_NUMITEM,'
      'CTX_VALOR'
      'from CTECCEITENS'
      'where CTX_CCE=:CTC_CODIGO'
      'order by CTX_CODIGO'
      '')
    Left = 832
    Top = 24
    ParamData = <
      item
        Name = 'CTC_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCtecceItensCTX_CAMPO: TStringField
      FieldName = 'CTX_CAMPO'
      Origin = 'CTX_CAMPO'
    end
    object TBCtecceItensCTX_CCE: TIntegerField
      FieldName = 'CTX_CCE'
      Origin = 'CTX_CCE'
      Required = True
    end
    object TBCtecceItensCTX_CODIGO: TIntegerField
      FieldName = 'CTX_CODIGO'
      Origin = 'CTX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCtecceItensCTX_GRUPO: TStringField
      FieldName = 'CTX_GRUPO'
      Origin = 'CTX_GRUPO'
    end
    object TBCtecceItensCTX_NUMITEM: TIntegerField
      FieldName = 'CTX_NUMITEM'
      Origin = 'CTX_NUMITEM'
    end
    object TBCtecceItensCTX_VALOR: TStringField
      FieldName = 'CTX_VALOR'
      Origin = 'CTX_VALOR'
      Size = 300
    end
  end
  object TRCteCodigo: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 864
    Top = 88
  end
  object UPCteCodigo: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTECODIGO'
      '(CTE_CODIGO)'
      'VALUES (:NEW_CTE_CODIGO)'
      'RETURNING CTE_CODIGO')
    ModifySQL.Strings = (
      'UPDATE CTECODIGO'
      'SET CTE_CODIGO = :NEW_CTE_CODIGO'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO'
      'RETURNING CTE_CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM CTECODIGO'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CTE_CODIGO'
      'FROM CTECODIGO'
      'WHERE CTE_CODIGO = :OLD_CTE_CODIGO')
    Left = 864
    Top = 56
  end
  object TBCteCodigo: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCteCodigo
    UpdateObject = UPCteCodigo
    SQL.Strings = (
      'select * from CTECODIGO'
      '')
    Left = 864
    Top = 24
    object TBCteCodigoCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = 'CTE_CODIGO'
      Required = True
    end
  end
  object TRCteInutilizados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 896
    Top = 88
  end
  object UPCteInutilizados: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTEINUTILIZADOS'
      '(CIN_ANO, CIN_CODIGO, CIN_DTATUALIZACAO, CIN_DTCADASTRO, '
      '  CIN_HRATUALIZACAO, CIN_HRCADASTRO, CIN_JUSTIFICATIVA, '
      '  CIN_MODELO, CIN_NUMFINAL, CIN_NUMINICIAL, '
      '  CIN_PROTOCOLO, CIN_PROTOCOLODH, CIN_SERIE, '
      '  CIN_USUARIO)'
      
        'VALUES (:NEW_CIN_ANO, gen_id(GEN_CTEINUTILIZADOS,1), :NEW_CIN_DT' +
        'ATUALIZACAO, :NEW_CIN_DTCADASTRO, '
      
        '  :NEW_CIN_HRATUALIZACAO, :NEW_CIN_HRCADASTRO, :NEW_CIN_JUSTIFIC' +
        'ATIVA, '
      '  :NEW_CIN_MODELO, :NEW_CIN_NUMFINAL, :NEW_CIN_NUMINICIAL, '
      '  :NEW_CIN_PROTOCOLO, :NEW_CIN_PROTOCOLODH, :NEW_CIN_SERIE, '
      '  :NEW_CIN_USUARIO)'
      
        'RETURNING CIN_ANO, CIN_CODIGO, CIN_DTATUALIZACAO, CIN_DTCADASTRO' +
        ', CIN_HRATUALIZACAO, CIN_HRCADASTRO, CIN_JUSTIFICATIVA, CIN_MODE' +
        'LO, CIN_NUMFINAL, CIN_NUMINICIAL, CIN_PROTOCOLO, CIN_PROTOCOLODH' +
        ', CIN_SERIE, CIN_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CTEINUTILIZADOS'
      
        'SET CIN_ANO = :NEW_CIN_ANO, CIN_CODIGO = :NEW_CIN_CODIGO, CIN_DT' +
        'ATUALIZACAO = :NEW_CIN_DTATUALIZACAO, '
      
        '  CIN_DTCADASTRO = :NEW_CIN_DTCADASTRO, CIN_HRATUALIZACAO = :NEW' +
        '_CIN_HRATUALIZACAO, '
      
        '  CIN_HRCADASTRO = :NEW_CIN_HRCADASTRO, CIN_JUSTIFICATIVA = :NEW' +
        '_CIN_JUSTIFICATIVA, '
      
        '  CIN_MODELO = :NEW_CIN_MODELO, CIN_NUMFINAL = :NEW_CIN_NUMFINAL' +
        ', '
      
        '  CIN_NUMINICIAL = :NEW_CIN_NUMINICIAL, CIN_PROTOCOLO = :NEW_CIN' +
        '_PROTOCOLO, '
      
        '  CIN_PROTOCOLODH = :NEW_CIN_PROTOCOLODH, CIN_SERIE = :NEW_CIN_S' +
        'ERIE, '
      '  CIN_USUARIO = :NEW_CIN_USUARIO'
      'WHERE CIN_CODIGO = :OLD_CIN_CODIGO'
      
        'RETURNING CIN_ANO, CIN_CODIGO, CIN_DTATUALIZACAO, CIN_DTCADASTRO' +
        ', CIN_HRATUALIZACAO, CIN_HRCADASTRO, CIN_JUSTIFICATIVA, CIN_MODE' +
        'LO, CIN_NUMFINAL, CIN_NUMINICIAL, CIN_PROTOCOLO, CIN_PROTOCOLODH' +
        ', CIN_SERIE, CIN_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CTEINUTILIZADOS'
      'WHERE CIN_CODIGO = :OLD_CIN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CIN_ANO, CIN_CODIGO, CIN_DTATUALIZACAO, CIN_DTCADASTRO, C' +
        'IN_HRATUALIZACAO, '
      '  CIN_HRCADASTRO, CIN_JUSTIFICATIVA, CIN_MODELO, CIN_NUMFINAL, '
      '  CIN_NUMINICIAL, CIN_PROTOCOLO, CIN_PROTOCOLODH, CIN_SERIE, '
      '  CIN_USUARIO'
      'FROM CTEINUTILIZADOS'
      'WHERE CIN_CODIGO = :OLD_CIN_CODIGO')
    Left = 896
    Top = 56
  end
  object TBCteInutilizados: TFDQuery
    BeforeInsert = TBCteInutilizadosBeforeInsert
    AfterInsert = TBCteInutilizadosAfterInsert
    BeforeEdit = TBCteInutilizadosBeforeEdit
    AfterEdit = TBCteInutilizadosAfterEdit
    BeforePost = TBCteInutilizadosBeforePost
    AfterPost = TBCteInutilizadosAfterPost
    BeforeDelete = TBCteInutilizadosBeforeDelete
    AfterDelete = TBCteInutilizadosAfterDelete
    Connection = DM.FDConnection1
    Transaction = TRCteInutilizados
    UpdateObject = UPCteInutilizados
    SQL.Strings = (
      'select'
      'CIN_ANO,'
      'CIN_CODIGO,'
      'CIN_DTATUALIZACAO,'
      'CIN_DTCADASTRO,'
      'CIN_HRATUALIZACAO,'
      'CIN_HRCADASTRO,'
      'CIN_MODELO,'
      'CIN_SERIE,'
      'CIN_NUMFINAL,'
      'CIN_NUMINICIAL,'
      'CIN_JUSTIFICATIVA,'
      'CIN_PROTOCOLO,'
      'CIN_PROTOCOLODH,'
      'CIN_USUARIO'
      'from CTEINUTILIZADOS'
      'where CIN_CODIGO=:codigo')
    Left = 896
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCteInutilizadosCIN_ANO: TStringField
      FieldName = 'CIN_ANO'
      Origin = 'CIN_ANO'
      Size = 4
    end
    object TBCteInutilizadosCIN_CODIGO: TIntegerField
      FieldName = 'CIN_CODIGO'
      Origin = 'CIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteInutilizadosCIN_DTATUALIZACAO: TDateField
      FieldName = 'CIN_DTATUALIZACAO'
      Origin = 'CIN_DTATUALIZACAO'
    end
    object TBCteInutilizadosCIN_DTCADASTRO: TDateField
      FieldName = 'CIN_DTCADASTRO'
      Origin = 'CIN_DTCADASTRO'
    end
    object TBCteInutilizadosCIN_HRATUALIZACAO: TTimeField
      FieldName = 'CIN_HRATUALIZACAO'
      Origin = 'CIN_HRATUALIZACAO'
    end
    object TBCteInutilizadosCIN_HRCADASTRO: TTimeField
      FieldName = 'CIN_HRCADASTRO'
      Origin = 'CIN_HRCADASTRO'
    end
    object TBCteInutilizadosCIN_MODELO: TIntegerField
      FieldName = 'CIN_MODELO'
      Origin = 'CIN_MODELO'
    end
    object TBCteInutilizadosCIN_SERIE: TIntegerField
      FieldName = 'CIN_SERIE'
      Origin = 'CIN_SERIE'
    end
    object TBCteInutilizadosCIN_NUMFINAL: TIntegerField
      FieldName = 'CIN_NUMFINAL'
      Origin = 'CIN_NUMFINAL'
    end
    object TBCteInutilizadosCIN_NUMINICIAL: TIntegerField
      FieldName = 'CIN_NUMINICIAL'
      Origin = 'CIN_NUMINICIAL'
    end
    object TBCteInutilizadosCIN_JUSTIFICATIVA: TStringField
      FieldName = 'CIN_JUSTIFICATIVA'
      Origin = 'CIN_JUSTIFICATIVA'
      Size = 120
    end
    object TBCteInutilizadosCIN_PROTOCOLO: TStringField
      FieldName = 'CIN_PROTOCOLO'
      Origin = 'CIN_PROTOCOLO'
      Size = 40
    end
    object TBCteInutilizadosCIN_PROTOCOLODH: TStringField
      FieldName = 'CIN_PROTOCOLODH'
      Origin = 'CIN_PROTOCOLODH'
      Size = 30
    end
    object TBCteInutilizadosCIN_USUARIO: TStringField
      FieldName = 'CIN_USUARIO'
      Origin = 'CIN_USUARIO'
    end
  end
  object TRCteNotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 928
    Top = 88
  end
  object UPCteNotas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTENOTAS'
      '(CTN_ALIQICMS, CTN_ALIQICMSST, CTN_BASEICMS, CTN_BASEICMSST, '
      '  CTN_CFOP, CTN_CHAVEACESSO, CTN_CNPJREMETENTE, '
      '  CTN_CODIGO, CTN_CTE, CTN_DESCRICAODOC, CTN_DTEMISSAO, '
      '  CTN_MODELO, CTN_NUMERO, CTN_PESO, CTN_SERIE, '
      '  CTN_SUFRAMA, CTN_TIPONOTA, CTN_TIPOOUTROS, '
      '  CTN_TOTALICMS, CTN_TOTALICMSST, CTN_TOTALPRODUTOS, '
      '  CTN_VALORTOTAL)'
      
        'VALUES (:NEW_CTN_ALIQICMS, :NEW_CTN_ALIQICMSST, :NEW_CTN_BASEICM' +
        'S, :NEW_CTN_BASEICMSST, '
      '  :NEW_CTN_CFOP, :NEW_CTN_CHAVEACESSO, :NEW_CTN_CNPJREMETENTE, '
      
        '  gen_id(GEN_CTENOTAS,1), :NEW_CTN_CTE, :NEW_CTN_DESCRICAODOC, :' +
        'NEW_CTN_DTEMISSAO, '
      
        '  :NEW_CTN_MODELO, :NEW_CTN_NUMERO, :NEW_CTN_PESO, :NEW_CTN_SERI' +
        'E, '
      '  :NEW_CTN_SUFRAMA, :NEW_CTN_TIPONOTA, :NEW_CTN_TIPOOUTROS, '
      
        '  :NEW_CTN_TOTALICMS, :NEW_CTN_TOTALICMSST, :NEW_CTN_TOTALPRODUT' +
        'OS, '
      '  :NEW_CTN_VALORTOTAL)'
      
        'RETURNING CTN_ALIQICMS, CTN_ALIQICMSST, CTN_BASEICMS, CTN_BASEIC' +
        'MSST, CTN_CFOP, CTN_CHAVEACESSO, CTN_CNPJREMETENTE, CTN_CODIGO, ' +
        'CTN_CTE, CTN_DESCRICAODOC, CTN_DTEMISSAO, CTN_MODELO, CTN_NUMERO' +
        ', CTN_PESO, CTN_SERIE, CTN_SUFRAMA, CTN_TIPONOTA, CTN_TIPOOUTROS' +
        ', CTN_TOTALICMS, CTN_TOTALICMSST, CTN_TOTALPRODUTOS, CTN_VALORTO' +
        'TAL')
    ModifySQL.Strings = (
      'UPDATE CTENOTAS'
      
        'SET CTN_ALIQICMS = :NEW_CTN_ALIQICMS, CTN_ALIQICMSST = :NEW_CTN_' +
        'ALIQICMSST, '
      
        '  CTN_BASEICMS = :NEW_CTN_BASEICMS, CTN_BASEICMSST = :NEW_CTN_BA' +
        'SEICMSST, '
      
        '  CTN_CFOP = :NEW_CTN_CFOP, CTN_CHAVEACESSO = :NEW_CTN_CHAVEACES' +
        'SO, '
      
        '  CTN_CNPJREMETENTE = :NEW_CTN_CNPJREMETENTE, CTN_CODIGO = :NEW_' +
        'CTN_CODIGO, '
      
        '  CTN_CTE = :NEW_CTN_CTE, CTN_DESCRICAODOC = :NEW_CTN_DESCRICAOD' +
        'OC, '
      
        '  CTN_DTEMISSAO = :NEW_CTN_DTEMISSAO, CTN_MODELO = :NEW_CTN_MODE' +
        'LO, '
      '  CTN_NUMERO = :NEW_CTN_NUMERO, CTN_PESO = :NEW_CTN_PESO, '
      '  CTN_SERIE = :NEW_CTN_SERIE, CTN_SUFRAMA = :NEW_CTN_SUFRAMA, '
      
        '  CTN_TIPONOTA = :NEW_CTN_TIPONOTA, CTN_TIPOOUTROS = :NEW_CTN_TI' +
        'POOUTROS, '
      
        '  CTN_TOTALICMS = :NEW_CTN_TOTALICMS, CTN_TOTALICMSST = :NEW_CTN' +
        '_TOTALICMSST, '
      
        '  CTN_TOTALPRODUTOS = :NEW_CTN_TOTALPRODUTOS, CTN_VALORTOTAL = :' +
        'NEW_CTN_VALORTOTAL'
      'WHERE CTN_CODIGO = :OLD_CTN_CODIGO'
      
        'RETURNING CTN_ALIQICMS, CTN_ALIQICMSST, CTN_BASEICMS, CTN_BASEIC' +
        'MSST, CTN_CFOP, CTN_CHAVEACESSO, CTN_CNPJREMETENTE, CTN_CODIGO, ' +
        'CTN_CTE, CTN_DESCRICAODOC, CTN_DTEMISSAO, CTN_MODELO, CTN_NUMERO' +
        ', CTN_PESO, CTN_SERIE, CTN_SUFRAMA, CTN_TIPONOTA, CTN_TIPOOUTROS' +
        ', CTN_TOTALICMS, CTN_TOTALICMSST, CTN_TOTALPRODUTOS, CTN_VALORTO' +
        'TAL')
    DeleteSQL.Strings = (
      'DELETE FROM CTENOTAS'
      'WHERE CTN_CODIGO = :OLD_CTN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTN_ALIQICMS, CTN_ALIQICMSST, CTN_BASEICMS, CTN_BASEICMSS' +
        'T, '
      '  CTN_CFOP, CTN_CHAVEACESSO, CTN_CNPJREMETENTE, CTN_CODIGO, '
      
        '  CTN_CTE, CTN_DESCRICAODOC, CTN_DTEMISSAO, CTN_MODELO, CTN_NUME' +
        'RO, '
      
        '  CTN_PESO, CTN_SERIE, CTN_SUFRAMA, CTN_TIPONOTA, CTN_TIPOOUTROS' +
        ', '
      
        '  CTN_TOTALICMS, CTN_TOTALICMSST, CTN_TOTALPRODUTOS, CTN_VALORTO' +
        'TAL'
      'FROM CTENOTAS'
      'WHERE CTN_CODIGO = :OLD_CTN_CODIGO')
    Left = 928
    Top = 56
  end
  object TBCteNotas: TFDQuery
    AfterInsert = TBCteNotasAfterInsert
    BeforePost = TBCteNotasBeforePost
    AfterPost = TBCteNotasAfterPost
    MasterSource = DSCte
    MasterFields = 'CTE_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCteNotas
    UpdateObject = UPCteNotas
    SQL.Strings = (
      'select'
      'CTN_ALIQICMS,'
      'CTN_ALIQICMSST,'
      'CTN_BASEICMS,'
      'CTN_BASEICMSST,'
      'CTN_CFOP,'
      'CTN_CHAVEACESSO,'
      'CTN_CNPJREMETENTE,'
      'CTN_CODIGO,'
      'CTN_CTE,'
      'CTN_DESCRICAODOC,'
      'CTN_DTEMISSAO,'
      'CTN_MODELO,'
      'CTN_NUMERO,'
      'CTN_PESO,'
      'CTN_SERIE,'
      'CTN_SUFRAMA,'
      'CTN_TIPONOTA,'
      'CTN_TIPOOUTROS,'
      'CTN_TOTALICMS,'
      'CTN_TOTALICMSST,'
      'CTN_TOTALPRODUTOS,'
      'CTN_VALORTOTAL'
      'from CTENOTAS'
      'where CTN_CTE=:CTE_CODIGO'
      'order by CTN_CODIGO')
    Left = 928
    Top = 24
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCteNotasCTN_ALIQICMS: TFMTBCDField
      FieldName = 'CTN_ALIQICMS'
      Origin = 'CTN_ALIQICMS'
      Precision = 18
    end
    object TBCteNotasCTN_ALIQICMSST: TFMTBCDField
      FieldName = 'CTN_ALIQICMSST'
      Origin = 'CTN_ALIQICMSST'
      Precision = 18
    end
    object TBCteNotasCTN_BASEICMS: TFMTBCDField
      FieldName = 'CTN_BASEICMS'
      Origin = 'CTN_BASEICMS'
      currency = True
      Precision = 18
    end
    object TBCteNotasCTN_BASEICMSST: TFMTBCDField
      FieldName = 'CTN_BASEICMSST'
      Origin = 'CTN_BASEICMSST'
      currency = True
      Precision = 18
    end
    object TBCteNotasCTN_CFOP: TStringField
      FieldName = 'CTN_CFOP'
      Origin = 'CTN_CFOP'
      Size = 10
    end
    object TBCteNotasCTN_CHAVEACESSO: TStringField
      FieldName = 'CTN_CHAVEACESSO'
      Origin = 'CTN_CHAVEACESSO'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBCteNotasCTN_CNPJREMETENTE: TStringField
      FieldName = 'CTN_CNPJREMETENTE'
      Origin = 'CTN_CNPJREMETENTE'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBCteNotasCTN_CODIGO: TIntegerField
      FieldName = 'CTN_CODIGO'
      Origin = 'CTN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteNotasCTN_CTE: TIntegerField
      FieldName = 'CTN_CTE'
      Origin = 'CTN_CTE'
      Required = True
    end
    object TBCteNotasCTN_DESCRICAODOC: TStringField
      FieldName = 'CTN_DESCRICAODOC'
      Origin = 'CTN_DESCRICAODOC'
      Size = 50
    end
    object TBCteNotasCTN_DTEMISSAO: TDateField
      FieldName = 'CTN_DTEMISSAO'
      Origin = 'CTN_DTEMISSAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBCteNotasCTN_MODELO: TIntegerField
      FieldName = 'CTN_MODELO'
      Origin = 'CTN_MODELO'
    end
    object TBCteNotasCTN_NUMERO: TIntegerField
      FieldName = 'CTN_NUMERO'
      Origin = 'CTN_NUMERO'
    end
    object TBCteNotasCTN_PESO: TFMTBCDField
      FieldName = 'CTN_PESO'
      Origin = 'CTN_PESO'
      Precision = 18
      Size = 3
    end
    object TBCteNotasCTN_SERIE: TIntegerField
      FieldName = 'CTN_SERIE'
      Origin = 'CTN_SERIE'
    end
    object TBCteNotasCTN_SUFRAMA: TStringField
      FieldName = 'CTN_SUFRAMA'
      Origin = 'CTN_SUFRAMA'
    end
    object TBCteNotasCTN_TIPONOTA: TStringField
      FieldName = 'CTN_TIPONOTA'
      Origin = 'CTN_TIPONOTA'
      Size = 30
    end
    object TBCteNotasCTN_TIPOOUTROS: TStringField
      FieldName = 'CTN_TIPOOUTROS'
      Origin = 'CTN_TIPOOUTROS'
      Size = 30
    end
    object TBCteNotasCTN_TOTALICMS: TFMTBCDField
      FieldName = 'CTN_TOTALICMS'
      Origin = 'CTN_TOTALICMS'
      currency = True
      Precision = 18
    end
    object TBCteNotasCTN_TOTALICMSST: TFMTBCDField
      FieldName = 'CTN_TOTALICMSST'
      Origin = 'CTN_TOTALICMSST'
      currency = True
      Precision = 18
    end
    object TBCteNotasCTN_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'CTN_TOTALPRODUTOS'
      Origin = 'CTN_TOTALPRODUTOS'
      currency = True
      Precision = 18
    end
    object TBCteNotasCTN_VALORTOTAL: TFMTBCDField
      FieldName = 'CTN_VALORTOTAL'
      Origin = 'CTN_VALORTOTAL'
      currency = True
      Precision = 18
    end
  end
  object TRCteVeiculos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 960
    Top = 88
  end
  object UPCteVeiculos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CTEVEICULOS'
      '(CTV_CAPACIDADEKG, CTV_CAPACIDADEM3, CTV_CNPJ, '
      '  CTV_CODIGO, CTV_CPF, CTV_CTE, CTV_ESTADO, '
      '  CTV_ESTADOPROPRIETARIO, CTV_IE, CTV_NOME, '
      '  CTV_PLACA, CTV_RENAVAM, CTV_RNTRC, CTV_TARA, '
      
        '  CTV_TIPOCARROCERIA, CTV_TIPOPROPRIEDADE, CTV_TIPOPROPRIETARIO,' +
        ' '
      '  CTV_TIPORODADO, CTV_TIPOVEICULO, CTV_VEICULO)'
      
        'VALUES (:NEW_CTV_CAPACIDADEKG, :NEW_CTV_CAPACIDADEM3, :NEW_CTV_C' +
        'NPJ, '
      
        '  gen_id(GEN_CTEVEICULOS,1), :NEW_CTV_CPF, :NEW_CTV_CTE, :NEW_CT' +
        'V_ESTADO, '
      '  :NEW_CTV_ESTADOPROPRIETARIO, :NEW_CTV_IE, :NEW_CTV_NOME, '
      
        '  :NEW_CTV_PLACA, :NEW_CTV_RENAVAM, :NEW_CTV_RNTRC, :NEW_CTV_TAR' +
        'A, '
      
        '  :NEW_CTV_TIPOCARROCERIA, :NEW_CTV_TIPOPROPRIEDADE, :NEW_CTV_TI' +
        'POPROPRIETARIO, '
      '  :NEW_CTV_TIPORODADO, :NEW_CTV_TIPOVEICULO, :NEW_CTV_VEICULO)'
      
        'RETURNING CTV_CAPACIDADEKG, CTV_CAPACIDADEM3, CTV_CNPJ, CTV_CODI' +
        'GO, CTV_CPF, CTV_CTE, CTV_ESTADO, CTV_ESTADOPROPRIETARIO, CTV_IE' +
        ', CTV_NOME, CTV_PLACA, CTV_RENAVAM, CTV_RNTRC, CTV_TARA, CTV_TIP' +
        'OCARROCERIA, CTV_TIPOPROPRIEDADE, CTV_TIPOPROPRIETARIO, CTV_TIPO' +
        'RODADO, CTV_TIPOVEICULO, CTV_VEICULO')
    ModifySQL.Strings = (
      'UPDATE CTEVEICULOS'
      
        'SET CTV_CAPACIDADEKG = :NEW_CTV_CAPACIDADEKG, CTV_CAPACIDADEM3 =' +
        ' :NEW_CTV_CAPACIDADEM3, '
      '  CTV_CNPJ = :NEW_CTV_CNPJ, CTV_CODIGO = :NEW_CTV_CODIGO, '
      
        '  CTV_CPF = :NEW_CTV_CPF, CTV_CTE = :NEW_CTV_CTE, CTV_ESTADO = :' +
        'NEW_CTV_ESTADO, '
      
        '  CTV_ESTADOPROPRIETARIO = :NEW_CTV_ESTADOPROPRIETARIO, CTV_IE =' +
        ' :NEW_CTV_IE, '
      
        '  CTV_NOME = :NEW_CTV_NOME, CTV_PLACA = :NEW_CTV_PLACA, CTV_RENA' +
        'VAM = :NEW_CTV_RENAVAM, '
      
        '  CTV_RNTRC = :NEW_CTV_RNTRC, CTV_TARA = :NEW_CTV_TARA, CTV_TIPO' +
        'CARROCERIA = :NEW_CTV_TIPOCARROCERIA, '
      
        '  CTV_TIPOPROPRIEDADE = :NEW_CTV_TIPOPROPRIEDADE, CTV_TIPOPROPRI' +
        'ETARIO = :NEW_CTV_TIPOPROPRIETARIO, '
      
        '  CTV_TIPORODADO = :NEW_CTV_TIPORODADO, CTV_TIPOVEICULO = :NEW_C' +
        'TV_TIPOVEICULO, '
      '  CTV_VEICULO = :NEW_CTV_VEICULO'
      'WHERE CTV_CODIGO = :OLD_CTV_CODIGO'
      
        'RETURNING CTV_CAPACIDADEKG, CTV_CAPACIDADEM3, CTV_CNPJ, CTV_CODI' +
        'GO, CTV_CPF, CTV_CTE, CTV_ESTADO, CTV_ESTADOPROPRIETARIO, CTV_IE' +
        ', CTV_NOME, CTV_PLACA, CTV_RENAVAM, CTV_RNTRC, CTV_TARA, CTV_TIP' +
        'OCARROCERIA, CTV_TIPOPROPRIEDADE, CTV_TIPOPROPRIETARIO, CTV_TIPO' +
        'RODADO, CTV_TIPOVEICULO, CTV_VEICULO')
    DeleteSQL.Strings = (
      'DELETE FROM CTEVEICULOS'
      'WHERE CTV_CODIGO = :OLD_CTV_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTV_CAPACIDADEKG, CTV_CAPACIDADEM3, CTV_CNPJ, CTV_CODIGO,' +
        ' CTV_CPF, '
      
        '  CTV_CTE, CTV_ESTADO, CTV_ESTADOPROPRIETARIO, CTV_IE, CTV_NOME,' +
        ' '
      
        '  CTV_PLACA, CTV_RENAVAM, CTV_RNTRC, CTV_TARA, CTV_TIPOCARROCERI' +
        'A, '
      '  CTV_TIPOPROPRIEDADE, CTV_TIPOPROPRIETARIO, CTV_TIPORODADO, '
      '  CTV_TIPOVEICULO, CTV_VEICULO'
      'FROM CTEVEICULOS'
      'WHERE CTV_CODIGO = :OLD_CTV_CODIGO')
    Left = 960
    Top = 56
  end
  object TBCteVeiculos: TFDQuery
    AfterInsert = TBCteVeiculosAfterInsert
    MasterSource = DSCte
    MasterFields = 'CTE_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRCteVeiculos
    UpdateObject = UPCteVeiculos
    SQL.Strings = (
      'select'
      'CTV_CAPACIDADEKG,'
      'CTV_CAPACIDADEM3,'
      'CTV_CNPJ,'
      'CTV_CODIGO,'
      'CTV_CPF,'
      'CTV_CTE,'
      'CTV_ESTADO,'
      'CTV_ESTADOPROPRIETARIO,'
      'CTV_IE,'
      'CTV_NOME,'
      'CTV_PLACA,'
      'CTV_RENAVAM,'
      'CTV_RNTRC,'
      'CTV_TARA,'
      'CTV_TIPOCARROCERIA,'
      'CTV_TIPOPROPRIEDADE,'
      'CTV_TIPOPROPRIETARIO,'
      'CTV_TIPORODADO,'
      'CTV_TIPOVEICULO,'
      'CTV_VEICULO'
      'from CTEVEICULOS'
      'where CTV_CTE=:CTE_CODIGO'
      'order by CTV_CODIGO'
      '')
    Left = 960
    Top = 24
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCteVeiculosCTV_CAPACIDADEKG: TFMTBCDField
      FieldName = 'CTV_CAPACIDADEKG'
      Origin = 'CTV_CAPACIDADEKG'
      Precision = 18
      Size = 3
    end
    object TBCteVeiculosCTV_CAPACIDADEM3: TFMTBCDField
      FieldName = 'CTV_CAPACIDADEM3'
      Origin = 'CTV_CAPACIDADEM3'
      Precision = 18
    end
    object TBCteVeiculosCTV_CNPJ: TStringField
      FieldName = 'CTV_CNPJ'
      Origin = 'CTV_CNPJ'
    end
    object TBCteVeiculosCTV_CODIGO: TIntegerField
      FieldName = 'CTV_CODIGO'
      Origin = 'CTV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCteVeiculosCTV_CPF: TStringField
      FieldName = 'CTV_CPF'
      Origin = 'CTV_CPF'
    end
    object TBCteVeiculosCTV_CTE: TIntegerField
      FieldName = 'CTV_CTE'
      Origin = 'CTV_CTE'
      Required = True
    end
    object TBCteVeiculosCTV_ESTADO: TStringField
      FieldName = 'CTV_ESTADO'
      Origin = 'CTV_ESTADO'
      Size = 2
    end
    object TBCteVeiculosCTV_ESTADOPROPRIETARIO: TStringField
      FieldName = 'CTV_ESTADOPROPRIETARIO'
      Origin = 'CTV_ESTADOPROPRIETARIO'
      Size = 2
    end
    object TBCteVeiculosCTV_IE: TStringField
      FieldName = 'CTV_IE'
      Origin = 'CTV_IE'
    end
    object TBCteVeiculosCTV_NOME: TStringField
      FieldName = 'CTV_NOME'
      Origin = 'CTV_NOME'
      Size = 80
    end
    object TBCteVeiculosCTV_PLACA: TStringField
      FieldName = 'CTV_PLACA'
      Origin = 'CTV_PLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBCteVeiculosCTV_RENAVAM: TStringField
      FieldName = 'CTV_RENAVAM'
      Origin = 'CTV_RENAVAM'
    end
    object TBCteVeiculosCTV_RNTRC: TStringField
      FieldName = 'CTV_RNTRC'
      Origin = 'CTV_RNTRC'
    end
    object TBCteVeiculosCTV_TARA: TFMTBCDField
      FieldName = 'CTV_TARA'
      Origin = 'CTV_TARA'
      Precision = 18
      Size = 3
    end
    object TBCteVeiculosCTV_TIPOCARROCERIA: TStringField
      FieldName = 'CTV_TIPOCARROCERIA'
      Origin = 'CTV_TIPOCARROCERIA'
    end
    object TBCteVeiculosCTV_TIPOPROPRIEDADE: TStringField
      FieldName = 'CTV_TIPOPROPRIEDADE'
      Origin = 'CTV_TIPOPROPRIEDADE'
      Size = 25
    end
    object TBCteVeiculosCTV_TIPOPROPRIETARIO: TStringField
      FieldName = 'CTV_TIPOPROPRIETARIO'
      Origin = 'CTV_TIPOPROPRIETARIO'
      Size = 25
    end
    object TBCteVeiculosCTV_TIPORODADO: TStringField
      FieldName = 'CTV_TIPORODADO'
      Origin = 'CTV_TIPORODADO'
    end
    object TBCteVeiculosCTV_TIPOVEICULO: TStringField
      FieldName = 'CTV_TIPOVEICULO'
      Origin = 'CTV_TIPOVEICULO'
    end
    object TBCteVeiculosCTV_VEICULO: TIntegerField
      FieldName = 'CTV_VEICULO'
      Origin = 'CTV_VEICULO'
      Required = True
    end
  end
  object TRCursos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 992
    Top = 88
  end
  object UPCursos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CURSOS'
      '(CUR_CODIGO, CUR_DESCRICAO, CUR_DTATUALIZACAO, '
      '  CUR_DTCADASTRO, CUR_HRATUALIZACAO, CUR_HRCADASTRO, '
      '  CUR_STATUS, CUR_USUARIO)'
      
        'VALUES (gen_id(GEN_CURSOS,1), :NEW_CUR_DESCRICAO, :NEW_CUR_DTATU' +
        'ALIZACAO, '
      
        '  :NEW_CUR_DTCADASTRO, :NEW_CUR_HRATUALIZACAO, :NEW_CUR_HRCADAST' +
        'RO, '
      '  :NEW_CUR_STATUS, :NEW_CUR_USUARIO)'
      
        'RETURNING CUR_CODIGO, CUR_DESCRICAO, CUR_DTATUALIZACAO, CUR_DTCA' +
        'DASTRO, CUR_HRATUALIZACAO, CUR_HRCADASTRO, CUR_STATUS, CUR_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE CURSOS'
      
        'SET CUR_CODIGO = :NEW_CUR_CODIGO, CUR_DESCRICAO = :NEW_CUR_DESCR' +
        'ICAO, '
      
        '  CUR_DTATUALIZACAO = :NEW_CUR_DTATUALIZACAO, CUR_DTCADASTRO = :' +
        'NEW_CUR_DTCADASTRO, '
      
        '  CUR_HRATUALIZACAO = :NEW_CUR_HRATUALIZACAO, CUR_HRCADASTRO = :' +
        'NEW_CUR_HRCADASTRO, '
      '  CUR_STATUS = :NEW_CUR_STATUS, CUR_USUARIO = :NEW_CUR_USUARIO'
      'WHERE CUR_CODIGO = :OLD_CUR_CODIGO'
      
        'RETURNING CUR_CODIGO, CUR_DESCRICAO, CUR_DTATUALIZACAO, CUR_DTCA' +
        'DASTRO, CUR_HRATUALIZACAO, CUR_HRCADASTRO, CUR_STATUS, CUR_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM CURSOS'
      'WHERE CUR_CODIGO = :OLD_CUR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CUR_CODIGO, CUR_DESCRICAO, CUR_DTATUALIZACAO, CUR_DTCADAS' +
        'TRO, '
      '  CUR_HRATUALIZACAO, CUR_HRCADASTRO, CUR_STATUS, CUR_USUARIO'
      'FROM CURSOS'
      'WHERE CUR_CODIGO = :OLD_CUR_CODIGO')
    Left = 992
    Top = 56
  end
  object TBCursos: TFDQuery
    BeforeInsert = TBCursosBeforeInsert
    AfterInsert = TBCursosAfterInsert
    BeforeEdit = TBCursosBeforeEdit
    BeforePost = TBCursosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRCursos
    UpdateObject = UPCursos
    SQL.Strings = (
      'select'
      'CUR_CODIGO,'
      'CUR_DESCRICAO,'
      'CUR_DTATUALIZACAO,'
      'CUR_DTCADASTRO,'
      'CUR_HRATUALIZACAO,'
      'CUR_HRCADASTRO,'
      'CUR_STATUS,'
      'CUR_USUARIO'
      'from CURSOS'
      'where CUR_CODIGO=:codigo'
      '')
    Left = 992
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCursosCUR_CODIGO: TIntegerField
      FieldName = 'CUR_CODIGO'
      Origin = 'CUR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCursosCUR_DESCRICAO: TStringField
      FieldName = 'CUR_DESCRICAO'
      Origin = 'CUR_DESCRICAO'
      Size = 50
    end
    object TBCursosCUR_DTATUALIZACAO: TDateField
      FieldName = 'CUR_DTATUALIZACAO'
      Origin = 'CUR_DTATUALIZACAO'
    end
    object TBCursosCUR_DTCADASTRO: TDateField
      FieldName = 'CUR_DTCADASTRO'
      Origin = 'CUR_DTCADASTRO'
    end
    object TBCursosCUR_HRATUALIZACAO: TTimeField
      FieldName = 'CUR_HRATUALIZACAO'
      Origin = 'CUR_HRATUALIZACAO'
    end
    object TBCursosCUR_HRCADASTRO: TTimeField
      FieldName = 'CUR_HRCADASTRO'
      Origin = 'CUR_HRCADASTRO'
    end
    object TBCursosCUR_STATUS: TStringField
      FieldName = 'CUR_STATUS'
      Origin = 'CUR_STATUS'
      Size = 1
    end
    object TBCursosCUR_USUARIO: TStringField
      FieldName = 'CUR_USUARIO'
      Origin = 'CUR_USUARIO'
    end
  end
  object TRDeliverys: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1024
    Top = 88
  end
  object UPDeliverys: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO DELIVERYS'
      '(DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, '
      '  DLV_CIDADECODIGO, DLV_CLIENTE, DLV_CODIGO, '
      '  DLV_COMPLEMENTO, DLV_DESCPORC, DLV_DESCVALOR, '
      '  DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO, '
      '  DLV_ENDERECO, DLV_ENTREGADOR, DLV_ESTADO, '
      '  DLV_ESTADOCODIGO, DLV_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, '
      
        '  DLV_HRCADASTRO, DLV_MOTIVOCANCELAMENTO, DLV_MOTIVOINUTILIZACAO' +
        ', '
      '  DLV_NUMERO, DLV_OBSERVACOES, DLV_RETIRA, '
      '  DLV_SEQUENCIAITEM, DLV_STATUS, DLV_TAXA, '
      '  DLV_TAXATIPO, DLV_TAXAVALOR, DLV_TOTALITENS, '
      '  DLV_TOTALTAXA, DLV_TROCO, DLV_USUARIO, DLV_VALORTOTAL, '
      '  DLV_VENDEDOR, DLV_VIAAPP)'
      
        'VALUES (:NEW_DLV_BAIRRO, :NEW_DLV_CARTAO, :NEW_DLV_CEP, :NEW_DLV' +
        '_CIDADE, '
      
        '  :NEW_DLV_CIDADECODIGO, :NEW_DLV_CLIENTE, gen_id(GEN_DELIVERYS,' +
        '1), '
      '  :NEW_DLV_COMPLEMENTO, :NEW_DLV_DESCPORC, :NEW_DLV_DESCVALOR, '
      
        '  :NEW_DLV_DINHEIRO, :NEW_DLV_DTATUALIZACAO, :NEW_DLV_DTCADASTRO' +
        ', '
      '  :NEW_DLV_ENDERECO, :NEW_DLV_ENTREGADOR, :NEW_DLV_ESTADO, '
      
        '  :NEW_DLV_ESTADOCODIGO, :NEW_DLV_FONE1, :NEW_DLV_FONE2, :NEW_DL' +
        'V_HRATUALIZACAO, '
      
        '  :NEW_DLV_HRCADASTRO, :NEW_DLV_MOTIVOCANCELAMENTO, :NEW_DLV_MOT' +
        'IVOINUTILIZACAO, '
      '  :NEW_DLV_NUMERO, :NEW_DLV_OBSERVACOES, :NEW_DLV_RETIRA, '
      '  :NEW_DLV_SEQUENCIAITEM, :NEW_DLV_STATUS, :NEW_DLV_TAXA, '
      '  :NEW_DLV_TAXATIPO, :NEW_DLV_TAXAVALOR, :NEW_DLV_TOTALITENS, '
      
        '  :NEW_DLV_TOTALTAXA, :NEW_DLV_TROCO, :NEW_DLV_USUARIO, :NEW_DLV' +
        '_VALORTOTAL, '
      '  :NEW_DLV_VENDEDOR, :NEW_DLV_VIAAPP)'
      
        'RETURNING DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, DLV_CIDAD' +
        'ECODIGO, DLV_CLIENTE, DLV_CODIGO, DLV_COMPLEMENTO, DLV_DESCPORC,' +
        ' DLV_DESCVALOR, DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO,' +
        ' DLV_ENDERECO, DLV_ENTREGADOR, DLV_ESTADO, DLV_ESTADOCODIGO, DLV' +
        '_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, DLV_HRCADASTRO, DLV_MOTIVO' +
        'CANCELAMENTO, DLV_MOTIVOINUTILIZACAO, DLV_NUMERO, DLV_OBSERVACOE' +
        'S, DLV_RETIRA, DLV_SEQUENCIAITEM, DLV_STATUS, DLV_TAXA, DLV_TAXA' +
        'TIPO, DLV_TAXAVALOR, DLV_TOTALITENS, DLV_TOTALTAXA, DLV_TROCO, D' +
        'LV_USUARIO, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_VIAAPP')
    ModifySQL.Strings = (
      'UPDATE DELIVERYS'
      'SET DLV_BAIRRO = :NEW_DLV_BAIRRO, DLV_CARTAO = :NEW_DLV_CARTAO, '
      
        '  DLV_CEP = :NEW_DLV_CEP, DLV_CIDADE = :NEW_DLV_CIDADE, DLV_CIDA' +
        'DECODIGO = :NEW_DLV_CIDADECODIGO, '
      '  DLV_CLIENTE = :NEW_DLV_CLIENTE, DLV_CODIGO = :NEW_DLV_CODIGO, '
      
        '  DLV_COMPLEMENTO = :NEW_DLV_COMPLEMENTO, DLV_DESCPORC = :NEW_DL' +
        'V_DESCPORC, '
      
        '  DLV_DESCVALOR = :NEW_DLV_DESCVALOR, DLV_DINHEIRO = :NEW_DLV_DI' +
        'NHEIRO, '
      
        '  DLV_DTATUALIZACAO = :NEW_DLV_DTATUALIZACAO, DLV_DTCADASTRO = :' +
        'NEW_DLV_DTCADASTRO, '
      
        '  DLV_ENDERECO = :NEW_DLV_ENDERECO, DLV_ENTREGADOR = :NEW_DLV_EN' +
        'TREGADOR, '
      
        '  DLV_ESTADO = :NEW_DLV_ESTADO, DLV_ESTADOCODIGO = :NEW_DLV_ESTA' +
        'DOCODIGO, '
      '  DLV_FONE1 = :NEW_DLV_FONE1, DLV_FONE2 = :NEW_DLV_FONE2, '
      
        '  DLV_HRATUALIZACAO = :NEW_DLV_HRATUALIZACAO, DLV_HRCADASTRO = :' +
        'NEW_DLV_HRCADASTRO, '
      
        '  DLV_MOTIVOCANCELAMENTO = :NEW_DLV_MOTIVOCANCELAMENTO, DLV_MOTI' +
        'VOINUTILIZACAO = :NEW_DLV_MOTIVOINUTILIZACAO, '
      
        '  DLV_NUMERO = :NEW_DLV_NUMERO, DLV_OBSERVACOES = :NEW_DLV_OBSER' +
        'VACOES, '
      
        '  DLV_RETIRA = :NEW_DLV_RETIRA, DLV_SEQUENCIAITEM = :NEW_DLV_SEQ' +
        'UENCIAITEM, '
      '  DLV_STATUS = :NEW_DLV_STATUS, DLV_TAXA = :NEW_DLV_TAXA, '
      
        '  DLV_TAXATIPO = :NEW_DLV_TAXATIPO, DLV_TAXAVALOR = :NEW_DLV_TAX' +
        'AVALOR, '
      
        '  DLV_TOTALITENS = :NEW_DLV_TOTALITENS, DLV_TOTALTAXA = :NEW_DLV' +
        '_TOTALTAXA, '
      '  DLV_TROCO = :NEW_DLV_TROCO, DLV_USUARIO = :NEW_DLV_USUARIO, '
      
        '  DLV_VALORTOTAL = :NEW_DLV_VALORTOTAL, DLV_VENDEDOR = :NEW_DLV_' +
        'VENDEDOR, '
      '  DLV_VIAAPP = :NEW_DLV_VIAAPP'
      'WHERE DLV_CODIGO = :OLD_DLV_CODIGO'
      
        'RETURNING DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, DLV_CIDAD' +
        'ECODIGO, DLV_CLIENTE, DLV_CODIGO, DLV_COMPLEMENTO, DLV_DESCPORC,' +
        ' DLV_DESCVALOR, DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO,' +
        ' DLV_ENDERECO, DLV_ENTREGADOR, DLV_ESTADO, DLV_ESTADOCODIGO, DLV' +
        '_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, DLV_HRCADASTRO, DLV_MOTIVO' +
        'CANCELAMENTO, DLV_MOTIVOINUTILIZACAO, DLV_NUMERO, DLV_OBSERVACOE' +
        'S, DLV_RETIRA, DLV_SEQUENCIAITEM, DLV_STATUS, DLV_TAXA, DLV_TAXA' +
        'TIPO, DLV_TAXAVALOR, DLV_TOTALITENS, DLV_TOTALTAXA, DLV_TROCO, D' +
        'LV_USUARIO, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_VIAAPP')
    DeleteSQL.Strings = (
      'DELETE FROM DELIVERYS'
      'WHERE DLV_CODIGO = :OLD_DLV_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, DLV_CIDADECO' +
        'DIGO, '
      '  DLV_CLIENTE, DLV_CODIGO, DLV_COMPLEMENTO, DLV_DESCPORC, '
      
        '  DLV_DESCVALOR, DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO' +
        ', '
      '  DLV_ENDERECO, DLV_ENTREGADOR, DLV_ESTADO, DLV_ESTADOCODIGO, '
      '  DLV_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, DLV_HRCADASTRO, '
      '  DLV_MOTIVOCANCELAMENTO, DLV_MOTIVOINUTILIZACAO, DLV_NUMERO, '
      '  DLV_OBSERVACOES, DLV_RETIRA, DLV_SEQUENCIAITEM, DLV_STATUS, '
      
        '  DLV_TAXA, DLV_TAXATIPO, DLV_TAXAVALOR, DLV_TOTALITENS, DLV_TOT' +
        'ALTAXA, '
      
        '  DLV_TROCO, DLV_USUARIO, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_VIAA' +
        'PP'
      'FROM DELIVERYS'
      'WHERE DLV_CODIGO = :OLD_DLV_CODIGO')
    Left = 1024
    Top = 56
  end
  object TBDeliverys: TFDQuery
    AfterInsert = TBDeliverysAfterInsert
    BeforeEdit = TBDeliverysBeforeEdit
    AfterEdit = TBDeliverysAfterEdit
    BeforePost = TBDeliverysBeforePost
    BeforeCancel = TBDeliverysBeforeCancel
    Connection = DM.FDConnection1
    Transaction = TRDeliverys
    UpdateObject = UPDeliverys
    SQL.Strings = (
      'select '
      'DLV_BAIRRO,'
      'DLV_CARTAO,'
      'DLV_CEP,'
      'DLV_CIDADE,'
      'DLV_CIDADECODIGO,'
      'DLV_CLIENTE,'
      'DLV_CODIGO,'
      'DLV_COMPLEMENTO,'
      'DLV_DESCPORC,'
      'DLV_DESCVALOR,'
      'DLV_DINHEIRO,'
      'DLV_DTATUALIZACAO,'
      'DLV_DTCADASTRO,'
      'DLV_ENDERECO,'
      'DLV_ENTREGADOR,'
      'DLV_ESTADO,'
      'DLV_ESTADOCODIGO,'
      'DLV_FONE1,'
      'DLV_FONE2,'
      'DLV_HRATUALIZACAO,'
      'DLV_HRCADASTRO,'
      'DLV_MOTIVOCANCELAMENTO,'
      'DLV_MOTIVOINUTILIZACAO,'
      'DLV_NUMERO,'
      'DLV_OBSERVACOES,'
      'DLV_RETIRA,'
      'DLV_SEQUENCIAITEM,'
      'DLV_STATUS,'
      'DLV_TAXA,'
      'DLV_TAXATIPO,'
      'DLV_TAXAVALOR,'
      'DLV_TOTALITENS,'
      'DLV_TOTALTAXA,'
      'DLV_TROCO,'
      'DLV_USUARIO,'
      'DLV_VALORTOTAL,'
      'DLV_VENDEDOR,'
      'DLV_VIAAPP,'
      'CLI_NOME,'
      'TAX_DESCRICAO,'
      'A.VEN_NOME,'
      'B.VEN_NOME as VEN_NOMEENTREGADOR'
      'from DELIVERYS'
      'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES A on DLV_VENDEDOR=A.VEN_CODIGO'
      'left join VENDEDORES B on DLV_ENTREGADOR=B.VEN_CODIGO'
      'left join TAXAS on DLV_TAXA=TAX_CODIGO'
      'where '
      'DLV_STATUS='#39'A'#39' or '
      'DLV_STATUS='#39'W'#39' or '
      'DLV_STATUS='#39'P'#39' or '
      'DLV_STATUS='#39'E'#39
      'order by CLI_NOME, DLV_CODIGO'
      '')
    Left = 1024
    Top = 24
    object TBDeliverysDLV_BAIRRO: TStringField
      FieldName = 'DLV_BAIRRO'
      Origin = 'DLV_BAIRRO'
      Size = 50
    end
    object TBDeliverysDLV_CARTAO: TFMTBCDField
      FieldName = 'DLV_CARTAO'
      Origin = 'DLV_CARTAO'
      Precision = 18
    end
    object TBDeliverysDLV_CEP: TStringField
      FieldName = 'DLV_CEP'
      Origin = 'DLV_CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBDeliverysDLV_CIDADE: TStringField
      FieldName = 'DLV_CIDADE'
      Origin = 'DLV_CIDADE'
      Size = 50
    end
    object TBDeliverysDLV_CIDADECODIGO: TIntegerField
      FieldName = 'DLV_CIDADECODIGO'
      Origin = 'DLV_CIDADECODIGO'
    end
    object TBDeliverysDLV_CLIENTE: TIntegerField
      FieldName = 'DLV_CLIENTE'
      Origin = 'DLV_CLIENTE'
      Required = True
    end
    object TBDeliverysDLV_CODIGO: TIntegerField
      FieldName = 'DLV_CODIGO'
      Origin = 'DLV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBDeliverysDLV_COMPLEMENTO: TStringField
      FieldName = 'DLV_COMPLEMENTO'
      Origin = 'DLV_COMPLEMENTO'
      Size = 80
    end
    object TBDeliverysDLV_DESCPORC: TFMTBCDField
      FieldName = 'DLV_DESCPORC'
      Origin = 'DLV_DESCPORC'
      Precision = 18
    end
    object TBDeliverysDLV_DESCVALOR: TFMTBCDField
      FieldName = 'DLV_DESCVALOR'
      Origin = 'DLV_DESCVALOR'
      currency = True
      Precision = 18
    end
    object TBDeliverysDLV_DINHEIRO: TFMTBCDField
      FieldName = 'DLV_DINHEIRO'
      Origin = 'DLV_DINHEIRO'
      Precision = 18
    end
    object TBDeliverysDLV_DTATUALIZACAO: TDateField
      FieldName = 'DLV_DTATUALIZACAO'
      Origin = 'DLV_DTATUALIZACAO'
    end
    object TBDeliverysDLV_DTCADASTRO: TDateField
      FieldName = 'DLV_DTCADASTRO'
      Origin = 'DLV_DTCADASTRO'
    end
    object TBDeliverysDLV_ENDERECO: TStringField
      FieldName = 'DLV_ENDERECO'
      Origin = 'DLV_ENDERECO'
      Size = 100
    end
    object TBDeliverysDLV_ENTREGADOR: TIntegerField
      FieldName = 'DLV_ENTREGADOR'
      Origin = 'DLV_ENTREGADOR'
      Required = True
    end
    object TBDeliverysDLV_ESTADO: TStringField
      FieldName = 'DLV_ESTADO'
      Origin = 'DLV_ESTADO'
      Size = 2
    end
    object TBDeliverysDLV_ESTADOCODIGO: TIntegerField
      FieldName = 'DLV_ESTADOCODIGO'
      Origin = 'DLV_ESTADOCODIGO'
    end
    object TBDeliverysDLV_FONE1: TStringField
      FieldName = 'DLV_FONE1'
      Origin = 'DLV_FONE1'
    end
    object TBDeliverysDLV_FONE2: TStringField
      FieldName = 'DLV_FONE2'
      Origin = 'DLV_FONE2'
    end
    object TBDeliverysDLV_HRATUALIZACAO: TTimeField
      FieldName = 'DLV_HRATUALIZACAO'
      Origin = 'DLV_HRATUALIZACAO'
    end
    object TBDeliverysDLV_HRCADASTRO: TTimeField
      FieldName = 'DLV_HRCADASTRO'
      Origin = 'DLV_HRCADASTRO'
    end
    object TBDeliverysDLV_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'DLV_MOTIVOCANCELAMENTO'
      Origin = 'DLV_MOTIVOCANCELAMENTO'
      Size = 50
    end
    object TBDeliverysDLV_MOTIVOINUTILIZACAO: TStringField
      FieldName = 'DLV_MOTIVOINUTILIZACAO'
      Origin = 'DLV_MOTIVOINUTILIZACAO'
      Size = 50
    end
    object TBDeliverysDLV_NUMERO: TStringField
      FieldName = 'DLV_NUMERO'
      Origin = 'DLV_NUMERO'
      Size = 15
    end
    object TBDeliverysDLV_OBSERVACOES: TMemoField
      FieldName = 'DLV_OBSERVACOES'
      Origin = 'DLV_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBDeliverysDLV_RETIRA: TStringField
      FieldName = 'DLV_RETIRA'
      Origin = 'DLV_RETIRA'
      Size = 1
    end
    object TBDeliverysDLV_SEQUENCIAITEM: TIntegerField
      FieldName = 'DLV_SEQUENCIAITEM'
      Origin = 'DLV_SEQUENCIAITEM'
    end
    object TBDeliverysDLV_STATUS: TStringField
      FieldName = 'DLV_STATUS'
      Origin = 'DLV_STATUS'
      Size = 1
    end
    object TBDeliverysDLV_TAXA: TFMTBCDField
      FieldName = 'DLV_TAXA'
      Origin = 'DLV_TAXA'
      Precision = 18
    end
    object TBDeliverysDLV_TAXATIPO: TStringField
      FieldName = 'DLV_TAXATIPO'
      Origin = 'DLV_TAXATIPO'
      Size = 1
    end
    object TBDeliverysDLV_TAXAVALOR: TFMTBCDField
      FieldName = 'DLV_TAXAVALOR'
      Origin = 'DLV_TAXAVALOR'
      Precision = 18
    end
    object TBDeliverysDLV_TOTALITENS: TFMTBCDField
      FieldName = 'DLV_TOTALITENS'
      Origin = 'DLV_TOTALITENS'
      currency = True
      Precision = 18
    end
    object TBDeliverysDLV_TOTALTAXA: TFMTBCDField
      FieldName = 'DLV_TOTALTAXA'
      Origin = 'DLV_TOTALTAXA'
      currency = True
      Precision = 18
    end
    object TBDeliverysDLV_TROCO: TFMTBCDField
      FieldName = 'DLV_TROCO'
      Origin = 'DLV_TROCO'
      currency = True
      Precision = 18
    end
    object TBDeliverysDLV_USUARIO: TStringField
      FieldName = 'DLV_USUARIO'
      Origin = 'DLV_USUARIO'
    end
    object TBDeliverysDLV_VALORTOTAL: TFMTBCDField
      FieldName = 'DLV_VALORTOTAL'
      Origin = 'DLV_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBDeliverysDLV_VENDEDOR: TIntegerField
      FieldName = 'DLV_VENDEDOR'
      Origin = 'DLV_VENDEDOR'
      Required = True
    end
    object TBDeliverysDLV_VIAAPP: TStringField
      FieldName = 'DLV_VIAAPP'
      Origin = 'DLV_VIAAPP'
      Size = 1
    end
    object TBDeliverysCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBDeliverysTAX_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBDeliverysVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBDeliverysVEN_NOMEENTREGADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOMEENTREGADOR'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRDeliverysItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1056
    Top = 88
  end
  object UPDeliverysItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO DELIVERYSITENS'
      '(DLI_ALMOXARIFADO, DLI_CODIGO, DLI_COMPLEMENTO, '
      '  DLI_DELIVERY, DLI_DESCPORC, DLI_DESCVALOR, '
      '  DLI_NOME, DLI_PRODUTO, DLI_QUANTIDADE, DLI_SEQUENCIA, '
      '  DLI_VALORTOTAL, DLI_VALORUNIT)'
      
        'VALUES (:NEW_DLI_ALMOXARIFADO, gen_id(GEN_DEIVERYSITENS,1), :NEW' +
        '_DLI_COMPLEMENTO, '
      '  :NEW_DLI_DELIVERY, :NEW_DLI_DESCPORC, :NEW_DLI_DESCVALOR, '
      
        '  :NEW_DLI_NOME, :NEW_DLI_PRODUTO, :NEW_DLI_QUANTIDADE, :NEW_DLI' +
        '_SEQUENCIA, '
      '  :NEW_DLI_VALORTOTAL, :NEW_DLI_VALORUNIT)'
      
        'RETURNING DLI_ALMOXARIFADO, DLI_CODIGO, DLI_COMPLEMENTO, DLI_DEL' +
        'IVERY, DLI_DESCPORC, DLI_DESCVALOR, DLI_NOME, DLI_PRODUTO, DLI_Q' +
        'UANTIDADE, DLI_SEQUENCIA, DLI_VALORTOTAL, DLI_VALORUNIT')
    ModifySQL.Strings = (
      'UPDATE DELIVERYSITENS'
      
        'SET DLI_ALMOXARIFADO = :NEW_DLI_ALMOXARIFADO, DLI_CODIGO = :NEW_' +
        'DLI_CODIGO, '
      
        '  DLI_COMPLEMENTO = :NEW_DLI_COMPLEMENTO, DLI_DELIVERY = :NEW_DL' +
        'I_DELIVERY, '
      
        '  DLI_DESCPORC = :NEW_DLI_DESCPORC, DLI_DESCVALOR = :NEW_DLI_DES' +
        'CVALOR, '
      '  DLI_NOME = :NEW_DLI_NOME, DLI_PRODUTO = :NEW_DLI_PRODUTO, '
      
        '  DLI_QUANTIDADE = :NEW_DLI_QUANTIDADE, DLI_SEQUENCIA = :NEW_DLI' +
        '_SEQUENCIA, '
      
        '  DLI_VALORTOTAL = :NEW_DLI_VALORTOTAL, DLI_VALORUNIT = :NEW_DLI' +
        '_VALORUNIT'
      'WHERE DLI_CODIGO = :OLD_DLI_CODIGO'
      
        'RETURNING DLI_ALMOXARIFADO, DLI_CODIGO, DLI_COMPLEMENTO, DLI_DEL' +
        'IVERY, DLI_DESCPORC, DLI_DESCVALOR, DLI_NOME, DLI_PRODUTO, DLI_Q' +
        'UANTIDADE, DLI_SEQUENCIA, DLI_VALORTOTAL, DLI_VALORUNIT')
    DeleteSQL.Strings = (
      'DELETE FROM DELIVERYSITENS'
      'WHERE DLI_CODIGO = :OLD_DLI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT DLI_ALMOXARIFADO, DLI_CODIGO, DLI_COMPLEMENTO, DLI_DELIVE' +
        'RY, '
      
        '  DLI_DESCPORC, DLI_DESCVALOR, DLI_NOME, DLI_PRODUTO, DLI_QUANTI' +
        'DADE, '
      '  DLI_SEQUENCIA, DLI_VALORTOTAL, DLI_VALORUNIT'
      'FROM DELIVERYSITENS'
      'WHERE DLI_CODIGO = :OLD_DLI_CODIGO')
    Left = 1056
    Top = 56
  end
  object TBDeliverysItens: TFDQuery
    AfterInsert = TBDeliverysItensAfterInsert
    BeforePost = TBDeliverysItensBeforePost
    AfterPost = TBDeliverysItensAfterPost
    MasterSource = DSDeliverys
    MasterFields = 'DLV_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRDeliverysItens
    UpdateObject = UPDeliverysItens
    SQL.Strings = (
      'select '
      'DLI_ALMOXARIFADO,'
      'DLI_CODIGO,'
      'DLI_COMPLEMENTO,'
      'DLI_DELIVERY,'
      'DLI_DESCPORC,'
      'DLI_DESCVALOR,'
      'DLI_NOME,'
      'DLI_PRODUTO,'
      'DLI_QUANTIDADE,'
      'DLI_SEQUENCIA,'
      'DLI_VALORTOTAL,'
      'DLI_VALORUNIT'
      'from DELIVERYSITENS'
      'where DLI_DELIVERY=:DLV_CODIGO'
      'order by DLI_SEQUENCIA'
      '')
    Left = 1056
    Top = 24
    ParamData = <
      item
        Name = 'DLV_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBDeliverysItensDLI_ALMOXARIFADO: TIntegerField
      FieldName = 'DLI_ALMOXARIFADO'
      Origin = 'DLI_ALMOXARIFADO'
      Required = True
    end
    object TBDeliverysItensDLI_CODIGO: TIntegerField
      FieldName = 'DLI_CODIGO'
      Origin = 'DLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBDeliverysItensDLI_COMPLEMENTO: TStringField
      FieldName = 'DLI_COMPLEMENTO'
      Origin = 'DLI_COMPLEMENTO'
      Size = 50
    end
    object TBDeliverysItensDLI_DELIVERY: TIntegerField
      FieldName = 'DLI_DELIVERY'
      Origin = 'DLI_DELIVERY'
      Required = True
    end
    object TBDeliverysItensDLI_DESCPORC: TFMTBCDField
      FieldName = 'DLI_DESCPORC'
      Origin = 'DLI_DESCPORC'
      Precision = 18
    end
    object TBDeliverysItensDLI_DESCVALOR: TFMTBCDField
      FieldName = 'DLI_DESCVALOR'
      Origin = 'DLI_DESCVALOR'
      currency = True
      Precision = 18
    end
    object TBDeliverysItensDLI_NOME: TStringField
      FieldName = 'DLI_NOME'
      Origin = 'DLI_NOME'
      Size = 50
    end
    object TBDeliverysItensDLI_PRODUTO: TIntegerField
      FieldName = 'DLI_PRODUTO'
      Origin = 'DLI_PRODUTO'
      Required = True
    end
    object TBDeliverysItensDLI_QUANTIDADE: TFMTBCDField
      FieldName = 'DLI_QUANTIDADE'
      Origin = 'DLI_QUANTIDADE'
      Precision = 18
    end
    object TBDeliverysItensDLI_SEQUENCIA: TIntegerField
      FieldName = 'DLI_SEQUENCIA'
      Origin = 'DLI_SEQUENCIA'
    end
    object TBDeliverysItensDLI_VALORTOTAL: TFMTBCDField
      FieldName = 'DLI_VALORTOTAL'
      Origin = 'DLI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBDeliverysItensDLI_VALORUNIT: TFMTBCDField
      FieldName = 'DLI_VALORUNIT'
      Origin = 'DLI_VALORUNIT'
      currency = True
      Precision = 18
    end
  end
  object TREmails: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1088
    Top = 88
  end
  object UPEmails: TFDUpdateSQL
    Connection = DM.FDConnection1
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
    Left = 1088
    Top = 56
  end
  object TBEmails: TFDQuery
    BeforeInsert = TBEmailsBeforeInsert
    AfterInsert = TBEmailsAfterInsert
    BeforeEdit = TBEmailsBeforeEdit
    BeforePost = TBEmailsBeforePost
    Connection = DM.FDConnection1
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
    Left = 1088
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsEMA_DTCADASTRO: TDateField
      FieldName = 'EMA_DTCADASTRO'
      Origin = 'EMA_DTCADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEmailsEMA_DTULTENVIO: TDateField
      FieldName = 'EMA_DTULTENVIO'
      Origin = 'EMA_DTULTENVIO'
      EditMask = '!99/99/9999;1;_'
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
  object TREmailsContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1120
    Top = 88
  end
  object UPEmailsContas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EMAILSCONTAS'
      '(EMC_ASSINATURA, EMC_CODIGO, EMC_CONFIRMACAO, '
      '  EMC_DTATUALIZACAO, EMC_DTCADASTRO, EMC_EMAIL, '
      '  EMC_HRATUALIZACAO, EMC_HRCADASTRO, EMC_LOGIN, '
      '  EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_REPLYTO, '
      '  EMC_SENHA, EMC_SMTP, EMC_SMTPPORTA, EMC_SSL, '
      '  EMC_STATUS, EMC_TIMEOUT, EMC_TLS, EMC_USUARIO)'
      
        'VALUES (:NEW_EMC_ASSINATURA, gen_id(GEN_EMAILSCONTAS,1), :NEW_EM' +
        'C_CONFIRMACAO, '
      '  :NEW_EMC_DTATUALIZACAO, :NEW_EMC_DTCADASTRO, :NEW_EMC_EMAIL, '
      '  :NEW_EMC_HRATUALIZACAO, :NEW_EMC_HRCADASTRO, :NEW_EMC_LOGIN, '
      
        '  :NEW_EMC_NOME, :NEW_EMC_POP, :NEW_EMC_POPPORTA, :NEW_EMC_REPLY' +
        'TO, '
      
        '  :NEW_EMC_SENHA, :NEW_EMC_SMTP, :NEW_EMC_SMTPPORTA, :NEW_EMC_SS' +
        'L, '
      
        '  :NEW_EMC_STATUS, :NEW_EMC_TIMEOUT, :NEW_EMC_TLS, :NEW_EMC_USUA' +
        'RIO)'
      
        'RETURNING EMC_ASSINATURA, EMC_CODIGO, EMC_CONFIRMACAO, EMC_DTATU' +
        'ALIZACAO, EMC_DTCADASTRO, EMC_EMAIL, EMC_HRATUALIZACAO, EMC_HRCA' +
        'DASTRO, EMC_LOGIN, EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_REPLYTO,' +
        ' EMC_SENHA, EMC_SMTP, EMC_SMTPPORTA, EMC_SSL, EMC_STATUS, EMC_TI' +
        'MEOUT, EMC_TLS, EMC_USUARIO')
    ModifySQL.Strings = (
      'UPDATE EMAILSCONTAS'
      
        'SET EMC_ASSINATURA = :NEW_EMC_ASSINATURA, EMC_CODIGO = :NEW_EMC_' +
        'CODIGO, '
      
        '  EMC_CONFIRMACAO = :NEW_EMC_CONFIRMACAO, EMC_DTATUALIZACAO = :N' +
        'EW_EMC_DTATUALIZACAO, '
      
        '  EMC_DTCADASTRO = :NEW_EMC_DTCADASTRO, EMC_EMAIL = :NEW_EMC_EMA' +
        'IL, '
      
        '  EMC_HRATUALIZACAO = :NEW_EMC_HRATUALIZACAO, EMC_HRCADASTRO = :' +
        'NEW_EMC_HRCADASTRO, '
      
        '  EMC_LOGIN = :NEW_EMC_LOGIN, EMC_NOME = :NEW_EMC_NOME, EMC_POP ' +
        '= :NEW_EMC_POP, '
      
        '  EMC_POPPORTA = :NEW_EMC_POPPORTA, EMC_REPLYTO = :NEW_EMC_REPLY' +
        'TO, '
      
        '  EMC_SENHA = :NEW_EMC_SENHA, EMC_SMTP = :NEW_EMC_SMTP, EMC_SMTP' +
        'PORTA = :NEW_EMC_SMTPPORTA, '
      
        '  EMC_SSL = :NEW_EMC_SSL, EMC_STATUS = :NEW_EMC_STATUS, EMC_TIME' +
        'OUT = :NEW_EMC_TIMEOUT, '
      '  EMC_TLS = :NEW_EMC_TLS, EMC_USUARIO = :NEW_EMC_USUARIO'
      'WHERE EMC_CODIGO = :OLD_EMC_CODIGO'
      
        'RETURNING EMC_ASSINATURA, EMC_CODIGO, EMC_CONFIRMACAO, EMC_DTATU' +
        'ALIZACAO, EMC_DTCADASTRO, EMC_EMAIL, EMC_HRATUALIZACAO, EMC_HRCA' +
        'DASTRO, EMC_LOGIN, EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_REPLYTO,' +
        ' EMC_SENHA, EMC_SMTP, EMC_SMTPPORTA, EMC_SSL, EMC_STATUS, EMC_TI' +
        'MEOUT, EMC_TLS, EMC_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM EMAILSCONTAS'
      'WHERE EMC_CODIGO = :OLD_EMC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EMC_ASSINATURA, EMC_CODIGO, EMC_CONFIRMACAO, EMC_DTATUALI' +
        'ZACAO, '
      '  EMC_DTCADASTRO, EMC_EMAIL, EMC_HRATUALIZACAO, EMC_HRCADASTRO, '
      '  EMC_LOGIN, EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_REPLYTO, '
      '  EMC_SENHA, EMC_SMTP, EMC_SMTPPORTA, EMC_SSL, EMC_STATUS, '
      '  EMC_TIMEOUT, EMC_TLS, EMC_USUARIO'
      'FROM EMAILSCONTAS'
      'WHERE EMC_CODIGO = :OLD_EMC_CODIGO')
    Left = 1120
    Top = 56
  end
  object TBEmailsContas: TFDQuery
    BeforeInsert = TBEmailsContasBeforeInsert
    AfterInsert = TBEmailsContasAfterInsert
    BeforeEdit = TBEmailsContasBeforeEdit
    BeforePost = TBEmailsContasBeforePost
    Connection = DM.FDConnection1
    Transaction = TREmailsContas
    UpdateObject = UPEmailsContas
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
      'from EMAILSCONTAS'
      'where EMC_CODIGO=:codigo'
      '')
    Left = 1120
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
  object TREvolucoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 240
  end
  object UPEvolucoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EVOLUCOES'
      '(EVO_CLIENTE, EVO_CODIGO, EVO_DATA, EVO_DESCRICAO, '
      '  EVO_DTATUALIZACAO, EVO_DTCADASTRO, EVO_HORA, '
      '  EVO_HRATUALIZACAO, EVO_HRCADASTRO, EVO_STATUS, '
      '  EVO_USUARIO, EVO_VENDEDOR)'
      
        'VALUES (:NEW_EVO_CLIENTE, gen_id(GEN_EVOLUCOES,1), :NEW_EVO_DATA' +
        ', :NEW_EVO_DESCRICAO, '
      '  :NEW_EVO_DTATUALIZACAO, :NEW_EVO_DTCADASTRO, :NEW_EVO_HORA, '
      '  :NEW_EVO_HRATUALIZACAO, :NEW_EVO_HRCADASTRO, :NEW_EVO_STATUS, '
      '  :NEW_EVO_USUARIO, :NEW_EVO_VENDEDOR)'
      
        'RETURNING EVO_CLIENTE, EVO_CODIGO, EVO_DATA, EVO_DESCRICAO, EVO_' +
        'DTATUALIZACAO, EVO_DTCADASTRO, EVO_HORA, EVO_HRATUALIZACAO, EVO_' +
        'HRCADASTRO, EVO_STATUS, EVO_USUARIO, EVO_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE EVOLUCOES'
      
        'SET EVO_CLIENTE = :NEW_EVO_CLIENTE, EVO_CODIGO = :NEW_EVO_CODIGO' +
        ', '
      '  EVO_DATA = :NEW_EVO_DATA, EVO_DESCRICAO = :NEW_EVO_DESCRICAO, '
      
        '  EVO_DTATUALIZACAO = :NEW_EVO_DTATUALIZACAO, EVO_DTCADASTRO = :' +
        'NEW_EVO_DTCADASTRO, '
      
        '  EVO_HORA = :NEW_EVO_HORA, EVO_HRATUALIZACAO = :NEW_EVO_HRATUAL' +
        'IZACAO, '
      
        '  EVO_HRCADASTRO = :NEW_EVO_HRCADASTRO, EVO_STATUS = :NEW_EVO_ST' +
        'ATUS, '
      
        '  EVO_USUARIO = :NEW_EVO_USUARIO, EVO_VENDEDOR = :NEW_EVO_VENDED' +
        'OR'
      'WHERE EVO_CODIGO = :OLD_EVO_CODIGO'
      
        'RETURNING EVO_CLIENTE, EVO_CODIGO, EVO_DATA, EVO_DESCRICAO, EVO_' +
        'DTATUALIZACAO, EVO_DTCADASTRO, EVO_HORA, EVO_HRATUALIZACAO, EVO_' +
        'HRCADASTRO, EVO_STATUS, EVO_USUARIO, EVO_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM EVOLUCOES'
      'WHERE EVO_CODIGO = :OLD_EVO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EVO_CLIENTE, EVO_CODIGO, EVO_DATA, EVO_DESCRICAO, EVO_DTA' +
        'TUALIZACAO, '
      '  EVO_DTCADASTRO, EVO_HORA, EVO_HRATUALIZACAO, EVO_HRCADASTRO, '
      '  EVO_STATUS, EVO_USUARIO, EVO_VENDEDOR'
      'FROM EVOLUCOES'
      'WHERE EVO_CODIGO = :OLD_EVO_CODIGO')
    Left = 32
    Top = 208
  end
  object TBEvolucoes: TFDQuery
    BeforeInsert = TBEvolucoesBeforeInsert
    AfterInsert = TBEvolucoesAfterInsert
    BeforeEdit = TBEvolucoesBeforeEdit
    AfterEdit = TBEvolucoesAfterEdit
    BeforePost = TBEvolucoesBeforePost
    Connection = DM.FDConnection1
    Transaction = TREvolucoes
    UpdateObject = UPEvolucoes
    SQL.Strings = (
      'select '
      'EVO_CLIENTE,'
      'EVO_CODIGO,'
      'EVO_DATA,'
      'EVO_DTATUALIZACAO,'
      'EVO_DTCADASTRO,'
      'EVO_DESCRICAO,'
      'EVO_HORA,'
      'EVO_HRATUALIZACAO,'
      'EVO_HRCADASTRO,'
      'EVO_STATUS,'
      'EVO_USUARIO,'
      'EVO_VENDEDOR,'
      'CLI_NOME,'
      'VEN_NOME'
      'from EVOLUCOES'
      'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO'
      'where EVO_CODIGO=:codigo'
      '')
    Left = 32
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBEvolucoesEVO_CLIENTE: TIntegerField
      FieldName = 'EVO_CLIENTE'
      Origin = 'EVO_CLIENTE'
      Required = True
    end
    object TBEvolucoesEVO_CODIGO: TIntegerField
      FieldName = 'EVO_CODIGO'
      Origin = 'EVO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBEvolucoesEVO_DATA: TDateField
      FieldName = 'EVO_DATA'
      Origin = 'EVO_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBEvolucoesEVO_DTATUALIZACAO: TDateField
      FieldName = 'EVO_DTATUALIZACAO'
      Origin = 'EVO_DTATUALIZACAO'
    end
    object TBEvolucoesEVO_DTCADASTRO: TDateField
      FieldName = 'EVO_DTCADASTRO'
      Origin = 'EVO_DTCADASTRO'
    end
    object TBEvolucoesEVO_DESCRICAO: TMemoField
      FieldName = 'EVO_DESCRICAO'
      Origin = 'EVO_DESCRICAO'
      BlobType = ftMemo
    end
    object TBEvolucoesEVO_HORA: TTimeField
      FieldName = 'EVO_HORA'
      Origin = 'EVO_HORA'
      EditMask = '!99:99:99;1;_'
    end
    object TBEvolucoesEVO_HRATUALIZACAO: TTimeField
      FieldName = 'EVO_HRATUALIZACAO'
      Origin = 'EVO_HRATUALIZACAO'
    end
    object TBEvolucoesEVO_HRCADASTRO: TTimeField
      FieldName = 'EVO_HRCADASTRO'
      Origin = 'EVO_HRCADASTRO'
    end
    object TBEvolucoesEVO_STATUS: TStringField
      FieldName = 'EVO_STATUS'
      Origin = 'EVO_STATUS'
      Size = 1
    end
    object TBEvolucoesEVO_USUARIO: TStringField
      FieldName = 'EVO_USUARIO'
      Origin = 'EVO_USUARIO'
    end
    object TBEvolucoesEVO_VENDEDOR: TIntegerField
      FieldName = 'EVO_VENDEDOR'
      Origin = 'EVO_VENDEDOR'
      Required = True
    end
    object TBEvolucoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBEvolucoesVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRExamesTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 64
    Top = 240
  end
  object UPExamesTipos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EXAMESTIPOS'
      '(EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_DTATUALIZACAO, '
      '  EXT_DTCADASTRO, EXT_HRATUALIZACAO, EXT_HRCADASTRO, '
      '  EXT_OBSERVACOES, EXT_SIGLA, EXT_STATUS, EXT_USUARIO, '
      '  EXT_VALOR)'
      
        'VALUES (gen_id(GEN_EXAMESTIPOS,1), :NEW_EXT_CODIGO2, :NEW_EXT_DE' +
        'SCRICAO, :NEW_EXT_DTATUALIZACAO, '
      
        '  :NEW_EXT_DTCADASTRO, :NEW_EXT_HRATUALIZACAO, :NEW_EXT_HRCADAST' +
        'RO, '
      
        '  :NEW_EXT_OBSERVACOES, :NEW_EXT_SIGLA, :NEW_EXT_STATUS, :NEW_EX' +
        'T_USUARIO, '
      '  :NEW_EXT_VALOR)'
      
        'RETURNING EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_DTATUALIZA' +
        'CAO, EXT_DTCADASTRO, EXT_HRATUALIZACAO, EXT_HRCADASTRO, EXT_OBSE' +
        'RVACOES, EXT_SIGLA, EXT_STATUS, EXT_USUARIO, EXT_VALOR')
    ModifySQL.Strings = (
      'UPDATE EXAMESTIPOS'
      
        'SET EXT_CODIGO = :NEW_EXT_CODIGO, EXT_CODIGO2 = :NEW_EXT_CODIGO2' +
        ', '
      
        '  EXT_DESCRICAO = :NEW_EXT_DESCRICAO, EXT_DTATUALIZACAO = :NEW_E' +
        'XT_DTATUALIZACAO, '
      
        '  EXT_DTCADASTRO = :NEW_EXT_DTCADASTRO, EXT_HRATUALIZACAO = :NEW' +
        '_EXT_HRATUALIZACAO, '
      
        '  EXT_HRCADASTRO = :NEW_EXT_HRCADASTRO, EXT_OBSERVACOES = :NEW_E' +
        'XT_OBSERVACOES, '
      '  EXT_SIGLA = :NEW_EXT_SIGLA, EXT_STATUS = :NEW_EXT_STATUS, '
      '  EXT_USUARIO = :NEW_EXT_USUARIO, EXT_VALOR = :NEW_EXT_VALOR'
      'WHERE EXT_CODIGO = :OLD_EXT_CODIGO'
      
        'RETURNING EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_DTATUALIZA' +
        'CAO, EXT_DTCADASTRO, EXT_HRATUALIZACAO, EXT_HRCADASTRO, EXT_OBSE' +
        'RVACOES, EXT_SIGLA, EXT_STATUS, EXT_USUARIO, EXT_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM EXAMESTIPOS'
      'WHERE EXT_CODIGO = :OLD_EXT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_DTATUALIZACAO' +
        ', EXT_DTCADASTRO, '
      
        '  EXT_HRATUALIZACAO, EXT_HRCADASTRO, EXT_OBSERVACOES, EXT_SIGLA,' +
        ' '
      '  EXT_STATUS, EXT_USUARIO, EXT_VALOR'
      'FROM EXAMESTIPOS'
      'WHERE EXT_CODIGO = :OLD_EXT_CODIGO')
    Left = 64
    Top = 208
  end
  object TBExamesTipos: TFDQuery
    BeforeInsert = TBExamesTiposBeforeInsert
    AfterInsert = TBExamesTiposAfterInsert
    BeforeEdit = TBExamesTiposBeforeEdit
    BeforePost = TBExamesTiposBeforePost
    Connection = DM.FDConnection1
    Transaction = TRExamesTipos
    UpdateObject = UPExamesTipos
    SQL.Strings = (
      'select'
      'EXT_CODIGO,'
      'EXT_CODIGO2,'
      'EXT_DESCRICAO,'
      'EXT_DTATUALIZACAO,'
      'EXT_DTCADASTRO,'
      'EXT_HRATUALIZACAO,'
      'EXT_HRCADASTRO,'
      'EXT_OBSERVACOES,'
      'EXT_SIGLA,'
      'EXT_STATUS,'
      'EXT_USUARIO,'
      'EXT_VALOR'
      'from EXAMESTIPOS'
      'where EXT_CODIGO=:codigo'
      '')
    Left = 64
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBExamesTiposEXT_CODIGO: TIntegerField
      FieldName = 'EXT_CODIGO'
      Origin = 'EXT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBExamesTiposEXT_CODIGO2: TStringField
      FieldName = 'EXT_CODIGO2'
      Origin = 'EXT_CODIGO2'
      Size = 15
    end
    object TBExamesTiposEXT_DESCRICAO: TStringField
      FieldName = 'EXT_DESCRICAO'
      Origin = 'EXT_DESCRICAO'
      Size = 120
    end
    object TBExamesTiposEXT_DTATUALIZACAO: TDateField
      FieldName = 'EXT_DTATUALIZACAO'
      Origin = 'EXT_DTATUALIZACAO'
    end
    object TBExamesTiposEXT_DTCADASTRO: TDateField
      FieldName = 'EXT_DTCADASTRO'
      Origin = 'EXT_DTCADASTRO'
    end
    object TBExamesTiposEXT_HRATUALIZACAO: TTimeField
      FieldName = 'EXT_HRATUALIZACAO'
      Origin = 'EXT_HRATUALIZACAO'
    end
    object TBExamesTiposEXT_HRCADASTRO: TTimeField
      FieldName = 'EXT_HRCADASTRO'
      Origin = 'EXT_HRCADASTRO'
    end
    object TBExamesTiposEXT_OBSERVACOES: TMemoField
      FieldName = 'EXT_OBSERVACOES'
      Origin = 'EXT_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBExamesTiposEXT_SIGLA: TStringField
      FieldName = 'EXT_SIGLA'
      Origin = 'EXT_SIGLA'
      Size = 10
    end
    object TBExamesTiposEXT_STATUS: TStringField
      FieldName = 'EXT_STATUS'
      Origin = 'EXT_STATUS'
      Size = 1
    end
    object TBExamesTiposEXT_USUARIO: TStringField
      FieldName = 'EXT_USUARIO'
      Origin = 'EXT_USUARIO'
    end
    object TBExamesTiposEXT_VALOR: TFMTBCDField
      FieldName = 'EXT_VALOR'
      Origin = 'EXT_VALOR'
      currency = True
      Precision = 18
    end
  end
  object TRExercicios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 96
    Top = 240
  end
  object UPExercicios: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EXERCICIOS'
      '(EXE_CODIGO, EXE_DESCRICAO, EXE_DTATUALIZACAO, '
      '  EXE_DTCADASTRO, EXE_HRATUALIZACAO, EXE_HRCADASTRO, '
      '  EXE_MATRICULA, EXE_NOTA, EXE_NOTAREVISAO, '
      '  EXE_USUARIO)'
      
        'VALUES (gen_id(GEN_EXERCICIOS,1), :NEW_EXE_DESCRICAO, :NEW_EXE_D' +
        'TATUALIZACAO, '
      
        '  :NEW_EXE_DTCADASTRO, :NEW_EXE_HRATUALIZACAO, :NEW_EXE_HRCADAST' +
        'RO, '
      '  :NEW_EXE_MATRICULA, :NEW_EXE_NOTA, :NEW_EXE_NOTAREVISAO, '
      '  :NEW_EXE_USUARIO)'
      
        'RETURNING EXE_CODIGO, EXE_DESCRICAO, EXE_DTATUALIZACAO, EXE_DTCA' +
        'DASTRO, EXE_HRATUALIZACAO, EXE_HRCADASTRO, EXE_MATRICULA, EXE_NO' +
        'TA, EXE_NOTAREVISAO, EXE_USUARIO')
    ModifySQL.Strings = (
      'UPDATE EXERCICIOS'
      
        'SET EXE_CODIGO = :NEW_EXE_CODIGO, EXE_DESCRICAO = :NEW_EXE_DESCR' +
        'ICAO, '
      
        '  EXE_DTATUALIZACAO = :NEW_EXE_DTATUALIZACAO, EXE_DTCADASTRO = :' +
        'NEW_EXE_DTCADASTRO, '
      
        '  EXE_HRATUALIZACAO = :NEW_EXE_HRATUALIZACAO, EXE_HRCADASTRO = :' +
        'NEW_EXE_HRCADASTRO, '
      '  EXE_MATRICULA = :NEW_EXE_MATRICULA, EXE_NOTA = :NEW_EXE_NOTA, '
      
        '  EXE_NOTAREVISAO = :NEW_EXE_NOTAREVISAO, EXE_USUARIO = :NEW_EXE' +
        '_USUARIO'
      'WHERE EXE_CODIGO = :OLD_EXE_CODIGO'
      
        'RETURNING EXE_CODIGO, EXE_DESCRICAO, EXE_DTATUALIZACAO, EXE_DTCA' +
        'DASTRO, EXE_HRATUALIZACAO, EXE_HRCADASTRO, EXE_MATRICULA, EXE_NO' +
        'TA, EXE_NOTAREVISAO, EXE_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM EXERCICIOS'
      'WHERE EXE_CODIGO = :OLD_EXE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EXE_CODIGO, EXE_DESCRICAO, EXE_DTATUALIZACAO, EXE_DTCADAS' +
        'TRO, '
      '  EXE_HRATUALIZACAO, EXE_HRCADASTRO, EXE_MATRICULA, EXE_NOTA, '
      '  EXE_NOTAREVISAO, EXE_USUARIO'
      'FROM EXERCICIOS'
      'WHERE EXE_CODIGO = :OLD_EXE_CODIGO')
    Left = 96
    Top = 208
  end
  object TBExercicios: TFDQuery
    BeforeInsert = TBExerciciosBeforeInsert
    AfterInsert = TBExerciciosAfterInsert
    BeforeEdit = TBExerciciosBeforeEdit
    BeforePost = TBExerciciosBeforePost
    AfterPost = TBExerciciosAfterPost
    AfterDelete = TBExerciciosAfterDelete
    MasterSource = DSMatriculas
    MasterFields = 'MAT_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRExercicios
    UpdateObject = UPExercicios
    SQL.Strings = (
      'select '
      'EXE_CODIGO, '
      'EXE_DESCRICAO, '
      'EXE_DTATUALIZACAO, '
      'EXE_DTCADASTRO,'
      'EXE_HRATUALIZACAO,'
      'EXE_HRCADASTRO,'
      'EXE_MATRICULA, '
      'EXE_NOTA, '
      'EXE_NOTAREVISAO, '
      'EXE_USUARIO, '
      'CLI_NOME'
      'from EXERCICIOS'
      'left join MATRICULAS on EXE_MATRICULA=MAT_CODIGO'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'where EXE_MATRICULA=:MAT_CODIGO'
      'order by EXE_DTCADASTRO desc'
      '')
    Left = 96
    Top = 176
    ParamData = <
      item
        Name = 'MAT_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBExerciciosEXE_CODIGO: TIntegerField
      FieldName = 'EXE_CODIGO'
      Origin = 'EXE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBExerciciosEXE_DESCRICAO: TStringField
      FieldName = 'EXE_DESCRICAO'
      Origin = 'EXE_DESCRICAO'
      Size = 50
    end
    object TBExerciciosEXE_DTATUALIZACAO: TDateField
      FieldName = 'EXE_DTATUALIZACAO'
      Origin = 'EXE_DTATUALIZACAO'
    end
    object TBExerciciosEXE_DTCADASTRO: TDateField
      FieldName = 'EXE_DTCADASTRO'
      Origin = 'EXE_DTCADASTRO'
    end
    object TBExerciciosEXE_HRATUALIZACAO: TTimeField
      FieldName = 'EXE_HRATUALIZACAO'
      Origin = 'EXE_HRATUALIZACAO'
    end
    object TBExerciciosEXE_HRCADASTRO: TTimeField
      FieldName = 'EXE_HRCADASTRO'
      Origin = 'EXE_HRCADASTRO'
    end
    object TBExerciciosEXE_MATRICULA: TIntegerField
      FieldName = 'EXE_MATRICULA'
      Origin = 'EXE_MATRICULA'
      Required = True
    end
    object TBExerciciosEXE_NOTA: TFMTBCDField
      FieldName = 'EXE_NOTA'
      Origin = 'EXE_NOTA'
      Precision = 18
    end
    object TBExerciciosEXE_NOTAREVISAO: TFMTBCDField
      FieldName = 'EXE_NOTAREVISAO'
      Origin = 'EXE_NOTAREVISAO'
      Precision = 18
    end
    object TBExerciciosEXE_USUARIO: TStringField
      FieldName = 'EXE_USUARIO'
      Origin = 'EXE_USUARIO'
    end
    object TBExerciciosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRFases: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 128
    Top = 240
  end
  object UPFases: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FASES'
      '(FAS_CODIGO, FAS_DESCRICAO, FAS_DTATUALIZACAO, '
      '  FAS_DTCADASTRO, FAS_HRATUALIZACAO, FAS_HRCADASTRO, '
      '  FAS_STATUS, FAS_USUARIO)'
      
        'VALUES (gen_id(GEN_FASES,1), :NEW_FAS_DESCRICAO, :NEW_FAS_DTATUA' +
        'LIZACAO, '
      
        '  :NEW_FAS_DTCADASTRO, :NEW_FAS_HRATUALIZACAO, :NEW_FAS_HRCADAST' +
        'RO, '
      '  :NEW_FAS_STATUS, :NEW_FAS_USUARIO)'
      
        'RETURNING FAS_CODIGO, FAS_DESCRICAO, FAS_DTATUALIZACAO, FAS_DTCA' +
        'DASTRO, FAS_HRATUALIZACAO, FAS_HRCADASTRO, FAS_STATUS, FAS_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE FASES'
      
        'SET FAS_CODIGO = :NEW_FAS_CODIGO, FAS_DESCRICAO = :NEW_FAS_DESCR' +
        'ICAO, '
      
        '  FAS_DTATUALIZACAO = :NEW_FAS_DTATUALIZACAO, FAS_DTCADASTRO = :' +
        'NEW_FAS_DTCADASTRO, '
      
        '  FAS_HRATUALIZACAO = :NEW_FAS_HRATUALIZACAO, FAS_HRCADASTRO = :' +
        'NEW_FAS_HRCADASTRO, '
      '  FAS_STATUS = :NEW_FAS_STATUS, FAS_USUARIO = :NEW_FAS_USUARIO'
      'WHERE FAS_CODIGO = :OLD_FAS_CODIGO'
      
        'RETURNING FAS_CODIGO, FAS_DESCRICAO, FAS_DTATUALIZACAO, FAS_DTCA' +
        'DASTRO, FAS_HRATUALIZACAO, FAS_HRCADASTRO, FAS_STATUS, FAS_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM FASES'
      'WHERE FAS_CODIGO = :OLD_FAS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FAS_CODIGO, FAS_DESCRICAO, FAS_DTATUALIZACAO, FAS_DTCADAS' +
        'TRO, '
      '  FAS_HRATUALIZACAO, FAS_HRCADASTRO, FAS_STATUS, FAS_USUARIO'
      'FROM FASES'
      'WHERE FAS_CODIGO = :OLD_FAS_CODIGO')
    Left = 128
    Top = 208
  end
  object TBFases: TFDQuery
    BeforeInsert = TBFasesBeforeInsert
    AfterInsert = TBFasesAfterInsert
    BeforeEdit = TBFasesBeforeEdit
    BeforePost = TBFasesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRFases
    UpdateObject = UPFases
    SQL.Strings = (
      'select'
      'FAS_CODIGO,'
      'FAS_DESCRICAO,'
      'FAS_DTATUALIZACAO,'
      'FAS_DTCADASTRO,'
      'FAS_HRATUALIZACAO,'
      'FAS_HRCADASTRO,'
      'FAS_STATUS,'
      'FAS_USUARIO '
      'from FASES '
      'where FAS_CODIGO=:codigo'
      '')
    Left = 128
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBFasesFAS_CODIGO: TIntegerField
      FieldName = 'FAS_CODIGO'
      Origin = 'FAS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBFasesFAS_DESCRICAO: TStringField
      FieldName = 'FAS_DESCRICAO'
      Origin = 'FAS_DESCRICAO'
      Size = 50
    end
    object TBFasesFAS_DTATUALIZACAO: TDateField
      FieldName = 'FAS_DTATUALIZACAO'
      Origin = 'FAS_DTATUALIZACAO'
    end
    object TBFasesFAS_DTCADASTRO: TDateField
      FieldName = 'FAS_DTCADASTRO'
      Origin = 'FAS_DTCADASTRO'
    end
    object TBFasesFAS_HRATUALIZACAO: TTimeField
      FieldName = 'FAS_HRATUALIZACAO'
      Origin = 'FAS_HRATUALIZACAO'
    end
    object TBFasesFAS_HRCADASTRO: TTimeField
      FieldName = 'FAS_HRCADASTRO'
      Origin = 'FAS_HRCADASTRO'
    end
    object TBFasesFAS_STATUS: TStringField
      FieldName = 'FAS_STATUS'
      Origin = 'FAS_STATUS'
      Size = 1
    end
    object TBFasesFAS_USUARIO: TStringField
      FieldName = 'FAS_USUARIO'
      Origin = 'FAS_USUARIO'
    end
  end
  object TRFeriados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 240
  end
  object UPFeriados: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FERIADOS'
      '(FRD_DATA, FRD_DESCRICAO, FRD_DTATUALIZACAO, FRD_DTCADASTRO, '
      '  FRD_HRATUALIZACAO, FRD_HRCADASTRO, FRD_USUARIO)'
      
        'VALUES (:NEW_FRD_DATA, :NEW_FRD_DESCRICAO, :NEW_FRD_DTATUALIZACA' +
        'O, :NEW_FRD_DTCADASTRO, '
      '  :NEW_FRD_HRATUALIZACAO, :NEW_FRD_HRCADASTRO, :NEW_FRD_USUARIO)'
      
        'RETURNING FRD_DATA, FRD_DESCRICAO, FRD_DTATUALIZACAO, FRD_DTCADA' +
        'STRO, FRD_HRATUALIZACAO, FRD_HRCADASTRO, FRD_USUARIO')
    ModifySQL.Strings = (
      'UPDATE FERIADOS'
      
        'SET FRD_DATA = :NEW_FRD_DATA, FRD_DESCRICAO = :NEW_FRD_DESCRICAO' +
        ', '
      
        '  FRD_DTATUALIZACAO = :NEW_FRD_DTATUALIZACAO, FRD_DTCADASTRO = :' +
        'NEW_FRD_DTCADASTRO, '
      
        '  FRD_HRATUALIZACAO = :NEW_FRD_HRATUALIZACAO, FRD_HRCADASTRO = :' +
        'NEW_FRD_HRCADASTRO, '
      '  FRD_USUARIO = :NEW_FRD_USUARIO'
      'WHERE FRD_DATA = :OLD_FRD_DATA'
      
        'RETURNING FRD_DATA, FRD_DESCRICAO, FRD_DTATUALIZACAO, FRD_DTCADA' +
        'STRO, FRD_HRATUALIZACAO, FRD_HRCADASTRO, FRD_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM FERIADOS'
      'WHERE FRD_DATA = :OLD_FRD_DATA')
    FetchRowSQL.Strings = (
      
        'SELECT FRD_DATA, FRD_DESCRICAO, FRD_DTATUALIZACAO, FRD_DTCADASTR' +
        'O, '
      '  FRD_HRATUALIZACAO, FRD_HRCADASTRO, FRD_USUARIO'
      'FROM FERIADOS'
      'WHERE FRD_DATA = :OLD_FRD_DATA')
    Left = 160
    Top = 208
  end
  object TBFeriados: TFDQuery
    BeforeInsert = TBFeriadosBeforeInsert
    AfterInsert = TBFeriadosAfterInsert
    BeforeEdit = TBFeriadosBeforeEdit
    BeforePost = TBFeriadosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRFeriados
    UpdateObject = UPFeriados
    SQL.Strings = (
      'select'
      'FRD_DATA,'
      'FRD_DESCRICAO,'
      'FRD_DTATUALIZACAO,'
      'FRD_DTCADASTRO,'
      'FRD_HRATUALIZACAO,'
      'FRD_HRCADASTRO,'
      'FRD_USUARIO'
      'from FERIADOS'
      'where FRD_DATA=:codigo'
      '')
    Left = 160
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftDate
        ParamType = ptInput
      end>
    object TBFeriadosFRD_DATA: TDateField
      FieldName = 'FRD_DATA'
      Origin = 'FRD_DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object TBFeriadosFRD_DESCRICAO: TStringField
      FieldName = 'FRD_DESCRICAO'
      Origin = 'FRD_DESCRICAO'
      Size = 50
    end
    object TBFeriadosFRD_DTATUALIZACAO: TDateField
      FieldName = 'FRD_DTATUALIZACAO'
      Origin = 'FRD_DTATUALIZACAO'
    end
    object TBFeriadosFRD_DTCADASTRO: TDateField
      FieldName = 'FRD_DTCADASTRO'
      Origin = 'FRD_DTCADASTRO'
    end
    object TBFeriadosFRD_HRATUALIZACAO: TTimeField
      FieldName = 'FRD_HRATUALIZACAO'
      Origin = 'FRD_HRATUALIZACAO'
    end
    object TBFeriadosFRD_HRCADASTRO: TTimeField
      FieldName = 'FRD_HRCADASTRO'
      Origin = 'FRD_HRCADASTRO'
    end
    object TBFeriadosFRD_USUARIO: TStringField
      FieldName = 'FRD_USUARIO'
      Origin = 'FRD_USUARIO'
    end
  end
  object TRForms: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 240
  end
  object UPForms: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FORMS'
      '(FMS_CODIGO, FMS_FORM, FMS_HEIGHT, FMS_LEFT, '
      '  FMS_TOP, FMS_USUARIO, FMS_WIDTH)'
      
        'VALUES (gen_id(GEN_FORMS,1), :NEW_FMS_FORM, :NEW_FMS_HEIGHT, :NE' +
        'W_FMS_LEFT, '
      '  :NEW_FMS_TOP, :NEW_FMS_USUARIO, :NEW_FMS_WIDTH)'
      
        'RETURNING FMS_CODIGO, FMS_FORM, FMS_HEIGHT, FMS_LEFT, FMS_TOP, F' +
        'MS_USUARIO, FMS_WIDTH')
    ModifySQL.Strings = (
      'UPDATE FORMS'
      
        'SET FMS_CODIGO = :NEW_FMS_CODIGO, FMS_FORM = :NEW_FMS_FORM, FMS_' +
        'HEIGHT = :NEW_FMS_HEIGHT, '
      
        '  FMS_LEFT = :NEW_FMS_LEFT, FMS_TOP = :NEW_FMS_TOP, FMS_USUARIO ' +
        '= :NEW_FMS_USUARIO, '
      '  FMS_WIDTH = :NEW_FMS_WIDTH'
      'WHERE FMS_CODIGO = :OLD_FMS_CODIGO'
      
        'RETURNING FMS_CODIGO, FMS_FORM, FMS_HEIGHT, FMS_LEFT, FMS_TOP, F' +
        'MS_USUARIO, FMS_WIDTH')
    DeleteSQL.Strings = (
      'DELETE FROM FORMS'
      'WHERE FMS_CODIGO = :OLD_FMS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FMS_CODIGO, FMS_FORM, FMS_HEIGHT, FMS_LEFT, FMS_TOP, FMS_' +
        'USUARIO, '
      '  FMS_WIDTH'
      'FROM FORMS'
      'WHERE FMS_CODIGO = :OLD_FMS_CODIGO')
    Left = 224
    Top = 208
  end
  object TBForms: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRForms
    UpdateObject = UPForms
    SQL.Strings = (
      'select'
      'FMS_CODIGO,'
      'FMS_FORM,'
      'FMS_HEIGHT,'
      'FMS_LEFT,'
      'FMS_TOP,'
      'FMS_USUARIO,'
      'FMS_WIDTH'
      'from FORMS')
    Left = 224
    Top = 176
    object TBFormsFMS_CODIGO: TIntegerField
      FieldName = 'FMS_CODIGO'
      Origin = 'FMS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBFormsFMS_FORM: TStringField
      FieldName = 'FMS_FORM'
      Origin = 'FMS_FORM'
      Size = 80
    end
    object TBFormsFMS_HEIGHT: TIntegerField
      FieldName = 'FMS_HEIGHT'
      Origin = 'FMS_HEIGHT'
    end
    object TBFormsFMS_LEFT: TIntegerField
      FieldName = 'FMS_LEFT'
      Origin = 'FMS_LEFT'
    end
    object TBFormsFMS_TOP: TIntegerField
      FieldName = 'FMS_TOP'
      Origin = 'FMS_TOP'
    end
    object TBFormsFMS_USUARIO: TIntegerField
      FieldName = 'FMS_USUARIO'
      Origin = 'FMS_USUARIO'
      Required = True
    end
    object TBFormsFMS_WIDTH: TIntegerField
      FieldName = 'FMS_WIDTH'
      Origin = 'FMS_WIDTH'
    end
  end
  object TRForos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 256
    Top = 240
  end
  object UPForos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FOROS'
      '(FRS_BAIRRO, FRS_CEP, FRS_CIDADE, FRS_CIDADECODIGO, '
      '  FRS_CODIGO, FRS_COMPLEMENTO, FRS_DTATUALIZACAO, '
      '  FRS_DTCADASTRO, FRS_ENDERECO, FRS_ESTADO, '
      '  FRS_ESTADOCODIGO, FRS_HRATUALIZACAO, FRS_HRCADASTRO, '
      '  FRS_NOME, FRS_NUMERO, FRS_SIGLA, FRS_USUARIO)'
      
        'VALUES (:NEW_FRS_BAIRRO, :NEW_FRS_CEP, :NEW_FRS_CIDADE, :NEW_FRS' +
        '_CIDADECODIGO, '
      
        '  gen_id(GEN_FOROS,1), :NEW_FRS_COMPLEMENTO, :NEW_FRS_DTATUALIZA' +
        'CAO, '
      '  :NEW_FRS_DTCADASTRO, :NEW_FRS_ENDERECO, :NEW_FRS_ESTADO, '
      
        '  :NEW_FRS_ESTADOCODIGO, :NEW_FRS_HRATUALIZACAO, :NEW_FRS_HRCADA' +
        'STRO, '
      
        '  :NEW_FRS_NOME, :NEW_FRS_NUMERO, :NEW_FRS_SIGLA, :NEW_FRS_USUAR' +
        'IO)'
      
        'RETURNING FRS_BAIRRO, FRS_CEP, FRS_CIDADE, FRS_CIDADECODIGO, FRS' +
        '_CODIGO, FRS_COMPLEMENTO, FRS_DTATUALIZACAO, FRS_DTCADASTRO, FRS' +
        '_ENDERECO, FRS_ESTADO, FRS_ESTADOCODIGO, FRS_HRATUALIZACAO, FRS_' +
        'HRCADASTRO, FRS_NOME, FRS_NUMERO, FRS_SIGLA, FRS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE FOROS'
      
        'SET FRS_BAIRRO = :NEW_FRS_BAIRRO, FRS_CEP = :NEW_FRS_CEP, FRS_CI' +
        'DADE = :NEW_FRS_CIDADE, '
      
        '  FRS_CIDADECODIGO = :NEW_FRS_CIDADECODIGO, FRS_CODIGO = :NEW_FR' +
        'S_CODIGO, '
      
        '  FRS_COMPLEMENTO = :NEW_FRS_COMPLEMENTO, FRS_DTATUALIZACAO = :N' +
        'EW_FRS_DTATUALIZACAO, '
      
        '  FRS_DTCADASTRO = :NEW_FRS_DTCADASTRO, FRS_ENDERECO = :NEW_FRS_' +
        'ENDERECO, '
      
        '  FRS_ESTADO = :NEW_FRS_ESTADO, FRS_ESTADOCODIGO = :NEW_FRS_ESTA' +
        'DOCODIGO, '
      
        '  FRS_HRATUALIZACAO = :NEW_FRS_HRATUALIZACAO, FRS_HRCADASTRO = :' +
        'NEW_FRS_HRCADASTRO, '
      '  FRS_NOME = :NEW_FRS_NOME, FRS_NUMERO = :NEW_FRS_NUMERO, '
      '  FRS_SIGLA = :NEW_FRS_SIGLA, FRS_USUARIO = :NEW_FRS_USUARIO'
      'WHERE FRS_CODIGO = :OLD_FRS_CODIGO'
      
        'RETURNING FRS_BAIRRO, FRS_CEP, FRS_CIDADE, FRS_CIDADECODIGO, FRS' +
        '_CODIGO, FRS_COMPLEMENTO, FRS_DTATUALIZACAO, FRS_DTCADASTRO, FRS' +
        '_ENDERECO, FRS_ESTADO, FRS_ESTADOCODIGO, FRS_HRATUALIZACAO, FRS_' +
        'HRCADASTRO, FRS_NOME, FRS_NUMERO, FRS_SIGLA, FRS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM FOROS'
      'WHERE FRS_CODIGO = :OLD_FRS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FRS_BAIRRO, FRS_CEP, FRS_CIDADE, FRS_CIDADECODIGO, FRS_CO' +
        'DIGO, '
      
        '  FRS_COMPLEMENTO, FRS_DTATUALIZACAO, FRS_DTCADASTRO, FRS_ENDERE' +
        'CO, '
      
        '  FRS_ESTADO, FRS_ESTADOCODIGO, FRS_HRATUALIZACAO, FRS_HRCADASTR' +
        'O, '
      '  FRS_NOME, FRS_NUMERO, FRS_SIGLA, FRS_USUARIO'
      'FROM FOROS'
      'WHERE FRS_CODIGO = :OLD_FRS_CODIGO')
    Left = 256
    Top = 208
  end
  object TBForos: TFDQuery
    BeforeInsert = TBForosBeforeInsert
    AfterInsert = TBForosAfterInsert
    BeforeEdit = TBForosBeforeEdit
    BeforePost = TBForosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRForos
    UpdateObject = UPForos
    SQL.Strings = (
      'select'
      'FRS_BAIRRO,'
      'FRS_CEP,'
      'FRS_CIDADE,'
      'FRS_CIDADECODIGO,'
      'FRS_CODIGO,'
      'FRS_COMPLEMENTO,'
      'FRS_DTATUALIZACAO,'
      'FRS_DTCADASTRO,'
      'FRS_ENDERECO,'
      'FRS_ESTADO,'
      'FRS_ESTADOCODIGO,'
      'FRS_HRATUALIZACAO,'
      'FRS_HRCADASTRO,'
      'FRS_NOME,'
      'FRS_NUMERO,'
      'FRS_SIGLA,'
      'FRS_USUARIO'
      'from FOROS'
      'where FRS_CODIGO=:codigo')
    Left = 256
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBForosFRS_BAIRRO: TStringField
      FieldName = 'FRS_BAIRRO'
      Origin = 'FRS_BAIRRO'
      Size = 50
    end
    object TBForosFRS_CEP: TStringField
      FieldName = 'FRS_CEP'
      Origin = 'FRS_CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBForosFRS_CIDADE: TStringField
      FieldName = 'FRS_CIDADE'
      Origin = 'FRS_CIDADE'
      Size = 50
    end
    object TBForosFRS_CIDADECODIGO: TIntegerField
      FieldName = 'FRS_CIDADECODIGO'
      Origin = 'FRS_CIDADECODIGO'
    end
    object TBForosFRS_CODIGO: TIntegerField
      FieldName = 'FRS_CODIGO'
      Origin = 'FRS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBForosFRS_COMPLEMENTO: TStringField
      FieldName = 'FRS_COMPLEMENTO'
      Origin = 'FRS_COMPLEMENTO'
      Size = 80
    end
    object TBForosFRS_DTATUALIZACAO: TDateField
      FieldName = 'FRS_DTATUALIZACAO'
      Origin = 'FRS_DTATUALIZACAO'
    end
    object TBForosFRS_DTCADASTRO: TDateField
      FieldName = 'FRS_DTCADASTRO'
      Origin = 'FRS_DTCADASTRO'
    end
    object TBForosFRS_ENDERECO: TStringField
      FieldName = 'FRS_ENDERECO'
      Origin = 'FRS_ENDERECO'
      Size = 100
    end
    object TBForosFRS_ESTADO: TStringField
      FieldName = 'FRS_ESTADO'
      Origin = 'FRS_ESTADO'
      Size = 2
    end
    object TBForosFRS_ESTADOCODIGO: TIntegerField
      FieldName = 'FRS_ESTADOCODIGO'
      Origin = 'FRS_ESTADOCODIGO'
    end
    object TBForosFRS_HRATUALIZACAO: TTimeField
      FieldName = 'FRS_HRATUALIZACAO'
      Origin = 'FRS_HRATUALIZACAO'
    end
    object TBForosFRS_HRCADASTRO: TTimeField
      FieldName = 'FRS_HRCADASTRO'
      Origin = 'FRS_HRCADASTRO'
    end
    object TBForosFRS_NOME: TStringField
      FieldName = 'FRS_NOME'
      Origin = 'FRS_NOME'
      Size = 80
    end
    object TBForosFRS_NUMERO: TStringField
      FieldName = 'FRS_NUMERO'
      Origin = 'FRS_NUMERO'
      Size = 15
    end
    object TBForosFRS_SIGLA: TStringField
      FieldName = 'FRS_SIGLA'
      Origin = 'FRS_SIGLA'
      Size = 10
    end
    object TBForosFRS_USUARIO: TStringField
      FieldName = 'FRS_USUARIO'
      Origin = 'FRS_USUARIO'
    end
  end
  object TRFrotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 288
    Top = 240
  end
  object UPFrotas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FROTAS'
      '(FRO_ANOFAB, FRO_ANOMOD, FRO_CAPACIDADEKG, FRO_CAPACIDADEM3, '
      '  FRO_CIDADE, FRO_CNPJ, FRO_CODIGO, FRO_CPF, '
      '  FRO_DESCRICAO, FRO_DTATUALIZACAO, FRO_DTCADASTRO, '
      '  FRO_ESTADO, FRO_ESTADOPROPRIETARIO, FRO_HRATUALIZACAO, '
      '  FRO_HRCADASTRO, FRO_IE, FRO_MARCA, FRO_MODELO, '
      '  FRO_NOME, FRO_PLACA, FRO_RENAVAM, FRO_RNTRC, '
      '  FRO_STATUS, FRO_TARA, FRO_TIPOCARROCERIA, '
      '  FRO_TIPOPROPRIEDADE, FRO_TIPOPROPRIETARIO, FRO_TIPORODADO, '
      '  FRO_TIPOVEICULO, FRO_USUARIO)'
      
        'VALUES (:NEW_FRO_ANOFAB, :NEW_FRO_ANOMOD, :NEW_FRO_CAPACIDADEKG,' +
        ' :NEW_FRO_CAPACIDADEM3, '
      
        '  :NEW_FRO_CIDADE, :NEW_FRO_CNPJ, gen_id(GEN_FROTAS,1), :NEW_FRO' +
        '_CPF, '
      
        '  :NEW_FRO_DESCRICAO, :NEW_FRO_DTATUALIZACAO, :NEW_FRO_DTCADASTR' +
        'O, '
      
        '  :NEW_FRO_ESTADO, :NEW_FRO_ESTADOPROPRIETARIO, :NEW_FRO_HRATUAL' +
        'IZACAO, '
      
        '  :NEW_FRO_HRCADASTRO, :NEW_FRO_IE, :NEW_FRO_MARCA, :NEW_FRO_MOD' +
        'ELO, '
      
        '  :NEW_FRO_NOME, :NEW_FRO_PLACA, :NEW_FRO_RENAVAM, :NEW_FRO_RNTR' +
        'C, '
      '  :NEW_FRO_STATUS, :NEW_FRO_TARA, :NEW_FRO_TIPOCARROCERIA, '
      
        '  :NEW_FRO_TIPOPROPRIEDADE, :NEW_FRO_TIPOPROPRIETARIO, :NEW_FRO_' +
        'TIPORODADO, '
      '  :NEW_FRO_TIPOVEICULO, :NEW_FRO_USUARIO)'
      
        'RETURNING FRO_ANOFAB, FRO_ANOMOD, FRO_CAPACIDADEKG, FRO_CAPACIDA' +
        'DEM3, FRO_CIDADE, FRO_CNPJ, FRO_CODIGO, FRO_CPF, FRO_DESCRICAO, ' +
        'FRO_DTATUALIZACAO, FRO_DTCADASTRO, FRO_ESTADO, FRO_ESTADOPROPRIE' +
        'TARIO, FRO_HRATUALIZACAO, FRO_HRCADASTRO, FRO_IE, FRO_MARCA, FRO' +
        '_MODELO, FRO_NOME, FRO_PLACA, FRO_RENAVAM, FRO_RNTRC, FRO_STATUS' +
        ', FRO_TARA, FRO_TIPOCARROCERIA, FRO_TIPOPROPRIEDADE, FRO_TIPOPRO' +
        'PRIETARIO, FRO_TIPORODADO, FRO_TIPOVEICULO, FRO_USUARIO')
    ModifySQL.Strings = (
      'UPDATE FROTAS'
      'SET FRO_ANOFAB = :NEW_FRO_ANOFAB, FRO_ANOMOD = :NEW_FRO_ANOMOD, '
      
        '  FRO_CAPACIDADEKG = :NEW_FRO_CAPACIDADEKG, FRO_CAPACIDADEM3 = :' +
        'NEW_FRO_CAPACIDADEM3, '
      '  FRO_CIDADE = :NEW_FRO_CIDADE, FRO_CNPJ = :NEW_FRO_CNPJ, '
      
        '  FRO_CODIGO = :NEW_FRO_CODIGO, FRO_CPF = :NEW_FRO_CPF, FRO_DESC' +
        'RICAO = :NEW_FRO_DESCRICAO, '
      
        '  FRO_DTATUALIZACAO = :NEW_FRO_DTATUALIZACAO, FRO_DTCADASTRO = :' +
        'NEW_FRO_DTCADASTRO, '
      
        '  FRO_ESTADO = :NEW_FRO_ESTADO, FRO_ESTADOPROPRIETARIO = :NEW_FR' +
        'O_ESTADOPROPRIETARIO, '
      
        '  FRO_HRATUALIZACAO = :NEW_FRO_HRATUALIZACAO, FRO_HRCADASTRO = :' +
        'NEW_FRO_HRCADASTRO, '
      
        '  FRO_IE = :NEW_FRO_IE, FRO_MARCA = :NEW_FRO_MARCA, FRO_MODELO =' +
        ' :NEW_FRO_MODELO, '
      
        '  FRO_NOME = :NEW_FRO_NOME, FRO_PLACA = :NEW_FRO_PLACA, FRO_RENA' +
        'VAM = :NEW_FRO_RENAVAM, '
      '  FRO_RNTRC = :NEW_FRO_RNTRC, FRO_STATUS = :NEW_FRO_STATUS, '
      
        '  FRO_TARA = :NEW_FRO_TARA, FRO_TIPOCARROCERIA = :NEW_FRO_TIPOCA' +
        'RROCERIA, '
      
        '  FRO_TIPOPROPRIEDADE = :NEW_FRO_TIPOPROPRIEDADE, FRO_TIPOPROPRI' +
        'ETARIO = :NEW_FRO_TIPOPROPRIETARIO, '
      
        '  FRO_TIPORODADO = :NEW_FRO_TIPORODADO, FRO_TIPOVEICULO = :NEW_F' +
        'RO_TIPOVEICULO, '
      '  FRO_USUARIO = :NEW_FRO_USUARIO'
      'WHERE FRO_CODIGO = :OLD_FRO_CODIGO'
      
        'RETURNING FRO_ANOFAB, FRO_ANOMOD, FRO_CAPACIDADEKG, FRO_CAPACIDA' +
        'DEM3, FRO_CIDADE, FRO_CNPJ, FRO_CODIGO, FRO_CPF, FRO_DESCRICAO, ' +
        'FRO_DTATUALIZACAO, FRO_DTCADASTRO, FRO_ESTADO, FRO_ESTADOPROPRIE' +
        'TARIO, FRO_HRATUALIZACAO, FRO_HRCADASTRO, FRO_IE, FRO_MARCA, FRO' +
        '_MODELO, FRO_NOME, FRO_PLACA, FRO_RENAVAM, FRO_RNTRC, FRO_STATUS' +
        ', FRO_TARA, FRO_TIPOCARROCERIA, FRO_TIPOPROPRIEDADE, FRO_TIPOPRO' +
        'PRIETARIO, FRO_TIPORODADO, FRO_TIPOVEICULO, FRO_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM FROTAS'
      'WHERE FRO_CODIGO = :OLD_FRO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FRO_ANOFAB, FRO_ANOMOD, FRO_CAPACIDADEKG, FRO_CAPACIDADEM' +
        '3, '
      '  FRO_CIDADE, FRO_CNPJ, FRO_CODIGO, FRO_CPF, FRO_DESCRICAO, '
      
        '  FRO_DTATUALIZACAO, FRO_DTCADASTRO, FRO_ESTADO, FRO_ESTADOPROPR' +
        'IETARIO, '
      
        '  FRO_HRATUALIZACAO, FRO_HRCADASTRO, FRO_IE, FRO_MARCA, FRO_MODE' +
        'LO, '
      '  FRO_NOME, FRO_PLACA, FRO_RENAVAM, FRO_RNTRC, FRO_STATUS, '
      
        '  FRO_TARA, FRO_TIPOCARROCERIA, FRO_TIPOPROPRIEDADE, FRO_TIPOPRO' +
        'PRIETARIO, '
      '  FRO_TIPORODADO, FRO_TIPOVEICULO, FRO_USUARIO'
      'FROM FROTAS'
      'WHERE FRO_CODIGO = :OLD_FRO_CODIGO')
    Left = 288
    Top = 208
  end
  object TBFrotas: TFDQuery
    BeforeInsert = TBFrotasBeforeInsert
    AfterInsert = TBFrotasAfterInsert
    BeforeEdit = TBFrotasBeforeEdit
    BeforePost = TBFrotasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRFrotas
    UpdateObject = UPFrotas
    SQL.Strings = (
      'select'
      'FRO_ANOFAB,'
      'FRO_ANOMOD,'
      'FRO_CAPACIDADEKG,'
      'FRO_CAPACIDADEM3,'
      'FRO_CIDADE,'
      'FRO_CNPJ,'
      'FRO_CODIGO,'
      'FRO_CPF,'
      'FRO_DESCRICAO,'
      'FRO_DTATUALIZACAO,'
      'FRO_DTCADASTRO,'
      'FRO_ESTADO,'
      'FRO_ESTADOPROPRIETARIO,'
      'FRO_HRATUALIZACAO,'
      'FRO_HRCADASTRO,'
      'FRO_IE,'
      'FRO_MARCA,'
      'FRO_MODELO,'
      'FRO_NOME,'
      'FRO_PLACA,'
      'FRO_RENAVAM,'
      'FRO_RNTRC,'
      'FRO_STATUS,'
      'FRO_TARA,'
      'FRO_TIPOCARROCERIA,'
      'FRO_TIPOPROPRIEDADE,'
      'FRO_TIPOPROPRIETARIO,'
      'FRO_TIPORODADO,'
      'FRO_TIPOVEICULO,'
      'FRO_USUARIO'
      'from FROTAS'
      'where FRO_CODIGO=:codigo'
      '')
    Left = 288
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBFrotasFRO_ANOFAB: TStringField
      FieldName = 'FRO_ANOFAB'
      Origin = 'FRO_ANOFAB'
      Size = 4
    end
    object TBFrotasFRO_ANOMOD: TStringField
      FieldName = 'FRO_ANOMOD'
      Origin = 'FRO_ANOMOD'
      Size = 4
    end
    object TBFrotasFRO_CAPACIDADEKG: TFMTBCDField
      FieldName = 'FRO_CAPACIDADEKG'
      Origin = 'FRO_CAPACIDADEKG'
      Precision = 18
      Size = 3
    end
    object TBFrotasFRO_CAPACIDADEM3: TFMTBCDField
      FieldName = 'FRO_CAPACIDADEM3'
      Origin = 'FRO_CAPACIDADEM3'
      Precision = 18
    end
    object TBFrotasFRO_CIDADE: TStringField
      FieldName = 'FRO_CIDADE'
      Origin = 'FRO_CIDADE'
      Size = 50
    end
    object TBFrotasFRO_CNPJ: TStringField
      FieldName = 'FRO_CNPJ'
      Origin = 'FRO_CNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBFrotasFRO_CODIGO: TIntegerField
      FieldName = 'FRO_CODIGO'
      Origin = 'FRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBFrotasFRO_CPF: TStringField
      FieldName = 'FRO_CPF'
      Origin = 'FRO_CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBFrotasFRO_DESCRICAO: TStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = 'FRO_DESCRICAO'
      Size = 50
    end
    object TBFrotasFRO_DTATUALIZACAO: TDateField
      FieldName = 'FRO_DTATUALIZACAO'
      Origin = 'FRO_DTATUALIZACAO'
    end
    object TBFrotasFRO_DTCADASTRO: TDateField
      FieldName = 'FRO_DTCADASTRO'
      Origin = 'FRO_DTCADASTRO'
    end
    object TBFrotasFRO_ESTADO: TStringField
      FieldName = 'FRO_ESTADO'
      Origin = 'FRO_ESTADO'
      Size = 2
    end
    object TBFrotasFRO_ESTADOPROPRIETARIO: TStringField
      FieldName = 'FRO_ESTADOPROPRIETARIO'
      Origin = 'FRO_ESTADOPROPRIETARIO'
      Size = 2
    end
    object TBFrotasFRO_HRATUALIZACAO: TTimeField
      FieldName = 'FRO_HRATUALIZACAO'
      Origin = 'FRO_HRATUALIZACAO'
    end
    object TBFrotasFRO_HRCADASTRO: TTimeField
      FieldName = 'FRO_HRCADASTRO'
      Origin = 'FRO_HRCADASTRO'
    end
    object TBFrotasFRO_IE: TStringField
      FieldName = 'FRO_IE'
      Origin = 'FRO_IE'
    end
    object TBFrotasFRO_MARCA: TStringField
      FieldName = 'FRO_MARCA'
      Origin = 'FRO_MARCA'
      Size = 40
    end
    object TBFrotasFRO_MODELO: TStringField
      FieldName = 'FRO_MODELO'
      Origin = 'FRO_MODELO'
      Size = 40
    end
    object TBFrotasFRO_NOME: TStringField
      FieldName = 'FRO_NOME'
      Origin = 'FRO_NOME'
      Size = 80
    end
    object TBFrotasFRO_PLACA: TStringField
      FieldName = 'FRO_PLACA'
      Origin = 'FRO_PLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBFrotasFRO_RENAVAM: TStringField
      FieldName = 'FRO_RENAVAM'
      Origin = 'FRO_RENAVAM'
    end
    object TBFrotasFRO_RNTRC: TStringField
      FieldName = 'FRO_RNTRC'
      Origin = 'FRO_RNTRC'
    end
    object TBFrotasFRO_STATUS: TStringField
      FieldName = 'FRO_STATUS'
      Origin = 'FRO_STATUS'
      Size = 1
    end
    object TBFrotasFRO_TARA: TFMTBCDField
      FieldName = 'FRO_TARA'
      Origin = 'FRO_TARA'
      Precision = 18
      Size = 3
    end
    object TBFrotasFRO_TIPOCARROCERIA: TStringField
      FieldName = 'FRO_TIPOCARROCERIA'
      Origin = 'FRO_TIPOCARROCERIA'
    end
    object TBFrotasFRO_TIPOPROPRIEDADE: TStringField
      FieldName = 'FRO_TIPOPROPRIEDADE'
      Origin = 'FRO_TIPOPROPRIEDADE'
      Size = 25
    end
    object TBFrotasFRO_TIPOPROPRIETARIO: TStringField
      FieldName = 'FRO_TIPOPROPRIETARIO'
      Origin = 'FRO_TIPOPROPRIETARIO'
      Size = 25
    end
    object TBFrotasFRO_TIPORODADO: TStringField
      FieldName = 'FRO_TIPORODADO'
      Origin = 'FRO_TIPORODADO'
    end
    object TBFrotasFRO_TIPOVEICULO: TStringField
      FieldName = 'FRO_TIPOVEICULO'
      Origin = 'FRO_TIPOVEICULO'
    end
    object TBFrotasFRO_USUARIO: TStringField
      FieldName = 'FRO_USUARIO'
      Origin = 'FRO_USUARIO'
    end
  end
  object TRGnre: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 320
    Top = 240
  end
  object UPGnre: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO GNRE'
      '(GNR_CHAVEACESSO, GNR_CODIGO, GNR_CODIGOBARRAS, '
      '  GNR_CONTROLE, GNR_CONVENIO, GNR_DESTCIDADE, '
      
        '  GNR_DESTCIDADECODIGO, GNR_DESTDOCUMENTO, GNR_DESTDOCUMENTOTIPO' +
        ', '
      '  GNR_DESTNOME, GNR_DTATUALIZACAO, GNR_DTCADASTRO, '
      '  GNR_DTLIMITE, GNR_DTPAGAMENTO, GNR_DTVENCIMENTO, '
      '  GNR_EMITCEP, GNR_EMITCIDADECODIGO, GNR_EMITDOCUMENTO, '
      '  GNR_EMITDOCUMENTOTIPO, GNR_EMITENDERECO, GNR_EMITESTADO, '
      '  GNR_EMITFONE, GNR_EMITIENAUFFAVORECIDA, GNR_EMITRAZAO, '
      '  GNR_ESTADOFAVORECIDO, GNR_HRATUALIZACAO, GNR_HRCADASTRO, '
      '  GNR_INFOCOMPLEMENTAR, GNR_MESANOREFERENCIA, GNR_NUMDOCTO, '
      '  GNR_PARCELA, GNR_PERIODOREFERENCIA, GNR_PRODUTO, '
      '  GNR_PROTOCOLO, GNR_RECEITA, GNR_RECIBO, GNR_REPNUMERICA, '
      '  GNR_STATUS, GNR_TIPODOCTOORIGEM, GNR_USUARIO, '
      '  GNR_VALORATUALIZACAO, GNR_VALORJUROS, GNR_VALORMULTA, '
      '  GNR_VALORPRINCIPAL, GNR_VALORTOTAL)'
      
        'VALUES (:NEW_GNR_CHAVEACESSO, gen_id(GEN_GNRE,1), :NEW_GNR_CODIG' +
        'OBARRAS, '
      '  :NEW_GNR_CONTROLE, :NEW_GNR_CONVENIO, :NEW_GNR_DESTCIDADE, '
      
        '  :NEW_GNR_DESTCIDADECODIGO, :NEW_GNR_DESTDOCUMENTO, :NEW_GNR_DE' +
        'STDOCUMENTOTIPO, '
      
        '  :NEW_GNR_DESTNOME, :NEW_GNR_DTATUALIZACAO, :NEW_GNR_DTCADASTRO' +
        ', '
      
        '  :NEW_GNR_DTLIMITE, :NEW_GNR_DTPAGAMENTO, :NEW_GNR_DTVENCIMENTO' +
        ', '
      
        '  :NEW_GNR_EMITCEP, :NEW_GNR_EMITCIDADECODIGO, :NEW_GNR_EMITDOCU' +
        'MENTO, '
      
        '  :NEW_GNR_EMITDOCUMENTOTIPO, :NEW_GNR_EMITENDERECO, :NEW_GNR_EM' +
        'ITESTADO, '
      
        '  :NEW_GNR_EMITFONE, :NEW_GNR_EMITIENAUFFAVORECIDA, :NEW_GNR_EMI' +
        'TRAZAO, '
      
        '  :NEW_GNR_ESTADOFAVORECIDO, :NEW_GNR_HRATUALIZACAO, :NEW_GNR_HR' +
        'CADASTRO, '
      
        '  :NEW_GNR_INFOCOMPLEMENTAR, :NEW_GNR_MESANOREFERENCIA, :NEW_GNR' +
        '_NUMDOCTO, '
      
        '  :NEW_GNR_PARCELA, :NEW_GNR_PERIODOREFERENCIA, :NEW_GNR_PRODUTO' +
        ', '
      
        '  :NEW_GNR_PROTOCOLO, :NEW_GNR_RECEITA, :NEW_GNR_RECIBO, :NEW_GN' +
        'R_REPNUMERICA, '
      '  :NEW_GNR_STATUS, :NEW_GNR_TIPODOCTOORIGEM, :NEW_GNR_USUARIO, '
      
        '  :NEW_GNR_VALORATUALIZACAO, :NEW_GNR_VALORJUROS, :NEW_GNR_VALOR' +
        'MULTA, '
      '  :NEW_GNR_VALORPRINCIPAL, :NEW_GNR_VALORTOTAL)'
      
        'RETURNING GNR_CHAVEACESSO, GNR_CODIGO, GNR_CODIGOBARRAS, GNR_CON' +
        'TROLE, GNR_CONVENIO, GNR_DESTCIDADE, GNR_DESTCIDADECODIGO, GNR_D' +
        'ESTDOCUMENTO, GNR_DESTDOCUMENTOTIPO, GNR_DESTNOME, GNR_DTATUALIZ' +
        'ACAO, GNR_DTCADASTRO, GNR_DTLIMITE, GNR_DTPAGAMENTO, GNR_DTVENCI' +
        'MENTO, GNR_EMITCEP, GNR_EMITCIDADECODIGO, GNR_EMITDOCUMENTO, GNR' +
        '_EMITDOCUMENTOTIPO, GNR_EMITENDERECO, GNR_EMITESTADO, GNR_EMITFO' +
        'NE, GNR_EMITIENAUFFAVORECIDA, GNR_EMITRAZAO, GNR_ESTADOFAVORECID' +
        'O, GNR_HRATUALIZACAO, GNR_HRCADASTRO, GNR_INFOCOMPLEMENTAR, GNR_' +
        'MESANOREFERENCIA, GNR_NUMDOCTO, GNR_PARCELA, GNR_PERIODOREFERENC' +
        'IA, GNR_PRODUTO, GNR_PROTOCOLO, GNR_RECEITA, GNR_RECIBO, GNR_REP' +
        'NUMERICA, GNR_STATUS, GNR_TIPODOCTOORIGEM, GNR_USUARIO, GNR_VALO' +
        'RATUALIZACAO, GNR_VALORJUROS, GNR_VALORMULTA, GNR_VALORPRINCIPAL' +
        ', GNR_VALORTOTAL')
    ModifySQL.Strings = (
      'UPDATE GNRE'
      
        'SET GNR_CHAVEACESSO = :NEW_GNR_CHAVEACESSO, GNR_CODIGO = :NEW_GN' +
        'R_CODIGO, '
      
        '  GNR_CODIGOBARRAS = :NEW_GNR_CODIGOBARRAS, GNR_CONTROLE = :NEW_' +
        'GNR_CONTROLE, '
      
        '  GNR_CONVENIO = :NEW_GNR_CONVENIO, GNR_DESTCIDADE = :NEW_GNR_DE' +
        'STCIDADE, '
      
        '  GNR_DESTCIDADECODIGO = :NEW_GNR_DESTCIDADECODIGO, GNR_DESTDOCU' +
        'MENTO = :NEW_GNR_DESTDOCUMENTO, '
      
        '  GNR_DESTDOCUMENTOTIPO = :NEW_GNR_DESTDOCUMENTOTIPO, GNR_DESTNO' +
        'ME = :NEW_GNR_DESTNOME, '
      
        '  GNR_DTATUALIZACAO = :NEW_GNR_DTATUALIZACAO, GNR_DTCADASTRO = :' +
        'NEW_GNR_DTCADASTRO, '
      
        '  GNR_DTLIMITE = :NEW_GNR_DTLIMITE, GNR_DTPAGAMENTO = :NEW_GNR_D' +
        'TPAGAMENTO, '
      
        '  GNR_DTVENCIMENTO = :NEW_GNR_DTVENCIMENTO, GNR_EMITCEP = :NEW_G' +
        'NR_EMITCEP, '
      
        '  GNR_EMITCIDADECODIGO = :NEW_GNR_EMITCIDADECODIGO, GNR_EMITDOCU' +
        'MENTO = :NEW_GNR_EMITDOCUMENTO, '
      
        '  GNR_EMITDOCUMENTOTIPO = :NEW_GNR_EMITDOCUMENTOTIPO, GNR_EMITEN' +
        'DERECO = :NEW_GNR_EMITENDERECO, '
      
        '  GNR_EMITESTADO = :NEW_GNR_EMITESTADO, GNR_EMITFONE = :NEW_GNR_' +
        'EMITFONE, '
      '  GNR_EMITIENAUFFAVORECIDA = :NEW_GNR_EMITIENAUFFAVORECIDA, '
      
        '  GNR_EMITRAZAO = :NEW_GNR_EMITRAZAO, GNR_ESTADOFAVORECIDO = :NE' +
        'W_GNR_ESTADOFAVORECIDO, '
      
        '  GNR_HRATUALIZACAO = :NEW_GNR_HRATUALIZACAO, GNR_HRCADASTRO = :' +
        'NEW_GNR_HRCADASTRO, '
      
        '  GNR_INFOCOMPLEMENTAR = :NEW_GNR_INFOCOMPLEMENTAR, GNR_MESANORE' +
        'FERENCIA = :NEW_GNR_MESANOREFERENCIA, '
      
        '  GNR_NUMDOCTO = :NEW_GNR_NUMDOCTO, GNR_PARCELA = :NEW_GNR_PARCE' +
        'LA, '
      
        '  GNR_PERIODOREFERENCIA = :NEW_GNR_PERIODOREFERENCIA, GNR_PRODUT' +
        'O = :NEW_GNR_PRODUTO, '
      
        '  GNR_PROTOCOLO = :NEW_GNR_PROTOCOLO, GNR_RECEITA = :NEW_GNR_REC' +
        'EITA, '
      
        '  GNR_RECIBO = :NEW_GNR_RECIBO, GNR_REPNUMERICA = :NEW_GNR_REPNU' +
        'MERICA, '
      
        '  GNR_STATUS = :NEW_GNR_STATUS, GNR_TIPODOCTOORIGEM = :NEW_GNR_T' +
        'IPODOCTOORIGEM, '
      
        '  GNR_USUARIO = :NEW_GNR_USUARIO, GNR_VALORATUALIZACAO = :NEW_GN' +
        'R_VALORATUALIZACAO, '
      
        '  GNR_VALORJUROS = :NEW_GNR_VALORJUROS, GNR_VALORMULTA = :NEW_GN' +
        'R_VALORMULTA, '
      
        '  GNR_VALORPRINCIPAL = :NEW_GNR_VALORPRINCIPAL, GNR_VALORTOTAL =' +
        ' :NEW_GNR_VALORTOTAL'
      'WHERE GNR_CODIGO = :OLD_GNR_CODIGO'
      
        'RETURNING GNR_CHAVEACESSO, GNR_CODIGO, GNR_CODIGOBARRAS, GNR_CON' +
        'TROLE, GNR_CONVENIO, GNR_DESTCIDADE, GNR_DESTCIDADECODIGO, GNR_D' +
        'ESTDOCUMENTO, GNR_DESTDOCUMENTOTIPO, GNR_DESTNOME, GNR_DTATUALIZ' +
        'ACAO, GNR_DTCADASTRO, GNR_DTLIMITE, GNR_DTPAGAMENTO, GNR_DTVENCI' +
        'MENTO, GNR_EMITCEP, GNR_EMITCIDADECODIGO, GNR_EMITDOCUMENTO, GNR' +
        '_EMITDOCUMENTOTIPO, GNR_EMITENDERECO, GNR_EMITESTADO, GNR_EMITFO' +
        'NE, GNR_EMITIENAUFFAVORECIDA, GNR_EMITRAZAO, GNR_ESTADOFAVORECID' +
        'O, GNR_HRATUALIZACAO, GNR_HRCADASTRO, GNR_INFOCOMPLEMENTAR, GNR_' +
        'MESANOREFERENCIA, GNR_NUMDOCTO, GNR_PARCELA, GNR_PERIODOREFERENC' +
        'IA, GNR_PRODUTO, GNR_PROTOCOLO, GNR_RECEITA, GNR_RECIBO, GNR_REP' +
        'NUMERICA, GNR_STATUS, GNR_TIPODOCTOORIGEM, GNR_USUARIO, GNR_VALO' +
        'RATUALIZACAO, GNR_VALORJUROS, GNR_VALORMULTA, GNR_VALORPRINCIPAL' +
        ', GNR_VALORTOTAL')
    DeleteSQL.Strings = (
      'DELETE FROM GNRE'
      'WHERE GNR_CODIGO = :OLD_GNR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT GNR_CHAVEACESSO, GNR_CODIGO, GNR_CODIGOBARRAS, GNR_CONTRO' +
        'LE, '
      
        '  GNR_CONVENIO, GNR_DESTCIDADE, GNR_DESTCIDADECODIGO, GNR_DESTDO' +
        'CUMENTO, '
      '  GNR_DESTDOCUMENTOTIPO, GNR_DESTNOME, GNR_DTATUALIZACAO, '
      
        '  GNR_DTCADASTRO, GNR_DTLIMITE, GNR_DTPAGAMENTO, GNR_DTVENCIMENT' +
        'O, '
      
        '  GNR_EMITCEP, GNR_EMITCIDADECODIGO, GNR_EMITDOCUMENTO, GNR_EMIT' +
        'DOCUMENTOTIPO, '
      
        '  GNR_EMITENDERECO, GNR_EMITESTADO, GNR_EMITFONE, GNR_EMITIENAUF' +
        'FAVORECIDA, '
      '  GNR_EMITRAZAO, GNR_ESTADOFAVORECIDO, GNR_HRATUALIZACAO, '
      '  GNR_HRCADASTRO, GNR_INFOCOMPLEMENTAR, GNR_MESANOREFERENCIA, '
      
        '  GNR_NUMDOCTO, GNR_PARCELA, GNR_PERIODOREFERENCIA, GNR_PRODUTO,' +
        ' '
      '  GNR_PROTOCOLO, GNR_RECEITA, GNR_RECIBO, GNR_REPNUMERICA, '
      
        '  GNR_STATUS, GNR_TIPODOCTOORIGEM, GNR_USUARIO, GNR_VALORATUALIZ' +
        'ACAO, '
      
        '  GNR_VALORJUROS, GNR_VALORMULTA, GNR_VALORPRINCIPAL, GNR_VALORT' +
        'OTAL'
      'FROM GNRE'
      'WHERE GNR_CODIGO = :OLD_GNR_CODIGO')
    Left = 320
    Top = 208
  end
  object TBGnre: TFDQuery
    BeforeInsert = TBGnreBeforeInsert
    AfterInsert = TBGnreAfterInsert
    BeforeEdit = TBGnreBeforeEdit
    AfterEdit = TBGnreAfterEdit
    BeforePost = TBGnreBeforePost
    Connection = DM.FDConnection1
    Transaction = TRGnre
    UpdateObject = UPGnre
    SQL.Strings = (
      'select'
      'GNR_CHAVEACESSO,'
      'GNR_CODIGO,'
      'GNR_CODIGOBARRAS,'
      'GNR_CONTROLE,'
      'GNR_CONVENIO,'
      'GNR_DESTCIDADE,'
      'GNR_DESTCIDADECODIGO,'
      'GNR_DESTDOCUMENTO,'
      'GNR_DESTDOCUMENTOTIPO,'
      'GNR_DESTNOME,'
      'GNR_DTATUALIZACAO,'
      'GNR_DTCADASTRO,'
      'GNR_DTLIMITE,'
      'GNR_DTPAGAMENTO,'
      'GNR_DTVENCIMENTO,'
      'GNR_EMITCEP,'
      'GNR_EMITCIDADECODIGO,'
      'GNR_EMITDOCUMENTO,'
      'GNR_EMITDOCUMENTOTIPO,'
      'GNR_EMITENDERECO,'
      'GNR_EMITESTADO,'
      'GNR_EMITFONE,'
      'GNR_EMITIENAUFFAVORECIDA,'
      'GNR_EMITRAZAO,'
      'GNR_ESTADOFAVORECIDO,'
      'GNR_HRATUALIZACAO,'
      'GNR_HRCADASTRO,'
      'GNR_INFOCOMPLEMENTAR,'
      'GNR_MESANOREFERENCIA,'
      'GNR_NUMDOCTO,'
      'GNR_PARCELA,'
      'GNR_PERIODOREFERENCIA,'
      'GNR_PRODUTO,'
      'GNR_PROTOCOLO,'
      'GNR_RECEITA,'
      'GNR_RECIBO,'
      'GNR_REPNUMERICA,'
      'GNR_STATUS,'
      'GNR_TIPODOCTOORIGEM,'
      'GNR_USUARIO,'
      'GNR_VALORATUALIZACAO,'
      'GNR_VALORJUROS,'
      'GNR_VALORMULTA,'
      'GNR_VALORPRINCIPAL,'
      'GNR_VALORTOTAL'
      'from GNRE'
      'where GNR_CODIGO=:codigo'
      '')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBGnreGNR_CHAVEACESSO: TStringField
      FieldName = 'GNR_CHAVEACESSO'
      Origin = 'GNR_CHAVEACESSO'
      Size = 50
    end
    object TBGnreGNR_CODIGO: TIntegerField
      FieldName = 'GNR_CODIGO'
      Origin = 'GNR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBGnreGNR_CODIGOBARRAS: TStringField
      FieldName = 'GNR_CODIGOBARRAS'
      Origin = 'GNR_CODIGOBARRAS'
      Size = 50
    end
    object TBGnreGNR_CONTROLE: TStringField
      FieldName = 'GNR_CONTROLE'
      Origin = 'GNR_CONTROLE'
    end
    object TBGnreGNR_CONVENIO: TStringField
      FieldName = 'GNR_CONVENIO'
      Origin = 'GNR_CONVENIO'
      Size = 50
    end
    object TBGnreGNR_DESTCIDADE: TStringField
      FieldName = 'GNR_DESTCIDADE'
      Origin = 'GNR_DESTCIDADE'
      Size = 50
    end
    object TBGnreGNR_DESTCIDADECODIGO: TIntegerField
      FieldName = 'GNR_DESTCIDADECODIGO'
      Origin = 'GNR_DESTCIDADECODIGO'
    end
    object TBGnreGNR_DESTDOCUMENTO: TStringField
      FieldName = 'GNR_DESTDOCUMENTO'
      Origin = 'GNR_DESTDOCUMENTO'
    end
    object TBGnreGNR_DESTDOCUMENTOTIPO: TStringField
      FieldName = 'GNR_DESTDOCUMENTOTIPO'
      Origin = 'GNR_DESTDOCUMENTOTIPO'
    end
    object TBGnreGNR_DESTNOME: TStringField
      FieldName = 'GNR_DESTNOME'
      Origin = 'GNR_DESTNOME'
      Size = 80
    end
    object TBGnreGNR_DTATUALIZACAO: TDateField
      FieldName = 'GNR_DTATUALIZACAO'
      Origin = 'GNR_DTATUALIZACAO'
    end
    object TBGnreGNR_DTCADASTRO: TDateField
      FieldName = 'GNR_DTCADASTRO'
      Origin = 'GNR_DTCADASTRO'
    end
    object TBGnreGNR_DTLIMITE: TDateField
      FieldName = 'GNR_DTLIMITE'
      Origin = 'GNR_DTLIMITE'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_DTPAGAMENTO: TDateField
      FieldName = 'GNR_DTPAGAMENTO'
      Origin = 'GNR_DTPAGAMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_DTVENCIMENTO: TDateField
      FieldName = 'GNR_DTVENCIMENTO'
      Origin = 'GNR_DTVENCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBGnreGNR_EMITCEP: TStringField
      FieldName = 'GNR_EMITCEP'
      Origin = 'GNR_EMITCEP'
      Size = 10
    end
    object TBGnreGNR_EMITCIDADECODIGO: TIntegerField
      FieldName = 'GNR_EMITCIDADECODIGO'
      Origin = 'GNR_EMITCIDADECODIGO'
    end
    object TBGnreGNR_EMITDOCUMENTO: TStringField
      FieldName = 'GNR_EMITDOCUMENTO'
      Origin = 'GNR_EMITDOCUMENTO'
    end
    object TBGnreGNR_EMITDOCUMENTOTIPO: TStringField
      FieldName = 'GNR_EMITDOCUMENTOTIPO'
      Origin = 'GNR_EMITDOCUMENTOTIPO'
    end
    object TBGnreGNR_EMITENDERECO: TStringField
      FieldName = 'GNR_EMITENDERECO'
      Origin = 'GNR_EMITENDERECO'
      Size = 100
    end
    object TBGnreGNR_EMITESTADO: TStringField
      FieldName = 'GNR_EMITESTADO'
      Origin = 'GNR_EMITESTADO'
      Size = 2
    end
    object TBGnreGNR_EMITFONE: TStringField
      FieldName = 'GNR_EMITFONE'
      Origin = 'GNR_EMITFONE'
    end
    object TBGnreGNR_EMITIENAUFFAVORECIDA: TStringField
      FieldName = 'GNR_EMITIENAUFFAVORECIDA'
      Origin = 'GNR_EMITIENAUFFAVORECIDA'
    end
    object TBGnreGNR_EMITRAZAO: TStringField
      FieldName = 'GNR_EMITRAZAO'
      Origin = 'GNR_EMITRAZAO'
      Size = 80
    end
    object TBGnreGNR_ESTADOFAVORECIDO: TStringField
      FieldName = 'GNR_ESTADOFAVORECIDO'
      Origin = 'GNR_ESTADOFAVORECIDO'
      Size = 2
    end
    object TBGnreGNR_HRATUALIZACAO: TTimeField
      FieldName = 'GNR_HRATUALIZACAO'
      Origin = 'GNR_HRATUALIZACAO'
    end
    object TBGnreGNR_HRCADASTRO: TTimeField
      FieldName = 'GNR_HRCADASTRO'
      Origin = 'GNR_HRCADASTRO'
    end
    object TBGnreGNR_INFOCOMPLEMENTAR: TStringField
      FieldName = 'GNR_INFOCOMPLEMENTAR'
      Origin = 'GNR_INFOCOMPLEMENTAR'
      Size = 1000
    end
    object TBGnreGNR_MESANOREFERENCIA: TStringField
      FieldName = 'GNR_MESANOREFERENCIA'
      Origin = 'GNR_MESANOREFERENCIA'
      Size = 7
    end
    object TBGnreGNR_NUMDOCTO: TIntegerField
      FieldName = 'GNR_NUMDOCTO'
      Origin = 'GNR_NUMDOCTO'
    end
    object TBGnreGNR_PARCELA: TIntegerField
      FieldName = 'GNR_PARCELA'
      Origin = 'GNR_PARCELA'
    end
    object TBGnreGNR_PERIODOREFERENCIA: TStringField
      FieldName = 'GNR_PERIODOREFERENCIA'
      Origin = 'GNR_PERIODOREFERENCIA'
    end
    object TBGnreGNR_PRODUTO: TStringField
      FieldName = 'GNR_PRODUTO'
      Origin = 'GNR_PRODUTO'
      Size = 50
    end
    object TBGnreGNR_PROTOCOLO: TStringField
      FieldName = 'GNR_PROTOCOLO'
      Origin = 'GNR_PROTOCOLO'
      Size = 40
    end
    object TBGnreGNR_RECEITA: TStringField
      FieldName = 'GNR_RECEITA'
      Origin = 'GNR_RECEITA'
      Size = 120
    end
    object TBGnreGNR_RECIBO: TStringField
      FieldName = 'GNR_RECIBO'
      Origin = 'GNR_RECIBO'
      Size = 40
    end
    object TBGnreGNR_REPNUMERICA: TStringField
      FieldName = 'GNR_REPNUMERICA'
      Origin = 'GNR_REPNUMERICA'
      Size = 50
    end
    object TBGnreGNR_STATUS: TStringField
      FieldName = 'GNR_STATUS'
      Origin = 'GNR_STATUS'
      Size = 1
    end
    object TBGnreGNR_TIPODOCTOORIGEM: TStringField
      FieldName = 'GNR_TIPODOCTOORIGEM'
      Origin = 'GNR_TIPODOCTOORIGEM'
      Size = 120
    end
    object TBGnreGNR_USUARIO: TStringField
      FieldName = 'GNR_USUARIO'
      Origin = 'GNR_USUARIO'
    end
    object TBGnreGNR_VALORATUALIZACAO: TFMTBCDField
      FieldName = 'GNR_VALORATUALIZACAO'
      Origin = 'GNR_VALORATUALIZACAO'
      currency = True
      Precision = 18
    end
    object TBGnreGNR_VALORJUROS: TFMTBCDField
      FieldName = 'GNR_VALORJUROS'
      Origin = 'GNR_VALORJUROS'
      currency = True
      Precision = 18
    end
    object TBGnreGNR_VALORMULTA: TFMTBCDField
      FieldName = 'GNR_VALORMULTA'
      Origin = 'GNR_VALORMULTA'
      currency = True
      Precision = 18
    end
    object TBGnreGNR_VALORPRINCIPAL: TFMTBCDField
      FieldName = 'GNR_VALORPRINCIPAL'
      Origin = 'GNR_VALORPRINCIPAL'
      currency = True
      Precision = 18
    end
    object TBGnreGNR_VALORTOTAL: TFMTBCDField
      FieldName = 'GNR_VALORTOTAL'
      Origin = 'GNR_VALORTOTAL'
      currency = True
      Precision = 18
    end
  end
  object TRImoveis: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 416
    Top = 240
  end
  object UPImoveis: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IMOVEIS'
      '(IMO_AREALOCALIZACAO, IMO_BAIRRO, IMO_CEP, IMO_CIDADE, '
      '  IMO_CIDADECODIGO, IMO_CIDADECODIGODIMOB, IMO_CLIENTE, '
      '  IMO_CODIGO, IMO_COMISSAO, IMO_COMPLEMENTO, '
      '  IMO_CONTRATO, IMO_DESCQTDE, IMO_DESCRICAO, '
      '  IMO_DESCVALOR, IMO_DIAPAGAMENTO, IMO_DTATUALIZACAO, '
      '  IMO_DTCADASTRO, IMO_ENDERECO, IMO_ESTADO, '
      '  IMO_FINALIDADE, IMO_HRATUALIZACAO, IMO_HRCADASTRO, '
      '  IMO_NUMERO, IMO_OBSERVACOES, IMO_RESERVADO, '
      '  IMO_STATUS, IMO_TIPOIMOVEL, IMO_TIPONEGOCIO, '
      '  IMO_TIPOPAGAMENTO, IMO_USUARIO, IMO_VALORALUGUEL)'
      
        'VALUES (:NEW_IMO_AREALOCALIZACAO, :NEW_IMO_BAIRRO, :NEW_IMO_CEP,' +
        ' :NEW_IMO_CIDADE, '
      
        '  :NEW_IMO_CIDADECODIGO, :NEW_IMO_CIDADECODIGODIMOB, :NEW_IMO_CL' +
        'IENTE, '
      
        '  gen_id(GEN_IMOVEIS,1), :NEW_IMO_COMISSAO, :NEW_IMO_COMPLEMENTO' +
        ', '
      '  :NEW_IMO_CONTRATO, :NEW_IMO_DESCQTDE, :NEW_IMO_DESCRICAO, '
      
        '  :NEW_IMO_DESCVALOR, :NEW_IMO_DIAPAGAMENTO, :NEW_IMO_DTATUALIZA' +
        'CAO, '
      '  :NEW_IMO_DTCADASTRO, :NEW_IMO_ENDERECO, :NEW_IMO_ESTADO, '
      
        '  :NEW_IMO_FINALIDADE, :NEW_IMO_HRATUALIZACAO, :NEW_IMO_HRCADAST' +
        'RO, '
      '  :NEW_IMO_NUMERO, :NEW_IMO_OBSERVACOES, :NEW_IMO_RESERVADO, '
      '  :NEW_IMO_STATUS, :NEW_IMO_TIPOIMOVEL, :NEW_IMO_TIPONEGOCIO, '
      
        '  :NEW_IMO_TIPOPAGAMENTO, :NEW_IMO_USUARIO, :NEW_IMO_VALORALUGUE' +
        'L)'
      
        'RETURNING IMO_AREALOCALIZACAO, IMO_BAIRRO, IMO_CEP, IMO_CIDADE, ' +
        'IMO_CIDADECODIGO, IMO_CIDADECODIGODIMOB, IMO_CLIENTE, IMO_CODIGO' +
        ', IMO_COMISSAO, IMO_COMPLEMENTO, IMO_CONTRATO, IMO_DESCQTDE, IMO' +
        '_DESCRICAO, IMO_DESCVALOR, IMO_DIAPAGAMENTO, IMO_DTATUALIZACAO, ' +
        'IMO_DTCADASTRO, IMO_ENDERECO, IMO_ESTADO, IMO_FINALIDADE, IMO_HR' +
        'ATUALIZACAO, IMO_HRCADASTRO, IMO_NUMERO, IMO_OBSERVACOES, IMO_RE' +
        'SERVADO, IMO_STATUS, IMO_TIPOIMOVEL, IMO_TIPONEGOCIO, IMO_TIPOPA' +
        'GAMENTO, IMO_USUARIO, IMO_VALORALUGUEL')
    ModifySQL.Strings = (
      'UPDATE IMOVEIS'
      
        'SET IMO_AREALOCALIZACAO = :NEW_IMO_AREALOCALIZACAO, IMO_BAIRRO =' +
        ' :NEW_IMO_BAIRRO, '
      
        '  IMO_CEP = :NEW_IMO_CEP, IMO_CIDADE = :NEW_IMO_CIDADE, IMO_CIDA' +
        'DECODIGO = :NEW_IMO_CIDADECODIGO, '
      
        '  IMO_CIDADECODIGODIMOB = :NEW_IMO_CIDADECODIGODIMOB, IMO_CLIENT' +
        'E = :NEW_IMO_CLIENTE, '
      
        '  IMO_CODIGO = :NEW_IMO_CODIGO, IMO_COMISSAO = :NEW_IMO_COMISSAO' +
        ', '
      
        '  IMO_COMPLEMENTO = :NEW_IMO_COMPLEMENTO, IMO_CONTRATO = :NEW_IM' +
        'O_CONTRATO, '
      
        '  IMO_DESCQTDE = :NEW_IMO_DESCQTDE, IMO_DESCRICAO = :NEW_IMO_DES' +
        'CRICAO, '
      
        '  IMO_DESCVALOR = :NEW_IMO_DESCVALOR, IMO_DIAPAGAMENTO = :NEW_IM' +
        'O_DIAPAGAMENTO, '
      
        '  IMO_DTATUALIZACAO = :NEW_IMO_DTATUALIZACAO, IMO_DTCADASTRO = :' +
        'NEW_IMO_DTCADASTRO, '
      
        '  IMO_ENDERECO = :NEW_IMO_ENDERECO, IMO_ESTADO = :NEW_IMO_ESTADO' +
        ', '
      
        '  IMO_FINALIDADE = :NEW_IMO_FINALIDADE, IMO_HRATUALIZACAO = :NEW' +
        '_IMO_HRATUALIZACAO, '
      
        '  IMO_HRCADASTRO = :NEW_IMO_HRCADASTRO, IMO_NUMERO = :NEW_IMO_NU' +
        'MERO, '
      
        '  IMO_OBSERVACOES = :NEW_IMO_OBSERVACOES, IMO_RESERVADO = :NEW_I' +
        'MO_RESERVADO, '
      
        '  IMO_STATUS = :NEW_IMO_STATUS, IMO_TIPOIMOVEL = :NEW_IMO_TIPOIM' +
        'OVEL, '
      
        '  IMO_TIPONEGOCIO = :NEW_IMO_TIPONEGOCIO, IMO_TIPOPAGAMENTO = :N' +
        'EW_IMO_TIPOPAGAMENTO, '
      
        '  IMO_USUARIO = :NEW_IMO_USUARIO, IMO_VALORALUGUEL = :NEW_IMO_VA' +
        'LORALUGUEL'
      'WHERE IMO_CODIGO = :OLD_IMO_CODIGO'
      
        'RETURNING IMO_AREALOCALIZACAO, IMO_BAIRRO, IMO_CEP, IMO_CIDADE, ' +
        'IMO_CIDADECODIGO, IMO_CIDADECODIGODIMOB, IMO_CLIENTE, IMO_CODIGO' +
        ', IMO_COMISSAO, IMO_COMPLEMENTO, IMO_CONTRATO, IMO_DESCQTDE, IMO' +
        '_DESCRICAO, IMO_DESCVALOR, IMO_DIAPAGAMENTO, IMO_DTATUALIZACAO, ' +
        'IMO_DTCADASTRO, IMO_ENDERECO, IMO_ESTADO, IMO_FINALIDADE, IMO_HR' +
        'ATUALIZACAO, IMO_HRCADASTRO, IMO_NUMERO, IMO_OBSERVACOES, IMO_RE' +
        'SERVADO, IMO_STATUS, IMO_TIPOIMOVEL, IMO_TIPONEGOCIO, IMO_TIPOPA' +
        'GAMENTO, IMO_USUARIO, IMO_VALORALUGUEL')
    DeleteSQL.Strings = (
      'DELETE FROM IMOVEIS'
      'WHERE IMO_CODIGO = :OLD_IMO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT IMO_AREALOCALIZACAO, IMO_BAIRRO, IMO_CEP, IMO_CIDADE, IMO' +
        '_CIDADECODIGO, '
      '  IMO_CIDADECODIGODIMOB, IMO_CLIENTE, IMO_CODIGO, IMO_COMISSAO, '
      '  IMO_COMPLEMENTO, IMO_CONTRATO, IMO_DESCQTDE, IMO_DESCRICAO, '
      
        '  IMO_DESCVALOR, IMO_DIAPAGAMENTO, IMO_DTATUALIZACAO, IMO_DTCADA' +
        'STRO, '
      '  IMO_ENDERECO, IMO_ESTADO, IMO_FINALIDADE, IMO_HRATUALIZACAO, '
      '  IMO_HRCADASTRO, IMO_NUMERO, IMO_OBSERVACOES, IMO_RESERVADO, '
      
        '  IMO_STATUS, IMO_TIPOIMOVEL, IMO_TIPONEGOCIO, IMO_TIPOPAGAMENTO' +
        ', '
      '  IMO_USUARIO, IMO_VALORALUGUEL'
      'FROM IMOVEIS'
      'WHERE IMO_CODIGO = :OLD_IMO_CODIGO')
    Left = 416
    Top = 208
  end
  object TBImoveis: TFDQuery
    BeforeInsert = TBImoveisBeforeInsert
    AfterInsert = TBImoveisAfterInsert
    BeforeEdit = TBImoveisBeforeEdit
    BeforePost = TBImoveisBeforePost
    Connection = DM.FDConnection1
    Transaction = TRImoveis
    UpdateObject = UPImoveis
    SQL.Strings = (
      'select '
      'IMO_AREALOCALIZACAO,'
      'IMO_BAIRRO,'
      'IMO_CEP,'
      'IMO_CIDADE,'
      'IMO_CIDADECODIGO,'
      'IMO_CIDADECODIGODIMOB,'
      'IMO_CLIENTE,'
      'IMO_CODIGO,'
      'IMO_COMISSAO,'
      'IMO_COMPLEMENTO,'
      'IMO_CONTRATO,'
      'IMO_DESCRICAO,'
      'IMO_DESCQTDE,'
      'IMO_DESCVALOR,'
      'IMO_DIAPAGAMENTO,'
      'IMO_DTATUALIZACAO,'
      'IMO_DTCADASTRO,'
      'IMO_ENDERECO,'
      'IMO_ESTADO,'
      'IMO_FINALIDADE,'
      'IMO_HRATUALIZACAO,'
      'IMO_HRCADASTRO,'
      'IMO_NUMERO,'
      'IMO_OBSERVACOES,'
      'IMO_RESERVADO,'
      'IMO_STATUS,'
      'IMO_TIPOIMOVEL,'
      'IMO_TIPONEGOCIO,'
      'IMO_TIPOPAGAMENTO,'
      'IMO_USUARIO,'
      'IMO_VALORALUGUEL,'
      'CLI_NOME,'
      'IMT_DESCRICAO'
      'from IMOVEIS'
      'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO'
      'left join CLIENTES on IMO_CLIENTE=CLI_CODIGO'
      'where IMO_CODIGO=:codigo'
      '')
    Left = 416
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBImoveisIMO_AREALOCALIZACAO: TStringField
      FieldName = 'IMO_AREALOCALIZACAO'
      Origin = 'IMO_AREALOCALIZACAO'
      Size = 1
    end
    object TBImoveisIMO_BAIRRO: TStringField
      FieldName = 'IMO_BAIRRO'
      Origin = 'IMO_BAIRRO'
      Size = 50
    end
    object TBImoveisIMO_CEP: TStringField
      FieldName = 'IMO_CEP'
      Origin = 'IMO_CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBImoveisIMO_CIDADE: TStringField
      FieldName = 'IMO_CIDADE'
      Origin = 'IMO_CIDADE'
      Size = 50
    end
    object TBImoveisIMO_CIDADECODIGO: TIntegerField
      FieldName = 'IMO_CIDADECODIGO'
      Origin = 'IMO_CIDADECODIGO'
    end
    object TBImoveisIMO_CIDADECODIGODIMOB: TIntegerField
      FieldName = 'IMO_CIDADECODIGODIMOB'
      Origin = 'IMO_CIDADECODIGODIMOB'
    end
    object TBImoveisIMO_CLIENTE: TIntegerField
      FieldName = 'IMO_CLIENTE'
      Origin = 'IMO_CLIENTE'
      Required = True
    end
    object TBImoveisIMO_CODIGO: TIntegerField
      FieldName = 'IMO_CODIGO'
      Origin = 'IMO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBImoveisIMO_COMISSAO: TFMTBCDField
      FieldName = 'IMO_COMISSAO'
      Origin = 'IMO_COMISSAO'
      Precision = 18
    end
    object TBImoveisIMO_COMPLEMENTO: TStringField
      FieldName = 'IMO_COMPLEMENTO'
      Origin = 'IMO_COMPLEMENTO'
      Size = 80
    end
    object TBImoveisIMO_CONTRATO: TIntegerField
      FieldName = 'IMO_CONTRATO'
      Origin = 'IMO_CONTRATO'
    end
    object TBImoveisIMO_DESCRICAO: TStringField
      FieldName = 'IMO_DESCRICAO'
      Origin = 'IMO_DESCRICAO'
      Size = 120
    end
    object TBImoveisIMO_DESCQTDE: TIntegerField
      FieldName = 'IMO_DESCQTDE'
      Origin = 'IMO_DESCQTDE'
    end
    object TBImoveisIMO_DESCVALOR: TFMTBCDField
      FieldName = 'IMO_DESCVALOR'
      Origin = 'IMO_DESCVALOR'
      Precision = 18
    end
    object TBImoveisIMO_DIAPAGAMENTO: TIntegerField
      FieldName = 'IMO_DIAPAGAMENTO'
      Origin = 'IMO_DIAPAGAMENTO'
    end
    object TBImoveisIMO_DTATUALIZACAO: TDateField
      FieldName = 'IMO_DTATUALIZACAO'
      Origin = 'IMO_DTATUALIZACAO'
    end
    object TBImoveisIMO_DTCADASTRO: TDateField
      FieldName = 'IMO_DTCADASTRO'
      Origin = 'IMO_DTCADASTRO'
    end
    object TBImoveisIMO_ENDERECO: TStringField
      FieldName = 'IMO_ENDERECO'
      Origin = 'IMO_ENDERECO'
      Size = 100
    end
    object TBImoveisIMO_ESTADO: TStringField
      FieldName = 'IMO_ESTADO'
      Origin = 'IMO_ESTADO'
      Size = 2
    end
    object TBImoveisIMO_FINALIDADE: TStringField
      FieldName = 'IMO_FINALIDADE'
      Origin = 'IMO_FINALIDADE'
      Size = 1
    end
    object TBImoveisIMO_HRATUALIZACAO: TTimeField
      FieldName = 'IMO_HRATUALIZACAO'
      Origin = 'IMO_HRATUALIZACAO'
    end
    object TBImoveisIMO_HRCADASTRO: TTimeField
      FieldName = 'IMO_HRCADASTRO'
      Origin = 'IMO_HRCADASTRO'
    end
    object TBImoveisIMO_NUMERO: TStringField
      FieldName = 'IMO_NUMERO'
      Origin = 'IMO_NUMERO'
      Size = 15
    end
    object TBImoveisIMO_OBSERVACOES: TMemoField
      FieldName = 'IMO_OBSERVACOES'
      Origin = 'IMO_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBImoveisIMO_RESERVADO: TStringField
      FieldName = 'IMO_RESERVADO'
      Origin = 'IMO_RESERVADO'
      Size = 1
    end
    object TBImoveisIMO_STATUS: TStringField
      FieldName = 'IMO_STATUS'
      Origin = 'IMO_STATUS'
      Size = 1
    end
    object TBImoveisIMO_TIPOIMOVEL: TIntegerField
      FieldName = 'IMO_TIPOIMOVEL'
      Origin = 'IMO_TIPOIMOVEL'
      Required = True
    end
    object TBImoveisIMO_TIPONEGOCIO: TStringField
      FieldName = 'IMO_TIPONEGOCIO'
      Origin = 'IMO_TIPONEGOCIO'
      Size = 1
    end
    object TBImoveisIMO_TIPOPAGAMENTO: TStringField
      FieldName = 'IMO_TIPOPAGAMENTO'
      Origin = 'IMO_TIPOPAGAMENTO'
      Size = 1
    end
    object TBImoveisIMO_USUARIO: TStringField
      FieldName = 'IMO_USUARIO'
      Origin = 'IMO_USUARIO'
    end
    object TBImoveisIMO_VALORALUGUEL: TFMTBCDField
      FieldName = 'IMO_VALORALUGUEL'
      Origin = 'IMO_VALORALUGUEL'
      currency = True
      Precision = 18
    end
    object TBImoveisCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBImoveisIMT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRImoveisTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 448
    Top = 240
  end
  object UPImoveisTipos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IMOVEISTIPOS'
      '(IMT_CODIGO, IMT_DESCRICAO, IMT_DTATUALIZACAO, '
      '  IMT_DTCADASTRO, IMT_HRATUALIZACAO, IMT_HRCADASTRO, '
      '  IMT_STATUS, IMT_USUARIO)'
      
        'VALUES (gen_id(GEN_IMOVEISTIPO,1), :NEW_IMT_DESCRICAO, :NEW_IMT_' +
        'DTATUALIZACAO, '
      
        '  :NEW_IMT_DTCADASTRO, :NEW_IMT_HRATUALIZACAO, :NEW_IMT_HRCADAST' +
        'RO, '
      '  :NEW_IMT_STATUS, :NEW_IMT_USUARIO)'
      
        'RETURNING IMT_CODIGO, IMT_DESCRICAO, IMT_DTATUALIZACAO, IMT_DTCA' +
        'DASTRO, IMT_HRATUALIZACAO, IMT_HRCADASTRO, IMT_STATUS, IMT_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE IMOVEISTIPOS'
      
        'SET IMT_CODIGO = :NEW_IMT_CODIGO, IMT_DESCRICAO = :NEW_IMT_DESCR' +
        'ICAO, '
      
        '  IMT_DTATUALIZACAO = :NEW_IMT_DTATUALIZACAO, IMT_DTCADASTRO = :' +
        'NEW_IMT_DTCADASTRO, '
      
        '  IMT_HRATUALIZACAO = :NEW_IMT_HRATUALIZACAO, IMT_HRCADASTRO = :' +
        'NEW_IMT_HRCADASTRO, '
      '  IMT_STATUS = :NEW_IMT_STATUS, IMT_USUARIO = :NEW_IMT_USUARIO'
      'WHERE IMT_CODIGO = :OLD_IMT_CODIGO'
      
        'RETURNING IMT_CODIGO, IMT_DESCRICAO, IMT_DTATUALIZACAO, IMT_DTCA' +
        'DASTRO, IMT_HRATUALIZACAO, IMT_HRCADASTRO, IMT_STATUS, IMT_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM IMOVEISTIPOS'
      'WHERE IMT_CODIGO = :OLD_IMT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT IMT_CODIGO, IMT_DESCRICAO, IMT_DTATUALIZACAO, IMT_DTCADAS' +
        'TRO, '
      '  IMT_HRATUALIZACAO, IMT_HRCADASTRO, IMT_STATUS, IMT_USUARIO'
      'FROM IMOVEISTIPOS'
      'WHERE IMT_CODIGO = :OLD_IMT_CODIGO')
    Left = 448
    Top = 208
  end
  object TBImoveisTipos: TFDQuery
    BeforeInsert = TBImoveisTiposBeforeInsert
    AfterInsert = TBImoveisTiposAfterInsert
    BeforeEdit = TBImoveisTiposBeforeEdit
    BeforePost = TBImoveisTiposBeforePost
    Connection = DM.FDConnection1
    Transaction = TRImoveisTipos
    UpdateObject = UPImoveisTipos
    SQL.Strings = (
      'select'
      'IMT_CODIGO,'
      'IMT_DESCRICAO,'
      'IMT_DTATUALIZACAO,'
      'IMT_DTCADASTRO,'
      'IMT_HRATUALIZACAO,'
      'IMT_HRCADASTRO,'
      'IMT_STATUS,'
      'IMT_USUARIO'
      'from IMOVEISTIPOS'
      'where IMT_CODIGO=:codigo'
      '')
    Left = 448
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBImoveisTiposIMT_CODIGO: TIntegerField
      FieldName = 'IMT_CODIGO'
      Origin = 'IMT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBImoveisTiposIMT_DESCRICAO: TStringField
      FieldName = 'IMT_DESCRICAO'
      Origin = 'IMT_DESCRICAO'
      Size = 50
    end
    object TBImoveisTiposIMT_DTATUALIZACAO: TDateField
      FieldName = 'IMT_DTATUALIZACAO'
      Origin = 'IMT_DTATUALIZACAO'
    end
    object TBImoveisTiposIMT_DTCADASTRO: TDateField
      FieldName = 'IMT_DTCADASTRO'
      Origin = 'IMT_DTCADASTRO'
    end
    object TBImoveisTiposIMT_HRATUALIZACAO: TTimeField
      FieldName = 'IMT_HRATUALIZACAO'
      Origin = 'IMT_HRATUALIZACAO'
    end
    object TBImoveisTiposIMT_HRCADASTRO: TTimeField
      FieldName = 'IMT_HRCADASTRO'
      Origin = 'IMT_HRCADASTRO'
    end
    object TBImoveisTiposIMT_STATUS: TStringField
      FieldName = 'IMT_STATUS'
      Origin = 'IMT_STATUS'
      Size = 1
    end
    object TBImoveisTiposIMT_USUARIO: TStringField
      FieldName = 'IMT_USUARIO'
      Origin = 'IMT_USUARIO'
    end
  end
  object TRLocacoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 240
  end
  object UPLocacoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO LOCACOES'
      '(LOC_ABERTOPOR, LOC_BAIXADOPOR, LOC_CLIENTE, LOC_CODIGO, '
      '  LOC_DATA, LOC_DATADEVOLUCAO, LOC_DATAPREVISAO, '
      '  LOC_DTATUALIZACAO, LOC_DTCADASTRO, LOC_HORA, '
      '  LOC_HORADEVOLUCAO, LOC_HRATUALIZACAO, LOC_HRCADASTRO, '
      '  LOC_OBJETO, LOC_PAGO, LOC_STATUS, LOC_USUARIO, '
      '  LOC_VALORLOCACAO, LOC_VALOROBJETO, LOC_VALORPAGO, '
      '  LOC_VALORTOTAL)'
      
        'VALUES (:NEW_LOC_ABERTOPOR, :NEW_LOC_BAIXADOPOR, :NEW_LOC_CLIENT' +
        'E, gen_id(GEN_LOCACOES,1), '
      '  :NEW_LOC_DATA, :NEW_LOC_DATADEVOLUCAO, :NEW_LOC_DATAPREVISAO, '
      '  :NEW_LOC_DTATUALIZACAO, :NEW_LOC_DTCADASTRO, :NEW_LOC_HORA, '
      
        '  :NEW_LOC_HORADEVOLUCAO, :NEW_LOC_HRATUALIZACAO, :NEW_LOC_HRCAD' +
        'ASTRO, '
      
        '  :NEW_LOC_OBJETO, :NEW_LOC_PAGO, :NEW_LOC_STATUS, :NEW_LOC_USUA' +
        'RIO, '
      
        '  :NEW_LOC_VALORLOCACAO, :NEW_LOC_VALOROBJETO, :NEW_LOC_VALORPAG' +
        'O, '
      '  :NEW_LOC_VALORTOTAL)'
      
        'RETURNING LOC_ABERTOPOR, LOC_BAIXADOPOR, LOC_CLIENTE, LOC_CODIGO' +
        ', LOC_DATA, LOC_DATADEVOLUCAO, LOC_DATAPREVISAO, LOC_DTATUALIZAC' +
        'AO, LOC_DTCADASTRO, LOC_HORA, LOC_HORADEVOLUCAO, LOC_HRATUALIZAC' +
        'AO, LOC_HRCADASTRO, LOC_OBJETO, LOC_PAGO, LOC_STATUS, LOC_USUARI' +
        'O, LOC_VALORLOCACAO, LOC_VALOROBJETO, LOC_VALORPAGO, LOC_VALORTO' +
        'TAL')
    ModifySQL.Strings = (
      'UPDATE LOCACOES'
      
        'SET LOC_ABERTOPOR = :NEW_LOC_ABERTOPOR, LOC_BAIXADOPOR = :NEW_LO' +
        'C_BAIXADOPOR, '
      '  LOC_CLIENTE = :NEW_LOC_CLIENTE, LOC_CODIGO = :NEW_LOC_CODIGO, '
      
        '  LOC_DATA = :NEW_LOC_DATA, LOC_DATADEVOLUCAO = :NEW_LOC_DATADEV' +
        'OLUCAO, '
      
        '  LOC_DATAPREVISAO = :NEW_LOC_DATAPREVISAO, LOC_DTATUALIZACAO = ' +
        ':NEW_LOC_DTATUALIZACAO, '
      
        '  LOC_DTCADASTRO = :NEW_LOC_DTCADASTRO, LOC_HORA = :NEW_LOC_HORA' +
        ', '
      
        '  LOC_HORADEVOLUCAO = :NEW_LOC_HORADEVOLUCAO, LOC_HRATUALIZACAO ' +
        '= :NEW_LOC_HRATUALIZACAO, '
      
        '  LOC_HRCADASTRO = :NEW_LOC_HRCADASTRO, LOC_OBJETO = :NEW_LOC_OB' +
        'JETO, '
      '  LOC_PAGO = :NEW_LOC_PAGO, LOC_STATUS = :NEW_LOC_STATUS, '
      
        '  LOC_USUARIO = :NEW_LOC_USUARIO, LOC_VALORLOCACAO = :NEW_LOC_VA' +
        'LORLOCACAO, '
      
        '  LOC_VALOROBJETO = :NEW_LOC_VALOROBJETO, LOC_VALORPAGO = :NEW_L' +
        'OC_VALORPAGO, '
      '  LOC_VALORTOTAL = :NEW_LOC_VALORTOTAL'
      'WHERE LOC_CODIGO = :OLD_LOC_CODIGO'
      
        'RETURNING LOC_ABERTOPOR, LOC_BAIXADOPOR, LOC_CLIENTE, LOC_CODIGO' +
        ', LOC_DATA, LOC_DATADEVOLUCAO, LOC_DATAPREVISAO, LOC_DTATUALIZAC' +
        'AO, LOC_DTCADASTRO, LOC_HORA, LOC_HORADEVOLUCAO, LOC_HRATUALIZAC' +
        'AO, LOC_HRCADASTRO, LOC_OBJETO, LOC_PAGO, LOC_STATUS, LOC_USUARI' +
        'O, LOC_VALORLOCACAO, LOC_VALOROBJETO, LOC_VALORPAGO, LOC_VALORTO' +
        'TAL')
    DeleteSQL.Strings = (
      'DELETE FROM LOCACOES'
      'WHERE LOC_CODIGO = :OLD_LOC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT LOC_ABERTOPOR, LOC_BAIXADOPOR, LOC_CLIENTE, LOC_CODIGO, L' +
        'OC_DATA, '
      '  LOC_DATADEVOLUCAO, LOC_DATAPREVISAO, LOC_DTATUALIZACAO, '
      
        '  LOC_DTCADASTRO, LOC_HORA, LOC_HORADEVOLUCAO, LOC_HRATUALIZACAO' +
        ', '
      
        '  LOC_HRCADASTRO, LOC_OBJETO, LOC_PAGO, LOC_STATUS, LOC_USUARIO,' +
        ' '
      
        '  LOC_VALORLOCACAO, LOC_VALOROBJETO, LOC_VALORPAGO, LOC_VALORTOT' +
        'AL'
      'FROM LOCACOES'
      'WHERE LOC_CODIGO = :OLD_LOC_CODIGO')
    Left = 480
    Top = 208
  end
  object TBLocacoes: TFDQuery
    BeforeInsert = TBLocacoesBeforeInsert
    AfterInsert = TBLocacoesAfterInsert
    BeforeEdit = TBLocacoesBeforeEdit
    BeforePost = TBLocacoesBeforePost
    AfterPost = TBLocacoesAfterPost
    MasterSource = DM.DSClientes
    MasterFields = 'CLI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRLocacoes
    UpdateObject = UPLocacoes
    SQL.Strings = (
      'select'
      'LOC_ABERTOPOR,'
      'LOC_BAIXADOPOR,'
      'LOC_CLIENTE,'
      'LOC_CODIGO,'
      'LOC_DATA,'
      'LOC_DATADEVOLUCAO,'
      'LOC_DATAPREVISAO,'
      'LOC_DTATUALIZACAO,'
      'LOC_DTCADASTRO,'
      'LOC_HORA,'
      'LOC_HORADEVOLUCAO,'
      'LOC_HRATUALIZACAO,'
      'LOC_HRCADASTRO,'
      'LOC_OBJETO,'
      'LOC_PAGO,'
      'LOC_STATUS,'
      'LOC_USUARIO,'
      'LOC_VALORLOCACAO,'
      'LOC_VALOROBJETO,'
      'LOC_VALORPAGO,'
      'LOC_VALORTOTAL,'
      'OBJ_DESCRICAO,'
      'OBJ_SERIAL,'
      'CLI_NOME'
      'from LOCACOES'
      'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO'
      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO'
      'where LOC_CLIENTE=:CLI_CODIGO and LOC_STATUS='#39'A'#39
      '')
    Left = 480
    Top = 176
    ParamData = <
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBLocacoesLOC_ABERTOPOR: TStringField
      FieldName = 'LOC_ABERTOPOR'
      Origin = 'LOC_ABERTOPOR'
    end
    object TBLocacoesLOC_BAIXADOPOR: TStringField
      FieldName = 'LOC_BAIXADOPOR'
      Origin = 'LOC_BAIXADOPOR'
    end
    object TBLocacoesLOC_CLIENTE: TIntegerField
      FieldName = 'LOC_CLIENTE'
      Origin = 'LOC_CLIENTE'
      Required = True
    end
    object TBLocacoesLOC_CODIGO: TIntegerField
      FieldName = 'LOC_CODIGO'
      Origin = 'LOC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBLocacoesLOC_DATA: TDateField
      FieldName = 'LOC_DATA'
      Origin = 'LOC_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DATADEVOLUCAO: TDateField
      FieldName = 'LOC_DATADEVOLUCAO'
      Origin = 'LOC_DATADEVOLUCAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DATAPREVISAO: TDateField
      FieldName = 'LOC_DATAPREVISAO'
      Origin = 'LOC_DATAPREVISAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBLocacoesLOC_DTATUALIZACAO: TDateField
      FieldName = 'LOC_DTATUALIZACAO'
      Origin = 'LOC_DTATUALIZACAO'
    end
    object TBLocacoesLOC_DTCADASTRO: TDateField
      FieldName = 'LOC_DTCADASTRO'
      Origin = 'LOC_DTCADASTRO'
    end
    object TBLocacoesLOC_HORA: TStringField
      FieldName = 'LOC_HORA'
      Origin = 'LOC_HORA'
      EditMask = '!99:99:99;1;_'
      Size = 25
    end
    object TBLocacoesLOC_HORADEVOLUCAO: TStringField
      FieldName = 'LOC_HORADEVOLUCAO'
      Origin = 'LOC_HORADEVOLUCAO'
      EditMask = '!99:99:99;1;_'
      Size = 25
    end
    object TBLocacoesLOC_HRATUALIZACAO: TTimeField
      FieldName = 'LOC_HRATUALIZACAO'
      Origin = 'LOC_HRATUALIZACAO'
    end
    object TBLocacoesLOC_HRCADASTRO: TTimeField
      FieldName = 'LOC_HRCADASTRO'
      Origin = 'LOC_HRCADASTRO'
    end
    object TBLocacoesLOC_OBJETO: TIntegerField
      FieldName = 'LOC_OBJETO'
      Origin = 'LOC_OBJETO'
      Required = True
    end
    object TBLocacoesLOC_PAGO: TStringField
      FieldName = 'LOC_PAGO'
      Origin = 'LOC_PAGO'
      Size = 1
    end
    object TBLocacoesLOC_STATUS: TStringField
      FieldName = 'LOC_STATUS'
      Origin = 'LOC_STATUS'
      Size = 1
    end
    object TBLocacoesLOC_USUARIO: TStringField
      FieldName = 'LOC_USUARIO'
      Origin = 'LOC_USUARIO'
    end
    object TBLocacoesLOC_VALORLOCACAO: TFMTBCDField
      FieldName = 'LOC_VALORLOCACAO'
      Origin = 'LOC_VALORLOCACAO'
      currency = True
      Precision = 18
    end
    object TBLocacoesLOC_VALOROBJETO: TFMTBCDField
      FieldName = 'LOC_VALOROBJETO'
      Origin = 'LOC_VALOROBJETO'
      currency = True
      Precision = 18
    end
    object TBLocacoesLOC_VALORPAGO: TFMTBCDField
      FieldName = 'LOC_VALORPAGO'
      Origin = 'LOC_VALORPAGO'
      currency = True
      Precision = 18
    end
    object TBLocacoesLOC_VALORTOTAL: TFMTBCDField
      FieldName = 'LOC_VALORTOTAL'
      Origin = 'LOC_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBLocacoesOBJ_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBJ_DESCRICAO'
      Origin = 'OBJ_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBLocacoesOBJ_SERIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBJ_SERIAL'
      Origin = 'OBJ_SERIAL'
      ProviderFlags = []
      Size = 40
    end
    object TBLocacoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRLocais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 512
    Top = 240
  end
  object UPLocais: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO LOCAIS'
      '(LCA_CODIGO, LCA_CONVENIADO, LCA_DESCRICAO, LCA_DTATUALIZACAO, '
      '  LCA_DTCADASTRO, LCA_HRATUALIZACAO, LCA_HRCADASTRO, '
      '  LCA_USUARIO)'
      
        'VALUES (gen_id(GEN_LOCAIS,1), :NEW_LCA_CONVENIADO, :NEW_LCA_DESC' +
        'RICAO, :NEW_LCA_DTATUALIZACAO, '
      
        '  :NEW_LCA_DTCADASTRO, :NEW_LCA_HRATUALIZACAO, :NEW_LCA_HRCADAST' +
        'RO, '
      '  :NEW_LCA_USUARIO)'
      
        'RETURNING LCA_CODIGO, LCA_CONVENIADO, LCA_DESCRICAO, LCA_DTATUAL' +
        'IZACAO, LCA_DTCADASTRO, LCA_HRATUALIZACAO, LCA_HRCADASTRO, LCA_U' +
        'SUARIO')
    ModifySQL.Strings = (
      'UPDATE LOCAIS'
      
        'SET LCA_CODIGO = :NEW_LCA_CODIGO, LCA_CONVENIADO = :NEW_LCA_CONV' +
        'ENIADO, '
      
        '  LCA_DESCRICAO = :NEW_LCA_DESCRICAO, LCA_DTATUALIZACAO = :NEW_L' +
        'CA_DTATUALIZACAO, '
      
        '  LCA_DTCADASTRO = :NEW_LCA_DTCADASTRO, LCA_HRATUALIZACAO = :NEW' +
        '_LCA_HRATUALIZACAO, '
      
        '  LCA_HRCADASTRO = :NEW_LCA_HRCADASTRO, LCA_USUARIO = :NEW_LCA_U' +
        'SUARIO'
      'WHERE LCA_CODIGO = :OLD_LCA_CODIGO'
      
        'RETURNING LCA_CODIGO, LCA_CONVENIADO, LCA_DESCRICAO, LCA_DTATUAL' +
        'IZACAO, LCA_DTCADASTRO, LCA_HRATUALIZACAO, LCA_HRCADASTRO, LCA_U' +
        'SUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM LOCAIS'
      'WHERE LCA_CODIGO = :OLD_LCA_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT LCA_CODIGO, LCA_CONVENIADO, LCA_DESCRICAO, LCA_DTATUALIZA' +
        'CAO, '
      '  LCA_DTCADASTRO, LCA_HRATUALIZACAO, LCA_HRCADASTRO, LCA_USUARIO'
      'FROM LOCAIS'
      'WHERE LCA_CODIGO = :OLD_LCA_CODIGO')
    Left = 512
    Top = 208
  end
  object TBLocais: TFDQuery
    BeforeInsert = TBLocaisBeforeInsert
    AfterInsert = TBLocaisAfterInsert
    BeforeEdit = TBLocaisBeforeEdit
    BeforePost = TBLocaisBeforePost
    Connection = DM.FDConnection1
    Transaction = TRLocais
    UpdateObject = UPLocais
    SQL.Strings = (
      'select'
      'LCA_CODIGO,'
      'LCA_CONVENIADO,'
      'LCA_DESCRICAO,'
      'LCA_DTATUALIZACAO,'
      'LCA_DTCADASTRO,'
      'LCA_HRATUALIZACAO,'
      'LCA_HRCADASTRO,'
      'LCA_USUARIO'
      'from LOCAIS'
      'where LCA_CODIGO=:codigo'
      '')
    Left = 512
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBLocaisLCA_CODIGO: TIntegerField
      FieldName = 'LCA_CODIGO'
      Origin = 'LCA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBLocaisLCA_CONVENIADO: TStringField
      FieldName = 'LCA_CONVENIADO'
      Origin = 'LCA_CONVENIADO'
      Size = 1
    end
    object TBLocaisLCA_DESCRICAO: TStringField
      FieldName = 'LCA_DESCRICAO'
      Origin = 'LCA_DESCRICAO'
      Size = 50
    end
    object TBLocaisLCA_DTATUALIZACAO: TDateField
      FieldName = 'LCA_DTATUALIZACAO'
      Origin = 'LCA_DTATUALIZACAO'
    end
    object TBLocaisLCA_DTCADASTRO: TDateField
      FieldName = 'LCA_DTCADASTRO'
      Origin = 'LCA_DTCADASTRO'
    end
    object TBLocaisLCA_HRATUALIZACAO: TTimeField
      FieldName = 'LCA_HRATUALIZACAO'
      Origin = 'LCA_HRATUALIZACAO'
    end
    object TBLocaisLCA_HRCADASTRO: TTimeField
      FieldName = 'LCA_HRCADASTRO'
      Origin = 'LCA_HRCADASTRO'
    end
    object TBLocaisLCA_USUARIO: TStringField
      FieldName = 'LCA_USUARIO'
      Origin = 'LCA_USUARIO'
    end
  end
  object TRMarcas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 240
  end
  object UPMarcas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MARCAS'
      '(MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, '
      '  MAR_DTCADASTRO, MAR_HRATUALIZACAO, MAR_HRCADASTRO, '
      '  MAR_USUARIO)'
      
        'VALUES (gen_id(GEN_MARCAS,1), :NEW_MAR_DESCRICAO, :NEW_MAR_DTATU' +
        'ALIZACAO, '
      
        '  :NEW_MAR_DTCADASTRO, :NEW_MAR_HRATUALIZACAO, :NEW_MAR_HRCADAST' +
        'RO, '
      '  :NEW_MAR_USUARIO)'
      
        'RETURNING MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, MAR_DTCA' +
        'DASTRO, MAR_HRATUALIZACAO, MAR_HRCADASTRO, MAR_USUARIO')
    ModifySQL.Strings = (
      'UPDATE MARCAS'
      
        'SET MAR_CODIGO = :NEW_MAR_CODIGO, MAR_DESCRICAO = :NEW_MAR_DESCR' +
        'ICAO, '
      
        '  MAR_DTATUALIZACAO = :NEW_MAR_DTATUALIZACAO, MAR_DTCADASTRO = :' +
        'NEW_MAR_DTCADASTRO, '
      
        '  MAR_HRATUALIZACAO = :NEW_MAR_HRATUALIZACAO, MAR_HRCADASTRO = :' +
        'NEW_MAR_HRCADASTRO, '
      '  MAR_USUARIO = :NEW_MAR_USUARIO'
      'WHERE MAR_CODIGO = :OLD_MAR_CODIGO'
      
        'RETURNING MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, MAR_DTCA' +
        'DASTRO, MAR_HRATUALIZACAO, MAR_HRCADASTRO, MAR_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM MARCAS'
      'WHERE MAR_CODIGO = :OLD_MAR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, MAR_DTCADAS' +
        'TRO, '
      '  MAR_HRATUALIZACAO, MAR_HRCADASTRO, MAR_USUARIO'
      'FROM MARCAS'
      'WHERE MAR_CODIGO = :OLD_MAR_CODIGO')
    Left = 544
    Top = 208
  end
  object TBMarcas: TFDQuery
    BeforeInsert = TBMarcasBeforeInsert
    AfterInsert = TBMarcasAfterInsert
    BeforeEdit = TBMarcasBeforeEdit
    BeforePost = TBMarcasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRMarcas
    UpdateObject = UPMarcas
    SQL.Strings = (
      'select'
      'MAR_CODIGO,'
      'MAR_DESCRICAO,'
      'MAR_DTATUALIZACAO,'
      'MAR_DTCADASTRO,'
      'MAR_HRATUALIZACAO,'
      'MAR_HRCADASTRO,'
      'MAR_USUARIO'
      'from MARCAS'
      'where MAR_CODIGO=:codigo'
      '')
    Left = 544
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMarcasMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'MAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMarcasMAR_DESCRICAO: TStringField
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      Size = 50
    end
    object TBMarcasMAR_DTATUALIZACAO: TDateField
      FieldName = 'MAR_DTATUALIZACAO'
      Origin = 'MAR_DTATUALIZACAO'
    end
    object TBMarcasMAR_DTCADASTRO: TDateField
      FieldName = 'MAR_DTCADASTRO'
      Origin = 'MAR_DTCADASTRO'
    end
    object TBMarcasMAR_HRATUALIZACAO: TTimeField
      FieldName = 'MAR_HRATUALIZACAO'
      Origin = 'MAR_HRATUALIZACAO'
    end
    object TBMarcasMAR_HRCADASTRO: TTimeField
      FieldName = 'MAR_HRCADASTRO'
      Origin = 'MAR_HRCADASTRO'
    end
    object TBMarcasMAR_USUARIO: TStringField
      FieldName = 'MAR_USUARIO'
      Origin = 'MAR_USUARIO'
    end
  end
  object TRMarkups: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 576
    Top = 240
  end
  object UPMarkups: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MARKUPS'
      '(MKP_CODIGO, MKP_DESCRICAO, MKP_DTATUALIZACAO, '
      '  MKP_DTCADASTRO, MKP_HRATUALIZACAO, MKP_HRCADASTRO, '
      '  MKP_MARKUP, MKP_USUARIO)'
      
        'VALUES (gen_id(GEN_MARKUPS,1), :NEW_MKP_DESCRICAO, :NEW_MKP_DTAT' +
        'UALIZACAO, '
      
        '  :NEW_MKP_DTCADASTRO, :NEW_MKP_HRATUALIZACAO, :NEW_MKP_HRCADAST' +
        'RO, '
      '  :NEW_MKP_MARKUP, :NEW_MKP_USUARIO)'
      
        'RETURNING MKP_CODIGO, MKP_DESCRICAO, MKP_DTATUALIZACAO, MKP_DTCA' +
        'DASTRO, MKP_HRATUALIZACAO, MKP_HRCADASTRO, MKP_MARKUP, MKP_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE MARKUPS'
      
        'SET MKP_CODIGO = :NEW_MKP_CODIGO, MKP_DESCRICAO = :NEW_MKP_DESCR' +
        'ICAO, '
      
        '  MKP_DTATUALIZACAO = :NEW_MKP_DTATUALIZACAO, MKP_DTCADASTRO = :' +
        'NEW_MKP_DTCADASTRO, '
      
        '  MKP_HRATUALIZACAO = :NEW_MKP_HRATUALIZACAO, MKP_HRCADASTRO = :' +
        'NEW_MKP_HRCADASTRO, '
      '  MKP_MARKUP = :NEW_MKP_MARKUP, MKP_USUARIO = :NEW_MKP_USUARIO'
      'WHERE MKP_CODIGO = :OLD_MKP_CODIGO'
      
        'RETURNING MKP_CODIGO, MKP_DESCRICAO, MKP_DTATUALIZACAO, MKP_DTCA' +
        'DASTRO, MKP_HRATUALIZACAO, MKP_HRCADASTRO, MKP_MARKUP, MKP_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM MARKUPS'
      'WHERE MKP_CODIGO = :OLD_MKP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MKP_CODIGO, MKP_DESCRICAO, MKP_DTATUALIZACAO, MKP_DTCADAS' +
        'TRO, '
      '  MKP_HRATUALIZACAO, MKP_HRCADASTRO, MKP_MARKUP, MKP_USUARIO'
      'FROM MARKUPS'
      'WHERE MKP_CODIGO = :OLD_MKP_CODIGO')
    Left = 576
    Top = 208
  end
  object TBMarkups: TFDQuery
    BeforeInsert = TBMarkupsBeforeInsert
    AfterInsert = TBMarkupsAfterInsert
    BeforeEdit = TBMarkupsBeforeEdit
    BeforePost = TBMarkupsBeforePost
    Connection = DM.FDConnection1
    Transaction = TRMarkups
    UpdateObject = UPMarkups
    SQL.Strings = (
      'select'
      'MKP_CODIGO,'
      'MKP_DESCRICAO,'
      'MKP_DTATUALIZACAO,'
      'MKP_DTCADASTRO,'
      'MKP_HRATUALIZACAO,'
      'MKP_HRCADASTRO,'
      'MKP_MARKUP,'
      'MKP_USUARIO'
      'from MARKUPS'
      'where MKP_CODIGO=:codigo'
      '')
    Left = 576
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMarkupsMKP_CODIGO: TIntegerField
      FieldName = 'MKP_CODIGO'
      Origin = 'MKP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMarkupsMKP_DESCRICAO: TStringField
      FieldName = 'MKP_DESCRICAO'
      Origin = 'MKP_DESCRICAO'
      Size = 50
    end
    object TBMarkupsMKP_DTATUALIZACAO: TDateField
      FieldName = 'MKP_DTATUALIZACAO'
      Origin = 'MKP_DTATUALIZACAO'
    end
    object TBMarkupsMKP_DTCADASTRO: TDateField
      FieldName = 'MKP_DTCADASTRO'
      Origin = 'MKP_DTCADASTRO'
    end
    object TBMarkupsMKP_HRATUALIZACAO: TTimeField
      FieldName = 'MKP_HRATUALIZACAO'
      Origin = 'MKP_HRATUALIZACAO'
    end
    object TBMarkupsMKP_HRCADASTRO: TTimeField
      FieldName = 'MKP_HRCADASTRO'
      Origin = 'MKP_HRCADASTRO'
    end
    object TBMarkupsMKP_MARKUP: TFMTBCDField
      FieldName = 'MKP_MARKUP'
      Origin = 'MKP_MARKUP'
      Precision = 18
    end
    object TBMarkupsMKP_USUARIO: TStringField
      FieldName = 'MKP_USUARIO'
      Origin = 'MKP_USUARIO'
    end
  end
  object TRMarkupsItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 608
    Top = 240
  end
  object UPMarkupsItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MARKUPSITENS'
      '(MKI_CODIGO, MKI_DESCRICAO, MKI_MARKUP, MKI_PORCENTAGEM)'
      
        'VALUES (gen_id(GEN_MARKUPSITENS,1), :NEW_MKI_DESCRICAO, :NEW_MKI' +
        '_MARKUP, :NEW_MKI_PORCENTAGEM)'
      'RETURNING MKI_CODIGO, MKI_DESCRICAO, MKI_MARKUP, MKI_PORCENTAGEM')
    ModifySQL.Strings = (
      'UPDATE MARKUPSITENS'
      
        'SET MKI_CODIGO = :NEW_MKI_CODIGO, MKI_DESCRICAO = :NEW_MKI_DESCR' +
        'ICAO, '
      
        '  MKI_MARKUP = :NEW_MKI_MARKUP, MKI_PORCENTAGEM = :NEW_MKI_PORCE' +
        'NTAGEM'
      'WHERE MKI_CODIGO = :OLD_MKI_CODIGO'
      'RETURNING MKI_CODIGO, MKI_DESCRICAO, MKI_MARKUP, MKI_PORCENTAGEM')
    DeleteSQL.Strings = (
      'DELETE FROM MARKUPSITENS'
      'WHERE MKI_CODIGO = :OLD_MKI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MKI_CODIGO, MKI_DESCRICAO, MKI_MARKUP, MKI_PORCENTAGEM'
      'FROM MARKUPSITENS'
      'WHERE MKI_CODIGO = :OLD_MKI_CODIGO')
    Left = 608
    Top = 208
  end
  object TBMarkupsItens: TFDQuery
    AfterInsert = TBMarkupsItensAfterInsert
    AfterPost = TBMarkupsItensAfterPost
    AfterDelete = TBMarkupsItensAfterDelete
    MasterSource = DSMarkups
    MasterFields = 'MKP_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMarkupsItens
    UpdateObject = UPMarkupsItens
    SQL.Strings = (
      'select'
      'MKI_CODIGO,'
      'MKI_DESCRICAO,'
      'MKI_MARKUP,'
      'MKI_PORCENTAGEM'
      'from MARKUPSITENS'
      'where MKI_MARKUP=:MKP_CODIGO'
      'order by MKI_CODIGO'
      '')
    Left = 608
    Top = 176
    ParamData = <
      item
        Name = 'MKP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMarkupsItensMKI_CODIGO: TIntegerField
      FieldName = 'MKI_CODIGO'
      Origin = 'MKI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMarkupsItensMKI_DESCRICAO: TStringField
      FieldName = 'MKI_DESCRICAO'
      Origin = 'MKI_DESCRICAO'
      Size = 50
    end
    object TBMarkupsItensMKI_MARKUP: TIntegerField
      FieldName = 'MKI_MARKUP'
      Origin = 'MKI_MARKUP'
      Required = True
    end
    object TBMarkupsItensMKI_PORCENTAGEM: TFMTBCDField
      FieldName = 'MKI_PORCENTAGEM'
      Origin = 'MKI_PORCENTAGEM'
      Precision = 18
    end
  end
  object TRMatriculas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 640
    Top = 240
  end
  object UPMatriculas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MATRICULAS'
      '(MAT_APROVADO, MAT_CLIENTE, MAT_CODIGO, MAT_CONCEITODISCURSO, '
      
        '  MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, MAT_CONCEITOLITERAT' +
        'URA, '
      '  MAT_CONTABILIZAR, MAT_DESISTENCIA, MAT_DTATUALIZACAO, '
      '  MAT_DTCADASTRO, MAT_HRATUALIZACAO, MAT_HRCADASTRO, '
      '  MAT_MEDIAEXERCICIOS, MAT_MEDIAFINAL, MAT_OBSERVACOES, '
      '  MAT_STATUS, MAT_TIPO, MAT_TIPOMATRICULA, '
      '  MAT_TURMA, MAT_USUARIO, MAT_VENDA, MAT_VENDAMATERIAL, '
      '  MAT_VENDEDOR)'
      
        'VALUES (:NEW_MAT_APROVADO, :NEW_MAT_CLIENTE, gen_id(GEN_MATRICUL' +
        'AS,1), :NEW_MAT_CONCEITODISCURSO, '
      
        '  :NEW_MAT_CONCEITOEXERCICIOS, :NEW_MAT_CONCEITOGERAL, :NEW_MAT_' +
        'CONCEITOLITERATURA, '
      
        '  :NEW_MAT_CONTABILIZAR, :NEW_MAT_DESISTENCIA, :NEW_MAT_DTATUALI' +
        'ZACAO, '
      
        '  :NEW_MAT_DTCADASTRO, :NEW_MAT_HRATUALIZACAO, :NEW_MAT_HRCADAST' +
        'RO, '
      
        '  :NEW_MAT_MEDIAEXERCICIOS, :NEW_MAT_MEDIAFINAL, :NEW_MAT_OBSERV' +
        'ACOES, '
      '  :NEW_MAT_STATUS, :NEW_MAT_TIPO, :NEW_MAT_TIPOMATRICULA, '
      
        '  :NEW_MAT_TURMA, :NEW_MAT_USUARIO, :NEW_MAT_VENDA, :NEW_MAT_VEN' +
        'DAMATERIAL, '
      '  :NEW_MAT_VENDEDOR)'
      
        'RETURNING MAT_APROVADO, MAT_CLIENTE, MAT_CODIGO, MAT_CONCEITODIS' +
        'CURSO, MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, MAT_CONCEITOLI' +
        'TERATURA, MAT_CONTABILIZAR, MAT_DESISTENCIA, MAT_DTATUALIZACAO, ' +
        'MAT_DTCADASTRO, MAT_HRATUALIZACAO, MAT_HRCADASTRO, MAT_MEDIAEXER' +
        'CICIOS, MAT_MEDIAFINAL, MAT_OBSERVACOES, MAT_STATUS, MAT_TIPO, M' +
        'AT_TIPOMATRICULA, MAT_TURMA, MAT_USUARIO, MAT_VENDA, MAT_VENDAMA' +
        'TERIAL, MAT_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE MATRICULAS'
      
        'SET MAT_APROVADO = :NEW_MAT_APROVADO, MAT_CLIENTE = :NEW_MAT_CLI' +
        'ENTE, '
      
        '  MAT_CODIGO = :NEW_MAT_CODIGO, MAT_CONCEITODISCURSO = :NEW_MAT_' +
        'CONCEITODISCURSO, '
      
        '  MAT_CONCEITOEXERCICIOS = :NEW_MAT_CONCEITOEXERCICIOS, MAT_CONC' +
        'EITOGERAL = :NEW_MAT_CONCEITOGERAL, '
      
        '  MAT_CONCEITOLITERATURA = :NEW_MAT_CONCEITOLITERATURA, MAT_CONT' +
        'ABILIZAR = :NEW_MAT_CONTABILIZAR, '
      
        '  MAT_DESISTENCIA = :NEW_MAT_DESISTENCIA, MAT_DTATUALIZACAO = :N' +
        'EW_MAT_DTATUALIZACAO, '
      
        '  MAT_DTCADASTRO = :NEW_MAT_DTCADASTRO, MAT_HRATUALIZACAO = :NEW' +
        '_MAT_HRATUALIZACAO, '
      
        '  MAT_HRCADASTRO = :NEW_MAT_HRCADASTRO, MAT_MEDIAEXERCICIOS = :N' +
        'EW_MAT_MEDIAEXERCICIOS, '
      
        '  MAT_MEDIAFINAL = :NEW_MAT_MEDIAFINAL, MAT_OBSERVACOES = :NEW_M' +
        'AT_OBSERVACOES, '
      '  MAT_STATUS = :NEW_MAT_STATUS, MAT_TIPO = :NEW_MAT_TIPO, '
      
        '  MAT_TIPOMATRICULA = :NEW_MAT_TIPOMATRICULA, MAT_TURMA = :NEW_M' +
        'AT_TURMA, '
      '  MAT_USUARIO = :NEW_MAT_USUARIO, MAT_VENDA = :NEW_MAT_VENDA, '
      
        '  MAT_VENDAMATERIAL = :NEW_MAT_VENDAMATERIAL, MAT_VENDEDOR = :NE' +
        'W_MAT_VENDEDOR'
      'WHERE MAT_CODIGO = :OLD_MAT_CODIGO'
      
        'RETURNING MAT_APROVADO, MAT_CLIENTE, MAT_CODIGO, MAT_CONCEITODIS' +
        'CURSO, MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, MAT_CONCEITOLI' +
        'TERATURA, MAT_CONTABILIZAR, MAT_DESISTENCIA, MAT_DTATUALIZACAO, ' +
        'MAT_DTCADASTRO, MAT_HRATUALIZACAO, MAT_HRCADASTRO, MAT_MEDIAEXER' +
        'CICIOS, MAT_MEDIAFINAL, MAT_OBSERVACOES, MAT_STATUS, MAT_TIPO, M' +
        'AT_TIPOMATRICULA, MAT_TURMA, MAT_USUARIO, MAT_VENDA, MAT_VENDAMA' +
        'TERIAL, MAT_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM MATRICULAS'
      'WHERE MAT_CODIGO = :OLD_MAT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MAT_APROVADO, MAT_CLIENTE, MAT_CODIGO, MAT_CONCEITODISCUR' +
        'SO, '
      
        '  MAT_CONCEITOEXERCICIOS, MAT_CONCEITOGERAL, MAT_CONCEITOLITERAT' +
        'URA, '
      
        '  MAT_CONTABILIZAR, MAT_DESISTENCIA, MAT_DTATUALIZACAO, MAT_DTCA' +
        'DASTRO, '
      '  MAT_HRATUALIZACAO, MAT_HRCADASTRO, MAT_MEDIAEXERCICIOS, '
      
        '  MAT_MEDIAFINAL, MAT_OBSERVACOES, MAT_STATUS, MAT_TIPO, MAT_TIP' +
        'OMATRICULA, '
      
        '  MAT_TURMA, MAT_USUARIO, MAT_VENDA, MAT_VENDAMATERIAL, MAT_VEND' +
        'EDOR'
      'FROM MATRICULAS'
      'WHERE MAT_CODIGO = :OLD_MAT_CODIGO')
    Left = 640
    Top = 208
  end
  object TBMatriculas: TFDQuery
    BeforeInsert = TBMatriculasBeforeInsert
    AfterInsert = TBMatriculasAfterInsert
    BeforeEdit = TBMatriculasBeforeEdit
    BeforePost = TBMatriculasBeforePost
    AfterPost = TBMatriculasAfterPost
    Connection = DM.FDConnection1
    Transaction = TRMatriculas
    UpdateObject = UPMatriculas
    SQL.Strings = (
      'select '
      'MAT_APROVADO,'
      'MAT_CLIENTE,'
      'MAT_CODIGO,'
      'MAT_CONCEITODISCURSO,'
      'MAT_CONCEITOEXERCICIOS,'
      'MAT_CONCEITOGERAL,'
      'MAT_CONCEITOLITERATURA,'
      'MAT_CONTABILIZAR,'
      'MAT_DESISTENCIA,'
      'MAT_DTATUALIZACAO,'
      'MAT_DTCADASTRO,'
      'MAT_HRATUALIZACAO,'
      'MAT_HRCADASTRO,'
      'MAT_MEDIAEXERCICIOS,'
      'MAT_MEDIAFINAL,'
      'MAT_OBSERVACOES,'
      'MAT_STATUS,'
      'MAT_TIPO,'
      'MAT_TIPOMATRICULA,'
      'MAT_TURMA,'
      'MAT_USUARIO,'
      'MAT_VENDA,'
      'MAT_VENDAMATERIAL,'
      'MAT_VENDEDOR,'
      'CLI_NOME,'
      'MOT_DESCRICAO,'
      'TUR_DESCRICAO,'
      'VEN_NOME'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO'
      'left join MOTIVOS on MAT_DESISTENCIA=MOT_CODIGO'
      'where MAT_CODIGO=:codigo'
      '')
    Left = 640
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMatriculasMAT_APROVADO: TStringField
      FieldName = 'MAT_APROVADO'
      Origin = 'MAT_APROVADO'
      Size = 1
    end
    object TBMatriculasMAT_CLIENTE: TIntegerField
      FieldName = 'MAT_CLIENTE'
      Origin = 'MAT_CLIENTE'
      Required = True
    end
    object TBMatriculasMAT_CODIGO: TIntegerField
      FieldName = 'MAT_CODIGO'
      Origin = 'MAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMatriculasMAT_CONCEITODISCURSO: TStringField
      FieldName = 'MAT_CONCEITODISCURSO'
      Origin = 'MAT_CONCEITODISCURSO'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOEXERCICIOS: TStringField
      FieldName = 'MAT_CONCEITOEXERCICIOS'
      Origin = 'MAT_CONCEITOEXERCICIOS'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOGERAL: TStringField
      FieldName = 'MAT_CONCEITOGERAL'
      Origin = 'MAT_CONCEITOGERAL'
      Size = 2
    end
    object TBMatriculasMAT_CONCEITOLITERATURA: TStringField
      FieldName = 'MAT_CONCEITOLITERATURA'
      Origin = 'MAT_CONCEITOLITERATURA'
      Size = 2
    end
    object TBMatriculasMAT_CONTABILIZAR: TStringField
      FieldName = 'MAT_CONTABILIZAR'
      Origin = 'MAT_CONTABILIZAR'
      Size = 1
    end
    object TBMatriculasMAT_DESISTENCIA: TIntegerField
      FieldName = 'MAT_DESISTENCIA'
      Origin = 'MAT_DESISTENCIA'
    end
    object TBMatriculasMAT_DTATUALIZACAO: TDateField
      FieldName = 'MAT_DTATUALIZACAO'
      Origin = 'MAT_DTATUALIZACAO'
    end
    object TBMatriculasMAT_DTCADASTRO: TDateField
      FieldName = 'MAT_DTCADASTRO'
      Origin = 'MAT_DTCADASTRO'
    end
    object TBMatriculasMAT_HRATUALIZACAO: TTimeField
      FieldName = 'MAT_HRATUALIZACAO'
      Origin = 'MAT_HRATUALIZACAO'
    end
    object TBMatriculasMAT_HRCADASTRO: TTimeField
      FieldName = 'MAT_HRCADASTRO'
      Origin = 'MAT_HRCADASTRO'
    end
    object TBMatriculasMAT_MEDIAEXERCICIOS: TFMTBCDField
      FieldName = 'MAT_MEDIAEXERCICIOS'
      Origin = 'MAT_MEDIAEXERCICIOS'
      Precision = 18
    end
    object TBMatriculasMAT_MEDIAFINAL: TFMTBCDField
      FieldName = 'MAT_MEDIAFINAL'
      Origin = 'MAT_MEDIAFINAL'
      Precision = 18
    end
    object TBMatriculasMAT_OBSERVACOES: TMemoField
      FieldName = 'MAT_OBSERVACOES'
      Origin = 'MAT_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBMatriculasMAT_STATUS: TStringField
      FieldName = 'MAT_STATUS'
      Origin = 'MAT_STATUS'
      Size = 1
    end
    object TBMatriculasMAT_TIPO: TStringField
      FieldName = 'MAT_TIPO'
      Origin = 'MAT_TIPO'
      Size = 1
    end
    object TBMatriculasMAT_TIPOMATRICULA: TStringField
      FieldName = 'MAT_TIPOMATRICULA'
      Origin = 'MAT_TIPOMATRICULA'
      Size = 1
    end
    object TBMatriculasMAT_TURMA: TIntegerField
      FieldName = 'MAT_TURMA'
      Origin = 'MAT_TURMA'
      Required = True
    end
    object TBMatriculasMAT_USUARIO: TStringField
      FieldName = 'MAT_USUARIO'
      Origin = 'MAT_USUARIO'
    end
    object TBMatriculasMAT_VENDA: TIntegerField
      FieldName = 'MAT_VENDA'
      Origin = 'MAT_VENDA'
      Required = True
    end
    object TBMatriculasMAT_VENDAMATERIAL: TIntegerField
      FieldName = 'MAT_VENDAMATERIAL'
      Origin = 'MAT_VENDAMATERIAL'
      Required = True
    end
    object TBMatriculasMAT_VENDEDOR: TIntegerField
      FieldName = 'MAT_VENDEDOR'
      Origin = 'MAT_VENDEDOR'
      Required = True
    end
    object TBMatriculasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBMatriculasMOT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOT_DESCRICAO'
      Origin = 'MOT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBMatriculasTUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBMatriculasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRMdfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 672
    Top = 240
  end
  object UPMdfe: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFE'
      '(MDF_AERONAVEMAT, MDF_AERONAVENAC, MDF_AEROPORTODES, '
      '  MDF_AEROPORTOEMB, MDF_CHAVEACESSO, MDF_CIDADEENC, '
      '  MDF_CIDADEENCCODIGO, MDF_CIOT, MDF_CLASSFISCAL, '
      '  MDF_CLIENTE, MDF_CNPJ, MDF_CODIGO, MDF_CODIGOBARRAS, '
      '  MDF_CODIGONUMERICO, MDF_CONSULTADA, MDF_CPF, '
      '  MDF_DTATUALIZACAO, MDF_DTCADASTRO, MDF_DTEMISSAO, '
      '  MDF_DTENC, MDF_ESTADOENC, MDF_ESTADOENCCODIGO, '
      '  MDF_ESTADOFIM, MDF_ESTADOINI, MDF_HRATUALIZACAO, '
      '  MDF_HRCADASTRO, MDF_HREMISSAO, MDF_INFOADICFISCO, '
      
        '  MDF_LOCALCARREGACEP, MDF_LOCALCARREGALAT, MDF_LOCALCARREGALON,' +
        ' '
      '  MDF_LOCALDESCARREGACEP, MDF_LOCALDESCARREGALAT, '
      '  MDF_LOCALDESCARREGALON, MDF_MODAL, MDF_MODELO, '
      '  MDF_MOTIVOCANCELAMENTO, MDF_NOME, MDF_OBSERVACOES, '
      '  MDF_PESOBRUTO, MDF_PRODUTOPREDOM, MDF_PROTOCOLO, '
      '  MDF_PROTOCOLOCANC, MDF_PROTOCOLOCANCDH, MDF_PROTOCOLODH, '
      '  MDF_PROTOCOLOENC, MDF_PROTOCOLOENCDH, MDF_QTDECTE, '
      '  MDF_QTDEMDFE, MDF_QTDENFE, MDF_RCAPACIDADEKG, '
      '  MDF_RCAPACIDADEM3, MDF_RCNPJ, MDF_RCODIGO, '
      '  MDF_RCPF, MDF_RECIBO, MDF_RECIBODH, MDF_RESTADO, '
      '  MDF_RESTADOPROPRIETARIO, MDF_RIE, MDF_RNOME, '
      '  MDF_RNTRC, MDF_RPLACA, MDF_RRENAVAM, MDF_RRNTRC, '
      '  MDF_RTARA, MDF_RTIPOCARROCERIA, MDF_RTIPOPROPRIETARIO, '
      '  MDF_SEGURADORA, MDF_SEGURADORACNPJ, MDF_SEGURADORANOME, '
      '  MDF_SEGURO, MDF_SEGUROAPOLICE, MDF_SEGUROAVERBACAO, '
      '  MDF_SEGUROCNPJ, MDF_SEGUROCPF, MDF_SERIE, '
      '  MDF_STATUS, MDF_TCAPACIDADEKG, MDF_TCAPACIDADEM3, '
      '  MDF_TCNPJ, MDF_TCODIGO, MDF_TCPF, MDF_TESTADO, '
      '  MDF_TESTADOPROPRIETARIO, MDF_TIE, MDF_TIPOCARGA, '
      '  MDF_TIPOEMISSAO, MDF_TIPOEMITENTE, MDF_TIPOMEDIDA, '
      '  MDF_TIPOTRANSPORTADOR, MDF_TNOME, MDF_TPLACA, '
      '  MDF_TRENAVAM, MDF_TRNTRC, MDF_TTARA, MDF_TTIPOCARROCERIA, '
      '  MDF_TTIPOPROPRIETARIO, MDF_TTIPORODADO, MDF_USUARIO, '
      '  MDF_VALORCARGA, MDF_VOODATA, MDF_VOONUMERO)'
      
        'VALUES (:NEW_MDF_AERONAVEMAT, :NEW_MDF_AERONAVENAC, :NEW_MDF_AER' +
        'OPORTODES, '
      
        '  :NEW_MDF_AEROPORTOEMB, :NEW_MDF_CHAVEACESSO, :NEW_MDF_CIDADEEN' +
        'C, '
      
        '  :NEW_MDF_CIDADEENCCODIGO, :NEW_MDF_CIOT, :NEW_MDF_CLASSFISCAL,' +
        ' '
      
        '  :NEW_MDF_CLIENTE, :NEW_MDF_CNPJ, gen_id(GEN_MDFE,1), :NEW_MDF_' +
        'CODIGOBARRAS, '
      '  :NEW_MDF_CODIGONUMERICO, :NEW_MDF_CONSULTADA, :NEW_MDF_CPF, '
      
        '  :NEW_MDF_DTATUALIZACAO, :NEW_MDF_DTCADASTRO, :NEW_MDF_DTEMISSA' +
        'O, '
      '  :NEW_MDF_DTENC, :NEW_MDF_ESTADOENC, :NEW_MDF_ESTADOENCCODIGO, '
      
        '  :NEW_MDF_ESTADOFIM, :NEW_MDF_ESTADOINI, :NEW_MDF_HRATUALIZACAO' +
        ', '
      
        '  :NEW_MDF_HRCADASTRO, :NEW_MDF_HREMISSAO, :NEW_MDF_INFOADICFISC' +
        'O, '
      
        '  :NEW_MDF_LOCALCARREGACEP, :NEW_MDF_LOCALCARREGALAT, :NEW_MDF_L' +
        'OCALCARREGALON, '
      '  :NEW_MDF_LOCALDESCARREGACEP, :NEW_MDF_LOCALDESCARREGALAT, '
      '  :NEW_MDF_LOCALDESCARREGALON, :NEW_MDF_MODAL, :NEW_MDF_MODELO, '
      
        '  :NEW_MDF_MOTIVOCANCELAMENTO, :NEW_MDF_NOME, :NEW_MDF_OBSERVACO' +
        'ES, '
      
        '  :NEW_MDF_PESOBRUTO, :NEW_MDF_PRODUTOPREDOM, :NEW_MDF_PROTOCOLO' +
        ', '
      
        '  :NEW_MDF_PROTOCOLOCANC, :NEW_MDF_PROTOCOLOCANCDH, :NEW_MDF_PRO' +
        'TOCOLODH, '
      
        '  :NEW_MDF_PROTOCOLOENC, :NEW_MDF_PROTOCOLOENCDH, :NEW_MDF_QTDEC' +
        'TE, '
      '  :NEW_MDF_QTDEMDFE, :NEW_MDF_QTDENFE, :NEW_MDF_RCAPACIDADEKG, '
      '  :NEW_MDF_RCAPACIDADEM3, :NEW_MDF_RCNPJ, :NEW_MDF_RCODIGO, '
      
        '  :NEW_MDF_RCPF, :NEW_MDF_RECIBO, :NEW_MDF_RECIBODH, :NEW_MDF_RE' +
        'STADO, '
      '  :NEW_MDF_RESTADOPROPRIETARIO, :NEW_MDF_RIE, :NEW_MDF_RNOME, '
      
        '  :NEW_MDF_RNTRC, :NEW_MDF_RPLACA, :NEW_MDF_RRENAVAM, :NEW_MDF_R' +
        'RNTRC, '
      
        '  :NEW_MDF_RTARA, :NEW_MDF_RTIPOCARROCERIA, :NEW_MDF_RTIPOPROPRI' +
        'ETARIO, '
      
        '  :NEW_MDF_SEGURADORA, :NEW_MDF_SEGURADORACNPJ, :NEW_MDF_SEGURAD' +
        'ORANOME, '
      
        '  :NEW_MDF_SEGURO, :NEW_MDF_SEGUROAPOLICE, :NEW_MDF_SEGUROAVERBA' +
        'CAO, '
      '  :NEW_MDF_SEGUROCNPJ, :NEW_MDF_SEGUROCPF, :NEW_MDF_SERIE, '
      
        '  :NEW_MDF_STATUS, :NEW_MDF_TCAPACIDADEKG, :NEW_MDF_TCAPACIDADEM' +
        '3, '
      
        '  :NEW_MDF_TCNPJ, :NEW_MDF_TCODIGO, :NEW_MDF_TCPF, :NEW_MDF_TEST' +
        'ADO, '
      
        '  :NEW_MDF_TESTADOPROPRIETARIO, :NEW_MDF_TIE, :NEW_MDF_TIPOCARGA' +
        ', '
      
        '  :NEW_MDF_TIPOEMISSAO, :NEW_MDF_TIPOEMITENTE, :NEW_MDF_TIPOMEDI' +
        'DA, '
      '  :NEW_MDF_TIPOTRANSPORTADOR, :NEW_MDF_TNOME, :NEW_MDF_TPLACA, '
      
        '  :NEW_MDF_TRENAVAM, :NEW_MDF_TRNTRC, :NEW_MDF_TTARA, :NEW_MDF_T' +
        'TIPOCARROCERIA, '
      
        '  :NEW_MDF_TTIPOPROPRIETARIO, :NEW_MDF_TTIPORODADO, :NEW_MDF_USU' +
        'ARIO, '
      '  :NEW_MDF_VALORCARGA, :NEW_MDF_VOODATA, :NEW_MDF_VOONUMERO)'
      
        'RETURNING MDF_AERONAVEMAT, MDF_AERONAVENAC, MDF_AEROPORTODES, MD' +
        'F_AEROPORTOEMB, MDF_CHAVEACESSO, MDF_CIDADEENC, MDF_CIDADEENCCOD' +
        'IGO, MDF_CIOT, MDF_CLASSFISCAL, MDF_CLIENTE, MDF_CNPJ, MDF_CODIG' +
        'O, MDF_CODIGOBARRAS, MDF_CODIGONUMERICO, MDF_CONSULTADA, MDF_CPF' +
        ', MDF_DTATUALIZACAO, MDF_DTCADASTRO, MDF_DTEMISSAO, MDF_DTENC, M' +
        'DF_ESTADOENC, MDF_ESTADOENCCODIGO, MDF_ESTADOFIM, MDF_ESTADOINI,' +
        ' MDF_HRATUALIZACAO, MDF_HRCADASTRO, MDF_HREMISSAO, MDF_INFOADICF' +
        'ISCO, MDF_LOCALCARREGACEP, MDF_LOCALCARREGALAT, MDF_LOCALCARREGA' +
        'LON, MDF_LOCALDESCARREGACEP, MDF_LOCALDESCARREGALAT, MDF_LOCALDE' +
        'SCARREGALON, MDF_MODAL, MDF_MODELO, MDF_MOTIVOCANCELAMENTO, MDF_' +
        'NOME, MDF_OBSERVACOES, MDF_PESOBRUTO, MDF_PRODUTOPREDOM, MDF_PRO' +
        'TOCOLO, MDF_PROTOCOLOCANC, MDF_PROTOCOLOCANCDH, MDF_PROTOCOLODH,' +
        ' MDF_PROTOCOLOENC, MDF_PROTOCOLOENCDH, MDF_QTDECTE, MDF_QTDEMDFE' +
        ', MDF_QTDENFE, MDF_RCAPACIDADEKG, MDF_RCAPACIDADEM3, MDF_RCNPJ, ' +
        'MDF_RCODIGO, MDF_RCPF, MDF_RECIBO, MDF_RECIBODH, MDF_RESTADO, MD' +
        'F_RESTADOPROPRIETARIO, MDF_RIE, MDF_RNOME, MDF_RNTRC, MDF_RPLACA' +
        ', MDF_RRENAVAM, MDF_RRNTRC, MDF_RTARA, MDF_RTIPOCARROCERIA, MDF_' +
        'RTIPOPROPRIETARIO, MDF_SEGURADORA, MDF_SEGURADORACNPJ, MDF_SEGUR' +
        'ADORANOME, MDF_SEGURO, MDF_SEGUROAPOLICE, MDF_SEGUROAVERBACAO, M' +
        'DF_SEGUROCNPJ, MDF_SEGUROCPF, MDF_SERIE, MDF_STATUS, MDF_TCAPACI' +
        'DADEKG, MDF_TCAPACIDADEM3, MDF_TCNPJ, MDF_TCODIGO, MDF_TCPF, MDF' +
        '_TESTADO, MDF_TESTADOPROPRIETARIO, MDF_TIE, MDF_TIPOCARGA, MDF_T' +
        'IPOEMISSAO, MDF_TIPOEMITENTE, MDF_TIPOMEDIDA, MDF_TIPOTRANSPORTA' +
        'DOR, MDF_TNOME, MDF_TPLACA, MDF_TRENAVAM, MDF_TRNTRC, MDF_TTARA,' +
        ' MDF_TTIPOCARROCERIA, MDF_TTIPOPROPRIETARIO, MDF_TTIPORODADO, MD' +
        'F_USUARIO, MDF_VALORCARGA, MDF_VOODATA, MDF_VOONUMERO')
    ModifySQL.Strings = (
      'UPDATE MDFE'
      
        'SET MDF_AERONAVEMAT = :NEW_MDF_AERONAVEMAT, MDF_AERONAVENAC = :N' +
        'EW_MDF_AERONAVENAC, '
      
        '  MDF_AEROPORTODES = :NEW_MDF_AEROPORTODES, MDF_AEROPORTOEMB = :' +
        'NEW_MDF_AEROPORTOEMB, '
      
        '  MDF_CHAVEACESSO = :NEW_MDF_CHAVEACESSO, MDF_CIDADEENC = :NEW_M' +
        'DF_CIDADEENC, '
      
        '  MDF_CIDADEENCCODIGO = :NEW_MDF_CIDADEENCCODIGO, MDF_CIOT = :NE' +
        'W_MDF_CIOT, '
      
        '  MDF_CLASSFISCAL = :NEW_MDF_CLASSFISCAL, MDF_CLIENTE = :NEW_MDF' +
        '_CLIENTE, '
      '  MDF_CNPJ = :NEW_MDF_CNPJ, MDF_CODIGO = :NEW_MDF_CODIGO, '
      
        '  MDF_CODIGOBARRAS = :NEW_MDF_CODIGOBARRAS, MDF_CODIGONUMERICO =' +
        ' :NEW_MDF_CODIGONUMERICO, '
      '  MDF_CONSULTADA = :NEW_MDF_CONSULTADA, MDF_CPF = :NEW_MDF_CPF, '
      
        '  MDF_DTATUALIZACAO = :NEW_MDF_DTATUALIZACAO, MDF_DTCADASTRO = :' +
        'NEW_MDF_DTCADASTRO, '
      
        '  MDF_DTEMISSAO = :NEW_MDF_DTEMISSAO, MDF_DTENC = :NEW_MDF_DTENC' +
        ', '
      
        '  MDF_ESTADOENC = :NEW_MDF_ESTADOENC, MDF_ESTADOENCCODIGO = :NEW' +
        '_MDF_ESTADOENCCODIGO, '
      
        '  MDF_ESTADOFIM = :NEW_MDF_ESTADOFIM, MDF_ESTADOINI = :NEW_MDF_E' +
        'STADOINI, '
      
        '  MDF_HRATUALIZACAO = :NEW_MDF_HRATUALIZACAO, MDF_HRCADASTRO = :' +
        'NEW_MDF_HRCADASTRO, '
      
        '  MDF_HREMISSAO = :NEW_MDF_HREMISSAO, MDF_INFOADICFISCO = :NEW_M' +
        'DF_INFOADICFISCO, '
      
        '  MDF_LOCALCARREGACEP = :NEW_MDF_LOCALCARREGACEP, MDF_LOCALCARRE' +
        'GALAT = :NEW_MDF_LOCALCARREGALAT, '
      
        '  MDF_LOCALCARREGALON = :NEW_MDF_LOCALCARREGALON, MDF_LOCALDESCA' +
        'RREGACEP = :NEW_MDF_LOCALDESCARREGACEP, '
      
        '  MDF_LOCALDESCARREGALAT = :NEW_MDF_LOCALDESCARREGALAT, MDF_LOCA' +
        'LDESCARREGALON = :NEW_MDF_LOCALDESCARREGALON, '
      '  MDF_MODAL = :NEW_MDF_MODAL, MDF_MODELO = :NEW_MDF_MODELO, '
      
        '  MDF_MOTIVOCANCELAMENTO = :NEW_MDF_MOTIVOCANCELAMENTO, MDF_NOME' +
        ' = :NEW_MDF_NOME, '
      
        '  MDF_OBSERVACOES = :NEW_MDF_OBSERVACOES, MDF_PESOBRUTO = :NEW_M' +
        'DF_PESOBRUTO, '
      
        '  MDF_PRODUTOPREDOM = :NEW_MDF_PRODUTOPREDOM, MDF_PROTOCOLO = :N' +
        'EW_MDF_PROTOCOLO, '
      
        '  MDF_PROTOCOLOCANC = :NEW_MDF_PROTOCOLOCANC, MDF_PROTOCOLOCANCD' +
        'H = :NEW_MDF_PROTOCOLOCANCDH, '
      
        '  MDF_PROTOCOLODH = :NEW_MDF_PROTOCOLODH, MDF_PROTOCOLOENC = :NE' +
        'W_MDF_PROTOCOLOENC, '
      
        '  MDF_PROTOCOLOENCDH = :NEW_MDF_PROTOCOLOENCDH, MDF_QTDECTE = :N' +
        'EW_MDF_QTDECTE, '
      
        '  MDF_QTDEMDFE = :NEW_MDF_QTDEMDFE, MDF_QTDENFE = :NEW_MDF_QTDEN' +
        'FE, '
      
        '  MDF_RCAPACIDADEKG = :NEW_MDF_RCAPACIDADEKG, MDF_RCAPACIDADEM3 ' +
        '= :NEW_MDF_RCAPACIDADEM3, '
      '  MDF_RCNPJ = :NEW_MDF_RCNPJ, MDF_RCODIGO = :NEW_MDF_RCODIGO, '
      '  MDF_RCPF = :NEW_MDF_RCPF, MDF_RECIBO = :NEW_MDF_RECIBO, '
      
        '  MDF_RECIBODH = :NEW_MDF_RECIBODH, MDF_RESTADO = :NEW_MDF_RESTA' +
        'DO, '
      '  MDF_RESTADOPROPRIETARIO = :NEW_MDF_RESTADOPROPRIETARIO, '
      
        '  MDF_RIE = :NEW_MDF_RIE, MDF_RNOME = :NEW_MDF_RNOME, MDF_RNTRC ' +
        '= :NEW_MDF_RNTRC, '
      
        '  MDF_RPLACA = :NEW_MDF_RPLACA, MDF_RRENAVAM = :NEW_MDF_RRENAVAM' +
        ', '
      '  MDF_RRNTRC = :NEW_MDF_RRNTRC, MDF_RTARA = :NEW_MDF_RTARA, '
      
        '  MDF_RTIPOCARROCERIA = :NEW_MDF_RTIPOCARROCERIA, MDF_RTIPOPROPR' +
        'IETARIO = :NEW_MDF_RTIPOPROPRIETARIO, '
      
        '  MDF_SEGURADORA = :NEW_MDF_SEGURADORA, MDF_SEGURADORACNPJ = :NE' +
        'W_MDF_SEGURADORACNPJ, '
      
        '  MDF_SEGURADORANOME = :NEW_MDF_SEGURADORANOME, MDF_SEGURO = :NE' +
        'W_MDF_SEGURO, '
      
        '  MDF_SEGUROAPOLICE = :NEW_MDF_SEGUROAPOLICE, MDF_SEGUROAVERBACA' +
        'O = :NEW_MDF_SEGUROAVERBACAO, '
      
        '  MDF_SEGUROCNPJ = :NEW_MDF_SEGUROCNPJ, MDF_SEGUROCPF = :NEW_MDF' +
        '_SEGUROCPF, '
      '  MDF_SERIE = :NEW_MDF_SERIE, MDF_STATUS = :NEW_MDF_STATUS, '
      
        '  MDF_TCAPACIDADEKG = :NEW_MDF_TCAPACIDADEKG, MDF_TCAPACIDADEM3 ' +
        '= :NEW_MDF_TCAPACIDADEM3, '
      '  MDF_TCNPJ = :NEW_MDF_TCNPJ, MDF_TCODIGO = :NEW_MDF_TCODIGO, '
      '  MDF_TCPF = :NEW_MDF_TCPF, MDF_TESTADO = :NEW_MDF_TESTADO, '
      '  MDF_TESTADOPROPRIETARIO = :NEW_MDF_TESTADOPROPRIETARIO, '
      '  MDF_TIE = :NEW_MDF_TIE, MDF_TIPOCARGA = :NEW_MDF_TIPOCARGA, '
      
        '  MDF_TIPOEMISSAO = :NEW_MDF_TIPOEMISSAO, MDF_TIPOEMITENTE = :NE' +
        'W_MDF_TIPOEMITENTE, '
      
        '  MDF_TIPOMEDIDA = :NEW_MDF_TIPOMEDIDA, MDF_TIPOTRANSPORTADOR = ' +
        ':NEW_MDF_TIPOTRANSPORTADOR, '
      '  MDF_TNOME = :NEW_MDF_TNOME, MDF_TPLACA = :NEW_MDF_TPLACA, '
      
        '  MDF_TRENAVAM = :NEW_MDF_TRENAVAM, MDF_TRNTRC = :NEW_MDF_TRNTRC' +
        ', '
      
        '  MDF_TTARA = :NEW_MDF_TTARA, MDF_TTIPOCARROCERIA = :NEW_MDF_TTI' +
        'POCARROCERIA, '
      
        '  MDF_TTIPOPROPRIETARIO = :NEW_MDF_TTIPOPROPRIETARIO, MDF_TTIPOR' +
        'ODADO = :NEW_MDF_TTIPORODADO, '
      
        '  MDF_USUARIO = :NEW_MDF_USUARIO, MDF_VALORCARGA = :NEW_MDF_VALO' +
        'RCARGA, '
      
        '  MDF_VOODATA = :NEW_MDF_VOODATA, MDF_VOONUMERO = :NEW_MDF_VOONU' +
        'MERO'
      'WHERE MDF_CODIGO = :OLD_MDF_CODIGO'
      
        'RETURNING MDF_AERONAVEMAT, MDF_AERONAVENAC, MDF_AEROPORTODES, MD' +
        'F_AEROPORTOEMB, MDF_CHAVEACESSO, MDF_CIDADEENC, MDF_CIDADEENCCOD' +
        'IGO, MDF_CIOT, MDF_CLASSFISCAL, MDF_CLIENTE, MDF_CNPJ, MDF_CODIG' +
        'O, MDF_CODIGOBARRAS, MDF_CODIGONUMERICO, MDF_CONSULTADA, MDF_CPF' +
        ', MDF_DTATUALIZACAO, MDF_DTCADASTRO, MDF_DTEMISSAO, MDF_DTENC, M' +
        'DF_ESTADOENC, MDF_ESTADOENCCODIGO, MDF_ESTADOFIM, MDF_ESTADOINI,' +
        ' MDF_HRATUALIZACAO, MDF_HRCADASTRO, MDF_HREMISSAO, MDF_INFOADICF' +
        'ISCO, MDF_LOCALCARREGACEP, MDF_LOCALCARREGALAT, MDF_LOCALCARREGA' +
        'LON, MDF_LOCALDESCARREGACEP, MDF_LOCALDESCARREGALAT, MDF_LOCALDE' +
        'SCARREGALON, MDF_MODAL, MDF_MODELO, MDF_MOTIVOCANCELAMENTO, MDF_' +
        'NOME, MDF_OBSERVACOES, MDF_PESOBRUTO, MDF_PRODUTOPREDOM, MDF_PRO' +
        'TOCOLO, MDF_PROTOCOLOCANC, MDF_PROTOCOLOCANCDH, MDF_PROTOCOLODH,' +
        ' MDF_PROTOCOLOENC, MDF_PROTOCOLOENCDH, MDF_QTDECTE, MDF_QTDEMDFE' +
        ', MDF_QTDENFE, MDF_RCAPACIDADEKG, MDF_RCAPACIDADEM3, MDF_RCNPJ, ' +
        'MDF_RCODIGO, MDF_RCPF, MDF_RECIBO, MDF_RECIBODH, MDF_RESTADO, MD' +
        'F_RESTADOPROPRIETARIO, MDF_RIE, MDF_RNOME, MDF_RNTRC, MDF_RPLACA' +
        ', MDF_RRENAVAM, MDF_RRNTRC, MDF_RTARA, MDF_RTIPOCARROCERIA, MDF_' +
        'RTIPOPROPRIETARIO, MDF_SEGURADORA, MDF_SEGURADORACNPJ, MDF_SEGUR' +
        'ADORANOME, MDF_SEGURO, MDF_SEGUROAPOLICE, MDF_SEGUROAVERBACAO, M' +
        'DF_SEGUROCNPJ, MDF_SEGUROCPF, MDF_SERIE, MDF_STATUS, MDF_TCAPACI' +
        'DADEKG, MDF_TCAPACIDADEM3, MDF_TCNPJ, MDF_TCODIGO, MDF_TCPF, MDF' +
        '_TESTADO, MDF_TESTADOPROPRIETARIO, MDF_TIE, MDF_TIPOCARGA, MDF_T' +
        'IPOEMISSAO, MDF_TIPOEMITENTE, MDF_TIPOMEDIDA, MDF_TIPOTRANSPORTA' +
        'DOR, MDF_TNOME, MDF_TPLACA, MDF_TRENAVAM, MDF_TRNTRC, MDF_TTARA,' +
        ' MDF_TTIPOCARROCERIA, MDF_TTIPOPROPRIETARIO, MDF_TTIPORODADO, MD' +
        'F_USUARIO, MDF_VALORCARGA, MDF_VOODATA, MDF_VOONUMERO')
    DeleteSQL.Strings = (
      'DELETE FROM MDFE'
      'WHERE MDF_CODIGO = :OLD_MDF_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MDF_AERONAVEMAT, MDF_AERONAVENAC, MDF_AEROPORTODES, MDF_A' +
        'EROPORTOEMB, '
      
        '  MDF_CHAVEACESSO, MDF_CIDADEENC, MDF_CIDADEENCCODIGO, MDF_CIOT,' +
        ' '
      
        '  MDF_CLASSFISCAL, MDF_CLIENTE, MDF_CNPJ, MDF_CODIGO, MDF_CODIGO' +
        'BARRAS, '
      
        '  MDF_CODIGONUMERICO, MDF_CONSULTADA, MDF_CPF, MDF_DTATUALIZACAO' +
        ', '
      '  MDF_DTCADASTRO, MDF_DTEMISSAO, MDF_DTENC, MDF_ESTADOENC, '
      
        '  MDF_ESTADOENCCODIGO, MDF_ESTADOFIM, MDF_ESTADOINI, MDF_HRATUAL' +
        'IZACAO, '
      
        '  MDF_HRCADASTRO, MDF_HREMISSAO, MDF_INFOADICFISCO, MDF_LOCALCAR' +
        'REGACEP, '
      
        '  MDF_LOCALCARREGALAT, MDF_LOCALCARREGALON, MDF_LOCALDESCARREGAC' +
        'EP, '
      '  MDF_LOCALDESCARREGALAT, MDF_LOCALDESCARREGALON, MDF_MODAL, '
      
        '  MDF_MODELO, MDF_MOTIVOCANCELAMENTO, MDF_NOME, MDF_OBSERVACOES,' +
        ' '
      
        '  MDF_PESOBRUTO, MDF_PRODUTOPREDOM, MDF_PROTOCOLO, MDF_PROTOCOLO' +
        'CANC, '
      '  MDF_PROTOCOLOCANCDH, MDF_PROTOCOLODH, MDF_PROTOCOLOENC, '
      '  MDF_PROTOCOLOENCDH, MDF_QTDECTE, MDF_QTDEMDFE, MDF_QTDENFE, '
      '  MDF_RCAPACIDADEKG, MDF_RCAPACIDADEM3, MDF_RCNPJ, MDF_RCODIGO, '
      
        '  MDF_RCPF, MDF_RECIBO, MDF_RECIBODH, MDF_RESTADO, MDF_RESTADOPR' +
        'OPRIETARIO, '
      '  MDF_RIE, MDF_RNOME, MDF_RNTRC, MDF_RPLACA, MDF_RRENAVAM, '
      
        '  MDF_RRNTRC, MDF_RTARA, MDF_RTIPOCARROCERIA, MDF_RTIPOPROPRIETA' +
        'RIO, '
      '  MDF_SEGURADORA, MDF_SEGURADORACNPJ, MDF_SEGURADORANOME, '
      
        '  MDF_SEGURO, MDF_SEGUROAPOLICE, MDF_SEGUROAVERBACAO, MDF_SEGURO' +
        'CNPJ, '
      '  MDF_SEGUROCPF, MDF_SERIE, MDF_STATUS, MDF_TCAPACIDADEKG, '
      
        '  MDF_TCAPACIDADEM3, MDF_TCNPJ, MDF_TCODIGO, MDF_TCPF, MDF_TESTA' +
        'DO, '
      
        '  MDF_TESTADOPROPRIETARIO, MDF_TIE, MDF_TIPOCARGA, MDF_TIPOEMISS' +
        'AO, '
      '  MDF_TIPOEMITENTE, MDF_TIPOMEDIDA, MDF_TIPOTRANSPORTADOR, '
      '  MDF_TNOME, MDF_TPLACA, MDF_TRENAVAM, MDF_TRNTRC, MDF_TTARA, '
      '  MDF_TTIPOCARROCERIA, MDF_TTIPOPROPRIETARIO, MDF_TTIPORODADO, '
      '  MDF_USUARIO, MDF_VALORCARGA, MDF_VOODATA, MDF_VOONUMERO'
      'FROM MDFE'
      'WHERE MDF_CODIGO = :OLD_MDF_CODIGO')
    Left = 672
    Top = 208
  end
  object TBMdfe: TFDQuery
    BeforeInsert = TBMdfeBeforeInsert
    AfterInsert = TBMdfeAfterInsert
    BeforeEdit = TBMdfeBeforeEdit
    AfterEdit = TBMdfeAfterEdit
    BeforePost = TBMdfeBeforePost
    AfterPost = TBMdfeAfterPost
    Connection = DM.FDConnection1
    Transaction = TRMdfe
    UpdateObject = UPMdfe
    SQL.Strings = (
      'select'
      'MDF_AERONAVEMAT,'
      'MDF_AERONAVENAC,'
      'MDF_AEROPORTODES,'
      'MDF_AEROPORTOEMB,'
      'MDF_CHAVEACESSO,'
      'MDF_CIDADEENC,'
      'MDF_CIDADEENCCODIGO,'
      'MDF_CIOT,'
      'MDF_CLASSFISCAL,'
      'MDF_CLIENTE,'
      'MDF_CNPJ,'
      'MDF_CODIGO,'
      'MDF_CODIGOBARRAS,'
      'MDF_CODIGONUMERICO,'
      'MDF_CONSULTADA,'
      'MDF_CPF,'
      'MDF_DTATUALIZACAO,'
      'MDF_DTCADASTRO,'
      'MDF_DTEMISSAO,'
      'MDF_DTENC,'
      'MDF_ESTADOENC,'
      'MDF_ESTADOENCCODIGO,'
      'MDF_ESTADOFIM,'
      'MDF_ESTADOINI,'
      'MDF_HRATUALIZACAO,'
      'MDF_HRCADASTRO,'
      'MDF_HREMISSAO,'
      'MDF_INFOADICFISCO,'
      'MDF_LOCALCARREGACEP,'
      'MDF_LOCALCARREGALAT,'
      'MDF_LOCALCARREGALON,'
      'MDF_LOCALDESCARREGACEP,'
      'MDF_LOCALDESCARREGALAT,'
      'MDF_LOCALDESCARREGALON,'
      'MDF_MODAL,'
      'MDF_MODELO,'
      'MDF_MOTIVOCANCELAMENTO,'
      'MDF_NOME,'
      'MDF_OBSERVACOES,'
      'MDF_PESOBRUTO,'
      'MDF_PRODUTOPREDOM,'
      'MDF_PROTOCOLO,'
      'MDF_PROTOCOLOCANC,'
      'MDF_PROTOCOLOCANCDH,'
      'MDF_PROTOCOLODH,'
      'MDF_PROTOCOLOENC,'
      'MDF_PROTOCOLOENCDH,'
      'MDF_QTDECTE,'
      'MDF_QTDEMDFE,'
      'MDF_QTDENFE,'
      'MDF_RCAPACIDADEKG,'
      'MDF_RCAPACIDADEM3,'
      'MDF_RCNPJ,'
      'MDF_RCODIGO,'
      'MDF_RCPF,'
      'MDF_RECIBO,'
      'MDF_RECIBODH,'
      'MDF_RESTADO,'
      'MDF_RESTADOPROPRIETARIO,'
      'MDF_RIE,'
      'MDF_RNOME,'
      'MDF_RNTRC,'
      'MDF_RPLACA,'
      'MDF_RRENAVAM,'
      'MDF_RRNTRC,'
      'MDF_RTARA,'
      'MDF_RTIPOCARROCERIA,'
      'MDF_RTIPOPROPRIETARIO,'
      'MDF_SEGURADORA,'
      'MDF_SEGURADORACNPJ,'
      'MDF_SEGURADORANOME,'
      'MDF_SEGURO,'
      'MDF_SEGUROAPOLICE,'
      'MDF_SEGUROAVERBACAO,'
      'MDF_SEGUROCNPJ,'
      'MDF_SEGUROCPF,'
      'MDF_SERIE,'
      'MDF_STATUS,'
      'MDF_TCAPACIDADEKG,'
      'MDF_TCAPACIDADEM3,'
      'MDF_TCNPJ,'
      'MDF_TCODIGO,'
      'MDF_TCPF,'
      'MDF_TESTADO,'
      'MDF_TESTADOPROPRIETARIO,'
      'MDF_TIE,'
      'MDF_TIPOCARGA,'
      'MDF_TIPOEMISSAO,'
      'MDF_TIPOEMITENTE,'
      'MDF_TIPOMEDIDA,'
      'MDF_TIPOTRANSPORTADOR,'
      'MDF_TNOME,'
      'MDF_TPLACA,'
      'MDF_TRENAVAM,'
      'MDF_TRNTRC,'
      'MDF_TTARA,'
      'MDF_TTIPOCARROCERIA,'
      'MDF_TTIPOPROPRIETARIO,'
      'MDF_TTIPORODADO,'
      'MDF_USUARIO,'
      'MDF_VALORCARGA,'
      'MDF_VOODATA,'
      'MDF_VOONUMERO'
      'from MDFE'
      'where MDF_CODIGO=:codigo'
      '')
    Left = 672
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfeMDF_AERONAVEMAT: TStringField
      FieldName = 'MDF_AERONAVEMAT'
      Origin = 'MDF_AERONAVEMAT'
      Size = 10
    end
    object TBMdfeMDF_AERONAVENAC: TStringField
      FieldName = 'MDF_AERONAVENAC'
      Origin = 'MDF_AERONAVENAC'
      Size = 5
    end
    object TBMdfeMDF_AEROPORTODES: TStringField
      FieldName = 'MDF_AEROPORTODES'
      Origin = 'MDF_AEROPORTODES'
      Size = 5
    end
    object TBMdfeMDF_AEROPORTOEMB: TStringField
      FieldName = 'MDF_AEROPORTOEMB'
      Origin = 'MDF_AEROPORTOEMB'
      Size = 5
    end
    object TBMdfeMDF_CHAVEACESSO: TStringField
      FieldName = 'MDF_CHAVEACESSO'
      Origin = 'MDF_CHAVEACESSO'
      Size = 50
    end
    object TBMdfeMDF_CIDADEENC: TStringField
      FieldName = 'MDF_CIDADEENC'
      Origin = 'MDF_CIDADEENC'
      Size = 50
    end
    object TBMdfeMDF_CIDADEENCCODIGO: TIntegerField
      FieldName = 'MDF_CIDADEENCCODIGO'
      Origin = 'MDF_CIDADEENCCODIGO'
    end
    object TBMdfeMDF_CIOT: TStringField
      FieldName = 'MDF_CIOT'
      Origin = 'MDF_CIOT'
      Size = 15
    end
    object TBMdfeMDF_CLASSFISCAL: TStringField
      FieldName = 'MDF_CLASSFISCAL'
      Origin = 'MDF_CLASSFISCAL'
    end
    object TBMdfeMDF_CLIENTE: TIntegerField
      FieldName = 'MDF_CLIENTE'
      Origin = 'MDF_CLIENTE'
      Required = True
    end
    object TBMdfeMDF_CNPJ: TStringField
      FieldName = 'MDF_CNPJ'
      Origin = 'MDF_CNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBMdfeMDF_CODIGO: TIntegerField
      FieldName = 'MDF_CODIGO'
      Origin = 'MDF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfeMDF_CODIGOBARRAS: TStringField
      FieldName = 'MDF_CODIGOBARRAS'
      Origin = 'MDF_CODIGOBARRAS'
      Size = 60
    end
    object TBMdfeMDF_CODIGONUMERICO: TIntegerField
      FieldName = 'MDF_CODIGONUMERICO'
      Origin = 'MDF_CODIGONUMERICO'
    end
    object TBMdfeMDF_CONSULTADA: TStringField
      FieldName = 'MDF_CONSULTADA'
      Origin = 'MDF_CONSULTADA'
      Size = 1
    end
    object TBMdfeMDF_CPF: TStringField
      FieldName = 'MDF_CPF'
      Origin = 'MDF_CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBMdfeMDF_DTATUALIZACAO: TDateField
      FieldName = 'MDF_DTATUALIZACAO'
      Origin = 'MDF_DTATUALIZACAO'
    end
    object TBMdfeMDF_DTCADASTRO: TDateField
      FieldName = 'MDF_DTCADASTRO'
      Origin = 'MDF_DTCADASTRO'
    end
    object TBMdfeMDF_DTEMISSAO: TDateField
      FieldName = 'MDF_DTEMISSAO'
      Origin = 'MDF_DTEMISSAO'
    end
    object TBMdfeMDF_DTENC: TDateField
      FieldName = 'MDF_DTENC'
      Origin = 'MDF_DTENC'
    end
    object TBMdfeMDF_ESTADOENC: TStringField
      FieldName = 'MDF_ESTADOENC'
      Origin = 'MDF_ESTADOENC'
      Size = 2
    end
    object TBMdfeMDF_ESTADOENCCODIGO: TIntegerField
      FieldName = 'MDF_ESTADOENCCODIGO'
      Origin = 'MDF_ESTADOENCCODIGO'
    end
    object TBMdfeMDF_ESTADOFIM: TStringField
      FieldName = 'MDF_ESTADOFIM'
      Origin = 'MDF_ESTADOFIM'
      Size = 2
    end
    object TBMdfeMDF_ESTADOINI: TStringField
      FieldName = 'MDF_ESTADOINI'
      Origin = 'MDF_ESTADOINI'
      Size = 2
    end
    object TBMdfeMDF_HRATUALIZACAO: TTimeField
      FieldName = 'MDF_HRATUALIZACAO'
      Origin = 'MDF_HRATUALIZACAO'
    end
    object TBMdfeMDF_HRCADASTRO: TTimeField
      FieldName = 'MDF_HRCADASTRO'
      Origin = 'MDF_HRCADASTRO'
    end
    object TBMdfeMDF_HREMISSAO: TTimeField
      FieldName = 'MDF_HREMISSAO'
      Origin = 'MDF_HREMISSAO'
    end
    object TBMdfeMDF_INFOADICFISCO: TMemoField
      FieldName = 'MDF_INFOADICFISCO'
      Origin = 'MDF_INFOADICFISCO'
      BlobType = ftMemo
    end
    object TBMdfeMDF_LOCALCARREGACEP: TStringField
      FieldName = 'MDF_LOCALCARREGACEP'
      Origin = 'MDF_LOCALCARREGACEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBMdfeMDF_LOCALCARREGALAT: TSingleField
      FieldName = 'MDF_LOCALCARREGALAT'
      Origin = 'MDF_LOCALCARREGALAT'
    end
    object TBMdfeMDF_LOCALCARREGALON: TSingleField
      FieldName = 'MDF_LOCALCARREGALON'
      Origin = 'MDF_LOCALCARREGALON'
    end
    object TBMdfeMDF_LOCALDESCARREGACEP: TStringField
      FieldName = 'MDF_LOCALDESCARREGACEP'
      Origin = 'MDF_LOCALDESCARREGACEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBMdfeMDF_LOCALDESCARREGALAT: TSingleField
      FieldName = 'MDF_LOCALDESCARREGALAT'
      Origin = 'MDF_LOCALDESCARREGALAT'
    end
    object TBMdfeMDF_LOCALDESCARREGALON: TSingleField
      FieldName = 'MDF_LOCALDESCARREGALON'
      Origin = 'MDF_LOCALDESCARREGALON'
    end
    object TBMdfeMDF_MODAL: TStringField
      FieldName = 'MDF_MODAL'
      Origin = 'MDF_MODAL'
      Size = 40
    end
    object TBMdfeMDF_MODELO: TIntegerField
      FieldName = 'MDF_MODELO'
      Origin = 'MDF_MODELO'
    end
    object TBMdfeMDF_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'MDF_MOTIVOCANCELAMENTO'
      Origin = 'MDF_MOTIVOCANCELAMENTO'
      Size = 120
    end
    object TBMdfeMDF_NOME: TStringField
      FieldName = 'MDF_NOME'
      Origin = 'MDF_NOME'
      Size = 80
    end
    object TBMdfeMDF_OBSERVACOES: TMemoField
      FieldName = 'MDF_OBSERVACOES'
      Origin = 'MDF_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBMdfeMDF_PESOBRUTO: TFMTBCDField
      FieldName = 'MDF_PESOBRUTO'
      Origin = 'MDF_PESOBRUTO'
      Precision = 18
    end
    object TBMdfeMDF_PRODUTOPREDOM: TStringField
      FieldName = 'MDF_PRODUTOPREDOM'
      Origin = 'MDF_PRODUTOPREDOM'
      Size = 50
    end
    object TBMdfeMDF_PROTOCOLO: TStringField
      FieldName = 'MDF_PROTOCOLO'
      Origin = 'MDF_PROTOCOLO'
      Size = 40
    end
    object TBMdfeMDF_PROTOCOLOCANC: TStringField
      FieldName = 'MDF_PROTOCOLOCANC'
      Origin = 'MDF_PROTOCOLOCANC'
      Size = 40
    end
    object TBMdfeMDF_PROTOCOLOCANCDH: TStringField
      FieldName = 'MDF_PROTOCOLOCANCDH'
      Origin = 'MDF_PROTOCOLOCANCDH'
      Size = 30
    end
    object TBMdfeMDF_PROTOCOLODH: TStringField
      FieldName = 'MDF_PROTOCOLODH'
      Origin = 'MDF_PROTOCOLODH'
      Size = 30
    end
    object TBMdfeMDF_PROTOCOLOENC: TStringField
      FieldName = 'MDF_PROTOCOLOENC'
      Origin = 'MDF_PROTOCOLOENC'
      Size = 40
    end
    object TBMdfeMDF_PROTOCOLOENCDH: TStringField
      FieldName = 'MDF_PROTOCOLOENCDH'
      Origin = 'MDF_PROTOCOLOENCDH'
      Size = 30
    end
    object TBMdfeMDF_QTDECTE: TIntegerField
      FieldName = 'MDF_QTDECTE'
      Origin = 'MDF_QTDECTE'
    end
    object TBMdfeMDF_QTDEMDFE: TIntegerField
      FieldName = 'MDF_QTDEMDFE'
      Origin = 'MDF_QTDEMDFE'
    end
    object TBMdfeMDF_QTDENFE: TIntegerField
      FieldName = 'MDF_QTDENFE'
      Origin = 'MDF_QTDENFE'
    end
    object TBMdfeMDF_RCAPACIDADEKG: TFMTBCDField
      FieldName = 'MDF_RCAPACIDADEKG'
      Origin = 'MDF_RCAPACIDADEKG'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RCAPACIDADEM3: TFMTBCDField
      FieldName = 'MDF_RCAPACIDADEM3'
      Origin = 'MDF_RCAPACIDADEM3'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RCNPJ: TStringField
      FieldName = 'MDF_RCNPJ'
      Origin = 'MDF_RCNPJ'
    end
    object TBMdfeMDF_RCODIGO: TIntegerField
      FieldName = 'MDF_RCODIGO'
      Origin = 'MDF_RCODIGO'
    end
    object TBMdfeMDF_RCPF: TStringField
      FieldName = 'MDF_RCPF'
      Origin = 'MDF_RCPF'
    end
    object TBMdfeMDF_RECIBO: TStringField
      FieldName = 'MDF_RECIBO'
      Origin = 'MDF_RECIBO'
      Size = 40
    end
    object TBMdfeMDF_RECIBODH: TStringField
      FieldName = 'MDF_RECIBODH'
      Origin = 'MDF_RECIBODH'
      Size = 30
    end
    object TBMdfeMDF_RESTADO: TStringField
      FieldName = 'MDF_RESTADO'
      Origin = 'MDF_RESTADO'
      Size = 2
    end
    object TBMdfeMDF_RESTADOPROPRIETARIO: TStringField
      FieldName = 'MDF_RESTADOPROPRIETARIO'
      Origin = 'MDF_RESTADOPROPRIETARIO'
      Size = 2
    end
    object TBMdfeMDF_RIE: TStringField
      FieldName = 'MDF_RIE'
      Origin = 'MDF_RIE'
    end
    object TBMdfeMDF_RNOME: TStringField
      FieldName = 'MDF_RNOME'
      Origin = 'MDF_RNOME'
      Size = 80
    end
    object TBMdfeMDF_RNTRC: TStringField
      FieldName = 'MDF_RNTRC'
      Origin = 'MDF_RNTRC'
    end
    object TBMdfeMDF_RPLACA: TStringField
      FieldName = 'MDF_RPLACA'
      Origin = 'MDF_RPLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBMdfeMDF_RRENAVAM: TStringField
      FieldName = 'MDF_RRENAVAM'
      Origin = 'MDF_RRENAVAM'
    end
    object TBMdfeMDF_RRNTRC: TStringField
      FieldName = 'MDF_RRNTRC'
      Origin = 'MDF_RRNTRC'
    end
    object TBMdfeMDF_RTARA: TFMTBCDField
      FieldName = 'MDF_RTARA'
      Origin = 'MDF_RTARA'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_RTIPOCARROCERIA: TStringField
      FieldName = 'MDF_RTIPOCARROCERIA'
      Origin = 'MDF_RTIPOCARROCERIA'
    end
    object TBMdfeMDF_RTIPOPROPRIETARIO: TStringField
      FieldName = 'MDF_RTIPOPROPRIETARIO'
      Origin = 'MDF_RTIPOPROPRIETARIO'
      Size = 25
    end
    object TBMdfeMDF_SEGURADORA: TIntegerField
      FieldName = 'MDF_SEGURADORA'
      Origin = 'MDF_SEGURADORA'
    end
    object TBMdfeMDF_SEGURADORACNPJ: TStringField
      FieldName = 'MDF_SEGURADORACNPJ'
      Origin = 'MDF_SEGURADORACNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBMdfeMDF_SEGURADORANOME: TStringField
      FieldName = 'MDF_SEGURADORANOME'
      Origin = 'MDF_SEGURADORANOME'
      Size = 80
    end
    object TBMdfeMDF_SEGURO: TStringField
      FieldName = 'MDF_SEGURO'
      Origin = 'MDF_SEGURO'
    end
    object TBMdfeMDF_SEGUROAPOLICE: TStringField
      FieldName = 'MDF_SEGUROAPOLICE'
      Origin = 'MDF_SEGUROAPOLICE'
    end
    object TBMdfeMDF_SEGUROAVERBACAO: TStringField
      FieldName = 'MDF_SEGUROAVERBACAO'
      Origin = 'MDF_SEGUROAVERBACAO'
    end
    object TBMdfeMDF_SEGUROCNPJ: TStringField
      FieldName = 'MDF_SEGUROCNPJ'
      Origin = 'MDF_SEGUROCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBMdfeMDF_SEGUROCPF: TStringField
      FieldName = 'MDF_SEGUROCPF'
      Origin = 'MDF_SEGUROCPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBMdfeMDF_SERIE: TIntegerField
      FieldName = 'MDF_SERIE'
      Origin = 'MDF_SERIE'
    end
    object TBMdfeMDF_STATUS: TStringField
      FieldName = 'MDF_STATUS'
      Origin = 'MDF_STATUS'
      Size = 1
    end
    object TBMdfeMDF_TCAPACIDADEKG: TFMTBCDField
      FieldName = 'MDF_TCAPACIDADEKG'
      Origin = 'MDF_TCAPACIDADEKG'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TCAPACIDADEM3: TFMTBCDField
      FieldName = 'MDF_TCAPACIDADEM3'
      Origin = 'MDF_TCAPACIDADEM3'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TCNPJ: TStringField
      FieldName = 'MDF_TCNPJ'
      Origin = 'MDF_TCNPJ'
    end
    object TBMdfeMDF_TCODIGO: TIntegerField
      FieldName = 'MDF_TCODIGO'
      Origin = 'MDF_TCODIGO'
    end
    object TBMdfeMDF_TCPF: TStringField
      FieldName = 'MDF_TCPF'
      Origin = 'MDF_TCPF'
    end
    object TBMdfeMDF_TESTADO: TStringField
      FieldName = 'MDF_TESTADO'
      Origin = 'MDF_TESTADO'
      Size = 2
    end
    object TBMdfeMDF_TESTADOPROPRIETARIO: TStringField
      FieldName = 'MDF_TESTADOPROPRIETARIO'
      Origin = 'MDF_TESTADOPROPRIETARIO'
      Size = 2
    end
    object TBMdfeMDF_TIE: TStringField
      FieldName = 'MDF_TIE'
      Origin = 'MDF_TIE'
    end
    object TBMdfeMDF_TIPOCARGA: TStringField
      FieldName = 'MDF_TIPOCARGA'
      Origin = 'MDF_TIPOCARGA'
      Size = 40
    end
    object TBMdfeMDF_TIPOEMISSAO: TStringField
      FieldName = 'MDF_TIPOEMISSAO'
      Origin = 'MDF_TIPOEMISSAO'
      Size = 40
    end
    object TBMdfeMDF_TIPOEMITENTE: TStringField
      FieldName = 'MDF_TIPOEMITENTE'
      Origin = 'MDF_TIPOEMITENTE'
      Size = 50
    end
    object TBMdfeMDF_TIPOMEDIDA: TStringField
      FieldName = 'MDF_TIPOMEDIDA'
      Origin = 'MDF_TIPOMEDIDA'
    end
    object TBMdfeMDF_TIPOTRANSPORTADOR: TStringField
      FieldName = 'MDF_TIPOTRANSPORTADOR'
      Origin = 'MDF_TIPOTRANSPORTADOR'
      Size = 10
    end
    object TBMdfeMDF_TNOME: TStringField
      FieldName = 'MDF_TNOME'
      Origin = 'MDF_TNOME'
      Size = 80
    end
    object TBMdfeMDF_TPLACA: TStringField
      FieldName = 'MDF_TPLACA'
      Origin = 'MDF_TPLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBMdfeMDF_TRENAVAM: TStringField
      FieldName = 'MDF_TRENAVAM'
      Origin = 'MDF_TRENAVAM'
    end
    object TBMdfeMDF_TRNTRC: TStringField
      FieldName = 'MDF_TRNTRC'
      Origin = 'MDF_TRNTRC'
    end
    object TBMdfeMDF_TTARA: TFMTBCDField
      FieldName = 'MDF_TTARA'
      Origin = 'MDF_TTARA'
      Precision = 18
      Size = 3
    end
    object TBMdfeMDF_TTIPOCARROCERIA: TStringField
      FieldName = 'MDF_TTIPOCARROCERIA'
      Origin = 'MDF_TTIPOCARROCERIA'
    end
    object TBMdfeMDF_TTIPOPROPRIETARIO: TStringField
      FieldName = 'MDF_TTIPOPROPRIETARIO'
      Origin = 'MDF_TTIPOPROPRIETARIO'
      Size = 25
    end
    object TBMdfeMDF_TTIPORODADO: TStringField
      FieldName = 'MDF_TTIPORODADO'
      Origin = 'MDF_TTIPORODADO'
    end
    object TBMdfeMDF_USUARIO: TStringField
      FieldName = 'MDF_USUARIO'
      Origin = 'MDF_USUARIO'
    end
    object TBMdfeMDF_VALORCARGA: TFMTBCDField
      FieldName = 'MDF_VALORCARGA'
      Origin = 'MDF_VALORCARGA'
      currency = True
      Precision = 18
    end
    object TBMdfeMDF_VOODATA: TDateField
      FieldName = 'MDF_VOODATA'
      Origin = 'MDF_VOODATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBMdfeMDF_VOONUMERO: TStringField
      FieldName = 'MDF_VOONUMERO'
      Origin = 'MDF_VOONUMERO'
      Size = 10
    end
  end
  object TRMdfeCarrega: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 704
    Top = 240
  end
  object UPMdfeCarrega: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFECARREGA'
      '(MDC_CIDADE, MDC_CIDADECODIGO, MDC_CODIGO, MDC_MDFE)'
      
        'VALUES (:NEW_MDC_CIDADE, :NEW_MDC_CIDADECODIGO, gen_id(GEN_MDFEC' +
        'ARREGA,1), :NEW_MDC_MDFE)'
      'RETURNING MDC_CIDADE, MDC_CIDADECODIGO, MDC_CODIGO, MDC_MDFE')
    ModifySQL.Strings = (
      'UPDATE MDFECARREGA'
      
        'SET MDC_CIDADE = :NEW_MDC_CIDADE, MDC_CIDADECODIGO = :NEW_MDC_CI' +
        'DADECODIGO, '
      '  MDC_CODIGO = :NEW_MDC_CODIGO, MDC_MDFE = :NEW_MDC_MDFE'
      'WHERE MDC_CODIGO = :OLD_MDC_CODIGO'
      'RETURNING MDC_CIDADE, MDC_CIDADECODIGO, MDC_CODIGO, MDC_MDFE')
    DeleteSQL.Strings = (
      'DELETE FROM MDFECARREGA'
      'WHERE MDC_CODIGO = :OLD_MDC_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MDC_CIDADE, MDC_CIDADECODIGO, MDC_CODIGO, MDC_MDFE'
      'FROM MDFECARREGA'
      'WHERE MDC_CODIGO = :OLD_MDC_CODIGO')
    Left = 704
    Top = 208
  end
  object TBMdfeCarrega: TFDQuery
    AfterInsert = TBMdfeCarregaAfterInsert
    MasterSource = DSMdfe
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMdfeCarrega
    UpdateObject = UPMdfeCarrega
    SQL.Strings = (
      'select'
      'MDC_CIDADE,'
      'MDC_CIDADECODIGO,'
      'MDC_CODIGO,'
      'MDC_MDFE'
      'from MDFECARREGA'
      'where MDC_MDFE=:MDF_CODIGO'
      'order by MDC_CIDADE'
      '')
    Left = 704
    Top = 176
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfeCarregaMDC_CIDADE: TStringField
      FieldName = 'MDC_CIDADE'
      Origin = 'MDC_CIDADE'
      Size = 50
    end
    object TBMdfeCarregaMDC_CIDADECODIGO: TIntegerField
      FieldName = 'MDC_CIDADECODIGO'
      Origin = 'MDC_CIDADECODIGO'
    end
    object TBMdfeCarregaMDC_CODIGO: TIntegerField
      FieldName = 'MDC_CODIGO'
      Origin = 'MDC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfeCarregaMDC_MDFE: TIntegerField
      FieldName = 'MDC_MDFE'
      Origin = 'MDC_MDFE'
      Required = True
    end
  end
  object TRMdfeDescarrega: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 736
    Top = 240
  end
  object UPMdfeDescarrega: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFEDESCARREGA'
      '(MDD_CIDADE, MDD_CIDADECODIGO, MDD_CODIGO, MDD_MDFE)'
      
        'VALUES (:NEW_MDD_CIDADE, :NEW_MDD_CIDADECODIGO, gen_id(GEN_MDFED' +
        'ESCARREGA,1), :NEW_MDD_MDFE)'
      'RETURNING MDD_CIDADE, MDD_CIDADECODIGO, MDD_CODIGO, MDD_MDFE')
    ModifySQL.Strings = (
      'UPDATE MDFEDESCARREGA'
      
        'SET MDD_CIDADE = :NEW_MDD_CIDADE, MDD_CIDADECODIGO = :NEW_MDD_CI' +
        'DADECODIGO, '
      '  MDD_CODIGO = :NEW_MDD_CODIGO, MDD_MDFE = :NEW_MDD_MDFE'
      'WHERE MDD_CODIGO = :OLD_MDD_CODIGO'
      'RETURNING MDD_CIDADE, MDD_CIDADECODIGO, MDD_CODIGO, MDD_MDFE')
    DeleteSQL.Strings = (
      'DELETE FROM MDFEDESCARREGA'
      'WHERE MDD_CODIGO = :OLD_MDD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MDD_CIDADE, MDD_CIDADECODIGO, MDD_CODIGO, MDD_MDFE'
      'FROM MDFEDESCARREGA'
      'WHERE MDD_CODIGO = :OLD_MDD_CODIGO')
    Left = 736
    Top = 208
  end
  object TBMdfeDescarrega: TFDQuery
    AfterInsert = TBMdfeDescarregaAfterInsert
    AfterPost = TBMdfeDescarregaAfterPost
    AfterDelete = TBMdfeDescarregaAfterDelete
    MasterSource = DSMdfe
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMdfeDescarrega
    UpdateObject = UPMdfeDescarrega
    SQL.Strings = (
      'select'
      'MDD_CIDADE,'
      'MDD_CIDADECODIGO,'
      'MDD_CODIGO,'
      'MDD_MDFE'
      'from MDFEDESCARREGA'
      'where MDD_MDFE=:MDF_CODIGO'
      'order by MDD_CIDADE'
      '')
    Left = 736
    Top = 176
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfeDescarregaMDD_CIDADE: TStringField
      FieldName = 'MDD_CIDADE'
      Origin = 'MDD_CIDADE'
      Size = 50
    end
    object TBMdfeDescarregaMDD_CIDADECODIGO: TIntegerField
      FieldName = 'MDD_CIDADECODIGO'
      Origin = 'MDD_CIDADECODIGO'
      Required = True
    end
    object TBMdfeDescarregaMDD_CODIGO: TIntegerField
      FieldName = 'MDD_CODIGO'
      Origin = 'MDD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfeDescarregaMDD_MDFE: TIntegerField
      FieldName = 'MDD_MDFE'
      Origin = 'MDD_MDFE'
      Required = True
    end
  end
  object TRMdfeDocs: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 768
    Top = 240
  end
  object UPMdfeDocs: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFEDOCS'
      '(MFD_CHAVEACESSO, MFD_CODIGO, MFD_CODIGOBARRAS, '
      '  MFD_MDFE, MFD_MDFEDESCARREGA, MFD_TIPODOC)'
      
        'VALUES (:NEW_MFD_CHAVEACESSO, gen_id(GEN_MDFEDOCS,1), :NEW_MFD_C' +
        'ODIGOBARRAS, '
      '  :NEW_MFD_MDFE, :NEW_MFD_MDFEDESCARREGA, :NEW_MFD_TIPODOC)'
      
        'RETURNING MFD_CHAVEACESSO, MFD_CODIGO, MFD_CODIGOBARRAS, MFD_MDF' +
        'E, MFD_MDFEDESCARREGA, MFD_TIPODOC')
    ModifySQL.Strings = (
      'UPDATE MDFEDOCS'
      
        'SET MFD_CHAVEACESSO = :NEW_MFD_CHAVEACESSO, MFD_CODIGO = :NEW_MF' +
        'D_CODIGO, '
      
        '  MFD_CODIGOBARRAS = :NEW_MFD_CODIGOBARRAS, MFD_MDFE = :NEW_MFD_' +
        'MDFE, '
      
        '  MFD_MDFEDESCARREGA = :NEW_MFD_MDFEDESCARREGA, MFD_TIPODOC = :N' +
        'EW_MFD_TIPODOC'
      'WHERE MFD_CODIGO = :OLD_MFD_CODIGO'
      
        'RETURNING MFD_CHAVEACESSO, MFD_CODIGO, MFD_CODIGOBARRAS, MFD_MDF' +
        'E, MFD_MDFEDESCARREGA, MFD_TIPODOC')
    DeleteSQL.Strings = (
      'DELETE FROM MDFEDOCS'
      'WHERE MFD_CODIGO = :OLD_MFD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MFD_CHAVEACESSO, MFD_CODIGO, MFD_CODIGOBARRAS, MFD_MDFE, ' +
        'MFD_MDFEDESCARREGA, '
      '  MFD_TIPODOC'
      'FROM MDFEDOCS'
      'WHERE MFD_CODIGO = :OLD_MFD_CODIGO')
    Left = 768
    Top = 208
  end
  object TBMdfeDocs: TFDQuery
    AfterInsert = TBMdfeDocsAfterInsert
    AfterPost = TBMdfeDocsAfterPost
    AfterDelete = TBMdfeDocsAfterDelete
    MasterSource = DSMdfe
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMdfeDocs
    UpdateObject = UPMdfeDocs
    SQL.Strings = (
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
    Left = 768
    Top = 176
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfeDocsMFD_CHAVEACESSO: TStringField
      FieldName = 'MFD_CHAVEACESSO'
      Origin = 'MFD_CHAVEACESSO'
      EditMask = '99999999999999999999999999999999999999999999;1;_'
      Size = 50
    end
    object TBMdfeDocsMFD_CODIGO: TIntegerField
      FieldName = 'MFD_CODIGO'
      Origin = 'MFD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfeDocsMFD_CODIGOBARRAS: TStringField
      FieldName = 'MFD_CODIGOBARRAS'
      Origin = 'MFD_CODIGOBARRAS'
      Size = 50
    end
    object TBMdfeDocsMFD_MDFE: TIntegerField
      FieldName = 'MFD_MDFE'
      Origin = 'MFD_MDFE'
      Required = True
    end
    object TBMdfeDocsMFD_MDFEDESCARREGA: TIntegerField
      FieldName = 'MFD_MDFEDESCARREGA'
      Origin = 'MFD_MDFEDESCARREGA'
      Required = True
    end
    object TBMdfeDocsMFD_TIPODOC: TStringField
      FieldName = 'MFD_TIPODOC'
      Origin = 'MFD_TIPODOC'
    end
    object TBMdfeDocsMDD_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MDD_CIDADE'
      Origin = 'MDD_CIDADE'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRMdfeMotoristas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 800
    Top = 240
  end
  object UPMdfeMotoristas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFEMOTORISTAS'
      '(MDM_CODIGO, MDM_CPF, MDM_MDFE, MDM_NOME)'
      
        'VALUES (gen_id(GEN_MDFEMOTORISTAS,1), :NEW_MDM_CPF, :NEW_MDM_MDF' +
        'E, :NEW_MDM_NOME)'
      'RETURNING MDM_CODIGO, MDM_CPF, MDM_MDFE, MDM_NOME')
    ModifySQL.Strings = (
      'UPDATE MDFEMOTORISTAS'
      
        'SET MDM_CODIGO = :NEW_MDM_CODIGO, MDM_CPF = :NEW_MDM_CPF, MDM_MD' +
        'FE = :NEW_MDM_MDFE, '
      '  MDM_NOME = :NEW_MDM_NOME'
      'WHERE MDM_CODIGO = :OLD_MDM_CODIGO'
      'RETURNING MDM_CODIGO, MDM_CPF, MDM_MDFE, MDM_NOME')
    DeleteSQL.Strings = (
      'DELETE FROM MDFEMOTORISTAS'
      'WHERE MDM_CODIGO = :OLD_MDM_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MDM_CODIGO, MDM_CPF, MDM_MDFE, MDM_NOME'
      'FROM MDFEMOTORISTAS'
      'WHERE MDM_CODIGO = :OLD_MDM_CODIGO')
    Left = 800
    Top = 208
  end
  object TBMdfeMotoristas: TFDQuery
    AfterInsert = TBMdfeMotoristasAfterInsert
    MasterSource = DSMdfe
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMdfeMotoristas
    UpdateObject = UPMdfeMotoristas
    SQL.Strings = (
      'select'
      'MDM_CODIGO,'
      'MDM_MDFE,'
      'MDM_NOME,'
      'MDM_CPF'
      'from MDFEMOTORISTAS'
      'where MDM_MDFE=:MDF_CODIGO'
      'order by MDM_NOME'
      '')
    Left = 800
    Top = 176
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfeMotoristasMDM_CODIGO: TIntegerField
      FieldName = 'MDM_CODIGO'
      Origin = 'MDM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfeMotoristasMDM_MDFE: TIntegerField
      FieldName = 'MDM_MDFE'
      Origin = 'MDM_MDFE'
      Required = True
    end
    object TBMdfeMotoristasMDM_NOME: TStringField
      FieldName = 'MDM_NOME'
      Origin = 'MDM_NOME'
      Size = 80
    end
    object TBMdfeMotoristasMDM_CPF: TStringField
      FieldName = 'MDM_CPF'
      Origin = 'MDM_CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
  end
  object TRMdfePercursos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 240
  end
  object UPMdfePercursos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MDFEPERCURSOS'
      '(MDP_CODIGO, MDP_ESTADO, MDP_MDFE)'
      
        'VALUES (gen_id(GEN_MDFEPERCURSOS,1), :NEW_MDP_ESTADO, :NEW_MDP_M' +
        'DFE)'
      'RETURNING MDP_CODIGO, MDP_ESTADO, MDP_MDFE')
    ModifySQL.Strings = (
      'UPDATE MDFEPERCURSOS'
      'SET MDP_CODIGO = :NEW_MDP_CODIGO, MDP_ESTADO = :NEW_MDP_ESTADO, '
      '  MDP_MDFE = :NEW_MDP_MDFE'
      'WHERE MDP_CODIGO = :OLD_MDP_CODIGO'
      'RETURNING MDP_CODIGO, MDP_ESTADO, MDP_MDFE')
    DeleteSQL.Strings = (
      'DELETE FROM MDFEPERCURSOS'
      'WHERE MDP_CODIGO = :OLD_MDP_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MDP_CODIGO, MDP_ESTADO, MDP_MDFE'
      'FROM MDFEPERCURSOS'
      'WHERE MDP_CODIGO = :OLD_MDP_CODIGO')
    Left = 832
    Top = 208
  end
  object TBMdfePercursos: TFDQuery
    AfterInsert = TBMdfePercursosAfterInsert
    MasterSource = DSMdfe
    MasterFields = 'MDF_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRMdfePercursos
    UpdateObject = UPMdfePercursos
    SQL.Strings = (
      'select'
      'MDP_CODIGO,'
      'MDP_MDFE,'
      'MDP_ESTADO'
      'from MDFEPERCURSOS'
      'where MDP_MDFE=:MDF_CODIGO'
      'order by MDP_CODIGO'
      '')
    Left = 832
    Top = 176
    ParamData = <
      item
        Name = 'MDF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMdfePercursosMDP_CODIGO: TIntegerField
      FieldName = 'MDP_CODIGO'
      Origin = 'MDP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMdfePercursosMDP_MDFE: TIntegerField
      FieldName = 'MDP_MDFE'
      Origin = 'MDP_MDFE'
      Required = True
    end
    object TBMdfePercursosMDP_ESTADO: TStringField
      FieldName = 'MDP_ESTADO'
      Origin = 'MDP_ESTADO'
      Size = 2
    end
  end
  object TRMedicamentos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 864
    Top = 240
  end
  object UPMedicamentos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MEDICAMENTOS'
      '(MTO_CODIGO, MTO_DTATUALIZACAO, MTO_DTCADASTRO, '
      '  MTO_HRATUALIZACAO, MTO_HRCADASTRO, MTO_NOME, '
      '  MTO_STATUS, MTO_USUARIO)'
      
        'VALUES (gen_id(GEN_MEDICAMENTOS,1), :NEW_MTO_DTATUALIZACAO, :NEW' +
        '_MTO_DTCADASTRO, '
      '  :NEW_MTO_HRATUALIZACAO, :NEW_MTO_HRCADASTRO, :NEW_MTO_NOME, '
      '  :NEW_MTO_STATUS, :NEW_MTO_USUARIO)'
      
        'RETURNING MTO_CODIGO, MTO_DTATUALIZACAO, MTO_DTCADASTRO, MTO_HRA' +
        'TUALIZACAO, MTO_HRCADASTRO, MTO_NOME, MTO_STATUS, MTO_USUARIO')
    ModifySQL.Strings = (
      'UPDATE MEDICAMENTOS'
      
        'SET MTO_CODIGO = :NEW_MTO_CODIGO, MTO_DTATUALIZACAO = :NEW_MTO_D' +
        'TATUALIZACAO, '
      
        '  MTO_DTCADASTRO = :NEW_MTO_DTCADASTRO, MTO_HRATUALIZACAO = :NEW' +
        '_MTO_HRATUALIZACAO, '
      
        '  MTO_HRCADASTRO = :NEW_MTO_HRCADASTRO, MTO_NOME = :NEW_MTO_NOME' +
        ', '
      '  MTO_STATUS = :NEW_MTO_STATUS, MTO_USUARIO = :NEW_MTO_USUARIO'
      'WHERE MTO_CODIGO = :OLD_MTO_CODIGO'
      
        'RETURNING MTO_CODIGO, MTO_DTATUALIZACAO, MTO_DTCADASTRO, MTO_HRA' +
        'TUALIZACAO, MTO_HRCADASTRO, MTO_NOME, MTO_STATUS, MTO_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM MEDICAMENTOS'
      'WHERE MTO_CODIGO = :OLD_MTO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MTO_CODIGO, MTO_DTATUALIZACAO, MTO_DTCADASTRO, MTO_HRATUA' +
        'LIZACAO, '
      '  MTO_HRCADASTRO, MTO_NOME, MTO_STATUS, MTO_USUARIO'
      'FROM MEDICAMENTOS'
      'WHERE MTO_CODIGO = :OLD_MTO_CODIGO')
    Left = 864
    Top = 208
  end
  object TBMedicamentos: TFDQuery
    BeforeInsert = TBMedicamentosBeforeInsert
    AfterInsert = TBMedicamentosAfterInsert
    BeforeEdit = TBMedicamentosBeforeEdit
    BeforePost = TBMedicamentosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRMedicamentos
    UpdateObject = UPMedicamentos
    SQL.Strings = (
      'select '
      'MTO_CODIGO,'
      'MTO_DTATUALIZACAO,'
      'MTO_DTCADASTRO,'
      'MTO_HRATUALIZACAO,'
      'MTO_HRCADASTRO,'
      'MTO_NOME,'
      'MTO_STATUS,'
      'MTO_USUARIO'
      'from MEDICAMENTOS'
      'where MTO_CODIGO=:codigo'
      '')
    Left = 864
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMedicamentosMTO_CODIGO: TIntegerField
      FieldName = 'MTO_CODIGO'
      Origin = 'MTO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMedicamentosMTO_DTATUALIZACAO: TDateField
      FieldName = 'MTO_DTATUALIZACAO'
      Origin = 'MTO_DTATUALIZACAO'
    end
    object TBMedicamentosMTO_DTCADASTRO: TDateField
      FieldName = 'MTO_DTCADASTRO'
      Origin = 'MTO_DTCADASTRO'
    end
    object TBMedicamentosMTO_HRATUALIZACAO: TTimeField
      FieldName = 'MTO_HRATUALIZACAO'
      Origin = 'MTO_HRATUALIZACAO'
    end
    object TBMedicamentosMTO_HRCADASTRO: TTimeField
      FieldName = 'MTO_HRCADASTRO'
      Origin = 'MTO_HRCADASTRO'
    end
    object TBMedicamentosMTO_NOME: TStringField
      FieldName = 'MTO_NOME'
      Origin = 'MTO_NOME'
      Size = 80
    end
    object TBMedicamentosMTO_STATUS: TStringField
      FieldName = 'MTO_STATUS'
      Origin = 'MTO_STATUS'
      Size = 1
    end
    object TBMedicamentosMTO_USUARIO: TStringField
      FieldName = 'MTO_USUARIO'
      Origin = 'MTO_USUARIO'
    end
  end
  object TRMedicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 896
    Top = 240
  end
  object UPMedicoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MEDICOES'
      '(MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTATUALIZACAO, '
      '  MED_DTCADASTRO, MED_GLICEMIA, MED_HRATUALIZACAO, '
      '  MED_HRCADASTRO, MED_PERIODO, MED_PESO, MED_PRESSAO, '
      '  MED_SATURACAO, MED_TEMPERATURA, MED_USUARIO)'
      
        'VALUES (:NEW_MED_BATIMENTOS, :NEW_MED_CLIENTE, gen_id(GEN_MEDICO' +
        'ES,1), :NEW_MED_DTATUALIZACAO, '
      
        '  :NEW_MED_DTCADASTRO, :NEW_MED_GLICEMIA, :NEW_MED_HRATUALIZACAO' +
        ', '
      
        '  :NEW_MED_HRCADASTRO, :NEW_MED_PERIODO, :NEW_MED_PESO, :NEW_MED' +
        '_PRESSAO, '
      '  :NEW_MED_SATURACAO, :NEW_MED_TEMPERATURA, :NEW_MED_USUARIO)'
      
        'RETURNING MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTATUALIZ' +
        'ACAO, MED_DTCADASTRO, MED_GLICEMIA, MED_HRATUALIZACAO, MED_HRCAD' +
        'ASTRO, MED_PERIODO, MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TE' +
        'MPERATURA, MED_USUARIO')
    ModifySQL.Strings = (
      'UPDATE MEDICOES'
      
        'SET MED_BATIMENTOS = :NEW_MED_BATIMENTOS, MED_CLIENTE = :NEW_MED' +
        '_CLIENTE, '
      
        '  MED_CODIGO = :NEW_MED_CODIGO, MED_DTATUALIZACAO = :NEW_MED_DTA' +
        'TUALIZACAO, '
      
        '  MED_DTCADASTRO = :NEW_MED_DTCADASTRO, MED_GLICEMIA = :NEW_MED_' +
        'GLICEMIA, '
      
        '  MED_HRATUALIZACAO = :NEW_MED_HRATUALIZACAO, MED_HRCADASTRO = :' +
        'NEW_MED_HRCADASTRO, '
      '  MED_PERIODO = :NEW_MED_PERIODO, MED_PESO = :NEW_MED_PESO, '
      
        '  MED_PRESSAO = :NEW_MED_PRESSAO, MED_SATURACAO = :NEW_MED_SATUR' +
        'ACAO, '
      
        '  MED_TEMPERATURA = :NEW_MED_TEMPERATURA, MED_USUARIO = :NEW_MED' +
        '_USUARIO'
      'WHERE MED_CODIGO = :OLD_MED_CODIGO'
      
        'RETURNING MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTATUALIZ' +
        'ACAO, MED_DTCADASTRO, MED_GLICEMIA, MED_HRATUALIZACAO, MED_HRCAD' +
        'ASTRO, MED_PERIODO, MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TE' +
        'MPERATURA, MED_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM MEDICOES'
      'WHERE MED_CODIGO = :OLD_MED_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTATUALIZACA' +
        'O, '
      
        '  MED_DTCADASTRO, MED_GLICEMIA, MED_HRATUALIZACAO, MED_HRCADASTR' +
        'O, '
      
        '  MED_PERIODO, MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TEMPERA' +
        'TURA, '
      '  MED_USUARIO'
      'FROM MEDICOES'
      'WHERE MED_CODIGO = :OLD_MED_CODIGO')
    Left = 896
    Top = 208
  end
  object TBMedicoes: TFDQuery
    BeforeInsert = TBMedicoesBeforeInsert
    AfterInsert = TBMedicoesAfterInsert
    BeforeEdit = TBMedicoesBeforeEdit
    BeforePost = TBMedicoesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRMedicoes
    UpdateObject = UPMedicoes
    SQL.Strings = (
      'select '
      'MED_BATIMENTOS,'
      'MED_CLIENTE,'
      'MED_CODIGO,'
      'MED_DTATUALIZACAO,'
      'MED_DTCADASTRO,'
      'MED_GLICEMIA,'
      'MED_HRATUALIZACAO,'
      'MED_HRCADASTRO,'
      'MED_PERIODO,'
      'MED_PESO,'
      'MED_PRESSAO,'
      'MED_SATURACAO,'
      'MED_TEMPERATURA,'
      'MED_USUARIO,'
      'CLI_NOME'
      'from MEDICOES'
      'left join CLIENTES on MED_CLIENTE=CLI_CODIGO'
      'where MED_CODIGO=:codigo'
      '')
    Left = 896
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMedicoesMED_BATIMENTOS: TIntegerField
      FieldName = 'MED_BATIMENTOS'
      Origin = 'MED_BATIMENTOS'
    end
    object TBMedicoesMED_CLIENTE: TIntegerField
      FieldName = 'MED_CLIENTE'
      Origin = 'MED_CLIENTE'
      Required = True
    end
    object TBMedicoesMED_CODIGO: TIntegerField
      FieldName = 'MED_CODIGO'
      Origin = 'MED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMedicoesMED_DTATUALIZACAO: TDateField
      FieldName = 'MED_DTATUALIZACAO'
      Origin = 'MED_DTATUALIZACAO'
    end
    object TBMedicoesMED_DTCADASTRO: TDateField
      FieldName = 'MED_DTCADASTRO'
      Origin = 'MED_DTCADASTRO'
    end
    object TBMedicoesMED_GLICEMIA: TIntegerField
      FieldName = 'MED_GLICEMIA'
      Origin = 'MED_GLICEMIA'
    end
    object TBMedicoesMED_HRATUALIZACAO: TTimeField
      FieldName = 'MED_HRATUALIZACAO'
      Origin = 'MED_HRATUALIZACAO'
    end
    object TBMedicoesMED_HRCADASTRO: TTimeField
      FieldName = 'MED_HRCADASTRO'
      Origin = 'MED_HRCADASTRO'
    end
    object TBMedicoesMED_PERIODO: TStringField
      FieldName = 'MED_PERIODO'
      Origin = 'MED_PERIODO'
      Size = 10
    end
    object TBMedicoesMED_PESO: TFMTBCDField
      FieldName = 'MED_PESO'
      Origin = 'MED_PESO'
      Precision = 18
      Size = 3
    end
    object TBMedicoesMED_PRESSAO: TStringField
      FieldName = 'MED_PRESSAO'
      Origin = 'MED_PRESSAO'
      EditMask = '!999/99;1;_'
      Size = 10
    end
    object TBMedicoesMED_SATURACAO: TIntegerField
      FieldName = 'MED_SATURACAO'
      Origin = 'MED_SATURACAO'
    end
    object TBMedicoesMED_TEMPERATURA: TCurrencyField
      FieldName = 'MED_TEMPERATURA'
      Origin = 'MED_TEMPERATURA'
    end
    object TBMedicoesMED_USUARIO: TStringField
      FieldName = 'MED_USUARIO'
      Origin = 'MED_USUARIO'
    end
    object TBMedicoesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRMensagens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 928
    Top = 240
  end
  object UPMensagens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MENSAGENS'
      '(MEN_ASSUNTO, MEN_CODIGO, MEN_DATA, MEN_DESTINATARIOS, '
      '  MEN_HORA, MEN_LIDA, MEN_MENSAGEM, MEN_REMETENTE, '
      '  MEN_TIPO)'
      
        'VALUES (:NEW_MEN_ASSUNTO, gen_id(GEN_MENSAGENS,1), :NEW_MEN_DATA' +
        ', :NEW_MEN_DESTINATARIOS, '
      
        '  :NEW_MEN_HORA, :NEW_MEN_LIDA, :NEW_MEN_MENSAGEM, :NEW_MEN_REME' +
        'TENTE, '
      '  :NEW_MEN_TIPO)'
      
        'RETURNING MEN_ASSUNTO, MEN_CODIGO, MEN_DATA, MEN_DESTINATARIOS, ' +
        'MEN_HORA, MEN_LIDA, MEN_MENSAGEM, MEN_REMETENTE, MEN_TIPO')
    ModifySQL.Strings = (
      'UPDATE MENSAGENS'
      
        'SET MEN_ASSUNTO = :NEW_MEN_ASSUNTO, MEN_CODIGO = :NEW_MEN_CODIGO' +
        ', '
      
        '  MEN_DATA = :NEW_MEN_DATA, MEN_DESTINATARIOS = :NEW_MEN_DESTINA' +
        'TARIOS, '
      
        '  MEN_HORA = :NEW_MEN_HORA, MEN_LIDA = :NEW_MEN_LIDA, MEN_MENSAG' +
        'EM = :NEW_MEN_MENSAGEM, '
      '  MEN_REMETENTE = :NEW_MEN_REMETENTE, MEN_TIPO = :NEW_MEN_TIPO'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO'
      
        'RETURNING MEN_ASSUNTO, MEN_CODIGO, MEN_DATA, MEN_DESTINATARIOS, ' +
        'MEN_HORA, MEN_LIDA, MEN_MENSAGEM, MEN_REMETENTE, MEN_TIPO')
    DeleteSQL.Strings = (
      'DELETE FROM MENSAGENS'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MEN_ASSUNTO, MEN_CODIGO, MEN_DATA, MEN_DESTINATARIOS, MEN' +
        '_HORA, '
      '  MEN_LIDA, MEN_MENSAGEM, MEN_REMETENTE, MEN_TIPO'
      'FROM MENSAGENS'
      'WHERE MEN_CODIGO = :OLD_MEN_CODIGO')
    Left = 928
    Top = 208
  end
  object TBMensagens: TFDQuery
    AfterInsert = TBMensagensAfterInsert
    Connection = DM.FDConnection1
    Transaction = TRMensagens
    UpdateObject = UPMensagens
    SQL.Strings = (
      'select'
      'MEN_ASSUNTO,'
      'MEN_CODIGO,'
      'MEN_DESTINATARIOS,'
      'MEN_DATA,'
      'MEN_HORA,'
      'MEN_LIDA,'
      'MEN_MENSAGEM,'
      'MEN_REMETENTE,'
      'MEN_TIPO'
      'from MENSAGENS'
      'where MEN_CODIGO=:codigo'
      '')
    Left = 928
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMensagensMEN_ASSUNTO: TStringField
      FieldName = 'MEN_ASSUNTO'
      Origin = 'MEN_ASSUNTO'
      Size = 50
    end
    object TBMensagensMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Origin = 'MEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMensagensMEN_DESTINATARIOS: TStringField
      FieldName = 'MEN_DESTINATARIOS'
      Origin = 'MEN_DESTINATARIOS'
      Size = 300
    end
    object TBMensagensMEN_DATA: TDateField
      FieldName = 'MEN_DATA'
      Origin = 'MEN_DATA'
    end
    object TBMensagensMEN_HORA: TTimeField
      FieldName = 'MEN_HORA'
      Origin = 'MEN_HORA'
    end
    object TBMensagensMEN_LIDA: TStringField
      FieldName = 'MEN_LIDA'
      Origin = 'MEN_LIDA'
      Size = 1
    end
    object TBMensagensMEN_MENSAGEM: TMemoField
      FieldName = 'MEN_MENSAGEM'
      Origin = 'MEN_MENSAGEM'
      BlobType = ftMemo
    end
    object TBMensagensMEN_REMETENTE: TIntegerField
      FieldName = 'MEN_REMETENTE'
      Origin = 'MEN_REMETENTE'
      Required = True
    end
    object TBMensagensMEN_TIPO: TStringField
      FieldName = 'MEN_TIPO'
      Origin = 'MEN_TIPO'
      Size = 1
    end
  end
  object TRMensagensNovas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 960
    Top = 240
  end
  object QYMensagensNovas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMensagensNovas
    Left = 960
    Top = 176
  end
  object TRMensalidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 992
    Top = 240
  end
  object UPMensalidades: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MENSALIDADES'
      '(MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, '
      '  MNS_DTATUALIZACAO, MNS_DTCADASTRO, MNS_HRATUALIZACAO, '
      '  MNS_HRCADASTRO, MNS_PERIODO, MNS_RECEITA, '
      '  MNS_STATUS, MNS_TIPODOCTO, MNS_USUARIO, MNS_VALOR, '
      '  MNS_VENCIMENTO)'
      
        'VALUES (:NEW_MNS_CLIENTE, gen_id(GEN_MENSALIDADES,1), :NEW_MNS_C' +
        'ONTA, :NEW_MNS_DESCRICAO, '
      
        '  :NEW_MNS_DTATUALIZACAO, :NEW_MNS_DTCADASTRO, :NEW_MNS_HRATUALI' +
        'ZACAO, '
      '  :NEW_MNS_HRCADASTRO, :NEW_MNS_PERIODO, :NEW_MNS_RECEITA, '
      
        '  :NEW_MNS_STATUS, :NEW_MNS_TIPODOCTO, :NEW_MNS_USUARIO, :NEW_MN' +
        'S_VALOR, '
      '  :NEW_MNS_VENCIMENTO)'
      
        'RETURNING MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS' +
        '_DTATUALIZACAO, MNS_DTCADASTRO, MNS_HRATUALIZACAO, MNS_HRCADASTR' +
        'O, MNS_PERIODO, MNS_RECEITA, MNS_STATUS, MNS_TIPODOCTO, MNS_USUA' +
        'RIO, MNS_VALOR, MNS_VENCIMENTO')
    ModifySQL.Strings = (
      'UPDATE MENSALIDADES'
      
        'SET MNS_CLIENTE = :NEW_MNS_CLIENTE, MNS_CODIGO = :NEW_MNS_CODIGO' +
        ', '
      
        '  MNS_CONTA = :NEW_MNS_CONTA, MNS_DESCRICAO = :NEW_MNS_DESCRICAO' +
        ', '
      
        '  MNS_DTATUALIZACAO = :NEW_MNS_DTATUALIZACAO, MNS_DTCADASTRO = :' +
        'NEW_MNS_DTCADASTRO, '
      
        '  MNS_HRATUALIZACAO = :NEW_MNS_HRATUALIZACAO, MNS_HRCADASTRO = :' +
        'NEW_MNS_HRCADASTRO, '
      
        '  MNS_PERIODO = :NEW_MNS_PERIODO, MNS_RECEITA = :NEW_MNS_RECEITA' +
        ', '
      
        '  MNS_STATUS = :NEW_MNS_STATUS, MNS_TIPODOCTO = :NEW_MNS_TIPODOC' +
        'TO, '
      '  MNS_USUARIO = :NEW_MNS_USUARIO, MNS_VALOR = :NEW_MNS_VALOR, '
      '  MNS_VENCIMENTO = :NEW_MNS_VENCIMENTO'
      'WHERE MNS_CODIGO = :OLD_MNS_CODIGO'
      
        'RETURNING MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS' +
        '_DTATUALIZACAO, MNS_DTCADASTRO, MNS_HRATUALIZACAO, MNS_HRCADASTR' +
        'O, MNS_PERIODO, MNS_RECEITA, MNS_STATUS, MNS_TIPODOCTO, MNS_USUA' +
        'RIO, MNS_VALOR, MNS_VENCIMENTO')
    DeleteSQL.Strings = (
      'DELETE FROM MENSALIDADES'
      'WHERE MNS_CODIGO = :OLD_MNS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MNS_CLIENTE, MNS_CODIGO, MNS_CONTA, MNS_DESCRICAO, MNS_DT' +
        'ATUALIZACAO, '
      
        '  MNS_DTCADASTRO, MNS_HRATUALIZACAO, MNS_HRCADASTRO, MNS_PERIODO' +
        ', '
      
        '  MNS_RECEITA, MNS_STATUS, MNS_TIPODOCTO, MNS_USUARIO, MNS_VALOR' +
        ', '
      '  MNS_VENCIMENTO'
      'FROM MENSALIDADES'
      'WHERE MNS_CODIGO = :OLD_MNS_CODIGO')
    Left = 992
    Top = 208
  end
  object TBMensalidades: TFDQuery
    BeforeInsert = TBMensalidadesBeforeInsert
    AfterInsert = TBMensalidadesAfterInsert
    BeforeEdit = TBMensalidadesBeforeEdit
    BeforePost = TBMensalidadesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRMensalidades
    UpdateObject = UPMensalidades
    SQL.Strings = (
      'select '
      'MNS_CLIENTE,'
      'MNS_CODIGO,'
      'MNS_CONTA,'
      'MNS_DESCRICAO,'
      'MNS_DTATUALIZACAO,'
      'MNS_DTCADASTRO,'
      'MNS_HRATUALIZACAO,'
      'MNS_HRCADASTRO,'
      'MNS_PERIODO,'
      'MNS_RECEITA,'
      'MNS_STATUS,'
      'MNS_TIPODOCTO,'
      'MNS_USUARIO,'
      'MNS_VALOR,'
      'MNS_VENCIMENTO,'
      'CLI_NOME,'
      'CON_NOME,'
      'REC_DESCRICAO'
      'from MENSALIDADES'
      'left join CLIENTES on MNS_CLIENTE=CLI_CODIGO'
      'left join CONTAS on MNS_CONTA=CON_CODIGO'
      'left join RECEITAS on MNS_RECEITA=REC_CODIGO'
      'where MNS_CODIGO=:codigo'
      '')
    Left = 992
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMensalidadesMNS_CLIENTE: TIntegerField
      FieldName = 'MNS_CLIENTE'
      Origin = 'MNS_CLIENTE'
      Required = True
    end
    object TBMensalidadesMNS_CODIGO: TIntegerField
      FieldName = 'MNS_CODIGO'
      Origin = 'MNS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMensalidadesMNS_CONTA: TIntegerField
      FieldName = 'MNS_CONTA'
      Origin = 'MNS_CONTA'
      Required = True
    end
    object TBMensalidadesMNS_DESCRICAO: TStringField
      FieldName = 'MNS_DESCRICAO'
      Origin = 'MNS_DESCRICAO'
      Size = 120
    end
    object TBMensalidadesMNS_DTATUALIZACAO: TDateField
      FieldName = 'MNS_DTATUALIZACAO'
      Origin = 'MNS_DTATUALIZACAO'
    end
    object TBMensalidadesMNS_DTCADASTRO: TDateField
      FieldName = 'MNS_DTCADASTRO'
      Origin = 'MNS_DTCADASTRO'
    end
    object TBMensalidadesMNS_HRATUALIZACAO: TTimeField
      FieldName = 'MNS_HRATUALIZACAO'
      Origin = 'MNS_HRATUALIZACAO'
    end
    object TBMensalidadesMNS_HRCADASTRO: TTimeField
      FieldName = 'MNS_HRCADASTRO'
      Origin = 'MNS_HRCADASTRO'
    end
    object TBMensalidadesMNS_PERIODO: TStringField
      FieldName = 'MNS_PERIODO'
      Origin = 'MNS_PERIODO'
      Size = 10
    end
    object TBMensalidadesMNS_RECEITA: TIntegerField
      FieldName = 'MNS_RECEITA'
      Origin = 'MNS_RECEITA'
      Required = True
    end
    object TBMensalidadesMNS_STATUS: TStringField
      FieldName = 'MNS_STATUS'
      Origin = 'MNS_STATUS'
      Size = 1
    end
    object TBMensalidadesMNS_TIPODOCTO: TStringField
      FieldName = 'MNS_TIPODOCTO'
      Origin = 'MNS_TIPODOCTO'
    end
    object TBMensalidadesMNS_USUARIO: TStringField
      FieldName = 'MNS_USUARIO'
      Origin = 'MNS_USUARIO'
    end
    object TBMensalidadesMNS_VALOR: TFMTBCDField
      FieldName = 'MNS_VALOR'
      Origin = 'MNS_VALOR'
      currency = True
      Precision = 18
    end
    object TBMensalidadesMNS_VENCIMENTO: TIntegerField
      FieldName = 'MNS_VENCIMENTO'
      Origin = 'MNS_VENCIMENTO'
    end
    object TBMensalidadesCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBMensalidadesCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBMensalidadesREC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRMotivos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1024
    Top = 240
  end
  object UPMotivos: TFDUpdateSQL
    Connection = DM.FDConnection1
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
    Left = 1024
    Top = 208
  end
  object TBMotivos: TFDQuery
    BeforeInsert = TBMotivosBeforeInsert
    AfterInsert = TBMotivosAfterInsert
    BeforeEdit = TBMotivosBeforeEdit
    BeforePost = TBMotivosBeforePost
    Connection = DM.FDConnection1
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
      '')
    Left = 1024
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
  object TRObjetos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1056
    Top = 240
  end
  object UPObjetos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO OBJETOS'
      '(OBJ_CAPACIDADE, OBJ_CLASSE, OBJ_CODIGO, OBJ_DESCRICAO, '
      '  OBJ_DTATUALIZACAO, OBJ_DTCADASTRO, OBJ_HRATUALIZACAO, '
      '  OBJ_HRCADASTRO, OBJ_LOCACAO, OBJ_LOCADO, '
      '  OBJ_MARCA, OBJ_MODELO, OBJ_OBSERVACOES, OBJ_SERIAL, '
      '  OBJ_STATUS, OBJ_UNIDADE, OBJ_USUARIO, OBJ_VALOR, '
      '  OBJ_VALORLOCACAO)'
      
        'VALUES (:NEW_OBJ_CAPACIDADE, :NEW_OBJ_CLASSE, gen_id(GEN_OBJETOS' +
        ',1), :NEW_OBJ_DESCRICAO, '
      
        '  :NEW_OBJ_DTATUALIZACAO, :NEW_OBJ_DTCADASTRO, :NEW_OBJ_HRATUALI' +
        'ZACAO, '
      '  :NEW_OBJ_HRCADASTRO, :NEW_OBJ_LOCACAO, :NEW_OBJ_LOCADO, '
      
        '  :NEW_OBJ_MARCA, :NEW_OBJ_MODELO, :NEW_OBJ_OBSERVACOES, :NEW_OB' +
        'J_SERIAL, '
      
        '  :NEW_OBJ_STATUS, :NEW_OBJ_UNIDADE, :NEW_OBJ_USUARIO, :NEW_OBJ_' +
        'VALOR, '
      '  :NEW_OBJ_VALORLOCACAO)'
      
        'RETURNING OBJ_CAPACIDADE, OBJ_CLASSE, OBJ_CODIGO, OBJ_DESCRICAO,' +
        ' OBJ_DTATUALIZACAO, OBJ_DTCADASTRO, OBJ_HRATUALIZACAO, OBJ_HRCAD' +
        'ASTRO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MARCA, OBJ_MODELO, OBJ_OBSER' +
        'VACOES, OBJ_SERIAL, OBJ_STATUS, OBJ_UNIDADE, OBJ_USUARIO, OBJ_VA' +
        'LOR, OBJ_VALORLOCACAO')
    ModifySQL.Strings = (
      'UPDATE OBJETOS'
      
        'SET OBJ_CAPACIDADE = :NEW_OBJ_CAPACIDADE, OBJ_CLASSE = :NEW_OBJ_' +
        'CLASSE, '
      
        '  OBJ_CODIGO = :NEW_OBJ_CODIGO, OBJ_DESCRICAO = :NEW_OBJ_DESCRIC' +
        'AO, '
      
        '  OBJ_DTATUALIZACAO = :NEW_OBJ_DTATUALIZACAO, OBJ_DTCADASTRO = :' +
        'NEW_OBJ_DTCADASTRO, '
      
        '  OBJ_HRATUALIZACAO = :NEW_OBJ_HRATUALIZACAO, OBJ_HRCADASTRO = :' +
        'NEW_OBJ_HRCADASTRO, '
      '  OBJ_LOCACAO = :NEW_OBJ_LOCACAO, OBJ_LOCADO = :NEW_OBJ_LOCADO, '
      '  OBJ_MARCA = :NEW_OBJ_MARCA, OBJ_MODELO = :NEW_OBJ_MODELO, '
      
        '  OBJ_OBSERVACOES = :NEW_OBJ_OBSERVACOES, OBJ_SERIAL = :NEW_OBJ_' +
        'SERIAL, '
      '  OBJ_STATUS = :NEW_OBJ_STATUS, OBJ_UNIDADE = :NEW_OBJ_UNIDADE, '
      '  OBJ_USUARIO = :NEW_OBJ_USUARIO, OBJ_VALOR = :NEW_OBJ_VALOR, '
      '  OBJ_VALORLOCACAO = :NEW_OBJ_VALORLOCACAO'
      'WHERE OBJ_CODIGO = :OLD_OBJ_CODIGO'
      
        'RETURNING OBJ_CAPACIDADE, OBJ_CLASSE, OBJ_CODIGO, OBJ_DESCRICAO,' +
        ' OBJ_DTATUALIZACAO, OBJ_DTCADASTRO, OBJ_HRATUALIZACAO, OBJ_HRCAD' +
        'ASTRO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MARCA, OBJ_MODELO, OBJ_OBSER' +
        'VACOES, OBJ_SERIAL, OBJ_STATUS, OBJ_UNIDADE, OBJ_USUARIO, OBJ_VA' +
        'LOR, OBJ_VALORLOCACAO')
    DeleteSQL.Strings = (
      'DELETE FROM OBJETOS'
      'WHERE OBJ_CODIGO = :OLD_OBJ_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT OBJ_CAPACIDADE, OBJ_CLASSE, OBJ_CODIGO, OBJ_DESCRICAO, OB' +
        'J_DTATUALIZACAO, '
      
        '  OBJ_DTCADASTRO, OBJ_HRATUALIZACAO, OBJ_HRCADASTRO, OBJ_LOCACAO' +
        ', '
      
        '  OBJ_LOCADO, OBJ_MARCA, OBJ_MODELO, OBJ_OBSERVACOES, OBJ_SERIAL' +
        ', '
      
        '  OBJ_STATUS, OBJ_UNIDADE, OBJ_USUARIO, OBJ_VALOR, OBJ_VALORLOCA' +
        'CAO'
      'FROM OBJETOS'
      'WHERE OBJ_CODIGO = :OLD_OBJ_CODIGO')
    Left = 1056
    Top = 208
  end
  object TBObjetos: TFDQuery
    BeforeInsert = TBObjetosBeforeInsert
    AfterInsert = TBObjetosAfterInsert
    BeforeEdit = TBObjetosBeforeEdit
    BeforePost = TBObjetosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRObjetos
    UpdateObject = UPObjetos
    SQL.Strings = (
      'select '
      'OBJ_CAPACIDADE,'
      'OBJ_CODIGO,'
      'OBJ_CLASSE,'
      'OBJ_DESCRICAO,'
      'OBJ_DTATUALIZACAO,'
      'OBJ_DTCADASTRO,'
      'OBJ_HRATUALIZACAO,'
      'OBJ_HRCADASTRO,'
      'OBJ_LOCACAO,'
      'OBJ_LOCADO,'
      'OBJ_MARCA,'
      'OBJ_MODELO,'
      'OBJ_OBSERVACOES,'
      'OBJ_SERIAL,'
      'OBJ_STATUS,'
      'OBJ_USUARIO,'
      'OBJ_UNIDADE,'
      'OBJ_VALOR,'
      'OBJ_VALORLOCACAO,'
      'CLS_DESCRICAO,'
      'LOC_DATA,'
      'LOC_DATADEVOLUCAO,'
      'LOC_DATAPREVISAO,'
      'MAR_DESCRICAO,'
      'UNI_DESCRICAO'
      'from OBJETOS'
      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO'
      'left join MARCAS on OBJ_MARCA=MAR_CODIGO'
      'left join UNIDADES on OBJ_UNIDADE=UNI_CODIGO'
      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO'
      'where OBJ_CODIGO=:codigo'
      '')
    Left = 1056
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBObjetosOBJ_CAPACIDADE: TFMTBCDField
      FieldName = 'OBJ_CAPACIDADE'
      Origin = 'OBJ_CAPACIDADE'
      Precision = 18
    end
    object TBObjetosOBJ_CODIGO: TIntegerField
      FieldName = 'OBJ_CODIGO'
      Origin = 'OBJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBObjetosOBJ_CLASSE: TIntegerField
      FieldName = 'OBJ_CLASSE'
      Origin = 'OBJ_CLASSE'
      Required = True
    end
    object TBObjetosOBJ_DESCRICAO: TStringField
      FieldName = 'OBJ_DESCRICAO'
      Origin = 'OBJ_DESCRICAO'
      Size = 50
    end
    object TBObjetosOBJ_DTATUALIZACAO: TDateField
      FieldName = 'OBJ_DTATUALIZACAO'
      Origin = 'OBJ_DTATUALIZACAO'
    end
    object TBObjetosOBJ_DTCADASTRO: TDateField
      FieldName = 'OBJ_DTCADASTRO'
      Origin = 'OBJ_DTCADASTRO'
    end
    object TBObjetosOBJ_HRATUALIZACAO: TTimeField
      FieldName = 'OBJ_HRATUALIZACAO'
      Origin = 'OBJ_HRATUALIZACAO'
    end
    object TBObjetosOBJ_HRCADASTRO: TTimeField
      FieldName = 'OBJ_HRCADASTRO'
      Origin = 'OBJ_HRCADASTRO'
    end
    object TBObjetosOBJ_LOCACAO: TIntegerField
      FieldName = 'OBJ_LOCACAO'
      Origin = 'OBJ_LOCACAO'
    end
    object TBObjetosOBJ_LOCADO: TStringField
      FieldName = 'OBJ_LOCADO'
      Origin = 'OBJ_LOCADO'
      Size = 1
    end
    object TBObjetosOBJ_MARCA: TIntegerField
      FieldName = 'OBJ_MARCA'
      Origin = 'OBJ_MARCA'
      Required = True
    end
    object TBObjetosOBJ_MODELO: TStringField
      FieldName = 'OBJ_MODELO'
      Origin = 'OBJ_MODELO'
      Size = 40
    end
    object TBObjetosOBJ_OBSERVACOES: TMemoField
      FieldName = 'OBJ_OBSERVACOES'
      Origin = 'OBJ_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBObjetosOBJ_SERIAL: TStringField
      FieldName = 'OBJ_SERIAL'
      Origin = 'OBJ_SERIAL'
      Size = 40
    end
    object TBObjetosOBJ_STATUS: TStringField
      FieldName = 'OBJ_STATUS'
      Origin = 'OBJ_STATUS'
      Size = 1
    end
    object TBObjetosOBJ_USUARIO: TStringField
      FieldName = 'OBJ_USUARIO'
      Origin = 'OBJ_USUARIO'
    end
    object TBObjetosOBJ_UNIDADE: TStringField
      FieldName = 'OBJ_UNIDADE'
      Origin = 'OBJ_UNIDADE'
      Size = 3
    end
    object TBObjetosOBJ_VALOR: TFMTBCDField
      FieldName = 'OBJ_VALOR'
      Origin = 'OBJ_VALOR'
      Precision = 18
    end
    object TBObjetosOBJ_VALORLOCACAO: TFMTBCDField
      FieldName = 'OBJ_VALORLOCACAO'
      Origin = 'OBJ_VALORLOCACAO'
      Precision = 18
    end
    object TBObjetosCLS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBObjetosLOC_DATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'LOC_DATA'
      Origin = 'LOC_DATA'
      ProviderFlags = []
    end
    object TBObjetosLOC_DATADEVOLUCAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'LOC_DATADEVOLUCAO'
      Origin = 'LOC_DATADEVOLUCAO'
      ProviderFlags = []
    end
    object TBObjetosLOC_DATAPREVISAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'LOC_DATAPREVISAO'
      Origin = 'LOC_DATAPREVISAO'
      ProviderFlags = []
    end
    object TBObjetosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBObjetosUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TROdontogramas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1088
    Top = 240
  end
  object UPOdontogramas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ODONTOGRAMAS'
      '(ODO_CLIENTE, ODO_CODIGO, ODO_D11, ODO_D11A, '
      '  ODO_D11B, ODO_D11C, ODO_D11D, ODO_D11E, '
      '  ODO_D12, ODO_D12A, ODO_D12B, ODO_D12C, '
      '  ODO_D12D, ODO_D12E, ODO_D13, ODO_D13A, '
      '  ODO_D13B, ODO_D13C, ODO_D13D, ODO_D13E, '
      '  ODO_D14, ODO_D14A, ODO_D14B, ODO_D14C, '
      '  ODO_D14D, ODO_D14E, ODO_D15, ODO_D15A, '
      '  ODO_D15B, ODO_D15C, ODO_D15D, ODO_D15E, '
      '  ODO_D16, ODO_D16A, ODO_D16B, ODO_D16C, '
      '  ODO_D16D, ODO_D16E, ODO_D17, ODO_D17A, '
      '  ODO_D17B, ODO_D17C, ODO_D17D, ODO_D17E, '
      '  ODO_D18, ODO_D18A, ODO_D18B, ODO_D18C, '
      '  ODO_D18D, ODO_D18E, ODO_D21, ODO_D21A, '
      '  ODO_D21B, ODO_D21C, ODO_D21D, ODO_D21E, '
      '  ODO_D22, ODO_D22A, ODO_D22B, ODO_D22C, '
      '  ODO_D22D, ODO_D22E, ODO_D23, ODO_D23A, '
      '  ODO_D23B, ODO_D23C, ODO_D23D, ODO_D23E, '
      '  ODO_D24, ODO_D24A, ODO_D24B, ODO_D24C, '
      '  ODO_D24D, ODO_D24E, ODO_D25, ODO_D25A, '
      '  ODO_D25B, ODO_D25C, ODO_D25D, ODO_D25E, '
      '  ODO_D26, ODO_D26A, ODO_D26B, ODO_D26C, '
      '  ODO_D26D, ODO_D26E, ODO_D27, ODO_D27A, '
      '  ODO_D27B, ODO_D27C, ODO_D27D, ODO_D27E, '
      '  ODO_D28, ODO_D28A, ODO_D28B, ODO_D28C, '
      '  ODO_D28D, ODO_D28E, ODO_D31, ODO_D31A, '
      '  ODO_D31B, ODO_D31C, ODO_D31D, ODO_D31E, '
      '  ODO_D32, ODO_D32A, ODO_D32B, ODO_D32C, '
      '  ODO_D32D, ODO_D32E, ODO_D33, ODO_D33A, '
      '  ODO_D33B, ODO_D33C, ODO_D33D, ODO_D33E, '
      '  ODO_D34, ODO_D34A, ODO_D34B, ODO_D34C, '
      '  ODO_D34D, ODO_D34E, ODO_D35, ODO_D35A, '
      '  ODO_D35B, ODO_D35C, ODO_D35D, ODO_D35E, '
      '  ODO_D36, ODO_D36A, ODO_D36B, ODO_D36C, '
      '  ODO_D36D, ODO_D36E, ODO_D37, ODO_D37A, '
      '  ODO_D37B, ODO_D37C, ODO_D37D, ODO_D37E, '
      '  ODO_D38, ODO_D38A, ODO_D38B, ODO_D38C, '
      '  ODO_D38D, ODO_D38E, ODO_D41, ODO_D41A, '
      '  ODO_D41B, ODO_D41C, ODO_D41D, ODO_D41E, '
      '  ODO_D42, ODO_D42A, ODO_D42B, ODO_D42C, '
      '  ODO_D42D, ODO_D42E, ODO_D43, ODO_D43A, '
      '  ODO_D43B, ODO_D43C, ODO_D43D, ODO_D43E, '
      '  ODO_D44, ODO_D44A, ODO_D44B, ODO_D44C, '
      '  ODO_D44D, ODO_D44E, ODO_D45, ODO_D45A, '
      '  ODO_D45B, ODO_D45C, ODO_D45D, ODO_D45E, '
      '  ODO_D46, ODO_D46A, ODO_D46B, ODO_D46C, '
      '  ODO_D46D, ODO_D46E, ODO_D47, ODO_D47A, '
      '  ODO_D47B, ODO_D47C, ODO_D47D, ODO_D47E, '
      '  ODO_D48, ODO_D48A, ODO_D48B, ODO_D48C, '
      '  ODO_D48D, ODO_D48E, ODO_D51, ODO_D51A, '
      '  ODO_D51B, ODO_D51C, ODO_D51D, ODO_D51E, '
      '  ODO_D52, ODO_D52A, ODO_D52B, ODO_D52C, '
      '  ODO_D52D, ODO_D52E, ODO_D53, ODO_D53A, '
      '  ODO_D53B, ODO_D53C, ODO_D53D, ODO_D53E, '
      '  ODO_D54, ODO_D54A, ODO_D54B, ODO_D54C, '
      '  ODO_D54D, ODO_D54E, ODO_D55, ODO_D55A, '
      '  ODO_D55B, ODO_D55C, ODO_D55D, ODO_D55E, '
      '  ODO_D61, ODO_D61A, ODO_D61B, ODO_D61C, '
      '  ODO_D61D, ODO_D61E, ODO_D62, ODO_D62A, '
      '  ODO_D62B, ODO_D62C, ODO_D62D, ODO_D62E, '
      '  ODO_D63, ODO_D63A, ODO_D63B, ODO_D63C, '
      '  ODO_D63D, ODO_D63E, ODO_D64, ODO_D64A, '
      '  ODO_D64B, ODO_D64C, ODO_D64D, ODO_D64E, '
      '  ODO_D65, ODO_D65A, ODO_D65B, ODO_D65C, '
      '  ODO_D65D, ODO_D65E, ODO_D71, ODO_D71A, '
      '  ODO_D71B, ODO_D71C, ODO_D71D, ODO_D71E, '
      '  ODO_D72, ODO_D72A, ODO_D72B, ODO_D72C, '
      '  ODO_D72D, ODO_D72E, ODO_D73, ODO_D73A, '
      '  ODO_D73B, ODO_D73C, ODO_D73D, ODO_D73E, '
      '  ODO_D74, ODO_D74A, ODO_D74B, ODO_D74C, '
      '  ODO_D74D, ODO_D74E, ODO_D75, ODO_D75A, '
      '  ODO_D75B, ODO_D75C, ODO_D75D, ODO_D75E, '
      '  ODO_D81, ODO_D81A, ODO_D81B, ODO_D81C, '
      '  ODO_D81D, ODO_D81E, ODO_D82, ODO_D82A, '
      '  ODO_D82B, ODO_D82C, ODO_D82D, ODO_D82E, '
      '  ODO_D83, ODO_D83A, ODO_D83B, ODO_D83C, '
      '  ODO_D83D, ODO_D83E, ODO_D84, ODO_D84A, '
      '  ODO_D84B, ODO_D84C, ODO_D84D, ODO_D84E, '
      '  ODO_D85, ODO_D85A, ODO_D85B, ODO_D85C, '
      '  ODO_D85D, ODO_D85E, ODO_DATA, ODO_DTATUALIZACAO, '
      '  ODO_DTCADASTRO, ODO_ESTILOS, ODO_HRATUALIZACAO, '
      '  ODO_HRCADASTRO, ODO_OBSERVACOES, ODO_USUARIO)'
      
        'VALUES (:NEW_ODO_CLIENTE, gen_id(GEN_ODONTOGRAMAS,1), :NEW_ODO_D' +
        '11, :NEW_ODO_D11A, '
      '  :NEW_ODO_D11B, :NEW_ODO_D11C, :NEW_ODO_D11D, :NEW_ODO_D11E, '
      '  :NEW_ODO_D12, :NEW_ODO_D12A, :NEW_ODO_D12B, :NEW_ODO_D12C, '
      '  :NEW_ODO_D12D, :NEW_ODO_D12E, :NEW_ODO_D13, :NEW_ODO_D13A, '
      '  :NEW_ODO_D13B, :NEW_ODO_D13C, :NEW_ODO_D13D, :NEW_ODO_D13E, '
      '  :NEW_ODO_D14, :NEW_ODO_D14A, :NEW_ODO_D14B, :NEW_ODO_D14C, '
      '  :NEW_ODO_D14D, :NEW_ODO_D14E, :NEW_ODO_D15, :NEW_ODO_D15A, '
      '  :NEW_ODO_D15B, :NEW_ODO_D15C, :NEW_ODO_D15D, :NEW_ODO_D15E, '
      '  :NEW_ODO_D16, :NEW_ODO_D16A, :NEW_ODO_D16B, :NEW_ODO_D16C, '
      '  :NEW_ODO_D16D, :NEW_ODO_D16E, :NEW_ODO_D17, :NEW_ODO_D17A, '
      '  :NEW_ODO_D17B, :NEW_ODO_D17C, :NEW_ODO_D17D, :NEW_ODO_D17E, '
      '  :NEW_ODO_D18, :NEW_ODO_D18A, :NEW_ODO_D18B, :NEW_ODO_D18C, '
      '  :NEW_ODO_D18D, :NEW_ODO_D18E, :NEW_ODO_D21, :NEW_ODO_D21A, '
      '  :NEW_ODO_D21B, :NEW_ODO_D21C, :NEW_ODO_D21D, :NEW_ODO_D21E, '
      '  :NEW_ODO_D22, :NEW_ODO_D22A, :NEW_ODO_D22B, :NEW_ODO_D22C, '
      '  :NEW_ODO_D22D, :NEW_ODO_D22E, :NEW_ODO_D23, :NEW_ODO_D23A, '
      '  :NEW_ODO_D23B, :NEW_ODO_D23C, :NEW_ODO_D23D, :NEW_ODO_D23E, '
      '  :NEW_ODO_D24, :NEW_ODO_D24A, :NEW_ODO_D24B, :NEW_ODO_D24C, '
      '  :NEW_ODO_D24D, :NEW_ODO_D24E, :NEW_ODO_D25, :NEW_ODO_D25A, '
      '  :NEW_ODO_D25B, :NEW_ODO_D25C, :NEW_ODO_D25D, :NEW_ODO_D25E, '
      '  :NEW_ODO_D26, :NEW_ODO_D26A, :NEW_ODO_D26B, :NEW_ODO_D26C, '
      '  :NEW_ODO_D26D, :NEW_ODO_D26E, :NEW_ODO_D27, :NEW_ODO_D27A, '
      '  :NEW_ODO_D27B, :NEW_ODO_D27C, :NEW_ODO_D27D, :NEW_ODO_D27E, '
      '  :NEW_ODO_D28, :NEW_ODO_D28A, :NEW_ODO_D28B, :NEW_ODO_D28C, '
      '  :NEW_ODO_D28D, :NEW_ODO_D28E, :NEW_ODO_D31, :NEW_ODO_D31A, '
      '  :NEW_ODO_D31B, :NEW_ODO_D31C, :NEW_ODO_D31D, :NEW_ODO_D31E, '
      '  :NEW_ODO_D32, :NEW_ODO_D32A, :NEW_ODO_D32B, :NEW_ODO_D32C, '
      '  :NEW_ODO_D32D, :NEW_ODO_D32E, :NEW_ODO_D33, :NEW_ODO_D33A, '
      '  :NEW_ODO_D33B, :NEW_ODO_D33C, :NEW_ODO_D33D, :NEW_ODO_D33E, '
      '  :NEW_ODO_D34, :NEW_ODO_D34A, :NEW_ODO_D34B, :NEW_ODO_D34C, '
      '  :NEW_ODO_D34D, :NEW_ODO_D34E, :NEW_ODO_D35, :NEW_ODO_D35A, '
      '  :NEW_ODO_D35B, :NEW_ODO_D35C, :NEW_ODO_D35D, :NEW_ODO_D35E, '
      '  :NEW_ODO_D36, :NEW_ODO_D36A, :NEW_ODO_D36B, :NEW_ODO_D36C, '
      '  :NEW_ODO_D36D, :NEW_ODO_D36E, :NEW_ODO_D37, :NEW_ODO_D37A, '
      '  :NEW_ODO_D37B, :NEW_ODO_D37C, :NEW_ODO_D37D, :NEW_ODO_D37E, '
      '  :NEW_ODO_D38, :NEW_ODO_D38A, :NEW_ODO_D38B, :NEW_ODO_D38C, '
      '  :NEW_ODO_D38D, :NEW_ODO_D38E, :NEW_ODO_D41, :NEW_ODO_D41A, '
      '  :NEW_ODO_D41B, :NEW_ODO_D41C, :NEW_ODO_D41D, :NEW_ODO_D41E, '
      '  :NEW_ODO_D42, :NEW_ODO_D42A, :NEW_ODO_D42B, :NEW_ODO_D42C, '
      '  :NEW_ODO_D42D, :NEW_ODO_D42E, :NEW_ODO_D43, :NEW_ODO_D43A, '
      '  :NEW_ODO_D43B, :NEW_ODO_D43C, :NEW_ODO_D43D, :NEW_ODO_D43E, '
      '  :NEW_ODO_D44, :NEW_ODO_D44A, :NEW_ODO_D44B, :NEW_ODO_D44C, '
      '  :NEW_ODO_D44D, :NEW_ODO_D44E, :NEW_ODO_D45, :NEW_ODO_D45A, '
      '  :NEW_ODO_D45B, :NEW_ODO_D45C, :NEW_ODO_D45D, :NEW_ODO_D45E, '
      '  :NEW_ODO_D46, :NEW_ODO_D46A, :NEW_ODO_D46B, :NEW_ODO_D46C, '
      '  :NEW_ODO_D46D, :NEW_ODO_D46E, :NEW_ODO_D47, :NEW_ODO_D47A, '
      '  :NEW_ODO_D47B, :NEW_ODO_D47C, :NEW_ODO_D47D, :NEW_ODO_D47E, '
      '  :NEW_ODO_D48, :NEW_ODO_D48A, :NEW_ODO_D48B, :NEW_ODO_D48C, '
      '  :NEW_ODO_D48D, :NEW_ODO_D48E, :NEW_ODO_D51, :NEW_ODO_D51A, '
      '  :NEW_ODO_D51B, :NEW_ODO_D51C, :NEW_ODO_D51D, :NEW_ODO_D51E, '
      '  :NEW_ODO_D52, :NEW_ODO_D52A, :NEW_ODO_D52B, :NEW_ODO_D52C, '
      '  :NEW_ODO_D52D, :NEW_ODO_D52E, :NEW_ODO_D53, :NEW_ODO_D53A, '
      '  :NEW_ODO_D53B, :NEW_ODO_D53C, :NEW_ODO_D53D, :NEW_ODO_D53E, '
      '  :NEW_ODO_D54, :NEW_ODO_D54A, :NEW_ODO_D54B, :NEW_ODO_D54C, '
      '  :NEW_ODO_D54D, :NEW_ODO_D54E, :NEW_ODO_D55, :NEW_ODO_D55A, '
      '  :NEW_ODO_D55B, :NEW_ODO_D55C, :NEW_ODO_D55D, :NEW_ODO_D55E, '
      '  :NEW_ODO_D61, :NEW_ODO_D61A, :NEW_ODO_D61B, :NEW_ODO_D61C, '
      '  :NEW_ODO_D61D, :NEW_ODO_D61E, :NEW_ODO_D62, :NEW_ODO_D62A, '
      '  :NEW_ODO_D62B, :NEW_ODO_D62C, :NEW_ODO_D62D, :NEW_ODO_D62E, '
      '  :NEW_ODO_D63, :NEW_ODO_D63A, :NEW_ODO_D63B, :NEW_ODO_D63C, '
      '  :NEW_ODO_D63D, :NEW_ODO_D63E, :NEW_ODO_D64, :NEW_ODO_D64A, '
      '  :NEW_ODO_D64B, :NEW_ODO_D64C, :NEW_ODO_D64D, :NEW_ODO_D64E, '
      '  :NEW_ODO_D65, :NEW_ODO_D65A, :NEW_ODO_D65B, :NEW_ODO_D65C, '
      '  :NEW_ODO_D65D, :NEW_ODO_D65E, :NEW_ODO_D71, :NEW_ODO_D71A, '
      '  :NEW_ODO_D71B, :NEW_ODO_D71C, :NEW_ODO_D71D, :NEW_ODO_D71E, '
      '  :NEW_ODO_D72, :NEW_ODO_D72A, :NEW_ODO_D72B, :NEW_ODO_D72C, '
      '  :NEW_ODO_D72D, :NEW_ODO_D72E, :NEW_ODO_D73, :NEW_ODO_D73A, '
      '  :NEW_ODO_D73B, :NEW_ODO_D73C, :NEW_ODO_D73D, :NEW_ODO_D73E, '
      '  :NEW_ODO_D74, :NEW_ODO_D74A, :NEW_ODO_D74B, :NEW_ODO_D74C, '
      '  :NEW_ODO_D74D, :NEW_ODO_D74E, :NEW_ODO_D75, :NEW_ODO_D75A, '
      '  :NEW_ODO_D75B, :NEW_ODO_D75C, :NEW_ODO_D75D, :NEW_ODO_D75E, '
      '  :NEW_ODO_D81, :NEW_ODO_D81A, :NEW_ODO_D81B, :NEW_ODO_D81C, '
      '  :NEW_ODO_D81D, :NEW_ODO_D81E, :NEW_ODO_D82, :NEW_ODO_D82A, '
      '  :NEW_ODO_D82B, :NEW_ODO_D82C, :NEW_ODO_D82D, :NEW_ODO_D82E, '
      '  :NEW_ODO_D83, :NEW_ODO_D83A, :NEW_ODO_D83B, :NEW_ODO_D83C, '
      '  :NEW_ODO_D83D, :NEW_ODO_D83E, :NEW_ODO_D84, :NEW_ODO_D84A, '
      '  :NEW_ODO_D84B, :NEW_ODO_D84C, :NEW_ODO_D84D, :NEW_ODO_D84E, '
      '  :NEW_ODO_D85, :NEW_ODO_D85A, :NEW_ODO_D85B, :NEW_ODO_D85C, '
      
        '  :NEW_ODO_D85D, :NEW_ODO_D85E, :NEW_ODO_DATA, :NEW_ODO_DTATUALI' +
        'ZACAO, '
      
        '  :NEW_ODO_DTCADASTRO, :NEW_ODO_ESTILOS, :NEW_ODO_HRATUALIZACAO,' +
        ' '
      '  :NEW_ODO_HRCADASTRO, :NEW_ODO_OBSERVACOES, :NEW_ODO_USUARIO)'
      
        'RETURNING ODO_CLIENTE, ODO_CODIGO, ODO_D11, ODO_D11A, ODO_D11B, ' +
        'ODO_D11C, ODO_D11D, ODO_D11E, ODO_D12, ODO_D12A, ODO_D12B, ODO_D' +
        '12C, ODO_D12D, ODO_D12E, ODO_D13, ODO_D13A, ODO_D13B, ODO_D13C, ' +
        'ODO_D13D, ODO_D13E, ODO_D14, ODO_D14A, ODO_D14B, ODO_D14C, ODO_D' +
        '14D, ODO_D14E, ODO_D15, ODO_D15A, ODO_D15B, ODO_D15C, ODO_D15D, ' +
        'ODO_D15E, ODO_D16, ODO_D16A, ODO_D16B, ODO_D16C, ODO_D16D, ODO_D' +
        '16E, ODO_D17, ODO_D17A, ODO_D17B, ODO_D17C, ODO_D17D, ODO_D17E, ' +
        'ODO_D18, ODO_D18A, ODO_D18B, ODO_D18C, ODO_D18D, ODO_D18E, ODO_D' +
        '21, ODO_D21A, ODO_D21B, ODO_D21C, ODO_D21D, ODO_D21E, ODO_D22, O' +
        'DO_D22A, ODO_D22B, ODO_D22C, ODO_D22D, ODO_D22E, ODO_D23, ODO_D2' +
        '3A, ODO_D23B, ODO_D23C, ODO_D23D, ODO_D23E, ODO_D24, ODO_D24A, O' +
        'DO_D24B, ODO_D24C, ODO_D24D, ODO_D24E, ODO_D25, ODO_D25A, ODO_D2' +
        '5B, ODO_D25C, ODO_D25D, ODO_D25E, ODO_D26, ODO_D26A, ODO_D26B, O' +
        'DO_D26C, ODO_D26D, ODO_D26E, ODO_D27, ODO_D27A, ODO_D27B, ODO_D2' +
        '7C, ODO_D27D, ODO_D27E, ODO_D28, ODO_D28A, ODO_D28B, ODO_D28C, O' +
        'DO_D28D, ODO_D28E, ODO_D31, ODO_D31A, ODO_D31B, ODO_D31C, ODO_D3' +
        '1D, ODO_D31E, ODO_D32, ODO_D32A, ODO_D32B, ODO_D32C, ODO_D32D, O' +
        'DO_D32E, ODO_D33, ODO_D33A, ODO_D33B, ODO_D33C, ODO_D33D, ODO_D3' +
        '3E, ODO_D34, ODO_D34A, ODO_D34B, ODO_D34C, ODO_D34D, ODO_D34E, O' +
        'DO_D35, ODO_D35A, ODO_D35B, ODO_D35C, ODO_D35D, ODO_D35E, ODO_D3' +
        '6, ODO_D36A, ODO_D36B, ODO_D36C, ODO_D36D, ODO_D36E, ODO_D37, OD' +
        'O_D37A, ODO_D37B, ODO_D37C, ODO_D37D, ODO_D37E, ODO_D38, ODO_D38' +
        'A, ODO_D38B, ODO_D38C, ODO_D38D, ODO_D38E, ODO_D41, ODO_D41A, OD' +
        'O_D41B, ODO_D41C, ODO_D41D, ODO_D41E, ODO_D42, ODO_D42A, ODO_D42' +
        'B, ODO_D42C, ODO_D42D, ODO_D42E, ODO_D43, ODO_D43A, ODO_D43B, OD' +
        'O_D43C, ODO_D43D, ODO_D43E, ODO_D44, ODO_D44A, ODO_D44B, ODO_D44' +
        'C, ODO_D44D, ODO_D44E, ODO_D45, ODO_D45A, ODO_D45B, ODO_D45C, OD' +
        'O_D45D, ODO_D45E, ODO_D46, ODO_D46A, ODO_D46B, ODO_D46C, ODO_D46' +
        'D, ODO_D46E, ODO_D47, ODO_D47A, ODO_D47B, ODO_D47C, ODO_D47D, OD' +
        'O_D47E, ODO_D48, ODO_D48A, ODO_D48B, ODO_D48C, ODO_D48D, ODO_D48' +
        'E, ODO_D51, ODO_D51A, ODO_D51B, ODO_D51C, ODO_D51D, ODO_D51E, OD' +
        'O_D52, ODO_D52A, ODO_D52B, ODO_D52C, ODO_D52D, ODO_D52E, ODO_D53' +
        ', ODO_D53A, ODO_D53B, ODO_D53C, ODO_D53D, ODO_D53E, ODO_D54, ODO' +
        '_D54A, ODO_D54B, ODO_D54C, ODO_D54D, ODO_D54E, ODO_D55, ODO_D55A' +
        ', ODO_D55B, ODO_D55C, ODO_D55D, ODO_D55E, ODO_D61, ODO_D61A, ODO' +
        '_D61B, ODO_D61C, ODO_D61D, ODO_D61E, ODO_D62, ODO_D62A, ODO_D62B' +
        ', ODO_D62C, ODO_D62D, ODO_D62E, ODO_D63, ODO_D63A, ODO_D63B, ODO' +
        '_D63C, ODO_D63D, ODO_D63E, ODO_D64, ODO_D64A, ODO_D64B, ODO_D64C' +
        ', ODO_D64D, ODO_D64E, ODO_D65, ODO_D65A, ODO_D65B, ODO_D65C, ODO' +
        '_D65D, ODO_D65E, ODO_D71, ODO_D71A, ODO_D71B, ODO_D71C, ODO_D71D' +
        ', ODO_D71E, ODO_D72, ODO_D72A, ODO_D72B, ODO_D72C, ODO_D72D, ODO' +
        '_D72E, ODO_D73, ODO_D73A, ODO_D73B, ODO_D73C, ODO_D73D, ODO_D73E' +
        ', ODO_D74, ODO_D74A, ODO_D74B, ODO_D74C, ODO_D74D, ODO_D74E, ODO' +
        '_D75, ODO_D75A, ODO_D75B, ODO_D75C, ODO_D75D, ODO_D75E, ODO_D81,' +
        ' ODO_D81A, ODO_D81B, ODO_D81C, ODO_D81D, ODO_D81E, ODO_D82, ODO_' +
        'D82A, ODO_D82B, ODO_D82C, ODO_D82D, ODO_D82E, ODO_D83, ODO_D83A,' +
        ' ODO_D83B, ODO_D83C, ODO_D83D, ODO_D83E, ODO_D84, ODO_D84A, ODO_' +
        'D84B, ODO_D84C, ODO_D84D, ODO_D84E, ODO_D85, ODO_D85A, ODO_D85B,' +
        ' ODO_D85C, ODO_D85D, ODO_D85E, ODO_DATA, ODO_DTATUALIZACAO, ODO_' +
        'DTCADASTRO, ODO_ESTILOS, ODO_HRATUALIZACAO, ODO_HRCADASTRO, ODO_' +
        'OBSERVACOES, ODO_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ODONTOGRAMAS'
      
        'SET ODO_CLIENTE = :NEW_ODO_CLIENTE, ODO_CODIGO = :NEW_ODO_CODIGO' +
        ', '
      
        '  ODO_D11 = :NEW_ODO_D11, ODO_D11A = :NEW_ODO_D11A, ODO_D11B = :' +
        'NEW_ODO_D11B, '
      
        '  ODO_D11C = :NEW_ODO_D11C, ODO_D11D = :NEW_ODO_D11D, ODO_D11E =' +
        ' :NEW_ODO_D11E, '
      
        '  ODO_D12 = :NEW_ODO_D12, ODO_D12A = :NEW_ODO_D12A, ODO_D12B = :' +
        'NEW_ODO_D12B, '
      
        '  ODO_D12C = :NEW_ODO_D12C, ODO_D12D = :NEW_ODO_D12D, ODO_D12E =' +
        ' :NEW_ODO_D12E, '
      
        '  ODO_D13 = :NEW_ODO_D13, ODO_D13A = :NEW_ODO_D13A, ODO_D13B = :' +
        'NEW_ODO_D13B, '
      
        '  ODO_D13C = :NEW_ODO_D13C, ODO_D13D = :NEW_ODO_D13D, ODO_D13E =' +
        ' :NEW_ODO_D13E, '
      
        '  ODO_D14 = :NEW_ODO_D14, ODO_D14A = :NEW_ODO_D14A, ODO_D14B = :' +
        'NEW_ODO_D14B, '
      
        '  ODO_D14C = :NEW_ODO_D14C, ODO_D14D = :NEW_ODO_D14D, ODO_D14E =' +
        ' :NEW_ODO_D14E, '
      
        '  ODO_D15 = :NEW_ODO_D15, ODO_D15A = :NEW_ODO_D15A, ODO_D15B = :' +
        'NEW_ODO_D15B, '
      
        '  ODO_D15C = :NEW_ODO_D15C, ODO_D15D = :NEW_ODO_D15D, ODO_D15E =' +
        ' :NEW_ODO_D15E, '
      
        '  ODO_D16 = :NEW_ODO_D16, ODO_D16A = :NEW_ODO_D16A, ODO_D16B = :' +
        'NEW_ODO_D16B, '
      
        '  ODO_D16C = :NEW_ODO_D16C, ODO_D16D = :NEW_ODO_D16D, ODO_D16E =' +
        ' :NEW_ODO_D16E, '
      
        '  ODO_D17 = :NEW_ODO_D17, ODO_D17A = :NEW_ODO_D17A, ODO_D17B = :' +
        'NEW_ODO_D17B, '
      
        '  ODO_D17C = :NEW_ODO_D17C, ODO_D17D = :NEW_ODO_D17D, ODO_D17E =' +
        ' :NEW_ODO_D17E, '
      
        '  ODO_D18 = :NEW_ODO_D18, ODO_D18A = :NEW_ODO_D18A, ODO_D18B = :' +
        'NEW_ODO_D18B, '
      
        '  ODO_D18C = :NEW_ODO_D18C, ODO_D18D = :NEW_ODO_D18D, ODO_D18E =' +
        ' :NEW_ODO_D18E, '
      
        '  ODO_D21 = :NEW_ODO_D21, ODO_D21A = :NEW_ODO_D21A, ODO_D21B = :' +
        'NEW_ODO_D21B, '
      
        '  ODO_D21C = :NEW_ODO_D21C, ODO_D21D = :NEW_ODO_D21D, ODO_D21E =' +
        ' :NEW_ODO_D21E, '
      
        '  ODO_D22 = :NEW_ODO_D22, ODO_D22A = :NEW_ODO_D22A, ODO_D22B = :' +
        'NEW_ODO_D22B, '
      
        '  ODO_D22C = :NEW_ODO_D22C, ODO_D22D = :NEW_ODO_D22D, ODO_D22E =' +
        ' :NEW_ODO_D22E, '
      
        '  ODO_D23 = :NEW_ODO_D23, ODO_D23A = :NEW_ODO_D23A, ODO_D23B = :' +
        'NEW_ODO_D23B, '
      
        '  ODO_D23C = :NEW_ODO_D23C, ODO_D23D = :NEW_ODO_D23D, ODO_D23E =' +
        ' :NEW_ODO_D23E, '
      
        '  ODO_D24 = :NEW_ODO_D24, ODO_D24A = :NEW_ODO_D24A, ODO_D24B = :' +
        'NEW_ODO_D24B, '
      
        '  ODO_D24C = :NEW_ODO_D24C, ODO_D24D = :NEW_ODO_D24D, ODO_D24E =' +
        ' :NEW_ODO_D24E, '
      
        '  ODO_D25 = :NEW_ODO_D25, ODO_D25A = :NEW_ODO_D25A, ODO_D25B = :' +
        'NEW_ODO_D25B, '
      
        '  ODO_D25C = :NEW_ODO_D25C, ODO_D25D = :NEW_ODO_D25D, ODO_D25E =' +
        ' :NEW_ODO_D25E, '
      
        '  ODO_D26 = :NEW_ODO_D26, ODO_D26A = :NEW_ODO_D26A, ODO_D26B = :' +
        'NEW_ODO_D26B, '
      
        '  ODO_D26C = :NEW_ODO_D26C, ODO_D26D = :NEW_ODO_D26D, ODO_D26E =' +
        ' :NEW_ODO_D26E, '
      
        '  ODO_D27 = :NEW_ODO_D27, ODO_D27A = :NEW_ODO_D27A, ODO_D27B = :' +
        'NEW_ODO_D27B, '
      
        '  ODO_D27C = :NEW_ODO_D27C, ODO_D27D = :NEW_ODO_D27D, ODO_D27E =' +
        ' :NEW_ODO_D27E, '
      
        '  ODO_D28 = :NEW_ODO_D28, ODO_D28A = :NEW_ODO_D28A, ODO_D28B = :' +
        'NEW_ODO_D28B, '
      
        '  ODO_D28C = :NEW_ODO_D28C, ODO_D28D = :NEW_ODO_D28D, ODO_D28E =' +
        ' :NEW_ODO_D28E, '
      
        '  ODO_D31 = :NEW_ODO_D31, ODO_D31A = :NEW_ODO_D31A, ODO_D31B = :' +
        'NEW_ODO_D31B, '
      
        '  ODO_D31C = :NEW_ODO_D31C, ODO_D31D = :NEW_ODO_D31D, ODO_D31E =' +
        ' :NEW_ODO_D31E, '
      
        '  ODO_D32 = :NEW_ODO_D32, ODO_D32A = :NEW_ODO_D32A, ODO_D32B = :' +
        'NEW_ODO_D32B, '
      
        '  ODO_D32C = :NEW_ODO_D32C, ODO_D32D = :NEW_ODO_D32D, ODO_D32E =' +
        ' :NEW_ODO_D32E, '
      
        '  ODO_D33 = :NEW_ODO_D33, ODO_D33A = :NEW_ODO_D33A, ODO_D33B = :' +
        'NEW_ODO_D33B, '
      
        '  ODO_D33C = :NEW_ODO_D33C, ODO_D33D = :NEW_ODO_D33D, ODO_D33E =' +
        ' :NEW_ODO_D33E, '
      
        '  ODO_D34 = :NEW_ODO_D34, ODO_D34A = :NEW_ODO_D34A, ODO_D34B = :' +
        'NEW_ODO_D34B, '
      
        '  ODO_D34C = :NEW_ODO_D34C, ODO_D34D = :NEW_ODO_D34D, ODO_D34E =' +
        ' :NEW_ODO_D34E, '
      
        '  ODO_D35 = :NEW_ODO_D35, ODO_D35A = :NEW_ODO_D35A, ODO_D35B = :' +
        'NEW_ODO_D35B, '
      
        '  ODO_D35C = :NEW_ODO_D35C, ODO_D35D = :NEW_ODO_D35D, ODO_D35E =' +
        ' :NEW_ODO_D35E, '
      
        '  ODO_D36 = :NEW_ODO_D36, ODO_D36A = :NEW_ODO_D36A, ODO_D36B = :' +
        'NEW_ODO_D36B, '
      
        '  ODO_D36C = :NEW_ODO_D36C, ODO_D36D = :NEW_ODO_D36D, ODO_D36E =' +
        ' :NEW_ODO_D36E, '
      
        '  ODO_D37 = :NEW_ODO_D37, ODO_D37A = :NEW_ODO_D37A, ODO_D37B = :' +
        'NEW_ODO_D37B, '
      
        '  ODO_D37C = :NEW_ODO_D37C, ODO_D37D = :NEW_ODO_D37D, ODO_D37E =' +
        ' :NEW_ODO_D37E, '
      
        '  ODO_D38 = :NEW_ODO_D38, ODO_D38A = :NEW_ODO_D38A, ODO_D38B = :' +
        'NEW_ODO_D38B, '
      
        '  ODO_D38C = :NEW_ODO_D38C, ODO_D38D = :NEW_ODO_D38D, ODO_D38E =' +
        ' :NEW_ODO_D38E, '
      
        '  ODO_D41 = :NEW_ODO_D41, ODO_D41A = :NEW_ODO_D41A, ODO_D41B = :' +
        'NEW_ODO_D41B, '
      
        '  ODO_D41C = :NEW_ODO_D41C, ODO_D41D = :NEW_ODO_D41D, ODO_D41E =' +
        ' :NEW_ODO_D41E, '
      
        '  ODO_D42 = :NEW_ODO_D42, ODO_D42A = :NEW_ODO_D42A, ODO_D42B = :' +
        'NEW_ODO_D42B, '
      
        '  ODO_D42C = :NEW_ODO_D42C, ODO_D42D = :NEW_ODO_D42D, ODO_D42E =' +
        ' :NEW_ODO_D42E, '
      
        '  ODO_D43 = :NEW_ODO_D43, ODO_D43A = :NEW_ODO_D43A, ODO_D43B = :' +
        'NEW_ODO_D43B, '
      
        '  ODO_D43C = :NEW_ODO_D43C, ODO_D43D = :NEW_ODO_D43D, ODO_D43E =' +
        ' :NEW_ODO_D43E, '
      
        '  ODO_D44 = :NEW_ODO_D44, ODO_D44A = :NEW_ODO_D44A, ODO_D44B = :' +
        'NEW_ODO_D44B, '
      
        '  ODO_D44C = :NEW_ODO_D44C, ODO_D44D = :NEW_ODO_D44D, ODO_D44E =' +
        ' :NEW_ODO_D44E, '
      
        '  ODO_D45 = :NEW_ODO_D45, ODO_D45A = :NEW_ODO_D45A, ODO_D45B = :' +
        'NEW_ODO_D45B, '
      
        '  ODO_D45C = :NEW_ODO_D45C, ODO_D45D = :NEW_ODO_D45D, ODO_D45E =' +
        ' :NEW_ODO_D45E, '
      
        '  ODO_D46 = :NEW_ODO_D46, ODO_D46A = :NEW_ODO_D46A, ODO_D46B = :' +
        'NEW_ODO_D46B, '
      
        '  ODO_D46C = :NEW_ODO_D46C, ODO_D46D = :NEW_ODO_D46D, ODO_D46E =' +
        ' :NEW_ODO_D46E, '
      
        '  ODO_D47 = :NEW_ODO_D47, ODO_D47A = :NEW_ODO_D47A, ODO_D47B = :' +
        'NEW_ODO_D47B, '
      
        '  ODO_D47C = :NEW_ODO_D47C, ODO_D47D = :NEW_ODO_D47D, ODO_D47E =' +
        ' :NEW_ODO_D47E, '
      
        '  ODO_D48 = :NEW_ODO_D48, ODO_D48A = :NEW_ODO_D48A, ODO_D48B = :' +
        'NEW_ODO_D48B, '
      
        '  ODO_D48C = :NEW_ODO_D48C, ODO_D48D = :NEW_ODO_D48D, ODO_D48E =' +
        ' :NEW_ODO_D48E, '
      
        '  ODO_D51 = :NEW_ODO_D51, ODO_D51A = :NEW_ODO_D51A, ODO_D51B = :' +
        'NEW_ODO_D51B, '
      
        '  ODO_D51C = :NEW_ODO_D51C, ODO_D51D = :NEW_ODO_D51D, ODO_D51E =' +
        ' :NEW_ODO_D51E, '
      
        '  ODO_D52 = :NEW_ODO_D52, ODO_D52A = :NEW_ODO_D52A, ODO_D52B = :' +
        'NEW_ODO_D52B, '
      
        '  ODO_D52C = :NEW_ODO_D52C, ODO_D52D = :NEW_ODO_D52D, ODO_D52E =' +
        ' :NEW_ODO_D52E, '
      
        '  ODO_D53 = :NEW_ODO_D53, ODO_D53A = :NEW_ODO_D53A, ODO_D53B = :' +
        'NEW_ODO_D53B, '
      
        '  ODO_D53C = :NEW_ODO_D53C, ODO_D53D = :NEW_ODO_D53D, ODO_D53E =' +
        ' :NEW_ODO_D53E, '
      
        '  ODO_D54 = :NEW_ODO_D54, ODO_D54A = :NEW_ODO_D54A, ODO_D54B = :' +
        'NEW_ODO_D54B, '
      
        '  ODO_D54C = :NEW_ODO_D54C, ODO_D54D = :NEW_ODO_D54D, ODO_D54E =' +
        ' :NEW_ODO_D54E, '
      
        '  ODO_D55 = :NEW_ODO_D55, ODO_D55A = :NEW_ODO_D55A, ODO_D55B = :' +
        'NEW_ODO_D55B, '
      
        '  ODO_D55C = :NEW_ODO_D55C, ODO_D55D = :NEW_ODO_D55D, ODO_D55E =' +
        ' :NEW_ODO_D55E, '
      
        '  ODO_D61 = :NEW_ODO_D61, ODO_D61A = :NEW_ODO_D61A, ODO_D61B = :' +
        'NEW_ODO_D61B, '
      
        '  ODO_D61C = :NEW_ODO_D61C, ODO_D61D = :NEW_ODO_D61D, ODO_D61E =' +
        ' :NEW_ODO_D61E, '
      
        '  ODO_D62 = :NEW_ODO_D62, ODO_D62A = :NEW_ODO_D62A, ODO_D62B = :' +
        'NEW_ODO_D62B, '
      
        '  ODO_D62C = :NEW_ODO_D62C, ODO_D62D = :NEW_ODO_D62D, ODO_D62E =' +
        ' :NEW_ODO_D62E, '
      
        '  ODO_D63 = :NEW_ODO_D63, ODO_D63A = :NEW_ODO_D63A, ODO_D63B = :' +
        'NEW_ODO_D63B, '
      
        '  ODO_D63C = :NEW_ODO_D63C, ODO_D63D = :NEW_ODO_D63D, ODO_D63E =' +
        ' :NEW_ODO_D63E, '
      
        '  ODO_D64 = :NEW_ODO_D64, ODO_D64A = :NEW_ODO_D64A, ODO_D64B = :' +
        'NEW_ODO_D64B, '
      
        '  ODO_D64C = :NEW_ODO_D64C, ODO_D64D = :NEW_ODO_D64D, ODO_D64E =' +
        ' :NEW_ODO_D64E, '
      
        '  ODO_D65 = :NEW_ODO_D65, ODO_D65A = :NEW_ODO_D65A, ODO_D65B = :' +
        'NEW_ODO_D65B, '
      
        '  ODO_D65C = :NEW_ODO_D65C, ODO_D65D = :NEW_ODO_D65D, ODO_D65E =' +
        ' :NEW_ODO_D65E, '
      
        '  ODO_D71 = :NEW_ODO_D71, ODO_D71A = :NEW_ODO_D71A, ODO_D71B = :' +
        'NEW_ODO_D71B, '
      
        '  ODO_D71C = :NEW_ODO_D71C, ODO_D71D = :NEW_ODO_D71D, ODO_D71E =' +
        ' :NEW_ODO_D71E, '
      
        '  ODO_D72 = :NEW_ODO_D72, ODO_D72A = :NEW_ODO_D72A, ODO_D72B = :' +
        'NEW_ODO_D72B, '
      
        '  ODO_D72C = :NEW_ODO_D72C, ODO_D72D = :NEW_ODO_D72D, ODO_D72E =' +
        ' :NEW_ODO_D72E, '
      
        '  ODO_D73 = :NEW_ODO_D73, ODO_D73A = :NEW_ODO_D73A, ODO_D73B = :' +
        'NEW_ODO_D73B, '
      
        '  ODO_D73C = :NEW_ODO_D73C, ODO_D73D = :NEW_ODO_D73D, ODO_D73E =' +
        ' :NEW_ODO_D73E, '
      
        '  ODO_D74 = :NEW_ODO_D74, ODO_D74A = :NEW_ODO_D74A, ODO_D74B = :' +
        'NEW_ODO_D74B, '
      
        '  ODO_D74C = :NEW_ODO_D74C, ODO_D74D = :NEW_ODO_D74D, ODO_D74E =' +
        ' :NEW_ODO_D74E, '
      
        '  ODO_D75 = :NEW_ODO_D75, ODO_D75A = :NEW_ODO_D75A, ODO_D75B = :' +
        'NEW_ODO_D75B, '
      
        '  ODO_D75C = :NEW_ODO_D75C, ODO_D75D = :NEW_ODO_D75D, ODO_D75E =' +
        ' :NEW_ODO_D75E, '
      
        '  ODO_D81 = :NEW_ODO_D81, ODO_D81A = :NEW_ODO_D81A, ODO_D81B = :' +
        'NEW_ODO_D81B, '
      
        '  ODO_D81C = :NEW_ODO_D81C, ODO_D81D = :NEW_ODO_D81D, ODO_D81E =' +
        ' :NEW_ODO_D81E, '
      
        '  ODO_D82 = :NEW_ODO_D82, ODO_D82A = :NEW_ODO_D82A, ODO_D82B = :' +
        'NEW_ODO_D82B, '
      
        '  ODO_D82C = :NEW_ODO_D82C, ODO_D82D = :NEW_ODO_D82D, ODO_D82E =' +
        ' :NEW_ODO_D82E, '
      
        '  ODO_D83 = :NEW_ODO_D83, ODO_D83A = :NEW_ODO_D83A, ODO_D83B = :' +
        'NEW_ODO_D83B, '
      
        '  ODO_D83C = :NEW_ODO_D83C, ODO_D83D = :NEW_ODO_D83D, ODO_D83E =' +
        ' :NEW_ODO_D83E, '
      
        '  ODO_D84 = :NEW_ODO_D84, ODO_D84A = :NEW_ODO_D84A, ODO_D84B = :' +
        'NEW_ODO_D84B, '
      
        '  ODO_D84C = :NEW_ODO_D84C, ODO_D84D = :NEW_ODO_D84D, ODO_D84E =' +
        ' :NEW_ODO_D84E, '
      
        '  ODO_D85 = :NEW_ODO_D85, ODO_D85A = :NEW_ODO_D85A, ODO_D85B = :' +
        'NEW_ODO_D85B, '
      
        '  ODO_D85C = :NEW_ODO_D85C, ODO_D85D = :NEW_ODO_D85D, ODO_D85E =' +
        ' :NEW_ODO_D85E, '
      
        '  ODO_DATA = :NEW_ODO_DATA, ODO_DTATUALIZACAO = :NEW_ODO_DTATUAL' +
        'IZACAO, '
      
        '  ODO_DTCADASTRO = :NEW_ODO_DTCADASTRO, ODO_ESTILOS = :NEW_ODO_E' +
        'STILOS, '
      
        '  ODO_HRATUALIZACAO = :NEW_ODO_HRATUALIZACAO, ODO_HRCADASTRO = :' +
        'NEW_ODO_HRCADASTRO, '
      
        '  ODO_OBSERVACOES = :NEW_ODO_OBSERVACOES, ODO_USUARIO = :NEW_ODO' +
        '_USUARIO'
      'WHERE ODO_CODIGO = :OLD_ODO_CODIGO'
      
        'RETURNING ODO_CLIENTE, ODO_CODIGO, ODO_D11, ODO_D11A, ODO_D11B, ' +
        'ODO_D11C, ODO_D11D, ODO_D11E, ODO_D12, ODO_D12A, ODO_D12B, ODO_D' +
        '12C, ODO_D12D, ODO_D12E, ODO_D13, ODO_D13A, ODO_D13B, ODO_D13C, ' +
        'ODO_D13D, ODO_D13E, ODO_D14, ODO_D14A, ODO_D14B, ODO_D14C, ODO_D' +
        '14D, ODO_D14E, ODO_D15, ODO_D15A, ODO_D15B, ODO_D15C, ODO_D15D, ' +
        'ODO_D15E, ODO_D16, ODO_D16A, ODO_D16B, ODO_D16C, ODO_D16D, ODO_D' +
        '16E, ODO_D17, ODO_D17A, ODO_D17B, ODO_D17C, ODO_D17D, ODO_D17E, ' +
        'ODO_D18, ODO_D18A, ODO_D18B, ODO_D18C, ODO_D18D, ODO_D18E, ODO_D' +
        '21, ODO_D21A, ODO_D21B, ODO_D21C, ODO_D21D, ODO_D21E, ODO_D22, O' +
        'DO_D22A, ODO_D22B, ODO_D22C, ODO_D22D, ODO_D22E, ODO_D23, ODO_D2' +
        '3A, ODO_D23B, ODO_D23C, ODO_D23D, ODO_D23E, ODO_D24, ODO_D24A, O' +
        'DO_D24B, ODO_D24C, ODO_D24D, ODO_D24E, ODO_D25, ODO_D25A, ODO_D2' +
        '5B, ODO_D25C, ODO_D25D, ODO_D25E, ODO_D26, ODO_D26A, ODO_D26B, O' +
        'DO_D26C, ODO_D26D, ODO_D26E, ODO_D27, ODO_D27A, ODO_D27B, ODO_D2' +
        '7C, ODO_D27D, ODO_D27E, ODO_D28, ODO_D28A, ODO_D28B, ODO_D28C, O' +
        'DO_D28D, ODO_D28E, ODO_D31, ODO_D31A, ODO_D31B, ODO_D31C, ODO_D3' +
        '1D, ODO_D31E, ODO_D32, ODO_D32A, ODO_D32B, ODO_D32C, ODO_D32D, O' +
        'DO_D32E, ODO_D33, ODO_D33A, ODO_D33B, ODO_D33C, ODO_D33D, ODO_D3' +
        '3E, ODO_D34, ODO_D34A, ODO_D34B, ODO_D34C, ODO_D34D, ODO_D34E, O' +
        'DO_D35, ODO_D35A, ODO_D35B, ODO_D35C, ODO_D35D, ODO_D35E, ODO_D3' +
        '6, ODO_D36A, ODO_D36B, ODO_D36C, ODO_D36D, ODO_D36E, ODO_D37, OD' +
        'O_D37A, ODO_D37B, ODO_D37C, ODO_D37D, ODO_D37E, ODO_D38, ODO_D38' +
        'A, ODO_D38B, ODO_D38C, ODO_D38D, ODO_D38E, ODO_D41, ODO_D41A, OD' +
        'O_D41B, ODO_D41C, ODO_D41D, ODO_D41E, ODO_D42, ODO_D42A, ODO_D42' +
        'B, ODO_D42C, ODO_D42D, ODO_D42E, ODO_D43, ODO_D43A, ODO_D43B, OD' +
        'O_D43C, ODO_D43D, ODO_D43E, ODO_D44, ODO_D44A, ODO_D44B, ODO_D44' +
        'C, ODO_D44D, ODO_D44E, ODO_D45, ODO_D45A, ODO_D45B, ODO_D45C, OD' +
        'O_D45D, ODO_D45E, ODO_D46, ODO_D46A, ODO_D46B, ODO_D46C, ODO_D46' +
        'D, ODO_D46E, ODO_D47, ODO_D47A, ODO_D47B, ODO_D47C, ODO_D47D, OD' +
        'O_D47E, ODO_D48, ODO_D48A, ODO_D48B, ODO_D48C, ODO_D48D, ODO_D48' +
        'E, ODO_D51, ODO_D51A, ODO_D51B, ODO_D51C, ODO_D51D, ODO_D51E, OD' +
        'O_D52, ODO_D52A, ODO_D52B, ODO_D52C, ODO_D52D, ODO_D52E, ODO_D53' +
        ', ODO_D53A, ODO_D53B, ODO_D53C, ODO_D53D, ODO_D53E, ODO_D54, ODO' +
        '_D54A, ODO_D54B, ODO_D54C, ODO_D54D, ODO_D54E, ODO_D55, ODO_D55A' +
        ', ODO_D55B, ODO_D55C, ODO_D55D, ODO_D55E, ODO_D61, ODO_D61A, ODO' +
        '_D61B, ODO_D61C, ODO_D61D, ODO_D61E, ODO_D62, ODO_D62A, ODO_D62B' +
        ', ODO_D62C, ODO_D62D, ODO_D62E, ODO_D63, ODO_D63A, ODO_D63B, ODO' +
        '_D63C, ODO_D63D, ODO_D63E, ODO_D64, ODO_D64A, ODO_D64B, ODO_D64C' +
        ', ODO_D64D, ODO_D64E, ODO_D65, ODO_D65A, ODO_D65B, ODO_D65C, ODO' +
        '_D65D, ODO_D65E, ODO_D71, ODO_D71A, ODO_D71B, ODO_D71C, ODO_D71D' +
        ', ODO_D71E, ODO_D72, ODO_D72A, ODO_D72B, ODO_D72C, ODO_D72D, ODO' +
        '_D72E, ODO_D73, ODO_D73A, ODO_D73B, ODO_D73C, ODO_D73D, ODO_D73E' +
        ', ODO_D74, ODO_D74A, ODO_D74B, ODO_D74C, ODO_D74D, ODO_D74E, ODO' +
        '_D75, ODO_D75A, ODO_D75B, ODO_D75C, ODO_D75D, ODO_D75E, ODO_D81,' +
        ' ODO_D81A, ODO_D81B, ODO_D81C, ODO_D81D, ODO_D81E, ODO_D82, ODO_' +
        'D82A, ODO_D82B, ODO_D82C, ODO_D82D, ODO_D82E, ODO_D83, ODO_D83A,' +
        ' ODO_D83B, ODO_D83C, ODO_D83D, ODO_D83E, ODO_D84, ODO_D84A, ODO_' +
        'D84B, ODO_D84C, ODO_D84D, ODO_D84E, ODO_D85, ODO_D85A, ODO_D85B,' +
        ' ODO_D85C, ODO_D85D, ODO_D85E, ODO_DATA, ODO_DTATUALIZACAO, ODO_' +
        'DTCADASTRO, ODO_ESTILOS, ODO_HRATUALIZACAO, ODO_HRCADASTRO, ODO_' +
        'OBSERVACOES, ODO_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ODONTOGRAMAS'
      'WHERE ODO_CODIGO = :OLD_ODO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ODO_CLIENTE, ODO_CODIGO, ODO_D11, ODO_D11A, ODO_D11B, ODO' +
        '_D11C, '
      '  ODO_D11D, ODO_D11E, ODO_D12, ODO_D12A, ODO_D12B, ODO_D12C, '
      '  ODO_D12D, ODO_D12E, ODO_D13, ODO_D13A, ODO_D13B, ODO_D13C, '
      '  ODO_D13D, ODO_D13E, ODO_D14, ODO_D14A, ODO_D14B, ODO_D14C, '
      '  ODO_D14D, ODO_D14E, ODO_D15, ODO_D15A, ODO_D15B, ODO_D15C, '
      '  ODO_D15D, ODO_D15E, ODO_D16, ODO_D16A, ODO_D16B, ODO_D16C, '
      '  ODO_D16D, ODO_D16E, ODO_D17, ODO_D17A, ODO_D17B, ODO_D17C, '
      '  ODO_D17D, ODO_D17E, ODO_D18, ODO_D18A, ODO_D18B, ODO_D18C, '
      '  ODO_D18D, ODO_D18E, ODO_D21, ODO_D21A, ODO_D21B, ODO_D21C, '
      '  ODO_D21D, ODO_D21E, ODO_D22, ODO_D22A, ODO_D22B, ODO_D22C, '
      '  ODO_D22D, ODO_D22E, ODO_D23, ODO_D23A, ODO_D23B, ODO_D23C, '
      '  ODO_D23D, ODO_D23E, ODO_D24, ODO_D24A, ODO_D24B, ODO_D24C, '
      '  ODO_D24D, ODO_D24E, ODO_D25, ODO_D25A, ODO_D25B, ODO_D25C, '
      '  ODO_D25D, ODO_D25E, ODO_D26, ODO_D26A, ODO_D26B, ODO_D26C, '
      '  ODO_D26D, ODO_D26E, ODO_D27, ODO_D27A, ODO_D27B, ODO_D27C, '
      '  ODO_D27D, ODO_D27E, ODO_D28, ODO_D28A, ODO_D28B, ODO_D28C, '
      '  ODO_D28D, ODO_D28E, ODO_D31, ODO_D31A, ODO_D31B, ODO_D31C, '
      '  ODO_D31D, ODO_D31E, ODO_D32, ODO_D32A, ODO_D32B, ODO_D32C, '
      '  ODO_D32D, ODO_D32E, ODO_D33, ODO_D33A, ODO_D33B, ODO_D33C, '
      '  ODO_D33D, ODO_D33E, ODO_D34, ODO_D34A, ODO_D34B, ODO_D34C, '
      '  ODO_D34D, ODO_D34E, ODO_D35, ODO_D35A, ODO_D35B, ODO_D35C, '
      '  ODO_D35D, ODO_D35E, ODO_D36, ODO_D36A, ODO_D36B, ODO_D36C, '
      '  ODO_D36D, ODO_D36E, ODO_D37, ODO_D37A, ODO_D37B, ODO_D37C, '
      '  ODO_D37D, ODO_D37E, ODO_D38, ODO_D38A, ODO_D38B, ODO_D38C, '
      '  ODO_D38D, ODO_D38E, ODO_D41, ODO_D41A, ODO_D41B, ODO_D41C, '
      '  ODO_D41D, ODO_D41E, ODO_D42, ODO_D42A, ODO_D42B, ODO_D42C, '
      '  ODO_D42D, ODO_D42E, ODO_D43, ODO_D43A, ODO_D43B, ODO_D43C, '
      '  ODO_D43D, ODO_D43E, ODO_D44, ODO_D44A, ODO_D44B, ODO_D44C, '
      '  ODO_D44D, ODO_D44E, ODO_D45, ODO_D45A, ODO_D45B, ODO_D45C, '
      '  ODO_D45D, ODO_D45E, ODO_D46, ODO_D46A, ODO_D46B, ODO_D46C, '
      '  ODO_D46D, ODO_D46E, ODO_D47, ODO_D47A, ODO_D47B, ODO_D47C, '
      '  ODO_D47D, ODO_D47E, ODO_D48, ODO_D48A, ODO_D48B, ODO_D48C, '
      '  ODO_D48D, ODO_D48E, ODO_D51, ODO_D51A, ODO_D51B, ODO_D51C, '
      '  ODO_D51D, ODO_D51E, ODO_D52, ODO_D52A, ODO_D52B, ODO_D52C, '
      '  ODO_D52D, ODO_D52E, ODO_D53, ODO_D53A, ODO_D53B, ODO_D53C, '
      '  ODO_D53D, ODO_D53E, ODO_D54, ODO_D54A, ODO_D54B, ODO_D54C, '
      '  ODO_D54D, ODO_D54E, ODO_D55, ODO_D55A, ODO_D55B, ODO_D55C, '
      '  ODO_D55D, ODO_D55E, ODO_D61, ODO_D61A, ODO_D61B, ODO_D61C, '
      '  ODO_D61D, ODO_D61E, ODO_D62, ODO_D62A, ODO_D62B, ODO_D62C, '
      '  ODO_D62D, ODO_D62E, ODO_D63, ODO_D63A, ODO_D63B, ODO_D63C, '
      '  ODO_D63D, ODO_D63E, ODO_D64, ODO_D64A, ODO_D64B, ODO_D64C, '
      '  ODO_D64D, ODO_D64E, ODO_D65, ODO_D65A, ODO_D65B, ODO_D65C, '
      '  ODO_D65D, ODO_D65E, ODO_D71, ODO_D71A, ODO_D71B, ODO_D71C, '
      '  ODO_D71D, ODO_D71E, ODO_D72, ODO_D72A, ODO_D72B, ODO_D72C, '
      '  ODO_D72D, ODO_D72E, ODO_D73, ODO_D73A, ODO_D73B, ODO_D73C, '
      '  ODO_D73D, ODO_D73E, ODO_D74, ODO_D74A, ODO_D74B, ODO_D74C, '
      '  ODO_D74D, ODO_D74E, ODO_D75, ODO_D75A, ODO_D75B, ODO_D75C, '
      '  ODO_D75D, ODO_D75E, ODO_D81, ODO_D81A, ODO_D81B, ODO_D81C, '
      '  ODO_D81D, ODO_D81E, ODO_D82, ODO_D82A, ODO_D82B, ODO_D82C, '
      '  ODO_D82D, ODO_D82E, ODO_D83, ODO_D83A, ODO_D83B, ODO_D83C, '
      '  ODO_D83D, ODO_D83E, ODO_D84, ODO_D84A, ODO_D84B, ODO_D84C, '
      '  ODO_D84D, ODO_D84E, ODO_D85, ODO_D85A, ODO_D85B, ODO_D85C, '
      
        '  ODO_D85D, ODO_D85E, ODO_DATA, ODO_DTATUALIZACAO, ODO_DTCADASTR' +
        'O, '
      
        '  ODO_ESTILOS, ODO_HRATUALIZACAO, ODO_HRCADASTRO, ODO_OBSERVACOE' +
        'S, '
      '  ODO_USUARIO'
      'FROM ODONTOGRAMAS'
      'WHERE ODO_CODIGO = :OLD_ODO_CODIGO')
    Left = 1088
    Top = 208
  end
  object TBOdontogramas: TFDQuery
    BeforeInsert = TBOdontogramasBeforeInsert
    AfterInsert = TBOdontogramasAfterInsert
    BeforeEdit = TBOdontogramasBeforeEdit
    BeforePost = TBOdontogramasBeforePost
    MasterSource = DM.DSClientes
    MasterFields = 'CLI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TROdontogramas
    UpdateObject = UPOdontogramas
    SQL.Strings = (
      'select'
      'ODO_CLIENTE,'
      'ODO_CODIGO,'
      'ODO_D11,'
      'ODO_D11A,'
      'ODO_D11B,'
      'ODO_D11C,'
      'ODO_D11D,'
      'ODO_D11E,'
      'ODO_D12,'
      'ODO_D12A,'
      'ODO_D12B,'
      'ODO_D12C,'
      'ODO_D12D,'
      'ODO_D12E,'
      'ODO_D13,'
      'ODO_D13A,'
      'ODO_D13B,'
      'ODO_D13C,'
      'ODO_D13D,'
      'ODO_D13E,'
      'ODO_D14,'
      'ODO_D14A,'
      'ODO_D14B,'
      'ODO_D14C,'
      'ODO_D14D,'
      'ODO_D14E,'
      'ODO_D15,'
      'ODO_D15A,'
      'ODO_D15B,'
      'ODO_D15C,'
      'ODO_D15D,'
      'ODO_D15E,'
      'ODO_D16,'
      'ODO_D16A,'
      'ODO_D16B,'
      'ODO_D16C,'
      'ODO_D16D,'
      'ODO_D16E,'
      'ODO_D17,'
      'ODO_D17A,'
      'ODO_D17B,'
      'ODO_D17C,'
      'ODO_D17D,'
      'ODO_D17E,'
      'ODO_D18,'
      'ODO_D18A,'
      'ODO_D18B,'
      'ODO_D18C,'
      'ODO_D18D,'
      'ODO_D18E,'
      'ODO_D21,'
      'ODO_D21A,'
      'ODO_D21B,'
      'ODO_D21C,'
      'ODO_D21D,'
      'ODO_D21E,'
      'ODO_D22,'
      'ODO_D22A,'
      'ODO_D22B,'
      'ODO_D22C,'
      'ODO_D22D,'
      'ODO_D22E,'
      'ODO_D23,'
      'ODO_D23A,'
      'ODO_D23B,'
      'ODO_D23C,'
      'ODO_D23D,'
      'ODO_D23E,'
      'ODO_D24,'
      'ODO_D24A,'
      'ODO_D24B,'
      'ODO_D24C,'
      'ODO_D24D,'
      'ODO_D24E,'
      'ODO_D25,'
      'ODO_D25A,'
      'ODO_D25B,'
      'ODO_D25C,'
      'ODO_D25D,'
      'ODO_D25E,'
      'ODO_D26,'
      'ODO_D26A,'
      'ODO_D26B,'
      'ODO_D26C,'
      'ODO_D26D,'
      'ODO_D26E,'
      'ODO_D27,'
      'ODO_D27A,'
      'ODO_D27B,'
      'ODO_D27C,'
      'ODO_D27D,'
      'ODO_D27E,'
      'ODO_D28,'
      'ODO_D28A,'
      'ODO_D28B,'
      'ODO_D28C,'
      'ODO_D28D,'
      'ODO_D28E,'
      'ODO_D31,'
      'ODO_D31A,'
      'ODO_D31B,'
      'ODO_D31C,'
      'ODO_D31D,'
      'ODO_D31E,'
      'ODO_D32,'
      'ODO_D32A,'
      'ODO_D32B,'
      'ODO_D32C,'
      'ODO_D32D,'
      'ODO_D32E,'
      'ODO_D33,'
      'ODO_D33A,'
      'ODO_D33B,'
      'ODO_D33C,'
      'ODO_D33D,'
      'ODO_D33E,'
      'ODO_D34,'
      'ODO_D34A,'
      'ODO_D34B,'
      'ODO_D34C,'
      'ODO_D34D,'
      'ODO_D34E,'
      'ODO_D35,'
      'ODO_D35A,'
      'ODO_D35B,'
      'ODO_D35C,'
      'ODO_D35D,'
      'ODO_D35E,'
      'ODO_D36,'
      'ODO_D36A,'
      'ODO_D36B,'
      'ODO_D36C,'
      'ODO_D36D,'
      'ODO_D36E,'
      'ODO_D37,'
      'ODO_D37A,'
      'ODO_D37B,'
      'ODO_D37C,'
      'ODO_D37D,'
      'ODO_D37E,'
      'ODO_D38,'
      'ODO_D38A,'
      'ODO_D38B,'
      'ODO_D38C,'
      'ODO_D38D,'
      'ODO_D38E,'
      'ODO_D41,'
      'ODO_D41A,'
      'ODO_D41B,'
      'ODO_D41C,'
      'ODO_D41D,'
      'ODO_D41E,'
      'ODO_D42,'
      'ODO_D42A,'
      'ODO_D42B,'
      'ODO_D42C,'
      'ODO_D42D,'
      'ODO_D42E,'
      'ODO_D43,'
      'ODO_D43A,'
      'ODO_D43B,'
      'ODO_D43C,'
      'ODO_D43D,'
      'ODO_D43E,'
      'ODO_D44,'
      'ODO_D44A,'
      'ODO_D44B,'
      'ODO_D44C,'
      'ODO_D44D,'
      'ODO_D44E,'
      'ODO_D45,'
      'ODO_D45A,'
      'ODO_D45B,'
      'ODO_D45C,'
      'ODO_D45D,'
      'ODO_D45E,'
      'ODO_D46,'
      'ODO_D46A,'
      'ODO_D46B,'
      'ODO_D46C,'
      'ODO_D46D,'
      'ODO_D46E,'
      'ODO_D47,'
      'ODO_D47A,'
      'ODO_D47B,'
      'ODO_D47C,'
      'ODO_D47D,'
      'ODO_D47E,'
      'ODO_D48,'
      'ODO_D48A,'
      'ODO_D48B,'
      'ODO_D48C,'
      'ODO_D48D,'
      'ODO_D48E,'
      'ODO_D51,'
      'ODO_D51A,'
      'ODO_D51B,'
      'ODO_D51C,'
      'ODO_D51D,'
      'ODO_D51E,'
      'ODO_D52,'
      'ODO_D52A,'
      'ODO_D52B,'
      'ODO_D52C,'
      'ODO_D52D,'
      'ODO_D52E,'
      'ODO_D53,'
      'ODO_D53A,'
      'ODO_D53B,'
      'ODO_D53C,'
      'ODO_D53D,'
      'ODO_D53E,'
      'ODO_D54,'
      'ODO_D54A,'
      'ODO_D54B,'
      'ODO_D54C,'
      'ODO_D54D,'
      'ODO_D54E,'
      'ODO_D55,'
      'ODO_D55A,'
      'ODO_D55B,'
      'ODO_D55C,'
      'ODO_D55D,'
      'ODO_D55E,'
      'ODO_D61,'
      'ODO_D61A,'
      'ODO_D61B,'
      'ODO_D61C,'
      'ODO_D61D,'
      'ODO_D61E,'
      'ODO_D62,'
      'ODO_D62A,'
      'ODO_D62B,'
      'ODO_D62C,'
      'ODO_D62D,'
      'ODO_D62E,'
      'ODO_D63,'
      'ODO_D63A,'
      'ODO_D63B,'
      'ODO_D63C,'
      'ODO_D63D,'
      'ODO_D63E,'
      'ODO_D64,'
      'ODO_D64A,'
      'ODO_D64B,'
      'ODO_D64C,'
      'ODO_D64D,'
      'ODO_D64E,'
      'ODO_D65,'
      'ODO_D65A,'
      'ODO_D65B,'
      'ODO_D65C,'
      'ODO_D65D,'
      'ODO_D65E,'
      'ODO_D71,'
      'ODO_D71A,'
      'ODO_D71B,'
      'ODO_D71C,'
      'ODO_D71D,'
      'ODO_D71E,'
      'ODO_D72,'
      'ODO_D72A,'
      'ODO_D72B,'
      'ODO_D72C,'
      'ODO_D72D,'
      'ODO_D72E,'
      'ODO_D73,'
      'ODO_D73A,'
      'ODO_D73B,'
      'ODO_D73C,'
      'ODO_D73D,'
      'ODO_D73E,'
      'ODO_D74,'
      'ODO_D74A,'
      'ODO_D74B,'
      'ODO_D74C,'
      'ODO_D74D,'
      'ODO_D74E,'
      'ODO_D75,'
      'ODO_D75A,'
      'ODO_D75B,'
      'ODO_D75C,'
      'ODO_D75D,'
      'ODO_D75E,'
      'ODO_D81,'
      'ODO_D81A,'
      'ODO_D81B,'
      'ODO_D81C,'
      'ODO_D81D,'
      'ODO_D81E,'
      'ODO_D82,'
      'ODO_D82A,'
      'ODO_D82B,'
      'ODO_D82C,'
      'ODO_D82D,'
      'ODO_D82E,'
      'ODO_D83,'
      'ODO_D83A,'
      'ODO_D83B,'
      'ODO_D83C,'
      'ODO_D83D,'
      'ODO_D83E,'
      'ODO_D84,'
      'ODO_D84A,'
      'ODO_D84B,'
      'ODO_D84C,'
      'ODO_D84D,'
      'ODO_D84E,'
      'ODO_D85,'
      'ODO_D85A,'
      'ODO_D85B,'
      'ODO_D85C,'
      'ODO_D85D,'
      'ODO_D85E,'
      'ODO_DATA,'
      'ODO_DTATUALIZACAO,'
      'ODO_DTCADASTRO,'
      'ODO_ESTILOS,'
      'ODO_HRATUALIZACAO,'
      'ODO_HRCADASTRO,'
      'ODO_OBSERVACOES,'
      'ODO_USUARIO'
      'from ODONTOGRAMAS'
      'where ODO_CLIENTE=:CLI_CODIGO'
      'order by ODO_DATA desc, ODO_CODIGO desc'
      '')
    Left = 1088
    Top = 176
    ParamData = <
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBOdontogramasODO_CLIENTE: TIntegerField
      FieldName = 'ODO_CLIENTE'
      Origin = 'ODO_CLIENTE'
      Required = True
    end
    object TBOdontogramasODO_CODIGO: TIntegerField
      FieldName = 'ODO_CODIGO'
      Origin = 'ODO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBOdontogramasODO_D11: TStringField
      FieldName = 'ODO_D11'
      Origin = 'ODO_D11'
      Size = 80
    end
    object TBOdontogramasODO_D11A: TIntegerField
      FieldName = 'ODO_D11A'
      Origin = 'ODO_D11A'
    end
    object TBOdontogramasODO_D11B: TIntegerField
      FieldName = 'ODO_D11B'
      Origin = 'ODO_D11B'
    end
    object TBOdontogramasODO_D11C: TIntegerField
      FieldName = 'ODO_D11C'
      Origin = 'ODO_D11C'
    end
    object TBOdontogramasODO_D11D: TIntegerField
      FieldName = 'ODO_D11D'
      Origin = 'ODO_D11D'
    end
    object TBOdontogramasODO_D11E: TIntegerField
      FieldName = 'ODO_D11E'
      Origin = 'ODO_D11E'
    end
    object TBOdontogramasODO_D12: TStringField
      FieldName = 'ODO_D12'
      Origin = 'ODO_D12'
      Size = 80
    end
    object TBOdontogramasODO_D12A: TIntegerField
      FieldName = 'ODO_D12A'
      Origin = 'ODO_D12A'
    end
    object TBOdontogramasODO_D12B: TIntegerField
      FieldName = 'ODO_D12B'
      Origin = 'ODO_D12B'
    end
    object TBOdontogramasODO_D12C: TIntegerField
      FieldName = 'ODO_D12C'
      Origin = 'ODO_D12C'
    end
    object TBOdontogramasODO_D12D: TIntegerField
      FieldName = 'ODO_D12D'
      Origin = 'ODO_D12D'
    end
    object TBOdontogramasODO_D12E: TIntegerField
      FieldName = 'ODO_D12E'
      Origin = 'ODO_D12E'
    end
    object TBOdontogramasODO_D13: TStringField
      FieldName = 'ODO_D13'
      Origin = 'ODO_D13'
      Size = 80
    end
    object TBOdontogramasODO_D13A: TIntegerField
      FieldName = 'ODO_D13A'
      Origin = 'ODO_D13A'
    end
    object TBOdontogramasODO_D13B: TIntegerField
      FieldName = 'ODO_D13B'
      Origin = 'ODO_D13B'
    end
    object TBOdontogramasODO_D13C: TIntegerField
      FieldName = 'ODO_D13C'
      Origin = 'ODO_D13C'
    end
    object TBOdontogramasODO_D13D: TIntegerField
      FieldName = 'ODO_D13D'
      Origin = 'ODO_D13D'
    end
    object TBOdontogramasODO_D13E: TIntegerField
      FieldName = 'ODO_D13E'
      Origin = 'ODO_D13E'
    end
    object TBOdontogramasODO_D14: TStringField
      FieldName = 'ODO_D14'
      Origin = 'ODO_D14'
      Size = 80
    end
    object TBOdontogramasODO_D14A: TIntegerField
      FieldName = 'ODO_D14A'
      Origin = 'ODO_D14A'
    end
    object TBOdontogramasODO_D14B: TIntegerField
      FieldName = 'ODO_D14B'
      Origin = 'ODO_D14B'
    end
    object TBOdontogramasODO_D14C: TIntegerField
      FieldName = 'ODO_D14C'
      Origin = 'ODO_D14C'
    end
    object TBOdontogramasODO_D14D: TIntegerField
      FieldName = 'ODO_D14D'
      Origin = 'ODO_D14D'
    end
    object TBOdontogramasODO_D14E: TIntegerField
      FieldName = 'ODO_D14E'
      Origin = 'ODO_D14E'
    end
    object TBOdontogramasODO_D15: TStringField
      FieldName = 'ODO_D15'
      Origin = 'ODO_D15'
      Size = 80
    end
    object TBOdontogramasODO_D15A: TIntegerField
      FieldName = 'ODO_D15A'
      Origin = 'ODO_D15A'
    end
    object TBOdontogramasODO_D15B: TIntegerField
      FieldName = 'ODO_D15B'
      Origin = 'ODO_D15B'
    end
    object TBOdontogramasODO_D15C: TIntegerField
      FieldName = 'ODO_D15C'
      Origin = 'ODO_D15C'
    end
    object TBOdontogramasODO_D15D: TIntegerField
      FieldName = 'ODO_D15D'
      Origin = 'ODO_D15D'
    end
    object TBOdontogramasODO_D15E: TIntegerField
      FieldName = 'ODO_D15E'
      Origin = 'ODO_D15E'
    end
    object TBOdontogramasODO_D16: TStringField
      FieldName = 'ODO_D16'
      Origin = 'ODO_D16'
      Size = 80
    end
    object TBOdontogramasODO_D16A: TIntegerField
      FieldName = 'ODO_D16A'
      Origin = 'ODO_D16A'
    end
    object TBOdontogramasODO_D16B: TIntegerField
      FieldName = 'ODO_D16B'
      Origin = 'ODO_D16B'
    end
    object TBOdontogramasODO_D16C: TIntegerField
      FieldName = 'ODO_D16C'
      Origin = 'ODO_D16C'
    end
    object TBOdontogramasODO_D16D: TIntegerField
      FieldName = 'ODO_D16D'
      Origin = 'ODO_D16D'
    end
    object TBOdontogramasODO_D16E: TIntegerField
      FieldName = 'ODO_D16E'
      Origin = 'ODO_D16E'
    end
    object TBOdontogramasODO_D17: TStringField
      FieldName = 'ODO_D17'
      Origin = 'ODO_D17'
      Size = 80
    end
    object TBOdontogramasODO_D17A: TIntegerField
      FieldName = 'ODO_D17A'
      Origin = 'ODO_D17A'
    end
    object TBOdontogramasODO_D17B: TIntegerField
      FieldName = 'ODO_D17B'
      Origin = 'ODO_D17B'
    end
    object TBOdontogramasODO_D17C: TIntegerField
      FieldName = 'ODO_D17C'
      Origin = 'ODO_D17C'
    end
    object TBOdontogramasODO_D17D: TIntegerField
      FieldName = 'ODO_D17D'
      Origin = 'ODO_D17D'
    end
    object TBOdontogramasODO_D17E: TIntegerField
      FieldName = 'ODO_D17E'
      Origin = 'ODO_D17E'
    end
    object TBOdontogramasODO_D18: TStringField
      FieldName = 'ODO_D18'
      Origin = 'ODO_D18'
      Size = 80
    end
    object TBOdontogramasODO_D18A: TIntegerField
      FieldName = 'ODO_D18A'
      Origin = 'ODO_D18A'
    end
    object TBOdontogramasODO_D18B: TIntegerField
      FieldName = 'ODO_D18B'
      Origin = 'ODO_D18B'
    end
    object TBOdontogramasODO_D18C: TIntegerField
      FieldName = 'ODO_D18C'
      Origin = 'ODO_D18C'
    end
    object TBOdontogramasODO_D18D: TIntegerField
      FieldName = 'ODO_D18D'
      Origin = 'ODO_D18D'
    end
    object TBOdontogramasODO_D18E: TIntegerField
      FieldName = 'ODO_D18E'
      Origin = 'ODO_D18E'
    end
    object TBOdontogramasODO_D21: TStringField
      FieldName = 'ODO_D21'
      Origin = 'ODO_D21'
      Size = 80
    end
    object TBOdontogramasODO_D21A: TIntegerField
      FieldName = 'ODO_D21A'
      Origin = 'ODO_D21A'
    end
    object TBOdontogramasODO_D21B: TIntegerField
      FieldName = 'ODO_D21B'
      Origin = 'ODO_D21B'
    end
    object TBOdontogramasODO_D21C: TIntegerField
      FieldName = 'ODO_D21C'
      Origin = 'ODO_D21C'
    end
    object TBOdontogramasODO_D21D: TIntegerField
      FieldName = 'ODO_D21D'
      Origin = 'ODO_D21D'
    end
    object TBOdontogramasODO_D21E: TIntegerField
      FieldName = 'ODO_D21E'
      Origin = 'ODO_D21E'
    end
    object TBOdontogramasODO_D22: TStringField
      FieldName = 'ODO_D22'
      Origin = 'ODO_D22'
      Size = 80
    end
    object TBOdontogramasODO_D22A: TIntegerField
      FieldName = 'ODO_D22A'
      Origin = 'ODO_D22A'
    end
    object TBOdontogramasODO_D22B: TIntegerField
      FieldName = 'ODO_D22B'
      Origin = 'ODO_D22B'
    end
    object TBOdontogramasODO_D22C: TIntegerField
      FieldName = 'ODO_D22C'
      Origin = 'ODO_D22C'
    end
    object TBOdontogramasODO_D22D: TIntegerField
      FieldName = 'ODO_D22D'
      Origin = 'ODO_D22D'
    end
    object TBOdontogramasODO_D22E: TIntegerField
      FieldName = 'ODO_D22E'
      Origin = 'ODO_D22E'
    end
    object TBOdontogramasODO_D23: TStringField
      FieldName = 'ODO_D23'
      Origin = 'ODO_D23'
      Size = 80
    end
    object TBOdontogramasODO_D23A: TIntegerField
      FieldName = 'ODO_D23A'
      Origin = 'ODO_D23A'
    end
    object TBOdontogramasODO_D23B: TIntegerField
      FieldName = 'ODO_D23B'
      Origin = 'ODO_D23B'
    end
    object TBOdontogramasODO_D23C: TIntegerField
      FieldName = 'ODO_D23C'
      Origin = 'ODO_D23C'
    end
    object TBOdontogramasODO_D23D: TIntegerField
      FieldName = 'ODO_D23D'
      Origin = 'ODO_D23D'
    end
    object TBOdontogramasODO_D23E: TIntegerField
      FieldName = 'ODO_D23E'
      Origin = 'ODO_D23E'
    end
    object TBOdontogramasODO_D24: TStringField
      FieldName = 'ODO_D24'
      Origin = 'ODO_D24'
      Size = 80
    end
    object TBOdontogramasODO_D24A: TIntegerField
      FieldName = 'ODO_D24A'
      Origin = 'ODO_D24A'
    end
    object TBOdontogramasODO_D24B: TIntegerField
      FieldName = 'ODO_D24B'
      Origin = 'ODO_D24B'
    end
    object TBOdontogramasODO_D24C: TIntegerField
      FieldName = 'ODO_D24C'
      Origin = 'ODO_D24C'
    end
    object TBOdontogramasODO_D24D: TIntegerField
      FieldName = 'ODO_D24D'
      Origin = 'ODO_D24D'
    end
    object TBOdontogramasODO_D24E: TIntegerField
      FieldName = 'ODO_D24E'
      Origin = 'ODO_D24E'
    end
    object TBOdontogramasODO_D25: TStringField
      FieldName = 'ODO_D25'
      Origin = 'ODO_D25'
      Size = 80
    end
    object TBOdontogramasODO_D25A: TIntegerField
      FieldName = 'ODO_D25A'
      Origin = 'ODO_D25A'
    end
    object TBOdontogramasODO_D25B: TIntegerField
      FieldName = 'ODO_D25B'
      Origin = 'ODO_D25B'
    end
    object TBOdontogramasODO_D25C: TIntegerField
      FieldName = 'ODO_D25C'
      Origin = 'ODO_D25C'
    end
    object TBOdontogramasODO_D25D: TIntegerField
      FieldName = 'ODO_D25D'
      Origin = 'ODO_D25D'
    end
    object TBOdontogramasODO_D25E: TIntegerField
      FieldName = 'ODO_D25E'
      Origin = 'ODO_D25E'
    end
    object TBOdontogramasODO_D26: TStringField
      FieldName = 'ODO_D26'
      Origin = 'ODO_D26'
      Size = 80
    end
    object TBOdontogramasODO_D26A: TIntegerField
      FieldName = 'ODO_D26A'
      Origin = 'ODO_D26A'
    end
    object TBOdontogramasODO_D26B: TIntegerField
      FieldName = 'ODO_D26B'
      Origin = 'ODO_D26B'
    end
    object TBOdontogramasODO_D26C: TIntegerField
      FieldName = 'ODO_D26C'
      Origin = 'ODO_D26C'
    end
    object TBOdontogramasODO_D26D: TIntegerField
      FieldName = 'ODO_D26D'
      Origin = 'ODO_D26D'
    end
    object TBOdontogramasODO_D26E: TIntegerField
      FieldName = 'ODO_D26E'
      Origin = 'ODO_D26E'
    end
    object TBOdontogramasODO_D27: TStringField
      FieldName = 'ODO_D27'
      Origin = 'ODO_D27'
      Size = 80
    end
    object TBOdontogramasODO_D27A: TIntegerField
      FieldName = 'ODO_D27A'
      Origin = 'ODO_D27A'
    end
    object TBOdontogramasODO_D27B: TIntegerField
      FieldName = 'ODO_D27B'
      Origin = 'ODO_D27B'
    end
    object TBOdontogramasODO_D27C: TIntegerField
      FieldName = 'ODO_D27C'
      Origin = 'ODO_D27C'
    end
    object TBOdontogramasODO_D27D: TIntegerField
      FieldName = 'ODO_D27D'
      Origin = 'ODO_D27D'
    end
    object TBOdontogramasODO_D27E: TIntegerField
      FieldName = 'ODO_D27E'
      Origin = 'ODO_D27E'
    end
    object TBOdontogramasODO_D28: TStringField
      FieldName = 'ODO_D28'
      Origin = 'ODO_D28'
      Size = 80
    end
    object TBOdontogramasODO_D28A: TIntegerField
      FieldName = 'ODO_D28A'
      Origin = 'ODO_D28A'
    end
    object TBOdontogramasODO_D28B: TIntegerField
      FieldName = 'ODO_D28B'
      Origin = 'ODO_D28B'
    end
    object TBOdontogramasODO_D28C: TIntegerField
      FieldName = 'ODO_D28C'
      Origin = 'ODO_D28C'
    end
    object TBOdontogramasODO_D28D: TIntegerField
      FieldName = 'ODO_D28D'
      Origin = 'ODO_D28D'
    end
    object TBOdontogramasODO_D28E: TIntegerField
      FieldName = 'ODO_D28E'
      Origin = 'ODO_D28E'
    end
    object TBOdontogramasODO_D31: TStringField
      FieldName = 'ODO_D31'
      Origin = 'ODO_D31'
      Size = 80
    end
    object TBOdontogramasODO_D31A: TIntegerField
      FieldName = 'ODO_D31A'
      Origin = 'ODO_D31A'
    end
    object TBOdontogramasODO_D31B: TIntegerField
      FieldName = 'ODO_D31B'
      Origin = 'ODO_D31B'
    end
    object TBOdontogramasODO_D31C: TIntegerField
      FieldName = 'ODO_D31C'
      Origin = 'ODO_D31C'
    end
    object TBOdontogramasODO_D31D: TIntegerField
      FieldName = 'ODO_D31D'
      Origin = 'ODO_D31D'
    end
    object TBOdontogramasODO_D31E: TIntegerField
      FieldName = 'ODO_D31E'
      Origin = 'ODO_D31E'
    end
    object TBOdontogramasODO_D32: TStringField
      FieldName = 'ODO_D32'
      Origin = 'ODO_D32'
      Size = 80
    end
    object TBOdontogramasODO_D32A: TIntegerField
      FieldName = 'ODO_D32A'
      Origin = 'ODO_D32A'
    end
    object TBOdontogramasODO_D32B: TIntegerField
      FieldName = 'ODO_D32B'
      Origin = 'ODO_D32B'
    end
    object TBOdontogramasODO_D32C: TIntegerField
      FieldName = 'ODO_D32C'
      Origin = 'ODO_D32C'
    end
    object TBOdontogramasODO_D32D: TIntegerField
      FieldName = 'ODO_D32D'
      Origin = 'ODO_D32D'
    end
    object TBOdontogramasODO_D32E: TIntegerField
      FieldName = 'ODO_D32E'
      Origin = 'ODO_D32E'
    end
    object TBOdontogramasODO_D33: TStringField
      FieldName = 'ODO_D33'
      Origin = 'ODO_D33'
      Size = 80
    end
    object TBOdontogramasODO_D33A: TIntegerField
      FieldName = 'ODO_D33A'
      Origin = 'ODO_D33A'
    end
    object TBOdontogramasODO_D33B: TIntegerField
      FieldName = 'ODO_D33B'
      Origin = 'ODO_D33B'
    end
    object TBOdontogramasODO_D33C: TIntegerField
      FieldName = 'ODO_D33C'
      Origin = 'ODO_D33C'
    end
    object TBOdontogramasODO_D33D: TIntegerField
      FieldName = 'ODO_D33D'
      Origin = 'ODO_D33D'
    end
    object TBOdontogramasODO_D33E: TIntegerField
      FieldName = 'ODO_D33E'
      Origin = 'ODO_D33E'
    end
    object TBOdontogramasODO_D34: TStringField
      FieldName = 'ODO_D34'
      Origin = 'ODO_D34'
      Size = 80
    end
    object TBOdontogramasODO_D34A: TIntegerField
      FieldName = 'ODO_D34A'
      Origin = 'ODO_D34A'
    end
    object TBOdontogramasODO_D34B: TIntegerField
      FieldName = 'ODO_D34B'
      Origin = 'ODO_D34B'
    end
    object TBOdontogramasODO_D34C: TIntegerField
      FieldName = 'ODO_D34C'
      Origin = 'ODO_D34C'
    end
    object TBOdontogramasODO_D34D: TIntegerField
      FieldName = 'ODO_D34D'
      Origin = 'ODO_D34D'
    end
    object TBOdontogramasODO_D34E: TIntegerField
      FieldName = 'ODO_D34E'
      Origin = 'ODO_D34E'
    end
    object TBOdontogramasODO_D35: TStringField
      FieldName = 'ODO_D35'
      Origin = 'ODO_D35'
      Size = 80
    end
    object TBOdontogramasODO_D35A: TIntegerField
      FieldName = 'ODO_D35A'
      Origin = 'ODO_D35A'
    end
    object TBOdontogramasODO_D35B: TIntegerField
      FieldName = 'ODO_D35B'
      Origin = 'ODO_D35B'
    end
    object TBOdontogramasODO_D35C: TIntegerField
      FieldName = 'ODO_D35C'
      Origin = 'ODO_D35C'
    end
    object TBOdontogramasODO_D35D: TIntegerField
      FieldName = 'ODO_D35D'
      Origin = 'ODO_D35D'
    end
    object TBOdontogramasODO_D35E: TIntegerField
      FieldName = 'ODO_D35E'
      Origin = 'ODO_D35E'
    end
    object TBOdontogramasODO_D36: TStringField
      FieldName = 'ODO_D36'
      Origin = 'ODO_D36'
      Size = 80
    end
    object TBOdontogramasODO_D36A: TIntegerField
      FieldName = 'ODO_D36A'
      Origin = 'ODO_D36A'
    end
    object TBOdontogramasODO_D36B: TIntegerField
      FieldName = 'ODO_D36B'
      Origin = 'ODO_D36B'
    end
    object TBOdontogramasODO_D36C: TIntegerField
      FieldName = 'ODO_D36C'
      Origin = 'ODO_D36C'
    end
    object TBOdontogramasODO_D36D: TIntegerField
      FieldName = 'ODO_D36D'
      Origin = 'ODO_D36D'
    end
    object TBOdontogramasODO_D36E: TIntegerField
      FieldName = 'ODO_D36E'
      Origin = 'ODO_D36E'
    end
    object TBOdontogramasODO_D37: TStringField
      FieldName = 'ODO_D37'
      Origin = 'ODO_D37'
      Size = 80
    end
    object TBOdontogramasODO_D37A: TIntegerField
      FieldName = 'ODO_D37A'
      Origin = 'ODO_D37A'
    end
    object TBOdontogramasODO_D37B: TIntegerField
      FieldName = 'ODO_D37B'
      Origin = 'ODO_D37B'
    end
    object TBOdontogramasODO_D37C: TIntegerField
      FieldName = 'ODO_D37C'
      Origin = 'ODO_D37C'
    end
    object TBOdontogramasODO_D37D: TIntegerField
      FieldName = 'ODO_D37D'
      Origin = 'ODO_D37D'
    end
    object TBOdontogramasODO_D37E: TIntegerField
      FieldName = 'ODO_D37E'
      Origin = 'ODO_D37E'
    end
    object TBOdontogramasODO_D38: TStringField
      FieldName = 'ODO_D38'
      Origin = 'ODO_D38'
      Size = 80
    end
    object TBOdontogramasODO_D38A: TIntegerField
      FieldName = 'ODO_D38A'
      Origin = 'ODO_D38A'
    end
    object TBOdontogramasODO_D38B: TIntegerField
      FieldName = 'ODO_D38B'
      Origin = 'ODO_D38B'
    end
    object TBOdontogramasODO_D38C: TIntegerField
      FieldName = 'ODO_D38C'
      Origin = 'ODO_D38C'
    end
    object TBOdontogramasODO_D38D: TIntegerField
      FieldName = 'ODO_D38D'
      Origin = 'ODO_D38D'
    end
    object TBOdontogramasODO_D38E: TIntegerField
      FieldName = 'ODO_D38E'
      Origin = 'ODO_D38E'
    end
    object TBOdontogramasODO_D41: TStringField
      FieldName = 'ODO_D41'
      Origin = 'ODO_D41'
      Size = 80
    end
    object TBOdontogramasODO_D41A: TIntegerField
      FieldName = 'ODO_D41A'
      Origin = 'ODO_D41A'
    end
    object TBOdontogramasODO_D41B: TIntegerField
      FieldName = 'ODO_D41B'
      Origin = 'ODO_D41B'
    end
    object TBOdontogramasODO_D41C: TIntegerField
      FieldName = 'ODO_D41C'
      Origin = 'ODO_D41C'
    end
    object TBOdontogramasODO_D41D: TIntegerField
      FieldName = 'ODO_D41D'
      Origin = 'ODO_D41D'
    end
    object TBOdontogramasODO_D41E: TIntegerField
      FieldName = 'ODO_D41E'
      Origin = 'ODO_D41E'
    end
    object TBOdontogramasODO_D42: TStringField
      FieldName = 'ODO_D42'
      Origin = 'ODO_D42'
      Size = 80
    end
    object TBOdontogramasODO_D42A: TIntegerField
      FieldName = 'ODO_D42A'
      Origin = 'ODO_D42A'
    end
    object TBOdontogramasODO_D42B: TIntegerField
      FieldName = 'ODO_D42B'
      Origin = 'ODO_D42B'
    end
    object TBOdontogramasODO_D42C: TIntegerField
      FieldName = 'ODO_D42C'
      Origin = 'ODO_D42C'
    end
    object TBOdontogramasODO_D42D: TIntegerField
      FieldName = 'ODO_D42D'
      Origin = 'ODO_D42D'
    end
    object TBOdontogramasODO_D42E: TIntegerField
      FieldName = 'ODO_D42E'
      Origin = 'ODO_D42E'
    end
    object TBOdontogramasODO_D43: TStringField
      FieldName = 'ODO_D43'
      Origin = 'ODO_D43'
      Size = 80
    end
    object TBOdontogramasODO_D43A: TIntegerField
      FieldName = 'ODO_D43A'
      Origin = 'ODO_D43A'
    end
    object TBOdontogramasODO_D43B: TIntegerField
      FieldName = 'ODO_D43B'
      Origin = 'ODO_D43B'
    end
    object TBOdontogramasODO_D43C: TIntegerField
      FieldName = 'ODO_D43C'
      Origin = 'ODO_D43C'
    end
    object TBOdontogramasODO_D43D: TIntegerField
      FieldName = 'ODO_D43D'
      Origin = 'ODO_D43D'
    end
    object TBOdontogramasODO_D43E: TIntegerField
      FieldName = 'ODO_D43E'
      Origin = 'ODO_D43E'
    end
    object TBOdontogramasODO_D44: TStringField
      FieldName = 'ODO_D44'
      Origin = 'ODO_D44'
      Size = 80
    end
    object TBOdontogramasODO_D44A: TIntegerField
      FieldName = 'ODO_D44A'
      Origin = 'ODO_D44A'
    end
    object TBOdontogramasODO_D44B: TIntegerField
      FieldName = 'ODO_D44B'
      Origin = 'ODO_D44B'
    end
    object TBOdontogramasODO_D44C: TIntegerField
      FieldName = 'ODO_D44C'
      Origin = 'ODO_D44C'
    end
    object TBOdontogramasODO_D44D: TIntegerField
      FieldName = 'ODO_D44D'
      Origin = 'ODO_D44D'
    end
    object TBOdontogramasODO_D44E: TIntegerField
      FieldName = 'ODO_D44E'
      Origin = 'ODO_D44E'
    end
    object TBOdontogramasODO_D45: TStringField
      FieldName = 'ODO_D45'
      Origin = 'ODO_D45'
      Size = 80
    end
    object TBOdontogramasODO_D45A: TIntegerField
      FieldName = 'ODO_D45A'
      Origin = 'ODO_D45A'
    end
    object TBOdontogramasODO_D45B: TIntegerField
      FieldName = 'ODO_D45B'
      Origin = 'ODO_D45B'
    end
    object TBOdontogramasODO_D45C: TIntegerField
      FieldName = 'ODO_D45C'
      Origin = 'ODO_D45C'
    end
    object TBOdontogramasODO_D45D: TIntegerField
      FieldName = 'ODO_D45D'
      Origin = 'ODO_D45D'
    end
    object TBOdontogramasODO_D45E: TIntegerField
      FieldName = 'ODO_D45E'
      Origin = 'ODO_D45E'
    end
    object TBOdontogramasODO_D46: TStringField
      FieldName = 'ODO_D46'
      Origin = 'ODO_D46'
      Size = 80
    end
    object TBOdontogramasODO_D46A: TIntegerField
      FieldName = 'ODO_D46A'
      Origin = 'ODO_D46A'
    end
    object TBOdontogramasODO_D46B: TIntegerField
      FieldName = 'ODO_D46B'
      Origin = 'ODO_D46B'
    end
    object TBOdontogramasODO_D46C: TIntegerField
      FieldName = 'ODO_D46C'
      Origin = 'ODO_D46C'
    end
    object TBOdontogramasODO_D46D: TIntegerField
      FieldName = 'ODO_D46D'
      Origin = 'ODO_D46D'
    end
    object TBOdontogramasODO_D46E: TIntegerField
      FieldName = 'ODO_D46E'
      Origin = 'ODO_D46E'
    end
    object TBOdontogramasODO_D47: TStringField
      FieldName = 'ODO_D47'
      Origin = 'ODO_D47'
      Size = 80
    end
    object TBOdontogramasODO_D47A: TIntegerField
      FieldName = 'ODO_D47A'
      Origin = 'ODO_D47A'
    end
    object TBOdontogramasODO_D47B: TIntegerField
      FieldName = 'ODO_D47B'
      Origin = 'ODO_D47B'
    end
    object TBOdontogramasODO_D47C: TIntegerField
      FieldName = 'ODO_D47C'
      Origin = 'ODO_D47C'
    end
    object TBOdontogramasODO_D47D: TIntegerField
      FieldName = 'ODO_D47D'
      Origin = 'ODO_D47D'
    end
    object TBOdontogramasODO_D47E: TIntegerField
      FieldName = 'ODO_D47E'
      Origin = 'ODO_D47E'
    end
    object TBOdontogramasODO_D48: TStringField
      FieldName = 'ODO_D48'
      Origin = 'ODO_D48'
      Size = 80
    end
    object TBOdontogramasODO_D48A: TIntegerField
      FieldName = 'ODO_D48A'
      Origin = 'ODO_D48A'
    end
    object TBOdontogramasODO_D48B: TIntegerField
      FieldName = 'ODO_D48B'
      Origin = 'ODO_D48B'
    end
    object TBOdontogramasODO_D48C: TIntegerField
      FieldName = 'ODO_D48C'
      Origin = 'ODO_D48C'
    end
    object TBOdontogramasODO_D48D: TIntegerField
      FieldName = 'ODO_D48D'
      Origin = 'ODO_D48D'
    end
    object TBOdontogramasODO_D48E: TIntegerField
      FieldName = 'ODO_D48E'
      Origin = 'ODO_D48E'
    end
    object TBOdontogramasODO_D51: TStringField
      FieldName = 'ODO_D51'
      Origin = 'ODO_D51'
      Size = 80
    end
    object TBOdontogramasODO_D51A: TIntegerField
      FieldName = 'ODO_D51A'
      Origin = 'ODO_D51A'
    end
    object TBOdontogramasODO_D51B: TIntegerField
      FieldName = 'ODO_D51B'
      Origin = 'ODO_D51B'
    end
    object TBOdontogramasODO_D51C: TIntegerField
      FieldName = 'ODO_D51C'
      Origin = 'ODO_D51C'
    end
    object TBOdontogramasODO_D51D: TIntegerField
      FieldName = 'ODO_D51D'
      Origin = 'ODO_D51D'
    end
    object TBOdontogramasODO_D51E: TIntegerField
      FieldName = 'ODO_D51E'
      Origin = 'ODO_D51E'
    end
    object TBOdontogramasODO_D52: TStringField
      FieldName = 'ODO_D52'
      Origin = 'ODO_D52'
      Size = 80
    end
    object TBOdontogramasODO_D52A: TIntegerField
      FieldName = 'ODO_D52A'
      Origin = 'ODO_D52A'
    end
    object TBOdontogramasODO_D52B: TIntegerField
      FieldName = 'ODO_D52B'
      Origin = 'ODO_D52B'
    end
    object TBOdontogramasODO_D52C: TIntegerField
      FieldName = 'ODO_D52C'
      Origin = 'ODO_D52C'
    end
    object TBOdontogramasODO_D52D: TIntegerField
      FieldName = 'ODO_D52D'
      Origin = 'ODO_D52D'
    end
    object TBOdontogramasODO_D52E: TIntegerField
      FieldName = 'ODO_D52E'
      Origin = 'ODO_D52E'
    end
    object TBOdontogramasODO_D53: TStringField
      FieldName = 'ODO_D53'
      Origin = 'ODO_D53'
      Size = 80
    end
    object TBOdontogramasODO_D53A: TIntegerField
      FieldName = 'ODO_D53A'
      Origin = 'ODO_D53A'
    end
    object TBOdontogramasODO_D53B: TIntegerField
      FieldName = 'ODO_D53B'
      Origin = 'ODO_D53B'
    end
    object TBOdontogramasODO_D53C: TIntegerField
      FieldName = 'ODO_D53C'
      Origin = 'ODO_D53C'
    end
    object TBOdontogramasODO_D53D: TIntegerField
      FieldName = 'ODO_D53D'
      Origin = 'ODO_D53D'
    end
    object TBOdontogramasODO_D53E: TIntegerField
      FieldName = 'ODO_D53E'
      Origin = 'ODO_D53E'
    end
    object TBOdontogramasODO_D54: TStringField
      FieldName = 'ODO_D54'
      Origin = 'ODO_D54'
      Size = 80
    end
    object TBOdontogramasODO_D54A: TIntegerField
      FieldName = 'ODO_D54A'
      Origin = 'ODO_D54A'
    end
    object TBOdontogramasODO_D54B: TIntegerField
      FieldName = 'ODO_D54B'
      Origin = 'ODO_D54B'
    end
    object TBOdontogramasODO_D54C: TIntegerField
      FieldName = 'ODO_D54C'
      Origin = 'ODO_D54C'
    end
    object TBOdontogramasODO_D54D: TIntegerField
      FieldName = 'ODO_D54D'
      Origin = 'ODO_D54D'
    end
    object TBOdontogramasODO_D54E: TIntegerField
      FieldName = 'ODO_D54E'
      Origin = 'ODO_D54E'
    end
    object TBOdontogramasODO_D55: TStringField
      FieldName = 'ODO_D55'
      Origin = 'ODO_D55'
      Size = 80
    end
    object TBOdontogramasODO_D55A: TIntegerField
      FieldName = 'ODO_D55A'
      Origin = 'ODO_D55A'
    end
    object TBOdontogramasODO_D55B: TIntegerField
      FieldName = 'ODO_D55B'
      Origin = 'ODO_D55B'
    end
    object TBOdontogramasODO_D55C: TIntegerField
      FieldName = 'ODO_D55C'
      Origin = 'ODO_D55C'
    end
    object TBOdontogramasODO_D55D: TIntegerField
      FieldName = 'ODO_D55D'
      Origin = 'ODO_D55D'
    end
    object TBOdontogramasODO_D55E: TIntegerField
      FieldName = 'ODO_D55E'
      Origin = 'ODO_D55E'
    end
    object TBOdontogramasODO_D61: TStringField
      FieldName = 'ODO_D61'
      Origin = 'ODO_D61'
      Size = 80
    end
    object TBOdontogramasODO_D61A: TIntegerField
      FieldName = 'ODO_D61A'
      Origin = 'ODO_D61A'
    end
    object TBOdontogramasODO_D61B: TIntegerField
      FieldName = 'ODO_D61B'
      Origin = 'ODO_D61B'
    end
    object TBOdontogramasODO_D61C: TIntegerField
      FieldName = 'ODO_D61C'
      Origin = 'ODO_D61C'
    end
    object TBOdontogramasODO_D61D: TIntegerField
      FieldName = 'ODO_D61D'
      Origin = 'ODO_D61D'
    end
    object TBOdontogramasODO_D61E: TIntegerField
      FieldName = 'ODO_D61E'
      Origin = 'ODO_D61E'
    end
    object TBOdontogramasODO_D62: TStringField
      FieldName = 'ODO_D62'
      Origin = 'ODO_D62'
      Size = 80
    end
    object TBOdontogramasODO_D62A: TIntegerField
      FieldName = 'ODO_D62A'
      Origin = 'ODO_D62A'
    end
    object TBOdontogramasODO_D62B: TIntegerField
      FieldName = 'ODO_D62B'
      Origin = 'ODO_D62B'
    end
    object TBOdontogramasODO_D62C: TIntegerField
      FieldName = 'ODO_D62C'
      Origin = 'ODO_D62C'
    end
    object TBOdontogramasODO_D62D: TIntegerField
      FieldName = 'ODO_D62D'
      Origin = 'ODO_D62D'
    end
    object TBOdontogramasODO_D62E: TIntegerField
      FieldName = 'ODO_D62E'
      Origin = 'ODO_D62E'
    end
    object TBOdontogramasODO_D63: TStringField
      FieldName = 'ODO_D63'
      Origin = 'ODO_D63'
      Size = 80
    end
    object TBOdontogramasODO_D63A: TIntegerField
      FieldName = 'ODO_D63A'
      Origin = 'ODO_D63A'
    end
    object TBOdontogramasODO_D63B: TIntegerField
      FieldName = 'ODO_D63B'
      Origin = 'ODO_D63B'
    end
    object TBOdontogramasODO_D63C: TIntegerField
      FieldName = 'ODO_D63C'
      Origin = 'ODO_D63C'
    end
    object TBOdontogramasODO_D63D: TIntegerField
      FieldName = 'ODO_D63D'
      Origin = 'ODO_D63D'
    end
    object TBOdontogramasODO_D63E: TIntegerField
      FieldName = 'ODO_D63E'
      Origin = 'ODO_D63E'
    end
    object TBOdontogramasODO_D64: TStringField
      FieldName = 'ODO_D64'
      Origin = 'ODO_D64'
      Size = 80
    end
    object TBOdontogramasODO_D64A: TIntegerField
      FieldName = 'ODO_D64A'
      Origin = 'ODO_D64A'
    end
    object TBOdontogramasODO_D64B: TIntegerField
      FieldName = 'ODO_D64B'
      Origin = 'ODO_D64B'
    end
    object TBOdontogramasODO_D64C: TIntegerField
      FieldName = 'ODO_D64C'
      Origin = 'ODO_D64C'
    end
    object TBOdontogramasODO_D64D: TIntegerField
      FieldName = 'ODO_D64D'
      Origin = 'ODO_D64D'
    end
    object TBOdontogramasODO_D64E: TIntegerField
      FieldName = 'ODO_D64E'
      Origin = 'ODO_D64E'
    end
    object TBOdontogramasODO_D65: TStringField
      FieldName = 'ODO_D65'
      Origin = 'ODO_D65'
      Size = 80
    end
    object TBOdontogramasODO_D65A: TIntegerField
      FieldName = 'ODO_D65A'
      Origin = 'ODO_D65A'
    end
    object TBOdontogramasODO_D65B: TIntegerField
      FieldName = 'ODO_D65B'
      Origin = 'ODO_D65B'
    end
    object TBOdontogramasODO_D65C: TIntegerField
      FieldName = 'ODO_D65C'
      Origin = 'ODO_D65C'
    end
    object TBOdontogramasODO_D65D: TIntegerField
      FieldName = 'ODO_D65D'
      Origin = 'ODO_D65D'
    end
    object TBOdontogramasODO_D65E: TIntegerField
      FieldName = 'ODO_D65E'
      Origin = 'ODO_D65E'
    end
    object TBOdontogramasODO_D71: TStringField
      FieldName = 'ODO_D71'
      Origin = 'ODO_D71'
      Size = 80
    end
    object TBOdontogramasODO_D71A: TIntegerField
      FieldName = 'ODO_D71A'
      Origin = 'ODO_D71A'
    end
    object TBOdontogramasODO_D71B: TIntegerField
      FieldName = 'ODO_D71B'
      Origin = 'ODO_D71B'
    end
    object TBOdontogramasODO_D71C: TIntegerField
      FieldName = 'ODO_D71C'
      Origin = 'ODO_D71C'
    end
    object TBOdontogramasODO_D71D: TIntegerField
      FieldName = 'ODO_D71D'
      Origin = 'ODO_D71D'
    end
    object TBOdontogramasODO_D71E: TIntegerField
      FieldName = 'ODO_D71E'
      Origin = 'ODO_D71E'
    end
    object TBOdontogramasODO_D72: TStringField
      FieldName = 'ODO_D72'
      Origin = 'ODO_D72'
      Size = 80
    end
    object TBOdontogramasODO_D72A: TIntegerField
      FieldName = 'ODO_D72A'
      Origin = 'ODO_D72A'
    end
    object TBOdontogramasODO_D72B: TIntegerField
      FieldName = 'ODO_D72B'
      Origin = 'ODO_D72B'
    end
    object TBOdontogramasODO_D72C: TIntegerField
      FieldName = 'ODO_D72C'
      Origin = 'ODO_D72C'
    end
    object TBOdontogramasODO_D72D: TIntegerField
      FieldName = 'ODO_D72D'
      Origin = 'ODO_D72D'
    end
    object TBOdontogramasODO_D72E: TIntegerField
      FieldName = 'ODO_D72E'
      Origin = 'ODO_D72E'
    end
    object TBOdontogramasODO_D73: TStringField
      FieldName = 'ODO_D73'
      Origin = 'ODO_D73'
      Size = 80
    end
    object TBOdontogramasODO_D73A: TIntegerField
      FieldName = 'ODO_D73A'
      Origin = 'ODO_D73A'
    end
    object TBOdontogramasODO_D73B: TIntegerField
      FieldName = 'ODO_D73B'
      Origin = 'ODO_D73B'
    end
    object TBOdontogramasODO_D73C: TIntegerField
      FieldName = 'ODO_D73C'
      Origin = 'ODO_D73C'
    end
    object TBOdontogramasODO_D73D: TIntegerField
      FieldName = 'ODO_D73D'
      Origin = 'ODO_D73D'
    end
    object TBOdontogramasODO_D73E: TIntegerField
      FieldName = 'ODO_D73E'
      Origin = 'ODO_D73E'
    end
    object TBOdontogramasODO_D74: TStringField
      FieldName = 'ODO_D74'
      Origin = 'ODO_D74'
      Size = 80
    end
    object TBOdontogramasODO_D74A: TIntegerField
      FieldName = 'ODO_D74A'
      Origin = 'ODO_D74A'
    end
    object TBOdontogramasODO_D74B: TIntegerField
      FieldName = 'ODO_D74B'
      Origin = 'ODO_D74B'
    end
    object TBOdontogramasODO_D74C: TIntegerField
      FieldName = 'ODO_D74C'
      Origin = 'ODO_D74C'
    end
    object TBOdontogramasODO_D74D: TIntegerField
      FieldName = 'ODO_D74D'
      Origin = 'ODO_D74D'
    end
    object TBOdontogramasODO_D74E: TIntegerField
      FieldName = 'ODO_D74E'
      Origin = 'ODO_D74E'
    end
    object TBOdontogramasODO_D75: TStringField
      FieldName = 'ODO_D75'
      Origin = 'ODO_D75'
      Size = 80
    end
    object TBOdontogramasODO_D75A: TIntegerField
      FieldName = 'ODO_D75A'
      Origin = 'ODO_D75A'
    end
    object TBOdontogramasODO_D75B: TIntegerField
      FieldName = 'ODO_D75B'
      Origin = 'ODO_D75B'
    end
    object TBOdontogramasODO_D75C: TIntegerField
      FieldName = 'ODO_D75C'
      Origin = 'ODO_D75C'
    end
    object TBOdontogramasODO_D75D: TIntegerField
      FieldName = 'ODO_D75D'
      Origin = 'ODO_D75D'
    end
    object TBOdontogramasODO_D75E: TIntegerField
      FieldName = 'ODO_D75E'
      Origin = 'ODO_D75E'
    end
    object TBOdontogramasODO_D81: TStringField
      FieldName = 'ODO_D81'
      Origin = 'ODO_D81'
      Size = 80
    end
    object TBOdontogramasODO_D81A: TIntegerField
      FieldName = 'ODO_D81A'
      Origin = 'ODO_D81A'
    end
    object TBOdontogramasODO_D81B: TIntegerField
      FieldName = 'ODO_D81B'
      Origin = 'ODO_D81B'
    end
    object TBOdontogramasODO_D81C: TIntegerField
      FieldName = 'ODO_D81C'
      Origin = 'ODO_D81C'
    end
    object TBOdontogramasODO_D81D: TIntegerField
      FieldName = 'ODO_D81D'
      Origin = 'ODO_D81D'
    end
    object TBOdontogramasODO_D81E: TIntegerField
      FieldName = 'ODO_D81E'
      Origin = 'ODO_D81E'
    end
    object TBOdontogramasODO_D82: TStringField
      FieldName = 'ODO_D82'
      Origin = 'ODO_D82'
      Size = 80
    end
    object TBOdontogramasODO_D82A: TIntegerField
      FieldName = 'ODO_D82A'
      Origin = 'ODO_D82A'
    end
    object TBOdontogramasODO_D82B: TIntegerField
      FieldName = 'ODO_D82B'
      Origin = 'ODO_D82B'
    end
    object TBOdontogramasODO_D82C: TIntegerField
      FieldName = 'ODO_D82C'
      Origin = 'ODO_D82C'
    end
    object TBOdontogramasODO_D82D: TIntegerField
      FieldName = 'ODO_D82D'
      Origin = 'ODO_D82D'
    end
    object TBOdontogramasODO_D82E: TIntegerField
      FieldName = 'ODO_D82E'
      Origin = 'ODO_D82E'
    end
    object TBOdontogramasODO_D83: TStringField
      FieldName = 'ODO_D83'
      Origin = 'ODO_D83'
      Size = 80
    end
    object TBOdontogramasODO_D83A: TIntegerField
      FieldName = 'ODO_D83A'
      Origin = 'ODO_D83A'
    end
    object TBOdontogramasODO_D83B: TIntegerField
      FieldName = 'ODO_D83B'
      Origin = 'ODO_D83B'
    end
    object TBOdontogramasODO_D83C: TIntegerField
      FieldName = 'ODO_D83C'
      Origin = 'ODO_D83C'
    end
    object TBOdontogramasODO_D83D: TIntegerField
      FieldName = 'ODO_D83D'
      Origin = 'ODO_D83D'
    end
    object TBOdontogramasODO_D83E: TIntegerField
      FieldName = 'ODO_D83E'
      Origin = 'ODO_D83E'
    end
    object TBOdontogramasODO_D84: TStringField
      FieldName = 'ODO_D84'
      Origin = 'ODO_D84'
      Size = 80
    end
    object TBOdontogramasODO_D84A: TIntegerField
      FieldName = 'ODO_D84A'
      Origin = 'ODO_D84A'
    end
    object TBOdontogramasODO_D84B: TIntegerField
      FieldName = 'ODO_D84B'
      Origin = 'ODO_D84B'
    end
    object TBOdontogramasODO_D84C: TIntegerField
      FieldName = 'ODO_D84C'
      Origin = 'ODO_D84C'
    end
    object TBOdontogramasODO_D84D: TIntegerField
      FieldName = 'ODO_D84D'
      Origin = 'ODO_D84D'
    end
    object TBOdontogramasODO_D84E: TIntegerField
      FieldName = 'ODO_D84E'
      Origin = 'ODO_D84E'
    end
    object TBOdontogramasODO_D85: TStringField
      FieldName = 'ODO_D85'
      Origin = 'ODO_D85'
      Size = 80
    end
    object TBOdontogramasODO_D85A: TIntegerField
      FieldName = 'ODO_D85A'
      Origin = 'ODO_D85A'
    end
    object TBOdontogramasODO_D85B: TIntegerField
      FieldName = 'ODO_D85B'
      Origin = 'ODO_D85B'
    end
    object TBOdontogramasODO_D85C: TIntegerField
      FieldName = 'ODO_D85C'
      Origin = 'ODO_D85C'
    end
    object TBOdontogramasODO_D85D: TIntegerField
      FieldName = 'ODO_D85D'
      Origin = 'ODO_D85D'
    end
    object TBOdontogramasODO_D85E: TIntegerField
      FieldName = 'ODO_D85E'
      Origin = 'ODO_D85E'
    end
    object TBOdontogramasODO_DATA: TDateField
      FieldName = 'ODO_DATA'
      Origin = 'ODO_DATA'
    end
    object TBOdontogramasODO_DTATUALIZACAO: TDateField
      FieldName = 'ODO_DTATUALIZACAO'
      Origin = 'ODO_DTATUALIZACAO'
    end
    object TBOdontogramasODO_DTCADASTRO: TDateField
      FieldName = 'ODO_DTCADASTRO'
      Origin = 'ODO_DTCADASTRO'
    end
    object TBOdontogramasODO_ESTILOS: TStringField
      FieldName = 'ODO_ESTILOS'
      Origin = 'ODO_ESTILOS'
      Size = 1000
    end
    object TBOdontogramasODO_HRATUALIZACAO: TTimeField
      FieldName = 'ODO_HRATUALIZACAO'
      Origin = 'ODO_HRATUALIZACAO'
    end
    object TBOdontogramasODO_HRCADASTRO: TTimeField
      FieldName = 'ODO_HRCADASTRO'
      Origin = 'ODO_HRCADASTRO'
    end
    object TBOdontogramasODO_OBSERVACOES: TMemoField
      FieldName = 'ODO_OBSERVACOES'
      Origin = 'ODO_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBOdontogramasODO_USUARIO: TStringField
      FieldName = 'ODO_USUARIO'
      Origin = 'ODO_USUARIO'
    end
  end
  object TROdontogramasOpcoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 1120
    Top = 240
  end
  object UPOdontogramasOpcoes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ODONTOGRAMASOPCOES'
      '(ODP_CODIGO, ODP_COR, ODP_D11, ODP_D12, ODP_D13, '
      '  ODP_D14, ODP_D15, ODP_D16, ODP_D17, '
      '  ODP_D18, ODP_D21, ODP_D22, ODP_D23, '
      '  ODP_D24, ODP_D25, ODP_D26, ODP_D27, '
      '  ODP_D28, ODP_D31, ODP_D32, ODP_D33, '
      '  ODP_D34, ODP_D35, ODP_D36, ODP_D37, '
      '  ODP_D38, ODP_D41, ODP_D42, ODP_D43, '
      '  ODP_D44, ODP_D45, ODP_D46, ODP_D47, '
      '  ODP_D48, ODP_D51, ODP_D52, ODP_D53, '
      '  ODP_D54, ODP_D55, ODP_D61, ODP_D62, '
      '  ODP_D63, ODP_D64, ODP_D65, ODP_D71, '
      '  ODP_D72, ODP_D73, ODP_D74, ODP_D75, '
      '  ODP_D81, ODP_D82, ODP_D83, ODP_D84, '
      '  ODP_D85, ODP_DESCRICAO, ODP_DTATUALIZACAO, '
      '  ODP_DTCADASTRO, ODP_ESTILO, ODP_HRATUALIZACAO, '
      '  ODP_HRCADASTRO, ODP_PADRAO, ODP_USUARIO)'
      
        'VALUES (gen_id(GEN_ODONTOGRAMASOPCOES,1), :NEW_ODP_COR, :NEW_ODP' +
        '_D11, :NEW_ODP_D12, :NEW_ODP_D13, '
      '  :NEW_ODP_D14, :NEW_ODP_D15, :NEW_ODP_D16, :NEW_ODP_D17, '
      '  :NEW_ODP_D18, :NEW_ODP_D21, :NEW_ODP_D22, :NEW_ODP_D23, '
      '  :NEW_ODP_D24, :NEW_ODP_D25, :NEW_ODP_D26, :NEW_ODP_D27, '
      '  :NEW_ODP_D28, :NEW_ODP_D31, :NEW_ODP_D32, :NEW_ODP_D33, '
      '  :NEW_ODP_D34, :NEW_ODP_D35, :NEW_ODP_D36, :NEW_ODP_D37, '
      '  :NEW_ODP_D38, :NEW_ODP_D41, :NEW_ODP_D42, :NEW_ODP_D43, '
      '  :NEW_ODP_D44, :NEW_ODP_D45, :NEW_ODP_D46, :NEW_ODP_D47, '
      '  :NEW_ODP_D48, :NEW_ODP_D51, :NEW_ODP_D52, :NEW_ODP_D53, '
      '  :NEW_ODP_D54, :NEW_ODP_D55, :NEW_ODP_D61, :NEW_ODP_D62, '
      '  :NEW_ODP_D63, :NEW_ODP_D64, :NEW_ODP_D65, :NEW_ODP_D71, '
      '  :NEW_ODP_D72, :NEW_ODP_D73, :NEW_ODP_D74, :NEW_ODP_D75, '
      '  :NEW_ODP_D81, :NEW_ODP_D82, :NEW_ODP_D83, :NEW_ODP_D84, '
      '  :NEW_ODP_D85, :NEW_ODP_DESCRICAO, :NEW_ODP_DTATUALIZACAO, '
      '  :NEW_ODP_DTCADASTRO, :NEW_ODP_ESTILO, :NEW_ODP_HRATUALIZACAO, '
      '  :NEW_ODP_HRCADASTRO, :NEW_ODP_PADRAO, :NEW_ODP_USUARIO)'
      
        'RETURNING ODP_CODIGO, ODP_COR, ODP_D11, ODP_D12, ODP_D13, ODP_D1' +
        '4, ODP_D15, ODP_D16, ODP_D17, ODP_D18, ODP_D21, ODP_D22, ODP_D23' +
        ', ODP_D24, ODP_D25, ODP_D26, ODP_D27, ODP_D28, ODP_D31, ODP_D32,' +
        ' ODP_D33, ODP_D34, ODP_D35, ODP_D36, ODP_D37, ODP_D38, ODP_D41, ' +
        'ODP_D42, ODP_D43, ODP_D44, ODP_D45, ODP_D46, ODP_D47, ODP_D48, O' +
        'DP_D51, ODP_D52, ODP_D53, ODP_D54, ODP_D55, ODP_D61, ODP_D62, OD' +
        'P_D63, ODP_D64, ODP_D65, ODP_D71, ODP_D72, ODP_D73, ODP_D74, ODP' +
        '_D75, ODP_D81, ODP_D82, ODP_D83, ODP_D84, ODP_D85, ODP_DESCRICAO' +
        ', ODP_DTATUALIZACAO, ODP_DTCADASTRO, ODP_ESTILO, ODP_HRATUALIZAC' +
        'AO, ODP_HRCADASTRO, ODP_PADRAO, ODP_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ODONTOGRAMASOPCOES'
      
        'SET ODP_CODIGO = :NEW_ODP_CODIGO, ODP_COR = :NEW_ODP_COR, ODP_D1' +
        '1 = :NEW_ODP_D11, '
      
        '  ODP_D12 = :NEW_ODP_D12, ODP_D13 = :NEW_ODP_D13, ODP_D14 = :NEW' +
        '_ODP_D14, '
      
        '  ODP_D15 = :NEW_ODP_D15, ODP_D16 = :NEW_ODP_D16, ODP_D17 = :NEW' +
        '_ODP_D17, '
      
        '  ODP_D18 = :NEW_ODP_D18, ODP_D21 = :NEW_ODP_D21, ODP_D22 = :NEW' +
        '_ODP_D22, '
      
        '  ODP_D23 = :NEW_ODP_D23, ODP_D24 = :NEW_ODP_D24, ODP_D25 = :NEW' +
        '_ODP_D25, '
      
        '  ODP_D26 = :NEW_ODP_D26, ODP_D27 = :NEW_ODP_D27, ODP_D28 = :NEW' +
        '_ODP_D28, '
      
        '  ODP_D31 = :NEW_ODP_D31, ODP_D32 = :NEW_ODP_D32, ODP_D33 = :NEW' +
        '_ODP_D33, '
      
        '  ODP_D34 = :NEW_ODP_D34, ODP_D35 = :NEW_ODP_D35, ODP_D36 = :NEW' +
        '_ODP_D36, '
      
        '  ODP_D37 = :NEW_ODP_D37, ODP_D38 = :NEW_ODP_D38, ODP_D41 = :NEW' +
        '_ODP_D41, '
      
        '  ODP_D42 = :NEW_ODP_D42, ODP_D43 = :NEW_ODP_D43, ODP_D44 = :NEW' +
        '_ODP_D44, '
      
        '  ODP_D45 = :NEW_ODP_D45, ODP_D46 = :NEW_ODP_D46, ODP_D47 = :NEW' +
        '_ODP_D47, '
      
        '  ODP_D48 = :NEW_ODP_D48, ODP_D51 = :NEW_ODP_D51, ODP_D52 = :NEW' +
        '_ODP_D52, '
      
        '  ODP_D53 = :NEW_ODP_D53, ODP_D54 = :NEW_ODP_D54, ODP_D55 = :NEW' +
        '_ODP_D55, '
      
        '  ODP_D61 = :NEW_ODP_D61, ODP_D62 = :NEW_ODP_D62, ODP_D63 = :NEW' +
        '_ODP_D63, '
      
        '  ODP_D64 = :NEW_ODP_D64, ODP_D65 = :NEW_ODP_D65, ODP_D71 = :NEW' +
        '_ODP_D71, '
      
        '  ODP_D72 = :NEW_ODP_D72, ODP_D73 = :NEW_ODP_D73, ODP_D74 = :NEW' +
        '_ODP_D74, '
      
        '  ODP_D75 = :NEW_ODP_D75, ODP_D81 = :NEW_ODP_D81, ODP_D82 = :NEW' +
        '_ODP_D82, '
      
        '  ODP_D83 = :NEW_ODP_D83, ODP_D84 = :NEW_ODP_D84, ODP_D85 = :NEW' +
        '_ODP_D85, '
      
        '  ODP_DESCRICAO = :NEW_ODP_DESCRICAO, ODP_DTATUALIZACAO = :NEW_O' +
        'DP_DTATUALIZACAO, '
      
        '  ODP_DTCADASTRO = :NEW_ODP_DTCADASTRO, ODP_ESTILO = :NEW_ODP_ES' +
        'TILO, '
      
        '  ODP_HRATUALIZACAO = :NEW_ODP_HRATUALIZACAO, ODP_HRCADASTRO = :' +
        'NEW_ODP_HRCADASTRO, '
      '  ODP_PADRAO = :NEW_ODP_PADRAO, ODP_USUARIO = :NEW_ODP_USUARIO'
      'WHERE ODP_CODIGO = :OLD_ODP_CODIGO'
      
        'RETURNING ODP_CODIGO, ODP_COR, ODP_D11, ODP_D12, ODP_D13, ODP_D1' +
        '4, ODP_D15, ODP_D16, ODP_D17, ODP_D18, ODP_D21, ODP_D22, ODP_D23' +
        ', ODP_D24, ODP_D25, ODP_D26, ODP_D27, ODP_D28, ODP_D31, ODP_D32,' +
        ' ODP_D33, ODP_D34, ODP_D35, ODP_D36, ODP_D37, ODP_D38, ODP_D41, ' +
        'ODP_D42, ODP_D43, ODP_D44, ODP_D45, ODP_D46, ODP_D47, ODP_D48, O' +
        'DP_D51, ODP_D52, ODP_D53, ODP_D54, ODP_D55, ODP_D61, ODP_D62, OD' +
        'P_D63, ODP_D64, ODP_D65, ODP_D71, ODP_D72, ODP_D73, ODP_D74, ODP' +
        '_D75, ODP_D81, ODP_D82, ODP_D83, ODP_D84, ODP_D85, ODP_DESCRICAO' +
        ', ODP_DTATUALIZACAO, ODP_DTCADASTRO, ODP_ESTILO, ODP_HRATUALIZAC' +
        'AO, ODP_HRCADASTRO, ODP_PADRAO, ODP_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ODONTOGRAMASOPCOES'
      'WHERE ODP_CODIGO = :OLD_ODP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ODP_CODIGO, ODP_COR, ODP_D11, ODP_D12, ODP_D13, ODP_D14, ' +
        'ODP_D15, '
      
        '  ODP_D16, ODP_D17, ODP_D18, ODP_D21, ODP_D22, ODP_D23, ODP_D24,' +
        ' '
      
        '  ODP_D25, ODP_D26, ODP_D27, ODP_D28, ODP_D31, ODP_D32, ODP_D33,' +
        ' '
      
        '  ODP_D34, ODP_D35, ODP_D36, ODP_D37, ODP_D38, ODP_D41, ODP_D42,' +
        ' '
      
        '  ODP_D43, ODP_D44, ODP_D45, ODP_D46, ODP_D47, ODP_D48, ODP_D51,' +
        ' '
      
        '  ODP_D52, ODP_D53, ODP_D54, ODP_D55, ODP_D61, ODP_D62, ODP_D63,' +
        ' '
      
        '  ODP_D64, ODP_D65, ODP_D71, ODP_D72, ODP_D73, ODP_D74, ODP_D75,' +
        ' '
      '  ODP_D81, ODP_D82, ODP_D83, ODP_D84, ODP_D85, ODP_DESCRICAO, '
      
        '  ODP_DTATUALIZACAO, ODP_DTCADASTRO, ODP_ESTILO, ODP_HRATUALIZAC' +
        'AO, '
      '  ODP_HRCADASTRO, ODP_PADRAO, ODP_USUARIO'
      'FROM ODONTOGRAMASOPCOES'
      'WHERE ODP_CODIGO = :OLD_ODP_CODIGO')
    Left = 1120
    Top = 208
  end
  object TBOdontogramasOpcoes: TFDQuery
    BeforeInsert = TBOdontogramasOpcoesBeforeInsert
    AfterInsert = TBOdontogramasOpcoesAfterInsert
    BeforeEdit = TBOdontogramasOpcoesBeforeEdit
    BeforePost = TBOdontogramasOpcoesBeforePost
    Connection = DM.FDConnection1
    Transaction = TROdontogramasOpcoes
    UpdateObject = UPOdontogramasOpcoes
    SQL.Strings = (
      'select '
      'ODP_CODIGO,'
      'ODP_COR,'
      'ODP_D11,'
      'ODP_D12,'
      'ODP_D13,'
      'ODP_D14,'
      'ODP_D15,'
      'ODP_D16,'
      'ODP_D17,'
      'ODP_D18,'
      'ODP_D21,'
      'ODP_D22,'
      'ODP_D23,'
      'ODP_D24,'
      'ODP_D25,'
      'ODP_D26,'
      'ODP_D27,'
      'ODP_D28,'
      'ODP_D31,'
      'ODP_D32,'
      'ODP_D33,'
      'ODP_D34,'
      'ODP_D35,'
      'ODP_D36,'
      'ODP_D37,'
      'ODP_D38,'
      'ODP_D41,'
      'ODP_D42,'
      'ODP_D43,'
      'ODP_D44,'
      'ODP_D45,'
      'ODP_D46,'
      'ODP_D47,'
      'ODP_D48,'
      'ODP_D51,'
      'ODP_D52,'
      'ODP_D53,'
      'ODP_D54,'
      'ODP_D55,'
      'ODP_D61,'
      'ODP_D62,'
      'ODP_D63,'
      'ODP_D64,'
      'ODP_D65,'
      'ODP_D71,'
      'ODP_D72,'
      'ODP_D73,'
      'ODP_D74,'
      'ODP_D75,'
      'ODP_D81,'
      'ODP_D82,'
      'ODP_D83,'
      'ODP_D84,'
      'ODP_D85,'
      'ODP_DESCRICAO,'
      'ODP_DTATUALIZACAO,'
      'ODP_DTCADASTRO,'
      'ODP_ESTILO,'
      'ODP_HRATUALIZACAO,'
      'ODP_HRCADASTRO,'
      'ODP_PADRAO,'
      'ODP_USUARIO'
      'from ODONTOGRAMASOPCOES'
      'where ODP_CODIGO=:codigo'
      '')
    Left = 1120
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBOdontogramasOpcoesODP_CODIGO: TIntegerField
      FieldName = 'ODP_CODIGO'
      Origin = 'ODP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBOdontogramasOpcoesODP_COR: TIntegerField
      FieldName = 'ODP_COR'
      Origin = 'ODP_COR'
    end
    object TBOdontogramasOpcoesODP_D11: TStringField
      FieldName = 'ODP_D11'
      Origin = 'ODP_D11'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D12: TStringField
      FieldName = 'ODP_D12'
      Origin = 'ODP_D12'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D13: TStringField
      FieldName = 'ODP_D13'
      Origin = 'ODP_D13'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D14: TStringField
      FieldName = 'ODP_D14'
      Origin = 'ODP_D14'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D15: TStringField
      FieldName = 'ODP_D15'
      Origin = 'ODP_D15'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D16: TStringField
      FieldName = 'ODP_D16'
      Origin = 'ODP_D16'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D17: TStringField
      FieldName = 'ODP_D17'
      Origin = 'ODP_D17'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D18: TStringField
      FieldName = 'ODP_D18'
      Origin = 'ODP_D18'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D21: TStringField
      FieldName = 'ODP_D21'
      Origin = 'ODP_D21'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D22: TStringField
      FieldName = 'ODP_D22'
      Origin = 'ODP_D22'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D23: TStringField
      FieldName = 'ODP_D23'
      Origin = 'ODP_D23'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D24: TStringField
      FieldName = 'ODP_D24'
      Origin = 'ODP_D24'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D25: TStringField
      FieldName = 'ODP_D25'
      Origin = 'ODP_D25'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D26: TStringField
      FieldName = 'ODP_D26'
      Origin = 'ODP_D26'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D27: TStringField
      FieldName = 'ODP_D27'
      Origin = 'ODP_D27'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D28: TStringField
      FieldName = 'ODP_D28'
      Origin = 'ODP_D28'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D31: TStringField
      FieldName = 'ODP_D31'
      Origin = 'ODP_D31'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D32: TStringField
      FieldName = 'ODP_D32'
      Origin = 'ODP_D32'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D33: TStringField
      FieldName = 'ODP_D33'
      Origin = 'ODP_D33'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D34: TStringField
      FieldName = 'ODP_D34'
      Origin = 'ODP_D34'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D35: TStringField
      FieldName = 'ODP_D35'
      Origin = 'ODP_D35'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D36: TStringField
      FieldName = 'ODP_D36'
      Origin = 'ODP_D36'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D37: TStringField
      FieldName = 'ODP_D37'
      Origin = 'ODP_D37'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D38: TStringField
      FieldName = 'ODP_D38'
      Origin = 'ODP_D38'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D41: TStringField
      FieldName = 'ODP_D41'
      Origin = 'ODP_D41'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D42: TStringField
      FieldName = 'ODP_D42'
      Origin = 'ODP_D42'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D43: TStringField
      FieldName = 'ODP_D43'
      Origin = 'ODP_D43'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D44: TStringField
      FieldName = 'ODP_D44'
      Origin = 'ODP_D44'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D45: TStringField
      FieldName = 'ODP_D45'
      Origin = 'ODP_D45'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D46: TStringField
      FieldName = 'ODP_D46'
      Origin = 'ODP_D46'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D47: TStringField
      FieldName = 'ODP_D47'
      Origin = 'ODP_D47'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D48: TStringField
      FieldName = 'ODP_D48'
      Origin = 'ODP_D48'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D51: TStringField
      FieldName = 'ODP_D51'
      Origin = 'ODP_D51'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D52: TStringField
      FieldName = 'ODP_D52'
      Origin = 'ODP_D52'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D53: TStringField
      FieldName = 'ODP_D53'
      Origin = 'ODP_D53'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D54: TStringField
      FieldName = 'ODP_D54'
      Origin = 'ODP_D54'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D55: TStringField
      FieldName = 'ODP_D55'
      Origin = 'ODP_D55'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D61: TStringField
      FieldName = 'ODP_D61'
      Origin = 'ODP_D61'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D62: TStringField
      FieldName = 'ODP_D62'
      Origin = 'ODP_D62'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D63: TStringField
      FieldName = 'ODP_D63'
      Origin = 'ODP_D63'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D64: TStringField
      FieldName = 'ODP_D64'
      Origin = 'ODP_D64'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D65: TStringField
      FieldName = 'ODP_D65'
      Origin = 'ODP_D65'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D71: TStringField
      FieldName = 'ODP_D71'
      Origin = 'ODP_D71'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D72: TStringField
      FieldName = 'ODP_D72'
      Origin = 'ODP_D72'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D73: TStringField
      FieldName = 'ODP_D73'
      Origin = 'ODP_D73'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D74: TStringField
      FieldName = 'ODP_D74'
      Origin = 'ODP_D74'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D75: TStringField
      FieldName = 'ODP_D75'
      Origin = 'ODP_D75'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D81: TStringField
      FieldName = 'ODP_D81'
      Origin = 'ODP_D81'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D82: TStringField
      FieldName = 'ODP_D82'
      Origin = 'ODP_D82'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D83: TStringField
      FieldName = 'ODP_D83'
      Origin = 'ODP_D83'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D84: TStringField
      FieldName = 'ODP_D84'
      Origin = 'ODP_D84'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_D85: TStringField
      FieldName = 'ODP_D85'
      Origin = 'ODP_D85'
      Size = 80
    end
    object TBOdontogramasOpcoesODP_DESCRICAO: TStringField
      FieldName = 'ODP_DESCRICAO'
      Origin = 'ODP_DESCRICAO'
      Size = 30
    end
    object TBOdontogramasOpcoesODP_DTATUALIZACAO: TDateField
      FieldName = 'ODP_DTATUALIZACAO'
      Origin = 'ODP_DTATUALIZACAO'
    end
    object TBOdontogramasOpcoesODP_DTCADASTRO: TDateField
      FieldName = 'ODP_DTCADASTRO'
      Origin = 'ODP_DTCADASTRO'
    end
    object TBOdontogramasOpcoesODP_ESTILO: TStringField
      FieldName = 'ODP_ESTILO'
      Origin = 'ODP_ESTILO'
      Size = 10
    end
    object TBOdontogramasOpcoesODP_HRATUALIZACAO: TTimeField
      FieldName = 'ODP_HRATUALIZACAO'
      Origin = 'ODP_HRATUALIZACAO'
    end
    object TBOdontogramasOpcoesODP_HRCADASTRO: TTimeField
      FieldName = 'ODP_HRCADASTRO'
      Origin = 'ODP_HRCADASTRO'
    end
    object TBOdontogramasOpcoesODP_PADRAO: TStringField
      FieldName = 'ODP_PADRAO'
      Origin = 'ODP_PADRAO'
      Size = 1
    end
    object TBOdontogramasOpcoesODP_USUARIO: TStringField
      FieldName = 'ODP_USUARIO'
      Origin = 'ODP_USUARIO'
    end
  end
  object TROpcionais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 392
  end
  object UPOpcionais: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO OPCIONAIS'
      '(OPC_CODIGO, OPC_DESCRICAO, OPC_DTATUALIZACAO, '
      '  OPC_DTCADASTRO, OPC_HRATUALIZACAO, OPC_HRCADASTRO, '
      '  OPC_USUARIO)'
      
        'VALUES (gen_id(GEN_OPCIONAIS,1), :NEW_OPC_DESCRICAO, :NEW_OPC_DT' +
        'ATUALIZACAO, '
      
        '  :NEW_OPC_DTCADASTRO, :NEW_OPC_HRATUALIZACAO, :NEW_OPC_HRCADAST' +
        'RO, '
      '  :NEW_OPC_USUARIO)'
      
        'RETURNING OPC_CODIGO, OPC_DESCRICAO, OPC_DTATUALIZACAO, OPC_DTCA' +
        'DASTRO, OPC_HRATUALIZACAO, OPC_HRCADASTRO, OPC_USUARIO')
    ModifySQL.Strings = (
      'UPDATE OPCIONAIS'
      
        'SET OPC_CODIGO = :NEW_OPC_CODIGO, OPC_DESCRICAO = :NEW_OPC_DESCR' +
        'ICAO, '
      
        '  OPC_DTATUALIZACAO = :NEW_OPC_DTATUALIZACAO, OPC_DTCADASTRO = :' +
        'NEW_OPC_DTCADASTRO, '
      
        '  OPC_HRATUALIZACAO = :NEW_OPC_HRATUALIZACAO, OPC_HRCADASTRO = :' +
        'NEW_OPC_HRCADASTRO, '
      '  OPC_USUARIO = :NEW_OPC_USUARIO'
      'WHERE OPC_CODIGO = :OLD_OPC_CODIGO'
      
        'RETURNING OPC_CODIGO, OPC_DESCRICAO, OPC_DTATUALIZACAO, OPC_DTCA' +
        'DASTRO, OPC_HRATUALIZACAO, OPC_HRCADASTRO, OPC_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM OPCIONAIS'
      'WHERE OPC_CODIGO = :OLD_OPC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT OPC_CODIGO, OPC_DESCRICAO, OPC_DTATUALIZACAO, OPC_DTCADAS' +
        'TRO, '
      '  OPC_HRATUALIZACAO, OPC_HRCADASTRO, OPC_USUARIO'
      'FROM OPCIONAIS'
      'WHERE OPC_CODIGO = :OLD_OPC_CODIGO')
    Left = 32
    Top = 360
  end
  object TBOpcionais: TFDQuery
    BeforeInsert = TBOpcionaisBeforeInsert
    AfterInsert = TBOpcionaisAfterInsert
    BeforeEdit = TBOpcionaisBeforeEdit
    BeforePost = TBOpcionaisBeforePost
    Connection = DM.FDConnection1
    Transaction = TROpcionais
    UpdateObject = UPOpcionais
    SQL.Strings = (
      'select'
      'OPC_CODIGO,'
      'OPC_DESCRICAO,'
      'OPC_DTATUALIZACAO,'
      'OPC_DTCADASTRO,'
      'OPC_HRATUALIZACAO,'
      'OPC_HRCADASTRO,'
      'OPC_USUARIO'
      'from OPCIONAIS'
      'where OPC_CODIGO=:codigo'
      '')
    Left = 32
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBOpcionaisOPC_CODIGO: TIntegerField
      FieldName = 'OPC_CODIGO'
      Origin = 'OPC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBOpcionaisOPC_DESCRICAO: TStringField
      FieldName = 'OPC_DESCRICAO'
      Origin = 'OPC_DESCRICAO'
      Size = 50
    end
    object TBOpcionaisOPC_DTATUALIZACAO: TDateField
      FieldName = 'OPC_DTATUALIZACAO'
      Origin = 'OPC_DTATUALIZACAO'
    end
    object TBOpcionaisOPC_DTCADASTRO: TDateField
      FieldName = 'OPC_DTCADASTRO'
      Origin = 'OPC_DTCADASTRO'
    end
    object TBOpcionaisOPC_HRATUALIZACAO: TTimeField
      FieldName = 'OPC_HRATUALIZACAO'
      Origin = 'OPC_HRATUALIZACAO'
    end
    object TBOpcionaisOPC_HRCADASTRO: TTimeField
      FieldName = 'OPC_HRCADASTRO'
      Origin = 'OPC_HRCADASTRO'
    end
    object TBOpcionaisOPC_USUARIO: TStringField
      FieldName = 'OPC_USUARIO'
      Origin = 'OPC_USUARIO'
    end
  end
  object TRPontos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 64
    Top = 392
  end
  object UPPontos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PONTOS'
      '(PTS_CLIENTE, PTS_CODIGO, PTS_COTACAO, PTS_DESCRICAO, '
      '  PTS_DTATUALIZACAO, PTS_DTCADASTRO, PTS_ENTRADASAIDA, '
      '  PTS_HRATUALIZACAO, PTS_HRCADASTRO, PTS_NUMDOCTO, '
      '  PTS_PONTOS, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, '
      '  PTS_USUARIO, PTS_VALOR)'
      
        'VALUES (:NEW_PTS_CLIENTE, gen_id(GEN_PONTOS,1), :NEW_PTS_COTACAO' +
        ', :NEW_PTS_DESCRICAO, '
      
        '  :NEW_PTS_DTATUALIZACAO, :NEW_PTS_DTCADASTRO, :NEW_PTS_ENTRADAS' +
        'AIDA, '
      
        '  :NEW_PTS_HRATUALIZACAO, :NEW_PTS_HRCADASTRO, :NEW_PTS_NUMDOCTO' +
        ', '
      
        '  :NEW_PTS_PONTOS, :NEW_PTS_SALDOANTERIOR, :NEW_PTS_SALDOPOSTERI' +
        'OR, '
      '  :NEW_PTS_USUARIO, :NEW_PTS_VALOR)'
      
        'RETURNING PTS_CLIENTE, PTS_CODIGO, PTS_COTACAO, PTS_DESCRICAO, P' +
        'TS_DTATUALIZACAO, PTS_DTCADASTRO, PTS_ENTRADASAIDA, PTS_HRATUALI' +
        'ZACAO, PTS_HRCADASTRO, PTS_NUMDOCTO, PTS_PONTOS, PTS_SALDOANTERI' +
        'OR, PTS_SALDOPOSTERIOR, PTS_USUARIO, PTS_VALOR')
    ModifySQL.Strings = (
      'UPDATE PONTOS'
      
        'SET PTS_CLIENTE = :NEW_PTS_CLIENTE, PTS_CODIGO = :NEW_PTS_CODIGO' +
        ', '
      
        '  PTS_COTACAO = :NEW_PTS_COTACAO, PTS_DESCRICAO = :NEW_PTS_DESCR' +
        'ICAO, '
      
        '  PTS_DTATUALIZACAO = :NEW_PTS_DTATUALIZACAO, PTS_DTCADASTRO = :' +
        'NEW_PTS_DTCADASTRO, '
      
        '  PTS_ENTRADASAIDA = :NEW_PTS_ENTRADASAIDA, PTS_HRATUALIZACAO = ' +
        ':NEW_PTS_HRATUALIZACAO, '
      
        '  PTS_HRCADASTRO = :NEW_PTS_HRCADASTRO, PTS_NUMDOCTO = :NEW_PTS_' +
        'NUMDOCTO, '
      
        '  PTS_PONTOS = :NEW_PTS_PONTOS, PTS_SALDOANTERIOR = :NEW_PTS_SAL' +
        'DOANTERIOR, '
      
        '  PTS_SALDOPOSTERIOR = :NEW_PTS_SALDOPOSTERIOR, PTS_USUARIO = :N' +
        'EW_PTS_USUARIO, '
      '  PTS_VALOR = :NEW_PTS_VALOR'
      'WHERE PTS_CODIGO = :OLD_PTS_CODIGO'
      
        'RETURNING PTS_CLIENTE, PTS_CODIGO, PTS_COTACAO, PTS_DESCRICAO, P' +
        'TS_DTATUALIZACAO, PTS_DTCADASTRO, PTS_ENTRADASAIDA, PTS_HRATUALI' +
        'ZACAO, PTS_HRCADASTRO, PTS_NUMDOCTO, PTS_PONTOS, PTS_SALDOANTERI' +
        'OR, PTS_SALDOPOSTERIOR, PTS_USUARIO, PTS_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM PONTOS'
      'WHERE PTS_CODIGO = :OLD_PTS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PTS_CLIENTE, PTS_CODIGO, PTS_COTACAO, PTS_DESCRICAO, PTS_' +
        'DTATUALIZACAO, '
      
        '  PTS_DTCADASTRO, PTS_ENTRADASAIDA, PTS_HRATUALIZACAO, PTS_HRCAD' +
        'ASTRO, '
      
        '  PTS_NUMDOCTO, PTS_PONTOS, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIO' +
        'R, '
      '  PTS_USUARIO, PTS_VALOR'
      'FROM PONTOS'
      'WHERE PTS_CODIGO = :OLD_PTS_CODIGO')
    Left = 64
    Top = 360
  end
  object TBPontos: TFDQuery
    BeforeInsert = TBPontosBeforeInsert
    AfterInsert = TBPontosAfterInsert
    BeforeEdit = TBPontosBeforeEdit
    AfterEdit = TBPontosAfterEdit
    BeforePost = TBPontosBeforePost
    AfterPost = TBPontosAfterPost
    Connection = DM.FDConnection1
    Transaction = TRPontos
    UpdateObject = UPPontos
    SQL.Strings = (
      'select '
      'PTS_CLIENTE,'
      'PTS_CODIGO,'
      'PTS_COTACAO,'
      'PTS_DESCRICAO,'
      'PTS_DTATUALIZACAO,'
      'PTS_DTCADASTRO,'
      'PTS_ENTRADASAIDA,'
      'PTS_HRATUALIZACAO,'
      'PTS_HRCADASTRO,'
      'PTS_NUMDOCTO,'
      'PTS_PONTOS,'
      'PTS_SALDOANTERIOR,'
      'PTS_SALDOPOSTERIOR,'
      'PTS_USUARIO,'
      'PTS_VALOR,'
      'CLI_NOME,'
      'CLI_PONTOS'
      'from PONTOS'
      'left join CLIENTES on PTS_CLIENTE=CLI_CODIGO'
      'where PTS_CODIGO=:codigo'
      'order by PTS_DTCADASTRO desc'
      '')
    Left = 64
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBPontosPTS_CLIENTE: TIntegerField
      FieldName = 'PTS_CLIENTE'
      Origin = 'PTS_CLIENTE'
      Required = True
    end
    object TBPontosPTS_CODIGO: TIntegerField
      FieldName = 'PTS_CODIGO'
      Origin = 'PTS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBPontosPTS_COTACAO: TFMTBCDField
      FieldName = 'PTS_COTACAO'
      Origin = 'PTS_COTACAO'
      Precision = 18
    end
    object TBPontosPTS_DESCRICAO: TStringField
      FieldName = 'PTS_DESCRICAO'
      Origin = 'PTS_DESCRICAO'
      Size = 50
    end
    object TBPontosPTS_DTATUALIZACAO: TDateField
      FieldName = 'PTS_DTATUALIZACAO'
      Origin = 'PTS_DTATUALIZACAO'
    end
    object TBPontosPTS_DTCADASTRO: TDateField
      FieldName = 'PTS_DTCADASTRO'
      Origin = 'PTS_DTCADASTRO'
    end
    object TBPontosPTS_ENTRADASAIDA: TStringField
      FieldName = 'PTS_ENTRADASAIDA'
      Origin = 'PTS_ENTRADASAIDA'
      Size = 1
    end
    object TBPontosPTS_HRATUALIZACAO: TTimeField
      FieldName = 'PTS_HRATUALIZACAO'
      Origin = 'PTS_HRATUALIZACAO'
    end
    object TBPontosPTS_HRCADASTRO: TTimeField
      FieldName = 'PTS_HRCADASTRO'
      Origin = 'PTS_HRCADASTRO'
    end
    object TBPontosPTS_NUMDOCTO: TStringField
      FieldName = 'PTS_NUMDOCTO'
      Origin = 'PTS_NUMDOCTO'
    end
    object TBPontosPTS_PONTOS: TFMTBCDField
      FieldName = 'PTS_PONTOS'
      Origin = 'PTS_PONTOS'
      Precision = 18
    end
    object TBPontosPTS_SALDOANTERIOR: TFMTBCDField
      FieldName = 'PTS_SALDOANTERIOR'
      Origin = 'PTS_SALDOANTERIOR'
      Precision = 18
    end
    object TBPontosPTS_SALDOPOSTERIOR: TFMTBCDField
      FieldName = 'PTS_SALDOPOSTERIOR'
      Origin = 'PTS_SALDOPOSTERIOR'
      Precision = 18
    end
    object TBPontosPTS_USUARIO: TStringField
      FieldName = 'PTS_USUARIO'
      Origin = 'PTS_USUARIO'
    end
    object TBPontosPTS_VALOR: TFMTBCDField
      FieldName = 'PTS_VALOR'
      Origin = 'PTS_VALOR'
      Precision = 18
    end
    object TBPontosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBPontosCLI_PONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      ProviderFlags = []
      Precision = 18
    end
  end
  object TRProcessos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 96
    Top = 392
  end
  object UPProcessos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROCESSOS'
      '(PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_CODIGO, '
      '  PCS_DESCRICAO, PCS_DTARQUIVO, PCS_DTATUALIZACAO, '
      '  PCS_DTCADASTRO, PCS_FORO, PCS_HRATUALIZACAO, '
      '  PCS_HRCADASTRO, PCS_LOCALFISICO, PCS_NUMEROANTIGO, '
      '  PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, '
      '  PCS_TOTALLANCAMENTOS, PCS_USUARIO)'
      
        'VALUES (:NEW_PCS_ACAO, :NEW_PCS_ADVOGADO, :NEW_PCS_CHAVE, gen_id' +
        '(GEN_PROCESSOS,1), '
      
        '  :NEW_PCS_DESCRICAO, :NEW_PCS_DTARQUIVO, :NEW_PCS_DTATUALIZACAO' +
        ', '
      '  :NEW_PCS_DTCADASTRO, :NEW_PCS_FORO, :NEW_PCS_HRATUALIZACAO, '
      
        '  :NEW_PCS_HRCADASTRO, :NEW_PCS_LOCALFISICO, :NEW_PCS_NUMEROANTI' +
        'GO, '
      
        '  :NEW_PCS_NUMEROUNIFICADO, :NEW_PCS_NUMEROUNIFICADOFED, :NEW_PC' +
        'S_STATUS, '
      '  :NEW_PCS_TOTALLANCAMENTOS, :NEW_PCS_USUARIO)'
      
        'RETURNING PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_CODIGO, PCS_DES' +
        'CRICAO, PCS_DTARQUIVO, PCS_DTATUALIZACAO, PCS_DTCADASTRO, PCS_FO' +
        'RO, PCS_HRATUALIZACAO, PCS_HRCADASTRO, PCS_LOCALFISICO, PCS_NUME' +
        'ROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATU' +
        'S, PCS_TOTALLANCAMENTOS, PCS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PROCESSOS'
      'SET PCS_ACAO = :NEW_PCS_ACAO, PCS_ADVOGADO = :NEW_PCS_ADVOGADO, '
      '  PCS_CHAVE = :NEW_PCS_CHAVE, PCS_CODIGO = :NEW_PCS_CODIGO, '
      
        '  PCS_DESCRICAO = :NEW_PCS_DESCRICAO, PCS_DTARQUIVO = :NEW_PCS_D' +
        'TARQUIVO, '
      
        '  PCS_DTATUALIZACAO = :NEW_PCS_DTATUALIZACAO, PCS_DTCADASTRO = :' +
        'NEW_PCS_DTCADASTRO, '
      
        '  PCS_FORO = :NEW_PCS_FORO, PCS_HRATUALIZACAO = :NEW_PCS_HRATUAL' +
        'IZACAO, '
      
        '  PCS_HRCADASTRO = :NEW_PCS_HRCADASTRO, PCS_LOCALFISICO = :NEW_P' +
        'CS_LOCALFISICO, '
      
        '  PCS_NUMEROANTIGO = :NEW_PCS_NUMEROANTIGO, PCS_NUMEROUNIFICADO ' +
        '= :NEW_PCS_NUMEROUNIFICADO, '
      
        '  PCS_NUMEROUNIFICADOFED = :NEW_PCS_NUMEROUNIFICADOFED, PCS_STAT' +
        'US = :NEW_PCS_STATUS, '
      
        '  PCS_TOTALLANCAMENTOS = :NEW_PCS_TOTALLANCAMENTOS, PCS_USUARIO ' +
        '= :NEW_PCS_USUARIO'
      'WHERE PCS_CODIGO = :OLD_PCS_CODIGO'
      
        'RETURNING PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_CODIGO, PCS_DES' +
        'CRICAO, PCS_DTARQUIVO, PCS_DTATUALIZACAO, PCS_DTCADASTRO, PCS_FO' +
        'RO, PCS_HRATUALIZACAO, PCS_HRCADASTRO, PCS_LOCALFISICO, PCS_NUME' +
        'ROANTIGO, PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATU' +
        'S, PCS_TOTALLANCAMENTOS, PCS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PROCESSOS'
      'WHERE PCS_CODIGO = :OLD_PCS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PCS_ACAO, PCS_ADVOGADO, PCS_CHAVE, PCS_CODIGO, PCS_DESCRI' +
        'CAO, '
      '  PCS_DTARQUIVO, PCS_DTATUALIZACAO, PCS_DTCADASTRO, PCS_FORO, '
      
        '  PCS_HRATUALIZACAO, PCS_HRCADASTRO, PCS_LOCALFISICO, PCS_NUMERO' +
        'ANTIGO, '
      '  PCS_NUMEROUNIFICADO, PCS_NUMEROUNIFICADOFED, PCS_STATUS, '
      '  PCS_TOTALLANCAMENTOS, PCS_USUARIO'
      'FROM PROCESSOS'
      'WHERE PCS_CODIGO = :OLD_PCS_CODIGO')
    Left = 96
    Top = 360
  end
  object TBProcessos: TFDQuery
    BeforeInsert = TBProcessosBeforeInsert
    AfterInsert = TBProcessosAfterInsert
    BeforeEdit = TBProcessosBeforeEdit
    BeforePost = TBProcessosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRProcessos
    UpdateObject = UPProcessos
    SQL.Strings = (
      'select '
      'PCS_ACAO,'
      'PCS_ADVOGADO,'
      'PCS_CHAVE,'
      'PCS_CODIGO,'
      'PCS_DESCRICAO,'
      'PCS_DTARQUIVO,'
      'PCS_DTATUALIZACAO,'
      'PCS_DTCADASTRO,'
      'PCS_FORO,'
      'PCS_HRATUALIZACAO,'
      'PCS_HRCADASTRO,'
      'PCS_LOCALFISICO,'
      'PCS_NUMEROANTIGO,'
      'PCS_NUMEROUNIFICADO,'
      'PCS_NUMEROUNIFICADOFED,'
      'PCS_STATUS,'
      'PCS_TOTALLANCAMENTOS,'
      'PCS_USUARIO,'
      'ACO_DESCRICAO,'
      'FRS_NOME,'
      'VEN_NOME '
      'from PROCESSOS'
      'left join ACOES on PCS_ACAO=ACO_CODIGO'
      'left join FOROS on PCS_FORO=FRS_CODIGO'
      'left join VENDEDORES on PCS_ADVOGADO=VEN_CODIGO'
      'where PCS_CODIGO=:codigo'
      '')
    Left = 96
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProcessosPCS_ACAO: TIntegerField
      FieldName = 'PCS_ACAO'
      Origin = 'PCS_ACAO'
      Required = True
    end
    object TBProcessosPCS_ADVOGADO: TIntegerField
      FieldName = 'PCS_ADVOGADO'
      Origin = 'PCS_ADVOGADO'
      Required = True
    end
    object TBProcessosPCS_CHAVE: TStringField
      FieldName = 'PCS_CHAVE'
      Origin = 'PCS_CHAVE'
      Size = 40
    end
    object TBProcessosPCS_CODIGO: TIntegerField
      FieldName = 'PCS_CODIGO'
      Origin = 'PCS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProcessosPCS_DESCRICAO: TStringField
      FieldName = 'PCS_DESCRICAO'
      Origin = 'PCS_DESCRICAO'
      Size = 50
    end
    object TBProcessosPCS_DTARQUIVO: TDateField
      FieldName = 'PCS_DTARQUIVO'
      Origin = 'PCS_DTARQUIVO'
    end
    object TBProcessosPCS_DTATUALIZACAO: TDateField
      FieldName = 'PCS_DTATUALIZACAO'
      Origin = 'PCS_DTATUALIZACAO'
    end
    object TBProcessosPCS_DTCADASTRO: TDateField
      FieldName = 'PCS_DTCADASTRO'
      Origin = 'PCS_DTCADASTRO'
    end
    object TBProcessosPCS_FORO: TIntegerField
      FieldName = 'PCS_FORO'
      Origin = 'PCS_FORO'
      Required = True
    end
    object TBProcessosPCS_HRATUALIZACAO: TTimeField
      FieldName = 'PCS_HRATUALIZACAO'
      Origin = 'PCS_HRATUALIZACAO'
    end
    object TBProcessosPCS_HRCADASTRO: TTimeField
      FieldName = 'PCS_HRCADASTRO'
      Origin = 'PCS_HRCADASTRO'
    end
    object TBProcessosPCS_LOCALFISICO: TStringField
      FieldName = 'PCS_LOCALFISICO'
      Origin = 'PCS_LOCALFISICO'
      Size = 50
    end
    object TBProcessosPCS_NUMEROANTIGO: TStringField
      FieldName = 'PCS_NUMEROANTIGO'
      Origin = 'PCS_NUMEROANTIGO'
      Size = 30
    end
    object TBProcessosPCS_NUMEROUNIFICADO: TStringField
      FieldName = 'PCS_NUMEROUNIFICADO'
      Origin = 'PCS_NUMEROUNIFICADO'
      EditMask = '9999999\-99\.9999\.9\.99\.9999;1;_'
      Size = 30
    end
    object TBProcessosPCS_NUMEROUNIFICADOFED: TStringField
      FieldName = 'PCS_NUMEROUNIFICADOFED'
      Origin = 'PCS_NUMEROUNIFICADOFED'
      EditMask = '9999999\-99\.9999\.999\.9999;1;_'
      Size = 30
    end
    object TBProcessosPCS_STATUS: TStringField
      FieldName = 'PCS_STATUS'
      Origin = 'PCS_STATUS'
      Size = 1
    end
    object TBProcessosPCS_TOTALLANCAMENTOS: TFMTBCDField
      FieldName = 'PCS_TOTALLANCAMENTOS'
      Origin = 'PCS_TOTALLANCAMENTOS'
      currency = True
      Precision = 18
    end
    object TBProcessosPCS_USUARIO: TStringField
      FieldName = 'PCS_USUARIO'
      Origin = 'PCS_USUARIO'
    end
    object TBProcessosACO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ACO_DESCRICAO'
      Origin = 'ACO_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProcessosFRS_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRS_NOME'
      Origin = 'FRS_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBProcessosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRProcessosCustas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 128
    Top = 392
  end
  object UPProcessosCustas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROCESSOSCUSTAS'
      '(PSC_CODIGO, PSC_DATA, PSC_DESCRICAO, PSC_DTATUALIZACAO, '
      '  PSC_DTCADASTRO, PSC_ENTRADASAIDA, PSC_HRATUALIZACAO, '
      '  PSC_HRCADASTRO, PSC_PROCESSO, PSC_USUARIO, '
      '  PSC_VALOR, PSC_VALORANTERIOR, PSC_VALORPOSTERIOR)'
      
        'VALUES (gen_id(GEN_PROCESSOSCUSTAS,1), :NEW_PSC_DATA, :NEW_PSC_D' +
        'ESCRICAO, :NEW_PSC_DTATUALIZACAO, '
      
        '  :NEW_PSC_DTCADASTRO, :NEW_PSC_ENTRADASAIDA, :NEW_PSC_HRATUALIZ' +
        'ACAO, '
      '  :NEW_PSC_HRCADASTRO, :NEW_PSC_PROCESSO, :NEW_PSC_USUARIO, '
      
        '  :NEW_PSC_VALOR, :NEW_PSC_VALORANTERIOR, :NEW_PSC_VALORPOSTERIO' +
        'R)'
      
        'RETURNING PSC_CODIGO, PSC_DATA, PSC_DESCRICAO, PSC_DTATUALIZACAO' +
        ', PSC_DTCADASTRO, PSC_ENTRADASAIDA, PSC_HRATUALIZACAO, PSC_HRCAD' +
        'ASTRO, PSC_PROCESSO, PSC_USUARIO, PSC_VALOR, PSC_VALORANTERIOR, ' +
        'PSC_VALORPOSTERIOR')
    ModifySQL.Strings = (
      'UPDATE PROCESSOSCUSTAS'
      
        'SET PSC_CODIGO = :NEW_PSC_CODIGO, PSC_DATA = :NEW_PSC_DATA, PSC_' +
        'DESCRICAO = :NEW_PSC_DESCRICAO, '
      
        '  PSC_DTATUALIZACAO = :NEW_PSC_DTATUALIZACAO, PSC_DTCADASTRO = :' +
        'NEW_PSC_DTCADASTRO, '
      
        '  PSC_ENTRADASAIDA = :NEW_PSC_ENTRADASAIDA, PSC_HRATUALIZACAO = ' +
        ':NEW_PSC_HRATUALIZACAO, '
      
        '  PSC_HRCADASTRO = :NEW_PSC_HRCADASTRO, PSC_PROCESSO = :NEW_PSC_' +
        'PROCESSO, '
      '  PSC_USUARIO = :NEW_PSC_USUARIO, PSC_VALOR = :NEW_PSC_VALOR, '
      
        '  PSC_VALORANTERIOR = :NEW_PSC_VALORANTERIOR, PSC_VALORPOSTERIOR' +
        ' = :NEW_PSC_VALORPOSTERIOR'
      'WHERE PSC_CODIGO = :OLD_PSC_CODIGO'
      
        'RETURNING PSC_CODIGO, PSC_DATA, PSC_DESCRICAO, PSC_DTATUALIZACAO' +
        ', PSC_DTCADASTRO, PSC_ENTRADASAIDA, PSC_HRATUALIZACAO, PSC_HRCAD' +
        'ASTRO, PSC_PROCESSO, PSC_USUARIO, PSC_VALOR, PSC_VALORANTERIOR, ' +
        'PSC_VALORPOSTERIOR')
    DeleteSQL.Strings = (
      'DELETE FROM PROCESSOSCUSTAS'
      'WHERE PSC_CODIGO = :OLD_PSC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PSC_CODIGO, PSC_DATA, PSC_DESCRICAO, PSC_DTATUALIZACAO, P' +
        'SC_DTCADASTRO, '
      
        '  PSC_ENTRADASAIDA, PSC_HRATUALIZACAO, PSC_HRCADASTRO, PSC_PROCE' +
        'SSO, '
      '  PSC_USUARIO, PSC_VALOR, PSC_VALORANTERIOR, PSC_VALORPOSTERIOR'
      'FROM PROCESSOSCUSTAS'
      'WHERE PSC_CODIGO = :OLD_PSC_CODIGO')
    Left = 128
    Top = 360
  end
  object TBProcessosCustas: TFDQuery
    BeforeInsert = TBProcessosCustasBeforeInsert
    AfterInsert = TBProcessosCustasAfterInsert
    BeforeEdit = TBProcessosCustasBeforeEdit
    AfterEdit = TBProcessosCustasAfterEdit
    BeforePost = TBProcessosCustasBeforePost
    AfterPost = TBProcessosCustasAfterPost
    MasterSource = DSProcessos
    MasterFields = 'PCS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProcessosCustas
    UpdateObject = UPProcessosCustas
    SQL.Strings = (
      'select'
      'PSC_CODIGO,'
      'PSC_DATA,'
      'PSC_DESCRICAO,'
      'PSC_DTATUALIZACAO,'
      'PSC_DTCADASTRO,'
      'PSC_ENTRADASAIDA,'
      'PSC_HRATUALIZACAO,'
      'PSC_HRCADASTRO,'
      'PSC_PROCESSO,'
      'PSC_USUARIO,'
      'PSC_VALOR,'
      'PSC_VALORANTERIOR,'
      'PSC_VALORPOSTERIOR'
      'from PROCESSOSCUSTAS'
      'where PSC_PROCESSO=:PCS_CODIGO'
      'order by PSC_CODIGO desc'
      '')
    Left = 128
    Top = 328
    ParamData = <
      item
        Name = 'PCS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProcessosCustasPSC_CODIGO: TIntegerField
      FieldName = 'PSC_CODIGO'
      Origin = 'PSC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProcessosCustasPSC_DATA: TDateField
      FieldName = 'PSC_DATA'
      Origin = 'PSC_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosCustasPSC_DESCRICAO: TStringField
      FieldName = 'PSC_DESCRICAO'
      Origin = 'PSC_DESCRICAO'
      Size = 50
    end
    object TBProcessosCustasPSC_DTATUALIZACAO: TDateField
      FieldName = 'PSC_DTATUALIZACAO'
      Origin = 'PSC_DTATUALIZACAO'
    end
    object TBProcessosCustasPSC_DTCADASTRO: TDateField
      FieldName = 'PSC_DTCADASTRO'
      Origin = 'PSC_DTCADASTRO'
    end
    object TBProcessosCustasPSC_ENTRADASAIDA: TStringField
      FieldName = 'PSC_ENTRADASAIDA'
      Origin = 'PSC_ENTRADASAIDA'
      Size = 1
    end
    object TBProcessosCustasPSC_HRATUALIZACAO: TTimeField
      FieldName = 'PSC_HRATUALIZACAO'
      Origin = 'PSC_HRATUALIZACAO'
    end
    object TBProcessosCustasPSC_HRCADASTRO: TTimeField
      FieldName = 'PSC_HRCADASTRO'
      Origin = 'PSC_HRCADASTRO'
    end
    object TBProcessosCustasPSC_PROCESSO: TIntegerField
      FieldName = 'PSC_PROCESSO'
      Origin = 'PSC_PROCESSO'
      Required = True
    end
    object TBProcessosCustasPSC_USUARIO: TStringField
      FieldName = 'PSC_USUARIO'
      Origin = 'PSC_USUARIO'
    end
    object TBProcessosCustasPSC_VALOR: TFMTBCDField
      FieldName = 'PSC_VALOR'
      Origin = 'PSC_VALOR'
      currency = True
      Precision = 18
    end
    object TBProcessosCustasPSC_VALORANTERIOR: TFMTBCDField
      FieldName = 'PSC_VALORANTERIOR'
      Origin = 'PSC_VALORANTERIOR'
      currency = True
      Precision = 18
    end
    object TBProcessosCustasPSC_VALORPOSTERIOR: TFMTBCDField
      FieldName = 'PSC_VALORPOSTERIOR'
      Origin = 'PSC_VALORPOSTERIOR'
      currency = True
      Precision = 18
    end
  end
  object TRProcessosHistorico: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 392
  end
  object UPProcessosHistorico: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROCESSOSHIST'
      '(PSH_CODIGO, PSH_DATA, PSH_DESCRICAO, PSH_DTATUALIZACAO, '
      '  PSH_DTCADASTRO, PSH_HRATUALIZACAO, PSH_HRCADASTRO, '
      '  PSH_OBSERVACOES, PSH_PROCESSO, PSH_USUARIO)'
      
        'VALUES (gen_id(GEN_PROCESSOSHISTORICO,1), :NEW_PSH_DATA, :NEW_PS' +
        'H_DESCRICAO, :NEW_PSH_DTATUALIZACAO, '
      
        '  :NEW_PSH_DTCADASTRO, :NEW_PSH_HRATUALIZACAO, :NEW_PSH_HRCADAST' +
        'RO, '
      '  :NEW_PSH_OBSERVACOES, :NEW_PSH_PROCESSO, :NEW_PSH_USUARIO)'
      
        'RETURNING PSH_CODIGO, PSH_DATA, PSH_DESCRICAO, PSH_DTATUALIZACAO' +
        ', PSH_DTCADASTRO, PSH_HRATUALIZACAO, PSH_HRCADASTRO, PSH_OBSERVA' +
        'COES, PSH_PROCESSO, PSH_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PROCESSOSHIST'
      
        'SET PSH_CODIGO = :NEW_PSH_CODIGO, PSH_DATA = :NEW_PSH_DATA, PSH_' +
        'DESCRICAO = :NEW_PSH_DESCRICAO, '
      
        '  PSH_DTATUALIZACAO = :NEW_PSH_DTATUALIZACAO, PSH_DTCADASTRO = :' +
        'NEW_PSH_DTCADASTRO, '
      
        '  PSH_HRATUALIZACAO = :NEW_PSH_HRATUALIZACAO, PSH_HRCADASTRO = :' +
        'NEW_PSH_HRCADASTRO, '
      
        '  PSH_OBSERVACOES = :NEW_PSH_OBSERVACOES, PSH_PROCESSO = :NEW_PS' +
        'H_PROCESSO, '
      '  PSH_USUARIO = :NEW_PSH_USUARIO'
      'WHERE PSH_CODIGO = :OLD_PSH_CODIGO'
      
        'RETURNING PSH_CODIGO, PSH_DATA, PSH_DESCRICAO, PSH_DTATUALIZACAO' +
        ', PSH_DTCADASTRO, PSH_HRATUALIZACAO, PSH_HRCADASTRO, PSH_OBSERVA' +
        'COES, PSH_PROCESSO, PSH_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PROCESSOSHIST'
      'WHERE PSH_CODIGO = :OLD_PSH_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PSH_CODIGO, PSH_DATA, PSH_DESCRICAO, PSH_DTATUALIZACAO, P' +
        'SH_DTCADASTRO, '
      
        '  PSH_HRATUALIZACAO, PSH_HRCADASTRO, PSH_OBSERVACOES, PSH_PROCES' +
        'SO, '
      '  PSH_USUARIO'
      'FROM PROCESSOSHIST'
      'WHERE PSH_CODIGO = :OLD_PSH_CODIGO')
    Left = 160
    Top = 360
  end
  object TBProcessosHistorico: TFDQuery
    BeforeInsert = TBProcessosHistoricoBeforeInsert
    AfterInsert = TBProcessosHistoricoAfterInsert
    BeforeEdit = TBProcessosHistoricoBeforeEdit
    BeforePost = TBProcessosHistoricoBeforePost
    MasterSource = DSProcessos
    MasterFields = 'PCS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProcessosHistorico
    UpdateObject = UPProcessosHistorico
    SQL.Strings = (
      'select'
      'PSH_CODIGO,'
      'PSH_DATA,'
      'PSH_DESCRICAO,'
      'PSH_DTATUALIZACAO,'
      'PSH_DTCADASTRO,'
      'PSH_HRATUALIZACAO,'
      'PSH_HRCADASTRO,'
      'PSH_OBSERVACOES,'
      'PSH_PROCESSO,'
      'PSH_USUARIO'
      'from PROCESSOSHIST'
      'where PSH_PROCESSO=:PCS_CODIGO'
      'order by PSH_CODIGO desc'
      '')
    Left = 160
    Top = 328
    ParamData = <
      item
        Name = 'PCS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProcessosHistoricoPSH_CODIGO: TIntegerField
      FieldName = 'PSH_CODIGO'
      Origin = 'PSH_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProcessosHistoricoPSH_DATA: TDateField
      FieldName = 'PSH_DATA'
      Origin = 'PSH_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProcessosHistoricoPSH_DESCRICAO: TStringField
      FieldName = 'PSH_DESCRICAO'
      Origin = 'PSH_DESCRICAO'
      Size = 50
    end
    object TBProcessosHistoricoPSH_DTATUALIZACAO: TDateField
      FieldName = 'PSH_DTATUALIZACAO'
      Origin = 'PSH_DTATUALIZACAO'
    end
    object TBProcessosHistoricoPSH_DTCADASTRO: TDateField
      FieldName = 'PSH_DTCADASTRO'
      Origin = 'PSH_DTCADASTRO'
    end
    object TBProcessosHistoricoPSH_HRATUALIZACAO: TTimeField
      FieldName = 'PSH_HRATUALIZACAO'
      Origin = 'PSH_HRATUALIZACAO'
    end
    object TBProcessosHistoricoPSH_HRCADASTRO: TTimeField
      FieldName = 'PSH_HRCADASTRO'
      Origin = 'PSH_HRCADASTRO'
    end
    object TBProcessosHistoricoPSH_OBSERVACOES: TMemoField
      FieldName = 'PSH_OBSERVACOES'
      Origin = 'PSH_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBProcessosHistoricoPSH_PROCESSO: TIntegerField
      FieldName = 'PSH_PROCESSO'
      Origin = 'PSH_PROCESSO'
      Required = True
    end
    object TBProcessosHistoricoPSH_USUARIO: TStringField
      FieldName = 'PSH_USUARIO'
      Origin = 'PSH_USUARIO'
    end
  end
  object TRProcessosPartes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 392
  end
  object UPProcessosPartes: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROCESSOSPARTES'
      '(PSP_ADVOGADO, PSP_CLIENTE, PSP_CODIGO, PSP_CONDICAO, '
      '  PSP_PROCESSO)'
      
        'VALUES (:NEW_PSP_ADVOGADO, :NEW_PSP_CLIENTE, gen_id(GEN_PROCESSO' +
        'SPARTES,1), :NEW_PSP_CONDICAO, '
      '  :NEW_PSP_PROCESSO)'
      
        'RETURNING PSP_ADVOGADO, PSP_CLIENTE, PSP_CODIGO, PSP_CONDICAO, P' +
        'SP_PROCESSO')
    ModifySQL.Strings = (
      'UPDATE PROCESSOSPARTES'
      
        'SET PSP_ADVOGADO = :NEW_PSP_ADVOGADO, PSP_CLIENTE = :NEW_PSP_CLI' +
        'ENTE, '
      
        '  PSP_CODIGO = :NEW_PSP_CODIGO, PSP_CONDICAO = :NEW_PSP_CONDICAO' +
        ', '
      '  PSP_PROCESSO = :NEW_PSP_PROCESSO'
      'WHERE PSP_CODIGO = :OLD_PSP_CODIGO'
      
        'RETURNING PSP_ADVOGADO, PSP_CLIENTE, PSP_CODIGO, PSP_CONDICAO, P' +
        'SP_PROCESSO')
    DeleteSQL.Strings = (
      'DELETE FROM PROCESSOSPARTES'
      'WHERE PSP_CODIGO = :OLD_PSP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PSP_ADVOGADO, PSP_CLIENTE, PSP_CODIGO, PSP_CONDICAO, PSP_' +
        'PROCESSO'
      'FROM PROCESSOSPARTES'
      'WHERE PSP_CODIGO = :OLD_PSP_CODIGO')
    Left = 192
    Top = 360
  end
  object TBProcessosPartes: TFDQuery
    BeforeInsert = TBProcessosPartesBeforeInsert
    AfterInsert = TBProcessosPartesAfterInsert
    BeforeEdit = TBProcessosPartesBeforeEdit
    MasterSource = DSProcessos
    MasterFields = 'PCS_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProcessosPartes
    UpdateObject = UPProcessosPartes
    SQL.Strings = (
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
      'where PSP_PROCESSO=:PCS_CODIGO'
      '')
    Left = 192
    Top = 328
    ParamData = <
      item
        Name = 'PCS_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProcessosPartesPSP_CODIGO: TIntegerField
      FieldName = 'PSP_CODIGO'
      Origin = 'PSP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProcessosPartesPSP_ADVOGADO: TIntegerField
      FieldName = 'PSP_ADVOGADO'
      Origin = 'PSP_ADVOGADO'
      Required = True
    end
    object TBProcessosPartesPSP_CLIENTE: TIntegerField
      FieldName = 'PSP_CLIENTE'
      Origin = 'PSP_CLIENTE'
      Required = True
    end
    object TBProcessosPartesPSP_CONDICAO: TStringField
      FieldName = 'PSP_CONDICAO'
      Origin = 'PSP_CONDICAO'
      Size = 15
    end
    object TBProcessosPartesPSP_PROCESSO: TIntegerField
      FieldName = 'PSP_PROCESSO'
      Origin = 'PSP_PROCESSO'
      Required = True
    end
    object TBProcessosPartesPARTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PARTE'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBProcessosPartesADVOGADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADVOGADO'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRProjetos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 392
  end
  object UPProjetos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROJETOS'
      '(PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_CODIGO, PRJ_DTAPRESENTACAO, '
      '  PRJ_DTAPRESENTACAOPREVISTA, PRJ_DTATUALIZACAO, '
      '  PRJ_DTCADASTRO, PRJ_DTENTREGA, PRJ_DTENTREGAPREVISTA, '
      
        '  PRJ_DTORCAMENTO, PRJ_DTORCAMENTOPREVISTO, PRJ_DTPRIMEIROCONTAT' +
        'O, '
      '  PRJ_DTPROJETOCAD, PRJ_DTPROJETOCADPREVISTO, PRJ_DTVISITA, '
      '  PRJ_DTVISITAPREVISTA, PRJ_HRATUALIZACAO, PRJ_HRCADASTRO, '
      '  PRJ_NOME, PRJ_OBSERVACOES, PRJ_STATUSAPRESENTACAO, '
      '  PRJ_STATUSORCAMENTO, PRJ_STATUSPRODUCAO, PRJ_STATUSPROJETO, '
      '  PRJ_STATUSPROJETOCAD, PRJ_STATUSVISITA, PRJ_TABELAPRECO, '
      '  PRJ_TIPO, PRJ_TOTALPRODUTOS, PRJ_TOTALSERVICOS, '
      '  PRJ_USUARIO, PRJ_VALORTOTAL, PRJ_VALORTOTALCUSTO, '
      '  PRJ_VALORTOTALUP, PRJ_VENDA)'
      
        'VALUES (:NEW_PRJ_ARQUITETO, :NEW_PRJ_CLIENTE, gen_id(GEN_PROJETO' +
        'S,1), :NEW_PRJ_DTAPRESENTACAO, '
      '  :NEW_PRJ_DTAPRESENTACAOPREVISTA, :NEW_PRJ_DTATUALIZACAO, '
      
        '  :NEW_PRJ_DTCADASTRO, :NEW_PRJ_DTENTREGA, :NEW_PRJ_DTENTREGAPRE' +
        'VISTA, '
      
        '  :NEW_PRJ_DTORCAMENTO, :NEW_PRJ_DTORCAMENTOPREVISTO, :NEW_PRJ_D' +
        'TPRIMEIROCONTATO, '
      
        '  :NEW_PRJ_DTPROJETOCAD, :NEW_PRJ_DTPROJETOCADPREVISTO, :NEW_PRJ' +
        '_DTVISITA, '
      
        '  :NEW_PRJ_DTVISITAPREVISTA, :NEW_PRJ_HRATUALIZACAO, :NEW_PRJ_HR' +
        'CADASTRO, '
      
        '  :NEW_PRJ_NOME, :NEW_PRJ_OBSERVACOES, :NEW_PRJ_STATUSAPRESENTAC' +
        'AO, '
      
        '  :NEW_PRJ_STATUSORCAMENTO, :NEW_PRJ_STATUSPRODUCAO, :NEW_PRJ_ST' +
        'ATUSPROJETO, '
      
        '  :NEW_PRJ_STATUSPROJETOCAD, :NEW_PRJ_STATUSVISITA, :NEW_PRJ_TAB' +
        'ELAPRECO, '
      
        '  :NEW_PRJ_TIPO, :NEW_PRJ_TOTALPRODUTOS, :NEW_PRJ_TOTALSERVICOS,' +
        ' '
      
        '  :NEW_PRJ_USUARIO, :NEW_PRJ_VALORTOTAL, :NEW_PRJ_VALORTOTALCUST' +
        'O, '
      '  :NEW_PRJ_VALORTOTALUP, :NEW_PRJ_VENDA)'
      
        'RETURNING PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_CODIGO, PRJ_DTAPRESENT' +
        'ACAO, PRJ_DTAPRESENTACAOPREVISTA, PRJ_DTATUALIZACAO, PRJ_DTCADAS' +
        'TRO, PRJ_DTENTREGA, PRJ_DTENTREGAPREVISTA, PRJ_DTORCAMENTO, PRJ_' +
        'DTORCAMENTOPREVISTO, PRJ_DTPRIMEIROCONTATO, PRJ_DTPROJETOCAD, PR' +
        'J_DTPROJETOCADPREVISTO, PRJ_DTVISITA, PRJ_DTVISITAPREVISTA, PRJ_' +
        'HRATUALIZACAO, PRJ_HRCADASTRO, PRJ_NOME, PRJ_OBSERVACOES, PRJ_ST' +
        'ATUSAPRESENTACAO, PRJ_STATUSORCAMENTO, PRJ_STATUSPRODUCAO, PRJ_S' +
        'TATUSPROJETO, PRJ_STATUSPROJETOCAD, PRJ_STATUSVISITA, PRJ_TABELA' +
        'PRECO, PRJ_TIPO, PRJ_TOTALPRODUTOS, PRJ_TOTALSERVICOS, PRJ_USUAR' +
        'IO, PRJ_VALORTOTAL, PRJ_VALORTOTALCUSTO, PRJ_VALORTOTALUP, PRJ_V' +
        'ENDA')
    ModifySQL.Strings = (
      'UPDATE PROJETOS'
      
        'SET PRJ_ARQUITETO = :NEW_PRJ_ARQUITETO, PRJ_CLIENTE = :NEW_PRJ_C' +
        'LIENTE, '
      
        '  PRJ_CODIGO = :NEW_PRJ_CODIGO, PRJ_DTAPRESENTACAO = :NEW_PRJ_DT' +
        'APRESENTACAO, '
      '  PRJ_DTAPRESENTACAOPREVISTA = :NEW_PRJ_DTAPRESENTACAOPREVISTA, '
      
        '  PRJ_DTATUALIZACAO = :NEW_PRJ_DTATUALIZACAO, PRJ_DTCADASTRO = :' +
        'NEW_PRJ_DTCADASTRO, '
      
        '  PRJ_DTENTREGA = :NEW_PRJ_DTENTREGA, PRJ_DTENTREGAPREVISTA = :N' +
        'EW_PRJ_DTENTREGAPREVISTA, '
      
        '  PRJ_DTORCAMENTO = :NEW_PRJ_DTORCAMENTO, PRJ_DTORCAMENTOPREVIST' +
        'O = :NEW_PRJ_DTORCAMENTOPREVISTO, '
      
        '  PRJ_DTPRIMEIROCONTATO = :NEW_PRJ_DTPRIMEIROCONTATO, PRJ_DTPROJ' +
        'ETOCAD = :NEW_PRJ_DTPROJETOCAD, '
      '  PRJ_DTPROJETOCADPREVISTO = :NEW_PRJ_DTPROJETOCADPREVISTO, '
      
        '  PRJ_DTVISITA = :NEW_PRJ_DTVISITA, PRJ_DTVISITAPREVISTA = :NEW_' +
        'PRJ_DTVISITAPREVISTA, '
      
        '  PRJ_HRATUALIZACAO = :NEW_PRJ_HRATUALIZACAO, PRJ_HRCADASTRO = :' +
        'NEW_PRJ_HRCADASTRO, '
      
        '  PRJ_NOME = :NEW_PRJ_NOME, PRJ_OBSERVACOES = :NEW_PRJ_OBSERVACO' +
        'ES, '
      
        '  PRJ_STATUSAPRESENTACAO = :NEW_PRJ_STATUSAPRESENTACAO, PRJ_STAT' +
        'USORCAMENTO = :NEW_PRJ_STATUSORCAMENTO, '
      
        '  PRJ_STATUSPRODUCAO = :NEW_PRJ_STATUSPRODUCAO, PRJ_STATUSPROJET' +
        'O = :NEW_PRJ_STATUSPROJETO, '
      
        '  PRJ_STATUSPROJETOCAD = :NEW_PRJ_STATUSPROJETOCAD, PRJ_STATUSVI' +
        'SITA = :NEW_PRJ_STATUSVISITA, '
      
        '  PRJ_TABELAPRECO = :NEW_PRJ_TABELAPRECO, PRJ_TIPO = :NEW_PRJ_TI' +
        'PO, '
      
        '  PRJ_TOTALPRODUTOS = :NEW_PRJ_TOTALPRODUTOS, PRJ_TOTALSERVICOS ' +
        '= :NEW_PRJ_TOTALSERVICOS, '
      
        '  PRJ_USUARIO = :NEW_PRJ_USUARIO, PRJ_VALORTOTAL = :NEW_PRJ_VALO' +
        'RTOTAL, '
      
        '  PRJ_VALORTOTALCUSTO = :NEW_PRJ_VALORTOTALCUSTO, PRJ_VALORTOTAL' +
        'UP = :NEW_PRJ_VALORTOTALUP, '
      '  PRJ_VENDA = :NEW_PRJ_VENDA'
      'WHERE PRJ_CODIGO = :OLD_PRJ_CODIGO'
      
        'RETURNING PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_CODIGO, PRJ_DTAPRESENT' +
        'ACAO, PRJ_DTAPRESENTACAOPREVISTA, PRJ_DTATUALIZACAO, PRJ_DTCADAS' +
        'TRO, PRJ_DTENTREGA, PRJ_DTENTREGAPREVISTA, PRJ_DTORCAMENTO, PRJ_' +
        'DTORCAMENTOPREVISTO, PRJ_DTPRIMEIROCONTATO, PRJ_DTPROJETOCAD, PR' +
        'J_DTPROJETOCADPREVISTO, PRJ_DTVISITA, PRJ_DTVISITAPREVISTA, PRJ_' +
        'HRATUALIZACAO, PRJ_HRCADASTRO, PRJ_NOME, PRJ_OBSERVACOES, PRJ_ST' +
        'ATUSAPRESENTACAO, PRJ_STATUSORCAMENTO, PRJ_STATUSPRODUCAO, PRJ_S' +
        'TATUSPROJETO, PRJ_STATUSPROJETOCAD, PRJ_STATUSVISITA, PRJ_TABELA' +
        'PRECO, PRJ_TIPO, PRJ_TOTALPRODUTOS, PRJ_TOTALSERVICOS, PRJ_USUAR' +
        'IO, PRJ_VALORTOTAL, PRJ_VALORTOTALCUSTO, PRJ_VALORTOTALUP, PRJ_V' +
        'ENDA')
    DeleteSQL.Strings = (
      'DELETE FROM PROJETOS'
      'WHERE PRJ_CODIGO = :OLD_PRJ_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PRJ_ARQUITETO, PRJ_CLIENTE, PRJ_CODIGO, PRJ_DTAPRESENTACA' +
        'O, '
      
        '  PRJ_DTAPRESENTACAOPREVISTA, PRJ_DTATUALIZACAO, PRJ_DTCADASTRO,' +
        ' '
      
        '  PRJ_DTENTREGA, PRJ_DTENTREGAPREVISTA, PRJ_DTORCAMENTO, PRJ_DTO' +
        'RCAMENTOPREVISTO, '
      
        '  PRJ_DTPRIMEIROCONTATO, PRJ_DTPROJETOCAD, PRJ_DTPROJETOCADPREVI' +
        'STO, '
      
        '  PRJ_DTVISITA, PRJ_DTVISITAPREVISTA, PRJ_HRATUALIZACAO, PRJ_HRC' +
        'ADASTRO, '
      
        '  PRJ_NOME, PRJ_OBSERVACOES, PRJ_STATUSAPRESENTACAO, PRJ_STATUSO' +
        'RCAMENTO, '
      '  PRJ_STATUSPRODUCAO, PRJ_STATUSPROJETO, PRJ_STATUSPROJETOCAD, '
      
        '  PRJ_STATUSVISITA, PRJ_TABELAPRECO, PRJ_TIPO, PRJ_TOTALPRODUTOS' +
        ', '
      
        '  PRJ_TOTALSERVICOS, PRJ_USUARIO, PRJ_VALORTOTAL, PRJ_VALORTOTAL' +
        'CUSTO, '
      '  PRJ_VALORTOTALUP, PRJ_VENDA'
      'FROM PROJETOS'
      'WHERE PRJ_CODIGO = :OLD_PRJ_CODIGO')
    Left = 224
    Top = 360
  end
  object TBProjetos: TFDQuery
    BeforeInsert = TBProjetosBeforeInsert
    AfterInsert = TBProjetosAfterInsert
    BeforeEdit = TBProjetosBeforeEdit
    BeforePost = TBProjetosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRProjetos
    UpdateObject = UPProjetos
    SQL.Strings = (
      'select '
      'PRJ_ARQUITETO,'
      'PRJ_CLIENTE,'
      'PRJ_CODIGO,'
      'PRJ_DTAPRESENTACAO,'
      'PRJ_DTAPRESENTACAOPREVISTA,'
      'PRJ_DTATUALIZACAO,'
      'PRJ_DTCADASTRO,'
      'PRJ_DTENTREGA,'
      'PRJ_DTENTREGAPREVISTA,'
      'PRJ_DTORCAMENTO,'
      'PRJ_DTORCAMENTOPREVISTO,'
      'PRJ_DTPRIMEIROCONTATO,'
      'PRJ_DTPROJETOCAD,'
      'PRJ_DTPROJETOCADPREVISTO,'
      'PRJ_DTVISITA,'
      'PRJ_DTVISITAPREVISTA,'
      'PRJ_HRATUALIZACAO,'
      'PRJ_HRCADASTRO,'
      'PRJ_NOME,'
      'PRJ_OBSERVACOES,'
      'PRJ_STATUSAPRESENTACAO,'
      'PRJ_STATUSORCAMENTO,'
      'PRJ_STATUSPRODUCAO,'
      'PRJ_STATUSPROJETO,'
      'PRJ_STATUSPROJETOCAD,'
      'PRJ_STATUSVISITA,'
      'PRJ_TABELAPRECO,'
      'PRJ_TIPO,'
      'PRJ_TOTALPRODUTOS,'
      'PRJ_TOTALSERVICOS,'
      'PRJ_USUARIO,'
      'PRJ_VALORTOTAL,'
      'PRJ_VALORTOTALCUSTO,'
      'PRJ_VALORTOTALUP,'
      'PRJ_VENDA,'
      'CLI_NOME,'
      'PJT_DESCRICAO,'
      'VEN_NOME'
      'from PROJETOS'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'where PRJ_CODIGO=:codigo'
      '')
    Left = 224
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProjetosPRJ_ARQUITETO: TIntegerField
      FieldName = 'PRJ_ARQUITETO'
      Origin = 'PRJ_ARQUITETO'
      Required = True
    end
    object TBProjetosPRJ_CLIENTE: TIntegerField
      FieldName = 'PRJ_CLIENTE'
      Origin = 'PRJ_CLIENTE'
      Required = True
    end
    object TBProjetosPRJ_CODIGO: TIntegerField
      FieldName = 'PRJ_CODIGO'
      Origin = 'PRJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosPRJ_DTAPRESENTACAO: TDateField
      FieldName = 'PRJ_DTAPRESENTACAO'
      Origin = 'PRJ_DTAPRESENTACAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTAPRESENTACAOPREVISTA: TDateField
      FieldName = 'PRJ_DTAPRESENTACAOPREVISTA'
      Origin = 'PRJ_DTAPRESENTACAOPREVISTA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTATUALIZACAO: TDateField
      FieldName = 'PRJ_DTATUALIZACAO'
      Origin = 'PRJ_DTATUALIZACAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTCADASTRO: TDateField
      FieldName = 'PRJ_DTCADASTRO'
      Origin = 'PRJ_DTCADASTRO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTENTREGA: TDateField
      FieldName = 'PRJ_DTENTREGA'
      Origin = 'PRJ_DTENTREGA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTENTREGAPREVISTA: TDateField
      FieldName = 'PRJ_DTENTREGAPREVISTA'
      Origin = 'PRJ_DTENTREGAPREVISTA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTORCAMENTO: TDateField
      FieldName = 'PRJ_DTORCAMENTO'
      Origin = 'PRJ_DTORCAMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTORCAMENTOPREVISTO: TDateField
      FieldName = 'PRJ_DTORCAMENTOPREVISTO'
      Origin = 'PRJ_DTORCAMENTOPREVISTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPRIMEIROCONTATO: TDateField
      FieldName = 'PRJ_DTPRIMEIROCONTATO'
      Origin = 'PRJ_DTPRIMEIROCONTATO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPROJETOCAD: TDateField
      FieldName = 'PRJ_DTPROJETOCAD'
      Origin = 'PRJ_DTPROJETOCAD'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTPROJETOCADPREVISTO: TDateField
      FieldName = 'PRJ_DTPROJETOCADPREVISTO'
      Origin = 'PRJ_DTPROJETOCADPREVISTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTVISITA: TDateField
      FieldName = 'PRJ_DTVISITA'
      Origin = 'PRJ_DTVISITA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_DTVISITAPREVISTA: TDateField
      FieldName = 'PRJ_DTVISITAPREVISTA'
      Origin = 'PRJ_DTVISITAPREVISTA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosPRJ_HRATUALIZACAO: TTimeField
      FieldName = 'PRJ_HRATUALIZACAO'
      Origin = 'PRJ_HRATUALIZACAO'
    end
    object TBProjetosPRJ_HRCADASTRO: TTimeField
      FieldName = 'PRJ_HRCADASTRO'
      Origin = 'PRJ_HRCADASTRO'
    end
    object TBProjetosPRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 80
    end
    object TBProjetosPRJ_OBSERVACOES: TMemoField
      FieldName = 'PRJ_OBSERVACOES'
      Origin = 'PRJ_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBProjetosPRJ_STATUSAPRESENTACAO: TStringField
      FieldName = 'PRJ_STATUSAPRESENTACAO'
      Origin = 'PRJ_STATUSAPRESENTACAO'
    end
    object TBProjetosPRJ_STATUSORCAMENTO: TStringField
      FieldName = 'PRJ_STATUSORCAMENTO'
      Origin = 'PRJ_STATUSORCAMENTO'
    end
    object TBProjetosPRJ_STATUSPRODUCAO: TStringField
      FieldName = 'PRJ_STATUSPRODUCAO'
      Origin = 'PRJ_STATUSPRODUCAO'
    end
    object TBProjetosPRJ_STATUSPROJETO: TStringField
      FieldName = 'PRJ_STATUSPROJETO'
      Origin = 'PRJ_STATUSPROJETO'
    end
    object TBProjetosPRJ_STATUSPROJETOCAD: TStringField
      FieldName = 'PRJ_STATUSPROJETOCAD'
      Origin = 'PRJ_STATUSPROJETOCAD'
    end
    object TBProjetosPRJ_STATUSVISITA: TStringField
      FieldName = 'PRJ_STATUSVISITA'
      Origin = 'PRJ_STATUSVISITA'
    end
    object TBProjetosPRJ_TABELAPRECO: TStringField
      FieldName = 'PRJ_TABELAPRECO'
      Origin = 'PRJ_TABELAPRECO'
      Size = 1
    end
    object TBProjetosPRJ_TIPO: TIntegerField
      FieldName = 'PRJ_TIPO'
      Origin = 'PRJ_TIPO'
      Required = True
    end
    object TBProjetosPRJ_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'PRJ_TOTALPRODUTOS'
      Origin = 'PRJ_TOTALPRODUTOS'
      currency = True
      Precision = 18
    end
    object TBProjetosPRJ_TOTALSERVICOS: TFMTBCDField
      FieldName = 'PRJ_TOTALSERVICOS'
      Origin = 'PRJ_TOTALSERVICOS'
      currency = True
      Precision = 18
    end
    object TBProjetosPRJ_USUARIO: TStringField
      FieldName = 'PRJ_USUARIO'
      Origin = 'PRJ_USUARIO'
    end
    object TBProjetosPRJ_VALORTOTAL: TFMTBCDField
      FieldName = 'PRJ_VALORTOTAL'
      Origin = 'PRJ_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBProjetosPRJ_VALORTOTALCUSTO: TFMTBCDField
      FieldName = 'PRJ_VALORTOTALCUSTO'
      Origin = 'PRJ_VALORTOTALCUSTO'
      currency = True
      Precision = 18
    end
    object TBProjetosPRJ_VALORTOTALUP: TFMTBCDField
      FieldName = 'PRJ_VALORTOTALUP'
      Origin = 'PRJ_VALORTOTALUP'
      Precision = 18
    end
    object TBProjetosPRJ_VENDA: TIntegerField
      FieldName = 'PRJ_VENDA'
      Origin = 'PRJ_VENDA'
    end
    object TBProjetosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBProjetosPJT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_DESCRICAO'
      Origin = 'PJT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProjetosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRProjetosFases: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 256
    Top = 392
  end
  object UPProjetosFases: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROJETOSFASES'
      '(PJF_BAIXADOPOR, PJF_CODIGO, PJF_DTATUALIZACAO, '
      '  PJF_DTCADASTRO, PJF_DTFIM, PJF_DTINICIO, '
      '  PJF_DTPREVISAO, PJF_FASE, PJF_HRATUALIZACAO, '
      '  PJF_HRCADASTRO, PJF_PROJETO, PJF_STATUS, '
      '  PJF_USUARIO)'
      
        'VALUES (:NEW_PJF_BAIXADOPOR, gen_id(GEN_PROJETOSFASES,1), :NEW_P' +
        'JF_DTATUALIZACAO, '
      '  :NEW_PJF_DTCADASTRO, :NEW_PJF_DTFIM, :NEW_PJF_DTINICIO, '
      '  :NEW_PJF_DTPREVISAO, :NEW_PJF_FASE, :NEW_PJF_HRATUALIZACAO, '
      '  :NEW_PJF_HRCADASTRO, :NEW_PJF_PROJETO, :NEW_PJF_STATUS, '
      '  :NEW_PJF_USUARIO)'
      
        'RETURNING PJF_BAIXADOPOR, PJF_CODIGO, PJF_DTATUALIZACAO, PJF_DTC' +
        'ADASTRO, PJF_DTFIM, PJF_DTINICIO, PJF_DTPREVISAO, PJF_FASE, PJF_' +
        'HRATUALIZACAO, PJF_HRCADASTRO, PJF_PROJETO, PJF_STATUS, PJF_USUA' +
        'RIO')
    ModifySQL.Strings = (
      'UPDATE PROJETOSFASES'
      
        'SET PJF_BAIXADOPOR = :NEW_PJF_BAIXADOPOR, PJF_CODIGO = :NEW_PJF_' +
        'CODIGO, '
      
        '  PJF_DTATUALIZACAO = :NEW_PJF_DTATUALIZACAO, PJF_DTCADASTRO = :' +
        'NEW_PJF_DTCADASTRO, '
      '  PJF_DTFIM = :NEW_PJF_DTFIM, PJF_DTINICIO = :NEW_PJF_DTINICIO, '
      
        '  PJF_DTPREVISAO = :NEW_PJF_DTPREVISAO, PJF_FASE = :NEW_PJF_FASE' +
        ', '
      
        '  PJF_HRATUALIZACAO = :NEW_PJF_HRATUALIZACAO, PJF_HRCADASTRO = :' +
        'NEW_PJF_HRCADASTRO, '
      '  PJF_PROJETO = :NEW_PJF_PROJETO, PJF_STATUS = :NEW_PJF_STATUS, '
      '  PJF_USUARIO = :NEW_PJF_USUARIO'
      'WHERE PJF_CODIGO = :OLD_PJF_CODIGO'
      
        'RETURNING PJF_BAIXADOPOR, PJF_CODIGO, PJF_DTATUALIZACAO, PJF_DTC' +
        'ADASTRO, PJF_DTFIM, PJF_DTINICIO, PJF_DTPREVISAO, PJF_FASE, PJF_' +
        'HRATUALIZACAO, PJF_HRCADASTRO, PJF_PROJETO, PJF_STATUS, PJF_USUA' +
        'RIO')
    DeleteSQL.Strings = (
      'DELETE FROM PROJETOSFASES'
      'WHERE PJF_CODIGO = :OLD_PJF_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PJF_BAIXADOPOR, PJF_CODIGO, PJF_DTATUALIZACAO, PJF_DTCADA' +
        'STRO, '
      
        '  PJF_DTFIM, PJF_DTINICIO, PJF_DTPREVISAO, PJF_FASE, PJF_HRATUAL' +
        'IZACAO, '
      '  PJF_HRCADASTRO, PJF_PROJETO, PJF_STATUS, PJF_USUARIO'
      'FROM PROJETOSFASES'
      'WHERE PJF_CODIGO = :OLD_PJF_CODIGO')
    Left = 256
    Top = 360
  end
  object TBProjetosFases: TFDQuery
    AfterInsert = TBProjetosFasesAfterInsert
    BeforePost = TBProjetosFasesBeforePost
    MasterSource = DSProjetos
    MasterFields = 'PRJ_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProjetosFases
    UpdateObject = UPProjetosFases
    SQL.Strings = (
      'select'
      'PJF_BAIXADOPOR,'
      'PJF_CODIGO,'
      'PJF_DTATUALIZACAO,'
      'PJF_DTCADASTRO,'
      'PJF_DTINICIO,'
      'PJF_DTFIM,'
      'PJF_DTPREVISAO,'
      'PJF_FASE,'
      'PJF_HRATUALIZACAO,'
      'PJF_HRCADASTRO,'
      'PJF_PROJETO,'
      'PJF_STATUS,'
      'PJF_USUARIO,'
      'FAS_DESCRICAO'
      'from PROJETOSFASES'
      'left join FASES on PJF_FASE=FAS_CODIGO'
      'where PJF_PROJETO=:PRJ_CODIGO '
      'order by PJF_DTINICIO desc'
      '')
    Left = 256
    Top = 328
    ParamData = <
      item
        Name = 'PRJ_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProjetosFasesPJF_BAIXADOPOR: TStringField
      FieldName = 'PJF_BAIXADOPOR'
      Origin = 'PJF_BAIXADOPOR'
    end
    object TBProjetosFasesPJF_CODIGO: TIntegerField
      FieldName = 'PJF_CODIGO'
      Origin = 'PJF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosFasesPJF_DTATUALIZACAO: TDateField
      FieldName = 'PJF_DTATUALIZACAO'
      Origin = 'PJF_DTATUALIZACAO'
    end
    object TBProjetosFasesPJF_DTCADASTRO: TDateField
      FieldName = 'PJF_DTCADASTRO'
      Origin = 'PJF_DTCADASTRO'
    end
    object TBProjetosFasesPJF_DTFIM: TDateField
      FieldName = 'PJF_DTFIM'
      Origin = 'PJF_DTFIM'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_DTINICIO: TDateField
      FieldName = 'PJF_DTINICIO'
      Origin = 'PJF_DTINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_DTPREVISAO: TDateField
      FieldName = 'PJF_DTPREVISAO'
      Origin = 'PJF_DTPREVISAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosFasesPJF_FASE: TIntegerField
      FieldName = 'PJF_FASE'
      Origin = 'PJF_FASE'
      Required = True
    end
    object TBProjetosFasesPJF_HRATUALIZACAO: TTimeField
      FieldName = 'PJF_HRATUALIZACAO'
      Origin = 'PJF_HRATUALIZACAO'
    end
    object TBProjetosFasesPJF_HRCADASTRO: TTimeField
      FieldName = 'PJF_HRCADASTRO'
      Origin = 'PJF_HRCADASTRO'
    end
    object TBProjetosFasesPJF_PROJETO: TIntegerField
      FieldName = 'PJF_PROJETO'
      Origin = 'PJF_PROJETO'
      Required = True
    end
    object TBProjetosFasesPJF_STATUS: TStringField
      FieldName = 'PJF_STATUS'
      Origin = 'PJF_STATUS'
      Size = 1
    end
    object TBProjetosFasesPJF_USUARIO: TStringField
      FieldName = 'PJF_USUARIO'
      Origin = 'PJF_USUARIO'
    end
    object TBProjetosFasesFAS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAS_DESCRICAO'
      Origin = 'FAS_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRProjetosHistorico: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 288
    Top = 392
  end
  object UPProjetosHistorico: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROJETOSHISTORICO'
      '(PJH_CODIGO, PJH_DATA, PJH_DESCRICAO, PJH_DTATUALIZACAO, '
      '  PJH_DTCADASTRO, PJH_HRATUALIZACAO, PJH_HRCADASTRO, '
      '  PJH_PROJETO, PJH_USUARIO)'
      
        'VALUES (gen_id(GEN_PROJETOSHISTORICO,1), :NEW_PJH_DATA, :NEW_PJH' +
        '_DESCRICAO, :NEW_PJH_DTATUALIZACAO, '
      
        '  :NEW_PJH_DTCADASTRO, :NEW_PJH_HRATUALIZACAO, :NEW_PJH_HRCADAST' +
        'RO, '
      '  :NEW_PJH_PROJETO, :NEW_PJH_USUARIO)'
      
        'RETURNING PJH_CODIGO, PJH_DATA, PJH_DESCRICAO, PJH_DTATUALIZACAO' +
        ', PJH_DTCADASTRO, PJH_HRATUALIZACAO, PJH_HRCADASTRO, PJH_PROJETO' +
        ', PJH_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PROJETOSHISTORICO'
      
        'SET PJH_CODIGO = :NEW_PJH_CODIGO, PJH_DATA = :NEW_PJH_DATA, PJH_' +
        'DESCRICAO = :NEW_PJH_DESCRICAO, '
      
        '  PJH_DTATUALIZACAO = :NEW_PJH_DTATUALIZACAO, PJH_DTCADASTRO = :' +
        'NEW_PJH_DTCADASTRO, '
      
        '  PJH_HRATUALIZACAO = :NEW_PJH_HRATUALIZACAO, PJH_HRCADASTRO = :' +
        'NEW_PJH_HRCADASTRO, '
      '  PJH_PROJETO = :NEW_PJH_PROJETO, PJH_USUARIO = :NEW_PJH_USUARIO'
      'WHERE PJH_CODIGO = :OLD_PJH_CODIGO'
      
        'RETURNING PJH_CODIGO, PJH_DATA, PJH_DESCRICAO, PJH_DTATUALIZACAO' +
        ', PJH_DTCADASTRO, PJH_HRATUALIZACAO, PJH_HRCADASTRO, PJH_PROJETO' +
        ', PJH_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PROJETOSHISTORICO'
      'WHERE PJH_CODIGO = :OLD_PJH_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PJH_CODIGO, PJH_DATA, PJH_DESCRICAO, PJH_DTATUALIZACAO, P' +
        'JH_DTCADASTRO, '
      '  PJH_HRATUALIZACAO, PJH_HRCADASTRO, PJH_PROJETO, PJH_USUARIO'
      'FROM PROJETOSHISTORICO'
      'WHERE PJH_CODIGO = :OLD_PJH_CODIGO')
    Left = 288
    Top = 360
  end
  object TBProjetosHistorico: TFDQuery
    BeforeInsert = TBProjetosHistoricoBeforeInsert
    AfterInsert = TBProjetosHistoricoAfterInsert
    BeforeEdit = TBProjetosHistoricoBeforeEdit
    BeforePost = TBProjetosHistoricoBeforePost
    MasterSource = DSProjetos
    MasterFields = 'PRJ_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProjetosHistorico
    UpdateObject = UPProjetosHistorico
    SQL.Strings = (
      'select'
      'PJH_CODIGO,'
      'PJH_DATA,'
      'PJH_DESCRICAO,'
      'PJH_DTATUALIZACAO,'
      'PJH_DTCADASTRO,'
      'PJH_HRATUALIZACAO,'
      'PJH_HRCADASTRO,'
      'PJH_PROJETO,'
      'PJH_USUARIO'
      'from PROJETOSHISTORICO'
      'where PJH_PROJETO=:PRJ_CODIGO '
      'order by PJH_CODIGO desc'
      '')
    Left = 288
    Top = 328
    ParamData = <
      item
        Name = 'PRJ_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProjetosHistoricoPJH_CODIGO: TIntegerField
      FieldName = 'PJH_CODIGO'
      Origin = 'PJH_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosHistoricoPJH_DATA: TDateField
      FieldName = 'PJH_DATA'
      Origin = 'PJH_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProjetosHistoricoPJH_DESCRICAO: TStringField
      FieldName = 'PJH_DESCRICAO'
      Origin = 'PJH_DESCRICAO'
      Size = 120
    end
    object TBProjetosHistoricoPJH_DTATUALIZACAO: TDateField
      FieldName = 'PJH_DTATUALIZACAO'
      Origin = 'PJH_DTATUALIZACAO'
    end
    object TBProjetosHistoricoPJH_DTCADASTRO: TDateField
      FieldName = 'PJH_DTCADASTRO'
      Origin = 'PJH_DTCADASTRO'
    end
    object TBProjetosHistoricoPJH_HRATUALIZACAO: TTimeField
      FieldName = 'PJH_HRATUALIZACAO'
      Origin = 'PJH_HRATUALIZACAO'
    end
    object TBProjetosHistoricoPJH_HRCADASTRO: TTimeField
      FieldName = 'PJH_HRCADASTRO'
      Origin = 'PJH_HRCADASTRO'
    end
    object TBProjetosHistoricoPJH_PROJETO: TIntegerField
      FieldName = 'PJH_PROJETO'
      Origin = 'PJH_PROJETO'
      Required = True
    end
    object TBProjetosHistoricoPJH_USUARIO: TStringField
      FieldName = 'PJH_USUARIO'
      Origin = 'PJH_USUARIO'
    end
  end
  object TRProjetosItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 320
    Top = 392
  end
  object UPProjetosItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROJETOSITENS'
      
        '(PJI_CODIGO, PJI_DESCRICAO, PJI_PRECOCUSTO, PJI_PRECOCUSTOTOTAL,' +
        ' '
      '  PJI_PRODUTO, PJI_PROJETO, PJI_QUANTIDADE, '
      '  PJI_TIPO, PJI_UNIDADE, PJI_VALORTOTAL, PJI_VALORUNIT)'
      
        'VALUES (gen_id(GEN_PROJETOSITENS,1), :NEW_PJI_DESCRICAO, :NEW_PJ' +
        'I_PRECOCUSTO, :NEW_PJI_PRECOCUSTOTOTAL, '
      '  :NEW_PJI_PRODUTO, :NEW_PJI_PROJETO, :NEW_PJI_QUANTIDADE, '
      
        '  :NEW_PJI_TIPO, :NEW_PJI_UNIDADE, :NEW_PJI_VALORTOTAL, :NEW_PJI' +
        '_VALORUNIT)'
      
        'RETURNING PJI_CODIGO, PJI_DESCRICAO, PJI_PRECOCUSTO, PJI_PRECOCU' +
        'STOTOTAL, PJI_PRODUTO, PJI_PROJETO, PJI_QUANTIDADE, PJI_TIPO, PJ' +
        'I_UNIDADE, PJI_VALORTOTAL, PJI_VALORUNIT')
    ModifySQL.Strings = (
      'UPDATE PROJETOSITENS'
      
        'SET PJI_CODIGO = :NEW_PJI_CODIGO, PJI_DESCRICAO = :NEW_PJI_DESCR' +
        'ICAO, '
      
        '  PJI_PRECOCUSTO = :NEW_PJI_PRECOCUSTO, PJI_PRECOCUSTOTOTAL = :N' +
        'EW_PJI_PRECOCUSTOTOTAL, '
      
        '  PJI_PRODUTO = :NEW_PJI_PRODUTO, PJI_PROJETO = :NEW_PJI_PROJETO' +
        ', '
      
        '  PJI_QUANTIDADE = :NEW_PJI_QUANTIDADE, PJI_TIPO = :NEW_PJI_TIPO' +
        ', '
      
        '  PJI_UNIDADE = :NEW_PJI_UNIDADE, PJI_VALORTOTAL = :NEW_PJI_VALO' +
        'RTOTAL, '
      '  PJI_VALORUNIT = :NEW_PJI_VALORUNIT'
      'WHERE PJI_CODIGO = :OLD_PJI_CODIGO'
      
        'RETURNING PJI_CODIGO, PJI_DESCRICAO, PJI_PRECOCUSTO, PJI_PRECOCU' +
        'STOTOTAL, PJI_PRODUTO, PJI_PROJETO, PJI_QUANTIDADE, PJI_TIPO, PJ' +
        'I_UNIDADE, PJI_VALORTOTAL, PJI_VALORUNIT')
    DeleteSQL.Strings = (
      'DELETE FROM PROJETOSITENS'
      'WHERE PJI_CODIGO = :OLD_PJI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PJI_CODIGO, PJI_DESCRICAO, PJI_PRECOCUSTO, PJI_PRECOCUSTO' +
        'TOTAL, '
      
        '  PJI_PRODUTO, PJI_PROJETO, PJI_QUANTIDADE, PJI_TIPO, PJI_UNIDAD' +
        'E, '
      '  PJI_VALORTOTAL, PJI_VALORUNIT'
      'FROM PROJETOSITENS'
      'WHERE PJI_CODIGO = :OLD_PJI_CODIGO')
    Left = 320
    Top = 360
  end
  object TBProjetosItens: TFDQuery
    AfterInsert = TBProjetosItensAfterInsert
    BeforePost = TBProjetosItensBeforePost
    AfterPost = TBProjetosItensAfterPost
    MasterSource = DSProjetos
    MasterFields = 'PRJ_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRProjetosItens
    UpdateObject = UPProjetosItens
    SQL.Strings = (
      'select'
      'PJI_CODIGO,'
      'PJI_DESCRICAO,'
      'PJI_PRECOCUSTO,'
      'PJI_PRECOCUSTOTOTAL,'
      'PJI_PRODUTO,'
      'PJI_PROJETO,'
      'PJI_QUANTIDADE,'
      'PJI_TIPO,'
      'PJI_UNIDADE,'
      'PJI_VALORTOTAL,'
      'PJI_VALORUNIT,'
      'PRO_NOME'
      'from PROJETOSITENS '
      'left join PRODUTOS on PJI_PRODUTO=PRO_CODIGO'
      'where PJI_PROJETO=:PRJ_CODIGO'
      '')
    Left = 320
    Top = 328
    ParamData = <
      item
        Name = 'PRJ_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProjetosItensPJI_CODIGO: TIntegerField
      FieldName = 'PJI_CODIGO'
      Origin = 'PJI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosItensPJI_DESCRICAO: TStringField
      FieldName = 'PJI_DESCRICAO'
      Origin = 'PJI_DESCRICAO'
      Size = 100
    end
    object TBProjetosItensPJI_PRECOCUSTO: TFMTBCDField
      FieldName = 'PJI_PRECOCUSTO'
      Origin = 'PJI_PRECOCUSTO'
      currency = True
      Precision = 18
    end
    object TBProjetosItensPJI_PRECOCUSTOTOTAL: TFMTBCDField
      FieldName = 'PJI_PRECOCUSTOTOTAL'
      Origin = 'PJI_PRECOCUSTOTOTAL'
      currency = True
      Precision = 18
    end
    object TBProjetosItensPJI_PRODUTO: TIntegerField
      FieldName = 'PJI_PRODUTO'
      Origin = 'PJI_PRODUTO'
      Required = True
    end
    object TBProjetosItensPJI_PROJETO: TIntegerField
      FieldName = 'PJI_PROJETO'
      Origin = 'PJI_PROJETO'
      Required = True
    end
    object TBProjetosItensPJI_QUANTIDADE: TFMTBCDField
      FieldName = 'PJI_QUANTIDADE'
      Origin = 'PJI_QUANTIDADE'
      Precision = 18
    end
    object TBProjetosItensPJI_TIPO: TStringField
      FieldName = 'PJI_TIPO'
      Origin = 'PJI_TIPO'
      Size = 1
    end
    object TBProjetosItensPJI_UNIDADE: TStringField
      FieldName = 'PJI_UNIDADE'
      Origin = 'PJI_UNIDADE'
      Size = 3
    end
    object TBProjetosItensPJI_VALORTOTAL: TFMTBCDField
      FieldName = 'PJI_VALORTOTAL'
      Origin = 'PJI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBProjetosItensPJI_VALORUNIT: TFMTBCDField
      FieldName = 'PJI_VALORUNIT'
      Origin = 'PJI_VALORUNIT'
      currency = True
      Precision = 18
    end
    object TBProjetosItensPRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object TRProjetosTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 352
    Top = 392
  end
  object UPProjetosTipos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROJETOSTIPOS'
      '(PJT_CODIGO, PJT_DESCRICAO, PJT_DTATUALIZACAO, '
      '  PJT_DTCADASTRO, PJT_HRATUALIZACAO, PJT_HRCADASTRO, '
      '  PJT_USUARIO)'
      
        'VALUES (gen_id(GEN_PROJETOSTIPOS,1), :NEW_PJT_DESCRICAO, :NEW_PJ' +
        'T_DTATUALIZACAO, '
      
        '  :NEW_PJT_DTCADASTRO, :NEW_PJT_HRATUALIZACAO, :NEW_PJT_HRCADAST' +
        'RO, '
      '  :NEW_PJT_USUARIO)'
      
        'RETURNING PJT_CODIGO, PJT_DESCRICAO, PJT_DTATUALIZACAO, PJT_DTCA' +
        'DASTRO, PJT_HRATUALIZACAO, PJT_HRCADASTRO, PJT_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PROJETOSTIPOS'
      
        'SET PJT_CODIGO = :NEW_PJT_CODIGO, PJT_DESCRICAO = :NEW_PJT_DESCR' +
        'ICAO, '
      
        '  PJT_DTATUALIZACAO = :NEW_PJT_DTATUALIZACAO, PJT_DTCADASTRO = :' +
        'NEW_PJT_DTCADASTRO, '
      
        '  PJT_HRATUALIZACAO = :NEW_PJT_HRATUALIZACAO, PJT_HRCADASTRO = :' +
        'NEW_PJT_HRCADASTRO, '
      '  PJT_USUARIO = :NEW_PJT_USUARIO'
      'WHERE PJT_CODIGO = :OLD_PJT_CODIGO'
      
        'RETURNING PJT_CODIGO, PJT_DESCRICAO, PJT_DTATUALIZACAO, PJT_DTCA' +
        'DASTRO, PJT_HRATUALIZACAO, PJT_HRCADASTRO, PJT_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PROJETOSTIPOS'
      'WHERE PJT_CODIGO = :OLD_PJT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PJT_CODIGO, PJT_DESCRICAO, PJT_DTATUALIZACAO, PJT_DTCADAS' +
        'TRO, '
      '  PJT_HRATUALIZACAO, PJT_HRCADASTRO, PJT_USUARIO'
      'FROM PROJETOSTIPOS'
      'WHERE PJT_CODIGO = :OLD_PJT_CODIGO')
    Left = 352
    Top = 360
  end
  object TBProjetosTipos: TFDQuery
    BeforeInsert = TBProjetosTiposBeforeInsert
    AfterInsert = TBProjetosTiposAfterInsert
    BeforeEdit = TBProjetosTiposBeforeEdit
    BeforePost = TBProjetosTiposBeforePost
    Connection = DM.FDConnection1
    Transaction = TRProjetosTipos
    UpdateObject = UPProjetosTipos
    SQL.Strings = (
      'select'
      'PJT_CODIGO,'
      'PJT_DESCRICAO,'
      'PJT_DTATUALIZACAO,'
      'PJT_DTCADASTRO,'
      'PJT_HRATUALIZACAO,'
      'PJT_HRCADASTRO,'
      'PJT_USUARIO'
      'from PROJETOSTIPOS'
      'where PJT_CODIGO=:codigo'
      '')
    Left = 352
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProjetosTiposPJT_CODIGO: TIntegerField
      FieldName = 'PJT_CODIGO'
      Origin = 'PJT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProjetosTiposPJT_DESCRICAO: TStringField
      FieldName = 'PJT_DESCRICAO'
      Origin = 'PJT_DESCRICAO'
      Size = 50
    end
    object TBProjetosTiposPJT_DTATUALIZACAO: TDateField
      FieldName = 'PJT_DTATUALIZACAO'
      Origin = 'PJT_DTATUALIZACAO'
    end
    object TBProjetosTiposPJT_DTCADASTRO: TDateField
      FieldName = 'PJT_DTCADASTRO'
      Origin = 'PJT_DTCADASTRO'
    end
    object TBProjetosTiposPJT_HRATUALIZACAO: TTimeField
      FieldName = 'PJT_HRATUALIZACAO'
      Origin = 'PJT_HRATUALIZACAO'
    end
    object TBProjetosTiposPJT_HRCADASTRO: TTimeField
      FieldName = 'PJT_HRCADASTRO'
      Origin = 'PJT_HRCADASTRO'
    end
    object TBProjetosTiposPJT_USUARIO: TStringField
      FieldName = 'PJT_USUARIO'
      Origin = 'PJT_USUARIO'
    end
  end
  object TRPromissorias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 384
    Top = 392
  end
  object UPPromissorias: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PROMISSORIAS'
      '(PRM_AVALISTA1, PRM_AVALISTA1CPF, PRM_AVALISTA2, '
      '  PRM_AVALISTA2CPF, PRM_CEDENTE, PRM_CEDENTEBAIRRO, '
      '  PRM_CEDENTECEP, PRM_CEDENTECNPJ, PRM_CEDENTEENDERECO, '
      '  PRM_CEDENTEFONE, PRM_CEDENTENUMERO, PRM_CODIGO, '
      '  PRM_DTATUALIZACAO, PRM_DTCADASTRO, PRM_DTVENCIMENTO, '
      '  PRM_HRATUALIZACAO, PRM_HRCADASTRO, PRM_MATRIZ, '
      '  PRM_MULTIPLICADO, PRM_PARCELA, PRM_PARCELATOTAL, '
      '  PRM_SACADO, PRM_SACADOBAIRRO, PRM_SACADOCEP, '
      '  PRM_SACADOCNPJ, PRM_SACADOENDERECO, PRM_SACADOFONE, '
      '  PRM_SACADONUMERO, PRM_STATUS, PRM_USUARIO, '
      '  PRM_VALOR, PRM_VALORBAIXADO)'
      
        'VALUES (:NEW_PRM_AVALISTA1, :NEW_PRM_AVALISTA1CPF, :NEW_PRM_AVAL' +
        'ISTA2, '
      
        '  :NEW_PRM_AVALISTA2CPF, :NEW_PRM_CEDENTE, :NEW_PRM_CEDENTEBAIRR' +
        'O, '
      
        '  :NEW_PRM_CEDENTECEP, :NEW_PRM_CEDENTECNPJ, :NEW_PRM_CEDENTEEND' +
        'ERECO, '
      
        '  :NEW_PRM_CEDENTEFONE, :NEW_PRM_CEDENTENUMERO, gen_id(GEN_PROMI' +
        'SSORIAS,1), '
      
        '  :NEW_PRM_DTATUALIZACAO, :NEW_PRM_DTCADASTRO, :NEW_PRM_DTVENCIM' +
        'ENTO, '
      '  :NEW_PRM_HRATUALIZACAO, :NEW_PRM_HRCADASTRO, :NEW_PRM_MATRIZ, '
      
        '  :NEW_PRM_MULTIPLICADO, :NEW_PRM_PARCELA, :NEW_PRM_PARCELATOTAL' +
        ', '
      '  :NEW_PRM_SACADO, :NEW_PRM_SACADOBAIRRO, :NEW_PRM_SACADOCEP, '
      
        '  :NEW_PRM_SACADOCNPJ, :NEW_PRM_SACADOENDERECO, :NEW_PRM_SACADOF' +
        'ONE, '
      '  :NEW_PRM_SACADONUMERO, :NEW_PRM_STATUS, :NEW_PRM_USUARIO, '
      '  :NEW_PRM_VALOR, :NEW_PRM_VALORBAIXADO)'
      
        'RETURNING PRM_AVALISTA1, PRM_AVALISTA1CPF, PRM_AVALISTA2, PRM_AV' +
        'ALISTA2CPF, PRM_CEDENTE, PRM_CEDENTEBAIRRO, PRM_CEDENTECEP, PRM_' +
        'CEDENTECNPJ, PRM_CEDENTEENDERECO, PRM_CEDENTEFONE, PRM_CEDENTENU' +
        'MERO, PRM_CODIGO, PRM_DTATUALIZACAO, PRM_DTCADASTRO, PRM_DTVENCI' +
        'MENTO, PRM_HRATUALIZACAO, PRM_HRCADASTRO, PRM_MATRIZ, PRM_MULTIP' +
        'LICADO, PRM_PARCELA, PRM_PARCELATOTAL, PRM_SACADO, PRM_SACADOBAI' +
        'RRO, PRM_SACADOCEP, PRM_SACADOCNPJ, PRM_SACADOENDERECO, PRM_SACA' +
        'DOFONE, PRM_SACADONUMERO, PRM_STATUS, PRM_USUARIO, PRM_VALOR, PR' +
        'M_VALORBAIXADO')
    ModifySQL.Strings = (
      'UPDATE PROMISSORIAS'
      
        'SET PRM_AVALISTA1 = :NEW_PRM_AVALISTA1, PRM_AVALISTA1CPF = :NEW_' +
        'PRM_AVALISTA1CPF, '
      
        '  PRM_AVALISTA2 = :NEW_PRM_AVALISTA2, PRM_AVALISTA2CPF = :NEW_PR' +
        'M_AVALISTA2CPF, '
      
        '  PRM_CEDENTE = :NEW_PRM_CEDENTE, PRM_CEDENTEBAIRRO = :NEW_PRM_C' +
        'EDENTEBAIRRO, '
      
        '  PRM_CEDENTECEP = :NEW_PRM_CEDENTECEP, PRM_CEDENTECNPJ = :NEW_P' +
        'RM_CEDENTECNPJ, '
      
        '  PRM_CEDENTEENDERECO = :NEW_PRM_CEDENTEENDERECO, PRM_CEDENTEFON' +
        'E = :NEW_PRM_CEDENTEFONE, '
      
        '  PRM_CEDENTENUMERO = :NEW_PRM_CEDENTENUMERO, PRM_CODIGO = :NEW_' +
        'PRM_CODIGO, '
      
        '  PRM_DTATUALIZACAO = :NEW_PRM_DTATUALIZACAO, PRM_DTCADASTRO = :' +
        'NEW_PRM_DTCADASTRO, '
      
        '  PRM_DTVENCIMENTO = :NEW_PRM_DTVENCIMENTO, PRM_HRATUALIZACAO = ' +
        ':NEW_PRM_HRATUALIZACAO, '
      
        '  PRM_HRCADASTRO = :NEW_PRM_HRCADASTRO, PRM_MATRIZ = :NEW_PRM_MA' +
        'TRIZ, '
      
        '  PRM_MULTIPLICADO = :NEW_PRM_MULTIPLICADO, PRM_PARCELA = :NEW_P' +
        'RM_PARCELA, '
      
        '  PRM_PARCELATOTAL = :NEW_PRM_PARCELATOTAL, PRM_SACADO = :NEW_PR' +
        'M_SACADO, '
      
        '  PRM_SACADOBAIRRO = :NEW_PRM_SACADOBAIRRO, PRM_SACADOCEP = :NEW' +
        '_PRM_SACADOCEP, '
      
        '  PRM_SACADOCNPJ = :NEW_PRM_SACADOCNPJ, PRM_SACADOENDERECO = :NE' +
        'W_PRM_SACADOENDERECO, '
      
        '  PRM_SACADOFONE = :NEW_PRM_SACADOFONE, PRM_SACADONUMERO = :NEW_' +
        'PRM_SACADONUMERO, '
      '  PRM_STATUS = :NEW_PRM_STATUS, PRM_USUARIO = :NEW_PRM_USUARIO, '
      
        '  PRM_VALOR = :NEW_PRM_VALOR, PRM_VALORBAIXADO = :NEW_PRM_VALORB' +
        'AIXADO'
      'WHERE PRM_CODIGO = :OLD_PRM_CODIGO'
      
        'RETURNING PRM_AVALISTA1, PRM_AVALISTA1CPF, PRM_AVALISTA2, PRM_AV' +
        'ALISTA2CPF, PRM_CEDENTE, PRM_CEDENTEBAIRRO, PRM_CEDENTECEP, PRM_' +
        'CEDENTECNPJ, PRM_CEDENTEENDERECO, PRM_CEDENTEFONE, PRM_CEDENTENU' +
        'MERO, PRM_CODIGO, PRM_DTATUALIZACAO, PRM_DTCADASTRO, PRM_DTVENCI' +
        'MENTO, PRM_HRATUALIZACAO, PRM_HRCADASTRO, PRM_MATRIZ, PRM_MULTIP' +
        'LICADO, PRM_PARCELA, PRM_PARCELATOTAL, PRM_SACADO, PRM_SACADOBAI' +
        'RRO, PRM_SACADOCEP, PRM_SACADOCNPJ, PRM_SACADOENDERECO, PRM_SACA' +
        'DOFONE, PRM_SACADONUMERO, PRM_STATUS, PRM_USUARIO, PRM_VALOR, PR' +
        'M_VALORBAIXADO')
    DeleteSQL.Strings = (
      'DELETE FROM PROMISSORIAS'
      'WHERE PRM_CODIGO = :OLD_PRM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PRM_AVALISTA1, PRM_AVALISTA1CPF, PRM_AVALISTA2, PRM_AVALI' +
        'STA2CPF, '
      
        '  PRM_CEDENTE, PRM_CEDENTEBAIRRO, PRM_CEDENTECEP, PRM_CEDENTECNP' +
        'J, '
      '  PRM_CEDENTEENDERECO, PRM_CEDENTEFONE, PRM_CEDENTENUMERO, '
      
        '  PRM_CODIGO, PRM_DTATUALIZACAO, PRM_DTCADASTRO, PRM_DTVENCIMENT' +
        'O, '
      
        '  PRM_HRATUALIZACAO, PRM_HRCADASTRO, PRM_MATRIZ, PRM_MULTIPLICAD' +
        'O, '
      '  PRM_PARCELA, PRM_PARCELATOTAL, PRM_SACADO, PRM_SACADOBAIRRO, '
      
        '  PRM_SACADOCEP, PRM_SACADOCNPJ, PRM_SACADOENDERECO, PRM_SACADOF' +
        'ONE, '
      
        '  PRM_SACADONUMERO, PRM_STATUS, PRM_USUARIO, PRM_VALOR, PRM_VALO' +
        'RBAIXADO'
      'FROM PROMISSORIAS'
      'WHERE PRM_CODIGO = :OLD_PRM_CODIGO')
    Left = 384
    Top = 360
  end
  object TBPromissorias: TFDQuery
    BeforeInsert = TBPromissoriasBeforeInsert
    AfterInsert = TBPromissoriasAfterInsert
    BeforeEdit = TBPromissoriasBeforeEdit
    BeforePost = TBPromissoriasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRPromissorias
    UpdateObject = UPPromissorias
    SQL.Strings = (
      'select'
      'PRM_AVALISTA1,'
      'PRM_AVALISTA1CPF,'
      'PRM_AVALISTA2,'
      'PRM_AVALISTA2CPF,'
      'PRM_CEDENTE,'
      'PRM_CEDENTEBAIRRO,'
      'PRM_CEDENTECEP,'
      'PRM_CEDENTECNPJ,'
      'PRM_CEDENTEENDERECO,'
      'PRM_CEDENTEFONE,'
      'PRM_CEDENTENUMERO,'
      'PRM_CODIGO,'
      'PRM_DTATUALIZACAO,'
      'PRM_DTCADASTRO,'
      'PRM_DTVENCIMENTO,'
      'PRM_HRATUALIZACAO,'
      'PRM_HRCADASTRO,'
      'PRM_MATRIZ,'
      'PRM_MULTIPLICADO,'
      'PRM_PARCELA,'
      'PRM_PARCELATOTAL,'
      'PRM_SACADO,'
      'PRM_SACADOBAIRRO,'
      'PRM_SACADOCEP,'
      'PRM_SACADOCNPJ,'
      'PRM_SACADOENDERECO,'
      'PRM_SACADOFONE,'
      'PRM_SACADONUMERO,'
      'PRM_STATUS,'
      'PRM_USUARIO,'
      'PRM_VALOR,'
      'PRM_VALORBAIXADO'
      'from PROMISSORIAS'
      'where PRM_CODIGO=:codigo'
      '')
    Left = 384
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBPromissoriasPRM_AVALISTA1: TStringField
      FieldName = 'PRM_AVALISTA1'
      Origin = 'PRM_AVALISTA1'
      Size = 80
    end
    object TBPromissoriasPRM_AVALISTA1CPF: TStringField
      FieldName = 'PRM_AVALISTA1CPF'
      Origin = 'PRM_AVALISTA1CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBPromissoriasPRM_AVALISTA2: TStringField
      FieldName = 'PRM_AVALISTA2'
      Origin = 'PRM_AVALISTA2'
      Size = 80
    end
    object TBPromissoriasPRM_AVALISTA2CPF: TStringField
      FieldName = 'PRM_AVALISTA2CPF'
      Origin = 'PRM_AVALISTA2CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object TBPromissoriasPRM_CEDENTE: TStringField
      FieldName = 'PRM_CEDENTE'
      Origin = 'PRM_CEDENTE'
      Size = 80
    end
    object TBPromissoriasPRM_CEDENTEBAIRRO: TStringField
      FieldName = 'PRM_CEDENTEBAIRRO'
      Origin = 'PRM_CEDENTEBAIRRO'
      Size = 50
    end
    object TBPromissoriasPRM_CEDENTECEP: TStringField
      FieldName = 'PRM_CEDENTECEP'
      Origin = 'PRM_CEDENTECEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBPromissoriasPRM_CEDENTECNPJ: TStringField
      FieldName = 'PRM_CEDENTECNPJ'
      Origin = 'PRM_CEDENTECNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBPromissoriasPRM_CEDENTEENDERECO: TStringField
      FieldName = 'PRM_CEDENTEENDERECO'
      Origin = 'PRM_CEDENTEENDERECO'
      Size = 100
    end
    object TBPromissoriasPRM_CEDENTEFONE: TStringField
      FieldName = 'PRM_CEDENTEFONE'
      Origin = 'PRM_CEDENTEFONE'
    end
    object TBPromissoriasPRM_CEDENTENUMERO: TStringField
      FieldName = 'PRM_CEDENTENUMERO'
      Origin = 'PRM_CEDENTENUMERO'
      Size = 15
    end
    object TBPromissoriasPRM_CODIGO: TIntegerField
      FieldName = 'PRM_CODIGO'
      Origin = 'PRM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBPromissoriasPRM_DTATUALIZACAO: TDateField
      FieldName = 'PRM_DTATUALIZACAO'
      Origin = 'PRM_DTATUALIZACAO'
    end
    object TBPromissoriasPRM_DTCADASTRO: TDateField
      FieldName = 'PRM_DTCADASTRO'
      Origin = 'PRM_DTCADASTRO'
    end
    object TBPromissoriasPRM_DTVENCIMENTO: TDateField
      FieldName = 'PRM_DTVENCIMENTO'
      Origin = 'PRM_DTVENCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBPromissoriasPRM_HRATUALIZACAO: TTimeField
      FieldName = 'PRM_HRATUALIZACAO'
      Origin = 'PRM_HRATUALIZACAO'
    end
    object TBPromissoriasPRM_HRCADASTRO: TTimeField
      FieldName = 'PRM_HRCADASTRO'
      Origin = 'PRM_HRCADASTRO'
    end
    object TBPromissoriasPRM_MATRIZ: TStringField
      FieldName = 'PRM_MATRIZ'
      Origin = 'PRM_MATRIZ'
      Size = 1
    end
    object TBPromissoriasPRM_MULTIPLICADO: TStringField
      FieldName = 'PRM_MULTIPLICADO'
      Origin = 'PRM_MULTIPLICADO'
      Size = 1
    end
    object TBPromissoriasPRM_PARCELA: TIntegerField
      FieldName = 'PRM_PARCELA'
      Origin = 'PRM_PARCELA'
    end
    object TBPromissoriasPRM_PARCELATOTAL: TIntegerField
      FieldName = 'PRM_PARCELATOTAL'
      Origin = 'PRM_PARCELATOTAL'
    end
    object TBPromissoriasPRM_SACADO: TStringField
      FieldName = 'PRM_SACADO'
      Origin = 'PRM_SACADO'
      Size = 80
    end
    object TBPromissoriasPRM_SACADOBAIRRO: TStringField
      FieldName = 'PRM_SACADOBAIRRO'
      Origin = 'PRM_SACADOBAIRRO'
      Size = 50
    end
    object TBPromissoriasPRM_SACADOCEP: TStringField
      FieldName = 'PRM_SACADOCEP'
      Origin = 'PRM_SACADOCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBPromissoriasPRM_SACADOCNPJ: TStringField
      FieldName = 'PRM_SACADOCNPJ'
      Origin = 'PRM_SACADOCNPJ'
      EditMask = 'AA\.AAA\.AAA\/AAAA\-99;1;_'
    end
    object TBPromissoriasPRM_SACADOENDERECO: TStringField
      FieldName = 'PRM_SACADOENDERECO'
      Origin = 'PRM_SACADOENDERECO'
      Size = 100
    end
    object TBPromissoriasPRM_SACADOFONE: TStringField
      FieldName = 'PRM_SACADOFONE'
      Origin = 'PRM_SACADOFONE'
    end
    object TBPromissoriasPRM_SACADONUMERO: TStringField
      FieldName = 'PRM_SACADONUMERO'
      Origin = 'PRM_SACADONUMERO'
      Size = 15
    end
    object TBPromissoriasPRM_STATUS: TStringField
      FieldName = 'PRM_STATUS'
      Origin = 'PRM_STATUS'
      Size = 1
    end
    object TBPromissoriasPRM_USUARIO: TStringField
      FieldName = 'PRM_USUARIO'
      Origin = 'PRM_USUARIO'
    end
    object TBPromissoriasPRM_VALOR: TFMTBCDField
      FieldName = 'PRM_VALOR'
      Origin = 'PRM_VALOR'
      currency = True
      Precision = 18
    end
    object TBPromissoriasPRM_VALORBAIXADO: TFMTBCDField
      FieldName = 'PRM_VALORBAIXADO'
      Origin = 'PRM_VALORBAIXADO'
      currency = True
      Precision = 18
    end
  end
  object TRProntuarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 416
    Top = 392
  end
  object UPProntuarios: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PRONTUARIOS'
      '(PEP_ATENDIMENTO, PEP_CLIENTE, PEP_CODIGO, PEP_DTATENDIMENTO, '
      '  PEP_DTATUALIZACAO, PEP_DTCADASTRO, PEP_HRATUALIZACAO, '
      '  PEP_HRCADASTRO, PEP_OBITO, PEP_STATUS, PEP_USUARIO)'
      
        'VALUES (:NEW_PEP_ATENDIMENTO, :NEW_PEP_CLIENTE, gen_id(GEN_PRONT' +
        'UARIOS,1), :NEW_PEP_DTATENDIMENTO, '
      
        '  :NEW_PEP_DTATUALIZACAO, :NEW_PEP_DTCADASTRO, :NEW_PEP_HRATUALI' +
        'ZACAO, '
      
        '  :NEW_PEP_HRCADASTRO, :NEW_PEP_OBITO, :NEW_PEP_STATUS, :NEW_PEP' +
        '_USUARIO)'
      
        'RETURNING PEP_ATENDIMENTO, PEP_CLIENTE, PEP_CODIGO, PEP_DTATENDI' +
        'MENTO, PEP_DTATUALIZACAO, PEP_DTCADASTRO, PEP_HRATUALIZACAO, PEP' +
        '_HRCADASTRO, PEP_OBITO, PEP_STATUS, PEP_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PRONTUARIOS'
      
        'SET PEP_ATENDIMENTO = :NEW_PEP_ATENDIMENTO, PEP_CLIENTE = :NEW_P' +
        'EP_CLIENTE, '
      
        '  PEP_CODIGO = :NEW_PEP_CODIGO, PEP_DTATENDIMENTO = :NEW_PEP_DTA' +
        'TENDIMENTO, '
      
        '  PEP_DTATUALIZACAO = :NEW_PEP_DTATUALIZACAO, PEP_DTCADASTRO = :' +
        'NEW_PEP_DTCADASTRO, '
      
        '  PEP_HRATUALIZACAO = :NEW_PEP_HRATUALIZACAO, PEP_HRCADASTRO = :' +
        'NEW_PEP_HRCADASTRO, '
      '  PEP_OBITO = :NEW_PEP_OBITO, PEP_STATUS = :NEW_PEP_STATUS, '
      '  PEP_USUARIO = :NEW_PEP_USUARIO'
      'WHERE PEP_CODIGO = :OLD_PEP_CODIGO'
      
        'RETURNING PEP_ATENDIMENTO, PEP_CLIENTE, PEP_CODIGO, PEP_DTATENDI' +
        'MENTO, PEP_DTATUALIZACAO, PEP_DTCADASTRO, PEP_HRATUALIZACAO, PEP' +
        '_HRCADASTRO, PEP_OBITO, PEP_STATUS, PEP_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PRONTUARIOS'
      'WHERE PEP_CODIGO = :OLD_PEP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PEP_ATENDIMENTO, PEP_CLIENTE, PEP_CODIGO, PEP_DTATENDIMEN' +
        'TO, '
      
        '  PEP_DTATUALIZACAO, PEP_DTCADASTRO, PEP_HRATUALIZACAO, PEP_HRCA' +
        'DASTRO, '
      '  PEP_OBITO, PEP_STATUS, PEP_USUARIO'
      'FROM PRONTUARIOS'
      'WHERE PEP_CODIGO = :OLD_PEP_CODIGO')
    Left = 416
    Top = 360
  end
  object TBProntuarios: TFDQuery
    BeforeInsert = TBProntuariosBeforeInsert
    AfterInsert = TBProntuariosAfterInsert
    BeforeEdit = TBProntuariosBeforeEdit
    BeforePost = TBProntuariosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRProntuarios
    UpdateObject = UPProntuarios
    SQL.Strings = (
      'select '
      'PEP_ATENDIMENTO,'
      'PEP_CODIGO,'
      'PEP_CLIENTE,'
      'PEP_DTATENDIMENTO,'
      'PEP_DTATUALIZACAO,'
      'PEP_DTCADASTRO,'
      'PEP_HRATUALIZACAO,'
      'PEP_HRCADASTRO,'
      'PEP_OBITO,'
      'PEP_STATUS,'
      'PEP_USUARIO,'
      'CLI_CNS,'
      'CLI_NOME,'
      'CLI_SAME'
      'from PRONTUARIOS'
      'left join CLIENTES on PEP_CLIENTE=CLI_CODIGO'
      'where PEP_CODIGO=:codigo')
    Left = 416
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBProntuariosPEP_ATENDIMENTO: TIntegerField
      FieldName = 'PEP_ATENDIMENTO'
      Origin = 'PEP_ATENDIMENTO'
    end
    object TBProntuariosPEP_CODIGO: TIntegerField
      FieldName = 'PEP_CODIGO'
      Origin = 'PEP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBProntuariosPEP_CLIENTE: TIntegerField
      FieldName = 'PEP_CLIENTE'
      Origin = 'PEP_CLIENTE'
      Required = True
    end
    object TBProntuariosPEP_DTATENDIMENTO: TDateField
      FieldName = 'PEP_DTATENDIMENTO'
      Origin = 'PEP_DTATENDIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBProntuariosPEP_DTATUALIZACAO: TDateField
      FieldName = 'PEP_DTATUALIZACAO'
      Origin = 'PEP_DTATUALIZACAO'
    end
    object TBProntuariosPEP_DTCADASTRO: TDateField
      FieldName = 'PEP_DTCADASTRO'
      Origin = 'PEP_DTCADASTRO'
    end
    object TBProntuariosPEP_HRATUALIZACAO: TTimeField
      FieldName = 'PEP_HRATUALIZACAO'
      Origin = 'PEP_HRATUALIZACAO'
    end
    object TBProntuariosPEP_HRCADASTRO: TTimeField
      FieldName = 'PEP_HRCADASTRO'
      Origin = 'PEP_HRCADASTRO'
    end
    object TBProntuariosPEP_OBITO: TStringField
      FieldName = 'PEP_OBITO'
      Origin = 'PEP_OBITO'
      Size = 1
    end
    object TBProntuariosPEP_STATUS: TStringField
      FieldName = 'PEP_STATUS'
      Origin = 'PEP_STATUS'
      Size = 1
    end
    object TBProntuariosPEP_USUARIO: TStringField
      FieldName = 'PEP_USUARIO'
      Origin = 'PEP_USUARIO'
    end
    object TBProntuariosCLI_CNS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
      ProviderFlags = []
    end
    object TBProntuariosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBProntuariosCLI_SAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
      ProviderFlags = []
    end
  end
  object TRReceituarios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 448
    Top = 392
  end
  object UPReceituarios: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO RECEITUARIOS'
      '(RCT_CLIENTE, RCT_CODIGO, RCT_DIA01, RCT_DIA02, '
      '  RCT_DIA03, RCT_DIA04, RCT_DIA05, RCT_DIA06, '
      '  RCT_DIA07, RCT_DIA08, RCT_DIA09, RCT_DIA10, '
      '  RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA14, '
      '  RCT_DIA15, RCT_DIA16, RCT_DIA17, RCT_DIA18, '
      '  RCT_DIA19, RCT_DIA20, RCT_DIA21, RCT_DIA22, '
      '  RCT_DIA23, RCT_DIA24, RCT_DIA25, RCT_DIA26, '
      '  RCT_DIA27, RCT_DIA28, RCT_DIA29, RCT_DIA30, '
      '  RCT_DIA31, RCT_DOSAGEM, RCT_DTATUALIZACAO, '
      '  RCT_DTCADASTRO, RCT_HRATUALIZACAO, RCT_HRCADASTRO, '
      '  RCT_MEDICAMENTO, RCT_ORDEM, RCT_USUARIO)'
      
        'VALUES (:NEW_RCT_CLIENTE, gen_id(GEN_RECEITUARIOS,1), :NEW_RCT_D' +
        'IA01, :NEW_RCT_DIA02, '
      
        '  :NEW_RCT_DIA03, :NEW_RCT_DIA04, :NEW_RCT_DIA05, :NEW_RCT_DIA06' +
        ', '
      
        '  :NEW_RCT_DIA07, :NEW_RCT_DIA08, :NEW_RCT_DIA09, :NEW_RCT_DIA10' +
        ', '
      
        '  :NEW_RCT_DIA11, :NEW_RCT_DIA12, :NEW_RCT_DIA13, :NEW_RCT_DIA14' +
        ', '
      
        '  :NEW_RCT_DIA15, :NEW_RCT_DIA16, :NEW_RCT_DIA17, :NEW_RCT_DIA18' +
        ', '
      
        '  :NEW_RCT_DIA19, :NEW_RCT_DIA20, :NEW_RCT_DIA21, :NEW_RCT_DIA22' +
        ', '
      
        '  :NEW_RCT_DIA23, :NEW_RCT_DIA24, :NEW_RCT_DIA25, :NEW_RCT_DIA26' +
        ', '
      
        '  :NEW_RCT_DIA27, :NEW_RCT_DIA28, :NEW_RCT_DIA29, :NEW_RCT_DIA30' +
        ', '
      '  :NEW_RCT_DIA31, :NEW_RCT_DOSAGEM, :NEW_RCT_DTATUALIZACAO, '
      
        '  :NEW_RCT_DTCADASTRO, :NEW_RCT_HRATUALIZACAO, :NEW_RCT_HRCADAST' +
        'RO, '
      '  :NEW_RCT_MEDICAMENTO, :NEW_RCT_ORDEM, :NEW_RCT_USUARIO)'
      
        'RETURNING RCT_CLIENTE, RCT_CODIGO, RCT_DIA01, RCT_DIA02, RCT_DIA' +
        '03, RCT_DIA04, RCT_DIA05, RCT_DIA06, RCT_DIA07, RCT_DIA08, RCT_D' +
        'IA09, RCT_DIA10, RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA14, RCT' +
        '_DIA15, RCT_DIA16, RCT_DIA17, RCT_DIA18, RCT_DIA19, RCT_DIA20, R' +
        'CT_DIA21, RCT_DIA22, RCT_DIA23, RCT_DIA24, RCT_DIA25, RCT_DIA26,' +
        ' RCT_DIA27, RCT_DIA28, RCT_DIA29, RCT_DIA30, RCT_DIA31, RCT_DOSA' +
        'GEM, RCT_DTATUALIZACAO, RCT_DTCADASTRO, RCT_HRATUALIZACAO, RCT_H' +
        'RCADASTRO, RCT_MEDICAMENTO, RCT_ORDEM, RCT_USUARIO')
    ModifySQL.Strings = (
      'UPDATE RECEITUARIOS'
      
        'SET RCT_CLIENTE = :NEW_RCT_CLIENTE, RCT_CODIGO = :NEW_RCT_CODIGO' +
        ', '
      '  RCT_DIA01 = :NEW_RCT_DIA01, RCT_DIA02 = :NEW_RCT_DIA02, '
      '  RCT_DIA03 = :NEW_RCT_DIA03, RCT_DIA04 = :NEW_RCT_DIA04, '
      '  RCT_DIA05 = :NEW_RCT_DIA05, RCT_DIA06 = :NEW_RCT_DIA06, '
      '  RCT_DIA07 = :NEW_RCT_DIA07, RCT_DIA08 = :NEW_RCT_DIA08, '
      '  RCT_DIA09 = :NEW_RCT_DIA09, RCT_DIA10 = :NEW_RCT_DIA10, '
      '  RCT_DIA11 = :NEW_RCT_DIA11, RCT_DIA12 = :NEW_RCT_DIA12, '
      '  RCT_DIA13 = :NEW_RCT_DIA13, RCT_DIA14 = :NEW_RCT_DIA14, '
      '  RCT_DIA15 = :NEW_RCT_DIA15, RCT_DIA16 = :NEW_RCT_DIA16, '
      '  RCT_DIA17 = :NEW_RCT_DIA17, RCT_DIA18 = :NEW_RCT_DIA18, '
      '  RCT_DIA19 = :NEW_RCT_DIA19, RCT_DIA20 = :NEW_RCT_DIA20, '
      '  RCT_DIA21 = :NEW_RCT_DIA21, RCT_DIA22 = :NEW_RCT_DIA22, '
      '  RCT_DIA23 = :NEW_RCT_DIA23, RCT_DIA24 = :NEW_RCT_DIA24, '
      '  RCT_DIA25 = :NEW_RCT_DIA25, RCT_DIA26 = :NEW_RCT_DIA26, '
      '  RCT_DIA27 = :NEW_RCT_DIA27, RCT_DIA28 = :NEW_RCT_DIA28, '
      '  RCT_DIA29 = :NEW_RCT_DIA29, RCT_DIA30 = :NEW_RCT_DIA30, '
      '  RCT_DIA31 = :NEW_RCT_DIA31, RCT_DOSAGEM = :NEW_RCT_DOSAGEM, '
      
        '  RCT_DTATUALIZACAO = :NEW_RCT_DTATUALIZACAO, RCT_DTCADASTRO = :' +
        'NEW_RCT_DTCADASTRO, '
      
        '  RCT_HRATUALIZACAO = :NEW_RCT_HRATUALIZACAO, RCT_HRCADASTRO = :' +
        'NEW_RCT_HRCADASTRO, '
      
        '  RCT_MEDICAMENTO = :NEW_RCT_MEDICAMENTO, RCT_ORDEM = :NEW_RCT_O' +
        'RDEM, '
      '  RCT_USUARIO = :NEW_RCT_USUARIO'
      'WHERE RCT_CODIGO = :OLD_RCT_CODIGO'
      
        'RETURNING RCT_CLIENTE, RCT_CODIGO, RCT_DIA01, RCT_DIA02, RCT_DIA' +
        '03, RCT_DIA04, RCT_DIA05, RCT_DIA06, RCT_DIA07, RCT_DIA08, RCT_D' +
        'IA09, RCT_DIA10, RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA14, RCT' +
        '_DIA15, RCT_DIA16, RCT_DIA17, RCT_DIA18, RCT_DIA19, RCT_DIA20, R' +
        'CT_DIA21, RCT_DIA22, RCT_DIA23, RCT_DIA24, RCT_DIA25, RCT_DIA26,' +
        ' RCT_DIA27, RCT_DIA28, RCT_DIA29, RCT_DIA30, RCT_DIA31, RCT_DOSA' +
        'GEM, RCT_DTATUALIZACAO, RCT_DTCADASTRO, RCT_HRATUALIZACAO, RCT_H' +
        'RCADASTRO, RCT_MEDICAMENTO, RCT_ORDEM, RCT_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM RECEITUARIOS'
      'WHERE RCT_CODIGO = :OLD_RCT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT RCT_CLIENTE, RCT_CODIGO, RCT_DIA01, RCT_DIA02, RCT_DIA03,' +
        ' RCT_DIA04, '
      
        '  RCT_DIA05, RCT_DIA06, RCT_DIA07, RCT_DIA08, RCT_DIA09, RCT_DIA' +
        '10, '
      
        '  RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA14, RCT_DIA15, RCT_DIA' +
        '16, '
      
        '  RCT_DIA17, RCT_DIA18, RCT_DIA19, RCT_DIA20, RCT_DIA21, RCT_DIA' +
        '22, '
      
        '  RCT_DIA23, RCT_DIA24, RCT_DIA25, RCT_DIA26, RCT_DIA27, RCT_DIA' +
        '28, '
      
        '  RCT_DIA29, RCT_DIA30, RCT_DIA31, RCT_DOSAGEM, RCT_DTATUALIZACA' +
        'O, '
      
        '  RCT_DTCADASTRO, RCT_HRATUALIZACAO, RCT_HRCADASTRO, RCT_MEDICAM' +
        'ENTO, '
      '  RCT_ORDEM, RCT_USUARIO'
      'FROM RECEITUARIOS'
      'WHERE RCT_CODIGO = :OLD_RCT_CODIGO')
    Left = 448
    Top = 360
  end
  object TBReceituarios: TFDQuery
    BeforeInsert = TBReceituariosBeforeInsert
    AfterInsert = TBReceituariosAfterInsert
    BeforeEdit = TBReceituariosBeforeEdit
    BeforePost = TBReceituariosBeforePost
    MasterSource = DM.DSClientes
    MasterFields = 'CLI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRReceituarios
    UpdateObject = UPReceituarios
    SQL.Strings = (
      'select '
      'RCT_CLIENTE,'
      'RCT_CODIGO,'
      'RCT_DIA01,'
      'RCT_DIA02,'
      'RCT_DIA03,'
      'RCT_DIA04,'
      'RCT_DIA05,'
      'RCT_DIA06,'
      'RCT_DIA07,'
      'RCT_DIA08,'
      'RCT_DIA09,'
      'RCT_DIA10,'
      'RCT_DIA11,'
      'RCT_DIA12,'
      'RCT_DIA13,'
      'RCT_DIA14,'
      'RCT_DIA15,'
      'RCT_DIA16,'
      'RCT_DIA17,'
      'RCT_DIA18,'
      'RCT_DIA19,'
      'RCT_DIA20,'
      'RCT_DIA21,'
      'RCT_DIA22,'
      'RCT_DIA23,'
      'RCT_DIA24,'
      'RCT_DIA25,'
      'RCT_DIA26,'
      'RCT_DIA27,'
      'RCT_DIA28,'
      'RCT_DIA29,'
      'RCT_DIA30,'
      'RCT_DIA31,'
      'RCT_DOSAGEM,'
      'RCT_DTATUALIZACAO,'
      'RCT_DTCADASTRO,'
      'RCT_HRATUALIZACAO,'
      'RCT_HRCADASTRO,'
      'RCT_MEDICAMENTO,'
      'RCT_ORDEM,'
      'RCT_USUARIO,'
      'CLI_NOME,'
      'MTO_NOME'
      'from RECEITUARIOS'
      'left join CLIENTES on RCT_CLIENTE=CLI_CODIGO'
      'left join MEDICAMENTOS on RCT_MEDICAMENTO=MTO_CODIGO'
      'where RCT_CLIENTE=:CLI_CODIGO'
      'order by RCT_ORDEM, RCT_CODIGO'
      '')
    Left = 448
    Top = 328
    ParamData = <
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBReceituariosRCT_CLIENTE: TIntegerField
      FieldName = 'RCT_CLIENTE'
      Origin = 'RCT_CLIENTE'
      Required = True
    end
    object TBReceituariosRCT_CODIGO: TIntegerField
      FieldName = 'RCT_CODIGO'
      Origin = 'RCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBReceituariosRCT_DIA01: TStringField
      FieldName = 'RCT_DIA01'
      Origin = 'RCT_DIA01'
      Size = 3
    end
    object TBReceituariosRCT_DIA02: TStringField
      FieldName = 'RCT_DIA02'
      Origin = 'RCT_DIA02'
      Size = 3
    end
    object TBReceituariosRCT_DIA03: TStringField
      FieldName = 'RCT_DIA03'
      Origin = 'RCT_DIA03'
      Size = 3
    end
    object TBReceituariosRCT_DIA04: TStringField
      FieldName = 'RCT_DIA04'
      Origin = 'RCT_DIA04'
      Size = 3
    end
    object TBReceituariosRCT_DIA05: TStringField
      FieldName = 'RCT_DIA05'
      Origin = 'RCT_DIA05'
      Size = 3
    end
    object TBReceituariosRCT_DIA06: TStringField
      FieldName = 'RCT_DIA06'
      Origin = 'RCT_DIA06'
      Size = 3
    end
    object TBReceituariosRCT_DIA07: TStringField
      FieldName = 'RCT_DIA07'
      Origin = 'RCT_DIA07'
      Size = 3
    end
    object TBReceituariosRCT_DIA08: TStringField
      FieldName = 'RCT_DIA08'
      Origin = 'RCT_DIA08'
      Size = 3
    end
    object TBReceituariosRCT_DIA09: TStringField
      FieldName = 'RCT_DIA09'
      Origin = 'RCT_DIA09'
      Size = 3
    end
    object TBReceituariosRCT_DIA10: TStringField
      FieldName = 'RCT_DIA10'
      Origin = 'RCT_DIA10'
      Size = 3
    end
    object TBReceituariosRCT_DIA11: TStringField
      FieldName = 'RCT_DIA11'
      Origin = 'RCT_DIA11'
      Size = 3
    end
    object TBReceituariosRCT_DIA12: TStringField
      FieldName = 'RCT_DIA12'
      Origin = 'RCT_DIA12'
      Size = 3
    end
    object TBReceituariosRCT_DIA13: TStringField
      FieldName = 'RCT_DIA13'
      Origin = 'RCT_DIA13'
      Size = 3
    end
    object TBReceituariosRCT_DIA14: TStringField
      FieldName = 'RCT_DIA14'
      Origin = 'RCT_DIA14'
      Size = 3
    end
    object TBReceituariosRCT_DIA15: TStringField
      FieldName = 'RCT_DIA15'
      Origin = 'RCT_DIA15'
      Size = 3
    end
    object TBReceituariosRCT_DIA16: TStringField
      FieldName = 'RCT_DIA16'
      Origin = 'RCT_DIA16'
      Size = 3
    end
    object TBReceituariosRCT_DIA17: TStringField
      FieldName = 'RCT_DIA17'
      Origin = 'RCT_DIA17'
      Size = 3
    end
    object TBReceituariosRCT_DIA18: TStringField
      FieldName = 'RCT_DIA18'
      Origin = 'RCT_DIA18'
      Size = 3
    end
    object TBReceituariosRCT_DIA19: TStringField
      FieldName = 'RCT_DIA19'
      Origin = 'RCT_DIA19'
      Size = 3
    end
    object TBReceituariosRCT_DIA20: TStringField
      FieldName = 'RCT_DIA20'
      Origin = 'RCT_DIA20'
      Size = 3
    end
    object TBReceituariosRCT_DIA21: TStringField
      FieldName = 'RCT_DIA21'
      Origin = 'RCT_DIA21'
      Size = 3
    end
    object TBReceituariosRCT_DIA22: TStringField
      FieldName = 'RCT_DIA22'
      Origin = 'RCT_DIA22'
      Size = 3
    end
    object TBReceituariosRCT_DIA23: TStringField
      FieldName = 'RCT_DIA23'
      Origin = 'RCT_DIA23'
      Size = 3
    end
    object TBReceituariosRCT_DIA24: TStringField
      FieldName = 'RCT_DIA24'
      Origin = 'RCT_DIA24'
      Size = 3
    end
    object TBReceituariosRCT_DIA25: TStringField
      FieldName = 'RCT_DIA25'
      Origin = 'RCT_DIA25'
      Size = 3
    end
    object TBReceituariosRCT_DIA26: TStringField
      FieldName = 'RCT_DIA26'
      Origin = 'RCT_DIA26'
      Size = 3
    end
    object TBReceituariosRCT_DIA27: TStringField
      FieldName = 'RCT_DIA27'
      Origin = 'RCT_DIA27'
      Size = 3
    end
    object TBReceituariosRCT_DIA28: TStringField
      FieldName = 'RCT_DIA28'
      Origin = 'RCT_DIA28'
      Size = 3
    end
    object TBReceituariosRCT_DIA29: TStringField
      FieldName = 'RCT_DIA29'
      Origin = 'RCT_DIA29'
      Size = 3
    end
    object TBReceituariosRCT_DIA30: TStringField
      FieldName = 'RCT_DIA30'
      Origin = 'RCT_DIA30'
      Size = 3
    end
    object TBReceituariosRCT_DIA31: TStringField
      FieldName = 'RCT_DIA31'
      Origin = 'RCT_DIA31'
      Size = 3
    end
    object TBReceituariosRCT_DOSAGEM: TStringField
      FieldName = 'RCT_DOSAGEM'
      Origin = 'RCT_DOSAGEM'
      Size = 50
    end
    object TBReceituariosRCT_DTATUALIZACAO: TDateField
      FieldName = 'RCT_DTATUALIZACAO'
      Origin = 'RCT_DTATUALIZACAO'
    end
    object TBReceituariosRCT_DTCADASTRO: TDateField
      FieldName = 'RCT_DTCADASTRO'
      Origin = 'RCT_DTCADASTRO'
    end
    object TBReceituariosRCT_HRATUALIZACAO: TTimeField
      FieldName = 'RCT_HRATUALIZACAO'
      Origin = 'RCT_HRATUALIZACAO'
    end
    object TBReceituariosRCT_HRCADASTRO: TTimeField
      FieldName = 'RCT_HRCADASTRO'
      Origin = 'RCT_HRCADASTRO'
    end
    object TBReceituariosRCT_MEDICAMENTO: TIntegerField
      FieldName = 'RCT_MEDICAMENTO'
      Origin = 'RCT_MEDICAMENTO'
      Required = True
    end
    object TBReceituariosRCT_ORDEM: TIntegerField
      FieldName = 'RCT_ORDEM'
      Origin = 'RCT_ORDEM'
    end
    object TBReceituariosRCT_USUARIO: TStringField
      FieldName = 'RCT_USUARIO'
      Origin = 'RCT_USUARIO'
    end
    object TBReceituariosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBReceituariosMTO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MTO_NOME'
      Origin = 'MTO_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRRecibos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 392
  end
  object UPRecibos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO RECIBOS'
      '(RCB_CBAIRRO, RCB_CCEP, RCB_CCIDADE, RCB_CCNPJCPF, '
      '  RCB_CENDERECO, RCB_CFONE1, RCB_CNOME, RCB_CNUMERO, '
      '  RCB_CODIGO, RCB_DATA, RCB_DTATUALIZACAO, '
      '  RCB_DTCADASTRO, RCB_HRATUALIZACAO, RCB_HRCADASTRO, '
      '  RCB_PROVENIENTE, RCB_SBAIRRO, RCB_SCEP, RCB_SCIDADE, '
      '  RCB_SCNPJCPF, RCB_SENDERECO, RCB_SFONE1, '
      '  RCB_SNOME, RCB_SNUMERO, RCB_USUARIO, RCB_VALOR, '
      '  RCB_VALOREXTENSO)'
      
        'VALUES (:NEW_RCB_CBAIRRO, :NEW_RCB_CCEP, :NEW_RCB_CCIDADE, :NEW_' +
        'RCB_CCNPJCPF, '
      
        '  :NEW_RCB_CENDERECO, :NEW_RCB_CFONE1, :NEW_RCB_CNOME, :NEW_RCB_' +
        'CNUMERO, '
      '  gen_id(GEN_RECIBOS,1), :NEW_RCB_DATA, :NEW_RCB_DTATUALIZACAO, '
      
        '  :NEW_RCB_DTCADASTRO, :NEW_RCB_HRATUALIZACAO, :NEW_RCB_HRCADAST' +
        'RO, '
      
        '  :NEW_RCB_PROVENIENTE, :NEW_RCB_SBAIRRO, :NEW_RCB_SCEP, :NEW_RC' +
        'B_SCIDADE, '
      '  :NEW_RCB_SCNPJCPF, :NEW_RCB_SENDERECO, :NEW_RCB_SFONE1, '
      
        '  :NEW_RCB_SNOME, :NEW_RCB_SNUMERO, :NEW_RCB_USUARIO, :NEW_RCB_V' +
        'ALOR, '
      '  :NEW_RCB_VALOREXTENSO)'
      
        'RETURNING RCB_CBAIRRO, RCB_CCEP, RCB_CCIDADE, RCB_CCNPJCPF, RCB_' +
        'CENDERECO, RCB_CFONE1, RCB_CNOME, RCB_CNUMERO, RCB_CODIGO, RCB_D' +
        'ATA, RCB_DTATUALIZACAO, RCB_DTCADASTRO, RCB_HRATUALIZACAO, RCB_H' +
        'RCADASTRO, RCB_PROVENIENTE, RCB_SBAIRRO, RCB_SCEP, RCB_SCIDADE, ' +
        'RCB_SCNPJCPF, RCB_SENDERECO, RCB_SFONE1, RCB_SNOME, RCB_SNUMERO,' +
        ' RCB_USUARIO, RCB_VALOR, RCB_VALOREXTENSO')
    ModifySQL.Strings = (
      'UPDATE RECIBOS'
      
        'SET RCB_CBAIRRO = :NEW_RCB_CBAIRRO, RCB_CCEP = :NEW_RCB_CCEP, RC' +
        'B_CCIDADE = :NEW_RCB_CCIDADE, '
      
        '  RCB_CCNPJCPF = :NEW_RCB_CCNPJCPF, RCB_CENDERECO = :NEW_RCB_CEN' +
        'DERECO, '
      '  RCB_CFONE1 = :NEW_RCB_CFONE1, RCB_CNOME = :NEW_RCB_CNOME, '
      '  RCB_CNUMERO = :NEW_RCB_CNUMERO, RCB_CODIGO = :NEW_RCB_CODIGO, '
      
        '  RCB_DATA = :NEW_RCB_DATA, RCB_DTATUALIZACAO = :NEW_RCB_DTATUAL' +
        'IZACAO, '
      
        '  RCB_DTCADASTRO = :NEW_RCB_DTCADASTRO, RCB_HRATUALIZACAO = :NEW' +
        '_RCB_HRATUALIZACAO, '
      
        '  RCB_HRCADASTRO = :NEW_RCB_HRCADASTRO, RCB_PROVENIENTE = :NEW_R' +
        'CB_PROVENIENTE, '
      '  RCB_SBAIRRO = :NEW_RCB_SBAIRRO, RCB_SCEP = :NEW_RCB_SCEP, '
      
        '  RCB_SCIDADE = :NEW_RCB_SCIDADE, RCB_SCNPJCPF = :NEW_RCB_SCNPJC' +
        'PF, '
      
        '  RCB_SENDERECO = :NEW_RCB_SENDERECO, RCB_SFONE1 = :NEW_RCB_SFON' +
        'E1, '
      '  RCB_SNOME = :NEW_RCB_SNOME, RCB_SNUMERO = :NEW_RCB_SNUMERO, '
      '  RCB_USUARIO = :NEW_RCB_USUARIO, RCB_VALOR = :NEW_RCB_VALOR, '
      '  RCB_VALOREXTENSO = :NEW_RCB_VALOREXTENSO'
      'WHERE RCB_CODIGO = :OLD_RCB_CODIGO'
      
        'RETURNING RCB_CBAIRRO, RCB_CCEP, RCB_CCIDADE, RCB_CCNPJCPF, RCB_' +
        'CENDERECO, RCB_CFONE1, RCB_CNOME, RCB_CNUMERO, RCB_CODIGO, RCB_D' +
        'ATA, RCB_DTATUALIZACAO, RCB_DTCADASTRO, RCB_HRATUALIZACAO, RCB_H' +
        'RCADASTRO, RCB_PROVENIENTE, RCB_SBAIRRO, RCB_SCEP, RCB_SCIDADE, ' +
        'RCB_SCNPJCPF, RCB_SENDERECO, RCB_SFONE1, RCB_SNOME, RCB_SNUMERO,' +
        ' RCB_USUARIO, RCB_VALOR, RCB_VALOREXTENSO')
    DeleteSQL.Strings = (
      'DELETE FROM RECIBOS'
      'WHERE RCB_CODIGO = :OLD_RCB_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT RCB_CBAIRRO, RCB_CCEP, RCB_CCIDADE, RCB_CCNPJCPF, RCB_CEN' +
        'DERECO, '
      '  RCB_CFONE1, RCB_CNOME, RCB_CNUMERO, RCB_CODIGO, RCB_DATA, '
      
        '  RCB_DTATUALIZACAO, RCB_DTCADASTRO, RCB_HRATUALIZACAO, RCB_HRCA' +
        'DASTRO, '
      
        '  RCB_PROVENIENTE, RCB_SBAIRRO, RCB_SCEP, RCB_SCIDADE, RCB_SCNPJ' +
        'CPF, '
      
        '  RCB_SENDERECO, RCB_SFONE1, RCB_SNOME, RCB_SNUMERO, RCB_USUARIO' +
        ', '
      '  RCB_VALOR, RCB_VALOREXTENSO'
      'FROM RECIBOS'
      'WHERE RCB_CODIGO = :OLD_RCB_CODIGO')
    Left = 480
    Top = 360
  end
  object TBRecibos: TFDQuery
    BeforeInsert = TBRecibosBeforeInsert
    AfterInsert = TBRecibosAfterInsert
    BeforeEdit = TBRecibosBeforeEdit
    BeforePost = TBRecibosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRRecibos
    UpdateObject = UPRecibos
    SQL.Strings = (
      'select'
      'RCB_CBAIRRO,'
      'RCB_CCEP,'
      'RCB_CCIDADE,'
      'RCB_CCNPJCPF,'
      'RCB_CENDERECO,'
      'RCB_CFONE1,'
      'RCB_CNOME,'
      'RCB_CNUMERO,'
      'RCB_CODIGO,'
      'RCB_DATA,'
      'RCB_DTATUALIZACAO,'
      'RCB_DTCADASTRO,'
      'RCB_HRATUALIZACAO,'
      'RCB_HRCADASTRO,'
      'RCB_PROVENIENTE,'
      'RCB_SBAIRRO,'
      'RCB_SCEP,'
      'RCB_SCIDADE,'
      'RCB_SCNPJCPF,'
      'RCB_SENDERECO,'
      'RCB_SFONE1,'
      'RCB_SNOME,'
      'RCB_SNUMERO,'
      'RCB_USUARIO,'
      'RCB_VALOR,'
      'RCB_VALOREXTENSO'
      'from RECIBOS'
      'where RCB_CODIGO=:codigo'
      '')
    Left = 480
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBRecibosRCB_CBAIRRO: TStringField
      FieldName = 'RCB_CBAIRRO'
      Origin = 'RCB_CBAIRRO'
      Size = 50
    end
    object TBRecibosRCB_CCEP: TStringField
      FieldName = 'RCB_CCEP'
      Origin = 'RCB_CCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBRecibosRCB_CCIDADE: TStringField
      FieldName = 'RCB_CCIDADE'
      Origin = 'RCB_CCIDADE'
      Size = 50
    end
    object TBRecibosRCB_CCNPJCPF: TStringField
      FieldName = 'RCB_CCNPJCPF'
      Origin = 'RCB_CCNPJCPF'
    end
    object TBRecibosRCB_CENDERECO: TStringField
      FieldName = 'RCB_CENDERECO'
      Origin = 'RCB_CENDERECO'
      Size = 100
    end
    object TBRecibosRCB_CFONE1: TStringField
      FieldName = 'RCB_CFONE1'
      Origin = 'RCB_CFONE1'
    end
    object TBRecibosRCB_CNOME: TStringField
      FieldName = 'RCB_CNOME'
      Origin = 'RCB_CNOME'
      Size = 80
    end
    object TBRecibosRCB_CNUMERO: TStringField
      FieldName = 'RCB_CNUMERO'
      Origin = 'RCB_CNUMERO'
      Size = 15
    end
    object TBRecibosRCB_CODIGO: TIntegerField
      FieldName = 'RCB_CODIGO'
      Origin = 'RCB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBRecibosRCB_DATA: TDateField
      FieldName = 'RCB_DATA'
      Origin = 'RCB_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBRecibosRCB_DTATUALIZACAO: TDateField
      FieldName = 'RCB_DTATUALIZACAO'
      Origin = 'RCB_DTATUALIZACAO'
    end
    object TBRecibosRCB_DTCADASTRO: TDateField
      FieldName = 'RCB_DTCADASTRO'
      Origin = 'RCB_DTCADASTRO'
    end
    object TBRecibosRCB_HRATUALIZACAO: TTimeField
      FieldName = 'RCB_HRATUALIZACAO'
      Origin = 'RCB_HRATUALIZACAO'
    end
    object TBRecibosRCB_HRCADASTRO: TTimeField
      FieldName = 'RCB_HRCADASTRO'
      Origin = 'RCB_HRCADASTRO'
    end
    object TBRecibosRCB_PROVENIENTE: TStringField
      FieldName = 'RCB_PROVENIENTE'
      Origin = 'RCB_PROVENIENTE'
      Size = 50
    end
    object TBRecibosRCB_SBAIRRO: TStringField
      FieldName = 'RCB_SBAIRRO'
      Origin = 'RCB_SBAIRRO'
      Size = 50
    end
    object TBRecibosRCB_SCEP: TStringField
      FieldName = 'RCB_SCEP'
      Origin = 'RCB_SCEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object TBRecibosRCB_SCIDADE: TStringField
      FieldName = 'RCB_SCIDADE'
      Origin = 'RCB_SCIDADE'
      Size = 50
    end
    object TBRecibosRCB_SCNPJCPF: TStringField
      FieldName = 'RCB_SCNPJCPF'
      Origin = 'RCB_SCNPJCPF'
    end
    object TBRecibosRCB_SENDERECO: TStringField
      FieldName = 'RCB_SENDERECO'
      Origin = 'RCB_SENDERECO'
      Size = 100
    end
    object TBRecibosRCB_SFONE1: TStringField
      FieldName = 'RCB_SFONE1'
      Origin = 'RCB_SFONE1'
    end
    object TBRecibosRCB_SNOME: TStringField
      FieldName = 'RCB_SNOME'
      Origin = 'RCB_SNOME'
      Size = 80
    end
    object TBRecibosRCB_SNUMERO: TStringField
      FieldName = 'RCB_SNUMERO'
      Origin = 'RCB_SNUMERO'
      Size = 15
    end
    object TBRecibosRCB_USUARIO: TStringField
      FieldName = 'RCB_USUARIO'
      Origin = 'RCB_USUARIO'
    end
    object TBRecibosRCB_VALOR: TFMTBCDField
      FieldName = 'RCB_VALOR'
      Origin = 'RCB_VALOR'
      currency = True
      Precision = 18
    end
    object TBRecibosRCB_VALOREXTENSO: TStringField
      FieldName = 'RCB_VALOREXTENSO'
      Origin = 'RCB_VALOREXTENSO'
      Size = 120
    end
  end
  object TRRemessas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 512
    Top = 392
  end
  object UPRemessas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO REMESSAS'
      '(REM_ARQUIVO, REM_CODIGO, REM_CONTA, REM_DATA, '
      '  REM_LAYOUT, REM_USUARIO)'
      
        'VALUES (:NEW_REM_ARQUIVO, gen_id(GEN_REMESSAS,1), :NEW_REM_CONTA' +
        ', :NEW_REM_DATA, '
      '  :NEW_REM_LAYOUT, :NEW_REM_USUARIO)'
      
        'RETURNING REM_ARQUIVO, REM_CODIGO, REM_CONTA, REM_DATA, REM_LAYO' +
        'UT, REM_USUARIO')
    ModifySQL.Strings = (
      'UPDATE REMESSAS'
      
        'SET REM_ARQUIVO = :NEW_REM_ARQUIVO, REM_CODIGO = :NEW_REM_CODIGO' +
        ', '
      
        '  REM_CONTA = :NEW_REM_CONTA, REM_DATA = :NEW_REM_DATA, REM_LAYO' +
        'UT = :NEW_REM_LAYOUT, '
      '  REM_USUARIO = :NEW_REM_USUARIO'
      'WHERE REM_CODIGO = :OLD_REM_CODIGO'
      
        'RETURNING REM_ARQUIVO, REM_CODIGO, REM_CONTA, REM_DATA, REM_LAYO' +
        'UT, REM_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM REMESSAS'
      'WHERE REM_CODIGO = :OLD_REM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT REM_ARQUIVO, REM_CODIGO, REM_CONTA, REM_DATA, REM_LAYOUT,' +
        ' REM_USUARIO'
      'FROM REMESSAS'
      'WHERE REM_CODIGO = :OLD_REM_CODIGO')
    Left = 512
    Top = 360
  end
  object TBRemessas: TFDQuery
    AfterInsert = TBRemessasAfterInsert
    Connection = DM.FDConnection1
    Transaction = TRRemessas
    UpdateObject = UPRemessas
    SQL.Strings = (
      'select '
      'REM_ARQUIVO,'
      'REM_CODIGO,'
      'REM_CONTA,'
      'REM_DATA,'
      'REM_LAYOUT,'
      'REM_USUARIO,'
      'CON_NOME from REMESSAS'
      'left join CONTAS on REM_CONTA=CON_CODIGO'
      'where REM_CODIGO=:codigo'
      '')
    Left = 512
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBRemessasREM_ARQUIVO: TStringField
      FieldName = 'REM_ARQUIVO'
      Origin = 'REM_ARQUIVO'
      Size = 80
    end
    object TBRemessasREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
      Origin = 'REM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBRemessasREM_CONTA: TIntegerField
      FieldName = 'REM_CONTA'
      Origin = 'REM_CONTA'
      Required = True
    end
    object TBRemessasREM_DATA: TDateField
      FieldName = 'REM_DATA'
      Origin = 'REM_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBRemessasREM_LAYOUT: TStringField
      FieldName = 'REM_LAYOUT'
      Origin = 'REM_LAYOUT'
      Size = 10
    end
    object TBRemessasREM_USUARIO: TStringField
      FieldName = 'REM_USUARIO'
      Origin = 'REM_USUARIO'
    end
    object TBRemessasCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRRemessasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 392
  end
  object UPRemessasItens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO REMESSASITENS'
      '(RMI_BOLETO, RMI_CODIGO, RMI_REMESSA)'
      
        'VALUES (:NEW_RMI_BOLETO, gen_id(GEN_REMESSASITENS,1), :NEW_RMI_R' +
        'EMESSA)'
      'RETURNING RMI_BOLETO, RMI_CODIGO, RMI_REMESSA')
    ModifySQL.Strings = (
      'UPDATE REMESSASITENS'
      'SET RMI_BOLETO = :NEW_RMI_BOLETO, RMI_CODIGO = :NEW_RMI_CODIGO, '
      '  RMI_REMESSA = :NEW_RMI_REMESSA'
      'WHERE RMI_CODIGO = :OLD_RMI_CODIGO'
      'RETURNING RMI_BOLETO, RMI_CODIGO, RMI_REMESSA')
    DeleteSQL.Strings = (
      'DELETE FROM REMESSASITENS'
      'WHERE RMI_CODIGO = :OLD_RMI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT RMI_BOLETO, RMI_CODIGO, RMI_REMESSA'
      'FROM REMESSASITENS'
      'WHERE RMI_CODIGO = :OLD_RMI_CODIGO')
    Left = 544
    Top = 360
  end
  object TBRemessasItens: TFDQuery
    AfterInsert = TBRemessasItensAfterInsert
    Connection = DM.FDConnection1
    Transaction = TRRemessasItens
    UpdateObject = UPRemessasItens
    SQL.Strings = (
      'select'
      'RMI_BOLETO,'
      'RMI_CODIGO,'
      'RMI_REMESSA'
      'from REMESSASITENS'
      'where RMI_REMESSA=:REM_CODIGO'
      'order by RMI_BOLETO'
      '')
    Left = 544
    Top = 328
    ParamData = <
      item
        Name = 'REM_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBRemessasItensRMI_BOLETO: TIntegerField
      FieldName = 'RMI_BOLETO'
      Origin = 'RMI_BOLETO'
      Required = True
    end
    object TBRemessasItensRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Origin = 'RMI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBRemessasItensRMI_REMESSA: TIntegerField
      FieldName = 'RMI_REMESSA'
      Origin = 'RMI_REMESSA'
      Required = True
    end
  end
  object TRSeguros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 576
    Top = 392
  end
  object UPSeguros: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SEGUROS'
      '(SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_COMISSAO, '
      '  SEG_COMISSAOVENDEDOR, SEG_CONDICAO, SEG_DESCRICAOAPOLICE, '
      '  SEG_DESCRICAOCANCELAMENTO, SEG_DESCRICAOPERDA, '
      '  SEG_DIAPREFERENCIAL, SEG_DTATUALIZACAO, SEG_DTCADASTRO, '
      '  SEG_DTCANCELAMENTO, SEG_DTEMISSAO, SEG_DTINICIO, '
      '  SEG_DTLEMBRETE, SEG_DTTERMINO, SEG_ENDOSSO, '
      '  SEG_HRATUALIZACAO, SEG_HRCADASTRO, SEG_ORIGEM, '
      '  SEG_ORIGINAL, SEG_PROPOSTA, SEG_SEGURADORA, '
      '  SEG_SEGUROTIPO, SEG_STATUS, SEG_USUARIO, '
      
        '  SEG_VALORADICIONAL, SEG_VALORCOMISSAO, SEG_VALORCOMISSAOVENDED' +
        'OR, '
      '  SEG_VALORFRANQUIA, SEG_VALORIOF, SEG_VALORIOFPORC, '
      '  SEG_VALORPREMIO, SEG_VALORTOTAL, SEG_VENDEDOR)'
      
        'VALUES (:NEW_SEG_APOLICE, :NEW_SEG_CLIENTE, gen_id(GEN_SEGUROS,1' +
        '), :NEW_SEG_COMISSAO, '
      
        '  :NEW_SEG_COMISSAOVENDEDOR, :NEW_SEG_CONDICAO, :NEW_SEG_DESCRIC' +
        'AOAPOLICE, '
      '  :NEW_SEG_DESCRICAOCANCELAMENTO, :NEW_SEG_DESCRICAOPERDA, '
      
        '  :NEW_SEG_DIAPREFERENCIAL, :NEW_SEG_DTATUALIZACAO, :NEW_SEG_DTC' +
        'ADASTRO, '
      
        '  :NEW_SEG_DTCANCELAMENTO, :NEW_SEG_DTEMISSAO, :NEW_SEG_DTINICIO' +
        ', '
      '  :NEW_SEG_DTLEMBRETE, :NEW_SEG_DTTERMINO, :NEW_SEG_ENDOSSO, '
      '  :NEW_SEG_HRATUALIZACAO, :NEW_SEG_HRCADASTRO, :NEW_SEG_ORIGEM, '
      '  :NEW_SEG_ORIGINAL, :NEW_SEG_PROPOSTA, :NEW_SEG_SEGURADORA, '
      '  :NEW_SEG_SEGUROTIPO, :NEW_SEG_STATUS, :NEW_SEG_USUARIO, '
      
        '  :NEW_SEG_VALORADICIONAL, :NEW_SEG_VALORCOMISSAO, :NEW_SEG_VALO' +
        'RCOMISSAOVENDEDOR, '
      
        '  :NEW_SEG_VALORFRANQUIA, :NEW_SEG_VALORIOF, :NEW_SEG_VALORIOFPO' +
        'RC, '
      '  :NEW_SEG_VALORPREMIO, :NEW_SEG_VALORTOTAL, :NEW_SEG_VENDEDOR)'
      
        'RETURNING SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_COMISSAO, SE' +
        'G_COMISSAOVENDEDOR, SEG_CONDICAO, SEG_DESCRICAOAPOLICE, SEG_DESC' +
        'RICAOCANCELAMENTO, SEG_DESCRICAOPERDA, SEG_DIAPREFERENCIAL, SEG_' +
        'DTATUALIZACAO, SEG_DTCADASTRO, SEG_DTCANCELAMENTO, SEG_DTEMISSAO' +
        ', SEG_DTINICIO, SEG_DTLEMBRETE, SEG_DTTERMINO, SEG_ENDOSSO, SEG_' +
        'HRATUALIZACAO, SEG_HRCADASTRO, SEG_ORIGEM, SEG_ORIGINAL, SEG_PRO' +
        'POSTA, SEG_SEGURADORA, SEG_SEGUROTIPO, SEG_STATUS, SEG_USUARIO, ' +
        'SEG_VALORADICIONAL, SEG_VALORCOMISSAO, SEG_VALORCOMISSAOVENDEDOR' +
        ', SEG_VALORFRANQUIA, SEG_VALORIOF, SEG_VALORIOFPORC, SEG_VALORPR' +
        'EMIO, SEG_VALORTOTAL, SEG_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE SEGUROS'
      
        'SET SEG_APOLICE = :NEW_SEG_APOLICE, SEG_CLIENTE = :NEW_SEG_CLIEN' +
        'TE, '
      
        '  SEG_CODIGO = :NEW_SEG_CODIGO, SEG_COMISSAO = :NEW_SEG_COMISSAO' +
        ', '
      
        '  SEG_COMISSAOVENDEDOR = :NEW_SEG_COMISSAOVENDEDOR, SEG_CONDICAO' +
        ' = :NEW_SEG_CONDICAO, '
      
        '  SEG_DESCRICAOAPOLICE = :NEW_SEG_DESCRICAOAPOLICE, SEG_DESCRICA' +
        'OCANCELAMENTO = :NEW_SEG_DESCRICAOCANCELAMENTO, '
      
        '  SEG_DESCRICAOPERDA = :NEW_SEG_DESCRICAOPERDA, SEG_DIAPREFERENC' +
        'IAL = :NEW_SEG_DIAPREFERENCIAL, '
      
        '  SEG_DTATUALIZACAO = :NEW_SEG_DTATUALIZACAO, SEG_DTCADASTRO = :' +
        'NEW_SEG_DTCADASTRO, '
      
        '  SEG_DTCANCELAMENTO = :NEW_SEG_DTCANCELAMENTO, SEG_DTEMISSAO = ' +
        ':NEW_SEG_DTEMISSAO, '
      
        '  SEG_DTINICIO = :NEW_SEG_DTINICIO, SEG_DTLEMBRETE = :NEW_SEG_DT' +
        'LEMBRETE, '
      
        '  SEG_DTTERMINO = :NEW_SEG_DTTERMINO, SEG_ENDOSSO = :NEW_SEG_END' +
        'OSSO, '
      
        '  SEG_HRATUALIZACAO = :NEW_SEG_HRATUALIZACAO, SEG_HRCADASTRO = :' +
        'NEW_SEG_HRCADASTRO, '
      
        '  SEG_ORIGEM = :NEW_SEG_ORIGEM, SEG_ORIGINAL = :NEW_SEG_ORIGINAL' +
        ', '
      
        '  SEG_PROPOSTA = :NEW_SEG_PROPOSTA, SEG_SEGURADORA = :NEW_SEG_SE' +
        'GURADORA, '
      
        '  SEG_SEGUROTIPO = :NEW_SEG_SEGUROTIPO, SEG_STATUS = :NEW_SEG_ST' +
        'ATUS, '
      
        '  SEG_USUARIO = :NEW_SEG_USUARIO, SEG_VALORADICIONAL = :NEW_SEG_' +
        'VALORADICIONAL, '
      
        '  SEG_VALORCOMISSAO = :NEW_SEG_VALORCOMISSAO, SEG_VALORCOMISSAOV' +
        'ENDEDOR = :NEW_SEG_VALORCOMISSAOVENDEDOR, '
      
        '  SEG_VALORFRANQUIA = :NEW_SEG_VALORFRANQUIA, SEG_VALORIOF = :NE' +
        'W_SEG_VALORIOF, '
      
        '  SEG_VALORIOFPORC = :NEW_SEG_VALORIOFPORC, SEG_VALORPREMIO = :N' +
        'EW_SEG_VALORPREMIO, '
      
        '  SEG_VALORTOTAL = :NEW_SEG_VALORTOTAL, SEG_VENDEDOR = :NEW_SEG_' +
        'VENDEDOR'
      'WHERE SEG_CODIGO = :OLD_SEG_CODIGO'
      
        'RETURNING SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_COMISSAO, SE' +
        'G_COMISSAOVENDEDOR, SEG_CONDICAO, SEG_DESCRICAOAPOLICE, SEG_DESC' +
        'RICAOCANCELAMENTO, SEG_DESCRICAOPERDA, SEG_DIAPREFERENCIAL, SEG_' +
        'DTATUALIZACAO, SEG_DTCADASTRO, SEG_DTCANCELAMENTO, SEG_DTEMISSAO' +
        ', SEG_DTINICIO, SEG_DTLEMBRETE, SEG_DTTERMINO, SEG_ENDOSSO, SEG_' +
        'HRATUALIZACAO, SEG_HRCADASTRO, SEG_ORIGEM, SEG_ORIGINAL, SEG_PRO' +
        'POSTA, SEG_SEGURADORA, SEG_SEGUROTIPO, SEG_STATUS, SEG_USUARIO, ' +
        'SEG_VALORADICIONAL, SEG_VALORCOMISSAO, SEG_VALORCOMISSAOVENDEDOR' +
        ', SEG_VALORFRANQUIA, SEG_VALORIOF, SEG_VALORIOFPORC, SEG_VALORPR' +
        'EMIO, SEG_VALORTOTAL, SEG_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM SEGUROS'
      'WHERE SEG_CODIGO = :OLD_SEG_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_COMISSAO, SEG_C' +
        'OMISSAOVENDEDOR, '
      
        '  SEG_CONDICAO, SEG_DESCRICAOAPOLICE, SEG_DESCRICAOCANCELAMENTO,' +
        ' '
      '  SEG_DESCRICAOPERDA, SEG_DIAPREFERENCIAL, SEG_DTATUALIZACAO, '
      
        '  SEG_DTCADASTRO, SEG_DTCANCELAMENTO, SEG_DTEMISSAO, SEG_DTINICI' +
        'O, '
      
        '  SEG_DTLEMBRETE, SEG_DTTERMINO, SEG_ENDOSSO, SEG_HRATUALIZACAO,' +
        ' '
      '  SEG_HRCADASTRO, SEG_ORIGEM, SEG_ORIGINAL, SEG_PROPOSTA, '
      '  SEG_SEGURADORA, SEG_SEGUROTIPO, SEG_STATUS, SEG_USUARIO, '
      
        '  SEG_VALORADICIONAL, SEG_VALORCOMISSAO, SEG_VALORCOMISSAOVENDED' +
        'OR, '
      
        '  SEG_VALORFRANQUIA, SEG_VALORIOF, SEG_VALORIOFPORC, SEG_VALORPR' +
        'EMIO, '
      '  SEG_VALORTOTAL, SEG_VENDEDOR'
      'FROM SEGUROS'
      'WHERE SEG_CODIGO = :OLD_SEG_CODIGO')
    Left = 576
    Top = 360
  end
  object TBSeguros: TFDQuery
    BeforeInsert = TBSegurosBeforeInsert
    AfterInsert = TBSegurosAfterInsert
    BeforeEdit = TBSegurosBeforeEdit
    BeforePost = TBSegurosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRSeguros
    UpdateObject = UPSeguros
    SQL.Strings = (
      'select '
      'SEG_APOLICE,'
      'SEG_CLIENTE,'
      'SEG_CODIGO,'
      'SEG_COMISSAO,'
      'SEG_COMISSAOVENDEDOR,'
      'SEG_CONDICAO,'
      'SEG_DESCRICAOAPOLICE,'
      'SEG_DESCRICAOCANCELAMENTO,'
      'SEG_DESCRICAOPERDA,'
      'SEG_DIAPREFERENCIAL,'
      'SEG_DTATUALIZACAO,'
      'SEG_DTCADASTRO,'
      'SEG_DTCANCELAMENTO,'
      'SEG_DTEMISSAO,'
      'SEG_DTINICIO,'
      'SEG_DTLEMBRETE,'
      'SEG_DTTERMINO,'
      'SEG_ENDOSSO,'
      'SEG_HRATUALIZACAO,'
      'SEG_HRCADASTRO,'
      'SEG_ORIGEM,'
      'SEG_ORIGINAL,'
      'SEG_PROPOSTA,'
      'SEG_SEGURADORA,'
      'SEG_SEGUROTIPO,'
      'SEG_STATUS,'
      'SEG_USUARIO,'
      'SEG_VALORADICIONAL,'
      'SEG_VALORCOMISSAO,'
      'SEG_VALORCOMISSAOVENDEDOR,'
      'SEG_VALORFRANQUIA,'
      'SEG_VALORIOF,'
      'SEG_VALORIOFPORC,'
      'SEG_VALORPREMIO,'
      'SEG_VALORTOTAL,'
      'SEG_VENDEDOR,'
      'CLI_NOME,'
      'CPG_DESCRICAO,'
      'FOR_NOME,'
      'SGT_DESCRICAO,'
      'VEN_NOME'
      'from SEGUROS'
      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO'
      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO'
      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO'
      'left join VENDEDORES on SEG_VENDEDOR=VEN_CODIGO'
      'left join CONDICOES on SEG_CONDICAO=CPG_CODIGO'
      'where SEG_CODIGO=:codigo'
      '')
    Left = 576
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBSegurosSEG_APOLICE: TStringField
      FieldName = 'SEG_APOLICE'
      Origin = 'SEG_APOLICE'
    end
    object TBSegurosSEG_CLIENTE: TIntegerField
      FieldName = 'SEG_CLIENTE'
      Origin = 'SEG_CLIENTE'
      Required = True
    end
    object TBSegurosSEG_CODIGO: TIntegerField
      FieldName = 'SEG_CODIGO'
      Origin = 'SEG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBSegurosSEG_COMISSAO: TFMTBCDField
      FieldName = 'SEG_COMISSAO'
      Origin = 'SEG_COMISSAO'
      Precision = 18
    end
    object TBSegurosSEG_COMISSAOVENDEDOR: TFMTBCDField
      FieldName = 'SEG_COMISSAOVENDEDOR'
      Origin = 'SEG_COMISSAOVENDEDOR'
      Precision = 18
    end
    object TBSegurosSEG_CONDICAO: TIntegerField
      FieldName = 'SEG_CONDICAO'
      Origin = 'SEG_CONDICAO'
      Required = True
    end
    object TBSegurosSEG_DESCRICAOAPOLICE: TMemoField
      FieldName = 'SEG_DESCRICAOAPOLICE'
      Origin = 'SEG_DESCRICAOAPOLICE'
      BlobType = ftMemo
    end
    object TBSegurosSEG_DESCRICAOCANCELAMENTO: TMemoField
      FieldName = 'SEG_DESCRICAOCANCELAMENTO'
      Origin = 'SEG_DESCRICAOCANCELAMENTO'
      BlobType = ftMemo
    end
    object TBSegurosSEG_DESCRICAOPERDA: TMemoField
      FieldName = 'SEG_DESCRICAOPERDA'
      Origin = 'SEG_DESCRICAOPERDA'
      BlobType = ftMemo
    end
    object TBSegurosSEG_DIAPREFERENCIAL: TIntegerField
      FieldName = 'SEG_DIAPREFERENCIAL'
      Origin = 'SEG_DIAPREFERENCIAL'
    end
    object TBSegurosSEG_DTATUALIZACAO: TDateField
      FieldName = 'SEG_DTATUALIZACAO'
      Origin = 'SEG_DTATUALIZACAO'
    end
    object TBSegurosSEG_DTCADASTRO: TDateField
      FieldName = 'SEG_DTCADASTRO'
      Origin = 'SEG_DTCADASTRO'
    end
    object TBSegurosSEG_DTCANCELAMENTO: TDateField
      FieldName = 'SEG_DTCANCELAMENTO'
      Origin = 'SEG_DTCANCELAMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosSEG_DTEMISSAO: TDateField
      FieldName = 'SEG_DTEMISSAO'
      Origin = 'SEG_DTEMISSAO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosSEG_DTINICIO: TDateField
      FieldName = 'SEG_DTINICIO'
      Origin = 'SEG_DTINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosSEG_DTLEMBRETE: TDateField
      FieldName = 'SEG_DTLEMBRETE'
      Origin = 'SEG_DTLEMBRETE'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosSEG_DTTERMINO: TDateField
      FieldName = 'SEG_DTTERMINO'
      Origin = 'SEG_DTTERMINO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosSEG_ENDOSSO: TStringField
      FieldName = 'SEG_ENDOSSO'
      Origin = 'SEG_ENDOSSO'
    end
    object TBSegurosSEG_HRATUALIZACAO: TTimeField
      FieldName = 'SEG_HRATUALIZACAO'
      Origin = 'SEG_HRATUALIZACAO'
    end
    object TBSegurosSEG_HRCADASTRO: TTimeField
      FieldName = 'SEG_HRCADASTRO'
      Origin = 'SEG_HRCADASTRO'
    end
    object TBSegurosSEG_ORIGEM: TStringField
      FieldName = 'SEG_ORIGEM'
      Origin = 'SEG_ORIGEM'
      Size = 1
    end
    object TBSegurosSEG_ORIGINAL: TIntegerField
      FieldName = 'SEG_ORIGINAL'
      Origin = 'SEG_ORIGINAL'
    end
    object TBSegurosSEG_PROPOSTA: TStringField
      FieldName = 'SEG_PROPOSTA'
      Origin = 'SEG_PROPOSTA'
    end
    object TBSegurosSEG_SEGURADORA: TIntegerField
      FieldName = 'SEG_SEGURADORA'
      Origin = 'SEG_SEGURADORA'
      Required = True
    end
    object TBSegurosSEG_SEGUROTIPO: TIntegerField
      FieldName = 'SEG_SEGUROTIPO'
      Origin = 'SEG_SEGUROTIPO'
      Required = True
    end
    object TBSegurosSEG_STATUS: TStringField
      FieldName = 'SEG_STATUS'
      Origin = 'SEG_STATUS'
      Size = 1
    end
    object TBSegurosSEG_USUARIO: TStringField
      FieldName = 'SEG_USUARIO'
      Origin = 'SEG_USUARIO'
    end
    object TBSegurosSEG_VALORADICIONAL: TFMTBCDField
      FieldName = 'SEG_VALORADICIONAL'
      Origin = 'SEG_VALORADICIONAL'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORCOMISSAO: TFMTBCDField
      FieldName = 'SEG_VALORCOMISSAO'
      Origin = 'SEG_VALORCOMISSAO'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORCOMISSAOVENDEDOR: TFMTBCDField
      FieldName = 'SEG_VALORCOMISSAOVENDEDOR'
      Origin = 'SEG_VALORCOMISSAOVENDEDOR'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORFRANQUIA: TFMTBCDField
      FieldName = 'SEG_VALORFRANQUIA'
      Origin = 'SEG_VALORFRANQUIA'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORIOF: TFMTBCDField
      FieldName = 'SEG_VALORIOF'
      Origin = 'SEG_VALORIOF'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORIOFPORC: TFMTBCDField
      FieldName = 'SEG_VALORIOFPORC'
      Origin = 'SEG_VALORIOFPORC'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORPREMIO: TFMTBCDField
      FieldName = 'SEG_VALORPREMIO'
      Origin = 'SEG_VALORPREMIO'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VALORTOTAL: TFMTBCDField
      FieldName = 'SEG_VALORTOTAL'
      Origin = 'SEG_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object TBSegurosSEG_VENDEDOR: TIntegerField
      FieldName = 'SEG_VENDEDOR'
      Origin = 'SEG_VENDEDOR'
      Required = True
    end
    object TBSegurosCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBSegurosCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBSegurosFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBSegurosSGT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SGT_DESCRICAO'
      Origin = 'SGT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBSegurosVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRSegurosEndossos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 608
    Top = 392
  end
  object UPSegurosEndossos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SEGUROSENDOSSOS'
      '(SGE_CODIGO, SGE_ENDOSSO, SGE_NUMERO, SGE_SEGURO)'
      
        'VALUES (gen_id(GEN_SEGUROSENDOSSOS,1), :NEW_SGE_ENDOSSO, :NEW_SG' +
        'E_NUMERO, :NEW_SGE_SEGURO)'
      'RETURNING SGE_CODIGO, SGE_ENDOSSO, SGE_NUMERO, SGE_SEGURO')
    ModifySQL.Strings = (
      'UPDATE SEGUROSENDOSSOS'
      
        'SET SGE_CODIGO = :NEW_SGE_CODIGO, SGE_ENDOSSO = :NEW_SGE_ENDOSSO' +
        ', '
      '  SGE_NUMERO = :NEW_SGE_NUMERO, SGE_SEGURO = :NEW_SGE_SEGURO'
      'WHERE SGE_CODIGO = :OLD_SGE_CODIGO'
      'RETURNING SGE_CODIGO, SGE_ENDOSSO, SGE_NUMERO, SGE_SEGURO')
    DeleteSQL.Strings = (
      'DELETE FROM SEGUROSENDOSSOS'
      'WHERE SGE_CODIGO = :OLD_SGE_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT SGE_CODIGO, SGE_ENDOSSO, SGE_NUMERO, SGE_SEGURO'
      'FROM SEGUROSENDOSSOS'
      'WHERE SGE_CODIGO = :OLD_SGE_CODIGO')
    Left = 608
    Top = 360
  end
  object TBSegurosEndossos: TFDQuery
    AfterInsert = TBSegurosEndossosAfterInsert
    MasterSource = DSSeguros
    MasterFields = 'SEG_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRSegurosEndossos
    UpdateObject = UPSegurosEndossos
    SQL.Strings = (
      'select '
      'SGE_CODIGO,'
      'SGE_ENDOSSO,'
      'SGE_NUMERO,'
      'SGE_SEGURO,'
      'SEG_STATUS'
      'from SEGUROSENDOSSOS'
      'left join SEGUROS on SGE_SEGURO=SEG_CODIGO'
      'where SGE_SEGURO=:SEG_CODIGO'
      '')
    Left = 608
    Top = 328
    ParamData = <
      item
        Name = 'SEG_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBSegurosEndossosSGE_CODIGO: TIntegerField
      FieldName = 'SGE_CODIGO'
      Origin = 'SGE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBSegurosEndossosSGE_ENDOSSO: TIntegerField
      FieldName = 'SGE_ENDOSSO'
      Origin = 'SGE_ENDOSSO'
      Required = True
    end
    object TBSegurosEndossosSGE_NUMERO: TStringField
      FieldName = 'SGE_NUMERO'
      Origin = 'SGE_NUMERO'
    end
    object TBSegurosEndossosSGE_SEGURO: TIntegerField
      FieldName = 'SGE_SEGURO'
      Origin = 'SGE_SEGURO'
      Required = True
    end
    object TBSegurosEndossosSEG_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEG_STATUS'
      Origin = 'SEG_STATUS'
      ProviderFlags = []
      Size = 1
    end
  end
  object TRSegurosParcelas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 640
    Top = 392
  end
  object UPSegurosParcelas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SEGUROSPARCELAS'
      '(SGP_CODIGO, SGP_COMISSAO, SGP_COMISSAOVENDEDOR, '
      '  SGP_DTATUALIZACAO, SGP_DTCADASTRO, SGP_DTPAGAMENTO, '
      '  SGP_DTRECEBIMENTO, SGP_DTVENCIMENTO, SGP_HRATUALIZACAO, '
      '  SGP_HRCADASTRO, SGP_PARCELA, SGP_SEGURO, '
      '  SGP_STATUS, SGP_USUARIO, SGP_VALOR)'
      
        'VALUES (gen_id(GEN_SEGUROSPARCELAS,1), :NEW_SGP_COMISSAO, :NEW_S' +
        'GP_COMISSAOVENDEDOR, '
      
        '  :NEW_SGP_DTATUALIZACAO, :NEW_SGP_DTCADASTRO, :NEW_SGP_DTPAGAME' +
        'NTO, '
      
        '  :NEW_SGP_DTRECEBIMENTO, :NEW_SGP_DTVENCIMENTO, :NEW_SGP_HRATUA' +
        'LIZACAO, '
      '  :NEW_SGP_HRCADASTRO, :NEW_SGP_PARCELA, :NEW_SGP_SEGURO, '
      '  :NEW_SGP_STATUS, :NEW_SGP_USUARIO, :NEW_SGP_VALOR)'
      
        'RETURNING SGP_CODIGO, SGP_COMISSAO, SGP_COMISSAOVENDEDOR, SGP_DT' +
        'ATUALIZACAO, SGP_DTCADASTRO, SGP_DTPAGAMENTO, SGP_DTRECEBIMENTO,' +
        ' SGP_DTVENCIMENTO, SGP_HRATUALIZACAO, SGP_HRCADASTRO, SGP_PARCEL' +
        'A, SGP_SEGURO, SGP_STATUS, SGP_USUARIO, SGP_VALOR')
    ModifySQL.Strings = (
      'UPDATE SEGUROSPARCELAS'
      
        'SET SGP_CODIGO = :NEW_SGP_CODIGO, SGP_COMISSAO = :NEW_SGP_COMISS' +
        'AO, '
      
        '  SGP_COMISSAOVENDEDOR = :NEW_SGP_COMISSAOVENDEDOR, SGP_DTATUALI' +
        'ZACAO = :NEW_SGP_DTATUALIZACAO, '
      
        '  SGP_DTCADASTRO = :NEW_SGP_DTCADASTRO, SGP_DTPAGAMENTO = :NEW_S' +
        'GP_DTPAGAMENTO, '
      
        '  SGP_DTRECEBIMENTO = :NEW_SGP_DTRECEBIMENTO, SGP_DTVENCIMENTO =' +
        ' :NEW_SGP_DTVENCIMENTO, '
      
        '  SGP_HRATUALIZACAO = :NEW_SGP_HRATUALIZACAO, SGP_HRCADASTRO = :' +
        'NEW_SGP_HRCADASTRO, '
      '  SGP_PARCELA = :NEW_SGP_PARCELA, SGP_SEGURO = :NEW_SGP_SEGURO, '
      '  SGP_STATUS = :NEW_SGP_STATUS, SGP_USUARIO = :NEW_SGP_USUARIO, '
      '  SGP_VALOR = :NEW_SGP_VALOR'
      'WHERE SGP_CODIGO = :OLD_SGP_CODIGO'
      
        'RETURNING SGP_CODIGO, SGP_COMISSAO, SGP_COMISSAOVENDEDOR, SGP_DT' +
        'ATUALIZACAO, SGP_DTCADASTRO, SGP_DTPAGAMENTO, SGP_DTRECEBIMENTO,' +
        ' SGP_DTVENCIMENTO, SGP_HRATUALIZACAO, SGP_HRCADASTRO, SGP_PARCEL' +
        'A, SGP_SEGURO, SGP_STATUS, SGP_USUARIO, SGP_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM SEGUROSPARCELAS'
      'WHERE SGP_CODIGO = :OLD_SGP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT SGP_CODIGO, SGP_COMISSAO, SGP_COMISSAOVENDEDOR, SGP_DTATU' +
        'ALIZACAO, '
      
        '  SGP_DTCADASTRO, SGP_DTPAGAMENTO, SGP_DTRECEBIMENTO, SGP_DTVENC' +
        'IMENTO, '
      '  SGP_HRATUALIZACAO, SGP_HRCADASTRO, SGP_PARCELA, SGP_SEGURO, '
      '  SGP_STATUS, SGP_USUARIO, SGP_VALOR'
      'FROM SEGUROSPARCELAS'
      'WHERE SGP_CODIGO = :OLD_SGP_CODIGO')
    Left = 640
    Top = 360
  end
  object TBSegurosParcelas: TFDQuery
    AfterInsert = TBSegurosParcelasAfterInsert
    BeforePost = TBSegurosParcelasBeforePost
    MasterSource = DSSeguros
    MasterFields = 'SEG_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRSegurosParcelas
    UpdateObject = UPSegurosParcelas
    SQL.Strings = (
      'select'
      'SGP_CODIGO,'
      'SGP_COMISSAO,'
      'SGP_COMISSAOVENDEDOR,'
      'SGP_DTATUALIZACAO,'
      'SGP_DTCADASTRO,'
      'SGP_DTPAGAMENTO,'
      'SGP_DTRECEBIMENTO,'
      'SGP_DTVENCIMENTO,'
      'SGP_HRATUALIZACAO,'
      'SGP_HRCADASTRO,'
      'SGP_PARCELA,'
      'SGP_SEGURO,'
      'SGP_STATUS,'
      'SGP_USUARIO,'
      'SGP_VALOR'
      'from SEGUROSPARCELAS'
      'where SGP_SEGURO=:SEG_CODIGO'
      'order by SGP_PARCELA'
      '')
    Left = 640
    Top = 328
    ParamData = <
      item
        Name = 'SEG_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBSegurosParcelasSGP_CODIGO: TIntegerField
      FieldName = 'SGP_CODIGO'
      Origin = 'SGP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBSegurosParcelasSGP_COMISSAO: TFMTBCDField
      FieldName = 'SGP_COMISSAO'
      Origin = 'SGP_COMISSAO'
      currency = True
      Precision = 18
    end
    object TBSegurosParcelasSGP_COMISSAOVENDEDOR: TFMTBCDField
      FieldName = 'SGP_COMISSAOVENDEDOR'
      Origin = 'SGP_COMISSAOVENDEDOR'
      currency = True
      Precision = 18
    end
    object TBSegurosParcelasSGP_DTATUALIZACAO: TDateField
      FieldName = 'SGP_DTATUALIZACAO'
      Origin = 'SGP_DTATUALIZACAO'
    end
    object TBSegurosParcelasSGP_DTCADASTRO: TDateField
      FieldName = 'SGP_DTCADASTRO'
      Origin = 'SGP_DTCADASTRO'
    end
    object TBSegurosParcelasSGP_DTPAGAMENTO: TDateField
      FieldName = 'SGP_DTPAGAMENTO'
      Origin = 'SGP_DTPAGAMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosParcelasSGP_DTRECEBIMENTO: TDateField
      FieldName = 'SGP_DTRECEBIMENTO'
      Origin = 'SGP_DTRECEBIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosParcelasSGP_DTVENCIMENTO: TDateField
      FieldName = 'SGP_DTVENCIMENTO'
      Origin = 'SGP_DTVENCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBSegurosParcelasSGP_HRATUALIZACAO: TTimeField
      FieldName = 'SGP_HRATUALIZACAO'
      Origin = 'SGP_HRATUALIZACAO'
    end
    object TBSegurosParcelasSGP_HRCADASTRO: TTimeField
      FieldName = 'SGP_HRCADASTRO'
      Origin = 'SGP_HRCADASTRO'
    end
    object TBSegurosParcelasSGP_PARCELA: TIntegerField
      FieldName = 'SGP_PARCELA'
      Origin = 'SGP_PARCELA'
    end
    object TBSegurosParcelasSGP_SEGURO: TIntegerField
      FieldName = 'SGP_SEGURO'
      Origin = 'SGP_SEGURO'
      Required = True
    end
    object TBSegurosParcelasSGP_STATUS: TStringField
      FieldName = 'SGP_STATUS'
      Origin = 'SGP_STATUS'
      Size = 1
    end
    object TBSegurosParcelasSGP_USUARIO: TStringField
      FieldName = 'SGP_USUARIO'
      Origin = 'SGP_USUARIO'
    end
    object TBSegurosParcelasSGP_VALOR: TFMTBCDField
      FieldName = 'SGP_VALOR'
      Origin = 'SGP_VALOR'
      currency = True
      Precision = 18
    end
  end
  object TRSegurosTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 672
    Top = 392
  end
  object UPSegurosTipos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SEGUROSTIPOS'
      '(SGT_CODIGO, SGT_DESCRICAO, SGT_DTATUALIZACAO, '
      '  SGT_DTCADASTRO, SGT_HRATUALIZACAO, SGT_HRCADASTRO, '
      '  SGT_STATUS, SGT_USUARIO)'
      
        'VALUES (gen_id(GEN_SEGUROSTIPOS,1), :NEW_SGT_DESCRICAO, :NEW_SGT' +
        '_DTATUALIZACAO, '
      
        '  :NEW_SGT_DTCADASTRO, :NEW_SGT_HRATUALIZACAO, :NEW_SGT_HRCADAST' +
        'RO, '
      '  :NEW_SGT_STATUS, :NEW_SGT_USUARIO)'
      
        'RETURNING SGT_CODIGO, SGT_DESCRICAO, SGT_DTATUALIZACAO, SGT_DTCA' +
        'DASTRO, SGT_HRATUALIZACAO, SGT_HRCADASTRO, SGT_STATUS, SGT_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE SEGUROSTIPOS'
      
        'SET SGT_CODIGO = :NEW_SGT_CODIGO, SGT_DESCRICAO = :NEW_SGT_DESCR' +
        'ICAO, '
      
        '  SGT_DTATUALIZACAO = :NEW_SGT_DTATUALIZACAO, SGT_DTCADASTRO = :' +
        'NEW_SGT_DTCADASTRO, '
      
        '  SGT_HRATUALIZACAO = :NEW_SGT_HRATUALIZACAO, SGT_HRCADASTRO = :' +
        'NEW_SGT_HRCADASTRO, '
      '  SGT_STATUS = :NEW_SGT_STATUS, SGT_USUARIO = :NEW_SGT_USUARIO'
      'WHERE SGT_CODIGO = :OLD_SGT_CODIGO'
      
        'RETURNING SGT_CODIGO, SGT_DESCRICAO, SGT_DTATUALIZACAO, SGT_DTCA' +
        'DASTRO, SGT_HRATUALIZACAO, SGT_HRCADASTRO, SGT_STATUS, SGT_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM SEGUROSTIPOS'
      'WHERE SGT_CODIGO = :OLD_SGT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT SGT_CODIGO, SGT_DESCRICAO, SGT_DTATUALIZACAO, SGT_DTCADAS' +
        'TRO, '
      '  SGT_HRATUALIZACAO, SGT_HRCADASTRO, SGT_STATUS, SGT_USUARIO'
      'FROM SEGUROSTIPOS'
      'WHERE SGT_CODIGO = :OLD_SGT_CODIGO')
    Left = 672
    Top = 360
  end
  object TBSegurosTipos: TFDQuery
    BeforeInsert = TBSegurosTiposBeforeInsert
    AfterInsert = TBSegurosTiposAfterInsert
    BeforeEdit = TBSegurosTiposBeforeEdit
    BeforePost = TBSegurosTiposBeforePost
    Connection = DM.FDConnection1
    Transaction = TRSegurosTipos
    UpdateObject = UPSegurosTipos
    SQL.Strings = (
      'select'
      'SGT_CODIGO,'
      'SGT_DESCRICAO,'
      'SGT_DTATUALIZACAO,'
      'SGT_DTCADASTRO,'
      'SGT_HRATUALIZACAO,'
      'SGT_HRCADASTRO,'
      'SGT_STATUS,'
      'SGT_USUARIO'
      'from SEGUROSTIPOS'
      'where SGT_CODIGO=:codigo'
      '')
    Left = 672
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBSegurosTiposSGT_CODIGO: TIntegerField
      FieldName = 'SGT_CODIGO'
      Origin = 'SGT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBSegurosTiposSGT_DESCRICAO: TStringField
      FieldName = 'SGT_DESCRICAO'
      Origin = 'SGT_DESCRICAO'
      Size = 50
    end
    object TBSegurosTiposSGT_DTATUALIZACAO: TDateField
      FieldName = 'SGT_DTATUALIZACAO'
      Origin = 'SGT_DTATUALIZACAO'
    end
    object TBSegurosTiposSGT_DTCADASTRO: TDateField
      FieldName = 'SGT_DTCADASTRO'
      Origin = 'SGT_DTCADASTRO'
    end
    object TBSegurosTiposSGT_HRATUALIZACAO: TTimeField
      FieldName = 'SGT_HRATUALIZACAO'
      Origin = 'SGT_HRATUALIZACAO'
    end
    object TBSegurosTiposSGT_HRCADASTRO: TTimeField
      FieldName = 'SGT_HRCADASTRO'
      Origin = 'SGT_HRCADASTRO'
    end
    object TBSegurosTiposSGT_STATUS: TStringField
      FieldName = 'SGT_STATUS'
      Origin = 'SGT_STATUS'
      Size = 1
    end
    object TBSegurosTiposSGT_USUARIO: TStringField
      FieldName = 'SGT_USUARIO'
      Origin = 'SGT_USUARIO'
    end
  end
  object TRSqls: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 704
    Top = 392
  end
  object UPSqls: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO SQLS'
      '(SQL_CODIGO, SQL_FORM, SQL_QUERY, SQL_USUARIO)'
      
        'VALUES (gen_id(GEN_SQLS,1), :NEW_SQL_FORM, :NEW_SQL_QUERY, :NEW_' +
        'SQL_USUARIO)'
      'RETURNING SQL_CODIGO, SQL_FORM, SQL_QUERY, SQL_USUARIO')
    ModifySQL.Strings = (
      'UPDATE SQLS'
      
        'SET SQL_CODIGO = :NEW_SQL_CODIGO, SQL_FORM = :NEW_SQL_FORM, SQL_' +
        'QUERY = :NEW_SQL_QUERY, '
      '  SQL_USUARIO = :NEW_SQL_USUARIO'
      'WHERE SQL_CODIGO = :OLD_SQL_CODIGO'
      'RETURNING SQL_CODIGO, SQL_FORM, SQL_QUERY, SQL_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM SQLS'
      'WHERE SQL_CODIGO = :OLD_SQL_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT SQL_CODIGO, SQL_FORM, SQL_QUERY, SQL_USUARIO'
      'FROM SQLS'
      'WHERE SQL_CODIGO = :OLD_SQL_CODIGO')
    Left = 704
    Top = 360
  end
  object TBSqls: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRSqls
    UpdateObject = UPSqls
    SQL.Strings = (
      'select'
      'SQL_CODIGO,'
      'SQL_FORM,'
      'SQL_QUERY,'
      'SQL_USUARIO'
      'from SQLS'
      'order by SQL_CODIGO'
      '')
    Left = 704
    Top = 328
    object TBSqlsSQL_CODIGO: TIntegerField
      FieldName = 'SQL_CODIGO'
      Origin = 'SQL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBSqlsSQL_FORM: TStringField
      FieldName = 'SQL_FORM'
      Origin = 'SQL_FORM'
      Size = 80
    end
    object TBSqlsSQL_QUERY: TMemoField
      FieldName = 'SQL_QUERY'
      Origin = 'SQL_QUERY'
      BlobType = ftMemo
    end
    object TBSqlsSQL_USUARIO: TIntegerField
      FieldName = 'SQL_USUARIO'
      Origin = 'SQL_USUARIO'
      Required = True
    end
  end
  object TRTelevendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 736
    Top = 392
  end
  object UPTelevendas: TFDUpdateSQL
    Connection = DM.FDConnection1
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
    Left = 736
    Top = 360
  end
  object TBTelevendas: TFDQuery
    BeforeInsert = TBTelevendasBeforeInsert
    AfterInsert = TBTelevendasAfterInsert
    BeforeEdit = TBTelevendasBeforeEdit
    AfterEdit = TBTelevendasAfterEdit
    BeforePost = TBTelevendasBeforePost
    MasterSource = DM.DSClientes
    MasterFields = 'CLI_CODIGO'
    Connection = DM.FDConnection1
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
      'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO'
      'left join VIAS on TEV_VIA=VIA_CODIGO'
      'left join MOTIVOS on TEV_MOTIVO=MOT_CODIGO'
      'where TEV_CLIENTE=:CLI_CODIGO'
      'order by TEV_DATA desc'
      '')
    Left = 736
    Top = 328
    ParamData = <
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
      EditMask = '!99/99/9999;1;_'
    end
    object TBTelevendasTEV_DATABAIXA: TDateField
      FieldName = 'TEV_DATABAIXA'
      Origin = 'TEV_DATABAIXA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTelevendasTEV_DATAPROX: TDateField
      FieldName = 'TEV_DATAPROX'
      Origin = 'TEV_DATAPROX'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTelevendasTEV_DEMODATA: TDateField
      FieldName = 'TEV_DEMODATA'
      Origin = 'TEV_DEMODATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTelevendasTEV_DEMOHORA: TTimeField
      FieldName = 'TEV_DEMOHORA'
      Origin = 'TEV_DEMOHORA'
      EditMask = '!99:99;1;_'
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
      EditMask = '!00:00:00;1;_'
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
      Size = 80
    end
    object TBTelevendasMOT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOT_DESCRICAO'
      Origin = 'MOT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBTelevendasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBTelevendasVIA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIA_DESCRICAO'
      Origin = 'VIA_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRTurmas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 768
    Top = 392
  end
  object UPTurmas: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO TURMAS'
      '(TUR_ANO, TUR_CARGAHORARIA, TUR_CODIGO, TUR_CURSO, '
      '  TUR_DESCRICAO, TUR_DOMINGO, TUR_DOMINGOVEZES, '
      '  TUR_DTATUALIZACAO, TUR_DTCADASTRO, TUR_DTINICIO, '
      '  TUR_DTTERMINO, TUR_ENCONTROS, TUR_FERIASINICIO, '
      '  TUR_FERIASTERMINO, TUR_HORAAULA, TUR_HORAAULAMIN, '
      '  TUR_HORARIO, TUR_HRATUALIZACAO, TUR_HRCADASTRO, '
      '  TUR_MEDIAMINIMA, TUR_OBSERVACOES, TUR_PERIODO, '
      '  TUR_PROFESSOR, TUR_QUARTA, TUR_QUARTAVEZES, '
      '  TUR_QUINTA, TUR_QUINTAVEZES, TUR_SABADO, '
      '  TUR_SABADOVEZES, TUR_SALA, TUR_SEGUNDA, TUR_SEGUNDAVEZES, '
      '  TUR_SEXTA, TUR_SEXTAVEZES, TUR_STATUS, TUR_TERCA, '
      '  TUR_TERCAVEZES, TUR_USUARIO)'
      
        'VALUES (:NEW_TUR_ANO, :NEW_TUR_CARGAHORARIA, gen_id(GEN_TURMAS,1' +
        '), :NEW_TUR_CURSO, '
      '  :NEW_TUR_DESCRICAO, :NEW_TUR_DOMINGO, :NEW_TUR_DOMINGOVEZES, '
      
        '  :NEW_TUR_DTATUALIZACAO, :NEW_TUR_DTCADASTRO, :NEW_TUR_DTINICIO' +
        ', '
      
        '  :NEW_TUR_DTTERMINO, :NEW_TUR_ENCONTROS, :NEW_TUR_FERIASINICIO,' +
        ' '
      
        '  :NEW_TUR_FERIASTERMINO, :NEW_TUR_HORAAULA, :NEW_TUR_HORAAULAMI' +
        'N, '
      
        '  :NEW_TUR_HORARIO, :NEW_TUR_HRATUALIZACAO, :NEW_TUR_HRCADASTRO,' +
        ' '
      '  :NEW_TUR_MEDIAMINIMA, :NEW_TUR_OBSERVACOES, :NEW_TUR_PERIODO, '
      '  :NEW_TUR_PROFESSOR, :NEW_TUR_QUARTA, :NEW_TUR_QUARTAVEZES, '
      '  :NEW_TUR_QUINTA, :NEW_TUR_QUINTAVEZES, :NEW_TUR_SABADO, '
      
        '  :NEW_TUR_SABADOVEZES, :NEW_TUR_SALA, :NEW_TUR_SEGUNDA, :NEW_TU' +
        'R_SEGUNDAVEZES, '
      
        '  :NEW_TUR_SEXTA, :NEW_TUR_SEXTAVEZES, :NEW_TUR_STATUS, :NEW_TUR' +
        '_TERCA, '
      '  :NEW_TUR_TERCAVEZES, :NEW_TUR_USUARIO)'
      
        'RETURNING TUR_ANO, TUR_CARGAHORARIA, TUR_CODIGO, TUR_CURSO, TUR_' +
        'DESCRICAO, TUR_DOMINGO, TUR_DOMINGOVEZES, TUR_DTATUALIZACAO, TUR' +
        '_DTCADASTRO, TUR_DTINICIO, TUR_DTTERMINO, TUR_ENCONTROS, TUR_FER' +
        'IASINICIO, TUR_FERIASTERMINO, TUR_HORAAULA, TUR_HORAAULAMIN, TUR' +
        '_HORARIO, TUR_HRATUALIZACAO, TUR_HRCADASTRO, TUR_MEDIAMINIMA, TU' +
        'R_OBSERVACOES, TUR_PERIODO, TUR_PROFESSOR, TUR_QUARTA, TUR_QUART' +
        'AVEZES, TUR_QUINTA, TUR_QUINTAVEZES, TUR_SABADO, TUR_SABADOVEZES' +
        ', TUR_SALA, TUR_SEGUNDA, TUR_SEGUNDAVEZES, TUR_SEXTA, TUR_SEXTAV' +
        'EZES, TUR_STATUS, TUR_TERCA, TUR_TERCAVEZES, TUR_USUARIO')
    ModifySQL.Strings = (
      'UPDATE TURMAS'
      
        'SET TUR_ANO = :NEW_TUR_ANO, TUR_CARGAHORARIA = :NEW_TUR_CARGAHOR' +
        'ARIA, '
      '  TUR_CODIGO = :NEW_TUR_CODIGO, TUR_CURSO = :NEW_TUR_CURSO, '
      
        '  TUR_DESCRICAO = :NEW_TUR_DESCRICAO, TUR_DOMINGO = :NEW_TUR_DOM' +
        'INGO, '
      
        '  TUR_DOMINGOVEZES = :NEW_TUR_DOMINGOVEZES, TUR_DTATUALIZACAO = ' +
        ':NEW_TUR_DTATUALIZACAO, '
      
        '  TUR_DTCADASTRO = :NEW_TUR_DTCADASTRO, TUR_DTINICIO = :NEW_TUR_' +
        'DTINICIO, '
      
        '  TUR_DTTERMINO = :NEW_TUR_DTTERMINO, TUR_ENCONTROS = :NEW_TUR_E' +
        'NCONTROS, '
      
        '  TUR_FERIASINICIO = :NEW_TUR_FERIASINICIO, TUR_FERIASTERMINO = ' +
        ':NEW_TUR_FERIASTERMINO, '
      
        '  TUR_HORAAULA = :NEW_TUR_HORAAULA, TUR_HORAAULAMIN = :NEW_TUR_H' +
        'ORAAULAMIN, '
      
        '  TUR_HORARIO = :NEW_TUR_HORARIO, TUR_HRATUALIZACAO = :NEW_TUR_H' +
        'RATUALIZACAO, '
      
        '  TUR_HRCADASTRO = :NEW_TUR_HRCADASTRO, TUR_MEDIAMINIMA = :NEW_T' +
        'UR_MEDIAMINIMA, '
      
        '  TUR_OBSERVACOES = :NEW_TUR_OBSERVACOES, TUR_PERIODO = :NEW_TUR' +
        '_PERIODO, '
      
        '  TUR_PROFESSOR = :NEW_TUR_PROFESSOR, TUR_QUARTA = :NEW_TUR_QUAR' +
        'TA, '
      
        '  TUR_QUARTAVEZES = :NEW_TUR_QUARTAVEZES, TUR_QUINTA = :NEW_TUR_' +
        'QUINTA, '
      
        '  TUR_QUINTAVEZES = :NEW_TUR_QUINTAVEZES, TUR_SABADO = :NEW_TUR_' +
        'SABADO, '
      
        '  TUR_SABADOVEZES = :NEW_TUR_SABADOVEZES, TUR_SALA = :NEW_TUR_SA' +
        'LA, '
      
        '  TUR_SEGUNDA = :NEW_TUR_SEGUNDA, TUR_SEGUNDAVEZES = :NEW_TUR_SE' +
        'GUNDAVEZES, '
      
        '  TUR_SEXTA = :NEW_TUR_SEXTA, TUR_SEXTAVEZES = :NEW_TUR_SEXTAVEZ' +
        'ES, '
      '  TUR_STATUS = :NEW_TUR_STATUS, TUR_TERCA = :NEW_TUR_TERCA, '
      
        '  TUR_TERCAVEZES = :NEW_TUR_TERCAVEZES, TUR_USUARIO = :NEW_TUR_U' +
        'SUARIO'
      'WHERE TUR_CODIGO = :OLD_TUR_CODIGO'
      
        'RETURNING TUR_ANO, TUR_CARGAHORARIA, TUR_CODIGO, TUR_CURSO, TUR_' +
        'DESCRICAO, TUR_DOMINGO, TUR_DOMINGOVEZES, TUR_DTATUALIZACAO, TUR' +
        '_DTCADASTRO, TUR_DTINICIO, TUR_DTTERMINO, TUR_ENCONTROS, TUR_FER' +
        'IASINICIO, TUR_FERIASTERMINO, TUR_HORAAULA, TUR_HORAAULAMIN, TUR' +
        '_HORARIO, TUR_HRATUALIZACAO, TUR_HRCADASTRO, TUR_MEDIAMINIMA, TU' +
        'R_OBSERVACOES, TUR_PERIODO, TUR_PROFESSOR, TUR_QUARTA, TUR_QUART' +
        'AVEZES, TUR_QUINTA, TUR_QUINTAVEZES, TUR_SABADO, TUR_SABADOVEZES' +
        ', TUR_SALA, TUR_SEGUNDA, TUR_SEGUNDAVEZES, TUR_SEXTA, TUR_SEXTAV' +
        'EZES, TUR_STATUS, TUR_TERCA, TUR_TERCAVEZES, TUR_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM TURMAS'
      'WHERE TUR_CODIGO = :OLD_TUR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT TUR_ANO, TUR_CARGAHORARIA, TUR_CODIGO, TUR_CURSO, TUR_DES' +
        'CRICAO, '
      
        '  TUR_DOMINGO, TUR_DOMINGOVEZES, TUR_DTATUALIZACAO, TUR_DTCADAST' +
        'RO, '
      '  TUR_DTINICIO, TUR_DTTERMINO, TUR_ENCONTROS, TUR_FERIASINICIO, '
      
        '  TUR_FERIASTERMINO, TUR_HORAAULA, TUR_HORAAULAMIN, TUR_HORARIO,' +
        ' '
      
        '  TUR_HRATUALIZACAO, TUR_HRCADASTRO, TUR_MEDIAMINIMA, TUR_OBSERV' +
        'ACOES, '
      '  TUR_PERIODO, TUR_PROFESSOR, TUR_QUARTA, TUR_QUARTAVEZES, '
      '  TUR_QUINTA, TUR_QUINTAVEZES, TUR_SABADO, TUR_SABADOVEZES, '
      
        '  TUR_SALA, TUR_SEGUNDA, TUR_SEGUNDAVEZES, TUR_SEXTA, TUR_SEXTAV' +
        'EZES, '
      '  TUR_STATUS, TUR_TERCA, TUR_TERCAVEZES, TUR_USUARIO'
      'FROM TURMAS'
      'WHERE TUR_CODIGO = :OLD_TUR_CODIGO')
    Left = 768
    Top = 360
  end
  object TBTurmas: TFDQuery
    BeforeInsert = TBTurmasBeforeInsert
    AfterInsert = TBTurmasAfterInsert
    BeforeEdit = TBTurmasBeforeEdit
    BeforePost = TBTurmasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRTurmas
    UpdateObject = UPTurmas
    SQL.Strings = (
      'select'
      'TUR_ANO,'
      'TUR_CARGAHORARIA,'
      'TUR_CODIGO,'
      'TUR_CURSO,'
      'TUR_DESCRICAO,'
      'TUR_DOMINGO,'
      'TUR_DOMINGOVEZES,'
      'TUR_DTATUALIZACAO,'
      'TUR_DTCADASTRO,'
      'TUR_DTINICIO,'
      'TUR_DTTERMINO,'
      'TUR_ENCONTROS,'
      'TUR_FERIASINICIO,'
      'TUR_FERIASTERMINO,'
      'TUR_HORAAULA,'
      'TUR_HORAAULAMIN,'
      'TUR_HORARIO,'
      'TUR_HRATUALIZACAO,'
      'TUR_HRCADASTRO,'
      'TUR_MEDIAMINIMA,'
      'TUR_OBSERVACOES,'
      'TUR_PERIODO,'
      'TUR_PROFESSOR,'
      'TUR_QUARTA,'
      'TUR_QUARTAVEZES,'
      'TUR_QUINTA,'
      'TUR_QUINTAVEZES,'
      'TUR_SABADO,'
      'TUR_SABADOVEZES,'
      'TUR_SALA,'
      'TUR_SEGUNDA,'
      'TUR_SEGUNDAVEZES,'
      'TUR_SEXTA,'
      'TUR_SEXTAVEZES,'
      'TUR_STATUS,'
      'TUR_TERCA,'
      'TUR_TERCAVEZES,'
      'TUR_USUARIO,'
      'CUR_DESCRICAO,'
      'VEN_NOME'
      'from TURMAS'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'left join CURSOS on TUR_CURSO=CUR_CODIGO'
      'where TUR_CODIGO=:codigo'
      '')
    Left = 768
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBTurmasTUR_ANO: TStringField
      FieldName = 'TUR_ANO'
      Origin = 'TUR_ANO'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBTurmasTUR_CARGAHORARIA: TStringField
      FieldName = 'TUR_CARGAHORARIA'
      Origin = 'TUR_CARGAHORARIA'
      Size = 25
    end
    object TBTurmasTUR_CODIGO: TIntegerField
      FieldName = 'TUR_CODIGO'
      Origin = 'TUR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTurmasTUR_CURSO: TIntegerField
      FieldName = 'TUR_CURSO'
      Origin = 'TUR_CURSO'
      Required = True
    end
    object TBTurmasTUR_DESCRICAO: TStringField
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      Size = 50
    end
    object TBTurmasTUR_DOMINGO: TStringField
      FieldName = 'TUR_DOMINGO'
      Origin = 'TUR_DOMINGO'
      Size = 1
    end
    object TBTurmasTUR_DOMINGOVEZES: TIntegerField
      FieldName = 'TUR_DOMINGOVEZES'
      Origin = 'TUR_DOMINGOVEZES'
    end
    object TBTurmasTUR_DTATUALIZACAO: TDateField
      FieldName = 'TUR_DTATUALIZACAO'
      Origin = 'TUR_DTATUALIZACAO'
    end
    object TBTurmasTUR_DTCADASTRO: TDateField
      FieldName = 'TUR_DTCADASTRO'
      Origin = 'TUR_DTCADASTRO'
    end
    object TBTurmasTUR_DTINICIO: TDateField
      FieldName = 'TUR_DTINICIO'
      Origin = 'TUR_DTINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_DTTERMINO: TDateField
      FieldName = 'TUR_DTTERMINO'
      Origin = 'TUR_DTTERMINO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_ENCONTROS: TIntegerField
      FieldName = 'TUR_ENCONTROS'
      Origin = 'TUR_ENCONTROS'
    end
    object TBTurmasTUR_FERIASINICIO: TDateField
      FieldName = 'TUR_FERIASINICIO'
      Origin = 'TUR_FERIASINICIO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_FERIASTERMINO: TDateField
      FieldName = 'TUR_FERIASTERMINO'
      Origin = 'TUR_FERIASTERMINO'
      EditMask = '!99/99/9999;1;_'
    end
    object TBTurmasTUR_HORAAULA: TTimeField
      FieldName = 'TUR_HORAAULA'
      Origin = 'TUR_HORAAULA'
      EditMask = '!00:00:00;1;_'
    end
    object TBTurmasTUR_HORAAULAMIN: TIntegerField
      FieldName = 'TUR_HORAAULAMIN'
      Origin = 'TUR_HORAAULAMIN'
    end
    object TBTurmasTUR_HORARIO: TStringField
      FieldName = 'TUR_HORARIO'
      Origin = 'TUR_HORARIO'
      Size = 25
    end
    object TBTurmasTUR_HRATUALIZACAO: TTimeField
      FieldName = 'TUR_HRATUALIZACAO'
      Origin = 'TUR_HRATUALIZACAO'
    end
    object TBTurmasTUR_HRCADASTRO: TTimeField
      FieldName = 'TUR_HRCADASTRO'
      Origin = 'TUR_HRCADASTRO'
    end
    object TBTurmasTUR_MEDIAMINIMA: TFMTBCDField
      FieldName = 'TUR_MEDIAMINIMA'
      Origin = 'TUR_MEDIAMINIMA'
      Precision = 18
    end
    object TBTurmasTUR_OBSERVACOES: TMemoField
      FieldName = 'TUR_OBSERVACOES'
      Origin = 'TUR_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBTurmasTUR_PERIODO: TIntegerField
      FieldName = 'TUR_PERIODO'
      Origin = 'TUR_PERIODO'
    end
    object TBTurmasTUR_PROFESSOR: TIntegerField
      FieldName = 'TUR_PROFESSOR'
      Origin = 'TUR_PROFESSOR'
      Required = True
    end
    object TBTurmasTUR_QUARTA: TStringField
      FieldName = 'TUR_QUARTA'
      Origin = 'TUR_QUARTA'
      Size = 1
    end
    object TBTurmasTUR_QUARTAVEZES: TIntegerField
      FieldName = 'TUR_QUARTAVEZES'
      Origin = 'TUR_QUARTAVEZES'
    end
    object TBTurmasTUR_QUINTA: TStringField
      FieldName = 'TUR_QUINTA'
      Origin = 'TUR_QUINTA'
      Size = 1
    end
    object TBTurmasTUR_QUINTAVEZES: TIntegerField
      FieldName = 'TUR_QUINTAVEZES'
      Origin = 'TUR_QUINTAVEZES'
    end
    object TBTurmasTUR_SABADO: TStringField
      FieldName = 'TUR_SABADO'
      Origin = 'TUR_SABADO'
      Size = 1
    end
    object TBTurmasTUR_SABADOVEZES: TIntegerField
      FieldName = 'TUR_SABADOVEZES'
      Origin = 'TUR_SABADOVEZES'
    end
    object TBTurmasTUR_SALA: TStringField
      FieldName = 'TUR_SALA'
      Origin = 'TUR_SALA'
      Size = 50
    end
    object TBTurmasTUR_SEGUNDA: TStringField
      FieldName = 'TUR_SEGUNDA'
      Origin = 'TUR_SEGUNDA'
      Size = 1
    end
    object TBTurmasTUR_SEGUNDAVEZES: TIntegerField
      FieldName = 'TUR_SEGUNDAVEZES'
      Origin = 'TUR_SEGUNDAVEZES'
    end
    object TBTurmasTUR_SEXTA: TStringField
      FieldName = 'TUR_SEXTA'
      Origin = 'TUR_SEXTA'
      Size = 1
    end
    object TBTurmasTUR_SEXTAVEZES: TIntegerField
      FieldName = 'TUR_SEXTAVEZES'
      Origin = 'TUR_SEXTAVEZES'
    end
    object TBTurmasTUR_STATUS: TStringField
      FieldName = 'TUR_STATUS'
      Origin = 'TUR_STATUS'
      Size = 1
    end
    object TBTurmasTUR_TERCA: TStringField
      FieldName = 'TUR_TERCA'
      Origin = 'TUR_TERCA'
      Size = 1
    end
    object TBTurmasTUR_TERCAVEZES: TIntegerField
      FieldName = 'TUR_TERCAVEZES'
      Origin = 'TUR_TERCAVEZES'
    end
    object TBTurmasTUR_USUARIO: TStringField
      FieldName = 'TUR_USUARIO'
      Origin = 'TUR_USUARIO'
    end
    object TBTurmasCUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUR_DESCRICAO'
      Origin = 'CUR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBTurmasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRUnidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 800
    Top = 392
  end
  object UPUnidades: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO UNIDADES'
      '(UNI_ATUALIZAR, UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALIZACAO, '
      '  UNI_DTCADASTRO, UNI_HRATUALIZACAO, UNI_HRCADASTRO, '
      '  UNI_USUARIO)'
      
        'VALUES (:NEW_UNI_ATUALIZAR, :NEW_UNI_CODIGO, :NEW_UNI_DESCRICAO,' +
        ' :NEW_UNI_DTATUALIZACAO, '
      
        '  :NEW_UNI_DTCADASTRO, :NEW_UNI_HRATUALIZACAO, :NEW_UNI_HRCADAST' +
        'RO, '
      '  :NEW_UNI_USUARIO)'
      
        'RETURNING UNI_ATUALIZAR, UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALI' +
        'ZACAO, UNI_DTCADASTRO, UNI_HRATUALIZACAO, UNI_HRCADASTRO, UNI_US' +
        'UARIO')
    ModifySQL.Strings = (
      'UPDATE UNIDADES'
      
        'SET UNI_ATUALIZAR = :NEW_UNI_ATUALIZAR, UNI_CODIGO = :NEW_UNI_CO' +
        'DIGO, '
      
        '  UNI_DESCRICAO = :NEW_UNI_DESCRICAO, UNI_DTATUALIZACAO = :NEW_U' +
        'NI_DTATUALIZACAO, '
      
        '  UNI_DTCADASTRO = :NEW_UNI_DTCADASTRO, UNI_HRATUALIZACAO = :NEW' +
        '_UNI_HRATUALIZACAO, '
      
        '  UNI_HRCADASTRO = :NEW_UNI_HRCADASTRO, UNI_USUARIO = :NEW_UNI_U' +
        'SUARIO'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO'
      
        'RETURNING UNI_ATUALIZAR, UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALI' +
        'ZACAO, UNI_DTCADASTRO, UNI_HRATUALIZACAO, UNI_HRCADASTRO, UNI_US' +
        'UARIO')
    DeleteSQL.Strings = (
      'DELETE FROM UNIDADES'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT UNI_ATUALIZAR, UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALIZAC' +
        'AO, '
      '  UNI_DTCADASTRO, UNI_HRATUALIZACAO, UNI_HRCADASTRO, UNI_USUARIO'
      'FROM UNIDADES'
      'WHERE UNI_CODIGO = :OLD_UNI_CODIGO')
    Left = 800
    Top = 360
  end
  object TBUnidades: TFDQuery
    BeforeInsert = TBUnidadesBeforeInsert
    AfterInsert = TBUnidadesAfterInsert
    BeforeEdit = TBUnidadesBeforeEdit
    BeforePost = TBUnidadesBeforePost
    Connection = DM.FDConnection1
    Transaction = TRUnidades
    UpdateObject = UPUnidades
    SQL.Strings = (
      'select'
      'UNI_ATUALIZAR,'
      'UNI_CODIGO,'
      'UNI_DESCRICAO,'
      'UNI_DTATUALIZACAO,'
      'UNI_DTCADASTRO,'
      'UNI_HRATUALIZACAO,'
      'UNI_HRCADASTRO,'
      'UNI_USUARIO'
      'from UNIDADES'
      'where UNI_CODIGO=:codigo'
      '')
    Left = 800
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
    object TBUnidadesUNI_ATUALIZAR: TStringField
      FieldName = 'UNI_ATUALIZAR'
      Origin = 'UNI_ATUALIZAR'
      Size = 1
    end
    object TBUnidadesUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      Origin = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object TBUnidadesUNI_DESCRICAO: TStringField
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      Size = 50
    end
    object TBUnidadesUNI_DTATUALIZACAO: TDateField
      FieldName = 'UNI_DTATUALIZACAO'
      Origin = 'UNI_DTATUALIZACAO'
    end
    object TBUnidadesUNI_DTCADASTRO: TDateField
      FieldName = 'UNI_DTCADASTRO'
      Origin = 'UNI_DTCADASTRO'
    end
    object TBUnidadesUNI_HRATUALIZACAO: TTimeField
      FieldName = 'UNI_HRATUALIZACAO'
      Origin = 'UNI_HRATUALIZACAO'
    end
    object TBUnidadesUNI_HRCADASTRO: TTimeField
      FieldName = 'UNI_HRCADASTRO'
      Origin = 'UNI_HRCADASTRO'
    end
    object TBUnidadesUNI_USUARIO: TStringField
      FieldName = 'UNI_USUARIO'
      Origin = 'UNI_USUARIO'
    end
  end
  object TRVeiculos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 392
  end
  object UPVeiculos: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VEICULOS'
      '(VEL_CODIGO, VEL_DESCRICAO, VEL_DTATUALIZACAO, '
      '  VEL_DTCADASTRO, VEL_HRATUALIZACAO, VEL_HRCADASTRO, '
      '  VEL_STATUS, VEL_USUARIO)'
      
        'VALUES (gen_id(GEN_VEICULOS,1), :NEW_VEL_DESCRICAO, :NEW_VEL_DTA' +
        'TUALIZACAO, '
      
        '  :NEW_VEL_DTCADASTRO, :NEW_VEL_HRATUALIZACAO, :NEW_VEL_HRCADAST' +
        'RO, '
      '  :NEW_VEL_STATUS, :NEW_VEL_USUARIO)'
      
        'RETURNING VEL_CODIGO, VEL_DESCRICAO, VEL_DTATUALIZACAO, VEL_DTCA' +
        'DASTRO, VEL_HRATUALIZACAO, VEL_HRCADASTRO, VEL_STATUS, VEL_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE VEICULOS'
      
        'SET VEL_CODIGO = :NEW_VEL_CODIGO, VEL_DESCRICAO = :NEW_VEL_DESCR' +
        'ICAO, '
      
        '  VEL_DTATUALIZACAO = :NEW_VEL_DTATUALIZACAO, VEL_DTCADASTRO = :' +
        'NEW_VEL_DTCADASTRO, '
      
        '  VEL_HRATUALIZACAO = :NEW_VEL_HRATUALIZACAO, VEL_HRCADASTRO = :' +
        'NEW_VEL_HRCADASTRO, '
      '  VEL_STATUS = :NEW_VEL_STATUS, VEL_USUARIO = :NEW_VEL_USUARIO'
      'WHERE VEL_CODIGO = :OLD_VEL_CODIGO'
      
        'RETURNING VEL_CODIGO, VEL_DESCRICAO, VEL_DTATUALIZACAO, VEL_DTCA' +
        'DASTRO, VEL_HRATUALIZACAO, VEL_HRCADASTRO, VEL_STATUS, VEL_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM VEICULOS'
      'WHERE VEL_CODIGO = :OLD_VEL_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEL_CODIGO, VEL_DESCRICAO, VEL_DTATUALIZACAO, VEL_DTCADAS' +
        'TRO, '
      '  VEL_HRATUALIZACAO, VEL_HRCADASTRO, VEL_STATUS, VEL_USUARIO'
      'FROM VEICULOS'
      'WHERE VEL_CODIGO = :OLD_VEL_CODIGO')
    Left = 832
    Top = 360
  end
  object TBVeiculos: TFDQuery
    BeforeInsert = TBVeiculosBeforeInsert
    AfterInsert = TBVeiculosAfterInsert
    BeforeEdit = TBVeiculosBeforeEdit
    BeforePost = TBVeiculosBeforePost
    Connection = DM.FDConnection1
    Transaction = TRVeiculos
    UpdateObject = UPVeiculos
    SQL.Strings = (
      'select'
      'VEL_CODIGO,'
      'VEL_DESCRICAO,'
      'VEL_DTATUALIZACAO,'
      'VEL_DTCADASTRO,'
      'VEL_HRATUALIZACAO,'
      'VEL_HRCADASTRO,'
      'VEL_STATUS,'
      'VEL_USUARIO'
      'from VEICULOS'
      'where VEL_CODIGO=:codigo'
      '')
    Left = 832
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBVeiculosVEL_CODIGO: TIntegerField
      FieldName = 'VEL_CODIGO'
      Origin = 'VEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVeiculosVEL_DESCRICAO: TStringField
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      Size = 50
    end
    object TBVeiculosVEL_DTATUALIZACAO: TDateField
      FieldName = 'VEL_DTATUALIZACAO'
      Origin = 'VEL_DTATUALIZACAO'
    end
    object TBVeiculosVEL_DTCADASTRO: TDateField
      FieldName = 'VEL_DTCADASTRO'
      Origin = 'VEL_DTCADASTRO'
    end
    object TBVeiculosVEL_HRATUALIZACAO: TTimeField
      FieldName = 'VEL_HRATUALIZACAO'
      Origin = 'VEL_HRATUALIZACAO'
    end
    object TBVeiculosVEL_HRCADASTRO: TTimeField
      FieldName = 'VEL_HRCADASTRO'
      Origin = 'VEL_HRCADASTRO'
    end
    object TBVeiculosVEL_STATUS: TStringField
      FieldName = 'VEL_STATUS'
      Origin = 'VEL_STATUS'
      Size = 1
    end
    object TBVeiculosVEL_USUARIO: TStringField
      FieldName = 'VEL_USUARIO'
      Origin = 'VEL_USUARIO'
    end
  end
  object TRVeiculosCliente: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 864
    Top = 392
  end
  object UPVeiculosCliente: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VEICULOSCLIENTE'
      '(VEC_ANOFAB, VEC_ANOMOD, VEC_CATEGORIA, VEC_CLIENTE, '
      '  VEC_CODIGO, VEC_COMBUSTIVEL, VEC_COR, VEC_DTATUALIZACAO, '
      '  VEC_DTCADASTRO, VEC_DTVENDA, VEC_EXPROPRIETARIO, '
      '  VEC_HRATUALIZACAO, VEC_HRCADASTRO, VEC_KM, '
      '  VEC_MESA, VEC_OBSERVACOES, VEC_OPCIONAIS, '
      '  VEC_PLACA, VEC_RENAVAN, VEC_TIPO, VEC_USUARIO, '
      '  VEC_VALORVENDA, VEC_VEICULO)'
      
        'VALUES (:NEW_VEC_ANOFAB, :NEW_VEC_ANOMOD, :NEW_VEC_CATEGORIA, :N' +
        'EW_VEC_CLIENTE, '
      
        '  gen_id(GEN_VEICULOSCLIENTE,1), :NEW_VEC_COMBUSTIVEL, :NEW_VEC_' +
        'COR, :NEW_VEC_DTATUALIZACAO, '
      
        '  :NEW_VEC_DTCADASTRO, :NEW_VEC_DTVENDA, :NEW_VEC_EXPROPRIETARIO' +
        ', '
      '  :NEW_VEC_HRATUALIZACAO, :NEW_VEC_HRCADASTRO, :NEW_VEC_KM, '
      '  :NEW_VEC_MESA, :NEW_VEC_OBSERVACOES, :NEW_VEC_OPCIONAIS, '
      
        '  :NEW_VEC_PLACA, :NEW_VEC_RENAVAN, :NEW_VEC_TIPO, :NEW_VEC_USUA' +
        'RIO, '
      '  :NEW_VEC_VALORVENDA, :NEW_VEC_VEICULO)'
      
        'RETURNING VEC_ANOFAB, VEC_ANOMOD, VEC_CATEGORIA, VEC_CLIENTE, VE' +
        'C_CODIGO, VEC_COMBUSTIVEL, VEC_COR, VEC_DTATUALIZACAO, VEC_DTCAD' +
        'ASTRO, VEC_DTVENDA, VEC_EXPROPRIETARIO, VEC_HRATUALIZACAO, VEC_H' +
        'RCADASTRO, VEC_KM, VEC_MESA, VEC_OBSERVACOES, VEC_OPCIONAIS, VEC' +
        '_PLACA, VEC_RENAVAN, VEC_TIPO, VEC_USUARIO, VEC_VALORVENDA, VEC_' +
        'VEICULO')
    ModifySQL.Strings = (
      'UPDATE VEICULOSCLIENTE'
      'SET VEC_ANOFAB = :NEW_VEC_ANOFAB, VEC_ANOMOD = :NEW_VEC_ANOMOD, '
      
        '  VEC_CATEGORIA = :NEW_VEC_CATEGORIA, VEC_CLIENTE = :NEW_VEC_CLI' +
        'ENTE, '
      
        '  VEC_CODIGO = :NEW_VEC_CODIGO, VEC_COMBUSTIVEL = :NEW_VEC_COMBU' +
        'STIVEL, '
      
        '  VEC_COR = :NEW_VEC_COR, VEC_DTATUALIZACAO = :NEW_VEC_DTATUALIZ' +
        'ACAO, '
      
        '  VEC_DTCADASTRO = :NEW_VEC_DTCADASTRO, VEC_DTVENDA = :NEW_VEC_D' +
        'TVENDA, '
      
        '  VEC_EXPROPRIETARIO = :NEW_VEC_EXPROPRIETARIO, VEC_HRATUALIZACA' +
        'O = :NEW_VEC_HRATUALIZACAO, '
      '  VEC_HRCADASTRO = :NEW_VEC_HRCADASTRO, VEC_KM = :NEW_VEC_KM, '
      
        '  VEC_MESA = :NEW_VEC_MESA, VEC_OBSERVACOES = :NEW_VEC_OBSERVACO' +
        'ES, '
      
        '  VEC_OPCIONAIS = :NEW_VEC_OPCIONAIS, VEC_PLACA = :NEW_VEC_PLACA' +
        ', '
      '  VEC_RENAVAN = :NEW_VEC_RENAVAN, VEC_TIPO = :NEW_VEC_TIPO, '
      
        '  VEC_USUARIO = :NEW_VEC_USUARIO, VEC_VALORVENDA = :NEW_VEC_VALO' +
        'RVENDA, '
      '  VEC_VEICULO = :NEW_VEC_VEICULO'
      'WHERE VEC_CODIGO = :OLD_VEC_CODIGO'
      
        'RETURNING VEC_ANOFAB, VEC_ANOMOD, VEC_CATEGORIA, VEC_CLIENTE, VE' +
        'C_CODIGO, VEC_COMBUSTIVEL, VEC_COR, VEC_DTATUALIZACAO, VEC_DTCAD' +
        'ASTRO, VEC_DTVENDA, VEC_EXPROPRIETARIO, VEC_HRATUALIZACAO, VEC_H' +
        'RCADASTRO, VEC_KM, VEC_MESA, VEC_OBSERVACOES, VEC_OPCIONAIS, VEC' +
        '_PLACA, VEC_RENAVAN, VEC_TIPO, VEC_USUARIO, VEC_VALORVENDA, VEC_' +
        'VEICULO')
    DeleteSQL.Strings = (
      'DELETE FROM VEICULOSCLIENTE'
      'WHERE VEC_CODIGO = :OLD_VEC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEC_ANOFAB, VEC_ANOMOD, VEC_CATEGORIA, VEC_CLIENTE, VEC_C' +
        'ODIGO, '
      '  VEC_COMBUSTIVEL, VEC_COR, VEC_DTATUALIZACAO, VEC_DTCADASTRO, '
      
        '  VEC_DTVENDA, VEC_EXPROPRIETARIO, VEC_HRATUALIZACAO, VEC_HRCADA' +
        'STRO, '
      '  VEC_KM, VEC_MESA, VEC_OBSERVACOES, VEC_OPCIONAIS, VEC_PLACA, '
      
        '  VEC_RENAVAN, VEC_TIPO, VEC_USUARIO, VEC_VALORVENDA, VEC_VEICUL' +
        'O'
      'FROM VEICULOSCLIENTE'
      'WHERE VEC_CODIGO = :OLD_VEC_CODIGO')
    Left = 864
    Top = 360
  end
  object TBVeiculosCliente: TFDQuery
    BeforeInsert = TBVeiculosClienteBeforeInsert
    AfterInsert = TBVeiculosClienteAfterInsert
    BeforeEdit = TBVeiculosClienteBeforeEdit
    BeforePost = TBVeiculosClienteBeforePost
    MasterSource = DM.DSClientes
    MasterFields = 'CLI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TRVeiculosCliente
    UpdateObject = UPVeiculosCliente
    SQL.Strings = (
      'select '
      'VEC_ANOFAB, '
      'VEC_ANOMOD, '
      'VEC_CATEGORIA, '
      'VEC_CLIENTE, '
      'VEC_CODIGO, '
      'VEC_COMBUSTIVEL, '
      'VEC_COR,'
      'VEC_DTATUALIZACAO,'
      'VEC_DTCADASTRO,'
      'VEC_DTVENDA, '
      'VEC_EXPROPRIETARIO, '
      'VEC_HRATUALIZACAO,'
      'VEC_HRCADASTRO,'
      'VEC_KM, '
      'VEC_MESA,'
      'VEC_OBSERVACOES, '
      'VEC_OPCIONAIS,'
      'VEC_PLACA, '
      'VEC_RENAVAN,'
      'VEC_TIPO, '
      'VEC_USUARIO, '
      'VEC_VALORVENDA, '
      'VEC_VEICULO,'
      'VEL_DESCRICAO '
      'from VEICULOSCLIENTE'
      'left join VEICULOS on VEC_VEICULO=VEL_CODIGO'
      'where VEC_CLIENTE=:CLI_CODIGO'
      'order by VEC_DTVENDA desc'
      '')
    Left = 864
    Top = 328
    ParamData = <
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBVeiculosClienteVEC_ANOFAB: TStringField
      FieldName = 'VEC_ANOFAB'
      Origin = 'VEC_ANOFAB'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosClienteVEC_ANOMOD: TStringField
      FieldName = 'VEC_ANOMOD'
      Origin = 'VEC_ANOMOD'
      EditMask = '9999;1;_'
      Size = 4
    end
    object TBVeiculosClienteVEC_CATEGORIA: TStringField
      FieldName = 'VEC_CATEGORIA'
      Origin = 'VEC_CATEGORIA'
      Size = 1
    end
    object TBVeiculosClienteVEC_CLIENTE: TIntegerField
      FieldName = 'VEC_CLIENTE'
      Origin = 'VEC_CLIENTE'
      Required = True
    end
    object TBVeiculosClienteVEC_CODIGO: TIntegerField
      FieldName = 'VEC_CODIGO'
      Origin = 'VEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBVeiculosClienteVEC_COMBUSTIVEL: TStringField
      FieldName = 'VEC_COMBUSTIVEL'
      Origin = 'VEC_COMBUSTIVEL'
      Size = 30
    end
    object TBVeiculosClienteVEC_COR: TStringField
      FieldName = 'VEC_COR'
      Origin = 'VEC_COR'
    end
    object TBVeiculosClienteVEC_DTATUALIZACAO: TDateField
      FieldName = 'VEC_DTATUALIZACAO'
      Origin = 'VEC_DTATUALIZACAO'
    end
    object TBVeiculosClienteVEC_DTCADASTRO: TDateField
      FieldName = 'VEC_DTCADASTRO'
      Origin = 'VEC_DTCADASTRO'
    end
    object TBVeiculosClienteVEC_DTVENDA: TDateField
      FieldName = 'VEC_DTVENDA'
      Origin = 'VEC_DTVENDA'
      EditMask = '!99/99/9999;1;_'
    end
    object TBVeiculosClienteVEC_EXPROPRIETARIO: TStringField
      FieldName = 'VEC_EXPROPRIETARIO'
      Origin = 'VEC_EXPROPRIETARIO'
      Size = 80
    end
    object TBVeiculosClienteVEC_HRATUALIZACAO: TTimeField
      FieldName = 'VEC_HRATUALIZACAO'
      Origin = 'VEC_HRATUALIZACAO'
    end
    object TBVeiculosClienteVEC_HRCADASTRO: TTimeField
      FieldName = 'VEC_HRCADASTRO'
      Origin = 'VEC_HRCADASTRO'
    end
    object TBVeiculosClienteVEC_KM: TIntegerField
      FieldName = 'VEC_KM'
      Origin = 'VEC_KM'
    end
    object TBVeiculosClienteVEC_MESA: TStringField
      FieldName = 'VEC_MESA'
      Origin = 'VEC_MESA'
    end
    object TBVeiculosClienteVEC_OBSERVACOES: TMemoField
      FieldName = 'VEC_OBSERVACOES'
      Origin = 'VEC_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBVeiculosClienteVEC_OPCIONAIS: TMemoField
      FieldName = 'VEC_OPCIONAIS'
      Origin = 'VEC_OPCIONAIS'
      BlobType = ftMemo
    end
    object TBVeiculosClienteVEC_PLACA: TStringField
      FieldName = 'VEC_PLACA'
      Origin = 'VEC_PLACA'
      EditMask = 'lll\-9a99;1;_'
      Size = 10
    end
    object TBVeiculosClienteVEC_RENAVAN: TStringField
      FieldName = 'VEC_RENAVAN'
      Origin = 'VEC_RENAVAN'
    end
    object TBVeiculosClienteVEC_TIPO: TStringField
      FieldName = 'VEC_TIPO'
      Origin = 'VEC_TIPO'
      Size = 1
    end
    object TBVeiculosClienteVEC_USUARIO: TStringField
      FieldName = 'VEC_USUARIO'
      Origin = 'VEC_USUARIO'
    end
    object TBVeiculosClienteVEC_VALORVENDA: TFMTBCDField
      FieldName = 'VEC_VALORVENDA'
      Origin = 'VEC_VALORVENDA'
      currency = True
      Precision = 18
    end
    object TBVeiculosClienteVEC_VEICULO: TIntegerField
      FieldName = 'VEC_VEICULO'
      Origin = 'VEC_VEICULO'
      Required = True
    end
    object TBVeiculosClienteVEL_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEL_DESCRICAO'
      Origin = 'VEL_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TBContatos: TClientDataSet
    PersistDataPacket.Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A000A555355
      5F434F4449474F0400010000000000095553555F4C4F47494E01004900000001
      00055749445448020002001400085553555F4E4F4D4501004900000001000557
      49445448020002003200095553555F4C4944415304000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USU_CODIGO'
        DataType = ftInteger
      end
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
    Left = 576
    Top = 24
    object TBContatosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
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
  object DSZapInstancias: TDataSource
    DataSet = TBZapInstancias
    OnStateChange = DSZapInstanciasStateChange
    Left = 928
    Top = 424
  end
  object TRZapInstancias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 928
    Top = 392
  end
  object UPZapInstancias: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ZAPINSTANCIAS'
      '(ZIN_CLIENTTOKEN, ZIN_CODIGO, ZIN_DTATUALIZACAO, '
      '  ZIN_DTCADASTRO, ZIN_HRATUALIZACAO, ZIN_HRCADASTRO, '
      '  ZIN_INSTANCIAID, ZIN_INSTANCIATOKEN, ZIN_NOME, '
      '  ZIN_NUMERO, ZIN_STATUS, ZIN_USUARIO, ZIN_WEBHOOKTOKEN)'
      
        'VALUES (:NEW_ZIN_CLIENTTOKEN, gen_id(GEN_ZAPINSTANCIAS,1), :NEW_' +
        'ZIN_DTATUALIZACAO, '
      
        '  :NEW_ZIN_DTCADASTRO, :NEW_ZIN_HRATUALIZACAO, :NEW_ZIN_HRCADAST' +
        'RO, '
      '  :NEW_ZIN_INSTANCIAID, :NEW_ZIN_INSTANCIATOKEN, :NEW_ZIN_NOME, '
      
        '  :NEW_ZIN_NUMERO, :NEW_ZIN_STATUS, :NEW_ZIN_USUARIO, :NEW_ZIN_W' +
        'EBHOOKTOKEN)'
      
        'RETURNING ZIN_CLIENTTOKEN, ZIN_CODIGO, ZIN_DTATUALIZACAO, ZIN_DT' +
        'CADASTRO, ZIN_HRATUALIZACAO, ZIN_HRCADASTRO, ZIN_INSTANCIAID, ZI' +
        'N_INSTANCIATOKEN, ZIN_NOME, ZIN_NUMERO, ZIN_STATUS, ZIN_USUARIO,' +
        ' ZIN_WEBHOOKTOKEN')
    ModifySQL.Strings = (
      'UPDATE ZAPINSTANCIAS'
      
        'SET ZIN_CLIENTTOKEN = :NEW_ZIN_CLIENTTOKEN, ZIN_CODIGO = :NEW_ZI' +
        'N_CODIGO, '
      
        '  ZIN_DTATUALIZACAO = :NEW_ZIN_DTATUALIZACAO, ZIN_DTCADASTRO = :' +
        'NEW_ZIN_DTCADASTRO, '
      
        '  ZIN_HRATUALIZACAO = :NEW_ZIN_HRATUALIZACAO, ZIN_HRCADASTRO = :' +
        'NEW_ZIN_HRCADASTRO, '
      
        '  ZIN_INSTANCIAID = :NEW_ZIN_INSTANCIAID, ZIN_INSTANCIATOKEN = :' +
        'NEW_ZIN_INSTANCIATOKEN, '
      '  ZIN_NOME = :NEW_ZIN_NOME, ZIN_NUMERO = :NEW_ZIN_NUMERO, '
      '  ZIN_STATUS = :NEW_ZIN_STATUS, ZIN_USUARIO = :NEW_ZIN_USUARIO, '
      '  ZIN_WEBHOOKTOKEN = :NEW_ZIN_WEBHOOKTOKEN'
      'WHERE ZIN_CODIGO = :OLD_ZIN_CODIGO'
      
        'RETURNING ZIN_CLIENTTOKEN, ZIN_CODIGO, ZIN_DTATUALIZACAO, ZIN_DT' +
        'CADASTRO, ZIN_HRATUALIZACAO, ZIN_HRCADASTRO, ZIN_INSTANCIAID, ZI' +
        'N_INSTANCIATOKEN, ZIN_NOME, ZIN_NUMERO, ZIN_STATUS, ZIN_USUARIO,' +
        ' ZIN_WEBHOOKTOKEN')
    DeleteSQL.Strings = (
      'DELETE FROM ZAPINSTANCIAS'
      'WHERE ZIN_CODIGO = :OLD_ZIN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ZIN_CLIENTTOKEN, ZIN_CODIGO, ZIN_DTATUALIZACAO, ZIN_DTCAD' +
        'ASTRO, '
      
        '  ZIN_HRATUALIZACAO, ZIN_HRCADASTRO, ZIN_INSTANCIAID, ZIN_INSTAN' +
        'CIATOKEN, '
      
        '  ZIN_NOME, ZIN_NUMERO, ZIN_STATUS, ZIN_USUARIO, ZIN_WEBHOOKTOKE' +
        'N'
      'FROM ZAPINSTANCIAS'
      'WHERE ZIN_CODIGO = :OLD_ZIN_CODIGO')
    Left = 928
    Top = 360
  end
  object TBZapInstancias: TFDQuery
    BeforeInsert = TBZapInstanciasBeforeInsert
    AfterInsert = TBZapInstanciasAfterInsert
    BeforeEdit = TBZapInstanciasBeforeEdit
    BeforePost = TBZapInstanciasBeforePost
    Connection = DM.FDConnection1
    Transaction = TRZapInstancias
    UpdateObject = UPZapInstancias
    SQL.Strings = (
      'select '
      'ZIN_CLIENTTOKEN,'
      'ZIN_CODIGO,'
      'ZIN_DTATUALIZACAO,'
      'ZIN_DTCADASTRO,'
      'ZIN_HRATUALIZACAO,'
      'ZIN_HRCADASTRO,'
      'ZIN_INSTANCIAID,'
      'ZIN_INSTANCIATOKEN,'
      'ZIN_NOME,'
      'ZIN_NUMERO,'
      'ZIN_STATUS,'
      'ZIN_USUARIO,'
      'ZIN_WEBHOOKTOKEN'
      'from ZAPINSTANCIAS'
      'where ZIN_CODIGO=:codigo'
      'order by ZIN_CODIGO'
      '')
    Left = 928
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBZapInstanciasZIN_CLIENTTOKEN: TStringField
      FieldName = 'ZIN_CLIENTTOKEN'
      Origin = 'ZIN_CLIENTTOKEN'
      Size = 35
    end
    object TBZapInstanciasZIN_CODIGO: TIntegerField
      FieldName = 'ZIN_CODIGO'
      Origin = 'ZIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBZapInstanciasZIN_DTATUALIZACAO: TDateField
      FieldName = 'ZIN_DTATUALIZACAO'
      Origin = 'ZIN_DTATUALIZACAO'
    end
    object TBZapInstanciasZIN_DTCADASTRO: TDateField
      FieldName = 'ZIN_DTCADASTRO'
      Origin = 'ZIN_DTCADASTRO'
    end
    object TBZapInstanciasZIN_HRATUALIZACAO: TTimeField
      FieldName = 'ZIN_HRATUALIZACAO'
      Origin = 'ZIN_HRATUALIZACAO'
    end
    object TBZapInstanciasZIN_HRCADASTRO: TTimeField
      FieldName = 'ZIN_HRCADASTRO'
      Origin = 'ZIN_HRCADASTRO'
    end
    object TBZapInstanciasZIN_INSTANCIAID: TStringField
      FieldName = 'ZIN_INSTANCIAID'
      Origin = 'ZIN_INSTANCIAID'
      Size = 35
    end
    object TBZapInstanciasZIN_INSTANCIATOKEN: TStringField
      FieldName = 'ZIN_INSTANCIATOKEN'
      Origin = 'ZIN_INSTANCIATOKEN'
      Size = 35
    end
    object TBZapInstanciasZIN_NOME: TStringField
      FieldName = 'ZIN_NOME'
      Origin = 'ZIN_NOME'
      Size = 80
    end
    object TBZapInstanciasZIN_NUMERO: TStringField
      FieldName = 'ZIN_NUMERO'
      Origin = 'ZIN_NUMERO'
    end
    object TBZapInstanciasZIN_STATUS: TStringField
      FieldName = 'ZIN_STATUS'
      Origin = 'ZIN_STATUS'
      Size = 1
    end
    object TBZapInstanciasZIN_USUARIO: TStringField
      FieldName = 'ZIN_USUARIO'
      Origin = 'ZIN_USUARIO'
    end
    object TBZapInstanciasZIN_WEBHOOKTOKEN: TStringField
      FieldName = 'ZIN_WEBHOOKTOKEN'
      Origin = 'ZIN_WEBHOOKTOKEN'
      Size = 35
    end
  end
  object DSZapMensagens: TDataSource
    DataSet = TBZapMensagens
    OnStateChange = DSZapMensagensStateChange
    Left = 960
    Top = 424
  end
  object TRZapMensagens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 960
    Top = 392
  end
  object UPZapMensagens: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ZAPMENSAGENS'
      '(ZAM_ARQUIVO, ZAM_ARQUIVONOME, ZAM_CODIGO, ZAM_CONTEUDO, '
      '  ZAM_DESTINO, ZAM_DTATUALIZACAO, ZAM_DTCADASTRO, '
      '  ZAM_DTENVIO, ZAM_DTSTATUSWPP, ZAM_HRATUALIZACAO, '
      '  ZAM_HRCADASTRO, ZAM_HRENVIO, ZAM_HRSTATUSWPP, '
      '  ZAM_MESSAGEID, ZAM_STATUS, ZAM_STATUSWPP, '
      '  ZAM_USUARIO, ZAM_VENDEDOR, ZAM_ZAAPID, ZAM_ZAPINSTANCIA)'
      
        'VALUES (:NEW_ZAM_ARQUIVO, :NEW_ZAM_ARQUIVONOME, gen_id(GEN_ZAPME' +
        'NSAGENS,1), :NEW_ZAM_CONTEUDO, '
      
        '  :NEW_ZAM_DESTINO, :NEW_ZAM_DTATUALIZACAO, :NEW_ZAM_DTCADASTRO,' +
        ' '
      
        '  :NEW_ZAM_DTENVIO, :NEW_ZAM_DTSTATUSWPP, :NEW_ZAM_HRATUALIZACAO' +
        ', '
      '  :NEW_ZAM_HRCADASTRO, :NEW_ZAM_HRENVIO, :NEW_ZAM_HRSTATUSWPP, '
      '  :NEW_ZAM_MESSAGEID, :NEW_ZAM_STATUS, :NEW_ZAM_STATUSWPP, '
      
        '  :NEW_ZAM_USUARIO, :NEW_ZAM_VENDEDOR, :NEW_ZAM_ZAAPID, :NEW_ZAM' +
        '_ZAPINSTANCIA)'
      
        'RETURNING ZAM_ARQUIVO, ZAM_ARQUIVONOME, ZAM_CODIGO, ZAM_CONTEUDO' +
        ', ZAM_DESTINO, ZAM_DTATUALIZACAO, ZAM_DTCADASTRO, ZAM_DTENVIO, Z' +
        'AM_DTSTATUSWPP, ZAM_HRATUALIZACAO, ZAM_HRCADASTRO, ZAM_HRENVIO, ' +
        'ZAM_HRSTATUSWPP, ZAM_MESSAGEID, ZAM_STATUS, ZAM_STATUSWPP, ZAM_U' +
        'SUARIO, ZAM_VENDEDOR, ZAM_ZAAPID, ZAM_ZAPINSTANCIA')
    ModifySQL.Strings = (
      'UPDATE ZAPMENSAGENS'
      
        'SET ZAM_ARQUIVO = :NEW_ZAM_ARQUIVO, ZAM_ARQUIVONOME = :NEW_ZAM_A' +
        'RQUIVONOME, '
      
        '  ZAM_CODIGO = :NEW_ZAM_CODIGO, ZAM_CONTEUDO = :NEW_ZAM_CONTEUDO' +
        ', '
      
        '  ZAM_DESTINO = :NEW_ZAM_DESTINO, ZAM_DTATUALIZACAO = :NEW_ZAM_D' +
        'TATUALIZACAO, '
      
        '  ZAM_DTCADASTRO = :NEW_ZAM_DTCADASTRO, ZAM_DTENVIO = :NEW_ZAM_D' +
        'TENVIO, '
      
        '  ZAM_DTSTATUSWPP = :NEW_ZAM_DTSTATUSWPP, ZAM_HRATUALIZACAO = :N' +
        'EW_ZAM_HRATUALIZACAO, '
      
        '  ZAM_HRCADASTRO = :NEW_ZAM_HRCADASTRO, ZAM_HRENVIO = :NEW_ZAM_H' +
        'RENVIO, '
      
        '  ZAM_HRSTATUSWPP = :NEW_ZAM_HRSTATUSWPP, ZAM_MESSAGEID = :NEW_Z' +
        'AM_MESSAGEID, '
      
        '  ZAM_STATUS = :NEW_ZAM_STATUS, ZAM_STATUSWPP = :NEW_ZAM_STATUSW' +
        'PP, '
      
        '  ZAM_USUARIO = :NEW_ZAM_USUARIO, ZAM_VENDEDOR = :NEW_ZAM_VENDED' +
        'OR, '
      
        '  ZAM_ZAAPID = :NEW_ZAM_ZAAPID, ZAM_ZAPINSTANCIA = :NEW_ZAM_ZAPI' +
        'NSTANCIA'
      'WHERE ZAM_CODIGO = :OLD_ZAM_CODIGO'
      
        'RETURNING ZAM_ARQUIVO, ZAM_ARQUIVONOME, ZAM_CODIGO, ZAM_CONTEUDO' +
        ', ZAM_DESTINO, ZAM_DTATUALIZACAO, ZAM_DTCADASTRO, ZAM_DTENVIO, Z' +
        'AM_DTSTATUSWPP, ZAM_HRATUALIZACAO, ZAM_HRCADASTRO, ZAM_HRENVIO, ' +
        'ZAM_HRSTATUSWPP, ZAM_MESSAGEID, ZAM_STATUS, ZAM_STATUSWPP, ZAM_U' +
        'SUARIO, ZAM_VENDEDOR, ZAM_ZAAPID, ZAM_ZAPINSTANCIA')
    DeleteSQL.Strings = (
      'DELETE FROM ZAPMENSAGENS'
      'WHERE ZAM_CODIGO = :OLD_ZAM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ZAM_ARQUIVO, ZAM_ARQUIVONOME, ZAM_CODIGO, ZAM_CONTEUDO, Z' +
        'AM_DESTINO, '
      
        '  ZAM_DTATUALIZACAO, ZAM_DTCADASTRO, ZAM_DTENVIO, ZAM_DTSTATUSWP' +
        'P, '
      
        '  ZAM_HRATUALIZACAO, ZAM_HRCADASTRO, ZAM_HRENVIO, ZAM_HRSTATUSWP' +
        'P, '
      
        '  ZAM_MESSAGEID, ZAM_STATUS, ZAM_STATUSWPP, ZAM_USUARIO, ZAM_VEN' +
        'DEDOR, '
      '  ZAM_ZAAPID, ZAM_ZAPINSTANCIA'
      'FROM ZAPMENSAGENS'
      'WHERE ZAM_CODIGO = :OLD_ZAM_CODIGO')
    Left = 960
    Top = 360
  end
  object TBZapMensagens: TFDQuery
    BeforeInsert = TBZapMensagensBeforeInsert
    AfterInsert = TBZapMensagensAfterInsert
    BeforeEdit = TBZapMensagensBeforeEdit
    BeforePost = TBZapMensagensBeforePost
    Connection = DM.FDConnection1
    Transaction = TRZapMensagens
    UpdateObject = UPZapMensagens
    SQL.Strings = (
      'select '
      'ZAM_ARQUIVO,'
      'ZAM_ARQUIVONOME,'
      'ZAM_CODIGO,'
      'ZAM_CONTEUDO,'
      'ZAM_DESTINO,'
      'ZAM_DTATUALIZACAO,'
      'ZAM_DTCADASTRO,'
      'ZAM_DTENVIO,'
      'ZAM_DTSTATUSWPP,'
      'ZAM_HRATUALIZACAO,'
      'ZAM_HRCADASTRO,'
      'ZAM_HRENVIO,'
      'ZAM_HRSTATUSWPP,'
      'ZAM_MESSAGEID,'
      'ZAM_STATUS,'
      'ZAM_STATUSWPP,'
      'ZAM_USUARIO,'
      'ZAM_VENDEDOR,'
      'ZAM_ZAAPID,'
      'ZAM_ZAPINSTANCIA,'
      'ZIN_NOME,'
      'VEN_NOME'
      'from ZAPMENSAGENS'
      'left join ZAPINSTANCIAS on ZAM_ZAPINSTANCIA=ZIN_CODIGO'
      'left join VENDEDORES on ZAM_VENDEDOR=VEN_CODIGO'
      'where ZAM_CODIGO=:codigo'
      'order by ZAM_CODIGO'
      '')
    Left = 960
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBZapMensagensZAM_ARQUIVO: TBlobField
      FieldName = 'ZAM_ARQUIVO'
      Origin = 'ZAM_ARQUIVO'
    end
    object TBZapMensagensZAM_ARQUIVONOME: TStringField
      FieldName = 'ZAM_ARQUIVONOME'
      Origin = 'ZAM_ARQUIVONOME'
      Size = 80
    end
    object TBZapMensagensZAM_CODIGO: TIntegerField
      FieldName = 'ZAM_CODIGO'
      Origin = 'ZAM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBZapMensagensZAM_CONTEUDO: TStringField
      FieldName = 'ZAM_CONTEUDO'
      Origin = 'ZAM_CONTEUDO'
      Size = 1000
    end
    object TBZapMensagensZAM_DESTINO: TStringField
      FieldName = 'ZAM_DESTINO'
      Origin = 'ZAM_DESTINO'
    end
    object TBZapMensagensZAM_DTATUALIZACAO: TDateField
      FieldName = 'ZAM_DTATUALIZACAO'
      Origin = 'ZAM_DTATUALIZACAO'
    end
    object TBZapMensagensZAM_DTCADASTRO: TDateField
      FieldName = 'ZAM_DTCADASTRO'
      Origin = 'ZAM_DTCADASTRO'
    end
    object TBZapMensagensZAM_DTENVIO: TDateField
      FieldName = 'ZAM_DTENVIO'
      Origin = 'ZAM_DTENVIO'
    end
    object TBZapMensagensZAM_DTSTATUSWPP: TDateField
      FieldName = 'ZAM_DTSTATUSWPP'
      Origin = 'ZAM_DTSTATUSWPP'
    end
    object TBZapMensagensZAM_HRATUALIZACAO: TTimeField
      FieldName = 'ZAM_HRATUALIZACAO'
      Origin = 'ZAM_HRATUALIZACAO'
    end
    object TBZapMensagensZAM_HRCADASTRO: TTimeField
      FieldName = 'ZAM_HRCADASTRO'
      Origin = 'ZAM_HRCADASTRO'
    end
    object TBZapMensagensZAM_HRENVIO: TTimeField
      FieldName = 'ZAM_HRENVIO'
      Origin = 'ZAM_HRENVIO'
    end
    object TBZapMensagensZAM_HRSTATUSWPP: TTimeField
      FieldName = 'ZAM_HRSTATUSWPP'
      Origin = 'ZAM_HRSTATUSWPP'
    end
    object TBZapMensagensZAM_MESSAGEID: TStringField
      FieldName = 'ZAM_MESSAGEID'
      Origin = 'ZAM_MESSAGEID'
      Size = 35
    end
    object TBZapMensagensZAM_STATUS: TStringField
      FieldName = 'ZAM_STATUS'
      Origin = 'ZAM_STATUS'
      Size = 1
    end
    object TBZapMensagensZAM_STATUSWPP: TStringField
      FieldName = 'ZAM_STATUSWPP'
      Origin = 'ZAM_STATUSWPP'
      Size = 40
    end
    object TBZapMensagensZAM_USUARIO: TStringField
      FieldName = 'ZAM_USUARIO'
      Origin = 'ZAM_USUARIO'
    end
    object TBZapMensagensZAM_VENDEDOR: TIntegerField
      FieldName = 'ZAM_VENDEDOR'
      Origin = 'ZAM_VENDEDOR'
      Required = True
    end
    object TBZapMensagensZAM_ZAAPID: TStringField
      FieldName = 'ZAM_ZAAPID'
      Origin = 'ZAM_ZAAPID'
      Size = 35
    end
    object TBZapMensagensZAM_ZAPINSTANCIA: TIntegerField
      FieldName = 'ZAM_ZAPINSTANCIA'
      Origin = 'ZAM_ZAPINSTANCIA'
      Required = True
    end
    object TBZapMensagensZIN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZIN_NOME'
      Origin = 'ZIN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBZapMensagensVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object DSIasmin: TDataSource
    DataSet = TBIasmin
    OnStateChange = DSImoveisStateChange
    Left = 352
    Top = 272
  end
  object TRIasmin: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 352
    Top = 240
  end
  object UPIasmin: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IASMIN'
      '(IAS_CHAVEAPI, IAS_CODIGO, IAS_CONTEXTO, IAS_DTATUALIZACAO, '
      '  IAS_ESFORCO, IAS_HRATUALIZACAO, IAS_MAXLINHAS, '
      '  IAS_MODELO, IAS_PASSWORD, IAS_PASTACONTEXTO, '
      '  IAS_PROVEDOR, IAS_TEMPOLIMITECONSULTA, IAS_TEMPOLIMITEIA, '
      '  IAS_URLBASE, IAS_USER, IAS_USUARIO)'
      
        'VALUES (:NEW_IAS_CHAVEAPI, :NEW_IAS_CODIGO, :NEW_IAS_CONTEXTO, :' +
        'NEW_IAS_DTATUALIZACAO, '
      '  :NEW_IAS_ESFORCO, :NEW_IAS_HRATUALIZACAO, :NEW_IAS_MAXLINHAS, '
      '  :NEW_IAS_MODELO, :NEW_IAS_PASSWORD, :NEW_IAS_PASTACONTEXTO, '
      
        '  :NEW_IAS_PROVEDOR, :NEW_IAS_TEMPOLIMITECONSULTA, :NEW_IAS_TEMP' +
        'OLIMITEIA, '
      '  :NEW_IAS_URLBASE, :NEW_IAS_USER, :NEW_IAS_USUARIO)'
      
        'RETURNING IAS_CHAVEAPI, IAS_CODIGO, IAS_CONTEXTO, IAS_DTATUALIZA' +
        'CAO, IAS_ESFORCO, IAS_HRATUALIZACAO, IAS_MAXLINHAS, IAS_MODELO, ' +
        'IAS_PASSWORD, IAS_PASTACONTEXTO, IAS_PROVEDOR, IAS_TEMPOLIMITECO' +
        'NSULTA, IAS_TEMPOLIMITEIA, IAS_URLBASE, IAS_USER, IAS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE IASMIN'
      
        'SET IAS_CHAVEAPI = :NEW_IAS_CHAVEAPI, IAS_CODIGO = :NEW_IAS_CODI' +
        'GO, '
      
        '  IAS_CONTEXTO = :NEW_IAS_CONTEXTO, IAS_DTATUALIZACAO = :NEW_IAS' +
        '_DTATUALIZACAO, '
      
        '  IAS_ESFORCO = :NEW_IAS_ESFORCO, IAS_HRATUALIZACAO = :NEW_IAS_H' +
        'RATUALIZACAO, '
      
        '  IAS_MAXLINHAS = :NEW_IAS_MAXLINHAS, IAS_MODELO = :NEW_IAS_MODE' +
        'LO, '
      
        '  IAS_PASSWORD = :NEW_IAS_PASSWORD, IAS_PASTACONTEXTO = :NEW_IAS' +
        '_PASTACONTEXTO, '
      
        '  IAS_PROVEDOR = :NEW_IAS_PROVEDOR, IAS_TEMPOLIMITECONSULTA = :N' +
        'EW_IAS_TEMPOLIMITECONSULTA, '
      
        '  IAS_TEMPOLIMITEIA = :NEW_IAS_TEMPOLIMITEIA, IAS_URLBASE = :NEW' +
        '_IAS_URLBASE, '
      '  IAS_USER = :NEW_IAS_USER, IAS_USUARIO = :NEW_IAS_USUARIO'
      'WHERE IAS_CODIGO = :OLD_IAS_CODIGO'
      
        'RETURNING IAS_CHAVEAPI, IAS_CODIGO, IAS_CONTEXTO, IAS_DTATUALIZA' +
        'CAO, IAS_ESFORCO, IAS_HRATUALIZACAO, IAS_MAXLINHAS, IAS_MODELO, ' +
        'IAS_PASSWORD, IAS_PASTACONTEXTO, IAS_PROVEDOR, IAS_TEMPOLIMITECO' +
        'NSULTA, IAS_TEMPOLIMITEIA, IAS_URLBASE, IAS_USER, IAS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM IASMIN'
      'WHERE IAS_CODIGO = :OLD_IAS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT IAS_CHAVEAPI, IAS_CODIGO, IAS_CONTEXTO, IAS_DTATUALIZACAO' +
        ', IAS_ESFORCO, '
      '  IAS_HRATUALIZACAO, IAS_MAXLINHAS, IAS_MODELO, IAS_PASSWORD, '
      '  IAS_PASTACONTEXTO, IAS_PROVEDOR, IAS_TEMPOLIMITECONSULTA, '
      '  IAS_TEMPOLIMITEIA, IAS_URLBASE, IAS_USER, IAS_USUARIO'
      'FROM IASMIN'
      'WHERE IAS_CODIGO = :OLD_IAS_CODIGO')
    Left = 352
    Top = 208
  end
  object TBIasmin: TFDQuery
    BeforeInsert = TBImoveisBeforeInsert
    AfterInsert = TBImoveisAfterInsert
    BeforeEdit = TBImoveisBeforeEdit
    BeforePost = TBImoveisBeforePost
    Connection = DM.FDConnection1
    Transaction = TRIasmin
    UpdateObject = UPIasmin
    SQL.Strings = (
      'select '
      'IAS_CHAVEAPI,'
      'IAS_CODIGO,'
      'IAS_CONTEXTO,'
      'IAS_DTATUALIZACAO,'
      'IAS_ESFORCO,'
      'IAS_HRATUALIZACAO,'
      'IAS_MAXLINHAS,'
      'IAS_MODELO,'
      'IAS_PASSWORD,'
      'IAS_PASTACONTEXTO,'
      'IAS_PROVEDOR,'
      'IAS_TEMPOLIMITECONSULTA,'
      'IAS_TEMPOLIMITEIA,'
      'IAS_URLBASE,'
      'IAS_USER,'
      'IAS_USUARIO'
      'from IASMIN'
      'where IAS_CODIGO=:codigo'
      '')
    Left = 352
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBIasminIAS_CHAVEAPI: TStringField
      FieldName = 'IAS_CHAVEAPI'
      Origin = 'IAS_CHAVEAPI'
      Size = 1000
    end
    object TBIasminIAS_CODIGO: TIntegerField
      FieldName = 'IAS_CODIGO'
      Origin = 'IAS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBIasminIAS_CONTEXTO: TStringField
      FieldName = 'IAS_CONTEXTO'
      Origin = 'IAS_CONTEXTO'
      Size = 50
    end
    object TBIasminIAS_DTATUALIZACAO: TDateField
      FieldName = 'IAS_DTATUALIZACAO'
      Origin = 'IAS_DTATUALIZACAO'
    end
    object TBIasminIAS_ESFORCO: TStringField
      FieldName = 'IAS_ESFORCO'
      Origin = 'IAS_ESFORCO'
      Size = 40
    end
    object TBIasminIAS_HRATUALIZACAO: TTimeField
      FieldName = 'IAS_HRATUALIZACAO'
      Origin = 'IAS_HRATUALIZACAO'
    end
    object TBIasminIAS_MAXLINHAS: TIntegerField
      FieldName = 'IAS_MAXLINHAS'
      Origin = 'IAS_MAXLINHAS'
    end
    object TBIasminIAS_MODELO: TStringField
      FieldName = 'IAS_MODELO'
      Origin = 'IAS_MODELO'
      Size = 40
    end
    object TBIasminIAS_PASSWORD: TStringField
      FieldName = 'IAS_PASSWORD'
      Origin = 'IAS_PASSWORD'
      Size = 1000
    end
    object TBIasminIAS_PASTACONTEXTO: TStringField
      FieldName = 'IAS_PASTACONTEXTO'
      Origin = 'IAS_PASTACONTEXTO'
      Size = 200
    end
    object TBIasminIAS_PROVEDOR: TStringField
      FieldName = 'IAS_PROVEDOR'
      Origin = 'IAS_PROVEDOR'
      Size = 50
    end
    object TBIasminIAS_TEMPOLIMITECONSULTA: TIntegerField
      FieldName = 'IAS_TEMPOLIMITECONSULTA'
      Origin = 'IAS_TEMPOLIMITECONSULTA'
    end
    object TBIasminIAS_TEMPOLIMITEIA: TIntegerField
      FieldName = 'IAS_TEMPOLIMITEIA'
      Origin = 'IAS_TEMPOLIMITEIA'
    end
    object TBIasminIAS_URLBASE: TStringField
      FieldName = 'IAS_URLBASE'
      Origin = 'IAS_URLBASE'
      Size = 200
    end
    object TBIasminIAS_USER: TStringField
      FieldName = 'IAS_USER'
      Origin = 'IAS_USER'
    end
    object TBIasminIAS_USUARIO: TStringField
      FieldName = 'IAS_USUARIO'
      Origin = 'IAS_USUARIO'
    end
  end
  object DSIasminLogs: TDataSource
    DataSet = TBIasminLogs
    OnStateChange = DSImoveisStateChange
    Left = 384
    Top = 272
  end
  object TRIasminLogs: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 384
    Top = 240
  end
  object UPIasminLogs: TFDUpdateSQL
    Connection = DM.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IASMINLOGS'
      '(IAL_CACHE, IAL_CODIGO, IAL_DTCADASTRO, IAL_ENTRADA, '
      '  IAL_ERRO, IAL_ETAPA, IAL_EXPLICACAO, IAL_HRCADASTRO, '
      '  IAL_MODELO, IAL_PERGUNTA, IAL_SAIDA, IAL_SQL, '
      '  IAL_USUARIO)'
      
        'VALUES (:NEW_IAL_CACHE, gen_id(GEN_IASMINLOGS,1), :NEW_IAL_DTCAD' +
        'ASTRO, :NEW_IAL_ENTRADA, '
      
        '  :NEW_IAL_ERRO, :NEW_IAL_ETAPA, :NEW_IAL_EXPLICACAO, :NEW_IAL_H' +
        'RCADASTRO, '
      
        '  :NEW_IAL_MODELO, :NEW_IAL_PERGUNTA, :NEW_IAL_SAIDA, :NEW_IAL_S' +
        'QL, '
      '  :NEW_IAL_USUARIO)'
      
        'RETURNING IAL_CACHE, IAL_CODIGO, IAL_DTCADASTRO, IAL_ENTRADA, IA' +
        'L_ERRO, IAL_ETAPA, IAL_EXPLICACAO, IAL_HRCADASTRO, IAL_MODELO, I' +
        'AL_PERGUNTA, IAL_SAIDA, IAL_SQL, IAL_USUARIO')
    ModifySQL.Strings = (
      'UPDATE IASMINLOGS'
      
        'SET IAL_CACHE = :NEW_IAL_CACHE, IAL_CODIGO = :NEW_IAL_CODIGO, IA' +
        'L_DTCADASTRO = :NEW_IAL_DTCADASTRO, '
      '  IAL_ENTRADA = :NEW_IAL_ENTRADA, IAL_ERRO = :NEW_IAL_ERRO, '
      
        '  IAL_ETAPA = :NEW_IAL_ETAPA, IAL_EXPLICACAO = :NEW_IAL_EXPLICAC' +
        'AO, '
      
        '  IAL_HRCADASTRO = :NEW_IAL_HRCADASTRO, IAL_MODELO = :NEW_IAL_MO' +
        'DELO, '
      '  IAL_PERGUNTA = :NEW_IAL_PERGUNTA, IAL_SAIDA = :NEW_IAL_SAIDA, '
      '  IAL_SQL = :NEW_IAL_SQL, IAL_USUARIO = :NEW_IAL_USUARIO'
      'WHERE IAL_CODIGO = :OLD_IAL_CODIGO'
      
        'RETURNING IAL_CACHE, IAL_CODIGO, IAL_DTCADASTRO, IAL_ENTRADA, IA' +
        'L_ERRO, IAL_ETAPA, IAL_EXPLICACAO, IAL_HRCADASTRO, IAL_MODELO, I' +
        'AL_PERGUNTA, IAL_SAIDA, IAL_SQL, IAL_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM IASMINLOGS'
      'WHERE IAL_CODIGO = :OLD_IAL_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT IAL_CACHE, IAL_CODIGO, IAL_DTCADASTRO, IAL_ENTRADA, IAL_E' +
        'RRO, '
      
        '  IAL_ETAPA, IAL_EXPLICACAO, IAL_HRCADASTRO, IAL_MODELO, IAL_PER' +
        'GUNTA, '
      '  IAL_SAIDA, IAL_SQL, IAL_USUARIO'
      'FROM IASMINLOGS'
      'WHERE IAL_CODIGO = :OLD_IAL_CODIGO')
    Left = 384
    Top = 208
  end
  object TBIasminLogs: TFDQuery
    BeforeInsert = TBImoveisBeforeInsert
    AfterInsert = TBImoveisAfterInsert
    BeforeEdit = TBImoveisBeforeEdit
    BeforePost = TBImoveisBeforePost
    Connection = DM.FDConnection1
    Transaction = TRIasminLogs
    UpdateObject = UPIasminLogs
    SQL.Strings = (
      'select'
      'first(500) '
      'IAL_CACHE,'
      'IAL_CODIGO,'
      'IAL_DTCADASTRO,'
      'IAL_ENTRADA,'
      'IAL_ERRO,'
      'IAL_ETAPA,'
      'IAL_EXPLICACAO,'
      'IAL_HRCADASTRO,'
      'IAL_MODELO,'
      'IAL_PERGUNTA,'
      'IAL_SAIDA,'
      'IAL_SQL,'
      'IAL_USUARIO'
      'from IASMINLOGS'
      'order by IAL_CODIGO desc'
      '')
    Left = 384
    Top = 176
    object TBIasminLogsIAL_CACHE: TIntegerField
      FieldName = 'IAL_CACHE'
      Origin = 'IAL_CACHE'
    end
    object TBIasminLogsIAL_CODIGO: TIntegerField
      FieldName = 'IAL_CODIGO'
      Origin = 'IAL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBIasminLogsIAL_DTCADASTRO: TDateField
      FieldName = 'IAL_DTCADASTRO'
      Origin = 'IAL_DTCADASTRO'
    end
    object TBIasminLogsIAL_ENTRADA: TIntegerField
      FieldName = 'IAL_ENTRADA'
      Origin = 'IAL_ENTRADA'
    end
    object TBIasminLogsIAL_ERRO: TMemoField
      FieldName = 'IAL_ERRO'
      Origin = 'IAL_ERRO'
      BlobType = ftMemo
    end
    object TBIasminLogsIAL_ETAPA: TStringField
      FieldName = 'IAL_ETAPA'
      Origin = 'IAL_ETAPA'
      Size = 10
    end
    object TBIasminLogsIAL_EXPLICACAO: TMemoField
      FieldName = 'IAL_EXPLICACAO'
      Origin = 'IAL_EXPLICACAO'
      BlobType = ftMemo
    end
    object TBIasminLogsIAL_HRCADASTRO: TTimeField
      FieldName = 'IAL_HRCADASTRO'
      Origin = 'IAL_HRCADASTRO'
    end
    object TBIasminLogsIAL_MODELO: TStringField
      FieldName = 'IAL_MODELO'
      Origin = 'IAL_MODELO'
      Size = 40
    end
    object TBIasminLogsIAL_PERGUNTA: TMemoField
      FieldName = 'IAL_PERGUNTA'
      Origin = 'IAL_PERGUNTA'
      BlobType = ftMemo
    end
    object TBIasminLogsIAL_SAIDA: TIntegerField
      FieldName = 'IAL_SAIDA'
      Origin = 'IAL_SAIDA'
    end
    object TBIasminLogsIAL_SQL: TMemoField
      FieldName = 'IAL_SQL'
      Origin = 'IAL_SQL'
      BlobType = ftMemo
    end
    object TBIasminLogsIAL_USUARIO: TStringField
      FieldName = 'IAL_USUARIO'
      Origin = 'IAL_USUARIO'
    end
  end
end
