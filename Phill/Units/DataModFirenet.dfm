object DMFirenet: TDMFirenet
  OnCreate = DataModuleCreate
  Height = 574
  Width = 1245
  object DSCondicoes: TDataSource
    DataSet = TBCondicoes
    Left = 352
    Top = 224
  end
  object DSMarkups: TDataSource
    DataSet = TBMarkups
    Left = 1024
    Top = 224
  end
  object DSConsultas: TDataSource
    DataSet = TBConsultas
    Left = 416
    Top = 224
  end
  object DSVendas: TDataSource
    DataSet = TBVendas
    Left = 544
    Top = 440
  end
  object DSProdutos: TDataSource
    DataSet = TBProdutos
    Left = 256
    Top = 440
  end
  object DSNfe: TDataSource
    DataSet = TBNfe
    Left = 64
    Top = 440
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Runtime\Firenet\Dados\firenet_oficial.fdb'
      'User_Name=SYSDBA'
      'Password=borland'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Left = 32
    Top = 24
  end
  object Query1: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery1
    Left = 112
    Top = 24
  end
  object TRQuery1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 144
    Top = 24
  end
  object Query2: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery2
    Left = 224
    Top = 24
  end
  object TRQuery2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 256
    Top = 24
  end
  object Query3: TFDQuery
    Connection = FDConnection1
    Transaction = TRQuery3
    Left = 336
    Top = 24
  end
  object TRQuery3: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 368
    Top = 24
  end
  object TBAgrupadores: TFDQuery
    Connection = FDConnection1
    Transaction = TRAgrupadores
    UpdateObject = UPAgrupadores
    SQL.Strings = (
      'select * from AGRUPADORES '
      'where AGR_CODIGO=:codigo '
      'order by AGR_CODIGO'
      '')
    Left = 32
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAgrupadoresAGR_CODIGO: TIntegerField
      FieldName = 'AGR_CODIGO'
      Origin = 'AGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAgrupadoresAGR_DESCRICAO: TStringField
      FieldName = 'AGR_DESCRICAO'
      Origin = 'AGR_DESCRICAO'
      Size = 50
    end
    object TBAgrupadoresAGR_DTATUALIZACAO: TDateField
      FieldName = 'AGR_DTATUALIZACAO'
      Origin = 'AGR_DTATUALIZACAO'
    end
    object TBAgrupadoresAGR_DTCADASTRO: TDateField
      FieldName = 'AGR_DTCADASTRO'
      Origin = 'AGR_DTCADASTRO'
    end
    object TBAgrupadoresAGR_HRATUALIZACAO: TTimeField
      FieldName = 'AGR_HRATUALIZACAO'
      Origin = 'AGR_HRATUALIZACAO'
    end
    object TBAgrupadoresAGR_HRCADASTRO: TTimeField
      FieldName = 'AGR_HRCADASTRO'
      Origin = 'AGR_HRCADASTRO'
    end
    object TBAgrupadoresAGR_USUARIO: TStringField
      FieldName = 'AGR_USUARIO'
      Origin = 'AGR_USUARIO'
    end
  end
  object TRAgrupadores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 32
    Top = 176
  end
  object UPAgrupadores: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO AGRUPADORES'
      '(AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, '
      '  AGR_DTCADASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, '
      '  AGR_USUARIO)'
      
        'VALUES (gen_id(GEN_AGRUPADORES,1), :NEW_AGR_DESCRICAO, :NEW_AGR_' +
        'DTATUALIZACAO, '
      
        '  :NEW_AGR_DTCADASTRO, :NEW_AGR_HRATUALIZACAO, :NEW_AGR_HRCADAST' +
        'RO, '
      '  :NEW_AGR_USUARIO)'
      
        'RETURNING AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCA' +
        'DASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO')
    ModifySQL.Strings = (
      'UPDATE AGRUPADORES'
      
        'SET AGR_CODIGO = :NEW_AGR_CODIGO, AGR_DESCRICAO = :NEW_AGR_DESCR' +
        'ICAO, '
      
        '  AGR_DTATUALIZACAO = :NEW_AGR_DTATUALIZACAO, AGR_DTCADASTRO = :' +
        'NEW_AGR_DTCADASTRO, '
      
        '  AGR_HRATUALIZACAO = :NEW_AGR_HRATUALIZACAO, AGR_HRCADASTRO = :' +
        'NEW_AGR_HRCADASTRO, '
      '  AGR_USUARIO = :NEW_AGR_USUARIO'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO'
      
        'RETURNING AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCA' +
        'DASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM AGRUPADORES'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCADAS' +
        'TRO, '
      '  AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO'
      'FROM AGRUPADORES'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO')
    Left = 32
    Top = 128
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      '')
    Left = 784
    Top = 296
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 784
    Top = 392
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO AGRUPADORES'
      '(AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, '
      '  AGR_DTCADASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, '
      '  AGR_USUARIO)'
      
        'VALUES (gen_id(GEN_AGRUPADORES,1), :NEW_AGR_DESCRICAO, :NEW_AGR_' +
        'DTATUALIZACAO, '
      
        '  :NEW_AGR_DTCADASTRO, :NEW_AGR_HRATUALIZACAO, :NEW_AGR_HRCADAST' +
        'RO, '
      '  :NEW_AGR_USUARIO)'
      
        'RETURNING AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCA' +
        'DASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO')
    ModifySQL.Strings = (
      'UPDATE AGRUPADORES'
      
        'SET AGR_CODIGO = :NEW_AGR_CODIGO, AGR_DESCRICAO = :NEW_AGR_DESCR' +
        'ICAO, '
      
        '  AGR_DTATUALIZACAO = :NEW_AGR_DTATUALIZACAO, AGR_DTCADASTRO = :' +
        'NEW_AGR_DTCADASTRO, '
      
        '  AGR_HRATUALIZACAO = :NEW_AGR_HRATUALIZACAO, AGR_HRCADASTRO = :' +
        'NEW_AGR_HRCADASTRO, '
      '  AGR_USUARIO = :NEW_AGR_USUARIO'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO'
      
        'RETURNING AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCA' +
        'DASTRO, AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM AGRUPADORES'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT AGR_CODIGO, AGR_DESCRICAO, AGR_DTATUALIZACAO, AGR_DTCADAS' +
        'TRO, '
      '  AGR_HRATUALIZACAO, AGR_HRCADASTRO, AGR_USUARIO'
      'FROM AGRUPADORES'
      'WHERE AGR_CODIGO = :OLD_AGR_CODIGO')
    Left = 784
    Top = 344
  end
  object TBAliquotas: TFDQuery
    Connection = FDConnection1
    Transaction = TRAliquotas
    UpdateObject = UPAliquotas
    SQL.Strings = (
      'select * from ALIQUOTAS where ALI_ESTADO=:codigo'
      '')
    Left = 64
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
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
    Left = 64
    Top = 176
  end
  object UPAliquotas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ALIQUOTAS'
      '(ALI_ALIQCBS, ALI_ALIQFCP, ALI_ALIQFCPST, ALI_ALIQIBSMUN, '
      '  ALI_ALIQIBSUF, ALI_ALIQICMSADICST, ALI_ALIQICMSINTER, '
      '  ALI_ALIQICMSINTERPART, ALI_ALIQICMSRED, ALI_ALIQICMSST, '
      '  ALI_ALIQUOTA, ALI_ESTADO, ALI_IEST, ALI_NOMEESTADO)'
      
        'VALUES (:NEW_ALI_ALIQCBS, :NEW_ALI_ALIQFCP, :NEW_ALI_ALIQFCPST, ' +
        ':NEW_ALI_ALIQIBSMUN, '
      
        '  :NEW_ALI_ALIQIBSUF, :NEW_ALI_ALIQICMSADICST, :NEW_ALI_ALIQICMS' +
        'INTER, '
      
        '  :NEW_ALI_ALIQICMSINTERPART, :NEW_ALI_ALIQICMSRED, :NEW_ALI_ALI' +
        'QICMSST, '
      
        '  :NEW_ALI_ALIQUOTA, :NEW_ALI_ESTADO, :NEW_ALI_IEST, :NEW_ALI_NO' +
        'MEESTADO)'
      
        'RETURNING ALI_ALIQCBS, ALI_ALIQFCP, ALI_ALIQFCPST, ALI_ALIQIBSMU' +
        'N, ALI_ALIQIBSUF, ALI_ALIQICMSADICST, ALI_ALIQICMSINTER, ALI_ALI' +
        'QICMSINTERPART, ALI_ALIQICMSRED, ALI_ALIQICMSST, ALI_ALIQUOTA, A' +
        'LI_ESTADO, ALI_IEST, ALI_NOMEESTADO')
    ModifySQL.Strings = (
      'UPDATE ALIQUOTAS'
      
        'SET ALI_ALIQCBS = :NEW_ALI_ALIQCBS, ALI_ALIQFCP = :NEW_ALI_ALIQF' +
        'CP, '
      
        '  ALI_ALIQFCPST = :NEW_ALI_ALIQFCPST, ALI_ALIQIBSMUN = :NEW_ALI_' +
        'ALIQIBSMUN, '
      
        '  ALI_ALIQIBSUF = :NEW_ALI_ALIQIBSUF, ALI_ALIQICMSADICST = :NEW_' +
        'ALI_ALIQICMSADICST, '
      
        '  ALI_ALIQICMSINTER = :NEW_ALI_ALIQICMSINTER, ALI_ALIQICMSINTERP' +
        'ART = :NEW_ALI_ALIQICMSINTERPART, '
      
        '  ALI_ALIQICMSRED = :NEW_ALI_ALIQICMSRED, ALI_ALIQICMSST = :NEW_' +
        'ALI_ALIQICMSST, '
      
        '  ALI_ALIQUOTA = :NEW_ALI_ALIQUOTA, ALI_ESTADO = :NEW_ALI_ESTADO' +
        ', '
      '  ALI_IEST = :NEW_ALI_IEST, ALI_NOMEESTADO = :NEW_ALI_NOMEESTADO'
      'WHERE ALI_ESTADO = :OLD_ALI_ESTADO'
      
        'RETURNING ALI_ALIQCBS, ALI_ALIQFCP, ALI_ALIQFCPST, ALI_ALIQIBSMU' +
        'N, ALI_ALIQIBSUF, ALI_ALIQICMSADICST, ALI_ALIQICMSINTER, ALI_ALI' +
        'QICMSINTERPART, ALI_ALIQICMSRED, ALI_ALIQICMSST, ALI_ALIQUOTA, A' +
        'LI_ESTADO, ALI_IEST, ALI_NOMEESTADO')
    DeleteSQL.Strings = (
      'DELETE FROM ALIQUOTAS'
      'WHERE ALI_ESTADO = :OLD_ALI_ESTADO')
    FetchRowSQL.Strings = (
      
        'SELECT ALI_ALIQCBS, ALI_ALIQFCP, ALI_ALIQFCPST, ALI_ALIQIBSMUN, ' +
        'ALI_ALIQIBSUF, '
      '  ALI_ALIQICMSADICST, ALI_ALIQICMSINTER, ALI_ALIQICMSINTERPART, '
      '  ALI_ALIQICMSRED, ALI_ALIQICMSST, ALI_ALIQUOTA, ALI_ESTADO, '
      '  ALI_IEST, ALI_NOMEESTADO'
      'FROM ALIQUOTAS'
      'WHERE ALI_ESTADO = :OLD_ALI_ESTADO')
    Left = 64
    Top = 128
  end
  object TBAlmoxarifados: TFDQuery
    Connection = FDConnection1
    Transaction = TRAlmoxarifados
    UpdateObject = UPAlmoxarifados
    SQL.Strings = (
      'select * from ALMOXARIFADOS '
      'where ALM_CODIGO=:codigo '
      'order by ALM_CODIGO'
      '')
    Left = 96
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAlmoxarifadosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ALM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAlmoxarifadosALM_DESCRICAO: TStringField
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      Size = 50
    end
    object TBAlmoxarifadosALM_DTATUALIZACAO: TDateField
      FieldName = 'ALM_DTATUALIZACAO'
      Origin = 'ALM_DTATUALIZACAO'
    end
    object TBAlmoxarifadosALM_DTCADASTRO: TDateField
      FieldName = 'ALM_DTCADASTRO'
      Origin = 'ALM_DTCADASTRO'
    end
    object TBAlmoxarifadosALM_HRATUALIZACAO: TTimeField
      FieldName = 'ALM_HRATUALIZACAO'
      Origin = 'ALM_HRATUALIZACAO'
    end
    object TBAlmoxarifadosALM_HRCADASTRO: TTimeField
      FieldName = 'ALM_HRCADASTRO'
      Origin = 'ALM_HRCADASTRO'
    end
    object TBAlmoxarifadosALM_STATUS: TStringField
      FieldName = 'ALM_STATUS'
      Origin = 'ALM_STATUS'
      Size = 1
    end
    object TBAlmoxarifadosALM_USUARIO: TStringField
      FieldName = 'ALM_USUARIO'
      Origin = 'ALM_USUARIO'
    end
  end
  object TRAlmoxarifados: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 96
    Top = 176
  end
  object UPAlmoxarifados: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ALMOXARIFADOS'
      '(ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, '
      '  ALM_DTCADASTRO, ALM_HRATUALIZACAO, ALM_HRCADASTRO, '
      '  ALM_STATUS, ALM_USUARIO)'
      
        'VALUES (gen_id(GEN_ALMOXARIFADOS,1), :NEW_ALM_DESCRICAO, :NEW_AL' +
        'M_DTATUALIZACAO, '
      
        '  :NEW_ALM_DTCADASTRO, :NEW_ALM_HRATUALIZACAO, :NEW_ALM_HRCADAST' +
        'RO, '
      '  :NEW_ALM_STATUS, :NEW_ALM_USUARIO)'
      
        'RETURNING ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, ALM_DTCA' +
        'DASTRO, ALM_HRATUALIZACAO, ALM_HRCADASTRO, ALM_STATUS, ALM_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE ALMOXARIFADOS'
      
        'SET ALM_CODIGO = :NEW_ALM_CODIGO, ALM_DESCRICAO = :NEW_ALM_DESCR' +
        'ICAO, '
      
        '  ALM_DTATUALIZACAO = :NEW_ALM_DTATUALIZACAO, ALM_DTCADASTRO = :' +
        'NEW_ALM_DTCADASTRO, '
      
        '  ALM_HRATUALIZACAO = :NEW_ALM_HRATUALIZACAO, ALM_HRCADASTRO = :' +
        'NEW_ALM_HRCADASTRO, '
      '  ALM_STATUS = :NEW_ALM_STATUS, ALM_USUARIO = :NEW_ALM_USUARIO'
      'WHERE ALM_CODIGO = :OLD_ALM_CODIGO'
      
        'RETURNING ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, ALM_DTCA' +
        'DASTRO, ALM_HRATUALIZACAO, ALM_HRCADASTRO, ALM_STATUS, ALM_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM ALMOXARIFADOS'
      'WHERE ALM_CODIGO = :OLD_ALM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, ALM_DTCADAS' +
        'TRO, '
      '  ALM_HRATUALIZACAO, ALM_HRCADASTRO, ALM_STATUS, ALM_USUARIO'
      'FROM ALMOXARIFADOS'
      'WHERE ALM_CODIGO = :OLD_ALM_CODIGO')
    Left = 96
    Top = 128
  end
  object TBAtividades: TFDQuery
    Connection = FDConnection1
    Transaction = TRAtividades
    UpdateObject = UPAtividades
    SQL.Strings = (
      'select * from ATIVIDADES '
      'where ATI_CODIGO=:codigo '
      'order by ATI_CODIGO'
      '')
    Left = 128
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBAtividadesATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      Origin = 'ATI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBAtividadesATI_DESCRICAO: TStringField
      FieldName = 'ATI_DESCRICAO'
      Origin = 'ATI_DESCRICAO'
      Size = 50
    end
    object TBAtividadesATI_DTATUALIZACAO: TDateField
      FieldName = 'ATI_DTATUALIZACAO'
      Origin = 'ATI_DTATUALIZACAO'
    end
    object TBAtividadesATI_DTCADASTRO: TDateField
      FieldName = 'ATI_DTCADASTRO'
      Origin = 'ATI_DTCADASTRO'
    end
    object TBAtividadesATI_HRATUALIZACAO: TTimeField
      FieldName = 'ATI_HRATUALIZACAO'
      Origin = 'ATI_HRATUALIZACAO'
    end
    object TBAtividadesATI_HRCADASTRO: TTimeField
      FieldName = 'ATI_HRCADASTRO'
      Origin = 'ATI_HRCADASTRO'
    end
    object TBAtividadesATI_USUARIO: TStringField
      FieldName = 'ATI_USUARIO'
      Origin = 'ATI_USUARIO'
    end
  end
  object TRAtividades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 128
    Top = 176
  end
  object UPAtividades: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ATIVIDADES'
      '(ATI_CODIGO, ATI_DESCRICAO, ATI_DTATUALIZACAO, '
      '  ATI_DTCADASTRO, ATI_HRATUALIZACAO, ATI_HRCADASTRO, '
      '  ATI_USUARIO)'
      
        'VALUES (gen_id(GEN_ATIVIDADES,1), :NEW_ATI_DESCRICAO, :NEW_ATI_D' +
        'TATUALIZACAO, '
      
        '  :NEW_ATI_DTCADASTRO, :NEW_ATI_HRATUALIZACAO, :NEW_ATI_HRCADAST' +
        'RO, '
      '  :NEW_ATI_USUARIO)'
      
        'RETURNING ATI_CODIGO, ATI_DESCRICAO, ATI_DTATUALIZACAO, ATI_DTCA' +
        'DASTRO, ATI_HRATUALIZACAO, ATI_HRCADASTRO, ATI_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ATIVIDADES'
      
        'SET ATI_CODIGO = :NEW_ATI_CODIGO, ATI_DESCRICAO = :NEW_ATI_DESCR' +
        'ICAO, '
      
        '  ATI_DTATUALIZACAO = :NEW_ATI_DTATUALIZACAO, ATI_DTCADASTRO = :' +
        'NEW_ATI_DTCADASTRO, '
      
        '  ATI_HRATUALIZACAO = :NEW_ATI_HRATUALIZACAO, ATI_HRCADASTRO = :' +
        'NEW_ATI_HRCADASTRO, '
      '  ATI_USUARIO = :NEW_ATI_USUARIO'
      'WHERE ATI_CODIGO = :OLD_ATI_CODIGO'
      
        'RETURNING ATI_CODIGO, ATI_DESCRICAO, ATI_DTATUALIZACAO, ATI_DTCA' +
        'DASTRO, ATI_HRATUALIZACAO, ATI_HRCADASTRO, ATI_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ATIVIDADES'
      'WHERE ATI_CODIGO = :OLD_ATI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ATI_CODIGO, ATI_DESCRICAO, ATI_DTATUALIZACAO, ATI_DTCADAS' +
        'TRO, '
      '  ATI_HRATUALIZACAO, ATI_HRCADASTRO, ATI_USUARIO'
      'FROM ATIVIDADES'
      'WHERE ATI_CODIGO = :OLD_ATI_CODIGO')
    Left = 128
    Top = 128
  end
  object TBBancos: TFDQuery
    Connection = FDConnection1
    Transaction = TRBancos
    UpdateObject = UPBancos
    SQL.Strings = (
      'select * from BANCOS '
      'where BAN_CODIGO=:codigo'
      'order by BAN_CODIGO'
      '')
    Left = 160
    Top = 80
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
  object TRBancos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 160
    Top = 176
  end
  object UPBancos: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 160
    Top = 128
  end
  object TBBeneficios: TFDQuery
    Connection = FDConnection1
    Transaction = TRBeneficios
    UpdateObject = UPBeneficios
    SQL.Strings = (
      'select * from BENEFICIOS '
      'where BEN_CODIGO=:codigo '
      'order by BEN_CODIGO'
      '')
    Left = 192
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object TBBeneficiosBEN_CODIGO: TStringField
      FieldName = 'BEN_CODIGO'
      Origin = 'BEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBBeneficiosBEN_DESCRICAO: TMemoField
      FieldName = 'BEN_DESCRICAO'
      Origin = 'BEN_DESCRICAO'
      BlobType = ftMemo
    end
    object TBBeneficiosBEN_DTATUALIZACAO: TDateField
      FieldName = 'BEN_DTATUALIZACAO'
      Origin = 'BEN_DTATUALIZACAO'
    end
    object TBBeneficiosBEN_DTCADASTRO: TDateField
      FieldName = 'BEN_DTCADASTRO'
      Origin = 'BEN_DTCADASTRO'
    end
    object TBBeneficiosBEN_HRATUALIZACAO: TTimeField
      FieldName = 'BEN_HRATUALIZACAO'
      Origin = 'BEN_HRATUALIZACAO'
    end
    object TBBeneficiosBEN_HRCADASTRO: TTimeField
      FieldName = 'BEN_HRCADASTRO'
      Origin = 'BEN_HRCADASTRO'
    end
    object TBBeneficiosBEN_TIPO: TStringField
      FieldName = 'BEN_TIPO'
      Origin = 'BEN_TIPO'
      Size = 50
    end
    object TBBeneficiosBEN_USUARIO: TStringField
      FieldName = 'BEN_USUARIO'
      Origin = 'BEN_USUARIO'
    end
  end
  object TRBeneficios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 192
    Top = 176
  end
  object UPBeneficios: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BENEFICIOS'
      '(BEN_CODIGO, BEN_DESCRICAO, BEN_DTATUALIZACAO, '
      '  BEN_DTCADASTRO, BEN_HRATUALIZACAO, BEN_HRCADASTRO, '
      '  BEN_TIPO, BEN_USUARIO)'
      
        'VALUES (:NEW_BEN_CODIGO, :NEW_BEN_DESCRICAO, :NEW_BEN_DTATUALIZA' +
        'CAO, '
      
        '  :NEW_BEN_DTCADASTRO, :NEW_BEN_HRATUALIZACAO, :NEW_BEN_HRCADAST' +
        'RO, '
      '  :NEW_BEN_TIPO, :NEW_BEN_USUARIO)'
      
        'RETURNING BEN_CODIGO, BEN_DESCRICAO, BEN_DTATUALIZACAO, BEN_DTCA' +
        'DASTRO, BEN_HRATUALIZACAO, BEN_HRCADASTRO, BEN_TIPO, BEN_USUARIO')
    ModifySQL.Strings = (
      'UPDATE BENEFICIOS'
      
        'SET BEN_CODIGO = :NEW_BEN_CODIGO, BEN_DESCRICAO = :NEW_BEN_DESCR' +
        'ICAO, '
      
        '  BEN_DTATUALIZACAO = :NEW_BEN_DTATUALIZACAO, BEN_DTCADASTRO = :' +
        'NEW_BEN_DTCADASTRO, '
      
        '  BEN_HRATUALIZACAO = :NEW_BEN_HRATUALIZACAO, BEN_HRCADASTRO = :' +
        'NEW_BEN_HRCADASTRO, '
      '  BEN_TIPO = :NEW_BEN_TIPO, BEN_USUARIO = :NEW_BEN_USUARIO'
      'WHERE BEN_CODIGO = :OLD_BEN_CODIGO'
      
        'RETURNING BEN_CODIGO, BEN_DESCRICAO, BEN_DTATUALIZACAO, BEN_DTCA' +
        'DASTRO, BEN_HRATUALIZACAO, BEN_HRCADASTRO, BEN_TIPO, BEN_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM BENEFICIOS'
      'WHERE BEN_CODIGO = :OLD_BEN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT BEN_CODIGO, BEN_DESCRICAO, BEN_DTATUALIZACAO, BEN_DTCADAS' +
        'TRO, '
      '  BEN_HRATUALIZACAO, BEN_HRCADASTRO, BEN_TIPO, BEN_USUARIO'
      'FROM BENEFICIOS'
      'WHERE BEN_CODIGO = :OLD_BEN_CODIGO')
    Left = 192
    Top = 128
  end
  object TBCaixa: TFDQuery
    Connection = FDConnection1
    Transaction = TRCaixa
    UpdateObject = UPCaixa
    SQL.Strings = (
      'select '
      'CAI_CLIENTE, '
      'CAI_CLIENTENOME, '
      'CAI_CODIGO, '
      'CAI_CONTA, '
      'CAI_DATA, '
      'CAI_DESCRICAO, '
      'CAI_DTATUALIZACAO, '
      'CAI_DTCADASTRO, '
      'CAI_ENTRADASAIDA, '
      'CAI_FORNECEDOR,'
      'CAI_FORNECEDORNOME, '
      'CAI_HRATUALIZACAO,'
      'CAI_HRCADASTRO,'
      'CAI_NUMCHEQUE, '
      'CAI_NUMDOCTO, '
      'CAI_ORIGEM, '
      'CAI_SALDOANTERIOR, '
      'CAI_SALDOPOSTERIOR, '
      'CAI_TIPODOCTO, '
      'CAI_USUARIO, '
      'CAI_VALOR, '
      'CAI_VENDEDOR,'
      'CON_NOME, '
      'VEN_NOME '
      'from CAIXAMOV'
      'left join CONTAS on CAI_CONTA=CON_CODIGO'
      'left join VENDEDORES on CAI_VENDEDOR=VEN_CODIGO '
      'where CAI_CODIGO=:codigo '
      'order by CAI_CODIGO'
      '')
    Left = 224
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCaixaCAI_CLIENTE: TIntegerField
      FieldName = 'CAI_CLIENTE'
      Origin = 'CAI_CLIENTE'
    end
    object TBCaixaCAI_CLIENTENOME: TStringField
      FieldName = 'CAI_CLIENTENOME'
      Origin = 'CAI_CLIENTENOME'
      Size = 80
    end
    object TBCaixaCAI_CODIGO: TIntegerField
      FieldName = 'CAI_CODIGO'
      Origin = 'CAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBCaixaCAI_CONTA: TIntegerField
      FieldName = 'CAI_CONTA'
      Origin = 'CAI_CONTA'
      Required = True
    end
    object TBCaixaCAI_DATA: TDateField
      FieldName = 'CAI_DATA'
      Origin = 'CAI_DATA'
    end
    object TBCaixaCAI_DESCRICAO: TStringField
      FieldName = 'CAI_DESCRICAO'
      Origin = 'CAI_DESCRICAO'
      Size = 120
    end
    object TBCaixaCAI_DTATUALIZACAO: TDateField
      FieldName = 'CAI_DTATUALIZACAO'
      Origin = 'CAI_DTATUALIZACAO'
    end
    object TBCaixaCAI_DTCADASTRO: TDateField
      FieldName = 'CAI_DTCADASTRO'
      Origin = 'CAI_DTCADASTRO'
    end
    object TBCaixaCAI_ENTRADASAIDA: TStringField
      FieldName = 'CAI_ENTRADASAIDA'
      Origin = 'CAI_ENTRADASAIDA'
      Size = 1
    end
    object TBCaixaCAI_FORNECEDOR: TIntegerField
      FieldName = 'CAI_FORNECEDOR'
      Origin = 'CAI_FORNECEDOR'
    end
    object TBCaixaCAI_FORNECEDORNOME: TStringField
      FieldName = 'CAI_FORNECEDORNOME'
      Origin = 'CAI_FORNECEDORNOME'
      Size = 80
    end
    object TBCaixaCAI_HRATUALIZACAO: TTimeField
      FieldName = 'CAI_HRATUALIZACAO'
      Origin = 'CAI_HRATUALIZACAO'
    end
    object TBCaixaCAI_HRCADASTRO: TTimeField
      FieldName = 'CAI_HRCADASTRO'
      Origin = 'CAI_HRCADASTRO'
    end
    object TBCaixaCAI_NUMCHEQUE: TStringField
      FieldName = 'CAI_NUMCHEQUE'
      Origin = 'CAI_NUMCHEQUE'
    end
    object TBCaixaCAI_NUMDOCTO: TStringField
      FieldName = 'CAI_NUMDOCTO'
      Origin = 'CAI_NUMDOCTO'
    end
    object TBCaixaCAI_ORIGEM: TStringField
      FieldName = 'CAI_ORIGEM'
      Origin = 'CAI_ORIGEM'
      Size = 50
    end
    object TBCaixaCAI_SALDOANTERIOR: TFMTBCDField
      FieldName = 'CAI_SALDOANTERIOR'
      Origin = 'CAI_SALDOANTERIOR'
      Precision = 18
    end
    object TBCaixaCAI_SALDOPOSTERIOR: TFMTBCDField
      FieldName = 'CAI_SALDOPOSTERIOR'
      Origin = 'CAI_SALDOPOSTERIOR'
      Precision = 18
    end
    object TBCaixaCAI_TIPODOCTO: TStringField
      FieldName = 'CAI_TIPODOCTO'
      Origin = 'CAI_TIPODOCTO'
    end
    object TBCaixaCAI_USUARIO: TStringField
      FieldName = 'CAI_USUARIO'
      Origin = 'CAI_USUARIO'
    end
    object TBCaixaCAI_VALOR: TFMTBCDField
      FieldName = 'CAI_VALOR'
      Origin = 'CAI_VALOR'
      Precision = 18
    end
    object TBCaixaCAI_VENDEDOR: TIntegerField
      FieldName = 'CAI_VENDEDOR'
      Origin = 'CAI_VENDEDOR'
      Required = True
    end
    object TBCaixaCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBCaixaVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRCaixa: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 224
    Top = 176
  end
  object UPCaixa: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CAIXAMOV'
      '(CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, '
      '  CAI_DATA, CAI_DESCRICAO, CAI_DTATUALIZACAO, '
      '  CAI_DTCADASTRO, CAI_ENTRADASAIDA, CAI_FORNECEDOR, '
      '  CAI_FORNECEDORNOME, CAI_HRATUALIZACAO, CAI_HRCADASTRO, '
      '  CAI_NUMCHEQUE, CAI_NUMDOCTO, CAI_ORIGEM, '
      '  CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, '
      '  CAI_USUARIO, CAI_VALOR, CAI_VENDEDOR)'
      
        'VALUES (:NEW_CAI_CLIENTE, :NEW_CAI_CLIENTENOME, gen_id(GEN_CAIXA' +
        'MOV,1), :NEW_CAI_CONTA, '
      '  :NEW_CAI_DATA, :NEW_CAI_DESCRICAO, :NEW_CAI_DTATUALIZACAO, '
      
        '  :NEW_CAI_DTCADASTRO, :NEW_CAI_ENTRADASAIDA, :NEW_CAI_FORNECEDO' +
        'R, '
      
        '  :NEW_CAI_FORNECEDORNOME, :NEW_CAI_HRATUALIZACAO, :NEW_CAI_HRCA' +
        'DASTRO, '
      '  :NEW_CAI_NUMCHEQUE, :NEW_CAI_NUMDOCTO, :NEW_CAI_ORIGEM, '
      
        '  :NEW_CAI_SALDOANTERIOR, :NEW_CAI_SALDOPOSTERIOR, :NEW_CAI_TIPO' +
        'DOCTO, '
      '  :NEW_CAI_USUARIO, :NEW_CAI_VALOR, :NEW_CAI_VENDEDOR)'
      
        'RETURNING CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, C' +
        'AI_DATA, CAI_DESCRICAO, CAI_DTATUALIZACAO, CAI_DTCADASTRO, CAI_E' +
        'NTRADASAIDA, CAI_FORNECEDOR, CAI_FORNECEDORNOME, CAI_HRATUALIZAC' +
        'AO, CAI_HRCADASTRO, CAI_NUMCHEQUE, CAI_NUMDOCTO, CAI_ORIGEM, CAI' +
        '_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_USUARIO, ' +
        'CAI_VALOR, CAI_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE CAIXAMOV'
      
        'SET CAI_CLIENTE = :NEW_CAI_CLIENTE, CAI_CLIENTENOME = :NEW_CAI_C' +
        'LIENTENOME, '
      '  CAI_CODIGO = :NEW_CAI_CODIGO, CAI_CONTA = :NEW_CAI_CONTA, '
      '  CAI_DATA = :NEW_CAI_DATA, CAI_DESCRICAO = :NEW_CAI_DESCRICAO, '
      
        '  CAI_DTATUALIZACAO = :NEW_CAI_DTATUALIZACAO, CAI_DTCADASTRO = :' +
        'NEW_CAI_DTCADASTRO, '
      
        '  CAI_ENTRADASAIDA = :NEW_CAI_ENTRADASAIDA, CAI_FORNECEDOR = :NE' +
        'W_CAI_FORNECEDOR, '
      
        '  CAI_FORNECEDORNOME = :NEW_CAI_FORNECEDORNOME, CAI_HRATUALIZACA' +
        'O = :NEW_CAI_HRATUALIZACAO, '
      
        '  CAI_HRCADASTRO = :NEW_CAI_HRCADASTRO, CAI_NUMCHEQUE = :NEW_CAI' +
        '_NUMCHEQUE, '
      
        '  CAI_NUMDOCTO = :NEW_CAI_NUMDOCTO, CAI_ORIGEM = :NEW_CAI_ORIGEM' +
        ', '
      
        '  CAI_SALDOANTERIOR = :NEW_CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR' +
        ' = :NEW_CAI_SALDOPOSTERIOR, '
      
        '  CAI_TIPODOCTO = :NEW_CAI_TIPODOCTO, CAI_USUARIO = :NEW_CAI_USU' +
        'ARIO, '
      '  CAI_VALOR = :NEW_CAI_VALOR, CAI_VENDEDOR = :NEW_CAI_VENDEDOR'
      'WHERE CAI_CODIGO = :OLD_CAI_CODIGO'
      
        'RETURNING CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, C' +
        'AI_DATA, CAI_DESCRICAO, CAI_DTATUALIZACAO, CAI_DTCADASTRO, CAI_E' +
        'NTRADASAIDA, CAI_FORNECEDOR, CAI_FORNECEDORNOME, CAI_HRATUALIZAC' +
        'AO, CAI_HRCADASTRO, CAI_NUMCHEQUE, CAI_NUMDOCTO, CAI_ORIGEM, CAI' +
        '_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_USUARIO, ' +
        'CAI_VALOR, CAI_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM CAIXAMOV'
      'WHERE CAI_CODIGO = :OLD_CAI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, CAI_' +
        'DATA, '
      
        '  CAI_DESCRICAO, CAI_DTATUALIZACAO, CAI_DTCADASTRO, CAI_ENTRADAS' +
        'AIDA, '
      
        '  CAI_FORNECEDOR, CAI_FORNECEDORNOME, CAI_HRATUALIZACAO, CAI_HRC' +
        'ADASTRO, '
      '  CAI_NUMCHEQUE, CAI_NUMDOCTO, CAI_ORIGEM, CAI_SALDOANTERIOR, '
      '  CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_USUARIO, CAI_VALOR, '
      '  CAI_VENDEDOR'
      'FROM CAIXAMOV'
      'WHERE CAI_CODIGO = :OLD_CAI_CODIGO')
    Left = 224
    Top = 128
  end
  object TBClassFiscal: TFDQuery
    Connection = FDConnection1
    Transaction = TRClassFiscal
    UpdateObject = UPClassFiscal
    SQL.Strings = (
      'select * from CLASSFISCAL '
      'where CLF_CODIGO=:codigo and '
      'CLF_EXCECAO=:excecao '
      'order by CLF_CODIGO'
      '')
    Left = 288
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
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
    Left = 288
    Top = 176
  end
  object UPClassFiscal: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CLASSFISCAL'
      
        '(CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQUOTAMUNIC' +
        'IPAL, '
      '  CLF_ALIQUOTANACIONAL, CLF_CODIGO, CLF_DESCRICAO, '
      '  CLF_DTATUALIZACAO, CLF_DTCADASTRO, CLF_EXCECAO, '
      '  CLF_HRATUALIZACAO, CLF_HRCADASTRO, CLF_USUARIO, '
      '  CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI)'
      
        'VALUES (:NEW_CLF_ALIQUOTAESTADUAL, :NEW_CLF_ALIQUOTAIMPORTACAO, ' +
        ':NEW_CLF_ALIQUOTAMUNICIPAL, '
      
        '  :NEW_CLF_ALIQUOTANACIONAL, :NEW_CLF_CODIGO, :NEW_CLF_DESCRICAO' +
        ', '
      
        '  :NEW_CLF_DTATUALIZACAO, :NEW_CLF_DTCADASTRO, :NEW_CLF_EXCECAO,' +
        ' '
      
        '  :NEW_CLF_HRATUALIZACAO, :NEW_CLF_HRCADASTRO, :NEW_CLF_USUARIO,' +
        ' '
      '  :NEW_CLF_VERSAO, :NEW_CLF_VIGENCIAFIM, :NEW_CLF_VIGENCIAINI)'
      
        'RETURNING CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQ' +
        'UOTAMUNICIPAL, CLF_ALIQUOTANACIONAL, CLF_CODIGO, CLF_DESCRICAO, ' +
        'CLF_DTATUALIZACAO, CLF_DTCADASTRO, CLF_EXCECAO, CLF_HRATUALIZACA' +
        'O, CLF_HRCADASTRO, CLF_USUARIO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF' +
        '_VIGENCIAINI')
    ModifySQL.Strings = (
      'UPDATE CLASSFISCAL'
      
        'SET CLF_ALIQUOTAESTADUAL = :NEW_CLF_ALIQUOTAESTADUAL, CLF_ALIQUO' +
        'TAIMPORTACAO = :NEW_CLF_ALIQUOTAIMPORTACAO, '
      
        '  CLF_ALIQUOTAMUNICIPAL = :NEW_CLF_ALIQUOTAMUNICIPAL, CLF_ALIQUO' +
        'TANACIONAL = :NEW_CLF_ALIQUOTANACIONAL, '
      
        '  CLF_CODIGO = :NEW_CLF_CODIGO, CLF_DESCRICAO = :NEW_CLF_DESCRIC' +
        'AO, '
      
        '  CLF_DTATUALIZACAO = :NEW_CLF_DTATUALIZACAO, CLF_DTCADASTRO = :' +
        'NEW_CLF_DTCADASTRO, '
      
        '  CLF_EXCECAO = :NEW_CLF_EXCECAO, CLF_HRATUALIZACAO = :NEW_CLF_H' +
        'RATUALIZACAO, '
      
        '  CLF_HRCADASTRO = :NEW_CLF_HRCADASTRO, CLF_USUARIO = :NEW_CLF_U' +
        'SUARIO, '
      
        '  CLF_VERSAO = :NEW_CLF_VERSAO, CLF_VIGENCIAFIM = :NEW_CLF_VIGEN' +
        'CIAFIM, '
      '  CLF_VIGENCIAINI = :NEW_CLF_VIGENCIAINI'
      
        'WHERE CLF_CODIGO = :OLD_CLF_CODIGO AND CLF_EXCECAO = :OLD_CLF_EX' +
        'CECAO'
      
        'RETURNING CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQ' +
        'UOTAMUNICIPAL, CLF_ALIQUOTANACIONAL, CLF_CODIGO, CLF_DESCRICAO, ' +
        'CLF_DTATUALIZACAO, CLF_DTCADASTRO, CLF_EXCECAO, CLF_HRATUALIZACA' +
        'O, CLF_HRCADASTRO, CLF_USUARIO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF' +
        '_VIGENCIAINI')
    DeleteSQL.Strings = (
      'DELETE FROM CLASSFISCAL'
      
        'WHERE CLF_CODIGO = :OLD_CLF_CODIGO AND CLF_EXCECAO = :OLD_CLF_EX' +
        'CECAO')
    FetchRowSQL.Strings = (
      
        'SELECT CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQUOT' +
        'AMUNICIPAL, '
      
        '  CLF_ALIQUOTANACIONAL, CLF_CODIGO, CLF_DESCRICAO, CLF_DTATUALIZ' +
        'ACAO, '
      
        '  CLF_DTCADASTRO, CLF_EXCECAO, CLF_HRATUALIZACAO, CLF_HRCADASTRO' +
        ', '
      '  CLF_USUARIO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI'
      'FROM CLASSFISCAL'
      
        'WHERE CLF_CODIGO = :OLD_CLF_CODIGO AND CLF_EXCECAO = :OLD_CLF_EX' +
        'CECAO')
    Left = 288
    Top = 128
  end
  object TBClientes: TFDQuery
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
      'CLI_REGPROFISSIONAL,'
      'CLI_REPOSICOES, '
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
    Left = 320
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object TBClientesCLI_REPOSICOES: TIntegerField
      FieldName = 'CLI_REPOSICOES'
      Origin = 'CLI_REPOSICOES'
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
    Left = 320
    Top = 176
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
      '  CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_REPOSICOES, '
      '  CLI_RG, CLI_SAME, CLI_SETOR, CLI_SEXO, '
      '  CLI_SITE, CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPRECO, '
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
      
        '  :NEW_CLI_RECEBEAVISOS, :NEW_CLI_REGPROFISSIONAL, :NEW_CLI_REPO' +
        'SICOES, '
      '  :NEW_CLI_RG, :NEW_CLI_SAME, :NEW_CLI_SETOR, :NEW_CLI_SEXO, '
      
        '  :NEW_CLI_SITE, :NEW_CLI_STATUS, :NEW_CLI_SUFRAMA, :NEW_CLI_TAB' +
        'ELAPRECO, '
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
        'O, CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_REPOSICOES, CLI_RG' +
        ', CLI_SAME, CLI_SETOR, CLI_SEXO, CLI_SITE, CLI_STATUS, CLI_SUFRA' +
        'MA, CLI_TABELAPRECO, CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, C' +
        'LI_TIPOCONSUMIDOR, CLI_TIPOPESSOA, CLI_TRANSPORTADORA, CLI_USUAR' +
        'IO, CLI_VENDEDOR')
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
      
        '  CLI_REGPROFISSIONAL = :NEW_CLI_REGPROFISSIONAL, CLI_REPOSICOES' +
        ' = :NEW_CLI_REPOSICOES, '
      
        '  CLI_RG = :NEW_CLI_RG, CLI_SAME = :NEW_CLI_SAME, CLI_SETOR = :N' +
        'EW_CLI_SETOR, '
      
        '  CLI_SEXO = :NEW_CLI_SEXO, CLI_SITE = :NEW_CLI_SITE, CLI_STATUS' +
        ' = :NEW_CLI_STATUS, '
      
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
        'O, CLI_RECEBEAVISOS, CLI_REGPROFISSIONAL, CLI_REPOSICOES, CLI_RG' +
        ', CLI_SAME, CLI_SETOR, CLI_SEXO, CLI_SITE, CLI_STATUS, CLI_SUFRA' +
        'MA, CLI_TABELAPRECO, CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, C' +
        'LI_TIPOCONSUMIDOR, CLI_TIPOPESSOA, CLI_TRANSPORTADORA, CLI_USUAR' +
        'IO, CLI_VENDEDOR')
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
      
        '  CLI_REGPROFISSIONAL, CLI_REPOSICOES, CLI_RG, CLI_SAME, CLI_SET' +
        'OR, '
      '  CLI_SEXO, CLI_SITE, CLI_STATUS, CLI_SUFRAMA, CLI_TABELAPRECO, '
      '  CLI_TAXA, CLI_TELEVENDA, CLI_TIPOCLIENTE, CLI_TIPOCONSUMIDOR, '
      '  CLI_TIPOPESSOA, CLI_TRANSPORTADORA, CLI_USUARIO, CLI_VENDEDOR'
      'FROM CLIENTES'
      'WHERE CLI_CODIGO = :OLD_CLI_CODIGO')
    Left = 320
    Top = 128
  end
  object TBCondicoes: TFDQuery
    Connection = FDConnection1
    Transaction = TRCondicoes
    UpdateObject = UPCondicoes
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
      'CPG_PADRAO,'
      'CPG_PARCELASIGUAIS,'
      'CPG_STATUS,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TIPOPAGAMENTO,'
      'CPG_TOTALPARCELAS,'
      'CPG_TOTALPORCENTAGEM,'
      'CPG_USUARIO,'
      'CON_NOME'
      'from CONDICOES'
      'left join CONTAS on CPG_CONTA=CON_CODIGO'
      'where CPG_CODIGO=:codigo'
      'order by CPG_CODIGO'
      '')
    Left = 352
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object TBCondicoesCPG_PADRAO: TStringField
      FieldName = 'CPG_PADRAO'
      Origin = 'CPG_PADRAO'
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
    object TBCondicoesCPG_TIPOPAGAMENTO: TStringField
      FieldName = 'CPG_TIPOPAGAMENTO'
      Origin = 'CPG_TIPOPAGAMENTO'
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
    Left = 352
    Top = 176
  end
  object UPCondicoes: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONDICOES'
      '(CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, '
      '  CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, '
      '  CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, '
      '  CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, '
      '  CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, '
      '  CPG_PADRAO, CPG_PARCELASIGUAIS, CPG_STATUS, '
      '  CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, '
      '  CPG_TOTALPORCENTAGEM, CPG_USUARIO)'
      
        'VALUES (:NEW_CPG_ATUALIZAR, :NEW_CPG_BAIXARPRIMEIRAPARC, gen_id(' +
        'GEN_CONDICOES,1), '
      
        '  :NEW_CPG_CONTA, :NEW_CPG_CUPOM, :NEW_CPG_DESCPORC, :NEW_CPG_DE' +
        'SCRICAO, '
      
        '  :NEW_CPG_DESCRICAOCUPOM, :NEW_CPG_DTATUALIZACAO, :NEW_CPG_DTCA' +
        'DASTRO, '
      
        '  :NEW_CPG_FORMAPAGTO, :NEW_CPG_HRATUALIZACAO, :NEW_CPG_HRCADAST' +
        'RO, '
      '  :NEW_CPG_MEIOPAGAMENTO, :NEW_CPG_MENSAL, :NEW_CPG_MOBILE, '
      '  :NEW_CPG_PADRAO, :NEW_CPG_PARCELASIGUAIS, :NEW_CPG_STATUS, '
      
        '  :NEW_CPG_TIPOINTEGRACAO, :NEW_CPG_TIPOPAGAMENTO, :NEW_CPG_TOTA' +
        'LPARCELAS, '
      '  :NEW_CPG_TOTALPORCENTAGEM, :NEW_CPG_USUARIO)'
      
        'RETURNING CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG' +
        '_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUP' +
        'OM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATU' +
        'ALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOB' +
        'ILE, CPG_PADRAO, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRA' +
        'CAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM,' +
        ' CPG_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CONDICOES'
      
        'SET CPG_ATUALIZAR = :NEW_CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC =' +
        ' :NEW_CPG_BAIXARPRIMEIRAPARC, '
      '  CPG_CODIGO = :NEW_CPG_CODIGO, CPG_CONTA = :NEW_CPG_CONTA, '
      '  CPG_CUPOM = :NEW_CPG_CUPOM, CPG_DESCPORC = :NEW_CPG_DESCPORC, '
      
        '  CPG_DESCRICAO = :NEW_CPG_DESCRICAO, CPG_DESCRICAOCUPOM = :NEW_' +
        'CPG_DESCRICAOCUPOM, '
      
        '  CPG_DTATUALIZACAO = :NEW_CPG_DTATUALIZACAO, CPG_DTCADASTRO = :' +
        'NEW_CPG_DTCADASTRO, '
      
        '  CPG_FORMAPAGTO = :NEW_CPG_FORMAPAGTO, CPG_HRATUALIZACAO = :NEW' +
        '_CPG_HRATUALIZACAO, '
      
        '  CPG_HRCADASTRO = :NEW_CPG_HRCADASTRO, CPG_MEIOPAGAMENTO = :NEW' +
        '_CPG_MEIOPAGAMENTO, '
      '  CPG_MENSAL = :NEW_CPG_MENSAL, CPG_MOBILE = :NEW_CPG_MOBILE, '
      
        '  CPG_PADRAO = :NEW_CPG_PADRAO, CPG_PARCELASIGUAIS = :NEW_CPG_PA' +
        'RCELASIGUAIS, '
      
        '  CPG_STATUS = :NEW_CPG_STATUS, CPG_TIPOINTEGRACAO = :NEW_CPG_TI' +
        'POINTEGRACAO, '
      
        '  CPG_TIPOPAGAMENTO = :NEW_CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS ' +
        '= :NEW_CPG_TOTALPARCELAS, '
      
        '  CPG_TOTALPORCENTAGEM = :NEW_CPG_TOTALPORCENTAGEM, CPG_USUARIO ' +
        '= :NEW_CPG_USUARIO'
      'WHERE CPG_CODIGO = :OLD_CPG_CODIGO'
      
        'RETURNING CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG' +
        '_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUP' +
        'OM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATU' +
        'ALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOB' +
        'ILE, CPG_PADRAO, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRA' +
        'CAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM,' +
        ' CPG_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CONDICOES'
      'WHERE CPG_CODIGO = :OLD_CPG_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CO' +
        'NTA, '
      '  CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, '
      
        '  CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUAL' +
        'IZACAO, '
      '  CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, '
      
        '  CPG_PADRAO, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO' +
        ', '
      '  CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, '
      '  CPG_USUARIO'
      'FROM CONDICOES'
      'WHERE CPG_CODIGO = :OLD_CPG_CODIGO')
    Left = 352
    Top = 128
  end
  object TBCondicoesItens: TFDQuery
    MasterSource = DSCondicoes
    MasterFields = 'CPG_CODIGO'
    Connection = FDConnection1
    Transaction = TRCondicoesItens
    UpdateObject = UPCondicoesItens
    SQL.Strings = (
      'select * from CONDICOESITENS'
      'where CPI_CONDICAO=:CPG_CODIGO'
      'order by CPI_DIAS'
      '')
    Left = 384
    Top = 80
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
    Left = 384
    Top = 176
  end
  object UPCondicoesItens: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONDICOESITENS'
      '(CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM)'
      
        'VALUES (gen_id(GEN_CONDICOESITENS,1), :NEW_CPI_CONDICAO, :NEW_CP' +
        'I_DIAS, :NEW_CPI_PORCENTAGEM)'
      'RETURNING CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM')
    ModifySQL.Strings = (
      'UPDATE CONDICOESITENS'
      
        'SET CPI_CODIGO = :NEW_CPI_CODIGO, CPI_CONDICAO = :NEW_CPI_CONDIC' +
        'AO, '
      
        '  CPI_DIAS = :NEW_CPI_DIAS, CPI_PORCENTAGEM = :NEW_CPI_PORCENTAG' +
        'EM'
      'WHERE CPI_CODIGO = :OLD_CPI_CODIGO'
      'RETURNING CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM')
    DeleteSQL.Strings = (
      'DELETE FROM CONDICOESITENS'
      'WHERE CPI_CODIGO = :OLD_CPI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM'
      'FROM CONDICOESITENS'
      'WHERE CPI_CODIGO = :OLD_CPI_CODIGO')
    Left = 384
    Top = 128
  end
  object TBConsultas: TFDQuery
    Connection = FDConnection1
    Transaction = TRConsultas
    UpdateObject = UPConsultas
    SQL.Strings = (
      'select '
      'COS_CLIENTE, '
      'COS_CODIGO, '
      'COS_CONVENIO, '
      'COS_DATAFIM, '
      'COS_DATAINICIO, '
      'COS_DTATUALIZACAO, '
      'COS_DTCADASTRO, '
      'COS_FIM, '
      'COS_HORAFIM, '
      'COS_HORAINICIO,'
      'COS_HRATUALIZACAO, '
      'COS_HRCADASTRO, '
      'COS_INICIO, '
      'COS_MEDICO, '
      'COS_SOLICITANTE, '
      'COS_STATUS, '
      'COS_USUARIO, '
      'COS_VALORTOTAL, '
      'a.CLI_NOME, '
      'b.CLI_NOME as CLI_SOLICITANTE, '
      'COV_DESCRICAO, '
      'VEN_NOME '
      'from CONSULTAS'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'left join CLIENTES a on COS_CLIENTE=a.CLI_CODIGO'
      'left join CLIENTES b on COS_SOLICITANTE=b.CLI_CODIGO'
      'where COS_CODIGO=:codigo '
      'order by COS_CODIGO'
      '')
    Left = 416
    Top = 80
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
    end
    object TBConsultasCOS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
      Origin = 'COS_DATAINICIO'
    end
    object TBConsultasCOS_DTATUALIZACAO: TDateField
      FieldName = 'COS_DTATUALIZACAO'
      Origin = 'COS_DTATUALIZACAO'
    end
    object TBConsultasCOS_DTCADASTRO: TDateField
      FieldName = 'COS_DTCADASTRO'
      Origin = 'COS_DTCADASTRO'
    end
    object TBConsultasCOS_FIM: TSQLTimeStampField
      FieldName = 'COS_FIM'
      Origin = 'COS_FIM'
    end
    object TBConsultasCOS_HORAFIM: TTimeField
      FieldName = 'COS_HORAFIM'
      Origin = 'COS_HORAFIM'
    end
    object TBConsultasCOS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
      Origin = 'COS_HORAINICIO'
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
      Precision = 18
    end
    object TBConsultasCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBConsultasCLI_SOLICITANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SOLICITANTE'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object TBConsultasCOV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COV_DESCRICAO'
      Origin = 'COV_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
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
  object TRConsultas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 416
    Top = 176
  end
  object UPConsultas: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 416
    Top = 128
  end
  object TBConsultasItens: TFDQuery
    MasterSource = DSConsultas
    MasterFields = 'COS_CODIGO'
    Connection = FDConnection1
    Transaction = TRConsultasItens
    UpdateObject = UPConsultasItens
    SQL.Strings = (
      'select * from CONSULTASITENS '
      'where CSI_CONSULTA=:COS_CODIGO '
      'order by CSI_CODIGO'
      '')
    Left = 448
    Top = 80
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
    object TBConsultasItensCSI_DESCRICAO: TStringField
      FieldName = 'CSI_DESCRICAO'
      Origin = 'CSI_DESCRICAO'
      Size = 120
    end
    object TBConsultasItensCSI_EXAME: TIntegerField
      FieldName = 'CSI_EXAME'
      Origin = 'CSI_EXAME'
      Required = True
    end
    object TBConsultasItensCSI_SIGLA: TStringField
      FieldName = 'CSI_SIGLA'
      Origin = 'CSI_SIGLA'
      Size = 10
    end
    object TBConsultasItensCSI_VALOR: TFMTBCDField
      FieldName = 'CSI_VALOR'
      Origin = 'CSI_VALOR'
      Precision = 18
    end
  end
  object TRConsultasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 448
    Top = 176
  end
  object UPConsultasItens: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 448
    Top = 128
  end
  object TBContas: TFDQuery
    Connection = FDConnection1
    Transaction = TRContas
    UpdateObject = UPContas
    SQL.Strings = (
      'select '
      'CON_AGENCIA,'
      'CON_AGENCIADIGITO,'
      'CON_ATUALIZAR,'
      'CON_BAIXACODIGO,'
      'CON_BANCO,'
      'CON_CARTEIRA,'
      'CON_CARTEIRACOD,'
      'CON_CEDENTE,'
      'CON_CEDENTEDIGITO,'
      'CON_CEDENTEDOC,'
      'CON_CEDENTENOME,'
      'CON_CHAVEPIX,'
      'CON_CHAVEPIXTIPO,'
      'CON_CLIENTID,'
      'CON_CLIENTSECRET,'
      'CON_CNPJ,'
      'CON_CODIGO,'
      'CON_CONTA,'
      'CON_CONTADIGITO,'
      'CON_CONTATO,'
      'CON_CONVENIO,'
      'CON_DESCONTOTIPO,'
      'CON_DIASBAIXA,'
      'CON_DIASPROTESTO,'
      'CON_DTATUALIZACAO,'
      'CON_DTCADASTRO,'
      'CON_ESPECIE,'
      'CON_ESPECIEDOC,'
      'CON_FONE1,'
      'CON_FONE2,'
      'CON_HRATUALIZACAO,'
      'CON_HRCADASTRO,'
      'CON_INSTRUCAO1,'
      'CON_INSTRUCAO2,'
      'CON_INSTRUCAO3,'
      'CON_INSTRUCAO4,'
      'CON_INSTRUCAO5,'
      'CON_KEYUSER,'
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
      'CON_SALDO,'
      'CON_STATUS,'
      'CON_TIPOCOBRANCA,'
      'CON_USUARIO,'
      'CON_VALORBOLETO,'
      'BAN_NOME'
      'from CONTAS '
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'where CON_CODIGO=:codigo '
      'order by CON_CODIGO'
      '')
    Left = 480
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBContasCON_AGENCIA: TStringField
      FieldName = 'CON_AGENCIA'
      Origin = 'CON_AGENCIA'
      Size = 10
    end
    object TBContasCON_AGENCIADIGITO: TIntegerField
      FieldName = 'CON_AGENCIADIGITO'
      Origin = 'CON_AGENCIADIGITO'
    end
    object TBContasCON_ATUALIZAR: TStringField
      FieldName = 'CON_ATUALIZAR'
      Origin = 'CON_ATUALIZAR'
      Size = 1
    end
    object TBContasCON_BAIXACODIGO: TIntegerField
      FieldName = 'CON_BAIXACODIGO'
      Origin = 'CON_BAIXACODIGO'
    end
    object TBContasCON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = 'CON_BANCO'
      Required = True
    end
    object TBContasCON_CARTEIRA: TStringField
      FieldName = 'CON_CARTEIRA'
      Origin = 'CON_CARTEIRA'
      Size = 10
    end
    object TBContasCON_CARTEIRACOD: TIntegerField
      FieldName = 'CON_CARTEIRACOD'
      Origin = 'CON_CARTEIRACOD'
    end
    object TBContasCON_CEDENTE: TStringField
      FieldName = 'CON_CEDENTE'
      Origin = 'CON_CEDENTE'
    end
    object TBContasCON_CEDENTEDIGITO: TIntegerField
      FieldName = 'CON_CEDENTEDIGITO'
      Origin = 'CON_CEDENTEDIGITO'
    end
    object TBContasCON_CEDENTEDOC: TStringField
      FieldName = 'CON_CEDENTEDOC'
      Origin = 'CON_CEDENTEDOC'
    end
    object TBContasCON_CEDENTENOME: TStringField
      FieldName = 'CON_CEDENTENOME'
      Origin = 'CON_CEDENTENOME'
      Size = 80
    end
    object TBContasCON_CHAVEPIX: TStringField
      FieldName = 'CON_CHAVEPIX'
      Origin = 'CON_CHAVEPIX'
      Size = 50
    end
    object TBContasCON_CHAVEPIXTIPO: TStringField
      FieldName = 'CON_CHAVEPIXTIPO'
      Origin = 'CON_CHAVEPIXTIPO'
      Size = 10
    end
    object TBContasCON_CLIENTID: TStringField
      FieldName = 'CON_CLIENTID'
      Origin = 'CON_CLIENTID'
      Size = 300
    end
    object TBContasCON_CLIENTSECRET: TStringField
      FieldName = 'CON_CLIENTSECRET'
      Origin = 'CON_CLIENTSECRET'
      Size = 300
    end
    object TBContasCON_CNPJ: TStringField
      FieldName = 'CON_CNPJ'
      Origin = 'CON_CNPJ'
    end
    object TBContasCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
      Origin = 'CON_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBContasCON_CONTA: TStringField
      FieldName = 'CON_CONTA'
      Origin = 'CON_CONTA'
      Size = 15
    end
    object TBContasCON_CONTADIGITO: TIntegerField
      FieldName = 'CON_CONTADIGITO'
      Origin = 'CON_CONTADIGITO'
    end
    object TBContasCON_CONTATO: TStringField
      FieldName = 'CON_CONTATO'
      Origin = 'CON_CONTATO'
      Size = 80
    end
    object TBContasCON_CONVENIO: TStringField
      FieldName = 'CON_CONVENIO'
      Origin = 'CON_CONVENIO'
    end
    object TBContasCON_DESCONTOTIPO: TStringField
      FieldName = 'CON_DESCONTOTIPO'
      Origin = 'CON_DESCONTOTIPO'
      Size = 15
    end
    object TBContasCON_DIASBAIXA: TIntegerField
      FieldName = 'CON_DIASBAIXA'
      Origin = 'CON_DIASBAIXA'
    end
    object TBContasCON_DIASPROTESTO: TIntegerField
      FieldName = 'CON_DIASPROTESTO'
      Origin = 'CON_DIASPROTESTO'
    end
    object TBContasCON_DTATUALIZACAO: TDateField
      FieldName = 'CON_DTATUALIZACAO'
      Origin = 'CON_DTATUALIZACAO'
    end
    object TBContasCON_DTCADASTRO: TDateField
      FieldName = 'CON_DTCADASTRO'
      Origin = 'CON_DTCADASTRO'
    end
    object TBContasCON_ESPECIE: TStringField
      FieldName = 'CON_ESPECIE'
      Origin = 'CON_ESPECIE'
      Size = 5
    end
    object TBContasCON_ESPECIEDOC: TStringField
      FieldName = 'CON_ESPECIEDOC'
      Origin = 'CON_ESPECIEDOC'
      Size = 50
    end
    object TBContasCON_FONE1: TStringField
      FieldName = 'CON_FONE1'
      Origin = 'CON_FONE1'
    end
    object TBContasCON_FONE2: TStringField
      FieldName = 'CON_FONE2'
      Origin = 'CON_FONE2'
    end
    object TBContasCON_HRATUALIZACAO: TTimeField
      FieldName = 'CON_HRATUALIZACAO'
      Origin = 'CON_HRATUALIZACAO'
    end
    object TBContasCON_HRCADASTRO: TTimeField
      FieldName = 'CON_HRCADASTRO'
      Origin = 'CON_HRCADASTRO'
    end
    object TBContasCON_INSTRUCAO1: TStringField
      FieldName = 'CON_INSTRUCAO1'
      Origin = 'CON_INSTRUCAO1'
      Size = 100
    end
    object TBContasCON_INSTRUCAO2: TStringField
      FieldName = 'CON_INSTRUCAO2'
      Origin = 'CON_INSTRUCAO2'
      Size = 100
    end
    object TBContasCON_INSTRUCAO3: TStringField
      FieldName = 'CON_INSTRUCAO3'
      Origin = 'CON_INSTRUCAO3'
      Size = 100
    end
    object TBContasCON_INSTRUCAO4: TStringField
      FieldName = 'CON_INSTRUCAO4'
      Origin = 'CON_INSTRUCAO4'
      Size = 100
    end
    object TBContasCON_INSTRUCAO5: TStringField
      FieldName = 'CON_INSTRUCAO5'
      Origin = 'CON_INSTRUCAO5'
      Size = 100
    end
    object TBContasCON_KEYUSER: TStringField
      FieldName = 'CON_KEYUSER'
      Origin = 'CON_KEYUSER'
      Size = 300
    end
    object TBContasCON_LAYOUT: TStringField
      FieldName = 'CON_LAYOUT'
      Origin = 'CON_LAYOUT'
      Size = 8
    end
    object TBContasCON_LOCALPAGTO: TStringField
      FieldName = 'CON_LOCALPAGTO'
      Origin = 'CON_LOCALPAGTO'
      Size = 120
    end
    object TBContasCON_MODALIDADE: TIntegerField
      FieldName = 'CON_MODALIDADE'
      Origin = 'CON_MODALIDADE'
    end
    object TBContasCON_MORACODIGO: TStringField
      FieldName = 'CON_MORACODIGO'
      Origin = 'CON_MORACODIGO'
      Size = 5
    end
    object TBContasCON_MORAJUROS: TFMTBCDField
      FieldName = 'CON_MORAJUROS'
      Origin = 'CON_MORAJUROS'
      Precision = 18
    end
    object TBContasCON_MORATIPO: TStringField
      FieldName = 'CON_MORATIPO'
      Origin = 'CON_MORATIPO'
      Size = 15
    end
    object TBContasCON_MULTA: TFMTBCDField
      FieldName = 'CON_MULTA'
      Origin = 'CON_MULTA'
      Precision = 18
    end
    object TBContasCON_MULTATIPO: TStringField
      FieldName = 'CON_MULTATIPO'
      Origin = 'CON_MULTATIPO'
      Size = 10
    end
    object TBContasCON_NOME: TStringField
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      Required = True
      Size = 80
    end
    object TBContasCON_NOSSONUMDIGITOS: TIntegerField
      FieldName = 'CON_NOSSONUMDIGITOS'
      Origin = 'CON_NOSSONUMDIGITOS'
    end
    object TBContasCON_NOSSONUMFORMATAR: TStringField
      FieldName = 'CON_NOSSONUMFORMATAR'
      Origin = 'CON_NOSSONUMFORMATAR'
      Size = 1
    end
    object TBContasCON_PROTESTOCODIGO: TIntegerField
      FieldName = 'CON_PROTESTOCODIGO'
      Origin = 'CON_PROTESTOCODIGO'
    end
    object TBContasCON_PROTESTOTIPO: TStringField
      FieldName = 'CON_PROTESTOTIPO'
      Origin = 'CON_PROTESTOTIPO'
    end
    object TBContasCON_SALDO: TFMTBCDField
      FieldName = 'CON_SALDO'
      Origin = 'CON_SALDO'
      Precision = 18
    end
    object TBContasCON_STATUS: TStringField
      FieldName = 'CON_STATUS'
      Origin = 'CON_STATUS'
      Size = 1
    end
    object TBContasCON_TIPOCOBRANCA: TStringField
      FieldName = 'CON_TIPOCOBRANCA'
      Origin = 'CON_TIPOCOBRANCA'
    end
    object TBContasCON_USUARIO: TStringField
      FieldName = 'CON_USUARIO'
      Origin = 'CON_USUARIO'
    end
    object TBContasCON_VALORBOLETO: TFMTBCDField
      FieldName = 'CON_VALORBOLETO'
      Origin = 'CON_VALORBOLETO'
      Precision = 18
    end
    object TBContasBAN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAN_NOME'
      Origin = 'BAN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 480
    Top = 176
  end
  object UPContas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONTAS'
      '(CON_AGENCIA, CON_AGENCIADIGITO, CON_ATUALIZAR, '
      '  CON_BAIXACODIGO, CON_BANCO, CON_CARTEIRA, '
      '  CON_CARTEIRACOD, CON_CEDENTE, CON_CEDENTEDIGITO, '
      '  CON_CEDENTEDOC, CON_CEDENTENOME, CON_CHAVEPIX, '
      '  CON_CHAVEPIXTIPO, CON_CLIENTID, CON_CLIENTSECRET, '
      '  CON_CNPJ, CON_CODIGO, CON_CONTA, CON_CONTADIGITO, '
      '  CON_CONTATO, CON_CONVENIO, CON_DESCONTOTIPO, '
      '  CON_DIASBAIXA, CON_DIASPROTESTO, CON_DTATUALIZACAO, '
      '  CON_DTCADASTRO, CON_ESPECIE, CON_ESPECIEDOC, '
      '  CON_FONE1, CON_FONE2, CON_HRATUALIZACAO, '
      '  CON_HRCADASTRO, CON_INSTRUCAO1, CON_INSTRUCAO2, '
      '  CON_INSTRUCAO3, CON_INSTRUCAO4, CON_INSTRUCAO5, '
      '  CON_KEYUSER, CON_LAYOUT, CON_LOCALPAGTO, '
      '  CON_MODALIDADE, CON_MORACODIGO, CON_MORAJUROS, '
      '  CON_MORATIPO, CON_MULTA, CON_MULTATIPO, CON_NOME, '
      
        '  CON_NOSSONUMDIGITOS, CON_NOSSONUMFORMATAR, CON_PROTESTOCODIGO,' +
        ' '
      '  CON_PROTESTOTIPO, CON_SALDO, CON_STATUS, '
      '  CON_TIPOCOBRANCA, CON_USUARIO, CON_VALORBOLETO)'
      
        'VALUES (:NEW_CON_AGENCIA, :NEW_CON_AGENCIADIGITO, :NEW_CON_ATUAL' +
        'IZAR, '
      '  :NEW_CON_BAIXACODIGO, :NEW_CON_BANCO, :NEW_CON_CARTEIRA, '
      
        '  :NEW_CON_CARTEIRACOD, :NEW_CON_CEDENTE, :NEW_CON_CEDENTEDIGITO' +
        ', '
      '  :NEW_CON_CEDENTEDOC, :NEW_CON_CEDENTENOME, :NEW_CON_CHAVEPIX, '
      
        '  :NEW_CON_CHAVEPIXTIPO, :NEW_CON_CLIENTID, :NEW_CON_CLIENTSECRE' +
        'T, '
      
        '  :NEW_CON_CNPJ, gen_id(GEN_CONTAS,1), :NEW_CON_CONTA, :NEW_CON_' +
        'CONTADIGITO, '
      '  :NEW_CON_CONTATO, :NEW_CON_CONVENIO, :NEW_CON_DESCONTOTIPO, '
      
        '  :NEW_CON_DIASBAIXA, :NEW_CON_DIASPROTESTO, :NEW_CON_DTATUALIZA' +
        'CAO, '
      '  :NEW_CON_DTCADASTRO, :NEW_CON_ESPECIE, :NEW_CON_ESPECIEDOC, '
      '  :NEW_CON_FONE1, :NEW_CON_FONE2, :NEW_CON_HRATUALIZACAO, '
      
        '  :NEW_CON_HRCADASTRO, :NEW_CON_INSTRUCAO1, :NEW_CON_INSTRUCAO2,' +
        ' '
      
        '  :NEW_CON_INSTRUCAO3, :NEW_CON_INSTRUCAO4, :NEW_CON_INSTRUCAO5,' +
        ' '
      '  :NEW_CON_KEYUSER, :NEW_CON_LAYOUT, :NEW_CON_LOCALPAGTO, '
      '  :NEW_CON_MODALIDADE, :NEW_CON_MORACODIGO, :NEW_CON_MORAJUROS, '
      
        '  :NEW_CON_MORATIPO, :NEW_CON_MULTA, :NEW_CON_MULTATIPO, :NEW_CO' +
        'N_NOME, '
      
        '  :NEW_CON_NOSSONUMDIGITOS, :NEW_CON_NOSSONUMFORMATAR, :NEW_CON_' +
        'PROTESTOCODIGO, '
      '  :NEW_CON_PROTESTOTIPO, :NEW_CON_SALDO, :NEW_CON_STATUS, '
      '  :NEW_CON_TIPOCOBRANCA, :NEW_CON_USUARIO, :NEW_CON_VALORBOLETO)'
      
        'RETURNING CON_AGENCIA, CON_AGENCIADIGITO, CON_ATUALIZAR, CON_BAI' +
        'XACODIGO, CON_BANCO, CON_CARTEIRA, CON_CARTEIRACOD, CON_CEDENTE,' +
        ' CON_CEDENTEDIGITO, CON_CEDENTEDOC, CON_CEDENTENOME, CON_CHAVEPI' +
        'X, CON_CHAVEPIXTIPO, CON_CLIENTID, CON_CLIENTSECRET, CON_CNPJ, C' +
        'ON_CODIGO, CON_CONTA, CON_CONTADIGITO, CON_CONTATO, CON_CONVENIO' +
        ', CON_DESCONTOTIPO, CON_DIASBAIXA, CON_DIASPROTESTO, CON_DTATUAL' +
        'IZACAO, CON_DTCADASTRO, CON_ESPECIE, CON_ESPECIEDOC, CON_FONE1, ' +
        'CON_FONE2, CON_HRATUALIZACAO, CON_HRCADASTRO, CON_INSTRUCAO1, CO' +
        'N_INSTRUCAO2, CON_INSTRUCAO3, CON_INSTRUCAO4, CON_INSTRUCAO5, CO' +
        'N_KEYUSER, CON_LAYOUT, CON_LOCALPAGTO, CON_MODALIDADE, CON_MORAC' +
        'ODIGO, CON_MORAJUROS, CON_MORATIPO, CON_MULTA, CON_MULTATIPO, CO' +
        'N_NOME, CON_NOSSONUMDIGITOS, CON_NOSSONUMFORMATAR, CON_PROTESTOC' +
        'ODIGO, CON_PROTESTOTIPO, CON_SALDO, CON_STATUS, CON_TIPOCOBRANCA' +
        ', CON_USUARIO, CON_VALORBOLETO')
    ModifySQL.Strings = (
      'UPDATE CONTAS'
      
        'SET CON_AGENCIA = :NEW_CON_AGENCIA, CON_AGENCIADIGITO = :NEW_CON' +
        '_AGENCIADIGITO, '
      
        '  CON_ATUALIZAR = :NEW_CON_ATUALIZAR, CON_BAIXACODIGO = :NEW_CON' +
        '_BAIXACODIGO, '
      '  CON_BANCO = :NEW_CON_BANCO, CON_CARTEIRA = :NEW_CON_CARTEIRA, '
      
        '  CON_CARTEIRACOD = :NEW_CON_CARTEIRACOD, CON_CEDENTE = :NEW_CON' +
        '_CEDENTE, '
      
        '  CON_CEDENTEDIGITO = :NEW_CON_CEDENTEDIGITO, CON_CEDENTEDOC = :' +
        'NEW_CON_CEDENTEDOC, '
      
        '  CON_CEDENTENOME = :NEW_CON_CEDENTENOME, CON_CHAVEPIX = :NEW_CO' +
        'N_CHAVEPIX, '
      
        '  CON_CHAVEPIXTIPO = :NEW_CON_CHAVEPIXTIPO, CON_CLIENTID = :NEW_' +
        'CON_CLIENTID, '
      
        '  CON_CLIENTSECRET = :NEW_CON_CLIENTSECRET, CON_CNPJ = :NEW_CON_' +
        'CNPJ, '
      '  CON_CODIGO = :NEW_CON_CODIGO, CON_CONTA = :NEW_CON_CONTA, '
      
        '  CON_CONTADIGITO = :NEW_CON_CONTADIGITO, CON_CONTATO = :NEW_CON' +
        '_CONTATO, '
      
        '  CON_CONVENIO = :NEW_CON_CONVENIO, CON_DESCONTOTIPO = :NEW_CON_' +
        'DESCONTOTIPO, '
      
        '  CON_DIASBAIXA = :NEW_CON_DIASBAIXA, CON_DIASPROTESTO = :NEW_CO' +
        'N_DIASPROTESTO, '
      
        '  CON_DTATUALIZACAO = :NEW_CON_DTATUALIZACAO, CON_DTCADASTRO = :' +
        'NEW_CON_DTCADASTRO, '
      
        '  CON_ESPECIE = :NEW_CON_ESPECIE, CON_ESPECIEDOC = :NEW_CON_ESPE' +
        'CIEDOC, '
      '  CON_FONE1 = :NEW_CON_FONE1, CON_FONE2 = :NEW_CON_FONE2, '
      
        '  CON_HRATUALIZACAO = :NEW_CON_HRATUALIZACAO, CON_HRCADASTRO = :' +
        'NEW_CON_HRCADASTRO, '
      
        '  CON_INSTRUCAO1 = :NEW_CON_INSTRUCAO1, CON_INSTRUCAO2 = :NEW_CO' +
        'N_INSTRUCAO2, '
      
        '  CON_INSTRUCAO3 = :NEW_CON_INSTRUCAO3, CON_INSTRUCAO4 = :NEW_CO' +
        'N_INSTRUCAO4, '
      
        '  CON_INSTRUCAO5 = :NEW_CON_INSTRUCAO5, CON_KEYUSER = :NEW_CON_K' +
        'EYUSER, '
      
        '  CON_LAYOUT = :NEW_CON_LAYOUT, CON_LOCALPAGTO = :NEW_CON_LOCALP' +
        'AGTO, '
      
        '  CON_MODALIDADE = :NEW_CON_MODALIDADE, CON_MORACODIGO = :NEW_CO' +
        'N_MORACODIGO, '
      
        '  CON_MORAJUROS = :NEW_CON_MORAJUROS, CON_MORATIPO = :NEW_CON_MO' +
        'RATIPO, '
      
        '  CON_MULTA = :NEW_CON_MULTA, CON_MULTATIPO = :NEW_CON_MULTATIPO' +
        ', '
      
        '  CON_NOME = :NEW_CON_NOME, CON_NOSSONUMDIGITOS = :NEW_CON_NOSSO' +
        'NUMDIGITOS, '
      
        '  CON_NOSSONUMFORMATAR = :NEW_CON_NOSSONUMFORMATAR, CON_PROTESTO' +
        'CODIGO = :NEW_CON_PROTESTOCODIGO, '
      
        '  CON_PROTESTOTIPO = :NEW_CON_PROTESTOTIPO, CON_SALDO = :NEW_CON' +
        '_SALDO, '
      
        '  CON_STATUS = :NEW_CON_STATUS, CON_TIPOCOBRANCA = :NEW_CON_TIPO' +
        'COBRANCA, '
      
        '  CON_USUARIO = :NEW_CON_USUARIO, CON_VALORBOLETO = :NEW_CON_VAL' +
        'ORBOLETO'
      'WHERE CON_CODIGO = :OLD_CON_CODIGO'
      
        'RETURNING CON_AGENCIA, CON_AGENCIADIGITO, CON_ATUALIZAR, CON_BAI' +
        'XACODIGO, CON_BANCO, CON_CARTEIRA, CON_CARTEIRACOD, CON_CEDENTE,' +
        ' CON_CEDENTEDIGITO, CON_CEDENTEDOC, CON_CEDENTENOME, CON_CHAVEPI' +
        'X, CON_CHAVEPIXTIPO, CON_CLIENTID, CON_CLIENTSECRET, CON_CNPJ, C' +
        'ON_CODIGO, CON_CONTA, CON_CONTADIGITO, CON_CONTATO, CON_CONVENIO' +
        ', CON_DESCONTOTIPO, CON_DIASBAIXA, CON_DIASPROTESTO, CON_DTATUAL' +
        'IZACAO, CON_DTCADASTRO, CON_ESPECIE, CON_ESPECIEDOC, CON_FONE1, ' +
        'CON_FONE2, CON_HRATUALIZACAO, CON_HRCADASTRO, CON_INSTRUCAO1, CO' +
        'N_INSTRUCAO2, CON_INSTRUCAO3, CON_INSTRUCAO4, CON_INSTRUCAO5, CO' +
        'N_KEYUSER, CON_LAYOUT, CON_LOCALPAGTO, CON_MODALIDADE, CON_MORAC' +
        'ODIGO, CON_MORAJUROS, CON_MORATIPO, CON_MULTA, CON_MULTATIPO, CO' +
        'N_NOME, CON_NOSSONUMDIGITOS, CON_NOSSONUMFORMATAR, CON_PROTESTOC' +
        'ODIGO, CON_PROTESTOTIPO, CON_SALDO, CON_STATUS, CON_TIPOCOBRANCA' +
        ', CON_USUARIO, CON_VALORBOLETO')
    DeleteSQL.Strings = (
      'DELETE FROM CONTAS'
      'WHERE CON_CODIGO = :OLD_CON_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CON_AGENCIA, CON_AGENCIADIGITO, CON_ATUALIZAR, CON_BAIXAC' +
        'ODIGO, '
      
        '  CON_BANCO, CON_CARTEIRA, CON_CARTEIRACOD, CON_CEDENTE, CON_CED' +
        'ENTEDIGITO, '
      
        '  CON_CEDENTEDOC, CON_CEDENTENOME, CON_CHAVEPIX, CON_CHAVEPIXTIP' +
        'O, '
      
        '  CON_CLIENTID, CON_CLIENTSECRET, CON_CNPJ, CON_CODIGO, CON_CONT' +
        'A, '
      '  CON_CONTADIGITO, CON_CONTATO, CON_CONVENIO, CON_DESCONTOTIPO, '
      
        '  CON_DIASBAIXA, CON_DIASPROTESTO, CON_DTATUALIZACAO, CON_DTCADA' +
        'STRO, '
      
        '  CON_ESPECIE, CON_ESPECIEDOC, CON_FONE1, CON_FONE2, CON_HRATUAL' +
        'IZACAO, '
      
        '  CON_HRCADASTRO, CON_INSTRUCAO1, CON_INSTRUCAO2, CON_INSTRUCAO3' +
        ', '
      '  CON_INSTRUCAO4, CON_INSTRUCAO5, CON_KEYUSER, CON_LAYOUT, '
      
        '  CON_LOCALPAGTO, CON_MODALIDADE, CON_MORACODIGO, CON_MORAJUROS,' +
        ' '
      
        '  CON_MORATIPO, CON_MULTA, CON_MULTATIPO, CON_NOME, CON_NOSSONUM' +
        'DIGITOS, '
      '  CON_NOSSONUMFORMATAR, CON_PROTESTOCODIGO, CON_PROTESTOTIPO, '
      
        '  CON_SALDO, CON_STATUS, CON_TIPOCOBRANCA, CON_USUARIO, CON_VALO' +
        'RBOLETO'
      'FROM CONTAS'
      'WHERE CON_CODIGO = :OLD_CON_CODIGO')
    Left = 480
    Top = 128
  end
  object TBContatos: TFDQuery
    Connection = FDConnection1
    Transaction = TRContatos
    UpdateObject = UPContatos
    SQL.Strings = (
      'select * from CONTATOS '
      'where CTT_CLIENTE=:cliente and CTT_CODIGO=:codigo'
      'order by CTT_CODIGO'
      '')
    Left = 512
    Top = 80
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBContatosCTT_CLIENTE: TIntegerField
      FieldName = 'CTT_CLIENTE'
      Origin = 'CTT_CLIENTE'
      Required = True
    end
    object TBContatosCTT_CODIGO: TIntegerField
      FieldName = 'CTT_CODIGO'
      Origin = 'CTT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBContatosCTT_DTATUALIZACAO: TDateField
      FieldName = 'CTT_DTATUALIZACAO'
      Origin = 'CTT_DTATUALIZACAO'
    end
    object TBContatosCTT_DTCADASTRO: TDateField
      FieldName = 'CTT_DTCADASTRO'
      Origin = 'CTT_DTCADASTRO'
    end
    object TBContatosCTT_EMAIL: TStringField
      FieldName = 'CTT_EMAIL'
      Origin = 'CTT_EMAIL'
      Size = 100
    end
    object TBContatosCTT_FONE: TStringField
      FieldName = 'CTT_FONE'
      Origin = 'CTT_FONE'
    end
    object TBContatosCTT_HRATUALIZACAO: TTimeField
      FieldName = 'CTT_HRATUALIZACAO'
      Origin = 'CTT_HRATUALIZACAO'
    end
    object TBContatosCTT_HRCADASTRO: TTimeField
      FieldName = 'CTT_HRCADASTRO'
      Origin = 'CTT_HRCADASTRO'
    end
    object TBContatosCTT_NOME: TStringField
      FieldName = 'CTT_NOME'
      Origin = 'CTT_NOME'
      Size = 80
    end
    object TBContatosCTT_USUARIO: TStringField
      FieldName = 'CTT_USUARIO'
      Origin = 'CTT_USUARIO'
    end
  end
  object TRContatos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 512
    Top = 176
  end
  object UPContatos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONTATOS'
      '(CTT_CLIENTE, CTT_CODIGO, CTT_DTATUALIZACAO, CTT_DTCADASTRO, '
      '  CTT_EMAIL, CTT_FONE, CTT_HRATUALIZACAO, CTT_HRCADASTRO, '
      '  CTT_NOME, CTT_USUARIO)'
      
        'VALUES (:NEW_CTT_CLIENTE, gen_id(GEN_CONTATOS,1), :NEW_CTT_DTATU' +
        'ALIZACAO, :NEW_CTT_DTCADASTRO, '
      
        '  :NEW_CTT_EMAIL, :NEW_CTT_FONE, :NEW_CTT_HRATUALIZACAO, :NEW_CT' +
        'T_HRCADASTRO, '
      '  :NEW_CTT_NOME, :NEW_CTT_USUARIO)'
      
        'RETURNING CTT_CLIENTE, CTT_CODIGO, CTT_DTATUALIZACAO, CTT_DTCADA' +
        'STRO, CTT_EMAIL, CTT_FONE, CTT_HRATUALIZACAO, CTT_HRCADASTRO, CT' +
        'T_NOME, CTT_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CONTATOS'
      
        'SET CTT_CLIENTE = :NEW_CTT_CLIENTE, CTT_CODIGO = :NEW_CTT_CODIGO' +
        ', '
      
        '  CTT_DTATUALIZACAO = :NEW_CTT_DTATUALIZACAO, CTT_DTCADASTRO = :' +
        'NEW_CTT_DTCADASTRO, '
      
        '  CTT_EMAIL = :NEW_CTT_EMAIL, CTT_FONE = :NEW_CTT_FONE, CTT_HRAT' +
        'UALIZACAO = :NEW_CTT_HRATUALIZACAO, '
      
        '  CTT_HRCADASTRO = :NEW_CTT_HRCADASTRO, CTT_NOME = :NEW_CTT_NOME' +
        ', '
      '  CTT_USUARIO = :NEW_CTT_USUARIO'
      'WHERE CTT_CODIGO = :OLD_CTT_CODIGO'
      
        'RETURNING CTT_CLIENTE, CTT_CODIGO, CTT_DTATUALIZACAO, CTT_DTCADA' +
        'STRO, CTT_EMAIL, CTT_FONE, CTT_HRATUALIZACAO, CTT_HRCADASTRO, CT' +
        'T_NOME, CTT_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CONTATOS'
      'WHERE CTT_CODIGO = :OLD_CTT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CTT_CLIENTE, CTT_CODIGO, CTT_DTATUALIZACAO, CTT_DTCADASTR' +
        'O, '
      '  CTT_EMAIL, CTT_FONE, CTT_HRATUALIZACAO, CTT_HRCADASTRO, '
      '  CTT_NOME, CTT_USUARIO'
      'FROM CONTATOS'
      'WHERE CTT_CODIGO = :OLD_CTT_CODIGO')
    Left = 512
    Top = 128
  end
  object TBConvenios: TFDQuery
    Connection = FDConnection1
    Transaction = TRConvenios
    UpdateObject = UPConvenios
    SQL.Strings = (
      'select * from CONVENIOS '
      'where COV_CODIGO=:codigo '
      'order by COV_CODIGO'
      '')
    Left = 544
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBConveniosCOV_CODIGO: TIntegerField
      FieldName = 'COV_CODIGO'
      Origin = 'COV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBConveniosCOV_DESCRICAO: TStringField
      FieldName = 'COV_DESCRICAO'
      Origin = 'COV_DESCRICAO'
      Size = 50
    end
    object TBConveniosCOV_DTATUALIZACAO: TDateField
      FieldName = 'COV_DTATUALIZACAO'
      Origin = 'COV_DTATUALIZACAO'
    end
    object TBConveniosCOV_DTCADASTRO: TDateField
      FieldName = 'COV_DTCADASTRO'
      Origin = 'COV_DTCADASTRO'
    end
    object TBConveniosCOV_HRATUALIZACAO: TTimeField
      FieldName = 'COV_HRATUALIZACAO'
      Origin = 'COV_HRATUALIZACAO'
    end
    object TBConveniosCOV_HRCADASTRO: TTimeField
      FieldName = 'COV_HRCADASTRO'
      Origin = 'COV_HRCADASTRO'
    end
    object TBConveniosCOV_OBSERVACOES: TMemoField
      FieldName = 'COV_OBSERVACOES'
      Origin = 'COV_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBConveniosCOV_STATUS: TStringField
      FieldName = 'COV_STATUS'
      Origin = 'COV_STATUS'
      Size = 1
    end
    object TBConveniosCOV_USUARIO: TStringField
      FieldName = 'COV_USUARIO'
      Origin = 'COV_USUARIO'
    end
  end
  object TRConvenios: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 544
    Top = 176
  end
  object UPConvenios: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONVENIOS'
      '(COV_CODIGO, COV_DESCRICAO, COV_DTATUALIZACAO, '
      '  COV_DTCADASTRO, COV_HRATUALIZACAO, COV_HRCADASTRO, '
      '  COV_OBSERVACOES, COV_STATUS, COV_USUARIO)'
      
        'VALUES (gen_id(GEN_CONVENIOS,1), :NEW_COV_DESCRICAO, :NEW_COV_DT' +
        'ATUALIZACAO, '
      
        '  :NEW_COV_DTCADASTRO, :NEW_COV_HRATUALIZACAO, :NEW_COV_HRCADAST' +
        'RO, '
      '  :NEW_COV_OBSERVACOES, :NEW_COV_STATUS, :NEW_COV_USUARIO)'
      
        'RETURNING COV_CODIGO, COV_DESCRICAO, COV_DTATUALIZACAO, COV_DTCA' +
        'DASTRO, COV_HRATUALIZACAO, COV_HRCADASTRO, COV_OBSERVACOES, COV_' +
        'STATUS, COV_USUARIO')
    ModifySQL.Strings = (
      'UPDATE CONVENIOS'
      
        'SET COV_CODIGO = :NEW_COV_CODIGO, COV_DESCRICAO = :NEW_COV_DESCR' +
        'ICAO, '
      
        '  COV_DTATUALIZACAO = :NEW_COV_DTATUALIZACAO, COV_DTCADASTRO = :' +
        'NEW_COV_DTCADASTRO, '
      
        '  COV_HRATUALIZACAO = :NEW_COV_HRATUALIZACAO, COV_HRCADASTRO = :' +
        'NEW_COV_HRCADASTRO, '
      
        '  COV_OBSERVACOES = :NEW_COV_OBSERVACOES, COV_STATUS = :NEW_COV_' +
        'STATUS, '
      '  COV_USUARIO = :NEW_COV_USUARIO'
      'WHERE COV_CODIGO = :OLD_COV_CODIGO'
      
        'RETURNING COV_CODIGO, COV_DESCRICAO, COV_DTATUALIZACAO, COV_DTCA' +
        'DASTRO, COV_HRATUALIZACAO, COV_HRCADASTRO, COV_OBSERVACOES, COV_' +
        'STATUS, COV_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM CONVENIOS'
      'WHERE COV_CODIGO = :OLD_COV_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT COV_CODIGO, COV_DESCRICAO, COV_DTATUALIZACAO, COV_DTCADAS' +
        'TRO, '
      
        '  COV_HRATUALIZACAO, COV_HRCADASTRO, COV_OBSERVACOES, COV_STATUS' +
        ', '
      '  COV_USUARIO'
      'FROM CONVENIOS'
      'WHERE COV_CODIGO = :OLD_COV_CODIGO')
    Left = 544
    Top = 128
  end
  object TBDespesas: TFDQuery
    Connection = FDConnection1
    Transaction = TRDespesas
    UpdateObject = UPDespesas
    SQL.Strings = (
      'select '
      'DES_AGRUPADOR,'
      'DES_CODIGO,'
      'DES_DESCRICAO,'
      'DES_DTATUALIZACAO,'
      'DES_DTCADASTRO,'
      'DES_HRATUALIZACAO,'
      'DES_HRCADASTRO,'
      'DES_USUARIO,'
      'AGR_DESCRICAO '
      'from DESPESAS '
      'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO'
      'where DES_CODIGO=:codigo '
      'order by DES_CODIGO'
      '')
    Left = 576
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBDespesasDES_AGRUPADOR: TIntegerField
      FieldName = 'DES_AGRUPADOR'
      Origin = 'DES_AGRUPADOR'
      Required = True
    end
    object TBDespesasDES_CODIGO: TIntegerField
      FieldName = 'DES_CODIGO'
      Origin = 'DES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBDespesasDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Origin = 'DES_DESCRICAO'
      Size = 50
    end
    object TBDespesasDES_DTATUALIZACAO: TDateField
      FieldName = 'DES_DTATUALIZACAO'
      Origin = 'DES_DTATUALIZACAO'
    end
    object TBDespesasDES_DTCADASTRO: TDateField
      FieldName = 'DES_DTCADASTRO'
      Origin = 'DES_DTCADASTRO'
    end
    object TBDespesasDES_HRATUALIZACAO: TTimeField
      FieldName = 'DES_HRATUALIZACAO'
      Origin = 'DES_HRATUALIZACAO'
    end
    object TBDespesasDES_HRCADASTRO: TTimeField
      FieldName = 'DES_HRCADASTRO'
      Origin = 'DES_HRCADASTRO'
    end
    object TBDespesasDES_USUARIO: TStringField
      FieldName = 'DES_USUARIO'
      Origin = 'DES_USUARIO'
    end
    object TBDespesasAGR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGR_DESCRICAO'
      Origin = 'AGR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRDespesas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 576
    Top = 176
  end
  object UPDespesas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO DESPESAS'
      '(DES_AGRUPADOR, DES_CODIGO, DES_DESCRICAO, DES_DTATUALIZACAO, '
      '  DES_DTCADASTRO, DES_HRATUALIZACAO, DES_HRCADASTRO, '
      '  DES_USUARIO)'
      
        'VALUES (:NEW_DES_AGRUPADOR, gen_id(GEN_DESPESAS,1), :NEW_DES_DES' +
        'CRICAO, :NEW_DES_DTATUALIZACAO, '
      
        '  :NEW_DES_DTCADASTRO, :NEW_DES_HRATUALIZACAO, :NEW_DES_HRCADAST' +
        'RO, '
      '  :NEW_DES_USUARIO)'
      
        'RETURNING DES_AGRUPADOR, DES_CODIGO, DES_DESCRICAO, DES_DTATUALI' +
        'ZACAO, DES_DTCADASTRO, DES_HRATUALIZACAO, DES_HRCADASTRO, DES_US' +
        'UARIO')
    ModifySQL.Strings = (
      'UPDATE DESPESAS'
      
        'SET DES_AGRUPADOR = :NEW_DES_AGRUPADOR, DES_CODIGO = :NEW_DES_CO' +
        'DIGO, '
      
        '  DES_DESCRICAO = :NEW_DES_DESCRICAO, DES_DTATUALIZACAO = :NEW_D' +
        'ES_DTATUALIZACAO, '
      
        '  DES_DTCADASTRO = :NEW_DES_DTCADASTRO, DES_HRATUALIZACAO = :NEW' +
        '_DES_HRATUALIZACAO, '
      
        '  DES_HRCADASTRO = :NEW_DES_HRCADASTRO, DES_USUARIO = :NEW_DES_U' +
        'SUARIO'
      'WHERE DES_CODIGO = :OLD_DES_CODIGO'
      
        'RETURNING DES_AGRUPADOR, DES_CODIGO, DES_DESCRICAO, DES_DTATUALI' +
        'ZACAO, DES_DTCADASTRO, DES_HRATUALIZACAO, DES_HRCADASTRO, DES_US' +
        'UARIO')
    DeleteSQL.Strings = (
      'DELETE FROM DESPESAS'
      'WHERE DES_CODIGO = :OLD_DES_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT DES_AGRUPADOR, DES_CODIGO, DES_DESCRICAO, DES_DTATUALIZAC' +
        'AO, '
      '  DES_DTCADASTRO, DES_HRATUALIZACAO, DES_HRCADASTRO, DES_USUARIO'
      'FROM DESPESAS'
      'WHERE DES_CODIGO = :OLD_DES_CODIGO')
    Left = 576
    Top = 128
  end
  object TBEmailsContas: TFDQuery
    Connection = FDConnection1
    Transaction = TREmailsContas
    UpdateObject = UPEmailsContas
    SQL.Strings = (
      'select * from EMAILSCONTAS '
      'where EMC_CODIGO=:codigo '
      'order by EMC_CODIGO'
      '')
    Left = 608
    Top = 80
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
  object TREmailsContas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 608
    Top = 176
  end
  object UPEmailsContas: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 608
    Top = 128
  end
  object TBEmpresa: TFDQuery
    Connection = FDConnection1
    Transaction = TREmpresa
    UpdateObject = UPEmpresa
    SQL.Strings = (
      'select'
      'EMP_BAIRRO,'
      'EMP_CEP,'
      'EMP_CIDADE,'
      'EMP_CIDADECODIGO,'
      'EMP_CNAE,'
      'EMP_CNPJ,'
      'EMP_CNPJPREFEITURA,'
      'EMP_CODIGO,'
      'EMP_CODIGOCLIENTE,'
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
    Left = 640
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object TBEmpresaEMP_CNPJPREFEITURA: TStringField
      FieldName = 'EMP_CNPJPREFEITURA'
      Origin = 'EMP_CNPJPREFEITURA'
    end
    object TBEmpresaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEmpresaEMP_CODIGOCLIENTE: TIntegerField
      FieldName = 'EMP_CODIGOCLIENTE'
      Origin = 'EMP_CODIGOCLIENTE'
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
    Left = 640
    Top = 176
  end
  object UPEmpresa: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EMPRESA'
      '(EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CIDADECODIGO, '
      '  EMP_CNAE, EMP_CNPJ, EMP_CNPJPREFEITURA, EMP_CODIGO, '
      '  EMP_CODIGOCLIENTE, EMP_CONTABILIDADE, EMP_EMAIL, '
      '  EMP_EMAILSUPORTE, EMP_ENDERECO, EMP_ENQUADRAMENTO, '
      '  EMP_ENQUADRAMENTOISS, EMP_ESTADO, EMP_ESTADOCODIGO, '
      '  EMP_FONE1, EMP_FONE2, EMP_HOMEPAGE, EMP_HRATUALIZACAO, '
      '  EMP_IE, EMP_IM, EMP_LOGO, EMP_NOME, '
      '  EMP_NOMEFANTASIA, EMP_NUMERO, EMP_PAIS, EMP_PAISCODIGO, '
      '  EMP_SUPERSENHA)'
      
        'VALUES (:NEW_EMP_BAIRRO, :NEW_EMP_CEP, :NEW_EMP_CIDADE, :NEW_EMP' +
        '_CIDADECODIGO, '
      
        '  :NEW_EMP_CNAE, :NEW_EMP_CNPJ, :NEW_EMP_CNPJPREFEITURA, :NEW_EM' +
        'P_CODIGO, '
      
        '  :NEW_EMP_CODIGOCLIENTE, :NEW_EMP_CONTABILIDADE, :NEW_EMP_EMAIL' +
        ', '
      
        '  :NEW_EMP_EMAILSUPORTE, :NEW_EMP_ENDERECO, :NEW_EMP_ENQUADRAMEN' +
        'TO, '
      
        '  :NEW_EMP_ENQUADRAMENTOISS, :NEW_EMP_ESTADO, :NEW_EMP_ESTADOCOD' +
        'IGO, '
      
        '  :NEW_EMP_FONE1, :NEW_EMP_FONE2, :NEW_EMP_HOMEPAGE, :NEW_EMP_HR' +
        'ATUALIZACAO, '
      '  :NEW_EMP_IE, :NEW_EMP_IM, :NEW_EMP_LOGO, :NEW_EMP_NOME, '
      
        '  :NEW_EMP_NOMEFANTASIA, :NEW_EMP_NUMERO, :NEW_EMP_PAIS, :NEW_EM' +
        'P_PAISCODIGO, '
      '  :NEW_EMP_SUPERSENHA)'
      
        'RETURNING EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CIDADECODIGO, EMP' +
        '_CNAE, EMP_CNPJ, EMP_CNPJPREFEITURA, EMP_CODIGO, EMP_CODIGOCLIEN' +
        'TE, EMP_CONTABILIDADE, EMP_EMAIL, EMP_EMAILSUPORTE, EMP_ENDERECO' +
        ', EMP_ENQUADRAMENTO, EMP_ENQUADRAMENTOISS, EMP_ESTADO, EMP_ESTAD' +
        'OCODIGO, EMP_FONE1, EMP_FONE2, EMP_HOMEPAGE, EMP_HRATUALIZACAO, ' +
        'EMP_IE, EMP_IM, EMP_LOGO, EMP_NOME, EMP_NOMEFANTASIA, EMP_NUMERO' +
        ', EMP_PAIS, EMP_PAISCODIGO, EMP_SUPERSENHA')
    ModifySQL.Strings = (
      'UPDATE EMPRESA'
      
        'SET EMP_BAIRRO = :NEW_EMP_BAIRRO, EMP_CEP = :NEW_EMP_CEP, EMP_CI' +
        'DADE = :NEW_EMP_CIDADE, '
      
        '  EMP_CIDADECODIGO = :NEW_EMP_CIDADECODIGO, EMP_CNAE = :NEW_EMP_' +
        'CNAE, '
      
        '  EMP_CNPJ = :NEW_EMP_CNPJ, EMP_CNPJPREFEITURA = :NEW_EMP_CNPJPR' +
        'EFEITURA, '
      
        '  EMP_CODIGO = :NEW_EMP_CODIGO, EMP_CODIGOCLIENTE = :NEW_EMP_COD' +
        'IGOCLIENTE, '
      
        '  EMP_CONTABILIDADE = :NEW_EMP_CONTABILIDADE, EMP_EMAIL = :NEW_E' +
        'MP_EMAIL, '
      
        '  EMP_EMAILSUPORTE = :NEW_EMP_EMAILSUPORTE, EMP_ENDERECO = :NEW_' +
        'EMP_ENDERECO, '
      
        '  EMP_ENQUADRAMENTO = :NEW_EMP_ENQUADRAMENTO, EMP_ENQUADRAMENTOI' +
        'SS = :NEW_EMP_ENQUADRAMENTOISS, '
      
        '  EMP_ESTADO = :NEW_EMP_ESTADO, EMP_ESTADOCODIGO = :NEW_EMP_ESTA' +
        'DOCODIGO, '
      '  EMP_FONE1 = :NEW_EMP_FONE1, EMP_FONE2 = :NEW_EMP_FONE2, '
      
        '  EMP_HOMEPAGE = :NEW_EMP_HOMEPAGE, EMP_HRATUALIZACAO = :NEW_EMP' +
        '_HRATUALIZACAO, '
      
        '  EMP_IE = :NEW_EMP_IE, EMP_IM = :NEW_EMP_IM, EMP_LOGO = :NEW_EM' +
        'P_LOGO, '
      
        '  EMP_NOME = :NEW_EMP_NOME, EMP_NOMEFANTASIA = :NEW_EMP_NOMEFANT' +
        'ASIA, '
      '  EMP_NUMERO = :NEW_EMP_NUMERO, EMP_PAIS = :NEW_EMP_PAIS, '
      
        '  EMP_PAISCODIGO = :NEW_EMP_PAISCODIGO, EMP_SUPERSENHA = :NEW_EM' +
        'P_SUPERSENHA'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO'
      
        'RETURNING EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CIDADECODIGO, EMP' +
        '_CNAE, EMP_CNPJ, EMP_CNPJPREFEITURA, EMP_CODIGO, EMP_CODIGOCLIEN' +
        'TE, EMP_CONTABILIDADE, EMP_EMAIL, EMP_EMAILSUPORTE, EMP_ENDERECO' +
        ', EMP_ENQUADRAMENTO, EMP_ENQUADRAMENTOISS, EMP_ESTADO, EMP_ESTAD' +
        'OCODIGO, EMP_FONE1, EMP_FONE2, EMP_HOMEPAGE, EMP_HRATUALIZACAO, ' +
        'EMP_IE, EMP_IM, EMP_LOGO, EMP_NOME, EMP_NOMEFANTASIA, EMP_NUMERO' +
        ', EMP_PAIS, EMP_PAISCODIGO, EMP_SUPERSENHA')
    DeleteSQL.Strings = (
      'DELETE FROM EMPRESA'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EMP_BAIRRO, EMP_CEP, EMP_CIDADE, EMP_CIDADECODIGO, EMP_CN' +
        'AE, '
      '  EMP_CNPJ, EMP_CNPJPREFEITURA, EMP_CODIGO, EMP_CODIGOCLIENTE, '
      '  EMP_CODIGOSISTEMA, EMP_CONTABILIDADE, EMP_DATALIBERACAO, '
      
        '  EMP_DATAULTUTILIZACAO, EMP_DIASLIBERACAO, EMP_EMAIL, EMP_EMAIL' +
        'SUPORTE, '
      
        '  EMP_ENDERECO, EMP_ENQUADRAMENTO, EMP_ENQUADRAMENTOISS, EMP_ENQ' +
        'UADRAMENTOISS2, '
      '  EMP_ESTADO, EMP_ESTADOCODIGO, EMP_FONE1, EMP_FONE2, EMP_HASH, '
      '  EMP_HOMEPAGE, EMP_HRATUALIZACAO, EMP_IE, EMP_IM, EMP_LEITURA, '
      
        '  EMP_LIBERADO, EMP_LIMITEUSUARIOS, EMP_LOGO, EMP_NOME, EMP_NOME' +
        'FANTASIA, '
      
        '  EMP_NOSSOBAIRRO, EMP_NOSSOCEP, EMP_NOSSOCIDADE, EMP_NOSSOCNPJ,' +
        ' '
      
        '  EMP_NOSSOEMAIL, EMP_NOSSOENDERECO, EMP_NOSSOESTADO, EMP_NOSSOF' +
        'ONE1, '
      '  EMP_NOSSOFONE2, EMP_NOSSOIE, EMP_NOSSOIM, EMP_NOSSONOME, '
      
        '  EMP_NOSSONUMERO, EMP_NOSSOSITE, EMP_NOSSOSITESENHA, EMP_NUMERO' +
        ', '
      '  EMP_PAIS, EMP_PAISCODIGO, EMP_SUPERSENHA'
      'FROM EMPRESA'
      'WHERE EMP_CODIGO = :OLD_EMP_CODIGO')
    Left = 640
    Top = 128
  end
  object TBEstoque: TFDQuery
    Connection = FDConnection1
    Transaction = TREstoque
    UpdateObject = UPEstoque
    SQL.Strings = (
      'select '
      'EST_ALMOXARIFADO,'
      'EST_CLIENTE,'
      'EST_CODIGO,'
      'EST_CONVERSAO,'
      'EST_DATA,'
      'EST_DESCRICAO,'
      'EST_DTATUALIZACAO,'
      'EST_DTCADASTRO,'
      'EST_ESTOQUEANTERIOR,'
      'EST_ESTOQUEPOSTERIOR,'
      'EST_FORNECEDOR,'
      'EST_HRATUALIZACAO,'
      'EST_HRCADASTRO,'
      'EST_NUMDOCTO,'
      'EST_OBSERVACOES,'
      'EST_PRODUTO,'
      'EST_PRODUTOREAL,'
      'EST_QUANTIDADE,'
      'EST_QUANTIDADEREAL,'
      'EST_TIPODOCTO,'
      'EST_TRANSACAO,'
      'EST_USUARIO,'
      'EST_VALORUNIT,'
      'EST_VENDEDOR,'
      'ALM_DESCRICAO,'
      'CLI_CODIGO,'
      'CLI_NOME,'
      'PRO_CODIGO,'
      'PRO_NOME,'
      'FOR_CODIGO,'
      'FOR_NOME,'
      'VEN_CODIGO,'
      'VEN_NOME'
      'from ESTOQUE'
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO'
      'left join ALMOXARIFADOS on EST_ALMOXARIFADO=ALM_CODIGO'
      'left join FORNECEDORES on EST_FORNECEDOR=FOR_CODIGO'
      'left join CLIENTES on EST_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on EST_VENDEDOR=VEN_CODIGO'
      'where EST_CODIGO=:codigo'
      '')
    Left = 672
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBEstoqueEST_ALMOXARIFADO: TIntegerField
      FieldName = 'EST_ALMOXARIFADO'
      Origin = 'EST_ALMOXARIFADO'
      Required = True
    end
    object TBEstoqueEST_CLIENTE: TIntegerField
      FieldName = 'EST_CLIENTE'
      Origin = 'EST_CLIENTE'
    end
    object TBEstoqueEST_CODIGO: TIntegerField
      FieldName = 'EST_CODIGO'
      Origin = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBEstoqueEST_CONVERSAO: TFMTBCDField
      FieldName = 'EST_CONVERSAO'
      Origin = 'EST_CONVERSAO'
      Precision = 18
    end
    object TBEstoqueEST_DATA: TDateField
      FieldName = 'EST_DATA'
      Origin = 'EST_DATA'
    end
    object TBEstoqueEST_DESCRICAO: TStringField
      FieldName = 'EST_DESCRICAO'
      Origin = 'EST_DESCRICAO'
      Size = 50
    end
    object TBEstoqueEST_DTATUALIZACAO: TDateField
      FieldName = 'EST_DTATUALIZACAO'
      Origin = 'EST_DTATUALIZACAO'
    end
    object TBEstoqueEST_DTCADASTRO: TDateField
      FieldName = 'EST_DTCADASTRO'
      Origin = 'EST_DTCADASTRO'
    end
    object TBEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEANTERIOR'
      Origin = 'EST_ESTOQUEANTERIOR'
      Precision = 18
    end
    object TBEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField
      FieldName = 'EST_ESTOQUEPOSTERIOR'
      Origin = 'EST_ESTOQUEPOSTERIOR'
      Precision = 18
    end
    object TBEstoqueEST_FORNECEDOR: TIntegerField
      FieldName = 'EST_FORNECEDOR'
      Origin = 'EST_FORNECEDOR'
    end
    object TBEstoqueEST_HRATUALIZACAO: TTimeField
      FieldName = 'EST_HRATUALIZACAO'
      Origin = 'EST_HRATUALIZACAO'
    end
    object TBEstoqueEST_HRCADASTRO: TTimeField
      FieldName = 'EST_HRCADASTRO'
      Origin = 'EST_HRCADASTRO'
    end
    object TBEstoqueEST_NUMDOCTO: TStringField
      FieldName = 'EST_NUMDOCTO'
      Origin = 'EST_NUMDOCTO'
    end
    object TBEstoqueEST_OBSERVACOES: TMemoField
      FieldName = 'EST_OBSERVACOES'
      Origin = 'EST_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBEstoqueEST_PRODUTO: TIntegerField
      FieldName = 'EST_PRODUTO'
      Origin = 'EST_PRODUTO'
      Required = True
    end
    object TBEstoqueEST_PRODUTOREAL: TIntegerField
      FieldName = 'EST_PRODUTOREAL'
      Origin = 'EST_PRODUTOREAL'
    end
    object TBEstoqueEST_QUANTIDADE: TFMTBCDField
      FieldName = 'EST_QUANTIDADE'
      Origin = 'EST_QUANTIDADE'
      Precision = 18
    end
    object TBEstoqueEST_QUANTIDADEREAL: TFMTBCDField
      FieldName = 'EST_QUANTIDADEREAL'
      Origin = 'EST_QUANTIDADEREAL'
      Precision = 18
    end
    object TBEstoqueEST_TIPODOCTO: TStringField
      FieldName = 'EST_TIPODOCTO'
      Origin = 'EST_TIPODOCTO'
    end
    object TBEstoqueEST_TRANSACAO: TStringField
      FieldName = 'EST_TRANSACAO'
      Origin = 'EST_TRANSACAO'
      Size = 1
    end
    object TBEstoqueEST_USUARIO: TStringField
      FieldName = 'EST_USUARIO'
      Origin = 'EST_USUARIO'
    end
    object TBEstoqueEST_VALORUNIT: TFMTBCDField
      FieldName = 'EST_VALORUNIT'
      Origin = 'EST_VALORUNIT'
      Precision = 18
    end
    object TBEstoqueEST_VENDEDOR: TIntegerField
      FieldName = 'EST_VENDEDOR'
      Origin = 'EST_VENDEDOR'
    end
    object TBEstoqueALM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBEstoqueCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
    end
    object TBEstoqueCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBEstoquePRO_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = []
    end
    object TBEstoquePRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      Size = 100
    end
    object TBEstoqueFOR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = []
    end
    object TBEstoqueFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBEstoqueVEN_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = []
    end
    object TBEstoqueVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TREstoque: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 672
    Top = 176
  end
  object UPEstoque: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ESTOQUE'
      '(EST_ALMOXARIFADO, EST_CLIENTE, EST_CODIGO, EST_CONVERSAO, '
      '  EST_DATA, EST_DESCRICAO, EST_DTATUALIZACAO, '
      '  EST_DTCADASTRO, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '
      '  EST_FORNECEDOR, EST_HRATUALIZACAO, EST_HRCADASTRO, '
      '  EST_NUMDOCTO, EST_OBSERVACOES, EST_PRODUTO, '
      '  EST_PRODUTOREAL, EST_QUANTIDADE, EST_QUANTIDADEREAL, '
      '  EST_TIPODOCTO, EST_TRANSACAO, EST_USUARIO, '
      '  EST_VALORUNIT, EST_VENDEDOR)'
      
        'VALUES (:NEW_EST_ALMOXARIFADO, :NEW_EST_CLIENTE, gen_id(GEN_ESTO' +
        'QUE,1), :NEW_EST_CONVERSAO, '
      '  :NEW_EST_DATA, :NEW_EST_DESCRICAO, :NEW_EST_DTATUALIZACAO, '
      
        '  :NEW_EST_DTCADASTRO, :NEW_EST_ESTOQUEANTERIOR, :NEW_EST_ESTOQU' +
        'EPOSTERIOR, '
      
        '  :NEW_EST_FORNECEDOR, :NEW_EST_HRATUALIZACAO, :NEW_EST_HRCADAST' +
        'RO, '
      '  :NEW_EST_NUMDOCTO, :NEW_EST_OBSERVACOES, :NEW_EST_PRODUTO, '
      
        '  :NEW_EST_PRODUTOREAL, :NEW_EST_QUANTIDADE, :NEW_EST_QUANTIDADE' +
        'REAL, '
      '  :NEW_EST_TIPODOCTO, :NEW_EST_TRANSACAO, :NEW_EST_USUARIO, '
      '  :NEW_EST_VALORUNIT, :NEW_EST_VENDEDOR)'
      
        'RETURNING EST_ALMOXARIFADO, EST_CLIENTE, EST_CODIGO, EST_CONVERS' +
        'AO, EST_DATA, EST_DESCRICAO, EST_DTATUALIZACAO, EST_DTCADASTRO, ' +
        'EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, EST_FORNECEDOR, EST_H' +
        'RATUALIZACAO, EST_HRCADASTRO, EST_NUMDOCTO, EST_OBSERVACOES, EST' +
        '_PRODUTO, EST_PRODUTOREAL, EST_QUANTIDADE, EST_QUANTIDADEREAL, E' +
        'ST_TIPODOCTO, EST_TRANSACAO, EST_USUARIO, EST_VALORUNIT, EST_VEN' +
        'DEDOR')
    ModifySQL.Strings = (
      'UPDATE ESTOQUE'
      
        'SET EST_ALMOXARIFADO = :NEW_EST_ALMOXARIFADO, EST_CLIENTE = :NEW' +
        '_EST_CLIENTE, '
      
        '  EST_CODIGO = :NEW_EST_CODIGO, EST_CONVERSAO = :NEW_EST_CONVERS' +
        'AO, '
      '  EST_DATA = :NEW_EST_DATA, EST_DESCRICAO = :NEW_EST_DESCRICAO, '
      
        '  EST_DTATUALIZACAO = :NEW_EST_DTATUALIZACAO, EST_DTCADASTRO = :' +
        'NEW_EST_DTCADASTRO, '
      
        '  EST_ESTOQUEANTERIOR = :NEW_EST_ESTOQUEANTERIOR, EST_ESTOQUEPOS' +
        'TERIOR = :NEW_EST_ESTOQUEPOSTERIOR, '
      
        '  EST_FORNECEDOR = :NEW_EST_FORNECEDOR, EST_HRATUALIZACAO = :NEW' +
        '_EST_HRATUALIZACAO, '
      
        '  EST_HRCADASTRO = :NEW_EST_HRCADASTRO, EST_NUMDOCTO = :NEW_EST_' +
        'NUMDOCTO, '
      
        '  EST_OBSERVACOES = :NEW_EST_OBSERVACOES, EST_PRODUTO = :NEW_EST' +
        '_PRODUTO, '
      
        '  EST_PRODUTOREAL = :NEW_EST_PRODUTOREAL, EST_QUANTIDADE = :NEW_' +
        'EST_QUANTIDADE, '
      
        '  EST_QUANTIDADEREAL = :NEW_EST_QUANTIDADEREAL, EST_TIPODOCTO = ' +
        ':NEW_EST_TIPODOCTO, '
      
        '  EST_TRANSACAO = :NEW_EST_TRANSACAO, EST_USUARIO = :NEW_EST_USU' +
        'ARIO, '
      
        '  EST_VALORUNIT = :NEW_EST_VALORUNIT, EST_VENDEDOR = :NEW_EST_VE' +
        'NDEDOR'
      'WHERE EST_CODIGO = :OLD_EST_CODIGO'
      
        'RETURNING EST_ALMOXARIFADO, EST_CLIENTE, EST_CODIGO, EST_CONVERS' +
        'AO, EST_DATA, EST_DESCRICAO, EST_DTATUALIZACAO, EST_DTCADASTRO, ' +
        'EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, EST_FORNECEDOR, EST_H' +
        'RATUALIZACAO, EST_HRCADASTRO, EST_NUMDOCTO, EST_OBSERVACOES, EST' +
        '_PRODUTO, EST_PRODUTOREAL, EST_QUANTIDADE, EST_QUANTIDADEREAL, E' +
        'ST_TIPODOCTO, EST_TRANSACAO, EST_USUARIO, EST_VALORUNIT, EST_VEN' +
        'DEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM ESTOQUE'
      'WHERE EST_CODIGO = :OLD_EST_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT EST_ALMOXARIFADO, EST_CLIENTE, EST_CODIGO, EST_CONVERSAO,' +
        ' EST_DATA, '
      
        '  EST_DESCRICAO, EST_DTATUALIZACAO, EST_DTCADASTRO, EST_ESTOQUEA' +
        'NTERIOR, '
      '  EST_ESTOQUEPOSTERIOR, EST_FORNECEDOR, EST_HRATUALIZACAO, '
      '  EST_HRCADASTRO, EST_NUMDOCTO, EST_OBSERVACOES, EST_PRODUTO, '
      
        '  EST_PRODUTOREAL, EST_QUANTIDADE, EST_QUANTIDADEREAL, EST_TIPOD' +
        'OCTO, '
      '  EST_TRANSACAO, EST_USUARIO, EST_VALORUNIT, EST_VENDEDOR'
      'FROM ESTOQUE'
      'WHERE EST_CODIGO = :OLD_EST_CODIGO')
    Left = 672
    Top = 128
  end
  object TBExamesTipos: TFDQuery
    Connection = FDConnection1
    Transaction = TRExamesTipos
    UpdateObject = UPExamesTipos
    SQL.Strings = (
      'select * from EXAMESTIPOS '
      'where EXT_CODIGO=:codigo '
      'order by EXT_CODIGO'
      '')
    Left = 704
    Top = 80
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
      Precision = 18
    end
  end
  object TRExamesTipos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 704
    Top = 176
  end
  object UPExamesTipos: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 704
    Top = 128
  end
  object TBFamilias: TFDQuery
    Connection = FDConnection1
    Transaction = TRFamilias
    UpdateObject = UPFamilias
    SQL.Strings = (
      'select * from FAMILIAS '
      'where FAM_CODIGO=:codigo '
      'order by FAM_CODIGO'
      '')
    Left = 736
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBFamiliasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'FAM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBFamiliasFAM_DESCRICAO: TStringField
      FieldName = 'FAM_DESCRICAO'
      Origin = 'FAM_DESCRICAO'
      Size = 50
    end
    object TBFamiliasFAM_DTATUALIZACAO: TDateField
      FieldName = 'FAM_DTATUALIZACAO'
      Origin = 'FAM_DTATUALIZACAO'
    end
    object TBFamiliasFAM_DTCADASTRO: TDateField
      FieldName = 'FAM_DTCADASTRO'
      Origin = 'FAM_DTCADASTRO'
    end
    object TBFamiliasFAM_HRATUALIZACAO: TTimeField
      FieldName = 'FAM_HRATUALIZACAO'
      Origin = 'FAM_HRATUALIZACAO'
    end
    object TBFamiliasFAM_HRCADASTRO: TTimeField
      FieldName = 'FAM_HRCADASTRO'
      Origin = 'FAM_HRCADASTRO'
    end
    object TBFamiliasFAM_INTERNET: TStringField
      FieldName = 'FAM_INTERNET'
      Origin = 'FAM_INTERNET'
      Size = 1
    end
    object TBFamiliasFAM_USUARIO: TStringField
      FieldName = 'FAM_USUARIO'
      Origin = 'FAM_USUARIO'
    end
  end
  object TRFamilias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 736
    Top = 176
  end
  object UPFamilias: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FAMILIAS'
      '(FAM_CODIGO, FAM_DESCRICAO, FAM_DTATUALIZACAO, '
      '  FAM_DTCADASTRO, FAM_HRATUALIZACAO, FAM_HRCADASTRO, '
      '  FAM_INTERNET, FAM_USUARIO)'
      
        'VALUES (gen_id(GEN_FAMILIAS,1), :NEW_FAM_DESCRICAO, :NEW_FAM_DTA' +
        'TUALIZACAO, '
      
        '  :NEW_FAM_DTCADASTRO, :NEW_FAM_HRATUALIZACAO, :NEW_FAM_HRCADAST' +
        'RO, '
      '  :NEW_FAM_INTERNET, :NEW_FAM_USUARIO)'
      
        'RETURNING FAM_CODIGO, FAM_DESCRICAO, FAM_DTATUALIZACAO, FAM_DTCA' +
        'DASTRO, FAM_HRATUALIZACAO, FAM_HRCADASTRO, FAM_INTERNET, FAM_USU' +
        'ARIO')
    ModifySQL.Strings = (
      'UPDATE FAMILIAS'
      
        'SET FAM_CODIGO = :NEW_FAM_CODIGO, FAM_DESCRICAO = :NEW_FAM_DESCR' +
        'ICAO, '
      
        '  FAM_DTATUALIZACAO = :NEW_FAM_DTATUALIZACAO, FAM_DTCADASTRO = :' +
        'NEW_FAM_DTCADASTRO, '
      
        '  FAM_HRATUALIZACAO = :NEW_FAM_HRATUALIZACAO, FAM_HRCADASTRO = :' +
        'NEW_FAM_HRCADASTRO, '
      
        '  FAM_INTERNET = :NEW_FAM_INTERNET, FAM_USUARIO = :NEW_FAM_USUAR' +
        'IO'
      'WHERE FAM_CODIGO = :OLD_FAM_CODIGO'
      
        'RETURNING FAM_CODIGO, FAM_DESCRICAO, FAM_DTATUALIZACAO, FAM_DTCA' +
        'DASTRO, FAM_HRATUALIZACAO, FAM_HRCADASTRO, FAM_INTERNET, FAM_USU' +
        'ARIO')
    DeleteSQL.Strings = (
      'DELETE FROM FAMILIAS'
      'WHERE FAM_CODIGO = :OLD_FAM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FAM_CODIGO, FAM_DESCRICAO, FAM_DTATUALIZACAO, FAM_DTCADAS' +
        'TRO, '
      '  FAM_HRATUALIZACAO, FAM_HRCADASTRO, FAM_INTERNET, FAM_USUARIO'
      'FROM FAMILIAS'
      'WHERE FAM_CODIGO = :OLD_FAM_CODIGO')
    Left = 736
    Top = 128
  end
  object TBFornecedores: TFDQuery
    Connection = FDConnection1
    Transaction = TRFornecedores
    UpdateObject = UPFornecedores
    SQL.Strings = (
      'select'
      'FOR_AFE,'
      'FOR_ALVARA,'
      'FOR_ALVARASANITARIO,'
      'FOR_ATIVIDADE,'
      'FOR_BAIRRO,'
      'FOR_CEP,'
      'FOR_CIDADE,'
      'FOR_CIDADECODIGO,'
      'FOR_CNPJ,'
      'FOR_CODIGO,'
      'FOR_COMPLEMENTO,'
      'FOR_CONTATO,'
      'FOR_CPF,'
      'FOR_DTATUALIZACAO,'
      'FOR_DTCADASTRO,'
      'FOR_DTNASC,'
      'FOR_EMAIL,'
      'FOR_EMAIL2,'
      'FOR_ENDERECO,'
      'FOR_ESTADO,'
      'FOR_ESTADOCIVIL,'
      'FOR_ESTADOCODIGO,'
      'FOR_FANTASIA,'
      'FOR_FONE0800,'
      'FOR_FONE1,'
      'FOR_FONE2,'
      'FOR_FONE3,'
      'FOR_HRATUALIZACAO,'
      'FOR_HRCADASTRO,'
      'FOR_IE,'
      'FOR_MSN,'
      'FOR_NEXTEL,'
      'FOR_NOME,'
      'FOR_NUMERO,'
      'FOR_OBSERVACOES,'
      'FOR_PAIS,'
      'FOR_PAISCODIGO,'
      'FOR_REGPROFISSIONAL,'
      'FOR_RG,'
      'FOR_SITE,'
      'FOR_STATUS,'
      'FOR_TIPOPESSOA,'
      'FOR_USUARIO,'
      'ATI_DESCRICAO'
      'from FORNECEDORES'
      'left join ATIVIDADES on FOR_ATIVIDADE=ATI_CODIGO'
      'where FOR_CODIGO=:codigo'
      'order by FOR_CODIGO'
      '')
    Left = 768
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBFornecedoresFOR_AFE: TStringField
      FieldName = 'FOR_AFE'
      Origin = 'FOR_AFE'
    end
    object TBFornecedoresFOR_ALVARA: TStringField
      FieldName = 'FOR_ALVARA'
      Origin = 'FOR_ALVARA'
    end
    object TBFornecedoresFOR_ALVARASANITARIO: TStringField
      FieldName = 'FOR_ALVARASANITARIO'
      Origin = 'FOR_ALVARASANITARIO'
    end
    object TBFornecedoresFOR_ATIVIDADE: TIntegerField
      FieldName = 'FOR_ATIVIDADE'
      Origin = 'FOR_ATIVIDADE'
      Required = True
    end
    object TBFornecedoresFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Origin = 'FOR_BAIRRO'
      Size = 50
    end
    object TBFornecedoresFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR_CEP'
      Size = 10
    end
    object TBFornecedoresFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR_CIDADE'
      Size = 50
    end
    object TBFornecedoresFOR_CIDADECODIGO: TIntegerField
      FieldName = 'FOR_CIDADECODIGO'
      Origin = 'FOR_CIDADECODIGO'
    end
    object TBFornecedoresFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      Origin = 'FOR_CNPJ'
    end
    object TBFornecedoresFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBFornecedoresFOR_COMPLEMENTO: TStringField
      FieldName = 'FOR_COMPLEMENTO'
      Origin = 'FOR_COMPLEMENTO'
      Size = 80
    end
    object TBFornecedoresFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR_CONTATO'
      Size = 80
    end
    object TBFornecedoresFOR_CPF: TStringField
      FieldName = 'FOR_CPF'
      Origin = 'FOR_CPF'
    end
    object TBFornecedoresFOR_DTATUALIZACAO: TDateField
      FieldName = 'FOR_DTATUALIZACAO'
      Origin = 'FOR_DTATUALIZACAO'
    end
    object TBFornecedoresFOR_DTCADASTRO: TDateField
      FieldName = 'FOR_DTCADASTRO'
      Origin = 'FOR_DTCADASTRO'
    end
    object TBFornecedoresFOR_DTNASC: TDateField
      FieldName = 'FOR_DTNASC'
      Origin = 'FOR_DTNASC'
    end
    object TBFornecedoresFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      Size = 100
    end
    object TBFornecedoresFOR_EMAIL2: TStringField
      FieldName = 'FOR_EMAIL2'
      Origin = 'FOR_EMAIL2'
      Size = 100
    end
    object TBFornecedoresFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      Origin = 'FOR_ENDERECO'
      Size = 100
    end
    object TBFornecedoresFOR_ESTADO: TStringField
      FieldName = 'FOR_ESTADO'
      Origin = 'FOR_ESTADO'
      Size = 2
    end
    object TBFornecedoresFOR_ESTADOCIVIL: TStringField
      FieldName = 'FOR_ESTADOCIVIL'
      Origin = 'FOR_ESTADOCIVIL'
      Size = 10
    end
    object TBFornecedoresFOR_ESTADOCODIGO: TIntegerField
      FieldName = 'FOR_ESTADOCODIGO'
      Origin = 'FOR_ESTADOCODIGO'
    end
    object TBFornecedoresFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Origin = 'FOR_FANTASIA'
      Size = 80
    end
    object TBFornecedoresFOR_FONE0800: TStringField
      FieldName = 'FOR_FONE0800'
      Origin = 'FOR_FONE0800'
    end
    object TBFornecedoresFOR_FONE1: TStringField
      FieldName = 'FOR_FONE1'
      Origin = 'FOR_FONE1'
    end
    object TBFornecedoresFOR_FONE2: TStringField
      FieldName = 'FOR_FONE2'
      Origin = 'FOR_FONE2'
    end
    object TBFornecedoresFOR_FONE3: TStringField
      FieldName = 'FOR_FONE3'
      Origin = 'FOR_FONE3'
    end
    object TBFornecedoresFOR_HRATUALIZACAO: TTimeField
      FieldName = 'FOR_HRATUALIZACAO'
      Origin = 'FOR_HRATUALIZACAO'
    end
    object TBFornecedoresFOR_HRCADASTRO: TTimeField
      FieldName = 'FOR_HRCADASTRO'
      Origin = 'FOR_HRCADASTRO'
    end
    object TBFornecedoresFOR_IE: TStringField
      FieldName = 'FOR_IE'
      Origin = 'FOR_IE'
    end
    object TBFornecedoresFOR_MSN: TStringField
      FieldName = 'FOR_MSN'
      Origin = 'FOR_MSN'
      Size = 100
    end
    object TBFornecedoresFOR_NEXTEL: TStringField
      FieldName = 'FOR_NEXTEL'
      Origin = 'FOR_NEXTEL'
    end
    object TBFornecedoresFOR_NOME: TStringField
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      Required = True
      Size = 80
    end
    object TBFornecedoresFOR_NUMERO: TStringField
      FieldName = 'FOR_NUMERO'
      Origin = 'FOR_NUMERO'
      Size = 15
    end
    object TBFornecedoresFOR_OBSERVACOES: TMemoField
      FieldName = 'FOR_OBSERVACOES'
      Origin = 'FOR_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBFornecedoresFOR_PAIS: TStringField
      FieldName = 'FOR_PAIS'
      Origin = 'FOR_PAIS'
      Size = 80
    end
    object TBFornecedoresFOR_PAISCODIGO: TIntegerField
      FieldName = 'FOR_PAISCODIGO'
      Origin = 'FOR_PAISCODIGO'
    end
    object TBFornecedoresFOR_REGPROFISSIONAL: TStringField
      FieldName = 'FOR_REGPROFISSIONAL'
      Origin = 'FOR_REGPROFISSIONAL'
    end
    object TBFornecedoresFOR_RG: TStringField
      FieldName = 'FOR_RG'
      Origin = 'FOR_RG'
    end
    object TBFornecedoresFOR_SITE: TStringField
      FieldName = 'FOR_SITE'
      Origin = 'FOR_SITE'
      Size = 100
    end
    object TBFornecedoresFOR_STATUS: TStringField
      FieldName = 'FOR_STATUS'
      Origin = 'FOR_STATUS'
      Size = 1
    end
    object TBFornecedoresFOR_TIPOPESSOA: TStringField
      FieldName = 'FOR_TIPOPESSOA'
      Origin = 'FOR_TIPOPESSOA'
      Size = 1
    end
    object TBFornecedoresFOR_USUARIO: TStringField
      FieldName = 'FOR_USUARIO'
      Origin = 'FOR_USUARIO'
    end
    object TBFornecedoresATI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATI_DESCRICAO'
      Origin = 'ATI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRFornecedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 768
    Top = 176
  end
  object UPFornecedores: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FORNECEDORES'
      '(FOR_AFE, FOR_ALVARA, FOR_ALVARASANITARIO, FOR_ATIVIDADE, '
      '  FOR_BAIRRO, FOR_CEP, FOR_CIDADE, FOR_CIDADECODIGO, '
      '  FOR_CNPJ, FOR_CODIGO, FOR_COMPLEMENTO, FOR_CONTATO, '
      '  FOR_CPF, FOR_DTATUALIZACAO, FOR_DTCADASTRO, '
      '  FOR_DTNASC, FOR_EMAIL, FOR_EMAIL2, FOR_ENDERECO, '
      '  FOR_ESTADO, FOR_ESTADOCIVIL, FOR_ESTADOCODIGO, '
      '  FOR_FANTASIA, FOR_FONE0800, FOR_FONE1, FOR_FONE2, '
      '  FOR_FONE3, FOR_HRATUALIZACAO, FOR_HRCADASTRO, '
      '  FOR_IE, FOR_MSN, FOR_NEXTEL, FOR_NOME, '
      '  FOR_NUMERO, FOR_OBSERVACOES, FOR_PAIS, FOR_PAISCODIGO, '
      '  FOR_REGPROFISSIONAL, FOR_RG, FOR_SITE, FOR_STATUS, '
      '  FOR_TIPOPESSOA, FOR_USUARIO)'
      
        'VALUES (:NEW_FOR_AFE, :NEW_FOR_ALVARA, :NEW_FOR_ALVARASANITARIO,' +
        ' :NEW_FOR_ATIVIDADE, '
      
        '  :NEW_FOR_BAIRRO, :NEW_FOR_CEP, :NEW_FOR_CIDADE, :NEW_FOR_CIDAD' +
        'ECODIGO, '
      
        '  :NEW_FOR_CNPJ, gen_id(GEN_FORNECEDORES,1), :NEW_FOR_COMPLEMENT' +
        'O, :NEW_FOR_CONTATO, '
      '  :NEW_FOR_CPF, :NEW_FOR_DTATUALIZACAO, :NEW_FOR_DTCADASTRO, '
      
        '  :NEW_FOR_DTNASC, :NEW_FOR_EMAIL, :NEW_FOR_EMAIL2, :NEW_FOR_END' +
        'ERECO, '
      '  :NEW_FOR_ESTADO, :NEW_FOR_ESTADOCIVIL, :NEW_FOR_ESTADOCODIGO, '
      
        '  :NEW_FOR_FANTASIA, :NEW_FOR_FONE0800, :NEW_FOR_FONE1, :NEW_FOR' +
        '_FONE2, '
      '  :NEW_FOR_FONE3, :NEW_FOR_HRATUALIZACAO, :NEW_FOR_HRCADASTRO, '
      '  :NEW_FOR_IE, :NEW_FOR_MSN, :NEW_FOR_NEXTEL, :NEW_FOR_NOME, '
      
        '  :NEW_FOR_NUMERO, :NEW_FOR_OBSERVACOES, :NEW_FOR_PAIS, :NEW_FOR' +
        '_PAISCODIGO, '
      
        '  :NEW_FOR_REGPROFISSIONAL, :NEW_FOR_RG, :NEW_FOR_SITE, :NEW_FOR' +
        '_STATUS, '
      '  :NEW_FOR_TIPOPESSOA, :NEW_FOR_USUARIO)'
      
        'RETURNING FOR_AFE, FOR_ALVARA, FOR_ALVARASANITARIO, FOR_ATIVIDAD' +
        'E, FOR_BAIRRO, FOR_CEP, FOR_CIDADE, FOR_CIDADECODIGO, FOR_CNPJ, ' +
        'FOR_CODIGO, FOR_COMPLEMENTO, FOR_CONTATO, FOR_CPF, FOR_DTATUALIZ' +
        'ACAO, FOR_DTCADASTRO, FOR_DTNASC, FOR_EMAIL, FOR_EMAIL2, FOR_END' +
        'ERECO, FOR_ESTADO, FOR_ESTADOCIVIL, FOR_ESTADOCODIGO, FOR_FANTAS' +
        'IA, FOR_FONE0800, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_HRATUALIZ' +
        'ACAO, FOR_HRCADASTRO, FOR_IE, FOR_MSN, FOR_NEXTEL, FOR_NOME, FOR' +
        '_NUMERO, FOR_OBSERVACOES, FOR_PAIS, FOR_PAISCODIGO, FOR_REGPROFI' +
        'SSIONAL, FOR_RG, FOR_SITE, FOR_STATUS, FOR_TIPOPESSOA, FOR_USUAR' +
        'IO')
    ModifySQL.Strings = (
      'UPDATE FORNECEDORES'
      
        'SET FOR_AFE = :NEW_FOR_AFE, FOR_ALVARA = :NEW_FOR_ALVARA, FOR_AL' +
        'VARASANITARIO = :NEW_FOR_ALVARASANITARIO, '
      
        '  FOR_ATIVIDADE = :NEW_FOR_ATIVIDADE, FOR_BAIRRO = :NEW_FOR_BAIR' +
        'RO, '
      
        '  FOR_CEP = :NEW_FOR_CEP, FOR_CIDADE = :NEW_FOR_CIDADE, FOR_CIDA' +
        'DECODIGO = :NEW_FOR_CIDADECODIGO, '
      '  FOR_CNPJ = :NEW_FOR_CNPJ, FOR_CODIGO = :NEW_FOR_CODIGO, '
      
        '  FOR_COMPLEMENTO = :NEW_FOR_COMPLEMENTO, FOR_CONTATO = :NEW_FOR' +
        '_CONTATO, '
      
        '  FOR_CPF = :NEW_FOR_CPF, FOR_DTATUALIZACAO = :NEW_FOR_DTATUALIZ' +
        'ACAO, '
      
        '  FOR_DTCADASTRO = :NEW_FOR_DTCADASTRO, FOR_DTNASC = :NEW_FOR_DT' +
        'NASC, '
      '  FOR_EMAIL = :NEW_FOR_EMAIL, FOR_EMAIL2 = :NEW_FOR_EMAIL2, '
      
        '  FOR_ENDERECO = :NEW_FOR_ENDERECO, FOR_ESTADO = :NEW_FOR_ESTADO' +
        ', '
      
        '  FOR_ESTADOCIVIL = :NEW_FOR_ESTADOCIVIL, FOR_ESTADOCODIGO = :NE' +
        'W_FOR_ESTADOCODIGO, '
      
        '  FOR_FANTASIA = :NEW_FOR_FANTASIA, FOR_FONE0800 = :NEW_FOR_FONE' +
        '0800, '
      '  FOR_FONE1 = :NEW_FOR_FONE1, FOR_FONE2 = :NEW_FOR_FONE2, '
      
        '  FOR_FONE3 = :NEW_FOR_FONE3, FOR_HRATUALIZACAO = :NEW_FOR_HRATU' +
        'ALIZACAO, '
      '  FOR_HRCADASTRO = :NEW_FOR_HRCADASTRO, FOR_IE = :NEW_FOR_IE, '
      
        '  FOR_MSN = :NEW_FOR_MSN, FOR_NEXTEL = :NEW_FOR_NEXTEL, FOR_NOME' +
        ' = :NEW_FOR_NOME, '
      
        '  FOR_NUMERO = :NEW_FOR_NUMERO, FOR_OBSERVACOES = :NEW_FOR_OBSER' +
        'VACOES, '
      
        '  FOR_PAIS = :NEW_FOR_PAIS, FOR_PAISCODIGO = :NEW_FOR_PAISCODIGO' +
        ', '
      
        '  FOR_REGPROFISSIONAL = :NEW_FOR_REGPROFISSIONAL, FOR_RG = :NEW_' +
        'FOR_RG, '
      '  FOR_SITE = :NEW_FOR_SITE, FOR_STATUS = :NEW_FOR_STATUS, '
      
        '  FOR_TIPOPESSOA = :NEW_FOR_TIPOPESSOA, FOR_USUARIO = :NEW_FOR_U' +
        'SUARIO'
      'WHERE FOR_CODIGO = :OLD_FOR_CODIGO'
      
        'RETURNING FOR_AFE, FOR_ALVARA, FOR_ALVARASANITARIO, FOR_ATIVIDAD' +
        'E, FOR_BAIRRO, FOR_CEP, FOR_CIDADE, FOR_CIDADECODIGO, FOR_CNPJ, ' +
        'FOR_CODIGO, FOR_COMPLEMENTO, FOR_CONTATO, FOR_CPF, FOR_DTATUALIZ' +
        'ACAO, FOR_DTCADASTRO, FOR_DTNASC, FOR_EMAIL, FOR_EMAIL2, FOR_END' +
        'ERECO, FOR_ESTADO, FOR_ESTADOCIVIL, FOR_ESTADOCODIGO, FOR_FANTAS' +
        'IA, FOR_FONE0800, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_HRATUALIZ' +
        'ACAO, FOR_HRCADASTRO, FOR_IE, FOR_MSN, FOR_NEXTEL, FOR_NOME, FOR' +
        '_NUMERO, FOR_OBSERVACOES, FOR_PAIS, FOR_PAISCODIGO, FOR_REGPROFI' +
        'SSIONAL, FOR_RG, FOR_SITE, FOR_STATUS, FOR_TIPOPESSOA, FOR_USUAR' +
        'IO')
    DeleteSQL.Strings = (
      'DELETE FROM FORNECEDORES'
      'WHERE FOR_CODIGO = :OLD_FOR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT FOR_AFE, FOR_ALVARA, FOR_ALVARASANITARIO, FOR_ATIVIDADE, ' +
        'FOR_BAIRRO, '
      '  FOR_CEP, FOR_CIDADE, FOR_CIDADECODIGO, FOR_CNPJ, FOR_CODIGO, '
      '  FOR_COMPLEMENTO, FOR_CONTATO, FOR_CPF, FOR_DTATUALIZACAO, '
      
        '  FOR_DTCADASTRO, FOR_DTNASC, FOR_EMAIL, FOR_EMAIL2, FOR_ENDEREC' +
        'O, '
      '  FOR_ESTADO, FOR_ESTADOCIVIL, FOR_ESTADOCODIGO, FOR_FANTASIA, '
      
        '  FOR_FONE0800, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_HRATUALIZAC' +
        'AO, '
      
        '  FOR_HRCADASTRO, FOR_IE, FOR_MSN, FOR_NEXTEL, FOR_NOME, FOR_NUM' +
        'ERO, '
      
        '  FOR_OBSERVACOES, FOR_PAIS, FOR_PAISCODIGO, FOR_REGPROFISSIONAL' +
        ', '
      '  FOR_RG, FOR_SITE, FOR_STATUS, FOR_TIPOPESSOA, FOR_USUARIO'
      'FROM FORNECEDORES'
      'WHERE FOR_CODIGO = :OLD_FOR_CODIGO')
    Left = 768
    Top = 128
  end
  object TBGrupos: TFDQuery
    Connection = FDConnection1
    Transaction = TRGrupos
    UpdateObject = UPGrupos
    SQL.Strings = (
      'select * from GRUPOS '
      'where GRU_CODIGO=:codigo '
      'order by GRU_CODIGO'
      '')
    Left = 800
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = 'GRU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      Size = 50
    end
    object TBGruposGRU_DTATUALIZACAO: TDateField
      FieldName = 'GRU_DTATUALIZACAO'
      Origin = 'GRU_DTATUALIZACAO'
    end
    object TBGruposGRU_DTCADASTRO: TDateField
      FieldName = 'GRU_DTCADASTRO'
      Origin = 'GRU_DTCADASTRO'
    end
    object TBGruposGRU_HRATUALIZACAO: TTimeField
      FieldName = 'GRU_HRATUALIZACAO'
      Origin = 'GRU_HRATUALIZACAO'
    end
    object TBGruposGRU_HRCADASTRO: TTimeField
      FieldName = 'GRU_HRCADASTRO'
      Origin = 'GRU_HRCADASTRO'
    end
    object TBGruposGRU_INTERNET: TStringField
      FieldName = 'GRU_INTERNET'
      Origin = 'GRU_INTERNET'
      Size = 1
    end
    object TBGruposGRU_STATUS: TStringField
      FieldName = 'GRU_STATUS'
      Origin = 'GRU_STATUS'
      Size = 1
    end
    object TBGruposGRU_USUARIO: TStringField
      FieldName = 'GRU_USUARIO'
      Origin = 'GRU_USUARIO'
    end
  end
  object TRGrupos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 800
    Top = 176
  end
  object UPGrupos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO GRUPOS'
      '(GRU_CODIGO, GRU_DESCRICAO, GRU_DTATUALIZACAO, '
      '  GRU_DTCADASTRO, GRU_HRATUALIZACAO, GRU_HRCADASTRO, '
      '  GRU_INTERNET, GRU_STATUS, GRU_USUARIO)'
      
        'VALUES (gen_id(GEN_GRUPOS,1), :NEW_GRU_DESCRICAO, :NEW_GRU_DTATU' +
        'ALIZACAO, '
      
        '  :NEW_GRU_DTCADASTRO, :NEW_GRU_HRATUALIZACAO, :NEW_GRU_HRCADAST' +
        'RO, '
      '  :NEW_GRU_INTERNET, :NEW_GRU_STATUS, :NEW_GRU_USUARIO)'
      
        'RETURNING GRU_CODIGO, GRU_DESCRICAO, GRU_DTATUALIZACAO, GRU_DTCA' +
        'DASTRO, GRU_HRATUALIZACAO, GRU_HRCADASTRO, GRU_INTERNET, GRU_STA' +
        'TUS, GRU_USUARIO')
    ModifySQL.Strings = (
      'UPDATE GRUPOS'
      
        'SET GRU_CODIGO = :NEW_GRU_CODIGO, GRU_DESCRICAO = :NEW_GRU_DESCR' +
        'ICAO, '
      
        '  GRU_DTATUALIZACAO = :NEW_GRU_DTATUALIZACAO, GRU_DTCADASTRO = :' +
        'NEW_GRU_DTCADASTRO, '
      
        '  GRU_HRATUALIZACAO = :NEW_GRU_HRATUALIZACAO, GRU_HRCADASTRO = :' +
        'NEW_GRU_HRCADASTRO, '
      
        '  GRU_INTERNET = :NEW_GRU_INTERNET, GRU_STATUS = :NEW_GRU_STATUS' +
        ', '
      '  GRU_USUARIO = :NEW_GRU_USUARIO'
      'WHERE GRU_CODIGO = :OLD_GRU_CODIGO'
      
        'RETURNING GRU_CODIGO, GRU_DESCRICAO, GRU_DTATUALIZACAO, GRU_DTCA' +
        'DASTRO, GRU_HRATUALIZACAO, GRU_HRCADASTRO, GRU_INTERNET, GRU_STA' +
        'TUS, GRU_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM GRUPOS'
      'WHERE GRU_CODIGO = :OLD_GRU_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT GRU_CODIGO, GRU_DESCRICAO, GRU_DTATUALIZACAO, GRU_DTCADAS' +
        'TRO, '
      '  GRU_HRATUALIZACAO, GRU_HRCADASTRO, GRU_INTERNET, GRU_STATUS, '
      '  GRU_USUARIO'
      'FROM GRUPOS'
      'WHERE GRU_CODIGO = :OLD_GRU_CODIGO')
    Left = 800
    Top = 128
  end
  object TBIcms: TFDQuery
    Connection = FDConnection1
    Transaction = TRIcms
    UpdateObject = UPIcms
    SQL.Strings = (
      'select * from ICMS '
      'where ICM_CODIGO=:codigo '
      'order by ICM_CODIGO'
      '')
    Left = 832
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBIcmsICM_CALCULACREDITOSN: TStringField
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      Size = 1
    end
    object TBIcmsICM_CODIGO: TIntegerField
      FieldName = 'ICM_CODIGO'
      Origin = 'ICM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBIcmsICM_DESCRICAO: TStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      Size = 120
    end
    object TBIcmsICM_DTATUALIZACAO: TDateField
      FieldName = 'ICM_DTATUALIZACAO'
      Origin = 'ICM_DTATUALIZACAO'
    end
    object TBIcmsICM_DTCADASTRO: TDateField
      FieldName = 'ICM_DTCADASTRO'
      Origin = 'ICM_DTCADASTRO'
    end
    object TBIcmsICM_HRATUALIZACAO: TTimeField
      FieldName = 'ICM_HRATUALIZACAO'
      Origin = 'ICM_HRATUALIZACAO'
    end
    object TBIcmsICM_HRCADASTRO: TTimeField
      FieldName = 'ICM_HRCADASTRO'
      Origin = 'ICM_HRCADASTRO'
    end
    object TBIcmsICM_USUARIO: TStringField
      FieldName = 'ICM_USUARIO'
      Origin = 'ICM_USUARIO'
    end
  end
  object TRIcms: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 832
    Top = 176
  end
  object UPIcms: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ICMS'
      '(ICM_CALCULACREDITOSN, ICM_CODIGO, ICM_DESCRICAO, '
      '  ICM_DTATUALIZACAO, ICM_DTCADASTRO, ICM_HRATUALIZACAO, '
      '  ICM_HRCADASTRO, ICM_USUARIO)'
      
        'VALUES (:NEW_ICM_CALCULACREDITOSN, :NEW_ICM_CODIGO, :NEW_ICM_DES' +
        'CRICAO, '
      
        '  :NEW_ICM_DTATUALIZACAO, :NEW_ICM_DTCADASTRO, :NEW_ICM_HRATUALI' +
        'ZACAO, '
      '  :NEW_ICM_HRCADASTRO, :NEW_ICM_USUARIO)'
      
        'RETURNING ICM_CALCULACREDITOSN, ICM_CODIGO, ICM_DESCRICAO, ICM_D' +
        'TATUALIZACAO, ICM_DTCADASTRO, ICM_HRATUALIZACAO, ICM_HRCADASTRO,' +
        ' ICM_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ICMS'
      
        'SET ICM_CALCULACREDITOSN = :NEW_ICM_CALCULACREDITOSN, ICM_CODIGO' +
        ' = :NEW_ICM_CODIGO, '
      
        '  ICM_DESCRICAO = :NEW_ICM_DESCRICAO, ICM_DTATUALIZACAO = :NEW_I' +
        'CM_DTATUALIZACAO, '
      
        '  ICM_DTCADASTRO = :NEW_ICM_DTCADASTRO, ICM_HRATUALIZACAO = :NEW' +
        '_ICM_HRATUALIZACAO, '
      
        '  ICM_HRCADASTRO = :NEW_ICM_HRCADASTRO, ICM_USUARIO = :NEW_ICM_U' +
        'SUARIO'
      'WHERE ICM_CODIGO = :OLD_ICM_CODIGO'
      
        'RETURNING ICM_CALCULACREDITOSN, ICM_CODIGO, ICM_DESCRICAO, ICM_D' +
        'TATUALIZACAO, ICM_DTCADASTRO, ICM_HRATUALIZACAO, ICM_HRCADASTRO,' +
        ' ICM_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ICMS'
      'WHERE ICM_CODIGO = :OLD_ICM_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ICM_CALCULACREDITOSN, ICM_CODIGO, ICM_DESCRICAO, ICM_DTAT' +
        'UALIZACAO, '
      '  ICM_DTCADASTRO, ICM_HRATUALIZACAO, ICM_HRCADASTRO, ICM_USUARIO'
      'FROM ICMS'
      'WHERE ICM_CODIGO = :OLD_ICM_CODIGO')
    Left = 832
    Top = 128
  end
  object TBIpi: TFDQuery
    Connection = FDConnection1
    Transaction = TRIpi
    UpdateObject = UPIpi
    SQL.Strings = (
      'select * from IPI '
      'where IPI_CODIGO=:codigo '
      'order by IPI_CODIGO'
      '')
    Left = 864
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBIpiIPI_CODIGO: TIntegerField
      FieldName = 'IPI_CODIGO'
      Origin = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBIpiIPI_DESCRICAO: TStringField
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      Size = 120
    end
    object TBIpiIPI_DTATUALIZACAO: TDateField
      FieldName = 'IPI_DTATUALIZACAO'
      Origin = 'IPI_DTATUALIZACAO'
    end
    object TBIpiIPI_DTCADASTRO: TDateField
      FieldName = 'IPI_DTCADASTRO'
      Origin = 'IPI_DTCADASTRO'
    end
    object TBIpiIPI_HRATUALIZACAO: TTimeField
      FieldName = 'IPI_HRATUALIZACAO'
      Origin = 'IPI_HRATUALIZACAO'
    end
    object TBIpiIPI_HRCADASTRO: TTimeField
      FieldName = 'IPI_HRCADASTRO'
      Origin = 'IPI_HRCADASTRO'
    end
    object TBIpiIPI_USUARIO: TStringField
      FieldName = 'IPI_USUARIO'
      Origin = 'IPI_USUARIO'
    end
  end
  object TRIpi: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 864
    Top = 176
  end
  object UPIpi: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO IPI'
      '(IPI_CODIGO, IPI_DESCRICAO, IPI_DTATUALIZACAO, '
      '  IPI_DTCADASTRO, IPI_HRATUALIZACAO, IPI_HRCADASTRO, '
      '  IPI_USUARIO)'
      
        'VALUES (:NEW_IPI_CODIGO, :NEW_IPI_DESCRICAO, :NEW_IPI_DTATUALIZA' +
        'CAO, '
      
        '  :NEW_IPI_DTCADASTRO, :NEW_IPI_HRATUALIZACAO, :NEW_IPI_HRCADAST' +
        'RO, '
      '  :NEW_IPI_USUARIO)'
      
        'RETURNING IPI_CODIGO, IPI_DESCRICAO, IPI_DTATUALIZACAO, IPI_DTCA' +
        'DASTRO, IPI_HRATUALIZACAO, IPI_HRCADASTRO, IPI_USUARIO')
    ModifySQL.Strings = (
      'UPDATE IPI'
      
        'SET IPI_CODIGO = :NEW_IPI_CODIGO, IPI_DESCRICAO = :NEW_IPI_DESCR' +
        'ICAO, '
      
        '  IPI_DTATUALIZACAO = :NEW_IPI_DTATUALIZACAO, IPI_DTCADASTRO = :' +
        'NEW_IPI_DTCADASTRO, '
      
        '  IPI_HRATUALIZACAO = :NEW_IPI_HRATUALIZACAO, IPI_HRCADASTRO = :' +
        'NEW_IPI_HRCADASTRO, '
      '  IPI_USUARIO = :NEW_IPI_USUARIO'
      'WHERE IPI_CODIGO = :OLD_IPI_CODIGO'
      
        'RETURNING IPI_CODIGO, IPI_DESCRICAO, IPI_DTATUALIZACAO, IPI_DTCA' +
        'DASTRO, IPI_HRATUALIZACAO, IPI_HRCADASTRO, IPI_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM IPI'
      'WHERE IPI_CODIGO = :OLD_IPI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT IPI_CODIGO, IPI_DESCRICAO, IPI_DTATUALIZACAO, IPI_DTCADAS' +
        'TRO, '
      '  IPI_HRATUALIZACAO, IPI_HRCADASTRO, IPI_USUARIO'
      'FROM IPI'
      'WHERE IPI_CODIGO = :OLD_IPI_CODIGO')
    Left = 864
    Top = 128
  end
  object TBIss: TFDQuery
    Connection = FDConnection1
    Transaction = TRIss
    UpdateObject = UPIss
    SQL.Strings = (
      'select * from ISS '
      'where ISS_CODIGO=:codigo '
      'order by ISS_CODIGO'
      '')
    Left = 896
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
    object TBIssISS_ALIQUOTAESTADUAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAESTADUAL'
      Origin = 'ISS_ALIQUOTAESTADUAL'
      Precision = 18
    end
    object TBIssISS_ALIQUOTAIMPORTACAO: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAIMPORTACAO'
      Origin = 'ISS_ALIQUOTAIMPORTACAO'
      Precision = 18
    end
    object TBIssISS_ALIQUOTAMUNICIPAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTAMUNICIPAL'
      Origin = 'ISS_ALIQUOTAMUNICIPAL'
      Precision = 18
    end
    object TBIssISS_ALIQUOTANACIONAL: TFMTBCDField
      FieldName = 'ISS_ALIQUOTANACIONAL'
      Origin = 'ISS_ALIQUOTANACIONAL'
      Precision = 18
    end
    object TBIssISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      Origin = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object TBIssISS_DESCRICAO: TStringField
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      Size = 1000
    end
    object TBIssISS_DTATUALIZACAO: TDateField
      FieldName = 'ISS_DTATUALIZACAO'
      Origin = 'ISS_DTATUALIZACAO'
    end
    object TBIssISS_DTCADASTRO: TDateField
      FieldName = 'ISS_DTCADASTRO'
      Origin = 'ISS_DTCADASTRO'
    end
    object TBIssISS_HRATUALIZACAO: TTimeField
      FieldName = 'ISS_HRATUALIZACAO'
      Origin = 'ISS_HRATUALIZACAO'
    end
    object TBIssISS_HRCADASTRO: TTimeField
      FieldName = 'ISS_HRCADASTRO'
      Origin = 'ISS_HRCADASTRO'
    end
    object TBIssISS_USUARIO: TStringField
      FieldName = 'ISS_USUARIO'
      Origin = 'ISS_USUARIO'
    end
  end
  object TRIss: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 896
    Top = 176
  end
  object UPIss: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO ISS'
      
        '(ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNIC' +
        'IPAL, '
      '  ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO, '
      '  ISS_DTATUALIZACAO, ISS_DTCADASTRO, ISS_HRATUALIZACAO, '
      '  ISS_HRCADASTRO, ISS_USUARIO)'
      
        'VALUES (:NEW_ISS_ALIQUOTAESTADUAL, :NEW_ISS_ALIQUOTAIMPORTACAO, ' +
        ':NEW_ISS_ALIQUOTAMUNICIPAL, '
      
        '  :NEW_ISS_ALIQUOTANACIONAL, :NEW_ISS_CODIGO, :NEW_ISS_DESCRICAO' +
        ', '
      
        '  :NEW_ISS_DTATUALIZACAO, :NEW_ISS_DTCADASTRO, :NEW_ISS_HRATUALI' +
        'ZACAO, '
      '  :NEW_ISS_HRCADASTRO, :NEW_ISS_USUARIO)'
      
        'RETURNING ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQ' +
        'UOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO, ' +
        'ISS_DTATUALIZACAO, ISS_DTCADASTRO, ISS_HRATUALIZACAO, ISS_HRCADA' +
        'STRO, ISS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE ISS'
      
        'SET ISS_ALIQUOTAESTADUAL = :NEW_ISS_ALIQUOTAESTADUAL, ISS_ALIQUO' +
        'TAIMPORTACAO = :NEW_ISS_ALIQUOTAIMPORTACAO, '
      
        '  ISS_ALIQUOTAMUNICIPAL = :NEW_ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUO' +
        'TANACIONAL = :NEW_ISS_ALIQUOTANACIONAL, '
      
        '  ISS_CODIGO = :NEW_ISS_CODIGO, ISS_DESCRICAO = :NEW_ISS_DESCRIC' +
        'AO, '
      
        '  ISS_DTATUALIZACAO = :NEW_ISS_DTATUALIZACAO, ISS_DTCADASTRO = :' +
        'NEW_ISS_DTCADASTRO, '
      
        '  ISS_HRATUALIZACAO = :NEW_ISS_HRATUALIZACAO, ISS_HRCADASTRO = :' +
        'NEW_ISS_HRCADASTRO, '
      '  ISS_USUARIO = :NEW_ISS_USUARIO'
      'WHERE ISS_CODIGO = :OLD_ISS_CODIGO'
      
        'RETURNING ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQ' +
        'UOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO, ' +
        'ISS_DTATUALIZACAO, ISS_DTCADASTRO, ISS_HRATUALIZACAO, ISS_HRCADA' +
        'STRO, ISS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM ISS'
      'WHERE ISS_CODIGO = :OLD_ISS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOT' +
        'AMUNICIPAL, '
      
        '  ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO, ISS_DTATUALIZ' +
        'ACAO, '
      '  ISS_DTCADASTRO, ISS_HRATUALIZACAO, ISS_HRCADASTRO, ISS_USUARIO'
      'FROM ISS'
      'WHERE ISS_CODIGO = :OLD_ISS_CODIGO')
    Left = 896
    Top = 128
  end
  object TBLocais: TFDQuery
    Connection = FDConnection1
    Transaction = TRLocais
    UpdateObject = UPLocais
    SQL.Strings = (
      'select * from LOCAIS '
      'where LCA_CODIGO=:codigo '
      'order by LCA_CODIGO'
      '')
    Left = 928
    Top = 80
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
  object TRLocais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 928
    Top = 176
  end
  object UPLocais: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 928
    Top = 128
  end
  object TBMailings: TFDQuery
    Connection = FDConnection1
    Transaction = TRMailings
    UpdateObject = UPMailings
    SQL.Strings = (
      'select * from MAILINGS '
      'where MAI_CODIGO=:codigo '
      'order by MAI_CODIGO'
      '')
    Left = 960
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBMailingsMAI_CODIGO: TIntegerField
      FieldName = 'MAI_CODIGO'
      Origin = 'MAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMailingsMAI_DESCRICAO: TStringField
      FieldName = 'MAI_DESCRICAO'
      Origin = 'MAI_DESCRICAO'
      Size = 50
    end
    object TBMailingsMAI_DTATUALIZACAO: TDateField
      FieldName = 'MAI_DTATUALIZACAO'
      Origin = 'MAI_DTATUALIZACAO'
    end
    object TBMailingsMAI_DTCADASTRO: TDateField
      FieldName = 'MAI_DTCADASTRO'
      Origin = 'MAI_DTCADASTRO'
    end
    object TBMailingsMAI_HRATUALIZACAO: TTimeField
      FieldName = 'MAI_HRATUALIZACAO'
      Origin = 'MAI_HRATUALIZACAO'
    end
    object TBMailingsMAI_HRCADASTRO: TTimeField
      FieldName = 'MAI_HRCADASTRO'
      Origin = 'MAI_HRCADASTRO'
    end
    object TBMailingsMAI_USUARIO: TStringField
      FieldName = 'MAI_USUARIO'
      Origin = 'MAI_USUARIO'
    end
  end
  object TRMailings: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 960
    Top = 176
  end
  object UPMailings: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO MAILINGS'
      '(MAI_CODIGO, MAI_DESCRICAO, MAI_DTATUALIZACAO, '
      '  MAI_DTCADASTRO, MAI_HRATUALIZACAO, MAI_HRCADASTRO, '
      '  MAI_USUARIO)'
      
        'VALUES (gen_id(GEN_MAILINGS,1), :NEW_MAI_DESCRICAO, :NEW_MAI_DTA' +
        'TUALIZACAO, '
      
        '  :NEW_MAI_DTCADASTRO, :NEW_MAI_HRATUALIZACAO, :NEW_MAI_HRCADAST' +
        'RO, '
      '  :NEW_MAI_USUARIO)'
      
        'RETURNING MAI_CODIGO, MAI_DESCRICAO, MAI_DTATUALIZACAO, MAI_DTCA' +
        'DASTRO, MAI_HRATUALIZACAO, MAI_HRCADASTRO, MAI_USUARIO')
    ModifySQL.Strings = (
      'UPDATE MAILINGS'
      
        'SET MAI_CODIGO = :NEW_MAI_CODIGO, MAI_DESCRICAO = :NEW_MAI_DESCR' +
        'ICAO, '
      
        '  MAI_DTATUALIZACAO = :NEW_MAI_DTATUALIZACAO, MAI_DTCADASTRO = :' +
        'NEW_MAI_DTCADASTRO, '
      
        '  MAI_HRATUALIZACAO = :NEW_MAI_HRATUALIZACAO, MAI_HRCADASTRO = :' +
        'NEW_MAI_HRCADASTRO, '
      '  MAI_USUARIO = :NEW_MAI_USUARIO'
      'WHERE MAI_CODIGO = :OLD_MAI_CODIGO'
      
        'RETURNING MAI_CODIGO, MAI_DESCRICAO, MAI_DTATUALIZACAO, MAI_DTCA' +
        'DASTRO, MAI_HRATUALIZACAO, MAI_HRCADASTRO, MAI_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM MAILINGS'
      'WHERE MAI_CODIGO = :OLD_MAI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MAI_CODIGO, MAI_DESCRICAO, MAI_DTATUALIZACAO, MAI_DTCADAS' +
        'TRO, '
      '  MAI_HRATUALIZACAO, MAI_HRCADASTRO, MAI_USUARIO'
      'FROM MAILINGS'
      'WHERE MAI_CODIGO = :OLD_MAI_CODIGO')
    Left = 960
    Top = 128
  end
  object TBMarcas: TFDQuery
    Connection = FDConnection1
    Transaction = TRMarcas
    UpdateObject = UPMarcas
    SQL.Strings = (
      'select * from MARCAS '
      'where MAR_CODIGO=:codigo '
      'order by MAR_CODIGO'
      '')
    Left = 992
    Top = 80
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
  object TRMarcas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 992
    Top = 176
  end
  object UPMarcas: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 992
    Top = 128
  end
  object TBMarkups: TFDQuery
    Connection = FDConnection1
    Transaction = TRMarkups
    UpdateObject = UPMarkups
    SQL.Strings = (
      'select * from MARKUPS '
      'where MKP_CODIGO=:codigo '
      'order by MKP_CODIGO'
      '')
    Left = 1024
    Top = 80
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
  object TRMarkups: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 1024
    Top = 176
  end
  object UPMarkups: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 1024
    Top = 128
  end
  object TBMarkupsItens: TFDQuery
    MasterSource = DSMarkups
    MasterFields = 'MKP_CODIGO'
    Connection = FDConnection1
    Transaction = TRMarkupsItens
    UpdateObject = UPMarkupsItens
    SQL.Strings = (
      'select * from MARKUPSITENS'
      'where MKI_MARKUP=:MKP_CODIGO'
      'order by MKI_CODIGO'
      '')
    Left = 1056
    Top = 80
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
  object TRMarkupsItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 1056
    Top = 176
  end
  object UPMarkupsItens: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 1056
    Top = 128
  end
  object TBMetas: TFDQuery
    Connection = FDConnection1
    Transaction = TRMetas
    UpdateObject = UPMetas
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
    Left = 1088
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
      Size = 80
    end
  end
  object TRMetas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 1088
    Top = 176
  end
  object UPMetas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO METAS'
      '(MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSAO, '
      '  MET_COMISSAOTIPO, MET_DTATUALIZACAO, MET_DTBAIXA, '
      '  MET_DTCADASTRO, MET_DTFIM, MET_DTINICIO, '
      '  MET_HRATUALIZACAO, MET_HRCADASTRO, MET_METAATINGIDA, '
      '  MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, '
      '  MET_TOTALCOMISSAO, MET_TOTALLIQUIDADO, MET_TOTALVENDAS, '
      '  MET_TOTALVENDASCOMISSIONADAS, MET_USUARIO, MET_VENDEDOR)'
      
        'VALUES (:NEW_MET_BONUSPORC, :NEW_MET_BONUSVALOR, gen_id(GEN_META' +
        'S,1), :NEW_MET_COMISSAO, '
      
        '  :NEW_MET_COMISSAOTIPO, :NEW_MET_DTATUALIZACAO, :NEW_MET_DTBAIX' +
        'A, '
      '  :NEW_MET_DTCADASTRO, :NEW_MET_DTFIM, :NEW_MET_DTINICIO, '
      
        '  :NEW_MET_HRATUALIZACAO, :NEW_MET_HRCADASTRO, :NEW_MET_METAATIN' +
        'GIDA, '
      '  :NEW_MET_METAVALOR, :NEW_MET_SALARIOBASE, :NEW_MET_STATUS, '
      
        '  :NEW_MET_TOTALCOMISSAO, :NEW_MET_TOTALLIQUIDADO, :NEW_MET_TOTA' +
        'LVENDAS, '
      
        '  :NEW_MET_TOTALVENDASCOMISSIONADAS, :NEW_MET_USUARIO, :NEW_MET_' +
        'VENDEDOR)'
      
        'RETURNING MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSA' +
        'O, MET_COMISSAOTIPO, MET_DTATUALIZACAO, MET_DTBAIXA, MET_DTCADAS' +
        'TRO, MET_DTFIM, MET_DTINICIO, MET_HRATUALIZACAO, MET_HRCADASTRO,' +
        ' MET_METAATINGIDA, MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, M' +
        'ET_TOTALCOMISSAO, MET_TOTALLIQUIDADO, MET_TOTALVENDAS, MET_TOTAL' +
        'VENDASCOMISSIONADAS, MET_USUARIO, MET_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE METAS'
      
        'SET MET_BONUSPORC = :NEW_MET_BONUSPORC, MET_BONUSVALOR = :NEW_ME' +
        'T_BONUSVALOR, '
      
        '  MET_CODIGO = :NEW_MET_CODIGO, MET_COMISSAO = :NEW_MET_COMISSAO' +
        ', '
      
        '  MET_COMISSAOTIPO = :NEW_MET_COMISSAOTIPO, MET_DTATUALIZACAO = ' +
        ':NEW_MET_DTATUALIZACAO, '
      
        '  MET_DTBAIXA = :NEW_MET_DTBAIXA, MET_DTCADASTRO = :NEW_MET_DTCA' +
        'DASTRO, '
      '  MET_DTFIM = :NEW_MET_DTFIM, MET_DTINICIO = :NEW_MET_DTINICIO, '
      
        '  MET_HRATUALIZACAO = :NEW_MET_HRATUALIZACAO, MET_HRCADASTRO = :' +
        'NEW_MET_HRCADASTRO, '
      
        '  MET_METAATINGIDA = :NEW_MET_METAATINGIDA, MET_METAVALOR = :NEW' +
        '_MET_METAVALOR, '
      
        '  MET_SALARIOBASE = :NEW_MET_SALARIOBASE, MET_STATUS = :NEW_MET_' +
        'STATUS, '
      
        '  MET_TOTALCOMISSAO = :NEW_MET_TOTALCOMISSAO, MET_TOTALLIQUIDADO' +
        ' = :NEW_MET_TOTALLIQUIDADO, '
      
        '  MET_TOTALVENDAS = :NEW_MET_TOTALVENDAS, MET_TOTALVENDASCOMISSI' +
        'ONADAS = :NEW_MET_TOTALVENDASCOMISSIONADAS, '
      
        '  MET_USUARIO = :NEW_MET_USUARIO, MET_VENDEDOR = :NEW_MET_VENDED' +
        'OR'
      'WHERE MET_CODIGO = :OLD_MET_CODIGO'
      
        'RETURNING MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSA' +
        'O, MET_COMISSAOTIPO, MET_DTATUALIZACAO, MET_DTBAIXA, MET_DTCADAS' +
        'TRO, MET_DTFIM, MET_DTINICIO, MET_HRATUALIZACAO, MET_HRCADASTRO,' +
        ' MET_METAATINGIDA, MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, M' +
        'ET_TOTALCOMISSAO, MET_TOTALLIQUIDADO, MET_TOTALVENDAS, MET_TOTAL' +
        'VENDASCOMISSIONADAS, MET_USUARIO, MET_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM METAS'
      'WHERE MET_CODIGO = :OLD_MET_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSAO, ' +
        'MET_COMISSAOTIPO, '
      '  MET_DTATUALIZACAO, MET_DTBAIXA, MET_DTCADASTRO, MET_DTFIM, '
      
        '  MET_DTINICIO, MET_HRATUALIZACAO, MET_HRCADASTRO, MET_METAATING' +
        'IDA, '
      
        '  MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, MET_TOTALCOMISSAO,' +
        ' '
      
        '  MET_TOTALLIQUIDADO, MET_TOTALVENDAS, MET_TOTALVENDASCOMISSIONA' +
        'DAS, '
      '  MET_USUARIO, MET_VENDEDOR'
      'FROM METAS'
      'WHERE MET_CODIGO = :OLD_MET_CODIGO')
    Left = 1088
    Top = 128
  end
  object TBMetasConfig: TFDQuery
    Connection = FDConnection1
    Transaction = TRMetasConfig
    UpdateObject = UPMetasConfig
    SQL.Strings = (
      'select * from METASCONFIG'
      'order by MTG_CODIGO'
      '')
    Left = 1120
    Top = 80
    object TBMetasConfigMTG_CODIGO: TIntegerField
      FieldName = 'MTG_CODIGO'
      Origin = 'MTG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBMetasConfigMTG_FIM: TFMTBCDField
      FieldName = 'MTG_FIM'
      Origin = 'MTG_FIM'
      Precision = 18
    end
    object TBMetasConfigMTG_INICIO: TFMTBCDField
      FieldName = 'MTG_INICIO'
      Origin = 'MTG_INICIO'
      Precision = 18
    end
    object TBMetasConfigMTG_PORCENTAGEM: TFMTBCDField
      FieldName = 'MTG_PORCENTAGEM'
      Origin = 'MTG_PORCENTAGEM'
      Precision = 18
    end
  end
  object TRMetasConfig: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 1120
    Top = 176
  end
  object UPMetasConfig: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO METASCONFIG'
      '(MTG_CODIGO, MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM)'
      
        'VALUES (gen_id(GEN_METASCONFIG,1), :NEW_MTG_FIM, :NEW_MTG_INICIO' +
        ', :NEW_MTG_PORCENTAGEM)'
      'RETURNING MTG_CODIGO, MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM')
    ModifySQL.Strings = (
      'UPDATE METASCONFIG'
      
        'SET MTG_CODIGO = :NEW_MTG_CODIGO, MTG_FIM = :NEW_MTG_FIM, MTG_IN' +
        'ICIO = :NEW_MTG_INICIO, '
      '  MTG_PORCENTAGEM = :NEW_MTG_PORCENTAGEM'
      'WHERE MTG_CODIGO = :OLD_MTG_CODIGO'
      'RETURNING MTG_CODIGO, MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM')
    DeleteSQL.Strings = (
      'DELETE FROM METASCONFIG'
      'WHERE MTG_CODIGO = :OLD_MTG_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT MTG_CODIGO, MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM'
      'FROM METASCONFIG'
      'WHERE MTG_CODIGO = :OLD_MTG_CODIGO')
    Left = 1120
    Top = 128
  end
  object TBMotivos: TFDQuery
    Connection = FDConnection1
    Transaction = TRMotivos
    UpdateObject = UPMotivos
    SQL.Strings = (
      'select * from MOTIVOS '
      'where MOT_CODIGO=:codigo '
      'order by MOT_CODIGO'
      '')
    Left = 1152
    Top = 80
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
  object TRMotivos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 1152
    Top = 176
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
    Left = 1152
    Top = 128
  end
  object TBNaturezas: TFDQuery
    Connection = FDConnection1
    Transaction = TRNaturezas
    UpdateObject = UPNaturezas
    SQL.Strings = (
      'select * from NATUREZAS '
      'where NAT_CODIGO=:codigo '
      'order by NAT_CODIGO'
      '')
    Left = 32
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
  object TRNaturezas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 32
    Top = 392
  end
  object UPNaturezas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO NATUREZAS'
      '(NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, '
      '  NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_DEVOLUCAO, '
      '  NAT_DTATUALIZACAO, NAT_DTCADASTRO, NAT_ENTRADASAIDA, '
      '  NAT_HRATUALIZACAO, NAT_HRCADASTRO, NAT_INFORMADIFAL, '
      '  NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO, '
      '  NAT_OBSERVACOES, NAT_USUARIO)'
      
        'VALUES (:NEW_NAT_CALCULACOMISSAO, :NEW_NAT_CALCULACREDITOSN, :NE' +
        'W_NAT_CODIGO, '
      
        '  :NEW_NAT_DESCRICAO, :NEW_NAT_DESTACARIMPOSTOS, :NEW_NAT_DEVOLU' +
        'CAO, '
      
        '  :NEW_NAT_DTATUALIZACAO, :NEW_NAT_DTCADASTRO, :NEW_NAT_ENTRADAS' +
        'AIDA, '
      
        '  :NEW_NAT_HRATUALIZACAO, :NEW_NAT_HRCADASTRO, :NEW_NAT_INFORMAD' +
        'IFAL, '
      '  :NEW_NAT_MOVIMENTAESTOQUE, :NEW_NAT_MOVIMENTAFINANCEIRO, '
      '  :NEW_NAT_OBSERVACOES, :NEW_NAT_USUARIO)'
      
        'RETURNING NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO,' +
        ' NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_DEVOLUCAO, NAT_DTATUAL' +
        'IZACAO, NAT_DTCADASTRO, NAT_ENTRADASAIDA, NAT_HRATUALIZACAO, NAT' +
        '_HRCADASTRO, NAT_INFORMADIFAL, NAT_MOVIMENTAESTOQUE, NAT_MOVIMEN' +
        'TAFINANCEIRO, NAT_OBSERVACOES, NAT_USUARIO')
    ModifySQL.Strings = (
      'UPDATE NATUREZAS'
      
        'SET NAT_CALCULACOMISSAO = :NEW_NAT_CALCULACOMISSAO, NAT_CALCULAC' +
        'REDITOSN = :NEW_NAT_CALCULACREDITOSN, '
      
        '  NAT_CODIGO = :NEW_NAT_CODIGO, NAT_DESCRICAO = :NEW_NAT_DESCRIC' +
        'AO, '
      
        '  NAT_DESTACARIMPOSTOS = :NEW_NAT_DESTACARIMPOSTOS, NAT_DEVOLUCA' +
        'O = :NEW_NAT_DEVOLUCAO, '
      
        '  NAT_DTATUALIZACAO = :NEW_NAT_DTATUALIZACAO, NAT_DTCADASTRO = :' +
        'NEW_NAT_DTCADASTRO, '
      
        '  NAT_ENTRADASAIDA = :NEW_NAT_ENTRADASAIDA, NAT_HRATUALIZACAO = ' +
        ':NEW_NAT_HRATUALIZACAO, '
      
        '  NAT_HRCADASTRO = :NEW_NAT_HRCADASTRO, NAT_INFORMADIFAL = :NEW_' +
        'NAT_INFORMADIFAL, '
      
        '  NAT_MOVIMENTAESTOQUE = :NEW_NAT_MOVIMENTAESTOQUE, NAT_MOVIMENT' +
        'AFINANCEIRO = :NEW_NAT_MOVIMENTAFINANCEIRO, '
      
        '  NAT_OBSERVACOES = :NEW_NAT_OBSERVACOES, NAT_USUARIO = :NEW_NAT' +
        '_USUARIO'
      'WHERE NAT_CODIGO = :OLD_NAT_CODIGO'
      
        'RETURNING NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO,' +
        ' NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_DEVOLUCAO, NAT_DTATUAL' +
        'IZACAO, NAT_DTCADASTRO, NAT_ENTRADASAIDA, NAT_HRATUALIZACAO, NAT' +
        '_HRCADASTRO, NAT_INFORMADIFAL, NAT_MOVIMENTAESTOQUE, NAT_MOVIMEN' +
        'TAFINANCEIRO, NAT_OBSERVACOES, NAT_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM NATUREZAS'
      'WHERE NAT_CODIGO = :OLD_NAT_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NA' +
        'T_DESCRICAO, '
      '  NAT_DESTACARIMPOSTOS, NAT_DEVOLUCAO, NAT_DTATUALIZACAO, '
      
        '  NAT_DTCADASTRO, NAT_ENTRADASAIDA, NAT_HRATUALIZACAO, NAT_HRCAD' +
        'ASTRO, '
      
        '  NAT_INFORMADIFAL, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIR' +
        'O, '
      '  NAT_OBSERVACOES, NAT_USUARIO'
      'FROM NATUREZAS'
      'WHERE NAT_CODIGO = :OLD_NAT_CODIGO')
    Left = 32
    Top = 344
  end
  object TBNfe: TFDQuery
    Connection = FDConnection1
    Transaction = TRNfe
    UpdateObject = UPNfe
    SQL.Strings = (
      'select'
      'NFE_ALIQICMSCREDSN,'
      'NFE_BAIRRO,'
      'NFE_BAIXADATA,'
      'NFE_BAIXAPOR,'
      'NFE_BASECOFINS,'
      'NFE_BASECOFINSST,'
      'NFE_BASEIBSCBS,'
      'NFE_BASEICMS,'
      'NFE_BASEICMSST,'
      'NFE_BASEII,'
      'NFE_BASEIPI,'
      'NFE_BASEIS,'
      'NFE_BASEISS,'
      'NFE_BASEPIS,'
      'NFE_BASEPISST,'
      'NFE_CBSCREDPRES,'
      'NFE_CBSCREDPRESSUS,'
      'NFE_CBSDEVOLUCAO,'
      'NFE_CBSDIFERIMENTO,'
      'NFE_CBSMONO,'
      'NFE_CBSMONORETENCAO,'
      'NFE_CBSMONORETIDO,'
      'NFE_CBSVALOR,'
      'NFE_CEP,'
      'NFE_CFOP,'
      'NFE_CFOPDESC,'
      'NFE_CHAVEACESSO,'
      'NFE_CIDADE,'
      'NFE_CIDADECODIGO,'
      'NFE_CLIENTE,'
      'NFE_CNPJ,'
      'NFE_CODIGO,'
      'NFE_CODIGONFE,'
      'NFE_CODIGONUMERICO,'
      'NFE_COMISSAO,'
      'NFE_COMISSAOPOR,'
      'NFE_COMPLEMENTO,'
      'NFE_CONDICAO,'
      'NFE_CONDICAOMEMO,'
      'NFE_CONSULTADA,'
      'NFE_CONTATO,'
      'NFE_CPF,'
      'NFE_CUSTOTOTAL,'
      'NFE_DESCPORC,'
      'NFE_DESCPORCCLIENTE,'
      'NFE_DESCPORCCONDICAO,'
      'NFE_DESCVALOR,'
      'NFE_DESTACARIMPOSTOS,'
      'NFE_DIAPREFERENCIAL,'
      'NFE_DPEC,'
      'NFE_DPECDH,'
      'NFE_DTATUALIZACAO,'
      'NFE_DTCADASTRO,'
      'NFE_DTEMISSAO,'
      'NFE_DTPRESTSERVICO,'
      'NFE_DTSAIDA,'
      'NFE_ENDERECO,'
      'NFE_ENTRADASAIDA,'
      'NFE_ENVIADA,'
      'NFE_ESPECIE,'
      'NFE_ESTADO,'
      'NFE_ESTADOCODIGO,'
      'NFE_EXLOCAL,'
      'NFE_EXPEDIDOPOR,'
      'NFE_EXUFSAIDA,'
      'NFE_FINALIDADE,'
      'NFE_FONE1,'
      'NFE_FORMAPAGTO,'
      'NFE_FRETE,'
      'NFE_GOVERNAMENTAL,'
      'NFE_GOVERNAMENTALALIQRED,'
      'NFE_GOVERNAMENTALOP,'
      'NFE_HRATUALIZACAO,'
      'NFE_HRCADASTRO,'
      'NFE_IBSCREDPRES,'
      'NFE_IBSCREDPRESSUS,'
      'NFE_IBSMONO,'
      'NFE_IBSMONORETENCAO,'
      'NFE_IBSMONORETIDO,'
      'NFE_IBSMUNDEVOLUCAO,'
      'NFE_IBSMUNDIFERIMENTO,'
      'NFE_IBSMUNVALOR,'
      'NFE_IBSUFDEVOLUCAO,'
      'NFE_IBSUFDIFERIMENTO,'
      'NFE_IBSUFVALOR,'
      'NFE_IBSVALOR,'
      'NFE_IDESTRANGEIRO,'
      'NFE_IE,'
      'NFE_INFOADICFISCO,'
      'NFE_INFOCOMPLEMENTAR,'
      'NFE_INTERMEDIADOR,'
      'NFE_INTERMEDIADORCAD,'
      'NFE_INTERMEDIADORCNPJ,'
      'NFE_LACRES,'
      'NFE_LOTE,'
      'NFE_LUCROPORC,'
      'NFE_LUCROVALOR,'
      'NFE_MANUAL,'
      'NFE_MARCA,'
      'NFE_MODELO,'
      'NFE_MOTIVOCANCELAMENTO,'
      'NFE_MOTIVOINUTILIZACAO,'
      'NFE_MOVIMENTAESTOQUE,'
      'NFE_MOVIMENTAFINANCEIRO,'
      'NFE_NOME,'
      'NFE_NOTACREDITO,'
      'NFE_NOTADEBITO,'
      'NFE_NUMERO,'
      'NFE_OBSERVACOES,'
      'NFE_PAIS,'
      'NFE_PAISCODIGO,'
      'NFE_PEDIDOCLIENTE,'
      'NFE_PESOBRUTO,'
      'NFE_PESOLIQ,'
      'NFE_PROTOCOLO,'
      'NFE_PROTOCOLOCANC,'
      'NFE_PROTOCOLOCANCDH,'
      'NFE_PROTOCOLODH,'
      'NFE_PROTOCOLOINUT,'
      'NFE_PROTOCOLOINUTDH,'
      'NFE_REBOQUEPLACA,'
      'NFE_REBOQUEPLACAUF,'
      'NFE_REBOQUERNTC,'
      'NFE_RECIBO,'
      'NFE_RECIBODH,'
      'NFE_RG,'
      'NFE_SEQUENCIAITEM,'
      'NFE_SERIE,'
      'NFE_STATUS,'
      'NFE_SUFRAMA,'
      'NFE_TABELAPRECO,'
      'NFE_TIPOATENDIMENTO,'
      'NFE_TIPOCONSUMIDOR,'
      'NFE_TIPOEMISSAO,'
      'NFE_TIPOOPERACAO,'
      'NFE_TOTALADUANA,'
      'NFE_TOTALBRUTO,'
      'NFE_TOTALCCE,'
      'NFE_TOTALCOFINS,'
      'NFE_TOTALCOFINSST,'
      'NFE_TOTALCOMISSAO,'
      'NFE_TOTALFCP,'
      'NFE_TOTALFCPST,'
      'NFE_TOTALICMS,'
      'NFE_TOTALICMSCREDSN,'
      'NFE_TOTALICMSST,'
      'NFE_TOTALICMSUFDEST,'
      'NFE_TOTALICMSUFREMET,'
      'NFE_TOTALII,'
      'NFE_TOTALIOF,'
      'NFE_TOTALIPI,'
      'NFE_TOTALIS,'
      'NFE_TOTALISS,'
      'NFE_TOTALISSDEDUCAO,'
      'NFE_TOTALISSDESCCOND,'
      'NFE_TOTALISSDESCINCOND,'
      'NFE_TOTALISSOUTROS,'
      'NFE_TOTALISSRETENCAO,'
      'NFE_TOTALITENS,'
      'NFE_TOTALPIS,'
      'NFE_TOTALPISST,'
      'NFE_TOTALPRODUTOS,'
      'NFE_TOTALSERVICOS,'
      'NFE_TOTALTRIBUTOS,'
      'NFE_TOTALTRIBUTOSEST,'
      'NFE_TOTALTRIBUTOSFED,'
      'NFE_TOTALTRIBUTOSIMP,'
      'NFE_TOTALTRIBUTOSMUN,'
      'NFE_TRANSPCIDADE,'
      'NFE_TRANSPCNPJ,'
      'NFE_TRANSPCPF,'
      'NFE_TRANSPEMAIL,'
      'NFE_TRANSPENDERECO,'
      'NFE_TRANSPESTADO,'
      'NFE_TRANSPFONE,'
      'NFE_TRANSPIE,'
      'NFE_TRANSPNOME,'
      'NFE_TRANSPORTADORA,'
      'NFE_USUARIO,'
      'NFE_VALORDESPACES,'
      'NFE_VALORFRETE,'
      'NFE_VALORSEGURO,'
      'NFE_VALORTOTAL,'
      'NFE_VALORTOTALRTC,'
      'NFE_VEICULOPLACA,'
      'NFE_VEICULOPLACAUF,'
      'NFE_VEICULORNTC,'
      'NFE_VENDA,'
      'NFE_VENDEDOR,'
      'NFE_VOLUMES,'
      'NFE_VOLUMESNUM,'
      'CLI_FANTASIA,'
      'CPG_DESCRICAO,'
      'CPG_MEIOPAGAMENTO,'
      'CPG_TIPOINTEGRACAO,'
      'CPG_TIPOPAGAMENTO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'vendedores.VEN_NOME as VEN_NOME,'
      'expedidores.VEN_NOME as VEN_NOME1'
      'from NFE '
      'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES as vendedores on NFE_VENDEDOR=VEN_CODIGO'
      'left join CONDICOES on NFE_CONDICAO=CPG_CODIGO'
      
        'left join VENDEDORES as expedidores on NFE_EXPEDIDOPOR=expedidor' +
        'es.VEN_CODIGO'
      'left join NATUREZAS on NFE_CFOP=NAT_CODIGO'
      'where NFE_CODIGO=:codigo'
      '')
    Left = 64
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBNfeNFE_ALIQICMSCREDSN: TFMTBCDField
      FieldName = 'NFE_ALIQICMSCREDSN'
      Origin = 'NFE_ALIQICMSCREDSN'
      Precision = 18
    end
    object TBNfeNFE_BAIRRO: TStringField
      FieldName = 'NFE_BAIRRO'
      Origin = 'NFE_BAIRRO'
      Size = 50
    end
    object TBNfeNFE_BAIXADATA: TDateField
      FieldName = 'NFE_BAIXADATA'
      Origin = 'NFE_BAIXADATA'
    end
    object TBNfeNFE_BAIXAPOR: TStringField
      FieldName = 'NFE_BAIXAPOR'
      Origin = 'NFE_BAIXAPOR'
    end
    object TBNfeNFE_BASECOFINS: TFMTBCDField
      FieldName = 'NFE_BASECOFINS'
      Origin = 'NFE_BASECOFINS'
      Precision = 18
    end
    object TBNfeNFE_BASECOFINSST: TFMTBCDField
      FieldName = 'NFE_BASECOFINSST'
      Origin = 'NFE_BASECOFINSST'
      Precision = 18
    end
    object TBNfeNFE_BASEIBSCBS: TFMTBCDField
      FieldName = 'NFE_BASEIBSCBS'
      Origin = 'NFE_BASEIBSCBS'
      Precision = 18
    end
    object TBNfeNFE_BASEICMS: TFMTBCDField
      FieldName = 'NFE_BASEICMS'
      Origin = 'NFE_BASEICMS'
      Precision = 18
    end
    object TBNfeNFE_BASEICMSST: TFMTBCDField
      FieldName = 'NFE_BASEICMSST'
      Origin = 'NFE_BASEICMSST'
      Precision = 18
    end
    object TBNfeNFE_BASEII: TFMTBCDField
      FieldName = 'NFE_BASEII'
      Origin = 'NFE_BASEII'
      Precision = 18
    end
    object TBNfeNFE_BASEIPI: TFMTBCDField
      FieldName = 'NFE_BASEIPI'
      Origin = 'NFE_BASEIPI'
      Precision = 18
    end
    object TBNfeNFE_BASEIS: TFMTBCDField
      FieldName = 'NFE_BASEIS'
      Origin = 'NFE_BASEIS'
      Precision = 18
    end
    object TBNfeNFE_BASEISS: TFMTBCDField
      FieldName = 'NFE_BASEISS'
      Origin = 'NFE_BASEISS'
      Precision = 18
    end
    object TBNfeNFE_BASEPIS: TFMTBCDField
      FieldName = 'NFE_BASEPIS'
      Origin = 'NFE_BASEPIS'
      Precision = 18
    end
    object TBNfeNFE_BASEPISST: TFMTBCDField
      FieldName = 'NFE_BASEPISST'
      Origin = 'NFE_BASEPISST'
      Precision = 18
    end
    object TBNfeNFE_CBSCREDPRES: TFMTBCDField
      FieldName = 'NFE_CBSCREDPRES'
      Origin = 'NFE_CBSCREDPRES'
      Precision = 18
    end
    object TBNfeNFE_CBSCREDPRESSUS: TFMTBCDField
      FieldName = 'NFE_CBSCREDPRESSUS'
      Origin = 'NFE_CBSCREDPRESSUS'
      Precision = 18
    end
    object TBNfeNFE_CBSDEVOLUCAO: TFMTBCDField
      FieldName = 'NFE_CBSDEVOLUCAO'
      Origin = 'NFE_CBSDEVOLUCAO'
      Precision = 18
    end
    object TBNfeNFE_CBSDIFERIMENTO: TFMTBCDField
      FieldName = 'NFE_CBSDIFERIMENTO'
      Origin = 'NFE_CBSDIFERIMENTO'
      Precision = 18
    end
    object TBNfeNFE_CBSMONO: TFMTBCDField
      FieldName = 'NFE_CBSMONO'
      Origin = 'NFE_CBSMONO'
      Precision = 18
    end
    object TBNfeNFE_CBSMONORETENCAO: TFMTBCDField
      FieldName = 'NFE_CBSMONORETENCAO'
      Origin = 'NFE_CBSMONORETENCAO'
      Precision = 18
    end
    object TBNfeNFE_CBSMONORETIDO: TFMTBCDField
      FieldName = 'NFE_CBSMONORETIDO'
      Origin = 'NFE_CBSMONORETIDO'
      Precision = 18
    end
    object TBNfeNFE_CBSVALOR: TFMTBCDField
      FieldName = 'NFE_CBSVALOR'
      Origin = 'NFE_CBSVALOR'
      Precision = 18
    end
    object TBNfeNFE_CEP: TStringField
      FieldName = 'NFE_CEP'
      Origin = 'NFE_CEP'
      Size = 10
    end
    object TBNfeNFE_CFOP: TIntegerField
      FieldName = 'NFE_CFOP'
      Origin = 'NFE_CFOP'
    end
    object TBNfeNFE_CFOPDESC: TStringField
      FieldName = 'NFE_CFOPDESC'
      Origin = 'NFE_CFOPDESC'
      Size = 120
    end
    object TBNfeNFE_CHAVEACESSO: TStringField
      FieldName = 'NFE_CHAVEACESSO'
      Origin = 'NFE_CHAVEACESSO'
      Size = 50
    end
    object TBNfeNFE_CIDADE: TStringField
      FieldName = 'NFE_CIDADE'
      Origin = 'NFE_CIDADE'
      Size = 50
    end
    object TBNfeNFE_CIDADECODIGO: TIntegerField
      FieldName = 'NFE_CIDADECODIGO'
      Origin = 'NFE_CIDADECODIGO'
    end
    object TBNfeNFE_CLIENTE: TIntegerField
      FieldName = 'NFE_CLIENTE'
      Origin = 'NFE_CLIENTE'
      Required = True
    end
    object TBNfeNFE_CNPJ: TStringField
      FieldName = 'NFE_CNPJ'
      Origin = 'NFE_CNPJ'
    end
    object TBNfeNFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
      Origin = 'NFE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBNfeNFE_CODIGONFE: TIntegerField
      FieldName = 'NFE_CODIGONFE'
      Origin = 'NFE_CODIGONFE'
    end
    object TBNfeNFE_CODIGONUMERICO: TStringField
      FieldName = 'NFE_CODIGONUMERICO'
      Origin = 'NFE_CODIGONUMERICO'
      Size = 10
    end
    object TBNfeNFE_COMISSAO: TFMTBCDField
      FieldName = 'NFE_COMISSAO'
      Origin = 'NFE_COMISSAO'
      Precision = 18
    end
    object TBNfeNFE_COMISSAOPOR: TStringField
      FieldName = 'NFE_COMISSAOPOR'
      Origin = 'NFE_COMISSAOPOR'
      Size = 1
    end
    object TBNfeNFE_COMPLEMENTO: TStringField
      FieldName = 'NFE_COMPLEMENTO'
      Origin = 'NFE_COMPLEMENTO'
      Size = 80
    end
    object TBNfeNFE_CONDICAO: TIntegerField
      FieldName = 'NFE_CONDICAO'
      Origin = 'NFE_CONDICAO'
      Required = True
    end
    object TBNfeNFE_CONDICAOMEMO: TMemoField
      FieldName = 'NFE_CONDICAOMEMO'
      Origin = 'NFE_CONDICAOMEMO'
      BlobType = ftMemo
    end
    object TBNfeNFE_CONSULTADA: TStringField
      FieldName = 'NFE_CONSULTADA'
      Origin = 'NFE_CONSULTADA'
      Size = 1
    end
    object TBNfeNFE_CONTATO: TStringField
      FieldName = 'NFE_CONTATO'
      Origin = 'NFE_CONTATO'
      Size = 80
    end
    object TBNfeNFE_CPF: TStringField
      FieldName = 'NFE_CPF'
      Origin = 'NFE_CPF'
    end
    object TBNfeNFE_CUSTOTOTAL: TFMTBCDField
      FieldName = 'NFE_CUSTOTOTAL'
      Origin = 'NFE_CUSTOTOTAL'
      Precision = 18
    end
    object TBNfeNFE_DESCPORC: TFMTBCDField
      FieldName = 'NFE_DESCPORC'
      Origin = 'NFE_DESCPORC'
      Precision = 18
    end
    object TBNfeNFE_DESCPORCCLIENTE: TFMTBCDField
      FieldName = 'NFE_DESCPORCCLIENTE'
      Origin = 'NFE_DESCPORCCLIENTE'
      Precision = 18
    end
    object TBNfeNFE_DESCPORCCONDICAO: TFMTBCDField
      FieldName = 'NFE_DESCPORCCONDICAO'
      Origin = 'NFE_DESCPORCCONDICAO'
      Precision = 18
    end
    object TBNfeNFE_DESCVALOR: TFMTBCDField
      FieldName = 'NFE_DESCVALOR'
      Origin = 'NFE_DESCVALOR'
      Precision = 18
    end
    object TBNfeNFE_DESTACARIMPOSTOS: TStringField
      FieldName = 'NFE_DESTACARIMPOSTOS'
      Origin = 'NFE_DESTACARIMPOSTOS'
      Size = 1
    end
    object TBNfeNFE_DIAPREFERENCIAL: TIntegerField
      FieldName = 'NFE_DIAPREFERENCIAL'
      Origin = 'NFE_DIAPREFERENCIAL'
    end
    object TBNfeNFE_DPEC: TStringField
      FieldName = 'NFE_DPEC'
      Origin = 'NFE_DPEC'
      Size = 40
    end
    object TBNfeNFE_DPECDH: TStringField
      FieldName = 'NFE_DPECDH'
      Origin = 'NFE_DPECDH'
      Size = 30
    end
    object TBNfeNFE_DTATUALIZACAO: TDateField
      FieldName = 'NFE_DTATUALIZACAO'
      Origin = 'NFE_DTATUALIZACAO'
    end
    object TBNfeNFE_DTCADASTRO: TDateField
      FieldName = 'NFE_DTCADASTRO'
      Origin = 'NFE_DTCADASTRO'
    end
    object TBNfeNFE_DTEMISSAO: TDateField
      FieldName = 'NFE_DTEMISSAO'
      Origin = 'NFE_DTEMISSAO'
    end
    object TBNfeNFE_DTPRESTSERVICO: TDateField
      FieldName = 'NFE_DTPRESTSERVICO'
      Origin = 'NFE_DTPRESTSERVICO'
    end
    object TBNfeNFE_DTSAIDA: TDateField
      FieldName = 'NFE_DTSAIDA'
      Origin = 'NFE_DTSAIDA'
    end
    object TBNfeNFE_ENDERECO: TStringField
      FieldName = 'NFE_ENDERECO'
      Origin = 'NFE_ENDERECO'
      Size = 100
    end
    object TBNfeNFE_ENTRADASAIDA: TStringField
      FieldName = 'NFE_ENTRADASAIDA'
      Origin = 'NFE_ENTRADASAIDA'
      Size = 1
    end
    object TBNfeNFE_ENVIADA: TStringField
      FieldName = 'NFE_ENVIADA'
      Origin = 'NFE_ENVIADA'
      Size = 1
    end
    object TBNfeNFE_ESPECIE: TStringField
      FieldName = 'NFE_ESPECIE'
      Origin = 'NFE_ESPECIE'
      Size = 50
    end
    object TBNfeNFE_ESTADO: TStringField
      FieldName = 'NFE_ESTADO'
      Origin = 'NFE_ESTADO'
      Size = 2
    end
    object TBNfeNFE_ESTADOCODIGO: TIntegerField
      FieldName = 'NFE_ESTADOCODIGO'
      Origin = 'NFE_ESTADOCODIGO'
    end
    object TBNfeNFE_EXLOCAL: TStringField
      FieldName = 'NFE_EXLOCAL'
      Origin = 'NFE_EXLOCAL'
      Size = 80
    end
    object TBNfeNFE_EXPEDIDOPOR: TIntegerField
      FieldName = 'NFE_EXPEDIDOPOR'
      Origin = 'NFE_EXPEDIDOPOR'
      Required = True
    end
    object TBNfeNFE_EXUFSAIDA: TStringField
      FieldName = 'NFE_EXUFSAIDA'
      Origin = 'NFE_EXUFSAIDA'
      Size = 2
    end
    object TBNfeNFE_FINALIDADE: TStringField
      FieldName = 'NFE_FINALIDADE'
      Origin = 'NFE_FINALIDADE'
      Size = 30
    end
    object TBNfeNFE_FONE1: TStringField
      FieldName = 'NFE_FONE1'
      Origin = 'NFE_FONE1'
    end
    object TBNfeNFE_FORMAPAGTO: TStringField
      FieldName = 'NFE_FORMAPAGTO'
      Origin = 'NFE_FORMAPAGTO'
      Size = 15
    end
    object TBNfeNFE_FRETE: TStringField
      FieldName = 'NFE_FRETE'
      Origin = 'NFE_FRETE'
      Size = 50
    end
    object TBNfeNFE_GOVERNAMENTAL: TStringField
      FieldName = 'NFE_GOVERNAMENTAL'
      Origin = 'NFE_GOVERNAMENTAL'
    end
    object TBNfeNFE_GOVERNAMENTALALIQRED: TFMTBCDField
      FieldName = 'NFE_GOVERNAMENTALALIQRED'
      Origin = 'NFE_GOVERNAMENTALALIQRED'
      Precision = 18
    end
    object TBNfeNFE_GOVERNAMENTALOP: TStringField
      FieldName = 'NFE_GOVERNAMENTALOP'
      Origin = 'NFE_GOVERNAMENTALOP'
      Size = 30
    end
    object TBNfeNFE_HRATUALIZACAO: TTimeField
      FieldName = 'NFE_HRATUALIZACAO'
      Origin = 'NFE_HRATUALIZACAO'
    end
    object TBNfeNFE_HRCADASTRO: TTimeField
      FieldName = 'NFE_HRCADASTRO'
      Origin = 'NFE_HRCADASTRO'
    end
    object TBNfeNFE_IBSCREDPRES: TFMTBCDField
      FieldName = 'NFE_IBSCREDPRES'
      Origin = 'NFE_IBSCREDPRES'
      Precision = 18
    end
    object TBNfeNFE_IBSCREDPRESSUS: TFMTBCDField
      FieldName = 'NFE_IBSCREDPRESSUS'
      Origin = 'NFE_IBSCREDPRESSUS'
      Precision = 18
    end
    object TBNfeNFE_IBSMONO: TFMTBCDField
      FieldName = 'NFE_IBSMONO'
      Origin = 'NFE_IBSMONO'
      Precision = 18
    end
    object TBNfeNFE_IBSMONORETENCAO: TFMTBCDField
      FieldName = 'NFE_IBSMONORETENCAO'
      Origin = 'NFE_IBSMONORETENCAO'
      Precision = 18
    end
    object TBNfeNFE_IBSMONORETIDO: TFMTBCDField
      FieldName = 'NFE_IBSMONORETIDO'
      Origin = 'NFE_IBSMONORETIDO'
      Precision = 18
    end
    object TBNfeNFE_IBSMUNDEVOLUCAO: TFMTBCDField
      FieldName = 'NFE_IBSMUNDEVOLUCAO'
      Origin = 'NFE_IBSMUNDEVOLUCAO'
      Precision = 18
    end
    object TBNfeNFE_IBSMUNDIFERIMENTO: TFMTBCDField
      FieldName = 'NFE_IBSMUNDIFERIMENTO'
      Origin = 'NFE_IBSMUNDIFERIMENTO'
      Precision = 18
    end
    object TBNfeNFE_IBSMUNVALOR: TFMTBCDField
      FieldName = 'NFE_IBSMUNVALOR'
      Origin = 'NFE_IBSMUNVALOR'
      Precision = 18
    end
    object TBNfeNFE_IBSUFDEVOLUCAO: TFMTBCDField
      FieldName = 'NFE_IBSUFDEVOLUCAO'
      Origin = 'NFE_IBSUFDEVOLUCAO'
      Precision = 18
    end
    object TBNfeNFE_IBSUFDIFERIMENTO: TFMTBCDField
      FieldName = 'NFE_IBSUFDIFERIMENTO'
      Origin = 'NFE_IBSUFDIFERIMENTO'
      Precision = 18
    end
    object TBNfeNFE_IBSUFVALOR: TFMTBCDField
      FieldName = 'NFE_IBSUFVALOR'
      Origin = 'NFE_IBSUFVALOR'
      Precision = 18
    end
    object TBNfeNFE_IBSVALOR: TFMTBCDField
      FieldName = 'NFE_IBSVALOR'
      Origin = 'NFE_IBSVALOR'
      Precision = 18
    end
    object TBNfeNFE_IDESTRANGEIRO: TStringField
      FieldName = 'NFE_IDESTRANGEIRO'
      Origin = 'NFE_IDESTRANGEIRO'
    end
    object TBNfeNFE_IE: TStringField
      FieldName = 'NFE_IE'
      Origin = 'NFE_IE'
    end
    object TBNfeNFE_INFOADICFISCO: TMemoField
      FieldName = 'NFE_INFOADICFISCO'
      Origin = 'NFE_INFOADICFISCO'
      BlobType = ftMemo
    end
    object TBNfeNFE_INFOCOMPLEMENTAR: TMemoField
      FieldName = 'NFE_INFOCOMPLEMENTAR'
      Origin = 'NFE_INFOCOMPLEMENTAR'
      BlobType = ftMemo
    end
    object TBNfeNFE_INTERMEDIADOR: TStringField
      FieldName = 'NFE_INTERMEDIADOR'
      Origin = 'NFE_INTERMEDIADOR'
      Size = 50
    end
    object TBNfeNFE_INTERMEDIADORCAD: TStringField
      FieldName = 'NFE_INTERMEDIADORCAD'
      Origin = 'NFE_INTERMEDIADORCAD'
      Size = 50
    end
    object TBNfeNFE_INTERMEDIADORCNPJ: TStringField
      FieldName = 'NFE_INTERMEDIADORCNPJ'
      Origin = 'NFE_INTERMEDIADORCNPJ'
    end
    object TBNfeNFE_LACRES: TStringField
      FieldName = 'NFE_LACRES'
      Origin = 'NFE_LACRES'
      Size = 50
    end
    object TBNfeNFE_LOTE: TStringField
      FieldName = 'NFE_LOTE'
      Origin = 'NFE_LOTE'
    end
    object TBNfeNFE_LUCROPORC: TFMTBCDField
      FieldName = 'NFE_LUCROPORC'
      Origin = 'NFE_LUCROPORC'
      Precision = 18
    end
    object TBNfeNFE_LUCROVALOR: TFMTBCDField
      FieldName = 'NFE_LUCROVALOR'
      Origin = 'NFE_LUCROVALOR'
      Precision = 18
    end
    object TBNfeNFE_MANUAL: TStringField
      FieldName = 'NFE_MANUAL'
      Origin = 'NFE_MANUAL'
      Size = 1
    end
    object TBNfeNFE_MARCA: TStringField
      FieldName = 'NFE_MARCA'
      Origin = 'NFE_MARCA'
      Size = 50
    end
    object TBNfeNFE_MODELO: TIntegerField
      FieldName = 'NFE_MODELO'
      Origin = 'NFE_MODELO'
    end
    object TBNfeNFE_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'NFE_MOTIVOCANCELAMENTO'
      Origin = 'NFE_MOTIVOCANCELAMENTO'
      Size = 120
    end
    object TBNfeNFE_MOTIVOINUTILIZACAO: TStringField
      FieldName = 'NFE_MOTIVOINUTILIZACAO'
      Origin = 'NFE_MOTIVOINUTILIZACAO'
      Size = 120
    end
    object TBNfeNFE_MOVIMENTAESTOQUE: TStringField
      FieldName = 'NFE_MOVIMENTAESTOQUE'
      Origin = 'NFE_MOVIMENTAESTOQUE'
      Size = 1
    end
    object TBNfeNFE_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'NFE_MOVIMENTAFINANCEIRO'
      Origin = 'NFE_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object TBNfeNFE_NOME: TStringField
      FieldName = 'NFE_NOME'
      Origin = 'NFE_NOME'
      Size = 80
    end
    object TBNfeNFE_NOTACREDITO: TStringField
      FieldName = 'NFE_NOTACREDITO'
      Origin = 'NFE_NOTACREDITO'
      Size = 100
    end
    object TBNfeNFE_NOTADEBITO: TStringField
      FieldName = 'NFE_NOTADEBITO'
      Origin = 'NFE_NOTADEBITO'
      Size = 100
    end
    object TBNfeNFE_NUMERO: TStringField
      FieldName = 'NFE_NUMERO'
      Origin = 'NFE_NUMERO'
      Size = 15
    end
    object TBNfeNFE_OBSERVACOES: TMemoField
      FieldName = 'NFE_OBSERVACOES'
      Origin = 'NFE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBNfeNFE_PAIS: TStringField
      FieldName = 'NFE_PAIS'
      Origin = 'NFE_PAIS'
      Size = 80
    end
    object TBNfeNFE_PAISCODIGO: TIntegerField
      FieldName = 'NFE_PAISCODIGO'
      Origin = 'NFE_PAISCODIGO'
    end
    object TBNfeNFE_PEDIDOCLIENTE: TStringField
      FieldName = 'NFE_PEDIDOCLIENTE'
      Origin = 'NFE_PEDIDOCLIENTE'
      Size = 15
    end
    object TBNfeNFE_PESOBRUTO: TFMTBCDField
      FieldName = 'NFE_PESOBRUTO'
      Origin = 'NFE_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object TBNfeNFE_PESOLIQ: TFMTBCDField
      FieldName = 'NFE_PESOLIQ'
      Origin = 'NFE_PESOLIQ'
      Precision = 18
      Size = 3
    end
    object TBNfeNFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
      Origin = 'NFE_PROTOCOLO'
      Size = 40
    end
    object TBNfeNFE_PROTOCOLOCANC: TStringField
      FieldName = 'NFE_PROTOCOLOCANC'
      Origin = 'NFE_PROTOCOLOCANC'
      Size = 40
    end
    object TBNfeNFE_PROTOCOLOCANCDH: TStringField
      FieldName = 'NFE_PROTOCOLOCANCDH'
      Origin = 'NFE_PROTOCOLOCANCDH'
      Size = 30
    end
    object TBNfeNFE_PROTOCOLODH: TStringField
      FieldName = 'NFE_PROTOCOLODH'
      Origin = 'NFE_PROTOCOLODH'
      Size = 30
    end
    object TBNfeNFE_PROTOCOLOINUT: TStringField
      FieldName = 'NFE_PROTOCOLOINUT'
      Origin = 'NFE_PROTOCOLOINUT'
      Size = 40
    end
    object TBNfeNFE_PROTOCOLOINUTDH: TStringField
      FieldName = 'NFE_PROTOCOLOINUTDH'
      Origin = 'NFE_PROTOCOLOINUTDH'
      Size = 30
    end
    object TBNfeNFE_REBOQUEPLACA: TStringField
      FieldName = 'NFE_REBOQUEPLACA'
      Origin = 'NFE_REBOQUEPLACA'
      Size = 10
    end
    object TBNfeNFE_REBOQUEPLACAUF: TStringField
      FieldName = 'NFE_REBOQUEPLACAUF'
      Origin = 'NFE_REBOQUEPLACAUF'
      Size = 2
    end
    object TBNfeNFE_REBOQUERNTC: TStringField
      FieldName = 'NFE_REBOQUERNTC'
      Origin = 'NFE_REBOQUERNTC'
    end
    object TBNfeNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Origin = 'NFE_RECIBO'
      Size = 40
    end
    object TBNfeNFE_RECIBODH: TStringField
      FieldName = 'NFE_RECIBODH'
      Origin = 'NFE_RECIBODH'
      Size = 30
    end
    object TBNfeNFE_RG: TStringField
      FieldName = 'NFE_RG'
      Origin = 'NFE_RG'
    end
    object TBNfeNFE_SEQUENCIAITEM: TIntegerField
      FieldName = 'NFE_SEQUENCIAITEM'
      Origin = 'NFE_SEQUENCIAITEM'
    end
    object TBNfeNFE_SERIE: TIntegerField
      FieldName = 'NFE_SERIE'
      Origin = 'NFE_SERIE'
    end
    object TBNfeNFE_STATUS: TStringField
      FieldName = 'NFE_STATUS'
      Origin = 'NFE_STATUS'
      Size = 1
    end
    object TBNfeNFE_SUFRAMA: TStringField
      FieldName = 'NFE_SUFRAMA'
      Origin = 'NFE_SUFRAMA'
    end
    object TBNfeNFE_TABELAPRECO: TStringField
      FieldName = 'NFE_TABELAPRECO'
      Origin = 'NFE_TABELAPRECO'
      Size = 1
    end
    object TBNfeNFE_TIPOATENDIMENTO: TStringField
      FieldName = 'NFE_TIPOATENDIMENTO'
      Origin = 'NFE_TIPOATENDIMENTO'
      Size = 50
    end
    object TBNfeNFE_TIPOCONSUMIDOR: TStringField
      FieldName = 'NFE_TIPOCONSUMIDOR'
      Origin = 'NFE_TIPOCONSUMIDOR'
      Size = 30
    end
    object TBNfeNFE_TIPOEMISSAO: TStringField
      FieldName = 'NFE_TIPOEMISSAO'
      Origin = 'NFE_TIPOEMISSAO'
      Size = 40
    end
    object TBNfeNFE_TIPOOPERACAO: TStringField
      FieldName = 'NFE_TIPOOPERACAO'
      Origin = 'NFE_TIPOOPERACAO'
      Size = 30
    end
    object TBNfeNFE_TOTALADUANA: TFMTBCDField
      FieldName = 'NFE_TOTALADUANA'
      Origin = 'NFE_TOTALADUANA'
      Precision = 18
    end
    object TBNfeNFE_TOTALBRUTO: TFMTBCDField
      FieldName = 'NFE_TOTALBRUTO'
      Origin = 'NFE_TOTALBRUTO'
      Precision = 18
    end
    object TBNfeNFE_TOTALCCE: TIntegerField
      FieldName = 'NFE_TOTALCCE'
      Origin = 'NFE_TOTALCCE'
    end
    object TBNfeNFE_TOTALCOFINS: TFMTBCDField
      FieldName = 'NFE_TOTALCOFINS'
      Origin = 'NFE_TOTALCOFINS'
      Precision = 18
    end
    object TBNfeNFE_TOTALCOFINSST: TFMTBCDField
      FieldName = 'NFE_TOTALCOFINSST'
      Origin = 'NFE_TOTALCOFINSST'
      Precision = 18
    end
    object TBNfeNFE_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'NFE_TOTALCOMISSAO'
      Origin = 'NFE_TOTALCOMISSAO'
      Precision = 18
    end
    object TBNfeNFE_TOTALFCP: TFMTBCDField
      FieldName = 'NFE_TOTALFCP'
      Origin = 'NFE_TOTALFCP'
      Precision = 18
    end
    object TBNfeNFE_TOTALFCPST: TFMTBCDField
      FieldName = 'NFE_TOTALFCPST'
      Origin = 'NFE_TOTALFCPST'
      Precision = 18
    end
    object TBNfeNFE_TOTALICMS: TFMTBCDField
      FieldName = 'NFE_TOTALICMS'
      Origin = 'NFE_TOTALICMS'
      Precision = 18
    end
    object TBNfeNFE_TOTALICMSCREDSN: TFMTBCDField
      FieldName = 'NFE_TOTALICMSCREDSN'
      Origin = 'NFE_TOTALICMSCREDSN'
      Precision = 18
    end
    object TBNfeNFE_TOTALICMSST: TFMTBCDField
      FieldName = 'NFE_TOTALICMSST'
      Origin = 'NFE_TOTALICMSST'
      Precision = 18
    end
    object TBNfeNFE_TOTALICMSUFDEST: TFMTBCDField
      FieldName = 'NFE_TOTALICMSUFDEST'
      Origin = 'NFE_TOTALICMSUFDEST'
      Precision = 18
    end
    object TBNfeNFE_TOTALICMSUFREMET: TFMTBCDField
      FieldName = 'NFE_TOTALICMSUFREMET'
      Origin = 'NFE_TOTALICMSUFREMET'
      Precision = 18
    end
    object TBNfeNFE_TOTALII: TFMTBCDField
      FieldName = 'NFE_TOTALII'
      Origin = 'NFE_TOTALII'
      Precision = 18
    end
    object TBNfeNFE_TOTALIOF: TFMTBCDField
      FieldName = 'NFE_TOTALIOF'
      Origin = 'NFE_TOTALIOF'
      Precision = 18
    end
    object TBNfeNFE_TOTALIPI: TFMTBCDField
      FieldName = 'NFE_TOTALIPI'
      Origin = 'NFE_TOTALIPI'
      Precision = 18
    end
    object TBNfeNFE_TOTALIS: TFMTBCDField
      FieldName = 'NFE_TOTALIS'
      Origin = 'NFE_TOTALIS'
      Precision = 18
    end
    object TBNfeNFE_TOTALISS: TFMTBCDField
      FieldName = 'NFE_TOTALISS'
      Origin = 'NFE_TOTALISS'
      Precision = 18
    end
    object TBNfeNFE_TOTALISSDEDUCAO: TFMTBCDField
      FieldName = 'NFE_TOTALISSDEDUCAO'
      Origin = 'NFE_TOTALISSDEDUCAO'
      Precision = 18
    end
    object TBNfeNFE_TOTALISSDESCCOND: TFMTBCDField
      FieldName = 'NFE_TOTALISSDESCCOND'
      Origin = 'NFE_TOTALISSDESCCOND'
      Precision = 18
    end
    object TBNfeNFE_TOTALISSDESCINCOND: TFMTBCDField
      FieldName = 'NFE_TOTALISSDESCINCOND'
      Origin = 'NFE_TOTALISSDESCINCOND'
      Precision = 18
    end
    object TBNfeNFE_TOTALISSOUTROS: TFMTBCDField
      FieldName = 'NFE_TOTALISSOUTROS'
      Origin = 'NFE_TOTALISSOUTROS'
      Precision = 18
    end
    object TBNfeNFE_TOTALISSRETENCAO: TFMTBCDField
      FieldName = 'NFE_TOTALISSRETENCAO'
      Origin = 'NFE_TOTALISSRETENCAO'
      Precision = 18
    end
    object TBNfeNFE_TOTALITENS: TFMTBCDField
      FieldName = 'NFE_TOTALITENS'
      Origin = 'NFE_TOTALITENS'
      Precision = 18
    end
    object TBNfeNFE_TOTALPIS: TFMTBCDField
      FieldName = 'NFE_TOTALPIS'
      Origin = 'NFE_TOTALPIS'
      Precision = 18
    end
    object TBNfeNFE_TOTALPISST: TFMTBCDField
      FieldName = 'NFE_TOTALPISST'
      Origin = 'NFE_TOTALPISST'
      Precision = 18
    end
    object TBNfeNFE_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'NFE_TOTALPRODUTOS'
      Origin = 'NFE_TOTALPRODUTOS'
      Precision = 18
    end
    object TBNfeNFE_TOTALSERVICOS: TFMTBCDField
      FieldName = 'NFE_TOTALSERVICOS'
      Origin = 'NFE_TOTALSERVICOS'
      Precision = 18
    end
    object TBNfeNFE_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOS'
      Origin = 'NFE_TOTALTRIBUTOS'
      Precision = 18
    end
    object TBNfeNFE_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSEST'
      Origin = 'NFE_TOTALTRIBUTOSEST'
      Precision = 18
    end
    object TBNfeNFE_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSFED'
      Origin = 'NFE_TOTALTRIBUTOSFED'
      Precision = 18
    end
    object TBNfeNFE_TOTALTRIBUTOSIMP: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSIMP'
      Origin = 'NFE_TOTALTRIBUTOSIMP'
      Precision = 18
    end
    object TBNfeNFE_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSMUN'
      Origin = 'NFE_TOTALTRIBUTOSMUN'
      Precision = 18
    end
    object TBNfeNFE_TRANSPCIDADE: TStringField
      FieldName = 'NFE_TRANSPCIDADE'
      Origin = 'NFE_TRANSPCIDADE'
      Size = 50
    end
    object TBNfeNFE_TRANSPCNPJ: TStringField
      FieldName = 'NFE_TRANSPCNPJ'
      Origin = 'NFE_TRANSPCNPJ'
    end
    object TBNfeNFE_TRANSPCPF: TStringField
      FieldName = 'NFE_TRANSPCPF'
      Origin = 'NFE_TRANSPCPF'
    end
    object TBNfeNFE_TRANSPEMAIL: TStringField
      FieldName = 'NFE_TRANSPEMAIL'
      Origin = 'NFE_TRANSPEMAIL'
      Size = 100
    end
    object TBNfeNFE_TRANSPENDERECO: TStringField
      FieldName = 'NFE_TRANSPENDERECO'
      Origin = 'NFE_TRANSPENDERECO'
      Size = 100
    end
    object TBNfeNFE_TRANSPESTADO: TStringField
      FieldName = 'NFE_TRANSPESTADO'
      Origin = 'NFE_TRANSPESTADO'
      Size = 2
    end
    object TBNfeNFE_TRANSPFONE: TStringField
      FieldName = 'NFE_TRANSPFONE'
      Origin = 'NFE_TRANSPFONE'
    end
    object TBNfeNFE_TRANSPIE: TStringField
      FieldName = 'NFE_TRANSPIE'
      Origin = 'NFE_TRANSPIE'
    end
    object TBNfeNFE_TRANSPNOME: TStringField
      FieldName = 'NFE_TRANSPNOME'
      Origin = 'NFE_TRANSPNOME'
      Size = 80
    end
    object TBNfeNFE_TRANSPORTADORA: TIntegerField
      FieldName = 'NFE_TRANSPORTADORA'
      Origin = 'NFE_TRANSPORTADORA'
    end
    object TBNfeNFE_USUARIO: TStringField
      FieldName = 'NFE_USUARIO'
      Origin = 'NFE_USUARIO'
    end
    object TBNfeNFE_VALORDESPACES: TFMTBCDField
      FieldName = 'NFE_VALORDESPACES'
      Origin = 'NFE_VALORDESPACES'
      Precision = 18
    end
    object TBNfeNFE_VALORFRETE: TFMTBCDField
      FieldName = 'NFE_VALORFRETE'
      Origin = 'NFE_VALORFRETE'
      Precision = 18
    end
    object TBNfeNFE_VALORSEGURO: TFMTBCDField
      FieldName = 'NFE_VALORSEGURO'
      Origin = 'NFE_VALORSEGURO'
      Precision = 18
    end
    object TBNfeNFE_VALORTOTAL: TFMTBCDField
      FieldName = 'NFE_VALORTOTAL'
      Origin = 'NFE_VALORTOTAL'
      Precision = 18
    end
    object TBNfeNFE_VALORTOTALRTC: TFMTBCDField
      FieldName = 'NFE_VALORTOTALRTC'
      Origin = 'NFE_VALORTOTALRTC'
      Precision = 18
    end
    object TBNfeNFE_VEICULOPLACA: TStringField
      FieldName = 'NFE_VEICULOPLACA'
      Origin = 'NFE_VEICULOPLACA'
      Size = 10
    end
    object TBNfeNFE_VEICULOPLACAUF: TStringField
      FieldName = 'NFE_VEICULOPLACAUF'
      Origin = 'NFE_VEICULOPLACAUF'
      Size = 2
    end
    object TBNfeNFE_VEICULORNTC: TStringField
      FieldName = 'NFE_VEICULORNTC'
      Origin = 'NFE_VEICULORNTC'
    end
    object TBNfeNFE_VENDA: TIntegerField
      FieldName = 'NFE_VENDA'
      Origin = 'NFE_VENDA'
    end
    object TBNfeNFE_VENDEDOR: TIntegerField
      FieldName = 'NFE_VENDEDOR'
      Origin = 'NFE_VENDEDOR'
      Required = True
    end
    object TBNfeNFE_VOLUMES: TIntegerField
      FieldName = 'NFE_VOLUMES'
      Origin = 'NFE_VOLUMES'
    end
    object TBNfeNFE_VOLUMESNUM: TStringField
      FieldName = 'NFE_VOLUMESNUM'
      Origin = 'NFE_VOLUMESNUM'
      Size = 50
    end
    object TBNfeCLI_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      ProviderFlags = []
      Size = 80
    end
    object TBNfeCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBNfeCPG_MEIOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      ProviderFlags = []
      Size = 50
    end
    object TBNfeCPG_TIPOINTEGRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      ProviderFlags = []
      Size = 30
    end
    object TBNfeCPG_TIPOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TIPOPAGAMENTO'
      Origin = 'CPG_TIPOPAGAMENTO'
      ProviderFlags = []
      Size = 30
    end
    object TBNfeNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBNfeVEN_NOME1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME1'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRNfe: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 64
    Top = 392
  end
  object UPNfe: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO NFE'
      '(NFE_ALIQICMSCREDSN, NFE_BAIRRO, NFE_BAIXADATA, '
      '  NFE_BAIXAPOR, NFE_BASECOFINS, NFE_BASECOFINSST, '
      '  NFE_BASEIBSCBS, NFE_BASEICMS, NFE_BASEICMSST, '
      '  NFE_BASEII, NFE_BASEIPI, NFE_BASEIS, NFE_BASEISS, '
      '  NFE_BASEPIS, NFE_BASEPISST, NFE_CBSCREDPRES, '
      '  NFE_CBSCREDPRESSUS, NFE_CBSDEVOLUCAO, NFE_CBSDIFERIMENTO, '
      '  NFE_CBSMONO, NFE_CBSMONORETENCAO, NFE_CBSMONORETIDO, '
      '  NFE_CBSVALOR, NFE_CEP, NFE_CFOP, NFE_CFOPDESC, '
      '  NFE_CHAVEACESSO, NFE_CIDADE, NFE_CIDADECODIGO, '
      '  NFE_CLIENTE, NFE_CNPJ, NFE_CODIGO, NFE_CODIGONFE, '
      '  NFE_CODIGONUMERICO, NFE_COMISSAO, NFE_COMISSAOPOR, '
      '  NFE_COMPLEMENTO, NFE_CONDICAO, NFE_CONDICAOMEMO, '
      '  NFE_CONSULTADA, NFE_CONTATO, NFE_CPF, NFE_CUSTOTOTAL, '
      '  NFE_DESCPORC, NFE_DESCPORCCLIENTE, NFE_DESCPORCCONDICAO, '
      '  NFE_DESCVALOR, NFE_DESTACARIMPOSTOS, NFE_DIAPREFERENCIAL, '
      '  NFE_DPEC, NFE_DPECDH, NFE_DTATUALIZACAO, '
      '  NFE_DTCADASTRO, NFE_DTEMISSAO, NFE_DTPRESTSERVICO, '
      '  NFE_DTSAIDA, NFE_ENDERECO, NFE_ENTRADASAIDA, '
      '  NFE_ENVIADA, NFE_ESPECIE, NFE_ESTADO, NFE_ESTADOCODIGO, '
      '  NFE_EXLOCAL, NFE_EXPEDIDOPOR, NFE_EXUFSAIDA, '
      '  NFE_FINALIDADE, NFE_FONE1, NFE_FORMAPAGTO, '
      '  NFE_FRETE, NFE_GOVERNAMENTAL, NFE_GOVERNAMENTALALIQRED, '
      '  NFE_GOVERNAMENTALOP, NFE_HRATUALIZACAO, NFE_HRCADASTRO, '
      '  NFE_IBSCREDPRES, NFE_IBSCREDPRESSUS, NFE_IBSMONO, '
      '  NFE_IBSMONORETENCAO, NFE_IBSMONORETIDO, NFE_IBSMUNDEVOLUCAO, '
      '  NFE_IBSMUNDIFERIMENTO, NFE_IBSMUNVALOR, NFE_IBSUFDEVOLUCAO, '
      '  NFE_IBSUFDIFERIMENTO, NFE_IBSUFVALOR, NFE_IBSVALOR, '
      '  NFE_IDESTRANGEIRO, NFE_IE, NFE_INFOADICFISCO, '
      
        '  NFE_INFOCOMPLEMENTAR, NFE_INTERMEDIADOR, NFE_INTERMEDIADORCAD,' +
        ' '
      '  NFE_INTERMEDIADORCNPJ, NFE_LACRES, NFE_LOTE, '
      '  NFE_LUCROPORC, NFE_LUCROVALOR, NFE_MANUAL, '
      '  NFE_MARCA, NFE_MODELO, NFE_MOTIVOCANCELAMENTO, '
      '  NFE_MOTIVOINUTILIZACAO, NFE_MOVIMENTAESTOQUE, '
      '  NFE_MOVIMENTAFINANCEIRO, NFE_NOME, NFE_NOTACREDITO, '
      '  NFE_NOTADEBITO, NFE_NUMERO, NFE_OBSERVACOES, '
      '  NFE_PAIS, NFE_PAISCODIGO, NFE_PEDIDOCLIENTE, '
      '  NFE_PESOBRUTO, NFE_PESOLIQ, NFE_PROTOCOLO, '
      '  NFE_PROTOCOLOCANC, NFE_PROTOCOLOCANCDH, NFE_PROTOCOLODH, '
      '  NFE_PROTOCOLOINUT, NFE_PROTOCOLOINUTDH, NFE_REBOQUEPLACA, '
      '  NFE_REBOQUEPLACAUF, NFE_REBOQUERNTC, NFE_RECIBO, '
      '  NFE_RECIBODH, NFE_RG, NFE_SEQUENCIAITEM, '
      '  NFE_SERIE, NFE_STATUS, NFE_SUFRAMA, NFE_TABELAPRECO, '
      '  NFE_TIPOATENDIMENTO, NFE_TIPOCONSUMIDOR, NFE_TIPOEMISSAO, '
      '  NFE_TIPOOPERACAO, NFE_TOTALADUANA, NFE_TOTALBRUTO, '
      '  NFE_TOTALCCE, NFE_TOTALCOFINS, NFE_TOTALCOFINSST, '
      '  NFE_TOTALCOMISSAO, NFE_TOTALFCP, NFE_TOTALFCPST, '
      '  NFE_TOTALICMS, NFE_TOTALICMSCREDSN, NFE_TOTALICMSST, '
      '  NFE_TOTALICMSUFDEST, NFE_TOTALICMSUFREMET, NFE_TOTALII, '
      '  NFE_TOTALIOF, NFE_TOTALIPI, NFE_TOTALIS, '
      '  NFE_TOTALISS, NFE_TOTALISSDEDUCAO, NFE_TOTALISSDESCCOND, '
      
        '  NFE_TOTALISSDESCINCOND, NFE_TOTALISSOUTROS, NFE_TOTALISSRETENC' +
        'AO, '
      '  NFE_TOTALITENS, NFE_TOTALPIS, NFE_TOTALPISST, '
      '  NFE_TOTALPRODUTOS, NFE_TOTALSERVICOS, NFE_TOTALTRIBUTOS, '
      
        '  NFE_TOTALTRIBUTOSEST, NFE_TOTALTRIBUTOSFED, NFE_TOTALTRIBUTOSI' +
        'MP, '
      '  NFE_TOTALTRIBUTOSMUN, NFE_TRANSPCIDADE, NFE_TRANSPCNPJ, '
      '  NFE_TRANSPCPF, NFE_TRANSPEMAIL, NFE_TRANSPENDERECO, '
      '  NFE_TRANSPESTADO, NFE_TRANSPFONE, NFE_TRANSPIE, '
      '  NFE_TRANSPNOME, NFE_TRANSPORTADORA, NFE_USUARIO, '
      '  NFE_VALORDESPACES, NFE_VALORFRETE, NFE_VALORSEGURO, '
      '  NFE_VALORTOTAL, NFE_VALORTOTALRTC, NFE_VEICULOPLACA, '
      '  NFE_VEICULOPLACAUF, NFE_VEICULORNTC, NFE_VENDA, '
      '  NFE_VENDEDOR, NFE_VOLUMES, NFE_VOLUMESNUM)'
      
        'VALUES (:NEW_NFE_ALIQICMSCREDSN, :NEW_NFE_BAIRRO, :NEW_NFE_BAIXA' +
        'DATA, '
      
        '  :NEW_NFE_BAIXAPOR, :NEW_NFE_BASECOFINS, :NEW_NFE_BASECOFINSST,' +
        ' '
      '  :NEW_NFE_BASEIBSCBS, :NEW_NFE_BASEICMS, :NEW_NFE_BASEICMSST, '
      
        '  :NEW_NFE_BASEII, :NEW_NFE_BASEIPI, :NEW_NFE_BASEIS, :NEW_NFE_B' +
        'ASEISS, '
      '  :NEW_NFE_BASEPIS, :NEW_NFE_BASEPISST, :NEW_NFE_CBSCREDPRES, '
      
        '  :NEW_NFE_CBSCREDPRESSUS, :NEW_NFE_CBSDEVOLUCAO, :NEW_NFE_CBSDI' +
        'FERIMENTO, '
      
        '  :NEW_NFE_CBSMONO, :NEW_NFE_CBSMONORETENCAO, :NEW_NFE_CBSMONORE' +
        'TIDO, '
      
        '  :NEW_NFE_CBSVALOR, :NEW_NFE_CEP, :NEW_NFE_CFOP, :NEW_NFE_CFOPD' +
        'ESC, '
      '  :NEW_NFE_CHAVEACESSO, :NEW_NFE_CIDADE, :NEW_NFE_CIDADECODIGO, '
      
        '  :NEW_NFE_CLIENTE, :NEW_NFE_CNPJ, gen_id(GEN_NFE,1), :NEW_NFE_C' +
        'ODIGONFE, '
      
        '  :NEW_NFE_CODIGONUMERICO, :NEW_NFE_COMISSAO, :NEW_NFE_COMISSAOP' +
        'OR, '
      
        '  :NEW_NFE_COMPLEMENTO, :NEW_NFE_CONDICAO, :NEW_NFE_CONDICAOMEMO' +
        ', '
      
        '  :NEW_NFE_CONSULTADA, :NEW_NFE_CONTATO, :NEW_NFE_CPF, :NEW_NFE_' +
        'CUSTOTOTAL, '
      
        '  :NEW_NFE_DESCPORC, :NEW_NFE_DESCPORCCLIENTE, :NEW_NFE_DESCPORC' +
        'CONDICAO, '
      
        '  :NEW_NFE_DESCVALOR, :NEW_NFE_DESTACARIMPOSTOS, :NEW_NFE_DIAPRE' +
        'FERENCIAL, '
      '  :NEW_NFE_DPEC, :NEW_NFE_DPECDH, :NEW_NFE_DTATUALIZACAO, '
      
        '  :NEW_NFE_DTCADASTRO, :NEW_NFE_DTEMISSAO, :NEW_NFE_DTPRESTSERVI' +
        'CO, '
      '  :NEW_NFE_DTSAIDA, :NEW_NFE_ENDERECO, :NEW_NFE_ENTRADASAIDA, '
      
        '  :NEW_NFE_ENVIADA, :NEW_NFE_ESPECIE, :NEW_NFE_ESTADO, :NEW_NFE_' +
        'ESTADOCODIGO, '
      '  :NEW_NFE_EXLOCAL, :NEW_NFE_EXPEDIDOPOR, :NEW_NFE_EXUFSAIDA, '
      '  :NEW_NFE_FINALIDADE, :NEW_NFE_FONE1, :NEW_NFE_FORMAPAGTO, '
      
        '  :NEW_NFE_FRETE, :NEW_NFE_GOVERNAMENTAL, :NEW_NFE_GOVERNAMENTAL' +
        'ALIQRED, '
      
        '  :NEW_NFE_GOVERNAMENTALOP, :NEW_NFE_HRATUALIZACAO, :NEW_NFE_HRC' +
        'ADASTRO, '
      
        '  :NEW_NFE_IBSCREDPRES, :NEW_NFE_IBSCREDPRESSUS, :NEW_NFE_IBSMON' +
        'O, '
      
        '  :NEW_NFE_IBSMONORETENCAO, :NEW_NFE_IBSMONORETIDO, :NEW_NFE_IBS' +
        'MUNDEVOLUCAO, '
      
        '  :NEW_NFE_IBSMUNDIFERIMENTO, :NEW_NFE_IBSMUNVALOR, :NEW_NFE_IBS' +
        'UFDEVOLUCAO, '
      
        '  :NEW_NFE_IBSUFDIFERIMENTO, :NEW_NFE_IBSUFVALOR, :NEW_NFE_IBSVA' +
        'LOR, '
      '  :NEW_NFE_IDESTRANGEIRO, :NEW_NFE_IE, :NEW_NFE_INFOADICFISCO, '
      
        '  :NEW_NFE_INFOCOMPLEMENTAR, :NEW_NFE_INTERMEDIADOR, :NEW_NFE_IN' +
        'TERMEDIADORCAD, '
      '  :NEW_NFE_INTERMEDIADORCNPJ, :NEW_NFE_LACRES, :NEW_NFE_LOTE, '
      '  :NEW_NFE_LUCROPORC, :NEW_NFE_LUCROVALOR, :NEW_NFE_MANUAL, '
      '  :NEW_NFE_MARCA, :NEW_NFE_MODELO, :NEW_NFE_MOTIVOCANCELAMENTO, '
      '  :NEW_NFE_MOTIVOINUTILIZACAO, :NEW_NFE_MOVIMENTAESTOQUE, '
      
        '  :NEW_NFE_MOVIMENTAFINANCEIRO, :NEW_NFE_NOME, :NEW_NFE_NOTACRED' +
        'ITO, '
      '  :NEW_NFE_NOTADEBITO, :NEW_NFE_NUMERO, :NEW_NFE_OBSERVACOES, '
      '  :NEW_NFE_PAIS, :NEW_NFE_PAISCODIGO, :NEW_NFE_PEDIDOCLIENTE, '
      '  :NEW_NFE_PESOBRUTO, :NEW_NFE_PESOLIQ, :NEW_NFE_PROTOCOLO, '
      
        '  :NEW_NFE_PROTOCOLOCANC, :NEW_NFE_PROTOCOLOCANCDH, :NEW_NFE_PRO' +
        'TOCOLODH, '
      
        '  :NEW_NFE_PROTOCOLOINUT, :NEW_NFE_PROTOCOLOINUTDH, :NEW_NFE_REB' +
        'OQUEPLACA, '
      
        '  :NEW_NFE_REBOQUEPLACAUF, :NEW_NFE_REBOQUERNTC, :NEW_NFE_RECIBO' +
        ', '
      '  :NEW_NFE_RECIBODH, :NEW_NFE_RG, :NEW_NFE_SEQUENCIAITEM, '
      
        '  :NEW_NFE_SERIE, :NEW_NFE_STATUS, :NEW_NFE_SUFRAMA, :NEW_NFE_TA' +
        'BELAPRECO, '
      
        '  :NEW_NFE_TIPOATENDIMENTO, :NEW_NFE_TIPOCONSUMIDOR, :NEW_NFE_TI' +
        'POEMISSAO, '
      
        '  :NEW_NFE_TIPOOPERACAO, :NEW_NFE_TOTALADUANA, :NEW_NFE_TOTALBRU' +
        'TO, '
      
        '  :NEW_NFE_TOTALCCE, :NEW_NFE_TOTALCOFINS, :NEW_NFE_TOTALCOFINSS' +
        'T, '
      
        '  :NEW_NFE_TOTALCOMISSAO, :NEW_NFE_TOTALFCP, :NEW_NFE_TOTALFCPST' +
        ', '
      
        '  :NEW_NFE_TOTALICMS, :NEW_NFE_TOTALICMSCREDSN, :NEW_NFE_TOTALIC' +
        'MSST, '
      
        '  :NEW_NFE_TOTALICMSUFDEST, :NEW_NFE_TOTALICMSUFREMET, :NEW_NFE_' +
        'TOTALII, '
      '  :NEW_NFE_TOTALIOF, :NEW_NFE_TOTALIPI, :NEW_NFE_TOTALIS, '
      
        '  :NEW_NFE_TOTALISS, :NEW_NFE_TOTALISSDEDUCAO, :NEW_NFE_TOTALISS' +
        'DESCCOND, '
      
        '  :NEW_NFE_TOTALISSDESCINCOND, :NEW_NFE_TOTALISSOUTROS, :NEW_NFE' +
        '_TOTALISSRETENCAO, '
      '  :NEW_NFE_TOTALITENS, :NEW_NFE_TOTALPIS, :NEW_NFE_TOTALPISST, '
      
        '  :NEW_NFE_TOTALPRODUTOS, :NEW_NFE_TOTALSERVICOS, :NEW_NFE_TOTAL' +
        'TRIBUTOS, '
      
        '  :NEW_NFE_TOTALTRIBUTOSEST, :NEW_NFE_TOTALTRIBUTOSFED, :NEW_NFE' +
        '_TOTALTRIBUTOSIMP, '
      
        '  :NEW_NFE_TOTALTRIBUTOSMUN, :NEW_NFE_TRANSPCIDADE, :NEW_NFE_TRA' +
        'NSPCNPJ, '
      
        '  :NEW_NFE_TRANSPCPF, :NEW_NFE_TRANSPEMAIL, :NEW_NFE_TRANSPENDER' +
        'ECO, '
      
        '  :NEW_NFE_TRANSPESTADO, :NEW_NFE_TRANSPFONE, :NEW_NFE_TRANSPIE,' +
        ' '
      
        '  :NEW_NFE_TRANSPNOME, :NEW_NFE_TRANSPORTADORA, :NEW_NFE_USUARIO' +
        ', '
      
        '  :NEW_NFE_VALORDESPACES, :NEW_NFE_VALORFRETE, :NEW_NFE_VALORSEG' +
        'URO, '
      
        '  :NEW_NFE_VALORTOTAL, :NEW_NFE_VALORTOTALRTC, :NEW_NFE_VEICULOP' +
        'LACA, '
      
        '  :NEW_NFE_VEICULOPLACAUF, :NEW_NFE_VEICULORNTC, :NEW_NFE_VENDA,' +
        ' '
      '  :NEW_NFE_VENDEDOR, :NEW_NFE_VOLUMES, :NEW_NFE_VOLUMESNUM)'
      
        'RETURNING NFE_ALIQICMSCREDSN, NFE_BAIRRO, NFE_BAIXADATA, NFE_BAI' +
        'XAPOR, NFE_BASECOFINS, NFE_BASECOFINSST, NFE_BASEIBSCBS, NFE_BAS' +
        'EICMS, NFE_BASEICMSST, NFE_BASEII, NFE_BASEIPI, NFE_BASEIS, NFE_' +
        'BASEISS, NFE_BASEPIS, NFE_BASEPISST, NFE_CBSCREDPRES, NFE_CBSCRE' +
        'DPRESSUS, NFE_CBSDEVOLUCAO, NFE_CBSDIFERIMENTO, NFE_CBSMONO, NFE' +
        '_CBSMONORETENCAO, NFE_CBSMONORETIDO, NFE_CBSVALOR, NFE_CEP, NFE_' +
        'CFOP, NFE_CFOPDESC, NFE_CHAVEACESSO, NFE_CIDADE, NFE_CIDADECODIG' +
        'O, NFE_CLIENTE, NFE_CNPJ, NFE_CODIGO, NFE_CODIGONFE, NFE_CODIGON' +
        'UMERICO, NFE_COMISSAO, NFE_COMISSAOPOR, NFE_COMPLEMENTO, NFE_CON' +
        'DICAO, NFE_CONDICAOMEMO, NFE_CONSULTADA, NFE_CONTATO, NFE_CPF, N' +
        'FE_CUSTOTOTAL, NFE_DESCPORC, NFE_DESCPORCCLIENTE, NFE_DESCPORCCO' +
        'NDICAO, NFE_DESCVALOR, NFE_DESTACARIMPOSTOS, NFE_DIAPREFERENCIAL' +
        ', NFE_DPEC, NFE_DPECDH, NFE_DTATUALIZACAO, NFE_DTCADASTRO, NFE_D' +
        'TEMISSAO, NFE_DTPRESTSERVICO, NFE_DTSAIDA, NFE_ENDERECO, NFE_ENT' +
        'RADASAIDA, NFE_ENVIADA, NFE_ESPECIE, NFE_ESTADO, NFE_ESTADOCODIG' +
        'O, NFE_EXLOCAL, NFE_EXPEDIDOPOR, NFE_EXUFSAIDA, NFE_FINALIDADE, ' +
        'NFE_FONE1, NFE_FORMAPAGTO, NFE_FRETE, NFE_GOVERNAMENTAL, NFE_GOV' +
        'ERNAMENTALALIQRED, NFE_GOVERNAMENTALOP, NFE_HRATUALIZACAO, NFE_H' +
        'RCADASTRO, NFE_IBSCREDPRES, NFE_IBSCREDPRESSUS, NFE_IBSMONO, NFE' +
        '_IBSMONORETENCAO, NFE_IBSMONORETIDO, NFE_IBSMUNDEVOLUCAO, NFE_IB' +
        'SMUNDIFERIMENTO, NFE_IBSMUNVALOR, NFE_IBSUFDEVOLUCAO, NFE_IBSUFD' +
        'IFERIMENTO, NFE_IBSUFVALOR, NFE_IBSVALOR, NFE_IDESTRANGEIRO, NFE' +
        '_IE, NFE_INFOADICFISCO, NFE_INFOCOMPLEMENTAR, NFE_INTERMEDIADOR,' +
        ' NFE_INTERMEDIADORCAD, NFE_INTERMEDIADORCNPJ, NFE_LACRES, NFE_LO' +
        'TE, NFE_LUCROPORC, NFE_LUCROVALOR, NFE_MANUAL, NFE_MARCA, NFE_MO' +
        'DELO, NFE_MOTIVOCANCELAMENTO, NFE_MOTIVOINUTILIZACAO, NFE_MOVIME' +
        'NTAESTOQUE, NFE_MOVIMENTAFINANCEIRO, NFE_NOME, NFE_NOTACREDITO, ' +
        'NFE_NOTADEBITO, NFE_NUMERO, NFE_OBSERVACOES, NFE_PAIS, NFE_PAISC' +
        'ODIGO, NFE_PEDIDOCLIENTE, NFE_PESOBRUTO, NFE_PESOLIQ, NFE_PROTOC' +
        'OLO, NFE_PROTOCOLOCANC, NFE_PROTOCOLOCANCDH, NFE_PROTOCOLODH, NF' +
        'E_PROTOCOLOINUT, NFE_PROTOCOLOINUTDH, NFE_REBOQUEPLACA, NFE_REBO' +
        'QUEPLACAUF, NFE_REBOQUERNTC, NFE_RECIBO, NFE_RECIBODH, NFE_RG, N' +
        'FE_SEQUENCIAITEM, NFE_SERIE, NFE_STATUS, NFE_SUFRAMA, NFE_TABELA' +
        'PRECO, NFE_TIPOATENDIMENTO, NFE_TIPOCONSUMIDOR, NFE_TIPOEMISSAO,' +
        ' NFE_TIPOOPERACAO, NFE_TOTALADUANA, NFE_TOTALBRUTO, NFE_TOTALCCE' +
        ', NFE_TOTALCOFINS, NFE_TOTALCOFINSST, NFE_TOTALCOMISSAO, NFE_TOT' +
        'ALFCP, NFE_TOTALFCPST, NFE_TOTALICMS, NFE_TOTALICMSCREDSN, NFE_T' +
        'OTALICMSST, NFE_TOTALICMSUFDEST, NFE_TOTALICMSUFREMET, NFE_TOTAL' +
        'II, NFE_TOTALIOF, NFE_TOTALIPI, NFE_TOTALIS, NFE_TOTALISS, NFE_T' +
        'OTALISSDEDUCAO, NFE_TOTALISSDESCCOND, NFE_TOTALISSDESCINCOND, NF' +
        'E_TOTALISSOUTROS, NFE_TOTALISSRETENCAO, NFE_TOTALITENS, NFE_TOTA' +
        'LPIS, NFE_TOTALPISST, NFE_TOTALPRODUTOS, NFE_TOTALSERVICOS, NFE_' +
        'TOTALTRIBUTOS, NFE_TOTALTRIBUTOSEST, NFE_TOTALTRIBUTOSFED, NFE_T' +
        'OTALTRIBUTOSIMP, NFE_TOTALTRIBUTOSMUN, NFE_TRANSPCIDADE, NFE_TRA' +
        'NSPCNPJ, NFE_TRANSPCPF, NFE_TRANSPEMAIL, NFE_TRANSPENDERECO, NFE' +
        '_TRANSPESTADO, NFE_TRANSPFONE, NFE_TRANSPIE, NFE_TRANSPNOME, NFE' +
        '_TRANSPORTADORA, NFE_USUARIO, NFE_VALORDESPACES, NFE_VALORFRETE,' +
        ' NFE_VALORSEGURO, NFE_VALORTOTAL, NFE_VALORTOTALRTC, NFE_VEICULO' +
        'PLACA, NFE_VEICULOPLACAUF, NFE_VEICULORNTC, NFE_VENDA, NFE_VENDE' +
        'DOR, NFE_VOLUMES, NFE_VOLUMESNUM')
    ModifySQL.Strings = (
      'UPDATE NFE'
      
        'SET NFE_ALIQICMSCREDSN = :NEW_NFE_ALIQICMSCREDSN, NFE_BAIRRO = :' +
        'NEW_NFE_BAIRRO, '
      
        '  NFE_BAIXADATA = :NEW_NFE_BAIXADATA, NFE_BAIXAPOR = :NEW_NFE_BA' +
        'IXAPOR, '
      
        '  NFE_BASECOFINS = :NEW_NFE_BASECOFINS, NFE_BASECOFINSST = :NEW_' +
        'NFE_BASECOFINSST, '
      
        '  NFE_BASEIBSCBS = :NEW_NFE_BASEIBSCBS, NFE_BASEICMS = :NEW_NFE_' +
        'BASEICMS, '
      
        '  NFE_BASEICMSST = :NEW_NFE_BASEICMSST, NFE_BASEII = :NEW_NFE_BA' +
        'SEII, '
      '  NFE_BASEIPI = :NEW_NFE_BASEIPI, NFE_BASEIS = :NEW_NFE_BASEIS, '
      
        '  NFE_BASEISS = :NEW_NFE_BASEISS, NFE_BASEPIS = :NEW_NFE_BASEPIS' +
        ', '
      
        '  NFE_BASEPISST = :NEW_NFE_BASEPISST, NFE_CBSCREDPRES = :NEW_NFE' +
        '_CBSCREDPRES, '
      
        '  NFE_CBSCREDPRESSUS = :NEW_NFE_CBSCREDPRESSUS, NFE_CBSDEVOLUCAO' +
        ' = :NEW_NFE_CBSDEVOLUCAO, '
      
        '  NFE_CBSDIFERIMENTO = :NEW_NFE_CBSDIFERIMENTO, NFE_CBSMONO = :N' +
        'EW_NFE_CBSMONO, '
      
        '  NFE_CBSMONORETENCAO = :NEW_NFE_CBSMONORETENCAO, NFE_CBSMONORET' +
        'IDO = :NEW_NFE_CBSMONORETIDO, '
      '  NFE_CBSVALOR = :NEW_NFE_CBSVALOR, NFE_CEP = :NEW_NFE_CEP, '
      '  NFE_CFOP = :NEW_NFE_CFOP, NFE_CFOPDESC = :NEW_NFE_CFOPDESC, '
      
        '  NFE_CHAVEACESSO = :NEW_NFE_CHAVEACESSO, NFE_CIDADE = :NEW_NFE_' +
        'CIDADE, '
      
        '  NFE_CIDADECODIGO = :NEW_NFE_CIDADECODIGO, NFE_CLIENTE = :NEW_N' +
        'FE_CLIENTE, '
      '  NFE_CNPJ = :NEW_NFE_CNPJ, NFE_CODIGO = :NEW_NFE_CODIGO, '
      
        '  NFE_CODIGONFE = :NEW_NFE_CODIGONFE, NFE_CODIGONUMERICO = :NEW_' +
        'NFE_CODIGONUMERICO, '
      
        '  NFE_COMISSAO = :NEW_NFE_COMISSAO, NFE_COMISSAOPOR = :NEW_NFE_C' +
        'OMISSAOPOR, '
      
        '  NFE_COMPLEMENTO = :NEW_NFE_COMPLEMENTO, NFE_CONDICAO = :NEW_NF' +
        'E_CONDICAO, '
      
        '  NFE_CONDICAOMEMO = :NEW_NFE_CONDICAOMEMO, NFE_CONSULTADA = :NE' +
        'W_NFE_CONSULTADA, '
      '  NFE_CONTATO = :NEW_NFE_CONTATO, NFE_CPF = :NEW_NFE_CPF, '
      
        '  NFE_CUSTOTOTAL = :NEW_NFE_CUSTOTOTAL, NFE_DESCPORC = :NEW_NFE_' +
        'DESCPORC, '
      
        '  NFE_DESCPORCCLIENTE = :NEW_NFE_DESCPORCCLIENTE, NFE_DESCPORCCO' +
        'NDICAO = :NEW_NFE_DESCPORCCONDICAO, '
      
        '  NFE_DESCVALOR = :NEW_NFE_DESCVALOR, NFE_DESTACARIMPOSTOS = :NE' +
        'W_NFE_DESTACARIMPOSTOS, '
      
        '  NFE_DIAPREFERENCIAL = :NEW_NFE_DIAPREFERENCIAL, NFE_DPEC = :NE' +
        'W_NFE_DPEC, '
      
        '  NFE_DPECDH = :NEW_NFE_DPECDH, NFE_DTATUALIZACAO = :NEW_NFE_DTA' +
        'TUALIZACAO, '
      
        '  NFE_DTCADASTRO = :NEW_NFE_DTCADASTRO, NFE_DTEMISSAO = :NEW_NFE' +
        '_DTEMISSAO, '
      
        '  NFE_DTPRESTSERVICO = :NEW_NFE_DTPRESTSERVICO, NFE_DTSAIDA = :N' +
        'EW_NFE_DTSAIDA, '
      
        '  NFE_ENDERECO = :NEW_NFE_ENDERECO, NFE_ENTRADASAIDA = :NEW_NFE_' +
        'ENTRADASAIDA, '
      
        '  NFE_ENVIADA = :NEW_NFE_ENVIADA, NFE_ESPECIE = :NEW_NFE_ESPECIE' +
        ', '
      
        '  NFE_ESTADO = :NEW_NFE_ESTADO, NFE_ESTADOCODIGO = :NEW_NFE_ESTA' +
        'DOCODIGO, '
      
        '  NFE_EXLOCAL = :NEW_NFE_EXLOCAL, NFE_EXPEDIDOPOR = :NEW_NFE_EXP' +
        'EDIDOPOR, '
      
        '  NFE_EXUFSAIDA = :NEW_NFE_EXUFSAIDA, NFE_FINALIDADE = :NEW_NFE_' +
        'FINALIDADE, '
      
        '  NFE_FONE1 = :NEW_NFE_FONE1, NFE_FORMAPAGTO = :NEW_NFE_FORMAPAG' +
        'TO, '
      
        '  NFE_FRETE = :NEW_NFE_FRETE, NFE_GOVERNAMENTAL = :NEW_NFE_GOVER' +
        'NAMENTAL, '
      '  NFE_GOVERNAMENTALALIQRED = :NEW_NFE_GOVERNAMENTALALIQRED, '
      
        '  NFE_GOVERNAMENTALOP = :NEW_NFE_GOVERNAMENTALOP, NFE_HRATUALIZA' +
        'CAO = :NEW_NFE_HRATUALIZACAO, '
      
        '  NFE_HRCADASTRO = :NEW_NFE_HRCADASTRO, NFE_IBSCREDPRES = :NEW_N' +
        'FE_IBSCREDPRES, '
      
        '  NFE_IBSCREDPRESSUS = :NEW_NFE_IBSCREDPRESSUS, NFE_IBSMONO = :N' +
        'EW_NFE_IBSMONO, '
      
        '  NFE_IBSMONORETENCAO = :NEW_NFE_IBSMONORETENCAO, NFE_IBSMONORET' +
        'IDO = :NEW_NFE_IBSMONORETIDO, '
      
        '  NFE_IBSMUNDEVOLUCAO = :NEW_NFE_IBSMUNDEVOLUCAO, NFE_IBSMUNDIFE' +
        'RIMENTO = :NEW_NFE_IBSMUNDIFERIMENTO, '
      
        '  NFE_IBSMUNVALOR = :NEW_NFE_IBSMUNVALOR, NFE_IBSUFDEVOLUCAO = :' +
        'NEW_NFE_IBSUFDEVOLUCAO, '
      
        '  NFE_IBSUFDIFERIMENTO = :NEW_NFE_IBSUFDIFERIMENTO, NFE_IBSUFVAL' +
        'OR = :NEW_NFE_IBSUFVALOR, '
      
        '  NFE_IBSVALOR = :NEW_NFE_IBSVALOR, NFE_IDESTRANGEIRO = :NEW_NFE' +
        '_IDESTRANGEIRO, '
      
        '  NFE_IE = :NEW_NFE_IE, NFE_INFOADICFISCO = :NEW_NFE_INFOADICFIS' +
        'CO, '
      
        '  NFE_INFOCOMPLEMENTAR = :NEW_NFE_INFOCOMPLEMENTAR, NFE_INTERMED' +
        'IADOR = :NEW_NFE_INTERMEDIADOR, '
      
        '  NFE_INTERMEDIADORCAD = :NEW_NFE_INTERMEDIADORCAD, NFE_INTERMED' +
        'IADORCNPJ = :NEW_NFE_INTERMEDIADORCNPJ, '
      '  NFE_LACRES = :NEW_NFE_LACRES, NFE_LOTE = :NEW_NFE_LOTE, '
      
        '  NFE_LUCROPORC = :NEW_NFE_LUCROPORC, NFE_LUCROVALOR = :NEW_NFE_' +
        'LUCROVALOR, '
      '  NFE_MANUAL = :NEW_NFE_MANUAL, NFE_MARCA = :NEW_NFE_MARCA, '
      
        '  NFE_MODELO = :NEW_NFE_MODELO, NFE_MOTIVOCANCELAMENTO = :NEW_NF' +
        'E_MOTIVOCANCELAMENTO, '
      
        '  NFE_MOTIVOINUTILIZACAO = :NEW_NFE_MOTIVOINUTILIZACAO, NFE_MOVI' +
        'MENTAESTOQUE = :NEW_NFE_MOVIMENTAESTOQUE, '
      '  NFE_MOVIMENTAFINANCEIRO = :NEW_NFE_MOVIMENTAFINANCEIRO, '
      
        '  NFE_NOME = :NEW_NFE_NOME, NFE_NOTACREDITO = :NEW_NFE_NOTACREDI' +
        'TO, '
      
        '  NFE_NOTADEBITO = :NEW_NFE_NOTADEBITO, NFE_NUMERO = :NEW_NFE_NU' +
        'MERO, '
      
        '  NFE_OBSERVACOES = :NEW_NFE_OBSERVACOES, NFE_PAIS = :NEW_NFE_PA' +
        'IS, '
      
        '  NFE_PAISCODIGO = :NEW_NFE_PAISCODIGO, NFE_PEDIDOCLIENTE = :NEW' +
        '_NFE_PEDIDOCLIENTE, '
      
        '  NFE_PESOBRUTO = :NEW_NFE_PESOBRUTO, NFE_PESOLIQ = :NEW_NFE_PES' +
        'OLIQ, '
      
        '  NFE_PROTOCOLO = :NEW_NFE_PROTOCOLO, NFE_PROTOCOLOCANC = :NEW_N' +
        'FE_PROTOCOLOCANC, '
      
        '  NFE_PROTOCOLOCANCDH = :NEW_NFE_PROTOCOLOCANCDH, NFE_PROTOCOLOD' +
        'H = :NEW_NFE_PROTOCOLODH, '
      
        '  NFE_PROTOCOLOINUT = :NEW_NFE_PROTOCOLOINUT, NFE_PROTOCOLOINUTD' +
        'H = :NEW_NFE_PROTOCOLOINUTDH, '
      
        '  NFE_REBOQUEPLACA = :NEW_NFE_REBOQUEPLACA, NFE_REBOQUEPLACAUF =' +
        ' :NEW_NFE_REBOQUEPLACAUF, '
      
        '  NFE_REBOQUERNTC = :NEW_NFE_REBOQUERNTC, NFE_RECIBO = :NEW_NFE_' +
        'RECIBO, '
      '  NFE_RECIBODH = :NEW_NFE_RECIBODH, NFE_RG = :NEW_NFE_RG, '
      
        '  NFE_SEQUENCIAITEM = :NEW_NFE_SEQUENCIAITEM, NFE_SERIE = :NEW_N' +
        'FE_SERIE, '
      '  NFE_STATUS = :NEW_NFE_STATUS, NFE_SUFRAMA = :NEW_NFE_SUFRAMA, '
      
        '  NFE_TABELAPRECO = :NEW_NFE_TABELAPRECO, NFE_TIPOATENDIMENTO = ' +
        ':NEW_NFE_TIPOATENDIMENTO, '
      
        '  NFE_TIPOCONSUMIDOR = :NEW_NFE_TIPOCONSUMIDOR, NFE_TIPOEMISSAO ' +
        '= :NEW_NFE_TIPOEMISSAO, '
      
        '  NFE_TIPOOPERACAO = :NEW_NFE_TIPOOPERACAO, NFE_TOTALADUANA = :N' +
        'EW_NFE_TOTALADUANA, '
      
        '  NFE_TOTALBRUTO = :NEW_NFE_TOTALBRUTO, NFE_TOTALCCE = :NEW_NFE_' +
        'TOTALCCE, '
      
        '  NFE_TOTALCOFINS = :NEW_NFE_TOTALCOFINS, NFE_TOTALCOFINSST = :N' +
        'EW_NFE_TOTALCOFINSST, '
      
        '  NFE_TOTALCOMISSAO = :NEW_NFE_TOTALCOMISSAO, NFE_TOTALFCP = :NE' +
        'W_NFE_TOTALFCP, '
      
        '  NFE_TOTALFCPST = :NEW_NFE_TOTALFCPST, NFE_TOTALICMS = :NEW_NFE' +
        '_TOTALICMS, '
      
        '  NFE_TOTALICMSCREDSN = :NEW_NFE_TOTALICMSCREDSN, NFE_TOTALICMSS' +
        'T = :NEW_NFE_TOTALICMSST, '
      
        '  NFE_TOTALICMSUFDEST = :NEW_NFE_TOTALICMSUFDEST, NFE_TOTALICMSU' +
        'FREMET = :NEW_NFE_TOTALICMSUFREMET, '
      
        '  NFE_TOTALII = :NEW_NFE_TOTALII, NFE_TOTALIOF = :NEW_NFE_TOTALI' +
        'OF, '
      
        '  NFE_TOTALIPI = :NEW_NFE_TOTALIPI, NFE_TOTALIS = :NEW_NFE_TOTAL' +
        'IS, '
      
        '  NFE_TOTALISS = :NEW_NFE_TOTALISS, NFE_TOTALISSDEDUCAO = :NEW_N' +
        'FE_TOTALISSDEDUCAO, '
      
        '  NFE_TOTALISSDESCCOND = :NEW_NFE_TOTALISSDESCCOND, NFE_TOTALISS' +
        'DESCINCOND = :NEW_NFE_TOTALISSDESCINCOND, '
      
        '  NFE_TOTALISSOUTROS = :NEW_NFE_TOTALISSOUTROS, NFE_TOTALISSRETE' +
        'NCAO = :NEW_NFE_TOTALISSRETENCAO, '
      
        '  NFE_TOTALITENS = :NEW_NFE_TOTALITENS, NFE_TOTALPIS = :NEW_NFE_' +
        'TOTALPIS, '
      
        '  NFE_TOTALPISST = :NEW_NFE_TOTALPISST, NFE_TOTALPRODUTOS = :NEW' +
        '_NFE_TOTALPRODUTOS, '
      
        '  NFE_TOTALSERVICOS = :NEW_NFE_TOTALSERVICOS, NFE_TOTALTRIBUTOS ' +
        '= :NEW_NFE_TOTALTRIBUTOS, '
      
        '  NFE_TOTALTRIBUTOSEST = :NEW_NFE_TOTALTRIBUTOSEST, NFE_TOTALTRI' +
        'BUTOSFED = :NEW_NFE_TOTALTRIBUTOSFED, '
      
        '  NFE_TOTALTRIBUTOSIMP = :NEW_NFE_TOTALTRIBUTOSIMP, NFE_TOTALTRI' +
        'BUTOSMUN = :NEW_NFE_TOTALTRIBUTOSMUN, '
      
        '  NFE_TRANSPCIDADE = :NEW_NFE_TRANSPCIDADE, NFE_TRANSPCNPJ = :NE' +
        'W_NFE_TRANSPCNPJ, '
      
        '  NFE_TRANSPCPF = :NEW_NFE_TRANSPCPF, NFE_TRANSPEMAIL = :NEW_NFE' +
        '_TRANSPEMAIL, '
      
        '  NFE_TRANSPENDERECO = :NEW_NFE_TRANSPENDERECO, NFE_TRANSPESTADO' +
        ' = :NEW_NFE_TRANSPESTADO, '
      
        '  NFE_TRANSPFONE = :NEW_NFE_TRANSPFONE, NFE_TRANSPIE = :NEW_NFE_' +
        'TRANSPIE, '
      
        '  NFE_TRANSPNOME = :NEW_NFE_TRANSPNOME, NFE_TRANSPORTADORA = :NE' +
        'W_NFE_TRANSPORTADORA, '
      
        '  NFE_USUARIO = :NEW_NFE_USUARIO, NFE_VALORDESPACES = :NEW_NFE_V' +
        'ALORDESPACES, '
      
        '  NFE_VALORFRETE = :NEW_NFE_VALORFRETE, NFE_VALORSEGURO = :NEW_N' +
        'FE_VALORSEGURO, '
      
        '  NFE_VALORTOTAL = :NEW_NFE_VALORTOTAL, NFE_VALORTOTALRTC = :NEW' +
        '_NFE_VALORTOTALRTC, '
      
        '  NFE_VEICULOPLACA = :NEW_NFE_VEICULOPLACA, NFE_VEICULOPLACAUF =' +
        ' :NEW_NFE_VEICULOPLACAUF, '
      
        '  NFE_VEICULORNTC = :NEW_NFE_VEICULORNTC, NFE_VENDA = :NEW_NFE_V' +
        'ENDA, '
      
        '  NFE_VENDEDOR = :NEW_NFE_VENDEDOR, NFE_VOLUMES = :NEW_NFE_VOLUM' +
        'ES, '
      '  NFE_VOLUMESNUM = :NEW_NFE_VOLUMESNUM'
      'WHERE NFE_CODIGO = :OLD_NFE_CODIGO'
      
        'RETURNING NFE_ALIQICMSCREDSN, NFE_BAIRRO, NFE_BAIXADATA, NFE_BAI' +
        'XAPOR, NFE_BASECOFINS, NFE_BASECOFINSST, NFE_BASEIBSCBS, NFE_BAS' +
        'EICMS, NFE_BASEICMSST, NFE_BASEII, NFE_BASEIPI, NFE_BASEIS, NFE_' +
        'BASEISS, NFE_BASEPIS, NFE_BASEPISST, NFE_CBSCREDPRES, NFE_CBSCRE' +
        'DPRESSUS, NFE_CBSDEVOLUCAO, NFE_CBSDIFERIMENTO, NFE_CBSMONO, NFE' +
        '_CBSMONORETENCAO, NFE_CBSMONORETIDO, NFE_CBSVALOR, NFE_CEP, NFE_' +
        'CFOP, NFE_CFOPDESC, NFE_CHAVEACESSO, NFE_CIDADE, NFE_CIDADECODIG' +
        'O, NFE_CLIENTE, NFE_CNPJ, NFE_CODIGO, NFE_CODIGONFE, NFE_CODIGON' +
        'UMERICO, NFE_COMISSAO, NFE_COMISSAOPOR, NFE_COMPLEMENTO, NFE_CON' +
        'DICAO, NFE_CONDICAOMEMO, NFE_CONSULTADA, NFE_CONTATO, NFE_CPF, N' +
        'FE_CUSTOTOTAL, NFE_DESCPORC, NFE_DESCPORCCLIENTE, NFE_DESCPORCCO' +
        'NDICAO, NFE_DESCVALOR, NFE_DESTACARIMPOSTOS, NFE_DIAPREFERENCIAL' +
        ', NFE_DPEC, NFE_DPECDH, NFE_DTATUALIZACAO, NFE_DTCADASTRO, NFE_D' +
        'TEMISSAO, NFE_DTPRESTSERVICO, NFE_DTSAIDA, NFE_ENDERECO, NFE_ENT' +
        'RADASAIDA, NFE_ENVIADA, NFE_ESPECIE, NFE_ESTADO, NFE_ESTADOCODIG' +
        'O, NFE_EXLOCAL, NFE_EXPEDIDOPOR, NFE_EXUFSAIDA, NFE_FINALIDADE, ' +
        'NFE_FONE1, NFE_FORMAPAGTO, NFE_FRETE, NFE_GOVERNAMENTAL, NFE_GOV' +
        'ERNAMENTALALIQRED, NFE_GOVERNAMENTALOP, NFE_HRATUALIZACAO, NFE_H' +
        'RCADASTRO, NFE_IBSCREDPRES, NFE_IBSCREDPRESSUS, NFE_IBSMONO, NFE' +
        '_IBSMONORETENCAO, NFE_IBSMONORETIDO, NFE_IBSMUNDEVOLUCAO, NFE_IB' +
        'SMUNDIFERIMENTO, NFE_IBSMUNVALOR, NFE_IBSUFDEVOLUCAO, NFE_IBSUFD' +
        'IFERIMENTO, NFE_IBSUFVALOR, NFE_IBSVALOR, NFE_IDESTRANGEIRO, NFE' +
        '_IE, NFE_INFOADICFISCO, NFE_INFOCOMPLEMENTAR, NFE_INTERMEDIADOR,' +
        ' NFE_INTERMEDIADORCAD, NFE_INTERMEDIADORCNPJ, NFE_LACRES, NFE_LO' +
        'TE, NFE_LUCROPORC, NFE_LUCROVALOR, NFE_MANUAL, NFE_MARCA, NFE_MO' +
        'DELO, NFE_MOTIVOCANCELAMENTO, NFE_MOTIVOINUTILIZACAO, NFE_MOVIME' +
        'NTAESTOQUE, NFE_MOVIMENTAFINANCEIRO, NFE_NOME, NFE_NOTACREDITO, ' +
        'NFE_NOTADEBITO, NFE_NUMERO, NFE_OBSERVACOES, NFE_PAIS, NFE_PAISC' +
        'ODIGO, NFE_PEDIDOCLIENTE, NFE_PESOBRUTO, NFE_PESOLIQ, NFE_PROTOC' +
        'OLO, NFE_PROTOCOLOCANC, NFE_PROTOCOLOCANCDH, NFE_PROTOCOLODH, NF' +
        'E_PROTOCOLOINUT, NFE_PROTOCOLOINUTDH, NFE_REBOQUEPLACA, NFE_REBO' +
        'QUEPLACAUF, NFE_REBOQUERNTC, NFE_RECIBO, NFE_RECIBODH, NFE_RG, N' +
        'FE_SEQUENCIAITEM, NFE_SERIE, NFE_STATUS, NFE_SUFRAMA, NFE_TABELA' +
        'PRECO, NFE_TIPOATENDIMENTO, NFE_TIPOCONSUMIDOR, NFE_TIPOEMISSAO,' +
        ' NFE_TIPOOPERACAO, NFE_TOTALADUANA, NFE_TOTALBRUTO, NFE_TOTALCCE' +
        ', NFE_TOTALCOFINS, NFE_TOTALCOFINSST, NFE_TOTALCOMISSAO, NFE_TOT' +
        'ALFCP, NFE_TOTALFCPST, NFE_TOTALICMS, NFE_TOTALICMSCREDSN, NFE_T' +
        'OTALICMSST, NFE_TOTALICMSUFDEST, NFE_TOTALICMSUFREMET, NFE_TOTAL' +
        'II, NFE_TOTALIOF, NFE_TOTALIPI, NFE_TOTALIS, NFE_TOTALISS, NFE_T' +
        'OTALISSDEDUCAO, NFE_TOTALISSDESCCOND, NFE_TOTALISSDESCINCOND, NF' +
        'E_TOTALISSOUTROS, NFE_TOTALISSRETENCAO, NFE_TOTALITENS, NFE_TOTA' +
        'LPIS, NFE_TOTALPISST, NFE_TOTALPRODUTOS, NFE_TOTALSERVICOS, NFE_' +
        'TOTALTRIBUTOS, NFE_TOTALTRIBUTOSEST, NFE_TOTALTRIBUTOSFED, NFE_T' +
        'OTALTRIBUTOSIMP, NFE_TOTALTRIBUTOSMUN, NFE_TRANSPCIDADE, NFE_TRA' +
        'NSPCNPJ, NFE_TRANSPCPF, NFE_TRANSPEMAIL, NFE_TRANSPENDERECO, NFE' +
        '_TRANSPESTADO, NFE_TRANSPFONE, NFE_TRANSPIE, NFE_TRANSPNOME, NFE' +
        '_TRANSPORTADORA, NFE_USUARIO, NFE_VALORDESPACES, NFE_VALORFRETE,' +
        ' NFE_VALORSEGURO, NFE_VALORTOTAL, NFE_VALORTOTALRTC, NFE_VEICULO' +
        'PLACA, NFE_VEICULOPLACAUF, NFE_VEICULORNTC, NFE_VENDA, NFE_VENDE' +
        'DOR, NFE_VOLUMES, NFE_VOLUMESNUM')
    DeleteSQL.Strings = (
      'DELETE FROM NFE'
      'WHERE NFE_CODIGO = :OLD_NFE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT NFE_ALIQICMSCREDSN, NFE_BAIRRO, NFE_BAIXADATA, NFE_BAIXAP' +
        'OR, '
      
        '  NFE_BASECOFINS, NFE_BASECOFINSST, NFE_BASEIBSCBS, NFE_BASEICMS' +
        ', '
      
        '  NFE_BASEICMSST, NFE_BASEII, NFE_BASEIPI, NFE_BASEIS, NFE_BASEI' +
        'SS, '
      
        '  NFE_BASEPIS, NFE_BASEPISST, NFE_CBSCREDPRES, NFE_CBSCREDPRESSU' +
        'S, '
      
        '  NFE_CBSDEVOLUCAO, NFE_CBSDIFERIMENTO, NFE_CBSMONO, NFE_CBSMONO' +
        'RETENCAO, '
      
        '  NFE_CBSMONORETIDO, NFE_CBSVALOR, NFE_CEP, NFE_CFOP, NFE_CFOPDE' +
        'SC, '
      '  NFE_CHAVEACESSO, NFE_CIDADE, NFE_CIDADECODIGO, NFE_CLIENTE, '
      '  NFE_CNPJ, NFE_CODIGO, NFE_CODIGONFE, NFE_CODIGONUMERICO, '
      '  NFE_COMISSAO, NFE_COMISSAOPOR, NFE_COMPLEMENTO, NFE_CONDICAO, '
      '  NFE_CONDICAOMEMO, NFE_CONSULTADA, NFE_CONTATO, NFE_CPF, '
      
        '  NFE_CUSTOTOTAL, NFE_DESCPORC, NFE_DESCPORCCLIENTE, NFE_DESCPOR' +
        'CCONDICAO, '
      '  NFE_DESCVALOR, NFE_DESTACARIMPOSTOS, NFE_DIAPREFERENCIAL, '
      '  NFE_DPEC, NFE_DPECDH, NFE_DTATUALIZACAO, NFE_DTCADASTRO, '
      '  NFE_DTEMISSAO, NFE_DTPRESTSERVICO, NFE_DTSAIDA, NFE_ENDERECO, '
      '  NFE_ENTRADASAIDA, NFE_ENVIADA, NFE_ESPECIE, NFE_ESTADO, '
      
        '  NFE_ESTADOCODIGO, NFE_EXLOCAL, NFE_EXPEDIDOPOR, NFE_EXUFSAIDA,' +
        ' '
      
        '  NFE_FINALIDADE, NFE_FONE1, NFE_FORMAPAGTO, NFE_FRETE, NFE_GOVE' +
        'RNAMENTAL, '
      
        '  NFE_GOVERNAMENTALALIQRED, NFE_GOVERNAMENTALOP, NFE_HRATUALIZAC' +
        'AO, '
      
        '  NFE_HRCADASTRO, NFE_IBSCREDPRES, NFE_IBSCREDPRESSUS, NFE_IBSMO' +
        'NO, '
      '  NFE_IBSMONORETENCAO, NFE_IBSMONORETIDO, NFE_IBSMUNDEVOLUCAO, '
      '  NFE_IBSMUNDIFERIMENTO, NFE_IBSMUNVALOR, NFE_IBSUFDEVOLUCAO, '
      
        '  NFE_IBSUFDIFERIMENTO, NFE_IBSUFVALOR, NFE_IBSVALOR, NFE_IDESTR' +
        'ANGEIRO, '
      
        '  NFE_IE, NFE_INFOADICFISCO, NFE_INFOCOMPLEMENTAR, NFE_INTERMEDI' +
        'ADOR, '
      '  NFE_INTERMEDIADORCAD, NFE_INTERMEDIADORCNPJ, NFE_LACRES, '
      
        '  NFE_LOTE, NFE_LUCROPORC, NFE_LUCROVALOR, NFE_MANUAL, NFE_MARCA' +
        ', '
      '  NFE_MODELO, NFE_MOTIVOCANCELAMENTO, NFE_MOTIVOINUTILIZACAO, '
      '  NFE_MOVIMENTAESTOQUE, NFE_MOVIMENTAFINANCEIRO, NFE_NOME, '
      '  NFE_NOTACREDITO, NFE_NOTADEBITO, NFE_NUMERO, NFE_OBSERVACOES, '
      '  NFE_PAIS, NFE_PAISCODIGO, NFE_PEDIDOCLIENTE, NFE_PESOBRUTO, '
      
        '  NFE_PESOLIQ, NFE_PROTOCOLO, NFE_PROTOCOLOCANC, NFE_PROTOCOLOCA' +
        'NCDH, '
      '  NFE_PROTOCOLODH, NFE_PROTOCOLOINUT, NFE_PROTOCOLOINUTDH, '
      
        '  NFE_REBOQUEPLACA, NFE_REBOQUEPLACAUF, NFE_REBOQUERNTC, NFE_REC' +
        'IBO, '
      
        '  NFE_RECIBODH, NFE_RG, NFE_SEQUENCIAITEM, NFE_SERIE, NFE_STATUS' +
        ', '
      
        '  NFE_SUFRAMA, NFE_TABELAPRECO, NFE_TIPOATENDIMENTO, NFE_TIPOCON' +
        'SUMIDOR, '
      
        '  NFE_TIPOEMISSAO, NFE_TIPOOPERACAO, NFE_TOTALADUANA, NFE_TOTALB' +
        'RUTO, '
      
        '  NFE_TOTALCCE, NFE_TOTALCOFINS, NFE_TOTALCOFINSST, NFE_TOTALCOM' +
        'ISSAO, '
      
        '  NFE_TOTALFCP, NFE_TOTALFCPST, NFE_TOTALICMS, NFE_TOTALICMSCRED' +
        'SN, '
      '  NFE_TOTALICMSST, NFE_TOTALICMSUFDEST, NFE_TOTALICMSUFREMET, '
      
        '  NFE_TOTALII, NFE_TOTALIOF, NFE_TOTALIPI, NFE_TOTALIS, NFE_TOTA' +
        'LISS, '
      
        '  NFE_TOTALISSDEDUCAO, NFE_TOTALISSDESCCOND, NFE_TOTALISSDESCINC' +
        'OND, '
      '  NFE_TOTALISSOUTROS, NFE_TOTALISSRETENCAO, NFE_TOTALITENS, '
      
        '  NFE_TOTALPIS, NFE_TOTALPISST, NFE_TOTALPRODUTOS, NFE_TOTALSERV' +
        'ICOS, '
      
        '  NFE_TOTALTRIBUTOS, NFE_TOTALTRIBUTOSEST, NFE_TOTALTRIBUTOSFED,' +
        ' '
      '  NFE_TOTALTRIBUTOSIMP, NFE_TOTALTRIBUTOSMUN, NFE_TRANSPCIDADE, '
      
        '  NFE_TRANSPCNPJ, NFE_TRANSPCPF, NFE_TRANSPEMAIL, NFE_TRANSPENDE' +
        'RECO, '
      
        '  NFE_TRANSPESTADO, NFE_TRANSPFONE, NFE_TRANSPIE, NFE_TRANSPNOME' +
        ', '
      
        '  NFE_TRANSPORTADORA, NFE_USUARIO, NFE_VALORDESPACES, NFE_VALORF' +
        'RETE, '
      
        '  NFE_VALORSEGURO, NFE_VALORTOTAL, NFE_VALORTOTALRTC, NFE_VEICUL' +
        'OPLACA, '
      '  NFE_VEICULOPLACAUF, NFE_VEICULORNTC, NFE_VENDA, NFE_VENDEDOR, '
      '  NFE_VOLUMES, NFE_VOLUMESNUM'
      'FROM NFE'
      'WHERE NFE_CODIGO = :OLD_NFE_CODIGO')
    Left = 64
    Top = 344
  end
  object TBNfeItens: TFDQuery
    Connection = FDConnection1
    Transaction = TRNfeItens
    UpdateObject = UPNfeItens
    SQL.Strings = (
      'select'
      'NFI_ALIQCBS,'
      'NFI_ALIQCBSCREDPRES,'
      'NFI_ALIQCBSDIF,'
      'NFI_ALIQCBSEFE,'
      'NFI_ALIQCBSRED,'
      'NFI_ALIQCOFINS,'
      'NFI_ALIQCOFINSST,'
      'NFI_ALIQFCP,'
      'NFI_ALIQFCPST,'
      'NFI_ALIQIBSCREDPRES,'
      'NFI_ALIQIBSMUN,'
      'NFI_ALIQIBSMUNDIF,'
      'NFI_ALIQIBSMUNEFE,'
      'NFI_ALIQIBSMUNRED,'
      'NFI_ALIQIBSUF,'
      'NFI_ALIQIBSUFDIF,'
      'NFI_ALIQIBSUFEFE,'
      'NFI_ALIQIBSUFRED,'
      'NFI_ALIQICMS,'
      'NFI_ALIQICMSADICST,'
      'NFI_ALIQICMSINTER,'
      'NFI_ALIQICMSINTERPART,'
      'NFI_ALIQICMSRED,'
      'NFI_ALIQICMSST,'
      'NFI_ALIQICMSSTRET,'
      'NFI_ALIQII,'
      'NFI_ALIQIPI,'
      'NFI_ALIQIS,'
      'NFI_ALIQISESP,'
      'NFI_ALIQISS,'
      'NFI_ALIQPIS,'
      'NFI_ALIQPISST,'
      'NFI_ALMOXARIFADO,'
      'NFI_BASECOFINS,'
      'NFI_BASECOFINSST,'
      'NFI_BASEIBSCBS,'
      'NFI_BASEICMS,'
      'NFI_BASEICMSRED,'
      'NFI_BASEICMSST,'
      'NFI_BASEICMSSTRET,'
      'NFI_BASEII,'
      'NFI_BASEIPI,'
      'NFI_BASEIS,'
      'NFI_BASEISS,'
      'NFI_BASEPIS,'
      'NFI_BASEPISST,'
      'NFI_BENEFICIO,'
      'NFI_CBSCREDITOPRES,'
      'NFI_CEST,'
      'NFI_CFOP,'
      'NFI_CIDADEISS,'
      'NFI_CLASSFISCAL,'
      'NFI_CLASSTRIBIBSCBS,'
      'NFI_CLASSTRIBIS,'
      'NFI_CODIGO,'
      'NFI_CODIGOBARRAS,'
      'NFI_CODIGOFAB,'
      'NFI_COMISSAO,'
      'NFI_COMPLEMENTO,'
      'NFI_COMPOEBASEICMS,'
      'NFI_COMPOEBASEICMSST,'
      'NFI_COMPOETOTAL,'
      'NFI_CONVERSAO,'
      'NFI_CSTCOFINS,'
      'NFI_CSTIBSCBS,'
      'NFI_CSTICMS,'
      'NFI_CSTIPI,'
      'NFI_CSTIS,'
      'NFI_CSTPIS,'
      'NFI_DESCMAX,'
      'NFI_DESCPORC,'
      'NFI_DESCRICAO,'
      'NFI_DESCVALOR,'
      'NFI_DESONERACAO,'
      'NFI_DFEREF,'
      'NFI_DFEREFITEM,'
      'NFI_DICNPJ,'
      'NFI_DIDATA,'
      'NFI_DIDESEMBARACODATA,'
      'NFI_DIDESEMBARACOLOCAL,'
      'NFI_DIDESEMBARACOUF,'
      'NFI_DIEXPORTADORCOD,'
      'NFI_DIINTERMEDIO,'
      'NFI_DINUMERO,'
      'NFI_DITERCEIROUF,'
      'NFI_DITRANSPORTE,'
      'NFI_DIVALORAFRMM,'
      'NFI_ENQUADRAMENTOIPI,'
      'NFI_EXCECAO,'
      'NFI_EXCHAVEACESSO,'
      'NFI_EXDRAWBACK,'
      'NFI_EXQUANTIDADE,'
      'NFI_EXREGISTRO,'
      'NFI_FCI,'
      'NFI_IBSCREDITOPRES,'
      'NFI_INCENTIVOISS,'
      'NFI_INDICADORISS,'
      'NFI_INFOADICIONAL,'
      'NFI_LOCALIZACAO,'
      'NFI_LOTE,'
      'NFI_LUCROPORC,'
      'NFI_LUCROVALOR,'
      'NFI_MODICMS,'
      'NFI_MODICMSST,'
      'NFI_NOTA,'
      'NFI_ORIGEM,'
      'NFI_PAISISS,'
      'NFI_PEDIDOCLIENTE,'
      'NFI_PEDIDOCLIENTEITEM,'
      'NFI_PESO,'
      'NFI_PESOTOTAL,'
      'NFI_PRECOCUSTO,'
      'NFI_PRECOCUSTOTOTAL,'
      'NFI_PROCESSOISS,'
      'NFI_PRODUTO,'
      'NFI_PRODUTOREAL,'
      'NFI_QUANTIDADE,'
      'NFI_QUANTIDADETROCA,'
      'NFI_SEQUENCIA,'
      'NFI_SERVICOISS,'
      'NFI_SOMACOFINSST,'
      'NFI_SOMAPISST,'
      'NFI_TIPO,'
      'NFI_TIPOISS,'
      'NFI_UNIDADE,'
      'NFI_VALORACESSORIAS,'
      'NFI_VALORADUANA,'
      'NFI_VALORCBS,'
      'NFI_VALORCBSCREDPRES,'
      'NFI_VALORCBSCREDPRESSUS,'
      'NFI_VALORCBSDEV,'
      'NFI_VALORCBSDIF,'
      'NFI_VALORCOFINS,'
      'NFI_VALORCOFINSST,'
      'NFI_VALORCOMISSAO,'
      'NFI_VALORFCP,'
      'NFI_VALORFCPST,'
      'NFI_VALORFRETE,'
      'NFI_VALORIBS,'
      'NFI_VALORIBSCREDPRES,'
      'NFI_VALORIBSCREDPRESSUS,'
      'NFI_VALORIBSMUN,'
      'NFI_VALORIBSMUNDEV,'
      'NFI_VALORIBSMUNDIF,'
      'NFI_VALORIBSUF,'
      'NFI_VALORIBSUFDEV,'
      'NFI_VALORIBSUFDIF,'
      'NFI_VALORICMS,'
      'NFI_VALORICMSCREDSN,'
      'NFI_VALORICMSDESONERADO,'
      'NFI_VALORICMSST,'
      'NFI_VALORICMSSTRET,'
      'NFI_VALORICMSSUBSTITUTO,'
      'NFI_VALORICMSUFDEST,'
      'NFI_VALORICMSUFREMET,'
      'NFI_VALORII,'
      'NFI_VALORIOF,'
      'NFI_VALORIPI,'
      'NFI_VALORIS,'
      'NFI_VALORISS,'
      'NFI_VALORISSDEDUCAO,'
      'NFI_VALORISSDESCCOND,'
      'NFI_VALORISSDESCINCOND,'
      'NFI_VALORISSOUTROS,'
      'NFI_VALORISSRETENCAO,'
      'NFI_VALORPIS,'
      'NFI_VALORPISST,'
      'NFI_VALORSEGURO,'
      'NFI_VALORTOTAL,'
      'NFI_VALORTOTALBRUTO,'
      'NFI_VALORTRIBUTOS,'
      'NFI_VALORTRIBUTOSEST,'
      'NFI_VALORTRIBUTOSFED,'
      'NFI_VALORTRIBUTOSIMP,'
      'NFI_VALORTRIBUTOSMUN,'
      'NFI_VALORUNIT,'
      'ALM_DESCRICAO,'
      'CLF_DESCRICAO,'
      'ICM_CALCULACREDITOSN,'
      'ICM_DESCRICAO,'
      'IPI_DESCRICAO,'
      'ISS_DESCRICAO,'
      'NAT_CALCULACOMISSAO,'
      'NAT_CALCULACREDITOSN,'
      'NAT_DESCRICAO,'
      'NAT_INFORMADIFAL,'
      'PIS.PIS_DESCRICAO as PIS_DESCRICAO,'
      'COFINS.PIS_DESCRICAO as PIS_DESCRICAO1,'
      'PRO_CLASSFISCAL,'
      'PRO_CODIGO,'
      'PRO_CODIGOBARRAS,'
      'PRO_CSTICMS,'
      'PRO_NOME,'
      'PRO_PRECOVENDA,'
      'PRO_TIPO,'
      'PRO_UNIDADE,'
      'CLASSTRIBIBSCBS.CLT_DESCRICAO as CLT_DESCRICAO,'
      'CLASSTRIBIS.CLT_DESCRICAO as CLT_DESCRICAO1'
      'from NFEITENS '
      'left join PRODUTOS on NFI_PRODUTO=PRO_CODIGO'
      'left join ALMOXARIFADOS on NFI_ALMOXARIFADO=ALM_CODIGO'
      'left join NATUREZAS on NFI_CFOP=NAT_CODIGO'
      
        'left join CLASSFISCAL on NFI_CLASSFISCAL=CLF_CODIGO and NFI_EXCE' +
        'CAO=CLF_EXCECAO'
      'left join ICMS on NFI_CSTICMS=ICM_CODIGO'
      'left join IPI on NFI_CSTIPI=IPI_CODIGO'
      'left join ISS on NFI_TIPOISS=ISS_CODIGO'
      'left join PISCOFINS as PIS on NFI_CSTPIS=PIS.PIS_CODIGO'
      'left join PISCOFINS as COFINS on NFI_CSTCOFINS=COFINS.PIS_CODIGO'
      
        'left join CLASSTRIB as CLASSTRIBIBSCBS on NFI_CLASSTRIBIBSCBS=CL' +
        'ASSTRIBIBSCBS.CLT_CODIGO'
      
        'left join CLASSTRIB as CLASSTRIBIS on NFI_CLASSTRIBIS=CLASSTRIBI' +
        'S.CLT_CODIGO '
      'where NFI_NOTA=:NFE_CODIGO'
      'order by NFI_SEQUENCIA')
    Left = 96
    Top = 296
    ParamData = <
      item
        Name = 'NFE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBNfeItensNFI_ALIQCBS: TFMTBCDField
      FieldName = 'NFI_ALIQCBS'
      Origin = 'NFI_ALIQCBS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCBSCREDPRES: TFMTBCDField
      FieldName = 'NFI_ALIQCBSCREDPRES'
      Origin = 'NFI_ALIQCBSCREDPRES'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCBSDIF: TFMTBCDField
      FieldName = 'NFI_ALIQCBSDIF'
      Origin = 'NFI_ALIQCBSDIF'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCBSEFE: TFMTBCDField
      FieldName = 'NFI_ALIQCBSEFE'
      Origin = 'NFI_ALIQCBSEFE'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCBSRED: TFMTBCDField
      FieldName = 'NFI_ALIQCBSRED'
      Origin = 'NFI_ALIQCBSRED'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCOFINS: TFMTBCDField
      FieldName = 'NFI_ALIQCOFINS'
      Origin = 'NFI_ALIQCOFINS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQCOFINSST: TFMTBCDField
      FieldName = 'NFI_ALIQCOFINSST'
      Origin = 'NFI_ALIQCOFINSST'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQFCP: TFMTBCDField
      FieldName = 'NFI_ALIQFCP'
      Origin = 'NFI_ALIQFCP'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQFCPST: TFMTBCDField
      FieldName = 'NFI_ALIQFCPST'
      Origin = 'NFI_ALIQFCPST'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSCREDPRES: TFMTBCDField
      FieldName = 'NFI_ALIQIBSCREDPRES'
      Origin = 'NFI_ALIQIBSCREDPRES'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSMUN: TFMTBCDField
      FieldName = 'NFI_ALIQIBSMUN'
      Origin = 'NFI_ALIQIBSMUN'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSMUNDIF: TFMTBCDField
      FieldName = 'NFI_ALIQIBSMUNDIF'
      Origin = 'NFI_ALIQIBSMUNDIF'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSMUNEFE: TFMTBCDField
      FieldName = 'NFI_ALIQIBSMUNEFE'
      Origin = 'NFI_ALIQIBSMUNEFE'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSMUNRED: TFMTBCDField
      FieldName = 'NFI_ALIQIBSMUNRED'
      Origin = 'NFI_ALIQIBSMUNRED'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSUF: TFMTBCDField
      FieldName = 'NFI_ALIQIBSUF'
      Origin = 'NFI_ALIQIBSUF'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSUFDIF: TFMTBCDField
      FieldName = 'NFI_ALIQIBSUFDIF'
      Origin = 'NFI_ALIQIBSUFDIF'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSUFEFE: TFMTBCDField
      FieldName = 'NFI_ALIQIBSUFEFE'
      Origin = 'NFI_ALIQIBSUFEFE'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIBSUFRED: TFMTBCDField
      FieldName = 'NFI_ALIQIBSUFRED'
      Origin = 'NFI_ALIQIBSUFRED'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMS: TFMTBCDField
      FieldName = 'NFI_ALIQICMS'
      Origin = 'NFI_ALIQICMS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSADICST: TFMTBCDField
      FieldName = 'NFI_ALIQICMSADICST'
      Origin = 'NFI_ALIQICMSADICST'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSINTER: TFMTBCDField
      FieldName = 'NFI_ALIQICMSINTER'
      Origin = 'NFI_ALIQICMSINTER'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'NFI_ALIQICMSINTERPART'
      Origin = 'NFI_ALIQICMSINTERPART'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSRED: TFMTBCDField
      FieldName = 'NFI_ALIQICMSRED'
      Origin = 'NFI_ALIQICMSRED'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSST: TFMTBCDField
      FieldName = 'NFI_ALIQICMSST'
      Origin = 'NFI_ALIQICMSST'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQICMSSTRET: TFMTBCDField
      FieldName = 'NFI_ALIQICMSSTRET'
      Origin = 'NFI_ALIQICMSSTRET'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQII: TFMTBCDField
      FieldName = 'NFI_ALIQII'
      Origin = 'NFI_ALIQII'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIPI: TFMTBCDField
      FieldName = 'NFI_ALIQIPI'
      Origin = 'NFI_ALIQIPI'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQIS: TFMTBCDField
      FieldName = 'NFI_ALIQIS'
      Origin = 'NFI_ALIQIS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQISESP: TFMTBCDField
      FieldName = 'NFI_ALIQISESP'
      Origin = 'NFI_ALIQISESP'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQISS: TFMTBCDField
      FieldName = 'NFI_ALIQISS'
      Origin = 'NFI_ALIQISS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQPIS: TFMTBCDField
      FieldName = 'NFI_ALIQPIS'
      Origin = 'NFI_ALIQPIS'
      Precision = 18
    end
    object TBNfeItensNFI_ALIQPISST: TFMTBCDField
      FieldName = 'NFI_ALIQPISST'
      Origin = 'NFI_ALIQPISST'
      Precision = 18
    end
    object TBNfeItensNFI_ALMOXARIFADO: TIntegerField
      FieldName = 'NFI_ALMOXARIFADO'
      Origin = 'NFI_ALMOXARIFADO'
      Required = True
    end
    object TBNfeItensNFI_BASECOFINS: TFMTBCDField
      FieldName = 'NFI_BASECOFINS'
      Origin = 'NFI_BASECOFINS'
      Precision = 18
    end
    object TBNfeItensNFI_BASECOFINSST: TFMTBCDField
      FieldName = 'NFI_BASECOFINSST'
      Origin = 'NFI_BASECOFINSST'
      Precision = 18
    end
    object TBNfeItensNFI_BASEIBSCBS: TFMTBCDField
      FieldName = 'NFI_BASEIBSCBS'
      Origin = 'NFI_BASEIBSCBS'
      Precision = 18
    end
    object TBNfeItensNFI_BASEICMS: TFMTBCDField
      FieldName = 'NFI_BASEICMS'
      Origin = 'NFI_BASEICMS'
      Precision = 18
    end
    object TBNfeItensNFI_BASEICMSRED: TFMTBCDField
      FieldName = 'NFI_BASEICMSRED'
      Origin = 'NFI_BASEICMSRED'
      Precision = 18
    end
    object TBNfeItensNFI_BASEICMSST: TFMTBCDField
      FieldName = 'NFI_BASEICMSST'
      Origin = 'NFI_BASEICMSST'
      Precision = 18
    end
    object TBNfeItensNFI_BASEICMSSTRET: TFMTBCDField
      FieldName = 'NFI_BASEICMSSTRET'
      Origin = 'NFI_BASEICMSSTRET'
      Precision = 18
    end
    object TBNfeItensNFI_BASEII: TFMTBCDField
      FieldName = 'NFI_BASEII'
      Origin = 'NFI_BASEII'
      Precision = 18
    end
    object TBNfeItensNFI_BASEIPI: TFMTBCDField
      FieldName = 'NFI_BASEIPI'
      Origin = 'NFI_BASEIPI'
      Precision = 18
    end
    object TBNfeItensNFI_BASEIS: TFMTBCDField
      FieldName = 'NFI_BASEIS'
      Origin = 'NFI_BASEIS'
      Precision = 18
    end
    object TBNfeItensNFI_BASEISS: TFMTBCDField
      FieldName = 'NFI_BASEISS'
      Origin = 'NFI_BASEISS'
      Precision = 18
    end
    object TBNfeItensNFI_BASEPIS: TFMTBCDField
      FieldName = 'NFI_BASEPIS'
      Origin = 'NFI_BASEPIS'
      Precision = 18
    end
    object TBNfeItensNFI_BASEPISST: TFMTBCDField
      FieldName = 'NFI_BASEPISST'
      Origin = 'NFI_BASEPISST'
      Precision = 18
    end
    object TBNfeItensNFI_BENEFICIO: TStringField
      FieldName = 'NFI_BENEFICIO'
      Origin = 'NFI_BENEFICIO'
    end
    object TBNfeItensNFI_CBSCREDITOPRES: TIntegerField
      FieldName = 'NFI_CBSCREDITOPRES'
      Origin = 'NFI_CBSCREDITOPRES'
    end
    object TBNfeItensNFI_CEST: TStringField
      FieldName = 'NFI_CEST'
      Origin = 'NFI_CEST'
    end
    object TBNfeItensNFI_CFOP: TIntegerField
      FieldName = 'NFI_CFOP'
      Origin = 'NFI_CFOP'
    end
    object TBNfeItensNFI_CIDADEISS: TIntegerField
      FieldName = 'NFI_CIDADEISS'
      Origin = 'NFI_CIDADEISS'
    end
    object TBNfeItensNFI_CLASSFISCAL: TStringField
      FieldName = 'NFI_CLASSFISCAL'
      Origin = 'NFI_CLASSFISCAL'
    end
    object TBNfeItensNFI_CLASSTRIBIBSCBS: TStringField
      FieldName = 'NFI_CLASSTRIBIBSCBS'
      Origin = 'NFI_CLASSTRIBIBSCBS'
      Size = 15
    end
    object TBNfeItensNFI_CLASSTRIBIS: TStringField
      FieldName = 'NFI_CLASSTRIBIS'
      Origin = 'NFI_CLASSTRIBIS'
      Size = 15
    end
    object TBNfeItensNFI_CODIGO: TIntegerField
      FieldName = 'NFI_CODIGO'
      Origin = 'NFI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBNfeItensNFI_CODIGOBARRAS: TStringField
      FieldName = 'NFI_CODIGOBARRAS'
      Origin = 'NFI_CODIGOBARRAS'
      Size = 60
    end
    object TBNfeItensNFI_CODIGOFAB: TStringField
      FieldName = 'NFI_CODIGOFAB'
      Origin = 'NFI_CODIGOFAB'
    end
    object TBNfeItensNFI_COMISSAO: TFMTBCDField
      FieldName = 'NFI_COMISSAO'
      Origin = 'NFI_COMISSAO'
      Precision = 18
    end
    object TBNfeItensNFI_COMPLEMENTO: TStringField
      FieldName = 'NFI_COMPLEMENTO'
      Origin = 'NFI_COMPLEMENTO'
      Size = 50
    end
    object TBNfeItensNFI_COMPOEBASEICMS: TStringField
      FieldName = 'NFI_COMPOEBASEICMS'
      Origin = 'NFI_COMPOEBASEICMS'
      Size = 1
    end
    object TBNfeItensNFI_COMPOEBASEICMSST: TStringField
      FieldName = 'NFI_COMPOEBASEICMSST'
      Origin = 'NFI_COMPOEBASEICMSST'
      Size = 1
    end
    object TBNfeItensNFI_COMPOETOTAL: TStringField
      FieldName = 'NFI_COMPOETOTAL'
      Origin = 'NFI_COMPOETOTAL'
      Size = 1
    end
    object TBNfeItensNFI_CONVERSAO: TFMTBCDField
      FieldName = 'NFI_CONVERSAO'
      Origin = 'NFI_CONVERSAO'
      Precision = 18
    end
    object TBNfeItensNFI_CSTCOFINS: TIntegerField
      FieldName = 'NFI_CSTCOFINS'
      Origin = 'NFI_CSTCOFINS'
    end
    object TBNfeItensNFI_CSTIBSCBS: TStringField
      FieldName = 'NFI_CSTIBSCBS'
      Origin = 'NFI_CSTIBSCBS'
      Size = 15
    end
    object TBNfeItensNFI_CSTICMS: TIntegerField
      FieldName = 'NFI_CSTICMS'
      Origin = 'NFI_CSTICMS'
    end
    object TBNfeItensNFI_CSTIPI: TIntegerField
      FieldName = 'NFI_CSTIPI'
      Origin = 'NFI_CSTIPI'
    end
    object TBNfeItensNFI_CSTIS: TStringField
      FieldName = 'NFI_CSTIS'
      Origin = 'NFI_CSTIS'
      Size = 15
    end
    object TBNfeItensNFI_CSTPIS: TIntegerField
      FieldName = 'NFI_CSTPIS'
      Origin = 'NFI_CSTPIS'
    end
    object TBNfeItensNFI_DESCMAX: TFMTBCDField
      FieldName = 'NFI_DESCMAX'
      Origin = 'NFI_DESCMAX'
      Precision = 18
    end
    object TBNfeItensNFI_DESCPORC: TFMTBCDField
      FieldName = 'NFI_DESCPORC'
      Origin = 'NFI_DESCPORC'
      Precision = 18
    end
    object TBNfeItensNFI_DESCRICAO: TStringField
      FieldName = 'NFI_DESCRICAO'
      Origin = 'NFI_DESCRICAO'
      Size = 100
    end
    object TBNfeItensNFI_DESCVALOR: TFMTBCDField
      FieldName = 'NFI_DESCVALOR'
      Origin = 'NFI_DESCVALOR'
      Precision = 18
    end
    object TBNfeItensNFI_DESONERACAO: TStringField
      FieldName = 'NFI_DESONERACAO'
      Origin = 'NFI_DESONERACAO'
      Size = 80
    end
    object TBNfeItensNFI_DFEREF: TStringField
      FieldName = 'NFI_DFEREF'
      Origin = 'NFI_DFEREF'
      Size = 50
    end
    object TBNfeItensNFI_DFEREFITEM: TIntegerField
      FieldName = 'NFI_DFEREFITEM'
      Origin = 'NFI_DFEREFITEM'
    end
    object TBNfeItensNFI_DICNPJ: TStringField
      FieldName = 'NFI_DICNPJ'
      Origin = 'NFI_DICNPJ'
    end
    object TBNfeItensNFI_DIDATA: TDateField
      FieldName = 'NFI_DIDATA'
      Origin = 'NFI_DIDATA'
    end
    object TBNfeItensNFI_DIDESEMBARACODATA: TDateField
      FieldName = 'NFI_DIDESEMBARACODATA'
      Origin = 'NFI_DIDESEMBARACODATA'
    end
    object TBNfeItensNFI_DIDESEMBARACOLOCAL: TStringField
      FieldName = 'NFI_DIDESEMBARACOLOCAL'
      Origin = 'NFI_DIDESEMBARACOLOCAL'
      Size = 80
    end
    object TBNfeItensNFI_DIDESEMBARACOUF: TStringField
      FieldName = 'NFI_DIDESEMBARACOUF'
      Origin = 'NFI_DIDESEMBARACOUF'
      Size = 2
    end
    object TBNfeItensNFI_DIEXPORTADORCOD: TStringField
      FieldName = 'NFI_DIEXPORTADORCOD'
      Origin = 'NFI_DIEXPORTADORCOD'
      Size = 50
    end
    object TBNfeItensNFI_DIINTERMEDIO: TStringField
      FieldName = 'NFI_DIINTERMEDIO'
      Origin = 'NFI_DIINTERMEDIO'
      Size = 35
    end
    object TBNfeItensNFI_DINUMERO: TStringField
      FieldName = 'NFI_DINUMERO'
      Origin = 'NFI_DINUMERO'
      Size = 10
    end
    object TBNfeItensNFI_DITERCEIROUF: TStringField
      FieldName = 'NFI_DITERCEIROUF'
      Origin = 'NFI_DITERCEIROUF'
      Size = 2
    end
    object TBNfeItensNFI_DITRANSPORTE: TStringField
      FieldName = 'NFI_DITRANSPORTE'
      Origin = 'NFI_DITRANSPORTE'
      Size = 30
    end
    object TBNfeItensNFI_DIVALORAFRMM: TFMTBCDField
      FieldName = 'NFI_DIVALORAFRMM'
      Origin = 'NFI_DIVALORAFRMM'
      Precision = 18
    end
    object TBNfeItensNFI_ENQUADRAMENTOIPI: TIntegerField
      FieldName = 'NFI_ENQUADRAMENTOIPI'
      Origin = 'NFI_ENQUADRAMENTOIPI'
    end
    object TBNfeItensNFI_EXCECAO: TIntegerField
      FieldName = 'NFI_EXCECAO'
      Origin = 'NFI_EXCECAO'
    end
    object TBNfeItensNFI_EXCHAVEACESSO: TStringField
      FieldName = 'NFI_EXCHAVEACESSO'
      Origin = 'NFI_EXCHAVEACESSO'
      Size = 50
    end
    object TBNfeItensNFI_EXDRAWBACK: TStringField
      FieldName = 'NFI_EXDRAWBACK'
      Origin = 'NFI_EXDRAWBACK'
      Size = 15
    end
    object TBNfeItensNFI_EXQUANTIDADE: TFMTBCDField
      FieldName = 'NFI_EXQUANTIDADE'
      Origin = 'NFI_EXQUANTIDADE'
      Precision = 18
    end
    object TBNfeItensNFI_EXREGISTRO: TStringField
      FieldName = 'NFI_EXREGISTRO'
      Origin = 'NFI_EXREGISTRO'
      Size = 15
    end
    object TBNfeItensNFI_FCI: TStringField
      FieldName = 'NFI_FCI'
      Origin = 'NFI_FCI'
      Size = 40
    end
    object TBNfeItensNFI_IBSCREDITOPRES: TIntegerField
      FieldName = 'NFI_IBSCREDITOPRES'
      Origin = 'NFI_IBSCREDITOPRES'
    end
    object TBNfeItensNFI_INCENTIVOISS: TStringField
      FieldName = 'NFI_INCENTIVOISS'
      Origin = 'NFI_INCENTIVOISS'
      Size = 1
    end
    object TBNfeItensNFI_INDICADORISS: TStringField
      FieldName = 'NFI_INDICADORISS'
      Origin = 'NFI_INDICADORISS'
      Size = 50
    end
    object TBNfeItensNFI_INFOADICIONAL: TMemoField
      FieldName = 'NFI_INFOADICIONAL'
      Origin = 'NFI_INFOADICIONAL'
      BlobType = ftMemo
    end
    object TBNfeItensNFI_LOCALIZACAO: TStringField
      FieldName = 'NFI_LOCALIZACAO'
      Origin = 'NFI_LOCALIZACAO'
    end
    object TBNfeItensNFI_LOTE: TStringField
      FieldName = 'NFI_LOTE'
      Origin = 'NFI_LOTE'
    end
    object TBNfeItensNFI_LUCROPORC: TFMTBCDField
      FieldName = 'NFI_LUCROPORC'
      Origin = 'NFI_LUCROPORC'
      Precision = 18
    end
    object TBNfeItensNFI_LUCROVALOR: TFMTBCDField
      FieldName = 'NFI_LUCROVALOR'
      Origin = 'NFI_LUCROVALOR'
      Precision = 18
    end
    object TBNfeItensNFI_MODICMS: TStringField
      FieldName = 'NFI_MODICMS'
      Origin = 'NFI_MODICMS'
      Size = 40
    end
    object TBNfeItensNFI_MODICMSST: TStringField
      FieldName = 'NFI_MODICMSST'
      Origin = 'NFI_MODICMSST'
      Size = 40
    end
    object TBNfeItensNFI_NOTA: TIntegerField
      FieldName = 'NFI_NOTA'
      Origin = 'NFI_NOTA'
      Required = True
    end
    object TBNfeItensNFI_ORIGEM: TStringField
      FieldName = 'NFI_ORIGEM'
      Origin = 'NFI_ORIGEM'
      Size = 120
    end
    object TBNfeItensNFI_PAISISS: TIntegerField
      FieldName = 'NFI_PAISISS'
      Origin = 'NFI_PAISISS'
    end
    object TBNfeItensNFI_PEDIDOCLIENTE: TStringField
      FieldName = 'NFI_PEDIDOCLIENTE'
      Origin = 'NFI_PEDIDOCLIENTE'
      Size = 15
    end
    object TBNfeItensNFI_PEDIDOCLIENTEITEM: TIntegerField
      FieldName = 'NFI_PEDIDOCLIENTEITEM'
      Origin = 'NFI_PEDIDOCLIENTEITEM'
    end
    object TBNfeItensNFI_PESO: TFMTBCDField
      FieldName = 'NFI_PESO'
      Origin = 'NFI_PESO'
      Precision = 18
      Size = 3
    end
    object TBNfeItensNFI_PESOTOTAL: TFMTBCDField
      FieldName = 'NFI_PESOTOTAL'
      Origin = 'NFI_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object TBNfeItensNFI_PRECOCUSTO: TFMTBCDField
      FieldName = 'NFI_PRECOCUSTO'
      Origin = 'NFI_PRECOCUSTO'
      Precision = 18
    end
    object TBNfeItensNFI_PRECOCUSTOTOTAL: TFMTBCDField
      FieldName = 'NFI_PRECOCUSTOTOTAL'
      Origin = 'NFI_PRECOCUSTOTOTAL'
      Precision = 18
    end
    object TBNfeItensNFI_PROCESSOISS: TStringField
      FieldName = 'NFI_PROCESSOISS'
      Origin = 'NFI_PROCESSOISS'
      Size = 30
    end
    object TBNfeItensNFI_PRODUTO: TIntegerField
      FieldName = 'NFI_PRODUTO'
      Origin = 'NFI_PRODUTO'
      Required = True
    end
    object TBNfeItensNFI_PRODUTOREAL: TIntegerField
      FieldName = 'NFI_PRODUTOREAL'
      Origin = 'NFI_PRODUTOREAL'
    end
    object TBNfeItensNFI_QUANTIDADE: TFMTBCDField
      FieldName = 'NFI_QUANTIDADE'
      Origin = 'NFI_QUANTIDADE'
      Precision = 18
    end
    object TBNfeItensNFI_QUANTIDADETROCA: TFMTBCDField
      FieldName = 'NFI_QUANTIDADETROCA'
      Origin = 'NFI_QUANTIDADETROCA'
      Precision = 18
    end
    object TBNfeItensNFI_SEQUENCIA: TIntegerField
      FieldName = 'NFI_SEQUENCIA'
      Origin = 'NFI_SEQUENCIA'
    end
    object TBNfeItensNFI_SERVICOISS: TStringField
      FieldName = 'NFI_SERVICOISS'
      Origin = 'NFI_SERVICOISS'
    end
    object TBNfeItensNFI_SOMACOFINSST: TStringField
      FieldName = 'NFI_SOMACOFINSST'
      Origin = 'NFI_SOMACOFINSST'
      Size = 1
    end
    object TBNfeItensNFI_SOMAPISST: TStringField
      FieldName = 'NFI_SOMAPISST'
      Origin = 'NFI_SOMAPISST'
      Size = 1
    end
    object TBNfeItensNFI_TIPO: TStringField
      FieldName = 'NFI_TIPO'
      Origin = 'NFI_TIPO'
      Size = 1
    end
    object TBNfeItensNFI_TIPOISS: TStringField
      FieldName = 'NFI_TIPOISS'
      Origin = 'NFI_TIPOISS'
      Size = 15
    end
    object TBNfeItensNFI_UNIDADE: TStringField
      FieldName = 'NFI_UNIDADE'
      Origin = 'NFI_UNIDADE'
      Size = 3
    end
    object TBNfeItensNFI_VALORACESSORIAS: TFMTBCDField
      FieldName = 'NFI_VALORACESSORIAS'
      Origin = 'NFI_VALORACESSORIAS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORADUANA: TFMTBCDField
      FieldName = 'NFI_VALORADUANA'
      Origin = 'NFI_VALORADUANA'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCBS: TFMTBCDField
      FieldName = 'NFI_VALORCBS'
      Origin = 'NFI_VALORCBS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCBSCREDPRES: TFMTBCDField
      FieldName = 'NFI_VALORCBSCREDPRES'
      Origin = 'NFI_VALORCBSCREDPRES'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCBSCREDPRESSUS: TFMTBCDField
      FieldName = 'NFI_VALORCBSCREDPRESSUS'
      Origin = 'NFI_VALORCBSCREDPRESSUS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCBSDEV: TFMTBCDField
      FieldName = 'NFI_VALORCBSDEV'
      Origin = 'NFI_VALORCBSDEV'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCBSDIF: TFMTBCDField
      FieldName = 'NFI_VALORCBSDIF'
      Origin = 'NFI_VALORCBSDIF'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCOFINS: TFMTBCDField
      FieldName = 'NFI_VALORCOFINS'
      Origin = 'NFI_VALORCOFINS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCOFINSST: TFMTBCDField
      FieldName = 'NFI_VALORCOFINSST'
      Origin = 'NFI_VALORCOFINSST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORCOMISSAO: TFMTBCDField
      FieldName = 'NFI_VALORCOMISSAO'
      Origin = 'NFI_VALORCOMISSAO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORFCP: TFMTBCDField
      FieldName = 'NFI_VALORFCP'
      Origin = 'NFI_VALORFCP'
      Precision = 18
    end
    object TBNfeItensNFI_VALORFCPST: TFMTBCDField
      FieldName = 'NFI_VALORFCPST'
      Origin = 'NFI_VALORFCPST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORFRETE: TFMTBCDField
      FieldName = 'NFI_VALORFRETE'
      Origin = 'NFI_VALORFRETE'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBS: TFMTBCDField
      FieldName = 'NFI_VALORIBS'
      Origin = 'NFI_VALORIBS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSCREDPRES: TFMTBCDField
      FieldName = 'NFI_VALORIBSCREDPRES'
      Origin = 'NFI_VALORIBSCREDPRES'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSCREDPRESSUS: TFMTBCDField
      FieldName = 'NFI_VALORIBSCREDPRESSUS'
      Origin = 'NFI_VALORIBSCREDPRESSUS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSMUN: TFMTBCDField
      FieldName = 'NFI_VALORIBSMUN'
      Origin = 'NFI_VALORIBSMUN'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSMUNDEV: TFMTBCDField
      FieldName = 'NFI_VALORIBSMUNDEV'
      Origin = 'NFI_VALORIBSMUNDEV'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSMUNDIF: TFMTBCDField
      FieldName = 'NFI_VALORIBSMUNDIF'
      Origin = 'NFI_VALORIBSMUNDIF'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSUF: TFMTBCDField
      FieldName = 'NFI_VALORIBSUF'
      Origin = 'NFI_VALORIBSUF'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSUFDEV: TFMTBCDField
      FieldName = 'NFI_VALORIBSUFDEV'
      Origin = 'NFI_VALORIBSUFDEV'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIBSUFDIF: TFMTBCDField
      FieldName = 'NFI_VALORIBSUFDIF'
      Origin = 'NFI_VALORIBSUFDIF'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMS: TFMTBCDField
      FieldName = 'NFI_VALORICMS'
      Origin = 'NFI_VALORICMS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSCREDSN: TFMTBCDField
      FieldName = 'NFI_VALORICMSCREDSN'
      Origin = 'NFI_VALORICMSCREDSN'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSDESONERADO: TFMTBCDField
      FieldName = 'NFI_VALORICMSDESONERADO'
      Origin = 'NFI_VALORICMSDESONERADO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSST: TFMTBCDField
      FieldName = 'NFI_VALORICMSST'
      Origin = 'NFI_VALORICMSST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSSTRET: TFMTBCDField
      FieldName = 'NFI_VALORICMSSTRET'
      Origin = 'NFI_VALORICMSSTRET'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSSUBSTITUTO: TFMTBCDField
      FieldName = 'NFI_VALORICMSSUBSTITUTO'
      Origin = 'NFI_VALORICMSSUBSTITUTO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSUFDEST: TFMTBCDField
      FieldName = 'NFI_VALORICMSUFDEST'
      Origin = 'NFI_VALORICMSUFDEST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORICMSUFREMET: TFMTBCDField
      FieldName = 'NFI_VALORICMSUFREMET'
      Origin = 'NFI_VALORICMSUFREMET'
      Precision = 18
    end
    object TBNfeItensNFI_VALORII: TFMTBCDField
      FieldName = 'NFI_VALORII'
      Origin = 'NFI_VALORII'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIOF: TFMTBCDField
      FieldName = 'NFI_VALORIOF'
      Origin = 'NFI_VALORIOF'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIPI: TFMTBCDField
      FieldName = 'NFI_VALORIPI'
      Origin = 'NFI_VALORIPI'
      Precision = 18
    end
    object TBNfeItensNFI_VALORIS: TFMTBCDField
      FieldName = 'NFI_VALORIS'
      Origin = 'NFI_VALORIS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISS: TFMTBCDField
      FieldName = 'NFI_VALORISS'
      Origin = 'NFI_VALORISS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISSDEDUCAO: TFMTBCDField
      FieldName = 'NFI_VALORISSDEDUCAO'
      Origin = 'NFI_VALORISSDEDUCAO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISSDESCCOND: TFMTBCDField
      FieldName = 'NFI_VALORISSDESCCOND'
      Origin = 'NFI_VALORISSDESCCOND'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISSDESCINCOND: TFMTBCDField
      FieldName = 'NFI_VALORISSDESCINCOND'
      Origin = 'NFI_VALORISSDESCINCOND'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISSOUTROS: TFMTBCDField
      FieldName = 'NFI_VALORISSOUTROS'
      Origin = 'NFI_VALORISSOUTROS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORISSRETENCAO: TFMTBCDField
      FieldName = 'NFI_VALORISSRETENCAO'
      Origin = 'NFI_VALORISSRETENCAO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORPIS: TFMTBCDField
      FieldName = 'NFI_VALORPIS'
      Origin = 'NFI_VALORPIS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORPISST: TFMTBCDField
      FieldName = 'NFI_VALORPISST'
      Origin = 'NFI_VALORPISST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORSEGURO: TFMTBCDField
      FieldName = 'NFI_VALORSEGURO'
      Origin = 'NFI_VALORSEGURO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTOTAL: TFMTBCDField
      FieldName = 'NFI_VALORTOTAL'
      Origin = 'NFI_VALORTOTAL'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTOTALBRUTO: TFMTBCDField
      FieldName = 'NFI_VALORTOTALBRUTO'
      Origin = 'NFI_VALORTOTALBRUTO'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTRIBUTOS: TFMTBCDField
      FieldName = 'NFI_VALORTRIBUTOS'
      Origin = 'NFI_VALORTRIBUTOS'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTRIBUTOSEST: TFMTBCDField
      FieldName = 'NFI_VALORTRIBUTOSEST'
      Origin = 'NFI_VALORTRIBUTOSEST'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTRIBUTOSFED: TFMTBCDField
      FieldName = 'NFI_VALORTRIBUTOSFED'
      Origin = 'NFI_VALORTRIBUTOSFED'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTRIBUTOSIMP: TFMTBCDField
      FieldName = 'NFI_VALORTRIBUTOSIMP'
      Origin = 'NFI_VALORTRIBUTOSIMP'
      Precision = 18
    end
    object TBNfeItensNFI_VALORTRIBUTOSMUN: TFMTBCDField
      FieldName = 'NFI_VALORTRIBUTOSMUN'
      Origin = 'NFI_VALORTRIBUTOSMUN'
      Precision = 18
    end
    object TBNfeItensNFI_VALORUNIT: TFMTBCDField
      FieldName = 'NFI_VALORUNIT'
      Origin = 'NFI_VALORUNIT'
      Precision = 18
    end
    object TBNfeItensALM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALM_DESCRICAO'
      Origin = 'ALM_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBNfeItensCLF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLF_DESCRICAO'
      Origin = 'CLF_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeItensICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensIPI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      Size = 1000
    end
    object TBNfeItensNAT_CALCULACOMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACOMISSAO'
      Origin = 'NAT_CALCULACOMISSAO'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeItensNAT_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CALCULACREDITOSN'
      Origin = 'NAT_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeItensNAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensNAT_INFORMADIFAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_INFORMADIFAL'
      Origin = 'NAT_INFORMADIFAL'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeItensPIS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensPIS_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO1'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBNfeItensPRO_CLASSFISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CLASSFISCAL'
      Origin = 'PRO_CLASSFISCAL'
      ProviderFlags = []
    end
    object TBNfeItensPRO_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = []
    end
    object TBNfeItensPRO_CODIGOBARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      ProviderFlags = []
      Size = 60
    end
    object TBNfeItensPRO_CSTICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CSTICMS'
      Origin = 'PRO_CSTICMS'
      ProviderFlags = []
    end
    object TBNfeItensPRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      Size = 100
    end
    object TBNfeItensPRO_PRECOVENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_PRECOVENDA'
      Origin = 'PRO_PRECOVENDA'
      ProviderFlags = []
      Precision = 18
    end
    object TBNfeItensPRO_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_TIPO'
      Origin = 'PRO_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object TBNfeItensPRO_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_UNIDADE'
      Origin = 'PRO_UNIDADE'
      ProviderFlags = []
      Size = 3
    end
    object TBNfeItensCLT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBNfeItensCLT_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO1'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
  end
  object TRNfeItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 96
    Top = 392
  end
  object UPNfeItens: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO NFEITENS'
      '(NFI_ALIQCBS, NFI_ALIQCBSCREDPRES, NFI_ALIQCBSDIF, '
      '  NFI_ALIQCBSEFE, NFI_ALIQCBSRED, NFI_ALIQCOFINS, '
      '  NFI_ALIQCOFINSST, NFI_ALIQFCP, NFI_ALIQFCPST, '
      '  NFI_ALIQIBSCREDPRES, NFI_ALIQIBSMUN, NFI_ALIQIBSMUNDIF, '
      '  NFI_ALIQIBSMUNEFE, NFI_ALIQIBSMUNRED, NFI_ALIQIBSUF, '
      '  NFI_ALIQIBSUFDIF, NFI_ALIQIBSUFEFE, NFI_ALIQIBSUFRED, '
      '  NFI_ALIQICMS, NFI_ALIQICMSADICST, NFI_ALIQICMSINTER, '
      '  NFI_ALIQICMSINTERPART, NFI_ALIQICMSRED, NFI_ALIQICMSST, '
      '  NFI_ALIQICMSSTRET, NFI_ALIQII, NFI_ALIQIPI, '
      '  NFI_ALIQIS, NFI_ALIQISESP, NFI_ALIQISS, NFI_ALIQPIS, '
      '  NFI_ALIQPISST, NFI_ALMOXARIFADO, NFI_BASECOFINS, '
      '  NFI_BASECOFINSST, NFI_BASEIBSCBS, NFI_BASEICMS, '
      '  NFI_BASEICMSRED, NFI_BASEICMSST, NFI_BASEICMSSTRET, '
      '  NFI_BASEII, NFI_BASEIPI, NFI_BASEIS, NFI_BASEISS, '
      '  NFI_BASEPIS, NFI_BASEPISST, NFI_BENEFICIO, '
      '  NFI_CBSCREDITOPRES, NFI_CEST, NFI_CFOP, NFI_CIDADEISS, '
      '  NFI_CLASSFISCAL, NFI_CLASSTRIBIBSCBS, NFI_CLASSTRIBIS, '
      '  NFI_CODIGO, NFI_CODIGOBARRAS, NFI_CODIGOFAB, '
      '  NFI_COMISSAO, NFI_COMPLEMENTO, NFI_COMPOEBASEICMS, '
      '  NFI_COMPOEBASEICMSST, NFI_COMPOETOTAL, NFI_CONVERSAO, '
      '  NFI_CSTCOFINS, NFI_CSTIBSCBS, NFI_CSTICMS, '
      '  NFI_CSTIPI, NFI_CSTIS, NFI_CSTPIS, NFI_DESCMAX, '
      '  NFI_DESCPORC, NFI_DESCRICAO, NFI_DESCVALOR, '
      '  NFI_DESONERACAO, NFI_DFEREF, NFI_DFEREFITEM, '
      '  NFI_DICNPJ, NFI_DIDATA, NFI_DIDESEMBARACODATA, '
      
        '  NFI_DIDESEMBARACOLOCAL, NFI_DIDESEMBARACOUF, NFI_DIEXPORTADORC' +
        'OD, '
      '  NFI_DIINTERMEDIO, NFI_DINUMERO, NFI_DITERCEIROUF, '
      '  NFI_DITRANSPORTE, NFI_DIVALORAFRMM, NFI_ENQUADRAMENTOIPI, '
      '  NFI_EXCECAO, NFI_EXCHAVEACESSO, NFI_EXDRAWBACK, '
      '  NFI_EXQUANTIDADE, NFI_EXREGISTRO, NFI_FCI, '
      '  NFI_IBSCREDITOPRES, NFI_INCENTIVOISS, NFI_INDICADORISS, '
      '  NFI_INFOADICIONAL, NFI_LOCALIZACAO, NFI_LOTE, '
      '  NFI_LUCROPORC, NFI_LUCROVALOR, NFI_MODICMS, '
      '  NFI_MODICMSST, NFI_NOTA, NFI_ORIGEM, NFI_PAISISS, '
      '  NFI_PEDIDOCLIENTE, NFI_PEDIDOCLIENTEITEM, NFI_PESO, '
      '  NFI_PESOTOTAL, NFI_PRECOCUSTO, NFI_PRECOCUSTOTOTAL, '
      '  NFI_PROCESSOISS, NFI_PRODUTO, NFI_PRODUTOREAL, '
      '  NFI_QUANTIDADE, NFI_QUANTIDADETROCA, NFI_SEQUENCIA, '
      '  NFI_SERVICOISS, NFI_SOMACOFINSST, NFI_SOMAPISST, '
      '  NFI_TIPO, NFI_TIPOISS, NFI_UNIDADE, NFI_VALORACESSORIAS, '
      '  NFI_VALORADUANA, NFI_VALORCBS, NFI_VALORCBSCREDPRES, '
      '  NFI_VALORCBSCREDPRESSUS, NFI_VALORCBSDEV, NFI_VALORCBSDIF, '
      '  NFI_VALORCOFINS, NFI_VALORCOFINSST, NFI_VALORCOMISSAO, '
      '  NFI_VALORFCP, NFI_VALORFCPST, NFI_VALORFRETE, '
      '  NFI_VALORIBS, NFI_VALORIBSCREDPRES, NFI_VALORIBSCREDPRESSUS, '
      '  NFI_VALORIBSMUN, NFI_VALORIBSMUNDEV, NFI_VALORIBSMUNDIF, '
      '  NFI_VALORIBSUF, NFI_VALORIBSUFDEV, NFI_VALORIBSUFDIF, '
      '  NFI_VALORICMS, NFI_VALORICMSCREDSN, NFI_VALORICMSDESONERADO, '
      '  NFI_VALORICMSST, NFI_VALORICMSSTRET, NFI_VALORICMSSUBSTITUTO, '
      '  NFI_VALORICMSUFDEST, NFI_VALORICMSUFREMET, NFI_VALORII, '
      '  NFI_VALORIOF, NFI_VALORIPI, NFI_VALORIS, '
      '  NFI_VALORISS, NFI_VALORISSDEDUCAO, NFI_VALORISSDESCCOND, '
      
        '  NFI_VALORISSDESCINCOND, NFI_VALORISSOUTROS, NFI_VALORISSRETENC' +
        'AO, '
      '  NFI_VALORPIS, NFI_VALORPISST, NFI_VALORSEGURO, '
      '  NFI_VALORTOTAL, NFI_VALORTOTALBRUTO, NFI_VALORTRIBUTOS, '
      
        '  NFI_VALORTRIBUTOSEST, NFI_VALORTRIBUTOSFED, NFI_VALORTRIBUTOSI' +
        'MP, '
      '  NFI_VALORTRIBUTOSMUN, NFI_VALORUNIT)'
      
        'VALUES (:NEW_NFI_ALIQCBS, :NEW_NFI_ALIQCBSCREDPRES, :NEW_NFI_ALI' +
        'QCBSDIF, '
      
        '  :NEW_NFI_ALIQCBSEFE, :NEW_NFI_ALIQCBSRED, :NEW_NFI_ALIQCOFINS,' +
        ' '
      '  :NEW_NFI_ALIQCOFINSST, :NEW_NFI_ALIQFCP, :NEW_NFI_ALIQFCPST, '
      
        '  :NEW_NFI_ALIQIBSCREDPRES, :NEW_NFI_ALIQIBSMUN, :NEW_NFI_ALIQIB' +
        'SMUNDIF, '
      
        '  :NEW_NFI_ALIQIBSMUNEFE, :NEW_NFI_ALIQIBSMUNRED, :NEW_NFI_ALIQI' +
        'BSUF, '
      
        '  :NEW_NFI_ALIQIBSUFDIF, :NEW_NFI_ALIQIBSUFEFE, :NEW_NFI_ALIQIBS' +
        'UFRED, '
      
        '  :NEW_NFI_ALIQICMS, :NEW_NFI_ALIQICMSADICST, :NEW_NFI_ALIQICMSI' +
        'NTER, '
      
        '  :NEW_NFI_ALIQICMSINTERPART, :NEW_NFI_ALIQICMSRED, :NEW_NFI_ALI' +
        'QICMSST, '
      '  :NEW_NFI_ALIQICMSSTRET, :NEW_NFI_ALIQII, :NEW_NFI_ALIQIPI, '
      
        '  :NEW_NFI_ALIQIS, :NEW_NFI_ALIQISESP, :NEW_NFI_ALIQISS, :NEW_NF' +
        'I_ALIQPIS, '
      
        '  :NEW_NFI_ALIQPISST, :NEW_NFI_ALMOXARIFADO, :NEW_NFI_BASECOFINS' +
        ', '
      
        '  :NEW_NFI_BASECOFINSST, :NEW_NFI_BASEIBSCBS, :NEW_NFI_BASEICMS,' +
        ' '
      
        '  :NEW_NFI_BASEICMSRED, :NEW_NFI_BASEICMSST, :NEW_NFI_BASEICMSST' +
        'RET, '
      
        '  :NEW_NFI_BASEII, :NEW_NFI_BASEIPI, :NEW_NFI_BASEIS, :NEW_NFI_B' +
        'ASEISS, '
      '  :NEW_NFI_BASEPIS, :NEW_NFI_BASEPISST, :NEW_NFI_BENEFICIO, '
      
        '  :NEW_NFI_CBSCREDITOPRES, :NEW_NFI_CEST, :NEW_NFI_CFOP, :NEW_NF' +
        'I_CIDADEISS, '
      
        '  :NEW_NFI_CLASSFISCAL, :NEW_NFI_CLASSTRIBIBSCBS, :NEW_NFI_CLASS' +
        'TRIBIS, '
      
        '  gen_id(GEN_NFEITENS,1), :NEW_NFI_CODIGOBARRAS, :NEW_NFI_CODIGO' +
        'FAB, '
      
        '  :NEW_NFI_COMISSAO, :NEW_NFI_COMPLEMENTO, :NEW_NFI_COMPOEBASEIC' +
        'MS, '
      
        '  :NEW_NFI_COMPOEBASEICMSST, :NEW_NFI_COMPOETOTAL, :NEW_NFI_CONV' +
        'ERSAO, '
      '  :NEW_NFI_CSTCOFINS, :NEW_NFI_CSTIBSCBS, :NEW_NFI_CSTICMS, '
      
        '  :NEW_NFI_CSTIPI, :NEW_NFI_CSTIS, :NEW_NFI_CSTPIS, :NEW_NFI_DES' +
        'CMAX, '
      '  :NEW_NFI_DESCPORC, :NEW_NFI_DESCRICAO, :NEW_NFI_DESCVALOR, '
      '  :NEW_NFI_DESONERACAO, :NEW_NFI_DFEREF, :NEW_NFI_DFEREFITEM, '
      '  :NEW_NFI_DICNPJ, :NEW_NFI_DIDATA, :NEW_NFI_DIDESEMBARACODATA, '
      
        '  :NEW_NFI_DIDESEMBARACOLOCAL, :NEW_NFI_DIDESEMBARACOUF, :NEW_NF' +
        'I_DIEXPORTADORCOD, '
      
        '  :NEW_NFI_DIINTERMEDIO, :NEW_NFI_DINUMERO, :NEW_NFI_DITERCEIROU' +
        'F, '
      
        '  :NEW_NFI_DITRANSPORTE, :NEW_NFI_DIVALORAFRMM, :NEW_NFI_ENQUADR' +
        'AMENTOIPI, '
      
        '  :NEW_NFI_EXCECAO, :NEW_NFI_EXCHAVEACESSO, :NEW_NFI_EXDRAWBACK,' +
        ' '
      '  :NEW_NFI_EXQUANTIDADE, :NEW_NFI_EXREGISTRO, :NEW_NFI_FCI, '
      
        '  :NEW_NFI_IBSCREDITOPRES, :NEW_NFI_INCENTIVOISS, :NEW_NFI_INDIC' +
        'ADORISS, '
      '  :NEW_NFI_INFOADICIONAL, :NEW_NFI_LOCALIZACAO, :NEW_NFI_LOTE, '
      '  :NEW_NFI_LUCROPORC, :NEW_NFI_LUCROVALOR, :NEW_NFI_MODICMS, '
      
        '  :NEW_NFI_MODICMSST, :NEW_NFI_NOTA, :NEW_NFI_ORIGEM, :NEW_NFI_P' +
        'AISISS, '
      
        '  :NEW_NFI_PEDIDOCLIENTE, :NEW_NFI_PEDIDOCLIENTEITEM, :NEW_NFI_P' +
        'ESO, '
      
        '  :NEW_NFI_PESOTOTAL, :NEW_NFI_PRECOCUSTO, :NEW_NFI_PRECOCUSTOTO' +
        'TAL, '
      '  :NEW_NFI_PROCESSOISS, :NEW_NFI_PRODUTO, :NEW_NFI_PRODUTOREAL, '
      
        '  :NEW_NFI_QUANTIDADE, :NEW_NFI_QUANTIDADETROCA, :NEW_NFI_SEQUEN' +
        'CIA, '
      
        '  :NEW_NFI_SERVICOISS, :NEW_NFI_SOMACOFINSST, :NEW_NFI_SOMAPISST' +
        ', '
      
        '  :NEW_NFI_TIPO, :NEW_NFI_TIPOISS, :NEW_NFI_UNIDADE, :NEW_NFI_VA' +
        'LORACESSORIAS, '
      
        '  :NEW_NFI_VALORADUANA, :NEW_NFI_VALORCBS, :NEW_NFI_VALORCBSCRED' +
        'PRES, '
      
        '  :NEW_NFI_VALORCBSCREDPRESSUS, :NEW_NFI_VALORCBSDEV, :NEW_NFI_V' +
        'ALORCBSDIF, '
      
        '  :NEW_NFI_VALORCOFINS, :NEW_NFI_VALORCOFINSST, :NEW_NFI_VALORCO' +
        'MISSAO, '
      '  :NEW_NFI_VALORFCP, :NEW_NFI_VALORFCPST, :NEW_NFI_VALORFRETE, '
      
        '  :NEW_NFI_VALORIBS, :NEW_NFI_VALORIBSCREDPRES, :NEW_NFI_VALORIB' +
        'SCREDPRESSUS, '
      
        '  :NEW_NFI_VALORIBSMUN, :NEW_NFI_VALORIBSMUNDEV, :NEW_NFI_VALORI' +
        'BSMUNDIF, '
      
        '  :NEW_NFI_VALORIBSUF, :NEW_NFI_VALORIBSUFDEV, :NEW_NFI_VALORIBS' +
        'UFDIF, '
      
        '  :NEW_NFI_VALORICMS, :NEW_NFI_VALORICMSCREDSN, :NEW_NFI_VALORIC' +
        'MSDESONERADO, '
      
        '  :NEW_NFI_VALORICMSST, :NEW_NFI_VALORICMSSTRET, :NEW_NFI_VALORI' +
        'CMSSUBSTITUTO, '
      
        '  :NEW_NFI_VALORICMSUFDEST, :NEW_NFI_VALORICMSUFREMET, :NEW_NFI_' +
        'VALORII, '
      '  :NEW_NFI_VALORIOF, :NEW_NFI_VALORIPI, :NEW_NFI_VALORIS, '
      
        '  :NEW_NFI_VALORISS, :NEW_NFI_VALORISSDEDUCAO, :NEW_NFI_VALORISS' +
        'DESCCOND, '
      
        '  :NEW_NFI_VALORISSDESCINCOND, :NEW_NFI_VALORISSOUTROS, :NEW_NFI' +
        '_VALORISSRETENCAO, '
      '  :NEW_NFI_VALORPIS, :NEW_NFI_VALORPISST, :NEW_NFI_VALORSEGURO, '
      
        '  :NEW_NFI_VALORTOTAL, :NEW_NFI_VALORTOTALBRUTO, :NEW_NFI_VALORT' +
        'RIBUTOS, '
      
        '  :NEW_NFI_VALORTRIBUTOSEST, :NEW_NFI_VALORTRIBUTOSFED, :NEW_NFI' +
        '_VALORTRIBUTOSIMP, '
      '  :NEW_NFI_VALORTRIBUTOSMUN, :NEW_NFI_VALORUNIT)'
      
        'RETURNING NFI_ALIQCBS, NFI_ALIQCBSCREDPRES, NFI_ALIQCBSDIF, NFI_' +
        'ALIQCBSEFE, NFI_ALIQCBSRED, NFI_ALIQCOFINS, NFI_ALIQCOFINSST, NF' +
        'I_ALIQFCP, NFI_ALIQFCPST, NFI_ALIQIBSCREDPRES, NFI_ALIQIBSMUN, N' +
        'FI_ALIQIBSMUNDIF, NFI_ALIQIBSMUNEFE, NFI_ALIQIBSMUNRED, NFI_ALIQ' +
        'IBSUF, NFI_ALIQIBSUFDIF, NFI_ALIQIBSUFEFE, NFI_ALIQIBSUFRED, NFI' +
        '_ALIQICMS, NFI_ALIQICMSADICST, NFI_ALIQICMSINTER, NFI_ALIQICMSIN' +
        'TERPART, NFI_ALIQICMSRED, NFI_ALIQICMSST, NFI_ALIQICMSSTRET, NFI' +
        '_ALIQII, NFI_ALIQIPI, NFI_ALIQIS, NFI_ALIQISESP, NFI_ALIQISS, NF' +
        'I_ALIQPIS, NFI_ALIQPISST, NFI_ALMOXARIFADO, NFI_BASECOFINS, NFI_' +
        'BASECOFINSST, NFI_BASEIBSCBS, NFI_BASEICMS, NFI_BASEICMSRED, NFI' +
        '_BASEICMSST, NFI_BASEICMSSTRET, NFI_BASEII, NFI_BASEIPI, NFI_BAS' +
        'EIS, NFI_BASEISS, NFI_BASEPIS, NFI_BASEPISST, NFI_BENEFICIO, NFI' +
        '_CBSCREDITOPRES, NFI_CEST, NFI_CFOP, NFI_CIDADEISS, NFI_CLASSFIS' +
        'CAL, NFI_CLASSTRIBIBSCBS, NFI_CLASSTRIBIS, NFI_CODIGO, NFI_CODIG' +
        'OBARRAS, NFI_CODIGOFAB, NFI_COMISSAO, NFI_COMPLEMENTO, NFI_COMPO' +
        'EBASEICMS, NFI_COMPOEBASEICMSST, NFI_COMPOETOTAL, NFI_CONVERSAO,' +
        ' NFI_CSTCOFINS, NFI_CSTIBSCBS, NFI_CSTICMS, NFI_CSTIPI, NFI_CSTI' +
        'S, NFI_CSTPIS, NFI_DESCMAX, NFI_DESCPORC, NFI_DESCRICAO, NFI_DES' +
        'CVALOR, NFI_DESONERACAO, NFI_DFEREF, NFI_DFEREFITEM, NFI_DICNPJ,' +
        ' NFI_DIDATA, NFI_DIDESEMBARACODATA, NFI_DIDESEMBARACOLOCAL, NFI_' +
        'DIDESEMBARACOUF, NFI_DIEXPORTADORCOD, NFI_DIINTERMEDIO, NFI_DINU' +
        'MERO, NFI_DITERCEIROUF, NFI_DITRANSPORTE, NFI_DIVALORAFRMM, NFI_' +
        'ENQUADRAMENTOIPI, NFI_EXCECAO, NFI_EXCHAVEACESSO, NFI_EXDRAWBACK' +
        ', NFI_EXQUANTIDADE, NFI_EXREGISTRO, NFI_FCI, NFI_IBSCREDITOPRES,' +
        ' NFI_INCENTIVOISS, NFI_INDICADORISS, NFI_INFOADICIONAL, NFI_LOCA' +
        'LIZACAO, NFI_LOTE, NFI_LUCROPORC, NFI_LUCROVALOR, NFI_MODICMS, N' +
        'FI_MODICMSST, NFI_NOTA, NFI_ORIGEM, NFI_PAISISS, NFI_PEDIDOCLIEN' +
        'TE, NFI_PEDIDOCLIENTEITEM, NFI_PESO, NFI_PESOTOTAL, NFI_PRECOCUS' +
        'TO, NFI_PRECOCUSTOTOTAL, NFI_PROCESSOISS, NFI_PRODUTO, NFI_PRODU' +
        'TOREAL, NFI_QUANTIDADE, NFI_QUANTIDADETROCA, NFI_SEQUENCIA, NFI_' +
        'SERVICOISS, NFI_SOMACOFINSST, NFI_SOMAPISST, NFI_TIPO, NFI_TIPOI' +
        'SS, NFI_UNIDADE, NFI_VALORACESSORIAS, NFI_VALORADUANA, NFI_VALOR' +
        'CBS, NFI_VALORCBSCREDPRES, NFI_VALORCBSCREDPRESSUS, NFI_VALORCBS' +
        'DEV, NFI_VALORCBSDIF, NFI_VALORCOFINS, NFI_VALORCOFINSST, NFI_VA' +
        'LORCOMISSAO, NFI_VALORFCP, NFI_VALORFCPST, NFI_VALORFRETE, NFI_V' +
        'ALORIBS, NFI_VALORIBSCREDPRES, NFI_VALORIBSCREDPRESSUS, NFI_VALO' +
        'RIBSMUN, NFI_VALORIBSMUNDEV, NFI_VALORIBSMUNDIF, NFI_VALORIBSUF,' +
        ' NFI_VALORIBSUFDEV, NFI_VALORIBSUFDIF, NFI_VALORICMS, NFI_VALORI' +
        'CMSCREDSN, NFI_VALORICMSDESONERADO, NFI_VALORICMSST, NFI_VALORIC' +
        'MSSTRET, NFI_VALORICMSSUBSTITUTO, NFI_VALORICMSUFDEST, NFI_VALOR' +
        'ICMSUFREMET, NFI_VALORII, NFI_VALORIOF, NFI_VALORIPI, NFI_VALORI' +
        'S, NFI_VALORISS, NFI_VALORISSDEDUCAO, NFI_VALORISSDESCCOND, NFI_' +
        'VALORISSDESCINCOND, NFI_VALORISSOUTROS, NFI_VALORISSRETENCAO, NF' +
        'I_VALORPIS, NFI_VALORPISST, NFI_VALORSEGURO, NFI_VALORTOTAL, NFI' +
        '_VALORTOTALBRUTO, NFI_VALORTRIBUTOS, NFI_VALORTRIBUTOSEST, NFI_V' +
        'ALORTRIBUTOSFED, NFI_VALORTRIBUTOSIMP, NFI_VALORTRIBUTOSMUN, NFI' +
        '_VALORUNIT')
    ModifySQL.Strings = (
      'UPDATE NFEITENS'
      
        'SET NFI_ALIQCBS = :NEW_NFI_ALIQCBS, NFI_ALIQCBSCREDPRES = :NEW_N' +
        'FI_ALIQCBSCREDPRES, '
      
        '  NFI_ALIQCBSDIF = :NEW_NFI_ALIQCBSDIF, NFI_ALIQCBSEFE = :NEW_NF' +
        'I_ALIQCBSEFE, '
      
        '  NFI_ALIQCBSRED = :NEW_NFI_ALIQCBSRED, NFI_ALIQCOFINS = :NEW_NF' +
        'I_ALIQCOFINS, '
      
        '  NFI_ALIQCOFINSST = :NEW_NFI_ALIQCOFINSST, NFI_ALIQFCP = :NEW_N' +
        'FI_ALIQFCP, '
      
        '  NFI_ALIQFCPST = :NEW_NFI_ALIQFCPST, NFI_ALIQIBSCREDPRES = :NEW' +
        '_NFI_ALIQIBSCREDPRES, '
      
        '  NFI_ALIQIBSMUN = :NEW_NFI_ALIQIBSMUN, NFI_ALIQIBSMUNDIF = :NEW' +
        '_NFI_ALIQIBSMUNDIF, '
      
        '  NFI_ALIQIBSMUNEFE = :NEW_NFI_ALIQIBSMUNEFE, NFI_ALIQIBSMUNRED ' +
        '= :NEW_NFI_ALIQIBSMUNRED, '
      
        '  NFI_ALIQIBSUF = :NEW_NFI_ALIQIBSUF, NFI_ALIQIBSUFDIF = :NEW_NF' +
        'I_ALIQIBSUFDIF, '
      
        '  NFI_ALIQIBSUFEFE = :NEW_NFI_ALIQIBSUFEFE, NFI_ALIQIBSUFRED = :' +
        'NEW_NFI_ALIQIBSUFRED, '
      
        '  NFI_ALIQICMS = :NEW_NFI_ALIQICMS, NFI_ALIQICMSADICST = :NEW_NF' +
        'I_ALIQICMSADICST, '
      
        '  NFI_ALIQICMSINTER = :NEW_NFI_ALIQICMSINTER, NFI_ALIQICMSINTERP' +
        'ART = :NEW_NFI_ALIQICMSINTERPART, '
      
        '  NFI_ALIQICMSRED = :NEW_NFI_ALIQICMSRED, NFI_ALIQICMSST = :NEW_' +
        'NFI_ALIQICMSST, '
      
        '  NFI_ALIQICMSSTRET = :NEW_NFI_ALIQICMSSTRET, NFI_ALIQII = :NEW_' +
        'NFI_ALIQII, '
      '  NFI_ALIQIPI = :NEW_NFI_ALIQIPI, NFI_ALIQIS = :NEW_NFI_ALIQIS, '
      
        '  NFI_ALIQISESP = :NEW_NFI_ALIQISESP, NFI_ALIQISS = :NEW_NFI_ALI' +
        'QISS, '
      
        '  NFI_ALIQPIS = :NEW_NFI_ALIQPIS, NFI_ALIQPISST = :NEW_NFI_ALIQP' +
        'ISST, '
      
        '  NFI_ALMOXARIFADO = :NEW_NFI_ALMOXARIFADO, NFI_BASECOFINS = :NE' +
        'W_NFI_BASECOFINS, '
      
        '  NFI_BASECOFINSST = :NEW_NFI_BASECOFINSST, NFI_BASEIBSCBS = :NE' +
        'W_NFI_BASEIBSCBS, '
      
        '  NFI_BASEICMS = :NEW_NFI_BASEICMS, NFI_BASEICMSRED = :NEW_NFI_B' +
        'ASEICMSRED, '
      
        '  NFI_BASEICMSST = :NEW_NFI_BASEICMSST, NFI_BASEICMSSTRET = :NEW' +
        '_NFI_BASEICMSSTRET, '
      '  NFI_BASEII = :NEW_NFI_BASEII, NFI_BASEIPI = :NEW_NFI_BASEIPI, '
      '  NFI_BASEIS = :NEW_NFI_BASEIS, NFI_BASEISS = :NEW_NFI_BASEISS, '
      
        '  NFI_BASEPIS = :NEW_NFI_BASEPIS, NFI_BASEPISST = :NEW_NFI_BASEP' +
        'ISST, '
      
        '  NFI_BENEFICIO = :NEW_NFI_BENEFICIO, NFI_CBSCREDITOPRES = :NEW_' +
        'NFI_CBSCREDITOPRES, '
      
        '  NFI_CEST = :NEW_NFI_CEST, NFI_CFOP = :NEW_NFI_CFOP, NFI_CIDADE' +
        'ISS = :NEW_NFI_CIDADEISS, '
      
        '  NFI_CLASSFISCAL = :NEW_NFI_CLASSFISCAL, NFI_CLASSTRIBIBSCBS = ' +
        ':NEW_NFI_CLASSTRIBIBSCBS, '
      
        '  NFI_CLASSTRIBIS = :NEW_NFI_CLASSTRIBIS, NFI_CODIGO = :NEW_NFI_' +
        'CODIGO, '
      
        '  NFI_CODIGOBARRAS = :NEW_NFI_CODIGOBARRAS, NFI_CODIGOFAB = :NEW' +
        '_NFI_CODIGOFAB, '
      
        '  NFI_COMISSAO = :NEW_NFI_COMISSAO, NFI_COMPLEMENTO = :NEW_NFI_C' +
        'OMPLEMENTO, '
      
        '  NFI_COMPOEBASEICMS = :NEW_NFI_COMPOEBASEICMS, NFI_COMPOEBASEIC' +
        'MSST = :NEW_NFI_COMPOEBASEICMSST, '
      
        '  NFI_COMPOETOTAL = :NEW_NFI_COMPOETOTAL, NFI_CONVERSAO = :NEW_N' +
        'FI_CONVERSAO, '
      
        '  NFI_CSTCOFINS = :NEW_NFI_CSTCOFINS, NFI_CSTIBSCBS = :NEW_NFI_C' +
        'STIBSCBS, '
      '  NFI_CSTICMS = :NEW_NFI_CSTICMS, NFI_CSTIPI = :NEW_NFI_CSTIPI, '
      '  NFI_CSTIS = :NEW_NFI_CSTIS, NFI_CSTPIS = :NEW_NFI_CSTPIS, '
      
        '  NFI_DESCMAX = :NEW_NFI_DESCMAX, NFI_DESCPORC = :NEW_NFI_DESCPO' +
        'RC, '
      
        '  NFI_DESCRICAO = :NEW_NFI_DESCRICAO, NFI_DESCVALOR = :NEW_NFI_D' +
        'ESCVALOR, '
      
        '  NFI_DESONERACAO = :NEW_NFI_DESONERACAO, NFI_DFEREF = :NEW_NFI_' +
        'DFEREF, '
      
        '  NFI_DFEREFITEM = :NEW_NFI_DFEREFITEM, NFI_DICNPJ = :NEW_NFI_DI' +
        'CNPJ, '
      
        '  NFI_DIDATA = :NEW_NFI_DIDATA, NFI_DIDESEMBARACODATA = :NEW_NFI' +
        '_DIDESEMBARACODATA, '
      
        '  NFI_DIDESEMBARACOLOCAL = :NEW_NFI_DIDESEMBARACOLOCAL, NFI_DIDE' +
        'SEMBARACOUF = :NEW_NFI_DIDESEMBARACOUF, '
      
        '  NFI_DIEXPORTADORCOD = :NEW_NFI_DIEXPORTADORCOD, NFI_DIINTERMED' +
        'IO = :NEW_NFI_DIINTERMEDIO, '
      
        '  NFI_DINUMERO = :NEW_NFI_DINUMERO, NFI_DITERCEIROUF = :NEW_NFI_' +
        'DITERCEIROUF, '
      
        '  NFI_DITRANSPORTE = :NEW_NFI_DITRANSPORTE, NFI_DIVALORAFRMM = :' +
        'NEW_NFI_DIVALORAFRMM, '
      
        '  NFI_ENQUADRAMENTOIPI = :NEW_NFI_ENQUADRAMENTOIPI, NFI_EXCECAO ' +
        '= :NEW_NFI_EXCECAO, '
      
        '  NFI_EXCHAVEACESSO = :NEW_NFI_EXCHAVEACESSO, NFI_EXDRAWBACK = :' +
        'NEW_NFI_EXDRAWBACK, '
      
        '  NFI_EXQUANTIDADE = :NEW_NFI_EXQUANTIDADE, NFI_EXREGISTRO = :NE' +
        'W_NFI_EXREGISTRO, '
      
        '  NFI_FCI = :NEW_NFI_FCI, NFI_IBSCREDITOPRES = :NEW_NFI_IBSCREDI' +
        'TOPRES, '
      
        '  NFI_INCENTIVOISS = :NEW_NFI_INCENTIVOISS, NFI_INDICADORISS = :' +
        'NEW_NFI_INDICADORISS, '
      
        '  NFI_INFOADICIONAL = :NEW_NFI_INFOADICIONAL, NFI_LOCALIZACAO = ' +
        ':NEW_NFI_LOCALIZACAO, '
      '  NFI_LOTE = :NEW_NFI_LOTE, NFI_LUCROPORC = :NEW_NFI_LUCROPORC, '
      
        '  NFI_LUCROVALOR = :NEW_NFI_LUCROVALOR, NFI_MODICMS = :NEW_NFI_M' +
        'ODICMS, '
      '  NFI_MODICMSST = :NEW_NFI_MODICMSST, NFI_NOTA = :NEW_NFI_NOTA, '
      '  NFI_ORIGEM = :NEW_NFI_ORIGEM, NFI_PAISISS = :NEW_NFI_PAISISS, '
      
        '  NFI_PEDIDOCLIENTE = :NEW_NFI_PEDIDOCLIENTE, NFI_PEDIDOCLIENTEI' +
        'TEM = :NEW_NFI_PEDIDOCLIENTEITEM, '
      '  NFI_PESO = :NEW_NFI_PESO, NFI_PESOTOTAL = :NEW_NFI_PESOTOTAL, '
      
        '  NFI_PRECOCUSTO = :NEW_NFI_PRECOCUSTO, NFI_PRECOCUSTOTOTAL = :N' +
        'EW_NFI_PRECOCUSTOTOTAL, '
      
        '  NFI_PROCESSOISS = :NEW_NFI_PROCESSOISS, NFI_PRODUTO = :NEW_NFI' +
        '_PRODUTO, '
      
        '  NFI_PRODUTOREAL = :NEW_NFI_PRODUTOREAL, NFI_QUANTIDADE = :NEW_' +
        'NFI_QUANTIDADE, '
      
        '  NFI_QUANTIDADETROCA = :NEW_NFI_QUANTIDADETROCA, NFI_SEQUENCIA ' +
        '= :NEW_NFI_SEQUENCIA, '
      
        '  NFI_SERVICOISS = :NEW_NFI_SERVICOISS, NFI_SOMACOFINSST = :NEW_' +
        'NFI_SOMACOFINSST, '
      '  NFI_SOMAPISST = :NEW_NFI_SOMAPISST, NFI_TIPO = :NEW_NFI_TIPO, '
      
        '  NFI_TIPOISS = :NEW_NFI_TIPOISS, NFI_UNIDADE = :NEW_NFI_UNIDADE' +
        ', '
      
        '  NFI_VALORACESSORIAS = :NEW_NFI_VALORACESSORIAS, NFI_VALORADUAN' +
        'A = :NEW_NFI_VALORADUANA, '
      
        '  NFI_VALORCBS = :NEW_NFI_VALORCBS, NFI_VALORCBSCREDPRES = :NEW_' +
        'NFI_VALORCBSCREDPRES, '
      '  NFI_VALORCBSCREDPRESSUS = :NEW_NFI_VALORCBSCREDPRESSUS, '
      
        '  NFI_VALORCBSDEV = :NEW_NFI_VALORCBSDEV, NFI_VALORCBSDIF = :NEW' +
        '_NFI_VALORCBSDIF, '
      
        '  NFI_VALORCOFINS = :NEW_NFI_VALORCOFINS, NFI_VALORCOFINSST = :N' +
        'EW_NFI_VALORCOFINSST, '
      
        '  NFI_VALORCOMISSAO = :NEW_NFI_VALORCOMISSAO, NFI_VALORFCP = :NE' +
        'W_NFI_VALORFCP, '
      
        '  NFI_VALORFCPST = :NEW_NFI_VALORFCPST, NFI_VALORFRETE = :NEW_NF' +
        'I_VALORFRETE, '
      
        '  NFI_VALORIBS = :NEW_NFI_VALORIBS, NFI_VALORIBSCREDPRES = :NEW_' +
        'NFI_VALORIBSCREDPRES, '
      '  NFI_VALORIBSCREDPRESSUS = :NEW_NFI_VALORIBSCREDPRESSUS, '
      
        '  NFI_VALORIBSMUN = :NEW_NFI_VALORIBSMUN, NFI_VALORIBSMUNDEV = :' +
        'NEW_NFI_VALORIBSMUNDEV, '
      
        '  NFI_VALORIBSMUNDIF = :NEW_NFI_VALORIBSMUNDIF, NFI_VALORIBSUF =' +
        ' :NEW_NFI_VALORIBSUF, '
      
        '  NFI_VALORIBSUFDEV = :NEW_NFI_VALORIBSUFDEV, NFI_VALORIBSUFDIF ' +
        '= :NEW_NFI_VALORIBSUFDIF, '
      
        '  NFI_VALORICMS = :NEW_NFI_VALORICMS, NFI_VALORICMSCREDSN = :NEW' +
        '_NFI_VALORICMSCREDSN, '
      '  NFI_VALORICMSDESONERADO = :NEW_NFI_VALORICMSDESONERADO, '
      
        '  NFI_VALORICMSST = :NEW_NFI_VALORICMSST, NFI_VALORICMSSTRET = :' +
        'NEW_NFI_VALORICMSSTRET, '
      '  NFI_VALORICMSSUBSTITUTO = :NEW_NFI_VALORICMSSUBSTITUTO, '
      
        '  NFI_VALORICMSUFDEST = :NEW_NFI_VALORICMSUFDEST, NFI_VALORICMSU' +
        'FREMET = :NEW_NFI_VALORICMSUFREMET, '
      
        '  NFI_VALORII = :NEW_NFI_VALORII, NFI_VALORIOF = :NEW_NFI_VALORI' +
        'OF, '
      
        '  NFI_VALORIPI = :NEW_NFI_VALORIPI, NFI_VALORIS = :NEW_NFI_VALOR' +
        'IS, '
      
        '  NFI_VALORISS = :NEW_NFI_VALORISS, NFI_VALORISSDEDUCAO = :NEW_N' +
        'FI_VALORISSDEDUCAO, '
      
        '  NFI_VALORISSDESCCOND = :NEW_NFI_VALORISSDESCCOND, NFI_VALORISS' +
        'DESCINCOND = :NEW_NFI_VALORISSDESCINCOND, '
      
        '  NFI_VALORISSOUTROS = :NEW_NFI_VALORISSOUTROS, NFI_VALORISSRETE' +
        'NCAO = :NEW_NFI_VALORISSRETENCAO, '
      
        '  NFI_VALORPIS = :NEW_NFI_VALORPIS, NFI_VALORPISST = :NEW_NFI_VA' +
        'LORPISST, '
      
        '  NFI_VALORSEGURO = :NEW_NFI_VALORSEGURO, NFI_VALORTOTAL = :NEW_' +
        'NFI_VALORTOTAL, '
      
        '  NFI_VALORTOTALBRUTO = :NEW_NFI_VALORTOTALBRUTO, NFI_VALORTRIBU' +
        'TOS = :NEW_NFI_VALORTRIBUTOS, '
      
        '  NFI_VALORTRIBUTOSEST = :NEW_NFI_VALORTRIBUTOSEST, NFI_VALORTRI' +
        'BUTOSFED = :NEW_NFI_VALORTRIBUTOSFED, '
      
        '  NFI_VALORTRIBUTOSIMP = :NEW_NFI_VALORTRIBUTOSIMP, NFI_VALORTRI' +
        'BUTOSMUN = :NEW_NFI_VALORTRIBUTOSMUN, '
      '  NFI_VALORUNIT = :NEW_NFI_VALORUNIT'
      'WHERE NFI_CODIGO = :OLD_NFI_CODIGO'
      
        'RETURNING NFI_ALIQCBS, NFI_ALIQCBSCREDPRES, NFI_ALIQCBSDIF, NFI_' +
        'ALIQCBSEFE, NFI_ALIQCBSRED, NFI_ALIQCOFINS, NFI_ALIQCOFINSST, NF' +
        'I_ALIQFCP, NFI_ALIQFCPST, NFI_ALIQIBSCREDPRES, NFI_ALIQIBSMUN, N' +
        'FI_ALIQIBSMUNDIF, NFI_ALIQIBSMUNEFE, NFI_ALIQIBSMUNRED, NFI_ALIQ' +
        'IBSUF, NFI_ALIQIBSUFDIF, NFI_ALIQIBSUFEFE, NFI_ALIQIBSUFRED, NFI' +
        '_ALIQICMS, NFI_ALIQICMSADICST, NFI_ALIQICMSINTER, NFI_ALIQICMSIN' +
        'TERPART, NFI_ALIQICMSRED, NFI_ALIQICMSST, NFI_ALIQICMSSTRET, NFI' +
        '_ALIQII, NFI_ALIQIPI, NFI_ALIQIS, NFI_ALIQISESP, NFI_ALIQISS, NF' +
        'I_ALIQPIS, NFI_ALIQPISST, NFI_ALMOXARIFADO, NFI_BASECOFINS, NFI_' +
        'BASECOFINSST, NFI_BASEIBSCBS, NFI_BASEICMS, NFI_BASEICMSRED, NFI' +
        '_BASEICMSST, NFI_BASEICMSSTRET, NFI_BASEII, NFI_BASEIPI, NFI_BAS' +
        'EIS, NFI_BASEISS, NFI_BASEPIS, NFI_BASEPISST, NFI_BENEFICIO, NFI' +
        '_CBSCREDITOPRES, NFI_CEST, NFI_CFOP, NFI_CIDADEISS, NFI_CLASSFIS' +
        'CAL, NFI_CLASSTRIBIBSCBS, NFI_CLASSTRIBIS, NFI_CODIGO, NFI_CODIG' +
        'OBARRAS, NFI_CODIGOFAB, NFI_COMISSAO, NFI_COMPLEMENTO, NFI_COMPO' +
        'EBASEICMS, NFI_COMPOEBASEICMSST, NFI_COMPOETOTAL, NFI_CONVERSAO,' +
        ' NFI_CSTCOFINS, NFI_CSTIBSCBS, NFI_CSTICMS, NFI_CSTIPI, NFI_CSTI' +
        'S, NFI_CSTPIS, NFI_DESCMAX, NFI_DESCPORC, NFI_DESCRICAO, NFI_DES' +
        'CVALOR, NFI_DESONERACAO, NFI_DFEREF, NFI_DFEREFITEM, NFI_DICNPJ,' +
        ' NFI_DIDATA, NFI_DIDESEMBARACODATA, NFI_DIDESEMBARACOLOCAL, NFI_' +
        'DIDESEMBARACOUF, NFI_DIEXPORTADORCOD, NFI_DIINTERMEDIO, NFI_DINU' +
        'MERO, NFI_DITERCEIROUF, NFI_DITRANSPORTE, NFI_DIVALORAFRMM, NFI_' +
        'ENQUADRAMENTOIPI, NFI_EXCECAO, NFI_EXCHAVEACESSO, NFI_EXDRAWBACK' +
        ', NFI_EXQUANTIDADE, NFI_EXREGISTRO, NFI_FCI, NFI_IBSCREDITOPRES,' +
        ' NFI_INCENTIVOISS, NFI_INDICADORISS, NFI_INFOADICIONAL, NFI_LOCA' +
        'LIZACAO, NFI_LOTE, NFI_LUCROPORC, NFI_LUCROVALOR, NFI_MODICMS, N' +
        'FI_MODICMSST, NFI_NOTA, NFI_ORIGEM, NFI_PAISISS, NFI_PEDIDOCLIEN' +
        'TE, NFI_PEDIDOCLIENTEITEM, NFI_PESO, NFI_PESOTOTAL, NFI_PRECOCUS' +
        'TO, NFI_PRECOCUSTOTOTAL, NFI_PROCESSOISS, NFI_PRODUTO, NFI_PRODU' +
        'TOREAL, NFI_QUANTIDADE, NFI_QUANTIDADETROCA, NFI_SEQUENCIA, NFI_' +
        'SERVICOISS, NFI_SOMACOFINSST, NFI_SOMAPISST, NFI_TIPO, NFI_TIPOI' +
        'SS, NFI_UNIDADE, NFI_VALORACESSORIAS, NFI_VALORADUANA, NFI_VALOR' +
        'CBS, NFI_VALORCBSCREDPRES, NFI_VALORCBSCREDPRESSUS, NFI_VALORCBS' +
        'DEV, NFI_VALORCBSDIF, NFI_VALORCOFINS, NFI_VALORCOFINSST, NFI_VA' +
        'LORCOMISSAO, NFI_VALORFCP, NFI_VALORFCPST, NFI_VALORFRETE, NFI_V' +
        'ALORIBS, NFI_VALORIBSCREDPRES, NFI_VALORIBSCREDPRESSUS, NFI_VALO' +
        'RIBSMUN, NFI_VALORIBSMUNDEV, NFI_VALORIBSMUNDIF, NFI_VALORIBSUF,' +
        ' NFI_VALORIBSUFDEV, NFI_VALORIBSUFDIF, NFI_VALORICMS, NFI_VALORI' +
        'CMSCREDSN, NFI_VALORICMSDESONERADO, NFI_VALORICMSST, NFI_VALORIC' +
        'MSSTRET, NFI_VALORICMSSUBSTITUTO, NFI_VALORICMSUFDEST, NFI_VALOR' +
        'ICMSUFREMET, NFI_VALORII, NFI_VALORIOF, NFI_VALORIPI, NFI_VALORI' +
        'S, NFI_VALORISS, NFI_VALORISSDEDUCAO, NFI_VALORISSDESCCOND, NFI_' +
        'VALORISSDESCINCOND, NFI_VALORISSOUTROS, NFI_VALORISSRETENCAO, NF' +
        'I_VALORPIS, NFI_VALORPISST, NFI_VALORSEGURO, NFI_VALORTOTAL, NFI' +
        '_VALORTOTALBRUTO, NFI_VALORTRIBUTOS, NFI_VALORTRIBUTOSEST, NFI_V' +
        'ALORTRIBUTOSFED, NFI_VALORTRIBUTOSIMP, NFI_VALORTRIBUTOSMUN, NFI' +
        '_VALORUNIT')
    DeleteSQL.Strings = (
      'DELETE FROM NFEITENS'
      'WHERE NFI_CODIGO = :OLD_NFI_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT NFI_ALIQCBS, NFI_ALIQCBSCREDPRES, NFI_ALIQCBSDIF, NFI_ALI' +
        'QCBSEFE, '
      
        '  NFI_ALIQCBSRED, NFI_ALIQCOFINS, NFI_ALIQCOFINSST, NFI_ALIQFCP,' +
        ' '
      
        '  NFI_ALIQFCPST, NFI_ALIQIBSCREDPRES, NFI_ALIQIBSMUN, NFI_ALIQIB' +
        'SMUNDIF, '
      
        '  NFI_ALIQIBSMUNEFE, NFI_ALIQIBSMUNRED, NFI_ALIQIBSUF, NFI_ALIQI' +
        'BSUFDIF, '
      
        '  NFI_ALIQIBSUFEFE, NFI_ALIQIBSUFRED, NFI_ALIQICMS, NFI_ALIQICMS' +
        'ADICST, '
      '  NFI_ALIQICMSINTER, NFI_ALIQICMSINTERPART, NFI_ALIQICMSRED, '
      '  NFI_ALIQICMSST, NFI_ALIQICMSSTRET, NFI_ALIQII, NFI_ALIQIPI, '
      
        '  NFI_ALIQIS, NFI_ALIQISESP, NFI_ALIQISS, NFI_ALIQPIS, NFI_ALIQP' +
        'ISST, '
      
        '  NFI_ALMOXARIFADO, NFI_BASECOFINS, NFI_BASECOFINSST, NFI_BASEIB' +
        'SCBS, '
      
        '  NFI_BASEICMS, NFI_BASEICMSRED, NFI_BASEICMSST, NFI_BASEICMSSTR' +
        'ET, '
      
        '  NFI_BASEII, NFI_BASEIPI, NFI_BASEIS, NFI_BASEISS, NFI_BASEPIS,' +
        ' '
      '  NFI_BASEPISST, NFI_BENEFICIO, NFI_CBSCREDITOPRES, NFI_CEST, '
      
        '  NFI_CFOP, NFI_CIDADEISS, NFI_CLASSFISCAL, NFI_CLASSTRIBIBSCBS,' +
        ' '
      '  NFI_CLASSTRIBIS, NFI_CODIGO, NFI_CODIGOBARRAS, NFI_CODIGOFAB, '
      
        '  NFI_COMISSAO, NFI_COMPLEMENTO, NFI_COMPOEBASEICMS, NFI_COMPOEB' +
        'ASEICMSST, '
      '  NFI_COMPOETOTAL, NFI_CONVERSAO, NFI_CSTCOFINS, NFI_CSTIBSCBS, '
      '  NFI_CSTICMS, NFI_CSTIPI, NFI_CSTIS, NFI_CSTPIS, NFI_DESCMAX, '
      '  NFI_DESCPORC, NFI_DESCRICAO, NFI_DESCVALOR, NFI_DESONERACAO, '
      
        '  NFI_DFEREF, NFI_DFEREFITEM, NFI_DICNPJ, NFI_DIDATA, NFI_DIDESE' +
        'MBARACODATA, '
      
        '  NFI_DIDESEMBARACOLOCAL, NFI_DIDESEMBARACOUF, NFI_DIEXPORTADORC' +
        'OD, '
      
        '  NFI_DIINTERMEDIO, NFI_DINUMERO, NFI_DITERCEIROUF, NFI_DITRANSP' +
        'ORTE, '
      
        '  NFI_DIVALORAFRMM, NFI_ENQUADRAMENTOIPI, NFI_EXCECAO, NFI_EXCHA' +
        'VEACESSO, '
      '  NFI_EXDRAWBACK, NFI_EXQUANTIDADE, NFI_EXREGISTRO, NFI_FCI, '
      '  NFI_IBSCREDITOPRES, NFI_INCENTIVOISS, NFI_INDICADORISS, '
      '  NFI_INFOADICIONAL, NFI_LOCALIZACAO, NFI_LOTE, NFI_LUCROPORC, '
      
        '  NFI_LUCROVALOR, NFI_MODICMS, NFI_MODICMSST, NFI_NOTA, NFI_ORIG' +
        'EM, '
      
        '  NFI_PAISISS, NFI_PEDIDOCLIENTE, NFI_PEDIDOCLIENTEITEM, NFI_PES' +
        'O, '
      
        '  NFI_PESOTOTAL, NFI_PRECOCUSTO, NFI_PRECOCUSTOTOTAL, NFI_PROCES' +
        'SOISS, '
      
        '  NFI_PRODUTO, NFI_PRODUTOREAL, NFI_QUANTIDADE, NFI_QUANTIDADETR' +
        'OCA, '
      
        '  NFI_SEQUENCIA, NFI_SERVICOISS, NFI_SOMACOFINSST, NFI_SOMAPISST' +
        ', '
      '  NFI_TIPO, NFI_TIPOISS, NFI_UNIDADE, NFI_VALORACESSORIAS, '
      
        '  NFI_VALORADUANA, NFI_VALORCBS, NFI_VALORCBSCREDPRES, NFI_VALOR' +
        'CBSCREDPRESSUS, '
      
        '  NFI_VALORCBSDEV, NFI_VALORCBSDIF, NFI_VALORCOFINS, NFI_VALORCO' +
        'FINSST, '
      
        '  NFI_VALORCOMISSAO, NFI_VALORFCP, NFI_VALORFCPST, NFI_VALORFRET' +
        'E, '
      '  NFI_VALORIBS, NFI_VALORIBSCREDPRES, NFI_VALORIBSCREDPRESSUS, '
      '  NFI_VALORIBSMUN, NFI_VALORIBSMUNDEV, NFI_VALORIBSMUNDIF, '
      
        '  NFI_VALORIBSUF, NFI_VALORIBSUFDEV, NFI_VALORIBSUFDIF, NFI_VALO' +
        'RICMS, '
      
        '  NFI_VALORICMSCREDSN, NFI_VALORICMSDESONERADO, NFI_VALORICMSST,' +
        ' '
      
        '  NFI_VALORICMSSTRET, NFI_VALORICMSSUBSTITUTO, NFI_VALORICMSUFDE' +
        'ST, '
      
        '  NFI_VALORICMSUFREMET, NFI_VALORII, NFI_VALORIOF, NFI_VALORIPI,' +
        ' '
      
        '  NFI_VALORIS, NFI_VALORISS, NFI_VALORISSDEDUCAO, NFI_VALORISSDE' +
        'SCCOND, '
      
        '  NFI_VALORISSDESCINCOND, NFI_VALORISSOUTROS, NFI_VALORISSRETENC' +
        'AO, '
      
        '  NFI_VALORPIS, NFI_VALORPISST, NFI_VALORSEGURO, NFI_VALORTOTAL,' +
        ' '
      '  NFI_VALORTOTALBRUTO, NFI_VALORTRIBUTOS, NFI_VALORTRIBUTOSEST, '
      
        '  NFI_VALORTRIBUTOSFED, NFI_VALORTRIBUTOSIMP, NFI_VALORTRIBUTOSM' +
        'UN, '
      '  NFI_VALORUNIT'
      'FROM NFEITENS'
      'WHERE NFI_CODIGO = :OLD_NFI_CODIGO')
    Left = 96
    Top = 344
  end
  object TBPagar: TFDQuery
    Connection = FDConnection1
    Transaction = TRPagar
    UpdateObject = UPPagar
    SQL.Strings = (
      'select '
      'PAG_BAIXADOPOR,'
      'PAG_CODIGO,'
      'PAG_CONTA,'
      'PAG_DESCPORC,'
      'PAG_DESCRICAO,'
      'PAG_DESCVALOR,'
      'PAG_DESPESA,'
      'PAG_DIASATRASO,'
      'PAG_DIASPRAZO,'
      'PAG_DTATUALIZACAO,'
      'PAG_DTCADASTRO,'
      'PAG_DTEMISSAO,'
      'PAG_DTJUROSAPOS,'
      'PAG_DTPAGAMENTO,'
      'PAG_DTVENCIMENTO,'
      'PAG_FORNECEDOR,'
      'PAG_HRATUALIZACAO,'
      'PAG_HRCADASTRO,'
      'PAG_JUROSPAGO,'
      'PAG_MULTAPAGO,'
      'PAG_NOVOCODIGO,'
      'PAG_NUMDOCTO,'
      'PAG_OBSERVACOES,'
      'PAG_PARCELANUM,'
      'PAG_PARCELAQTDE,'
      'PAG_PORCJUROS,'
      'PAG_STATUS,'
      'PAG_TIPOBAIXA,'
      'PAG_TIPODOCTO,'
      'PAG_USUARIO,'
      'PAG_VALOR,'
      'PAG_VALORJUROS,'
      'PAG_VALORMULTA,'
      'PAG_VALORORIGINAL,'
      'PAG_VALORPAGO,'
      'CON_NOME,'
      'CON_SALDO,'
      'DES_DESCRICAO,'
      'FOR_NOME'
      'from PAGAR'
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO'
      'left join DESPESAS on PAG_DESPESA=DES_CODIGO'
      'left join CONTAS on PAG_CONTA=CON_CODIGO'
      'where PAG_CODIGO=:codigo'
      'order by PAG_CODIGO'
      '')
    Left = 128
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBPagarPAG_BAIXADOPOR: TStringField
      FieldName = 'PAG_BAIXADOPOR'
      Origin = 'PAG_BAIXADOPOR'
    end
    object TBPagarPAG_CODIGO: TIntegerField
      FieldName = 'PAG_CODIGO'
      Origin = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBPagarPAG_CONTA: TIntegerField
      FieldName = 'PAG_CONTA'
      Origin = 'PAG_CONTA'
      Required = True
    end
    object TBPagarPAG_DESCPORC: TFMTBCDField
      FieldName = 'PAG_DESCPORC'
      Origin = 'PAG_DESCPORC'
      Precision = 18
    end
    object TBPagarPAG_DESCRICAO: TStringField
      FieldName = 'PAG_DESCRICAO'
      Origin = 'PAG_DESCRICAO'
      Size = 50
    end
    object TBPagarPAG_DESCVALOR: TFMTBCDField
      FieldName = 'PAG_DESCVALOR'
      Origin = 'PAG_DESCVALOR'
      Precision = 18
    end
    object TBPagarPAG_DESPESA: TIntegerField
      FieldName = 'PAG_DESPESA'
      Origin = 'PAG_DESPESA'
      Required = True
    end
    object TBPagarPAG_DIASATRASO: TIntegerField
      FieldName = 'PAG_DIASATRASO'
      Origin = 'PAG_DIASATRASO'
    end
    object TBPagarPAG_DIASPRAZO: TIntegerField
      FieldName = 'PAG_DIASPRAZO'
      Origin = 'PAG_DIASPRAZO'
    end
    object TBPagarPAG_DTATUALIZACAO: TDateField
      FieldName = 'PAG_DTATUALIZACAO'
      Origin = 'PAG_DTATUALIZACAO'
    end
    object TBPagarPAG_DTCADASTRO: TDateField
      FieldName = 'PAG_DTCADASTRO'
      Origin = 'PAG_DTCADASTRO'
    end
    object TBPagarPAG_DTEMISSAO: TDateField
      FieldName = 'PAG_DTEMISSAO'
      Origin = 'PAG_DTEMISSAO'
    end
    object TBPagarPAG_DTJUROSAPOS: TDateField
      FieldName = 'PAG_DTJUROSAPOS'
      Origin = 'PAG_DTJUROSAPOS'
    end
    object TBPagarPAG_DTPAGAMENTO: TDateField
      FieldName = 'PAG_DTPAGAMENTO'
      Origin = 'PAG_DTPAGAMENTO'
    end
    object TBPagarPAG_DTVENCIMENTO: TDateField
      FieldName = 'PAG_DTVENCIMENTO'
      Origin = 'PAG_DTVENCIMENTO'
    end
    object TBPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      Origin = 'PAG_FORNECEDOR'
      Required = True
    end
    object TBPagarPAG_HRATUALIZACAO: TTimeField
      FieldName = 'PAG_HRATUALIZACAO'
      Origin = 'PAG_HRATUALIZACAO'
    end
    object TBPagarPAG_HRCADASTRO: TTimeField
      FieldName = 'PAG_HRCADASTRO'
      Origin = 'PAG_HRCADASTRO'
    end
    object TBPagarPAG_JUROSPAGO: TFMTBCDField
      FieldName = 'PAG_JUROSPAGO'
      Origin = 'PAG_JUROSPAGO'
      Precision = 18
    end
    object TBPagarPAG_MULTAPAGO: TFMTBCDField
      FieldName = 'PAG_MULTAPAGO'
      Origin = 'PAG_MULTAPAGO'
      Precision = 18
    end
    object TBPagarPAG_NOVOCODIGO: TIntegerField
      FieldName = 'PAG_NOVOCODIGO'
      Origin = 'PAG_NOVOCODIGO'
    end
    object TBPagarPAG_NUMDOCTO: TStringField
      FieldName = 'PAG_NUMDOCTO'
      Origin = 'PAG_NUMDOCTO'
    end
    object TBPagarPAG_OBSERVACOES: TMemoField
      FieldName = 'PAG_OBSERVACOES'
      Origin = 'PAG_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBPagarPAG_PARCELANUM: TIntegerField
      FieldName = 'PAG_PARCELANUM'
      Origin = 'PAG_PARCELANUM'
    end
    object TBPagarPAG_PARCELAQTDE: TIntegerField
      FieldName = 'PAG_PARCELAQTDE'
      Origin = 'PAG_PARCELAQTDE'
    end
    object TBPagarPAG_PORCJUROS: TFMTBCDField
      FieldName = 'PAG_PORCJUROS'
      Origin = 'PAG_PORCJUROS'
      Precision = 18
    end
    object TBPagarPAG_STATUS: TStringField
      FieldName = 'PAG_STATUS'
      Origin = 'PAG_STATUS'
      Size = 1
    end
    object TBPagarPAG_TIPOBAIXA: TStringField
      FieldName = 'PAG_TIPOBAIXA'
      Origin = 'PAG_TIPOBAIXA'
      Size = 1
    end
    object TBPagarPAG_TIPODOCTO: TStringField
      FieldName = 'PAG_TIPODOCTO'
      Origin = 'PAG_TIPODOCTO'
    end
    object TBPagarPAG_USUARIO: TStringField
      FieldName = 'PAG_USUARIO'
      Origin = 'PAG_USUARIO'
    end
    object TBPagarPAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      Origin = 'PAG_VALOR'
      Precision = 18
    end
    object TBPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      Origin = 'PAG_VALORJUROS'
      Precision = 18
    end
    object TBPagarPAG_VALORMULTA: TFMTBCDField
      FieldName = 'PAG_VALORMULTA'
      Origin = 'PAG_VALORMULTA'
      Precision = 18
    end
    object TBPagarPAG_VALORORIGINAL: TFMTBCDField
      FieldName = 'PAG_VALORORIGINAL'
      Origin = 'PAG_VALORORIGINAL'
      Precision = 18
    end
    object TBPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      Origin = 'PAG_VALORPAGO'
      Precision = 18
    end
    object TBPagarCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBPagarCON_SALDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CON_SALDO'
      Origin = 'CON_SALDO'
      ProviderFlags = []
      Precision = 18
    end
    object TBPagarDES_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_DESCRICAO'
      Origin = 'DES_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBPagarFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRPagar: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 128
    Top = 392
  end
  object UPPagar: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PAGAR'
      '(PAG_BAIXADOPOR, PAG_CODIGO, PAG_CONTA, PAG_DESCPORC, '
      '  PAG_DESCRICAO, PAG_DESCVALOR, PAG_DESPESA, '
      '  PAG_DIASATRASO, PAG_DIASPRAZO, PAG_DTATUALIZACAO, '
      '  PAG_DTCADASTRO, PAG_DTEMISSAO, PAG_DTJUROSAPOS, '
      '  PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, PAG_FORNECEDOR, '
      '  PAG_HRATUALIZACAO, PAG_HRCADASTRO, PAG_JUROSPAGO, '
      '  PAG_MULTAPAGO, PAG_NOVOCODIGO, PAG_NUMDOCTO, '
      '  PAG_OBSERVACOES, PAG_PARCELANUM, PAG_PARCELAQTDE, '
      '  PAG_PORCJUROS, PAG_STATUS, PAG_TIPOBAIXA, '
      '  PAG_TIPODOCTO, PAG_USUARIO, PAG_VALOR, PAG_VALORJUROS, '
      '  PAG_VALORMULTA, PAG_VALORORIGINAL, PAG_VALORPAGO)'
      
        'VALUES (:NEW_PAG_BAIXADOPOR, gen_id(GEN_PAGAR,1), :NEW_PAG_CONTA' +
        ', :NEW_PAG_DESCPORC, '
      '  :NEW_PAG_DESCRICAO, :NEW_PAG_DESCVALOR, :NEW_PAG_DESPESA, '
      
        '  :NEW_PAG_DIASATRASO, :NEW_PAG_DIASPRAZO, :NEW_PAG_DTATUALIZACA' +
        'O, '
      
        '  :NEW_PAG_DTCADASTRO, :NEW_PAG_DTEMISSAO, :NEW_PAG_DTJUROSAPOS,' +
        ' '
      
        '  :NEW_PAG_DTPAGAMENTO, :NEW_PAG_DTVENCIMENTO, :NEW_PAG_FORNECED' +
        'OR, '
      
        '  :NEW_PAG_HRATUALIZACAO, :NEW_PAG_HRCADASTRO, :NEW_PAG_JUROSPAG' +
        'O, '
      '  :NEW_PAG_MULTAPAGO, :NEW_PAG_NOVOCODIGO, :NEW_PAG_NUMDOCTO, '
      
        '  :NEW_PAG_OBSERVACOES, :NEW_PAG_PARCELANUM, :NEW_PAG_PARCELAQTD' +
        'E, '
      '  :NEW_PAG_PORCJUROS, :NEW_PAG_STATUS, :NEW_PAG_TIPOBAIXA, '
      
        '  :NEW_PAG_TIPODOCTO, :NEW_PAG_USUARIO, :NEW_PAG_VALOR, :NEW_PAG' +
        '_VALORJUROS, '
      
        '  :NEW_PAG_VALORMULTA, :NEW_PAG_VALORORIGINAL, :NEW_PAG_VALORPAG' +
        'O)'
      
        'RETURNING PAG_BAIXADOPOR, PAG_CODIGO, PAG_CONTA, PAG_DESCPORC, P' +
        'AG_DESCRICAO, PAG_DESCVALOR, PAG_DESPESA, PAG_DIASATRASO, PAG_DI' +
        'ASPRAZO, PAG_DTATUALIZACAO, PAG_DTCADASTRO, PAG_DTEMISSAO, PAG_D' +
        'TJUROSAPOS, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, PAG_FORNECEDOR, P' +
        'AG_HRATUALIZACAO, PAG_HRCADASTRO, PAG_JUROSPAGO, PAG_MULTAPAGO, ' +
        'PAG_NOVOCODIGO, PAG_NUMDOCTO, PAG_OBSERVACOES, PAG_PARCELANUM, P' +
        'AG_PARCELAQTDE, PAG_PORCJUROS, PAG_STATUS, PAG_TIPOBAIXA, PAG_TI' +
        'PODOCTO, PAG_USUARIO, PAG_VALOR, PAG_VALORJUROS, PAG_VALORMULTA,' +
        ' PAG_VALORORIGINAL, PAG_VALORPAGO')
    ModifySQL.Strings = (
      'UPDATE PAGAR'
      
        'SET PAG_BAIXADOPOR = :NEW_PAG_BAIXADOPOR, PAG_CODIGO = :NEW_PAG_' +
        'CODIGO, '
      '  PAG_CONTA = :NEW_PAG_CONTA, PAG_DESCPORC = :NEW_PAG_DESCPORC, '
      
        '  PAG_DESCRICAO = :NEW_PAG_DESCRICAO, PAG_DESCVALOR = :NEW_PAG_D' +
        'ESCVALOR, '
      
        '  PAG_DESPESA = :NEW_PAG_DESPESA, PAG_DIASATRASO = :NEW_PAG_DIAS' +
        'ATRASO, '
      
        '  PAG_DIASPRAZO = :NEW_PAG_DIASPRAZO, PAG_DTATUALIZACAO = :NEW_P' +
        'AG_DTATUALIZACAO, '
      
        '  PAG_DTCADASTRO = :NEW_PAG_DTCADASTRO, PAG_DTEMISSAO = :NEW_PAG' +
        '_DTEMISSAO, '
      
        '  PAG_DTJUROSAPOS = :NEW_PAG_DTJUROSAPOS, PAG_DTPAGAMENTO = :NEW' +
        '_PAG_DTPAGAMENTO, '
      
        '  PAG_DTVENCIMENTO = :NEW_PAG_DTVENCIMENTO, PAG_FORNECEDOR = :NE' +
        'W_PAG_FORNECEDOR, '
      
        '  PAG_HRATUALIZACAO = :NEW_PAG_HRATUALIZACAO, PAG_HRCADASTRO = :' +
        'NEW_PAG_HRCADASTRO, '
      
        '  PAG_JUROSPAGO = :NEW_PAG_JUROSPAGO, PAG_MULTAPAGO = :NEW_PAG_M' +
        'ULTAPAGO, '
      
        '  PAG_NOVOCODIGO = :NEW_PAG_NOVOCODIGO, PAG_NUMDOCTO = :NEW_PAG_' +
        'NUMDOCTO, '
      
        '  PAG_OBSERVACOES = :NEW_PAG_OBSERVACOES, PAG_PARCELANUM = :NEW_' +
        'PAG_PARCELANUM, '
      
        '  PAG_PARCELAQTDE = :NEW_PAG_PARCELAQTDE, PAG_PORCJUROS = :NEW_P' +
        'AG_PORCJUROS, '
      
        '  PAG_STATUS = :NEW_PAG_STATUS, PAG_TIPOBAIXA = :NEW_PAG_TIPOBAI' +
        'XA, '
      
        '  PAG_TIPODOCTO = :NEW_PAG_TIPODOCTO, PAG_USUARIO = :NEW_PAG_USU' +
        'ARIO, '
      
        '  PAG_VALOR = :NEW_PAG_VALOR, PAG_VALORJUROS = :NEW_PAG_VALORJUR' +
        'OS, '
      
        '  PAG_VALORMULTA = :NEW_PAG_VALORMULTA, PAG_VALORORIGINAL = :NEW' +
        '_PAG_VALORORIGINAL, '
      '  PAG_VALORPAGO = :NEW_PAG_VALORPAGO'
      'WHERE PAG_CODIGO = :OLD_PAG_CODIGO'
      
        'RETURNING PAG_BAIXADOPOR, PAG_CODIGO, PAG_CONTA, PAG_DESCPORC, P' +
        'AG_DESCRICAO, PAG_DESCVALOR, PAG_DESPESA, PAG_DIASATRASO, PAG_DI' +
        'ASPRAZO, PAG_DTATUALIZACAO, PAG_DTCADASTRO, PAG_DTEMISSAO, PAG_D' +
        'TJUROSAPOS, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, PAG_FORNECEDOR, P' +
        'AG_HRATUALIZACAO, PAG_HRCADASTRO, PAG_JUROSPAGO, PAG_MULTAPAGO, ' +
        'PAG_NOVOCODIGO, PAG_NUMDOCTO, PAG_OBSERVACOES, PAG_PARCELANUM, P' +
        'AG_PARCELAQTDE, PAG_PORCJUROS, PAG_STATUS, PAG_TIPOBAIXA, PAG_TI' +
        'PODOCTO, PAG_USUARIO, PAG_VALOR, PAG_VALORJUROS, PAG_VALORMULTA,' +
        ' PAG_VALORORIGINAL, PAG_VALORPAGO')
    DeleteSQL.Strings = (
      'DELETE FROM PAGAR'
      'WHERE PAG_CODIGO = :OLD_PAG_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PAG_BAIXADOPOR, PAG_CODIGO, PAG_CONTA, PAG_DESCPORC, PAG_' +
        'DESCRICAO, '
      '  PAG_DESCVALOR, PAG_DESPESA, PAG_DIASATRASO, PAG_DIASPRAZO, '
      
        '  PAG_DTATUALIZACAO, PAG_DTCADASTRO, PAG_DTEMISSAO, PAG_DTJUROSA' +
        'POS, '
      
        '  PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, PAG_FORNECEDOR, PAG_HRATUAL' +
        'IZACAO, '
      '  PAG_HRCADASTRO, PAG_JUROSPAGO, PAG_MULTAPAGO, PAG_NOVOCODIGO, '
      
        '  PAG_NUMDOCTO, PAG_OBSERVACOES, PAG_PARCELANUM, PAG_PARCELAQTDE' +
        ', '
      '  PAG_PORCJUROS, PAG_STATUS, PAG_TIPOBAIXA, PAG_TIPODOCTO, '
      '  PAG_USUARIO, PAG_VALOR, PAG_VALORJUROS, PAG_VALORMULTA, '
      '  PAG_VALORORIGINAL, PAG_VALORPAGO'
      'FROM PAGAR'
      'WHERE PAG_CODIGO = :OLD_PAG_CODIGO')
    Left = 128
    Top = 344
  end
  object TBParametros: TFDQuery
    Connection = FDConnection1
    Transaction = TRParametros
    UpdateObject = UPParametros
    SQL.Strings = (
      'select * from PARAMETROS '
      'where PAR_CODIGO=:codigo'
      'order by PAR_CODIGO'
      '')
    Left = 192
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    object TBParametrosPAR_BOLETOSZAPASSUNTO: TIntegerField
      FieldName = 'PAR_BOLETOSZAPASSUNTO'
      Origin = 'PAR_BOLETOSZAPASSUNTO'
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
    object TBParametrosPAR_LOCALLOGOMARCA: TStringField
      FieldName = 'PAR_LOCALLOGOMARCA'
      Origin = 'PAR_LOCALLOGOMARCA'
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
    object TBParametrosPAR_NFCECSCHOMOLOGACAO: TStringField
      FieldName = 'PAR_NFCECSCHOMOLOGACAO'
      Origin = 'PAR_NFCECSCHOMOLOGACAO'
      Size = 40
    end
    object TBParametrosPAR_NFCECSCID: TStringField
      FieldName = 'PAR_NFCECSCID'
      Origin = 'PAR_NFCECSCID'
      Size = 40
    end
    object TBParametrosPAR_NFCECSCIDHOMOLOGACAO: TStringField
      FieldName = 'PAR_NFCECSCIDHOMOLOGACAO'
      Origin = 'PAR_NFCECSCIDHOMOLOGACAO'
      Size = 40
    end
    object TBParametrosPAR_NFCEIMPRIMIR: TStringField
      FieldName = 'PAR_NFCEIMPRIMIR'
      Origin = 'PAR_NFCEIMPRIMIR'
      Size = 1
    end
    object TBParametrosPAR_NFCEIMPRIMIRLOGO: TStringField
      FieldName = 'PAR_NFCEIMPRIMIRLOGO'
      Origin = 'PAR_NFCEIMPRIMIRLOGO'
      Size = 1
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
    object TBParametrosPAR_NFCETEMPOMSG: TIntegerField
      FieldName = 'PAR_NFCETEMPOMSG'
      Origin = 'PAR_NFCETEMPOMSG'
    end
    object TBParametrosPAR_NFCETIMEOUT: TIntegerField
      FieldName = 'PAR_NFCETIMEOUT'
      Origin = 'PAR_NFCETIMEOUT'
    end
    object TBParametrosPAR_NFCETIPODANFCE: TStringField
      FieldName = 'PAR_NFCETIPODANFCE'
      Origin = 'PAR_NFCETIPODANFCE'
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
    object TBParametrosPAR_NFEZAPASSUNTO: TIntegerField
      FieldName = 'PAR_NFEZAPASSUNTO'
      Origin = 'PAR_NFEZAPASSUNTO'
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
    object TBParametrosPAR_NFSETIMEOUT: TIntegerField
      FieldName = 'PAR_NFSETIMEOUT'
      Origin = 'PAR_NFSETIMEOUT'
    end
    object TBParametrosPAR_NFSEVERSAO: TStringField
      FieldName = 'PAR_NFSEVERSAO'
      Origin = 'PAR_NFSEVERSAO'
      Size = 5
    end
    object TBParametrosPAR_NFSEZAPASSUNTO: TIntegerField
      FieldName = 'PAR_NFSEZAPASSUNTO'
      Origin = 'PAR_NFSEZAPASSUNTO'
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
    object TBParametrosPAR_REE_DTJUROSAPOS: TIntegerField
      FieldName = 'PAR_REE_DTJUROSAPOS'
      Origin = 'PAR_REE_DTJUROSAPOS'
    end
    object TBParametrosPAR_REFORMATRIBUTARIA: TStringField
      FieldName = 'PAR_REFORMATRIBUTARIA'
      Origin = 'PAR_REFORMATRIBUTARIA'
      Size = 1
    end
    object TBParametrosPAR_REGRAFISCALPADRAO: TIntegerField
      FieldName = 'PAR_REGRAFISCALPADRAO'
      Origin = 'PAR_REGRAFISCALPADRAO'
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
    object TBParametrosPAR_TIPOAMBIENTENFCE: TStringField
      FieldName = 'PAR_TIPOAMBIENTENFCE'
      Origin = 'PAR_TIPOAMBIENTENFCE'
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
    object TBParametrosPAR_VENDAZAPASSUNTO: TIntegerField
      FieldName = 'PAR_VENDAZAPASSUNTO'
      Origin = 'PAR_VENDAZAPASSUNTO'
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
    object TBParametrosPAR_ZAPBASE: TStringField
      FieldName = 'PAR_ZAPBASE'
      Origin = 'PAR_ZAPBASE'
      Size = 200
    end
    object TBParametrosPAR_ZAPSENHA: TStringField
      FieldName = 'PAR_ZAPSENHA'
      Origin = 'PAR_ZAPSENHA'
      Size = 40
    end
    object TBParametrosPAR_ZAPSERVIDOR: TStringField
      FieldName = 'PAR_ZAPSERVIDOR'
      Origin = 'PAR_ZAPSERVIDOR'
    end
    object TBParametrosPAR_ZAPUSUARIO: TStringField
      FieldName = 'PAR_ZAPUSUARIO'
      Origin = 'PAR_ZAPUSUARIO'
    end
  end
  object TRParametros: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 192
    Top = 392
  end
  object UPParametros: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PARAMETROS'
      '(PAR_ABRIRLOCPRODUTOS, PAR_ACRESCIMOPOR, PAR_ACRESCIMOPORC, '
      
        '  PAR_ACRESCIMOVALOR, PAR_ALMOXARIFADOPADRAO, PAR_APIBRASILDEVIC' +
        'ETOKEN, '
      '  PAR_APIBRASILLOGIN, PAR_APIBRASILPLACA, PAR_APIBRASILSENHA, '
      '  PAR_ARQUIVOCERTIFICADO, PAR_ATUALIZADOR, PAR_AULASFERIADOS, '
      '  PAR_BAIRROPADRAO, PAR_BLOQUEARCLIENTEDIAS, PAR_BOLETOPADRAO, '
      '  PAR_BOLETOSEMAILASSUNTO, PAR_BOLETOSZAPASSUNTO, '
      '  PAR_CALCULARPESOLIQUIDO, PAR_CALCULARPONTUACAO, '
      '  PAR_CFOPFORAPADRAO, PAR_CFOPPADRAO, PAR_CFOPPRODUTO, '
      '  PAR_CFOPSERVICOPADRAO, PAR_CHATHABILITADO, PAR_CHAVECNPJA, '
      '  PAR_CHECARSPED, PAR_CIDADEPADRAO, PAR_CLASSFISCALPADRAO, '
      '  PAR_CLI_ATIVIDADE, PAR_CLI_BLOQUEARVENDA, PAR_CLI_MAILING, '
      '  PAR_CLI_TELEVENDA, PAR_CLI_VENDEDOR, PAR_CLIENTESANEXOSEMAIL, '
      '  PAR_CLIENTESTODOS, PAR_CNPJCERTIFICADO, PAR_COBRARDESCONTO, '
      '  PAR_CODIGO, PAR_COMANDASCLIENTE, PAR_COMANDASLF, '
      '  PAR_COMANDASLI, PAR_COMANDASQL, PAR_COMANDASRP, '
      '  PAR_COMISSAOPOR, PAR_COMPRAEMAILASSUNTO, PAR_COMPRASEMAILBCC, '
      
        '  PAR_CONCEITOAFINAL, PAR_CONCEITOAINICIAL, PAR_CONCEITOAMINUSFI' +
        'NAL, '
      '  PAR_CONCEITOAMINUSINICIAL, PAR_CONCEITOAPLUSFINAL, '
      '  PAR_CONCEITOAPLUSINICIAL, PAR_CONCEITOBFINAL, '
      '  PAR_CONCEITOBINICIAL, PAR_CONCEITOBMINUSFINAL, '
      '  PAR_CONCEITOBMINUSINICIAL, PAR_CONCEITOBPLUSFINAL, '
      '  PAR_CONCEITOBPLUSINICIAL, PAR_CONCEITOCFINAL, '
      '  PAR_CONCEITOCINICIAL, PAR_CONCEITOCMINUSFINAL, '
      '  PAR_CONCEITOCMINUSINICIAL, PAR_CONCEITOCPLUSFINAL, '
      '  PAR_CONCEITOCPLUSINICIAL, PAR_CONCEITODFINAL, '
      '  PAR_CONCEITODINICIAL, PAR_CONCEITODMINUSFINAL, '
      '  PAR_CONCEITODMINUSINICIAL, PAR_CONCEITODPLUSFINAL, '
      '  PAR_CONCEITODPLUSINICIAL, PAR_CONCEITOEFINAL, '
      
        '  PAR_CONCEITOEINICIAL, PAR_CONDICAOPADRAO, PAR_CONSULTASANEXOSE' +
        'MAIL, '
      '  PAR_CONTALOCALPADRAO, PAR_CONTAPADRAO, PAR_CORICONE, '
      '  PAR_CORTEPAPEL, PAR_COTACAOPONTOS, PAR_CREDITOICMSSN, '
      '  PAR_CSRT, PAR_CSRTID, PAR_CSTCOFINSPADRAO, '
      '  PAR_CSTICMSPADRAO, PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO, '
      '  PAR_CTE_CSTICMS, PAR_CTE_VEICULO, PAR_CTEALIQTRIBUTOS, '
      
        '  PAR_CTECCEEMAILASSUNTO, PAR_CTEEMAILASSUNTO, PAR_CTEEMAILSISTE' +
        'MA, '
      '  PAR_CTEMODELO, PAR_CTESERIE, PAR_CTEVISUALIZARDACTE, '
      '  PAR_DDDPADRAO, PAR_DESCMAXPADRAO, PAR_DESCONTOPORCLIENTE, '
      
        '  PAR_DESPESAPADRAO, PAR_DIAPREFERENCIAL01, PAR_DIAPREFERENCIAL0' +
        '2, '
      '  PAR_DIAPREFERENCIAL03, PAR_DIAPREFERENCIAL04, '
      '  PAR_DIAPREFERENCIAL05, PAR_DIAPREFERENCIAL06, '
      '  PAR_DIAPREFERENCIAL07, PAR_DIAPREFERENCIAL08, '
      '  PAR_DIAPREFERENCIAL09, PAR_DIAPREFERENCIAL10, '
      '  PAR_DIAPREFERENCIAL11, PAR_DIAPREFERENCIAL12, '
      '  PAR_DIAPREFERENCIAL13, PAR_DIAPREFERENCIAL14, '
      '  PAR_DIAPREFERENCIAL15, PAR_DIAPREFERENCIAL16, '
      '  PAR_DIAPREFERENCIAL17, PAR_DIAPREFERENCIAL18, '
      '  PAR_DIAPREFERENCIAL19, PAR_DIAPREFERENCIAL20, '
      '  PAR_DIAPREFERENCIAL21, PAR_DIAPREFERENCIAL22, '
      '  PAR_DIAPREFERENCIAL23, PAR_DIAPREFERENCIAL24, '
      '  PAR_DIAPREFERENCIAL25, PAR_DIAPREFERENCIAL26, '
      '  PAR_DIAPREFERENCIAL27, PAR_DIAPREFERENCIAL28, '
      '  PAR_ENQUADRAMENTOIPI, PAR_ESPECIEPADRAO, PAR_ESTADOPADRAO, '
      '  PAR_ESTOQUEESPADRAO, PAR_ETIQUETACONFERENCIA, '
      
        '  PAR_ETIQUETAEMBALAGEM, PAR_ETIQUETAMODELO1, PAR_EXIBIRTELARESU' +
        'MO, '
      '  PAR_EXPEDIDOPORVENDEDOR, PAR_EXPEDIDOR, PAR_FAMILIACURSOS, '
      '  PAR_FAMILIAMATERIAIS, PAR_FORNECEDORESANEXOSEMAIL, '
      '  PAR_FRETEPORCONTA, PAR_FRETEPRIMEIRAPARCELA, PAR_FUSOHORARIO, '
      '  PAR_GNRECONVENIO, PAR_GNRERECEITA, PAR_GNRESCHEMAS, '
      '  PAR_HIGHHEIGHT, PAR_HIGHWIDTH, PAR_HORAAULA, '
      
        '  PAR_HRCOMERCIALFIM, PAR_HRCOMERCIALINICIO, PAR_IDENTIFICACAOSI' +
        'STEMA, '
      '  PAR_IMPRIMIRCANHOTOPEDIDO, PAR_IMPRIMIRCONDICAO, '
      '  PAR_IMPRIMIRLOGOTIPO, PAR_IMPRIMIRNOMEFANTASIA, '
      
        '  PAR_IMPRIMIRNUMPEDIDO, PAR_IMPRIMIRRECEBER, PAR_IMPRIMIRSALDOA' +
        'C, '
      '  PAR_INFOCOBRANCAXML, PAR_INTERMEDIADOR, PAR_INTERMEDIADORCAD, '
      '  PAR_INTERMEDIADORCNPJ, PAR_JURIDICOSITE1, PAR_JURIDICOSITE2, '
      '  PAR_JURIDICOSITE3, PAR_JUROSMENSAL, PAR_LIBCRYPT, '
      '  PAR_LIBHTTP, PAR_LIBSSL, PAR_LIBXMLSIGN, '
      '  PAR_LICENCADLL, PAR_LICENCADLLCTE, PAR_LICENCADLLMDFE, '
      
        '  PAR_LIMITECREDITO, PAR_LINHASFINALRECIBO, PAR_LINHASINICIORECI' +
        'BO, '
      
        '  PAR_LOCACOESDIAS, PAR_LOCACOESHORALIMITE, PAR_LOCALANEXOSCLIEN' +
        'TES, '
      '  PAR_LOCALANEXOSCONSULTAS, PAR_LOCALANEXOSFORNECEDORES, '
      '  PAR_LOCALANEXOSPROCESSOS, PAR_LOCALANEXOSPRODUTOS, '
      '  PAR_LOCALANEXOSSEGUROS, PAR_LOCALATUALIZACOES, '
      
        '  PAR_LOCALDENTES, PAR_LOCALESTUDAPADRAO, PAR_LOCALFOTOSIMOVEIS,' +
        ' '
      '  PAR_LOCALFOTOSPRODUTOS, PAR_LOCALIMAGENSCONSULTAS, '
      '  PAR_LOCALLOGOMARCA, PAR_LOCALMODELOSDOC, PAR_LOCALPADRAO, '
      '  PAR_LOCALPRONTUARIOS, PAR_LOCPRODUTOSPRECOS, PAR_LOWHEIGHT, '
      '  PAR_LOWWIDTH, PAR_MALCOLMREQ, PAR_MALCOLMRESP, '
      '  PAR_MARCAPADRAO, PAR_MARGEMPADRAO, PAR_MATRICULASEMMATERIAL, '
      '  PAR_MDFEMODELO, PAR_MDFESERIE, PAR_MULTAPORC, '
      
        '  PAR_MULTATIPO, PAR_NFCECONTINGENCIADATA, PAR_NFCECONTINGENCIAH' +
        'ORA, '
      
        '  PAR_NFCECONTINGENCIAJUST, PAR_NFCECSC, PAR_NFCECSCHOMOLOGACAO,' +
        ' '
      '  PAR_NFCECSCID, PAR_NFCECSCIDHOMOLOGACAO, PAR_NFCEIMPRIMIR, '
      '  PAR_NFCEIMPRIMIRLOGO, PAR_NFCEMODELO, PAR_NFCESCHEMAS, '
      '  PAR_NFCESERIE, PAR_NFCETEMPOMSG, PAR_NFCETIMEOUT, '
      
        '  PAR_NFCETIPODANFCE, PAR_NFCETIPOEMISSAO, PAR_NFECCEEMAILASSUNT' +
        'O, '
      '  PAR_NFECONTINGENCIADATA, PAR_NFECONTINGENCIAHORA, '
      '  PAR_NFECONTINGENCIAJUST, PAR_NFEEMAILASSUNTO, '
      '  PAR_NFEEMAILAUTOMATICO, PAR_NFEEMAILBCC, PAR_NFEEMAILTRANSP, '
      '  PAR_NFEMODELO, PAR_NFESERIE, PAR_NFETIPOATENDIMENTO, '
      
        '  PAR_NFETIPOCONSUMIDOR, PAR_NFETIPOEMISSAO, PAR_NFEVISUALIZARDA' +
        'NFE, '
      
        '  PAR_NFEZAPASSUNTO, PAR_NFSEEMAILASSUNTO, PAR_NFSEEMAILAUTOMATI' +
        'CO, '
      '  PAR_NFSEINFOADICIONAIS, PAR_NFSEPROVEDOR, PAR_NFSERETENCAO, '
      '  PAR_NFSERETENCAORESP, PAR_NFSESCHEMAS, PAR_NFSESERIE, '
      '  PAR_NFSESERVICO, PAR_NFSETIMEOUT, PAR_NFSEVERSAO, '
      '  PAR_NFSEZAPASSUNTO, PAR_NOMECERTIFICADO, PAR_NOTASLF, '
      '  PAR_NOTASLI, PAR_NOTASQL, PAR_NOTASQLOBS, '
      '  PAR_PASTAHIGH, PAR_PASTALOW, PAR_PREVISUALIZARVENDA, '
      '  PAR_PRODUCAODTPREVISAO, PAR_PRODUTOCODIGOLIVRE, '
      '  PAR_PRODUTOMAODEOBRA, PAR_PRODUTOSANEXOSEMAIL, '
      '  PAR_PRODUTOSCODIGOFAB, PAR_PRODUTOSLF, PAR_PRODUTOSLI, '
      '  PAR_PRODUTOSQL, PAR_PROFAMILIA, PAR_PROFORNECEDOR, '
      '  PAR_PROGRUPO, PAR_PROMARCA, PAR_PROMISSORIASCODIGO, '
      '  PAR_PROUNIDADE, PAR_PROXY, PAR_PROXYENDERECO, '
      '  PAR_PROXYPASSWORD, PAR_PROXYPORTA, PAR_PROXYUSER, '
      
        '  PAR_QTDENIVEISCOMPOSTO, PAR_RECEITAPADRAO, PAR_RECIBOSEMAILASS' +
        'UNTO, '
      
        '  PAR_REE_DTJUROSAPOS, PAR_REFORMATRIBUTARIA, PAR_REGRAFISCALPAD' +
        'RAO, '
      
        '  PAR_REPOSITORIOBOLETOS, PAR_REPOSITORIOCTE, PAR_REPOSITORIOMDF' +
        'E, '
      '  PAR_REPOSITORIONFCE, PAR_REPOSITORIONFE, PAR_REPOSITORIONFSE, '
      '  PAR_RNTRC, PAR_SEGUROSANEXOSEMAIL, PAR_SENHACERTIFICADO, '
      '  PAR_SERIALCERTIFICADO, PAR_SERVICOSCLIENTEDIFERENTE, '
      '  PAR_SERVICOSDTPREVISAO, PAR_SERVICOSEMAILASSUNTO, '
      '  PAR_SERVICOSLF, PAR_SERVICOSLI, PAR_SERVICOSORCLF, '
      '  PAR_SERVICOSORCLI, PAR_SERVICOSORCQL, PAR_SERVICOSORCRP, '
      '  PAR_SERVICOSPRINTPADRAO, PAR_SERVICOSPV, PAR_SERVICOSRPA, '
      '  PAR_SERVICOSRPF, PAR_SERVICOSSERIEMASK, PAR_SERVICOSTIMBRADA, '
      '  PAR_SIGLAUF, PAR_SIGLAUFCTE, PAR_SIGLAUFMDFE, '
      '  PAR_SIGLAWS, PAR_SIGLAWSCTE, PAR_SIGLAWSGNRE, '
      '  PAR_SIGLAWSMDFE, PAR_STPRIMEIRAPARCELA, PAR_TABELAPRECO, '
      '  PAR_TAXAPADRAO, PAR_TELEVENDAPROXCONTATO, PAR_TEMPERATURA1, '
      '  PAR_TEMPERATURA2, PAR_TEMPERATURA3, PAR_TEMPERATURA4, '
      '  PAR_TEMPERATURA5, PAR_TEMPOPADRAO, PAR_TIPOAMBIENTE, '
      
        '  PAR_TIPOAMBIENTECTE, PAR_TIPOAMBIENTEGNRE, PAR_TIPOAMBIENTEMDF' +
        'E, '
      
        '  PAR_TIPOAMBIENTENFCE, PAR_TIPOAMBIENTENFSE, PAR_TIPOCODIGOEXPR' +
        'ESSO, '
      '  PAR_TRANSPORTADORAPADRAO, PAR_USARCODIGOFAB, PAR_USARMARKUP, '
      '  PAR_VALFINALCERTIFICADO, PAR_VALINICIALCERTIFICADO, '
      '  PAR_VALORBOLETO, PAR_VALORMULTA, PAR_VEICULOSPORCLUCRO, '
      '  PAR_VENDAEMAILASSUNTO, PAR_VENDASLF, PAR_VENDASLF2, '
      '  PAR_VENDASLI, PAR_VENDASQL, PAR_VENDASQL2, '
      '  PAR_VENDASRP, PAR_VENDAZAPASSUNTO, PAR_VENDEESTOQUEZERO, '
      '  PAR_VENDERCOMPOSTO, PAR_VERSAOXML, PAR_VERSAOXMLCTE, '
      '  PAR_VERSAOXMLMDFE, PAR_ZAPBASE, PAR_ZAPSENHA, '
      '  PAR_ZAPSERVIDOR, PAR_ZAPUSUARIO)'
      
        'VALUES (:NEW_PAR_ABRIRLOCPRODUTOS, :NEW_PAR_ACRESCIMOPOR, :NEW_P' +
        'AR_ACRESCIMOPORC, '
      
        '  :NEW_PAR_ACRESCIMOVALOR, :NEW_PAR_ALMOXARIFADOPADRAO, :NEW_PAR' +
        '_APIBRASILDEVICETOKEN, '
      
        '  :NEW_PAR_APIBRASILLOGIN, :NEW_PAR_APIBRASILPLACA, :NEW_PAR_API' +
        'BRASILSENHA, '
      
        '  :NEW_PAR_ARQUIVOCERTIFICADO, :NEW_PAR_ATUALIZADOR, :NEW_PAR_AU' +
        'LASFERIADOS, '
      
        '  :NEW_PAR_BAIRROPADRAO, :NEW_PAR_BLOQUEARCLIENTEDIAS, :NEW_PAR_' +
        'BOLETOPADRAO, '
      '  :NEW_PAR_BOLETOSEMAILASSUNTO, :NEW_PAR_BOLETOSZAPASSUNTO, '
      '  :NEW_PAR_CALCULARPESOLIQUIDO, :NEW_PAR_CALCULARPONTUACAO, '
      
        '  :NEW_PAR_CFOPFORAPADRAO, :NEW_PAR_CFOPPADRAO, :NEW_PAR_CFOPPRO' +
        'DUTO, '
      
        '  :NEW_PAR_CFOPSERVICOPADRAO, :NEW_PAR_CHATHABILITADO, :NEW_PAR_' +
        'CHAVECNPJA, '
      
        '  :NEW_PAR_CHECARSPED, :NEW_PAR_CIDADEPADRAO, :NEW_PAR_CLASSFISC' +
        'ALPADRAO, '
      
        '  :NEW_PAR_CLI_ATIVIDADE, :NEW_PAR_CLI_BLOQUEARVENDA, :NEW_PAR_C' +
        'LI_MAILING, '
      
        '  :NEW_PAR_CLI_TELEVENDA, :NEW_PAR_CLI_VENDEDOR, :NEW_PAR_CLIENT' +
        'ESANEXOSEMAIL, '
      
        '  :NEW_PAR_CLIENTESTODOS, :NEW_PAR_CNPJCERTIFICADO, :NEW_PAR_COB' +
        'RARDESCONTO, '
      
        '  :NEW_PAR_CODIGO, :NEW_PAR_COMANDASCLIENTE, :NEW_PAR_COMANDASLF' +
        ', '
      
        '  :NEW_PAR_COMANDASLI, :NEW_PAR_COMANDASQL, :NEW_PAR_COMANDASRP,' +
        ' '
      
        '  :NEW_PAR_COMISSAOPOR, :NEW_PAR_COMPRAEMAILASSUNTO, :NEW_PAR_CO' +
        'MPRASEMAILBCC, '
      
        '  :NEW_PAR_CONCEITOAFINAL, :NEW_PAR_CONCEITOAINICIAL, :NEW_PAR_C' +
        'ONCEITOAMINUSFINAL, '
      '  :NEW_PAR_CONCEITOAMINUSINICIAL, :NEW_PAR_CONCEITOAPLUSFINAL, '
      '  :NEW_PAR_CONCEITOAPLUSINICIAL, :NEW_PAR_CONCEITOBFINAL, '
      '  :NEW_PAR_CONCEITOBINICIAL, :NEW_PAR_CONCEITOBMINUSFINAL, '
      '  :NEW_PAR_CONCEITOBMINUSINICIAL, :NEW_PAR_CONCEITOBPLUSFINAL, '
      '  :NEW_PAR_CONCEITOBPLUSINICIAL, :NEW_PAR_CONCEITOCFINAL, '
      '  :NEW_PAR_CONCEITOCINICIAL, :NEW_PAR_CONCEITOCMINUSFINAL, '
      '  :NEW_PAR_CONCEITOCMINUSINICIAL, :NEW_PAR_CONCEITOCPLUSFINAL, '
      '  :NEW_PAR_CONCEITOCPLUSINICIAL, :NEW_PAR_CONCEITODFINAL, '
      '  :NEW_PAR_CONCEITODINICIAL, :NEW_PAR_CONCEITODMINUSFINAL, '
      '  :NEW_PAR_CONCEITODMINUSINICIAL, :NEW_PAR_CONCEITODPLUSFINAL, '
      '  :NEW_PAR_CONCEITODPLUSINICIAL, :NEW_PAR_CONCEITOEFINAL, '
      
        '  :NEW_PAR_CONCEITOEINICIAL, :NEW_PAR_CONDICAOPADRAO, :NEW_PAR_C' +
        'ONSULTASANEXOSEMAIL, '
      
        '  :NEW_PAR_CONTALOCALPADRAO, :NEW_PAR_CONTAPADRAO, :NEW_PAR_CORI' +
        'CONE, '
      
        '  :NEW_PAR_CORTEPAPEL, :NEW_PAR_COTACAOPONTOS, :NEW_PAR_CREDITOI' +
        'CMSSN, '
      '  :NEW_PAR_CSRT, :NEW_PAR_CSRTID, :NEW_PAR_CSTCOFINSPADRAO, '
      
        '  :NEW_PAR_CSTICMSPADRAO, :NEW_PAR_CSTIPIPADRAO, :NEW_PAR_CSTPIS' +
        'PADRAO, '
      
        '  :NEW_PAR_CTE_CSTICMS, :NEW_PAR_CTE_VEICULO, :NEW_PAR_CTEALIQTR' +
        'IBUTOS, '
      
        '  :NEW_PAR_CTECCEEMAILASSUNTO, :NEW_PAR_CTEEMAILASSUNTO, :NEW_PA' +
        'R_CTEEMAILSISTEMA, '
      
        '  :NEW_PAR_CTEMODELO, :NEW_PAR_CTESERIE, :NEW_PAR_CTEVISUALIZARD' +
        'ACTE, '
      
        '  :NEW_PAR_DDDPADRAO, :NEW_PAR_DESCMAXPADRAO, :NEW_PAR_DESCONTOP' +
        'ORCLIENTE, '
      
        '  :NEW_PAR_DESPESAPADRAO, :NEW_PAR_DIAPREFERENCIAL01, :NEW_PAR_D' +
        'IAPREFERENCIAL02, '
      '  :NEW_PAR_DIAPREFERENCIAL03, :NEW_PAR_DIAPREFERENCIAL04, '
      '  :NEW_PAR_DIAPREFERENCIAL05, :NEW_PAR_DIAPREFERENCIAL06, '
      '  :NEW_PAR_DIAPREFERENCIAL07, :NEW_PAR_DIAPREFERENCIAL08, '
      '  :NEW_PAR_DIAPREFERENCIAL09, :NEW_PAR_DIAPREFERENCIAL10, '
      '  :NEW_PAR_DIAPREFERENCIAL11, :NEW_PAR_DIAPREFERENCIAL12, '
      '  :NEW_PAR_DIAPREFERENCIAL13, :NEW_PAR_DIAPREFERENCIAL14, '
      '  :NEW_PAR_DIAPREFERENCIAL15, :NEW_PAR_DIAPREFERENCIAL16, '
      '  :NEW_PAR_DIAPREFERENCIAL17, :NEW_PAR_DIAPREFERENCIAL18, '
      '  :NEW_PAR_DIAPREFERENCIAL19, :NEW_PAR_DIAPREFERENCIAL20, '
      '  :NEW_PAR_DIAPREFERENCIAL21, :NEW_PAR_DIAPREFERENCIAL22, '
      '  :NEW_PAR_DIAPREFERENCIAL23, :NEW_PAR_DIAPREFERENCIAL24, '
      '  :NEW_PAR_DIAPREFERENCIAL25, :NEW_PAR_DIAPREFERENCIAL26, '
      '  :NEW_PAR_DIAPREFERENCIAL27, :NEW_PAR_DIAPREFERENCIAL28, '
      
        '  :NEW_PAR_ENQUADRAMENTOIPI, :NEW_PAR_ESPECIEPADRAO, :NEW_PAR_ES' +
        'TADOPADRAO, '
      '  :NEW_PAR_ESTOQUEESPADRAO, :NEW_PAR_ETIQUETACONFERENCIA, '
      
        '  :NEW_PAR_ETIQUETAEMBALAGEM, :NEW_PAR_ETIQUETAMODELO1, :NEW_PAR' +
        '_EXIBIRTELARESUMO, '
      
        '  :NEW_PAR_EXPEDIDOPORVENDEDOR, :NEW_PAR_EXPEDIDOR, :NEW_PAR_FAM' +
        'ILIACURSOS, '
      '  :NEW_PAR_FAMILIAMATERIAIS, :NEW_PAR_FORNECEDORESANEXOSEMAIL, '
      
        '  :NEW_PAR_FRETEPORCONTA, :NEW_PAR_FRETEPRIMEIRAPARCELA, :NEW_PA' +
        'R_FUSOHORARIO, '
      
        '  :NEW_PAR_GNRECONVENIO, :NEW_PAR_GNRERECEITA, :NEW_PAR_GNRESCHE' +
        'MAS, '
      '  :NEW_PAR_HIGHHEIGHT, :NEW_PAR_HIGHWIDTH, :NEW_PAR_HORAAULA, '
      
        '  :NEW_PAR_HRCOMERCIALFIM, :NEW_PAR_HRCOMERCIALINICIO, :NEW_PAR_' +
        'IDENTIFICACAOSISTEMA, '
      '  :NEW_PAR_IMPRIMIRCANHOTOPEDIDO, :NEW_PAR_IMPRIMIRCONDICAO, '
      '  :NEW_PAR_IMPRIMIRLOGOTIPO, :NEW_PAR_IMPRIMIRNOMEFANTASIA, '
      
        '  :NEW_PAR_IMPRIMIRNUMPEDIDO, :NEW_PAR_IMPRIMIRRECEBER, :NEW_PAR' +
        '_IMPRIMIRSALDOAC, '
      
        '  :NEW_PAR_INFOCOBRANCAXML, :NEW_PAR_INTERMEDIADOR, :NEW_PAR_INT' +
        'ERMEDIADORCAD, '
      
        '  :NEW_PAR_INTERMEDIADORCNPJ, :NEW_PAR_JURIDICOSITE1, :NEW_PAR_J' +
        'URIDICOSITE2, '
      
        '  :NEW_PAR_JURIDICOSITE3, :NEW_PAR_JUROSMENSAL, :NEW_PAR_LIBCRYP' +
        'T, '
      '  :NEW_PAR_LIBHTTP, :NEW_PAR_LIBSSL, :NEW_PAR_LIBXMLSIGN, '
      
        '  :NEW_PAR_LICENCADLL, :NEW_PAR_LICENCADLLCTE, :NEW_PAR_LICENCAD' +
        'LLMDFE, '
      
        '  :NEW_PAR_LIMITECREDITO, :NEW_PAR_LINHASFINALRECIBO, :NEW_PAR_L' +
        'INHASINICIORECIBO, '
      
        '  :NEW_PAR_LOCACOESDIAS, :NEW_PAR_LOCACOESHORALIMITE, :NEW_PAR_L' +
        'OCALANEXOSCLIENTES, '
      
        '  :NEW_PAR_LOCALANEXOSCONSULTAS, :NEW_PAR_LOCALANEXOSFORNECEDORE' +
        'S, '
      '  :NEW_PAR_LOCALANEXOSPROCESSOS, :NEW_PAR_LOCALANEXOSPRODUTOS, '
      '  :NEW_PAR_LOCALANEXOSSEGUROS, :NEW_PAR_LOCALATUALIZACOES, '
      
        '  :NEW_PAR_LOCALDENTES, :NEW_PAR_LOCALESTUDAPADRAO, :NEW_PAR_LOC' +
        'ALFOTOSIMOVEIS, '
      '  :NEW_PAR_LOCALFOTOSPRODUTOS, :NEW_PAR_LOCALIMAGENSCONSULTAS, '
      
        '  :NEW_PAR_LOCALLOGOMARCA, :NEW_PAR_LOCALMODELOSDOC, :NEW_PAR_LO' +
        'CALPADRAO, '
      
        '  :NEW_PAR_LOCALPRONTUARIOS, :NEW_PAR_LOCPRODUTOSPRECOS, :NEW_PA' +
        'R_LOWHEIGHT, '
      '  :NEW_PAR_LOWWIDTH, :NEW_PAR_MALCOLMREQ, :NEW_PAR_MALCOLMRESP, '
      
        '  :NEW_PAR_MARCAPADRAO, :NEW_PAR_MARGEMPADRAO, :NEW_PAR_MATRICUL' +
        'ASEMMATERIAL, '
      '  :NEW_PAR_MDFEMODELO, :NEW_PAR_MDFESERIE, :NEW_PAR_MULTAPORC, '
      
        '  :NEW_PAR_MULTATIPO, :NEW_PAR_NFCECONTINGENCIADATA, :NEW_PAR_NF' +
        'CECONTINGENCIAHORA, '
      
        '  :NEW_PAR_NFCECONTINGENCIAJUST, :NEW_PAR_NFCECSC, :NEW_PAR_NFCE' +
        'CSCHOMOLOGACAO, '
      
        '  :NEW_PAR_NFCECSCID, :NEW_PAR_NFCECSCIDHOMOLOGACAO, :NEW_PAR_NF' +
        'CEIMPRIMIR, '
      
        '  :NEW_PAR_NFCEIMPRIMIRLOGO, :NEW_PAR_NFCEMODELO, :NEW_PAR_NFCES' +
        'CHEMAS, '
      
        '  :NEW_PAR_NFCESERIE, :NEW_PAR_NFCETEMPOMSG, :NEW_PAR_NFCETIMEOU' +
        'T, '
      
        '  :NEW_PAR_NFCETIPODANFCE, :NEW_PAR_NFCETIPOEMISSAO, :NEW_PAR_NF' +
        'ECCEEMAILASSUNTO, '
      '  :NEW_PAR_NFECONTINGENCIADATA, :NEW_PAR_NFECONTINGENCIAHORA, '
      '  :NEW_PAR_NFECONTINGENCIAJUST, :NEW_PAR_NFEEMAILASSUNTO, '
      
        '  :NEW_PAR_NFEEMAILAUTOMATICO, :NEW_PAR_NFEEMAILBCC, :NEW_PAR_NF' +
        'EEMAILTRANSP, '
      
        '  :NEW_PAR_NFEMODELO, :NEW_PAR_NFESERIE, :NEW_PAR_NFETIPOATENDIM' +
        'ENTO, '
      
        '  :NEW_PAR_NFETIPOCONSUMIDOR, :NEW_PAR_NFETIPOEMISSAO, :NEW_PAR_' +
        'NFEVISUALIZARDANFE, '
      
        '  :NEW_PAR_NFEZAPASSUNTO, :NEW_PAR_NFSEEMAILASSUNTO, :NEW_PAR_NF' +
        'SEEMAILAUTOMATICO, '
      
        '  :NEW_PAR_NFSEINFOADICIONAIS, :NEW_PAR_NFSEPROVEDOR, :NEW_PAR_N' +
        'FSERETENCAO, '
      
        '  :NEW_PAR_NFSERETENCAORESP, :NEW_PAR_NFSESCHEMAS, :NEW_PAR_NFSE' +
        'SERIE, '
      
        '  :NEW_PAR_NFSESERVICO, :NEW_PAR_NFSETIMEOUT, :NEW_PAR_NFSEVERSA' +
        'O, '
      
        '  :NEW_PAR_NFSEZAPASSUNTO, :NEW_PAR_NOMECERTIFICADO, :NEW_PAR_NO' +
        'TASLF, '
      '  :NEW_PAR_NOTASLI, :NEW_PAR_NOTASQL, :NEW_PAR_NOTASQLOBS, '
      
        '  :NEW_PAR_PASTAHIGH, :NEW_PAR_PASTALOW, :NEW_PAR_PREVISUALIZARV' +
        'ENDA, '
      '  :NEW_PAR_PRODUCAODTPREVISAO, :NEW_PAR_PRODUTOCODIGOLIVRE, '
      '  :NEW_PAR_PRODUTOMAODEOBRA, :NEW_PAR_PRODUTOSANEXOSEMAIL, '
      
        '  :NEW_PAR_PRODUTOSCODIGOFAB, :NEW_PAR_PRODUTOSLF, :NEW_PAR_PROD' +
        'UTOSLI, '
      
        '  :NEW_PAR_PRODUTOSQL, :NEW_PAR_PROFAMILIA, :NEW_PAR_PROFORNECED' +
        'OR, '
      
        '  :NEW_PAR_PROGRUPO, :NEW_PAR_PROMARCA, :NEW_PAR_PROMISSORIASCOD' +
        'IGO, '
      '  :NEW_PAR_PROUNIDADE, :NEW_PAR_PROXY, :NEW_PAR_PROXYENDERECO, '
      
        '  :NEW_PAR_PROXYPASSWORD, :NEW_PAR_PROXYPORTA, :NEW_PAR_PROXYUSE' +
        'R, '
      
        '  :NEW_PAR_QTDENIVEISCOMPOSTO, :NEW_PAR_RECEITAPADRAO, :NEW_PAR_' +
        'RECIBOSEMAILASSUNTO, '
      
        '  :NEW_PAR_REE_DTJUROSAPOS, :NEW_PAR_REFORMATRIBUTARIA, :NEW_PAR' +
        '_REGRAFISCALPADRAO, '
      
        '  :NEW_PAR_REPOSITORIOBOLETOS, :NEW_PAR_REPOSITORIOCTE, :NEW_PAR' +
        '_REPOSITORIOMDFE, '
      
        '  :NEW_PAR_REPOSITORIONFCE, :NEW_PAR_REPOSITORIONFE, :NEW_PAR_RE' +
        'POSITORIONFSE, '
      
        '  :NEW_PAR_RNTRC, :NEW_PAR_SEGUROSANEXOSEMAIL, :NEW_PAR_SENHACER' +
        'TIFICADO, '
      
        '  :NEW_PAR_SERIALCERTIFICADO, :NEW_PAR_SERVICOSCLIENTEDIFERENTE,' +
        ' '
      '  :NEW_PAR_SERVICOSDTPREVISAO, :NEW_PAR_SERVICOSEMAILASSUNTO, '
      
        '  :NEW_PAR_SERVICOSLF, :NEW_PAR_SERVICOSLI, :NEW_PAR_SERVICOSORC' +
        'LF, '
      
        '  :NEW_PAR_SERVICOSORCLI, :NEW_PAR_SERVICOSORCQL, :NEW_PAR_SERVI' +
        'COSORCRP, '
      
        '  :NEW_PAR_SERVICOSPRINTPADRAO, :NEW_PAR_SERVICOSPV, :NEW_PAR_SE' +
        'RVICOSRPA, '
      
        '  :NEW_PAR_SERVICOSRPF, :NEW_PAR_SERVICOSSERIEMASK, :NEW_PAR_SER' +
        'VICOSTIMBRADA, '
      '  :NEW_PAR_SIGLAUF, :NEW_PAR_SIGLAUFCTE, :NEW_PAR_SIGLAUFMDFE, '
      '  :NEW_PAR_SIGLAWS, :NEW_PAR_SIGLAWSCTE, :NEW_PAR_SIGLAWSGNRE, '
      
        '  :NEW_PAR_SIGLAWSMDFE, :NEW_PAR_STPRIMEIRAPARCELA, :NEW_PAR_TAB' +
        'ELAPRECO, '
      
        '  :NEW_PAR_TAXAPADRAO, :NEW_PAR_TELEVENDAPROXCONTATO, :NEW_PAR_T' +
        'EMPERATURA1, '
      
        '  :NEW_PAR_TEMPERATURA2, :NEW_PAR_TEMPERATURA3, :NEW_PAR_TEMPERA' +
        'TURA4, '
      
        '  :NEW_PAR_TEMPERATURA5, :NEW_PAR_TEMPOPADRAO, :NEW_PAR_TIPOAMBI' +
        'ENTE, '
      
        '  :NEW_PAR_TIPOAMBIENTECTE, :NEW_PAR_TIPOAMBIENTEGNRE, :NEW_PAR_' +
        'TIPOAMBIENTEMDFE, '
      
        '  :NEW_PAR_TIPOAMBIENTENFCE, :NEW_PAR_TIPOAMBIENTENFSE, :NEW_PAR' +
        '_TIPOCODIGOEXPRESSO, '
      
        '  :NEW_PAR_TRANSPORTADORAPADRAO, :NEW_PAR_USARCODIGOFAB, :NEW_PA' +
        'R_USARMARKUP, '
      '  :NEW_PAR_VALFINALCERTIFICADO, :NEW_PAR_VALINICIALCERTIFICADO, '
      
        '  :NEW_PAR_VALORBOLETO, :NEW_PAR_VALORMULTA, :NEW_PAR_VEICULOSPO' +
        'RCLUCRO, '
      
        '  :NEW_PAR_VENDAEMAILASSUNTO, :NEW_PAR_VENDASLF, :NEW_PAR_VENDAS' +
        'LF2, '
      '  :NEW_PAR_VENDASLI, :NEW_PAR_VENDASQL, :NEW_PAR_VENDASQL2, '
      
        '  :NEW_PAR_VENDASRP, :NEW_PAR_VENDAZAPASSUNTO, :NEW_PAR_VENDEEST' +
        'OQUEZERO, '
      
        '  :NEW_PAR_VENDERCOMPOSTO, :NEW_PAR_VERSAOXML, :NEW_PAR_VERSAOXM' +
        'LCTE, '
      '  :NEW_PAR_VERSAOXMLMDFE, :NEW_PAR_ZAPBASE, :NEW_PAR_ZAPSENHA, '
      '  :NEW_PAR_ZAPSERVIDOR, :NEW_PAR_ZAPUSUARIO)'
      
        'RETURNING PAR_ABRIRLOCPRODUTOS, PAR_ACRESCIMOPOR, PAR_ACRESCIMOP' +
        'ORC, PAR_ACRESCIMOVALOR, PAR_ALMOXARIFADOPADRAO, PAR_APIBRASILDE' +
        'VICETOKEN, PAR_APIBRASILLOGIN, PAR_APIBRASILPLACA, PAR_APIBRASIL' +
        'SENHA, PAR_ARQUIVOCERTIFICADO, PAR_ATUALIZADOR, PAR_AULASFERIADO' +
        'S, PAR_BAIRROPADRAO, PAR_BLOQUEARCLIENTEDIAS, PAR_BOLETOPADRAO, ' +
        'PAR_BOLETOSEMAILASSUNTO, PAR_BOLETOSZAPASSUNTO, PAR_CALCULARPESO' +
        'LIQUIDO, PAR_CALCULARPONTUACAO, PAR_CFOPFORAPADRAO, PAR_CFOPPADR' +
        'AO, PAR_CFOPPRODUTO, PAR_CFOPSERVICOPADRAO, PAR_CHATHABILITADO, ' +
        'PAR_CHAVECNPJA, PAR_CHECARSPED, PAR_CIDADEPADRAO, PAR_CLASSFISCA' +
        'LPADRAO, PAR_CLI_ATIVIDADE, PAR_CLI_BLOQUEARVENDA, PAR_CLI_MAILI' +
        'NG, PAR_CLI_TELEVENDA, PAR_CLI_VENDEDOR, PAR_CLIENTESANEXOSEMAIL' +
        ', PAR_CLIENTESTODOS, PAR_CNPJCERTIFICADO, PAR_COBRARDESCONTO, PA' +
        'R_CODIGO, PAR_COMANDASCLIENTE, PAR_COMANDASLF, PAR_COMANDASLI, P' +
        'AR_COMANDASQL, PAR_COMANDASRP, PAR_COMISSAOPOR, PAR_COMPRAEMAILA' +
        'SSUNTO, PAR_COMPRASEMAILBCC, PAR_CONCEITOAFINAL, PAR_CONCEITOAIN' +
        'ICIAL, PAR_CONCEITOAMINUSFINAL, PAR_CONCEITOAMINUSINICIAL, PAR_C' +
        'ONCEITOAPLUSFINAL, PAR_CONCEITOAPLUSINICIAL, PAR_CONCEITOBFINAL,' +
        ' PAR_CONCEITOBINICIAL, PAR_CONCEITOBMINUSFINAL, PAR_CONCEITOBMIN' +
        'USINICIAL, PAR_CONCEITOBPLUSFINAL, PAR_CONCEITOBPLUSINICIAL, PAR' +
        '_CONCEITOCFINAL, PAR_CONCEITOCINICIAL, PAR_CONCEITOCMINUSFINAL, ' +
        'PAR_CONCEITOCMINUSINICIAL, PAR_CONCEITOCPLUSFINAL, PAR_CONCEITOC' +
        'PLUSINICIAL, PAR_CONCEITODFINAL, PAR_CONCEITODINICIAL, PAR_CONCE' +
        'ITODMINUSFINAL, PAR_CONCEITODMINUSINICIAL, PAR_CONCEITODPLUSFINA' +
        'L, PAR_CONCEITODPLUSINICIAL, PAR_CONCEITOEFINAL, PAR_CONCEITOEIN' +
        'ICIAL, PAR_CONDICAOPADRAO, PAR_CONSULTASANEXOSEMAIL, PAR_CONTALO' +
        'CALPADRAO, PAR_CONTAPADRAO, PAR_CORICONE, PAR_CORTEPAPEL, PAR_CO' +
        'TACAOPONTOS, PAR_CREDITOICMSSN, PAR_CSRT, PAR_CSRTID, PAR_CSTCOF' +
        'INSPADRAO, PAR_CSTICMSPADRAO, PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO' +
        ', PAR_CTE_CSTICMS, PAR_CTE_VEICULO, PAR_CTEALIQTRIBUTOS, PAR_CTE' +
        'CCEEMAILASSUNTO, PAR_CTEEMAILASSUNTO, PAR_CTEEMAILSISTEMA, PAR_C' +
        'TEMODELO, PAR_CTESERIE, PAR_CTEVISUALIZARDACTE, PAR_DDDPADRAO, P' +
        'AR_DESCMAXPADRAO, PAR_DESCONTOPORCLIENTE, PAR_DESPESAPADRAO, PAR' +
        '_DIAPREFERENCIAL01, PAR_DIAPREFERENCIAL02, PAR_DIAPREFERENCIAL03' +
        ', PAR_DIAPREFERENCIAL04, PAR_DIAPREFERENCIAL05, PAR_DIAPREFERENC' +
        'IAL06, PAR_DIAPREFERENCIAL07, PAR_DIAPREFERENCIAL08, PAR_DIAPREF' +
        'ERENCIAL09, PAR_DIAPREFERENCIAL10, PAR_DIAPREFERENCIAL11, PAR_DI' +
        'APREFERENCIAL12, PAR_DIAPREFERENCIAL13, PAR_DIAPREFERENCIAL14, P' +
        'AR_DIAPREFERENCIAL15, PAR_DIAPREFERENCIAL16, PAR_DIAPREFERENCIAL' +
        '17, PAR_DIAPREFERENCIAL18, PAR_DIAPREFERENCIAL19, PAR_DIAPREFERE' +
        'NCIAL20, PAR_DIAPREFERENCIAL21, PAR_DIAPREFERENCIAL22, PAR_DIAPR' +
        'EFERENCIAL23, PAR_DIAPREFERENCIAL24, PAR_DIAPREFERENCIAL25, PAR_' +
        'DIAPREFERENCIAL26, PAR_DIAPREFERENCIAL27, PAR_DIAPREFERENCIAL28,' +
        ' PAR_ENQUADRAMENTOIPI, PAR_ESPECIEPADRAO, PAR_ESTADOPADRAO, PAR_' +
        'ESTOQUEESPADRAO, PAR_ETIQUETACONFERENCIA, PAR_ETIQUETAEMBALAGEM,' +
        ' PAR_ETIQUETAMODELO1, PAR_EXIBIRTELARESUMO, PAR_EXPEDIDOPORVENDE' +
        'DOR, PAR_EXPEDIDOR, PAR_FAMILIACURSOS, PAR_FAMILIAMATERIAIS, PAR' +
        '_FORNECEDORESANEXOSEMAIL, PAR_FRETEPORCONTA, PAR_FRETEPRIMEIRAPA' +
        'RCELA, PAR_FUSOHORARIO, PAR_GNRECONVENIO, PAR_GNRERECEITA, PAR_G' +
        'NRESCHEMAS, PAR_HIGHHEIGHT, PAR_HIGHWIDTH, PAR_HORAAULA, PAR_HRC' +
        'OMERCIALFIM, PAR_HRCOMERCIALINICIO, PAR_IDENTIFICACAOSISTEMA, PA' +
        'R_IMPRIMIRCANHOTOPEDIDO, PAR_IMPRIMIRCONDICAO, PAR_IMPRIMIRLOGOT' +
        'IPO, PAR_IMPRIMIRNOMEFANTASIA, PAR_IMPRIMIRNUMPEDIDO, PAR_IMPRIM' +
        'IRRECEBER, PAR_IMPRIMIRSALDOAC, PAR_INFOCOBRANCAXML, PAR_INTERME' +
        'DIADOR, PAR_INTERMEDIADORCAD, PAR_INTERMEDIADORCNPJ, PAR_JURIDIC' +
        'OSITE1, PAR_JURIDICOSITE2, PAR_JURIDICOSITE3, PAR_JUROSMENSAL, P' +
        'AR_LIBCRYPT, PAR_LIBHTTP, PAR_LIBSSL, PAR_LIBXMLSIGN, PAR_LICENC' +
        'ADLL, PAR_LICENCADLLCTE, PAR_LICENCADLLMDFE, PAR_LIMITECREDITO, ' +
        'PAR_LINHASFINALRECIBO, PAR_LINHASINICIORECIBO, PAR_LOCACOESDIAS,' +
        ' PAR_LOCACOESHORALIMITE, PAR_LOCALANEXOSCLIENTES, PAR_LOCALANEXO' +
        'SCONSULTAS, PAR_LOCALANEXOSFORNECEDORES, PAR_LOCALANEXOSPROCESSO' +
        'S, PAR_LOCALANEXOSPRODUTOS, PAR_LOCALANEXOSSEGUROS, PAR_LOCALATU' +
        'ALIZACOES, PAR_LOCALDENTES, PAR_LOCALESTUDAPADRAO, PAR_LOCALFOTO' +
        'SIMOVEIS, PAR_LOCALFOTOSPRODUTOS, PAR_LOCALIMAGENSCONSULTAS, PAR' +
        '_LOCALLOGOMARCA, PAR_LOCALMODELOSDOC, PAR_LOCALPADRAO, PAR_LOCAL' +
        'PRONTUARIOS, PAR_LOCPRODUTOSPRECOS, PAR_LOWHEIGHT, PAR_LOWWIDTH,' +
        ' PAR_MALCOLMREQ, PAR_MALCOLMRESP, PAR_MARCAPADRAO, PAR_MARGEMPAD' +
        'RAO, PAR_MATRICULASEMMATERIAL, PAR_MDFEMODELO, PAR_MDFESERIE, PA' +
        'R_MULTAPORC, PAR_MULTATIPO, PAR_NFCECONTINGENCIADATA, PAR_NFCECO' +
        'NTINGENCIAHORA, PAR_NFCECONTINGENCIAJUST, PAR_NFCECSC, PAR_NFCEC' +
        'SCHOMOLOGACAO, PAR_NFCECSCID, PAR_NFCECSCIDHOMOLOGACAO, PAR_NFCE' +
        'IMPRIMIR, PAR_NFCEIMPRIMIRLOGO, PAR_NFCEMODELO, PAR_NFCESCHEMAS,' +
        ' PAR_NFCESERIE, PAR_NFCETEMPOMSG, PAR_NFCETIMEOUT, PAR_NFCETIPOD' +
        'ANFCE, PAR_NFCETIPOEMISSAO, PAR_NFECCEEMAILASSUNTO, PAR_NFECONTI' +
        'NGENCIADATA, PAR_NFECONTINGENCIAHORA, PAR_NFECONTINGENCIAJUST, P' +
        'AR_NFEEMAILASSUNTO, PAR_NFEEMAILAUTOMATICO, PAR_NFEEMAILBCC, PAR' +
        '_NFEEMAILTRANSP, PAR_NFEMODELO, PAR_NFESERIE, PAR_NFETIPOATENDIM' +
        'ENTO, PAR_NFETIPOCONSUMIDOR, PAR_NFETIPOEMISSAO, PAR_NFEVISUALIZ' +
        'ARDANFE, PAR_NFEZAPASSUNTO, PAR_NFSEEMAILASSUNTO, PAR_NFSEEMAILA' +
        'UTOMATICO, PAR_NFSEINFOADICIONAIS, PAR_NFSEPROVEDOR, PAR_NFSERET' +
        'ENCAO, PAR_NFSERETENCAORESP, PAR_NFSESCHEMAS, PAR_NFSESERIE, PAR' +
        '_NFSESERVICO, PAR_NFSETIMEOUT, PAR_NFSEVERSAO, PAR_NFSEZAPASSUNT' +
        'O, PAR_NOMECERTIFICADO, PAR_NOTASLF, PAR_NOTASLI, PAR_NOTASQL, P' +
        'AR_NOTASQLOBS, PAR_PASTAHIGH, PAR_PASTALOW, PAR_PREVISUALIZARVEN' +
        'DA, PAR_PRODUCAODTPREVISAO, PAR_PRODUTOCODIGOLIVRE, PAR_PRODUTOM' +
        'AODEOBRA, PAR_PRODUTOSANEXOSEMAIL, PAR_PRODUTOSCODIGOFAB, PAR_PR' +
        'ODUTOSLF, PAR_PRODUTOSLI, PAR_PRODUTOSQL, PAR_PROFAMILIA, PAR_PR' +
        'OFORNECEDOR, PAR_PROGRUPO, PAR_PROMARCA, PAR_PROMISSORIASCODIGO,' +
        ' PAR_PROUNIDADE, PAR_PROXY, PAR_PROXYENDERECO, PAR_PROXYPASSWORD' +
        ', PAR_PROXYPORTA, PAR_PROXYUSER, PAR_QTDENIVEISCOMPOSTO, PAR_REC' +
        'EITAPADRAO, PAR_RECIBOSEMAILASSUNTO, PAR_REE_DTJUROSAPOS, PAR_RE' +
        'FORMATRIBUTARIA, PAR_REGRAFISCALPADRAO, PAR_REPOSITORIOBOLETOS, ' +
        'PAR_REPOSITORIOCTE, PAR_REPOSITORIOMDFE, PAR_REPOSITORIONFCE, PA' +
        'R_REPOSITORIONFE, PAR_REPOSITORIONFSE, PAR_RNTRC, PAR_SEGUROSANE' +
        'XOSEMAIL, PAR_SENHACERTIFICADO, PAR_SERIALCERTIFICADO, PAR_SERVI' +
        'COSCLIENTEDIFERENTE, PAR_SERVICOSDTPREVISAO, PAR_SERVICOSEMAILAS' +
        'SUNTO, PAR_SERVICOSLF, PAR_SERVICOSLI, PAR_SERVICOSORCLF, PAR_SE' +
        'RVICOSORCLI, PAR_SERVICOSORCQL, PAR_SERVICOSORCRP, PAR_SERVICOSP' +
        'RINTPADRAO, PAR_SERVICOSPV, PAR_SERVICOSRPA, PAR_SERVICOSRPF, PA' +
        'R_SERVICOSSERIEMASK, PAR_SERVICOSTIMBRADA, PAR_SIGLAUF, PAR_SIGL' +
        'AUFCTE, PAR_SIGLAUFMDFE, PAR_SIGLAWS, PAR_SIGLAWSCTE, PAR_SIGLAW' +
        'SGNRE, PAR_SIGLAWSMDFE, PAR_STPRIMEIRAPARCELA, PAR_TABELAPRECO, ' +
        'PAR_TAXAPADRAO, PAR_TELEVENDAPROXCONTATO, PAR_TEMPERATURA1, PAR_' +
        'TEMPERATURA2, PAR_TEMPERATURA3, PAR_TEMPERATURA4, PAR_TEMPERATUR' +
        'A5, PAR_TEMPOPADRAO, PAR_TIPOAMBIENTE, PAR_TIPOAMBIENTECTE, PAR_' +
        'TIPOAMBIENTEGNRE, PAR_TIPOAMBIENTEMDFE, PAR_TIPOAMBIENTENFCE, PA' +
        'R_TIPOAMBIENTENFSE, PAR_TIPOCODIGOEXPRESSO, PAR_TRANSPORTADORAPA' +
        'DRAO, PAR_USARCODIGOFAB, PAR_USARMARKUP, PAR_VALFINALCERTIFICADO' +
        ', PAR_VALINICIALCERTIFICADO, PAR_VALORBOLETO, PAR_VALORMULTA, PA' +
        'R_VEICULOSPORCLUCRO, PAR_VENDAEMAILASSUNTO, PAR_VENDASLF, PAR_VE' +
        'NDASLF2, PAR_VENDASLI, PAR_VENDASQL, PAR_VENDASQL2, PAR_VENDASRP' +
        ', PAR_VENDAZAPASSUNTO, PAR_VENDEESTOQUEZERO, PAR_VENDERCOMPOSTO,' +
        ' PAR_VERSAOXML, PAR_VERSAOXMLCTE, PAR_VERSAOXMLMDFE, PAR_ZAPBASE' +
        ', PAR_ZAPSENHA, PAR_ZAPSERVIDOR, PAR_ZAPUSUARIO')
    ModifySQL.Strings = (
      'UPDATE PARAMETROS'
      
        'SET PAR_ABRIRLOCPRODUTOS = :NEW_PAR_ABRIRLOCPRODUTOS, PAR_ACRESC' +
        'IMOPOR = :NEW_PAR_ACRESCIMOPOR, '
      
        '  PAR_ACRESCIMOPORC = :NEW_PAR_ACRESCIMOPORC, PAR_ACRESCIMOVALOR' +
        ' = :NEW_PAR_ACRESCIMOVALOR, '
      
        '  PAR_ALMOXARIFADOPADRAO = :NEW_PAR_ALMOXARIFADOPADRAO, PAR_APIB' +
        'RASILDEVICETOKEN = :NEW_PAR_APIBRASILDEVICETOKEN, '
      
        '  PAR_APIBRASILLOGIN = :NEW_PAR_APIBRASILLOGIN, PAR_APIBRASILPLA' +
        'CA = :NEW_PAR_APIBRASILPLACA, '
      
        '  PAR_APIBRASILSENHA = :NEW_PAR_APIBRASILSENHA, PAR_ARQUIVOCERTI' +
        'FICADO = :NEW_PAR_ARQUIVOCERTIFICADO, '
      
        '  PAR_ATUALIZADOR = :NEW_PAR_ATUALIZADOR, PAR_AULASFERIADOS = :N' +
        'EW_PAR_AULASFERIADOS, '
      
        '  PAR_BAIRROPADRAO = :NEW_PAR_BAIRROPADRAO, PAR_BLOQUEARCLIENTED' +
        'IAS = :NEW_PAR_BLOQUEARCLIENTEDIAS, '
      
        '  PAR_BOLETOPADRAO = :NEW_PAR_BOLETOPADRAO, PAR_BOLETOSEMAILASSU' +
        'NTO = :NEW_PAR_BOLETOSEMAILASSUNTO, '
      
        '  PAR_BOLETOSZAPASSUNTO = :NEW_PAR_BOLETOSZAPASSUNTO, PAR_CALCUL' +
        'ARPESOLIQUIDO = :NEW_PAR_CALCULARPESOLIQUIDO, '
      
        '  PAR_CALCULARPONTUACAO = :NEW_PAR_CALCULARPONTUACAO, PAR_CFOPFO' +
        'RAPADRAO = :NEW_PAR_CFOPFORAPADRAO, '
      
        '  PAR_CFOPPADRAO = :NEW_PAR_CFOPPADRAO, PAR_CFOPPRODUTO = :NEW_P' +
        'AR_CFOPPRODUTO, '
      
        '  PAR_CFOPSERVICOPADRAO = :NEW_PAR_CFOPSERVICOPADRAO, PAR_CHATHA' +
        'BILITADO = :NEW_PAR_CHATHABILITADO, '
      
        '  PAR_CHAVECNPJA = :NEW_PAR_CHAVECNPJA, PAR_CHECARSPED = :NEW_PA' +
        'R_CHECARSPED, '
      
        '  PAR_CIDADEPADRAO = :NEW_PAR_CIDADEPADRAO, PAR_CLASSFISCALPADRA' +
        'O = :NEW_PAR_CLASSFISCALPADRAO, '
      
        '  PAR_CLI_ATIVIDADE = :NEW_PAR_CLI_ATIVIDADE, PAR_CLI_BLOQUEARVE' +
        'NDA = :NEW_PAR_CLI_BLOQUEARVENDA, '
      
        '  PAR_CLI_MAILING = :NEW_PAR_CLI_MAILING, PAR_CLI_TELEVENDA = :N' +
        'EW_PAR_CLI_TELEVENDA, '
      
        '  PAR_CLI_VENDEDOR = :NEW_PAR_CLI_VENDEDOR, PAR_CLIENTESANEXOSEM' +
        'AIL = :NEW_PAR_CLIENTESANEXOSEMAIL, '
      
        '  PAR_CLIENTESTODOS = :NEW_PAR_CLIENTESTODOS, PAR_CNPJCERTIFICAD' +
        'O = :NEW_PAR_CNPJCERTIFICADO, '
      
        '  PAR_COBRARDESCONTO = :NEW_PAR_COBRARDESCONTO, PAR_CODIGO = :NE' +
        'W_PAR_CODIGO, '
      
        '  PAR_COMANDASCLIENTE = :NEW_PAR_COMANDASCLIENTE, PAR_COMANDASLF' +
        ' = :NEW_PAR_COMANDASLF, '
      
        '  PAR_COMANDASLI = :NEW_PAR_COMANDASLI, PAR_COMANDASQL = :NEW_PA' +
        'R_COMANDASQL, '
      
        '  PAR_COMANDASRP = :NEW_PAR_COMANDASRP, PAR_COMISSAOPOR = :NEW_P' +
        'AR_COMISSAOPOR, '
      
        '  PAR_COMPRAEMAILASSUNTO = :NEW_PAR_COMPRAEMAILASSUNTO, PAR_COMP' +
        'RASEMAILBCC = :NEW_PAR_COMPRASEMAILBCC, '
      
        '  PAR_CONCEITOAFINAL = :NEW_PAR_CONCEITOAFINAL, PAR_CONCEITOAINI' +
        'CIAL = :NEW_PAR_CONCEITOAINICIAL, '
      '  PAR_CONCEITOAMINUSFINAL = :NEW_PAR_CONCEITOAMINUSFINAL, '
      '  PAR_CONCEITOAMINUSINICIAL = :NEW_PAR_CONCEITOAMINUSINICIAL, '
      
        '  PAR_CONCEITOAPLUSFINAL = :NEW_PAR_CONCEITOAPLUSFINAL, PAR_CONC' +
        'EITOAPLUSINICIAL = :NEW_PAR_CONCEITOAPLUSINICIAL, '
      
        '  PAR_CONCEITOBFINAL = :NEW_PAR_CONCEITOBFINAL, PAR_CONCEITOBINI' +
        'CIAL = :NEW_PAR_CONCEITOBINICIAL, '
      '  PAR_CONCEITOBMINUSFINAL = :NEW_PAR_CONCEITOBMINUSFINAL, '
      '  PAR_CONCEITOBMINUSINICIAL = :NEW_PAR_CONCEITOBMINUSINICIAL, '
      
        '  PAR_CONCEITOBPLUSFINAL = :NEW_PAR_CONCEITOBPLUSFINAL, PAR_CONC' +
        'EITOBPLUSINICIAL = :NEW_PAR_CONCEITOBPLUSINICIAL, '
      
        '  PAR_CONCEITOCFINAL = :NEW_PAR_CONCEITOCFINAL, PAR_CONCEITOCINI' +
        'CIAL = :NEW_PAR_CONCEITOCINICIAL, '
      '  PAR_CONCEITOCMINUSFINAL = :NEW_PAR_CONCEITOCMINUSFINAL, '
      '  PAR_CONCEITOCMINUSINICIAL = :NEW_PAR_CONCEITOCMINUSINICIAL, '
      
        '  PAR_CONCEITOCPLUSFINAL = :NEW_PAR_CONCEITOCPLUSFINAL, PAR_CONC' +
        'EITOCPLUSINICIAL = :NEW_PAR_CONCEITOCPLUSINICIAL, '
      
        '  PAR_CONCEITODFINAL = :NEW_PAR_CONCEITODFINAL, PAR_CONCEITODINI' +
        'CIAL = :NEW_PAR_CONCEITODINICIAL, '
      '  PAR_CONCEITODMINUSFINAL = :NEW_PAR_CONCEITODMINUSFINAL, '
      '  PAR_CONCEITODMINUSINICIAL = :NEW_PAR_CONCEITODMINUSINICIAL, '
      
        '  PAR_CONCEITODPLUSFINAL = :NEW_PAR_CONCEITODPLUSFINAL, PAR_CONC' +
        'EITODPLUSINICIAL = :NEW_PAR_CONCEITODPLUSINICIAL, '
      
        '  PAR_CONCEITOEFINAL = :NEW_PAR_CONCEITOEFINAL, PAR_CONCEITOEINI' +
        'CIAL = :NEW_PAR_CONCEITOEINICIAL, '
      
        '  PAR_CONDICAOPADRAO = :NEW_PAR_CONDICAOPADRAO, PAR_CONSULTASANE' +
        'XOSEMAIL = :NEW_PAR_CONSULTASANEXOSEMAIL, '
      
        '  PAR_CONTALOCALPADRAO = :NEW_PAR_CONTALOCALPADRAO, PAR_CONTAPAD' +
        'RAO = :NEW_PAR_CONTAPADRAO, '
      
        '  PAR_CORICONE = :NEW_PAR_CORICONE, PAR_CORTEPAPEL = :NEW_PAR_CO' +
        'RTEPAPEL, '
      
        '  PAR_COTACAOPONTOS = :NEW_PAR_COTACAOPONTOS, PAR_CREDITOICMSSN ' +
        '= :NEW_PAR_CREDITOICMSSN, '
      '  PAR_CSRT = :NEW_PAR_CSRT, PAR_CSRTID = :NEW_PAR_CSRTID, '
      
        '  PAR_CSTCOFINSPADRAO = :NEW_PAR_CSTCOFINSPADRAO, PAR_CSTICMSPAD' +
        'RAO = :NEW_PAR_CSTICMSPADRAO, '
      
        '  PAR_CSTIPIPADRAO = :NEW_PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO = :' +
        'NEW_PAR_CSTPISPADRAO, '
      
        '  PAR_CTE_CSTICMS = :NEW_PAR_CTE_CSTICMS, PAR_CTE_VEICULO = :NEW' +
        '_PAR_CTE_VEICULO, '
      
        '  PAR_CTEALIQTRIBUTOS = :NEW_PAR_CTEALIQTRIBUTOS, PAR_CTECCEEMAI' +
        'LASSUNTO = :NEW_PAR_CTECCEEMAILASSUNTO, '
      
        '  PAR_CTEEMAILASSUNTO = :NEW_PAR_CTEEMAILASSUNTO, PAR_CTEEMAILSI' +
        'STEMA = :NEW_PAR_CTEEMAILSISTEMA, '
      
        '  PAR_CTEMODELO = :NEW_PAR_CTEMODELO, PAR_CTESERIE = :NEW_PAR_CT' +
        'ESERIE, '
      
        '  PAR_CTEVISUALIZARDACTE = :NEW_PAR_CTEVISUALIZARDACTE, PAR_DDDP' +
        'ADRAO = :NEW_PAR_DDDPADRAO, '
      
        '  PAR_DESCMAXPADRAO = :NEW_PAR_DESCMAXPADRAO, PAR_DESCONTOPORCLI' +
        'ENTE = :NEW_PAR_DESCONTOPORCLIENTE, '
      
        '  PAR_DESPESAPADRAO = :NEW_PAR_DESPESAPADRAO, PAR_DIAPREFERENCIA' +
        'L01 = :NEW_PAR_DIAPREFERENCIAL01, '
      
        '  PAR_DIAPREFERENCIAL02 = :NEW_PAR_DIAPREFERENCIAL02, PAR_DIAPRE' +
        'FERENCIAL03 = :NEW_PAR_DIAPREFERENCIAL03, '
      
        '  PAR_DIAPREFERENCIAL04 = :NEW_PAR_DIAPREFERENCIAL04, PAR_DIAPRE' +
        'FERENCIAL05 = :NEW_PAR_DIAPREFERENCIAL05, '
      
        '  PAR_DIAPREFERENCIAL06 = :NEW_PAR_DIAPREFERENCIAL06, PAR_DIAPRE' +
        'FERENCIAL07 = :NEW_PAR_DIAPREFERENCIAL07, '
      
        '  PAR_DIAPREFERENCIAL08 = :NEW_PAR_DIAPREFERENCIAL08, PAR_DIAPRE' +
        'FERENCIAL09 = :NEW_PAR_DIAPREFERENCIAL09, '
      
        '  PAR_DIAPREFERENCIAL10 = :NEW_PAR_DIAPREFERENCIAL10, PAR_DIAPRE' +
        'FERENCIAL11 = :NEW_PAR_DIAPREFERENCIAL11, '
      
        '  PAR_DIAPREFERENCIAL12 = :NEW_PAR_DIAPREFERENCIAL12, PAR_DIAPRE' +
        'FERENCIAL13 = :NEW_PAR_DIAPREFERENCIAL13, '
      
        '  PAR_DIAPREFERENCIAL14 = :NEW_PAR_DIAPREFERENCIAL14, PAR_DIAPRE' +
        'FERENCIAL15 = :NEW_PAR_DIAPREFERENCIAL15, '
      
        '  PAR_DIAPREFERENCIAL16 = :NEW_PAR_DIAPREFERENCIAL16, PAR_DIAPRE' +
        'FERENCIAL17 = :NEW_PAR_DIAPREFERENCIAL17, '
      
        '  PAR_DIAPREFERENCIAL18 = :NEW_PAR_DIAPREFERENCIAL18, PAR_DIAPRE' +
        'FERENCIAL19 = :NEW_PAR_DIAPREFERENCIAL19, '
      
        '  PAR_DIAPREFERENCIAL20 = :NEW_PAR_DIAPREFERENCIAL20, PAR_DIAPRE' +
        'FERENCIAL21 = :NEW_PAR_DIAPREFERENCIAL21, '
      
        '  PAR_DIAPREFERENCIAL22 = :NEW_PAR_DIAPREFERENCIAL22, PAR_DIAPRE' +
        'FERENCIAL23 = :NEW_PAR_DIAPREFERENCIAL23, '
      
        '  PAR_DIAPREFERENCIAL24 = :NEW_PAR_DIAPREFERENCIAL24, PAR_DIAPRE' +
        'FERENCIAL25 = :NEW_PAR_DIAPREFERENCIAL25, '
      
        '  PAR_DIAPREFERENCIAL26 = :NEW_PAR_DIAPREFERENCIAL26, PAR_DIAPRE' +
        'FERENCIAL27 = :NEW_PAR_DIAPREFERENCIAL27, '
      
        '  PAR_DIAPREFERENCIAL28 = :NEW_PAR_DIAPREFERENCIAL28, PAR_ENQUAD' +
        'RAMENTOIPI = :NEW_PAR_ENQUADRAMENTOIPI, '
      
        '  PAR_ESPECIEPADRAO = :NEW_PAR_ESPECIEPADRAO, PAR_ESTADOPADRAO =' +
        ' :NEW_PAR_ESTADOPADRAO, '
      
        '  PAR_ESTOQUEESPADRAO = :NEW_PAR_ESTOQUEESPADRAO, PAR_ETIQUETACO' +
        'NFERENCIA = :NEW_PAR_ETIQUETACONFERENCIA, '
      
        '  PAR_ETIQUETAEMBALAGEM = :NEW_PAR_ETIQUETAEMBALAGEM, PAR_ETIQUE' +
        'TAMODELO1 = :NEW_PAR_ETIQUETAMODELO1, '
      
        '  PAR_EXIBIRTELARESUMO = :NEW_PAR_EXIBIRTELARESUMO, PAR_EXPEDIDO' +
        'PORVENDEDOR = :NEW_PAR_EXPEDIDOPORVENDEDOR, '
      
        '  PAR_EXPEDIDOR = :NEW_PAR_EXPEDIDOR, PAR_FAMILIACURSOS = :NEW_P' +
        'AR_FAMILIACURSOS, '
      
        '  PAR_FAMILIAMATERIAIS = :NEW_PAR_FAMILIAMATERIAIS, PAR_FORNECED' +
        'ORESANEXOSEMAIL = :NEW_PAR_FORNECEDORESANEXOSEMAIL, '
      
        '  PAR_FRETEPORCONTA = :NEW_PAR_FRETEPORCONTA, PAR_FRETEPRIMEIRAP' +
        'ARCELA = :NEW_PAR_FRETEPRIMEIRAPARCELA, '
      
        '  PAR_FUSOHORARIO = :NEW_PAR_FUSOHORARIO, PAR_GNRECONVENIO = :NE' +
        'W_PAR_GNRECONVENIO, '
      
        '  PAR_GNRERECEITA = :NEW_PAR_GNRERECEITA, PAR_GNRESCHEMAS = :NEW' +
        '_PAR_GNRESCHEMAS, '
      
        '  PAR_HIGHHEIGHT = :NEW_PAR_HIGHHEIGHT, PAR_HIGHWIDTH = :NEW_PAR' +
        '_HIGHWIDTH, '
      
        '  PAR_HORAAULA = :NEW_PAR_HORAAULA, PAR_HRCOMERCIALFIM = :NEW_PA' +
        'R_HRCOMERCIALFIM, '
      
        '  PAR_HRCOMERCIALINICIO = :NEW_PAR_HRCOMERCIALINICIO, PAR_IDENTI' +
        'FICACAOSISTEMA = :NEW_PAR_IDENTIFICACAOSISTEMA, '
      '  PAR_IMPRIMIRCANHOTOPEDIDO = :NEW_PAR_IMPRIMIRCANHOTOPEDIDO, '
      
        '  PAR_IMPRIMIRCONDICAO = :NEW_PAR_IMPRIMIRCONDICAO, PAR_IMPRIMIR' +
        'LOGOTIPO = :NEW_PAR_IMPRIMIRLOGOTIPO, '
      '  PAR_IMPRIMIRNOMEFANTASIA = :NEW_PAR_IMPRIMIRNOMEFANTASIA, '
      
        '  PAR_IMPRIMIRNUMPEDIDO = :NEW_PAR_IMPRIMIRNUMPEDIDO, PAR_IMPRIM' +
        'IRRECEBER = :NEW_PAR_IMPRIMIRRECEBER, '
      
        '  PAR_IMPRIMIRSALDOAC = :NEW_PAR_IMPRIMIRSALDOAC, PAR_INFOCOBRAN' +
        'CAXML = :NEW_PAR_INFOCOBRANCAXML, '
      
        '  PAR_INTERMEDIADOR = :NEW_PAR_INTERMEDIADOR, PAR_INTERMEDIADORC' +
        'AD = :NEW_PAR_INTERMEDIADORCAD, '
      
        '  PAR_INTERMEDIADORCNPJ = :NEW_PAR_INTERMEDIADORCNPJ, PAR_JURIDI' +
        'COSITE1 = :NEW_PAR_JURIDICOSITE1, '
      
        '  PAR_JURIDICOSITE2 = :NEW_PAR_JURIDICOSITE2, PAR_JURIDICOSITE3 ' +
        '= :NEW_PAR_JURIDICOSITE3, '
      
        '  PAR_JUROSMENSAL = :NEW_PAR_JUROSMENSAL, PAR_LIBCRYPT = :NEW_PA' +
        'R_LIBCRYPT, '
      '  PAR_LIBHTTP = :NEW_PAR_LIBHTTP, PAR_LIBSSL = :NEW_PAR_LIBSSL, '
      
        '  PAR_LIBXMLSIGN = :NEW_PAR_LIBXMLSIGN, PAR_LICENCADLL = :NEW_PA' +
        'R_LICENCADLL, '
      
        '  PAR_LICENCADLLCTE = :NEW_PAR_LICENCADLLCTE, PAR_LICENCADLLMDFE' +
        ' = :NEW_PAR_LICENCADLLMDFE, '
      
        '  PAR_LIMITECREDITO = :NEW_PAR_LIMITECREDITO, PAR_LINHASFINALREC' +
        'IBO = :NEW_PAR_LINHASFINALRECIBO, '
      
        '  PAR_LINHASINICIORECIBO = :NEW_PAR_LINHASINICIORECIBO, PAR_LOCA' +
        'COESDIAS = :NEW_PAR_LOCACOESDIAS, '
      
        '  PAR_LOCACOESHORALIMITE = :NEW_PAR_LOCACOESHORALIMITE, PAR_LOCA' +
        'LANEXOSCLIENTES = :NEW_PAR_LOCALANEXOSCLIENTES, '
      '  PAR_LOCALANEXOSCONSULTAS = :NEW_PAR_LOCALANEXOSCONSULTAS, '
      
        '  PAR_LOCALANEXOSFORNECEDORES = :NEW_PAR_LOCALANEXOSFORNECEDORES' +
        ', '
      '  PAR_LOCALANEXOSPROCESSOS = :NEW_PAR_LOCALANEXOSPROCESSOS, '
      '  PAR_LOCALANEXOSPRODUTOS = :NEW_PAR_LOCALANEXOSPRODUTOS, '
      
        '  PAR_LOCALANEXOSSEGUROS = :NEW_PAR_LOCALANEXOSSEGUROS, PAR_LOCA' +
        'LATUALIZACOES = :NEW_PAR_LOCALATUALIZACOES, '
      
        '  PAR_LOCALDENTES = :NEW_PAR_LOCALDENTES, PAR_LOCALESTUDAPADRAO ' +
        '= :NEW_PAR_LOCALESTUDAPADRAO, '
      
        '  PAR_LOCALFOTOSIMOVEIS = :NEW_PAR_LOCALFOTOSIMOVEIS, PAR_LOCALF' +
        'OTOSPRODUTOS = :NEW_PAR_LOCALFOTOSPRODUTOS, '
      '  PAR_LOCALIMAGENSCONSULTAS = :NEW_PAR_LOCALIMAGENSCONSULTAS, '
      
        '  PAR_LOCALLOGOMARCA = :NEW_PAR_LOCALLOGOMARCA, PAR_LOCALMODELOS' +
        'DOC = :NEW_PAR_LOCALMODELOSDOC, '
      
        '  PAR_LOCALPADRAO = :NEW_PAR_LOCALPADRAO, PAR_LOCALPRONTUARIOS =' +
        ' :NEW_PAR_LOCALPRONTUARIOS, '
      
        '  PAR_LOCPRODUTOSPRECOS = :NEW_PAR_LOCPRODUTOSPRECOS, PAR_LOWHEI' +
        'GHT = :NEW_PAR_LOWHEIGHT, '
      
        '  PAR_LOWWIDTH = :NEW_PAR_LOWWIDTH, PAR_MALCOLMREQ = :NEW_PAR_MA' +
        'LCOLMREQ, '
      
        '  PAR_MALCOLMRESP = :NEW_PAR_MALCOLMRESP, PAR_MARCAPADRAO = :NEW' +
        '_PAR_MARCAPADRAO, '
      
        '  PAR_MARGEMPADRAO = :NEW_PAR_MARGEMPADRAO, PAR_MATRICULASEMMATE' +
        'RIAL = :NEW_PAR_MATRICULASEMMATERIAL, '
      
        '  PAR_MDFEMODELO = :NEW_PAR_MDFEMODELO, PAR_MDFESERIE = :NEW_PAR' +
        '_MDFESERIE, '
      
        '  PAR_MULTAPORC = :NEW_PAR_MULTAPORC, PAR_MULTATIPO = :NEW_PAR_M' +
        'ULTATIPO, '
      '  PAR_NFCECONTINGENCIADATA = :NEW_PAR_NFCECONTINGENCIADATA, '
      '  PAR_NFCECONTINGENCIAHORA = :NEW_PAR_NFCECONTINGENCIAHORA, '
      '  PAR_NFCECONTINGENCIAJUST = :NEW_PAR_NFCECONTINGENCIAJUST, '
      
        '  PAR_NFCECSC = :NEW_PAR_NFCECSC, PAR_NFCECSCHOMOLOGACAO = :NEW_' +
        'PAR_NFCECSCHOMOLOGACAO, '
      
        '  PAR_NFCECSCID = :NEW_PAR_NFCECSCID, PAR_NFCECSCIDHOMOLOGACAO =' +
        ' :NEW_PAR_NFCECSCIDHOMOLOGACAO, '
      
        '  PAR_NFCEIMPRIMIR = :NEW_PAR_NFCEIMPRIMIR, PAR_NFCEIMPRIMIRLOGO' +
        ' = :NEW_PAR_NFCEIMPRIMIRLOGO, '
      
        '  PAR_NFCEMODELO = :NEW_PAR_NFCEMODELO, PAR_NFCESCHEMAS = :NEW_P' +
        'AR_NFCESCHEMAS, '
      
        '  PAR_NFCESERIE = :NEW_PAR_NFCESERIE, PAR_NFCETEMPOMSG = :NEW_PA' +
        'R_NFCETEMPOMSG, '
      
        '  PAR_NFCETIMEOUT = :NEW_PAR_NFCETIMEOUT, PAR_NFCETIPODANFCE = :' +
        'NEW_PAR_NFCETIPODANFCE, '
      
        '  PAR_NFCETIPOEMISSAO = :NEW_PAR_NFCETIPOEMISSAO, PAR_NFECCEEMAI' +
        'LASSUNTO = :NEW_PAR_NFECCEEMAILASSUNTO, '
      '  PAR_NFECONTINGENCIADATA = :NEW_PAR_NFECONTINGENCIADATA, '
      '  PAR_NFECONTINGENCIAHORA = :NEW_PAR_NFECONTINGENCIAHORA, '
      '  PAR_NFECONTINGENCIAJUST = :NEW_PAR_NFECONTINGENCIAJUST, '
      
        '  PAR_NFEEMAILASSUNTO = :NEW_PAR_NFEEMAILASSUNTO, PAR_NFEEMAILAU' +
        'TOMATICO = :NEW_PAR_NFEEMAILAUTOMATICO, '
      
        '  PAR_NFEEMAILBCC = :NEW_PAR_NFEEMAILBCC, PAR_NFEEMAILTRANSP = :' +
        'NEW_PAR_NFEEMAILTRANSP, '
      
        '  PAR_NFEMODELO = :NEW_PAR_NFEMODELO, PAR_NFESERIE = :NEW_PAR_NF' +
        'ESERIE, '
      
        '  PAR_NFETIPOATENDIMENTO = :NEW_PAR_NFETIPOATENDIMENTO, PAR_NFET' +
        'IPOCONSUMIDOR = :NEW_PAR_NFETIPOCONSUMIDOR, '
      
        '  PAR_NFETIPOEMISSAO = :NEW_PAR_NFETIPOEMISSAO, PAR_NFEVISUALIZA' +
        'RDANFE = :NEW_PAR_NFEVISUALIZARDANFE, '
      
        '  PAR_NFEZAPASSUNTO = :NEW_PAR_NFEZAPASSUNTO, PAR_NFSEEMAILASSUN' +
        'TO = :NEW_PAR_NFSEEMAILASSUNTO, '
      '  PAR_NFSEEMAILAUTOMATICO = :NEW_PAR_NFSEEMAILAUTOMATICO, '
      
        '  PAR_NFSEINFOADICIONAIS = :NEW_PAR_NFSEINFOADICIONAIS, PAR_NFSE' +
        'PROVEDOR = :NEW_PAR_NFSEPROVEDOR, '
      
        '  PAR_NFSERETENCAO = :NEW_PAR_NFSERETENCAO, PAR_NFSERETENCAORESP' +
        ' = :NEW_PAR_NFSERETENCAORESP, '
      
        '  PAR_NFSESCHEMAS = :NEW_PAR_NFSESCHEMAS, PAR_NFSESERIE = :NEW_P' +
        'AR_NFSESERIE, '
      
        '  PAR_NFSESERVICO = :NEW_PAR_NFSESERVICO, PAR_NFSETIMEOUT = :NEW' +
        '_PAR_NFSETIMEOUT, '
      
        '  PAR_NFSEVERSAO = :NEW_PAR_NFSEVERSAO, PAR_NFSEZAPASSUNTO = :NE' +
        'W_PAR_NFSEZAPASSUNTO, '
      
        '  PAR_NOMECERTIFICADO = :NEW_PAR_NOMECERTIFICADO, PAR_NOTASLF = ' +
        ':NEW_PAR_NOTASLF, '
      
        '  PAR_NOTASLI = :NEW_PAR_NOTASLI, PAR_NOTASQL = :NEW_PAR_NOTASQL' +
        ', '
      
        '  PAR_NOTASQLOBS = :NEW_PAR_NOTASQLOBS, PAR_PASTAHIGH = :NEW_PAR' +
        '_PASTAHIGH, '
      
        '  PAR_PASTALOW = :NEW_PAR_PASTALOW, PAR_PREVISUALIZARVENDA = :NE' +
        'W_PAR_PREVISUALIZARVENDA, '
      
        '  PAR_PRODUCAODTPREVISAO = :NEW_PAR_PRODUCAODTPREVISAO, PAR_PROD' +
        'UTOCODIGOLIVRE = :NEW_PAR_PRODUTOCODIGOLIVRE, '
      
        '  PAR_PRODUTOMAODEOBRA = :NEW_PAR_PRODUTOMAODEOBRA, PAR_PRODUTOS' +
        'ANEXOSEMAIL = :NEW_PAR_PRODUTOSANEXOSEMAIL, '
      
        '  PAR_PRODUTOSCODIGOFAB = :NEW_PAR_PRODUTOSCODIGOFAB, PAR_PRODUT' +
        'OSLF = :NEW_PAR_PRODUTOSLF, '
      
        '  PAR_PRODUTOSLI = :NEW_PAR_PRODUTOSLI, PAR_PRODUTOSQL = :NEW_PA' +
        'R_PRODUTOSQL, '
      
        '  PAR_PROFAMILIA = :NEW_PAR_PROFAMILIA, PAR_PROFORNECEDOR = :NEW' +
        '_PAR_PROFORNECEDOR, '
      
        '  PAR_PROGRUPO = :NEW_PAR_PROGRUPO, PAR_PROMARCA = :NEW_PAR_PROM' +
        'ARCA, '
      
        '  PAR_PROMISSORIASCODIGO = :NEW_PAR_PROMISSORIASCODIGO, PAR_PROU' +
        'NIDADE = :NEW_PAR_PROUNIDADE, '
      
        '  PAR_PROXY = :NEW_PAR_PROXY, PAR_PROXYENDERECO = :NEW_PAR_PROXY' +
        'ENDERECO, '
      
        '  PAR_PROXYPASSWORD = :NEW_PAR_PROXYPASSWORD, PAR_PROXYPORTA = :' +
        'NEW_PAR_PROXYPORTA, '
      
        '  PAR_PROXYUSER = :NEW_PAR_PROXYUSER, PAR_QTDENIVEISCOMPOSTO = :' +
        'NEW_PAR_QTDENIVEISCOMPOSTO, '
      
        '  PAR_RECEITAPADRAO = :NEW_PAR_RECEITAPADRAO, PAR_RECIBOSEMAILAS' +
        'SUNTO = :NEW_PAR_RECIBOSEMAILASSUNTO, '
      
        '  PAR_REE_DTJUROSAPOS = :NEW_PAR_REE_DTJUROSAPOS, PAR_REFORMATRI' +
        'BUTARIA = :NEW_PAR_REFORMATRIBUTARIA, '
      
        '  PAR_REGRAFISCALPADRAO = :NEW_PAR_REGRAFISCALPADRAO, PAR_REPOSI' +
        'TORIOBOLETOS = :NEW_PAR_REPOSITORIOBOLETOS, '
      
        '  PAR_REPOSITORIOCTE = :NEW_PAR_REPOSITORIOCTE, PAR_REPOSITORIOM' +
        'DFE = :NEW_PAR_REPOSITORIOMDFE, '
      
        '  PAR_REPOSITORIONFCE = :NEW_PAR_REPOSITORIONFCE, PAR_REPOSITORI' +
        'ONFE = :NEW_PAR_REPOSITORIONFE, '
      
        '  PAR_REPOSITORIONFSE = :NEW_PAR_REPOSITORIONFSE, PAR_RNTRC = :N' +
        'EW_PAR_RNTRC, '
      
        '  PAR_SEGUROSANEXOSEMAIL = :NEW_PAR_SEGUROSANEXOSEMAIL, PAR_SENH' +
        'ACERTIFICADO = :NEW_PAR_SENHACERTIFICADO, '
      
        '  PAR_SERIALCERTIFICADO = :NEW_PAR_SERIALCERTIFICADO, PAR_SERVIC' +
        'OSCLIENTEDIFERENTE = :NEW_PAR_SERVICOSCLIENTEDIFERENTE, '
      
        '  PAR_SERVICOSDTPREVISAO = :NEW_PAR_SERVICOSDTPREVISAO, PAR_SERV' +
        'ICOSEMAILASSUNTO = :NEW_PAR_SERVICOSEMAILASSUNTO, '
      
        '  PAR_SERVICOSLF = :NEW_PAR_SERVICOSLF, PAR_SERVICOSLI = :NEW_PA' +
        'R_SERVICOSLI, '
      
        '  PAR_SERVICOSORCLF = :NEW_PAR_SERVICOSORCLF, PAR_SERVICOSORCLI ' +
        '= :NEW_PAR_SERVICOSORCLI, '
      
        '  PAR_SERVICOSORCQL = :NEW_PAR_SERVICOSORCQL, PAR_SERVICOSORCRP ' +
        '= :NEW_PAR_SERVICOSORCRP, '
      '  PAR_SERVICOSPRINTPADRAO = :NEW_PAR_SERVICOSPRINTPADRAO, '
      
        '  PAR_SERVICOSPV = :NEW_PAR_SERVICOSPV, PAR_SERVICOSRPA = :NEW_P' +
        'AR_SERVICOSRPA, '
      
        '  PAR_SERVICOSRPF = :NEW_PAR_SERVICOSRPF, PAR_SERVICOSSERIEMASK ' +
        '= :NEW_PAR_SERVICOSSERIEMASK, '
      
        '  PAR_SERVICOSTIMBRADA = :NEW_PAR_SERVICOSTIMBRADA, PAR_SIGLAUF ' +
        '= :NEW_PAR_SIGLAUF, '
      
        '  PAR_SIGLAUFCTE = :NEW_PAR_SIGLAUFCTE, PAR_SIGLAUFMDFE = :NEW_P' +
        'AR_SIGLAUFMDFE, '
      
        '  PAR_SIGLAWS = :NEW_PAR_SIGLAWS, PAR_SIGLAWSCTE = :NEW_PAR_SIGL' +
        'AWSCTE, '
      
        '  PAR_SIGLAWSGNRE = :NEW_PAR_SIGLAWSGNRE, PAR_SIGLAWSMDFE = :NEW' +
        '_PAR_SIGLAWSMDFE, '
      
        '  PAR_STPRIMEIRAPARCELA = :NEW_PAR_STPRIMEIRAPARCELA, PAR_TABELA' +
        'PRECO = :NEW_PAR_TABELAPRECO, '
      
        '  PAR_TAXAPADRAO = :NEW_PAR_TAXAPADRAO, PAR_TELEVENDAPROXCONTATO' +
        ' = :NEW_PAR_TELEVENDAPROXCONTATO, '
      
        '  PAR_TEMPERATURA1 = :NEW_PAR_TEMPERATURA1, PAR_TEMPERATURA2 = :' +
        'NEW_PAR_TEMPERATURA2, '
      
        '  PAR_TEMPERATURA3 = :NEW_PAR_TEMPERATURA3, PAR_TEMPERATURA4 = :' +
        'NEW_PAR_TEMPERATURA4, '
      
        '  PAR_TEMPERATURA5 = :NEW_PAR_TEMPERATURA5, PAR_TEMPOPADRAO = :N' +
        'EW_PAR_TEMPOPADRAO, '
      
        '  PAR_TIPOAMBIENTE = :NEW_PAR_TIPOAMBIENTE, PAR_TIPOAMBIENTECTE ' +
        '= :NEW_PAR_TIPOAMBIENTECTE, '
      
        '  PAR_TIPOAMBIENTEGNRE = :NEW_PAR_TIPOAMBIENTEGNRE, PAR_TIPOAMBI' +
        'ENTEMDFE = :NEW_PAR_TIPOAMBIENTEMDFE, '
      
        '  PAR_TIPOAMBIENTENFCE = :NEW_PAR_TIPOAMBIENTENFCE, PAR_TIPOAMBI' +
        'ENTENFSE = :NEW_PAR_TIPOAMBIENTENFSE, '
      
        '  PAR_TIPOCODIGOEXPRESSO = :NEW_PAR_TIPOCODIGOEXPRESSO, PAR_TRAN' +
        'SPORTADORAPADRAO = :NEW_PAR_TRANSPORTADORAPADRAO, '
      
        '  PAR_USARCODIGOFAB = :NEW_PAR_USARCODIGOFAB, PAR_USARMARKUP = :' +
        'NEW_PAR_USARMARKUP, '
      '  PAR_VALFINALCERTIFICADO = :NEW_PAR_VALFINALCERTIFICADO, '
      '  PAR_VALINICIALCERTIFICADO = :NEW_PAR_VALINICIALCERTIFICADO, '
      
        '  PAR_VALORBOLETO = :NEW_PAR_VALORBOLETO, PAR_VALORMULTA = :NEW_' +
        'PAR_VALORMULTA, '
      
        '  PAR_VEICULOSPORCLUCRO = :NEW_PAR_VEICULOSPORCLUCRO, PAR_VENDAE' +
        'MAILASSUNTO = :NEW_PAR_VENDAEMAILASSUNTO, '
      
        '  PAR_VENDASLF = :NEW_PAR_VENDASLF, PAR_VENDASLF2 = :NEW_PAR_VEN' +
        'DASLF2, '
      
        '  PAR_VENDASLI = :NEW_PAR_VENDASLI, PAR_VENDASQL = :NEW_PAR_VEND' +
        'ASQL, '
      
        '  PAR_VENDASQL2 = :NEW_PAR_VENDASQL2, PAR_VENDASRP = :NEW_PAR_VE' +
        'NDASRP, '
      
        '  PAR_VENDAZAPASSUNTO = :NEW_PAR_VENDAZAPASSUNTO, PAR_VENDEESTOQ' +
        'UEZERO = :NEW_PAR_VENDEESTOQUEZERO, '
      
        '  PAR_VENDERCOMPOSTO = :NEW_PAR_VENDERCOMPOSTO, PAR_VERSAOXML = ' +
        ':NEW_PAR_VERSAOXML, '
      
        '  PAR_VERSAOXMLCTE = :NEW_PAR_VERSAOXMLCTE, PAR_VERSAOXMLMDFE = ' +
        ':NEW_PAR_VERSAOXMLMDFE, '
      
        '  PAR_ZAPBASE = :NEW_PAR_ZAPBASE, PAR_ZAPSENHA = :NEW_PAR_ZAPSEN' +
        'HA, '
      
        '  PAR_ZAPSERVIDOR = :NEW_PAR_ZAPSERVIDOR, PAR_ZAPUSUARIO = :NEW_' +
        'PAR_ZAPUSUARIO'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO'
      
        'RETURNING PAR_ABRIRLOCPRODUTOS, PAR_ACRESCIMOPOR, PAR_ACRESCIMOP' +
        'ORC, PAR_ACRESCIMOVALOR, PAR_ALMOXARIFADOPADRAO, PAR_APIBRASILDE' +
        'VICETOKEN, PAR_APIBRASILLOGIN, PAR_APIBRASILPLACA, PAR_APIBRASIL' +
        'SENHA, PAR_ARQUIVOCERTIFICADO, PAR_ATUALIZADOR, PAR_AULASFERIADO' +
        'S, PAR_BAIRROPADRAO, PAR_BLOQUEARCLIENTEDIAS, PAR_BOLETOPADRAO, ' +
        'PAR_BOLETOSEMAILASSUNTO, PAR_BOLETOSZAPASSUNTO, PAR_CALCULARPESO' +
        'LIQUIDO, PAR_CALCULARPONTUACAO, PAR_CFOPFORAPADRAO, PAR_CFOPPADR' +
        'AO, PAR_CFOPPRODUTO, PAR_CFOPSERVICOPADRAO, PAR_CHATHABILITADO, ' +
        'PAR_CHAVECNPJA, PAR_CHECARSPED, PAR_CIDADEPADRAO, PAR_CLASSFISCA' +
        'LPADRAO, PAR_CLI_ATIVIDADE, PAR_CLI_BLOQUEARVENDA, PAR_CLI_MAILI' +
        'NG, PAR_CLI_TELEVENDA, PAR_CLI_VENDEDOR, PAR_CLIENTESANEXOSEMAIL' +
        ', PAR_CLIENTESTODOS, PAR_CNPJCERTIFICADO, PAR_COBRARDESCONTO, PA' +
        'R_CODIGO, PAR_COMANDASCLIENTE, PAR_COMANDASLF, PAR_COMANDASLI, P' +
        'AR_COMANDASQL, PAR_COMANDASRP, PAR_COMISSAOPOR, PAR_COMPRAEMAILA' +
        'SSUNTO, PAR_COMPRASEMAILBCC, PAR_CONCEITOAFINAL, PAR_CONCEITOAIN' +
        'ICIAL, PAR_CONCEITOAMINUSFINAL, PAR_CONCEITOAMINUSINICIAL, PAR_C' +
        'ONCEITOAPLUSFINAL, PAR_CONCEITOAPLUSINICIAL, PAR_CONCEITOBFINAL,' +
        ' PAR_CONCEITOBINICIAL, PAR_CONCEITOBMINUSFINAL, PAR_CONCEITOBMIN' +
        'USINICIAL, PAR_CONCEITOBPLUSFINAL, PAR_CONCEITOBPLUSINICIAL, PAR' +
        '_CONCEITOCFINAL, PAR_CONCEITOCINICIAL, PAR_CONCEITOCMINUSFINAL, ' +
        'PAR_CONCEITOCMINUSINICIAL, PAR_CONCEITOCPLUSFINAL, PAR_CONCEITOC' +
        'PLUSINICIAL, PAR_CONCEITODFINAL, PAR_CONCEITODINICIAL, PAR_CONCE' +
        'ITODMINUSFINAL, PAR_CONCEITODMINUSINICIAL, PAR_CONCEITODPLUSFINA' +
        'L, PAR_CONCEITODPLUSINICIAL, PAR_CONCEITOEFINAL, PAR_CONCEITOEIN' +
        'ICIAL, PAR_CONDICAOPADRAO, PAR_CONSULTASANEXOSEMAIL, PAR_CONTALO' +
        'CALPADRAO, PAR_CONTAPADRAO, PAR_CORICONE, PAR_CORTEPAPEL, PAR_CO' +
        'TACAOPONTOS, PAR_CREDITOICMSSN, PAR_CSRT, PAR_CSRTID, PAR_CSTCOF' +
        'INSPADRAO, PAR_CSTICMSPADRAO, PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO' +
        ', PAR_CTE_CSTICMS, PAR_CTE_VEICULO, PAR_CTEALIQTRIBUTOS, PAR_CTE' +
        'CCEEMAILASSUNTO, PAR_CTEEMAILASSUNTO, PAR_CTEEMAILSISTEMA, PAR_C' +
        'TEMODELO, PAR_CTESERIE, PAR_CTEVISUALIZARDACTE, PAR_DDDPADRAO, P' +
        'AR_DESCMAXPADRAO, PAR_DESCONTOPORCLIENTE, PAR_DESPESAPADRAO, PAR' +
        '_DIAPREFERENCIAL01, PAR_DIAPREFERENCIAL02, PAR_DIAPREFERENCIAL03' +
        ', PAR_DIAPREFERENCIAL04, PAR_DIAPREFERENCIAL05, PAR_DIAPREFERENC' +
        'IAL06, PAR_DIAPREFERENCIAL07, PAR_DIAPREFERENCIAL08, PAR_DIAPREF' +
        'ERENCIAL09, PAR_DIAPREFERENCIAL10, PAR_DIAPREFERENCIAL11, PAR_DI' +
        'APREFERENCIAL12, PAR_DIAPREFERENCIAL13, PAR_DIAPREFERENCIAL14, P' +
        'AR_DIAPREFERENCIAL15, PAR_DIAPREFERENCIAL16, PAR_DIAPREFERENCIAL' +
        '17, PAR_DIAPREFERENCIAL18, PAR_DIAPREFERENCIAL19, PAR_DIAPREFERE' +
        'NCIAL20, PAR_DIAPREFERENCIAL21, PAR_DIAPREFERENCIAL22, PAR_DIAPR' +
        'EFERENCIAL23, PAR_DIAPREFERENCIAL24, PAR_DIAPREFERENCIAL25, PAR_' +
        'DIAPREFERENCIAL26, PAR_DIAPREFERENCIAL27, PAR_DIAPREFERENCIAL28,' +
        ' PAR_ENQUADRAMENTOIPI, PAR_ESPECIEPADRAO, PAR_ESTADOPADRAO, PAR_' +
        'ESTOQUEESPADRAO, PAR_ETIQUETACONFERENCIA, PAR_ETIQUETAEMBALAGEM,' +
        ' PAR_ETIQUETAMODELO1, PAR_EXIBIRTELARESUMO, PAR_EXPEDIDOPORVENDE' +
        'DOR, PAR_EXPEDIDOR, PAR_FAMILIACURSOS, PAR_FAMILIAMATERIAIS, PAR' +
        '_FORNECEDORESANEXOSEMAIL, PAR_FRETEPORCONTA, PAR_FRETEPRIMEIRAPA' +
        'RCELA, PAR_FUSOHORARIO, PAR_GNRECONVENIO, PAR_GNRERECEITA, PAR_G' +
        'NRESCHEMAS, PAR_HIGHHEIGHT, PAR_HIGHWIDTH, PAR_HORAAULA, PAR_HRC' +
        'OMERCIALFIM, PAR_HRCOMERCIALINICIO, PAR_IDENTIFICACAOSISTEMA, PA' +
        'R_IMPRIMIRCANHOTOPEDIDO, PAR_IMPRIMIRCONDICAO, PAR_IMPRIMIRLOGOT' +
        'IPO, PAR_IMPRIMIRNOMEFANTASIA, PAR_IMPRIMIRNUMPEDIDO, PAR_IMPRIM' +
        'IRRECEBER, PAR_IMPRIMIRSALDOAC, PAR_INFOCOBRANCAXML, PAR_INTERME' +
        'DIADOR, PAR_INTERMEDIADORCAD, PAR_INTERMEDIADORCNPJ, PAR_JURIDIC' +
        'OSITE1, PAR_JURIDICOSITE2, PAR_JURIDICOSITE3, PAR_JUROSMENSAL, P' +
        'AR_LIBCRYPT, PAR_LIBHTTP, PAR_LIBSSL, PAR_LIBXMLSIGN, PAR_LICENC' +
        'ADLL, PAR_LICENCADLLCTE, PAR_LICENCADLLMDFE, PAR_LIMITECREDITO, ' +
        'PAR_LINHASFINALRECIBO, PAR_LINHASINICIORECIBO, PAR_LOCACOESDIAS,' +
        ' PAR_LOCACOESHORALIMITE, PAR_LOCALANEXOSCLIENTES, PAR_LOCALANEXO' +
        'SCONSULTAS, PAR_LOCALANEXOSFORNECEDORES, PAR_LOCALANEXOSPROCESSO' +
        'S, PAR_LOCALANEXOSPRODUTOS, PAR_LOCALANEXOSSEGUROS, PAR_LOCALATU' +
        'ALIZACOES, PAR_LOCALDENTES, PAR_LOCALESTUDAPADRAO, PAR_LOCALFOTO' +
        'SIMOVEIS, PAR_LOCALFOTOSPRODUTOS, PAR_LOCALIMAGENSCONSULTAS, PAR' +
        '_LOCALLOGOMARCA, PAR_LOCALMODELOSDOC, PAR_LOCALPADRAO, PAR_LOCAL' +
        'PRONTUARIOS, PAR_LOCPRODUTOSPRECOS, PAR_LOWHEIGHT, PAR_LOWWIDTH,' +
        ' PAR_MALCOLMREQ, PAR_MALCOLMRESP, PAR_MARCAPADRAO, PAR_MARGEMPAD' +
        'RAO, PAR_MATRICULASEMMATERIAL, PAR_MDFEMODELO, PAR_MDFESERIE, PA' +
        'R_MULTAPORC, PAR_MULTATIPO, PAR_NFCECONTINGENCIADATA, PAR_NFCECO' +
        'NTINGENCIAHORA, PAR_NFCECONTINGENCIAJUST, PAR_NFCECSC, PAR_NFCEC' +
        'SCHOMOLOGACAO, PAR_NFCECSCID, PAR_NFCECSCIDHOMOLOGACAO, PAR_NFCE' +
        'IMPRIMIR, PAR_NFCEIMPRIMIRLOGO, PAR_NFCEMODELO, PAR_NFCESCHEMAS,' +
        ' PAR_NFCESERIE, PAR_NFCETEMPOMSG, PAR_NFCETIMEOUT, PAR_NFCETIPOD' +
        'ANFCE, PAR_NFCETIPOEMISSAO, PAR_NFECCEEMAILASSUNTO, PAR_NFECONTI' +
        'NGENCIADATA, PAR_NFECONTINGENCIAHORA, PAR_NFECONTINGENCIAJUST, P' +
        'AR_NFEEMAILASSUNTO, PAR_NFEEMAILAUTOMATICO, PAR_NFEEMAILBCC, PAR' +
        '_NFEEMAILTRANSP, PAR_NFEMODELO, PAR_NFESERIE, PAR_NFETIPOATENDIM' +
        'ENTO, PAR_NFETIPOCONSUMIDOR, PAR_NFETIPOEMISSAO, PAR_NFEVISUALIZ' +
        'ARDANFE, PAR_NFEZAPASSUNTO, PAR_NFSEEMAILASSUNTO, PAR_NFSEEMAILA' +
        'UTOMATICO, PAR_NFSEINFOADICIONAIS, PAR_NFSEPROVEDOR, PAR_NFSERET' +
        'ENCAO, PAR_NFSERETENCAORESP, PAR_NFSESCHEMAS, PAR_NFSESERIE, PAR' +
        '_NFSESERVICO, PAR_NFSETIMEOUT, PAR_NFSEVERSAO, PAR_NFSEZAPASSUNT' +
        'O, PAR_NOMECERTIFICADO, PAR_NOTASLF, PAR_NOTASLI, PAR_NOTASQL, P' +
        'AR_NOTASQLOBS, PAR_PASTAHIGH, PAR_PASTALOW, PAR_PREVISUALIZARVEN' +
        'DA, PAR_PRODUCAODTPREVISAO, PAR_PRODUTOCODIGOLIVRE, PAR_PRODUTOM' +
        'AODEOBRA, PAR_PRODUTOSANEXOSEMAIL, PAR_PRODUTOSCODIGOFAB, PAR_PR' +
        'ODUTOSLF, PAR_PRODUTOSLI, PAR_PRODUTOSQL, PAR_PROFAMILIA, PAR_PR' +
        'OFORNECEDOR, PAR_PROGRUPO, PAR_PROMARCA, PAR_PROMISSORIASCODIGO,' +
        ' PAR_PROUNIDADE, PAR_PROXY, PAR_PROXYENDERECO, PAR_PROXYPASSWORD' +
        ', PAR_PROXYPORTA, PAR_PROXYUSER, PAR_QTDENIVEISCOMPOSTO, PAR_REC' +
        'EITAPADRAO, PAR_RECIBOSEMAILASSUNTO, PAR_REE_DTJUROSAPOS, PAR_RE' +
        'FORMATRIBUTARIA, PAR_REGRAFISCALPADRAO, PAR_REPOSITORIOBOLETOS, ' +
        'PAR_REPOSITORIOCTE, PAR_REPOSITORIOMDFE, PAR_REPOSITORIONFCE, PA' +
        'R_REPOSITORIONFE, PAR_REPOSITORIONFSE, PAR_RNTRC, PAR_SEGUROSANE' +
        'XOSEMAIL, PAR_SENHACERTIFICADO, PAR_SERIALCERTIFICADO, PAR_SERVI' +
        'COSCLIENTEDIFERENTE, PAR_SERVICOSDTPREVISAO, PAR_SERVICOSEMAILAS' +
        'SUNTO, PAR_SERVICOSLF, PAR_SERVICOSLI, PAR_SERVICOSORCLF, PAR_SE' +
        'RVICOSORCLI, PAR_SERVICOSORCQL, PAR_SERVICOSORCRP, PAR_SERVICOSP' +
        'RINTPADRAO, PAR_SERVICOSPV, PAR_SERVICOSRPA, PAR_SERVICOSRPF, PA' +
        'R_SERVICOSSERIEMASK, PAR_SERVICOSTIMBRADA, PAR_SIGLAUF, PAR_SIGL' +
        'AUFCTE, PAR_SIGLAUFMDFE, PAR_SIGLAWS, PAR_SIGLAWSCTE, PAR_SIGLAW' +
        'SGNRE, PAR_SIGLAWSMDFE, PAR_STPRIMEIRAPARCELA, PAR_TABELAPRECO, ' +
        'PAR_TAXAPADRAO, PAR_TELEVENDAPROXCONTATO, PAR_TEMPERATURA1, PAR_' +
        'TEMPERATURA2, PAR_TEMPERATURA3, PAR_TEMPERATURA4, PAR_TEMPERATUR' +
        'A5, PAR_TEMPOPADRAO, PAR_TIPOAMBIENTE, PAR_TIPOAMBIENTECTE, PAR_' +
        'TIPOAMBIENTEGNRE, PAR_TIPOAMBIENTEMDFE, PAR_TIPOAMBIENTENFCE, PA' +
        'R_TIPOAMBIENTENFSE, PAR_TIPOCODIGOEXPRESSO, PAR_TRANSPORTADORAPA' +
        'DRAO, PAR_USARCODIGOFAB, PAR_USARMARKUP, PAR_VALFINALCERTIFICADO' +
        ', PAR_VALINICIALCERTIFICADO, PAR_VALORBOLETO, PAR_VALORMULTA, PA' +
        'R_VEICULOSPORCLUCRO, PAR_VENDAEMAILASSUNTO, PAR_VENDASLF, PAR_VE' +
        'NDASLF2, PAR_VENDASLI, PAR_VENDASQL, PAR_VENDASQL2, PAR_VENDASRP' +
        ', PAR_VENDAZAPASSUNTO, PAR_VENDEESTOQUEZERO, PAR_VENDERCOMPOSTO,' +
        ' PAR_VERSAOXML, PAR_VERSAOXMLCTE, PAR_VERSAOXMLMDFE, PAR_ZAPBASE' +
        ', PAR_ZAPSENHA, PAR_ZAPSERVIDOR, PAR_ZAPUSUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PARAMETROS'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PAR_ABRIRLOCPRODUTOS, PAR_ACRESCIMOPOR, PAR_ACRESCIMOPORC' +
        ', PAR_ACRESCIMOVALOR, '
      
        '  PAR_ALMOXARIFADOPADRAO, PAR_APIBRASILDEVICETOKEN, PAR_APIBRASI' +
        'LLOGIN, '
      
        '  PAR_APIBRASILPLACA, PAR_APIBRASILSENHA, PAR_ARQUIVOCERTIFICADO' +
        ', '
      
        '  PAR_ATUALIZADOR, PAR_AULASFERIADOS, PAR_BAIRROPADRAO, PAR_BLOQ' +
        'UEARCLIENTEDIAS, '
      
        '  PAR_BOLETOPADRAO, PAR_BOLETOSEMAILASSUNTO, PAR_BOLETOSZAPASSUN' +
        'TO, '
      
        '  PAR_CALCULARPESOLIQUIDO, PAR_CALCULARPONTUACAO, PAR_CFOPFORAPA' +
        'DRAO, '
      '  PAR_CFOPPADRAO, PAR_CFOPPRODUTO, PAR_CFOPSERVICOPADRAO, '
      
        '  PAR_CHATHABILITADO, PAR_CHAVECNPJA, PAR_CHECARSPED, PAR_CIDADE' +
        'PADRAO, '
      
        '  PAR_CLASSFISCALPADRAO, PAR_CLI_ATIVIDADE, PAR_CLI_BLOQUEARVEND' +
        'A, '
      
        '  PAR_CLI_MAILING, PAR_CLI_TELEVENDA, PAR_CLI_VENDEDOR, PAR_CLIE' +
        'NTESANEXOSEMAIL, '
      '  PAR_CLIENTESTODOS, PAR_CNPJCERTIFICADO, PAR_COBRARDESCONTO, '
      
        '  PAR_CODIGO, PAR_COMANDASCLIENTE, PAR_COMANDASLF, PAR_COMANDASL' +
        'I, '
      
        '  PAR_COMANDASQL, PAR_COMANDASRP, PAR_COMISSAOPOR, PAR_COMPRAEMA' +
        'ILASSUNTO, '
      
        '  PAR_COMPRASEMAILBCC, PAR_CONCEITOAFINAL, PAR_CONCEITOAINICIAL,' +
        ' '
      
        '  PAR_CONCEITOAMINUSFINAL, PAR_CONCEITOAMINUSINICIAL, PAR_CONCEI' +
        'TOAPLUSFINAL, '
      
        '  PAR_CONCEITOAPLUSINICIAL, PAR_CONCEITOBFINAL, PAR_CONCEITOBINI' +
        'CIAL, '
      
        '  PAR_CONCEITOBMINUSFINAL, PAR_CONCEITOBMINUSINICIAL, PAR_CONCEI' +
        'TOBPLUSFINAL, '
      
        '  PAR_CONCEITOBPLUSINICIAL, PAR_CONCEITOCFINAL, PAR_CONCEITOCINI' +
        'CIAL, '
      
        '  PAR_CONCEITOCMINUSFINAL, PAR_CONCEITOCMINUSINICIAL, PAR_CONCEI' +
        'TOCPLUSFINAL, '
      
        '  PAR_CONCEITOCPLUSINICIAL, PAR_CONCEITODFINAL, PAR_CONCEITODINI' +
        'CIAL, '
      
        '  PAR_CONCEITODMINUSFINAL, PAR_CONCEITODMINUSINICIAL, PAR_CONCEI' +
        'TODPLUSFINAL, '
      
        '  PAR_CONCEITODPLUSINICIAL, PAR_CONCEITOEFINAL, PAR_CONCEITOEINI' +
        'CIAL, '
      
        '  PAR_CONDICAOPADRAO, PAR_CONSULTASANEXOSEMAIL, PAR_CONTALOCALPA' +
        'DRAO, '
      
        '  PAR_CONTAPADRAO, PAR_CORICONE, PAR_CORTEPAPEL, PAR_COTACAOPONT' +
        'OS, '
      '  PAR_CREDITOICMSSN, PAR_CSRT, PAR_CSRTID, PAR_CSTCOFINSPADRAO, '
      
        '  PAR_CSTICMSPADRAO, PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO, PAR_CTE' +
        '_CSTICMS, '
      '  PAR_CTE_VEICULO, PAR_CTEALIQTRIBUTOS, PAR_CTECCEEMAILASSUNTO, '
      '  PAR_CTEEMAILASSUNTO, PAR_CTEEMAILSISTEMA, PAR_CTEMODELO, '
      
        '  PAR_CTESERIE, PAR_CTEVISUALIZARDACTE, PAR_DDDPADRAO, PAR_DESCM' +
        'AXPADRAO, '
      
        '  PAR_DESCONTOPORCLIENTE, PAR_DESPESAPADRAO, PAR_DIAPREFERENCIAL' +
        '01, '
      
        '  PAR_DIAPREFERENCIAL02, PAR_DIAPREFERENCIAL03, PAR_DIAPREFERENC' +
        'IAL04, '
      
        '  PAR_DIAPREFERENCIAL05, PAR_DIAPREFERENCIAL06, PAR_DIAPREFERENC' +
        'IAL07, '
      
        '  PAR_DIAPREFERENCIAL08, PAR_DIAPREFERENCIAL09, PAR_DIAPREFERENC' +
        'IAL10, '
      
        '  PAR_DIAPREFERENCIAL11, PAR_DIAPREFERENCIAL12, PAR_DIAPREFERENC' +
        'IAL13, '
      
        '  PAR_DIAPREFERENCIAL14, PAR_DIAPREFERENCIAL15, PAR_DIAPREFERENC' +
        'IAL16, '
      
        '  PAR_DIAPREFERENCIAL17, PAR_DIAPREFERENCIAL18, PAR_DIAPREFERENC' +
        'IAL19, '
      
        '  PAR_DIAPREFERENCIAL20, PAR_DIAPREFERENCIAL21, PAR_DIAPREFERENC' +
        'IAL22, '
      
        '  PAR_DIAPREFERENCIAL23, PAR_DIAPREFERENCIAL24, PAR_DIAPREFERENC' +
        'IAL25, '
      
        '  PAR_DIAPREFERENCIAL26, PAR_DIAPREFERENCIAL27, PAR_DIAPREFERENC' +
        'IAL28, '
      '  PAR_ENQUADRAMENTOIPI, PAR_ESPECIEPADRAO, PAR_ESTADOPADRAO, '
      
        '  PAR_ESTOQUEESPADRAO, PAR_ETIQUETACONFERENCIA, PAR_ETIQUETAEMBA' +
        'LAGEM, '
      
        '  PAR_ETIQUETAMODELO1, PAR_EXIBIRTELARESUMO, PAR_EXPEDIDOPORVEND' +
        'EDOR, '
      '  PAR_EXPEDIDOR, PAR_FAMILIACURSOS, PAR_FAMILIAMATERIAIS, '
      
        '  PAR_FORNECEDORESANEXOSEMAIL, PAR_FRETEPORCONTA, PAR_FRETEPRIME' +
        'IRAPARCELA, '
      
        '  PAR_FUSOHORARIO, PAR_GNRECONVENIO, PAR_GNRERECEITA, PAR_GNRESC' +
        'HEMAS, '
      
        '  PAR_HIGHHEIGHT, PAR_HIGHWIDTH, PAR_HORAAULA, PAR_HRCOMERCIALFI' +
        'M, '
      
        '  PAR_HRCOMERCIALINICIO, PAR_IDENTIFICACAOSISTEMA, PAR_IMPRIMIRC' +
        'ANHOTOPEDIDO, '
      
        '  PAR_IMPRIMIRCONDICAO, PAR_IMPRIMIRLOGOTIPO, PAR_IMPRIMIRNOMEFA' +
        'NTASIA, '
      
        '  PAR_IMPRIMIRNUMPEDIDO, PAR_IMPRIMIRRECEBER, PAR_IMPRIMIRSALDOA' +
        'C, '
      '  PAR_INFOCOBRANCAXML, PAR_INTERMEDIADOR, PAR_INTERMEDIADORCAD, '
      '  PAR_INTERMEDIADORCNPJ, PAR_JURIDICOSITE1, PAR_JURIDICOSITE2, '
      
        '  PAR_JURIDICOSITE3, PAR_JUROSMENSAL, PAR_LIBCRYPT, PAR_LIBHTTP,' +
        ' '
      
        '  PAR_LIBSSL, PAR_LIBXMLSIGN, PAR_LICENCADLL, PAR_LICENCADLLCTE,' +
        ' '
      '  PAR_LICENCADLLMDFE, PAR_LIMITECREDITO, PAR_LINHASFINALRECIBO, '
      
        '  PAR_LINHASINICIORECIBO, PAR_LOCACOESDIAS, PAR_LOCACOESHORALIMI' +
        'TE, '
      
        '  PAR_LOCALANEXOSCLIENTES, PAR_LOCALANEXOSCONSULTAS, PAR_LOCALAN' +
        'EXOSFORNECEDORES, '
      
        '  PAR_LOCALANEXOSPROCESSOS, PAR_LOCALANEXOSPRODUTOS, PAR_LOCALAN' +
        'EXOSSEGUROS, '
      
        '  PAR_LOCALATUALIZACOES, PAR_LOCALDENTES, PAR_LOCALESTUDAPADRAO,' +
        ' '
      
        '  PAR_LOCALFOTOSIMOVEIS, PAR_LOCALFOTOSPRODUTOS, PAR_LOCALIMAGEN' +
        'SCONSULTAS, '
      '  PAR_LOCALLOGOMARCA, PAR_LOCALMODELOSDOC, PAR_LOCALPADRAO, '
      '  PAR_LOCALPRONTUARIOS, PAR_LOCPRODUTOSPRECOS, PAR_LOWHEIGHT, '
      
        '  PAR_LOWWIDTH, PAR_MALCOLMREQ, PAR_MALCOLMRESP, PAR_MARCAPADRAO' +
        ', '
      '  PAR_MARGEMPADRAO, PAR_MATRICULASEMMATERIAL, PAR_MDFEMODELO, '
      
        '  PAR_MDFESERIE, PAR_MULTAPORC, PAR_MULTATIPO, PAR_NFCECONTINGEN' +
        'CIADATA, '
      
        '  PAR_NFCECONTINGENCIAHORA, PAR_NFCECONTINGENCIAJUST, PAR_NFCECS' +
        'C, '
      
        '  PAR_NFCECSCHOMOLOGACAO, PAR_NFCECSCID, PAR_NFCECSCIDHOMOLOGACA' +
        'O, '
      '  PAR_NFCEIMPRIMIR, PAR_NFCEIMPRIMIRLOGO, PAR_NFCEMODELO, '
      
        '  PAR_NFCESCHEMAS, PAR_NFCESERIE, PAR_NFCETEMPOMSG, PAR_NFCETIME' +
        'OUT, '
      
        '  PAR_NFCETIPODANFCE, PAR_NFCETIPOEMISSAO, PAR_NFECCEEMAILASSUNT' +
        'O, '
      
        '  PAR_NFECONTINGENCIADATA, PAR_NFECONTINGENCIAHORA, PAR_NFECONTI' +
        'NGENCIAJUST, '
      '  PAR_NFEEMAILASSUNTO, PAR_NFEEMAILAUTOMATICO, PAR_NFEEMAILBCC, '
      
        '  PAR_NFEEMAILTRANSP, PAR_NFEMODELO, PAR_NFESERIE, PAR_NFETIPOAT' +
        'ENDIMENTO, '
      
        '  PAR_NFETIPOCONSUMIDOR, PAR_NFETIPOEMISSAO, PAR_NFEVISUALIZARDA' +
        'NFE, '
      
        '  PAR_NFEZAPASSUNTO, PAR_NFSEEMAILASSUNTO, PAR_NFSEEMAILAUTOMATI' +
        'CO, '
      '  PAR_NFSEINFOADICIONAIS, PAR_NFSEPROVEDOR, PAR_NFSERETENCAO, '
      
        '  PAR_NFSERETENCAORESP, PAR_NFSESCHEMAS, PAR_NFSESERIE, PAR_NFSE' +
        'SERVICO, '
      
        '  PAR_NFSETIMEOUT, PAR_NFSEVERSAO, PAR_NFSEZAPASSUNTO, PAR_NOMEC' +
        'ERTIFICADO, '
      
        '  PAR_NOTASLF, PAR_NOTASLI, PAR_NOTASQL, PAR_NOTASQLOBS, PAR_PAS' +
        'TAHIGH, '
      '  PAR_PASTALOW, PAR_PREVISUALIZARVENDA, PAR_PRODUCAODTPREVISAO, '
      
        '  PAR_PRODUTOCODIGOLIVRE, PAR_PRODUTOMAODEOBRA, PAR_PRODUTOSANEX' +
        'OSEMAIL, '
      
        '  PAR_PRODUTOSCODIGOFAB, PAR_PRODUTOSLF, PAR_PRODUTOSLI, PAR_PRO' +
        'DUTOSQL, '
      
        '  PAR_PROFAMILIA, PAR_PROFORNECEDOR, PAR_PROGRUPO, PAR_PROMARCA,' +
        ' '
      
        '  PAR_PROMISSORIASCODIGO, PAR_PROUNIDADE, PAR_PROXY, PAR_PROXYEN' +
        'DERECO, '
      
        '  PAR_PROXYPASSWORD, PAR_PROXYPORTA, PAR_PROXYUSER, PAR_QTDENIVE' +
        'ISCOMPOSTO, '
      
        '  PAR_RECEITAPADRAO, PAR_RECIBOSEMAILASSUNTO, PAR_REE_DTJUROSAPO' +
        'S, '
      
        '  PAR_REFORMATRIBUTARIA, PAR_REGRAFISCALPADRAO, PAR_REPOSITORIOB' +
        'OLETOS, '
      '  PAR_REPOSITORIOCTE, PAR_REPOSITORIOMDFE, PAR_REPOSITORIONFCE, '
      
        '  PAR_REPOSITORIONFE, PAR_REPOSITORIONFSE, PAR_RNTRC, PAR_SEGURO' +
        'SANEXOSEMAIL, '
      
        '  PAR_SENHACERTIFICADO, PAR_SERIALCERTIFICADO, PAR_SERVICOSCLIEN' +
        'TEDIFERENTE, '
      
        '  PAR_SERVICOSDTPREVISAO, PAR_SERVICOSEMAILASSUNTO, PAR_SERVICOS' +
        'LF, '
      
        '  PAR_SERVICOSLI, PAR_SERVICOSORCLF, PAR_SERVICOSORCLI, PAR_SERV' +
        'ICOSORCQL, '
      '  PAR_SERVICOSORCRP, PAR_SERVICOSPRINTPADRAO, PAR_SERVICOSPV, '
      '  PAR_SERVICOSRPA, PAR_SERVICOSRPF, PAR_SERVICOSSERIEMASK, '
      
        '  PAR_SERVICOSTIMBRADA, PAR_SIGLAUF, PAR_SIGLAUFCTE, PAR_SIGLAUF' +
        'MDFE, '
      
        '  PAR_SIGLAWS, PAR_SIGLAWSCTE, PAR_SIGLAWSGNRE, PAR_SIGLAWSMDFE,' +
        ' '
      '  PAR_STPRIMEIRAPARCELA, PAR_TABELAPRECO, PAR_TAXAPADRAO, '
      '  PAR_TELEVENDAPROXCONTATO, PAR_TEMPERATURA1, PAR_TEMPERATURA2, '
      
        '  PAR_TEMPERATURA3, PAR_TEMPERATURA4, PAR_TEMPERATURA5, PAR_TEMP' +
        'OPADRAO, '
      '  PAR_TIPOAMBIENTE, PAR_TIPOAMBIENTECTE, PAR_TIPOAMBIENTEGNRE, '
      
        '  PAR_TIPOAMBIENTEMDFE, PAR_TIPOAMBIENTENFCE, PAR_TIPOAMBIENTENF' +
        'SE, '
      
        '  PAR_TIPOCODIGOEXPRESSO, PAR_TRANSPORTADORAPADRAO, PAR_USARCODI' +
        'GOFAB, '
      
        '  PAR_USARMARKUP, PAR_VALFINALCERTIFICADO, PAR_VALINICIALCERTIFI' +
        'CADO, '
      '  PAR_VALORBOLETO, PAR_VALORMULTA, PAR_VEICULOSPORCLUCRO, '
      
        '  PAR_VENDAEMAILASSUNTO, PAR_VENDASLF, PAR_VENDASLF2, PAR_VENDAS' +
        'LI, '
      
        '  PAR_VENDASQL, PAR_VENDASQL2, PAR_VENDASRP, PAR_VENDAZAPASSUNTO' +
        ', '
      '  PAR_VENDEESTOQUEZERO, PAR_VENDERCOMPOSTO, PAR_VERSAOXML, '
      
        '  PAR_VERSAOXMLCTE, PAR_VERSAOXMLMDFE, PAR_ZAPBASE, PAR_ZAPSENHA' +
        ', '
      '  PAR_ZAPSERVIDOR, PAR_ZAPUSUARIO'
      'FROM PARAMETROS'
      'WHERE PAR_CODIGO = :OLD_PAR_CODIGO')
    Left = 192
    Top = 344
  end
  object TBPiscofins: TFDQuery
    Connection = FDConnection1
    Transaction = TRPiscofins
    UpdateObject = UPPiscofins
    SQL.Strings = (
      'select * from PISCOFINS '
      'where PIS_CODIGO=:codigo '
      'order by PIS_CODIGO'
      '')
    Left = 224
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBPiscofinsPIS_CODIGO: TIntegerField
      FieldName = 'PIS_CODIGO'
      Origin = 'PIS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPiscofinsPIS_DESCRICAO: TStringField
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      Size = 120
    end
    object TBPiscofinsPIS_DTATUALIZACAO: TDateField
      FieldName = 'PIS_DTATUALIZACAO'
      Origin = 'PIS_DTATUALIZACAO'
    end
    object TBPiscofinsPIS_DTCADASTRO: TDateField
      FieldName = 'PIS_DTCADASTRO'
      Origin = 'PIS_DTCADASTRO'
    end
    object TBPiscofinsPIS_HRATUALIZACAO: TTimeField
      FieldName = 'PIS_HRATUALIZACAO'
      Origin = 'PIS_HRATUALIZACAO'
    end
    object TBPiscofinsPIS_HRCADASTRO: TTimeField
      FieldName = 'PIS_HRCADASTRO'
      Origin = 'PIS_HRCADASTRO'
    end
    object TBPiscofinsPIS_USUARIO: TStringField
      FieldName = 'PIS_USUARIO'
      Origin = 'PIS_USUARIO'
    end
  end
  object TRPiscofins: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 224
    Top = 392
  end
  object UPPiscofins: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PISCOFINS'
      '(PIS_CODIGO, PIS_DESCRICAO, PIS_DTATUALIZACAO, '
      '  PIS_DTCADASTRO, PIS_HRATUALIZACAO, PIS_HRCADASTRO, '
      '  PIS_USUARIO)'
      
        'VALUES (:NEW_PIS_CODIGO, :NEW_PIS_DESCRICAO, :NEW_PIS_DTATUALIZA' +
        'CAO, '
      
        '  :NEW_PIS_DTCADASTRO, :NEW_PIS_HRATUALIZACAO, :NEW_PIS_HRCADAST' +
        'RO, '
      '  :NEW_PIS_USUARIO)'
      
        'RETURNING PIS_CODIGO, PIS_DESCRICAO, PIS_DTATUALIZACAO, PIS_DTCA' +
        'DASTRO, PIS_HRATUALIZACAO, PIS_HRCADASTRO, PIS_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PISCOFINS'
      
        'SET PIS_CODIGO = :NEW_PIS_CODIGO, PIS_DESCRICAO = :NEW_PIS_DESCR' +
        'ICAO, '
      
        '  PIS_DTATUALIZACAO = :NEW_PIS_DTATUALIZACAO, PIS_DTCADASTRO = :' +
        'NEW_PIS_DTCADASTRO, '
      
        '  PIS_HRATUALIZACAO = :NEW_PIS_HRATUALIZACAO, PIS_HRCADASTRO = :' +
        'NEW_PIS_HRCADASTRO, '
      '  PIS_USUARIO = :NEW_PIS_USUARIO'
      'WHERE PIS_CODIGO = :OLD_PIS_CODIGO'
      
        'RETURNING PIS_CODIGO, PIS_DESCRICAO, PIS_DTATUALIZACAO, PIS_DTCA' +
        'DASTRO, PIS_HRATUALIZACAO, PIS_HRCADASTRO, PIS_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PISCOFINS'
      'WHERE PIS_CODIGO = :OLD_PIS_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PIS_CODIGO, PIS_DESCRICAO, PIS_DTATUALIZACAO, PIS_DTCADAS' +
        'TRO, '
      '  PIS_HRATUALIZACAO, PIS_HRCADASTRO, PIS_USUARIO'
      'FROM PISCOFINS'
      'WHERE PIS_CODIGO = :OLD_PIS_CODIGO')
    Left = 224
    Top = 344
  end
  object TBProdutos: TFDQuery
    Connection = FDConnection1
    Transaction = TRProdutos
    UpdateObject = UPProdutos
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
      'PRO_NBS,'
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
      'UNI_DESCRICAO,'
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
      'RGF_DESCRICAO,'
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
      'IS_.CLT_TRIBUTACAOREGULAR as CLT_TRIBUTACAOREGULAR_IS,'
      'NBS_DESCRICAO'
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
      'left join NBS on PRO_NBS=NBS_CODIGO'
      'left join PISCOFINS as PIS on PRO_CSTPIS=PIS.PIS_CODIGO'
      'left join PISCOFINS as COFINS on PRO_CSTCOFINS=COFINS.PIS_CODIGO'
      'left join REGRASFISCAIS on PRO_REGRAFISCAL=RGF_CODIGO'
      
        'left join CLASSTRIB IBSCBS on RGF_CLASSTRIBIBSCBS=IBSCBS.CLT_COD' +
        'IGO'
      'left join CLASSTRIB IS_ on RGF_CLASSTRIBIS=IS_.CLT_CODIGO'
      'left join CREDITOPRES on RGF_CREDITOPRES=CPR_CODIGO'
      'where PRO_CODIGO=:codigo'
      ''
      ''
      
        '-- ao gerar os SQLs, no campo PRO_CODIGO vai: iif(:NEW_PRO_CODIG' +
        'O is null,gen_id(GEN_PRODUTOS,1),:NEW_PRO_CODIGO), '
      '-- Ao atualizar os campos desta tabela, n'#227'o esquecer de retirar '
      '-- da instru'#231#227'o UPDATE os campos abaixo.'
      '--  PRO_COMPOSTO = :PRO_COMPOSTO,'
      '--  PRO_DTULTCOMPRA = :PRO_DTULTCOMPRA,'
      '--  PRO_DTULTVENDA = :PRO_DTULTVENDA,'
      '--  PRO_ESTOQUEATUAL = :PRO_ESTOQUEATUAL,'
      '--  PRO_MARGEM = :PRO_MARGEM,'
      '--  PRO_MARGEM1 = :PRO_MARGEM1,'
      '--  PRO_MARGEM2 = :PRO_MARGEM2,'
      '--  PRO_MARGEM3 = :PRO_MARGEM3,'
      '--  PRO_MARGEM4 = :PRO_MARGEM4,'
      '--  PRO_MARGEM5 = :PRO_MARGEM5,'
      '--  PRO_MARGEM6 = :PRO_MARGEM6,'
      '--  PRO_MARKUP = :PRO_MARKUP,'
      '--  PRO_MARKUPCODIGO = :PRO_MARKUPCODIGO,'
      '--  PRO_PRECOCUSTO = :PRO_PRECOCUSTO,'
      '--  PRO_PRECOCUSTOCOMP = :PRO_PRECOCUSTOCOMP,'
      '--  PRO_PRECOCUSTOMEDIO = :PRO_PRECOCUSTOMEDIO,'
      '--  PRO_PRECOCUSTOULT = :PRO_PRECOCUSTOULT,'
      '--  PRO_PRECOVENDA = :PRO_PRECOVENDA,'
      '--  PRO_PRECOVENDAMEDIO = :PRO_PRECOVENDAMEDIO,'
      '--  PRO_PRECOVENDAULT = :PRO_PRECOVENDAULT,'
      '--  PRO_TABPRECO1 = :PRO_TABPRECO1,'
      '--  PRO_TABPRECO2 = :PRO_TABPRECO2,'
      '--  PRO_TABPRECO3 = :PRO_TABPRECO3,'
      '--  PRO_TABPRECO4 = :PRO_TABPRECO4,'
      '--  PRO_TABPRECO5 = :PRO_TABPRECO5,'
      '--  PRO_TABPRECO6 = :PRO_TABPRECO6,'
      ''
      '')
    Left = 256
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object TBProdutosPRO_NBS: TStringField
      FieldName = 'PRO_NBS'
      Origin = 'PRO_NBS'
      Size = 15
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
      Size = 120
    end
    object TBProdutosFAM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAM_DESCRICAO'
      Origin = 'FAM_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProdutosFOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOR_NOME'
      Origin = 'FOR_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBProdutosGRU_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRU_DESCRICAO'
      Origin = 'GRU_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProdutosICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBProdutosIPI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_DESCRICAO'
      Origin = 'IPI_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBProdutosISS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ISS_DESCRICAO'
      Origin = 'ISS_DESCRICAO'
      ProviderFlags = []
      Size = 1000
    end
    object TBProdutosMAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAR_DESCRICAO'
      Origin = 'MAR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProdutosPIS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBProdutosPIS_DESCRICAO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_DESCRICAO1'
      Origin = 'PIS_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBProdutosUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProdutosRGF_ALIQCBS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_ALIQCBS'
      Origin = 'RGF_ALIQCBS'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosRGF_ALIQIBSMUN: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_ALIQIBSMUN'
      Origin = 'RGF_ALIQIBSMUN'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosRGF_ALIQIBSUF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_ALIQIBSUF'
      Origin = 'RGF_ALIQIBSUF'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosRGF_ALIQIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_ALIQIS'
      Origin = 'RGF_ALIQIS'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosRGF_CLASSTRIBIBSCBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CLASSTRIBIBSCBS'
      Origin = 'RGF_CLASSTRIBIBSCBS'
      ProviderFlags = []
      Size = 15
    end
    object TBProdutosRGF_CLASSTRIBIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CLASSTRIBIS'
      Origin = 'RGF_CLASSTRIBIS'
      ProviderFlags = []
      Size = 15
    end
    object TBProdutosRGF_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CODIGO'
      Origin = 'RGF_CODIGO'
      ProviderFlags = []
    end
    object TBProdutosRGF_CREDITOPRES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CREDITOPRES'
      Origin = 'RGF_CREDITOPRES'
      ProviderFlags = []
    end
    object TBProdutosRGF_CSTIBSCBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CSTIBSCBS'
      Origin = 'RGF_CSTIBSCBS'
      ProviderFlags = []
      Size = 15
    end
    object TBProdutosRGF_CSTIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_CSTIS'
      Origin = 'RGF_CSTIS'
      ProviderFlags = []
      Size = 15
    end
    object TBProdutosRGF_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RGF_DESCRICAO'
      Origin = 'RGF_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBProdutosCPR_APROPRIADFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIADFE'
      Origin = 'CPR_APROPRIADFE'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCPR_APROPRIAEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_APROPRIAEVENTO'
      Origin = 'CPR_APROPRIAEVENTO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCPR_CBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_CBS'
      Origin = 'CPR_CBS'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCPR_DEDUZTOTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DEDUZTOTAL'
      Origin = 'CPR_DEDUZTOTAL'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCPR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_DESCRICAO'
      Origin = 'CPR_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBProdutosCPR_IBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPR_IBS'
      Origin = 'CPR_IBS'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_DESCRICAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IC'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBProdutosCLT_ALIQCBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IC'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosCLT_ALIQIBSRED_IC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IC'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosCLT_CREDITOPRESUMIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IC'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONODIFERIMENTO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IC'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONOFASICO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IC'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONORETENCAO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IC'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONORETIDO_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IC'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_REDBASE_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IC'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_TRIBUTACAOREGULAR_IC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IC'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_DESCRICAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_DESCRICAO_IS'
      Origin = 'CLT_DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object TBProdutosCLT_ALIQCBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQCBSRED_IS'
      Origin = 'CLT_ALIQCBSRED'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosCLT_ALIQIBSRED_IS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_ALIQIBSRED_IS'
      Origin = 'CLT_ALIQIBSRED'
      ProviderFlags = []
      Precision = 18
    end
    object TBProdutosCLT_CREDITOPRESUMIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_CREDITOPRESUMIDO_IS'
      Origin = 'CLT_CREDITOPRESUMIDO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONODIFERIMENTO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONODIFERIMENTO_IS'
      Origin = 'CLT_MONODIFERIMENTO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONOFASICO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONOFASICO_IS'
      Origin = 'CLT_MONOFASICO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONORETENCAO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETENCAO_IS'
      Origin = 'CLT_MONORETENCAO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_MONORETIDO_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_MONORETIDO_IS'
      Origin = 'CLT_MONORETIDO'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_REDBASE_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_REDBASE_IS'
      Origin = 'CLT_REDBASE'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosCLT_TRIBUTACAOREGULAR_IS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLT_TRIBUTACAOREGULAR_IS'
      Origin = 'CLT_TRIBUTACAOREGULAR'
      ProviderFlags = []
      Size = 1
    end
    object TBProdutosNBS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NBS_DESCRICAO'
      Origin = 'NBS_DESCRICAO'
      ProviderFlags = []
      Size = 1000
    end
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 256
    Top = 392
  end
  object UPProdutos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PRODUTOS'
      '(PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, '
      '  PRO_ALIQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, '
      '  PRO_ALIQIPI, PRO_ALIQISS, PRO_ALIQOUTROS, '
      '  PRO_ALIQPIS, PRO_ALIQPISST, PRO_ALTURA, PRO_ATUALIZAR, '
      '  PRO_ATUALIZATABELA, PRO_BENEFICIO, PRO_CEST, '
      '  PRO_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, '
      '  PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, '
      '  PRO_COMISSAO, PRO_COMPOEBASEICMS, PRO_COMPOEBASEICMSST, '
      '  PRO_COMPOSTO, PRO_CONVERSAO, PRO_CORSABOR, '
      '  PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, '
      '  PRO_CUBICO, PRO_DESCMAX, PRO_DESCRICAO, PRO_DTATUALIZACAO, '
      '  PRO_DTCADASTRO, PRO_DTULTCOMPRA, PRO_DTULTVENDA, '
      '  PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, '
      '  PRO_ESTOQUEMIN, PRO_EXCECAO, PRO_FAMILIA, '
      '  PRO_FCI, PRO_FORNECEDOR, PRO_GENERO, PRO_GRUPO, '
      '  PRO_HRATUALIZACAO, PRO_HRCADASTRO, PRO_ICMSALIQUOTAPOR, '
      '  PRO_INCENTIVOISS, PRO_INDICADORISS, PRO_INTERNET, '
      '  PRO_LARGURA, PRO_LOCALIZACAO, PRO_MARCA, '
      '  PRO_MARGEM, PRO_MARGEM1, PRO_MARGEM2, PRO_MARGEM3, '
      '  PRO_MARGEM4, PRO_MARGEM5, PRO_MARGEM6, PRO_MARKUP, '
      '  PRO_MARKUPCODIGO, PRO_MODICMS, PRO_MODICMSST, '
      '  PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, '
      '  PRO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, '
      '  PRO_PESO, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, '
      '  PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_PRECOCUSTO, '
      '  PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOCUSTOULT, '
      '  PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT, '
      '  PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDIDADE, '
      '  PRO_REGISTROMS, PRO_REGRAFISCAL, PRO_STATUS, '
      '  PRO_SUBSTITUICAOTRIB, PRO_TABPRECO1, PRO_TABPRECO2, '
      '  PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, '
      '  PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOISS, '
      '  PRO_TIPOITEM, PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, '
      '  PRO_USUARIO)'
      
        'VALUES (:NEW_PRO_ALIQCOFINS, :NEW_PRO_ALIQCOFINSST, :NEW_PRO_ALI' +
        'QICMS, '
      
        '  :NEW_PRO_ALIQICMSADICST, :NEW_PRO_ALIQICMSRED, :NEW_PRO_ALIQIC' +
        'MSST, '
      '  :NEW_PRO_ALIQIPI, :NEW_PRO_ALIQISS, :NEW_PRO_ALIQOUTROS, '
      
        '  :NEW_PRO_ALIQPIS, :NEW_PRO_ALIQPISST, :NEW_PRO_ALTURA, :NEW_PR' +
        'O_ATUALIZAR, '
      '  :NEW_PRO_ATUALIZATABELA, :NEW_PRO_BENEFICIO, :NEW_PRO_CEST, '
      '  :NEW_PRO_CFOP, :NEW_PRO_CFOPFORA, :NEW_PRO_CLASSFISCAL, '
      
        '  iif(:NEW_PRO_CODIGO is null,gen_id(GEN_PRODUTOS,1),:NEW_PRO_CO' +
        'DIGO), :NEW_PRO_CODIGOBARRAS, :NEW_PRO_CODIGOFAB, '
      
        '  :NEW_PRO_COMISSAO, :NEW_PRO_COMPOEBASEICMS, :NEW_PRO_COMPOEBAS' +
        'EICMSST, '
      '  :NEW_PRO_COMPOSTO, :NEW_PRO_CONVERSAO, :NEW_PRO_CORSABOR, '
      
        '  :NEW_PRO_CSTCOFINS, :NEW_PRO_CSTICMS, :NEW_PRO_CSTIPI, :NEW_PR' +
        'O_CSTPIS, '
      
        '  :NEW_PRO_CUBICO, :NEW_PRO_DESCMAX, :NEW_PRO_DESCRICAO, :NEW_PR' +
        'O_DTATUALIZACAO, '
      
        '  :NEW_PRO_DTCADASTRO, :NEW_PRO_DTULTCOMPRA, :NEW_PRO_DTULTVENDA' +
        ', '
      
        '  :NEW_PRO_ENQUADRAMENTOIPI, :NEW_PRO_ESTOQUEATUAL, :NEW_PRO_EST' +
        'OQUEMAX, '
      '  :NEW_PRO_ESTOQUEMIN, :NEW_PRO_EXCECAO, :NEW_PRO_FAMILIA, '
      
        '  :NEW_PRO_FCI, :NEW_PRO_FORNECEDOR, :NEW_PRO_GENERO, :NEW_PRO_G' +
        'RUPO, '
      
        '  :NEW_PRO_HRATUALIZACAO, :NEW_PRO_HRCADASTRO, :NEW_PRO_ICMSALIQ' +
        'UOTAPOR, '
      
        '  :NEW_PRO_INCENTIVOISS, :NEW_PRO_INDICADORISS, :NEW_PRO_INTERNE' +
        'T, '
      '  :NEW_PRO_LARGURA, :NEW_PRO_LOCALIZACAO, :NEW_PRO_MARCA, '
      
        '  :NEW_PRO_MARGEM, :NEW_PRO_MARGEM1, :NEW_PRO_MARGEM2, :NEW_PRO_' +
        'MARGEM3, '
      
        '  :NEW_PRO_MARGEM4, :NEW_PRO_MARGEM5, :NEW_PRO_MARGEM6, :NEW_PRO' +
        '_MARKUP, '
      '  :NEW_PRO_MARKUPCODIGO, :NEW_PRO_MODICMS, :NEW_PRO_MODICMSST, '
      
        '  :NEW_PRO_NBS, :NEW_PRO_NOME, :NEW_PRO_OBSERVACOES, :NEW_PRO_OF' +
        'ERTA, '
      '  :NEW_PRO_ORIGEM, :NEW_PRO_PALAVRASCHAVE, :NEW_PRO_PESAVEL, '
      
        '  :NEW_PRO_PESO, :NEW_PRO_PRECO1, :NEW_PRO_PRECO2, :NEW_PRO_PREC' +
        'O3, '
      
        '  :NEW_PRO_PRECO4, :NEW_PRO_PRECO5, :NEW_PRO_PRECO6, :NEW_PRO_PR' +
        'ECOCUSTO, '
      
        '  :NEW_PRO_PRECOCUSTOCOMP, :NEW_PRO_PRECOCUSTOMEDIO, :NEW_PRO_PR' +
        'ECOCUSTOULT, '
      
        '  :NEW_PRO_PRECOVENDA, :NEW_PRO_PRECOVENDAMEDIO, :NEW_PRO_PRECOV' +
        'ENDAULT, '
      
        '  :NEW_PRO_PRODUCAO, :NEW_PRO_PRODUTOREAL, :NEW_PRO_PROFUNDIDADE' +
        ', '
      '  :NEW_PRO_REGISTROMS, :NEW_PRO_REGRAFISCAL, :NEW_PRO_STATUS, '
      
        '  :NEW_PRO_SUBSTITUICAOTRIB, :NEW_PRO_TABPRECO1, :NEW_PRO_TABPRE' +
        'CO2, '
      '  :NEW_PRO_TABPRECO3, :NEW_PRO_TABPRECO4, :NEW_PRO_TABPRECO5, '
      
        '  :NEW_PRO_TABPRECO6, :NEW_PRO_TAMANHO, :NEW_PRO_TIPO, :NEW_PRO_' +
        'TIPOISS, '
      
        '  :NEW_PRO_TIPOITEM, :NEW_PRO_TRIBUTO, :NEW_PRO_TROCA, :NEW_PRO_' +
        'UNIDADE, '
      '  :NEW_PRO_USUARIO)'
      
        'RETURNING PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_AL' +
        'IQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, PRO_ALIQIPI, PRO_' +
        'ALIQISS, PRO_ALIQOUTROS, PRO_ALIQPIS, PRO_ALIQPISST, PRO_ALTURA,' +
        ' PRO_ATUALIZAR, PRO_ATUALIZATABELA, PRO_BENEFICIO, PRO_CEST, PRO' +
        '_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARR' +
        'AS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, PRO_COMPOEB' +
        'ASEICMSST, PRO_COMPOSTO, PRO_CONVERSAO, PRO_CORSABOR, PRO_CSTCOF' +
        'INS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_CUBICO, PRO_DESCMA' +
        'X, PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_DTULTCO' +
        'MPRA, PRO_DTULTVENDA, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PR' +
        'O_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_EXCECAO, PRO_FAMILIA, PRO_FCI,' +
        ' PRO_FORNECEDOR, PRO_GENERO, PRO_GRUPO, PRO_HRATUALIZACAO, PRO_H' +
        'RCADASTRO, PRO_ICMSALIQUOTAPOR, PRO_INCENTIVOISS, PRO_INDICADORI' +
        'SS, PRO_INTERNET, PRO_LARGURA, PRO_LOCALIZACAO, PRO_MARCA, PRO_M' +
        'ARGEM, PRO_MARGEM1, PRO_MARGEM2, PRO_MARGEM3, PRO_MARGEM4, PRO_M' +
        'ARGEM5, PRO_MARGEM6, PRO_MARKUP, PRO_MARKUPCODIGO, PRO_MODICMS, '
      
        'PRO_MODICMSST, PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, P' +
        'RO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_PESO, PRO_PRECO1,' +
        ' PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO' +
        '_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOC' +
        'USTOULT, PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT,' +
        ' PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDIDADE, PRO_REGISTROMS' +
        ', PRO_REGRAFISCAL, PRO_STATUS, PRO_SUBSTITUICAOTRIB, PRO_TABPREC' +
        'O1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, ' +
        'PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM,' +
        ' PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, PRO_USUARIO'
      
        'PRO_MODICMSST, PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, P' +
        'RO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_PESO, PRO_PRECO1,' +
        ' PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO' +
        '_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOC' +
        'USTOULT, PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT,' +
        ' PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDIDADE, PRO_REGISTROMS' +
        ', PRO_REGRAFISCAL, PRO_STATUS, PRO_SUBSTITUICAOTRIB, PRO_TABPREC' +
        'O1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, ' +
        'PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM,' +
        ' PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, PRO_USUARIO')
    ModifySQL.Strings = (
      'UPDATE PRODUTOS'
      
        'SET PRO_ALIQCOFINS = :NEW_PRO_ALIQCOFINS, PRO_ALIQCOFINSST = :NE' +
        'W_PRO_ALIQCOFINSST, '
      
        '  PRO_ALIQICMS = :NEW_PRO_ALIQICMS, PRO_ALIQICMSADICST = :NEW_PR' +
        'O_ALIQICMSADICST, '
      
        '  PRO_ALIQICMSRED = :NEW_PRO_ALIQICMSRED, PRO_ALIQICMSST = :NEW_' +
        'PRO_ALIQICMSST, '
      
        '  PRO_ALIQIPI = :NEW_PRO_ALIQIPI, PRO_ALIQISS = :NEW_PRO_ALIQISS' +
        ', '
      
        '  PRO_ALIQOUTROS = :NEW_PRO_ALIQOUTROS, PRO_ALIQPIS = :NEW_PRO_A' +
        'LIQPIS, '
      
        '  PRO_ALIQPISST = :NEW_PRO_ALIQPISST, PRO_ALTURA = :NEW_PRO_ALTU' +
        'RA, '
      
        '  PRO_ATUALIZAR = :NEW_PRO_ATUALIZAR, PRO_ATUALIZATABELA = :NEW_' +
        'PRO_ATUALIZATABELA, '
      '  PRO_BENEFICIO = :NEW_PRO_BENEFICIO, PRO_CEST = :NEW_PRO_CEST, '
      '  PRO_CFOP = :NEW_PRO_CFOP, PRO_CFOPFORA = :NEW_PRO_CFOPFORA, '
      
        '  PRO_CLASSFISCAL = :NEW_PRO_CLASSFISCAL, PRO_CODIGO = :NEW_PRO_' +
        'CODIGO, '
      
        '  PRO_CODIGOBARRAS = :NEW_PRO_CODIGOBARRAS, PRO_CODIGOFAB = :NEW' +
        '_PRO_CODIGOFAB, '
      
        '  PRO_COMISSAO = :NEW_PRO_COMISSAO, PRO_COMPOEBASEICMS = :NEW_PR' +
        'O_COMPOEBASEICMS, '
      '  PRO_COMPOEBASEICMSST = :NEW_PRO_COMPOEBASEICMSST,  '
      
        '  PRO_CONVERSAO = :NEW_PRO_CONVERSAO, PRO_CORSABOR = :NEW_PRO_CO' +
        'RSABOR, '
      
        '  PRO_CSTCOFINS = :NEW_PRO_CSTCOFINS, PRO_CSTICMS = :NEW_PRO_CST' +
        'ICMS, '
      '  PRO_CSTIPI = :NEW_PRO_CSTIPI, PRO_CSTPIS = :NEW_PRO_CSTPIS, '
      '  PRO_CUBICO = :NEW_PRO_CUBICO, PRO_DESCMAX = :NEW_PRO_DESCMAX, '
      
        '  PRO_DESCRICAO = :NEW_PRO_DESCRICAO, PRO_DTATUALIZACAO = :NEW_P' +
        'RO_DTATUALIZACAO, '
      '  PRO_DTCADASTRO = :NEW_PRO_DTCADASTRO,  '
      '  PRO_ENQUADRAMENTOIPI = :NEW_PRO_ENQUADRAMENTOIPI, '
      '  PRO_ESTOQUEMAX = :NEW_PRO_ESTOQUEMAX, '
      
        '  PRO_ESTOQUEMIN = :NEW_PRO_ESTOQUEMIN, PRO_EXCECAO = :NEW_PRO_E' +
        'XCECAO, '
      '  PRO_FAMILIA = :NEW_PRO_FAMILIA, PRO_FCI = :NEW_PRO_FCI, '
      
        '  PRO_FORNECEDOR = :NEW_PRO_FORNECEDOR, PRO_GENERO = :NEW_PRO_GE' +
        'NERO, '
      
        '  PRO_GRUPO = :NEW_PRO_GRUPO, PRO_HRATUALIZACAO = :NEW_PRO_HRATU' +
        'ALIZACAO, '
      
        '  PRO_HRCADASTRO = :NEW_PRO_HRCADASTRO, PRO_ICMSALIQUOTAPOR = :N' +
        'EW_PRO_ICMSALIQUOTAPOR, '
      
        '  PRO_INCENTIVOISS = :NEW_PRO_INCENTIVOISS, PRO_INDICADORISS = :' +
        'NEW_PRO_INDICADORISS, '
      
        '  PRO_INTERNET = :NEW_PRO_INTERNET, PRO_LARGURA = :NEW_PRO_LARGU' +
        'RA, '
      
        '  PRO_LOCALIZACAO = :NEW_PRO_LOCALIZACAO, PRO_MARCA = :NEW_PRO_M' +
        'ARCA,  '
      '  PRO_MODICMS = :NEW_PRO_MODICMS, '
      '  PRO_MODICMSST = :NEW_PRO_MODICMSST, PRO_NBS = :NEW_PRO_NBS, '
      
        '  PRO_NOME = :NEW_PRO_NOME, PRO_OBSERVACOES = :NEW_PRO_OBSERVACO' +
        'ES, '
      '  PRO_OFERTA = :NEW_PRO_OFERTA, PRO_ORIGEM = :NEW_PRO_ORIGEM, '
      
        '  PRO_PALAVRASCHAVE = :NEW_PRO_PALAVRASCHAVE, PRO_PESAVEL = :NEW' +
        '_PRO_PESAVEL, '
      '  PRO_PESO = :NEW_PRO_PESO, PRO_PRECO1 = :NEW_PRO_PRECO1, '
      '  PRO_PRECO2 = :NEW_PRO_PRECO2, PRO_PRECO3 = :NEW_PRO_PRECO3, '
      '  PRO_PRECO4 = :NEW_PRO_PRECO4, PRO_PRECO5 = :NEW_PRO_PRECO5, '
      '  PRO_PRECO6 = :NEW_PRO_PRECO6,  '
      
        '  PRO_PRODUCAO = :NEW_PRO_PRODUCAO, PRO_PRODUTOREAL = :NEW_PRO_P' +
        'RODUTOREAL, '
      
        '  PRO_PROFUNDIDADE = :NEW_PRO_PROFUNDIDADE, PRO_REGISTROMS = :NE' +
        'W_PRO_REGISTROMS, '
      
        '  PRO_REGRAFISCAL = :NEW_PRO_REGRAFISCAL, PRO_STATUS = :NEW_PRO_' +
        'STATUS, '
      
        '  PRO_SUBSTITUICAOTRIB = :NEW_PRO_SUBSTITUICAOTRIB, PRO_TAMANHO ' +
        '= :NEW_PRO_TAMANHO, '
      '  PRO_TIPO = :NEW_PRO_TIPO, PRO_TIPOISS = :NEW_PRO_TIPOISS, '
      
        '  PRO_TIPOITEM = :NEW_PRO_TIPOITEM, PRO_TRIBUTO = :NEW_PRO_TRIBU' +
        'TO, '
      '  PRO_TROCA = :NEW_PRO_TROCA, PRO_UNIDADE = :NEW_PRO_UNIDADE, '
      '  PRO_USUARIO = :NEW_PRO_USUARIO'
      'WHERE PRO_CODIGO = :OLD_PRO_CODIGO'
      
        'RETURNING PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_AL' +
        'IQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, PRO_ALIQIPI, PRO_' +
        'ALIQISS, PRO_ALIQOUTROS, PRO_ALIQPIS, PRO_ALIQPISST, PRO_ALTURA,' +
        ' PRO_ATUALIZAR, PRO_ATUALIZATABELA, PRO_BENEFICIO, PRO_CEST, PRO' +
        '_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARR' +
        'AS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, PRO_COMPOEB' +
        'ASEICMSST, PRO_COMPOSTO, PRO_CONVERSAO, PRO_CORSABOR, PRO_CSTCOF' +
        'INS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_CUBICO, PRO_DESCMA' +
        'X, PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_DTULTCO' +
        'MPRA, PRO_DTULTVENDA, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PR' +
        'O_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_EXCECAO, PRO_FAMILIA, PRO_FCI,' +
        ' PRO_FORNECEDOR, PRO_GENERO, PRO_GRUPO, PRO_HRATUALIZACAO, PRO_H' +
        'RCADASTRO, PRO_ICMSALIQUOTAPOR, PRO_INCENTIVOISS, PRO_INDICADORI' +
        'SS, PRO_INTERNET, PRO_LARGURA, PRO_LOCALIZACAO, PRO_MARCA, PRO_M' +
        'ARGEM, PRO_MARGEM1, PRO_MARGEM2, PRO_MARGEM3, PRO_MARGEM4, PRO_M' +
        'ARGEM5, PRO_MARGEM6, PRO_MARKUP, PRO_MARKUPCODIGO, PRO_MODICMS, '
      
        'PRO_MODICMSST, PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, P' +
        'RO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_PESO, PRO_PRECO1,' +
        ' PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO' +
        '_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOC' +
        'USTOULT, PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT,' +
        ' PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDIDADE, PRO_REGISTROMS' +
        ', PRO_REGRAFISCAL, PRO_STATUS, PRO_SUBSTITUICAOTRIB, PRO_TABPREC' +
        'O1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, ' +
        'PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM,' +
        ' PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, PRO_USUARIO'
      
        'PRO_MODICMSST, PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, P' +
        'RO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_PESO, PRO_PRECO1,' +
        ' PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO' +
        '_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, PRO_PRECOC' +
        'USTOULT, PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT,' +
        ' PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDIDADE, PRO_REGISTROMS' +
        ', PRO_REGRAFISCAL, PRO_STATUS, PRO_SUBSTITUICAOTRIB, PRO_TABPREC' +
        'O1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, ' +
        'PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOISS, PRO_TIPOITEM,' +
        ' PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, PRO_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM PRODUTOS'
      'WHERE PRO_CODIGO = :OLD_PRO_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQI' +
        'CMSADICST, '
      '  PRO_ALIQICMSRED, PRO_ALIQICMSST, PRO_ALIQIPI, PRO_ALIQISS, '
      '  PRO_ALIQOUTROS, PRO_ALIQPIS, PRO_ALIQPISST, PRO_ALTURA, '
      '  PRO_ATUALIZAR, PRO_ATUALIZATABELA, PRO_BENEFICIO, PRO_CEST, '
      
        '  PRO_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIG' +
        'OBARRAS, '
      
        '  PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, PRO_COMPOEBAS' +
        'EICMSST, '
      '  PRO_COMPOSTO, PRO_CONVERSAO, PRO_CORSABOR, PRO_CSTCOFINS, '
      '  PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_CUBICO, PRO_DESCMAX, '
      
        '  PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_DTULTCOM' +
        'PRA, '
      '  PRO_DTULTVENDA, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, '
      '  PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_EXCECAO, PRO_FAMILIA, '
      
        '  PRO_FCI, PRO_FORNECEDOR, PRO_GENERO, PRO_GRUPO, PRO_HRATUALIZA' +
        'CAO, '
      
        '  PRO_HRCADASTRO, PRO_ICMSALIQUOTAPOR, PRO_INCENTIVOISS, PRO_IND' +
        'ICADORISS, '
      
        '  PRO_INTERNET, PRO_LARGURA, PRO_LOCALIZACAO, PRO_MARCA, PRO_MAR' +
        'GEM, '
      
        '  PRO_MARGEM1, PRO_MARGEM2, PRO_MARGEM3, PRO_MARGEM4, PRO_MARGEM' +
        '5, '
      '  PRO_MARGEM6, PRO_MARKUP, PRO_MARKUPCODIGO, PRO_MODICMS, '
      
        '  PRO_MODICMSST, PRO_NBS, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA,' +
        ' '
      
        '  PRO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESAVEL, PRO_PESO, PRO_PREC' +
        'O1, '
      '  PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, '
      '  PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOCUSTOMEDIO, '
      '  PRO_PRECOCUSTOULT, PRO_PRECOVENDA, PRO_PRECOVENDAMEDIO, '
      
        '  PRO_PRECOVENDAULT, PRO_PRODUCAO, PRO_PRODUTOREAL, PRO_PROFUNDI' +
        'DADE, '
      
        '  PRO_REGISTROMS, PRO_REGRAFISCAL, PRO_STATUS, PRO_SUBSTITUICAOT' +
        'RIB, '
      '  PRO_TABPRECO1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, '
      
        '  PRO_TABPRECO5, PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, PRO_TIPOI' +
        'SS, '
      '  PRO_TIPOITEM, PRO_TRIBUTO, PRO_TROCA, PRO_UNIDADE, PRO_USUARIO'
      'FROM PRODUTOS'
      'WHERE PRO_CODIGO = :OLD_PRO_CODIGO')
    Left = 256
    Top = 344
  end
  object TBProdutosQtde: TFDQuery
    MasterSource = DSProdutos
    MasterFields = 'PRO_CODIGO'
    Connection = FDConnection1
    Transaction = TRProdutosQtde
    UpdateObject = UPProdutosQtde
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
    Left = 288
    Top = 296
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
      Size = 50
    end
  end
  object TRProdutosQtde: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 288
    Top = 392
  end
  object UPProdutosQtde: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PRODUTOSQTDE'
      '(PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE)'
      
        'VALUES (:NEW_PRQ_ALMOXARIFADO, :NEW_PRQ_PRODUTO, :NEW_PRQ_QUANTI' +
        'DADE)'
      'RETURNING PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE')
    ModifySQL.Strings = (
      'UPDATE PRODUTOSQTDE'
      
        'SET PRQ_ALMOXARIFADO = :NEW_PRQ_ALMOXARIFADO, PRQ_PRODUTO = :NEW' +
        '_PRQ_PRODUTO, '
      '  PRQ_QUANTIDADE = :NEW_PRQ_QUANTIDADE'
      
        'WHERE PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO AND PRQ_PRODUTO =' +
        ' :OLD_PRQ_PRODUTO'
      'RETURNING PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE')
    DeleteSQL.Strings = (
      'DELETE FROM PRODUTOSQTDE'
      
        'WHERE PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO AND PRQ_PRODUTO =' +
        ' :OLD_PRQ_PRODUTO')
    FetchRowSQL.Strings = (
      'SELECT PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE'
      'FROM PRODUTOSQTDE'
      
        'WHERE PRQ_ALMOXARIFADO = :OLD_PRQ_ALMOXARIFADO AND PRQ_PRODUTO =' +
        ' :OLD_PRQ_PRODUTO')
    Left = 288
    Top = 344
  end
  object TBReceber: TFDQuery
    Connection = FDConnection1
    Transaction = TRReceber
    UpdateObject = UPReceber
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
    Left = 320
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
      Size = 50
    end
    object TBReceberCLI_CEPCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CEPCOB'
      Origin = 'CLI_CEPCOB'
      ProviderFlags = []
      Size = 10
    end
    object TBReceberCLI_CIDADECOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECOB'
      Origin = 'CLI_CIDADECOB'
      ProviderFlags = []
      Size = 50
    end
    object TBReceberCLI_CIDADECODIGOCOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = 'CLI_CIDADECODIGOCOB'
      ProviderFlags = []
    end
    object TBReceberCLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
    end
    object TBReceberCLI_CNPJCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNPJCOB'
      Origin = 'CLI_CNPJCOB'
      ProviderFlags = []
    end
    object TBReceberCLI_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      ProviderFlags = []
    end
    object TBReceberCLI_ENDERECOCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENDERECOCOB'
      Origin = 'CLI_ENDERECOCOB'
      ProviderFlags = []
      Size = 100
    end
    object TBReceberCLI_ESTADOCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCOB'
      Origin = 'CLI_ESTADOCOB'
      ProviderFlags = []
      Size = 2
    end
    object TBReceberCLI_ESTADOCODIGOCOB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = 'CLI_ESTADOCODIGOCOB'
      ProviderFlags = []
    end
    object TBReceberCLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBReceberCLI_NUMEROCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NUMEROCOB'
      Origin = 'CLI_NUMEROCOB'
      ProviderFlags = []
      Size = 15
    end
    object TBReceberCLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      Size = 1
    end
    object TBReceberCON_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CON_CODIGO'
      Origin = 'CON_CODIGO'
      ProviderFlags = []
    end
    object TBReceberCON_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CON_NOME'
      Origin = 'CON_NOME'
      ProviderFlags = []
      Size = 80
    end
    object TBReceberCON_SALDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CON_SALDO'
      Origin = 'CON_SALDO'
      ProviderFlags = []
      Precision = 18
    end
    object TBReceberREC_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REC_CODIGO'
      Origin = 'REC_CODIGO'
      ProviderFlags = []
    end
    object TBReceberREC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object TBReceberVEN_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = []
    end
    object TBReceberVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      Size = 80
    end
  end
  object TRReceber: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 320
    Top = 392
  end
  object UPReceber: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO RECEBER'
      '(REE_ACRESCIMOPORC, REE_ACRESCIMOPORCPAGO, REE_ACRESCIMOVALOR, '
      '  REE_ACRESCIMOVALORPAGO, REE_BAIXADOPOR, REE_BOLETO, '
      '  REE_CLIENTE, REE_CODIGO, REE_CONTA, REE_DESCPORC, '
      '  REE_DESCPORCVENCIMENTO, REE_DESCRICAO, REE_DESCVALOR, '
      '  REE_DIASATRASO, REE_DIASPRAZO, REE_DTATUALIZACAO, '
      '  REE_DTCADASTRO, REE_DTEMISSAO, REE_DTJUROSAPOS, '
      '  REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_HRATUALIZACAO, '
      '  REE_HRCADASTRO, REE_JUROSPAGO, REE_MULTAPAGO, '
      '  REE_NOVOCODIGO, REE_NUMDOCTO, REE_OBSERVACOES, '
      '  REE_PARCELANUM, REE_PARCELAQTDE, REE_PORCJUROS, '
      '  REE_RECEITA, REE_STATUS, REE_TIPOBAIXA, REE_TIPODOCTO, '
      '  REE_USUARIO, REE_VALOR, REE_VALORACESSORIAS, '
      '  REE_VALORJUROS, REE_VALORMULTA, REE_VALORORIGINAL, '
      '  REE_VALORPAGO, REE_VALORSEMDESCONTO, REE_VENDA, '
      '  REE_VENDEDOR)'
      
        'VALUES (:NEW_REE_ACRESCIMOPORC, :NEW_REE_ACRESCIMOPORCPAGO, :NEW' +
        '_REE_ACRESCIMOVALOR, '
      
        '  :NEW_REE_ACRESCIMOVALORPAGO, :NEW_REE_BAIXADOPOR, :NEW_REE_BOL' +
        'ETO, '
      
        '  :NEW_REE_CLIENTE, gen_id(GEN_RECEBER,1), :NEW_REE_CONTA, :NEW_' +
        'REE_DESCPORC, '
      
        '  :NEW_REE_DESCPORCVENCIMENTO, :NEW_REE_DESCRICAO, :NEW_REE_DESC' +
        'VALOR, '
      
        '  :NEW_REE_DIASATRASO, :NEW_REE_DIASPRAZO, :NEW_REE_DTATUALIZACA' +
        'O, '
      
        '  :NEW_REE_DTCADASTRO, :NEW_REE_DTEMISSAO, :NEW_REE_DTJUROSAPOS,' +
        ' '
      
        '  :NEW_REE_DTPAGAMENTO, :NEW_REE_DTVENCIMENTO, :NEW_REE_HRATUALI' +
        'ZACAO, '
      '  :NEW_REE_HRCADASTRO, :NEW_REE_JUROSPAGO, :NEW_REE_MULTAPAGO, '
      '  :NEW_REE_NOVOCODIGO, :NEW_REE_NUMDOCTO, :NEW_REE_OBSERVACOES, '
      
        '  :NEW_REE_PARCELANUM, :NEW_REE_PARCELAQTDE, :NEW_REE_PORCJUROS,' +
        ' '
      
        '  :NEW_REE_RECEITA, :NEW_REE_STATUS, :NEW_REE_TIPOBAIXA, :NEW_RE' +
        'E_TIPODOCTO, '
      '  :NEW_REE_USUARIO, :NEW_REE_VALOR, :NEW_REE_VALORACESSORIAS, '
      
        '  :NEW_REE_VALORJUROS, :NEW_REE_VALORMULTA, :NEW_REE_VALORORIGIN' +
        'AL, '
      
        '  :NEW_REE_VALORPAGO, :NEW_REE_VALORSEMDESCONTO, :NEW_REE_VENDA,' +
        ' '
      '  :NEW_REE_VENDEDOR)'
      
        'RETURNING REE_ACRESCIMOPORC, REE_ACRESCIMOPORCPAGO, REE_ACRESCIM' +
        'OVALOR, REE_ACRESCIMOVALORPAGO, REE_BAIXADOPOR, REE_BOLETO, REE_' +
        'CLIENTE, REE_CODIGO, REE_CONTA, REE_DESCPORC, REE_DESCPORCVENCIM' +
        'ENTO, REE_DESCRICAO, REE_DESCVALOR, REE_DIASATRASO, REE_DIASPRAZ' +
        'O, REE_DTATUALIZACAO, REE_DTCADASTRO, REE_DTEMISSAO, REE_DTJUROS' +
        'APOS, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_HRATUALIZACAO, REE_' +
        'HRCADASTRO, REE_JUROSPAGO, REE_MULTAPAGO, REE_NOVOCODIGO, REE_NU' +
        'MDOCTO, REE_OBSERVACOES, REE_PARCELANUM, REE_PARCELAQTDE, REE_PO' +
        'RCJUROS, REE_RECEITA, REE_STATUS, REE_TIPOBAIXA, REE_TIPODOCTO, ' +
        'REE_USUARIO, REE_VALOR, REE_VALORACESSORIAS, REE_VALORJUROS, REE' +
        '_VALORMULTA, REE_VALORORIGINAL, REE_VALORPAGO, REE_VALORSEMDESCO' +
        'NTO, REE_VENDA, REE_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE RECEBER'
      
        'SET REE_ACRESCIMOPORC = :NEW_REE_ACRESCIMOPORC, REE_ACRESCIMOPOR' +
        'CPAGO = :NEW_REE_ACRESCIMOPORCPAGO, '
      
        '  REE_ACRESCIMOVALOR = :NEW_REE_ACRESCIMOVALOR, REE_ACRESCIMOVAL' +
        'ORPAGO = :NEW_REE_ACRESCIMOVALORPAGO, '
      
        '  REE_BAIXADOPOR = :NEW_REE_BAIXADOPOR, REE_BOLETO = :NEW_REE_BO' +
        'LETO, '
      '  REE_CLIENTE = :NEW_REE_CLIENTE, REE_CODIGO = :NEW_REE_CODIGO, '
      '  REE_CONTA = :NEW_REE_CONTA, REE_DESCPORC = :NEW_REE_DESCPORC, '
      
        '  REE_DESCPORCVENCIMENTO = :NEW_REE_DESCPORCVENCIMENTO, REE_DESC' +
        'RICAO = :NEW_REE_DESCRICAO, '
      
        '  REE_DESCVALOR = :NEW_REE_DESCVALOR, REE_DIASATRASO = :NEW_REE_' +
        'DIASATRASO, '
      
        '  REE_DIASPRAZO = :NEW_REE_DIASPRAZO, REE_DTATUALIZACAO = :NEW_R' +
        'EE_DTATUALIZACAO, '
      
        '  REE_DTCADASTRO = :NEW_REE_DTCADASTRO, REE_DTEMISSAO = :NEW_REE' +
        '_DTEMISSAO, '
      
        '  REE_DTJUROSAPOS = :NEW_REE_DTJUROSAPOS, REE_DTPAGAMENTO = :NEW' +
        '_REE_DTPAGAMENTO, '
      
        '  REE_DTVENCIMENTO = :NEW_REE_DTVENCIMENTO, REE_HRATUALIZACAO = ' +
        ':NEW_REE_HRATUALIZACAO, '
      
        '  REE_HRCADASTRO = :NEW_REE_HRCADASTRO, REE_JUROSPAGO = :NEW_REE' +
        '_JUROSPAGO, '
      
        '  REE_MULTAPAGO = :NEW_REE_MULTAPAGO, REE_NOVOCODIGO = :NEW_REE_' +
        'NOVOCODIGO, '
      
        '  REE_NUMDOCTO = :NEW_REE_NUMDOCTO, REE_OBSERVACOES = :NEW_REE_O' +
        'BSERVACOES, '
      
        '  REE_PARCELANUM = :NEW_REE_PARCELANUM, REE_PARCELAQTDE = :NEW_R' +
        'EE_PARCELAQTDE, '
      
        '  REE_PORCJUROS = :NEW_REE_PORCJUROS, REE_RECEITA = :NEW_REE_REC' +
        'EITA, '
      
        '  REE_STATUS = :NEW_REE_STATUS, REE_TIPOBAIXA = :NEW_REE_TIPOBAI' +
        'XA, '
      
        '  REE_TIPODOCTO = :NEW_REE_TIPODOCTO, REE_USUARIO = :NEW_REE_USU' +
        'ARIO, '
      
        '  REE_VALOR = :NEW_REE_VALOR, REE_VALORACESSORIAS = :NEW_REE_VAL' +
        'ORACESSORIAS, '
      
        '  REE_VALORJUROS = :NEW_REE_VALORJUROS, REE_VALORMULTA = :NEW_RE' +
        'E_VALORMULTA, '
      
        '  REE_VALORORIGINAL = :NEW_REE_VALORORIGINAL, REE_VALORPAGO = :N' +
        'EW_REE_VALORPAGO, '
      
        '  REE_VALORSEMDESCONTO = :NEW_REE_VALORSEMDESCONTO, REE_VENDA = ' +
        ':NEW_REE_VENDA, '
      '  REE_VENDEDOR = :NEW_REE_VENDEDOR'
      'WHERE REE_CODIGO = :OLD_REE_CODIGO'
      
        'RETURNING REE_ACRESCIMOPORC, REE_ACRESCIMOPORCPAGO, REE_ACRESCIM' +
        'OVALOR, REE_ACRESCIMOVALORPAGO, REE_BAIXADOPOR, REE_BOLETO, REE_' +
        'CLIENTE, REE_CODIGO, REE_CONTA, REE_DESCPORC, REE_DESCPORCVENCIM' +
        'ENTO, REE_DESCRICAO, REE_DESCVALOR, REE_DIASATRASO, REE_DIASPRAZ' +
        'O, REE_DTATUALIZACAO, REE_DTCADASTRO, REE_DTEMISSAO, REE_DTJUROS' +
        'APOS, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_HRATUALIZACAO, REE_' +
        'HRCADASTRO, REE_JUROSPAGO, REE_MULTAPAGO, REE_NOVOCODIGO, REE_NU' +
        'MDOCTO, REE_OBSERVACOES, REE_PARCELANUM, REE_PARCELAQTDE, REE_PO' +
        'RCJUROS, REE_RECEITA, REE_STATUS, REE_TIPOBAIXA, REE_TIPODOCTO, ' +
        'REE_USUARIO, REE_VALOR, REE_VALORACESSORIAS, REE_VALORJUROS, REE' +
        '_VALORMULTA, REE_VALORORIGINAL, REE_VALORPAGO, REE_VALORSEMDESCO' +
        'NTO, REE_VENDA, REE_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM RECEBER'
      'WHERE REE_CODIGO = :OLD_REE_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT REE_ACRESCIMOPORC, REE_ACRESCIMOPORCPAGO, REE_ACRESCIMOVA' +
        'LOR, '
      
        '  REE_ACRESCIMOVALORPAGO, REE_BAIXADOPOR, REE_BOLETO, REE_CLIENT' +
        'E, '
      '  REE_CODIGO, REE_CONTA, REE_DESCPORC, REE_DESCPORCVENCIMENTO, '
      '  REE_DESCRICAO, REE_DESCVALOR, REE_DIASATRASO, REE_DIASPRAZO, '
      
        '  REE_DTATUALIZACAO, REE_DTCADASTRO, REE_DTEMISSAO, REE_DTJUROSA' +
        'POS, '
      
        '  REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_HRATUALIZACAO, REE_HRCA' +
        'DASTRO, '
      '  REE_JUROSPAGO, REE_MULTAPAGO, REE_NOVOCODIGO, REE_NUMDOCTO, '
      
        '  REE_OBSERVACOES, REE_PARCELANUM, REE_PARCELAQTDE, REE_PORCJURO' +
        'S, '
      
        '  REE_RECEITA, REE_STATUS, REE_TIPOBAIXA, REE_TIPODOCTO, REE_USU' +
        'ARIO, '
      
        '  REE_VALOR, REE_VALORACESSORIAS, REE_VALORJUROS, REE_VALORMULTA' +
        ', '
      '  REE_VALORORIGINAL, REE_VALORPAGO, REE_VALORSEMDESCONTO, '
      '  REE_VENDA, REE_VENDEDOR'
      'FROM RECEBER'
      'WHERE REE_CODIGO = :OLD_REE_CODIGO')
    Left = 320
    Top = 344
  end
  object TBReceitas: TFDQuery
    Connection = FDConnection1
    Transaction = TRReceitas
    UpdateObject = UPReceitas
    SQL.Strings = (
      'select '
      'REC_AGRUPADOR,'
      'REC_CODIGO,'
      'REC_DESCRICAO,'
      'REC_DTATUALIZACAO,'
      'REC_DTCADASTRO,'
      'REC_HRATUALIZACAO,'
      'REC_HRCADASTRO,'
      'REC_USUARIO,'
      'AGR_DESCRICAO '
      'from RECEITAS '
      'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO'
      'where REC_CODIGO=:codigo '
      'order by REC_CODIGO'
      '')
    Left = 352
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBReceitasREC_AGRUPADOR: TIntegerField
      FieldName = 'REC_AGRUPADOR'
      Origin = 'REC_AGRUPADOR'
      Required = True
    end
    object TBReceitasREC_CODIGO: TIntegerField
      FieldName = 'REC_CODIGO'
      Origin = 'REC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBReceitasREC_DESCRICAO: TStringField
      FieldName = 'REC_DESCRICAO'
      Origin = 'REC_DESCRICAO'
      Size = 50
    end
    object TBReceitasREC_DTATUALIZACAO: TDateField
      FieldName = 'REC_DTATUALIZACAO'
      Origin = 'REC_DTATUALIZACAO'
    end
    object TBReceitasREC_DTCADASTRO: TDateField
      FieldName = 'REC_DTCADASTRO'
      Origin = 'REC_DTCADASTRO'
    end
    object TBReceitasREC_HRATUALIZACAO: TTimeField
      FieldName = 'REC_HRATUALIZACAO'
      Origin = 'REC_HRATUALIZACAO'
    end
    object TBReceitasREC_HRCADASTRO: TTimeField
      FieldName = 'REC_HRCADASTRO'
      Origin = 'REC_HRCADASTRO'
    end
    object TBReceitasREC_USUARIO: TStringField
      FieldName = 'REC_USUARIO'
      Origin = 'REC_USUARIO'
    end
    object TBReceitasAGR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGR_DESCRICAO'
      Origin = 'AGR_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object TRReceitas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 352
    Top = 392
  end
  object UPReceitas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO RECEITAS'
      '(REC_AGRUPADOR, REC_CODIGO, REC_DESCRICAO, REC_DTATUALIZACAO, '
      '  REC_DTCADASTRO, REC_HRATUALIZACAO, REC_HRCADASTRO, '
      '  REC_USUARIO)'
      
        'VALUES (:NEW_REC_AGRUPADOR, gen_id(GEN_RECEITAS,1), :NEW_REC_DES' +
        'CRICAO, :NEW_REC_DTATUALIZACAO, '
      
        '  :NEW_REC_DTCADASTRO, :NEW_REC_HRATUALIZACAO, :NEW_REC_HRCADAST' +
        'RO, '
      '  :NEW_REC_USUARIO)'
      
        'RETURNING REC_AGRUPADOR, REC_CODIGO, REC_DESCRICAO, REC_DTATUALI' +
        'ZACAO, REC_DTCADASTRO, REC_HRATUALIZACAO, REC_HRCADASTRO, REC_US' +
        'UARIO')
    ModifySQL.Strings = (
      'UPDATE RECEITAS'
      
        'SET REC_AGRUPADOR = :NEW_REC_AGRUPADOR, REC_CODIGO = :NEW_REC_CO' +
        'DIGO, '
      
        '  REC_DESCRICAO = :NEW_REC_DESCRICAO, REC_DTATUALIZACAO = :NEW_R' +
        'EC_DTATUALIZACAO, '
      
        '  REC_DTCADASTRO = :NEW_REC_DTCADASTRO, REC_HRATUALIZACAO = :NEW' +
        '_REC_HRATUALIZACAO, '
      
        '  REC_HRCADASTRO = :NEW_REC_HRCADASTRO, REC_USUARIO = :NEW_REC_U' +
        'SUARIO'
      'WHERE REC_CODIGO = :OLD_REC_CODIGO'
      
        'RETURNING REC_AGRUPADOR, REC_CODIGO, REC_DESCRICAO, REC_DTATUALI' +
        'ZACAO, REC_DTCADASTRO, REC_HRATUALIZACAO, REC_HRCADASTRO, REC_US' +
        'UARIO')
    DeleteSQL.Strings = (
      'DELETE FROM RECEITAS'
      'WHERE REC_CODIGO = :OLD_REC_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT REC_AGRUPADOR, REC_CODIGO, REC_DESCRICAO, REC_DTATUALIZAC' +
        'AO, '
      '  REC_DTCADASTRO, REC_HRATUALIZACAO, REC_HRCADASTRO, REC_USUARIO'
      'FROM RECEITAS'
      'WHERE REC_CODIGO = :OLD_REC_CODIGO')
    Left = 352
    Top = 344
  end
  object TBRecibos: TFDQuery
    Connection = FDConnection1
    Transaction = TRRecibos
    UpdateObject = UPRecibos
    SQL.Strings = (
      'select * from RECIBOS'
      'where RCB_CODIGO=:codigo'
      'order by RCB_CODIGO'
      '')
    Left = 384
    Top = 296
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
      Precision = 18
    end
    object TBRecibosRCB_VALOREXTENSO: TStringField
      FieldName = 'RCB_VALOREXTENSO'
      Origin = 'RCB_VALOREXTENSO'
      Size = 120
    end
  end
  object TRRecibos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 384
    Top = 392
  end
  object UPRecibos: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 384
    Top = 344
  end
  object TBTabPreco: TFDQuery
    Connection = FDConnection1
    Transaction = TRTabPreco
    UpdateObject = UPTabPreco
    SQL.Strings = (
      'select * from TABPRECO '
      'where TAB_CODIGO=:codigo'
      'order by TAB_CODIGO'
      '')
    Left = 416
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBTabPrecoTAB_CODIGO: TIntegerField
      FieldName = 'TAB_CODIGO'
      Origin = 'TAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTabPrecoTAB_DESCRICAO1: TStringField
      FieldName = 'TAB_DESCRICAO1'
      Origin = 'TAB_DESCRICAO1'
      Size = 50
    end
    object TBTabPrecoTAB_DESCRICAO2: TStringField
      FieldName = 'TAB_DESCRICAO2'
      Origin = 'TAB_DESCRICAO2'
      Size = 50
    end
    object TBTabPrecoTAB_DESCRICAO3: TStringField
      FieldName = 'TAB_DESCRICAO3'
      Origin = 'TAB_DESCRICAO3'
      Size = 50
    end
    object TBTabPrecoTAB_DESCRICAO4: TStringField
      FieldName = 'TAB_DESCRICAO4'
      Origin = 'TAB_DESCRICAO4'
      Size = 50
    end
    object TBTabPrecoTAB_DESCRICAO5: TStringField
      FieldName = 'TAB_DESCRICAO5'
      Origin = 'TAB_DESCRICAO5'
      Size = 50
    end
    object TBTabPrecoTAB_DESCRICAO6: TStringField
      FieldName = 'TAB_DESCRICAO6'
      Origin = 'TAB_DESCRICAO6'
      Size = 50
    end
    object TBTabPrecoTAB_DTATUALIZACAO: TDateField
      FieldName = 'TAB_DTATUALIZACAO'
      Origin = 'TAB_DTATUALIZACAO'
    end
    object TBTabPrecoTAB_HRATUALIZACAO: TTimeField
      FieldName = 'TAB_HRATUALIZACAO'
      Origin = 'TAB_HRATUALIZACAO'
    end
    object TBTabPrecoTAB_MARGEM1: TFMTBCDField
      FieldName = 'TAB_MARGEM1'
      Origin = 'TAB_MARGEM1'
      Precision = 18
    end
    object TBTabPrecoTAB_MARGEM2: TFMTBCDField
      FieldName = 'TAB_MARGEM2'
      Origin = 'TAB_MARGEM2'
      Precision = 18
    end
    object TBTabPrecoTAB_MARGEM3: TFMTBCDField
      FieldName = 'TAB_MARGEM3'
      Origin = 'TAB_MARGEM3'
      Precision = 18
    end
    object TBTabPrecoTAB_MARGEM4: TFMTBCDField
      FieldName = 'TAB_MARGEM4'
      Origin = 'TAB_MARGEM4'
      Precision = 18
    end
    object TBTabPrecoTAB_MARGEM5: TFMTBCDField
      FieldName = 'TAB_MARGEM5'
      Origin = 'TAB_MARGEM5'
      Precision = 18
    end
    object TBTabPrecoTAB_MARGEM6: TFMTBCDField
      FieldName = 'TAB_MARGEM6'
      Origin = 'TAB_MARGEM6'
      Precision = 18
    end
    object TBTabPrecoTAB_USUARIO: TStringField
      FieldName = 'TAB_USUARIO'
      Origin = 'TAB_USUARIO'
    end
  end
  object TRTabPreco: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 416
    Top = 392
  end
  object UPTabPreco: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO TABPRECO'
      '(TAB_CODIGO, TAB_DESCRICAO1, TAB_DESCRICAO2, TAB_DESCRICAO3, '
      '  TAB_DESCRICAO4, TAB_DESCRICAO5, TAB_DESCRICAO6, '
      '  TAB_DTATUALIZACAO, TAB_HRATUALIZACAO, TAB_MARGEM1, '
      '  TAB_MARGEM2, TAB_MARGEM3, TAB_MARGEM4, TAB_MARGEM5, '
      '  TAB_MARGEM6, TAB_USUARIO)'
      
        'VALUES (:NEW_TAB_CODIGO, :NEW_TAB_DESCRICAO1, :NEW_TAB_DESCRICAO' +
        '2, :NEW_TAB_DESCRICAO3, '
      
        '  :NEW_TAB_DESCRICAO4, :NEW_TAB_DESCRICAO5, :NEW_TAB_DESCRICAO6,' +
        ' '
      
        '  :NEW_TAB_DTATUALIZACAO, :NEW_TAB_HRATUALIZACAO, :NEW_TAB_MARGE' +
        'M1, '
      
        '  :NEW_TAB_MARGEM2, :NEW_TAB_MARGEM3, :NEW_TAB_MARGEM4, :NEW_TAB' +
        '_MARGEM5, '
      '  :NEW_TAB_MARGEM6, :NEW_TAB_USUARIO)'
      
        'RETURNING TAB_CODIGO, TAB_DESCRICAO1, TAB_DESCRICAO2, TAB_DESCRI' +
        'CAO3, TAB_DESCRICAO4, TAB_DESCRICAO5, TAB_DESCRICAO6, TAB_DTATUA' +
        'LIZACAO, TAB_HRATUALIZACAO, TAB_MARGEM1, TAB_MARGEM2, TAB_MARGEM' +
        '3, TAB_MARGEM4, TAB_MARGEM5, TAB_MARGEM6, TAB_USUARIO')
    ModifySQL.Strings = (
      'UPDATE TABPRECO'
      
        'SET TAB_CODIGO = :NEW_TAB_CODIGO, TAB_DESCRICAO1 = :NEW_TAB_DESC' +
        'RICAO1, '
      
        '  TAB_DESCRICAO2 = :NEW_TAB_DESCRICAO2, TAB_DESCRICAO3 = :NEW_TA' +
        'B_DESCRICAO3, '
      
        '  TAB_DESCRICAO4 = :NEW_TAB_DESCRICAO4, TAB_DESCRICAO5 = :NEW_TA' +
        'B_DESCRICAO5, '
      
        '  TAB_DESCRICAO6 = :NEW_TAB_DESCRICAO6, TAB_DTATUALIZACAO = :NEW' +
        '_TAB_DTATUALIZACAO, '
      
        '  TAB_HRATUALIZACAO = :NEW_TAB_HRATUALIZACAO, TAB_MARGEM1 = :NEW' +
        '_TAB_MARGEM1, '
      
        '  TAB_MARGEM2 = :NEW_TAB_MARGEM2, TAB_MARGEM3 = :NEW_TAB_MARGEM3' +
        ', '
      
        '  TAB_MARGEM4 = :NEW_TAB_MARGEM4, TAB_MARGEM5 = :NEW_TAB_MARGEM5' +
        ', '
      '  TAB_MARGEM6 = :NEW_TAB_MARGEM6, TAB_USUARIO = :NEW_TAB_USUARIO'
      'WHERE TAB_CODIGO = :OLD_TAB_CODIGO'
      
        'RETURNING TAB_CODIGO, TAB_DESCRICAO1, TAB_DESCRICAO2, TAB_DESCRI' +
        'CAO3, TAB_DESCRICAO4, TAB_DESCRICAO5, TAB_DESCRICAO6, TAB_DTATUA' +
        'LIZACAO, TAB_HRATUALIZACAO, TAB_MARGEM1, TAB_MARGEM2, TAB_MARGEM' +
        '3, TAB_MARGEM4, TAB_MARGEM5, TAB_MARGEM6, TAB_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM TABPRECO'
      'WHERE TAB_CODIGO = :OLD_TAB_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT TAB_CODIGO, TAB_DESCRICAO1, TAB_DESCRICAO2, TAB_DESCRICAO' +
        '3, '
      
        '  TAB_DESCRICAO4, TAB_DESCRICAO5, TAB_DESCRICAO6, TAB_DTATUALIZA' +
        'CAO, '
      '  TAB_HRATUALIZACAO, TAB_MARGEM1, TAB_MARGEM2, TAB_MARGEM3, '
      '  TAB_MARGEM4, TAB_MARGEM5, TAB_MARGEM6, TAB_USUARIO'
      'FROM TABPRECO'
      'WHERE TAB_CODIGO = :OLD_TAB_CODIGO')
    Left = 416
    Top = 344
  end
  object TBTaxas: TFDQuery
    Connection = FDConnection1
    Transaction = TRTaxas
    UpdateObject = UPTaxas
    SQL.Strings = (
      'select * from TAXAS '
      'where TAX_CODIGO=:codigo '
      'order by TAX_CODIGO'
      '')
    Left = 448
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBTaxasTAX_CODIGO: TIntegerField
      FieldName = 'TAX_CODIGO'
      Origin = 'TAX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBTaxasTAX_DESCRICAO: TStringField
      FieldName = 'TAX_DESCRICAO'
      Origin = 'TAX_DESCRICAO'
      Size = 50
    end
    object TBTaxasTAX_DTATUALIZACAO: TDateField
      FieldName = 'TAX_DTATUALIZACAO'
      Origin = 'TAX_DTATUALIZACAO'
    end
    object TBTaxasTAX_DTCADASTRO: TDateField
      FieldName = 'TAX_DTCADASTRO'
      Origin = 'TAX_DTCADASTRO'
    end
    object TBTaxasTAX_HRATUALIZACAO: TTimeField
      FieldName = 'TAX_HRATUALIZACAO'
      Origin = 'TAX_HRATUALIZACAO'
    end
    object TBTaxasTAX_HRCADASTRO: TTimeField
      FieldName = 'TAX_HRCADASTRO'
      Origin = 'TAX_HRCADASTRO'
    end
    object TBTaxasTAX_STATUS: TStringField
      FieldName = 'TAX_STATUS'
      Origin = 'TAX_STATUS'
      Size = 1
    end
    object TBTaxasTAX_TIPO: TStringField
      FieldName = 'TAX_TIPO'
      Origin = 'TAX_TIPO'
      Size = 1
    end
    object TBTaxasTAX_USUARIO: TStringField
      FieldName = 'TAX_USUARIO'
      Origin = 'TAX_USUARIO'
    end
    object TBTaxasTAX_VALOR: TFMTBCDField
      FieldName = 'TAX_VALOR'
      Origin = 'TAX_VALOR'
      Precision = 18
    end
  end
  object TRTaxas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 448
    Top = 392
  end
  object UPTaxas: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO TAXAS'
      '(TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, '
      '  TAX_DTCADASTRO, TAX_HRATUALIZACAO, TAX_HRCADASTRO, '
      '  TAX_STATUS, TAX_TIPO, TAX_USUARIO, TAX_VALOR)'
      
        'VALUES (gen_id(GEN_TAXAS,1), :NEW_TAX_DESCRICAO, :NEW_TAX_DTATUA' +
        'LIZACAO, '
      
        '  :NEW_TAX_DTCADASTRO, :NEW_TAX_HRATUALIZACAO, :NEW_TAX_HRCADAST' +
        'RO, '
      
        '  :NEW_TAX_STATUS, :NEW_TAX_TIPO, :NEW_TAX_USUARIO, :NEW_TAX_VAL' +
        'OR)'
      
        'RETURNING TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, TAX_DTCA' +
        'DASTRO, TAX_HRATUALIZACAO, TAX_HRCADASTRO, TAX_STATUS, TAX_TIPO,' +
        ' TAX_USUARIO, TAX_VALOR')
    ModifySQL.Strings = (
      'UPDATE TAXAS'
      
        'SET TAX_CODIGO = :NEW_TAX_CODIGO, TAX_DESCRICAO = :NEW_TAX_DESCR' +
        'ICAO, '
      
        '  TAX_DTATUALIZACAO = :NEW_TAX_DTATUALIZACAO, TAX_DTCADASTRO = :' +
        'NEW_TAX_DTCADASTRO, '
      
        '  TAX_HRATUALIZACAO = :NEW_TAX_HRATUALIZACAO, TAX_HRCADASTRO = :' +
        'NEW_TAX_HRCADASTRO, '
      '  TAX_STATUS = :NEW_TAX_STATUS, TAX_TIPO = :NEW_TAX_TIPO, '
      '  TAX_USUARIO = :NEW_TAX_USUARIO, TAX_VALOR = :NEW_TAX_VALOR'
      'WHERE TAX_CODIGO = :OLD_TAX_CODIGO'
      
        'RETURNING TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, TAX_DTCA' +
        'DASTRO, TAX_HRATUALIZACAO, TAX_HRCADASTRO, TAX_STATUS, TAX_TIPO,' +
        ' TAX_USUARIO, TAX_VALOR')
    DeleteSQL.Strings = (
      'DELETE FROM TAXAS'
      'WHERE TAX_CODIGO = :OLD_TAX_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, TAX_DTCADAS' +
        'TRO, '
      '  TAX_HRATUALIZACAO, TAX_HRCADASTRO, TAX_STATUS, TAX_TIPO, '
      '  TAX_USUARIO, TAX_VALOR'
      'FROM TAXAS'
      'WHERE TAX_CODIGO = :OLD_TAX_CODIGO')
    Left = 448
    Top = 344
  end
  object TBUnidades: TFDQuery
    Connection = FDConnection1
    Transaction = TRUnidades
    UpdateObject = UPUnidades
    SQL.Strings = (
      'select * from UNIDADES '
      'where UNI_CODIGO=:codigo '
      'order by UNI_CODIGO'
      '')
    Left = 480
    Top = 296
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
  object TRUnidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 480
    Top = 392
  end
  object UPUnidades: TFDUpdateSQL
    Connection = FDConnection1
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
    Left = 480
    Top = 344
  end
  object TBUsuarios: TFDQuery
    Connection = FDConnection1
    Transaction = TRUsuarios
    UpdateObject = UPUsuarios
    SQL.Strings = (
      'select * from USUARIOS order by USU_NOME'
      '')
    Left = 512
    Top = 296
    object TBUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 512
    Top = 392
  end
  object UPUsuarios: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS'
      '(USU_CODIGO, USU_DTATUALIZACAO, USU_DTCADASTRO, '
      '  USU_DTLOGIN, USU_EMAIL, USU_HRATUALIZACAO, '
      '  USU_HRCADASTRO, USU_HRLOGIN, USU_LOGADO, '
      '  USU_LOGIN, USU_NOME, USU_PASSWORD, USU_SENHAEXPIRADA, '
      '  USU_STATUS, USU_TEMA, USU_VENDEDOR)'
      
        'VALUES (gen_id(GEN_USUARIOS,1), :NEW_USU_DTATUALIZACAO, :NEW_USU' +
        '_DTCADASTRO, '
      '  :NEW_USU_DTLOGIN, :NEW_USU_EMAIL, :NEW_USU_HRATUALIZACAO, '
      '  :NEW_USU_HRCADASTRO, :NEW_USU_HRLOGIN, :NEW_USU_LOGADO, '
      
        '  :NEW_USU_LOGIN, :NEW_USU_NOME, :NEW_USU_PASSWORD, :NEW_USU_SEN' +
        'HAEXPIRADA, '
      '  :NEW_USU_STATUS, :NEW_USU_TEMA, :NEW_USU_VENDEDOR)'
      
        'RETURNING USU_CODIGO, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_DTL' +
        'OGIN, USU_EMAIL, USU_HRATUALIZACAO, USU_HRCADASTRO, USU_HRLOGIN,' +
        ' USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU_SENHAEXPIRAD' +
        'A, USU_STATUS, USU_TEMA, USU_VENDEDOR')
    ModifySQL.Strings = (
      'UPDATE USUARIOS'
      
        'SET USU_CODIGO = :NEW_USU_CODIGO, USU_DTATUALIZACAO = :NEW_USU_D' +
        'TATUALIZACAO, '
      
        '  USU_DTCADASTRO = :NEW_USU_DTCADASTRO, USU_DTLOGIN = :NEW_USU_D' +
        'TLOGIN, '
      
        '  USU_EMAIL = :NEW_USU_EMAIL, USU_HRATUALIZACAO = :NEW_USU_HRATU' +
        'ALIZACAO, '
      
        '  USU_HRCADASTRO = :NEW_USU_HRCADASTRO, USU_HRLOGIN = :NEW_USU_H' +
        'RLOGIN, '
      '  USU_LOGADO = :NEW_USU_LOGADO, USU_LOGIN = :NEW_USU_LOGIN, '
      '  USU_NOME = :NEW_USU_NOME, USU_PASSWORD = :NEW_USU_PASSWORD, '
      
        '  USU_SENHAEXPIRADA = :NEW_USU_SENHAEXPIRADA, USU_STATUS = :NEW_' +
        'USU_STATUS, '
      '  USU_TEMA = :NEW_USU_TEMA, USU_VENDEDOR = :NEW_USU_VENDEDOR'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO'
      
        'RETURNING USU_CODIGO, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_DTL' +
        'OGIN, USU_EMAIL, USU_HRATUALIZACAO, USU_HRCADASTRO, USU_HRLOGIN,' +
        ' USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU_SENHAEXPIRAD' +
        'A, USU_STATUS, USU_TEMA, USU_VENDEDOR')
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT USU_CODIGO, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_DTLOGI' +
        'N, '
      '  USU_EMAIL, USU_HRATUALIZACAO, USU_HRCADASTRO, USU_HRLOGIN, '
      
        '  USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU_SENHAEXPIRA' +
        'DA, '
      '  USU_STATUS, USU_TEMA, USU_VENDEDOR'
      'FROM USUARIOS'
      'WHERE USU_CODIGO = :OLD_USU_CODIGO')
    Left = 512
    Top = 344
  end
  object TBVendas: TFDQuery
    AfterInsert = TBVendasAfterInsert
    Connection = FDConnection1
    Transaction = TRVendas
    UpdateObject = UPVendas
    SQL.Strings = (
      'select'
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
    Left = 544
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    Left = 544
    Top = 392
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
    Left = 544
    Top = 344
  end
  object TBVendasItens: TFDQuery
    AfterInsert = TBVendasItensAfterInsert
    BeforePost = TBVendasItensBeforePost
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
      'PRO_CODIGO,'
      'PRO_CODIGOBARRAS,'
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
    Left = 576
    Top = 296
    ParamData = <
      item
        Name = 'VED_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object TBVendasItensVEI_CLASSTRIBIBSCBS: TStringField
      FieldName = 'VEI_CLASSTRIBIBSCBS'
      Origin = 'VEI_CLASSTRIBIBSCBS'
      Size = 15
    end
    object TBVendasItensVEI_CLASSTRIBIS: TStringField
      FieldName = 'VEI_CLASSTRIBIS'
      Origin = 'VEI_CLASSTRIBIS'
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
    object TBVendasItensNAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_DESCRICAO'
      Origin = 'NAT_DESCRICAO'
      ProviderFlags = []
      Size = 120
    end
    object TBVendasItensNAT_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NAT_CODIGO'
      Origin = 'NAT_CODIGO'
      ProviderFlags = []
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
    object TBVendasItensPRO_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object TBVendasItensPRO_CODIGOBARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = 'PRO_CODIGOBARRAS'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
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
  end
  object TRVendasItens: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 576
    Top = 392
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
    Left = 576
    Top = 344
  end
  object TBVendedores: TFDQuery
    Connection = FDConnection1
    Transaction = TRVendedores
    UpdateObject = UPVendedores
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
    Left = 608
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
      Size = 80
    end
  end
  object TRVendedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 608
    Top = 392
  end
  object UPVendedores: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO VENDEDORES'
      '(VEN_ATUALIZAR, VEN_BAIRRO, VEN_CEP, VEN_CIDADE, '
      '  VEN_CIDADECODIGO, VEN_CNPJ, VEN_CODIGO, VEN_COMISSAO, '
      '  VEN_COMISSAOTIPO, VEN_COMPLEMENTO, VEN_CONTATO, '
      '  VEN_COR, VEN_CPF, VEN_DTATUALIZACAO, VEN_DTCADASTRO, '
      '  VEN_DTNASC, VEN_EMAIL, VEN_EMAILCONTA, VEN_ENDERECO, '
      '  VEN_ESTADO, VEN_ESTADOCIVIL, VEN_FONE1, VEN_FONE2, '
      '  VEN_FONE3, VEN_HRATUALIZACAO, VEN_HRCADASTRO, '
      '  VEN_IE, VEN_MOSTRARAGENDA, VEN_NOME, VEN_NUMERO, '
      '  VEN_OBSERVACOES, VEN_REGPROFISSIONAL, VEN_RG, '
      '  VEN_SALARIOBASE, VEN_SALDOATUAL, VEN_SALDOHORAS, '
      '  VEN_SITE, VEN_STATUS, VEN_TIPOPESSOA, VEN_USUARIO)'
      
        'VALUES (:NEW_VEN_ATUALIZAR, :NEW_VEN_BAIRRO, :NEW_VEN_CEP, :NEW_' +
        'VEN_CIDADE, '
      
        '  :NEW_VEN_CIDADECODIGO, :NEW_VEN_CNPJ, gen_id(GEN_VENDEDORES,1)' +
        ', :NEW_VEN_COMISSAO, '
      
        '  :NEW_VEN_COMISSAOTIPO, :NEW_VEN_COMPLEMENTO, :NEW_VEN_CONTATO,' +
        ' '
      
        '  :NEW_VEN_COR, :NEW_VEN_CPF, :NEW_VEN_DTATUALIZACAO, :NEW_VEN_D' +
        'TCADASTRO, '
      
        '  :NEW_VEN_DTNASC, :NEW_VEN_EMAIL, :NEW_VEN_EMAILCONTA, :NEW_VEN' +
        '_ENDERECO, '
      
        '  :NEW_VEN_ESTADO, :NEW_VEN_ESTADOCIVIL, :NEW_VEN_FONE1, :NEW_VE' +
        'N_FONE2, '
      '  :NEW_VEN_FONE3, :NEW_VEN_HRATUALIZACAO, :NEW_VEN_HRCADASTRO, '
      
        '  :NEW_VEN_IE, :NEW_VEN_MOSTRARAGENDA, :NEW_VEN_NOME, :NEW_VEN_N' +
        'UMERO, '
      '  :NEW_VEN_OBSERVACOES, :NEW_VEN_REGPROFISSIONAL, :NEW_VEN_RG, '
      
        '  :NEW_VEN_SALARIOBASE, :NEW_VEN_SALDOATUAL, :NEW_VEN_SALDOHORAS' +
        ', '
      
        '  :NEW_VEN_SITE, :NEW_VEN_STATUS, :NEW_VEN_TIPOPESSOA, :NEW_VEN_' +
        'USUARIO)'
      
        'RETURNING VEN_ATUALIZAR, VEN_BAIRRO, VEN_CEP, VEN_CIDADE, VEN_CI' +
        'DADECODIGO, VEN_CNPJ, VEN_CODIGO, VEN_COMISSAO, VEN_COMISSAOTIPO' +
        ', VEN_COMPLEMENTO, VEN_CONTATO, VEN_COR, VEN_CPF, VEN_DTATUALIZA' +
        'CAO, VEN_DTCADASTRO, VEN_DTNASC, VEN_EMAIL, VEN_EMAILCONTA, VEN_' +
        'ENDERECO, VEN_ESTADO, VEN_ESTADOCIVIL, VEN_FONE1, VEN_FONE2, VEN' +
        '_FONE3, VEN_HRATUALIZACAO, VEN_HRCADASTRO, VEN_IE, VEN_MOSTRARAG' +
        'ENDA, VEN_NOME, VEN_NUMERO, VEN_OBSERVACOES, VEN_REGPROFISSIONAL' +
        ', VEN_RG, VEN_SALARIOBASE, VEN_SALDOATUAL, VEN_SALDOHORAS, VEN_S' +
        'ITE, VEN_STATUS, VEN_TIPOPESSOA, VEN_USUARIO')
    ModifySQL.Strings = (
      'UPDATE VENDEDORES'
      
        'SET VEN_ATUALIZAR = :NEW_VEN_ATUALIZAR, VEN_BAIRRO = :NEW_VEN_BA' +
        'IRRO, '
      
        '  VEN_CEP = :NEW_VEN_CEP, VEN_CIDADE = :NEW_VEN_CIDADE, VEN_CIDA' +
        'DECODIGO = :NEW_VEN_CIDADECODIGO, '
      '  VEN_CNPJ = :NEW_VEN_CNPJ, VEN_CODIGO = :NEW_VEN_CODIGO, '
      
        '  VEN_COMISSAO = :NEW_VEN_COMISSAO, VEN_COMISSAOTIPO = :NEW_VEN_' +
        'COMISSAOTIPO, '
      
        '  VEN_COMPLEMENTO = :NEW_VEN_COMPLEMENTO, VEN_CONTATO = :NEW_VEN' +
        '_CONTATO, '
      
        '  VEN_COR = :NEW_VEN_COR, VEN_CPF = :NEW_VEN_CPF, VEN_DTATUALIZA' +
        'CAO = :NEW_VEN_DTATUALIZACAO, '
      
        '  VEN_DTCADASTRO = :NEW_VEN_DTCADASTRO, VEN_DTNASC = :NEW_VEN_DT' +
        'NASC, '
      
        '  VEN_EMAIL = :NEW_VEN_EMAIL, VEN_EMAILCONTA = :NEW_VEN_EMAILCON' +
        'TA, '
      
        '  VEN_ENDERECO = :NEW_VEN_ENDERECO, VEN_ESTADO = :NEW_VEN_ESTADO' +
        ', '
      
        '  VEN_ESTADOCIVIL = :NEW_VEN_ESTADOCIVIL, VEN_FONE1 = :NEW_VEN_F' +
        'ONE1, '
      '  VEN_FONE2 = :NEW_VEN_FONE2, VEN_FONE3 = :NEW_VEN_FONE3, '
      
        '  VEN_HRATUALIZACAO = :NEW_VEN_HRATUALIZACAO, VEN_HRCADASTRO = :' +
        'NEW_VEN_HRCADASTRO, '
      
        '  VEN_IE = :NEW_VEN_IE, VEN_MOSTRARAGENDA = :NEW_VEN_MOSTRARAGEN' +
        'DA, '
      '  VEN_NOME = :NEW_VEN_NOME, VEN_NUMERO = :NEW_VEN_NUMERO, '
      
        '  VEN_OBSERVACOES = :NEW_VEN_OBSERVACOES, VEN_REGPROFISSIONAL = ' +
        ':NEW_VEN_REGPROFISSIONAL, '
      '  VEN_RG = :NEW_VEN_RG, VEN_SALARIOBASE = :NEW_VEN_SALARIOBASE, '
      
        '  VEN_SALDOATUAL = :NEW_VEN_SALDOATUAL, VEN_SALDOHORAS = :NEW_VE' +
        'N_SALDOHORAS, '
      '  VEN_SITE = :NEW_VEN_SITE, VEN_STATUS = :NEW_VEN_STATUS, '
      
        '  VEN_TIPOPESSOA = :NEW_VEN_TIPOPESSOA, VEN_USUARIO = :NEW_VEN_U' +
        'SUARIO'
      'WHERE VEN_CODIGO = :OLD_VEN_CODIGO'
      
        'RETURNING VEN_ATUALIZAR, VEN_BAIRRO, VEN_CEP, VEN_CIDADE, VEN_CI' +
        'DADECODIGO, VEN_CNPJ, VEN_CODIGO, VEN_COMISSAO, VEN_COMISSAOTIPO' +
        ', VEN_COMPLEMENTO, VEN_CONTATO, VEN_COR, VEN_CPF, VEN_DTATUALIZA' +
        'CAO, VEN_DTCADASTRO, VEN_DTNASC, VEN_EMAIL, VEN_EMAILCONTA, VEN_' +
        'ENDERECO, VEN_ESTADO, VEN_ESTADOCIVIL, VEN_FONE1, VEN_FONE2, VEN' +
        '_FONE3, VEN_HRATUALIZACAO, VEN_HRCADASTRO, VEN_IE, VEN_MOSTRARAG' +
        'ENDA, VEN_NOME, VEN_NUMERO, VEN_OBSERVACOES, VEN_REGPROFISSIONAL' +
        ', VEN_RG, VEN_SALARIOBASE, VEN_SALDOATUAL, VEN_SALDOHORAS, VEN_S' +
        'ITE, VEN_STATUS, VEN_TIPOPESSOA, VEN_USUARIO')
    DeleteSQL.Strings = (
      'DELETE FROM VENDEDORES'
      'WHERE VEN_CODIGO = :OLD_VEN_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT VEN_ATUALIZAR, VEN_BAIRRO, VEN_CEP, VEN_CIDADE, VEN_CIDAD' +
        'ECODIGO, '
      
        '  VEN_CNPJ, VEN_CODIGO, VEN_COMISSAO, VEN_COMISSAOTIPO, VEN_COMP' +
        'LEMENTO, '
      
        '  VEN_CONTATO, VEN_COR, VEN_CPF, VEN_DTATUALIZACAO, VEN_DTCADAST' +
        'RO, '
      
        '  VEN_DTNASC, VEN_EMAIL, VEN_EMAILCONTA, VEN_ENDERECO, VEN_ESTAD' +
        'O, '
      
        '  VEN_ESTADOCIVIL, VEN_FONE1, VEN_FONE2, VEN_FONE3, VEN_HRATUALI' +
        'ZACAO, '
      
        '  VEN_HRCADASTRO, VEN_IE, VEN_MOSTRARAGENDA, VEN_NOME, VEN_NUMER' +
        'O, '
      
        '  VEN_OBSERVACOES, VEN_REGPROFISSIONAL, VEN_RG, VEN_SALARIOBASE,' +
        ' '
      
        '  VEN_SALDOATUAL, VEN_SALDOHORAS, VEN_SITE, VEN_STATUS, VEN_TIPO' +
        'PESSOA, '
      '  VEN_USUARIO'
      'FROM VENDEDORES'
      'WHERE VEN_CODIGO = :OLD_VEN_CODIGO')
    Left = 608
    Top = 344
  end
  object TBVias: TFDQuery
    Connection = FDConnection1
    Transaction = TRVias
    UpdateObject = UPVias
    SQL.Strings = (
      'select * from VIAS '
      'where VIA_CODIGO=:codigo '
      'order by VIA_CODIGO'
      '')
    Left = 640
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    Left = 640
    Top = 392
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
    Left = 640
    Top = 344
  end
  object TBCidades: TFDQuery
    Connection = FDConnection1
    Transaction = TRCidades
    UpdateObject = UPCidades
    SQL.Strings = (
      'select '
      'CID_CODIGO,'
      'CID_DIMOB,'
      'CID_ESTADO,'
      'CID_NOME,'
      'CID_PAIS '
      'from CIDADES'
      'where CID_CODIGO=:codigo '
      'order by CID_CODIGO'
      '')
    Left = 256
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCidadesCID_DIMOB: TIntegerField
      FieldName = 'CID_DIMOB'
      Origin = 'CID_DIMOB'
    end
    object TBCidadesCID_ESTADO: TIntegerField
      FieldName = 'CID_ESTADO'
      Origin = 'CID_ESTADO'
      Required = True
    end
    object TBCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Size = 80
    end
    object TBCidadesCID_PAIS: TIntegerField
      FieldName = 'CID_PAIS'
      Origin = 'CID_PAIS'
      Required = True
    end
  end
  object TRCidades: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 256
    Top = 176
  end
  object UPCidades: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CIDADES'
      '(CID_CODIGO, CID_DIMOB, CID_ESTADO, CID_NOME, '
      '  CID_PAIS)'
      
        'VALUES (:NEW_CID_CODIGO, :NEW_CID_DIMOB, :NEW_CID_ESTADO, :NEW_C' +
        'ID_NOME, '
      '  :NEW_CID_PAIS)'
      'RETURNING CID_CODIGO, CID_DIMOB, CID_ESTADO, CID_NOME, CID_PAIS')
    ModifySQL.Strings = (
      'UPDATE CIDADES'
      
        'SET CID_CODIGO = :NEW_CID_CODIGO, CID_DIMOB = :NEW_CID_DIMOB, CI' +
        'D_ESTADO = :NEW_CID_ESTADO, '
      '  CID_NOME = :NEW_CID_NOME, CID_PAIS = :NEW_CID_PAIS'
      'WHERE CID_CODIGO = :OLD_CID_CODIGO'
      'RETURNING CID_CODIGO, CID_DIMOB, CID_ESTADO, CID_NOME, CID_PAIS')
    DeleteSQL.Strings = (
      'DELETE FROM CIDADES'
      'WHERE CID_CODIGO = :OLD_CID_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CID_CODIGO, CID_DIMOB, CID_ESTADO, CID_NOME, CID_PAIS'
      'FROM CIDADES'
      'WHERE CID_CODIGO = :OLD_CID_CODIGO')
    Left = 256
    Top = 128
  end
  object TBPaises: TFDQuery
    Connection = FDConnection1
    Transaction = TRPaises
    UpdateObject = UPPaises
    SQL.Strings = (
      'select '
      'PAI_CODIGO,'
      'PAI_NOME,'
      'PAI_SIGLA'
      'from PAISES'
      'where PAI_CODIGO=:codigo'
      'order by PAI_CODIGO'
      '')
    Left = 160
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object TBPaisesPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPaisesPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      Size = 80
    end
    object TBPaisesPAI_SIGLA: TStringField
      FieldName = 'PAI_SIGLA'
      Origin = 'PAI_SIGLA'
      Size = 3
    end
  end
  object TRPaises: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 160
    Top = 392
  end
  object UPPaises: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PAISES'
      '(PAI_CODIGO, PAI_NOME, PAI_SIGLA)'
      'VALUES (:NEW_PAI_CODIGO, :NEW_PAI_NOME, :NEW_PAI_SIGLA)'
      'RETURNING PAI_CODIGO, PAI_NOME, PAI_SIGLA')
    ModifySQL.Strings = (
      'UPDATE PAISES'
      
        'SET PAI_CODIGO = :NEW_PAI_CODIGO, PAI_NOME = :NEW_PAI_NOME, PAI_' +
        'SIGLA = :NEW_PAI_SIGLA'
      'WHERE PAI_CODIGO = :OLD_PAI_CODIGO'
      'RETURNING PAI_CODIGO, PAI_NOME, PAI_SIGLA')
    DeleteSQL.Strings = (
      'DELETE FROM PAISES'
      'WHERE PAI_CODIGO = :OLD_PAI_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT PAI_CODIGO, PAI_NOME, PAI_SIGLA'
      'FROM PAISES'
      'WHERE PAI_CODIGO = :OLD_PAI_CODIGO')
    Left = 160
    Top = 344
  end
end
