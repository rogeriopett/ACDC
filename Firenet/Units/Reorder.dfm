object FormReorder: TFormReorder
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reordenador de campos'
  ClientHeight = 536
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 490
    Top = 6
    Width = 38
    Height = 13
    Caption = 'Campos'
  end
  object Label2: TLabel
    Left = 610
    Top = 6
    Width = 79
    Height = 13
    Caption = 'Indices Prim'#225'rios'
  end
  object Label3: TLabel
    Left = 730
    Top = 6
    Width = 95
    Height = 13
    Caption = 'Indices Estrangeiros'
  end
  object Label4: TLabel
    Left = 850
    Top = 6
    Width = 38
    Height = 13
    Caption = 'Preview'
  end
  object Label5: TLabel
    Left = 10
    Top = 6
    Width = 41
    Height = 13
    Caption = 'Tabelas:'
  end
  object Label6: TLabel
    Left = 210
    Top = 6
    Width = 41
    Height = 13
    Caption = 'Campos:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 496
    Width = 953
    Height = 5
    Shape = bsTopLine
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 21
    Width = 193
    Height = 469
    DataSource = DSTabelas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RDB$RELATION_NAME'
        Title.Caption = 'Tabelas'
        Width = 160
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 208
    Top = 20
    Width = 273
    Height = 469
    DataSource = DSCampos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RDB$FIELD_NAME'
        Title.Caption = 'Campos'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RDB$FIELD_POSITION'
        Title.Caption = 'Posi'#231#227'o'
        Visible = True
      end>
  end
  object ListBox1: TListBox
    Left = 488
    Top = 20
    Width = 113
    Height = 469
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
  end
  object BitBtn1: TPngBitBtn
    Left = 552
    Top = 504
    Width = 97
    Height = 25
    Caption = 'Preview'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn3: TPngBitBtn
    Left = 656
    Top = 504
    Width = 97
    Height = 25
    Caption = 'Reordenar'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object ListBox2: TListBox
    Left = 608
    Top = 20
    Width = 113
    Height = 469
    ItemHeight = 13
    Sorted = True
    TabOrder = 5
  end
  object ListBox3: TListBox
    Left = 728
    Top = 20
    Width = 113
    Height = 469
    ItemHeight = 13
    Sorted = True
    TabOrder = 6
  end
  object ListBox4: TListBox
    Left = 848
    Top = 20
    Width = 113
    Height = 469
    ItemHeight = 13
    TabOrder = 7
  end
  object BitBtn2: TPngBitBtn
    Left = 760
    Top = 504
    Width = 97
    Height = 25
    Caption = 'Reordenar tudo'
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object BitBtn5: TPngBitBtn
    Left = 864
    Top = 504
    Width = 97
    Height = 25
    Caption = '&Fechar'
    TabOrder = 9
    OnClick = BitBtn5Click
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      6100000A3769434350735247422049454336313936362D322E310000789C9D96
      775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
      90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
      70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
      05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
      F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
      0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
      569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
      91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
      53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
      24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
      E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
      965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
      FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
      2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
      C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
      B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
      407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
      B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
      13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
      9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
      9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
      940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
      6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
      B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
      917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
      940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
      A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
      318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
      C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
      E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
      2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
      8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
      46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
      5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
      A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
      28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
      6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
      3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
      7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
      3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
      AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
      31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
      FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
      1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
      6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
      4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
      9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
      CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
      D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
      A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
      5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
      67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
      85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
      0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
      96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
      44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
      C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
      F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
      EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
      C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
      FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
      CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
      7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
      BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
      8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
      DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
      572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
      5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
      A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
      B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
      CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
      7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
      CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
      4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
      8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
      377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
      E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
      3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
      267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
      FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
      EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
      8F70662A000000097048597300002E2300002E230178A53F7600000219494441
      5478DA63FCFFFF3F8368FE293E560ECE9B0C4482FF0C0C939F77EAB681D88C20
      038433CEF1B3F3B37E6065FCB7D04EF8EEAB23EF14DF7CFFC7F20F9B66460686
      1220351F6840258601E7AC3BCE4BB07D36FCCFF07F07A3C7664F6C0648955FBE
      0A74C1260C0338F8593E3C76ACFDC3C4F09F0528F483D97B0BD7BF7FFFFE136D
      00C805F3F5964C7713BA6EFEF117CB82BC93E6DB410A80FEF8B7ACE3C7837FFF
      EAFF113480E1FF7F3F37B61DBC8C4C4C538072824816F7CE6F2A2921680013E3
      EF4057B67DD381E21290D0FEBF10483D606460ACFDFBFF9FEDA2E6B263780DD0
      61B9DA21CDFCA40228FE07885980F8F2C296AF067135DCFB80A1FF13E80A77AC
      069816ED9494E47AF64C80E9C31B6686BFCF80562F05C6572748C15F0606CF2F
      5FBE9EE0E0E01058D656FE00AB01E6E5DB24F8593E3E071AB097F3DFC7EA1F3F
      5E5FE2E2967C089417FDF3EBE781C51DD58E44C50228109F75E96D8EA9E93160
      65623807927FFFEAC5FB0D337A84483220B1B66717D00BAE3FBE7DB9FFF6F953
      C5FF0C7FDD18FFFCBBF9FEC7FB374F355A4E138AC65FC068DC0194BBF0ECC1AD
      49FFFFFE9F879C90EE8A47DDFDC62AB21AAB01CC8C0CFE2E6C3B9B81E20ABF19
      184C6E6E5FF9805F4D3F84F13F033BCC809B321915BF19D9D76335C080E5E204
      71E6170540A18805CD252B89CE0B4C4C4C8C62A5A7C40DFE9FFD27CEF0826161
      57FD2B5C5999BFF49C08FBFB1F3F5FCDB1FA0CE20300FC5E60F0105F02010000
      000049454E44AE426082}
    PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
  end
  object PngBitBtn1: TPngBitBtn
    Left = 8
    Top = 504
    Width = 193
    Height = 25
    Caption = 'Reordenar tudo sem confirma'#231#227'o'
    TabOrder = 10
    TabStop = False
    Visible = False
    OnClick = PngBitBtn1Click
  end
  object DSReorder: TDataSource
    DataSet = QYReorder
    Left = 88
    Top = 192
  end
  object DSTabelas: TDataSource
    DataSet = QYTabelas
    OnDataChange = DSTabelasDataChange
    Left = 160
    Top = 192
  end
  object DSCampos: TDataSource
    DataSet = QYCampos
    Left = 224
    Top = 192
  end
  object DSIndices: TDataSource
    DataSet = QYIndices
    Left = 296
    Top = 192
  end
  object QYReorder: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReorder
    SQL.Strings = (
      'select * from RDB$RELATIONS where RDB$FLAGS=1'
      '')
    Left = 88
    Top = 96
    object QYReorderRDBVIEW_BLR: TBlobField
      FieldName = 'RDB$VIEW_BLR'
      Origin = 'RDB$VIEW_BLR'
    end
    object QYReorderRDBVIEW_SOURCE: TMemoField
      FieldName = 'RDB$VIEW_SOURCE'
      Origin = 'RDB$VIEW_SOURCE'
      BlobType = ftMemo
    end
    object QYReorderRDBDESCRIPTION: TMemoField
      FieldName = 'RDB$DESCRIPTION'
      Origin = 'RDB$DESCRIPTION'
      BlobType = ftMemo
    end
    object QYReorderRDBRELATION_ID: TSmallintField
      FieldName = 'RDB$RELATION_ID'
      Origin = 'RDB$RELATION_ID'
    end
    object QYReorderRDBSYSTEM_FLAG: TSmallintField
      FieldName = 'RDB$SYSTEM_FLAG'
      Origin = 'RDB$SYSTEM_FLAG'
      Required = True
    end
    object QYReorderRDBDBKEY_LENGTH: TSmallintField
      FieldName = 'RDB$DBKEY_LENGTH'
      Origin = 'RDB$DBKEY_LENGTH'
    end
    object QYReorderRDBFORMAT: TSmallintField
      FieldName = 'RDB$FORMAT'
      Origin = 'RDB$FORMAT'
    end
    object QYReorderRDBFIELD_ID: TSmallintField
      FieldName = 'RDB$FIELD_ID'
      Origin = 'RDB$FIELD_ID'
    end
    object QYReorderRDBRELATION_NAME: TWideStringField
      FieldName = 'RDB$RELATION_NAME'
      Origin = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 63
    end
    object QYReorderRDBSECURITY_CLASS: TWideStringField
      FieldName = 'RDB$SECURITY_CLASS'
      Origin = 'RDB$SECURITY_CLASS'
      FixedChar = True
      Size = 63
    end
    object QYReorderRDBEXTERNAL_FILE: TStringField
      FieldName = 'RDB$EXTERNAL_FILE'
      Origin = 'RDB$EXTERNAL_FILE'
      Size = 255
    end
    object QYReorderRDBRUNTIME: TBlobField
      FieldName = 'RDB$RUNTIME'
      Origin = 'RDB$RUNTIME'
    end
    object QYReorderRDBEXTERNAL_DESCRIPTION: TBlobField
      FieldName = 'RDB$EXTERNAL_DESCRIPTION'
      Origin = 'RDB$EXTERNAL_DESCRIPTION'
    end
    object QYReorderRDBOWNER_NAME: TWideStringField
      FieldName = 'RDB$OWNER_NAME'
      Origin = 'RDB$OWNER_NAME'
      FixedChar = True
      Size = 63
    end
    object QYReorderRDBDEFAULT_CLASS: TWideStringField
      FieldName = 'RDB$DEFAULT_CLASS'
      Origin = 'RDB$DEFAULT_CLASS'
      FixedChar = True
      Size = 63
    end
    object QYReorderRDBFLAGS: TSmallintField
      FieldName = 'RDB$FLAGS'
      Origin = 'RDB$FLAGS'
    end
    object QYReorderRDBRELATION_TYPE: TSmallintField
      FieldName = 'RDB$RELATION_TYPE'
      Origin = 'RDB$RELATION_TYPE'
    end
    object QYReorderRDBSQL_SECURITY: TBooleanField
      FieldName = 'RDB$SQL_SECURITY'
      Origin = 'RDB$SQL_SECURITY'
    end
  end
  object TRReorder: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 88
    Top = 144
  end
  object QYTabelas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTabelas
    SQL.Strings = (
      'select * from RDB$RELATIONS where RDB$FLAGS=1'
      'order by RDB$RELATION_NAME'
      '')
    Left = 160
    Top = 96
    object QYTabelasRDBVIEW_BLR: TBlobField
      FieldName = 'RDB$VIEW_BLR'
      Origin = 'RDB$VIEW_BLR'
    end
    object QYTabelasRDBVIEW_SOURCE: TMemoField
      FieldName = 'RDB$VIEW_SOURCE'
      Origin = 'RDB$VIEW_SOURCE'
      BlobType = ftMemo
    end
    object QYTabelasRDBDESCRIPTION: TMemoField
      FieldName = 'RDB$DESCRIPTION'
      Origin = 'RDB$DESCRIPTION'
      BlobType = ftMemo
    end
    object QYTabelasRDBRELATION_ID: TSmallintField
      FieldName = 'RDB$RELATION_ID'
      Origin = 'RDB$RELATION_ID'
    end
    object QYTabelasRDBSYSTEM_FLAG: TSmallintField
      FieldName = 'RDB$SYSTEM_FLAG'
      Origin = 'RDB$SYSTEM_FLAG'
      Required = True
    end
    object QYTabelasRDBDBKEY_LENGTH: TSmallintField
      FieldName = 'RDB$DBKEY_LENGTH'
      Origin = 'RDB$DBKEY_LENGTH'
    end
    object QYTabelasRDBFORMAT: TSmallintField
      FieldName = 'RDB$FORMAT'
      Origin = 'RDB$FORMAT'
    end
    object QYTabelasRDBFIELD_ID: TSmallintField
      FieldName = 'RDB$FIELD_ID'
      Origin = 'RDB$FIELD_ID'
    end
    object QYTabelasRDBRELATION_NAME: TWideStringField
      FieldName = 'RDB$RELATION_NAME'
      Origin = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 63
    end
    object QYTabelasRDBSECURITY_CLASS: TWideStringField
      FieldName = 'RDB$SECURITY_CLASS'
      Origin = 'RDB$SECURITY_CLASS'
      FixedChar = True
      Size = 63
    end
    object QYTabelasRDBEXTERNAL_FILE: TStringField
      FieldName = 'RDB$EXTERNAL_FILE'
      Origin = 'RDB$EXTERNAL_FILE'
      Size = 255
    end
    object QYTabelasRDBRUNTIME: TBlobField
      FieldName = 'RDB$RUNTIME'
      Origin = 'RDB$RUNTIME'
    end
    object QYTabelasRDBEXTERNAL_DESCRIPTION: TBlobField
      FieldName = 'RDB$EXTERNAL_DESCRIPTION'
      Origin = 'RDB$EXTERNAL_DESCRIPTION'
    end
    object QYTabelasRDBOWNER_NAME: TWideStringField
      FieldName = 'RDB$OWNER_NAME'
      Origin = 'RDB$OWNER_NAME'
      FixedChar = True
      Size = 63
    end
    object QYTabelasRDBDEFAULT_CLASS: TWideStringField
      FieldName = 'RDB$DEFAULT_CLASS'
      Origin = 'RDB$DEFAULT_CLASS'
      FixedChar = True
      Size = 63
    end
    object QYTabelasRDBFLAGS: TSmallintField
      FieldName = 'RDB$FLAGS'
      Origin = 'RDB$FLAGS'
    end
    object QYTabelasRDBRELATION_TYPE: TSmallintField
      FieldName = 'RDB$RELATION_TYPE'
      Origin = 'RDB$RELATION_TYPE'
    end
    object QYTabelasRDBSQL_SECURITY: TBooleanField
      FieldName = 'RDB$SQL_SECURITY'
      Origin = 'RDB$SQL_SECURITY'
    end
  end
  object TRTabelas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 160
    Top = 144
  end
  object TRCampos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 144
  end
  object QYCampos: TFDQuery
    MasterSource = DSTabelas
    MasterFields = 'RDB$RELATION_NAME'
    Connection = DM.FDConnection1
    Transaction = TRCampos
    SQL.Strings = (
      
        'select * from RDB$RELATION_FIELDS where RDB$RELATION_NAME=:RDB$R' +
        'ELATION_NAME'
      'order by RDB$FIELD_POSITION'
      '')
    Left = 224
    Top = 96
    ParamData = <
      item
        Name = 'RDB$RELATION_NAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 63
      end>
    object QYCamposRDBFIELD_NAME: TWideStringField
      FieldName = 'RDB$FIELD_NAME'
      Origin = 'RDB$FIELD_NAME'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBRELATION_NAME: TWideStringField
      FieldName = 'RDB$RELATION_NAME'
      Origin = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBFIELD_SOURCE: TWideStringField
      FieldName = 'RDB$FIELD_SOURCE'
      Origin = 'RDB$FIELD_SOURCE'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBQUERY_NAME: TWideStringField
      FieldName = 'RDB$QUERY_NAME'
      Origin = 'RDB$QUERY_NAME'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBBASE_FIELD: TWideStringField
      FieldName = 'RDB$BASE_FIELD'
      Origin = 'RDB$BASE_FIELD'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBEDIT_STRING: TStringField
      FieldName = 'RDB$EDIT_STRING'
      Origin = 'RDB$EDIT_STRING'
      Size = 127
    end
    object QYCamposRDBFIELD_POSITION: TSmallintField
      FieldName = 'RDB$FIELD_POSITION'
      Origin = 'RDB$FIELD_POSITION'
    end
    object QYCamposRDBQUERY_HEADER: TMemoField
      FieldName = 'RDB$QUERY_HEADER'
      Origin = 'RDB$QUERY_HEADER'
      BlobType = ftMemo
    end
    object QYCamposRDBUPDATE_FLAG: TSmallintField
      FieldName = 'RDB$UPDATE_FLAG'
      Origin = 'RDB$UPDATE_FLAG'
    end
    object QYCamposRDBFIELD_ID: TSmallintField
      FieldName = 'RDB$FIELD_ID'
      Origin = 'RDB$FIELD_ID'
    end
    object QYCamposRDBVIEW_CONTEXT: TSmallintField
      FieldName = 'RDB$VIEW_CONTEXT'
      Origin = 'RDB$VIEW_CONTEXT'
    end
    object QYCamposRDBDESCRIPTION: TMemoField
      FieldName = 'RDB$DESCRIPTION'
      Origin = 'RDB$DESCRIPTION'
      BlobType = ftMemo
    end
    object QYCamposRDBDEFAULT_VALUE: TBlobField
      FieldName = 'RDB$DEFAULT_VALUE'
      Origin = 'RDB$DEFAULT_VALUE'
    end
    object QYCamposRDBSYSTEM_FLAG: TSmallintField
      FieldName = 'RDB$SYSTEM_FLAG'
      Origin = 'RDB$SYSTEM_FLAG'
      Required = True
    end
    object QYCamposRDBSECURITY_CLASS: TWideStringField
      FieldName = 'RDB$SECURITY_CLASS'
      Origin = 'RDB$SECURITY_CLASS'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBCOMPLEX_NAME: TWideStringField
      FieldName = 'RDB$COMPLEX_NAME'
      Origin = 'RDB$COMPLEX_NAME'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBNULL_FLAG: TSmallintField
      FieldName = 'RDB$NULL_FLAG'
      Origin = 'RDB$NULL_FLAG'
    end
    object QYCamposRDBDEFAULT_SOURCE: TMemoField
      FieldName = 'RDB$DEFAULT_SOURCE'
      Origin = 'RDB$DEFAULT_SOURCE'
      BlobType = ftMemo
    end
    object QYCamposRDBCOLLATION_ID: TSmallintField
      FieldName = 'RDB$COLLATION_ID'
      Origin = 'RDB$COLLATION_ID'
    end
    object QYCamposRDBGENERATOR_NAME: TWideStringField
      FieldName = 'RDB$GENERATOR_NAME'
      Origin = 'RDB$GENERATOR_NAME'
      FixedChar = True
      Size = 63
    end
    object QYCamposRDBIDENTITY_TYPE: TSmallintField
      FieldName = 'RDB$IDENTITY_TYPE'
      Origin = 'RDB$IDENTITY_TYPE'
    end
  end
  object TRIndices: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 296
    Top = 144
  end
  object QYIndices: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRIndices
    SQL.Strings = (
      
        'select * from RDB$RELATION_CONSTRAINTS where RDB$CONSTRAINT_NAME' +
        ' like :campo'
      ''
      '')
    Left = 296
    Top = 96
    ParamData = <
      item
        Name = 'CAMPO'
        DataType = ftWideString
        ParamType = ptInput
        Size = 63
      end>
    object QYIndicesRDBCONSTRAINT_NAME: TWideStringField
      FieldName = 'RDB$CONSTRAINT_NAME'
      Origin = 'RDB$CONSTRAINT_NAME'
      FixedChar = True
      Size = 63
    end
    object QYIndicesRDBCONSTRAINT_TYPE: TStringField
      FieldName = 'RDB$CONSTRAINT_TYPE'
      Origin = 'RDB$CONSTRAINT_TYPE'
      FixedChar = True
      Size = 11
    end
    object QYIndicesRDBRELATION_NAME: TWideStringField
      FieldName = 'RDB$RELATION_NAME'
      Origin = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 63
    end
    object QYIndicesRDBDEFERRABLE: TStringField
      FieldName = 'RDB$DEFERRABLE'
      Origin = 'RDB$DEFERRABLE'
      FixedChar = True
      Size = 3
    end
    object QYIndicesRDBINITIALLY_DEFERRED: TStringField
      FieldName = 'RDB$INITIALLY_DEFERRED'
      Origin = 'RDB$INITIALLY_DEFERRED'
      FixedChar = True
      Size = 3
    end
    object QYIndicesRDBINDEX_NAME: TWideStringField
      FieldName = 'RDB$INDEX_NAME'
      Origin = 'RDB$INDEX_NAME'
      FixedChar = True
      Size = 63
    end
  end
end
