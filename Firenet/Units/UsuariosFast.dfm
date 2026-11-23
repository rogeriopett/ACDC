object FormUsuariosFast: TFormUsuariosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Usu'#225'rios'
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
      '01 - usu'#225'rios')
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
    ReportOptions.Name = 'Usu'#225'rios'
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
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_LOGIN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USU_LOGIN"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 96.724446060000000000
          Width = 249.664022460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USU_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 580.165740000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_DTLOGIN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USU_DTLOGIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 644.181510000000000000
          Width = 70.241496660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_HRLOGIN'
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
            '[frxDBDataset1."USU_HRLOGIN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 716.535870000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USU_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 348.354360000000000000
          Width = 27.532776670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'USU_VENDEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USU_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 201.391156670000000000
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
        Top = 306.141930000000000000
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
            'USU01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 257.008040000000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 15.118110240000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 0.755905510000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Login')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 96.755942130000000000
          Top = 0.755905510000000000
          Width = 249.632526400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 348.472458030000000000
          Top = 0.755905510000000000
          Width = 231.685124800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor'
            '')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 580.267826380000000000
          Top = 0.755905510000000000
          Width = 134.551210390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #218'ltimo Login')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 716.535870000000000000
          Top = 0.755905510000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
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
    ReportOptions.Name = 'Acessos'
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
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 502.677465590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ACE_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ACE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 504.913686060000000000
          Width = 102.262352460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ACE_TIPO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ACE_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 613.039558030000000000
          Width = 42.708624800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ACE_ACESSO'
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
            '[frxDBDataset2."ACE_ACESSO"]')
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
            'USU01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Condition = 'frxDBDataset2."TEL_DESCRICAO"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 502.677465590000000000
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
          Left = 504.913686060000000000
          Top = 24.566929130000000000
          Width = 102.262352460000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo'
            '')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 613.039558030000000000
          Top = 24.566929130000000000
          Width = 42.708624800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Acesso')
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
            '[frxDBDataset2."TEL_DESCRICAO"]')
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
      'USU_DTLOGIN,'
      'USU_EMAIL,'
      'USU_HRLOGIN,'
      'USU_LOGIN,'
      'USU_NOME,'
      'USU_STATUS,'
      'USU_VENDEDOR,'
      'VEN_NOME'
      'from USUARIOS'
      'left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO'
      'order by USU_NOME'
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
      'select * from ACESSOS'
      'left join TELAS on ACE_TELA=TEL_NOMEFORM'
      'where ACE_USUARIO=:usuario and TEL_STATUS='#39'A'#39
      'order by TEL_DESCRICAO, ACE_DESCRICAO'
      '')
    Left = 120
    Top = 160
    ParamData = <
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end>
  end
end
