object FormDashboard: TFormDashboard
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dashboard'
  ClientHeight = 545
  ClientWidth = 1000
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
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 545
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Tag = 1
      Hint = 'Dashboard Geral'
      Caption = 'Dashboard Geral'
      object Chart2: TChart
        Left = 3
        Top = 3
        Width = 492
        Height = 255
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'Vendas nos '#250'ltimos 12 meses.')
        BottomAxis.LabelStyle = talText
        BottomAxis.Title.Caption = 'Meses'
        BottomAxis.Visible = False
        LeftAxis.Axis.Width = 0
        LeftAxis.LabelStyle = talValue
        TopAxis.Title.Caption = 'teste'
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 19
        object BarSeries1: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = DBCrossTabSource1
          BarWidthPercent = 100
          Dark3D = False
          Emboss.Transparency = 52
          TickLines.Color = -335544320
          TickLines.Width = 0
          TickLines.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart3: TChart
        Left = 3
        Top = 258
        Width = 492
        Height = 255
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'Vendas nos '#250'ltimos 12 meses.')
        BottomAxis.LabelStyle = talText
        BottomAxis.Title.Caption = 'Meses'
        BottomAxis.Visible = False
        LeftAxis.Axis.Width = 0
        LeftAxis.LabelStyle = talValue
        TopAxis.Title.Caption = 'teste'
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object BarSeries2: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Frame.Visible = False
          Marks.Visible = False
          BarWidthPercent = 100
          Dark3D = False
          Emboss.Transparency = 52
          TickLines.Color = -335544320
          TickLines.Width = 0
          TickLines.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart4: TChart
        Left = 496
        Top = 258
        Width = 492
        Height = 255
        Legend.CheckBoxesStyle = cbsRadio
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'Contas a receber e pagar geral.')
        BottomAxis.LabelStyle = talText
        BottomAxis.Title.Caption = 'Meses'
        BottomAxis.Visible = False
        LeftAxis.Axis.Width = 0
        LeftAxis.LabelStyle = talValue
        TopAxis.Title.Caption = 'teste'
        TabOrder = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          24
          15
          24)
        ColorPaletteIndex = 16
        object Series4: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Visible = False
          MarksLocation = mlCenter
          MarksOnBar = True
          OffsetPercent = 5
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart5: TChart
        Left = 496
        Top = 3
        Width = 492
        Height = 255
        Legend.Alignment = laBottom
        Title.Alignment = taLeftJustify
        Title.Text.Strings = (
          'Contas recebidas vs contas pagas nos '#250'ltimos 12 meses.')
        View3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = 47891
          Title = 'Contas Recebidas'
          Brush.BackColor = clDefault
          DrawStyle = dsCurve
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          HoverElement = [heCurrent]
          Marks.AutoPosition = False
          SeriesColor = 5130741
          Title = 'Contas Pagas'
          Brush.BackColor = clDefault
          DrawStyle = dsCurve
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Tag = 1
      Hint = 'Dashboard Vendedor'
      Caption = 'Dashboard Vendedor'
      ImageIndex = 1
      object Bevel1: TBevel
        Left = 16
        Top = 280
        Width = 351
        Height = 177
      end
      object Bevel2: TBevel
        Left = 16
        Top = 168
        Width = 351
        Height = 106
      end
      object Label1: TLabel
        Left = 16
        Top = 14
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 104
        Top = 14
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object Label3: TLabel
        Left = 192
        Top = 14
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object SpeedButton1: TPngSpeedButton
        Left = 492
        Top = 28
        Width = 19
        Height = 21
        Flat = True
        OnClick = SpeedButton1Click
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
          8F70662A000000097048597300002E2300002E230178A53F7600000231494441
          5478DA8D936F48137118C7BF77277AE6689BB3D06609CD576621456DB9AB8145
          149BDD489090DE444120D6842068A55010A16514FDC117415486911BC7CCE845
          CC04090C251A95928BF24558E8865ABB4C77B7EB7757847167EC79DE3CFCFE7C
          7E3CDFEFF3A3BC21BF9362701B4011B28F8C0284FAFC4280F209FC5380DABB74
          972FAFC55A532966166631FC7504E33371438AA4C85504E01F243567CBB7212D
          A7717FDF1D8869110A499AA2F1535AC0C0E701DC7DD7A503C8C8ECF80BE0EC6E
          9CDCD20C86F4D3367219533FA635C8B18D47506C2AC6B38928EE8D761903ACAC
          85BBE2B9049661117CD1027F398F4F73132835D931F4E5255A5D67904AA7D018
          3D8159D2960E50BD663B17D8DC849BAF3B119B8E21B528425664ED90DA9A0AEE
          F0B4211C17D0331ED6037697EDE28E561EC6F9A10B184D8EE97AB5B256DCA8B9
          46041DC6D557D7F5800DB60AAEC515C4E38F4FF060AC5B07285BB90EED3B2FE2
          E1FB4710E21163117B7CDDF8B6F81DA7064F23399F5CF2BA05679D41D8891E4D
          FD0124E613C60087C58173D5ADA049DE8A751217A660CE33E37855230A720B20
          6764D4F7352C6FA336408E5A1CAA6880A22864D4329AA50CCD20F2A117BEF55E
          AD3ED05BBF3C408D1C3A079B8A2AB16AC56A4CA626F126F1565B5767C455E2FC
          076208F85FA8906D255B355BF948DD6F8057E0A314A89A6C7F5187A71D794C2E
          11B41992243B296F787F1D45D3EA8CB2D942FEC4733136B78752057387DCF985
          2834677B539468A9FF6044F3F317224FED8F79781DA90000000049454E44AE42
          6082}
        PngOptions = [pngBlendOnDisabled, pngGrayscaleOnDisabled]
      end
      object Label4: TLabel
        Left = 40
        Top = 289
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quantidade de Clientes:'
      end
      object Label5: TLabel
        Left = 244
        Top = 289
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 21
        Top = 89
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtde de clientes que compraram no per'#237'odo:'
      end
      object Label7: TLabel
        Left = 244
        Top = 89
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 244
        Top = 113
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 21
        Top = 113
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quantidade de vendas no per'#237'odo:'
      end
      object Label10: TLabel
        Left = 21
        Top = 137
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor das vendas no per'#237'odo:'
      end
      object Label11: TLabel
        Left = 244
        Top = 137
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 40
        Top = 313
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Clientes Ativos 60 dias:'
      end
      object Label13: TLabel
        Left = 244
        Top = 313
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 244
        Top = 337
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 40
        Top = 337
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Clientes quase inativos 61 a 120 dias:'
      end
      object Label16: TLabel
        Left = 40
        Top = 361
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Clientes inativos recente 121 a 180 dias:'
      end
      object Label17: TLabel
        Left = 244
        Top = 361
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 40
        Top = 385
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Clientes inativos 181 a 360 dias:'
      end
      object Label19: TLabel
        Left = 244
        Top = 385
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 40
        Top = 409
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ex-Clientes mais de 360 dias:'
      end
      object Label21: TLabel
        Left = 244
        Top = 409
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 40
        Top = 433
        Width = 196
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Clientes que nunca compraram:'
      end
      object Label23: TLabel
        Left = 244
        Top = 433
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 21
        Top = 65
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtde de clientes novos no per'#237'odo:'
      end
      object Label25: TLabel
        Left = 244
        Top = 65
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 21
        Top = 177
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Meta:'
      end
      object Label27: TLabel
        Left = 244
        Top = 201
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 21
        Top = 225
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Meta realizada:'
      end
      object Label29: TLabel
        Left = 244
        Top = 225
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 21
        Top = 249
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Meta di'#225'ria:'
      end
      object Label31: TLabel
        Left = 244
        Top = 249
        Width = 22
        Height = 13
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 244
        Top = 177
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'MET_METAVALOR'
        DataSource = DSMetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 21
        Top = 201
        Width = 215
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor das vendas na meta:'
      end
      object Bevel3: TBevel
        Left = 16
        Top = 56
        Width = 351
        Height = 106
      end
      object Label33: TLabel
        Left = 384
        Top = 66
        Width = 215
        Height = 13
        AutoSize = False
        Caption = 'Atendimentos por via de contato'
      end
      object MaskEdit1: TMaskEdit
        Left = 16
        Top = 28
        Width = 80
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object PngBitBtn1: TPngBitBtn
        Left = 526
        Top = 16
        Width = 74
        Height = 33
        Caption = 'Filtrar'
        TabOrder = 1
        OnClick = PngBitBtn1Click
      end
      object MaskEdit2: TMaskEdit
        Left = 104
        Top = 28
        Width = 81
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object Edit1: TEdit
        Left = 192
        Top = 28
        Width = 57
        Height = 21
        TabOrder = 3
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 248
        Top = 28
        Width = 244
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 4
      end
      object Chart1: TChart
        Left = 384
        Top = 280
        Width = 393
        Height = 177
        Title.Text.Strings = (
          'Classifica'#231#227'o dos Clientes')
        BottomAxis.Visible = False
        LeftAxis.Axis.Width = 0
        TopAxis.Title.Caption = 'teste'
        TabOrder = 5
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          27
          15
          27)
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Frame.Visible = False
          DataSource = DBCrossTabSource1
          BarWidthPercent = 100
          Dark3D = False
          Emboss.Transparency = 52
          TickLines.Color = -335544320
          TickLines.Width = 0
          TickLines.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object DBGrid1: TDBGrid
        Left = 384
        Top = 80
        Width = 393
        Height = 158
        DataSource = DSTeleVias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TEV_VIA'
            Title.Caption = 'C'#243'd.'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIA_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde'
            Width = 47
            Visible = True
          end>
      end
      object PngBitBtn2: TPngBitBtn
        Left = 596
        Top = 248
        Width = 181
        Height = 25
        Caption = 'Classifica'#231#227'o dos Clientes'
        TabOrder = 7
        OnClick = PngBitBtn2Click
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
          8F70662A000000097048597300002E2300002E230178A53F760000018C494441
          5478DA63FCFFFF3F0308749CFE2CCCF99FAD848110F8CF783ADF9C6D1D8CCB08
          3360C2899F2A8CCC8CB7091BC03027DF8C2D95FA06D4CE5A7B55C4D0578B90FE
          1FAFEF7E7F77F3686C6761CA5AB0011316AC36606061EEFCF3F7BF3403A72017
          4107FCF9F187F9EFB78F8C0C8CDB0A6282EA19FB97ACDBCAC8C0E045D0E948E0
          9CF85B06BDD7420C0C7F18F48106AC3D0C34CD861403FE32FE6760FECFC8F0F7
          DF5F5B900147813EB122C50004F867C7583569DEE57FFFFEE990A39D9595CD97
          B1A27FF6610646469BBB572F317CF9C7465013E3EF6F0C2AAACA0C5CBCFC40BF
          FCB3851B70FBD63D86BFBAA184AD7D7D8B41E6FF23061E7E418801E513E6CC06
          C6420A33072F83A85100C3EB4FBF188E5F7F8B55AF9BA138C3FFF7F7183EDE3D
          0EE2FEFCFFEB8712637AC32C2E413E865836416915216D97921FBFFF33BCF9F8
          1345233B2B1303173B3318FFF9F2FAF49B4B3B5603ADDFDF519076062329BFFD
          FC8BE1CCEDF72806C888703268CBF14138B89272F7B1EF526C2CCC738908FC9D
          4003266018402E0000BDCCAD965973B7CA0000000049454E44AE426082}
      end
    end
  end
  object SeriesDataSet1: TSeriesDataSet
    Left = 552
    Top = 336
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Series = BarSeries1
    DataSet = SeriesDataSet1
    Left = 456
    Top = 336
  end
  object DSMetas: TDataSource
    DataSet = QYMetas
    Left = 32
    Top = 246
  end
  object DSTeleVias: TDataSource
    DataSet = QYTeleVias
    Left = 96
    Top = 246
  end
  object TRMetas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 32
    Top = 200
  end
  object QYMetas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRMetas
    SQL.Strings = (
      'select first(1)'
      'MET_DTFIM,'
      'MET_DTINICIO,'
      'MET_METAATINGIDA,'
      'MET_METAVALOR,'
      'MET_VENDEDOR'
      'from METAS'
      'where '
      'MET_VENDEDOR=:vendedor and '
      'MET_STATUS='#39'A'#39
      'order by MET_CODIGO desc'
      '')
    Left = 32
    Top = 152
    ParamData = <
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYMetasMET_DTFIM: TDateField
      FieldName = 'MET_DTFIM'
      Origin = 'MET_DTFIM'
    end
    object QYMetasMET_DTINICIO: TDateField
      FieldName = 'MET_DTINICIO'
      Origin = 'MET_DTINICIO'
    end
    object QYMetasMET_METAATINGIDA: TFMTBCDField
      FieldName = 'MET_METAATINGIDA'
      Origin = 'MET_METAATINGIDA'
      Precision = 18
    end
    object QYMetasMET_METAVALOR: TFMTBCDField
      FieldName = 'MET_METAVALOR'
      Origin = 'MET_METAVALOR'
      currency = True
      Precision = 18
    end
    object QYMetasMET_VENDEDOR: TIntegerField
      FieldName = 'MET_VENDEDOR'
      Origin = 'MET_VENDEDOR'
      Required = True
    end
  end
  object QYTeleVias: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTeleVias
    SQL.Strings = (
      'select '
      'count(*) as QTDE, '
      'TEV_VIA, '
      'VIA_DESCRICAO '
      'from TELEVENDAS '
      'left join VIAS on TEV_VIA=VIA_CODIGO '
      'group by VIA_DESCRICAO, TEV_VIA'
      '')
    Left = 96
    Top = 152
    object QYTeleViasQTDE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYTeleViasTEV_VIA: TIntegerField
      FieldName = 'TEV_VIA'
      Origin = 'TEV_VIA'
      Required = True
    end
    object QYTeleViasVIA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIA_DESCRICAO'
      Origin = 'VIA_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TRTeleVias: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 96
    Top = 200
  end
  object QYVendas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRVendas
    SQL.Strings = (
      'with recursive MESES_PERIODO as ('
      
        '    -- 1. Ponto de partida: pega o primeiro dia do m'#234's de 11 mes' +
        'es atr'#225's'
      '    select'
      
        '      cast(extract(YEAR from dateadd(-11 MONTH to CURRENT_DATE))' +
        ' || '#39'-'#39' ||'
      
        '      extract(MONTH from dateadd(-11 MONTH to CURRENT_DATE)) || ' +
        #39'-01'#39' as date) as DATA_MES'
      '    from RDB$DATABASE'
      '    UNION ALL'
      
        '    -- 2. Recurs'#227'o: adiciona 1 m'#234's passo a passo at'#233' chegar no m' +
        #234's atual'
      '    select dateadd(1 MONTH to DATA_MES) from MESES_PERIODO'
      
        '    where DATA_MES < cast(extract(YEAR from CURRENT_DATE) || '#39'-'#39 +
        ' || extract(MONTH from CURRENT_DATE) || '#39'-01'#39' as date)'
      ')'
      ''
      '-- 3. Consulta principal unindo a lista de meses com as vendas'
      
        'select extract(YEAR from M.DATA_MES) as ANO, extract(MONTH from ' +
        'M.DATA_MES) as MES, coalesce(sum(V.VED_VALORTOTAL), 0) as VTOTAL'
      'from MESES_PERIODO M'
      'left join VENDAS V on'
      
        '    extract(YEAR from V.VED_DTEMISSAO) = extract(YEAR from M.DAT' +
        'A_MES) and'
      
        '    extract(MONTH FROM V.VED_DTEMISSAO) = extract(MONTH FROM M.D' +
        'ATA_MES) and'
      '    V.VED_DTEMISSAO >= dateadd(-11 MONTH to CURRENT_DATE) and'
      '    V.VED_STATUS='#39'F'#39' and'
      '    V.VED_ENTRADASAIDA='#39'S'#39
      'group by 1, 2'
      'order by 1, 2;')
    Left = 168
    Top = 152
    object QYVendasANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYVendasMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYVendasVTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VTOTAL'
      Origin = 'VTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
    end
  end
  object TRVendas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 168
    Top = 200
  end
  object DSVendas: TDataSource
    DataSet = QYVendas
    Left = 168
    Top = 246
  end
  object QYReceber: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReceber
    SQL.Strings = (
      'WITH RECURSIVE MESES_FUTUROS AS ('
      '    -- 1. Ponto de partida: Primeiro dia do m'#234's atual'
      '    SELECT '
      '        CAST(EXTRACT(YEAR FROM CURRENT_DATE) || '#39'-'#39' || '
      
        '             EXTRACT(MONTH FROM CURRENT_DATE) || '#39'-01'#39' AS DATE) ' +
        'AS DATA_MES'
      '    FROM RDB$DATABASE'
      '    '
      '    UNION ALL'
      '    '
      
        '    -- 2. Recurs'#227'o: Adiciona 1 m'#234's at'#233' completar o horizonte de ' +
        '12 meses'
      '    SELECT DATEADD(1 MONTH TO DATA_MES)'
      '    FROM MESES_FUTUROS'
      
        '    WHERE DATA_MES < CAST(EXTRACT(YEAR FROM DATEADD(11 MONTH TO ' +
        'CURRENT_DATE)) || '#39'-'#39' || '
      
        '                          EXTRACT(MONTH FROM DATEADD(11 MONTH TO' +
        ' CURRENT_DATE)) || '#39'-01'#39' AS DATE)'
      ')'
      ''
      '-- 3. Jun'#231#227'o com a tabela de Contas a Receber'
      'SELECT '
      '    EXTRACT(YEAR FROM M.DATA_MES) AS ANO,'
      '    EXTRACT(MONTH FROM M.DATA_MES) AS MES,'
      '    COALESCE(SUM(R.REE_VALOR), 0) AS VTOTAL'
      'FROM MESES_FUTUROS M'
      'LEFT JOIN RECEBER R ON '
      
        '    EXTRACT(YEAR FROM R.REE_DTVENCIMENTO) = EXTRACT(YEAR FROM M.' +
        'DATA_MES) AND '
      
        '    EXTRACT(MONTH FROM R.REE_DTVENCIMENTO) = EXTRACT(MONTH FROM ' +
        'M.DATA_MES) AND'
      
        '    R.REE_DTVENCIMENTO >= CURRENT_DATE AND -- Apenas vencimentos' +
        ' futuros'
      
        '    R.REE_STATUS = '#39'A'#39'                  -- Ignora o que j'#225' foi p' +
        'ago ou cancelado'
      'GROUP BY 1, 2'
      'ORDER BY 1, 2;')
    Left = 240
    Top = 152
    object QYReceberANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYReceberMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYReceberVTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VTOTAL'
      Origin = 'VTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
    end
  end
  object TRReceber: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 240
    Top = 200
  end
  object DSReceber: TDataSource
    DataSet = QYReceber
    Left = 240
    Top = 246
  end
  object QYReceberPagarTotais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReceberPagarTotais
    SQL.Strings = (
      'SELECT'
      '    -- 1. Tudo o que tem para RECEBER no futuro'
      '    (SELECT COALESCE(SUM(R.REE_VALOR), 0) FROM RECEBER R'
      
        '     WHERE R.REE_STATUS = '#39'A'#39' AND R.REE_DTVENCIMENTO >= CURRENT_' +
        'DATE) AS REE_VENCER,'
      ''
      
        '    -- 2. Tudo o que est'#225' atrasado para RECEBER (Inadimpl'#234'ncia a' +
        'cumulada)'
      '    (SELECT COALESCE(SUM(R.REE_VALOR), 0) FROM RECEBER R'
      
        '     WHERE R.REE_STATUS = '#39'A'#39' AND R.REE_DTVENCIMENTO < CURRENT_D' +
        'ATE) AS REE_VENCIDO,'
      ''
      '    -- 3. Tudo o que tem para PAGAR no futuro (Compromissos)'
      '    (SELECT COALESCE(SUM(P.PAG_VALOR), 0) FROM PAGAR P'
      
        '     WHERE P.PAG_STATUS = '#39'A'#39' AND P.PAG_DTVENCIMENTO >= CURRENT_' +
        'DATE) AS PAG_VENCER,'
      ''
      '    -- 4. Tudo o que est'#225' atrasado para PAGAR'
      '    (SELECT COALESCE(SUM(P.PAG_VALOR), 0) FROM PAGAR P'
      
        '     WHERE P.PAG_STATUS = '#39'A'#39' AND P.PAG_DTVENCIMENTO < CURRENT_D' +
        'ATE) AS PAG_VENCIDO'
      'FROM RDB$DATABASE;')
    Left = 312
    Top = 152
  end
  object TRReceberPagarTotais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 312
    Top = 200
  end
  object DSReceberPagarTotais: TDataSource
    DataSet = QYReceberPagarTotais
    Left = 312
    Top = 246
  end
  object DSReceberPagarMensais: TDataSource
    DataSet = QYReceberPagarMensais
    Left = 376
    Top = 246
  end
  object TRReceberPagarMensais: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 376
    Top = 200
  end
  object QYReceberPagarMensais: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRReceberPagarMensais
    SQL.Strings = (
      'WITH RECURSIVE MESES_PASSADOS AS ('
      
        '    -- 1. Ponto de partida: Primeiro dia do m'#234's de 11 meses atr'#225 +
        's'
      '    SELECT '
      
        '        CAST(EXTRACT(YEAR FROM DATEADD(-11 MONTH TO CURRENT_DATE' +
        ')) || '#39'-'#39' || '
      
        '             EXTRACT(MONTH FROM DATEADD(-11 MONTH TO CURRENT_DAT' +
        'E)) || '#39'-01'#39' AS DATE) AS DATA_MES'
      '    FROM RDB$DATABASE'
      '    '
      '    UNION ALL'
      '    '
      '    -- 2. Recurs'#227'o: Adiciona 1 m'#234's at'#233' chegar ao m'#234's atual'
      '    SELECT DATEADD(1 MONTH TO DATA_MES)'
      '    FROM MESES_PASSADOS'
      
        '    WHERE DATA_MES < CAST(EXTRACT(YEAR FROM CURRENT_DATE) || '#39'-'#39 +
        ' || '
      
        '                          EXTRACT(MONTH FROM CURRENT_DATE) || '#39'-' +
        '01'#39' AS DATE)'
      ')'
      ''
      
        '-- 3. Consulta principal consolidando as baixas de Entrada (Rece' +
        'ber) e Sa'#237'da (Pagar)'
      'SELECT '
      '    EXTRACT(YEAR FROM M.DATA_MES) AS ANO,'
      '    EXTRACT(MONTH FROM M.DATA_MES) AS MES,'
      '    '
      '    -- Total recebido (Entradas no Caixa)'
      '    (SELECT COALESCE(SUM(R.REE_VALORPAGO), 0) FROM RECEBER R'
      '     WHERE R.REE_STATUS = '#39'B'#39
      
        '       AND EXTRACT(YEAR FROM R.REE_DTPAGAMENTO) = EXTRACT(YEAR F' +
        'ROM M.DATA_MES)'
      
        '       AND EXTRACT(MONTH FROM R.REE_DTPAGAMENTO) = EXTRACT(MONTH' +
        ' FROM M.DATA_MES)) AS TOTAL_RECEBIDO,'
      '       '
      '    -- Total pago (Sa'#237'das do Caixa)'
      '    (SELECT COALESCE(SUM(P.PAG_VALORPAGO), 0) FROM PAGAR P'
      '     WHERE P.PAG_STATUS = '#39'B'#39
      
        '       AND EXTRACT(YEAR FROM P.PAG_DTPAGAMENTO) = EXTRACT(YEAR F' +
        'ROM M.DATA_MES)'
      
        '       AND EXTRACT(MONTH FROM P.PAG_DTPAGAMENTO) = EXTRACT(MONTH' +
        ' FROM M.DATA_MES)) AS TOTAL_PAGO'
      ''
      'FROM MESES_PASSADOS M'
      'ORDER BY 1, 2;')
    Left = 376
    Top = 152
  end
end
