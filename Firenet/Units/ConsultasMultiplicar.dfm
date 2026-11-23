object FormConsultasMultiplicar: TFormConsultasMultiplicar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Multiplicar Consulta'
  ClientHeight = 416
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Data In'#237'cio:'
  end
  object Label3: TLabel
    Left = 43
    Top = 40
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object DBText1: TDBText
    Left = 80
    Top = 40
    Width = 337
    Height = 13
    DataField = 'CLI_NOME'
    DataSource = DM2.DSConsultas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 80
    Top = 56
    Width = 81
    Height = 13
    DataField = 'COS_DATAINICIO'
    DataSource = DM2.DSConsultas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 376
    Width = 777
    Height = 5
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 42
    Top = 24
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object DBText4: TDBText
    Left = 80
    Top = 24
    Width = 81
    Height = 13
    DataField = 'COS_CODIGO'
    DataSource = DM2.DSConsultas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 33
    Top = 108
    Width = 45
    Height = 13
    Caption = 'Criar mais'
  end
  object DBText5: TDBText
    Left = 80
    Top = 72
    Width = 81
    Height = 13
    DataField = 'COS_DATAFIM'
    DataSource = DM2.DSConsultas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 33
    Top = 72
    Width = 45
    Height = 13
    Caption = 'Data Fim:'
  end
  object Label8: TLabel
    Left = 115
    Top = 108
    Width = 46
    Height = 13
    Caption = 'Consultas'
  end
  object BitBtn1: TPngBitBtn
    Left = 584
    Top = 384
    Width = 97
    Height = 25
    Caption = '&Confirma'
    TabOrder = 0
    OnClick = BitBtn1Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002A744558744372656174696F6E2054696D65004D6F2033204D727A20
      323030332032323A34323A3130202B30313030FF26557B0000000774494D4507
      D304021031162958BBF9000000097048597300000AF000000AF00142AC349800
      0001B54944415478DABD93DD2B43611CC7BF67E78CBC262FF39A5C284A286B8C
      92BF80A294524AEC4252A670E33FF00728E54A7999C85B335A5ECA950B454B29
      63C734660BDB313B7BCECBE370B192B012CFE5F3FC3E9F8BEFEFFB30F8E561FE
      57308D628660554FB92412927B308193C4054BC86783CCC168BDA5E2F8F110CE
      E333973A86EAC404CBC8C32DF6461BFAAB9CBE35501D03D759D02F8FAB057141
      F969568D1C54CA3CE7C22606A0C6E105643301EC5A1BFA6AF76E3721EB145CB8
      C3D128256DB0C2F92E28DFCEB4D4A599A64451607784A319B11D16ED9AC2862C
      DCC13962EE33BEC11214B83D61319A4ADE261CF110CD1B95FEEABC22032FB8E1
      135FE00A05A6F18031EDD56135F59AF7FD0E485A7A5797422CA2271D1884FDC3
      160CB3E9EB95B939AD1CCB4055296E9EC270FB9EEE871B7B0D07812DC42881C7
      239008473A3578FDF31A17918A10ECC682C296648E05516414A694C0FBEC0581
      0C9E17240DEED2E095AF7BB086747861AF293234B31C8398A4807214D7BC2047
      58D2ADC1B69F8B348B0C04E0A828CD69E29275F0F221394C490F86309F781327
      918928E6F549AC51D229235A9473DF55E49FFFC25F085E01B075B81134FC22DB
      0000000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object BitBtn2: TPngBitBtn
    Left = 688
    Top = 384
    Width = 97
    Height = 25
    Caption = 'Ca&ncelar'
    TabOrder = 1
    OnClick = BitBtn2Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002B744558744372656174696F6E2054696D6500446920333020536570
      20323030332032333A35343A3236202B3031303065D5FFC10000000774494D45
      07D3091E1536385E5BCE8C000000097048597300000B1200000B1201D2DD7EFC
      0000029E4944415478DAA5924B48945114C77FDFCC3895A5869989299A956499
      E603B4905EF434348AA2A40744052E6A51B40982DAB4E80515D122A81605510B
      235B4485CEF808CD8CA6707A51166432E33C6AC6797C33DF63BA4D258DE822BA
      70E172CE3DBFFFB9FF7325FE7349A3032FA0C6078DA970B61C6C7FE73A616F40
      A2418B71AE1D1E9E023D01D00F17CC9B971C9CB12857B21FBFD3B128165BFA27
      D70B6B930B33EE1755A6270DF439B1DBFDB6755AAC2C01F03167DAE78213DBF2
      707B70B4F631F8C8BEAB026E3E87727D669AB5B276560AEE6FF43B82F475B9AF
      6E847D09806770A6F4D8E62349493AA80A3D97AD2EBF27B87DCAF4D45BD55BE7
      67E276331C08D1D6E2183044F4E20DE04B00BC8362434DE1AB39ABE64B048328
      1E1F4F9BDFC46A1A4A25BC5E743944578F4B57BF046B970B0FC634B1DB6868AB
      3ABA7E294209252A6E886EFC0188CABCEDF7F2A9C773A9160E8E3B050BD4E52F
      9BDB9C5F9209E1882814102582CB13A0FDF1579B98C0E26D208F09104EE70CC1
      B5B2FA92D559D9132124FFEA426C9733406BC790C52804B642703440EA86FDE4
      A69FAEA85B9066D24461282C8C547F77A0404CC3FB5DC6F2C4DB9BAAB3710D0C
      8E005A61535E555E5341F54CF8E617851A681A9A50366A2ABA22CE3F63311D59
      56B03C1F768443FACEEDD0120734C1CA85E5592D738AA60A35A1AAE9F8E508D6
      F621B57876B26956F604F10A01D1B4782EAAABDCED0C59F7C08A38E0BE51B2AD
      A99F5D6A9694F80567304A7797C74350AD17B85D6525298D391926F13554145D
      A7F75304E7A0BA7B07DC88036EC3B9BA5559870D9324DE0F8479F7D2F772B21E
      DB22C6F5E1E733EFC1C5C279930E601681AF51221EEDFC163834E2C14DC89862
      363CD04D52A61CD2AE0817CE3642E4EF09DD8293C3604E81EB0DF07ADC7FF0AF
      EB079F7E2E203010A8E70000000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object Edit1: TEdit
    Left = 80
    Top = 104
    Width = 33
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 140
    Width = 777
    Height = 229
    DataSource = DSConsultas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COS_CLIENTE'
        Title.Caption = 'Cliente'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COS_MEDICO'
        Title.Caption = 'M'#233'dico'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Nome'
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COS_DATAINICIO'
        Title.Caption = 'Data In'#237'cio'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COS_DATAFIM'
        Title.Caption = 'Data Fim'
        Width = 80
        Visible = True
      end>
  end
  object PngBitBtn1: TPngBitBtn
    Left = 176
    Top = 104
    Width = 97
    Height = 25
    Caption = '&Simular'
    TabOrder = 4
    OnClick = PngBitBtn1Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000002A744558744372656174696F6E2054696D65004D6F2033204D727A20
      323030332032323A34323A3130202B30313030FF26557B0000000774494D4507
      D304021031162958BBF9000000097048597300000AF000000AF00142AC349800
      0001B54944415478DABD93DD2B43611CC7BF67E78CBC262FF39A5C284A286B8C
      92BF80A294524AEC4252A670E33FF00728E54A7999C85B335A5ECA950B454B29
      63C734660BDB313B7BCECBE370B192B012CFE5F3FC3E9F8BEFEFFB30F8E561FE
      57308D628660554FB92412927B308193C4054BC86783CCC168BDA5E2F8F110CE
      E333973A86EAC404CBC8C32DF6461BFAAB9CBE35501D03D759D02F8FAB057141
      F969568D1C54CA3CE7C22606A0C6E105643301EC5A1BFA6AF76E3721EB145CB8
      C3D128256DB0C2F92E28DFCEB4D4A599A64451607784A319B11D16ED9AC2862C
      DCC13962EE33BEC11214B83D61319A4ADE261CF110CD1B95FEEABC22032FB8E1
      135FE00A05A6F18031EDD56135F59AF7FD0E485A7A5797422CA2271D1884FDC3
      160CB3E9EB95B939AD1CCB4055296E9EC270FB9EEE871B7B0D07812DC42881C7
      239008473A3578FDF31A17918A10ECC682C296648E05516414A694C0FBEC0581
      0C9E17240DEED2E095AF7BB086747861AF293234B31C8398A4807214D7BC2047
      58D2ADC1B69F8B348B0C04E0A828CD69E29275F0F221394C490F86309F781327
      918928E6F549AC51D229235A9473DF55E49FFFC25F085E01B075B81134FC22DB
      0000000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object RadioGroup1: TRadioGroup
    Left = 288
    Top = 64
    Width = 97
    Height = 65
    Caption = 'Per'#237'odo'
    Items.Strings = (
      'Semanal'
      'Mensal')
    TabOrder = 5
  end
  object DSConsultas: TDataSource
    DataSet = TBConsultas
    Left = 80
    Top = 288
  end
  object TBConsultas: TClientDataSet
    PersistDataPacket.Data = {
      300100009619E0BD02000000180000000B00000000000300000030010B434F53
      5F434C49454E544504000100000000000C434F535F434F4E56454E494F040001
      00000000000E434F535F44415441494E4943494F04000600000000000B434F53
      5F4441544146494D04000600000000000B434F535F484F524146494D04000700
      000000000E434F535F484F5241494E4943494F04000700000000000A434F535F
      4D454449434F04000100000000000F434F535F534F4C49434954414E54450400
      0100000000000E434F535F56414C4F52544F54414C1200120000000200084445
      43494D414C5302000200040005574944544802000200200008434C495F4E4F4D
      4501004900000001000557494454480200020050000856454E5F4E4F4D450100
      4900000001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COS_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'COS_CONVENIO'
        DataType = ftInteger
      end
      item
        Name = 'COS_DATAINICIO'
        DataType = ftDate
      end
      item
        Name = 'COS_DATAFIM'
        DataType = ftDate
      end
      item
        Name = 'COS_HORAFIM'
        DataType = ftTime
      end
      item
        Name = 'COS_HORAINICIO'
        DataType = ftTime
      end
      item
        Name = 'COS_MEDICO'
        DataType = ftInteger
      end
      item
        Name = 'COS_SOLICITANTE'
        DataType = ftInteger
      end
      item
        Name = 'COS_VALORTOTAL'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'CLI_NOME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'VEN_NOME'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 240
    object TBConsultasCOS_CLIENTE: TIntegerField
      FieldName = 'COS_CLIENTE'
    end
    object TBConsultasCOS_CONVENIO: TIntegerField
      FieldName = 'COS_CONVENIO'
    end
    object TBConsultasCOS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
    end
    object TBConsultasCOS_DATAFIM: TDateField
      FieldName = 'COS_DATAFIM'
    end
    object TBConsultasCOS_HORAFIM: TTimeField
      FieldName = 'COS_HORAFIM'
    end
    object TBConsultasCOS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
    end
    object TBConsultasCOS_MEDICO: TIntegerField
      FieldName = 'COS_MEDICO'
    end
    object TBConsultasCOS_SOLICITANTE: TIntegerField
      FieldName = 'COS_SOLICITANTE'
    end
    object TBConsultasCOS_VALORTOTAL: TFMTBCDField
      FieldName = 'COS_VALORTOTAL'
      Precision = 32
      Size = 4
    end
    object TBConsultasCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 80
    end
    object TBConsultasVEN_NOME: TStringField
      FieldName = 'VEN_NOME'
      Size = 80
    end
  end
  object TBConsultasItens: TClientDataSet
    PersistDataPacket.Data = {
      C10000009619E0BD020000001800000006000000000003000000C1000A435349
      5F434F4449474F04000100000000000C4353495F434F4E53554C544104000100
      00000000094353495F4558414D4504000100000000000D4353495F4445534352
      4943414F0100490000000100055749445448020002007800094353495F534947
      4C410100490000000100055749445448020002000A00094353495F56414C4F52
      120012000000020008444543494D414C53020002000400055749445448020002
      0020000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CSI_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'CSI_CONSULTA'
        DataType = ftInteger
      end
      item
        Name = 'CSI_EXAME'
        DataType = ftInteger
      end
      item
        Name = 'CSI_DESCRICAO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'CSI_SIGLA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CSI_VALOR'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 240
    object TBConsultasItensCSI_CODIGO: TIntegerField
      FieldName = 'CSI_CODIGO'
    end
    object TBConsultasItensCSI_CONSULTA: TIntegerField
      FieldName = 'CSI_CONSULTA'
    end
    object TBConsultasItensCSI_EXAME: TIntegerField
      FieldName = 'CSI_EXAME'
    end
    object TBConsultasItensCSI_DESCRICAO: TStringField
      FieldName = 'CSI_DESCRICAO'
      Size = 120
    end
    object TBConsultasItensCSI_SIGLA: TStringField
      FieldName = 'CSI_SIGLA'
      Size = 10
    end
    object TBConsultasItensCSI_VALOR: TFMTBCDField
      FieldName = 'CSI_VALOR'
      Precision = 32
      Size = 4
    end
  end
  object DSConsultasItens: TDataSource
    DataSet = TBConsultasItens
    Left = 160
    Top = 288
  end
end
