object FormMarkupsFast: TFormMarkupsFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Markups'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 333
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - markups')
    TabOrder = 0
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 192
    Top = 16
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 120
    Top = 16
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = '.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44348.714094444450000000
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 48
    Top = 16
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
  end
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Markups'
    ReportOptions.LastChange = 44361.508946365740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
        Value = Null
      end
      item
        Name = 'USUARIO'
        Value = Null
      end
      item
        Name = 'HEADER1'
        Value = Null
      end
      item
        Name = 'HEADER2'
        Value = Null
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        Frame.LeftLine.Width = 1.000000000000000000
        Frame.TopLine.Width = 1.000000000000000000
        Frame.RightLine.Width = 1.000000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
          Height = 18.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER2]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER3]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 188.976475590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'MKI_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MKI_DESCRICAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 191.212696060000000000
          Width = 102.262352460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'MKI_PORCENTAGEM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MKI_PORCENTAGEM"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
          Width = 374.309711290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MKP01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 339.821583340000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Gerado em [DATE] [TIME] por [USUARIO]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset1."MKP_DESCRICAO">'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 188.976475590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 191.212696060000000000
          Top = 24.566929130000000000
          Width = 102.262352460000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Porcentagem'
            '')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.094488190000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSetName = 
            #0#0#17098'B'#1137#0#0#0#17099'B'#1136#0#0#0#17126'B'#1139#0#0#0#17127'B'#1138#0#0#0#17152'B'#1140#0#0#0#17156'B'#1142#0#0#0#17160'B'#1144#0#0#0#17184'B'#1145#0#0#0#17211'B'#1146#0#0#0#17235'B'#1148#0#0#0#17236'B' +
            #1149#0#0#0#17237'B'#1151#0#0#0#17245'B'#1152#0#0#0#17259'B'#1154#0#0#0#17264'B'#1155#0#0#0#17283'B'#1156#0#0#0#17288'B'#1160#0#0#0#17293'B'#1161#0#0#0#17312'B'#1162#0#0#0#17315'B'#1164#0#0#0#17327'B'#1166#0#0#0 +
            #17380'B'#1934#0#0#0#17401'B'#1935#0#0#0#17411'B'#1936#0#0#0#17440'B'#1939#0#0#0#17451'B'#1940#0#0#0#17466'B'#1941#0#0#0#17472'B'#1118#0#0#0#17532'B'#1119#0#0#0#17544'B'#1122#0#0#0#17555'B'#1124#0#0#0#17595'B'#1126#0 +
            #0#0#17615'B'#1127#0#0#0#17638'B'#1128#0#0#0#17658'B'#1130#0#0#0#17663'B'#1132#0#0#0#17666'B'#1133#0#0#0#17669'B'#1134#0#0#0#17699'B'#1137#0#0#0#17700'B'#1136#0#0#0#17726'B'#1139#0#0#0#17727'B'#1138#0#0#0#17751'B' +
            #1140#0#0#0#17755'B'#1142#0#0#0#17759'B'#1144#0#0#0#17782'B'#1145#0#0#0#17808'B'#1146#0#0#0#17831'B'#1148#0#0#0#17832'B'#1149#0#0#0#17833'B'#1151#0#0#0#17841'B'#1152#0#0#0#17855'B'#1154#0#0#0#17860'B'#1155#0#0#0 +
            #17879'B'#1156#0#0#0#17884'B'#1160#0#0#0#17889'B'#1161#0#0#0#17908'B'#1162#0#0#0#17911'B'#1164#0#0#0#17923'B'#1166#0#0#0#36037'B'#4831#0#0#0#40192'B,'#0#0#0#40199'B-'#0#0#0#40203'B/'#0#0#0#40226'B0'#0 +
            #0#0#40240'B1'#0#0#0#40254'B3'#0#0#0#40271'B4'#0#0#0#40301'B7'#0#0#0#40319'B:'#0#0#0#40324'B='#0#0#0#40328'B>'#0#0#0#40330'B?'#0#0#0#40352'B@'#0#0#0#40374'BA'#0#0#0#40396'B' +
            'B'#0#0#0#40418'BC'#0#0#0#40438'BD'#0#0#0#40444'BG'#0#0#0#40448'BH'#0#0#0#40450'BI'#0#0#0#40472'BJ'#0#0#0#40494'BK'#0#0#0#40516'BL'#0#0#0#40538'BM'#0#0#0#40558'BN'#0#0#0 +
            #40564'BR'#0#0#0#40582'BS'#0#0#0#42276'B/'#0#0#0#42284'B0'#0#0#0#42292'B3'#0#0#0#42315'B4'#0#0#0#42329'B5'#0#0#0#42343'B7'#0#0#0#42369'B8'#0#0#0#42408'B;'#0#0#0#42426'B>'#0 +
            #0#0#42432'BA'#0#0#0#42436'BB'#0#0#0#42438'BC'#0#0#0#42460'BD'#0#0#0#42482'BE'#0#0#0#42502'BF'#0#0#0#42508'BI'#0#0#0#42512'BJ'#0#0#0#42514'BK'#0#0#0#42536'BL'#0#0#0#42558'B' +
            'M'#0#0#0#42578'BN'#0#0#0#42584'BQ'#0#0#0#42587'BR'#0#0#0#42617'BS'#0#0#0#42620'BV'#0#0#0#42623'BW'#0#0#0#42653'BX'#0#0#0#42656'B['#0#0#0#42685'B\'#0#0#0#42696'B]'#0#0#0 +
            #42707'B^'#0#0#0#42728'B_'#0#0#0#42742'B`'#0#0#0#42791'Bb'#0#0#0#42805'Bc'#0#0#0#42822'Bd'#0#0#0#42832'Bf'#0#0#0#42843'Bg'#0#0#0#42864'Bh'#0#0#0#42878'Bi'#0#0#0#42927'Bk'#0 +
            #0#0#42941'Bl'#0#0#0#42958'Bm'#0#0#0#42968'Bo'#0#0#0#42981'Bp'#0#0#0#43024'Bt'#0#0#0#43034'Bu'#0#0#0#43036'By'#0#0#0#43054'Bz'#0#0#0#44172'B"'#0#0#0#44198'B#'#0#0#0#44206'B' +
            '&'#0#0#0#44229'B'#39#0#0#0#44243'B('#0#0#0#44257'B)'#0#0#0#44279'B*'#0#0#0#44294'B,'#0#0#0#44313'B-'#0#0#0#44337'B/'#0#0#0#44355'B2'#0#0#0#44424'B6'#0#0#0#44442'B7'#0#0#0 +
            #44444'B;'#0#0#0#44454'B<'#0#0#0#44456'BB'#0#0#0#44490'BC'#0#0#0#44506'BE'#0#0#0#44520'BF'#0#0#0#44534'BG'#0#0#0#44576'BI'#0#0#0#44604'BK'#0#0#0#44616'BL'#0#0#0#44639'BM'#0 +
            #0#0#44669'BO'#0#0#0#44675'BP'#0#0#0#44692'BQ'#0#0#0#44702'BT'#0#0#0#46500'B9'#0#0#0#46533'B:'#0#0#0#46543'B='#0#0#0#46566'B>'#0#0#0#46580'B?'#0#0#0#46598'BA'#0#0#0#46619'B' +
            'B'#0#0#0#46643'BC'#0#0#0#46669'BD'#0#0#0#46670'B?'#0#0#0#46673'BE'#0#0#0#46697'BF'#0#0#0#46718'BH'#0#0#0#46754'BJ'#0#0#0#46762'BL'#0#0#0#46781'BN'#0#0#0#46791'BO'#0#0#0 +
            #46805'BP'#0#0#0#46815'BR'#0#0#0#46829'BS'#0#0#0#46851'BT'#0#0#0#46888'BV'#0#0#0#46918'BX'#0#0#0#46943'BY'#0#0#0#46956'BZ'#0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MKP_DESCRICAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 54.125850000000000000
          Height = 17.007874020000000000
          DataSetName = 
            '  '#17098'B'#1137'   '#17099'B'#1136'   '#17126'B'#1139'   '#17127'B'#1138'   '#17152'B'#1140'   '#17156'B'#1142'   '#17160'B'#1144'   '#17184'B'#1145'   '#17211'B'#1146'   '#17235'B'#1148'   '#17236'B' +
            #1149'   '#17237'B'#1151'   '#17245'B'#1152'   '#17259'B'#1154'   '#17264'B'#1155'   '#17283'B'#1156'   '#17288'B'#1160'   '#17293'B'#1161'   '#17312'B'#1162'   '#17315'B'#1164'   '#17327'B'#1166'   ' +
            #17380'B'#1934'   '#17401'B'#1935'   '#17411'B'#1936'   '#17440'B'#1939'   '#17451'B'#1940'   '#17466'B'#1941'   '#17472'B'#1118'   '#17532'B'#1119'   '#17544'B'#1122'   '#17555'B'#1124'   '#17595'B'#1126' ' +
            '  '#17615'B'#1127'   '#17638'B'#1128'   '#17658'B'#1130'   '#17663'B'#1132'   '#17666'B'#1133'   '#17669'B'#1134'   '#17699'B'#1137'   '#17700'B'#1136'   '#17726'B'#1139'   '#17727'B'#1138'   '#17751'B' +
            #1140'   '#17755'B'#1142'   '#17759'B'#1144'   '#17782'B'#1145'   '#17808'B'#1146'   '#17831'B'#1148'   '#17832'B'#1149'   '#17833'B'#1151'   '#17841'B'#1152'   '#17855'B'#1154'   '#17860'B'#1155'   ' +
            #17879'B'#1156'   '#17884'B'#1160'   '#17889'B'#1161'   '#17908'B'#1162'   '#17911'B'#1164'   '#17923'B'#1166'   '#36037'B'#4831'   '#40192'B,   '#40199'B-   '#40203'B/   '#40226'B0 ' +
            '  '#40240'B1   '#40254'B3   '#40271'B4   '#40301'B7   '#40319'B:   '#40324'B=   '#40328'B>   '#40330'B?   '#40352'B@   '#40374'BA   '#40396'B' +
            'B   '#40418'BC   '#40438'BD   '#40444'BG   '#40448'BH   '#40450'BI   '#40472'BJ   '#40494'BK   '#40516'BL   '#40538'BM   '#40558'BN   ' +
            #40564'BR   '#40582'BS   '#42276'B/   '#42284'B0   '#42292'B3   '#42315'B4   '#42329'B5   '#42343'B7   '#42369'B8   '#42408'B;   '#42426'B> ' +
            '  '#42432'BA   '#42436'BB   '#42438'BC   '#42460'BD   '#42482'BE   '#42502'BF   '#42508'BI   '#42512'BJ   '#42514'BK   '#42536'BL   '#42558'B' +
            'M   '#42578'BN   '#42584'BQ   '#42587'BR   '#42617'BS   '#42620'BV   '#42623'BW   '#42653'BX   '#42656'B[   '#42685'B\   '#42696'B]   ' +
            #42707'B^   '#42728'B_   '#42742'B`   '#42791'Bb   '#42805'Bc   '#42822'Bd   '#42832'Bf   '#42843'Bg   '#42864'Bh   '#42878'Bi   '#42927'Bk ' +
            '  '#42941'Bl   '#42958'Bm   '#42968'Bo   '#42981'Bp   '#43024'Bt   '#43034'Bu   '#43036'By   '#43054'Bz   '#44172'B"   '#44198'B#   '#44206'B' +
            '&   '#44229'B'#39'   '#44243'B(   '#44257'B)   '#44279'B*   '#44294'B,   '#44313'B-   '#44337'B/   '#44355'B2   '#44424'B6   '#44442'B7   ' +
            #44444'B;   '#44454'B<   '#44456'BB   '#44490'BC   '#44506'BE   '#44520'BF   '#44534'BG   '#44576'BI   '#44604'BK   '#44616'BL   '#44639'BM ' +
            '  '#44669'BO   '#44675'BP   '#44692'BQ   '#44702'BT   '#46500'B9   '#46533'B:   '#46543'B=   '#46566'B>   '#46580'B?   '#46598'BA   '#46619'B' +
            'B   '#46643'BC   '#46669'BD   '#46670'B?   '#46673'BE   '#46697'BF   '#46718'BH   '#46754'BJ   '#46762'BL   '#46781'BN   '#46791'BO   ' +
            #46805'BP   '#46815'BR   '#46829'BS   '#46851'BT   '#46888'BV   '#46918'BX   '#46943'BY   '#46956'BZ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MKP_CODIGO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 84.362090000000000000
          Height = 17.007874020000000000
          DataSetName = 
            '  '#17098'B'#1137'   '#17099'B'#1136'   '#17126'B'#1139'   '#17127'B'#1138'   '#17152'B'#1140'   '#17156'B'#1142'   '#17160'B'#1144'   '#17184'B'#1145'   '#17211'B'#1146'   '#17235'B'#1148'   '#17236'B' +
            #1149'   '#17237'B'#1151'   '#17245'B'#1152'   '#17259'B'#1154'   '#17264'B'#1155'   '#17283'B'#1156'   '#17288'B'#1160'   '#17293'B'#1161'   '#17312'B'#1162'   '#17315'B'#1164'   '#17327'B'#1166'   ' +
            #17380'B'#1934'   '#17401'B'#1935'   '#17411'B'#1936'   '#17440'B'#1939'   '#17451'B'#1940'   '#17466'B'#1941'   '#17472'B'#1118'   '#17532'B'#1119'   '#17544'B'#1122'   '#17555'B'#1124'   '#17595'B'#1126' ' +
            '  '#17615'B'#1127'   '#17638'B'#1128'   '#17658'B'#1130'   '#17663'B'#1132'   '#17666'B'#1133'   '#17669'B'#1134'   '#17699'B'#1137'   '#17700'B'#1136'   '#17726'B'#1139'   '#17727'B'#1138'   '#17751'B' +
            #1140'   '#17755'B'#1142'   '#17759'B'#1144'   '#17782'B'#1145'   '#17808'B'#1146'   '#17831'B'#1148'   '#17832'B'#1149'   '#17833'B'#1151'   '#17841'B'#1152'   '#17855'B'#1154'   '#17860'B'#1155'   ' +
            #17879'B'#1156'   '#17884'B'#1160'   '#17889'B'#1161'   '#17908'B'#1162'   '#17911'B'#1164'   '#17923'B'#1166'   '#36037'B'#4831'   '#40192'B,   '#40199'B-   '#40203'B/   '#40226'B0 ' +
            '  '#40240'B1   '#40254'B3   '#40271'B4   '#40301'B7   '#40319'B:   '#40324'B=   '#40328'B>   '#40330'B?   '#40352'B@   '#40374'BA   '#40396'B' +
            'B   '#40418'BC   '#40438'BD   '#40444'BG   '#40448'BH   '#40450'BI   '#40472'BJ   '#40494'BK   '#40516'BL   '#40538'BM   '#40558'BN   ' +
            #40564'BR   '#40582'BS   '#42276'B/   '#42284'B0   '#42292'B3   '#42315'B4   '#42329'B5   '#42343'B7   '#42369'B8   '#42408'B;   '#42426'B> ' +
            '  '#42432'BA   '#42436'BB   '#42438'BC   '#42460'BD   '#42482'BE   '#42502'BF   '#42508'BI   '#42512'BJ   '#42514'BK   '#42536'BL   '#42558'B' +
            'M   '#42578'BN   '#42584'BQ   '#42587'BR   '#42617'BS   '#42620'BV   '#42623'BW   '#42653'BX   '#42656'B[   '#42685'B\   '#42696'B]   ' +
            #42707'B^   '#42728'B_   '#42742'B`   '#42791'Bb   '#42805'Bc   '#42822'Bd   '#42832'Bf   '#42843'Bg   '#42864'Bh   '#42878'Bi   '#42927'Bk ' +
            '  '#42941'Bl   '#42958'Bm   '#42968'Bo   '#42981'Bp   '#43024'Bt   '#43034'Bu   '#43036'By   '#43054'Bz   '#44172'B"   '#44198'B#   '#44206'B' +
            '&   '#44229'B'#39'   '#44243'B(   '#44257'B)   '#44279'B*   '#44294'B,   '#44313'B-   '#44337'B/   '#44355'B2   '#44424'B6   '#44442'B7   ' +
            #44444'B;   '#44454'B<   '#44456'BB   '#44490'BC   '#44506'BE   '#44520'BF   '#44534'BG   '#44576'BI   '#44604'BK   '#44616'BL   '#44639'BM ' +
            '  '#44669'BO   '#44675'BP   '#44692'BQ   '#44702'BT   '#46500'B9   '#46533'B:   '#46543'B=   '#46566'B>   '#46580'B?   '#46598'BA   '#46619'B' +
            'B   '#46643'BC   '#46669'BD   '#46670'B?   '#46673'BE   '#46697'BF   '#46718'BH   '#46754'BJ   '#46762'BL   '#46781'BN   '#46791'BO   ' +
            #46805'BP   '#46815'BR   '#46829'BS   '#46851'BT   '#46888'BV   '#46918'BX   '#46943'BY   '#46956'BZ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MKP_MARKUP"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'MKI_DESCRICAO,'
      'MKI_PORCENTAGEM,'
      'MKP_CODIGO,'
      'MKP_DESCRICAO,'
      'MKP_MARKUP'
      'from MARKUPSITENS'
      'left join MARKUPS on MKI_MARKUP=MKP_CODIGO'
      'order by MKP_DESCRICAO, MKI_DESCRICAO'
      '')
    Left = 48
    Top = 160
  end
end
