object DM: TDM
  Height = 260
  Width = 587
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=c:\runtime\firenet\dados\firenet_oficial.fdb'
      'User_Name=sysdba'
      'Password=borland'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 64
    Top = 16
  end
  object QYProdutos: TFDQuery
    Connection = FDConnection1
    Transaction = TRProdutos
    Left = 64
    Top = 80
  end
  object TRProdutos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 64
    Top = 136
  end
  object QYVendedores: TFDQuery
    Connection = FDConnection1
    Transaction = TRVendedores
    Left = 144
    Top = 80
  end
  object TRVendedores: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 144
    Top = 136
  end
  object QYVendas: TFDQuery
    Connection = FDConnection1
    Transaction = TRVendas
    Left = 224
    Top = 80
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 224
    Top = 136
  end
  object QYEmpresa: TFDQuery
    Connection = FDConnection1
    Transaction = TREmpresa
    SQL.Strings = (
      'select * from EMPRESA')
    Left = 304
    Top = 80
    object QYEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      Origin = 'EMP_CEP'
      Size = 10
    end
    object QYEmpresaEMP_ESTADO: TStringField
      FieldName = 'EMP_ESTADO'
      Origin = 'EMP_ESTADO'
      Size = 2
    end
  end
  object TREmpresa: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 304
    Top = 136
  end
  object QYCondicoes: TFDQuery
    Connection = FDConnection1
    Transaction = TRCondicoes
    SQL.Strings = (
      'select max(CPI_DIAS) as DIAS from CONDICOESITENS'
      'where CPI_CONDICAO=:codigo'
      '')
    Left = 384
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCondicoesDIAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS'
      Origin = 'DIAS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TRCondicoes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 384
    Top = 136
  end
  object QYClientes: TFDQuery
    Connection = FDConnection1
    Transaction = TRClientes
    SQL.Strings = (
      '')
    Left = 464
    Top = 80
  end
  object TRClientes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 464
    Top = 136
  end
end
