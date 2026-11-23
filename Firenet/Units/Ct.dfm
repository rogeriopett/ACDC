object FormCt: TFormCt
  Left = 222
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conhecimentos de Transportes Modelo 08'
  ClientHeight = 454
  ClientWidth = 819
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 31
    Width = 819
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitHeight = 408
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      ExplicitLeft = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 339
      object Label1: TLabel
        Left = 30
        Top = 20
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 143
        Top = 20
        Width = 42
        Height = 13
        Caption = 'Emiss'#227'o:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 313
        Top = 140
        Width = 33
        Height = 13
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 350
        Top = 140
        Width = 39
        Height = 13
        DataField = 'CTT_STATUS'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 35
        Top = 44
        Width = 31
        Height = 13
        Caption = 'CFOP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton17: TPngSpeedButton
        Tag = 10
        Left = 368
        Top = 40
        Width = 21
        Height = 21
        Hint = 'Localizar'
        Enabled = False
        Flat = True
        Layout = blGlyphRight
        OnClick = SpeedButton17Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A46343139384238383138313831314530413245304444393246414339
          373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          4634313938423839313831383131453041324530444439324641433937333146
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A46343139384238363138313831314530
          41324530444439324641433937333146222073745265663A646F63756D656E74
          49443D22786D702E6469643A4634313938423837313831383131453041324530
          444439324641433937333146222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
          14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
          C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
          220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
          E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
          114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
          F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
          BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
          56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
          9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
          DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
          DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
          36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
          54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
          0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
          5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
          C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
          0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
          49454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label3: TLabel
        Left = 269
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Cadastro:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 22
        Top = 348
        Width = 40
        Height = 13
        Caption = 'Ve'#237'culo:'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton3: TPngSpeedButton
        Tag = 10
        Left = 364
        Top = 344
        Width = 21
        Height = 21
        Hint = 'Localizar'
        Enabled = False
        Flat = True
        Layout = blGlyphRight
        OnClick = SpeedButton3Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A46343139384238383138313831314530413245304444393246414339
          373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          4634313938423839313831383131453041324530444439324641433937333146
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A46343139384238363138313831314530
          41324530444439324641433937333146222073745265663A646F63756D656E74
          49443D22786D702E6469643A4634313938423837313831383131453041324530
          444439324641433937333146222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
          14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
          C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
          220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
          E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
          114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
          F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
          BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
          56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
          9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
          DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
          DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
          36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
          54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
          0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
          5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
          C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
          0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
          49454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label82: TLabel
        Left = 32
        Top = 372
        Width = 30
        Height = 13
        Caption = 'Placa:'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 261
        Top = 372
        Width = 33
        Height = 13
        Caption = 'RNTC:'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 404
        Top = 348
        Width = 82
        Height = 13
        Caption = 'Produto Predom.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label68: TLabel
        Left = 17
        Top = 92
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
        FocusControl = DBEdit62
      end
      object SpeedButton9: TPngSpeedButton
        Tag = 10
        Left = 368
        Top = 88
        Width = 21
        Height = 21
        Hint = 'Localizar'
        Enabled = False
        Flat = True
        Layout = blGlyphRight
        OnClick = SpeedButton9Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A46343139384238383138313831314530413245304444393246414339
          373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          4634313938423839313831383131453041324530444439324641433937333146
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A46343139384238363138313831314530
          41324530444439324641433937333146222073745265663A646F63756D656E74
          49443D22786D702E6469643A4634313938423837313831383131453041324530
          444439324641433937333146222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
          14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
          C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
          220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
          E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
          114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
          F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
          BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
          56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
          9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
          DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
          DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
          36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
          54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
          0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
          5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
          C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
          0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
          49454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label69: TLabel
        Left = 299
        Top = 116
        Width = 47
        Height = 13
        Caption = 'Pago Por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label70: TLabel
        Left = 267
        Top = 68
        Width = 79
        Height = 13
        Caption = 'Mov. Financeiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label71: TLabel
        Left = 18
        Top = 116
        Width = 48
        Height = 13
        Caption = 'Comiss'#227'o:'
        FocusControl = DBEdit62
      end
      object Label74: TLabel
        Left = 402
        Top = 372
        Width = 84
        Height = 13
        Caption = 'CT Referenciado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label91: TLabel
        Left = 159
        Top = 68
        Width = 27
        Height = 13
        Caption = 'Serie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label92: TLabel
        Left = 28
        Top = 68
        Width = 38
        Height = 13
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 68
        Top = 16
        Width = 65
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_CODIGO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit2: TDBEdit
        Tag = 10
        Left = 188
        Top = 16
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_DTEMISSAO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit42: TDBEdit
        Tag = 10
        Left = 68
        Top = 40
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_CFOP'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit42Exit
        OnKeyDown = DBEdit42KeyDown
      end
      object DBEdit43: TDBEdit
        Left = 132
        Top = 40
        Width = 236
        Height = 21
        Hint = 'Email'
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_CFOPDESC'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 168
        Width = 389
        Height = 169
        Caption = 'Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        object Label4: TLabel
          Left = 18
          Top = 20
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TPngSpeedButton
          Tag = 10
          Left = 356
          Top = 16
          Width = 21
          Height = 21
          Hint = 'Localizar'
          Enabled = False
          Flat = True
          Layout = blGlyphRight
          OnClick = SpeedButton1Click
          PngImage.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
            000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
            312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
            2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
            3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
            7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
            62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
            6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
            7861702F312E302F73547970652F5265736F75726365526566232220786D703A
            43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
            2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
            6969643A46343139384238383138313831314530413245304444393246414339
            373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
            4634313938423839313831383131453041324530444439324641433937333146
            223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
            616E636549443D22786D702E6969643A46343139384238363138313831314530
            41324530444439324641433937333146222073745265663A646F63756D656E74
            49443D22786D702E6469643A4634313938423837313831383131453041324530
            444439324641433937333146222F3E203C2F7264663A4465736372697074696F
            6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
            636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
            14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
            C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
            220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
            E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
            114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
            F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
            BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
            56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
            9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
            DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
            DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
            36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
            54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
            0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
            5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
            C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
            0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
            49454E44AE426082}
          PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
        end
        object Label36: TLabel
          Left = 13
          Top = 44
          Width = 40
          Height = 13
          Caption = 'Contato:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 17
          Top = 84
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 23
          Top = 100
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 18
          Top = 116
          Width = 35
          Height = 13
          Caption = 'Compl.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 29
          Top = 68
          Width = 24
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 311
          Top = 100
          Width = 23
          Height = 13
          Caption = 'U.F.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 319
          Top = 84
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 23
          Top = 132
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 223
          Top = 132
          Width = 23
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 40
          Top = 148
          Width = 13
          Height = 13
          Caption = 'IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 59
          Top = 68
          Width = 60
          Height = 13
          DataField = 'CTT_REMCEP'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 123
          Top = 68
          Width = 254
          Height = 13
          DataField = 'CTT_REMENDERECO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 59
          Top = 84
          Width = 60
          Height = 13
          DataField = 'CTT_REMCIDADECODIGO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 123
          Top = 84
          Width = 182
          Height = 13
          DataField = 'CTT_REMCIDADE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 339
          Top = 84
          Width = 38
          Height = 13
          DataField = 'CTT_REMNUMERO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 59
          Top = 100
          Width = 250
          Height = 13
          DataField = 'CTT_REMBAIRRO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 339
          Top = 100
          Width = 38
          Height = 13
          DataField = 'CTT_REMESTADO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 59
          Top = 116
          Width = 318
          Height = 13
          DataField = 'CTT_REMCOMPLEMENTO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText16: TDBText
          Left = 59
          Top = 132
          Width = 158
          Height = 13
          DataField = 'CTT_REMCNPJ'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText17: TDBText
          Left = 251
          Top = 132
          Width = 126
          Height = 13
          DataField = 'CTT_REMCPF'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText18: TDBText
          Left = 59
          Top = 148
          Width = 158
          Height = 13
          DataField = 'CTT_REMIE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Tag = 10
          Left = 56
          Top = 16
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_REMETENTE'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit4Exit
          OnKeyDown = DBEdit4KeyDown
        end
        object DBEdit7: TDBEdit
          Left = 120
          Top = 16
          Width = 236
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CTT_REMNOME'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit33: TDBEdit
          Tag = 10
          Left = 56
          Top = 40
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_REMCONTATO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBEdit3: TDBEdit
        Tag = 10
        Left = 316
        Top = 16
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_DTCADASTRO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnKeyPress = DBEdit3KeyPress
      end
      object GroupBox2: TGroupBox
        Left = 418
        Top = 168
        Width = 385
        Height = 169
        Caption = 'Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        object Label105: TLabel
          Left = 18
          Top = 20
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          FocusControl = DBEdit93
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PngSpeedButton1: TPngSpeedButton
          Tag = 10
          Left = 356
          Top = 16
          Width = 21
          Height = 21
          Hint = 'Localizar'
          Enabled = False
          Flat = True
          Layout = blGlyphRight
          OnClick = PngSpeedButton1Click
          PngImage.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
            000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
            312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
            2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
            3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
            7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
            62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
            6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
            7861702F312E302F73547970652F5265736F75726365526566232220786D703A
            43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
            2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
            6969643A46343139384238383138313831314530413245304444393246414339
            373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
            4634313938423839313831383131453041324530444439324641433937333146
            223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
            616E636549443D22786D702E6969643A46343139384238363138313831314530
            41324530444439324641433937333146222073745265663A646F63756D656E74
            49443D22786D702E6469643A4634313938423837313831383131453041324530
            444439324641433937333146222F3E203C2F7264663A4465736372697074696F
            6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
            636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
            14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
            C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
            220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
            E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
            114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
            F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
            BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
            56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
            9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
            DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
            DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
            36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
            54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
            0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
            5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
            C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
            0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
            49454E44AE426082}
          PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
        end
        object Label106: TLabel
          Left = 13
          Top = 44
          Width = 40
          Height = 13
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label107: TLabel
          Left = 17
          Top = 84
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label108: TLabel
          Left = 23
          Top = 100
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label109: TLabel
          Left = 18
          Top = 116
          Width = 35
          Height = 13
          Caption = 'Compl.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label110: TLabel
          Left = 29
          Top = 68
          Width = 24
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label111: TLabel
          Left = 311
          Top = 100
          Width = 23
          Height = 13
          Caption = 'U.F.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label112: TLabel
          Left = 319
          Top = 84
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label113: TLabel
          Left = 23
          Top = 132
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label114: TLabel
          Left = 223
          Top = 132
          Width = 23
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 40
          Top = 148
          Width = 13
          Height = 13
          Caption = 'IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText19: TDBText
          Left = 59
          Top = 68
          Width = 60
          Height = 13
          DataField = 'CTT_DESCEP'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText20: TDBText
          Left = 123
          Top = 68
          Width = 254
          Height = 13
          DataField = 'CTT_REMENDERECO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText21: TDBText
          Left = 59
          Top = 84
          Width = 60
          Height = 13
          DataField = 'CTT_DESCIDADECODIGO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText22: TDBText
          Left = 123
          Top = 84
          Width = 182
          Height = 13
          DataField = 'CTT_DESCIDADE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText23: TDBText
          Left = 339
          Top = 84
          Width = 38
          Height = 13
          DataField = 'CTT_DESNUMERO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText24: TDBText
          Left = 339
          Top = 100
          Width = 38
          Height = 13
          DataField = 'CTT_DESESTADO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText25: TDBText
          Left = 59
          Top = 100
          Width = 250
          Height = 13
          DataField = 'CTT_DESBAIRRO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText26: TDBText
          Left = 59
          Top = 116
          Width = 318
          Height = 13
          DataField = 'CTT_DESCOMPLEMENTO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText27: TDBText
          Left = 59
          Top = 132
          Width = 158
          Height = 13
          DataField = 'CTT_DESCNPJ'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText28: TDBText
          Left = 251
          Top = 132
          Width = 126
          Height = 13
          DataField = 'CTT_DESCPF'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText29: TDBText
          Left = 59
          Top = 148
          Width = 158
          Height = 13
          DataField = 'CTT_DESIE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit93: TDBEdit
          Tag = 10
          Left = 56
          Top = 16
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_DESTINATARIO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit93Exit
          OnKeyDown = DBEdit93KeyDown
        end
        object DBEdit94: TDBEdit
          Left = 120
          Top = 16
          Width = 236
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CTT_DESNOME'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit95: TDBEdit
          Tag = 10
          Left = 56
          Top = 40
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_DESCONTATO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBEdit26: TDBEdit
        Tag = 10
        Left = 64
        Top = 344
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_VEICULO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit26Exit
        OnKeyDown = DBEdit26KeyDown
      end
      object DBEdit18: TDBEdit
        Left = 128
        Top = 344
        Width = 236
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'FRO_DESCRICAO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit73: TDBEdit
        Tag = 10
        Left = 64
        Top = 368
        Width = 65
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_VEICULOPLACA'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit74: TDBEdit
        Tag = 10
        Left = 296
        Top = 368
        Width = 89
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_VEICULORNTC'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
      end
      object DBEdit15: TDBEdit
        Tag = 10
        Left = 488
        Top = 344
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_PRODUTOPREDOM'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit62: TDBEdit
        Tag = 10
        Left = 68
        Top = 88
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_VENDEDOR'
        DataSource = DM2.DSCt
        Enabled = False
        TabOrder = 5
        OnExit = DBEdit62Exit
        OnKeyDown = DBEdit62KeyDown
      end
      object DBEdit63: TDBEdit
        Left = 132
        Top = 88
        Width = 236
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'VEN_NOME'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBComboBox13: TDBComboBox
        Tag = 10
        Left = 348
        Top = 112
        Width = 41
        Height = 21
        Style = csDropDownList
        DataField = 'CTT_PAGOPOR'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'R'
          'D'
          'C')
        ParentFont = False
        TabOrder = 8
      end
      object DBComboBox14: TDBComboBox
        Tag = 10
        Left = 348
        Top = 64
        Width = 41
        Height = 21
        Style = csDropDownList
        DataField = 'CTT_MOVIMENTAFINANCEIRO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'S'
          'N')
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit64: TDBEdit
        Tag = 10
        Left = 68
        Top = 112
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_COMISSAO'
        DataSource = DM2.DSCt
        Enabled = False
        TabOrder = 7
      end
      object DBEdit66: TDBEdit
        Tag = 10
        Left = 488
        Top = 368
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_CTEREFERENCIADO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit82: TDBEdit
        Tag = 10
        Left = 188
        Top = 64
        Width = 65
        Height = 21
        Hint = 'Email'
        CharCase = ecUpperCase
        DataField = 'CTT_SERIE'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit83: TDBEdit
        Tag = 10
        Left = 68
        Top = 64
        Width = 65
        Height = 21
        Hint = 'Email'
        CharCase = ecUpperCase
        DataField = 'CTT_MODELO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 418
        Top = 0
        Width = 385
        Height = 169
        Caption = 'Consignat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        object Label5: TLabel
          Left = 18
          Top = 20
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PngSpeedButton2: TPngSpeedButton
          Tag = 10
          Left = 356
          Top = 16
          Width = 21
          Height = 21
          Hint = 'Localizar'
          Enabled = False
          Flat = True
          Layout = blGlyphRight
          OnClick = PngSpeedButton2Click
          PngImage.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
            000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
            312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
            2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
            3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
            7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
            62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
            6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
            7861702F312E302F73547970652F5265736F75726365526566232220786D703A
            43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
            2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
            6969643A46343139384238383138313831314530413245304444393246414339
            373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
            4634313938423839313831383131453041324530444439324641433937333146
            223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
            616E636549443D22786D702E6969643A46343139384238363138313831314530
            41324530444439324641433937333146222073745265663A646F63756D656E74
            49443D22786D702E6469643A4634313938423837313831383131453041324530
            444439324641433937333146222F3E203C2F7264663A4465736372697074696F
            6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
            636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
            14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
            C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
            220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
            E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
            114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
            F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
            BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
            56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
            9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
            DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
            DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
            36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
            54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
            0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
            5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
            C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
            0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
            49454E44AE426082}
          PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
        end
        object Label6: TLabel
          Left = 13
          Top = 44
          Width = 40
          Height = 13
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 17
          Top = 84
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 23
          Top = 100
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 18
          Top = 116
          Width = 35
          Height = 13
          Caption = 'Compl.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 29
          Top = 68
          Width = 24
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 311
          Top = 100
          Width = 23
          Height = 13
          Caption = 'U.F.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 319
          Top = 84
          Width = 15
          Height = 13
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 23
          Top = 132
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 223
          Top = 132
          Width = 23
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 40
          Top = 148
          Width = 13
          Height = 13
          Caption = 'IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText30: TDBText
          Left = 59
          Top = 68
          Width = 60
          Height = 13
          DataField = 'CTT_CONCEP'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText31: TDBText
          Left = 123
          Top = 68
          Width = 254
          Height = 13
          DataField = 'CTT_CONENDERECO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText32: TDBText
          Left = 59
          Top = 84
          Width = 60
          Height = 13
          DataField = 'CTT_CONCIDADECODIGO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText33: TDBText
          Left = 123
          Top = 84
          Width = 182
          Height = 13
          DataField = 'CTT_CONCIDADE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText34: TDBText
          Left = 339
          Top = 84
          Width = 38
          Height = 13
          DataField = 'CTT_CONNUMERO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText35: TDBText
          Left = 339
          Top = 100
          Width = 38
          Height = 13
          DataField = 'CTT_CONESTADO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText36: TDBText
          Left = 59
          Top = 100
          Width = 250
          Height = 13
          DataField = 'CTT_CONBAIRRO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText37: TDBText
          Left = 59
          Top = 116
          Width = 318
          Height = 13
          DataField = 'CTT_CONCOMPLEMENTO'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText38: TDBText
          Left = 59
          Top = 132
          Width = 158
          Height = 13
          DataField = 'CTT_CONCNPJ'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText39: TDBText
          Left = 251
          Top = 132
          Width = 126
          Height = 13
          DataField = 'CTT_CONCPF'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText40: TDBText
          Left = 59
          Top = 148
          Width = 158
          Height = 13
          DataField = 'CTT_CONIE'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Tag = 10
          Left = 56
          Top = 16
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_CONSIGNATARIO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit5Exit
          OnKeyDown = DBEdit5KeyDown
        end
        object DBEdit6: TDBEdit
          Left = 120
          Top = 16
          Width = 236
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'CTT_CONNOME'
          DataSource = DM2.DSCt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Tag = 10
          Left = 56
          Top = 40
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_CONCONTATO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Notas'
      ImageIndex = 3
      object DBGrid1: TDBGrid
        Left = 0
        Top = 40
        Width = 809
        Height = 337
        DataSource = DM2.DSCtNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CNT_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_NOTAFISCAL'
            Title.Caption = 'N'#250'mero'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_DTEMISSAO'
            Title.Caption = 'Dt. Emiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_VALORTOTAL'
            Title.Caption = 'Valor Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_PESO'
            Title.Caption = 'Peso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_NATUREZA'
            Title.Caption = 'Natureza'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_MARCAS'
            Title.Caption = 'Marcas'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_NUMEROS'
            Title.Caption = 'N'#250'meros'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_VOLESPECIE'
            Title.Caption = 'Volumes Esp'#233'cie'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNT_VOLQUANTIDADE'
            Title.Caption = 'Volumes Qtde'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end>
      end
      object BitBtn1: TPngBitBtn
        Left = 0
        Top = 8
        Width = 97
        Height = 25
        Caption = 'I&ncluir Nota'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn1Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000033D4944415478DA7D936D6C935514809FFB76FD58BB96A55B075DAB83
          9574309421B08D1F83303B8901A331118989317E266A1635628CC15F2268E2D4
          8468C061A22110638204636202C91250499CFBA19292C868D7608595B66B57FA
          F1F6F37D5F2F2520FAC393DC7BCFC93DF7B9E79E7B8EE0BF32413F161EB3B799
          1FB65B6D01CDD0EDAA5A556B95C631A3CC61DE227CA7BBB8AD1DC02A14F1FEDA
          5EFFCB637DABAC3EB71D5555A951C1A4B690548B4C5D9A3322E9ECB746816724
          E8FA3F8003B82C56E5E4D3A35BEFDFD0D3C3E2F53499A28AA8B651AE65506B05
          6ABACA92560FD1748AA9682CD6C81A43EC21D30458265BBE1E7F706C575F5717
          894C8E54EE2A2B6CF7F07AE00B140366726778E1DC76FA5C410C9341A252E6E7
          686C4EBF46BFE063368636F6CFEC1ADC20FE4C5F215F51F9AB186599ED6E0EAD
          FEB519E0D1B909C6A7F7B0C6E392D1D469B7B8B95A2C129DCD3C294C87C4C137
          1FD9F19255D4D1AA66AC98892CC4E86E09F0DEC0899B80C8046F87F7B3AEE32E
          AC4A3B17B2E7A55F2BE1487A5A741E73FCF1C6D8B655B1FC459E70EF63ABFB51
          8C6676C4ED0C376DF4A65DA9D758FF9D8FBA49271E2FE484FFAB25F3CF8F8C78
          238B17D91DF89CFB1CA3FC9FDC80AD3CE1416B94492EA825B1ECA8F3CA739B86
          7CE9428A5EC7203EF36A32F5385E6B90C77BC69B87A63367381CF980E5B67BB1
          09139F5D9AA4A1374866CA65619914D1678786038AAE912AA55868E4892C9618
          ECECE7E496DF9A8077CFBFC2DE539F60F20A141D5CD65684AEC8DF2AA585AC81
          23C3BDFEA736F97D24D4123420A2CEB1BD6327FB068F34013F24BFE7816F1E22
          E8F592AF15D10C8342B54EA158FD49F029A11645990A0597E36975704DCD335F
          5C606469880FD74B80A2F0E5EC47EC3EBB1767870597E29489ACCB680B180DE3
          55C14E4C6CE1AC62524636AF5849C0ED27914F12CE5D269BAAA265058653A7DB
          6F27D8B6964C39C7EFC95934AD11A7C0BA5BA5EC919873520B76B5B919F60F30
          D0B986A58E6E9C662755ADC22FF3614E5D3E4DA298C2D08C947C6A88D7B87067
          33B924E4B8FCA76DB28350EC0AA686826131D0177574B9CA7DB9410C8D517938
          FEEF6EBC2507D92C212F4A6D4C8EF666FD28D4E53C23EDFD24F991776E5C7153
          FE06D6E655FB1480CFD40000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object BitBtn2: TPngBitBtn
        Left = 104
        Top = 8
        Width = 97
        Height = 25
        Caption = '&Eliminar Nota'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn2Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002C94944415478DA7D534D4F1351143DAFC3F4134A69453E6A21281A08
          548D44161850138841C5D8B030242E24BA70EB4A5DB971E7C27F606274610C44
          08183FA30B241A370423950F155309AD406BDB99B64C67E63D5FA7534417BCE4
          E5DCBCDC7B72CF3DF711FC7726DCE8141D64C0E9759EB095DB1A19634E555612
          99546E42CDB1B18124A6B6E79352300654D86BC9EDBAB6FAABFE76BFD555E504
          1805A80E681A320919D1F95F7A74317E7F5362D7CFC9D8D8221875A2AEB2C636
          12EC0F76791B3CA07915545579A15E2460BA416601432A96C6DCF4CA6C72431B
          0CA5F18DDC022CC71BC4918303C190BBCE0D3DA700BA59C891EA4502C691F037
          C1C2202772F8F42EF65689D07E32EE455F5B4FD3CBC68E3DD0D219405540E95F
          026690693CA6BC89424C516613115D96119E952E905701E15E67A87DD86AE36A
          1C1EC0E5313B30F59B480B5890B299058B7D83BAA962E663E611996E772E1CEE
          DB77009924C4D04D88BD97B1D3A1AB4BC8DEE806CBA511FE423F930F875CD160
          B7BF966552B00EDF85D83DB4230193E290AF3401B284C5657C25EFDBECD1E0B1
          9A5AE415082D5D20FED6A266C3426622D75F40C640B332F26F1E1A2E2D7DE704
          AF0396A58E9EEA66ABC8A5672540C9F11A5EA817FA45114BA32870149EEDC66A
          20BC8839F2D48B07CDAD8E8B0D7B6DC660603AC0CC416E15F24ACD9C2B290336
          D609223FD90899A8C629BB489EB7B48AF05611684A9E67B26203A68A2D57F99B
          E074414AAA88FC50A1E5D990B148477D18E712CE36B738E00B54F25DD0A04892
          A1D320B188B05478B9CD6E24631256C231E82A9D92D6D16BACF2A4078D828851
          BED81DBEFA72ECDA1F8063B70F4414C178BF3A25C8C65348CC2F2319592BC859
          8086C1FEDF7C06257B9E54C06777E08EAEE192207099F63208562B08CFD0F8DF
          D0726A71A8021E2B3AAE9D8F63F59FDF583A933E9C14084EF3F008BFF545F3B1
          C67FD20C9FC78B331B78B63DFF0FC33A78CEB1F016BD0000000049454E44AE42
          6082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object BitBtn4: TPngBitBtn
        Left = 312
        Top = 8
        Width = 97
        Height = 25
        Caption = '&Alterar Nota'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn4Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
          20323030322032333A33313A3434202B3031303084501C480000000774494D45
          07D3080B0E3A131486BA4C000000097048597300000AF000000AF00142AC3498
          000002A14944415478DAA5D26B4893611407F0FFEE6E7B77D3391CB625EB6A10
          59E22DD1C4B4CCEC42841F2A31A2882E5E88B008AC840A41B40FB6C40F564238
          C32F466512CAC0CC3269A54217756CE826EA36DFBDDBC45D746B5BAC020385CE
          B7F39CC3EF393CCFA1E13F83F677B2A149D6256389D39C2ECF14E95898341BAD
          BD60A10BCD185F13A052C73D2B2B3C562C938A417044E0B2B878D8DD61EF3CF0
          363A580EAC0AE01A94D104F1E17ED925398BC143342142E38B0EE7ABC3EF84A1
          F2101B47DC0118B37C185E09D4212D637DC2CB9339F9520E830F7E14013E8F8F
          3A8D66A2FFC4C8A6504B1F104BF130285E467D9607EA3F402D94E9094A5D6692
          2246C48D0596825DA3E34B670E1532AB1FB50E7C3D67CC8CDCA3E5A392C645BD
          DB89BC020FB46140D2403C2EC94D3E4D67B8316C9873687586ABA0C06ABB57A5
          2E6F696EB45EA6CA23C0801005C1E15E5B16D0B39F427E1848D16CB3A8120252
          E3B4D339A83765A30A5F825389C060DDC0A2EF096EE25B04D049712B468CDB26
          0AF64C0B24616047DBC685783978DDA313D5FE72DC893407E290E8A0E394D083
          5A9A0DCED95824F984E8E3B221D09398499D813C0CAC6B9168E365FC9CE0ED79
          A8446F04F02547A999D989170DED9FCF130C2C33E3A21A244C9FD0EB5E86CE8C
          960C0BCEFE7AC426E46F914ABB7F58AD15B8800711C05DA478CF39BA279D7AF3
          D147A8823F4BCE0153264C8FB96C665B60672A89A9DFDFC86CA7578244D9528C
          3F05C5980F9D794BB7EB59C77355F07801BB13982761EBECB7FAF454917C1683
          2B17A91DBBE08102A5781E4A3DD7F739D9C57B0990F620E080E96EAB996E70ED
          8E2731F9EF4DFC2B827BCBF05EC972B06B6A78307F07268DF08F8C6151D3F394
          F8E42A591508239BB195E4F22AFC32813220102A680C9A82639C1D100C5107D7
          04AC257E02EF96F911D694BFBA0000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object BitBtn7: TPngBitBtn
        Left = 208
        Top = 8
        Width = 97
        Height = 25
        Caption = '&Eliminar Todas'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn7Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002C94944415478DA7D534D4F1351143DAFC3F4134A69453E6A21281A08
          548D44161850138841C5D8B030242E24BA70EB4A5DB971E7C27F606274610C44
          08183FA30B241A370423950F155309AD406BDB99B64C67E63D5FA7534417BCE4
          E5DCBCDC7B72CF3DF711FC7726DCE8141D64C0E9759EB095DB1A19634E555612
          99546E42CDB1B18124A6B6E79352300654D86BC9EDBAB6FAABFE76BFD555E504
          1805A80E681A320919D1F95F7A74317E7F5362D7CFC9D8D8221875A2AEB2C636
          12EC0F76791B3CA07915545579A15E2460BA416601432A96C6DCF4CA6C72431B
          0CA5F18DDC022CC71BC4918303C190BBCE0D3DA700BA59C891EA4502C691F037
          C1C2202772F8F42EF65689D07E32EE455F5B4FD3CBC68E3DD0D219405540E95F
          026690693CA6BC89424C516613115D96119E952E905701E15E67A87DD86AE36A
          1C1EC0E5313B30F59B480B5890B299058B7D83BAA962E663E611996E772E1CEE
          DB77009924C4D04D88BD97B1D3A1AB4BC8DEE806CBA511FE423F930F875CD160
          B7BF966552B00EDF85D83DB4230193E290AF3401B284C5657C25EFDBECD1E0B1
          9A5AE415082D5D20FED6A266C3426622D75F40C640B332F26F1E1A2E2D7DE704
          AF0396A58E9EEA66ABC8A5672540C9F11A5EA817FA45114BA32870149EEDC66A
          20BC8839F2D48B07CDAD8E8B0D7B6DC660603AC0CC416E15F24ACD9C2B290336
          D609223FD90899A8C629BB489EB7B48AF05611684A9E67B26203A68A2D57F99B
          E074414AAA88FC50A1E5D990B148477D18E712CE36B738E00B54F25DD0A04892
          A1D320B188B05478B9CD6E24631256C231E82A9D92D6D16BACF2A4078D828851
          BED81DBEFA72ECDA1F8063B70F4414C178BF3A25C8C65348CC2F2319592BC859
          8086C1FEDF7C06257B9E54C06777E08EAEE192207099F63208562B08CFD0F8DF
          D0726A71A8021E2B3AAE9D8F63F59FDF583A933E9C14084EF3F008BFF545F3B1
          C67FD20C9FC78B331B78B63DFF0FC33A78CEB1F016BD0000000049454E44AE42
          6082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Totais / Impostos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 16
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 3
        Top = 100
        Width = 83
        Height = 13
        Caption = 'Base C'#225'lc. ICMS:'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 30
        Top = 124
        Width = 56
        Height = 13
        Caption = 'Total ICMS:'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 248
        Top = 268
        Width = 54
        Height = 13
        Caption = 'Valor Total:'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 244
        Top = 100
        Width = 58
        Height = 13
        Caption = 'Total Notas:'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 242
        Top = 196
        Width = 60
        Height = 13
        Caption = '% Desconto:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 226
        Top = 220
        Width = 76
        Height = 13
        Caption = 'Valor Desconto:'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 298
        Top = 364
        Width = 76
        Height = 13
        Caption = 'Al'#237'q. do Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 236
        Top = 364
        Width = 40
        Height = 13
        DataField = 'CTT_ICMSPOR'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 10
        Top = 364
        Width = 222
        Height = 13
        Caption = 'O c'#225'lculo do ICMS est'#225' usando a al'#237'quota por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 377
        Top = 364
        Width = 32
        Height = 13
        DataField = 'CTT_ICMSALIQUOTAUF'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 33
        Top = 28
        Width = 53
        Height = 13
        Caption = 'CST ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object PngSpeedButton6: TPngSpeedButton
        Tag = 10
        Left = 380
        Top = 24
        Width = 21
        Height = 21
        Hint = 'Localizar'
        Enabled = False
        Flat = True
        Layout = blGlyphRight
        OnClick = PngSpeedButton6Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A46343139384238383138313831314530413245304444393246414339
          373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          4634313938423839313831383131453041324530444439324641433937333146
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A46343139384238363138313831314530
          41324530444439324641433937333146222073745265663A646F63756D656E74
          49443D22786D702E6469643A4634313938423837313831383131453041324530
          444439324641433937333146222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
          14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
          C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
          220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
          E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
          114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
          F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
          BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
          56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
          9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
          DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
          DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
          36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
          54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
          0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
          5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
          C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
          0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
          49454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label9: TLabel
        Left = 37
        Top = 52
        Width = 49
        Height = 13
        Caption = 'Aliq ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label57: TLabel
        Left = 11
        Top = 76
        Width = 75
        Height = 13
        Caption = 'Aliq Red. ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 248
        Top = 52
        Width = 54
        Height = 13
        Caption = 'Peso Total:'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 248
        Top = 124
        Width = 54
        Height = 13
        Caption = 'Valor Frete:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label60: TLabel
        Left = 268
        Top = 172
        Width = 34
        Height = 13
        Caption = 'Outros:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label61: TLabel
        Left = 238
        Top = 148
        Width = 64
        Height = 13
        Caption = 'Valor Seguro:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 227
        Top = 244
        Width = 75
        Height = 13
        Caption = 'Total Comiss'#227'o:'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 418
        Top = 146
        Width = 66
        Height = 13
        Caption = 'Observa'#231#245'es:'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label59: TLabel
        Left = 418
        Top = 266
        Width = 140
        Height = 13
        Caption = 'Informa'#231#245'es Adicionais Fisco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label93: TLabel
        Left = 60
        Top = 308
        Width = 106
        Height = 13
        Caption = 'Motivo Cancelamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label66: TLabel
        Left = 221
        Top = 76
        Width = 81
        Height = 13
        Caption = 'Unidade Medida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit13: TDBEdit
        Left = 88
        Top = 96
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_BASEICMS'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit14: TDBEdit
        Left = 88
        Top = 120
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_TOTALICMS'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit17: TDBEdit
        Left = 304
        Top = 264
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_VALORTOTAL'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit19: TDBEdit
        Left = 304
        Top = 96
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_VALORNOTAS'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit24: TDBEdit
        Tag = 10
        Left = 304
        Top = 192
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_DESCPORC'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyPress = DBEdit24KeyPress
      end
      object DBEdit25: TDBEdit
        Tag = 10
        Left = 304
        Top = 216
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_DESCVALOR'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnKeyPress = DBEdit25KeyPress
      end
      object DBEdit8: TDBEdit
        Tag = 10
        Left = 88
        Top = 24
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_CSTICMS'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit8Exit
        OnKeyDown = DBEdit8KeyDown
      end
      object DBEdit9: TDBEdit
        Left = 152
        Top = 24
        Width = 228
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'ICM_DESCRICAO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Tag = 10
        Left = 88
        Top = 48
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_ALIQICMS'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit52: TDBEdit
        Tag = 10
        Left = 88
        Top = 72
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_ALIQICMSRED'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit52KeyPress
      end
      object DBEdit16: TDBEdit
        Tag = 10
        Left = 304
        Top = 48
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_PESOTOTAL'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBEdit16KeyPress
      end
      object DBEdit53: TDBEdit
        Tag = 10
        Left = 304
        Top = 264
        Width = 0
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTE_DESCPORC'
        DataSource = DM2.DSConhecimentos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit54: TDBEdit
        Tag = 10
        Left = 304
        Top = 120
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_VALORFRETE'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = DBEdit54KeyPress
      end
      object DBEdit55: TDBEdit
        Tag = 10
        Left = 304
        Top = 168
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_VALOROUTROS'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyPress = DBEdit55KeyPress
      end
      object DBEdit56: TDBEdit
        Tag = 10
        Left = 304
        Top = 144
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_VALORSEGURO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = DBEdit56KeyPress
      end
      object DBEdit65: TDBEdit
        Left = 304
        Top = 240
        Width = 97
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_TOTALCOMISSAO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object DBMemo1: TDBMemo
        Tag = 10
        Left = 416
        Top = 160
        Width = 387
        Height = 97
        DataField = 'CTT_OBSERVACOES'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 17
      end
      object DBMemo3: TDBMemo
        Tag = 10
        Left = 416
        Top = 280
        Width = 387
        Height = 97
        DataField = 'CTT_INFOADICFISCO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 18
      end
      object GroupBox4: TGroupBox
        Left = 410
        Top = 8
        Width = 399
        Height = 129
        Caption = 'Seguro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        object Label62: TLabel
          Left = 16
          Top = 76
          Width = 38
          Height = 13
          Caption = 'Ap'#243'lice:'
          FocusControl = DBEdit57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 23
          Top = 52
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 26
          Top = 28
          Width = 28
          Height = 13
          Caption = 'Resp:'
          FocusControl = DBEdit57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 255
          Top = 76
          Width = 55
          Height = 13
          Caption = 'Averba'#231#227'o:'
          FocusControl = DBEdit57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 227
          Top = 100
          Width = 83
          Height = 13
          Caption = 'Valor Mercadoria:'
          FocusControl = DBEdit57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit57: TDBEdit
          Tag = 10
          Left = 56
          Top = 72
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_SEGUROAPOLICE'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit59: TDBEdit
          Tag = 10
          Left = 56
          Top = 48
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_SEGURONOME'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBComboBox11: TDBComboBox
          Tag = 10
          Left = 56
          Top = 24
          Width = 129
          Height = 21
          Style = csDropDownList
          DataField = 'CTT_SEGURO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '0 - REMETENTE'
            '1 - EXPEDIDOR'
            '2 - RECEBEDOR'
            '3 - DESTINATARIO'
            '4 - OUTROS')
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit58: TDBEdit
          Tag = 10
          Left = 312
          Top = 72
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_SEGUROAVERBACAO'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit60: TDBEdit
          Tag = 10
          Left = 312
          Top = 96
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CTT_SEGUROVALOR'
          DataSource = DM2.DSCt
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = DBEdit60KeyPress
        end
      end
      object DBEdit86: TDBEdit
        Left = 168
        Top = 304
        Width = 233
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CTT_MOTIVOCANCELAMENTO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
      end
      object DBEdit61: TDBEdit
        Tag = 10
        Left = 304
        Top = 72
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_UNIDADEMEDIDA'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Forma de Pagamento'
      ImageIndex = 3
      ExplicitLeft = 20
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label29: TLabel
        Left = 23
        Top = 20
        Width = 79
        Height = 13
        Caption = 'Condi'#231#227'o Pagto:'
        FocusControl = DBEdit30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton7: TPngSpeedButton
        Tag = 10
        Left = 428
        Top = 16
        Width = 21
        Height = 21
        Hint = 'Localizar'
        Enabled = False
        Flat = True
        Layout = blGlyphRight
        OnClick = SpeedButton7Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A46343139384238383138313831314530413245304444393246414339
          373331462220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          4634313938423839313831383131453041324530444439324641433937333146
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A46343139384238363138313831314530
          41324530444439324641433937333146222073745265663A646F63756D656E74
          49443D22786D702E6469643A4634313938423837313831383131453041324530
          444439324641433937333146222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E90E57DA40000021E4944415478DAA5923B68
          14511486FF3BAFECEC637609C6CDB02CA884D8D9286897C24243644108621189
          C58A5A586C2592F85C0B894DAA60A320A212502C34A0A28860A78D8DAE2F506C
          220A415C5F9B758EFF9DB9CBA40CE4C2E532E7CEFF9DFF9C739588602D4B6940
          E3F18CCCBE3C09E443C00B00CB031C3F392326703C13CB60C02D604BA68403D5
          114C0ED7540C502794A05A050A83405F893F66013B138B3C6523B41C0C50BC9E
          F18DD97508FD7E3CFDD6C2C39D170D60DA11542A40264832DB045024FB1FE1FA
          BB054CBCBA8190C0D0F5314471992E1F2CBDC79BD14B0670BA2828172956BA28
          56E6420E7D48EB9C1F63281BEF6D7D01CA6E0E0B3F3E416A370DE04C40409E99
          9701E9420E2FA5E2AB3B28CC1B400E835E0E25CB45ABFD19327EAF07F005A1B6
          DD66E6BFA9F8CA66420BDCB9580C969034D7067E7D81ECBB6F0067E9BB6243EA
          DDD58DEECE38F0731132F1CC009A7A0A747F70756F42DDDA9300265F18C07902
          36F0862E656F0A51B75942C4C9082F94976CFDF0FEFD01740FEA6F0DE01C0143
          54B057607932B612B29502D60DBE0B3804B2CC4E9B3DF80839B2D86B2201C3BC
          0F927F40BD8CAE80CC6F67408BF5EE10F09D25BC861C1303983280A201E81551
          5313CCB4AEE1F8F30BFC76352AB1DFE1987F730A8D1EA041C026E3C033006D80
          C9D065B0EB27D9C5E249C0F25702F8396500F5BBA7E4F29366DC449D04963923
          0D30B0287506BEB7A3BB9B98DB359D00D6B2FE03D3ABDBE11B7C767A00000000
          49454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label28: TLabel
        Left = 271
        Top = 44
        Width = 63
        Height = 13
        Caption = 'Forma Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label101: TLabel
        Left = 24
        Top = 44
        Width = 78
        Height = 13
        Caption = 'Dia Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label102: TLabel
        Left = 274
        Top = 68
        Width = 60
        Height = 13
        Caption = '% Desconto:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 338
        Top = 68
        Width = 111
        Height = 13
        DataField = 'CTT_DESCPORC'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 338
        Top = 92
        Width = 111
        Height = 13
        DataField = 'CTT_VALORTOTAL'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label103: TLabel
        Left = 280
        Top = 92
        Width = 54
        Height = 13
        Caption = 'Valor Total:'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit30: TDBEdit
        Tag = 10
        Left = 104
        Top = 16
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTT_CONDICAO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit30Exit
        OnKeyDown = DBEdit30KeyDown
      end
      object DBEdit31: TDBEdit
        Left = 168
        Top = 16
        Width = 260
        Height = 21
        Hint = 'Email'
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CPG_DESCRICAO'
        DataSource = DM2.DSCt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBComboBox2: TDBComboBox
        Tag = 10
        Left = 336
        Top = 40
        Width = 113
        Height = 21
        Style = csDropDownList
        DataField = 'CTT_FORMAPAGTO'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'BOLETO'
          'FATURA'
          'DINHEIRO'
          'CHEQUE'
          'CHEQUE-PRE'
          'CARTAO CREDITO'
          'CARTAO DEBITO'
          'DEPOSITO'
          'PROMISSORIA')
        ParentFont = False
        TabOrder = 3
      end
      object DBMemo2: TDBMemo
        Left = 0
        Top = 120
        Width = 449
        Height = 257
        TabStop = False
        DataField = 'CTT_CONDICAOMEMO'
        DataSource = DM2.DSCt
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 6
      end
      object BitBtn5: TPngBitBtn
        Left = 8
        Top = 88
        Width = 121
        Height = 25
        Caption = 'Simular Condi'#231#227'o'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = BitBtn5Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A30363836373538393138313931314530414433304144303933313530
          343430322220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          3036383637353841313831393131453041443330414430393331353034343032
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A30363836373538373138313931314530
          41443330414430393331353034343032222073745265663A646F63756D656E74
          49443D22786D702E6469643A3036383637353838313831393131453041443330
          414430393331353034343032222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3E4F3AA443000002204944415478DAA5933D68
          144114C7FFB3B99C512372A0248D28F875DAD86827882831102D44415444D046
          AC6C0C165E3C3541ACAEB050C91586A40821200443B4B0B053D0C6CE1054388E
          CD1991FBDECB7E3DFF9B9965530632F0668679F37EF37FEFED2A11C166868A00
          138B733259FA84EF9D2A56BC06E07780D0E54AB394D93B7A75EB40D3C6BD634F
          513833ACD600031FEFCBA95D59D8CE3FFC6AFFC51FBF8D1542ECD0872B810E0C
          08E53956AB406319289520CF44030E2FDC91739903A890BE4488ED39B0193075
          F41AAE1F1C829A3E4B884F485B2BE95045B90C19F53540CD5D95A11D7B51F15A
          F8BA4AA7D75E33B9329FE43ABE9FB3070853F259B74A0DF2B86600B3E725DBBB
          07D5D0C3B2DBE2BD96813421373F2790D7194E292AE92680BE7CDD00660605DB
          FA2833D0123D474382C81A905B3FD629D9C27BBD804D8579C700A64E0AB6F743
          2ECE6EAC7545AA28079047A6886AE2B8065C7EB731C01BD6A1C472E46240F190
          803540570FBD748AAB4D3105AB0EB9B42E85B7F4F318BF79E5610C78D5CF1AEC
          03D2CCCDA23CB06560DFBB1C067F4B82E719CC32A1495B22602406BC504CE108
          013B0948D308503EDBF825095E60B0326C761A8B04E463408180ADEC423AA3D3
          00FB6C79787EE20186B337F89D30D232A408503380B11830160178D8BD9B17A3
          3A845A458AED4CF1B934F4EBD1708D829F04140CE0EE875179F93E470092972C
          139432FBE8A70DCDCA22DE3E9D43F1C2130DD8CCF80F96B829F0EE23586B0000
          000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object BitBtn6: TPngBitBtn
        Left = 136
        Top = 88
        Width = 121
        Height = 25
        Caption = 'Imprimir Condi'#231#245'es'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = BitBtn6Click
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D650053612038204D727A20
          323030332031363A33373A3134202B303130300CD2793D0000000774494D4507
          D302110D1231EBE94401000000097048597300000AF000000AF00142AC349800
          0002954944415478DAA5D36D4853511807F0FFDDDC9BF33597D646D305439158
          59F84592A028A18220301854E2F760D2C83E49921BF66629080536587E181246
          248B42C55A98C54A885214F365393773ACBDB8EB5EEEEEEEEDEC82415009F9C0
          E5B987C3F99DE7B9F71C0ADB0C6AF3656060E0822257791C94B808627151269B
          73E445D135EF50F379E3A52D0187C3D172CE68BC47734082059219204D66BFBA
          3F7A4F1DA9D56E09D81EF6D51E3E71C65D5CBA1369B2982150840196E617F0E2
          C3FCB1BE4CC36B9828EEAF40FF23BB44A3DF172ED41F520E4D25C0B02C023116
          2CCF91078885D6FCEDFB23ECE237DF73FFEA6AABC964A27F03262727AF93E155
          11C54A39F90E0C2E17204FA144904E2395C9209CE2B0471C85E9208551D7DB91
          A6A68B0D64192F004EA7F3645D5D9D532A9552C96412B1680469360DEB2725CA
          8A0BF083200CC763DA17C7DDAA2964D2EB78F9E673E3ED5B370605607878F871
          7D7D7D633C1E074B4ACFE670308099B018A37439388E232D65E027459FE65FE1
          72F938AE4DA89F5ADADBCE0A80CBE55A34180CBA542A25003CCF63C5EB850C0C
          6ECE964152B8137186C5175F0AE6BD2B30ECCEC1BB89718FD96CD609C0D8D858
          ACA6A6262F5B7E16C9EE18080440AF47B11ACFC193EFA5C8E33338A058812438
          055F2004994CB6D6D1D1B14B00BABABA1C5AADD6A8D7EB5152522220C1605040
          242260796901EFDD6E4CCFCC22492AA9ACAC825AADBED2D3D37347006C36DBD1
          FCFCFCFE582CA6611806D5D5D52063783C1ED8ED76CCCDCD41A7D3A1A2A28255
          A9544ED2E27D8BC532F2EB2F64A3BBBB3B57A150B4C8E5F2D670385C48D334BF
          B1B14185422168341ABF4824B22512893EABD5EAFDE341DA8CCECE4E15496D04
          6A26809B7C97079148E4596F6F6FFA9F4779DBB7F17FE32734D03D2040527FA1
          0000000049454E44AE426082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object DBComboBox7: TDBComboBox
        Tag = 10
        Left = 104
        Top = 40
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'CTT_DIAPREFERENCIAL'
        DataSource = DM2.DSCt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 31
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Bevel4: TBevel
      Left = 2
      Top = 3
      Width = 3
      Height = 25
      Style = bsRaised
    end
    object dbSBtnNew1: TDBSpeedButton
      Tag = 1
      Left = 6
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Inserir Registro'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ParentShowHint = False
      ShowHint = True
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000033D4944415478DA7D936D6C935514809FFB76FD58BB96A55B075DAB83
        9574309421B08D1F83303B8901A331118989317E266A1635628CC15F2268E2D4
        8468C061A22110638204636202C91250499CFBA19292C868D7608595B66B57FA
        F1F6F37D5F2F2520FAC393DC7BCFC93DF7B9E79E7B8EE0BF32413F161EB3B799
        1FB65B6D01CDD0EDAA5A556B95C631A3CC61DE227CA7BBB8AD1DC02A14F1FEDA
        5EFFCB637DABAC3EB71D5555A951C1A4B690548B4C5D9A3322E9ECB746816724
        E8FA3F8003B82C56E5E4D3A35BEFDFD0D3C3E2F53499A28AA8B651AE65506B05
        6ABACA92560FD1748AA9682CD6C81A43EC21D30458265BBE1E7F706C575F5717
        894C8E54EE2A2B6CF7F07AE00B140366726778E1DC76FA5C410C9341A252E6E7
        686C4EBF46BFE063368636F6CFEC1ADC20FE4C5F215F51F9AB186599ED6E0EAD
        FEB519E0D1B909C6A7F7B0C6E392D1D469B7B8B95A2C129DCD3C294C87C4C137
        1FD9F19255D4D1AA66AC98892CC4E86E09F0DEC0899B80C8046F87F7B3AEE32E
        AC4A3B17B2E7A55F2BE1487A5A741E73FCF1C6D8B655B1FC459E70EF63ABFB51
        8C6676C4ED0C376DF4A65DA9D758FF9D8FBA49271E2FE484FFAB25F3CF8F8C78
        238B17D91DF89CFB1CA3FC9FDC80AD3CE1416B94492EA825B1ECA8F3CA739B86
        7CE9428A5EC7203EF36A32F5385E6B90C77BC69B87A63367381CF980E5B67BB1
        09139F5D9AA4A1374866CA65619914D1678786038AAE912AA55868E4892C9618
        ECECE7E496DF9A8077CFBFC2DE539F60F20A141D5CD65684AEC8DF2AA585AC81
        23C3BDFEA736F97D24D4123420A2CEB1BD6327FB068F34013F24BFE7816F1E22
        E8F592AF15D10C8342B54EA158FD49F029A11645990A0597E36975704DCD335F
        5C606469880FD74B80A2F0E5EC47EC3EBB1767870597E29489ACCB680B180DE3
        55C14E4C6CE1AC62524636AF5849C0ED27914F12CE5D269BAAA265058653A7DB
        6F27D8B6964C39C7EFC95934AD11A7C0BA5BA5EC919873520B76B5B919F60F30
        D0B986A58E6E9C662755ADC22FF3614E5D3E4DA298C2D08C947C6A88D7B87067
        33B924E4B8FCA76DB28350EC0AA686826131D0177574B9CA7DB9410C8D517938
        FEEF6EBC2507D92C212F4A6D4C8EF666FD28D4E53C23EDFD24F991776E5C7153
        FE06D6E655FB1480CFD40000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      DataButtonType = nbInsert
      DataSource = DM2.DSCt
      MenuItem = InserirRegistro1
      DisableReasons = [drReadonly, drEditing]
      RuntimeEnabled = True
    end
    object dbSBtnDelete1: TDBSpeedButton
      Tag = 1
      Left = 31
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Eliminar Registro'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ParentShowHint = False
      ShowHint = True
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002C94944415478DA7D534D4F1351143DAFC3F4134A69453E6A21281A08
        548D44161850138841C5D8B030242E24BA70EB4A5DB971E7C27F606274610C44
        08183FA30B241A370423950F155309AD406BDB99B64C67E63D5FA7534417BCE4
        E5DCBCDC7B72CF3DF711FC7726DCE8141D64C0E9759EB095DB1A19634E555612
        99546E42CDB1B18124A6B6E79352300654D86BC9EDBAB6FAABFE76BFD555E504
        1805A80E681A320919D1F95F7A74317E7F5362D7CFC9D8D8221875A2AEB2C636
        12EC0F76791B3CA07915545579A15E2460BA416601432A96C6DCF4CA6C72431B
        0CA5F18DDC022CC71BC4918303C190BBCE0D3DA700BA59C891EA4502C691F037
        C1C2202772F8F42EF65689D07E32EE455F5B4FD3CBC68E3DD0D219405540E95F
        026690693CA6BC89424C516613115D96119E952E905701E15E67A87DD86AE36A
        1C1EC0E5313B30F59B480B5890B299058B7D83BAA962E663E611996E772E1CEE
        DB77009924C4D04D88BD97B1D3A1AB4BC8DEE806CBA511FE423F930F875CD160
        B7BF966552B00EDF85D83DB4230193E290AF3401B284C5657C25EFDBECD1E0B1
        9A5AE415082D5D20FED6A266C3426622D75F40C640B332F26F1E1A2E2D7DE704
        AF0396A58E9EEA66ABC8A5672540C9F11A5EA817FA45114BA32870149EEDC66A
        20BC8839F2D48B07CDAD8E8B0D7B6DC660603AC0CC416E15F24ACD9C2B290336
        D609223FD90899A8C629BB489EB7B48AF05611684A9E67B26203A68A2D57F99B
        E074414AAA88FC50A1E5D990B148477D18E712CE36B738E00B54F25DD0A04892
        A1D320B188B05478B9CD6E24631256C231E82A9D92D6D16BACF2A4078D828851
        BED81DBEFA72ECDA1F8063B70F4414C178BF3A25C8C65348CC2F2319592BC859
        8086C1FEDF7C06257B9E54C06777E08EAEE192207099F63208562B08CFD0F8DF
        D0726A71A8021E2B3AAE9D8F63F59FDF583A933E9C14084EF3F008BFF545F3B1
        C67FD20C9FC78B331B78B63DFF0FC33A78CEB1F016BD0000000049454E44AE42
        6082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      DataButtonType = nbDelete
      DataSource = DM2.DSCt
      MenuItem = EliminarRegistro1
      DisableReasons = [drReadonly, drEditing, drEmpty]
      RuntimeEnabled = True
    end
    object dbSBtnSave1: TDBSpeedButton
      Tag = 1
      Left = 56
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Salvar Registro'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ParentShowHint = False
      ShowHint = True
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000033E4944415478DA5D935D681C5518869F99497692D94DD2A4D9C4A449
        D398A4A669B1E9668BA158B4D41BA1C10B8562A9E04583052B29E27A9180452F
        542A18FC8968030A12F10FB5454A8B144AAB22D1B4B5C5A046B217CDD266F3D7
        FD9BDDF91FCF8ED45A0F7C73CE81EF7DBFEFCCFB7E12FF5FE3F4A3B2AF21ACED
        A9ADAEEAC6F7C339C35CB9552C9DF65DFF1447B8F8DF74E9DFD33134A98917FB
        376D7C6167674738AA85B11D1BDBB6310C93A57C9EAB8B37DCF995CC87BEC74B
        8268F10EC1EBD469D1D037FB071FD8D37B4F33A66952340C4C11B66561390E79
        5B4753EAF97335C5A5851BBF974AEE1023CC0704D59315279E7E68F77057B491
        6CA12008ACA0B25526711D6E99393654DDC7C8E637B8B47681F1DF5E6526953A
        6F1BFEA3126F127F38D63B3DB4FD7E792D9F4137757C5BC2B11D4CDB2223C0CD
        EABD8C6D3D414B5547D0F0E895613EFAE3631657AD2725E503E9F89147F6266A
        55859053435728CE0F4B5F633816794116911B19DB364957646B003E797D8AD7
        AE8D92738ACCA5D7BE92A253919F0EEDDE3558E9AB1C8C1EA3471BE0FCF2E74C
        FC35CA7AA58D44DF04DD35DB02F0E9D4978C5D7E16D373F13C9954263B27B57D
        BA6E767F7C7B5FADD4C8E1B6719AD4F620F9ECCD4FE808F7B2A57620B87F9BFA
        82577E7D9E9CA523F9155882249D2FA4A5E6A99AD903033BFA74F1D626A593A3
        9B27581F6AB9CB1ADFDD3C45E297614C21ABEF2BD89E27C26525AF2F49EAA432
        736047FF802ACBAC94D6E809EF24B1E56DEA43D1003CBD7C91919F9F0A7EA62F
        2ADB429580C0F558D60B498977783FDED1FA4CACB545241942B20CDDE118C763
        535C599D26317328008368DB754538B8BE2FD4B2C997CCB312EFB2570D29E71E
        DCB491866A8DAC5D2253CAD15FBF8BF95C92057D0144E5B21FCAE0905C251472
        582EE4F01CFFB0242C2C13E564A852198A6D68A7AD264ADE2AB2584C63780E9E
        2B8BD625545923525947D6D0496616B06C67169FC17FACFC165DA2C33382AAA7
        BBBE95DE864EEAD4750208E2A962C98127E6324992D9EB82D45BC5E3319EE3C7
        3BC334413B655FFA3C21F2D142D5442AB4605C8A4E095DC8E707647C2FC04705
        F8F2DDD3787BBDC7E3E2BB4F10C545B48A0C45DCD362BF5AB687387DC6CB146F
        A7FF0DEB1083F29116A7680000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      DataButtonType = nbPost
      DataSource = DM2.DSCt
      MenuItem = SalvarRegistro1
      DisableReasons = [drNotEditing]
      RuntimeEnabled = True
    end
    object dbSBtnCancel1: TDBSpeedButton
      Left = 81
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cancelar Registro'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ParentShowHint = False
      ShowHint = True
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000033B4944415478DA5D935D681C5514C77F773233BBB3599BDDB0C926B8
        4DAD065BDCA62956FAB4A60F564308D93614C41AB4208258F149944AAC05BF1E
        447C52F003452BED43455B6AD3A82D0A4AA884B462FA611BD3626D625A9B4DB3
        D94D32B3F371BD3BA1C17AE0C23D977BFEE79CFFFF1CC1FFEC509236CB201FAD
        B372917864B54426DC796762B1681FABD81CCE1739FDDFFFE2D6E5205877A4C5
        EBE9B5E967EF5C9789AD48D58294EAF8041597F94289C9DFFFB1AF8FCF7CBA68
        CBFEDE22B3CB000757509FAC33F6653BB3DDA9D549A4E712D815D034F03C75D4
        5D48341950982C73E1E4D513E542B0235F663A0438BE523FD0DEB37E47226DE1
        0B0B73EB4B78A707F1468E40106074EE4234DE85F3C56E742D60F6C622A343D7
        BF1D9A943DE24892DC9A5CCBCF776FCCE08928E6CE77D156B52317E670DE7F0A
        916A21B2F39DB01AF7FB8F70F6F7A31B3A93975525A3E56DE278467CF040EFFA
        67A256B5181D73FB2B689BB686BCC8F24D4434AE9E8DB012E7B31714C827889A
        1A5CC7E7D7E1F20131948D9DDDF0486B565364F98A6654FF91BEB7D03B1E5FE6
        58DA259CCF77E37EF72118D1104C043EE7CEBA67C42FEDB5536D1D9926FC4091
        5741966E62F43C4FE4B1D754BCB604509860E1CD6DF8174F21228612C6579C06
        8C8D332E4E66A3536DB92605E0212B0EE696A731FB54B0A6DF361FB230C5C21B
        79FCF323F8FA92C27F5C560027566A17377634DC6B04F3D4B43D44F4E5C3CB41
        CEFE57D1326B3036F785BE37FA23C5171F2650ED7A015C18E3BC18A8675F6B36
        F6444B8B8E270DCC47FB31BB9FC3F9EA6D9C8FF7E05B16F13D5FA2AF7B90D9BD
        BDD8C33F204C982EC05F131C120329BACC883896CD9AD4C5DD6A2788B539DCDF
        7EAA72B5E427EBA1B915FBD4307AD2A234E773E552858ACF9362AF1269538A41
        CB64CB3DF7C54834C6F0CB736A0003024F8DB1AC92AED4302CB46413A5199BAB
        E7A6B0ED6024986673A8D3D104AB94B45F0B9DFB13E9380DADCDD4363722AC5A
        A422D373D42E5C2B5018BBC2DCDF33C8409E5161BD5D37B8B4BC4C471B68AA91
        BCA7326ED7AA0963864A6A22D52C786A2FDC79B50FAA1A3406A9B0ABABC89FB7
        6DE32D1B6CA053BDE609D8A0C09AC33F826B0A7454F9DF744F33C0125468FF02
        A6CC5D9FA5582F350000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      DataButtonType = nbCancel
      DataSource = DM2.DSCt
      MenuItem = CancelarRegistro1
      DisableReasons = [drNotEditing]
      RuntimeEnabled = True
    end
    object SpeedButton5: TPngSpeedButton
      Left = 502
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Fechar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = Fechar1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002A744558744372656174696F6E2054696D650044692036204A756C20
        323030342031323A33393A3034202B30313030D74C612F0000000774494D4507
        D407060A283B33F1B50D000000097048597300000B1200000B1201D2DD7EFC00
        0002634944415478DAA5D25B4853711C07F0EFD9DCE674DA92BCA4D2052C8232
        2AC25E7C8808BA08E94BD6930FF9D08311B50A8C4A239D9237623D34D1AD1808
        DA704497534817052358A5DD1E235B3BBBA9F3CC5DCE767676FEEBA03D44FC89
        A0DFDB8FDF970F7F7EBF3F83FF2CE6F7C666B3BDD1EBF55BE58CAC4A8A129314
        09238A924A4C4B8C246554B224C8A2987CDBD7633E4005C6C7C7A31E8FA76039
        2E614FF546D4548C4295FE0E2D1691031E3A243034752CD272E5E15A2A707F6C
        2C3AE70B16EC6C3C0B8306A80D566221520259570D9154419370C1F9BA3C7AEE
        3ABB860A381C8E652E102A3CD47C11B96AA0EA6B31964A3F8131AC473C0EE479
        4F6184F5C52E99270AA980DD6EE7FD81A0B1E9FC6568548061B60C02D90764FC
        605233D06509EE4C1D89B5763FA503C3C343BC97F3195BDBDB5706A9E94A6412
        3E902C400890A3A0D6978763577B9FD101ABD5CA731C67ECE8E858E917274B41
        E2F3C82A29F917707BE2A0D069799E4F052C160B1FF0FB8C5DDD0D4AA747F045
        3D32DBDC08CF34631D790CB5921E60F70BBD839374A0BF7F80E7FC3F8CF92D1F
        50A2DD84C6CF2CDE459AA189B3D862FC08ADB2D8BE47B5C2ADBBD374A0E7666F
        3810E08AC88559946936A3C9FD04E9E4225299D5E7EB7280AE073549EB883B8F
        0A983BCDE150285854D4F30DC5CC061C6547914EF16098D525EA95BF71C3B95B
        B4396773A9405B5B9B8F5FE2CBF71EDF8E2A75058AFD2721A713AB43E512DE90
        4EB9C28E2F2EF67D351530994C6718A81B85145938D1B0ABAE6CE9B42E161110
        8D8228CEAB34811DF370D50F224505FEAC892E664E48661D1A2DEED55DC31C2D
        F357E05FEA2795600C20CCB9362A0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object Bevel7: TBevel
      Left = 472
      Top = 3
      Width = 3
      Height = 25
      Style = bsRaised
    end
    object SpeedButton2: TPngSpeedButton
      Left = 136
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Localizar'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = Localizar1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D6500446920313620417567
        20323030352031333A35373A3530202B30313030D18698470000000774494D45
        07D3021A17370C9DC27950000000097048597300000AF000000AF00142AC3498
        000002504944415478DAA5D25B4893711806F0E7BFCD2D0FC3920CA15088D24C
        3021942C892CE848897461DD4482991D202258B4A5E29442BD48AB8903574A84
        A2699A8EA8AB52CAA524E1C0A985A7686B5B3B7CEEBCEFDBFEAD8337F55946CF
        D5CBC3CBEFE2E525F8CF90A5C1F6C51AD5DFDB277371EC1951EC9A640FE35874
        7F9AEDA122F1F5AAEA1AE31F81E9A929914EA71B589B997D20352B1D761F60F2
        0056B39D9AB4F78D3EBB25EF466DDDDCB2C0C3B6D64B7119D90DF9DBB77E2FE7
        DC1C161C2C2C3E024F90C2DE79F3596575F5C16581DB4DEA77B9C5A5DBD60BC3
        20149871B3B0BA3858235080C48019D1D28557FD1BD42DF78CBC40635BBB7BCB
        E113B152124090522CFAC3607C21301E0E94881134BEC7A846B9BBA3FBF1102F
        507FB7797EDD91D26411EB8620D2F8390A7F200C873F84849818380CA318EF6A
        CC687FD433C10B54CA65AAF842D979915802845870610A2F4B21A404ABE256C3
        D657F7A1A6FC5A6A6495F203E58A24A134614C905F96F4AD23210ED16211C202
        0902634FA8533FE849CECAD5A5681B0A8E750E7B79FF407E55B6592C897A4036
        EEC89124A650D6C3C06778F179D1F431AAE6963AF16DCB45E43FD5F492197F11
        9944F03760296525C5998CD3B92910646DAFDF8C0C5F51289BD3E864F1D1BD0C
        60B001DD3A2D7496E3641E015EE0D79CABB8107F6748D5203CB5FF3476A503E3
        F340D7D073E86D856402DEBF02F87139010AA56A1CCA29C19E3478F52ED42EE4
        4D2B2F9F4D5B11F0132128886EF2EDDB59662EEA42ABBAB9A3AA427E72C5C012
        A2A8AB1F14FA83B376B351A352A95EFE13C097AF80C00720CBD40D5100000000
        49454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object Bevel1: TBevel
      Left = 132
      Top = 3
      Width = 3
      Height = 25
      Style = bsRaised
    end
    object SpeedButton6: TPngSpeedButton
      Tag = 1
      Left = 161
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Relat'#243'rios'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = Relatorios1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002A744558744372656174696F6E2054696D650053612038204D727A20
        323030332031363A33373A3134202B303130300CD2793D0000000774494D4507
        D302110D1231EBE94401000000097048597300000AF000000AF00142AC349800
        0002954944415478DAA5D36D4853511807F0FFDDDC9BF33597D646D305439158
        59F84592A028A18220301854E2F760D2C83E49921BF66629080536587E181246
        248B42C55A98C54A885214F365393773ACBDB8EB5EEEEEEEEDEC82415009F9C0
        E5B987C3F99DE7B9F71C0ADB0C6AF3656060E0822257791C94B808627151269B
        73E445D135EF50F379E3A52D0187C3D172CE68BC47734082059219204D66BFBA
        3F7A4F1DA9D56E09D81EF6D51E3E71C65D5CBA1369B2982150840196E617F0E2
        C3FCB1BE4CC36B9828EEAF40FF23BB44A3DF172ED41F520E4D25C0B02C023116
        2CCF91078885D6FCEDFB23ECE237DF73FFEA6AABC964A27F03262727AF93E155
        11C54A39F90E0C2E17204FA144904E2395C9209CE2B0471C85E9208551D7DB91
        A6A68B0D64192F004EA7F3645D5D9D532A9552C96412B1680469360DEB2725CA
        8A0BF083200CC763DA17C7DDAA2964D2EB78F9E673E3ED5B370605607878F871
        7D7D7D633C1E074B4ACFE670308099B018A37439388E232D65E027459FE65FE1
        72F938AE4DA89F5ADADBCE0A80CBE55A34180CBA542A25003CCF63C5EB850C0C
        6ECE964152B8137186C5175F0AE6BD2B30ECCEC1BB89718FD96CD609C0D8D858
        ACA6A6262F5B7E16C9EE18080440AF47B11ACFC193EFA5C8E33338A058812438
        055F2004994CB6D6D1D1B14B00BABABA1C5AADD6A8D7EB5152522220C1605040
        242260796901EFDD6E4CCFCC22492AA9ACAC825AADBED2D3D37347006C36DBD1
        FCFCFCFE582CA6611806D5D5D52063783C1ED8ED76CCCDCD41A7D3A1A2A28255
        A9544ED2E27D8BC532F2EB2F64A3BBBB3B57A150B4C8E5F2D670385C48D334BF
        B1B14185422168341ABF4824B22512893EABD5EAFDE341DA8CCECE4E15496D04
        6A26809B7C97079148E4596F6F6FFA9F4779DBB7F17FE32734D03D2040527FA1
        0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object DBText1: TDBText
      Left = 730
      Top = 2
      Width = 85
      Height = 13
      Alignment = taRightJustify
      DataField = 'CTT_DTATUALIZACAO'
      DataSource = DM2.DSCt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 730
      Top = 16
      Width = 85
      Height = 13
      Alignment = taRightJustify
      DataField = 'CTT_USUARIO'
      DataSource = DM2.DSCt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton8: TPngSpeedButton
      Tag = 1
      Left = 266
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Finalizar Conhecimento'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = FinalizarConhecimento1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D65004672203138204A756E
        20323030342031363A33303A3432202B303130306A18F9FD0000000774494D45
        07D406120E1F34D65B490C000000097048597300000AF000000AF00142AC3498
        000002524944415478DAA5D35B4893611807F0FF77DCF6E5BEE974CE39378339
        9A16092D45B28831462EBB896E6297751354445D144424961725D109A4BA2FBB
        F3BE83E1452D2A6B91B1B90EB3B4E6FC7236BFDCB7F3DEC62EA26C65873F3C37
        2F3CBFF7E17D7928FC67A8E50776BBDDCC711C1D0C0667FE1AB0D96CFD0E87E3
        84A228A9582CB623140A8DFD316032998E7474749C733A9D14CBB2181E1E5E4A
        A533DEC8DB37F75704F47A7DABC56209B85C2E154DD3F0FBFDF06CF3C26C5BFF
        74FBE2CEAD39066B799AAD1653F931DD61647F02B45AED8DDEDE5E9F20088844
        22E8DAD48DDD3D9BD11CBD862499276A5D33C5A834483DBCFDCAA84BF43007E5
        A91F0083C130E776BBEBB3D92CA6673EE0D2F98BE85AB8025ACB00AC0628E640
        E664904603E4E0789E9F93AE0B27A7F6949A4919E0797EAF288A174AAFAF3DDE
        771A5EEA056CD6CFA56611449181640EC9C004185E80668303E9C83BE4166356
        71E0F5CCF7BF602ED5C0BE4347F5FDE6114FFD9A6E0D688242620985C9F760DB
        5BA048D3202129AC617407D8CBCF46BF4DB03C0B8375F7AAEBB6B8A89A2A9074
        06948A05542AE4651969394E4A13DCE185AC4FD7178D5704C8906893A49A0786
        DA7546CA20021C0779365CBE8F2A14213458917C3EF1447736DC59112823674C
        6D72B2FAB1D8B671951C0E803736202D45A1A96D447E3E8EA2920E8B8321C72F
        813272CADE9952D4A3BC65755536FA117C531372920496B0A03F253CCCD0CBBB
        BF05CAC8B1566326CFDD62B535EDC5F9851823A833B4427C23F1F147BB6EA2B0
        225046003AB7DFD9C21592B3D4D5C92F1577E15FF3159E30E111256A70F10000
        000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton10: TPngSpeedButton
      Tag = 1
      Left = 396
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Endere'#231'os'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeEnderecos1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D65004D6920313720417567
        20323030352031313A34353A3131202B303130303ECCAB370000000774494D45
        07D3021C0115017901C3D3000000097048597300000AF000000AF00142AC3498
        000002B94944415478DAA5D35B4893011407F0FF3675172F9B9999BBD8D2E682
        4449CD52A4A2A2B08C90D42CBAD90D52488344A21E7AB127A98C92B0EC25A48B
        E4938E4025A74BDBA66B65338B79D7A9DBDCA67EDFB79BFB96F5208C1204CFE3
        E19CDFC339FC19586731D63AE828484FB385091E07C54A123D46432B453A4B93
        5BFAED6B021C199B786342F130EF587E0C37828F79831E6E65FBDB54E570D13F
        8062D6BFB3FF174E0D5ABC72925AF08478FC7D27DE5C188EA7358DA1DBC408E6
        86C06DB7C36124E6B354D3821560C8EF67779AF4B5CA016DB195D63316492106
        468B617152102E127487663F33222D1AECD020B8281F46BA496D96CA94B102BC
        1C3334765BF3F2A3DCD5D822D48274B2D0A62B47AF79014C9B0EE59DF77176C3
        38A292F818D253338E3EEAF83ED35CEF5FE085CE7F524367370AC2450CB9B301
        0902266C4B46741885508C9B91D47A193373E1B02524F9CEB7ABF20E0C77B565
        01CE952F94B4D47C98644D1D1138AB7078BB1952AE10B3E412BA2629283FABC1
        6CAA44DFD15448B7D683A154558C34645707BCB1A0E9A69923FA182D8C0E435C
        7832E889DB989B8F846E9682D64C635A550F48EE61335F02A1A9ECB5EE59D999
        00E0D0AB6B76769C422015C482C3E1C13C5E82D1C9839826084C11C170071782
        B6FE8498B805BE3DFEBDA1A1303F00C87CF8A8C7227EB04716E5474C841BEA2F
        4DB02F4AE070BBE0229747829F00561F5245BD98505DAFB2345FBC1B00E456EA
        6E34733FD570D81BE172ED0298CB4D9F0BF07A01CA031034F8F24C24DAB3696D
        FB9D146872BE0700B20A359B15F24E33E88B4B066B799BD80BF8FF004BCBB7F6
        228C76215D568D6F3DB9B5364579E97FB3B0FBEA57B139B4AED9237F9A62313C
        07D329059F4142C22310E923FDFA414183858AB8849E1CEFEA613ADD11B26369
        FC8A486428A2C97899D3EDF3DA16A1FB610AAF83FA9C625D695CAD7E0371D236
        2001CB89730000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton11: TPngSpeedButton
      Left = 216
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Localizar Conhecimento no Contas a Receber'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = LocalizarConhecimentonoContasaReceber1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
        312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
        2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
        6969643A35393943374435313137464231314530393136374537443531333430
        343741322220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
        3539394337443532313746423131453039313637453744353133343034374132
        223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
        616E636549443D22786D702E6969643A35393943374434463137464231314530
        39313637453744353133343034374132222073745265663A646F63756D656E74
        49443D22786D702E6469643A3539394337443530313746423131453039313637
        453744353133343034374132222F3E203C2F7264663A4465736372697074696F
        6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
        636B657420656E643D2272223F3ED5EAB92B0000030F4944415478DA75935968
        546714C77F77E666EE4CC64C268B83E844CDA016B7041B7021C6A51A532DB522
        863E141F44C1560BAD94963E140B8248AC22286A248808BE541195E441AAD5B8
        3455D19226D32C663189594692C96492993499EDEB196314A91EB85CEEB9F7FC
        EEFF9CFFF934A514C9A8EABCA93EF57E052A4ED5A2337C32BB58EB0F0DA8D4A6
        1662633E94C9C092350B6B8E0753AA4DE355689380DF7BEEA9F5435B20FE2FD5
        D937F1186E2CB57F93E68A639911461BAF63DCE7251A184045F3709654BC8468
        951D37E49F71FEECAFA58CC3100DF3B37E10D7F31EDC6983ACCB5B8AD5F061B6
        7483E93E585B887699785A7984857BF7691A95B90A4F1CC241B067C198DC7BFC
        A244F001F02DFD82CC99B388871AD14357D0DD92B795D27AA10FCBFC13685C9B
        ADC81D858855FA1F82D161E8978FC6E5128EAF643569297E54C28BEE7063585D
        A0FF45AC0B9A1B4EA15D6DBFAEBA837DD47BCF7266AA480C4151D060FB9C85D8
        9C213E5F348629DA852945FA1D2985814B2042076E43FDD0F1892106EE5F56B7
        82DBD8969CA7083866860DF6AD38DD0F301CBD383DAB308757415B19A444E105
        5CBCB88C8D876E4D00464E2F570F3D0F296E138074737E9D938DE9A504DB6AB0
        A53B99FEE12EB4678F217812047EE7AC74BBE1366B36AFD1B4B0B75EE90F1663
        298084C84FD87365505F83D346643C86D9F601E6C10E68DF0D99D05905FF988E
        B0E99BEF266C1CBC7C40A5EBFB3165C853B20551F8D2819C9D24E61C454BF889
        357F4F8A11C2DF14E58FFA0236FFF4CB9B45EAF8D1A15CAB87D1445A622C9911
        BBEDA9C42C85681945607130FAE85BACF2AEFA8E9D995FD690BF22EF0DA0F1D0
        0E15E93F8733078CE992B00B482F22DC758F8CB94B24F71181EAA378EFC24841
        39A5FB76BF2E7EBDCA830D8DAAE9F41E8C6835594B243B45D64276207BB92E56
        E6D35AF184E7693FB0697FD95BC56F9D85505F40853B1A692DDF8E23B31DFB3C
        98BA5646D223533FB580C29377714DCB7A3F6032867BFDAAEDD70A222DE5CC2B
        EEA4AE469C5B7983959FADFF5FF13B0193116C6856BDBF5D2032BF90FC928FDF
        599C8CFF0065F63A51FDED5A450000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton12: TPngSpeedButton
      Tag = 1
      Left = 296
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Clientes'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeClientes1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
        20323030322031363A34333A3036202B30313030DB0550ED0000000774494D45
        07D30308000F005DF28AD1000000097048597300000B1200000B1201D2DD7EFC
        000002924944415478DABD935D48935118C7FFEFBBED659BBAF9D51C73A6D907
        E5EC835E910C4CA6B5AEB2288CBC884054A884C20BC3C89B20252248446B6192
        9861091911415D2826992833872462CC745BB969D37DBFEEE3DDDB416110DD55
        F4C0EFEA9CF33BCFFF391C0A7F59D4BF14506F1A511B8EE0BC8841622000B34A
        8996D29B98256B1AC236C22EC277C2DBDF04AF1B70974A40BD2A0390C9804814
        B059E02A6FC6359D6EEF7D995C2E99FB320FAF7B4520DB2F107AE282A7F5C8A3
        294CABD4A017AD00C32481E77DD0A5A7096C53C052A22FDB6136BD079BEBC30F
        0F609E47073976392E78508D2B5B32702FE0078E9554415D5006D022C03E84E4
        6263C41381C4D607F8D7019F17703BD169B8859AB8C05883BAE414B4B956818B
        55374806052012038E09D086BE57CF1B84F2AC2C204804417209EFC69D93AD68
        880BBAAF42CBC4F0998B4271CE500959FA56D20119826564B6891E67B38661CB
        542055204DF95CC0703673DAD8141EF86588D515FAB3C9C24CDF51AD933ACEE6
        23E891A2F8F1A927AA76A3323FFBCC896067175871019E296CB0C8A2BEE09A43
        BF54CF993605FBBAB590C94DAAA23D2A6EC1899703A5E8EDB1A3EBD134F28A26
        50D7A2843F2AE0C304793D89049C380A53FFD088AB79FDC8A6607F47BBE640CE
        25A53A05F35356D4561D84D5B282A96F3C16471DB83EF811544C0A1F1780D3BB
        0C27E7C4CCBB497EB9D12DDE10D0873AE7D4BB3377CA12A5609409589CFCBA91
        2DB7703B16C65C28ACED450E4B2118E6E172AFC03EFE09569B67C67F3BA4DB10
        50ECC34146CEE893D44AA46AD320963288F131781D6B589AE5D6D4A5AD6D0939
        631A2E40CBC321C1158AC646BD5C74002D086D4638FC4282305F095A304024D2
        40A07844227650A23144847E982B56FFCB67FAA3FA09C32401201343FEE70000
        000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton13: TPngSpeedButton
      Tag = 1
      Left = 371
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Condi'#231#245'es de Pagamento'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeCondicoesdePagamento1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D6500446920323620417567
        20323030332032323A30323A3031202B30313030A85E82D30000000774494D45
        07D3081A140313E31621AA000000097048597300000AF000000AF00142AC3498
        0000026D4944415478DAA5935D4B146114C7FFE3A63B1A8554E00A895076D385
        17111814B2BE61815110B592AB8B826DB2D0651F610922E8136C5D86186485BB
        ADB6AB6EA282118199171AE6A60511A9BBEB3C33CFCB74661282C69BE88133FF
        9967E6FCCE735E46C37F2ECDB98C0C0F4F9E6EA86F8212B0F75E082561710E21
        05A454E0426179656D6E6828D6E201BC9F7F63843E9FD7973F6D03C5025070AC
        04941C2D92EDA2A1D68F873D82755DB95EE901BC9D9932FAD62FE86BEB5B28DB
        2DC0DE0338AA1150EE1470FC6805EE873576F55AB7173095CD1ACDC1A0FE67DB
        498403925356C24DC5E20ACF5FBE62BD7D7D5E407A7CC2E8686FD32DF97B4792
        929F6B9C5BAED9B6C4446A94F5F747BC80643A675CAC1DD24B5BCBB0AC03640A
        96A99102A665D33DE0F31FC1BCF5800D0EF4780163A99C71A9FE8E6EFD7C471F
        97B98E9669933329D7E8048A0075982EDC436BF09C5C5AFAC0F3F9FC5C2C166B
        710189478F333581134D423A8FAA4A2A05457948619191DA0AB63061EEE6118E
        DC46B12490799D62A150A852FB7B30D6F35F445DCD211F164700C6A9131CDA29
        13CA2F20A8AE9CEA52286F47666685F5DCECF602B2B95923B8F554C7E228017C
        90FE6DF08EAF5006D5830106A93C7C19D98D5E1609DFF002D2D99CD1B1F944C7
        C233CAC60771B0849DCE1F2E80BAE916D4AEEEC2E44698F547F63941323D6EB4
        369ED42BEE9EA17014725BE07BB70FACDA049584461B283F3B8BF1E98FECD6E0
        C03E8064D2686E6DD7054D64C5C21864D531B0C64E989BA310C6378ADE09CDE7
        476AEC058B46A35E402291C8040201EA0875C29947AA9CB46822A50D4E9D5174
        0C453FDAEAEAEA5C3C1E6FF300FE75FD024B066320F5F3DA090000000049454E
        44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object Bevel9: TBevel
      Left = 212
      Top = 3
      Width = 3
      Height = 25
      Style = bsRaised
    end
    object SpeedButton15: TPngSpeedButton
      Tag = 1
      Left = 241
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cancelar Conhecimento'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CancelarConhecimento1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
        20323030322032333A33313A3434202B3031303084501C480000000774494D45
        07D3021B00140B1CDA4902000000097048597300000B1200000B1201D2DD7EFC
        000002674944415478DA6364A01030D2D600D7BD620C7F9F57F24A8A07B0B3B0
        08BD79FEF62A2B27E7A6DF1BBD3B081B1079DE4254F8FB8696444BF1DFCC0C0C
        0F3F32301C7BC1C070EDFC6B86F7672E4E65D8E39A83DB80F85B3A4A92DF8F4C
        4CD3E35F7A9181E1C32F06869FFF19183EFE04E23F0C0C6FAE3FF9FFEDEE958C
        DFEB3D67410CC8BB5EC7C3C56EF8E5F1BD7086BFBF98794545CEAE2936D55C79
        9981E1D73F06864347AFFC7CF4F0CD6EC67F8C5C02B2D2F682062ACCF7E62DDB
        C47020DA1F6C806DDF8DDFE136EA2C3953F7D530FCFEC736BFD4A9EEF6072686
        4F409B576C3EF3F8F31FE6EC9F338C3683D4B2861F2C14D4D0ECFD7CF7D6BBEF
        4B6C44C006A8355DB8D313A5AF5CBFFEF6B79F7FFEFE6B09D2E039F1948161FF
        85477F2EDE7E17F36BBAE14A641FB2C59F3DC5C1C164F269A62113D800E6DC13
        6B37E49A075D040612E3FFBF0CBF199819BEFEFACFD0B7E6F4F2BF33CDA3D083
        883964DF025E21FE980FB38C59C006B0641DAD9B9664D6F8F9370BC3CFDF0C0C
        A2BC0C0C9376DC62B876FDE95E062EFE2F7F998536304C555C0037C17F5F012B
        D3CF0260202A800DE0CC3B9BEB6E2C3D29D2449CE1D17B06067E0E060660D831
        BC06863A0B3B03C392DD0FFF5D7DC72BC8D02DFC096C40E08174E6BFEF03FF6E
        0AF480C4427739932167D187061731DEFB4003FE314122F8D49D0F0CA76EBEF8
        FEE803C3CA3F133513E12E08399CC5CAF051E0F71A9F36783A109FF8FAE89A40
        11AB8B4FBE336CBFF585E1F8C36FF7BFBEF9B0E727937819C344C90F28811076
        5993E1E3A5C70C3BA3BFC00D606D7858A1CAFBABEEE6D30F4799193957FCEAD5
        990714FE3FC099890800003861FC11588B1A420000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton16: TPngSpeedButton
      Tag = 1
      Left = 421
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Naturezas de Opera'#231#227'o'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeNaturezas1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C000003E569545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
        312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A
        2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C
        6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
        702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
        732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
        6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
        686F746F73686F70204353352057696E646F77732220786D703A437265617465
        446174653D22323031302D31322D32335430383A32353A34362D30333A303022
        20786D703A4D6F64696679446174653D22323031312D30312D30335432333A30
        343A35382B32313A30302220786D703A4D65746164617461446174653D223230
        31312D30312D30335432333A30343A35382B32313A3030222064633A666F726D
        61743D22696D6167652F706E672220786D704D4D3A496E7374616E636549443D
        22786D702E6969643A3037463244443243313741373131453038373730433535
        3435393645433031342220786D704D4D3A446F63756D656E7449443D22786D70
        2E6469643A303746324444324431374137313145303837373043353534353936
        4543303134223E203C786D704D4D3A4465726976656446726F6D207374526566
        3A696E7374616E636549443D22786D702E6969643A3037463244443241313741
        373131453038373730433535343539364543303134222073745265663A646F63
        756D656E7449443D22786D702E6469643A303746324444324231374137313145
        3038373730433535343539364543303134222F3E203C2F7264663A4465736372
        697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E20
        3C3F787061636B657420656E643D2272223F3ECF66F0FF0000022C4944415478
        DA63FCFFFF3F0325801166002323238A445F5F9F3A1F1FDF1AA0FCDF8F1F3FFA
        9594943C429687EB8331FE4CD175661094EDF8CFC0A8F6FA9F30F33B95584E2E
        7165265656568677774EFD15BC3EFD87E09F677FFFFF61B8F5F3FBD70AD1EA87
        7B510D58E17D8E4958D89049848761DF6B4F067B672F86DFBF7F83E540861CD8
        BD85C1F9EF3C863FDFBE337C7E7CFFBC60D16D2314037E2DF3F9C2A62EC7CDF0
        EF1743DD6A26065E4109867F7FFE82E5989899183EBD7ECAD0ECF80AE47686D7
        D76F7C15ADB8CB8362C0CFC55E5FD8D5A5B919FEFE8178F20F90FEFB1795FEF7
        0F6CC08BCB97BF4A543F4435E0FB228F2F9C2A924017FC052B022B0669846198
        4140B9C7972E7D95AD7B826AC0D7394E5F7852F773C343796F3803A3F34A44A8
        6FF26160F4DB821C0B8C28067C9E69F78D2FE330E7FF3D611015401730BAAD61
        F8BF2D00EE0AC6806D0CFFD77B303006EEC034E0D374F3EFFC59A738FEEF0C86
        780188193DD7436CDBE80D312008A8718D1B0363C82E4C03DE4F32FA2E947F9E
        E3FF567F981B19187D3631FCDFE005090F908B401A57B9303086EDC134E0ED04
        DDEF22855738E07E046A043B799D073C4019C3F7E20E83B73D1ADF85D55438C0
        FE85BA008EA12E6080AABD78EAD427FDFEAFFC2806BCEE50B9C8272DA5C7CEC3
        0DCA18281A900D78FFEA15C3A37BF7CEEA4FF8668262C0FD2A91004E5E9E757F
        FFFC078A41E2FB0F50D3DFBFFF18FE005D05C27F41F4BFBF3719BFFD986538F3
        6F1F8A01E40200458060F038BD86450000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object dbSBtnEdit: TDBSpeedButton
      Tag = 1
      Left = 106
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Editar Registro'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ParentShowHint = False
      ShowHint = True
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D65004D6920313720536570
        20323030332032323A35383A3039202B3031303000D31A1F0000000774494D45
        07D30911143A34A2F9B7CA000000097048597300000B1200000B1201D2DD7EFC
        000002564944415478DAA5D15D4853611CC7F1DF712FBA3CDBD9D9CEE636B685
        AB8C5D386719113329140A51A3C420822E8248A8886E44F022E8A2A0624B2FA2
        C011142415E4454581E9854294124166CC99CCA3ADB9E3C279E6D6DECED66604
        C1661A7DAF9E9BE7C3FF79FE04FE33E2F7617EAFAECEEBE75B038198BF54C0FD
        E3407CD3C04ACBB6537C46748F387CB2E40B9781CF60F1517ABAE3D8D1B6F79B
        02BE355B66C94B4E0BD1D48AA7B1AB98094D23E8E5E2ABCAC085813D93FD1B02
        B3FB0DDF79D76BD54BDD4D94EB05C413292C4522F0B3C16C825F756799CCF941
        BB27B12E306DA36E3D69EABC38D7F50E0629038D824232950217E1B1180C6199
        0D4D90B4ACFDA1E3C34251A0B1F548A949A17D11EDF434AACC65D0942BA0A528
        0882008EE7C185C358F20597CA489C78ECF83C5C740B07CE1D9487ED5323C61A
        539D5E4DE7A65040934344D92C82B9E704232BF0CFFBD32291D0F3BCDE7BBD00
        C867751B19694A1835D4EAAC0646959B848456A9042121407212387813A64273
        6859246EC8DADD5D05403E7BAFCA94948AC7F435DAAD668D066A4A8EAA308D33
        B17AA04C0CA4D3488F7FE2C4815E3DD1834C0190AFDA5D51158FA5C674B55AAD
        5C46E211D70C92560272D92F64D28BA8E7AB83EC1E785314C8B7F36EC5AE7832
        316256D2D4287D3A77116BC0838F04F82891FB8F85CBD79CAE2BEB026B7F72A7
        A221BA1C7FC55ACECA202DC130FB03031E01D5D61D6059F6ADCBE9DCF757205F
        9BCB70E8365BD9BD852AAF195CC82AFB6792C476B311B45ABDDCD7D7A7DA10F8
        73E51D0DB6CA9955C96E229BB1310C333E3434F4EC5F80A2FD04301EDD11A349
        72B50000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      DataButtonType = nbEdit
      DataSource = DM2.DSCt
      MenuItem = EditarRegistro1
      DisableReasons = [drReadonly, drEditing, drEmpty]
      RuntimeEnabled = True
    end
    object SpeedButton20: TPngSpeedButton
      Tag = 1
      Left = 446
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Imposto ICMS'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeImpostoICMS1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C000003E569545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
        312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A
        2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C
        6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
        702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
        732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
        6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
        686F746F73686F70204353352057696E646F77732220786D703A437265617465
        446174653D22323031302D31322D32335430383A32353A34362D30333A303022
        20786D703A4D6F64696679446174653D22323031312D30312D30335432333A30
        363A34382B32313A30302220786D703A4D65746164617461446174653D223230
        31312D30312D30335432333A30363A34382B32313A3030222064633A666F726D
        61743D22696D6167652F706E672220786D704D4D3A496E7374616E636549443D
        22786D702E6969643A3439443535453433313741373131453039463144454336
        3746354430433336322220786D704D4D3A446F63756D656E7449443D22786D70
        2E6469643A343944353545343431374137313145303946314445433637463544
        3043333632223E203C786D704D4D3A4465726976656446726F6D207374526566
        3A696E7374616E636549443D22786D702E6969643A3439443535453431313741
        373131453039463144454336374635443043333632222073745265663A646F63
        756D656E7449443D22786D702E6469643A343944353545343231374137313145
        3039463144454336374635443043333632222F3E203C2F7264663A4465736372
        697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E20
        3C3F787061636B657420656E643D2272223F3E2AB38F2E000002414944415478
        DAA5925D48145114C7CF1DD9DC6DC7916957B2C45E5ADC5E4C94A0B7C236725B
        6DF30BA3871E83E8258A7D90045F7AF1213689408CE8A1A04F5DFAD84A4D33E8
        6DA1440DEC53512B6287945D7776D4BD776E77669C762FF654170EE732E79CDF
        FD9F7306514AE17F0EB20108212E108D46FD92240DB03849A552E14824B25018
        FF53675FF0B5EA00C8953D145095A27B8A967CA75C5BB7EF161C0E072C7D4910
        79A66F55C63F08C5F0694D533BCBBAE6C778C0BDC67782C7532B784578A51C85
        838110E472393366405EBF8C4380DC049CD56065716E42BEF0B98E03ACDF69CA
        6CF1EF7283BE0EDD0F052891CB41C7C48C094502A495EF70A93E69680765E683
        5AD6F955E4006BB74399627F851B08B69AC4CC13C27B5D37013FA7A7D5F2AE79
        1EA0DD0A665CBE1D4C013193CC64A3D0361BC4628B53536A65F7371EA0DE3894
        114F8FBBE9F84940F577F3D31E6A05148C017DD26401808DB965C8D802E2002B
        FD07B2D299372E3ADA01E8F003A023ED960A6628F4C8820D36006A1BB6D7C803
        D27DFBB5D2B309271D6E03D43008F4454B1E70EC29D05810502B7B79E008A0F6
        91CD80E5AB75DAB673134EFAEC38A0C6C740E3E13CA0F9B95968B6C07E38D431
        BA19F0ABB75AF39E7FEF347A45E1787E06F6CBF703165010009D18FB0BE0F21E
        CD53E5735A83026B13B66D28818DDCC944225D73452DE5004A8F6F52AAD8B9B7
        58749B320B0B0A01CBC9242CCCCEBEADE9CDEEE3007317BDCDAE1231463065DF
        AC7D635644880E98A9328C185E271F5176F57A6D3F8972807F3DBF016C5C66F0
        C798CAE60000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object SpeedButton21: TPngSpeedButton
      Left = 477
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Ajuda'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = Ajuda2Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D650046722031322044657A
        20323030332032313A34323A3032202B303130309E8331EF0000000774494D45
        07D3081B0A342E857D2490000000097048597300000AF000000AF00142AC3498
        000002FF4944415478DAA5935B4853711CC7BF675B5337E7A5A5DD9CD850314C
        0ABB874559546405465014C17A30BA208464F5201474A7250D434B2D33C5072F
        EC44AE0BF5A0332BC3342B629ABD98BAC99C9B9ED32EE7F6EF701E7A280AA2DF
        EFED07DF0FDFDF97DF8FC27F16F5EBC0E3F1E88787872D2A95AA40ABD5A6731C
        47BC5EAF8BE779DAEFF73715151545FE08601866937BCCDDB0C894BE90840077
        601C1A4A0DA321091EFF387A07DE7E89D1C7EC2F2828E8FB0D10084C6F09B2C1
        76A36E5E94EDDD6974A10D7ECA87A0C8218E9B8F7D09C538683E82279DED4C88
        0B6DB4582C7D3F0103030309FA9858D782C4D4B9C5FDF960E3BE6116D121CC13
        8404012C1F8287F3225F5B888B195568A0EB877891CF292D2DE51480D3E93CBB
        6AE9DA2BD69E127C8A7F8C65B1EB71D87C01C9D1298ABBEF3C832AD715D886AE
        E2526A355226D3E178F1C8525E5E5EAF00BA5F76BFC932E5AC3EF4351BB3A3E2
        7133F7B9BCFB2C5C7B55022FEB45E50E1A92DCB9F40224C52CC47D9303E53556
        BAA2A2A25001F4BC7EEB57EBA8845353DB60247321F845C8E1235E6FC4C9E597
        1145E970BBDF8A6EB613A3C48B8FD9E3B0D65E73D96CB6C50AA0B3C339AD4F8C
        8E3B31B119C99AF99064B12848A8CF778222140E3EDC8E09C1033E5AC2A83889
        0F5923B85E7375B0B2B2324B01D076BA77CD92BCE5BBBE64225663801A2A8872
        8011BF203B11204613F05A02460AC26430E386BA16376AAD8EE6E6E69D0AA0EE
        5EDDF9BC151BCE3D98B4E161B00E065502082FA17BF7A812624E6B32784AC258
        D8875BD9B5987ACAC0D9D37994A6E93B0AA0ADAD2D49E084C1754BF3128F8DEC
        C1E7D07BE8F85888D380201108061E5EC2E080F910F68E59D060BF3FC206D9C5
        76BB3DF8F3901A1B1B0B2949D5B272C96A754BE41E1A26AAE09E9982280169C6
        54149BCE206D2813ADCF5AC2DF43ECD6A6A6A6AEDF4E590EA59065D8BB19A6CC
        C4F4940CB01A062A51763143D0D5EBC447D70737A1C80159DCF1C7672A2B2B9B
        E3F3F98E1389ECD4A835E670384C023381C14824424B9254ED703866FEFA8DFF
        5A3F0035616A207B5EF22E0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object Bevel5: TBevel
      Left = 292
      Top = 3
      Width = 3
      Height = 25
      Style = bsRaised
    end
    object PngSpeedButton3: TPngSpeedButton
      Tag = 1
      Left = 346
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Frotas'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeFrotas1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D65004D69203132204E6F76
        20323030332031373A35373A3239202B30313030774F6EB90000000774494D45
        07D30B0C103B368A569359000000097048597300000B1200000B1201D2DD7EFC
        000002A64944415478DAB5D34B4C13411807F0FF6E97421F3CA43CA4F2080FC5
        7020C1C7412401D3A01E38A021C183180E26264613130D2626F8AA0734848B31
        26DE7D554F68A20524D108D422140C1A5A445BA894B64061DBDD6D77B7BB6E17
        35F168D449269399CCFC66BE2FDF10F8CB46FC73E0A9CDD63AEA70B411046192
        65D9445154AE56AB4D8D69A228425903C3302049F26A5F5F5FEFEF802C13BDD7
        AFC5F7592C5A9D5E0FA3C108E530089284C7E341281442381C460A723A9D769B
        CD7658055A1EC9F9748C7E984769EADB0C83BAD2CA2AC4133C049E07C9B32024
        1E1393533FEE90D5D1E1700CF6F7F71F5481F21B41774F7BFE8ED25C029C328F
        F29B7D6601181A5FC7850A07BE7C9A4032292B3DA902636363C376BBDDA202DB
        7BC2C1EECA68C1FAF22AD6180E718E839860B164AEC196C519F015452809D921
        2A40EAF9A943E3E3CE370383438D2A507D7385BE52B696B9A1C447D33462D118
        583A82404D13B2029FB191679477460608414C4212383009499E985B1E7DFBC2
        D6F013E0BA8E9A32B804905062E038019228E1F9AC808F4B1C5A8CD3726DEC25
        E1114A3097BE076EBE58A617E7A785FB963A15A8B2FA8563E6192AAE3541D4E8
        20221D9294C4C802096F548F6A5D580EB2E944249E81CAD74750B7BF190F5CBA
        B5F888D5B499446B883DC4DED3055D436AF613710E64B619FE5D562CAED0607C
        F330C75EC1B0BB13B79B59D00C8BD35DB76C2B0B53ED2AB0ADDBBF71FE80216B
        CAF51E3C17051309412E6FC22C5B04FDDC639C6BDD8B4B673BB8425D4297B7B5
        046EB787A5284D83D7EB73A940E1C5AFC1CE7A534180CC04D280180B7494F138
        F16415E5F377D090E3C733FBF0290DA9A955EAC0CBF3FCDD4020C0FC2AE5C293
        938DD010972551282621E7C849499F10448AE0BE25B3DF9DF11194E183D7E73B
        AE6C4DFEFFCFF4A7ED3B254A5120F236864E0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object PngSpeedButton7: TPngSpeedButton
      Tag = 1
      Left = 186
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Imprimir'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = Imprimir1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002A744558744372656174696F6E2054696D650053612038204D727A20
        323030332031363A33373A3134202B303130300CD2793D0000000774494D4507
        D302110D1231EBE94401000000097048597300000AF000000AF00142AC349800
        0002954944415478DAA5D36D4853511807F0FFDDDC9BF33597D646D305439158
        59F84592A028A18220301854E2F760D2C83E49921BF66629080536587E181246
        248B42C55A98C54A885214F365393773ACBDB8EB5EEEEEEEEDEC82415009F9C0
        E5B987C3F99DE7B9F71C0ADB0C6AF3656060E0822257791C94B808627151269B
        73E445D135EF50F379E3A52D0187C3D172CE68BC47734082059219204D66BFBA
        3F7A4F1DA9D56E09D81EF6D51E3E71C65D5CBA1369B2982150840196E617F0E2
        C3FCB1BE4CC36B9828EEAF40FF23BB44A3DF172ED41F520E4D25C0B02C023116
        2CCF91078885D6FCEDFB23ECE237DF73FFEA6AABC964A27F03262727AF93E155
        11C54A39F90E0C2E17204FA144904E2395C9209CE2B0471C85E9208551D7DB91
        A6A68B0D64192F004EA7F3645D5D9D532A9552C96412B1680469360DEB2725CA
        8A0BF083200CC763DA17C7DDAA2964D2EB78F9E673E3ED5B370605607878F871
        7D7D7D633C1E074B4ACFE670308099B018A37439388E232D65E027459FE65FE1
        72F938AE4DA89F5ADADBCE0A80CBE55A34180CBA542A25003CCF63C5EB850C0C
        6ECE964152B8137186C5175F0AE6BD2B30ECCEC1BB89718FD96CD609C0D8D858
        ACA6A6262F5B7E16C9EE18080440AF47B11ACFC193EFA5C8E33338A058812438
        055F2004994CB6D6D1D1B14B00BABABA1C5AADD6A8D7EB5152522220C1605040
        242260796901EFDD6E4CCFCC22492AA9ACAC825AADBED2D3D37347006C36DBD1
        FCFCFCFE582CA6611806D5D5D52063783C1ED8ED76CCCDCD41A7D3A1A2A28255
        A9544ED2E27D8BC532F2EB2F64A3BBBB3B57A150B4C8E5F2D670385C48D334BF
        B1B14185422168341ABF4824B22512893EABD5EAFDE341DA8CCECE4E15496D04
        6A26809B7C97079148E4596F6F6FFA9F4779DBB7F17FE32734D03D2040527FA1
        0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
    object PngSpeedButton8: TPngSpeedButton
      Tag = 1
      Left = 321
      Top = 3
      Width = 25
      Height = 25
      Hint = 'Cadastro de Vendedores'
      Flat = True
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = CadastrodeVendedores1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
        20323030322031363A34333A3036202B30313030DB0550ED0000000774494D45
        07D3021917042539AE2BE2000000097048597300000B1200000B1201D2DD7EFC
        000002404944415478DAA5D25D4853611807F0FFF9D8D9A6FBCA6DA99546B15D
        082629865D4C9623E9A255184E28A2A22E6AB4BA88AE84503130D034914882C8
        061949415937456D91459452171991B01A739BD376E6DCCED6F1ACED74A0AB61
        35A307DE8BF7E1E5F7F2E77908FC6711BF6B8E9DC67E5285418828E797F1510E
        5C740CE0F6AA80179D384CE870836140A652402603F06988C534DA7676E26E61
        A0071E468326360A2C2E0239F1D72BA50C6E472F8E14043CDD78175840EDB67A
        07CC3516246261F0F130D62B826E62B7B73070E70C9E188CE6665B8B1390EBA4
        0C69E0FB12B0F4669CB08DEF2B08BCEEC2A9ED4D2786203312A0682943564278
        09981A26EC5EE7AAA6203EA81A4551ED01905AE9960338BF0862DA4AEC0D4D14
        06CE0A56D05CD758659FD561F04ABF1370858F0B57FCAD23A0951D1862227F06
        CE0B87CCCAF9910ABD9C1255460C147B609AB889C6EA6B60C311A40504A3C9B2
        46F42BFC2B8176D160A98C7E713418D4EEC75FE16AD984E9E793E87B79145B6C
        532063DFA02C61F021C03C4A77E8F7AC045CF3279D76D555BD82823FCC81CBD2
        103F4DE25E7F334A7B7914C566B1D9A4C64CE847762E54568A419ACD03341752
        D7DBEA73C714524BC3509889F0B8FF3E0AF725330EB6CFC15EC32092E0A5B38C
        6040DB80CBFAB77980AE3BF9D05695B1471652A833958024013643E3D9E853D4
        B5EE90D639055F30019623794ED8B8153DD4E7FC08E7582D22BE5D90139675E5
        EA6AB98CD82063284D90E5736B54B278222DF89271E115C8B5B7305C31FBD73D
        F897FA09C8F2D61176CE6D8C0000000049454E44AE426082}
      PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    end
  end
  object PngImageList1: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'Add2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000033D4944415478DA7D936D6C935514809FFB76FD58BB96A55B075DAB83
          9574309421B08D1F83303B8901A331118989317E266A1635628CC15F2268E2D4
          8468C061A22110638204636202C91250499CFBA19292C868D7608595B66B57FA
          F1F6F37D5F2F2520FAC393DC7BCFC93DF7B9E79E7B8EE0BF32413F161EB3B799
          1FB65B6D01CDD0EDAA5A556B95C631A3CC61DE227CA7BBB8AD1DC02A14F1FEDA
          5EFFCB637DABAC3EB71D5555A951C1A4B690548B4C5D9A3322E9ECB746816724
          E8FA3F8003B82C56E5E4D3A35BEFDFD0D3C3E2F53499A28AA8B651AE65506B05
          6ABACA92560FD1748AA9682CD6C81A43EC21D30458265BBE1E7F706C575F5717
          894C8E54EE2A2B6CF7F07AE00B140366726778E1DC76FA5C410C9341A252E6E7
          686C4EBF46BFE063368636F6CFEC1ADC20FE4C5F215F51F9AB186599ED6E0EAD
          FEB519E0D1B909C6A7F7B0C6E392D1D469B7B8B95A2C129DCD3C294C87C4C137
          1FD9F19255D4D1AA66AC98892CC4E86E09F0DEC0899B80C8046F87F7B3AEE32E
          AC4A3B17B2E7A55F2BE1487A5A741E73FCF1C6D8B655B1FC459E70EF63ABFB51
          8C6676C4ED0C376DF4A65DA9D758FF9D8FBA49271E2FE484FFAB25F3CF8F8C78
          238B17D91DF89CFB1CA3FC9FDC80AD3CE1416B94492EA825B1ECA8F3CA739B86
          7CE9428A5EC7203EF36A32F5385E6B90C77BC69B87A63367381CF980E5B67BB1
          09139F5D9AA4A1374866CA65619914D1678786038AAE912AA55868E4892C9618
          ECECE7E496DF9A8077CFBFC2DE539F60F20A141D5CD65684AEC8DF2AA585AC81
          23C3BDFEA736F97D24D4123420A2CEB1BD6327FB068F34013F24BFE7816F1E22
          E8F592AF15D10C8342B54EA158FD49F029A11645990A0597E36975704DCD335F
          5C606469880FD74B80A2F0E5EC47EC3EBB1767870597E29489ACCB680B180DE3
          55C14E4C6CE1AC62524636AF5849C0ED27914F12CE5D269BAAA265058653A7DB
          6F27D8B6964C39C7EFC95934AD11A7C0BA5BA5EC919873520B76B5B919F60F30
          D0B986A58E6E9C662755ADC22FF3614E5D3E4DA298C2D08C947C6A88D7B87067
          33B924E4B8FCA76DB28350EC0AA686826131D0177574B9CA7DB9410C8D517938
          FEEF6EBC2507D92C212F4A6D4C8EF666FD28D4E53C23EDFD24F991776E5C7153
          FE06D6E655FB1480CFD40000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Apply2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000033E4944415478DA5D935D681C5518869F99497692D94DD2A4D9C4A449
          D398A4A669B1E9668BA158B4D41BA1C10B8562A9E04583052B29E27A9180452F
          542A18FC8968030A12F10FB5454A8B144AAB22D1B4B5C5A046B217CDD266F3D7
          FD9BDDF91FCF8ED45A0F7C73CE81EF7DBFEFCCFB7E12FF5FE3F4A3B2AF21ACED
          A9ADAEEAC6F7C339C35CB9552C9DF65DFF1447B8F8DF74E9DFD33134A98917FB
          376D7C6167674738AA85B11D1BDBB6310C93A57C9EAB8B37DCF995CC87BEC74B
          8268F10EC1EBD469D1D037FB071FD8D37B4F33A66952340C4C11B66561390E79
          5B4753EAF97335C5A5851BBF974AEE1023CC0704D59315279E7E68F77057B491
          6CA12008ACA0B25526711D6E99393654DDC7C8E637B8B47681F1DF5E6526953A
          6F1BFEA3126F127F38D63B3DB4FD7E792D9F4137757C5BC2B11D4CDB2223C0CD
          EABD8C6D3D414B5547D0F0E895613EFAE3631657AD2725E503E9F89147F6266A
          55859053435728CE0F4B5F633816794116911B19DB364957646B003E797D8AD7
          AE8D92738ACCA5D7BE92A253919F0EEDDE3558E9AB1C8C1EA3471BE0FCF2E74C
          FC35CA7AA58D44DF04DD35DB02F0E9D4978C5D7E16D373F13C9954263B27B57D
          BA6E767F7C7B5FADD4C8E1B6719AD4F620F9ECCD4FE808F7B2A57620B87F9BFA
          82577E7D9E9CA523F9155882249D2FA4A5E6A99AD903033BFA74F1D626A593A3
          9B27581F6AB9CB1ADFDD3C45E297614C21ABEF2BD89E27C26525AF2F49EAA432
          736047FF802ACBAC94D6E809EF24B1E56DEA43D1003CBD7C91919F9F0A7EA62F
          2ADB429580C0F558D60B498977783FDED1FA4CACB545241942B20CDDE118C763
          535C599D26317328008368DB754538B8BE2FD4B2C997CCB312EFB2570D29E71E
          DCB491866A8DAC5D2253CAD15FBF8BF95C92057D0144E5B21FCAE0905C251472
          582EE4F01CFFB0242C2C13E564A852198A6D68A7AD264ADE2AB2584C63780E9E
          2B8BD625545923525947D6D0496616B06C67169FC17FACFC165DA2C33382AAA7
          BBBE95DE864EEAD4750208E2A962C98127E6324992D9EB82D45BC5E3319EE3C7
          3BC334413B655FFA3C21F2D142D5442AB4605C8A4E095DC8E707647C2FC04705
          F8F2DDD3787BBDC7E3E2BB4F10C545B48A0C45DCD362BF5AB687387DC6CB146F
          A7FF0DEB1083F29116A7680000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Cancel2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000033B4944415478DA5D935D681C5514C77F773233BBB3599BDDB0C926B8
          4DAD065BDCA62956FAB4A60F564308D93614C41AB4208258F149944AAC05BF1E
          447C52F003452BED43455B6AD3A82D0A4AA884B462FA611BD3626D625A9B4DB3
          D94D32B3F371BD3BA1C17AE0C23D977BFEE79CFFFF1CC1FFEC509236CB201FAD
          B372917864B54426DC796762B1681FABD81CCE1739FDDFFFE2D6E5205877A4C5
          EBE9B5E967EF5C9789AD48D58294EAF8041597F94289C9DFFFB1AF8FCF7CBA68
          CBFEDE22B3CB000757509FAC33F6653BB3DDA9D549A4E712D815D034F03C75D4
          5D48341950982C73E1E4D513E542B0235F663A0438BE523FD0DEB37E47226DE1
          0B0B73EB4B78A707F1468E40106074EE4234DE85F3C56E742D60F6C622A343D7
          BF1D9A943DE24892DC9A5CCBCF776FCCE08928E6CE77D156B52317E670DE7F0A
          916A21B2F39DB01AF7FB8F70F6F7A31B3A93975525A3E56DE278467CF040EFFA
          67A256B5181D73FB2B689BB686BCC8F24D4434AE9E8DB012E7B31714C827889A
          1A5CC7E7D7E1F20131948D9DDDF0486B565364F98A6654FF91BEB7D03B1E5FE6
          58DA259CCF77E37EF72118D1104C043EE7CEBA67C42FEDB5536D1D9926FC4091
          5741966E62F43C4FE4B1D754BCB604509860E1CD6DF8174F21228612C6579C06
          8C8D332E4E66A3536DB92605E0212B0EE696A731FB54B0A6DF361FB230C5C21B
          79FCF323F8FA92C27F5C560027566A17377634DC6B04F3D4B43D44F4E5C3CB41
          CEFE57D1326B3036F785BE37FA23C5171F2650ED7A015C18E3BC18A8675F6B36
          F6444B8B8E270DCC47FB31BB9FC3F9EA6D9C8FF7E05B16F13D5FA2AF7B90D9BD
          BDD8C33F204C982EC05F131C120329BACC883896CD9AD4C5DD6A2788B539DCDF
          7EAA72B5E427EBA1B915FBD4307AD2A234E773E552858ACF9362AF1269538A41
          CB64CB3DF7C54834C6F0CB736A0003024F8DB1AC92AED4302CB46413A5199BAB
          E7A6B0ED6024986673A8D3D104AB94B45F0B9DFB13E9380DADCDD4363722AC5A
          A422D373D42E5C2B5018BBC2DCDF33C8409E5161BD5D37B8B4BC4C471B68AA91
          BCA7326ED7AA0963864A6A22D52C786A2FDC79B50FAA1A3406A9B0ABABC89FB7
          6DE32D1B6CA053BDE609D8A0C09AC33F826B0A7454F9DF744F33C0125468FF02
          A6CC5D9FA5582F350000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Remove2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002C94944415478DA7D534D4F1351143DAFC3F4134A69453E6A21281A08
          548D44161850138841C5D8B030242E24BA70EB4A5DB971E7C27F606274610C44
          08183FA30B241A370423950F155309AD406BDB99B64C67E63D5FA7534417BCE4
          E5DCBCDC7B72CF3DF711FC7726DCE8141D64C0E9759EB095DB1A19634E555612
          99546E42CDB1B18124A6B6E79352300654D86BC9EDBAB6FAABFE76BFD555E504
          1805A80E681A320919D1F95F7A74317E7F5362D7CFC9D8D8221875A2AEB2C636
          12EC0F76791B3CA07915545579A15E2460BA416601432A96C6DCF4CA6C72431B
          0CA5F18DDC022CC71BC4918303C190BBCE0D3DA700BA59C891EA4502C691F037
          C1C2202772F8F42EF65689D07E32EE455F5B4FD3CBC68E3DD0D219405540E95F
          026690693CA6BC89424C516613115D96119E952E905701E15E67A87DD86AE36A
          1C1EC0E5313B30F59B480B5890B299058B7D83BAA962E663E611996E772E1CEE
          DB77009924C4D04D88BD97B1D3A1AB4BC8DEE806CBA511FE423F930F875CD160
          B7BF966552B00EDF85D83DB4230193E290AF3401B284C5657C25EFDBECD1E0B1
          9A5AE415082D5D20FED6A266C3426622D75F40C640B332F26F1E1A2E2D7DE704
          AF0396A58E9EEA66ABC8A5672540C9F11A5EA817FA45114BA32870149EEDC66A
          20BC8839F2D48B07CDAD8E8B0D7B6DC660603AC0CC416E15F24ACD9C2B290336
          D609223FD90899A8C629BB489EB7B48AF05611684A9E67B26203A68A2D57F99B
          E074414AAA88FC50A1E5D990B148477D18E712CE36B738E00B54F25DD0A04892
          A1D320B188B05478B9CD6E24631256C231E82A9D92D6D16BACF2A4078D828851
          BED81DBEFA72ECDA1F8063B70F4414C178BF3A25C8C65348CC2F2319592BC859
          8086C1FEDF7C06257B9E54C06777E08EAEE192207099F63208562B08CFD0F8DF
          D0726A71A8021E2B3AAE9D8F63F59FDF583A933E9C14084EF3F008BFF545F3B1
          C67FD20C9FC78B331B78B63DFF0FC33A78CEB1F016BD0000000049454E44AE42
          6082}
      end
      item
        Background = clWindow
        Name = 'pencil-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6920313720536570
          20323030332032323A35383A3039202B3031303000D31A1F0000000774494D45
          07D30911143A34A2F9B7CA000000097048597300000B1200000B1201D2DD7EFC
          000002564944415478DAA5D15D4853611CC7F1DF712FBA3CDBD9D9CEE636B685
          AB8C5D386719113329140A51A3C420822E8248A8886E44F022E8A2A0624B2FA2
          C011142415E4454581E9854294124166CC99CCA3ADB9E3C279E6D6DECED66604
          C1661A7DAF9E9BE7C3FF79FE04FE33E2F7617EAFAECEEBE75B038198BF54C0FD
          E3407CD3C04ACBB6537C46748F387CB2E40B9781CF60F1517ABAE3D8D1B6F79B
          02BE355B66C94B4E0BD1D48AA7B1AB98094D23E8E5E2ABCAC085813D93FD1B02
          B3FB0DDF79D76BD54BDD4D94EB05C413292C4522F0B3C16C825F756799CCF941
          BB27B12E306DA36E3D69EABC38D7F50E0629038D824232950217E1B1180C6199
          0D4D90B4ACFDA1E3C34251A0B1F548A949A17D11EDF434AACC65D0942BA0A528
          0882008EE7C185C358F20597CA489C78ECF83C5C740B07CE1D9487ED5323C61A
          539D5E4DE7A65040934344D92C82B9E704232BF0CFFBD32291D0F3BCDE7BBD00
          C867751B19694A1835D4EAAC0646959B848456A9042121407212387813A64273
          6859246EC8DADD5D05403E7BAFCA94948AC7F435DAAD668D066A4A8EAA308D33
          B17AA04C0CA4D3488F7FE2C4815E3DD1834C0190AFDA5D51158FA5C674B55AAD
          5C46E211D70C92560272D92F64D28BA8E7AB83EC1E785314C8B7F36EC5AE7832
          316256D2D4287D3A77116BC0838F04F82891FB8F85CBD79CAE2BEB026B7F72A7
          A221BA1C7FC55ACECA202DC130FB03031E01D5D61D6059F6ADCBE9DCF757205F
          9BCB70E8365BD9BD852AAF195CC82AFB6792C476B311B45ABDDCD7D7A7DA10F8
          73E51D0DB6CA9955C96E229BB1310C333E3434F4EC5F80A2FD04301EDD11A349
          72B50000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'view-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446920313620417567
          20323030352031333A35373A3530202B30313030D18698470000000774494D45
          07D3021A17370C9DC27950000000097048597300000AF000000AF00142AC3498
          000002504944415478DAA5D25B4893711806F0E7BFCD2D0FC3920CA15088D24C
          3021942C892CE848897461DD4482991D202258B4A5E29442BD48AB8903574A84
          A2699A8EA8AB52CAA524E1C0A985A7686B5B3B7CEEBCEFDBFEAD8337F55946CF
          D5CBC3CBEFE2E525F8CF90A5C1F6C51AD5DFDB277371EC1951EC9A640FE35874
          7F9AEDA122F1F5AAEA1AE31F81E9A929914EA71B589B997D20352B1D761F60F2
          0056B39D9AB4F78D3EBB25EF466DDDDCB2C0C3B6D64B7119D90DF9DBB77E2FE7
          DC1C161C2C2C3E024F90C2DE79F3596575F5C16581DB4DEA77B9C5A5DBD60BC3
          20149871B3B0BA3858235080C48019D1D28557FD1BD42DF78CBC40635BBB7BCB
          E113B152124090522CFAC3607C21301E0E94881134BEC7A846B9BBA3FBF1102F
          507FB7797EDD91D26411EB8620D2F8390A7F200C873F84849818380CA318EF6A
          CC687FD433C10B54CA65AAF842D979915802845870610A2F4B21A404ABE256C3
          D657F7A1A6FC5A6A6495F203E58A24A134614C905F96F4AD23210ED16211C202
          0902634FA8533FE849CECAD5A5681B0A8E750E7B79FF407E55B6592C897A4036
          EEC89124A650D6C3C06778F179D1F431AAE6963AF16DCB45E43FD5F492197F11
          9944F03760296525C5998CD3B92910646DAFDF8C0C5F51289BD3E864F1D1BD0C
          60B001DD3A2D7496E3641E015EE0D79CABB8107F6748D5203CB5FF3476A503E3
          F340D7D073E86D856402DEBF02F87139010AA56A1CCA29C19E3478F52ED42EE4
          4D2B2F9F4D5B11F0132128886EF2EDDB59662EEA42ABBAB9A3AA427E72C5C012
          A2A8AB1F14FA83B376B351A352A95EFE13C097AF80C00720CBD40D5100000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'printer2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D650053612038204D727A20
          323030332031363A33373A3134202B303130300CD2793D0000000774494D4507
          D302110D1231EBE94401000000097048597300000AF000000AF00142AC349800
          0002954944415478DAA5D36D4853511807F0FFDDDC9BF33597D646D305439158
          59F84592A028A18220301854E2F760D2C83E49921BF66629080536587E181246
          248B42C55A98C54A885214F365393773ACBDB8EB5EEEEEEEEDEC82415009F9C0
          E5B987C3F99DE7B9F71C0ADB0C6AF3656060E0822257791C94B808627151269B
          73E445D135EF50F379E3A52D0187C3D172CE68BC47734082059219204D66BFBA
          3F7A4F1DA9D56E09D81EF6D51E3E71C65D5CBA1369B2982150840196E617F0E2
          C3FCB1BE4CC36B9828EEAF40FF23BB44A3DF172ED41F520E4D25C0B02C023116
          2CCF91078885D6FCEDFB23ECE237DF73FFEA6AABC964A27F03262727AF93E155
          11C54A39F90E0C2E17204FA144904E2395C9209CE2B0471C85E9208551D7DB91
          A6A68B0D64192F004EA7F3645D5D9D532A9552C96412B1680469360DEB2725CA
          8A0BF083200CC763DA17C7DDAA2964D2EB78F9E673E3ED5B370605607878F871
          7D7D7D633C1E074B4ACFE670308099B018A37439388E232D65E027459FE65FE1
          72F938AE4DA89F5ADADBCE0A80CBE55A34180CBA542A25003CCF63C5EB850C0C
          6ECE964152B8137186C5175F0AE6BD2B30ECCEC1BB89718FD96CD609C0D8D858
          ACA6A6262F5B7E16C9EE18080440AF47B11ACFC193EFA5C8E33338A058812438
          055F2004994CB6D6D1D1B14B00BABABA1C5AADD6A8D7EB5152522220C1605040
          242260796901EFDD6E4CCFCC22492AA9ACAC825AADBED2D3D37347006C36DBD1
          FCFCFCFE582CA6611806D5D5D52063783C1ED8ED76CCCDCD41A7D3A1A2A28255
          A9544ED2E27D8BC532F2EB2F64A3BBBB3B57A150B4C8E5F2D670385C48D334BF
          B1B14185422168341ABF4824B22512893EABD5EAFDE341DA8CCECE4E15496D04
          6A26809B7C97079148E4596F6F6FFA9F4779DBB7F17FE32734D03D2040527FA1
          0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'help-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D650046722031322044657A
          20323030332032313A34323A3032202B303130309E8331EF0000000774494D45
          07D3081B0A342E857D2490000000097048597300000AF000000AF00142AC3498
          000002FF4944415478DAA5935B4853711CC7BF675B5337E7A5A5DD9CD850314C
          0ABB874559546405465014C17A30BA208464F5201474A7250D434B2D33C5072F
          EC44AE0BF5A0332BC3342B629ABD98BAC99C9B9ED32EE7F6EF701E7A280AA2DF
          EFED07DF0FDFDF97DF8FC27F16F5EBC0E3F1E88787872D2A95AA40ABD5A6731C
          47BC5EAF8BE779DAEFF73715151545FE08601866937BCCDDB0C894BE90840077
          601C1A4A0DA321091EFF387A07DE7E89D1C7EC2F2828E8FB0D10084C6F09B2C1
          76A36E5E94EDDD6974A10D7ECA87A0C8218E9B8F7D09C538683E82279DED4C88
          0B6DB4582C7D3F0103030309FA9858D782C4D4B9C5FDF960E3BE6116D121CC13
          8404012C1F8287F3225F5B888B195568A0EB877891CF292D2DE51480D3E93CBB
          6AE9DA2BD69E127C8A7F8C65B1EB71D87C01C9D1298ABBEF3C832AD715D886AE
          E2526A355226D3E178F1C8525E5E5EAF00BA5F76BFC932E5AC3EF4351BB3A3E2
          7133F7B9BCFB2C5C7B55022FEB45E50E1A92DCB9F40224C52CC47D9303E53556
          BAA2A2A25001F4BC7EEB57EBA8845353DB60247321F845C8E1235E6FC4C9E597
          1145E970BBDF8A6EB613A3C48B8FD9E3B0D65E73D96CB6C50AA0B3C339AD4F8C
          8E3B31B119C99AF99064B12848A8CF778222140E3EDC8E09C1033E5AC2A83889
          0F5923B85E7375B0B2B2324B01D076BA77CD92BCE5BBBE64225663801A2A8872
          8011BF203B11204613F05A02460AC26430E386BA16376AAD8EE6E6E69D0AA0EE
          5EDDF9BC151BCE3D98B4E161B00E065502082FA17BF7A812624E6B32784AC258
          D8875BD9B5987ACAC0D9D37994A6E93B0AA0ADAD2D49E084C1754BF3128F8DEC
          C1E7D07BE8F85888D380201108061E5EC2E080F910F68E59D060BF3FC206D9C5
          76BB3DF8F3901A1B1B0B2949D5B272C96A754BE41E1A26AAE09E9982280169C6
          54149BCE206D2813ADCF5AC2DF43ECD6A6A6A6AEDF4E590EA59065D8BB19A6CC
          C4F4940CB01A062A51763143D0D5EBC447D70737A1C80159DCF1C7672A2B2B9B
          E3F3F98E1389ECD4A835E670384C023381C14824424B9254ED703866FEFA8DFF
          5A3F0035616A207B5EF22E0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'door-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D650044692036204A756C20
          323030342031323A33393A3034202B30313030D74C612F0000000774494D4507
          D407060A283B33F1B50D000000097048597300000B1200000B1201D2DD7EFC00
          0002634944415478DAA5D25B4853711C07F0EFD9DCE674DA92BCA4D2052C8232
          2AC25E7C8808BA08E94BD6930FF9D08311B50A8C4A239D9237623D34D1AD1808
          DA704497534817052358A5DD1E235B3BBBA9F3CC5DCE767676FEEBA03D44FC89
          A0DFDB8FDF970F7F7EBF3F83FF2CE6F7C666B3BDD1EBF55BE58CAC4A8A129314
          09238A924A4C4B8C246554B224C8A2987CDBD7633E4005C6C7C7A31E8FA76039
          2E614FF546D4548C4295FE0E2D1691031E3A243034752CD272E5E15A2A707F6C
          2C3AE70B16EC6C3C0B8306A80D566221520259570D9154419370C1F9BA3C7AEE
          3ABB860A381C8E652E102A3CD47C11B96AA0EA6B31964A3F8131AC473C0EE479
          4F6184F5C52E99270AA980DD6EE7FD81A0B1E9FC6568548061B60C02D90764FC
          605233D06509EE4C1D89B5763FA503C3C343BC97F3195BDBDB5706A9E94A6412
          3E902C400890A3A0D6978763577B9FD101ABD5CA731C67ECE8E858E917274B41
          E2F3C82A29F917707BE2A0D069799E4F052C160B1FF0FB8C5DDD0D4AA747F045
          3D32DBDC08CF34631D790CB5921E60F70BBD839374A0BF7F80E7FC3F8CF92D1F
          50A2DD84C6CF2CDE459AA189B3D862FC08ADB2D8BE47B5C2ADBBD374A0E7666F
          3810E08AC88559946936A3C9FD04E9E4225299D5E7EB7280AE073549EB883B8F
          0A983BCDE150285854D4F30DC5CC061C6547914EF16098D525EA95BF71C3B95B
          B4396773A9405B5B9B8F5FE2CBF71EDF8E2A75058AFD2721A713AB43E512DE90
          4EB9C28E2F2EF67D351530994C6718A81B85145938D1B0ABAE6CE9B42E161110
          8D8228CEAB34811DF370D50F224505FEAC892E664E48661D1A2DEED55DC31C2D
          F357E05FEA2795600C20CCB9362A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Ouro2-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
          2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
          6969643A35393943374435313137464231314530393136374537443531333430
          343741322220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
          3539394337443532313746423131453039313637453744353133343034374132
          223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
          616E636549443D22786D702E6969643A35393943374434463137464231314530
          39313637453744353133343034374132222073745265663A646F63756D656E74
          49443D22786D702E6469643A3539394337443530313746423131453039313637
          453744353133343034374132222F3E203C2F7264663A4465736372697074696F
          6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
          636B657420656E643D2272223F3ED5EAB92B0000030F4944415478DA75935968
          546714C77F77E666EE4CC64C268B83E844CDA016B7041B7021C6A51A532DB522
          863E141F44C1560BAD94963E140B8248AC22286A248808BE541195E441AAD5B8
          3455D19226D32C663189594692C96492993499EDEB196314A91EB85CEEB9F7FC
          EEFF9CFFF934A514C9A8EABCA93EF57E052A4ED5A2337C32BB58EB0F0DA8D4A6
          1662633E94C9C092350B6B8E0753AA4DE355689380DF7BEEA9F5435B20FE2FD5
          D937F1186E2CB57F93E68A639911461BAF63DCE7251A184045F3709654BC8468
          951D37E49F71FEECAFA58CC3100DF3B37E10D7F31EDC6983ACCB5B8AD5F061B6
          7483E93E585B887699785A7984857BF7691A95B90A4F1CC241B067C198DC7BFC
          A244F001F02DFD82CC99B388871AD14357D0DD92B795D27AA10FCBFC13685C9B
          ADC81D858855FA1F82D161E8978FC6E5128EAF643569297E54C28BEE7063585D
          A0FF45AC0B9A1B4EA15D6DBFAEBA837DD47BCF7266AA480C4151D060FB9C85D8
          9C213E5F348629DA852945FA1D2985814B2042076E43FDD0F1892106EE5F56B7
          82DBD8969CA7083866860DF6AD38DD0F301CBD383DAB308757415B19A444E105
          5CBCB88C8D876E4D00464E2F570F3D0F296E138074737E9D938DE9A504DB6AB0
          A53B99FEE12EB4678F217812047EE7AC74BBE1366B36AFD1B4B0B75EE90F1663
          298084C84FD87365505F83D346643C86D9F601E6C10E68DF0D99D05905FF988E
          B0E99BEF266C1CBC7C40A5EBFB3165C853B20551F8D2819C9D24E61C454BF889
          357F4F8A11C2DF14E58FFA0236FFF4CB9B45EAF8D1A15CAB87D1445A622C9911
          BBEDA9C42C85681945607130FAE85BACF2AEFA8E9D995FD690BF22EF0DA0F1D0
          0E15E93F8733078CE992B00B482F22DC758F8CB94B24F71181EAA378EFC24841
          39A5FB76BF2E7EBDCA830D8DAAE9F41E8C6835594B243B45D64276207BB92E56
          E6D35AF184E7693FB0697FD95BC56F9D85505F40853B1A692DDF8E23B31DFB3C
          98BA5646D223533FB580C29377714DCB7A3F6032867BFDAAEDD70A222DE5CC2B
          EEA4AE469C5B7983959FADFF5FF13B0193116C6856BDBF5D2032BF90FC928FDF
          599C8CFF0065F63A51FDED5A450000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'undo-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
          20323030322032333A33313A3434202B3031303084501C480000000774494D45
          07D3021B00140B1CDA4902000000097048597300000B1200000B1201D2DD7EFC
          000002674944415478DA6364A01030D2D600D7BD620C7F9F57F24A8A07B0B3B0
          08BD79FEF62A2B27E7A6DF1BBD3B081B1079DE4254F8FB8696444BF1DFCC0C0C
          0F3F32301C7BC1C070EDFC6B86F7672E4E65D8E39A83DB80F85B3A4A92DF8F4C
          4CD3E35F7A9181E1C32F06869FFF19183EFE04E23F0C0C6FAE3FF9FFEDEE958C
          DFEB3D67410CC8BB5EC7C3C56EF8E5F1BD7086BFBF98794545CEAE2936D55C79
          9981E1D73F06864347AFFC7CF4F0CD6EC67F8C5C02B2D2F682062ACCF7E62DDB
          C47020DA1F6C806DDF8DDFE136EA2C3953F7D530FCFEC736BFD4A9EEF6072686
          4F409B576C3EF3F8F31FE6EC9F338C3683D4B2861F2C14D4D0ECFD7CF7D6BBEF
          4B6C44C006A8355DB8D313A5AF5CBFFEF6B79F7FFEFE6B09D2E039F1948161FF
          85477F2EDE7E17F36BBAE14A641FB2C59F3DC5C1C164F269A62113D800E6DC13
          6B37E49A075D040612E3FFBF0CBF199819BEFEFACFD0B7E6F4F2BF33CDA3D083
          883964DF025E21FE980FB38C59C006B0641DAD9B9664D6F8F9370BC3CFDF0C0C
          A2BC0C0C9376DC62B876FDE95E062EFE2F7F998536304C555C0037C17F5F012B
          D3CF0260202A800DE0CC3B9BEB6E2C3D29D2449CE1D17B06067E0E060660D831
          BC06863A0B3B03C392DD0FFF5D7DC72BC8D02DFC096C40E08174E6BFEF03FF6E
          0AF480C4427739932167D187061731DEFB4003FE314122F8D49D0F0CA76EBEF8
          FEE803C3CA3F133513E12E08399CC5CAF051E0F71A9F36783A109FF8FAE89A40
          11AB8B4FBE336CBFF585E1F8C36FF7BFBEF9B0E727937819C344C90F28811076
          5993E1E3A5C70C3BA3BFC00D606D7858A1CAFBABEEE6D30F4799193957FCEAD5
          990714FE3FC099890800003861FC11588B1A420000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'hand_offer-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004672203138204A756E
          20323030342031363A33303A3432202B303130306A18F9FD0000000774494D45
          07D406120E1F34D65B490C000000097048597300000AF000000AF00142AC3498
          000002524944415478DAA5D35B4893611807F0FF77DCF6E5BEE974CE39378339
          9A16092D45B28831462EBB896E6297751354445D144424961725D109A4BA2FBB
          F3BE83E1452D2A6B91B1B90EB3B4E6FC7236BFDCB7F3DEC62EA26C65873F3C37
          2F3CBFF7E17D7928FC67A8E50776BBDDCC711C1D0C0667FE1AB0D96CFD0E87E3
          84A228A9582CB623140A8DFD316032998E7474749C733A9D14CBB2181E1E5E4A
          A533DEC8DB37F75704F47A7DABC56209B85C2E154DD3F0FBFDF06CF3C26C5BFF
          74FBE2CEAD39066B799AAD1653F931DD61647F02B45AED8DDEDE5E9F20088844
          22E8DAD48DDD3D9BD11CBD862499276A5D33C5A834483DBCFDCAA84BF43007E5
          A91F0083C130E776BBEBB3D92CA6673EE0D2F98BE85AB8025ACB00AC0628E640
          E664904603E4E0789E9F93AE0B27A7F6949A4919E0797EAF288A174AAFAF3DDE
          771A5EEA056CD6CFA56611449181640EC9C004185E80668303E9C83BE4166356
          71E0F5CCF7BF602ED5C0BE4347F5FDE6114FFD9A6E0D688242620985C9F760DB
          5BA048D3202129AC617407D8CBCF46BF4DB03C0B8375F7AAEBB6B8A89A2A9074
          06948A05542AE4651969394E4A13DCE185AC4FD7178D5704C8906893A49A0786
          DA7546CA20021C0779365CBE8F2A14213458917C3EF1447736DC59112823674C
          6D72B2FAB1D8B671951C0E803736202D45A1A96D447E3E8EA2920E8B8321C72F
          813272CADE9952D4A3BC65755536FA117C531372920496B0A03F253CCCD0CBBB
          BF05CAC8B1566326CFDD62B535EDC5F9851823A833B4427C23F1F147BB6EA2B0
          225046003AB7DFD9C21592B3D4D5C92F1577E15FF3159E30E111256A70F10000
          000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'users3-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
          20323030322031363A34333A3036202B30313030DB0550ED0000000774494D45
          07D30308000F005DF28AD1000000097048597300000B1200000B1201D2DD7EFC
          000002924944415478DABD935D48935118C7FFEFBBED659BBAF9D51C73A6D907
          E5EC835E910C4CA6B5AEB2288CBC884054A884C20BC3C89B20252248446B6192
          9861091911415D2826992833872462CC745BB969D37DBFEEE3DDDB416110DD55
          F4C0EFEA9CF33BCFFF391C0A7F59D4BF14506F1A511B8EE0BC8841622000B34A
          8996D29B98256B1AC236C22EC277C2DBDF04AF1B70974A40BD2A0390C9804814
          B059E02A6FC6359D6EEF7D995C2E99FB320FAF7B4520DB2F107AE282A7F5C8A3
          294CABD4A017AD00C32481E77DD0A5A7096C53C052A22FDB6136BD079BEBC30F
          0F609E47073976392E78508D2B5B32702FE0078E9554415D5006D022C03E84E4
          6263C41381C4D607F8D7019F17703BD169B8859AB8C05883BAE414B4B956818B
          55374806052012038E09D086BE57CF1B84F2AC2C204804417209EFC69D93AD68
          880BBAAF42CBC4F0998B4271CE500959FA56D20119826564B6891E67B38661CB
          542055204DF95CC0703673DAD8141EF86588D515FAB3C9C24CDF51AD933ACEE6
          23E891A2F8F1A927AA76A3323FFBCC896067175871019E296CB0C8A2BEE09A43
          BF54CF993605FBBAB590C94DAAA23D2A6EC1899703A5E8EDB1A3EBD134F28A26
          50D7A2843F2AE0C304793D89049C380A53FFD088AB79FDC8A6607F47BBE640CE
          25A53A05F35356D4561D84D5B282A96F3C16471DB83EF811544C0A1F1780D3BB
          0C27E7C4CCBB497EB9D12DDE10D0873AE7D4BB3377CA12A5609409589CFCBA91
          2DB7703B16C65C28ACED450E4B2118E6E172AFC03EFE09569B67C67F3BA4DB10
          50ECC34146CEE893D44AA46AD320963288F131781D6B589AE5D6D4A5AD6D0939
          631A2E40CBC321C1158AC646BD5C74002D086D4638FC4282305F095A304024D2
          40A07844227650A23144847E982B56FFCB67FAA3FA09C32401201343FEE70000
          000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'businessman-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446F203134204E6F76
          20323030322031363A34333A3036202B30313030DB0550ED0000000774494D45
          07D3021917042539AE2BE2000000097048597300000B1200000B1201D2DD7EFC
          000002404944415478DAA5D25D4853611807F0FFF9D8D9A6FBCA6DA99546B15D
          082629865D4C9623E9A255184E28A2A22E6AB4BA88AE84503130D034914882C8
          061949415937456D91459452171991B01A739BD376E6DCCED6F1ACED74A0AB61
          35A307DE8BF7E1E5F7F2E77908FC6711BF6B8E9DC67E5285418828E797F1510E
          5C740CE0F6AA80179D384CE870836140A652402603F06988C534DA7676E26E61
          A0071E468326360A2C2E0239F1D72BA50C6E472F8E14043CDD78175840EDB67A
          07CC3516246261F0F130D62B826E62B7B73070E70C9E188CE6665B8B1390EBA4
          0C69E0FB12B0F4669CB08DEF2B08BCEEC2A9ED4D2786203312A0682943564278
          09981A26EC5EE7AAA6203EA81A4551ED01905AE9960338BF0862DA4AEC0D4D14
          06CE0A56D05CD758659FD561F04ABF1370858F0B57FCAD23A0951D1862227F06
          CE0B87CCCAF9910ABD9C1255460C147B609AB889C6EA6B60C311A40504A3C9B2
          46F42BFC2B8176D160A98C7E713418D4EEC75FE16AD984E9E793E87B79145B6C
          532063DFA02C61F021C03C4A77E8F7AC045CF3279D76D555BD82823FCC81CBD2
          103F4DE25E7F334A7B7914C566B1D9A4C64CE847762E54568A419ACD03341752
          D7DBEA73C714524BC3509889F0B8FF3E0AF725330EB6CFC15EC32092E0A5B38C
          6040DB80CBFAB77980AE3BF9D05695B1471652A833958024013643E3D9E853D4
          B5EE90D639055F30019623794ED8B8153DD4E7FC08E7582D22BE5D90139675E5
          EA6AB98CD82063284D90E5736B54B278222DF89271E115C8B5B7305C31FBD73D
          F897FA09C8F2D61176CE6D8C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'truck_blue'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D69203132204E6F76
          20323030332031373A35373A3239202B30313030774F6EB90000000774494D45
          07D30B0C103B368A569359000000097048597300000B1200000B1201D2DD7EFC
          000002A64944415478DAB5D34B4C13411807F0FF6E97421F3CA43CA4F2080FC5
          7020C1C7412401D3A01E38A021C183180E26264613130D2626F8AA0734848B31
          26DE7D554F68A20524D108D422140C1A5A445BA894B64061DBDD6D77B7BB6E17
          35F168D449269399CCFC66BE2FDF10F8CB46FC73E0A9CDD63AEA70B411046192
          65D9445154AE56AB4D8D69A228425903C3302049F26A5F5F5FEFEF802C13BDD7
          AFC5F7592C5A9D5E0FA3C108E530089284C7E341281442381C460A723A9D769B
          CD7658055A1EC9F9748C7E984769EADB0C83BAD2CA2AC4133C049E07C9B32024
          1E1393533FEE90D5D1E1700CF6F7F71F5481F21B41774F7BFE8ED25C029C328F
          F29B7D6601181A5FC7850A07BE7C9A4032292B3DA902636363C376BBDDA202DB
          7BC2C1EECA68C1FAF22AD6180E718E839860B164AEC196C519F015452809D921
          2A40EAF9A943E3E3CE370383438D2A507D7385BE52B696B9A1C447D33462D118
          583A82404D13B2029FB191679477460608414C4212383009499E985B1E7DFBC2
          D6F013E0BA8E9A32B804905062E038019228E1F9AC808F4B1C5A8CD3726DEC25
          E1114A3097BE076EBE58A617E7A785FB963A15A8B2FA8563E6192AAE3541D4E8
          20221D9294C4C802096F548F6A5D580EB2E944249E81CAD74750B7BF190F5CBA
          B5F888D5B499446B883DC4DED3055D436AF613710E64B619FE5D562CAED0607C
          F330C75EC1B0BB13B79B59D00C8BD35DB76C2B0B53ED2AB0ADDBBF71FE80216B
          CAF51E3C17051309412E6FC22C5B04FDDC639C6BDD8B4B673BB8425D4297B7B5
          046EB787A5284D83D7EB73A940E1C5AFC1CE7A534180CC04D280180B7494F138
          F16415E5F377D090E3C733FBF0290DA9A955EAC0CBF3FCDD4020C0FC2AE5C293
          938DD010972551282621E7C849499F10448AE0BE25B3DF9DF11194E183D7E73B
          AE6C4DFEFFCFF4A7ED3B254A5120F236864E0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'creditcards-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D6500446920323620417567
          20323030332032323A30323A3031202B30313030A85E82D30000000774494D45
          07D3081A140313E31621AA000000097048597300000AF000000AF00142AC3498
          0000026D4944415478DAA5935D4B146114C7FFE3A63B1A8554E00A895076D385
          17111814B2BE61815110B592AB8B826DB2D0651F610922E8136C5D86186485BB
          ADB6AB6EA282118199171AE6A60511A9BBEB3C33CFCB74661282C69BE88133FF
          9967E6FCCE735E46C37F2ECDB98C0C0F4F9E6EA86F8212B0F75E082561710E21
          05A454E0426179656D6E6828D6E201BC9F7F63843E9FD7973F6D03C5025070AC
          04941C2D92EDA2A1D68F873D82755DB95EE901BC9D9932FAD62FE86BEB5B28DB
          2DC0DE0338AA1150EE1470FC6805EE873576F55AB7173095CD1ACDC1A0FE67DB
          498403925356C24DC5E20ACF5FBE62BD7D7D5E407A7CC2E8686FD32DF97B4792
          929F6B9C5BAED9B6C4446A94F5F747BC80643A675CAC1DD24B5BCBB0AC03640A
          96A99102A665D33DE0F31FC1BCF5800D0EF4780163A99C71A9FE8E6EFD7C471F
          97B98E9669933329D7E8048A0075982EDC436BF09C5C5AFAC0F3F9FC5C2C166B
          710189478F333581134D423A8FAA4A2A05457948619191DA0AB63061EEE6118E
          DC46B12490799D62A150A852FB7B30D6F35F445DCD211F164700C6A9131CDA29
          13CA2F20A8AE9CEA52286F47666685F5DCECF602B2B95923B8F554C7E228017C
          90FE6DF08EAF5006D5830106A93C7C19D98D5E1609DFF002D2D99CD1B1F944C7
          C233CAC60771B0849DCE1F2E80BAE916D4AEEEC2E44698F547F63941323D6EB4
          369ED42BEE9EA17014725BE07BB70FACDA049584461B283F3B8BF1E98FECD6E0
          C03E8064D2686E6DD7054D64C5C21864D531B0C64E989BA310C6378ADE09CDE7
          476AEC058B46A35E402291C8040201EA0875C29947AA9CB46822A50D4E9D5174
          0C453FDAEAEAEA5C3C1E6FF300FE75FD024B066320F5F3DA090000000049454E
          44AE426082}
      end
      item
        Background = clWindow
        Name = 'earth_location-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6920313720417567
          20323030352031313A34353A3131202B303130303ECCAB370000000774494D45
          07D3021C0115017901C3D3000000097048597300000AF000000AF00142AC3498
          000002B94944415478DAA5D35B4893011407F0FF3675172F9B9999BBD8D2E682
          4449CD52A4A2A2B08C90D42CBAD90D52488344A21E7AB127A98C92B0EC25A48B
          E4938E4025A74BDBA66B65338B79D7A9DBDCA67EDFB79BFB96F5208C1204CFE3
          E19CDFC339FC19586731D63AE828484FB385091E07C54A123D46432B453A4B93
          5BFAED6B021C199B786342F130EF587E0C37828F79831E6E65FBDB54E570D13F
          8062D6BFB3FF174E0D5ABC72925AF08478FC7D27DE5C188EA7358DA1DBC408E6
          86C06DB7C36124E6B354D3821560C8EF67779AF4B5CA016DB195D63316492106
          468B617152102E127487663F33222D1AECD020B8281F46BA496D96CA94B102BC
          1C3334765BF3F2A3DCD5D822D48274B2D0A62B47AF79014C9B0EE59DF77176C3
          38A292F818D253338E3EEAF83ED35CEF5FE085CE7F524367370AC2450CB9B301
          0902266C4B46741885508C9B91D47A193373E1B02524F9CEB7ABF20E0C77B565
          01CE952F94B4D47C98644D1D1138AB7078BB1952AE10B3E412BA2629283FABC1
          6CAA44DFD15448B7D683A154558C34645707BCB1A0E9A69923FA182D8C0E435C
          7832E889DB989B8F846E9682D64C635A550F48EE61335F02A1A9ECB5EE59D999
          00E0D0AB6B76769C422015C482C3E1C13C5E82D1C9839826084C11C170071782
          B6FE8498B805BE3DFEBDA1A1303F00C87CF8A8C7227EB04716E5474C841BEA2F
          4DB02F4AE070BBE0229747829F00561F5245BD98505DAFB2345FBC1B00E456EA
          6E34733FD570D81BE172ED0298CB4D9F0BF07A01CA031034F8F24C24DAB3696D
          FB9D146872BE0700B20A359B15F24E33E88B4B066B799BD80BF8FF004BCBB7F6
          228C76215D568D6F3DB9B5364579E97FB3B0FBEA57B139B4AED9237F9A62313C
          07D329059F4142C22310E923FDFA414183858AB8849E1CEFEA613ADD11B26369
          FC8A486428A2C97899D3EDF3DA16A1FB610AAF83FA9C625D695CAD7E0371D236
          2001CB89730000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Cfop-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003E569545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A
          2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C
          6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
          6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
          686F746F73686F70204353352057696E646F77732220786D703A437265617465
          446174653D22323031302D31322D32335430383A32353A34362D30333A303022
          20786D703A4D6F64696679446174653D22323031312D30312D30335432333A30
          343A35382B32313A30302220786D703A4D65746164617461446174653D223230
          31312D30312D30335432333A30343A35382B32313A3030222064633A666F726D
          61743D22696D6167652F706E672220786D704D4D3A496E7374616E636549443D
          22786D702E6969643A3037463244443243313741373131453038373730433535
          3435393645433031342220786D704D4D3A446F63756D656E7449443D22786D70
          2E6469643A303746324444324431374137313145303837373043353534353936
          4543303134223E203C786D704D4D3A4465726976656446726F6D207374526566
          3A696E7374616E636549443D22786D702E6969643A3037463244443241313741
          373131453038373730433535343539364543303134222073745265663A646F63
          756D656E7449443D22786D702E6469643A303746324444324231374137313145
          3038373730433535343539364543303134222F3E203C2F7264663A4465736372
          697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E20
          3C3F787061636B657420656E643D2272223F3ECF66F0FF0000022C4944415478
          DA63FCFFFF3F0325801166002323238A445F5F9F3A1F1FDF1AA0FCDF8F1F3FFA
          9594943C429687EB8331FE4CD175661094EDF8CFC0A8F6FA9F30F33B95584E2E
          7165265656568677774EFD15BC3EFD87E09F677FFFFF61B8F5F3FBD70AD1EA87
          7B510D58E17D8E4958D89049848761DF6B4F067B672F86DFBF7F83E540861CD8
          BD85C1F9EF3C863FDFBE337C7E7CFFBC60D16D2314037E2DF3F9C2A62EC7CDF0
          EF1743DD6A26065E4109867F7FFE82E5989899183EBD7ECAD0ECF80AE47686D7
          D76F7C15ADB8CB8362C0CFC55E5FD8D5A5B919FEFE8178F20F90FEFB1795FEF7
          0F6CC08BCB97BF4A543F4435E0FB228F2F9C2A924017FC052B022B0669846198
          4140B9C7972E7D95AD7B826AC0D7394E5F7852F773C343796F3803A3F34A44A8
          6FF26160F4DB821C0B8C28067C9E69F78D2FE330E7FF3D611015401730BAAD61
          F8BF2D00EE0AC6806D0CFFD77B303006EEC034E0D374F3EFFC59A738FEEF0C86
          780188193DD7436CDBE80D312008A8718D1B0363C82E4C03DE4F32FA2E947F9E
          E3FF567F981B19187D3631FCDFE005090F908B401A57B9303086EDC134E0ED04
          DDEF22855738E07E046A043B799D073C4019C3F7E20E83B73D1ADF85D55438C0
          FE85BA008EA12E6080AABD78EAD427FDFEAFFC2806BCEE50B9C8272DA5C7CEC3
          0DCA18281A900D78FFEA15C3A37BF7CEEA4FF8668262C0FD2A91004E5E9E757F
          FFFC078A41E2FB0F50D3DFBFFF18FE005D05C27F41F4BFBF3719BFFD986538F3
          6F1F8A01E40200458060F038BD86450000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Icms-16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003E569545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A
          2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C
          6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
          6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
          686F746F73686F70204353352057696E646F77732220786D703A437265617465
          446174653D22323031302D31322D32335430383A32353A34362D30333A303022
          20786D703A4D6F64696679446174653D22323031312D30312D30335432333A30
          363A34382B32313A30302220786D703A4D65746164617461446174653D223230
          31312D30312D30335432333A30363A34382B32313A3030222064633A666F726D
          61743D22696D6167652F706E672220786D704D4D3A496E7374616E636549443D
          22786D702E6969643A3439443535453433313741373131453039463144454336
          3746354430433336322220786D704D4D3A446F63756D656E7449443D22786D70
          2E6469643A343944353545343431374137313145303946314445433637463544
          3043333632223E203C786D704D4D3A4465726976656446726F6D207374526566
          3A696E7374616E636549443D22786D702E6969643A3439443535453431313741
          373131453039463144454336374635443043333632222073745265663A646F63
          756D656E7449443D22786D702E6469643A343944353545343231374137313145
          3039463144454336374635443043333632222F3E203C2F7264663A4465736372
          697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E20
          3C3F787061636B657420656E643D2272223F3E2AB38F2E000002414944415478
          DAA5925D48145114C7CF1DD9DC6DC7916957B2C45E5ADC5E4C94A0B7C236725B
          6DF30BA3871E83E8258A7D90045F7AF1213689408CE8A1A04F5DFAD84A4D33E8
          6DA1440DEC53512B6287945D7776D4BD776E77669C762FF654170EE732E79CDF
          FD9F7306514AE17F0EB20108212E108D46FD92240DB03849A552E14824B25018
          FF53675FF0B5EA00C8953D145095A27B8A967CA75C5BB7EF161C0E072C7D4910
          79A66F55C63F08C5F0694D533BCBBAE6C778C0BDC67782C7532B784578A51C85
          838110E472393366405EBF8C4380DC049CD56065716E42BEF0B98E03ACDF69CA
          6CF1EF7283BE0EDD0F052891CB41C7C48C094502A495EF70A93E69680765E683
          5AD6F955E4006BB74399627F851B08B69AC4CC13C27B5D37013FA7A7D5F2AE79
          1EA0DD0A665CBE1D4C013193CC64A3D0361BC4628B53536A65F7371EA0DE3894
          114F8FBBE9F84940F577F3D31E6A05148C017DD26401808DB965C8D802E2002B
          FD07B2D299372E3ADA01E8F003A023ED960A6628F4C8820D36006A1BB6D7C803
          D27DFBB5D2B309271D6E03D43008F4454B1E70EC29D05810502B7B79E008A0F6
          91CD80E5AB75DAB673134EFAEC38A0C6C740E3E13CA0F9B95968B6C07E38D431
          BA19F0ABB75AF39E7FEF347A45E1787E06F6CBF703165010009D18FB0BE0F21E
          CD53E5735A83026B13B66D28818DDCC944225D73452DE5004A8F6F52AAD8B9B7
          58749B320B0B0A01CBC9242CCCCEBEADE9CDEEE3007317BDCDAE1231463065DF
          AC7D635644880E98A9328C185E271F5176F57A6D3F8972807F3DBF016C5C66F0
          C798CAE60000000049454E44AE426082}
      end>
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
    Left = 532
    Top = 279
    Bitmap = {}
  end
  object MainMenu1: TMainMenu
    Images = PngImageList1
    Left = 532
    Top = 327
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      Hint = 'Menu Arquivo'
      object Localizar1: TMenuItem
        Caption = 'Localizar'
        Hint = 'Localizar'
        ImageIndex = 5
        ShortCut = 115
        OnClick = Localizar1Click
      end
      object LocalizarConhecimentonoContasaReceber1: TMenuItem
        Caption = 'Localizar Conhecimento no Contas a Receber'
        Hint = 'Localizar Conhecimento no Contas a Receber'
        ImageIndex = 9
        ShortCut = 16460
        OnClick = LocalizarConhecimentonoContasaReceber1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object CancelarConhecimento1: TMenuItem
        Tag = 1
        Caption = 'Cancelar Conhecimento'
        Hint = 'Cancelar Conhecimento'
        ImageIndex = 10
        ShortCut = 49221
        OnClick = CancelarConhecimento1Click
      end
      object FinalizarConhecimento1: TMenuItem
        Tag = 1
        Caption = 'Finalizar Conhecimento'
        Hint = 'Finalizar Conhecimento'
        ImageIndex = 11
        ShortCut = 120
        OnClick = FinalizarConhecimento1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object CadastrodeClientes1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Clientes'
        Hint = 'Cadastro de Clientes'
        ImageIndex = 12
        ShortCut = 8304
        OnClick = CadastrodeClientes1Click
      end
      object CadastrodeVendedores1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Vendedores'
        Hint = 'Cadastro de Vendedores'
        ImageIndex = 13
        ShortCut = 8305
        OnClick = CadastrodeVendedores1Click
      end
      object CadastrodeFrotas1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Frotas'
        Hint = 'Cadastro de Frotas'
        ImageIndex = 14
        ShortCut = 8306
        OnClick = CadastrodeFrotas1Click
      end
      object CadastrodeCondicoesdePagamento1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Condi'#231#245'es de Pagamento'
        Hint = 'Cadastro de Condi'#231#245'es de Pagamento'
        ImageIndex = 15
        ShortCut = 8307
        OnClick = CadastrodeCondicoesdePagamento1Click
      end
      object CadastrodeEnderecos1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Endere'#231'os'
        Hint = 'Cadastro de Endere'#231'os'
        ImageIndex = 16
        ShortCut = 8308
        OnClick = CadastrodeEnderecos1Click
      end
      object CadastrodeNaturezas1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Naturezas de Opera'#231#227'o'
        Hint = 'Cadastro de Naturezas de Opera'#231#227'o'
        ImageIndex = 17
        ShortCut = 8309
        OnClick = CadastrodeNaturezas1Click
      end
      object CadastrodeImpostoICMS1: TMenuItem
        Tag = 1
        Caption = 'Cadastro de Imposto ICMS'
        Hint = 'Cadastro de Imposto ICMS'
        ImageIndex = 18
        ShortCut = 8310
        OnClick = CadastrodeImpostoICMS1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        Hint = 'Fechar'
        ImageIndex = 8
        OnClick = Fechar1Click
      end
    end
    object Navegacao1: TMenuItem
      Caption = 'Navega'#231#227'o'
      Hint = 'Menu Navega'#231#227'o'
      object InserirRegistro1: TMenuItem
        Caption = 'Inserir Registro'
        Hint = 'Insere um registro novo'
        ImageIndex = 0
        ShortCut = 114
      end
      object EliminarRegistro1: TMenuItem
        Caption = 'Eliminar Registro'
        Hint = 'Elimina o registro atual'
        ImageIndex = 3
        ShortCut = 16497
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object SalvarRegistro1: TMenuItem
        Caption = 'Salvar Registro'
        Hint = 'Grava o registro atual'
        ImageIndex = 1
        ShortCut = 113
      end
      object CancelarRegistro1: TMenuItem
        Caption = 'Cancelar Registro'
        Hint = 'Cancela o registro atual ou suas altera'#231#245'es'
        ImageIndex = 2
        ShortCut = 16498
      end
      object EditarRegistro1: TMenuItem
        Caption = 'Editar Registro'
        Hint = 'Editar Registro'
        ImageIndex = 4
        ShortCut = 16453
      end
      object InserirItem1: TMenuItem
        Caption = 'Inserir Nota'
        ShortCut = 45
        Visible = False
        OnClick = InserirItem1Click
      end
      object EliminarItem1: TMenuItem
        Caption = 'Eliminar Nota'
        ShortCut = 46
        Visible = False
        OnClick = EliminarItem1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      Hint = 'Menu Relat'#243'rios'
      object Relatorios1: TMenuItem
        Tag = 1
        Caption = 'Relat'#243'rios'
        Hint = 'Relat'#243'rios'
        ImageIndex = 6
        ShortCut = 16464
        OnClick = Relatorios1Click
      end
      object Imprimir1: TMenuItem
        Tag = 1
        Caption = 'Imprimir'
        Hint = 'Imprimir'
        ImageIndex = 6
        ShortCut = 49232
        OnClick = Imprimir1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object CTEmitidosNoPeriodo1: TMenuItem
        Tag = 1
        Caption = 'CT emitidos no per'#237'odo'
        Hint = 'CT emitidos no per'#237'odo'
        ImageIndex = 6
        OnClick = CTEmitidosNoPeriodo1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      Hint = 'Menu Ajuda'
      object Ajuda2: TMenuItem
        Caption = 'Ajuda'
        Hint = 'Ajuda'
        ImageIndex = 7
        ShortCut = 112
        OnClick = Ajuda2Click
      end
    end
  end
  object QYFrotas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRFrotas
    SQL.Strings = (
      'select FRO_CODIGO,'
      'FRO_PLACA,'
      'FRO_RNTC,'
      'FRO_DESCRICAO'
      'from FROTAS'
      'where FRO_CODIGO=:codigo')
    Left = 616
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYFrotasFRO_CODIGO: TIntegerField
      FieldName = 'FRO_CODIGO'
      Origin = '"FROTAS"."FRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYFrotasFRO_PLACA: TIBStringField
      FieldName = 'FRO_PLACA'
      Origin = '"FROTAS"."FRO_PLACA"'
      Size = 10
    end
    object QYFrotasFRO_RNTC: TIBStringField
      FieldName = 'FRO_RNTC'
      Origin = '"FROTAS"."FRO_RNTC"'
    end
    object QYFrotasFRO_DESCRICAO: TIBStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = '"FROTAS"."FRO_DESCRICAO"'
      Size = 50
    end
  end
  object QYCondicoes: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRCondicoes
    SQL.Strings = (
      
        'select CPG_CODIGO, CPG_DESCRICAO, CPG_FORMAPAGTO, CPG_DESCPORC f' +
        'rom CONDICOES'
      'where CPG_CODIGO=:codigo')
    Left = 616
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYCondicoesCPG_CODIGO: TIntegerField
      FieldName = 'CPG_CODIGO'
      Origin = '"CONDICOES"."CPG_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCondicoesCPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
    object QYCondicoesCPG_DESCPORC: TIBBCDField
      FieldName = 'CPG_DESCPORC'
      Origin = '"CONDICOES"."CPG_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object QYCondicoesCPG_FORMAPAGTO: TIBStringField
      FieldName = 'CPG_FORMAPAGTO'
      Origin = '"CONDICOES"."CPG_FORMAPAGTO"'
      Size = 15
    end
  end
  object TRCondicoes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 688
    Top = 280
  end
  object TRFrotas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 688
    Top = 328
  end
  object TRClientes: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 688
    Top = 376
  end
  object QYClientes: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRClientes
    SQL.Strings = (
      'select * from CLIENTES'
      'where CLI_CODIGO=:codigo')
    Left = 616
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYClientesCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Required = True
      Size = 50
    end
    object QYClientesCLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = '"CLIENTES"."CLI_ATIVIDADE"'
      Required = True
    end
    object QYClientesCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = '"CLIENTES"."CLI_VENDEDOR"'
      Required = True
    end
    object QYClientesCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
    end
    object QYClientesCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object QYClientesCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object QYClientesCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 50
    end
    object QYClientesCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
    end
    object QYClientesCLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object QYClientesCLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object QYClientesCLI_FONE3: TIBStringField
      FieldName = 'CLI_FONE3'
      Origin = '"CLIENTES"."CLI_FONE3"'
    end
    object QYClientesCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object QYClientesCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"CLIENTES"."CLI_IE"'
    end
    object QYClientesCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object QYClientesCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object QYClientesCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
    object QYClientesCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
    object QYClientesCLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"CLIENTES"."CLI_ESTADOCIVIL"'
      Size = 10
    end
    object QYClientesCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object QYClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object QYClientesCLI_OBSERVACOES: TMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = '"CLIENTES"."CLI_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYClientesCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object QYClientesCLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CLIENTES"."CLI_SITE"'
      Size = 100
    end
    object QYClientesCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"CLIENTES"."CLI_EMAIL"'
      Size = 100
    end
    object QYClientesCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
    end
    object QYClientesCLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object QYClientesCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object QYClientesCLI_USUARIO: TIBStringField
      FieldName = 'CLI_USUARIO'
      Origin = '"CLIENTES"."CLI_USUARIO"'
    end
    object QYClientesCLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 100
    end
    object QYClientesCLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object QYClientesCLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 50
    end
    object QYClientesCLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 50
    end
    object QYClientesCLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object QYClientesCLI_NUMEROCOB: TIntegerField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
    end
    object QYClientesCLI_COMPLEMENTOCOB: TIBStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 30
    end
    object QYClientesCLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object QYClientesCLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object QYClientesCLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = '"CLIENTES"."CLI_TELEVENDA"'
      Required = True
    end
    object QYClientesCLI_TABELAPRECO: TIBStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = '"CLIENTES"."CLI_TABELAPRECO"'
      Size = 1
    end
    object QYClientesCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 50
    end
    object QYClientesCLI_EMAIL2: TIBStringField
      FieldName = 'CLI_EMAIL2'
      Origin = '"CLIENTES"."CLI_EMAIL2"'
      Size = 100
    end
    object QYClientesCLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = '"CLIENTES"."CLI_SETOR"'
    end
    object QYClientesCLI_LIMITECREDITO: TIBBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = '"CLIENTES"."CLI_LIMITECREDITO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYClientesCLI_BLOQUEARVENDA: TIBStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = '"CLIENTES"."CLI_BLOQUEARVENDA"'
      Size = 1
    end
    object QYClientesCLI_DESCONTO: TIBBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = '"CLIENTES"."CLI_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object QYClientesCLI_AFE: TIBStringField
      FieldName = 'CLI_AFE'
      Origin = '"CLIENTES"."CLI_AFE"'
    end
    object QYClientesCLI_ALVARA: TIBStringField
      FieldName = 'CLI_ALVARA'
      Origin = '"CLIENTES"."CLI_ALVARA"'
    end
    object QYClientesCLI_ALVARASANITARIO: TIBStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = '"CLIENTES"."CLI_ALVARASANITARIO"'
    end
    object QYClientesCLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = '"CLIENTES"."CLI_CIDADECODIGO"'
    end
    object QYClientesCLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object QYClientesCLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGO"'
    end
    object QYClientesCLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
    object QYClientesCLI_MAE: TIBStringField
      FieldName = 'CLI_MAE'
      Origin = '"CLIENTES"."CLI_MAE"'
      Size = 50
    end
    object QYClientesCLI_MAEEMAIL: TIBStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = '"CLIENTES"."CLI_MAEEMAIL"'
      Size = 100
    end
    object QYClientesCLI_MAEFONE: TIBStringField
      FieldName = 'CLI_MAEFONE'
      Origin = '"CLIENTES"."CLI_MAEFONE"'
    end
    object QYClientesCLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = '"CLIENTES"."CLI_MAILING"'
      Required = True
    end
    object QYClientesCLI_PAI: TIBStringField
      FieldName = 'CLI_PAI'
      Origin = '"CLIENTES"."CLI_PAI"'
      Size = 50
    end
    object QYClientesCLI_PAIEMAIL: TIBStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = '"CLIENTES"."CLI_PAIEMAIL"'
      Size = 100
    end
    object QYClientesCLI_PAIFONE: TIBStringField
      FieldName = 'CLI_PAIFONE'
      Origin = '"CLIENTES"."CLI_PAIFONE"'
    end
    object QYClientesCLI_REGPROFISSIONAL: TIBStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = '"CLIENTES"."CLI_REGPROFISSIONAL"'
    end
    object QYClientesCLI_PONTOS: TIBBCDField
      FieldName = 'CLI_PONTOS'
      Origin = '"CLIENTES"."CLI_PONTOS"'
      Precision = 18
      Size = 4
    end
    object QYClientesCLI_TIPOCLIENTE: TIBStringField
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = '"CLIENTES"."CLI_TIPOCLIENTE"'
      Size = 1
    end
    object QYClientesCLI_LOCALTRABALHO: TIntegerField
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = '"CLIENTES"."CLI_LOCALTRABALHO"'
      Required = True
    end
    object QYClientesCLI_NEXTEL: TIBStringField
      FieldName = 'CLI_NEXTEL'
      Origin = '"CLIENTES"."CLI_NEXTEL"'
    end
    object QYClientesCLI_MSN: TIBStringField
      FieldName = 'CLI_MSN'
      Origin = '"CLIENTES"."CLI_MSN"'
      Size = 100
    end
    object QYClientesCLI_FONE0800: TIBStringField
      FieldName = 'CLI_FONE0800'
      Origin = '"CLIENTES"."CLI_FONE0800"'
    end
    object QYClientesCLI_CONDICAO: TIntegerField
      FieldName = 'CLI_CONDICAO'
      Origin = '"CLIENTES"."CLI_CONDICAO"'
      Required = True
    end
  end
  object QYProdutos: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRProdutos
    SQL.Strings = (
      'select * from PRODUTOS where PRO_CODIGO=:codigo')
    Left = 296
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = '"PRODUTOS"."PRO_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYProdutosPRO_CODIGOFAB: TIBStringField
      FieldName = 'PRO_CODIGOFAB'
      Origin = '"PRODUTOS"."PRO_CODIGOFAB"'
    end
    object QYProdutosPRO_CODIGOBARRAS: TIBStringField
      FieldName = 'PRO_CODIGOBARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGOBARRAS"'
      Size = 60
    end
    object QYProdutosPRO_FAMILIA: TIntegerField
      FieldName = 'PRO_FAMILIA'
      Origin = '"PRODUTOS"."PRO_FAMILIA"'
      Required = True
    end
    object QYProdutosPRO_GRUPO: TIntegerField
      FieldName = 'PRO_GRUPO'
      Origin = '"PRODUTOS"."PRO_GRUPO"'
      Required = True
    end
    object QYProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 50
    end
    object QYProdutosPRO_DESCRICAO: TMemoField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"PRODUTOS"."PRO_TIPO"'
      Size = 1
    end
    object QYProdutosPRO_CORSABOR: TIBStringField
      FieldName = 'PRO_CORSABOR'
      Origin = '"PRODUTOS"."PRO_CORSABOR"'
    end
    object QYProdutosPRO_TAMANHO: TIBStringField
      FieldName = 'PRO_TAMANHO'
      Origin = '"PRODUTOS"."PRO_TAMANHO"'
    end
    object QYProdutosPRO_LOCALIZACAO: TIBStringField
      FieldName = 'PRO_LOCALIZACAO'
      Origin = '"PRODUTOS"."PRO_LOCALIZACAO"'
    end
    object QYProdutosPRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
    object QYProdutosPRO_ESTOQUEMIN: TIBBCDField
      FieldName = 'PRO_ESTOQUEMIN'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMIN"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ESTOQUEMAX: TIBBCDField
      FieldName = 'PRO_ESTOQUEMAX'
      Origin = '"PRODUTOS"."PRO_ESTOQUEMAX"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ESTOQUEATUAL: TIBBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = '"PRODUTOS"."PRO_ESTOQUEATUAL"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMS: TIBBCDField
      FieldName = 'PRO_ALIQICMS'
      Origin = '"PRODUTOS"."PRO_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMSRED: TIBBCDField
      FieldName = 'PRO_ALIQICMSRED'
      Origin = '"PRODUTOS"."PRO_ALIQICMSRED"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQIPI: TIBBCDField
      FieldName = 'PRO_ALIQIPI'
      Origin = '"PRODUTOS"."PRO_ALIQIPI"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQISS: TIBBCDField
      FieldName = 'PRO_ALIQISS'
      Origin = '"PRODUTOS"."PRO_ALIQISS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQOUTROS: TIBBCDField
      FieldName = 'PRO_ALIQOUTROS'
      Origin = '"PRODUTOS"."PRO_ALIQOUTROS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_COMISSAO: TIBBCDField
      FieldName = 'PRO_COMISSAO'
      Origin = '"PRODUTOS"."PRO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTOULT: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOULT'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOULT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOMEDIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDA: TIBBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDAULT: TIBBCDField
      FieldName = 'PRO_PRECOVENDAULT'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAULT"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECOVENDAMEDIO: TIBBCDField
      FieldName = 'PRO_PRECOVENDAMEDIO'
      Origin = '"PRODUTOS"."PRO_PRECOVENDAMEDIO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO1: TIBStringField
      FieldName = 'PRO_TABPRECO1'
      Origin = '"PRODUTOS"."PRO_TABPRECO1"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM1: TIBBCDField
      FieldName = 'PRO_MARGEM1'
      Origin = '"PRODUTOS"."PRO_MARGEM1"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO1: TIBBCDField
      FieldName = 'PRO_PRECO1'
      Origin = '"PRODUTOS"."PRO_PRECO1"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO2: TIBStringField
      FieldName = 'PRO_TABPRECO2'
      Origin = '"PRODUTOS"."PRO_TABPRECO2"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM2: TIBBCDField
      FieldName = 'PRO_MARGEM2'
      Origin = '"PRODUTOS"."PRO_MARGEM2"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO2: TIBBCDField
      FieldName = 'PRO_PRECO2'
      Origin = '"PRODUTOS"."PRO_PRECO2"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO3: TIBStringField
      FieldName = 'PRO_TABPRECO3'
      Origin = '"PRODUTOS"."PRO_TABPRECO3"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM3: TIBBCDField
      FieldName = 'PRO_MARGEM3'
      Origin = '"PRODUTOS"."PRO_MARGEM3"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO3: TIBBCDField
      FieldName = 'PRO_PRECO3'
      Origin = '"PRODUTOS"."PRO_PRECO3"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO4: TIBStringField
      FieldName = 'PRO_TABPRECO4'
      Origin = '"PRODUTOS"."PRO_TABPRECO4"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM4: TIBBCDField
      FieldName = 'PRO_MARGEM4'
      Origin = '"PRODUTOS"."PRO_MARGEM4"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO4: TIBBCDField
      FieldName = 'PRO_PRECO4'
      Origin = '"PRODUTOS"."PRO_PRECO4"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO5: TIBStringField
      FieldName = 'PRO_TABPRECO5'
      Origin = '"PRODUTOS"."PRO_TABPRECO5"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM5: TIBBCDField
      FieldName = 'PRO_MARGEM5'
      Origin = '"PRODUTOS"."PRO_MARGEM5"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO5: TIBBCDField
      FieldName = 'PRO_PRECO5'
      Origin = '"PRODUTOS"."PRO_PRECO5"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TABPRECO6: TIBStringField
      FieldName = 'PRO_TABPRECO6'
      Origin = '"PRODUTOS"."PRO_TABPRECO6"'
      Size = 50
    end
    object QYProdutosPRO_MARGEM6: TIBBCDField
      FieldName = 'PRO_MARGEM6'
      Origin = '"PRODUTOS"."PRO_MARGEM6"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_PRECO6: TIBBCDField
      FieldName = 'PRO_PRECO6'
      Origin = '"PRODUTOS"."PRO_PRECO6"'
      currency = True
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ATUALIZATABELA: TIBStringField
      FieldName = 'PRO_ATUALIZATABELA'
      Origin = '"PRODUTOS"."PRO_ATUALIZATABELA"'
      Size = 1
    end
    object QYProdutosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Origin = '"PRODUTOS"."PRO_STATUS"'
      Size = 1
    end
    object QYProdutosPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      Origin = '"PRODUTOS"."PRO_DTCADASTRO"'
    end
    object QYProdutosPRO_DTATUALIZACAO: TDateField
      FieldName = 'PRO_DTATUALIZACAO'
      Origin = '"PRODUTOS"."PRO_DTATUALIZACAO"'
    end
    object QYProdutosPRO_USUARIO: TIBStringField
      FieldName = 'PRO_USUARIO'
      Origin = '"PRODUTOS"."PRO_USUARIO"'
    end
    object QYProdutosPRO_PESO: TIBBCDField
      FieldName = 'PRO_PESO'
      Origin = '"PRODUTOS"."PRO_PESO"'
      Precision = 18
      Size = 3
    end
    object QYProdutosPRO_REGISTROMS: TIBStringField
      FieldName = 'PRO_REGISTROMS'
      Origin = '"PRODUTOS"."PRO_REGISTROMS"'
    end
    object QYProdutosPRO_MARGEM: TIBBCDField
      FieldName = 'PRO_MARGEM'
      Origin = '"PRODUTOS"."PRO_MARGEM"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_COMPOSTO: TIBStringField
      FieldName = 'PRO_COMPOSTO'
      Origin = '"PRODUTOS"."PRO_COMPOSTO"'
      Size = 1
    end
    object QYProdutosPRO_DTULTCOMPRA: TDateField
      FieldName = 'PRO_DTULTCOMPRA'
      Origin = '"PRODUTOS"."PRO_DTULTCOMPRA"'
    end
    object QYProdutosPRO_DTULTVENDA: TDateField
      FieldName = 'PRO_DTULTVENDA'
      Origin = '"PRODUTOS"."PRO_DTULTVENDA"'
    end
    object QYProdutosPRO_INTERNET: TIBStringField
      FieldName = 'PRO_INTERNET'
      Origin = '"PRODUTOS"."PRO_INTERNET"'
      Size = 1
    end
    object QYProdutosPRO_OFERTA: TIBStringField
      FieldName = 'PRO_OFERTA'
      Origin = '"PRODUTOS"."PRO_OFERTA"'
      Size = 1
    end
    object QYProdutosPRO_ALIQICMSST: TIBBCDField
      FieldName = 'PRO_ALIQICMSST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_CSTICMS: TIntegerField
      FieldName = 'PRO_CSTICMS'
      Origin = '"PRODUTOS"."PRO_CSTICMS"'
    end
    object QYProdutosPRO_CSTIPI: TIntegerField
      FieldName = 'PRO_CSTIPI'
      Origin = '"PRODUTOS"."PRO_CSTIPI"'
    end
    object QYProdutosPRO_CSTPIS: TIntegerField
      FieldName = 'PRO_CSTPIS'
      Origin = '"PRODUTOS"."PRO_CSTPIS"'
    end
    object QYProdutosPRO_CSTCOFINS: TIntegerField
      FieldName = 'PRO_CSTCOFINS'
      Origin = '"PRODUTOS"."PRO_CSTCOFINS"'
    end
    object QYProdutosPRO_ALIQPIS: TIBBCDField
      FieldName = 'PRO_ALIQPIS'
      Origin = '"PRODUTOS"."PRO_ALIQPIS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQCOFINS: TIBBCDField
      FieldName = 'PRO_ALIQCOFINS'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINS"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_MODICMS: TIBStringField
      FieldName = 'PRO_MODICMS'
      Origin = '"PRODUTOS"."PRO_MODICMS"'
      Size = 40
    end
    object QYProdutosPRO_MODICMSST: TIBStringField
      FieldName = 'PRO_MODICMSST'
      Origin = '"PRODUTOS"."PRO_MODICMSST"'
      Size = 40
    end
    object QYProdutosPRO_CSTISS: TIntegerField
      FieldName = 'PRO_CSTISS'
      Origin = '"PRODUTOS"."PRO_CSTISS"'
    end
    object QYProdutosPRO_CLASSFISCAL: TIntegerField
      FieldName = 'PRO_CLASSFISCAL'
      Origin = '"PRODUTOS"."PRO_CLASSFISCAL"'
    end
    object QYProdutosPRO_MARCA: TIntegerField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUTOS"."PRO_MARCA"'
      Required = True
    end
    object QYProdutosPRO_ALIQCOFINSST: TIBBCDField
      FieldName = 'PRO_ALIQCOFINSST'
      Origin = '"PRODUTOS"."PRO_ALIQCOFINSST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQICMSADICST: TIBBCDField
      FieldName = 'PRO_ALIQICMSADICST'
      Origin = '"PRODUTOS"."PRO_ALIQICMSADICST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_ALIQPISST: TIBBCDField
      FieldName = 'PRO_ALIQPISST'
      Origin = '"PRODUTOS"."PRO_ALIQPISST"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_COMPOEBASEICMS: TIBStringField
      FieldName = 'PRO_COMPOEBASEICMS'
      Origin = '"PRODUTOS"."PRO_COMPOEBASEICMS"'
      Size = 1
    end
    object QYProdutosPRO_OBSERVACOES: TMemoField
      FieldName = 'PRO_OBSERVACOES'
      Origin = '"PRODUTOS"."PRO_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYProdutosPRO_PALAVRASCHAVE: TIBStringField
      FieldName = 'PRO_PALAVRASCHAVE'
      Origin = '"PRODUTOS"."PRO_PALAVRASCHAVE"'
      Size = 90
    end
    object QYProdutosPRO_FORNECEDOR: TIntegerField
      FieldName = 'PRO_FORNECEDOR'
      Origin = '"PRODUTOS"."PRO_FORNECEDOR"'
      Required = True
    end
    object QYProdutosPRO_ORIGEM: TIBStringField
      FieldName = 'PRO_ORIGEM'
      Origin = '"PRODUTOS"."PRO_ORIGEM"'
      Size = 50
    end
    object QYProdutosPRO_PRECOCUSTOCOMP: TIBBCDField
      FieldName = 'PRO_PRECOCUSTOCOMP'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTOCOMP"'
      Precision = 18
      Size = 4
    end
    object QYProdutosPRO_TIPOITEM: TIBStringField
      FieldName = 'PRO_TIPOITEM'
      Origin = '"PRODUTOS"."PRO_TIPOITEM"'
      Size = 30
    end
    object QYProdutosPRO_SUBSTITUICAOTRIB: TIBStringField
      FieldName = 'PRO_SUBSTITUICAOTRIB'
      Origin = '"PRODUTOS"."PRO_SUBSTITUICAOTRIB"'
      Size = 1
    end
    object QYProdutosPRO_ECFICMS: TIBStringField
      FieldName = 'PRO_ECFICMS'
      Origin = '"PRODUTOS"."PRO_ECFICMS"'
      Size = 10
    end
    object QYProdutosPRO_TOTALIZADORPARCIAL: TIBStringField
      FieldName = 'PRO_TOTALIZADORPARCIAL'
      Origin = '"PRODUTOS"."PRO_TOTALIZADORPARCIAL"'
      Size = 10
    end
  end
  object TRProdutos: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 368
    Top = 352
  end
  object TRNaturezas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 368
    Top = 400
  end
  object QYNaturezas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRNaturezas
    SQL.Strings = (
      'select '
      'NAT_CODIGO, '
      'NAT_DESCRICAO, '
      'NAT_ENTRADASAIDA, '
      'NAT_OBSERVACOES,'
      'NAT_MOVIMENTAESTOQUE,'
      'NAT_MOVIMENTAFINANCEIRO'
      'from NATUREZAS where NAT_CODIGO=:codigo')
    Left = 296
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Origin = '"NATUREZAS"."NAT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYNaturezasNAT_DESCRICAO: TIBStringField
      FieldName = 'NAT_DESCRICAO'
      Origin = '"NATUREZAS"."NAT_DESCRICAO"'
      Size = 50
    end
    object QYNaturezasNAT_ENTRADASAIDA: TIBStringField
      FieldName = 'NAT_ENTRADASAIDA'
      Origin = '"NATUREZAS"."NAT_ENTRADASAIDA"'
      Size = 1
    end
    object QYNaturezasNAT_OBSERVACOES: TMemoField
      FieldName = 'NAT_OBSERVACOES'
      Origin = '"NATUREZAS"."NAT_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYNaturezasNAT_MOVIMENTAESTOQUE: TIBStringField
      FieldName = 'NAT_MOVIMENTAESTOQUE'
      Origin = '"NATUREZAS"."NAT_MOVIMENTAESTOQUE"'
      Size = 1
    end
    object QYNaturezasNAT_MOVIMENTAFINANCEIRO: TIBStringField
      FieldName = 'NAT_MOVIMENTAFINANCEIRO'
      Origin = '"NATUREZAS"."NAT_MOVIMENTAFINANCEIRO"'
      Size = 1
    end
  end
  object QYRuas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRRuas
    SQL.Strings = (
      'select '
      'RUA_NOME, '
      'RUA_ESTADO,'
      'RUA_CIDADE,'
      'RUA_BAIRRO,'
      'ESD_SIGLA,'
      'CID_NOME,'
      'CID_CODIGO,'
      'BAI_NOME'
      'from RUAS'
      'left join ESTADOS on RUA_ESTADO=ESD_CODIGO'
      'left join CIDADES on RUA_CIDADE=CID_CODIGO'
      'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO'
      'where RUA_CEP=:codigo')
    Left = 112
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYRuasRUA_NOME: TIBStringField
      FieldName = 'RUA_NOME'
      Origin = '"RUAS"."RUA_NOME"'
      Size = 100
    end
    object QYRuasRUA_ESTADO: TIntegerField
      FieldName = 'RUA_ESTADO'
      Origin = '"RUAS"."RUA_ESTADO"'
      Required = True
    end
    object QYRuasRUA_CIDADE: TIntegerField
      FieldName = 'RUA_CIDADE'
      Origin = '"RUAS"."RUA_CIDADE"'
      Required = True
    end
    object QYRuasRUA_BAIRRO: TIntegerField
      FieldName = 'RUA_BAIRRO'
      Origin = '"RUAS"."RUA_BAIRRO"'
      Required = True
    end
    object QYRuasESD_SIGLA: TIBStringField
      FieldName = 'ESD_SIGLA'
      Origin = '"ESTADOS"."ESD_SIGLA"'
      Size = 2
    end
    object QYRuasCID_NOME: TIBStringField
      FieldName = 'CID_NOME'
      Origin = '"CIDADES"."CID_NOME"'
      Size = 50
    end
    object QYRuasCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = '"CIDADES"."CID_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QYRuasBAI_NOME: TIBStringField
      FieldName = 'BAI_NOME'
      Origin = '"BAIRROS"."BAI_NOME"'
      Size = 50
    end
  end
  object TRRuas: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 184
    Top = 296
  end
  object TRIcms: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 184
    Top = 344
  end
  object QYIcms: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRIcms
    SQL.Strings = (
      'select ICM_CODIGO, ICM_DESCRICAO from ICMS'
      'where ICM_CODIGO=:codigo')
    Left = 112
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYIcmsICM_CODIGO: TIntegerField
      FieldName = 'ICM_CODIGO'
      Origin = '"ICMS"."ICM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYIcmsICM_DESCRICAO: TIBStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = '"ICMS"."ICM_DESCRICAO"'
      Size = 90
    end
  end
  object QYVendedores: TIBQuery
    Database = DM.IBDatabase1
    Transaction = TRVendedores
    SQL.Strings = (
      'select VEN_CODIGO, VEN_NOME, VEN_COMISSAO from VENDEDORES'
      'where VEN_CODIGO=:codigo')
    Left = 112
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QYVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = '"VENDEDORES"."VEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYVendedoresVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Required = True
      Size = 50
    end
    object QYVendedoresVEN_COMISSAO: TIBBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = '"VENDEDORES"."VEN_COMISSAO"'
      Precision = 18
      Size = 4
    end
  end
  object TRVendedores: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 184
    Top = 392
  end
  object TRCt: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 372
    Top = 295
  end
  object QYCt: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = TRCt
    DeleteSQL.Strings = (
      'delete from CT'
      'where'
      '  CTT_CODIGO = :OLD_CTT_CODIGO')
    InsertSQL.Strings = (
      'insert into CT'
      
        '  (CTT_ALIQICMS, CTT_ALIQICMSRED, CTT_BASEICMS, CTT_BASEICMSRED,' +
        ' CTT_CFOP, '
      
        '   CTT_CFOPDESC, CTT_CODIGO, CTT_COMISSAO, CTT_CONBAIRRO, CTT_CO' +
        'NCEP, CTT_CONCIDADE, '
      
        '   CTT_CONCIDADECODIGO, CTT_CONCNPJ, CTT_CONCOMPLEMENTO, CTT_CON' +
        'CONTATO, '
      
        '   CTT_CONCPF, CTT_CONDICAO, CTT_CONDICAOMEMO, CTT_CONENDERECO, ' +
        'CTT_CONESTADO, '
      
        '   CTT_CONESTADOCODIGO, CTT_CONFONE, CTT_CONIE, CTT_CONNOME, CTT' +
        '_CONNUMERO, '
      
        '   CTT_CONSIGNATARIO, CTT_CSTICMS, CTT_CTEREFERENCIADO, CTT_DESB' +
        'AIRRO, '
      
        '   CTT_DESCEP, CTT_DESCIDADE, CTT_DESCIDADECODIGO, CTT_DESCNPJ, ' +
        'CTT_DESCOMPLEMENTO, '
      
        '   CTT_DESCONTATO, CTT_DESCPF, CTT_DESCPORC, CTT_DESCVALOR, CTT_' +
        'DESENDERECO, '
      
        '   CTT_DESESTADO, CTT_DESESTADOCODIGO, CTT_DESFONE, CTT_DESIE, C' +
        'TT_DESNOME, '
      
        '   CTT_DESNUMERO, CTT_DESTINATARIO, CTT_DIAPREFERENCIAL, CTT_DTA' +
        'TUALIZACAO, '
      
        '   CTT_DTCADASTRO, CTT_DTEMISSAO, CTT_FORMAPAGTO, CTT_ICMSALIQUO' +
        'TAUF, CTT_ICMSPOR, '
      
        '   CTT_INFOADICFISCO, CTT_MODELO, CTT_MOTIVOCANCELAMENTO, CTT_MO' +
        'VIMENTAFINANCEIRO, '
      
        '   CTT_OBSERVACOES, CTT_PAGOPOR, CTT_PESOTOTAL, CTT_PRODUTOPREDO' +
        'M, CTT_REMBAIRRO, '
      
        '   CTT_REMCEP, CTT_REMCIDADE, CTT_REMCIDADECODIGO, CTT_REMCNPJ, ' +
        'CTT_REMCOMPLEMENTO, '
      
        '   CTT_REMCONTATO, CTT_REMCPF, CTT_REMENDERECO, CTT_REMESTADO, C' +
        'TT_REMESTADOCODIGO, '
      
        '   CTT_REMETENTE, CTT_REMFONE, CTT_REMIE, CTT_REMNOME, CTT_REMNU' +
        'MERO, CTT_RETIRA, '
      
        '   CTT_SEGURO, CTT_SEGUROAPOLICE, CTT_SEGUROAVERBACAO, CTT_SEGUR' +
        'ONOME, '
      
        '   CTT_SEGUROVALOR, CTT_SERIE, CTT_STATUS, CTT_TOTALCOMISSAO, CT' +
        'T_TOTALICMS, '
      
        '   CTT_UNIDADEMEDIDA, CTT_USUARIO, CTT_VALORFRETE, CTT_VALORNOTA' +
        'S, CTT_VALOROUTROS, '
      
        '   CTT_VALORSEGURO, CTT_VALORTOTAL, CTT_VEICULO, CTT_VEICULOPLAC' +
        'A, CTT_VEICULORNTC, '
      '   CTT_VENDEDOR)'
      'values'
      
        '  (:CTT_ALIQICMS, :CTT_ALIQICMSRED, :CTT_BASEICMS, :CTT_BASEICMS' +
        'RED, :CTT_CFOP, '
      
        '   :CTT_CFOPDESC, :CTT_CODIGO, :CTT_COMISSAO, :CTT_CONBAIRRO, :C' +
        'TT_CONCEP, '
      
        '   :CTT_CONCIDADE, :CTT_CONCIDADECODIGO, :CTT_CONCNPJ, :CTT_CONC' +
        'OMPLEMENTO, '
      
        '   :CTT_CONCONTATO, :CTT_CONCPF, :CTT_CONDICAO, :CTT_CONDICAOMEM' +
        'O, :CTT_CONENDERECO, '
      
        '   :CTT_CONESTADO, :CTT_CONESTADOCODIGO, :CTT_CONFONE, :CTT_CONI' +
        'E, :CTT_CONNOME, '
      
        '   :CTT_CONNUMERO, :CTT_CONSIGNATARIO, :CTT_CSTICMS, :CTT_CTEREF' +
        'ERENCIADO, '
      
        '   :CTT_DESBAIRRO, :CTT_DESCEP, :CTT_DESCIDADE, :CTT_DESCIDADECO' +
        'DIGO, :CTT_DESCNPJ, '
      
        '   :CTT_DESCOMPLEMENTO, :CTT_DESCONTATO, :CTT_DESCPF, :CTT_DESCP' +
        'ORC, :CTT_DESCVALOR, '
      
        '   :CTT_DESENDERECO, :CTT_DESESTADO, :CTT_DESESTADOCODIGO, :CTT_' +
        'DESFONE, '
      
        '   :CTT_DESIE, :CTT_DESNOME, :CTT_DESNUMERO, :CTT_DESTINATARIO, ' +
        ':CTT_DIAPREFERENCIAL, '
      
        '   :CTT_DTATUALIZACAO, :CTT_DTCADASTRO, :CTT_DTEMISSAO, :CTT_FOR' +
        'MAPAGTO, '
      
        '   :CTT_ICMSALIQUOTAUF, :CTT_ICMSPOR, :CTT_INFOADICFISCO, :CTT_M' +
        'ODELO, '
      
        '   :CTT_MOTIVOCANCELAMENTO, :CTT_MOVIMENTAFINANCEIRO, :CTT_OBSER' +
        'VACOES, '
      
        '   :CTT_PAGOPOR, :CTT_PESOTOTAL, :CTT_PRODUTOPREDOM, :CTT_REMBAI' +
        'RRO, :CTT_REMCEP, '
      
        '   :CTT_REMCIDADE, :CTT_REMCIDADECODIGO, :CTT_REMCNPJ, :CTT_REMC' +
        'OMPLEMENTO, '
      
        '   :CTT_REMCONTATO, :CTT_REMCPF, :CTT_REMENDERECO, :CTT_REMESTAD' +
        'O, :CTT_REMESTADOCODIGO, '
      
        '   :CTT_REMETENTE, :CTT_REMFONE, :CTT_REMIE, :CTT_REMNOME, :CTT_' +
        'REMNUMERO, '
      
        '   :CTT_RETIRA, :CTT_SEGURO, :CTT_SEGUROAPOLICE, :CTT_SEGUROAVER' +
        'BACAO, '
      
        '   :CTT_SEGURONOME, :CTT_SEGUROVALOR, :CTT_SERIE, :CTT_STATUS, :' +
        'CTT_TOTALCOMISSAO, '
      
        '   :CTT_TOTALICMS, :CTT_UNIDADEMEDIDA, :CTT_USUARIO, :CTT_VALORF' +
        'RETE, :CTT_VALORNOTAS, '
      
        '   :CTT_VALOROUTROS, :CTT_VALORSEGURO, :CTT_VALORTOTAL, :CTT_VEI' +
        'CULO, :CTT_VEICULOPLACA, '
      '   :CTT_VEICULORNTC, :CTT_VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CTT_CODIGO,'
      '  CTT_VEICULO,'
      '  CTT_ALIQICMS,'
      '  CTT_ALIQICMSRED,'
      '  CTT_BASEICMS,'
      '  CTT_BASEICMSRED,'
      '  CTT_CFOP,'
      '  CTT_CFOPDESC,'
      '  CTT_COMISSAO,'
      '  CTT_CONDICAO,'
      '  CTT_CONDICAOMEMO,'
      '  CTT_CSTICMS,'
      '  CTT_CTEREFERENCIADO,'
      '  CTT_DESBAIRRO,'
      '  CTT_DESCEP,'
      '  CTT_DESCIDADE,'
      '  CTT_DESCIDADECODIGO,'
      '  CTT_DESCNPJ,'
      '  CTT_DESCOMPLEMENTO,'
      '  CTT_DESCONTATO,'
      '  CTT_DESCPF,'
      '  CTT_DESCPORC,'
      '  CTT_DESCVALOR,'
      '  CTT_DESENDERECO,'
      '  CTT_DESESTADO,'
      '  CTT_DESESTADOCODIGO,'
      '  CTT_DESFONE,'
      '  CTT_DESIE,'
      '  CTT_DESNOME,'
      '  CTT_DESNUMERO,'
      '  CTT_DESTINATARIO,'
      '  CTT_DIAPREFERENCIAL,'
      '  CTT_DTATUALIZACAO,'
      '  CTT_DTCADASTRO,'
      '  CTT_DTEMISSAO,'
      '  CTT_FORMAPAGTO,'
      '  CTT_ICMSALIQUOTAUF,'
      '  CTT_ICMSPOR,'
      '  CTT_INFOADICFISCO,'
      '  CTT_MODELO,'
      '  CTT_MOTIVOCANCELAMENTO,'
      '  CTT_MOVIMENTAFINANCEIRO,'
      '  CTT_OBSERVACOES,'
      '  CTT_PAGOPOR,'
      '  CTT_PESOTOTAL,'
      '  CTT_PRODUTOPREDOM,'
      '  CTT_REMBAIRRO,'
      '  CTT_REMCEP,'
      '  CTT_REMCIDADE,'
      '  CTT_REMCIDADECODIGO,'
      '  CTT_REMCNPJ,'
      '  CTT_REMCOMPLEMENTO,'
      '  CTT_REMCONTATO,'
      '  CTT_REMCPF,'
      '  CTT_REMENDERECO,'
      '  CTT_REMESTADO,'
      '  CTT_REMESTADOCODIGO,'
      '  CTT_REMETENTE,'
      '  CTT_REMFONE,'
      '  CTT_REMIE,'
      '  CTT_REMNOME,'
      '  CTT_REMNUMERO,'
      '  CTT_RETIRA,'
      '  CTT_SEGURO,'
      '  CTT_SEGUROAPOLICE,'
      '  CTT_SEGUROAVERBACAO,'
      '  CTT_SEGURONOME,'
      '  CTT_SEGUROVALOR,'
      '  CTT_SERIE,'
      '  CTT_STATUS,'
      '  CTT_TOTALCOMISSAO,'
      '  CTT_TOTALICMS,'
      '  CTT_UNIDADEMEDIDA,'
      '  CTT_USUARIO,'
      '  CTT_VALORFRETE,'
      '  CTT_VALORNOTAS,'
      '  CTT_VALOROUTROS,'
      '  CTT_VALORSEGURO,'
      '  CTT_VALORTOTAL,'
      '  CTT_VEICULOPLACA,'
      '  CTT_VEICULORNTC,'
      '  CTT_VENDEDOR,'
      '  CTT_CONSIGNATARIO,'
      '  CTT_CONBAIRRO,'
      '  CTT_CONCEP,'
      '  CTT_CONCIDADE,'
      '  CTT_CONCIDADECODIGO,'
      '  CTT_CONCNPJ,'
      '  CTT_CONCPF,'
      '  CTT_CONCOMPLEMENTO,'
      '  CTT_CONCONTATO,'
      '  CTT_CONENDERECO,'
      '  CTT_CONNUMERO,'
      '  CTT_CONESTADO,'
      '  CTT_CONESTADOCODIGO,'
      '  CTT_CONFONE,'
      '  CTT_CONIE,'
      '  CTT_CONNOME'
      'from CT '
      'where'
      '  CTT_CODIGO = :CTT_CODIGO')
    SelectSQL.Strings = (
      'select * from CT'
      'left join CONDICOES on CTT_CONDICAO=CPG_CODIGO'
      'left join FROTAS on CTT_VEICULO=FRO_CODIGO'
      'left join ICMS on CTT_CSTICMS=ICM_CODIGO'
      'left join VENDEDORES on CTT_VENDEDOR=VEN_CODIGO'
      'where CTT_CODIGO=:codigo')
    ModifySQL.Strings = (
      'update CT'
      'set'
      '  CTT_ALIQICMS = :CTT_ALIQICMS,'
      '  CTT_ALIQICMSRED = :CTT_ALIQICMSRED,'
      '  CTT_BASEICMS = :CTT_BASEICMS,'
      '  CTT_BASEICMSRED = :CTT_BASEICMSRED,'
      '  CTT_CFOP = :CTT_CFOP,'
      '  CTT_CFOPDESC = :CTT_CFOPDESC,'
      '  CTT_CODIGO = :CTT_CODIGO,'
      '  CTT_COMISSAO = :CTT_COMISSAO,'
      '  CTT_CONBAIRRO = :CTT_CONBAIRRO,'
      '  CTT_CONCEP = :CTT_CONCEP,'
      '  CTT_CONCIDADE = :CTT_CONCIDADE,'
      '  CTT_CONCIDADECODIGO = :CTT_CONCIDADECODIGO,'
      '  CTT_CONCNPJ = :CTT_CONCNPJ,'
      '  CTT_CONCOMPLEMENTO = :CTT_CONCOMPLEMENTO,'
      '  CTT_CONCONTATO = :CTT_CONCONTATO,'
      '  CTT_CONCPF = :CTT_CONCPF,'
      '  CTT_CONDICAO = :CTT_CONDICAO,'
      '  CTT_CONDICAOMEMO = :CTT_CONDICAOMEMO,'
      '  CTT_CONENDERECO = :CTT_CONENDERECO,'
      '  CTT_CONESTADO = :CTT_CONESTADO,'
      '  CTT_CONESTADOCODIGO = :CTT_CONESTADOCODIGO,'
      '  CTT_CONFONE = :CTT_CONFONE,'
      '  CTT_CONIE = :CTT_CONIE,'
      '  CTT_CONNOME = :CTT_CONNOME,'
      '  CTT_CONNUMERO = :CTT_CONNUMERO,'
      '  CTT_CONSIGNATARIO = :CTT_CONSIGNATARIO,'
      '  CTT_CSTICMS = :CTT_CSTICMS,'
      '  CTT_CTEREFERENCIADO = :CTT_CTEREFERENCIADO,'
      '  CTT_DESBAIRRO = :CTT_DESBAIRRO,'
      '  CTT_DESCEP = :CTT_DESCEP,'
      '  CTT_DESCIDADE = :CTT_DESCIDADE,'
      '  CTT_DESCIDADECODIGO = :CTT_DESCIDADECODIGO,'
      '  CTT_DESCNPJ = :CTT_DESCNPJ,'
      '  CTT_DESCOMPLEMENTO = :CTT_DESCOMPLEMENTO,'
      '  CTT_DESCONTATO = :CTT_DESCONTATO,'
      '  CTT_DESCPF = :CTT_DESCPF,'
      '  CTT_DESCPORC = :CTT_DESCPORC,'
      '  CTT_DESCVALOR = :CTT_DESCVALOR,'
      '  CTT_DESENDERECO = :CTT_DESENDERECO,'
      '  CTT_DESESTADO = :CTT_DESESTADO,'
      '  CTT_DESESTADOCODIGO = :CTT_DESESTADOCODIGO,'
      '  CTT_DESFONE = :CTT_DESFONE,'
      '  CTT_DESIE = :CTT_DESIE,'
      '  CTT_DESNOME = :CTT_DESNOME,'
      '  CTT_DESNUMERO = :CTT_DESNUMERO,'
      '  CTT_DESTINATARIO = :CTT_DESTINATARIO,'
      '  CTT_DIAPREFERENCIAL = :CTT_DIAPREFERENCIAL,'
      '  CTT_DTATUALIZACAO = :CTT_DTATUALIZACAO,'
      '  CTT_DTCADASTRO = :CTT_DTCADASTRO,'
      '  CTT_DTEMISSAO = :CTT_DTEMISSAO,'
      '  CTT_FORMAPAGTO = :CTT_FORMAPAGTO,'
      '  CTT_ICMSALIQUOTAUF = :CTT_ICMSALIQUOTAUF,'
      '  CTT_ICMSPOR = :CTT_ICMSPOR,'
      '  CTT_INFOADICFISCO = :CTT_INFOADICFISCO,'
      '  CTT_MODELO = :CTT_MODELO,'
      '  CTT_MOTIVOCANCELAMENTO = :CTT_MOTIVOCANCELAMENTO,'
      '  CTT_MOVIMENTAFINANCEIRO = :CTT_MOVIMENTAFINANCEIRO,'
      '  CTT_OBSERVACOES = :CTT_OBSERVACOES,'
      '  CTT_PAGOPOR = :CTT_PAGOPOR,'
      '  CTT_PESOTOTAL = :CTT_PESOTOTAL,'
      '  CTT_PRODUTOPREDOM = :CTT_PRODUTOPREDOM,'
      '  CTT_REMBAIRRO = :CTT_REMBAIRRO,'
      '  CTT_REMCEP = :CTT_REMCEP,'
      '  CTT_REMCIDADE = :CTT_REMCIDADE,'
      '  CTT_REMCIDADECODIGO = :CTT_REMCIDADECODIGO,'
      '  CTT_REMCNPJ = :CTT_REMCNPJ,'
      '  CTT_REMCOMPLEMENTO = :CTT_REMCOMPLEMENTO,'
      '  CTT_REMCONTATO = :CTT_REMCONTATO,'
      '  CTT_REMCPF = :CTT_REMCPF,'
      '  CTT_REMENDERECO = :CTT_REMENDERECO,'
      '  CTT_REMESTADO = :CTT_REMESTADO,'
      '  CTT_REMESTADOCODIGO = :CTT_REMESTADOCODIGO,'
      '  CTT_REMETENTE = :CTT_REMETENTE,'
      '  CTT_REMFONE = :CTT_REMFONE,'
      '  CTT_REMIE = :CTT_REMIE,'
      '  CTT_REMNOME = :CTT_REMNOME,'
      '  CTT_REMNUMERO = :CTT_REMNUMERO,'
      '  CTT_RETIRA = :CTT_RETIRA,'
      '  CTT_SEGURO = :CTT_SEGURO,'
      '  CTT_SEGUROAPOLICE = :CTT_SEGUROAPOLICE,'
      '  CTT_SEGUROAVERBACAO = :CTT_SEGUROAVERBACAO,'
      '  CTT_SEGURONOME = :CTT_SEGURONOME,'
      '  CTT_SEGUROVALOR = :CTT_SEGUROVALOR,'
      '  CTT_SERIE = :CTT_SERIE,'
      '  CTT_STATUS = :CTT_STATUS,'
      '  CTT_TOTALCOMISSAO = :CTT_TOTALCOMISSAO,'
      '  CTT_TOTALICMS = :CTT_TOTALICMS,'
      '  CTT_UNIDADEMEDIDA = :CTT_UNIDADEMEDIDA,'
      '  CTT_USUARIO = :CTT_USUARIO,'
      '  CTT_VALORFRETE = :CTT_VALORFRETE,'
      '  CTT_VALORNOTAS = :CTT_VALORNOTAS,'
      '  CTT_VALOROUTROS = :CTT_VALOROUTROS,'
      '  CTT_VALORSEGURO = :CTT_VALORSEGURO,'
      '  CTT_VALORTOTAL = :CTT_VALORTOTAL,'
      '  CTT_VEICULO = :CTT_VEICULO,'
      '  CTT_VEICULOPLACA = :CTT_VEICULOPLACA,'
      '  CTT_VEICULORNTC = :CTT_VEICULORNTC,'
      '  CTT_VENDEDOR = :CTT_VENDEDOR'
      'where'
      '  CTT_CODIGO = :OLD_CTT_CODIGO')
    GeneratorField.Field = 'CTE_CODIGO'
    GeneratorField.Generator = 'GEN_CONHECIMENTOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 292
    Top = 295
    object QYCtCTT_CODIGO: TIntegerField
      FieldName = 'CTT_CODIGO'
      Origin = '"CT"."CTT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCtCTT_VEICULO: TIntegerField
      FieldName = 'CTT_VEICULO'
      Origin = '"CT"."CTT_VEICULO"'
      Required = True
    end
    object QYCtCTT_ALIQICMS: TIBBCDField
      FieldName = 'CTT_ALIQICMS'
      Origin = '"CT"."CTT_ALIQICMS"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_ALIQICMSRED: TIBBCDField
      FieldName = 'CTT_ALIQICMSRED'
      Origin = '"CT"."CTT_ALIQICMSRED"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_BASEICMS: TIBBCDField
      FieldName = 'CTT_BASEICMS'
      Origin = '"CT"."CTT_BASEICMS"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_BASEICMSRED: TIBBCDField
      FieldName = 'CTT_BASEICMSRED'
      Origin = '"CT"."CTT_BASEICMSRED"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_CFOP: TIntegerField
      FieldName = 'CTT_CFOP'
      Origin = '"CT"."CTT_CFOP"'
    end
    object QYCtCTT_CFOPDESC: TIBStringField
      FieldName = 'CTT_CFOPDESC'
      Origin = '"CT"."CTT_CFOPDESC"'
      Size = 50
    end
    object QYCtCTT_COMISSAO: TIBBCDField
      FieldName = 'CTT_COMISSAO'
      Origin = '"CT"."CTT_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_CONDICAO: TIntegerField
      FieldName = 'CTT_CONDICAO'
      Origin = '"CT"."CTT_CONDICAO"'
      Required = True
    end
    object QYCtCTT_CONDICAOMEMO: TWideMemoField
      FieldName = 'CTT_CONDICAOMEMO'
      Origin = '"CT"."CTT_CONDICAOMEMO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYCtCTT_CSTICMS: TIntegerField
      FieldName = 'CTT_CSTICMS'
      Origin = '"CT"."CTT_CSTICMS"'
    end
    object QYCtCTT_CTEREFERENCIADO: TIBStringField
      FieldName = 'CTT_CTEREFERENCIADO'
      Origin = '"CT"."CTT_CTEREFERENCIADO"'
      Size = 50
    end
    object QYCtCTT_DESBAIRRO: TIBStringField
      FieldName = 'CTT_DESBAIRRO'
      Origin = '"CT"."CTT_DESBAIRRO"'
      Size = 50
    end
    object QYCtCTT_DESCEP: TIBStringField
      FieldName = 'CTT_DESCEP'
      Origin = '"CT"."CTT_DESCEP"'
      Size = 10
    end
    object QYCtCTT_DESCIDADE: TIBStringField
      FieldName = 'CTT_DESCIDADE'
      Origin = '"CT"."CTT_DESCIDADE"'
      Size = 50
    end
    object QYCtCTT_DESCIDADECODIGO: TIntegerField
      FieldName = 'CTT_DESCIDADECODIGO'
      Origin = '"CT"."CTT_DESCIDADECODIGO"'
    end
    object QYCtCTT_DESCNPJ: TIBStringField
      FieldName = 'CTT_DESCNPJ'
      Origin = '"CT"."CTT_DESCNPJ"'
    end
    object QYCtCTT_DESCOMPLEMENTO: TIBStringField
      FieldName = 'CTT_DESCOMPLEMENTO'
      Origin = '"CT"."CTT_DESCOMPLEMENTO"'
      Size = 30
    end
    object QYCtCTT_DESCONTATO: TIBStringField
      FieldName = 'CTT_DESCONTATO'
      Origin = '"CT"."CTT_DESCONTATO"'
      Size = 50
    end
    object QYCtCTT_DESCPF: TIBStringField
      FieldName = 'CTT_DESCPF'
      Origin = '"CT"."CTT_DESCPF"'
    end
    object QYCtCTT_DESCPORC: TIBBCDField
      FieldName = 'CTT_DESCPORC'
      Origin = '"CT"."CTT_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_DESCVALOR: TIBBCDField
      FieldName = 'CTT_DESCVALOR'
      Origin = '"CT"."CTT_DESCVALOR"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_DESENDERECO: TIBStringField
      FieldName = 'CTT_DESENDERECO'
      Origin = '"CT"."CTT_DESENDERECO"'
      Size = 100
    end
    object QYCtCTT_DESESTADO: TIBStringField
      FieldName = 'CTT_DESESTADO'
      Origin = '"CT"."CTT_DESESTADO"'
      Size = 2
    end
    object QYCtCTT_DESESTADOCODIGO: TIntegerField
      FieldName = 'CTT_DESESTADOCODIGO'
      Origin = '"CT"."CTT_DESESTADOCODIGO"'
    end
    object QYCtCTT_DESFONE: TIBStringField
      FieldName = 'CTT_DESFONE'
      Origin = '"CT"."CTT_DESFONE"'
    end
    object QYCtCTT_DESIE: TIBStringField
      FieldName = 'CTT_DESIE'
      Origin = '"CT"."CTT_DESIE"'
    end
    object QYCtCTT_DESNOME: TIBStringField
      FieldName = 'CTT_DESNOME'
      Origin = '"CT"."CTT_DESNOME"'
      Size = 50
    end
    object QYCtCTT_DESNUMERO: TIntegerField
      FieldName = 'CTT_DESNUMERO'
      Origin = '"CT"."CTT_DESNUMERO"'
    end
    object QYCtCTT_DESTINATARIO: TIntegerField
      FieldName = 'CTT_DESTINATARIO'
      Origin = '"CT"."CTT_DESTINATARIO"'
      Required = True
    end
    object QYCtCTT_DIAPREFERENCIAL: TIntegerField
      FieldName = 'CTT_DIAPREFERENCIAL'
      Origin = '"CT"."CTT_DIAPREFERENCIAL"'
    end
    object QYCtCTT_DTATUALIZACAO: TDateField
      FieldName = 'CTT_DTATUALIZACAO'
      Origin = '"CT"."CTT_DTATUALIZACAO"'
    end
    object QYCtCTT_DTCADASTRO: TDateField
      FieldName = 'CTT_DTCADASTRO'
      Origin = '"CT"."CTT_DTCADASTRO"'
    end
    object QYCtCTT_DTEMISSAO: TDateField
      FieldName = 'CTT_DTEMISSAO'
      Origin = '"CT"."CTT_DTEMISSAO"'
    end
    object QYCtCTT_FORMAPAGTO: TIBStringField
      FieldName = 'CTT_FORMAPAGTO'
      Origin = '"CT"."CTT_FORMAPAGTO"'
      Size = 15
    end
    object QYCtCTT_ICMSALIQUOTAUF: TIBBCDField
      FieldName = 'CTT_ICMSALIQUOTAUF'
      Origin = '"CT"."CTT_ICMSALIQUOTAUF"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_ICMSPOR: TIBStringField
      FieldName = 'CTT_ICMSPOR'
      Origin = '"CT"."CTT_ICMSPOR"'
      Size = 1
    end
    object QYCtCTT_INFOADICFISCO: TWideMemoField
      FieldName = 'CTT_INFOADICFISCO'
      Origin = '"CT"."CTT_INFOADICFISCO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYCtCTT_MODELO: TIntegerField
      FieldName = 'CTT_MODELO'
      Origin = '"CT"."CTT_MODELO"'
    end
    object QYCtCTT_MOTIVOCANCELAMENTO: TIBStringField
      FieldName = 'CTT_MOTIVOCANCELAMENTO'
      Origin = '"CT"."CTT_MOTIVOCANCELAMENTO"'
      Size = 120
    end
    object QYCtCTT_MOVIMENTAFINANCEIRO: TIBStringField
      FieldName = 'CTT_MOVIMENTAFINANCEIRO'
      Origin = '"CT"."CTT_MOVIMENTAFINANCEIRO"'
      Size = 1
    end
    object QYCtCTT_OBSERVACOES: TWideMemoField
      FieldName = 'CTT_OBSERVACOES'
      Origin = '"CT"."CTT_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QYCtCTT_PAGOPOR: TIBStringField
      FieldName = 'CTT_PAGOPOR'
      Origin = '"CT"."CTT_PAGOPOR"'
      Size = 1
    end
    object QYCtCTT_PESOTOTAL: TIBBCDField
      FieldName = 'CTT_PESOTOTAL'
      Origin = '"CT"."CTT_PESOTOTAL"'
      Precision = 18
      Size = 3
    end
    object QYCtCTT_PRODUTOPREDOM: TIBStringField
      FieldName = 'CTT_PRODUTOPREDOM'
      Origin = '"CT"."CTT_PRODUTOPREDOM"'
      Size = 50
    end
    object QYCtCTT_REMBAIRRO: TIBStringField
      FieldName = 'CTT_REMBAIRRO'
      Origin = '"CT"."CTT_REMBAIRRO"'
      Size = 50
    end
    object QYCtCTT_REMCEP: TIBStringField
      FieldName = 'CTT_REMCEP'
      Origin = '"CT"."CTT_REMCEP"'
      Size = 10
    end
    object QYCtCTT_REMCIDADE: TIBStringField
      FieldName = 'CTT_REMCIDADE'
      Origin = '"CT"."CTT_REMCIDADE"'
      Size = 50
    end
    object QYCtCTT_REMCIDADECODIGO: TIntegerField
      FieldName = 'CTT_REMCIDADECODIGO'
      Origin = '"CT"."CTT_REMCIDADECODIGO"'
    end
    object QYCtCTT_REMCNPJ: TIBStringField
      FieldName = 'CTT_REMCNPJ'
      Origin = '"CT"."CTT_REMCNPJ"'
    end
    object QYCtCTT_REMCOMPLEMENTO: TIBStringField
      FieldName = 'CTT_REMCOMPLEMENTO'
      Origin = '"CT"."CTT_REMCOMPLEMENTO"'
      Size = 30
    end
    object QYCtCTT_REMCONTATO: TIBStringField
      FieldName = 'CTT_REMCONTATO'
      Origin = '"CT"."CTT_REMCONTATO"'
      Size = 50
    end
    object QYCtCTT_REMCPF: TIBStringField
      FieldName = 'CTT_REMCPF'
      Origin = '"CT"."CTT_REMCPF"'
    end
    object QYCtCTT_REMENDERECO: TIBStringField
      FieldName = 'CTT_REMENDERECO'
      Origin = '"CT"."CTT_REMENDERECO"'
      Size = 100
    end
    object QYCtCTT_REMESTADO: TIBStringField
      FieldName = 'CTT_REMESTADO'
      Origin = '"CT"."CTT_REMESTADO"'
      Size = 2
    end
    object QYCtCTT_REMESTADOCODIGO: TIntegerField
      FieldName = 'CTT_REMESTADOCODIGO'
      Origin = '"CT"."CTT_REMESTADOCODIGO"'
    end
    object QYCtCTT_REMETENTE: TIntegerField
      FieldName = 'CTT_REMETENTE'
      Origin = '"CT"."CTT_REMETENTE"'
      Required = True
    end
    object QYCtCTT_REMFONE: TIBStringField
      FieldName = 'CTT_REMFONE'
      Origin = '"CT"."CTT_REMFONE"'
    end
    object QYCtCTT_REMIE: TIBStringField
      FieldName = 'CTT_REMIE'
      Origin = '"CT"."CTT_REMIE"'
    end
    object QYCtCTT_REMNOME: TIBStringField
      FieldName = 'CTT_REMNOME'
      Origin = '"CT"."CTT_REMNOME"'
      Size = 50
    end
    object QYCtCTT_REMNUMERO: TIntegerField
      FieldName = 'CTT_REMNUMERO'
      Origin = '"CT"."CTT_REMNUMERO"'
    end
    object QYCtCTT_RETIRA: TIBStringField
      FieldName = 'CTT_RETIRA'
      Origin = '"CT"."CTT_RETIRA"'
      Size = 1
    end
    object QYCtCTT_SEGURO: TIBStringField
      FieldName = 'CTT_SEGURO'
      Origin = '"CT"."CTT_SEGURO"'
    end
    object QYCtCTT_SEGUROAPOLICE: TIntegerField
      FieldName = 'CTT_SEGUROAPOLICE'
      Origin = '"CT"."CTT_SEGUROAPOLICE"'
    end
    object QYCtCTT_SEGUROAVERBACAO: TIntegerField
      FieldName = 'CTT_SEGUROAVERBACAO'
      Origin = '"CT"."CTT_SEGUROAVERBACAO"'
    end
    object QYCtCTT_SEGURONOME: TIBStringField
      FieldName = 'CTT_SEGURONOME'
      Origin = '"CT"."CTT_SEGURONOME"'
      Size = 50
    end
    object QYCtCTT_SEGUROVALOR: TIBBCDField
      FieldName = 'CTT_SEGUROVALOR'
      Origin = '"CT"."CTT_SEGUROVALOR"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_SERIE: TIntegerField
      FieldName = 'CTT_SERIE'
      Origin = '"CT"."CTT_SERIE"'
    end
    object QYCtCTT_STATUS: TIBStringField
      FieldName = 'CTT_STATUS'
      Origin = '"CT"."CTT_STATUS"'
      Size = 1
    end
    object QYCtCTT_TOTALCOMISSAO: TIBBCDField
      FieldName = 'CTT_TOTALCOMISSAO'
      Origin = '"CT"."CTT_TOTALCOMISSAO"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_TOTALICMS: TIBBCDField
      FieldName = 'CTT_TOTALICMS'
      Origin = '"CT"."CTT_TOTALICMS"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_UNIDADEMEDIDA: TIBStringField
      FieldName = 'CTT_UNIDADEMEDIDA'
      Origin = '"CT"."CTT_UNIDADEMEDIDA"'
    end
    object QYCtCTT_USUARIO: TIBStringField
      FieldName = 'CTT_USUARIO'
      Origin = '"CT"."CTT_USUARIO"'
    end
    object QYCtCTT_VALORFRETE: TIBBCDField
      FieldName = 'CTT_VALORFRETE'
      Origin = '"CT"."CTT_VALORFRETE"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_VALORNOTAS: TIBBCDField
      FieldName = 'CTT_VALORNOTAS'
      Origin = '"CT"."CTT_VALORNOTAS"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_VALOROUTROS: TIBBCDField
      FieldName = 'CTT_VALOROUTROS'
      Origin = '"CT"."CTT_VALOROUTROS"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_VALORSEGURO: TIBBCDField
      FieldName = 'CTT_VALORSEGURO'
      Origin = '"CT"."CTT_VALORSEGURO"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_VALORTOTAL: TIBBCDField
      FieldName = 'CTT_VALORTOTAL'
      Origin = '"CT"."CTT_VALORTOTAL"'
      Precision = 18
      Size = 4
    end
    object QYCtCTT_VEICULOPLACA: TIBStringField
      FieldName = 'CTT_VEICULOPLACA'
      Origin = '"CT"."CTT_VEICULOPLACA"'
      Size = 10
    end
    object QYCtCTT_VEICULORNTC: TIBStringField
      FieldName = 'CTT_VEICULORNTC'
      Origin = '"CT"."CTT_VEICULORNTC"'
    end
    object QYCtCTT_VENDEDOR: TIntegerField
      FieldName = 'CTT_VENDEDOR'
      Origin = '"CT"."CTT_VENDEDOR"'
      Required = True
    end
    object QYCtCPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
    object QYCtFRO_DESCRICAO: TIBStringField
      FieldName = 'FRO_DESCRICAO'
      Origin = '"FROTAS"."FRO_DESCRICAO"'
      Size = 50
    end
    object QYCtICM_DESCRICAO: TIBStringField
      FieldName = 'ICM_DESCRICAO'
      Origin = '"ICMS"."ICM_DESCRICAO"'
      Size = 120
    end
    object QYCtVEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
end
