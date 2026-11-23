object FormReceberMultiplicar: TFormReceberMultiplicar
  Left = 293
  Top = 482
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Multiplicar Conta a Receber'
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
    Left = 43
    Top = 56
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 19
    Top = 40
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
  end
  object Label4: TLabel
    Left = 51
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBText1: TDBText
    Left = 80
    Top = 40
    Width = 81
    Height = 13
    DataField = 'REE_DTVENCIMENTO'
    DataSource = DM.DSReceber
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
    Width = 337
    Height = 13
    DataField = 'CLI_NOME'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 80
    Top = 88
    Width = 129
    Height = 13
    DataField = 'REE_VALOR'
    DataSource = DM.DSReceber
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
    DataField = 'REE_CODIGO'
    DataSource = DM.DSReceber
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
    Width = 337
    Height = 13
    DataField = 'REC_DESCRICAO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 27
    Top = 72
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label7: TLabel
    Left = 291
    Top = 93
    Width = 406
    Height = 41
    AutoSize = False
    Caption = 
      'O campo "N'#250'mero Parcela" (NP) come'#231'ar'#225' no n'#250'mero 02, pois a parc' +
      'ela n'#250'mero 01 '#233' a que est'#225' sendo multiplicada. Aten'#231#227'o para n'#227'o ' +
      'multiplicar mais de uma vez para n'#227'o gerar parcelas duplicadas.'
    WordWrap = True
  end
  object Label8: TLabel
    Left = 115
    Top = 108
    Width = 41
    Height = 13
    Caption = 'Parcelas'
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
    DataSource = DSReceber
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
        FieldName = 'REE_NUMDOCTO'
        Title.Caption = 'Num. Docto'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_PARCELANUM'
        Title.Caption = 'NP'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_PARCELAQTDE'
        Title.Caption = 'TP'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_DTEMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_DTVENCIMENTO'
        Title.Caption = 'Venc.'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_VALOR'
        Title.Caption = 'Valor'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_VALORACESSORIAS'
        Title.Caption = 'Valor Acess.'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_STATUS'
        Title.Caption = 'Status'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Cliente'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REE_TIPODOCTO'
        Title.Caption = 'Tipo Docto'
        Width = 85
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
  object DSReceber: TDataSource
    DataSet = TBReceber
    Left = 80
    Top = 288
  end
  object TBReceber: TClientDataSet
    PersistDataPacket.Data = {
      0F0600009619E0BD0200000018000000290000000000030000000F060B524545
      5F434C49454E544504000100000000000B5245455F5245434549544104000100
      000000000C5245455F56454E4445444F520400010000000000115245455F4143
      52455343494D4F504F5243120012000000020008444543494D414C5302000200
      0400055749445448020002002000125245455F414352455343494D4F56414C4F
      52120012000000020008444543494D414C530200020004000557494454480200
      020020000E5245455F4241495841444F504F5201004900000001000557494454
      48020002001400095245455F434F4E544104000100000000000C5245455F4445
      5343504F5243120012000000020008444543494D414C53020002000400055749
      4454480200020020000D5245455F44455343524943414F010049000000010005
      57494454480200020078000D5245455F4445534356414C4F5212001200000002
      0008444543494D414C530200020004000557494454480200020020000E524545
      5F4449415341545241534F04000100000000000D5245455F444941535052415A
      4F0400010000000000115245455F4454415455414C495A4143414F0400060000
      0000000E5245455F4454434144415354524F04000600000000000D5245455F44
      54454D495353414F04000600000000000F5245455F44544A55524F5341504F53
      04000600000000000F5245455F4454504147414D454E544F0400060000000000
      105245455F445456454E43494D454E544F04000600000000000D5245455F4A55
      524F535041474F120012000000020008444543494D414C530200020004000557
      494454480200020020000D5245455F4D554C54415041474F1200120000000200
      08444543494D414C530200020004000557494454480200020020000E5245455F
      4E4F564F434F4449474F04000100000000000C5245455F4E554D444F43544F01
      004900000001000557494454480200020014000F5245455F4F42534552564143
      4F455304004B0000000100075355425459504502004900050054657874000E52
      45455F50415243454C414E554D04000100000000000F5245455F50415243454C
      415154444504000100000000000D5245455F504F52434A55524F531200120000
      00020008444543494D414C530200020004000557494454480200020020000A52
      45455F53544154555301004900000001000557494454480200020001000D5245
      455F5449504F424149584101004900000001000557494454480200020001000D
      5245455F5449504F444F43544F01004900000001000557494454480200020014
      000B5245455F5553554152494F01004900000001000557494454480200020014
      00095245455F56414C4F52120012000000020008444543494D414C5302000200
      04000557494454480200020020000E5245455F56414C4F524A55524F53120012
      000000020008444543494D414C53020002000400055749445448020002002000
      0E5245455F56414C4F524D554C5441120012000000020008444543494D414C53
      020002000400055749445448020002002000115245455F56414C4F524F524947
      494E414C120012000000020008444543494D414C530200020004000557494454
      480200020020000D5245455F56414C4F525041474F1200120000000200084445
      43494D414C53020002000400055749445448020002002000145245455F56414C
      4F5253454D444553434F4E544F120012000000020008444543494D414C530200
      02000400055749445448020002002000155245455F414352455343494D4F504F
      52435041474F120012000000020008444543494D414C53020002000400055749
      445448020002002000165245455F414352455343494D4F56414C4F525041474F
      120012000000020008444543494D414C53020002000400055749445448020002
      002000135245455F56414C4F5241434553534F52494153120012000000020008
      444543494D414C53020002000400055749445448020002002000165245455F44
      455343504F524356454E43494D454E544F120012000000020008444543494D41
      4C5302000200040005574944544802000200200008434C495F4E4F4D45010049
      00000001000557494454480200020032000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'REE_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'REE_RECEITA'
        DataType = ftInteger
      end
      item
        Name = 'REE_VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'REE_ACRESCIMOPORC'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_ACRESCIMOVALOR'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_BAIXADOPOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REE_CONTA'
        DataType = ftInteger
      end
      item
        Name = 'REE_DESCPORC'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_DESCRICAO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'REE_DESCVALOR'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_DIASATRASO'
        DataType = ftInteger
      end
      item
        Name = 'REE_DIASPRAZO'
        DataType = ftInteger
      end
      item
        Name = 'REE_DTATUALIZACAO'
        DataType = ftDate
      end
      item
        Name = 'REE_DTCADASTRO'
        DataType = ftDate
      end
      item
        Name = 'REE_DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'REE_DTJUROSAPOS'
        DataType = ftDate
      end
      item
        Name = 'REE_DTPAGAMENTO'
        DataType = ftDate
      end
      item
        Name = 'REE_DTVENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'REE_JUROSPAGO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_MULTAPAGO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_NOVOCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'REE_NUMDOCTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REE_OBSERVACOES'
        DataType = ftMemo
      end
      item
        Name = 'REE_PARCELANUM'
        DataType = ftInteger
      end
      item
        Name = 'REE_PARCELAQTDE'
        DataType = ftInteger
      end
      item
        Name = 'REE_PORCJUROS'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_STATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REE_TIPOBAIXA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REE_TIPODOCTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REE_USUARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REE_VALOR'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORJUROS'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORMULTA'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORORIGINAL'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORPAGO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORSEMDESCONTO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_ACRESCIMOPORCPAGO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_ACRESCIMOVALORPAGO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_VALORACESSORIAS'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'REE_DESCPORCVENCIMENTO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'CLI_NOME'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 240
    object TBReceberREE_ACRESCIMOPORC: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORC'
      Precision = 32
      Size = 4
    end
    object TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOPORCPAGO'
      Precision = 32
      Size = 4
    end
    object TBReceberREE_ACRESCIMOVALOR: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALOR'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField
      FieldName = 'REE_ACRESCIMOVALORPAGO'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
    end
    object TBReceberREE_RECEITA: TIntegerField
      FieldName = 'REE_RECEITA'
    end
    object TBReceberREE_VENDEDOR: TIntegerField
      FieldName = 'REE_VENDEDOR'
    end
    object TBReceberREE_BAIXADOPOR: TStringField
      FieldName = 'REE_BAIXADOPOR'
    end
    object TBReceberREE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
    end
    object TBReceberREE_DESCPORC: TFMTBCDField
      FieldName = 'REE_DESCPORC'
      Precision = 32
      Size = 4
    end
    object TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField
      FieldName = 'REE_DESCPORCVENCIMENTO'
      Precision = 32
      Size = 4
    end
    object TBReceberREE_DESCRICAO: TStringField
      FieldName = 'REE_DESCRICAO'
      Size = 50
    end
    object TBReceberREE_DESCVALOR: TFMTBCDField
      FieldName = 'REE_DESCVALOR'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_DIASATRASO: TIntegerField
      FieldName = 'REE_DIASATRASO'
    end
    object TBReceberREE_DIASPRAZO: TIntegerField
      FieldName = 'REE_DIASPRAZO'
    end
    object TBReceberREE_DTATUALIZACAO: TDateField
      FieldName = 'REE_DTATUALIZACAO'
    end
    object TBReceberREE_DTCADASTRO: TDateField
      FieldName = 'REE_DTCADASTRO'
    end
    object TBReceberREE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
    end
    object TBReceberREE_DTJUROSAPOS: TDateField
      FieldName = 'REE_DTJUROSAPOS'
    end
    object TBReceberREE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
    end
    object TBReceberREE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
    end
    object TBReceberREE_JUROSPAGO: TFMTBCDField
      FieldName = 'REE_JUROSPAGO'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_MULTAPAGO: TFMTBCDField
      FieldName = 'REE_MULTAPAGO'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_NOVOCODIGO: TIntegerField
      FieldName = 'REE_NOVOCODIGO'
    end
    object TBReceberREE_NUMDOCTO: TStringField
      FieldName = 'REE_NUMDOCTO'
    end
    object TBReceberREE_OBSERVACOES: TMemoField
      FieldName = 'REE_OBSERVACOES'
      BlobType = ftMemo
    end
    object TBReceberREE_PARCELANUM: TIntegerField
      FieldName = 'REE_PARCELANUM'
    end
    object TBReceberREE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
    end
    object TBReceberREE_PORCJUROS: TFMTBCDField
      FieldName = 'REE_PORCJUROS'
      Precision = 32
      Size = 4
    end
    object TBReceberREE_STATUS: TStringField
      FieldName = 'REE_STATUS'
      Size = 1
    end
    object TBReceberREE_TIPOBAIXA: TStringField
      FieldName = 'REE_TIPOBAIXA'
      Size = 1
    end
    object TBReceberREE_TIPODOCTO: TStringField
      FieldName = 'REE_TIPODOCTO'
    end
    object TBReceberREE_USUARIO: TStringField
      FieldName = 'REE_USUARIO'
    end
    object TBReceberREE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORACESSORIAS: TFMTBCDField
      FieldName = 'REE_VALORACESSORIAS'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORJUROS: TFMTBCDField
      FieldName = 'REE_VALORJUROS'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORMULTA: TFMTBCDField
      FieldName = 'REE_VALORMULTA'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORORIGINAL: TFMTBCDField
      FieldName = 'REE_VALORORIGINAL'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORPAGO: TFMTBCDField
      FieldName = 'REE_VALORPAGO'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberREE_VALORSEMDESCONTO: TFMTBCDField
      FieldName = 'REE_VALORSEMDESCONTO'
      currency = True
      Precision = 32
      Size = 4
    end
    object TBReceberCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 50
    end
  end
end
