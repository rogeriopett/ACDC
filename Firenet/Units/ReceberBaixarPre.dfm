object FormReceberBaixarPre: TFormReceberBaixarPre
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pr'#233' Baixa de Contas a Receber'
  ClientHeight = 392
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object DBText1: TDBText
    Left = 88
    Top = 48
    Width = 57
    Height = 13
    DataField = 'REE_CODIGO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 28
    Top = 64
    Width = 56
    Height = 13
    Caption = 'Tipo Docto:'
  end
  object DBText2: TDBText
    Left = 88
    Top = 64
    Width = 185
    Height = 13
    DataField = 'REE_TIPODOCTO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 88
    Top = 80
    Width = 185
    Height = 13
    DataField = 'REE_NUMDOCTO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 88
    Top = 96
    Width = 305
    Height = 13
    DataField = 'REE_DESCRICAO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 88
    Top = 112
    Width = 305
    Height = 13
    DataField = 'REE_CLIENTE'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 88
    Top = 128
    Width = 89
    Height = 13
    DataField = 'REE_DTEMISSAO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText7: TDBText
    Left = 88
    Top = 144
    Width = 89
    Height = 13
    DataField = 'REE_DIASPRAZO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText8: TDBText
    Left = 88
    Top = 160
    Width = 89
    Height = 13
    DataField = 'REE_DTVENCIMENTO'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText9: TDBText
    Left = 88
    Top = 176
    Width = 89
    Height = 13
    DataField = 'REE_DTJUROSAPOS'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText10: TDBText
    Left = 88
    Top = 192
    Width = 89
    Height = 13
    DataField = 'REE_PORCJUROS'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText11: TDBText
    Left = 88
    Top = 208
    Width = 89
    Height = 13
    DataField = 'REE_VALORJUROS'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText12: TDBText
    Left = 88
    Top = 224
    Width = 89
    Height = 13
    DataField = 'REE_VALORMULTA'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 60
    Height = 13
    Caption = 'Num. Docto:'
  end
  object Label4: TLabel
    Left = 33
    Top = 96
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label5: TLabel
    Left = 49
    Top = 112
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label6: TLabel
    Left = 25
    Top = 128
    Width = 59
    Height = 13
    Caption = 'Dt. Emiss'#227'o:'
  end
  object Label7: TLabel
    Left = 30
    Top = 144
    Width = 54
    Height = 13
    Caption = 'Dias Prazo:'
  end
  object Label8: TLabel
    Left = 8
    Top = 160
    Width = 76
    Height = 13
    Caption = 'Dt. Vencimento:'
  end
  object Label9: TLabel
    Left = 29
    Top = 176
    Width = 55
    Height = 13
    Caption = 'Juros Ap'#243's:'
  end
  object Label10: TLabel
    Left = 45
    Top = 192
    Width = 39
    Height = 13
    Caption = '% Juros:'
  end
  object Label11: TLabel
    Left = 29
    Top = 208
    Width = 55
    Height = 13
    Caption = 'Valor Juros:'
  end
  object Label12: TLabel
    Left = 28
    Top = 224
    Width = 56
    Height = 13
    Caption = 'Valor Multa:'
  end
  object Label13: TLabel
    Left = 57
    Top = 256
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBText13: TDBText
    Left = 88
    Top = 256
    Width = 89
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
  object Label14: TLabel
    Left = 247
    Top = 320
    Width = 55
    Height = 13
    Caption = 'Valor Pago:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 352
    Width = 393
    Height = 6
    Shape = bsTopLine
  end
  object Label15: TLabel
    Left = 245
    Top = 248
    Width = 57
    Height = 13
    Caption = 'Data Pagto:'
  end
  object Label16: TLabel
    Left = 245
    Top = 296
    Width = 57
    Height = 13
    Caption = 'Multa Pago:'
  end
  object Label17: TLabel
    Left = 246
    Top = 272
    Width = 56
    Height = 13
    Caption = 'Juros Pago:'
  end
  object Label18: TLabel
    Left = 32
    Top = 16
    Width = 55
    Height = 13
    Caption = 'Pr'#233' Baixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 7
    Top = 32
    Width = 393
    Height = 6
    Shape = bsTopLine
  end
  object Label19: TLabel
    Left = 3
    Top = 240
    Width = 81
    Height = 13
    Caption = 'Valor Acess'#243'rias:'
  end
  object DBText14: TDBText
    Left = 88
    Top = 240
    Width = 89
    Height = 13
    DataField = 'REE_VALORACESSORIAS'
    DataSource = DM.DSReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TPngBitBtn
    Left = 200
    Top = 360
    Width = 97
    Height = 25
    Caption = '&Baixar'
    Enabled = False
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
    Left = 304
    Top = 360
    Width = 97
    Height = 25
    Caption = '&Cancelar'
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
  object DBEdit1: TDBEdit
    Left = 304
    Top = 244
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    DataField = 'REE_DTPAGAMENTO'
    DataSource = DM.DSReceber
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 304
    Top = 268
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'REE_JUROSPAGO'
    DataSource = DM.DSReceber
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 304
    Top = 292
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'REE_MULTAPAGO'
    DataSource = DM.DSReceber
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 304
    Top = 316
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'REE_VALORPAGO'
    DataSource = DM.DSReceber
    TabOrder = 5
    OnChange = DBEdit4Change
  end
end
