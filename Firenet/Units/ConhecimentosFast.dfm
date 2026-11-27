object FormConhecimentosFast: TFormConhecimentosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Conhecimentos'
  ClientHeight = 503
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 472
    Top = 32
    Width = 431
    Height = 233
    Lines.Strings = (
      '01 - CTe por status'
      '02 - CTe por remetente'
      '03 - CTe por destinat'#225'rio'
      '04 - CTe por status com ICMS'
      '05 - Verifica'#231#227'o de numera'#231#227'o'
      '06 - Inutiliza'#231#245'es no per'#237'odo'
      '07 - DACTE a'#233'reo (antigo ConhecimentosQ01Aereo)'
      
        '08 - DACTE rodovi'#225'rio lota'#231#227'o (antigo ConhecimentosQ01Rodoviario' +
        ')'
      
        '09 - DACTE rodovi'#225'rio fracionada (antigo ConhecimentosQ01Rodovia' +
        'rioFracionada)')
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
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'HEADER1'
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
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
        Name = 'STATUS'
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
        Frame.Width = 0.500000000000000000
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 84.417352130000000000
          Width = 226.771655980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 654.858690000000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_VALORTOTAL'
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
            '[frxDBDataset1."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 380.953000000000000000
          Width = 270.236225350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 312.921460000000000000
          Width = 66.141605350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DTEMISSAO'
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
            '[frxDBDataset1."CTE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_REMETENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CTE_REMETENTE"]')
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
        Top = 415.748300000000000000
        Width = 755.906000000000000000
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
            'CTE01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 22.677145830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
          Width = 37.795300000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.000000000000000007
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 182.989486670000000000
          Top = 0.000000000000000007
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
          Top = 0.000000000000000007
          Width = 65.601113330000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 317.905690000000000000
          Top = 0.000000000000000007
          Width = 43.086599530000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 363.322998190000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 287.244280000000000000
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
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 1.889763780000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 3.779530000000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795275590000000000
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."STATUS"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Top = 24.566929130000000000
          Width = 264.566955980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Remetente')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 654.858690000000000000
          Top = 24.566929130000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 380.953000000000000000
          Top = 24.566929130000000000
          Width = 270.236225350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 312.921460000000000000
          Top = 24.566929130000000000
          Width = 66.141605350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 56.692925590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 132.283525590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTE_CODIGO=CTE_CODIGO'
      'CTE_REMETENTE=CTE_REMETENTE'
      'CTE_REMNOME=CTE_REMNOME'
      'CTE_DTEMISSAO=CTE_DTEMISSAO'
      'CTE_VALORTOTAL=CTE_VALORTOTAL'
      'CTE_STATUS=CTE_STATUS'
      'CTE_CHAVEACESSO=CTE_CHAVEACESSO'
      'STATUS=STATUS')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
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
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'HEADER1'
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
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
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'CTE_REMETENTE'
        Value = ''
      end
      item
        Name = 'CTE_REMNOME'
        Value = ''
      end
      item
        Name = 'CTE_DESTINATARIO'
        Value = ''
      end
      item
        Name = 'CTE_DESNOME'
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
        Frame.Width = 0.500000000000000000
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 283.464750000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DESTINATARIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_DESTINATARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 673.756340000000000000
          Width = 81.259725350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_VALORTOTAL'
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
            '[frxDBDataset2."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 387.732530000000000000
          Width = 266.456695350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 324.480520000000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DTEMISSAO'
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
            '[frxDBDataset2."CTE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_PAGOPOR'
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
            '[frxDBDataset2."CTE_PAGOPOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 211.653535980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 655.638220000000000000
          Width = 17.007715350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_STATUS'
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
            '[frxDBDataset2."CTE_STATUS"]')
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
        Top = 449.764070000000000000
        Width = 755.906000000000000000
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
            'CTE02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 56.692915830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
          Width = 37.795300000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 182.989486670000000000
          Top = 0.000000000000000007
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
          Top = 0.000000000000000007
          Width = 65.601113330000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 317.905690000000000000
          Top = 0.000000000000000007
          Width = 43.086599530000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 363.322998190000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Width = 73.160173330000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118120000000000000
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
            'Remetente:')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 30.236240000000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Destinat'#225'rio:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_REMETENTE]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 15.118120000000000000
          Width = 379.302103330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_REMNOME]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 379.302103330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_DESNOME]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 30.236240000000000000
          Width = 39.144403330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_DESTINATARIO]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
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
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 1.889763780000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 3.779530000000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795275590000000000
        Top = 222.992270000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."CTE_REMNOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Top = 24.566929130000000000
          Width = 22.677035980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PP')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 673.756340000000000000
          Top = 24.566929130000000000
          Width = 81.259725350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 387.732530000000000000
          Top = 24.566929130000000000
          Width = 266.456695350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 324.480520000000000000
          Top = 24.566929130000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_REMETENTE"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 393.071095590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CTE_REMNOME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 24.566929130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dest.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 24.566929130000000000
          Width = 211.653535980000000000
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
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 655.638220000000000000
          Top = 24.566929130000000000
          Width = 17.007715350000000000
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
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTE_CODIGO=CTE_CODIGO'
      'CTE_PAGOPOR=CTE_PAGOPOR'
      'CTE_REMETENTE=CTE_REMETENTE'
      'CTE_REMNOME=CTE_REMNOME'
      'CTE_DESTINATARIO=CTE_DESTINATARIO'
      'CTE_DESNOME=CTE_DESNOME'
      'CTE_DTEMISSAO=CTE_DTEMISSAO'
      'CTE_VALORTOTAL=CTE_VALORTOTAL'
      'CTE_STATUS=CTE_STATUS'
      'CTE_CHAVEACESSO=CTE_CHAVEACESSO')
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
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
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'HEADER1'
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
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
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'CTE_REMETENTE'
        Value = ''
      end
      item
        Name = 'CTE_REMNOME'
        Value = ''
      end
      item
        Name = 'CTE_DESTINATARIO'
        Value = ''
      end
      item
        Name = 'CTE_DESNOME'
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
        Frame.Width = 0.500000000000000000
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 283.464750000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_REMETENTE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_REMETENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 673.756340000000000000
          Width = 81.259725350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_VALORTOTAL'
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
            '[frxDBDataset3."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 387.732530000000000000
          Width = 266.456695350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 324.480520000000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DTEMISSAO'
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
            '[frxDBDataset3."CTE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_PAGOPOR'
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
            '[frxDBDataset3."CTE_PAGOPOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 211.653535980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 655.638220000000000000
          Width = 17.007715350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_STATUS'
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
            '[frxDBDataset3."CTE_STATUS"]')
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
        Top = 449.764070000000000000
        Width = 755.906000000000000000
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
            'CTE03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 56.692915830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
          Width = 37.795300000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 182.989486670000000000
          Top = 0.000000000000000007
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
          Top = 0.000000000000000007
          Width = 65.601113330000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 317.905690000000000000
          Top = 0.000000000000000007
          Width = 43.086599530000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 363.322998190000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Width = 73.160173330000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118120000000000000
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
            'Remetente:')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 30.236240000000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Destinat'#225'rio:')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_REMETENTE]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 15.118120000000000000
          Width = 379.302103330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_REMNOME]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 379.302103330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_DESNOME]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 30.236240000000000000
          Width = 39.144403330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CTE_DESTINATARIO]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
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
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 1.889763780000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 3.779530000000000000
          Width = 153.070795350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795275590000000000
        Top = 222.992270000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset3."CTE_DESNOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Top = 24.566929130000000000
          Width = 22.677035980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PP')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 673.756340000000000000
          Top = 24.566929130000000000
          Width = 81.259725350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 387.732530000000000000
          Top = 24.566929130000000000
          Width = 266.456695350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 324.480520000000000000
          Top = 24.566929130000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_DESTINATARIO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 393.071095590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CTE_DESNOME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 24.566929130000000000
          Width = 41.574685980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Remet.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 24.566929130000000000
          Width = 211.653535980000000000
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
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 655.638220000000000000
          Top = 24.566929130000000000
          Width = 17.007715350000000000
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
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTE_CODIGO=CTE_CODIGO'
      'CTE_PAGOPOR=CTE_PAGOPOR'
      'CTE_REMETENTE=CTE_REMETENTE'
      'CTE_REMNOME=CTE_REMNOME'
      'CTE_DESTINATARIO=CTE_DESTINATARIO'
      'CTE_DESNOME=CTE_DESNOME'
      'CTE_DTEMISSAO=CTE_DTEMISSAO'
      'CTE_VALORTOTAL=CTE_VALORTOTAL'
      'CTE_STATUS=CTE_STATUS'
      'CTE_CHAVEACESSO=CTE_CHAVEACESSO')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
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
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
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
        Name = 'HEADER1'
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
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
        Name = 'STATUS'
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
        Frame.Width = 0.500000000000000000
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 106.826840000000000000
          Width = 196.535415980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 677.535870000000000000
          Width = 77.480195350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_VALORTOTAL'
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
            '[frxDBDataset4."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 304.362400000000000000
          Width = 196.535415980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 46.574830000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_DTEMISSAO'
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
            '[frxDBDataset4."CTE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_TOTALICMSST'
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
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_TOTALICMSST"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 585.047620000000000000
          Width = 28.346305350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_ALIQICMSST'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_ALIQICMSST"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 522.575140000000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_TOTALICMS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_TOTALICMS"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 500.897960000000000000
          Width = 20.787245350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CTE_ALIQICMS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CTE_ALIQICMS"]')
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
        Top = 415.748300000000000000
        Width = 755.906000000000000000
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
            'CTE04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 22.677145830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
          Width = 37.795300000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.000000000000000007
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 182.989486670000000000
          Top = 0.000000000000000007
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
          Top = 0.000000000000000007
          Width = 65.601113330000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 317.905690000000000000
          Top = 0.000000000000000007
          Width = 43.086599530000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 363.322998190000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 287.244280000000000000
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
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 677.535870000000000000
          Top = 1.889763780000000000
          Width = 77.480195350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Top = 1.889763780000000000
          Width = 62.362075350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."CTE_TOTALICMSST">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 522.575140000000000000
          Top = 1.889763780000000000
          Width = 62.362075350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."CTE_TOTALICMS">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 677.535870000000000000
          Top = 3.779530000000000000
          Width = 77.480195350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."CTE_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
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
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Top = 3.779530000000000000
          Width = 62.362075350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '(<frxDBDataset4."CTE_TOTALICMSST">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 522.575140000000000000
          Top = 3.779530000000000000
          Width = 62.362075350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."CTE_TOTALICMS">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 15724527
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 37.795275590000000000
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."STATUS"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 106.826840000000000000
          Top = 24.566929130000000000
          Width = 196.535415980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Remetente')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 677.535870000000000000
          Top = 24.566929130000000000
          Width = 77.480195350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 304.362400000000000000
          Top = 24.566929130000000000
          Width = 196.535415980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Destinat'#225'rio')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 46.574830000000000000
          Top = 24.566929130000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 56.692925590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 132.283525590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Top = 24.566929130000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 585.047620000000000000
          Top = 24.566929130000000000
          Width = 28.346305350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '%ST')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 522.575140000000000000
          Top = 24.566929130000000000
          Width = 62.362075350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 500.897960000000000000
          Top = 24.566929130000000000
          Width = 20.787245350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CTE_ALIQICMS=CTE_ALIQICMS'
      'CTE_ALIQICMSST=CTE_ALIQICMSST'
      'CTE_CODIGO=CTE_CODIGO'
      'CTE_DTEMISSAO=CTE_DTEMISSAO'
      'CTE_DESNOME=CTE_DESNOME'
      'CTE_STATUS=CTE_STATUS'
      'CTE_CHAVEACESSO=CTE_CHAVEACESSO'
      'STATUS=STATUS'
      'CTE_REMNOME=CTE_REMNOME'
      'CTE_TOTALICMS=CTE_TOTALICMS'
      'CTE_TOTALICMSST=CTE_TOTALICMSST'
      'CTE_VALORTOTAL=CTE_VALORTOTAL')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
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
    ReportOptions.Name = 'Verifica'#231#227'o de numera'#231#227'o'
    ReportOptions.LastChange = 44357.443475740700000000
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
    Left = 336
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
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
        Name = 'STATUS'
        Value = Null
      end
      item
        Name = 'CLI_CODIGO'
        Value = Null
      end
      item
        Name = 'CLI_NOME'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'NAT_CODIGO'
        Value = Null
      end
      item
        Name = 'NAT_DESCRICAO'
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
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'DE'
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
            '[frxDBDataset7."DE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 111.874062130000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ATE'
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
            '[frxDBDataset7."ATE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 230.527498030000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'QUANTIDADE'
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
            '[frxDBDataset7."QUANTIDADE"]')
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
            'NFE07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
          Left = 230.527498030000000000
          Top = 1.385590000000000000
          Width = 94.488225590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."QUANTIDADE">,MasterData1)]')
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
        Height = 15.118120000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero inicial')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 230.527498030000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 111.874062130000000000
          Width = 94.488225590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero final')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DE=DE'
      'ATE=ATE'
      'QUANTIDADE=QUANTIDADE')
    DataSet = TBCte
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 112
  end
  object TBCte: TClientDataSet
    PersistDataPacket.Data = {
      440000009619E0BD010000001800000003000000000003000000440002444504
      000100000000000341544504000100000000000A5155414E5449444144450400
      0100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DE'
        DataType = ftInteger
      end
      item
        Name = 'ATE'
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 336
    Top = 352
    object TBCteDE: TIntegerField
      FieldName = 'DE'
    end
    object TBCteATE: TIntegerField
      FieldName = 'ATE'
    end
    object TBCteQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
  end
  object frxReport6: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44638.426261817100000000
    ReportOptions.Name = 'Totais por receita'
    ReportOptions.LastChange = 44638.426261817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 408
    Top = 64
    Datasets = <
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
        Name = 'HEADER1'
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = ''
      end
      item
        Name = 'USUARIO'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
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
        Frame.Width = 0.500000000000000000
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
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 226.771800000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_CODIGO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 82.370130000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_DTCADASTRO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 285.354345350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_JUSTIFICATIVA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_JUSTIFICATIVA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_NUMFINAL'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_NUMFINAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 142.842610000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_NUMINICIAL'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_NUMINICIAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 34.015625980000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_ANO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_ANO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_PROTOCOLO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 654.858690000000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIN_PROTOCOLODH'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CIN_PROTOCOLODH"]')
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
        Top = 347.716760000000000000
        Width = 755.906000000000000000
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
            'CTE06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Height = 22.677145830000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000000000000000007
          Width = 37.795300000000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.000000000000000007
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 182.989486670000000000
          Top = 0.000000000000000007
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 247.839880370000000000
          Top = 0.000000000000000007
          Width = 65.601113330000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 0.000000000000000007
          Width = 73.160173330000000000
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
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 34.015625980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 654.858690000000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Hora Prot.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 142.842610000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Inicial')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 82.370130000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Final')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 285.354345350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Justificativa')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 100.157375350000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Protocolo')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 264.567100000000000000
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
      end
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CIN_ANO=CIN_ANO'
      'CIN_CODIGO=CIN_CODIGO'
      'CIN_DTCADASTRO=CIN_DTCADASTRO'
      'CIN_JUSTIFICATIVA=CIN_JUSTIFICATIVA'
      'CIN_NUMINICIAL=CIN_NUMINICIAL'
      'CIN_NUMFINAL=CIN_NUMFINAL'
      'CIN_PROTOCOLO=CIN_PROTOCOLO'
      'CIN_PROTOCOLODH=CIN_PROTOCOLODH')
    DataSet = QY06
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 112
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'CTE_CODIGO,'
      'CTE_REMETENTE,'
      'CTE_REMNOME,'
      'CTE_DTEMISSAO,'
      'CTE_VALORTOTAL,'
      'CTE_STATUS,'
      'CTE_CHAVEACESSO,'
      'case CTE_STATUS'
      '  when '#39'A'#39' then '#39'ABERTO'#39
      '  when '#39'F'#39' then '#39'FINALIZADO'#39
      '  when '#39'C'#39' then '#39'CANCELADO'#39'   '
      '  when '#39'I'#39' then '#39'INUTILIZADO'#39
      ' end'
      'as STATUS'
      'from CTE'
      
        'where CTE_STATUS='#39'F'#39' and CTE_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc'
      '')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
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
      'select '
      'CTE_CODIGO,'
      'CTE_PAGOPOR,'
      'CTE_REMETENTE,'
      'CTE_REMNOME,'
      'CTE_DESTINATARIO,'
      'CTE_DESNOME,'
      'CTE_DTEMISSAO,'
      'CTE_VALORTOTAL,'
      'CTE_STATUS,'
      'CTE_CHAVEACESSO'
      'from CTE'
      
        'where CTE_STATUS='#39'F'#39' and CTE_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc'
      '')
    Left = 120
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'CTE_CODIGO,'
      'CTE_PAGOPOR,'
      'CTE_REMETENTE,'
      'CTE_REMNOME,'
      'CTE_DESTINATARIO,'
      'CTE_DESNOME,'
      'CTE_DTEMISSAO,'
      'CTE_VALORTOTAL,'
      'CTE_STATUS,'
      'CTE_CHAVEACESSO'
      'from CTE'
      
        'where CTE_STATUS='#39'F'#39' and CTE_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc'
      '')
    Left = 192
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 208
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select '
      'CTE_ALIQICMS,'
      'CTE_ALIQICMSST,'
      'CTE_CODIGO,'
      'CTE_DTEMISSAO,'
      'CTE_DESNOME,'
      'CTE_STATUS,'
      'CTE_CHAVEACESSO,'
      'case CTE_STATUS'
      '  when '#39'A'#39' then '#39'ABERTO'#39
      '  when '#39'F'#39' then '#39'FINALIZADO'#39
      '  when '#39'C'#39' then '#39'CANCELADO'#39'   '
      '  when '#39'I'#39' then '#39'INUTILIZADO'#39
      ' end'
      'as STATUS,'
      'CTE_REMNOME,'
      'CTE_TOTALICMS,'
      'CTE_TOTALICMSST,'
      'CTE_VALORTOTAL'
      'from CTE'
      
        'where CTE_STATUS='#39'F'#39' and CTE_DTEMISSAO between :datainicial and ' +
        ':datafinal'
      'order by CTE_STATUS, CTE_DTEMISSAO, CTE_CODIGO desc'
      '')
    Left = 264
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select'
      'T.ANTERIOR + 1 as DE,'
      'T.CTE_CODIGO - 1 as ATE'
      'from ('
      '  select'
      
        '    (select first 1 D.CTE_CODIGO from CTE D where D.CTE_CODIGO <' +
        ' F.CTE_CODIGO order by D.CTE_CODIGO desc) as ANTERIOR,'
      '    F.CTE_CODIGO'
      '  from CTE F'
      '  order by F.CTE_CODIGO) T'
      'where coalesce(T.ANTERIOR,0) <> T.CTE_CODIGO -1'
      '')
    Left = 336
    Top = 160
    object QY05DE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'DE'
      Origin = 'DE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QY05ATE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ATE'
      Origin = 'ATE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TR05a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 304
  end
  object QY05a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05a
    SQL.Strings = (
      'select CIN_CODIGO from CTEINUTILIZADAS'
      'where CIN_NUMINICIAL=:de and CIN_NUMFINAL=:ate'
      '')
    Left = 336
    Top = 256
    ParamData = <
      item
        Name = 'DE'
        ParamType = ptInput
      end
      item
        Name = 'ATE'
        ParamType = ptInput
      end>
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      'select '
      'CIN_ANO,'
      'CIN_CODIGO,'
      'CIN_DTCADASTRO,'
      'CIN_JUSTIFICATIVA,'
      'CIN_NUMINICIAL,'
      'CIN_NUMFINAL,'
      'CIN_PROTOCOLO,'
      'CIN_PROTOCOLODH'
      'from CTEINUTILIZADOS'
      'where CIN_DTCADASTRO between :datainicial and :datafinal'
      'order by CIN_DTCADASTRO desc, CIN_CODIGO desc'
      '')
    Left = 408
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 208
  end
  object frxReport7: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'CTE07'
    ReportOptions.LastChange = 46350.000000000000000000
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
    Left = 480
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
      end
      item
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
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
      BottomMargin = 5.000000000000000000
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
        Frame.Typ = []
        Height = 267.401574780000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object MemoQRLabel152: TfrxMemoView
          AllowVectorExport = True
          Top = 12.000000000000000000
          Width = 755.906000000000000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'O transporte coberto por este conhecimento de transporte rege-se' +
              ' pelo C'#243'digo Brasileiro de Aeron'#225'utica (Lei n'#186' 7.565 de 19/12/19' +
              '86) e pelas regulamenta'#231#245'es da ANAC, de cujo teor o expedidor/re' +
              'metente declara ter plena ci'#234'ncia. O expedidor/remetente aceita ' +
              'como corretas todas as especifica'#231#245'es contidas neste documento, ' +
              'certificando que a carga, incluindo o artigo perigoso, foi devid' +
              'amente declarada e acondicionada, para o transporte a'#233'reo.')
          ParentFont = False
        end
        object BoxShape1: TfrxMemoView
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Top = 29.000000000000000000
          Width = 130.574855600540000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EXPEDIDOR / REMETENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Top = 56.000000000000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO OPERACIONAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 29.000000000000000000
          Width = 609.009287449393000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel154: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 56.000000000000000000
          Width = 412.126887989204000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 559.023600539811000000
          Top = 56.000000000000000000
          Width = 196.882399460189000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA EMISS'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object LineQRShape1: TfrxLineView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 84.066929130000000000
          Width = 748.765187584345000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object BoxQRShape13: TfrxMemoView
          AllowVectorExport = True
          Left = 130.574855600540000000
          Top = 29.000000000000000000
          Width = 16.321856950067500000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxQRShape14: TfrxMemoView
          AllowVectorExport = True
          Left = 130.574855600540000000
          Top = 42.000000000000000000
          Width = 16.321856950067500000
          Height = 14.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape7: TfrxMemoView
          AllowVectorExport = True
          Top = 87.566929130000000000
          Width = 293.793425101215000000
          Height = 106.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape8: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 87.566929130000000000
          Width = 340.718763832659000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape9: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 87.566929130000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 112.133858260000000000
          Width = 36.724178137651800000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 330.517603238866000000
          Top = 112.133858260000000000
          Width = 45.905222672064700000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 112.133858260000000000
          Width = 79.569052631578900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 112.133858260000000000
          Width = 53.046035087719400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FOLHA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 509.037913630229000000
          Top = 112.133858260000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA EMISS'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 112.133858260000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSC. SUFRAMA DESTINAT'#193'RIO')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 136.700787390000000000
          Width = 462.112574898786000000
          Height = 57.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Top = 193.700787390000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO CT-E')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 193.700787390000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'CHAVE DE ACESSO PARA CONSULTA DE AUTENTICIDADE NO SITE WWW.CTE.F' +
              'AZENDA.GOV.BR OU DA SEFAZ AUTORIZADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 218.267716520000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PROTOCOLO DE AUTORIZA'#199#195'O DE USO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 193.700787390000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel26: TfrxMemoView
          AllowVectorExport = True
          Top = 218.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel27: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 218.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Top = 242.834645650000000000
          Width = 755.906000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CFOP - NATUREZA DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 61.000000000000000000
          Top = 1.000000000000000000
          Width = 728.515883805668000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'DECLARO QUE RECEBI OS VOLUMES DESTE CONHECIMENTO EM PERFEITO EST' +
              'ADO PELO QUE DOU POR CUMPRIDO O PRESENTE CONTRATO DE TRANSPORTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 435.000000000000000000
          Top = 47.000000000000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RG')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 435.000000000000000000
          Top = 31.000000000000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ASSINATURA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel153: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 44.000000000000000000
          Width = 134.910348852901000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / RECEBEDOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 580.446037786775000000
          Top = 66.528683912857100000
          Width = 114.252998650472000000
          Height = 16.000000000000000000
          DataField = 'CTE_DATAHORA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DATAHORA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 149.000000000000000000
          Top = 47.000000000000000000
          Width = 55.137273009446700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA / HORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 163.218569500675000000
          Top = 66.528683912857100000
          Width = 371.322245614035000000
          Height = 16.000000000000000000
          DataField = 'CHAVEFORMATADA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CHAVEFORMATADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 66.528683912857100000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOOCA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOOCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 92.116360450370400000
          Width = 122.413927125506000000
          Height = 57.584426939629600000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 682.000000000000000000
          Top = 89.386701658148200000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.000000000000000000
          Top = 88.476815394074100000
          Width = 51.617872604588400000
          Height = 18.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DACTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 102.125109355185000000
          Width = 346.074373144399000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DO CONHECIMENTO DE TRANSPORTE ELETR'#212'NICO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 676.000000000000000000
          Top = 97.575678034814800000
          Width = 42.232804858299600000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'A'#201'REO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Top = 123.052493428889000000
          Width = 30.603481781376500000
          Height = 16.000000000000000000
          DataField = 'CTE_MODELO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 335.618183535762000000
          Top = 123.052493428889000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'SERIEFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."SERIEFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 379.483174089069000000
          Top = 123.052493428889000000
          Width = 70.388008097166000000
          Height = 16.000000000000000000
          DataField = 'NUMEROFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."NUMEROFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 515.158609986505000000
          Top = 123.052493428889000000
          Width = 114.252998650472000000
          Height = 16.000000000000000000
          DataField = 'CTE_DATAHORA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DATAHORA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 204.619422558889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 204.619422558889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOEMISSAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 229.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADOR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 229.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_FORMAPAGTOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_FORMAPAGTOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 229.186351688889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 253.363329562857000000
          Width = 52.025919028340100000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 63.247195681511500000
          Top = 253.363329562857000000
          Width = 688.578340080972000000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOPDESC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOPDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel79: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 151.700787390000000000
          Width = 289.712960863698000000
          Height = 41.000000000000000000
          DataField = 'ENDEMITENTE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."ENDEMITENTE"]')
          ParentFont = False
        end
        object MemoQRDBText80: TfrxMemoView
          AllowVectorExport = True
          Left = 522.299422402159000000
          Top = 229.186351688889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLODH'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRSysData1: TfrxMemoView
          AllowVectorExport = True
          Left = 460.072342780027000000
          Top = 123.052493428889000000
          Width = 16.321856950067500000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel145: TfrxMemoView
          AllowVectorExport = True
          Left = 477.000000000000000000
          Top = 123.052493428889000000
          Width = 28.155203238866400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '/[TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel146: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 204.619422558889000000
          Width = 425.388396761134000000
          Height = 16.000000000000000000
          DataField = 'CHAVEFORMATADA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CHAVEFORMATADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 127.514507422402000000
          Top = 92.116360450370400000
          Width = 165.258801619433000000
          Height = 57.584426939629600000
          DataField = 'EMP_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_NOME"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 371.322245614035000000
          Top = 140.700787390000000000
          Width = 293.793425101215000000
          Height = 50.000000000000000000
          AutoSize = False
          BarType = bcCodeEAN128C
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 3.193406794578424000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 445.968503910000000000
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IN'#205'CIO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'RMINO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape26: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape27: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 24.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape28: TfrxMemoView
          AllowVectorExport = True
          Top = 107.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape29: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 107.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape30: TfrxMemoView
          AllowVectorExport = True
          Top = 190.566929130000000000
          Width = 755.906000000000000000
          Height = 51.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel76: TfrxMemoView
          AllowVectorExport = True
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO PREDOMINANTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel77: TfrxMemoView
          AllowVectorExport = True
          Left = 250.948550607287000000
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OUTRAS CARACTER'#205'STICAS DA CARGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel78: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 241.566929130000000000
          Width = 254.008898785425000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA MERCADORIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel81: TfrxMemoView
          AllowVectorExport = True
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel82: TfrxMemoView
          AllowVectorExport = True
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel87: TfrxMemoView
          AllowVectorExport = True
          Left = 120.373695006748000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel89: TfrxMemoView
          AllowVectorExport = True
          Left = 240.747390013495000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel85: TfrxMemoView
          AllowVectorExport = True
          Left = 361.121085020243000000
          Top = 266.133858260000000000
          Width = 40.804642375168700000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CUBAGEM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel86: TfrxMemoView
          AllowVectorExport = True
          Left = 401.925727395412000000
          Top = 266.133858260000000000
          Width = 36.724178137651800000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTD VOL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel84: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 266.133858260000000000
          Width = 317.256094466937000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME DA SEGURADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel91: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 290.700787390000000000
          Width = 98.951257759784200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel93: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292848000000
          Top = 290.700787390000000000
          Width = 108.132302294197000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA APOLICE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel94: TfrxMemoView
          AllowVectorExport = True
          Left = 645.733465587045000000
          Top = 290.700787390000000000
          Width = 110.172534412956000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA AVERBA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel96: TfrxMemoView
          AllowVectorExport = True
          Left = 157.097873144399000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel98: TfrxMemoView
          AllowVectorExport = True
          Left = 314.195746288799000000
          Top = 330.267716520000000000
          Width = 157.097873144400000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel100: TfrxMemoView
          AllowVectorExport = True
          Left = 471.293619433198000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel102: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 330.267716520000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel103: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 354.834645650000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR A RECEBER')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel105: TfrxMemoView
          AllowVectorExport = True
          Top = 394.401574780000000000
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SITUA'#199#195'O TRIBUT'#193'RIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel106: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 394.401574780000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel107: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 394.401574780000000000
          Width = 63.247195681511500000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ALIQ. ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel108: TfrxMemoView
          AllowVectorExport = True
          Left = 565.144296896086000000
          Top = 394.401574780000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel109: TfrxMemoView
          AllowVectorExport = True
          Left = 692.658804318488000000
          Top = 394.401574780000000000
          Width = 63.247195681511600000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '% RED. BC.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel111: TfrxMemoView
          AllowVectorExport = True
          Top = 433.968503910000000000
          Width = 376.422825910000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel116: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910000000000
          Top = 433.968503910000000000
          Width = 379.483174090000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Top = 31.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'REMETENTE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Top = 47.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Top = 63.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Top = 79.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Top = 95.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 31.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESTINAT'#193'RIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 47.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 63.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel43: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 79.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel44: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 95.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel45: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel46: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel47: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel48: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel49: TfrxMemoView
          AllowVectorExport = True
          Top = 114.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EXPEDIDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel50: TfrxMemoView
          AllowVectorExport = True
          Top = 130.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel51: TfrxMemoView
          AllowVectorExport = True
          Top = 146.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel52: TfrxMemoView
          AllowVectorExport = True
          Top = 162.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel53: TfrxMemoView
          AllowVectorExport = True
          Top = 178.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel54: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel55: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel56: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel57: TfrxMemoView
          AllowVectorExport = True
          Left = 215.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel58: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 114.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RECEBEDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel59: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 130.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel60: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 146.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel61: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 162.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel62: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 178.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel63: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel64: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel65: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel66: TfrxMemoView
          AllowVectorExport = True
          Left = 592.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel67: TfrxMemoView
          AllowVectorExport = True
          Top = 197.566929130000000000
          Width = 98.543211336032400000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel68: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 213.566929130000000000
          Width = 50.444739136302300000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 229.566929130000000000
          Width = 44.579071794871800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel70: TfrxMemoView
          AllowVectorExport = True
          Left = 372.000000000000000000
          Top = 197.566929130000000000
          Width = 45.752205263157900000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel71: TfrxMemoView
          AllowVectorExport = True
          Left = 378.000000000000000000
          Top = 229.566929130000000000
          Width = 25.808936302294200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel72: TfrxMemoView
          AllowVectorExport = True
          Left = 484.000000000000000000
          Top = 213.566929130000000000
          Width = 14.077601619433200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel73: TfrxMemoView
          AllowVectorExport = True
          Left = 557.000000000000000000
          Top = 213.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel74: TfrxMemoView
          AllowVectorExport = True
          Left = 625.000000000000000000
          Top = 197.566929130000000000
          Width = 21.116402429149800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel75: TfrxMemoView
          AllowVectorExport = True
          Left = 173.000000000000000000
          Top = 229.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel80: TfrxMemoView
          AllowVectorExport = True
          Left = 0.432900000000000000
          Top = 318.267716520000000000
          Width = 753.207793020000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPONENTES DO VALOR DA PRESTA'#199#195'O DE SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel83: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel88: TfrxMemoView
          AllowVectorExport = True
          Left = 181.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel90: TfrxMemoView
          AllowVectorExport = True
          Left = 301.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel95: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel97: TfrxMemoView
          AllowVectorExport = True
          Left = 282.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel99: TfrxMemoView
          AllowVectorExport = True
          Left = 439.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel101: TfrxMemoView
          AllowVectorExport = True
          Left = 597.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel104: TfrxMemoView
          AllowVectorExport = True
          Top = 382.401574780000000000
          Width = 753.717851050000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES RELATIVAS AO IMPOSTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel110: TfrxMemoView
          AllowVectorExport = True
          Left = 319.000000000000000000
          Top = 421.968503910000000000
          Width = 133.737215384615000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTOS ORIGIN'#193'RIOS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel113: TfrxMemoView
          AllowVectorExport = True
          Left = 67.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel114: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel117: TfrxMemoView
          AllowVectorExport = True
          Left = 444.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel118: TfrxMemoView
          AllowVectorExport = True
          Left = 582.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 11.406074238928600000
          Width = 362.141201079622000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 383.563638326586000000
          Top = 11.406074238928600000
          Width = 362.141201079622000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 28.566929130000000000
          Width = 313.175630229420000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 44.566929130000000000
          Width = 264.210059379217000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 60.566929130000000000
          Width = 158.117989203779000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 76.566929130000000000
          Width = 158.117989203779000000
          Height = 16.000000000000000000
          DataField = 'REMDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."REMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 92.566929130000000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'CTE_REMESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 60.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 76.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 92.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 28.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 44.566929130000000000
          Width = 256.049130904183000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 60.566929130000000000
          Width = 156.077757085020000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText28: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 76.566929130000000000
          Width = 156.077757085020000000
          Height = 16.000000000000000000
          DataField = 'DESDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."DESDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText29: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 92.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_DESESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText30: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 60.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText31: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 76.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText32: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 92.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText33: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 111.566929130000000000
          Width = 313.175630229420000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText34: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 127.566929130000000000
          Width = 264.210059379217000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText35: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 143.566929130000000000
          Width = 158.117989203779000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText36: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 159.566929130000000000
          Width = 158.117989203779000000
          Height = 16.000000000000000000
          DataField = 'EXPDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EXPDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText37: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 175.566929130000000000
          Width = 27.543133603238900000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText38: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 143.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText39: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 159.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText40: TfrxMemoView
          AllowVectorExport = True
          Left = 275.431336032389000000
          Top = 175.566929130000000000
          Width = 92.830561403508800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText41: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 111.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText42: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 127.566929130000000000
          Width = 256.049130904183000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText43: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 143.566929130000000000
          Width = 156.077757085020000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText44: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 159.566929130000000000
          Width = 156.077757085020000000
          Height = 16.000000000000000000
          DataField = 'RECDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."RECDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText45: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 175.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_RECESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText46: TfrxMemoView
          AllowVectorExport = True
          Left = 652.874278002699000000
          Top = 143.566929130000000000
          Width = 98.951257759784100000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText47: TfrxMemoView
          AllowVectorExport = True
          Left = 652.874278002699000000
          Top = 159.566929130000000000
          Width = 98.951257759784100000
          Height = 16.000000000000000000
          DataField = 'CTE_RECIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText48: TfrxMemoView
          AllowVectorExport = True
          Left = 652.874278002699000000
          Top = 175.566929130000000000
          Width = 98.951257759784100000
          Height = 16.000000000000000000
          DataField = 'CTE_RECFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText49: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 194.566929130000000000
          Width = 275.431336032389000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText50: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 210.566929130000000000
          Width = 340.718763832659000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText51: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCNPJ'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText52: TfrxMemoView
          AllowVectorExport = True
          Left = 226.465765182186000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText53: TfrxMemoView
          AllowVectorExport = True
          Left = 406.006191632928000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText54: TfrxMemoView
          AllowVectorExport = True
          Left = 500.876985155196000000
          Top = 210.566929130000000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText55: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 194.566929130000000000
          Width = 198.922631578947000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText56: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 194.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText57: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_PRODUTOPREDOM'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PRODUTOPREDOM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText58: TfrxMemoView
          AllowVectorExport = True
          Left = 260.129595141700000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_CARGAOUTRASCARAC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CARGAOUTRASCARAC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText59: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORNOTAS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_VALORNOTAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText60: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 277.052493428889000000
          Width = 306.034817813765000000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURONOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURONOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText61: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 301.229471302857000000
          Width = 85.689748987854200000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText62: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAPOLICE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAPOLICE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText63: TfrxMemoView
          AllowVectorExport = True
          Left = 651.854161943320000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAVERBACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAVERBACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText65: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 365.363329562857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORTOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText66: TfrxMemoView
          AllowVectorExport = True
          Left = 382.543522267206000000
          Top = 404.930258692857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_BASEICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_BASEICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText67: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText68: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 404.930258692857000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_TOTALICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOTALICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText69: TfrxMemoView
          AllowVectorExport = True
          Left = 700.819732793522000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMSRED'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMSRED"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel92: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel142: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel143: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel144: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel147: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 342.096237952963000000
          Width = 37.540270985155200000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FRETE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel148: TfrxMemoView
          AllowVectorExport = True
          Left = 584.000000000000000000
          Top = 210.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel151: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText84: TfrxMemoView
          AllowVectorExport = True
          Left = 53.046035087719300000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORFRETE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORFRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel155: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel156: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel157: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel158: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel159: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel160: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel161: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel162: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel163: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel164: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel165: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel166: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel167: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel168: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel169: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel119: TfrxMemoView
          AllowVectorExport = True
          Left = 320.000000000000000000
          Top = 130.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText78: TfrxMemoView
          AllowVectorExport = True
          Left = 334.598067476383000000
          Top = 127.566929130000000000
          Width = 38.764410256410300000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText79: TfrxMemoView
          AllowVectorExport = True
          Left = 713.061125506073000000
          Top = 127.566929130000000000
          Width = 38.764410256410300000
          Height = 16.000000000000000000
          DataField = 'CTE_RECNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel170: TfrxMemoView
          AllowVectorExport = True
          Left = 699.000000000000000000
          Top = 130.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel171: TfrxMemoView
          AllowVectorExport = True
          Left = 699.000000000000000000
          Top = 47.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText82: TfrxMemoView
          AllowVectorExport = True
          Left = 713.061125506073000000
          Top = 44.566929130000000000
          Width = 38.764410256410300000
          Height = 16.000000000000000000
          DataField = 'CTE_DESNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel172: TfrxMemoView
          AllowVectorExport = True
          Left = 320.000000000000000000
          Top = 47.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText83: TfrxMemoView
          AllowVectorExport = True
          Left = 334.598067476383000000
          Top = 44.566929130000000000
          Width = 38.764410256410300000
          Height = 16.000000000000000000
          DataField = 'CTE_REMNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel173: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 213.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText85: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 210.566929130000000000
          Width = 60.186847503373800000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText81: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 404.930258692857000000
          Width = 206.063443994602000000
          Height = 16.000000000000000000
          DataField = 'EMP_ENQUADRAMENTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_ENQUADRAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel175: TfrxMemoView
          AllowVectorExport = True
          Left = 159.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SEGURO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText86: TfrxMemoView
          AllowVectorExport = True
          Left = 210.143908232119000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORSEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORSEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel176: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText87: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALOROUTROS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALOROUTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel177: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 341.186351688889000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'VALORPRESTACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."VALORPRESTACAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.000000000000000000
        Top = 816.378480000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
        RowCount = 0
        object MemoNotasEsquerda: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoNotasDireita: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel149: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'TIPODOC'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."TIPODOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel115: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Width = 93.850677462888000000
          Height = 13.000000000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."DOCUMENTO"]')
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 227.133858260000000000
        Top = 888.189550000000000000
        Width = 755.906000000000000000
        object BoxShape62: TfrxMemoView
          AllowVectorExport = True
          Top = 15.000000000000000000
          Width = 755.906000000000000000
          Height = 32.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel122: TfrxMemoView
          AllowVectorExport = True
          Top = 62.000000000000000000
          Width = 200.962863697706000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INF. DE MANUSEIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel123: TfrxMemoView
          AllowVectorExport = True
          Left = 200.962863697706000000
          Top = 62.000000000000000000
          Width = 210.143908232119000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CARACTER'#205'STICA ADICIONAL DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel124: TfrxMemoView
          AllowVectorExport = True
          Left = 411.106771929825000000
          Top = 62.000000000000000000
          Width = 126.494391363023000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA PREVISTA DE ENTREGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel125: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292848000000
          Top = 62.000000000000000000
          Width = 218.304836707153000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO OPERACIONAL DO CONHECIMENTO A'#201'REO')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape67: TfrxMemoView
          AllowVectorExport = True
          Top = 86.566929130000000000
          Width = 359.080852900000000000
          Height = 10.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel127: TfrxMemoView
          AllowVectorExport = True
          Top = 96.566929130000000000
          Width = 139.755900134953000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLASSE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel128: TfrxMemoView
          AllowVectorExport = True
          Left = 139.755900134953000000
          Top = 96.566929130000000000
          Width = 89.770213225371100000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO DA TARIFA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel129: TfrxMemoView
          AllowVectorExport = True
          Left = 229.526113360324000000
          Top = 96.566929130000000000
          Width = 129.554739541161000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR DA TARIFA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel130: TfrxMemoView
          AllowVectorExport = True
          Left = 216.264604588394000000
          Top = 123.566929130000000000
          Width = 71.408124156545200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel131: TfrxMemoView
          AllowVectorExport = True
          Left = 359.080852900000000000
          Top = 86.566929130000000000
          Width = 396.825147100000000000
          Height = 37.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RETIRA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel140: TfrxMemoView
          AllowVectorExport = True
          Left = 359.080852901484000000
          Top = 123.566929130000000000
          Width = 70.388008097165900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO MINUTA')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape74: TfrxMemoView
          AllowVectorExport = True
          Left = 364.181433198381000000
          Top = 102.566929130000000000
          Width = 17.341973009446700000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel141: TfrxMemoView
          AllowVectorExport = True
          Left = 429.468860998650000000
          Top = 123.566929130000000000
          Width = 159.138105263158000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O INTERNA DO TOMADOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel135: TfrxMemoView
          AllowVectorExport = True
          Top = 123.566929130000000000
          Width = 67.327659919028300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ORIGEM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel136: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Top = 123.566929130000000000
          Width = 148.936944669366000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PASSAGEM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel137: TfrxMemoView
          AllowVectorExport = True
          Left = 588.606966261808000000
          Top = 123.566929130000000000
          Width = 167.299033738192000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O DO EMISSOR')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape79: TfrxMemoView
          AllowVectorExport = True
          Top = 148.133858260000000000
          Width = 417.227468286100000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape80: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 148.133858260000000000
          Width = 338.678531713900000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape81: TfrxMemoView
          AllowVectorExport = True
          Top = 161.133858260000000000
          Width = 417.227468286100000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape82: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 161.133858260000000000
          Width = 338.678531713900000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxQRShape10: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307932523617000000
          Top = 102.566929130000000000
          Width = 17.341973009446700000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel133: TfrxMemoView
          AllowVectorExport = True
          Left = 287.672728744939000000
          Top = 123.566929130000000000
          Width = 71.408124156545200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CARGA ESPECIAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel120: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 748.510158570000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel121: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 50.000000000000000000
          Width = 748.510158570000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES ESPEC'#205'FICAS DO MODAL A'#201'REO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel126: TfrxMemoView
          AllowVectorExport = True
          Left = 146.000000000000000000
          Top = 86.566929130000000000
          Width = 77.426808910000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DADOS DA TARIFA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel132: TfrxMemoView
          AllowVectorExport = True
          Left = 385.000000000000000000
          Top = 104.566929130000000000
          Width = 19.943268960863700000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SIM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel134: TfrxMemoView
          AllowVectorExport = True
          Left = 492.000000000000000000
          Top = 88.566929130000000000
          Width = 180.662554116059000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DADOS RELATIVOS A RETIRADA DA CARGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel138: TfrxMemoView
          AllowVectorExport = True
          Left = 541.000000000000000000
          Top = 150.133858260000000000
          Width = 104.408878677463000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel139: TfrxMemoView
          AllowVectorExport = True
          Left = 133.000000000000000000
          Top = 150.133858260000000000
          Width = 177.143153711201000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'USO EXCLUSIVO DO EMISSOR DO CT-e')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel112: TfrxMemoView
          AllowVectorExport = True
          Left = 442.000000000000000000
          Top = 104.566929130000000000
          Width = 24.635802834008100000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 17.000000000000000000
          Width = 748.765187584345000000
          Height = 29.000000000000000000
          DataField = 'CTE_OBSERVACOES'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_OBSERVACOES"]')
          ParentFont = False
        end
        object MemoQRDBText71: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 72.918635168888900000
          Width = 109.152418353576000000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREODTPREVISTA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREODTPREVISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText72: TfrxMemoView
          AllowVectorExport = True
          Left = 544.741975708502000000
          Top = 72.918635168888900000
          Width = 198.922631578947000000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOOCA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOOCA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText73: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 108.566929130000000000
          Width = 125.474275303644000000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOTARIFACLASSE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOTARIFACLASSE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText74: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 108.566929130000000000
          Width = 74.468472334682800000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOTARIFACODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOTARIFACODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText75: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666925775978000000
          Top = 108.566929130000000000
          Width = 115.273114709852000000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOTARIFAVALOR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOTARIFAVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText76: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 134.485564298889000000
          Width = 58.146615384615400000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOIMP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOIMP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText77: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 134.485564298889000000
          Width = 58.146615384615400000
          Height = 16.000000000000000000
          DataField = 'CTE_AEREOMINUTA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_AEREOMINUTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel150: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 164.133858260000000000
          Width = 413.147004048583000000
          Height = 60.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object MemoQRLabel174: TfrxMemoView
          AllowVectorExport = True
          Left = 114.000000000000000000
          Top = 20.000000000000000000
          Width = 619.414471255061000000
          Height = 29.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AMBIENTE DE HOMOLOGA'#199#195'O - SEM VALOR FISCAL')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxReport8: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'CTE08'
    ReportOptions.LastChange = 46350.000000000000000000
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
    Left = 544
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
      end
      item
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
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
      BottomMargin = 5.000000000000000000
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
        Frame.Typ = []
        Height = 247.968503910000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object BoxShape16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 117.267716520000000000
          Width = 462.112574898786000000
          Height = 57.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 92.700787390000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSC. SUFRAMA DESTINAT'#193'RIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 509.037913630229000000
          Top = 92.700787390000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA EMISS'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 92.700787390000000000
          Width = 53.046035087719400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FOLHA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 92.700787390000000000
          Width = 79.569052631578900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 330.517603238866000000
          Top = 92.700787390000000000
          Width = 45.905222672064700000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 92.700787390000000000
          Width = 36.724178137651800000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape9: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 68.133858260000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape8: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 68.133858260000000000
          Width = 340.718763832659000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape7: TfrxMemoView
          AllowVectorExport = True
          Top = 68.133858260000000000
          Width = 293.793425101215000000
          Height = 106.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Top = 174.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO CT-E')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 174.267716520000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'CHAVE DE ACESSO PARA CONSULTA DE AUTENTICIDADE NO SITE WWW.CTE.F' +
              'AZENDA.GOV.BR OU DA SEFAZ AUTORIZADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 198.834645650000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PROTOCOLO DE AUTORIZA'#199#195'O DE USO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 174.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel26: TfrxMemoView
          AllowVectorExport = True
          Top = 198.834645650000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel27: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 198.834645650000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Top = 223.401574780000000000
          Width = 755.906000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CFOP - NATUREZA DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape1: TfrxMemoView
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Top = 12.000000000000000000
          Width = 190.761703103914000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Top = 36.566929130000000000
          Width = 190.761703103914000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RG')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape4: TfrxMemoView
          AllowVectorExport = True
          Left = 190.761703103914000000
          Top = 12.000000000000000000
          Width = 185.661122807018000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape5: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 12.000000000000000000
          Width = 219.324952766532000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape6: TfrxMemoView
          AllowVectorExport = True
          Left = 595.747778677463000000
          Top = 12.000000000000000000
          Width = 160.158221322537000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object LineQRShape1: TfrxLineView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 64.633858260000000000
          Width = 748.765187584345000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 72.683289580370400000
          Width = 122.413927125506000000
          Height = 57.584426939629600000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 682.000000000000000000
          Top = 69.953630788148100000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.000000000000000000
          Top = 69.043744524074100000
          Width = 43.405938326585700000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DACTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 82.692038485185200000
          Width = 346.074373144399000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DO CONHECIMENTO DE TRANSPORTE ELETR'#212'NICO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 662.000000000000000000
          Top = 78.142607164814800000
          Width = 79.773075843454800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RODOVI'#193'RIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 127.514507422402000000
          Top = 72.683289580370400000
          Width = 165.258801619433000000
          Height = 57.584426939629600000
          DataField = 'EMP_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_NOME"]')
          ParentFont = False
        end
        object MemoQRLabel112: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 132.267716520000000000
          Width = 289.712960863698000000
          Height = 41.000000000000000000
          DataField = 'ENDEMITENTE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."ENDEMITENTE"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 371.322245614035000000
          Top = 121.267716520000000000
          Width = 293.793425101215000000
          Height = 50.000000000000000000
          AutoSize = False
          BarType = bcCodeEAN128C
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 3.193406794578424000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Top = 103.619422558889000000
          Width = 30.603481781376500000
          Height = 16.000000000000000000
          DataField = 'CTE_MODELO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 335.618183535762000000
          Top = 103.619422558889000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'SERIEFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."SERIEFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 379.483174089069000000
          Top = 103.619422558889000000
          Width = 70.388008097166000000
          Height = 16.000000000000000000
          DataField = 'NUMEROFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."NUMEROFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRSysData1: TfrxMemoView
          AllowVectorExport = True
          Left = 460.072342780027000000
          Top = 103.619422558889000000
          Width = 16.321856950067500000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel145: TfrxMemoView
          AllowVectorExport = True
          Left = 477.000000000000000000
          Top = 103.619422558889000000
          Width = 28.155203238866400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '/[TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 515.158609986505000000
          Top = 103.619422558889000000
          Width = 114.252998650472000000
          Height = 16.000000000000000000
          DataField = 'CTE_DATAHORA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DATAHORA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 185.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOEMISSAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 185.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 209.753280818889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADOR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 209.753280818889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_FORMAPAGTOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_FORMAPAGTOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 209.753280818889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText80: TfrxMemoView
          AllowVectorExport = True
          Left = 522.299422402159000000
          Top = 209.753280818889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLODH'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel146: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 185.186351688889000000
          Width = 425.388396761134000000
          Height = 16.000000000000000000
          DataField = 'CHAVEFORMATADA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CHAVEFORMATADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 233.930258692857000000
          Width = 52.025919028340100000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 63.247195681511500000
          Top = 233.930258692857000000
          Width = 688.578340080972000000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOPDESC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOPDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 61.000000000000000000
          Top = 1.000000000000000000
          Width = 728.515883805668000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'DECLARO QUE RECEBI OS VOLUMES DESTE CONHECIMENTO EM PERFEITO EST' +
              'ADO PELO QUE DOU POR CUMPRIDO O PRESENTE CONTRATO DE TRANSPORTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 241.000000000000000000
          Top = 52.359954999285700000
          Width = 100.889478272605000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ASSINATURA / CARIMBO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 414.000000000000000000
          Top = 13.819772528148100000
          Width = 168.931219433198000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#201'RMINO DA PRESTA'#199#195'O - DATA / HORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 420.000000000000000000
          Top = 39.199100108214300000
          Width = 156.026751282051000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IN'#205'CIO DA PRESTA'#199#195'O - DATA / HORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 388.000000000000000000
          Top = 53.237345330000000000
          Width = 204.650583250000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '_____________________________  ___________________')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 388.000000000000000000
          Top = 30.197725280000000000
          Width = 204.650583250000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '_____________________________  ___________________')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 662.000000000000000000
          Top = 12.909886264074100000
          Width = 30.501470175438600000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CT-E')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 601.779530000000000000
          Top = 30.197725280000000000
          Width = 76.253675440000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NRO. DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 598.000000000000000000
          Top = 45.340832390714300000
          Width = 26.982069770580300000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 444.968503910000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IN'#205'CIO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'RMINO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape26: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape27: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 24.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape28: TfrxMemoView
          AllowVectorExport = True
          Top = 107.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape29: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 107.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape30: TfrxMemoView
          AllowVectorExport = True
          Top = 190.566929130000000000
          Width = 755.906000000000000000
          Height = 51.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel76: TfrxMemoView
          AllowVectorExport = True
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO PREDOMINANTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel77: TfrxMemoView
          AllowVectorExport = True
          Left = 250.948550607287000000
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OUTRAS CARACTER'#205'STICAS DA CARGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel78: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 241.566929130000000000
          Width = 254.008898785425000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA MERCADORIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel81: TfrxMemoView
          AllowVectorExport = True
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel82: TfrxMemoView
          AllowVectorExport = True
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel87: TfrxMemoView
          AllowVectorExport = True
          Left = 120.373695006748000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel89: TfrxMemoView
          AllowVectorExport = True
          Left = 240.747390013495000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel85: TfrxMemoView
          AllowVectorExport = True
          Left = 361.121085020243000000
          Top = 266.133858260000000000
          Width = 40.804642375168700000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CUBAGEM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel86: TfrxMemoView
          AllowVectorExport = True
          Left = 401.925727395412000000
          Top = 266.133858260000000000
          Width = 36.724178137651800000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTD VOL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel84: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 266.133858260000000000
          Width = 317.256094466937000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME DA SEGURADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel91: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 290.700787390000000000
          Width = 98.951257759784200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel93: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292848000000
          Top = 290.700787390000000000
          Width = 108.132302294197000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA APOLICE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel94: TfrxMemoView
          AllowVectorExport = True
          Left = 645.733465587045000000
          Top = 290.700787390000000000
          Width = 110.172534412956000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA AVERBA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel96: TfrxMemoView
          AllowVectorExport = True
          Left = 157.097873144399000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel98: TfrxMemoView
          AllowVectorExport = True
          Left = 314.195746288799000000
          Top = 330.267716520000000000
          Width = 157.097873144400000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel100: TfrxMemoView
          AllowVectorExport = True
          Left = 471.293619433198000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel102: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 330.267716520000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel103: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 354.834645650000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR A RECEBER')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel105: TfrxMemoView
          AllowVectorExport = True
          Top = 394.401574780000000000
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SITUA'#199#195'O TRIBUT'#193'RIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel106: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 394.401574780000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel107: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 394.401574780000000000
          Width = 63.247195681511500000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ALIQ. ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel108: TfrxMemoView
          AllowVectorExport = True
          Left = 565.144296896086000000
          Top = 394.401574780000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel109: TfrxMemoView
          AllowVectorExport = True
          Left = 692.658804318488000000
          Top = 394.401574780000000000
          Width = 63.247195681511600000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '% RED. BC.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel111: TfrxMemoView
          AllowVectorExport = True
          Top = 433.968503910000000000
          Width = 376.422825910000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel116: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 433.968503910000000000
          Width = 379.483174089069000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Top = 31.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'REMETENTE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Top = 47.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Top = 63.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Top = 79.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Top = 95.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 31.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESTINAT'#193'RIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 47.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 63.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel43: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 79.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel44: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 95.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel45: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel46: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel47: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel48: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel49: TfrxMemoView
          AllowVectorExport = True
          Top = 114.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EXPEDIDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel50: TfrxMemoView
          AllowVectorExport = True
          Top = 130.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel51: TfrxMemoView
          AllowVectorExport = True
          Top = 146.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel52: TfrxMemoView
          AllowVectorExport = True
          Top = 162.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel53: TfrxMemoView
          AllowVectorExport = True
          Top = 178.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel54: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel55: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel56: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel57: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel58: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 114.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RECEBEDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel59: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 130.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel60: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 146.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel61: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 162.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel62: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 178.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel63: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel64: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel65: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel66: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel67: TfrxMemoView
          AllowVectorExport = True
          Top = 198.566929130000000000
          Width = 98.543211336032400000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel68: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 214.566929130000000000
          Width = 50.444739136302300000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 230.566929130000000000
          Width = 44.579071794871800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel70: TfrxMemoView
          AllowVectorExport = True
          Left = 372.000000000000000000
          Top = 198.566929130000000000
          Width = 45.752205263157900000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel71: TfrxMemoView
          AllowVectorExport = True
          Left = 378.000000000000000000
          Top = 230.566929130000000000
          Width = 25.808936302294200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel72: TfrxMemoView
          AllowVectorExport = True
          Left = 484.000000000000000000
          Top = 214.566929130000000000
          Width = 14.077601619433200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel73: TfrxMemoView
          AllowVectorExport = True
          Left = 557.000000000000000000
          Top = 214.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel74: TfrxMemoView
          AllowVectorExport = True
          Left = 625.000000000000000000
          Top = 198.566929130000000000
          Width = 21.116402429149800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel75: TfrxMemoView
          AllowVectorExport = True
          Left = 173.000000000000000000
          Top = 230.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel80: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 318.267716520000000000
          Width = 748.867199190000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPONENTES DO VALOR DA PRESTA'#199#195'O DE SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel83: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel88: TfrxMemoView
          AllowVectorExport = True
          Left = 181.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel90: TfrxMemoView
          AllowVectorExport = True
          Left = 301.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel95: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel97: TfrxMemoView
          AllowVectorExport = True
          Left = 282.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel99: TfrxMemoView
          AllowVectorExport = True
          Left = 439.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel101: TfrxMemoView
          AllowVectorExport = True
          Left = 597.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel104: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 382.401574780000000000
          Width = 748.867199190000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES RELATIVAS AO IMPOSTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel110: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 421.968503910000000000
          Width = 748.867199190000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTOS ORIGIN'#193'RIOS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel113: TfrxMemoView
          AllowVectorExport = True
          Left = 67.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel114: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel117: TfrxMemoView
          AllowVectorExport = True
          Left = 444.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel118: TfrxMemoView
          AllowVectorExport = True
          Left = 582.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 10.918635168888900000
          Width = 362.141201079622000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 383.563638326586000000
          Top = 10.918635168888900000
          Width = 362.141201079622000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 28.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 60.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 76.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'REMDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."REMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 92.566929130000000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'CTE_REMESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel140: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 92.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 76.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 60.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText33: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 111.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText35: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 143.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText36: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 159.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'EXPDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EXPDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText37: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 175.566929130000000000
          Width = 27.543133603238900000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel142: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText40: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 175.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText39: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 159.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText38: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 143.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel143: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText45: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 175.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_RECESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText44: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 159.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'RECDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."RECDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText47: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 159.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText48: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 175.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText46: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 143.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText43: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 143.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText41: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 111.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel144: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText29: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 92.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_DESESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText28: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 76.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'DESDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."DESDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 60.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 28.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText30: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 60.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText31: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 76.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText32: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 92.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText49: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 194.566929130000000000
          Width = 275.431336032389000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText50: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 210.566929130000000000
          Width = 340.718763832659000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText51: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCNPJ'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText52: TfrxMemoView
          AllowVectorExport = True
          Left = 226.465765182186000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText53: TfrxMemoView
          AllowVectorExport = True
          Left = 406.006191632928000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel173: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 213.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText85: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 210.566929130000000000
          Width = 60.186847503373800000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText55: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 194.566929130000000000
          Width = 198.922631578947000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText54: TfrxMemoView
          AllowVectorExport = True
          Left = 500.876985155196000000
          Top = 210.566929130000000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel148: TfrxMemoView
          AllowVectorExport = True
          Left = 584.000000000000000000
          Top = 210.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText56: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 194.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText58: TfrxMemoView
          AllowVectorExport = True
          Left = 260.129595141700000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_CARGAOUTRASCARAC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CARGAOUTRASCARAC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText59: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORNOTAS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_VALORNOTAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText57: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_PRODUTOPREDOM'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PRODUTOPREDOM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel151: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel79: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel156: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel157: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel155: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel141: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel158: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel160: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel162: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel163: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel161: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel159: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel164: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel165: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel167: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel166: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel168: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel169: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText60: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 277.052493428889000000
          Width = 306.034817813765000000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURONOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURONOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText61: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 301.229471302857000000
          Width = 85.689748987854200000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText62: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAPOLICE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAPOLICE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText63: TfrxMemoView
          AllowVectorExport = True
          Left = 651.854161943320000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAVERBACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAVERBACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel147: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 342.096237952963000000
          Width = 37.540270985155200000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FRETE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText84: TfrxMemoView
          AllowVectorExport = True
          Left = 53.046035087719300000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORFRETE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORFRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel175: TfrxMemoView
          AllowVectorExport = True
          Left = 159.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SEGURO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText86: TfrxMemoView
          AllowVectorExport = True
          Left = 210.143908232119000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORSEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORSEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel176: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText87: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALOROUTROS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALOROUTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText65: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 365.363329562857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORTOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText81: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 404.930258692857000000
          Width = 206.063443994602000000
          Height = 16.000000000000000000
          DataField = 'EMP_ENQUADRAMENTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_ENQUADRAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText66: TfrxMemoView
          AllowVectorExport = True
          Left = 382.543522267206000000
          Top = 404.930258692857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_BASEICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_BASEICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText67: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText68: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 404.930258692857000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_TOTALICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOTALICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText69: TfrxMemoView
          AllowVectorExport = True
          Left = 700.819732793522000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMSRED'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMSRED"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel92: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 341.186351688889000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'VALORPRESTACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."VALORPRESTACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel190: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 44.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'REMENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."REMENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel172: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 44.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'DESENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."DESENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel171: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 127.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'EXPENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EXPENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel185: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 127.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'RECENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."RECENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.000000000000000000
        Top = 797.480830000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
        RowCount = 0
        object MemoNotasEsquerda: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoNotasDireita: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel149: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'TIPODOC'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."TIPODOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel115: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Width = 93.850677462888000000
          Height = 13.000000000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."DOCUMENTO"]')
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 250.133858260000000000
        Top = 869.291900000000000000
        Width = 755.906000000000000000
        object BoxShape62: TfrxMemoView
          AllowVectorExport = True
          Top = 15.000000000000000000
          Width = 755.906000000000000000
          Height = 34.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel122: TfrxMemoView
          AllowVectorExport = True
          Top = 64.000000000000000000
          Width = 111.192650472335000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RNTRC DA EMPRESA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel123: TfrxMemoView
          AllowVectorExport = True
          Left = 111.192650472335000000
          Top = 64.000000000000000000
          Width = 111.192650472335000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIOT')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel124: TfrxMemoView
          AllowVectorExport = True
          Left = 222.385300944669000000
          Top = 64.000000000000000000
          Width = 126.494391363023000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA PREVISTA DE ENTREGA')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape66: TfrxMemoView
          AllowVectorExport = True
          Left = 348.879692307692000000
          Top = 64.000000000000000000
          Width = 407.026307692308000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape67: TfrxMemoView
          AllowVectorExport = True
          Top = 88.566929130000000000
          Width = 237.687041835358000000
          Height = 10.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel127: TfrxMemoView
          AllowVectorExport = True
          Top = 98.566929130000000000
          Width = 74.468472334682900000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel128: TfrxMemoView
          AllowVectorExport = True
          Left = 74.468472334682900000
          Top = 98.566929130000000000
          Width = 70.388008097166000000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PLACA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel129: TfrxMemoView
          AllowVectorExport = True
          Left = 144.856480431849000000
          Top = 98.566929130000000000
          Width = 24.482785425101200000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel130: TfrxMemoView
          AllowVectorExport = True
          Left = 169.339265856950000000
          Top = 98.566929130000000000
          Width = 68.347775978407600000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RNTRC')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape72: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 88.566929130000000000
          Width = 518.218958164642000000
          Height = 10.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape73: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 98.566929130000000000
          Width = 518.218958164642000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape74: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 114.566929130000000000
          Width = 518.218958164642000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape75: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 130.566929130000000000
          Width = 518.218958164642000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel135: TfrxMemoView
          AllowVectorExport = True
          Top = 146.566929130000000000
          Width = 237.687041835358000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME DO MOTORISTA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel136: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 146.566929130000000000
          Width = 138.735784075573000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF DO MOTORISTA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel137: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 146.566929130000000000
          Width = 379.483174089069000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O DOS LACRES EM TR'#194'NSITO')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape79: TfrxMemoView
          AllowVectorExport = True
          Top = 171.133858260000000000
          Width = 417.227468286100000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape80: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 171.133858260000000000
          Width = 338.678531713900000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape81: TfrxMemoView
          AllowVectorExport = True
          Top = 184.133858260000000000
          Width = 417.227468286100000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape82: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 184.133858260000000000
          Width = 338.678531713900000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel120: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 748.867199190000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel121: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.000000000000000000
          Width = 748.867199190000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES ESPEC'#205'FICAS DO MODAL RODOVI'#193'RIO - LOTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel125: TfrxMemoView
          AllowVectorExport = True
          Left = 352.440940000000000000
          Top = 69.319332640000000000
          Width = 399.523354080000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'ESTE CONHECIMENTO DE TRANSPORTE ATENDE A LEGISLA'#199#195'O DE TRANSPORT' +
              'E RODOVI'#193'RIO EM VIGOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel126: TfrxMemoView
          AllowVectorExport = True
          Left = 27.000000000000000000
          Top = 88.566929130000000000
          Width = 206.471490420000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O DO CONJUNTO TRANSPORTADOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel131: TfrxMemoView
          AllowVectorExport = True
          Left = 228.000000000000000000
          Top = 103.566929130000000000
          Width = 103.235745209177000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ FORNECEDOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel132: TfrxMemoView
          AllowVectorExport = True
          Left = 228.000000000000000000
          Top = 119.566929130000000000
          Width = 103.235745209177000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#218'MERO COMPROVANTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel133: TfrxMemoView
          AllowVectorExport = True
          Left = 228.000000000000000000
          Top = 135.566929130000000000
          Width = 103.235745209177000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ RESPONS'#193'VEL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel134: TfrxMemoView
          AllowVectorExport = True
          Left = 386.000000000000000000
          Top = 88.566929130000000000
          Width = 199.432689610000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INFORMA'#199#213'ES REFERENTES AO VALE PED'#193'GIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel138: TfrxMemoView
          AllowVectorExport = True
          Left = 541.000000000000000000
          Top = 173.133858260000000000
          Width = 104.408878677463000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel139: TfrxMemoView
          AllowVectorExport = True
          Left = 133.000000000000000000
          Top = 173.133858260000000000
          Width = 177.143153711201000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'USO EXCLUSIVO DO EMISSOR DO CT-e')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 17.000000000000000000
          Width = 748.765187584345000000
          Height = 29.000000000000000000
          DataField = 'CTE_OBSERVACOES'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_OBSERVACOES"]')
          ParentFont = False
        end
        object MemoQRLabel174: TfrxMemoView
          AllowVectorExport = True
          Left = 114.000000000000000000
          Top = 20.000000000000000000
          Width = 619.414471255061000000
          Height = 29.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AMBIENTE DE HOMOLOGA'#199#195'O - SEM VALOR FISCAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText71: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 74.918635168888900000
          Width = 89.770213225371100000
          Height = 16.000000000000000000
          DataField = 'CTE_ENTREGADATAFINAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ENTREGADATAFINAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel150: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 188.133858260000000000
          Width = 413.147004048583000000
          Height = 60.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object MemoQRDBText64: TfrxMemoView
          AllowVectorExport = True
          Left = 240.747390013495000000
          Top = 157.485564298889000000
          Width = 132.615087719298000000
          Height = 16.000000000000000000
          DataField = 'CTE_MOTORISTACPF'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_MOTORISTACPF"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText72: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 157.485564298889000000
          Width = 230.546229419703000000
          Height = 16.000000000000000000
          DataField = 'CTE_MOTORISTA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_MOTORISTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText73: TfrxMemoView
          AllowVectorExport = True
          Left = 114.252998650472000000
          Top = 74.918635168888900000
          Width = 105.071954116059000000
          Height = 16.000000000000000000
          DataField = 'CTE_CIOT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CIOT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText74: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 74.918635168888900000
          Width = 104.051838056680000000
          Height = 16.000000000000000000
          DataField = 'PAR_RNTRC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PAR_RNTRC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel119: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 107.566929130000000000
          Width = 67.327659919028300000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel152: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 119.566929130000000000
          Width = 67.327659919028300000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel153: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 131.566929130000000000
          Width = 67.327659919028300000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel154: TfrxMemoView
          AllowVectorExport = True
          Left = 77.528820512820500000
          Top = 107.566929130000000000
          Width = 65.287427800269900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel170: TfrxMemoView
          AllowVectorExport = True
          Left = 77.528820512820500000
          Top = 119.566929130000000000
          Width = 65.287427800269900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel177: TfrxMemoView
          AllowVectorExport = True
          Left = 77.528820512820500000
          Top = 131.566929130000000000
          Width = 65.287427800269900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel178: TfrxMemoView
          AllowVectorExport = True
          Left = 148.936944669366000000
          Top = 107.566929130000000000
          Width = 18.362089068825900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel179: TfrxMemoView
          AllowVectorExport = True
          Left = 148.936944669366000000
          Top = 119.566929130000000000
          Width = 18.362089068825900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel180: TfrxMemoView
          AllowVectorExport = True
          Left = 148.936944669366000000
          Top = 131.566929130000000000
          Width = 18.362089068825900000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel181: TfrxMemoView
          AllowVectorExport = True
          Left = 173.419730094467000000
          Top = 107.566929130000000000
          Width = 61.206963562753000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel182: TfrxMemoView
          AllowVectorExport = True
          Left = 173.419730094467000000
          Top = 119.566929130000000000
          Width = 61.206963562753000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel183: TfrxMemoView
          AllowVectorExport = True
          Left = 173.419730094467000000
          Top = 131.566929130000000000
          Width = 61.206963562753000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxReport9: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'CTE09'
    ReportOptions.LastChange = 46350.000000000000000000
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
    Left = 608
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
      end
      item
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
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
      BottomMargin = 5.000000000000000000
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
        Frame.Typ = []
        Height = 247.968503910000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object BoxShape16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 117.267716520000000000
          Width = 462.112574898786000000
          Height = 57.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel21: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 92.700787390000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSC. SUFRAMA DESTINAT'#193'RIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel20: TfrxMemoView
          AllowVectorExport = True
          Left = 509.037913630229000000
          Top = 92.700787390000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA E HORA EMISS'#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel19: TfrxMemoView
          AllowVectorExport = True
          Left = 455.991878542510000000
          Top = 92.700787390000000000
          Width = 53.046035087719400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FOLHA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 92.700787390000000000
          Width = 79.569052631578900000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel17: TfrxMemoView
          AllowVectorExport = True
          Left = 330.517603238866000000
          Top = 92.700787390000000000
          Width = 45.905222672064700000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel16: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 92.700787390000000000
          Width = 36.724178137651800000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape9: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 68.133858260000000000
          Width = 121.393811066127000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape8: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 68.133858260000000000
          Width = 340.718763832659000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape7: TfrxMemoView
          AllowVectorExport = True
          Top = 68.133858260000000000
          Width = 293.793425101215000000
          Height = 106.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Top = 174.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO CT-E')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 174.267716520000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'CHAVE DE ACESSO PARA CONSULTA DE AUTENTICIDADE NO SITE WWW.CTE.F' +
              'AZENDA.GOV.BR OU DA SEFAZ AUTORIZADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 293.793425101215000000
          Top = 198.834645650000000000
          Width = 462.112574898786000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PROTOCOLO DE AUTORIZA'#199#195'O DE USO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel25: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 174.267716520000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel26: TfrxMemoView
          AllowVectorExport = True
          Top = 198.834645650000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel27: TfrxMemoView
          AllowVectorExport = True
          Left = 146.896712550607000000
          Top = 198.834645650000000000
          Width = 146.896712550607000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Top = 223.401574780000000000
          Width = 755.906000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CFOP - NATUREZA DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape1: TfrxMemoView
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Top = 12.000000000000000000
          Width = 190.761703103914000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Top = 36.566929130000000000
          Width = 190.761703103914000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RG')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape4: TfrxMemoView
          AllowVectorExport = True
          Left = 190.761703103914000000
          Top = 12.000000000000000000
          Width = 185.661122807018000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape5: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 12.000000000000000000
          Width = 219.324952766532000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape6: TfrxMemoView
          AllowVectorExport = True
          Left = 595.747778677463000000
          Top = 12.000000000000000000
          Width = 160.158221322537000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object LineQRShape1: TfrxLineView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 64.633858260000000000
          Width = 748.765187584345000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 72.683289580370400000
          Width = 122.413927125506000000
          Height = 57.584426939629600000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 682.000000000000000000
          Top = 69.953630788148100000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MODAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.000000000000000000
          Top = 69.043744524074100000
          Width = 43.405938326585700000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DACTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 82.692038485185200000
          Width = 346.074373144399000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DO CONHECIMENTO DE TRANSPORTE ELETR'#212'NICO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 662.000000000000000000
          Top = 78.142607164814800000
          Width = 79.773075843454800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RODOVI'#193'RIO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 127.514507422402000000
          Top = 72.683289580370400000
          Width = 165.258801619433000000
          Height = 57.584426939629600000
          DataField = 'EMP_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_NOME"]')
          ParentFont = False
        end
        object MemoQRLabel112: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 132.267716520000000000
          Width = 289.712960863698000000
          Height = 41.000000000000000000
          DataField = 'ENDEMITENTE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."ENDEMITENTE"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 371.322245614035000000
          Top = 121.267716520000000000
          Width = 293.793425101215000000
          Height = 50.000000000000000000
          AutoSize = False
          BarType = bcCodeEAN128C
          DataField = 'CTE_CHAVEACESSO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 3.193406794578424000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 296.853773279352000000
          Top = 103.619422558889000000
          Width = 30.603481781376500000
          Height = 16.000000000000000000
          DataField = 'CTE_MODELO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 335.618183535762000000
          Top = 103.619422558889000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'SERIEFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."SERIEFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 379.483174089069000000
          Top = 103.619422558889000000
          Width = 70.388008097166000000
          Height = 16.000000000000000000
          DataField = 'NUMEROFMT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."NUMEROFMT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRSysData1: TfrxMemoView
          AllowVectorExport = True
          Left = 460.072342780027000000
          Top = 103.619422558889000000
          Width = 16.321856950067500000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel145: TfrxMemoView
          AllowVectorExport = True
          Left = 477.000000000000000000
          Top = 103.619422558889000000
          Width = 28.155203238866400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '/[TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 515.158609986505000000
          Top = 103.619422558889000000
          Width = 114.252998650472000000
          Height = 16.000000000000000000
          DataField = 'CTE_DATAHORA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DATAHORA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 185.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOEMISSAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 185.186351688889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TIPOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TIPOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 209.753280818889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADOR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText11: TfrxMemoView
          AllowVectorExport = True
          Left = 153.017408906883000000
          Top = 209.753280818889000000
          Width = 133.635203778677000000
          Height = 16.000000000000000000
          DataField = 'CTE_FORMAPAGTOSERVICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_FORMAPAGTOSERVICO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 209.753280818889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText80: TfrxMemoView
          AllowVectorExport = True
          Left = 522.299422402159000000
          Top = 209.753280818889000000
          Width = 205.043327935223000000
          Height = 16.000000000000000000
          DataField = 'CTE_PROTOCOLODH'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PROTOCOLODH"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel146: TfrxMemoView
          AllowVectorExport = True
          Left = 310.115282051282000000
          Top = 185.186351688889000000
          Width = 425.388396761134000000
          Height = 16.000000000000000000
          DataField = 'CHAVEFORMATADA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."CHAVEFORMATADA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 233.930258692857000000
          Width = 52.025919028340100000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 63.247195681511500000
          Top = 233.930258692857000000
          Width = 688.578340080972000000
          Height = 16.000000000000000000
          DataField = 'CTE_CFOPDESC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CFOPDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel1: TfrxMemoView
          AllowVectorExport = True
          Left = 61.000000000000000000
          Top = 1.000000000000000000
          Width = 728.515883805668000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'DECLARO QUE RECEBI OS VOLUMES DESTE CONHECIMENTO EM PERFEITO EST' +
              'ADO PELO QUE DOU POR CUMPRIDO O PRESENTE CONTRATO DE TRANSPORTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel4: TfrxMemoView
          AllowVectorExport = True
          Left = 241.000000000000000000
          Top = 52.359954999285700000
          Width = 100.889478272605000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ASSINATURA / CARIMBO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 414.000000000000000000
          Top = 13.819772528148100000
          Width = 168.931219433198000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#201'RMINO DA PRESTA'#199#195'O - DATA / HORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 420.000000000000000000
          Top = 39.199100108214300000
          Width = 156.026751282051000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IN'#205'CIO DA PRESTA'#199#195'O - DATA / HORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 388.000000000000000000
          Top = 53.237345330000000000
          Width = 204.650583250000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '_____________________________  ___________________')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 388.000000000000000000
          Top = 30.197725280000000000
          Width = 204.650583250000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '_____________________________  ___________________')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 662.000000000000000000
          Top = 12.909886264074100000
          Width = 30.501470175438600000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CT-E')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 598.000000000000000000
          Top = 30.197725281481500000
          Width = 76.253675438596500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NRO. DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 598.000000000000000000
          Top = 45.340832390714300000
          Width = 26.982069770580300000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 444.968503910000000000
        Top = 328.819110000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IN'#205'CIO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'RMINO DA PRESTA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape26: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape27: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 24.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape28: TfrxMemoView
          AllowVectorExport = True
          Top = 107.566929130000000000
          Width = 376.422825910931000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape29: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 107.566929130000000000
          Width = 379.483174089069000000
          Height = 83.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape30: TfrxMemoView
          AllowVectorExport = True
          Top = 190.566929130000000000
          Width = 755.906000000000000000
          Height = 51.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel76: TfrxMemoView
          AllowVectorExport = True
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO PREDOMINANTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel77: TfrxMemoView
          AllowVectorExport = True
          Left = 250.948550607287000000
          Top = 241.566929130000000000
          Width = 250.948550607287000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OUTRAS CARACTER'#205'STICAS DA CARGA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel78: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 241.566929130000000000
          Width = 254.008898785425000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA MERCADORIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel81: TfrxMemoView
          AllowVectorExport = True
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel82: TfrxMemoView
          AllowVectorExport = True
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel87: TfrxMemoView
          AllowVectorExport = True
          Left = 120.373695006748000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel89: TfrxMemoView
          AllowVectorExport = True
          Left = 240.747390013495000000
          Top = 266.133858260000000000
          Width = 120.373695006748000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TIPO MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel85: TfrxMemoView
          AllowVectorExport = True
          Left = 361.121085020243000000
          Top = 266.133858260000000000
          Width = 40.804642375168700000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CUBAGEM')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel86: TfrxMemoView
          AllowVectorExport = True
          Left = 401.925727395412000000
          Top = 266.133858260000000000
          Width = 36.724178137651800000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QTD VOL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel84: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 266.133858260000000000
          Width = 317.256094466937000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME DA SEGURADORA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel91: TfrxMemoView
          AllowVectorExport = True
          Left = 438.649905533063000000
          Top = 290.700787390000000000
          Width = 98.951257759784200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel93: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292848000000
          Top = 290.700787390000000000
          Width = 108.132302294197000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA APOLICE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel94: TfrxMemoView
          AllowVectorExport = True
          Left = 645.733465587045000000
          Top = 290.700787390000000000
          Width = 110.172534412956000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO DA AVERBA'#199#195'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel96: TfrxMemoView
          AllowVectorExport = True
          Left = 157.097873144399000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel98: TfrxMemoView
          AllowVectorExport = True
          Left = 314.195746288799000000
          Top = 330.267716520000000000
          Width = 157.097873144400000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel100: TfrxMemoView
          AllowVectorExport = True
          Left = 471.293619433198000000
          Top = 330.267716520000000000
          Width = 157.097873144399000000
          Height = 49.133858260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel102: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 330.267716520000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel103: TfrxMemoView
          AllowVectorExport = True
          Left = 628.391492577598000000
          Top = 354.834645650000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR A RECEBER')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel105: TfrxMemoView
          AllowVectorExport = True
          Top = 394.401574780000000000
          Width = 376.422825910931000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SITUA'#199#195'O TRIBUT'#193'RIA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel106: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 394.401574780000000000
          Width = 125.474275303644000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel107: TfrxMemoView
          AllowVectorExport = True
          Left = 501.897101214575000000
          Top = 394.401574780000000000
          Width = 63.247195681511500000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ALIQ. ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel108: TfrxMemoView
          AllowVectorExport = True
          Left = 565.144296896086000000
          Top = 394.401574780000000000
          Width = 127.514507422402000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR ICMS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel109: TfrxMemoView
          AllowVectorExport = True
          Left = 692.658804318488000000
          Top = 394.401574780000000000
          Width = 63.247195681511600000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '% RED. BC.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel111: TfrxMemoView
          AllowVectorExport = True
          Top = 433.968503910000000000
          Width = 376.422825910000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel116: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Top = 433.968503910000000000
          Width = 379.483174089069000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TP. DOC')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Top = 31.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'REMETENTE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Top = 47.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Top = 63.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Top = 79.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Top = 95.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 31.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESTINAT'#193'RIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 47.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 63.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel43: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 79.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel44: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 95.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel45: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 95.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel46: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 95.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel47: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 79.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel48: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 63.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel49: TfrxMemoView
          AllowVectorExport = True
          Top = 114.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EXPEDIDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel50: TfrxMemoView
          AllowVectorExport = True
          Top = 130.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel51: TfrxMemoView
          AllowVectorExport = True
          Top = 146.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel52: TfrxMemoView
          AllowVectorExport = True
          Top = 162.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel53: TfrxMemoView
          AllowVectorExport = True
          Top = 178.566929130000000000
          Width = 56.310406477732800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel54: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel55: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel56: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel57: TfrxMemoView
          AllowVectorExport = True
          Left = 231.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel58: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 114.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RECEBEDOR:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel59: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 130.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel60: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 146.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel61: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 162.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel62: TfrxMemoView
          AllowVectorExport = True
          Left = 370.000000000000000000
          Top = 178.566929130000000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel63: TfrxMemoView
          AllowVectorExport = True
          Left = 468.000000000000000000
          Top = 178.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel64: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 178.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel65: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 162.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel66: TfrxMemoView
          AllowVectorExport = True
          Left = 610.000000000000000000
          Top = 146.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel67: TfrxMemoView
          AllowVectorExport = True
          Top = 198.566929130000000000
          Width = 98.543211336032400000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOMADOR DO SERVI'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel68: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 214.566929130000000000
          Width = 50.444739136302300000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 230.566929130000000000
          Width = 44.579071794871800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel70: TfrxMemoView
          AllowVectorExport = True
          Left = 372.000000000000000000
          Top = 198.566929130000000000
          Width = 45.752205263157900000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel71: TfrxMemoView
          AllowVectorExport = True
          Left = 378.000000000000000000
          Top = 230.566929130000000000
          Width = 25.808936302294200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel72: TfrxMemoView
          AllowVectorExport = True
          Left = 484.000000000000000000
          Top = 214.566929130000000000
          Width = 14.077601619433200000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel73: TfrxMemoView
          AllowVectorExport = True
          Left = 557.000000000000000000
          Top = 214.566929130000000000
          Width = 23.462669365722000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PA'#205'S:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel74: TfrxMemoView
          AllowVectorExport = True
          Left = 625.000000000000000000
          Top = 198.566929130000000000
          Width = 21.116402429149800000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel75: TfrxMemoView
          AllowVectorExport = True
          Left = 173.000000000000000000
          Top = 230.566929130000000000
          Width = 53.964139541160600000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INSCR. EST.:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel80: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 318.267716520000000000
          Width = 750.300462250000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPONENTES DO VALOR DA PRESTA'#199#195'O DE SERVI'#199'O')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel83: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel88: TfrxMemoView
          AllowVectorExport = True
          Left = 181.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel90: TfrxMemoView
          AllowVectorExport = True
          Left = 301.000000000000000000
          Top = 267.953630788148000000
          Width = 66.868607692307700000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD/UN.MEDIDA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel95: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel97: TfrxMemoView
          AllowVectorExport = True
          Left = 282.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel99: TfrxMemoView
          AllowVectorExport = True
          Left = 439.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel101: TfrxMemoView
          AllowVectorExport = True
          Left = 597.000000000000000000
          Top = 332.087489048148000000
          Width = 29.328336707152500000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel104: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 382.401574780000000000
          Width = 750.300462250000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES RELATIVAS AO IMPOSTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel110: TfrxMemoView
          AllowVectorExport = True
          Top = 421.968503910000000000
          Width = 859.906832253711000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTOS ORIGIN'#193'RIOS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel113: TfrxMemoView
          AllowVectorExport = True
          Left = 67.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel114: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel117: TfrxMemoView
          AllowVectorExport = True
          Left = 444.000000000000000000
          Top = 433.968503910000000000
          Width = 87.985010120000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF EMITENTE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel118: TfrxMemoView
          AllowVectorExport = True
          Left = 582.000000000000000000
          Top = 433.968503910000000000
          Width = 93.850677460000000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE/N'#186' DOCUMENTO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 10.918635168888900000
          Width = 366.221665317139000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 383.563638326586000000
          Top = 10.918635168888900000
          Width = 368.261897435897000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 28.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 60.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 76.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'REMDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."REMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 92.566929130000000000
          Width = 35.704062078272600000
          Height = 16.000000000000000000
          DataField = 'CTE_REMESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel140: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 92.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 76.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 60.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_REMCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_REMCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText33: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 111.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText35: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 143.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText36: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 159.566929130000000000
          Width = 174.439846153846000000
          Height = 16.000000000000000000
          DataField = 'EXPDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EXPDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText37: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 175.566929130000000000
          Width = 27.543133603238900000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel142: TfrxMemoView
          AllowVectorExport = True
          Left = 116.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText40: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 175.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText39: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 159.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText38: TfrxMemoView
          AllowVectorExport = True
          Left = 288.692844804318000000
          Top = 143.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_EXPCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_EXPCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel143: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 175.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText45: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 175.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_RECESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText44: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 160.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'RECDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."RECDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText47: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 159.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText48: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 175.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText46: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 143.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText43: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 143.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText41: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 111.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_RECNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_RECNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel144: TfrxMemoView
          AllowVectorExport = True
          Left = 494.000000000000000000
          Top = 92.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText29: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 92.566929130000000000
          Width = 25.502901484480400000
          Height = 16.000000000000000000
          DataField = 'CTE_DESESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText28: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 76.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'DESDOC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."DESDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 60.566929130000000000
          Width = 170.359381916329000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 28.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'CTE_DESNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText30: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 60.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText31: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 76.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText32: TfrxMemoView
          AllowVectorExport = True
          Left = 668.176018893387000000
          Top = 92.566929130000000000
          Width = 83.649516869095800000
          Height = 16.000000000000000000
          DataField = 'CTE_DESFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_DESFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText49: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 194.566929130000000000
          Width = 275.431336032389000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText50: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 210.566929130000000000
          Width = 340.718763832659000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORENDERECO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText51: TfrxMemoView
          AllowVectorExport = True
          Left = 52.025919028340100000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCNPJ'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText52: TfrxMemoView
          AllowVectorExport = True
          Left = 226.465765182186000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORIE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORIE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText53: TfrxMemoView
          AllowVectorExport = True
          Left = 406.006191632928000000
          Top = 226.566929130000000000
          Width = 112.212766531714000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORFONE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel173: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 213.566929130000000000
          Width = 12.904468151147100000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText85: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 210.566929130000000000
          Width = 60.186847503373800000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORNUMERO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORNUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText55: TfrxMemoView
          AllowVectorExport = True
          Left = 422.328048582996000000
          Top = 194.566929130000000000
          Width = 198.922631578947000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCIDADE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText54: TfrxMemoView
          AllowVectorExport = True
          Left = 500.876985155196000000
          Top = 210.566929130000000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORESTADO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel148: TfrxMemoView
          AllowVectorExport = True
          Left = 584.000000000000000000
          Top = 210.566929130000000000
          Width = 44.579071794871800000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BRASIL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText56: TfrxMemoView
          AllowVectorExport = True
          Left = 650.834045883941000000
          Top = 194.566929130000000000
          Width = 100.991489878542000000
          Height = 16.000000000000000000
          DataField = 'CTE_TOMADORCEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOMADORCEP"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText58: TfrxMemoView
          AllowVectorExport = True
          Left = 260.129595141700000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_CARGAOUTRASCARAC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CARGAOUTRASCARAC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText59: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORNOTAS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_VALORNOTAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText57: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 252.485564298889000000
          Width = 238.707157894737000000
          Height = 16.000000000000000000
          DataField = 'CTE_PRODUTOPREDOM'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_PRODUTOPREDOM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel151: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel79: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel156: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel157: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel155: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel141: TfrxMemoView
          AllowVectorExport = True
          Left = 71.408124156545200000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel158: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel160: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel162: TfrxMemoView
          AllowVectorExport = True
          Left = 122.413927125506000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel163: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel161: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel159: TfrxMemoView
          AllowVectorExport = True
          Left = 191.781819163293000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel164: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 276.142607164815000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel165: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 276.142607164815000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel167: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 288.881014861852000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel166: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 288.881014861852000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel168: TfrxMemoView
          AllowVectorExport = True
          Left = 242.787622132254000000
          Top = 301.229471302857000000
          Width = 64.267311740890700000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel169: TfrxMemoView
          AllowVectorExport = True
          Left = 312.155514170040000000
          Top = 301.229471302857000000
          Width = 46.925338731444000000
          Height = 16.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText60: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 277.052493428889000000
          Width = 306.034817813765000000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURONOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURONOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText61: TfrxMemoView
          AllowVectorExport = True
          Left = 445.790717948718000000
          Top = 301.229471302857000000
          Width = 85.689748987854200000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText62: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAPOLICE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAPOLICE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText63: TfrxMemoView
          AllowVectorExport = True
          Left = 651.854161943320000000
          Top = 301.229471302857000000
          Width = 96.911025641025600000
          Height = 16.000000000000000000
          DataField = 'CTE_SEGUROAVERBACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_SEGUROAVERBACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel147: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 342.096237952963000000
          Width = 37.540270985155200000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FRETE')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText84: TfrxMemoView
          AllowVectorExport = True
          Left = 53.046035087719300000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORFRETE'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORFRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel175: TfrxMemoView
          AllowVectorExport = True
          Left = 159.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SEGURO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText86: TfrxMemoView
          AllowVectorExport = True
          Left = 210.143908232119000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORSEGURO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORSEGURO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel176: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Top = 342.096237952963000000
          Width = 51.617872604588400000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText87: TfrxMemoView
          AllowVectorExport = True
          Left = 367.241781376518000000
          Top = 342.096237952963000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_VALOROUTROS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALOROUTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText65: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 365.363329562857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_VALORTOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."CTE_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText81: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 404.930258692857000000
          Width = 206.063443994602000000
          Height = 16.000000000000000000
          DataField = 'EMP_ENQUADRAMENTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EMP_ENQUADRAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText66: TfrxMemoView
          AllowVectorExport = True
          Left = 382.543522267206000000
          Top = 404.930258692857000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'CTE_BASEICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_BASEICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText67: TfrxMemoView
          AllowVectorExport = True
          Left = 513.118377867746000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText68: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 404.930258692857000000
          Width = 99.971373819163300000
          Height = 16.000000000000000000
          DataField = 'CTE_TOTALICMS'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_TOTALICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText69: TfrxMemoView
          AllowVectorExport = True
          Left = 700.819732793522000000
          Top = 404.930258692857000000
          Width = 42.844874493927100000
          Height = 16.000000000000000000
          DataField = 'CTE_ALIQICMSRED'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ALIQICMSRED"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel92: TfrxMemoView
          AllowVectorExport = True
          Left = 634.512188933873000000
          Top = 341.186351688889000000
          Width = 117.313346828610000000
          Height = 16.000000000000000000
          DataField = 'VALORPRESTACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
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
            '[frxDBDataset7."VALORPRESTACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel119: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 44.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'REMENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."REMENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel126: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 44.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'DESENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."DESENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel127: TfrxMemoView
          AllowVectorExport = True
          Left = 55.086267206477700000
          Top = 127.566929130000000000
          Width = 317.256094466937000000
          Height = 16.000000000000000000
          DataField = 'EXPENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EXPENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel128: TfrxMemoView
          AllowVectorExport = True
          Left = 440.690137651822000000
          Top = 127.566929130000000000
          Width = 311.135398110661000000
          Height = 16.000000000000000000
          DataField = 'RECENDCOMPLETO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."RECENDCOMPLETO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.000000000000000000
        Top = 797.480830000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
        RowCount = 0
        object MemoNotasEsquerda: TfrxMemoView
          AllowVectorExport = True
          Width = 376.422825910931000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoNotasDireita: TfrxMemoView
          AllowVectorExport = True
          Left = 376.422825910931000000
          Width = 379.483174089069000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel149: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Width = 46.925338731444000000
          Height = 13.000000000000000000
          DataField = 'TIPODOC'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."TIPODOC"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel115: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327659919028300000
          Width = 93.850677462888000000
          Height = 13.000000000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7a."DOCUMENTO"]')
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
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 168.566929130000000000
        Top = 869.291900000000000000
        Width = 755.906000000000000000
        object BoxShape62: TfrxMemoView
          AllowVectorExport = True
          Top = 15.000000000000000000
          Width = 755.906000000000000000
          Height = 34.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel122: TfrxMemoView
          AllowVectorExport = True
          Top = 64.000000000000000000
          Width = 111.192650472335000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RNTRC DA EMPRESA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel123: TfrxMemoView
          AllowVectorExport = True
          Left = 111.192650472335000000
          Top = 64.000000000000000000
          Width = 111.192650472335000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIOT')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel124: TfrxMemoView
          AllowVectorExport = True
          Left = 222.385300944669000000
          Top = 64.000000000000000000
          Width = 126.494391363023000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA PREVISTA DE ENTREGA')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape66: TfrxMemoView
          AllowVectorExport = True
          Left = 348.879692307692000000
          Top = 64.000000000000000000
          Width = 407.026307692308000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape79: TfrxMemoView
          AllowVectorExport = True
          Top = 88.566929130000000000
          Width = 417.227468286100000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape80: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 88.566929130000000000
          Width = 338.678531713900000000
          Height = 13.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape81: TfrxMemoView
          AllowVectorExport = True
          Top = 101.566929130000000000
          Width = 417.227468286100000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object BoxShape82: TfrxMemoView
          AllowVectorExport = True
          Left = 417.227468286100000000
          Top = 101.566929130000000000
          Width = 338.678531713900000000
          Height = 65.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel120: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 750.300462250000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel121: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.000000000000000000
          Width = 750.300462250000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORMA'#199#213'ES ESPEC'#205'FICAS DO MODAL RODOVI'#193'RIO - CARGA FRACIONADA')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel125: TfrxMemoView
          AllowVectorExport = True
          Left = 360.000000000000000000
          Top = 73.098862640740700000
          Width = 441.098184075573000000
          Height = 11.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'ESTE CONHECIMENTO DE TRANSPORTE ATENDE A LEGISLA'#199#195'O DE TRANSPORT' +
              'E RODOVI'#193'RIO EM VIGOR')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel138: TfrxMemoView
          AllowVectorExport = True
          Left = 541.000000000000000000
          Top = 90.566929130000000000
          Width = 104.408878677463000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel139: TfrxMemoView
          AllowVectorExport = True
          Left = 133.000000000000000000
          Top = 90.566929130000000000
          Width = 177.143153711201000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'USO EXCLUSIVO DO EMISSOR DO CT-e')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 17.000000000000000000
          Width = 748.765187584345000000
          Height = 29.000000000000000000
          DataField = 'CTE_OBSERVACOES'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_OBSERVACOES"]')
          ParentFont = False
        end
        object MemoQRLabel174: TfrxMemoView
          AllowVectorExport = True
          Left = 114.000000000000000000
          Top = 20.000000000000000000
          Width = 619.414471255061000000
          Height = 29.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AMBIENTE DE HOMOLOGA'#199#195'O - SEM VALOR FISCAL')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText71: TfrxMemoView
          AllowVectorExport = True
          Left = 237.687041835358000000
          Top = 74.918635168888900000
          Width = 89.770213225371100000
          Height = 16.000000000000000000
          DataField = 'CTE_ENTREGADATAFINAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_ENTREGADATAFINAL"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel150: TfrxMemoView
          AllowVectorExport = True
          Left = 2.040232118758430000
          Top = 105.566929130000000000
          Width = 413.147004048583000000
          Height = 60.000000000000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object MemoQRDBText73: TfrxMemoView
          AllowVectorExport = True
          Left = 114.252998650472000000
          Top = 74.918635168888900000
          Width = 105.071954116059000000
          Height = 16.000000000000000000
          DataField = 'CTE_CIOT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CTE_CIOT"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText74: TfrxMemoView
          AllowVectorExport = True
          Left = 4.080464237516870000
          Top = 74.918635168888900000
          Width = 104.051838056680000000
          Height = 16.000000000000000000
          DataField = 'PAR_RNTRC'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PAR_RNTRC"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 328
  end
  object frxDBDataset7a: TfrxDBDataset
    UserName = 'frxDBDataset7a'
    CloseDataSource = False
    DataSet = QY07a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 328
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select C.*, EMP_NOME, EMP_ENQUADRAMENTO, PAR_RNTRC,'
      
        '  coalesce(C.CTE_REMCNPJ, C.CTE_REMCPF) as REMDOC, coalesce(C.CT' +
        'E_EXPCNPJ, C.CTE_EXPCPF) as EXPDOC,'
      
        '  coalesce(C.CTE_DESCNPJ, C.CTE_DESCPF) as DESDOC, coalesce(C.CT' +
        'E_RECCNPJ, C.CTE_RECCPF) as RECDOC,'
      
        '  lpad(cast(C.CTE_SERIE as varchar(3)), 3, '#39'0'#39') as SERIEFMT, lpa' +
        'd(cast(C.CTE_CODIGO as varchar(9)), 9, '#39'0'#39') as NUMEROFMT,'
      
        '  coalesce(C.CTE_VALORFRETE,0)+coalesce(C.CTE_VALORSEGURO,0)+coa' +
        'lesce(C.CTE_VALOROUTROS,0) as VALORPRESTACAO,'
      
        '  substring(C.CTE_CHAVEACESSO from 1 for 4)||'#39'.'#39'||substring(C.CT' +
        'E_CHAVEACESSO from 5 for 4)||'#39'.'#39'||substring(C.CTE_CHAVEACESSO fr' +
        'om 9 for 4)||'#39'.'#39'||substring(C.CTE_CHAVEACESSO from 13 for 4)||'#39'.' +
        #39'||substring(C.CTE_CHAVEACESSO from 17 for 4)||'#39'.'#39'||substring(C.' +
        'CTE_CHAVEACESSO from 21 for 4)||'#39'.'#39'||substring(C.CTE_CHAVEACESSO' +
        ' from 25 for 4)||'#39'.'#39'||substring(C.CTE_CHAVEACESSO from 29 for 4)' +
        '||'#39'.'#39'||substring(C.CTE_CHAVEACESSO from 33 for 4)||'#39'.'#39'||substrin' +
        'g(C.CTE_CHAVEACESSO from 37 for 4)||'#39'.'#39'||substring(C.CTE_CHAVEAC' +
        'ESSO from 41 for 4) as CHAVEFORMATADA,'
      
        '  coalesce(EMP_ENDERECO,'#39#39')||'#39',  '#39'||coalesce(EMP_NUMERO,'#39#39')||'#39' -' +
        ' '#39'||coalesce(EMP_BAIRRO,'#39#39')||'#39' - '#39'||coalesce(EMP_CIDADE,'#39#39')||'#39' -' +
        ' '#39'||coalesce(EMP_ESTADO,'#39#39')||'
      
        '  '#39' - CEP: '#39'||coalesce(EMP_CEP,'#39#39')||'#39' - Fone: '#39'||coalesce(EMP_FO' +
        'NE1,'#39#39')||'#39' - '#39'||coalesce(EMP_CNPJ,'#39#39')||'#39' - '#39'||coalesce(EMP_HOMEP' +
        'AGE,'#39#39') as ENDEMITENTE,'
      
        '  coalesce(C.CTE_REMENDERECO,'#39#39')||'#39', '#39'||coalesce(C.CTE_REMNUMERO' +
        ','#39#39')||'#39' - '#39'||coalesce(C.CTE_REMBAIRRO,'#39#39') as REMENDCOMPLETO,'
      
        '  coalesce(C.CTE_DESENDERECO,'#39#39')||'#39', '#39'||coalesce(C.CTE_DESNUMERO' +
        ','#39#39')||'#39' - '#39'||coalesce(C.CTE_DESBAIRRO,'#39#39') as DESENDCOMPLETO,'
      
        '  coalesce(C.CTE_EXPENDERECO,'#39#39')||'#39', '#39'||coalesce(C.CTE_EXPNUMERO' +
        ','#39#39')||'#39' - '#39'||coalesce(C.CTE_EXPBAIRRO,'#39#39') as EXPENDCOMPLETO,'
      
        '  coalesce(C.CTE_RECENDERECO,'#39#39')||'#39', '#39'||coalesce(C.CTE_RECNUMERO' +
        ','#39#39')||'#39' - '#39'||coalesce(C.CTE_RECBAIRRO,'#39#39') as RECENDCOMPLETO'
      'from CTE C'
      'left join EMPRESA on EMP_CODIGO=1'
      'left join PARAMETROS on PAR_CODIGO=1'
      'where C.CTE_CODIGO=:codigo')
    Left = 480
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 424
  end
  object QY07a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07a
    SQL.Strings = (
      'select N.*,'
      
        '  case N.CTN_TIPONOTA when '#39'1 - NOTA FISCAL'#39' then '#39'NF'#39' when '#39'2 -' +
        ' NOTA FISCAL ELETRONICA'#39' then '#39'NF-e'#39' when '#39'3 - OUTROS'#39' then '#39'OUT' +
        'ROS'#39' else '#39#39' end as TIPODOC,'
      
        '  case when N.CTN_TIPONOTA='#39'2 - NOTA FISCAL ELETRONICA'#39' then N.C' +
        'TN_CHAVEACESSO'
      
        '    else coalesce(N.CTN_CNPJREMETENTE,'#39#39')||'#39' - '#39'||coalesce(N.CTN' +
        '_SERIE,0)||'#39' / '#39'||coalesce(N.CTN_NUMERO,0) end as DOCUMENTO'
      'from CTENOTAS N'
      'where N.CTN_CTE=:codigo'
      'order by N.CTN_CODIGO')
    Left = 544
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 424
  end
  object QY07b: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07b
    SQL.Strings = (
      'select CCG_TIPOMEDIDA, CCG_QUANTIDADE, CCG_UNIDADEMEDIDA'
      'from CTECARGA'
      'where CCG_CTE=:codigo'
      'order by CCG_CODIGO')
    Left = 608
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 608
    Top = 424
  end
  object QY07c: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07c
    SQL.Strings = (
      'select CTV_TIPOVEICULO, CTV_PLACA, CTV_ESTADO, CTV_RNTRC'
      'from CTEVEICULOS'
      'where CTV_CTE=:codigo'
      'order by CTV_CODIGO')
    Left = 672
    Top = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07c: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 672
    Top = 424
  end
end
