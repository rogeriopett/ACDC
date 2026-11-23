object DM: TDM
  OldCreateOrder = False
  OnCreate = ServerMethodDataModuleCreate
  Encoding = esUtf8
  Height = 292
  Width = 514
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=borland'
      'Database=c:\runtime\firenet\dados\firenet_oficial.fdb'
      'Port=3050'
      'Server=localhost'
      'Protocol=TCPIP'
      'DriverID=FB')
    BeforeConnect = FDConnection1BeforeConnect
    Left = 56
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 56
    Top = 80
  end
  object RESTDWDriverFD1: TRESTDWDriverFD
    CommitRecords = 100
    Connection = FDConnection1
    Left = 152
    Top = 32
  end
  object RESTDWPoolerDB1: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD1
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 256
    Top = 32
  end
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'Data'
        EventName = 'Data'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventsDataReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'Hora'
        EventName = 'Hora'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventsHoraReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'DataHora'
        EventName = 'DataHora'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventsDataHoraReplyEvent
      end
      item
        Routes = [crGet]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovInteger
            ParamName = 'produto'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovInteger
            ParamName = 'foto'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'ProdutosFotos'
        EventName = 'ProdutosFotos'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventsProdutosFotosReplyEvent
      end>
    Left = 352
    Top = 32
  end
  object TBProdutosFotos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      'PRF_ARQUIVO'
      'from PRODUTOSFOTOS'
      'where PRF_CODIGO=:PRF_CODIGO'
      '')
    Left = 136
    Top = 128
    ParamData = <
      item
        Name = 'PRF_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TBProdutosFotosPRF_ARQUIVO: TStringField
      FieldName = 'PRF_ARQUIVO'
      Origin = 'PRF_ARQUIVO'
      Size = 30
    end
  end
  object TBParametros: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      'PAR_LOCALFOTOSPRODUTOS'
      'from PARAMETROS'
      'where PAR_CODIGO=1')
    Left = 56
    Top = 128
    object TBParametrosPAR_LOCALFOTOSPRODUTOS: TStringField
      FieldName = 'PAR_LOCALFOTOSPRODUTOS'
      Origin = 'PAR_LOCALFOTOSPRODUTOS'
      Size = 200
    end
  end
end
