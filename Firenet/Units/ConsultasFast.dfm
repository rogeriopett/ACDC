object FormConsultasFast: TFormConsultasFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Consultas'
  ClientHeight = 312
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 525
    Top = 8
    Width = 156
    Height = 249
    Lines.Strings = (
      '01 - Consultas por cliente'
      '02 - Consultas por m'#233'dico'
      '03 - Consultas por solicitante'
      '04 - Consultas por conv'#234'nio'
      '05 - Imagens 6 por p'#225'gina'
      '06 - Imagens 2 por p'#225'gina')
    TabOrder = 0
  end
  object FileListBox1: TFileListBox
    Left = 687
    Top = 8
    Width = 134
    Height = 249
    ItemHeight = 13
    Mask = '*.jpg'
    TabOrder = 1
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
    FieldAliases.Strings = (
      'COS_CLIENTE=COS_CLIENTE'
      'COS_CODIGO=COS_CODIGO'
      'COS_CONVENIO=COS_CONVENIO'
      'COS_DATAINICIO=COS_DATAINICIO'
      'COS_HORAINICIO=COS_HORAINICIO'
      'COS_MEDICO=COS_MEDICO'
      'COS_SOLICITANTE=COS_SOLICITANTE'
      'COS_STATUS=COS_STATUS'
      'COS_VALORTOTAL=COS_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'CLI_NOMESOLICITANTE=CLI_NOMESOLICITANTE'
      'COV_DESCRICAO=COV_DESCRICAO'
      'VEN_NOME=VEN_NOME')
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
    ReportOptions.Name = 'Consultas por cliente'
    ReportOptions.LastChange = 44358.692221354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
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
        Name = 'COS_STATUS'
        Value = ''
      end
      item
        Name = 'COV_CODIGO'
        Value = ''
      end
      item
        Name = 'COV_DESCRICAO'
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
        Name = 'CLI_CODIGO2'
        Value = ''
      end
      item
        Name = 'CLI_NOME2'
        Value = ''
      end
      item
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 210.110346060000000000
          Width = 206.304576660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.595856670000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COS_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOMESOLICITANTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOMESOLICITANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_VALORTOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."COS_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COV_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COV_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COS_DATAINICIO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COS_HORAINICIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_MEDICO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COS_MEDICO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."CLI_NOME"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
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
            '[frxDBDataset1."COS_CLIENTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
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
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 24.566929130000000000
          Width = 245.852996400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'dico')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 148.779349370000000000
          Top = 24.566929130000000000
          Width = 18.897637800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Top = 24.566929130000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Top = 24.566929130000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solicitante')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Top = 24.566929130000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 24.566929130000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 24.566929130000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora'
            '')
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
        Height = 26.456692910000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
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
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.889763780000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset1."COS_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 445.984540000000000000
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
            'COS01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 396.850650000000000000
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
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.385590000000000000
          Width = 68.887136670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.385590000000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset1."COS_VALORTOTAL">,MasterData1)]')
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
        Height = 45.354330708661420000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Width = 65.601113330000000000
          Height = 15.118110236220470000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 261.958000370000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 15.118110240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 15.118110240000000000
          Width = 84.498763330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COS_STATUS]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 30.236230240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 30.236230240000000000
          Width = 31.154916660000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_CODIGO]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 15.118110240000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dico:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 15.118110240000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 140.593073330000000000
          Top = 30.236230240000000000
          Width = 222.960729990000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_DESCRICAO]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 15.118110240000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 30.236240000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 30.236240000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO2]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 30.236240000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME2]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COS_CLIENTE=COS_CLIENTE'
      'COS_CODIGO=COS_CODIGO'
      'COS_CONVENIO=COS_CONVENIO'
      'COS_DATAINICIO=COS_DATAINICIO'
      'COS_HORAINICIO=COS_HORAINICIO'
      'COS_MEDICO=COS_MEDICO'
      'COS_SOLICITANTE=COS_SOLICITANTE'
      'COS_STATUS=COS_STATUS'
      'COS_VALORTOTAL=COS_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'CLI_NOMESOLICITANTE=CLI_NOMESOLICITANTE'
      'COV_DESCRICAO=COV_DESCRICAO'
      'VEN_NOME=VEN_NOME')
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
    ReportOptions.Name = 'Consultas por m'#233'dico'
    ReportOptions.LastChange = 44358.692221354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
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
        Name = 'COS_STATUS'
        Value = ''
      end
      item
        Name = 'COV_CODIGO'
        Value = ''
      end
      item
        Name = 'COV_DESCRICAO'
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
        Name = 'CLI_CODIGO2'
        Value = ''
      end
      item
        Name = 'CLI_NOME2'
        Value = ''
      end
      item
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 210.110346060000000000
          Width = 206.304576660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.595856670000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_STATUS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."COS_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOMESOLICITANTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOMESOLICITANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_VALORTOTAL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."COS_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COV_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COV_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COS_DATAINICIO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COS_HORAINICIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COS_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."VEN_NOME"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
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
            '[frxDBDataset2."COS_MEDICO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
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
            '[frxDBDataset2."VEN_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 24.566929130000000000
          Width = 245.852996400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 148.779349370000000000
          Top = 24.566929130000000000
          Width = 18.897637800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Top = 24.566929130000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Top = 24.566929130000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solicitante')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Top = 24.566929130000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 24.566929130000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 24.566929130000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora'
            '')
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
        Height = 26.456692910000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
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
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.889763780000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset2."COS_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 445.984540000000000000
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
            'COS02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 396.850650000000000000
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
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.385590000000000000
          Width = 68.887136670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.385590000000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset2."COS_VALORTOTAL">,MasterData1)]')
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
        Height = 45.354330708661420000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Width = 65.601113330000000000
          Height = 15.118110236220470000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 261.958000370000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 15.118110240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 15.118110240000000000
          Width = 84.498763330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COS_STATUS]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 30.236230240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 30.236230240000000000
          Width = 31.154916660000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_CODIGO]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 15.118110240000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dico:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 15.118110240000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 140.593073330000000000
          Top = 30.236230240000000000
          Width = 222.960729990000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_DESCRICAO]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 15.118110240000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 30.236240000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 30.236240000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO2]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 30.236240000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME2]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COS_CLIENTE=COS_CLIENTE'
      'COS_CODIGO=COS_CODIGO'
      'COS_CONVENIO=COS_CONVENIO'
      'COS_DATAINICIO=COS_DATAINICIO'
      'COS_HORAINICIO=COS_HORAINICIO'
      'COS_MEDICO=COS_MEDICO'
      'COS_SOLICITANTE=COS_SOLICITANTE'
      'COS_STATUS=COS_STATUS'
      'COS_VALORTOTAL=COS_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'CLI_NOMESOLICITANTE=CLI_NOMESOLICITANTE'
      'COV_DESCRICAO=COV_DESCRICAO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 112
  end
  object frxReport3: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Consultas por solicitante'
    ReportOptions.LastChange = 44358.692221354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
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
        Name = 'COS_STATUS'
        Value = ''
      end
      item
        Name = 'COV_CODIGO'
        Value = ''
      end
      item
        Name = 'COV_DESCRICAO'
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
        Name = 'CLI_CODIGO2'
        Value = ''
      end
      item
        Name = 'CLI_NOME2'
        Value = ''
      end
      item
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 210.110346060000000000
          Width = 206.304576660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.595856670000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_STATUS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."COS_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_VALORTOTAL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."COS_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COV_DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COV_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COS_DATAINICIO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COS_HORAINICIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CLIENTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COS_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset3."CLI_NOMESOLICITANTE"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COS_SOLICITANTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOMESOLICITANTE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 24.566929130000000000
          Width = 245.852996400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 148.779349370000000000
          Top = 24.566929130000000000
          Width = 18.897637800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Top = 24.566929130000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Top = 24.566929130000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'dico')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Top = 24.566929130000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 24.566929130000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 24.566929130000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora'
            '')
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
        Height = 26.456692910000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
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
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.889763780000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset3."COS_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 445.984540000000000000
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
            'COS03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 396.850650000000000000
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
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.385590000000000000
          Width = 68.887136670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.385590000000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset3."COS_VALORTOTAL">,MasterData1)]')
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
        Height = 45.354330708661420000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Width = 65.601113330000000000
          Height = 15.118110236220470000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 261.958000370000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 15.118110240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 15.118110240000000000
          Width = 84.498763330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COS_STATUS]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 30.236230240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 30.236230240000000000
          Width = 31.154916660000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_CODIGO]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 15.118110240000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dico:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 15.118110240000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 140.593073330000000000
          Top = 30.236230240000000000
          Width = 222.960729990000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_DESCRICAO]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 15.118110240000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 30.236240000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 30.236240000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO2]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 30.236240000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME2]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COS_CLIENTE=COS_CLIENTE'
      'COS_CODIGO=COS_CODIGO'
      'COS_CONVENIO=COS_CONVENIO'
      'COS_DATAINICIO=COS_DATAINICIO'
      'COS_HORAINICIO=COS_HORAINICIO'
      'COS_MEDICO=COS_MEDICO'
      'COS_SOLICITANTE=COS_SOLICITANTE'
      'COS_STATUS=COS_STATUS'
      'COS_VALORTOTAL=COS_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'CLI_NOMESOLICITANTE=CLI_NOMESOLICITANTE'
      'COV_DESCRICAO=COV_DESCRICAO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 112
  end
  object frxReport4: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Consultas por conv'#234'nio'
    ReportOptions.LastChange = 44364.561658958340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 264
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
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
        Name = 'COS_STATUS'
        Value = ''
      end
      item
        Name = 'COV_CODIGO'
        Value = ''
      end
      item
        Name = 'COV_DESCRICAO'
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
        Name = 'CLI_CODIGO2'
        Value = ''
      end
      item
        Name = 'CLI_NOME2'
        Value = ''
      end
      item
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 210.110346060000000000
          Width = 206.304576660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.595856670000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_STATUS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."COS_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOMESOLICITANTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOMESOLICITANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_VALORTOTAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
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
            '[frxDBDataset4."COS_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COS_DATAINICIO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COS_HORAINICIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CLIENTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COS_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset4."COV_DESCRICAO"'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COS_CONVENIO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COV_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 24.566929130000000000
          Width = 245.852996400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 148.779349370000000000
          Top = 24.566929130000000000
          Width = 18.897637800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'St.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 418.385900000000000000
          Top = 24.566929130000000000
          Width = 114.461966670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'dico')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 534.575140000000000000
          Top = 24.566929130000000000
          Width = 149.611626660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Solicitante')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 686.472501970000000000
          Top = 24.566929130000000000
          Width = 68.031457010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Top = 24.566929130000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 24.566929130000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora'
            '')
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
        Height = 26.456692910000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.889763780000000000
          Width = 68.887136670000000000
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
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.889763780000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset4."COS_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 445.984540000000000000
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
            'COS04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 396.850650000000000000
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
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.385590000000000000
          Width = 68.887136670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal:')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 647.821522310000000000
          Top = 1.385590000000000000
          Width = 106.682436670000000000
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
            '[SUM(<frxDBDataset4."COS_VALORTOTAL">,MasterData1)]')
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
        Height = 45.354330708661420000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Width = 65.601113330000000000
          Height = 15.118110236220470000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 261.958000370000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 15.118110240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 15.118110240000000000
          Width = 84.498763330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COS_STATUS]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 30.236230240000000000
          Width = 65.601113330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conv'#234'nio:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Top = 30.236230240000000000
          Width = 31.154916660000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_CODIGO]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 15.118110240000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dico:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 15.118110240000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 109.000000000000000000
          Width = 61.821583330000000000
          Height = 15.118110236220470000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 140.593073330000000000
          Top = 30.236230240000000000
          Width = 222.960729990000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COV_DESCRICAO]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 15.118110240000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 369.614100000000000000
          Top = 30.236240000000000000
          Width = 61.821583330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 432.645950000000000000
          Top = 30.236240000000000000
          Width = 36.687549310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO2]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 30.236240000000000000
          Width = 282.356999310000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME2]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CSI_DESCRICAO=CSI_DESCRICAO'
      'CSI_EXAME=CSI_EXAME'
      'CSI_SIGLA=CSI_SIGLA'
      'COS_CLIENTE=COS_CLIENTE'
      'COS_CODIGO=COS_CODIGO'
      'COS_CONVENIO=COS_CONVENIO'
      'COS_DATAINICIO=COS_DATAINICIO'
      'COS_HORAINICIO=COS_HORAINICIO'
      'COS_MEDICO=COS_MEDICO'
      'COS_SOLICITANTE=COS_SOLICITANTE'
      'CLI_NOME=CLI_NOME'
      'CLI_NOMESOLICITANTE=CLI_NOMESOLICITANTE'
      'COV_DESCRICAO=COV_DESCRICAO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 112
  end
  object frxReport5: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Imagens 6 por p'#225'gina'
    ReportOptions.LastChange = 44364.561658958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Picture2.LoadFromFile(<frxDBDataset6."IMAGEM1">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
      end
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
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
        Value = Null
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
        Height = 20.787401574803100000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 755.905511810000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'EXAME')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.559055110000000000
          Width = 60.471991810000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CSI_SIGLA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CSI_SIGLA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 5.559055110000000000
          Width = 684.094441810000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CSI_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CSI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574803150000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."CLI_NOME"'
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692925590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 56.472480000000000000
          Width = 457.506676400000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 136.062992130000000000
          Top = 20.787401570000000000
          Width = 377.952755910000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'M'#201'DICO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015748030000000000
          Top = 20.787401570000000000
          Width = 241.889895590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SOLICITANTE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015748030000000000
          Width = 241.889895590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CONVENIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 20.787401570000000000
          Width = 136.063055590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA / HORA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.559055110000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 109.569470810000000000
          Top = 5.559055110000000000
          Width = 400.630155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 60.252010000000000000
          Top = 5.559055110000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CLIENTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_CLIENTE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 517.134200000000000000
          Top = 5.559055110000000000
          Width = 234.330835590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COV_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COV_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.346456680000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."COS_DATAINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031515590000000000
          Top = 26.346456680000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_HORAINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 139.999819370000000000
          Top = 26.346456680000000000
          Width = 370.393927800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795278030000000000
          Top = 26.346456680000000000
          Width = 234.330835590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOMESOLICITANTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOMESOLICITANTE"]')
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
        Top = 600.945270000000000000
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
            'COS05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 287.244280000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        Columns = 2
        ColumnWidth = 374.173228346456700000
        ColumnGap = 7.559055118110236000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 374.173228350000000000
          Height = 280.440944880000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object TBImagens: TClientDataSet
    PersistDataPacket.Data = {
      860000009619E0BD010000001800000002000000000003000000860006434F44
      49474F040001000200010007535542545950450200490008004175746F696E63
      0007494D4147454D31010049000200010005574944544802000200960002000C
      4155544F494E4356414C554504000100010000000D44454641554C545F4F5244
      45520200820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'IMAGEM1'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CODIGO'
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 160
    object TBImagensCODIGO: TAutoIncField
      FieldName = 'CODIGO'
    end
    object TBImagensIMAGEM1: TStringField
      FieldName = 'IMAGEM1'
      Size = 150
    end
  end
  object DSImagens: TDataSource
    DataSet = TBImagens
    Left = 392
    Top = 207
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'IMAGEM1=IMAGEM1')
    DataSet = TBImagens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 112
  end
  object frxReport6: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Imagens 2 por p'#225'gina'
    ReportOptions.LastChange = 44364.561658958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Picture2.LoadFromFile(<frxDBDataset6."IMAGEM1">);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
      end
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
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
        Value = Null
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
        Height = 20.787401574803100000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 755.905511810000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'EXAME')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.559055110000000000
          Width = 60.471991810000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CSI_SIGLA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CSI_SIGLA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 5.559055110000000000
          Width = 684.094441810000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CSI_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CSI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574803150000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."CLI_NOME"'
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692925590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 56.472480000000000000
          Width = 457.506676400000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 136.062992130000000000
          Top = 20.787401570000000000
          Width = 377.952755910000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'M'#201'DICO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015748030000000000
          Top = 20.787401570000000000
          Width = 241.889895590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SOLICITANTE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015748030000000000
          Width = 241.889895590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CONVENIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 20.787401570000000000
          Width = 136.063055590000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA / HORA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.559055110000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_CODIGO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 109.569470810000000000
          Top = 5.559055110000000000
          Width = 400.630155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 60.252010000000000000
          Top = 5.559055110000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_CLIENTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_CLIENTE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 517.134200000000000000
          Top = 5.559055110000000000
          Width = 234.330835590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COV_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COV_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.346456680000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_DATAINICIO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."COS_DATAINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031515590000000000
          Top = 26.346456680000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COS_HORAINICIO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COS_HORAINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 139.999819370000000000
          Top = 26.346456680000000000
          Width = 370.393927800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795278030000000000
          Top = 26.346456680000000000
          Width = 234.330835590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOMESOLICITANTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOMESOLICITANTE"]')
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
        Top = 759.685530000000000000
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
            'COS06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 445.984540000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        ColumnWidth = 755.905511811023600000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 39.685185830000000000
          Top = 3.779530000000000000
          Width = 676.535628350000000000
          Height = 439.181204880000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_VALORTOTAL,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO'
      '')
    Left = 48
    Top = 160
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_VALORTOTAL,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO'
      '')
    Left = 120
    Top = 160
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_VALORTOTAL,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO'
      '')
    Left = 192
    Top = 160
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'COS_STATUS,'
      'COS_VALORTOTAL,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO'
      '')
    Left = 264
    Top = 160
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 208
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select'
      'CSI_DESCRICAO,'
      'CSI_EXAME,'
      'CSI_SIGLA,'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTASITENS'
      'left join CONSULTAS on CSI_CONSULTA=COS_CODIGO'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'where CSI_CONSULTA=:codigo'
      'order by CSI_DESCRICAO'
      '')
    Left = 336
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
end
