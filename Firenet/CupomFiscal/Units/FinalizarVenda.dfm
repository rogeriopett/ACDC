object FormFinalizarVenda: TFormFinalizarVenda
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Finalizar Venda'
  ClientHeight = 346
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel6: TBevel
    Left = 24
    Top = 248
    Width = 281
    Height = 33
  end
  object Bevel5: TBevel
    Left = 24
    Top = 208
    Width = 281
    Height = 33
  end
  object Bevel4: TBevel
    Left = 24
    Top = 168
    Width = 281
    Height = 33
  end
  object Bevel3: TBevel
    Left = 24
    Top = 128
    Width = 281
    Height = 33
  end
  object Bevel2: TBevel
    Left = 24
    Top = 88
    Width = 281
    Height = 33
  end
  object Bevel1: TBevel
    Left = 24
    Top = 48
    Width = 281
    Height = 33
  end
  object labelDescricaoTotalVenda: TLabel
    Left = 31
    Top = 55
    Width = 93
    Height = 18
    Caption = 'Total Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDescricaoDesconto: TLabel
    Left = 31
    Top = 95
    Width = 74
    Height = 18
    Caption = 'Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDescricaoAcrescimo: TLabel
    Left = 31
    Top = 135
    Width = 82
    Height = 18
    Caption = 'Acr'#233'scimo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDescricaoTotalReceber: TLabel
    Left = 31
    Top = 175
    Width = 122
    Height = 18
    Caption = 'Total a Receber:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDescricaoTotalRecebido: TLabel
    Left = 31
    Top = 215
    Width = 116
    Height = 18
    Caption = 'Total Recebido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDescricaoTroco: TLabel
    Left = 31
    Top = 255
    Width = 47
    Height = 18
    Caption = 'Troco:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 26
    Top = 26
    Width = 138
    Height = 19
    Caption = 'Totais da Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 322
    Top = 26
    Width = 208
    Height = 19
    Caption = 'Informe os Valores Pagos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel7: TBevel
    Left = 8
    Top = 304
    Width = 593
    Height = 3
    Shape = bsTopLine
  end
  object DBText1: TDBText
    Left = 234
    Top = 56
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_TOTALITENS'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 234
    Top = 95
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_DESCVALOR'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 234
    Top = 136
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_ACREVALOR'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 234
    Top = 175
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_VALORTOTAL'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 234
    Top = 215
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_VALORRECEBIDO'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 234
    Top = 255
    Width = 64
    Height = 18
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'CUP_VALORTROCO'
    DataSource = DM.DSCupomFiscal
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PngBitBtn1: TPngBitBtn
    Left = 368
    Top = 312
    Width = 113
    Height = 25
    Caption = '&Confirmar (F12)'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = Confirma1Click
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
  object PngBitBtn2: TPngBitBtn
    Left = 488
    Top = 312
    Width = 113
    Height = 25
    Caption = '&Cancelar (ESC)'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = PngBitBtn2Click
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
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 48
    Width = 265
    Height = 233
    DataSource = DSValores
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 609
    Height = 41
    Color = 8958141
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object labelConfirmaValores: TLabel
      Left = 56
      Top = 11
      Width = 277
      Height = 18
      Caption = 'Confirma Valores e Finaliza a Venda?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PngBitBtn3: TPngBitBtn
      Left = 368
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Sim'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = PngBitBtn3Click
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
    object PngBitBtn4: TPngBitBtn
      Left = 488
      Top = 8
      Width = 113
      Height = 25
      Caption = '&N'#227'o'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = PngBitBtn4Click
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
    end
  end
  object TBValores: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'TEF'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VINCULADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGOPAGAMENTO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 192
    Top = 40
  end
  object DSValores: TDataSource
    DataSet = TBValores
    Left = 192
    Top = 84
  end
  object QYFormasPagamento: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRFormasPagamento
    SQL.Strings = (
      'select * from FORMASPAGAMENTO '
      'order by FPG_TEF, FPG_CODIGO')
    Left = 192
    Top = 160
    object QYFormasPagamentoFPG_CODIGO: TIntegerField
      FieldName = 'FPG_CODIGO'
      Origin = '"FORMASPAGAMENTO"."FPG_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFormasPagamentoFPG_CODIGOPAGAMENTO: TIBStringField
      FieldName = 'FPG_CODIGOPAGAMENTO'
      Origin = '"FORMASPAGAMENTO"."FPG_CODIGOPAGAMENTO"'
      Size = 3
    end
    object QYFormasPagamentoFPG_DESCRICAO: TIBStringField
      FieldName = 'FPG_DESCRICAO'
      Origin = '"FORMASPAGAMENTO"."FPG_DESCRICAO"'
      Size = 50
    end
    object QYFormasPagamentoFPG_DTATUALIZACAO: TDateField
      FieldName = 'FPG_DTATUALIZACAO'
      Origin = '"FORMASPAGAMENTO"."FPG_DTATUALIZACAO"'
    end
    object QYFormasPagamentoFPG_DTCADASTRO: TDateField
      FieldName = 'FPG_DTCADASTRO'
      Origin = '"FORMASPAGAMENTO"."FPG_DTCADASTRO"'
    end
    object QYFormasPagamentoFPG_IMPRIMEVINCULADO: TIBStringField
      FieldName = 'FPG_IMPRIMEVINCULADO'
      Origin = '"FORMASPAGAMENTO"."FPG_IMPRIMEVINCULADO"'
      Size = 1
    end
    object QYFormasPagamentoFPG_TEF: TIBStringField
      FieldName = 'FPG_TEF'
      Origin = '"FORMASPAGAMENTO"."FPG_TEF"'
      Size = 1
    end
    object QYFormasPagamentoFPG_USUARIO: TIBStringField
      FieldName = 'FPG_USUARIO'
      Origin = '"FORMASPAGAMENTO"."FPG_USUARIO"'
    end
  end
  object TRFormasPagamento: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Left = 192
    Top = 208
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 96
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      Visible = False
      object Confirma1: TMenuItem
        Caption = 'Confirma'
        ShortCut = 123
        OnClick = Confirma1Click
      end
    end
  end
end
