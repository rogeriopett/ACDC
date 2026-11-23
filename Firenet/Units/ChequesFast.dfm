object FormChequesFast: TFormChequesFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Cheques'
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
      '01 - cheques por cliente'
      '02 - cheques por banco')
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
    ReportOptions.Name = 'Cheques por cliente'
    ReportOptions.LastChange = 44363.637847893520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Total, SubTotal: Currency;'
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  Total:=0;'
      '  SubTotal:=0;                        '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTAL'#39','#39#39#39#39'+FloatToStr(Total)+'#39#39#39#39');'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Total:=Total+<frxDBDataSet1."CHE_VALOR">;    '
      '  SubTotal:=SubTotal+<frxDBDataSet1."CHE_VALOR">;        '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Total:=0;                    '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'SUBTOTAL'#39','#39#39#39#39'+FloatToStr(SubTotal)+'#39#39#39#39');  '
      'end;'
      ''
      'procedure ReportSummary1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  SubTotal:=0;                        '
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
      end
      item
        Name = 'ENTRADAS'
        Value = ''
      end
      item
        Name = 'SAIDAS'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'TOTAL'
        Value = ''
      end
      item
        Name = 'SUBTOTAL'
        Value = ''
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
        Height = 13.228375760000000000
        Top = 245.669450000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 492.575096060000000000
          Top = 0.000029299999999996
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_PREDATADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_PREDATADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 516.551308030000000000
          Top = 0.000029299999999996
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_BOMPARA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_BOMPARA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000014650000000005
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_CODIGO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 46.133890000000000000
          Top = 0.000014650000000005
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_BANCO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_BANCO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 80.929190000000000000
          Width = 188.976475590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'BAN_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."BAN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 271.126160000000000000
          Top = 0.000014650000000005
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_AGENCIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_AGENCIA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 341.157700000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_CONTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_CONTA"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 414.748300000000000000
          Width = 75.590575590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_NUMERO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 666.976810000000000000
          Top = 0.000014650000000005
          Width = 86.929165590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_VALOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 616.842920000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_DTCADASTRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_DTCADASTRO"]')
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
        Top = 419.527830000000000000
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
            'CHE01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'ReportSummary1OnAfterPrint'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 6.385590000000000000
          Width = 223.847866670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade Total: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 6.385590000000000000
          Width = 95.343846670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 6.385590000000000000
          Width = 118.021026670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUBTOTAL]')
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
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = '<frxDBDataset1."CLI_NOME">'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.677180000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 492.575096060000000000
          Top = 24.677180000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#233)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 516.551308030000000000
          Top = 24.677180000000000000
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bom Para')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.094488190000000000
          Width = 360.267780000000000000
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
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 54.125850000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CHE_CLIENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 46.133890000000000000
          Top = 24.677180000000000000
          Width = 222.992245590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 341.157700000000000000
          Top = 24.677180000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 414.748300000000000000
          Top = 24.677180000000000000
          Width = 75.590575590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 271.126160000000000000
          Top = 24.677180000000000000
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 666.976810000000000000
          Top = 24.677180000000000000
          Width = 86.929165590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 24.677180000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 616.842920000000000000
          Top = 24.677180000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cadastro')
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
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 189.832096670000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.000000000000000000
          Width = 95.343846670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.000000000000000000
          Width = 118.021026670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTAL]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.007874020000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 35.905511811023620000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 37.000000000000000000
          Top = 1.889763777874016000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 165.430426670000000000
          Top = 1.889763777874016000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 228.501290370000000000
          Top = 1.889763777874016000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 537.042053330000000000
          Top = 1.889763780000000000
          Width = 42.923933330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 580.461966670000000000
          Top = 1.889763780000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 103.000000000000000000
          Top = 1.889763777874016000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 610.682436670000000000
          Top = 1.889763780000000000
          Width = 144.530159310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 291.141930000000000000
          Top = 1.889763780000000000
          Width = 31.585343330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 324.756083700000000000
          Top = 1.889763780000000000
          Width = 69.380643330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 393.968770000000000000
          Top = 1.889763777874016000
          Width = 42.923933330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 436.921513700000000000
          Top = 1.889763780000000000
          Width = 100.157480314960600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 112
  end
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Cheques por banco'
    ReportOptions.LastChange = 44363.673411377310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Total, SubTotal: Currency;'
      '  '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  Total:=0;'
      '  SubTotal:=0;                        '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'TOTAL'#39','#39#39#39#39'+FloatToStr(Total)+'#39#39#39#39');'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Total:=Total+<frxDBDataSet2."CHE_VALOR">;    '
      '  SubTotal:=SubTotal+<frxDBDataSet2."CHE_VALOR">;        '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Total:=0;                    '
      'end;'
      ''
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Set('#39'SUBTOTAL'#39','#39#39#39#39'+FloatToStr(SubTotal)+'#39#39#39#39');  '
      'end;'
      ''
      'procedure ReportSummary1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  SubTotal:=0;                        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 120
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      end
      item
        Name = 'ENTRADAS'
        Value = ''
      end
      item
        Name = 'SAIDAS'
        Value = ''
      end
      item
        Name = 'BAN_CODIGO'
        Value = ''
      end
      item
        Name = 'BAN_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'TOTAL'
        Value = ''
      end
      item
        Name = 'SUBTOTAL'
        Value = ''
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
          Width = 120.944881890000000000
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
        Height = 13.228375760000000000
        Top = 245.669450000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 492.575096060000000000
          Top = 0.000029299999999996
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_PREDATADO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_PREDATADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 516.551308030000000000
          Top = 0.000029299999999996
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_BOMPARA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_BOMPARA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000014650000000005
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_CODIGO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 46.133890000000000000
          Top = 0.000014650000000005
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 80.929190000000000000
          Width = 188.976475590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 271.126160000000000000
          Top = 0.000014650000000005
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_AGENCIA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_AGENCIA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 341.157700000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_CONTA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_CONTA"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 414.748300000000000000
          Width = 75.590575590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_NUMERO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_NUMERO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 666.976810000000000000
          Top = 0.000014650000000005
          Width = 86.929165590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_VALOR'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_STATUS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 616.842920000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CHE_DTCADASTRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_DTCADASTRO"]')
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
        Top = 419.527830000000000000
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
            'CHE02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'ReportSummary1OnAfterPrint'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 6.385590000000000000
          Width = 223.847866670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade Total: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 6.385590000000000000
          Width = 95.343846670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 6.385590000000000000
          Width = 118.021026670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUBTOTAL]')
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
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = '<frxDBDataset2."BAN_NOME">'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.677180000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 492.575096060000000000
          Top = 24.677180000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#233)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 516.551308030000000000
          Top = 24.677180000000000000
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bom Para')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.094488190000000000
          Width = 360.267780000000000000
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
            '[frxDBDataset2."BAN_NOME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 54.125850000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CHE_BANCO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 46.133890000000000000
          Top = 24.677180000000000000
          Width = 222.992245590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 341.157700000000000000
          Top = 24.677180000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 414.748300000000000000
          Top = 24.677180000000000000
          Width = 75.590575590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 271.126160000000000000
          Top = 24.677180000000000000
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 666.976810000000000000
          Top = 24.677180000000000000
          Width = 86.929165590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 24.677180000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 616.842920000000000000
          Top = 24.677180000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cadastro')
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
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 189.832096670000000000
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
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.000000000000000000
          Width = 95.343846670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.000000000000000000
          Width = 118.021026670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTAL]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.007874020000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 35.905511810000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 37.000000000000000000
          Top = 1.889763780000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 165.430426670000000000
          Top = 1.889763780000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 228.501290370000000000
          Top = 1.889763780000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 537.042053330000000000
          Top = 1.889763780000000000
          Width = 42.923933330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Banco:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 580.461966670000000000
          Top = 1.889763780000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[BAN_CODIGO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 103.000000000000000000
          Top = 1.889763780000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 610.682436670000000000
          Top = 1.889763780000000000
          Width = 144.530159310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[BAN_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 291.141930000000000000
          Top = 1.889763780000000000
          Width = 31.585343330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 324.756083700000000000
          Top = 1.889763780000000000
          Width = 69.380643330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 393.968770000000000000
          Top = 1.889763780000000000
          Width = 42.923933330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 436.921513700000000000
          Top = 1.889763780000000000
          Width = 100.157480310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
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
      'select'
      'CHE_CODIGO,'
      'CHE_CLIENTE,'
      'CHE_BANCO,'
      'CHE_AGENCIA,'
      'CHE_CONTA,'
      'CHE_NUMERO,'
      'CHE_PREDATADO,'
      'CHE_BOMPARA,'
      'CHE_VALOR,'
      'CHE_DTCADASTRO,'
      'CHE_STATUS,'
      'CLI_NOME,'
      'BAN_NOME'
      'from CHEQUES'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'left join BANCOS on CHE_BANCO=BAN_CODIGO'
      'order by CLI_NOME'
      '')
    Left = 48
    Top = 160
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select'
      'CHE_CODIGO,'
      'CHE_CLIENTE,'
      'CHE_BANCO,'
      'CHE_AGENCIA,'
      'CHE_CONTA,'
      'CHE_NUMERO,'
      'CHE_PREDATADO,'
      'CHE_BOMPARA,'
      'CHE_VALOR,'
      'CHE_DTCADASTRO,'
      'CHE_STATUS,'
      'CLI_NOME,'
      'BAN_NOME'
      'from CHEQUES'
      'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO'
      'left join BANCOS on CHE_BANCO=BAN_CODIGO'
      'order by BAN_NOME'
      '')
    Left = 120
    Top = 160
  end
end
