object FormTurmasFast: TFormTurmasFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Turmas'
  ClientHeight = 572
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 620
    Top = 8
    Width = 297
    Height = 529
    Lines.Strings = (
      '01 - Turmas'
      '02 - Ficha de Chamada'
      '03 - Ficha de Chamada Preenchida'
      '04 - Relat'#243'rio de Frequ'#234'ncia'
      '05 - Turmas por Professor e Per'#237'odo'
      '06 - Relat'#243'rio de Conte'#250'dos'
      '07 - Turmas sem Calend'#225'rio'
      '08 - Planilha de Notas')
    TabOrder = 0
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
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ChunkSize = 0
    ExportPageBreaks = False
    OpenAfterExport = False
    PictureType = gpPNG
    Wysiwyg = False
    Left = 120
    Top = 16
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
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR01'
    ReportOptions.LastChange = 46349.000000000000000000
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
        Value = Null
      end
      item
        Name = 'TITULO'
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
        Name = 'TUR_STATUS'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
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
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
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
        object MemoHeader2: TfrxMemoView
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
        object MemoHeader3: TfrxMemoView
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
        object MemoTitulo: TfrxMemoView
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015748000000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object MemoFiltros: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
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
        object MemoDtIniRot: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666666670000000000
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
        object MemoDtIni: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 0.666666670000000000
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
        object MemoDtFimRot: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
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
        object MemoDtFim: TfrxMemoView
          AllowVectorExport = True
          Left = 262.958000370000000000
          Top = 0.666666670000000000
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
        object MemoStatusRot: TfrxMemoView
          AllowVectorExport = True
          Left = 327.598640000000000000
          Top = 0.666666670000000000
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
        object MemoStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 372.953000000000000000
          Top = 0.666666670000000000
          Width = 104.719089310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TUR_STATUS]')
          ParentFont = False
        end
        object MemoProfRot: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 15.538023570000000000
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
            'Professor:')
          ParentFont = False
        end
        object MemoProfCod: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 15.538023570000000000
          Width = 38.713976660000000000
          Height = 13.228346460000000000
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
        object MemoProf: TfrxMemoView
          AllowVectorExport = True
          Left = 150.372603330000000000
          Top = 15.538023570000000000
          Width = 400.000000000000000000
          Height = 13.228346460000000000
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
        Height = 37.674540690000000000
        Top = 200.315090000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset1."TUR_PROFESSOR"'
        ReprintOnNewPage = True
        object MemoProfCodigo: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_PROFESSOR"]')
          ParentFont = False
        end
        object MemoProfNome: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 400.000000000000000000
          Height = 17.007874000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEN_NOME"]')
          ParentFont = False
        end
        object MemoTit1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 22.677165000000000000
          Width = 43.864990553306300000
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
        object MemoTit2: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Top = 22.677165000000000000
          Width = 207.083560053981000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object MemoTit5: TfrxMemoView
          AllowVectorExport = True
          Left = 313.175630229420000000
          Top = 22.677165000000000000
          Width = 55.086267206477700000
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
        object MemoTit6: TfrxMemoView
          AllowVectorExport = True
          Left = 370.302129554656000000
          Top = 22.677165000000000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'In'#237'cio')
          ParentFont = False
        end
        object MemoTit7: TfrxMemoView
          AllowVectorExport = True
          Left = 427.428628879892000000
          Top = 22.677165000000000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
        end
        object MemoTit8: TfrxMemoView
          AllowVectorExport = True
          Left = 483.535012145749000000
          Top = 22.677165000000000000
          Width = 37.744294197031000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' Enc.')
          ParentFont = False
        end
        object MemoTit9: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Seg')
          ParentFont = False
        end
        object MemoTit10: TfrxMemoView
          AllowVectorExport = True
          Left = 550.862672064777000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ter')
          ParentFont = False
        end
        object MemoTit11: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qua')
          ParentFont = False
        end
        object MemoTit12: TfrxMemoView
          AllowVectorExport = True
          Left = 605.948939271255000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qui')
          ParentFont = False
        end
        object MemoTit13: TfrxMemoView
          AllowVectorExport = True
          Left = 633.492072874494000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sex')
          ParentFont = False
        end
        object MemoTit14: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#225'b')
          ParentFont = False
        end
        object MemoTit15: TfrxMemoView
          AllowVectorExport = True
          Left = 689.598456140351000000
          Top = 22.677165000000000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dom')
          ParentFont = False
        end
        object MemoTit16: TfrxMemoView
          AllowVectorExport = True
          Left = 717.141589743590000000
          Top = 22.677165000000000000
          Width = 36.724178137651800000
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
        object MemoTitPerAno: TfrxMemoView
          AllowVectorExport = True
          Left = 257.069246963563000000
          Top = 22.677165000000000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Per/Ano')
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
        Top = 260.787570000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object MemoDet1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 43.864990553306300000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet2: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Width = 207.083560053981000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet3: TfrxMemoView
          AllowVectorExport = True
          Left = 257.069246963563000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_PERIODO'
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
            '[frxDBDataset1."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet4: TfrxMemoView
          AllowVectorExport = True
          Left = 284.612380566802000000
          Width = 27.543133603238900000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_ANO'
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
            '[frxDBDataset1."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet5: TfrxMemoView
          AllowVectorExport = True
          Left = 313.175630229420000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_DTCADASTRO'
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
            '[frxDBDataset1."TUR_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet6: TfrxMemoView
          AllowVectorExport = True
          Left = 370.302129554656000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_DTINICIO'
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
            '[frxDBDataset1."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet7: TfrxMemoView
          AllowVectorExport = True
          Left = 427.428628879892000000
          Width = 55.086267206477700000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_DTTERMINO'
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
            '[frxDBDataset1."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet8: TfrxMemoView
          AllowVectorExport = True
          Left = 483.535012145749000000
          Width = 37.744294197031000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_ENCONTROS'
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
            '[frxDBDataset1."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet9: TfrxMemoView
          AllowVectorExport = True
          Left = 523.319538461538000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_SEGUNDA'
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
            '[frxDBDataset1."TUR_SEGUNDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet10: TfrxMemoView
          AllowVectorExport = True
          Left = 550.862672064777000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_TERCA'
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
            '[frxDBDataset1."TUR_TERCA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet11: TfrxMemoView
          AllowVectorExport = True
          Left = 578.405805668016000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_QUARTA'
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
            '[frxDBDataset1."TUR_QUARTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet12: TfrxMemoView
          AllowVectorExport = True
          Left = 605.948939271255000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_QUINTA'
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
            '[frxDBDataset1."TUR_QUINTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet13: TfrxMemoView
          AllowVectorExport = True
          Left = 633.492072874494000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_SEXTA'
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
            '[frxDBDataset1."TUR_SEXTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet14: TfrxMemoView
          AllowVectorExport = True
          Left = 661.035206477733000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_SABADO'
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
            '[frxDBDataset1."TUR_SABADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet15: TfrxMemoView
          AllowVectorExport = True
          Left = 689.598456140351000000
          Width = 26.523017543859600000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_DOMINGO'
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
            '[frxDBDataset1."TUR_DOMINGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet16: TfrxMemoView
          AllowVectorExport = True
          Left = 717.141589743590000000
          Width = 36.724178137651800000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TUR_STATUS'
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
            '[frxDBDataset1."TUR_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        object SysMemoGrupo: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 300.000000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Turmas: [COUNT(MasterData1)]')
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
        Height = 22.677165000000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        object SysMemoTotal: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 300.000000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Turmas: [COUNT(MasterData1)]')
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
        Top = 427.086890000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
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
            'TUR01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TUR_CODIGO=TUR_CODIGO'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_DTCADASTRO=TUR_DTCADASTRO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_STATUS=TUR_STATUS'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_ANO=TUR_ANO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'TUR_CODIGO,'
      'TUR_DESCRICAO,'
      'TUR_PROFESSOR,'
      'TUR_DTINICIO,'
      'TUR_DTTERMINO,'
      'TUR_DTCADASTRO,'
      'TUR_PERIODO,'
      'TUR_STATUS,'
      'TUR_ENCONTROS,'
      'TUR_SEGUNDA,'
      'TUR_TERCA,'
      'TUR_QUARTA,'
      'TUR_QUINTA,'
      'TUR_SEXTA,'
      'TUR_SABADO,'
      'TUR_DOMINGO,'
      'TUR_ANO,'
      'VEN_NOME'
      'from TURMAS'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'order by VEN_NOME, TUR_DESCRICAO'
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
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR02'
    ReportOptions.LastChange = 46349.000000000000000000
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
    OnBeforePrint = frxReport2BeforePrint
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
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
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        Frame.LeftLine.Width = 1.000000000000000000
        Frame.TopLine.Width = 1.000000000000000000
        Frame.RightLine.Width = 1.000000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
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
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 77.045845872897200000
        Top = 143.622140000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDataset2."MAT_TURMA"'
        ReprintOnNewPage = True
        StartNewPage = True
        object MemoTurma: TfrxMemoView
          AllowVectorExport = True
          Left = 8.110089039252340000
          Width = 49.674295365420600000
          Height = 20.275222598130800000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTurDescricao: TfrxMemoView
          AllowVectorExport = True
          Left = 64.880712314018700000
          Width = 263.577893775701000000
          Height = 20.275222598130800000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 2.027522259813080000
          Width = 61.839428924299100000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 397.394362923364000000
          Top = 2.027522259813080000
          Width = 211.876076150467000000
          Height = 16.220178078504700000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 598.119066644860000000
          Top = 2.027522259813080000
          Width = 48.660534235514000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'In'#237'cio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 648.807123140187000000
          Top = 2.027522259813080000
          Width = 75.018323613084100000
          Height = 16.220178078504700000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 595.077783255140000000
          Top = 20.275222598130800000
          Width = 51.701817625233600000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'T'#233'rmino:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 648.807123140187000000
          Top = 20.275222598130800000
          Width = 74.004562483177600000
          Height = 16.220178078504700000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotDias: TfrxMemoView
          AllowVectorExport = True
          Left = 724.839207883177000000
          Top = 2.027522259813080000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDias: TfrxMemoView
          AllowVectorExport = True
          Left = 774.513503248598000000
          Top = 2.027522259813080000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 724.839207883177000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 774.513503248598000000
          Top = 20.275222598130800000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          DataField = 'TUR_HORARIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_HORARIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotSala: TfrxMemoView
          AllowVectorExport = True
          Left = 364.954006766355000000
          Top = 20.275222598130800000
          Width = 29.399072767289700000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sala:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoSala: TfrxMemoView
          AllowVectorExport = True
          Left = 397.394362923364000000
          Top = 20.275222598130800000
          Width = 195.655898071963000000
          Height = 16.220178078504700000
          DataField = 'TUR_SALA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_SALA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 285.880638633645000000
          Top = 20.275222598130800000
          Width = 50.688056495327100000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 338.596217388785000000
          Top = 20.275222598130800000
          Width = 21.288983728037400000
          Height = 16.220178078504700000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 214.917359540187000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Enc:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 264.591654905607000000
          Top = 20.275222598130800000
          Width = 21.288983728037400000
          Height = 16.220178078504700000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object ShapeCompensada: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 3.041283389719630000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clGreen
          Frame.Typ = []
        end
        object ShapeFeriado: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 14.192655818691600000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clRed
          Frame.Typ = []
        end
        object ShapeOutro: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 25.344028247663500000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clBlue
          Frame.Typ = []
        end
        object MemoLegCompensada: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 1.013761129906540000
          Width = 60.825667794392500000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPENSADA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegFeriado: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 12.165133558878500000
          Width = 50.688056495327100000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FERIADOS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegOutro: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 23.316505987850500000
          Width = 50.688056495327100000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegPresenca: TfrxMemoView
          AllowVectorExport = True
          Left = 1010.719846516820000000
          Top = 12.165133558878500000
          Width = 70.963279093457900000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P = PRESEN'#199'A')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegFalta: TfrxMemoView
          AllowVectorExport = True
          Left = 1010.719846516820000000
          Top = 23.316505987850500000
          Width = 70.963279093457900000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'X = FALTA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object LineMeses: TfrxLineView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 38.522922936448600000
          Width = 866.765766070093000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object MemoRotMat: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 59.811906664486000000
          Width = 33.454117286915900000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 59.811906664486000000
          Width = 180.449481123364000000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aluno')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035014019000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035010000000000
          Top = 57.784384400000000000
          Width = 19.261461470000000000
          Height = 19.261461470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 17.233939208411200000
        Top = 241.889920000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object MemoMatricula: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 2.027522259813080000
          Width = 33.454117286915900000
          Height = 13.178894688785000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 2.027522259813080000
          Width = 180.449481123364000000
          Height = 13.178894688785000000
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
          VAlign = vaCenter
        end
        object MemoCel1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035014019000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165000000000000
        Top = 283.464750000000000000
        Width = 1084.725110000000000000
        object SysMemoTotalAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 4.055044519626170000
          Width = 304.128338971963000000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Alunos: [COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
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
        Top = 366.614410000000000000
        Width = 1084.725110000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 708.724409000000000000
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
            'TUR02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
          VAlign = vaCenter
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MAT_CODIGO=MAT_CODIGO'
      'MAT_CLIENTE=MAT_CLIENTE'
      'MAT_TURMA=MAT_TURMA'
      'CLI_NOME=CLI_NOME'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_SALA=TUR_SALA'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_HORARIO=TUR_HORARIO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'VEN_NOME=VEN_NOME')
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 112
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select '
      'MAT_CODIGO,'
      'MAT_CLIENTE,'
      'MAT_TURMA,'
      'CLI_NOME,'
      'TUR_DESCRICAO,'
      'TUR_PROFESSOR,'
      'TUR_SALA,'
      'TUR_DTINICIO,'
      'TUR_DTTERMINO,'
      'TUR_HORARIO,'
      'TUR_DOMINGO,'
      'TUR_SEGUNDA,'
      'TUR_TERCA,'
      'TUR_QUARTA,'
      'TUR_QUINTA,'
      'TUR_SEXTA,'
      'TUR_SABADO,'
      'TUR_PERIODO,'
      'TUR_ENCONTROS,'
      'VEN_NOME'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'where MAT_STATUS='#39'A'#39
      'order by MAT_TURMA, CLI_NOME'
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
  object QY02a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02a
    SQL.Strings = (
      'select CAL_DATA, CAL_TIPO from CALENDARIOS'
      'where CAL_TURMA=:turma'
      'order by CAL_CONTADOR'
      '')
    Left = 120
    Top = 256
    ParamData = <
      item
        Name = 'TURMA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR02a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 304
  end
  object frxReport3: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR03'
    ReportOptions.LastChange = 46349.000000000000000000
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
    OnBeforePrint = frxReport3BeforePrint
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
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
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        Frame.LeftLine.Width = 1.000000000000000000
        Frame.TopLine.Width = 1.000000000000000000
        Frame.RightLine.Width = 1.000000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
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
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 954.724409000000000000
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
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 77.045845872897200000
        Top = 143.622140000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDataset3."MAT_TURMA"'
        ReprintOnNewPage = True
        StartNewPage = True
        object MemoTurma: TfrxMemoView
          AllowVectorExport = True
          Left = 8.110089039252340000
          Width = 49.674295365420600000
          Height = 20.275222598130800000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTurDescricao: TfrxMemoView
          AllowVectorExport = True
          Left = 64.880712314018700000
          Width = 263.577893775701000000
          Height = 20.275222598130800000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 2.027522259813080000
          Width = 61.839428924299100000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 397.394362923364000000
          Top = 2.027522259813080000
          Width = 211.876076150467000000
          Height = 16.220178078504700000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 598.119066644860000000
          Top = 2.027522259813080000
          Width = 48.660534235514000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'In'#237'cio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 648.807123140187000000
          Top = 2.027522259813080000
          Width = 75.018323613084100000
          Height = 16.220178078504700000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 595.077783255140000000
          Top = 20.275222598130800000
          Width = 51.701817625233600000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'T'#233'rmino:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 648.807123140187000000
          Top = 20.275222598130800000
          Width = 74.004562483177600000
          Height = 16.220178078504700000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotDias: TfrxMemoView
          AllowVectorExport = True
          Left = 724.839207883177000000
          Top = 2.027522259813080000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDias: TfrxMemoView
          AllowVectorExport = True
          Left = 774.513503248598000000
          Top = 2.027522259813080000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 724.839207883177000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 774.513503248598000000
          Top = 20.275222598130800000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          DataField = 'TUR_HORARIO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_HORARIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotSala: TfrxMemoView
          AllowVectorExport = True
          Left = 389.284273884112000000
          Top = 20.275222598130800000
          Width = 29.399072767289700000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sala:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoSala: TfrxMemoView
          AllowVectorExport = True
          Left = 421.724630041121000000
          Top = 20.275222598130800000
          Width = 171.325630954206000000
          Height = 16.220178078504700000
          DataField = 'TUR_SALA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_SALA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 265.605416035514000000
          Top = 20.275222598130800000
          Width = 70.963279093457900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo/Ano:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 338.596217388785000000
          Top = 20.275222598130800000
          Width = 48.660534235514000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_PERIODO"] [frxDBDataset3."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 198.697181461682000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Enc:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 248.371476827103000000
          Top = 20.275222598130800000
          Width = 21.288983728037400000
          Height = 16.220178078504700000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object ShapeCompensada: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 3.041283389719630000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clGreen
          Frame.Typ = []
        end
        object ShapeFeriado: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 14.192655818691600000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clRed
          Frame.Typ = []
        end
        object ShapeOutro: TfrxShapeView
          AllowVectorExport = True
          Left = 945.839134202804000000
          Top = 25.344028247663500000
          Width = 10.137611299065400000
          Height = 10.137611299065400000
          Fill.BackColor = clBlue
          Frame.Typ = []
        end
        object MemoLegCompensada: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 1.013761129906540000
          Width = 60.825667794392500000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPENSADA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegFeriado: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 12.165133558878500000
          Width = 50.688056495327100000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FERIADOS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegOutro: TfrxMemoView
          AllowVectorExport = True
          Left = 959.018028891589000000
          Top = 23.316505987850500000
          Width = 50.688056495327100000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OUTROS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegPresenca: TfrxMemoView
          AllowVectorExport = True
          Left = 1010.719846516820000000
          Top = 12.165133558878500000
          Width = 70.963279093457900000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P = PRESEN'#199'A')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoLegFalta: TfrxMemoView
          AllowVectorExport = True
          Left = 1010.719846516820000000
          Top = 23.316505987850500000
          Width = 70.963279093457900000
          Height = 13.178894688785000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'X = FALTA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object LineMeses: TfrxLineView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 38.522922936448600000
          Width = 866.765766070093000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object MemoRotMat: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 59.811906664486000000
          Width = 33.454117286915900000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoRotAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 59.811906664486000000
          Width = 180.449481123364000000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aluno')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035014019000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMes45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Top = 38.522922936448600000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035010000000000
          Top = 57.784384400000000000
          Width = 19.261461470000000000
          Height = 19.261461470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoDia45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Top = 57.784384404672900000
          Width = 19.261461468224300000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 17.233939208411200000
        Top = 241.889920000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object MemoMatricula: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 2.027522259813080000
          Width = 33.454117286915900000
          Height = 13.178894688785000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 2.027522259813080000
          Width = 180.449481123364000000
          Height = 13.178894688785000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel1: TfrxMemoView
          AllowVectorExport = True
          Left = 216.944881800000000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel2: TfrxMemoView
          AllowVectorExport = True
          Left = 236.206343268224000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel3: TfrxMemoView
          AllowVectorExport = True
          Left = 255.467804736449000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel4: TfrxMemoView
          AllowVectorExport = True
          Left = 274.729266204673000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel5: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.252189141121000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel7: TfrxMemoView
          AllowVectorExport = True
          Left = 332.513650609346000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel9: TfrxMemoView
          AllowVectorExport = True
          Left = 371.036573545794000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel10: TfrxMemoView
          AllowVectorExport = True
          Left = 390.298035014019000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel11: TfrxMemoView
          AllowVectorExport = True
          Left = 409.559496482243000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel12: TfrxMemoView
          AllowVectorExport = True
          Left = 428.820957950467000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.082419418692000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel14: TfrxMemoView
          AllowVectorExport = True
          Left = 467.343880886916000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel15: TfrxMemoView
          AllowVectorExport = True
          Left = 486.605342355140000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel16: TfrxMemoView
          AllowVectorExport = True
          Left = 505.866803823364000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.128265291589000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel18: TfrxMemoView
          AllowVectorExport = True
          Left = 544.389726759813000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel19: TfrxMemoView
          AllowVectorExport = True
          Left = 563.651188228037000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.912649696262000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel21: TfrxMemoView
          AllowVectorExport = True
          Left = 602.174111164486000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel22: TfrxMemoView
          AllowVectorExport = True
          Left = 621.435572632710000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel23: TfrxMemoView
          AllowVectorExport = True
          Left = 640.697034100935000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel24: TfrxMemoView
          AllowVectorExport = True
          Left = 659.958495569159000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel25: TfrxMemoView
          AllowVectorExport = True
          Left = 679.219957037383000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel26: TfrxMemoView
          AllowVectorExport = True
          Left = 698.481418505607000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel27: TfrxMemoView
          AllowVectorExport = True
          Left = 717.742879973832000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel28: TfrxMemoView
          AllowVectorExport = True
          Left = 737.004341442056000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel29: TfrxMemoView
          AllowVectorExport = True
          Left = 756.265802910280000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel30: TfrxMemoView
          AllowVectorExport = True
          Left = 775.527264378505000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel31: TfrxMemoView
          AllowVectorExport = True
          Left = 794.788725846729000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel32: TfrxMemoView
          AllowVectorExport = True
          Left = 814.050187314953000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel33: TfrxMemoView
          AllowVectorExport = True
          Left = 833.311648783177000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel34: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel35: TfrxMemoView
          AllowVectorExport = True
          Left = 871.834571719626000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.096033187850000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel37: TfrxMemoView
          AllowVectorExport = True
          Left = 910.357494656075000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel38: TfrxMemoView
          AllowVectorExport = True
          Left = 929.618956124299000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel39: TfrxMemoView
          AllowVectorExport = True
          Left = 948.880417592523000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel40: TfrxMemoView
          AllowVectorExport = True
          Left = 968.141879060748000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel41: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel42: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.664801997200000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel43: TfrxMemoView
          AllowVectorExport = True
          Left = 1025.926263465420000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel44: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.187724933640000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoCel45: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.449186401870000000
          Width = 19.261461468224300000
          Height = 17.233939208411200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165000000000000
        Top = 283.464750000000000000
        Width = 1084.725110000000000000
        object SysMemoTotalAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 4.055044519626170000
          Width = 304.128338971963000000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Alunos: [COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
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
        Top = 366.614410000000000000
        Width = 1084.725110000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 708.724409000000000000
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
            'TUR03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
          VAlign = vaCenter
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MAT_CODIGO=MAT_CODIGO'
      'MAT_CLIENTE=MAT_CLIENTE'
      'MAT_TURMA=MAT_TURMA'
      'CLI_NOME=CLI_NOME'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_SALA=TUR_SALA'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_HORARIO=TUR_HORARIO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ANO=TUR_ANO'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'VEN_NOME=VEN_NOME')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 112
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'MAT_CODIGO,'
      'MAT_CLIENTE,'
      'MAT_TURMA,'
      'CLI_NOME,'
      'TUR_DESCRICAO,'
      'TUR_PROFESSOR,'
      'TUR_SALA,'
      'TUR_DTINICIO,'
      'TUR_DTTERMINO,'
      'TUR_HORARIO,'
      'TUR_DOMINGO,'
      'TUR_SEGUNDA,'
      'TUR_TERCA,'
      'TUR_QUARTA,'
      'TUR_QUINTA,'
      'TUR_SEXTA,'
      'TUR_SABADO,'
      'TUR_PERIODO,'
      'TUR_ANO,'
      'TUR_ENCONTROS,'
      'VEN_NOME'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'where MAT_STATUS='#39'A'#39
      'order by MAT_TURMA, CLI_NOME'
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
  object QY03a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03a
    SQL.Strings = (
      
        'select CAL_CODIGO, CAL_DATA, CAL_TIPO, CAL_STATUSCHAMADA from CA' +
        'LENDARIOS'
      'where CAL_TURMA=:turma'
      'order by CAL_CONTADOR')
    Left = 192
    Top = 256
    ParamData = <
      item
        Name = 'TURMA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR03a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 304
  end
  object QY03b: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03b
    SQL.Strings = (
      'select CHA_CALENDARIO, CHA_PRESENCA from CHAMADAS'
      'where CHA_MATRICULA=:matricula')
    Left = 192
    Top = 352
    ParamData = <
      item
        Name = 'MATRICULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR03b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 400
  end
  object QY03c: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03c
    SQL.Strings = (
      'select'
      
        '  sum(case CHA_PRESENCA when '#39'P'#39' then 1 when '#39'X'#39' then 0 end) as ' +
        'PRESENCAS,'
      
        '  sum(case CHA_PRESENCA when '#39'P'#39' then 0 when '#39'X'#39' then 1 end) as ' +
        'FALTAS'
      'from CHAMADAS'
      'left join CALENDARIOS on CHA_CALENDARIO=CAL_CODIGO'
      'where CAL_STATUSCHAMADA='#39'F'#39' and CHA_MATRICULA=:matricula')
    Left = 192
    Top = 448
    ParamData = <
      item
        Name = 'MATRICULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR03c: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 496
  end
  object frxReport4: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR04'
    ReportOptions.LastChange = 46349.000000000000000000
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
    OnBeforePrint = frxReport4BeforePrint
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
        Name = 'TOTALTURMAS'
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
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
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
          WordWrap = False
        end
        object MemoHeader2: TfrxMemoView
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
          WordWrap = False
        end
        object MemoHeader3: TfrxMemoView
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
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
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
        Height = 55.086267206477700000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset4."MAT_TURMA"'
        ReprintOnNewPage = True
        object MemoTurma: TfrxMemoView
          AllowVectorExport = True
          Left = 9.181044534412950000
          Width = 49.985686909581600000
          Height = 19.382205128205100000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTurDescricao: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 19.382205128205100000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 1.020116059379220000
          Width = 75.488588394062100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Encontros:')
          ParentFont = False
          WordWrap = False
        end
        object MemoEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 470.273503373819000000
          Top = 1.020116059379220000
          Width = 30.603481781376500000
          Height = 15.301740890688300000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotDias: TfrxMemoView
          AllowVectorExport = True
          Left = 506.997681511471000000
          Top = 1.020116059379220000
          Width = 27.543133603238900000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
        end
        object MemoDias: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292847000000
          Top = 1.020116059379220000
          Width = 137.715668016194000000
          Height = 15.301740890688300000
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
        object MemoRotStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 677.357063427800000000
          Top = 1.020116059379220000
          Width = 42.844874493927100000
          Height = 15.301740890688300000
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
          WordWrap = False
        end
        object MemoStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 723.262286099865000000
          Top = 1.020116059379220000
          Width = 27.543133603238900000
          Height = 15.301740890688300000
          DataField = 'TUR_STATUS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 17.341973009446700000
          Width = 61.206963562753000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 470.273503373819000000
          Top = 17.341973009446700000
          Width = 167.299033738192000000
          Height = 15.301740890688300000
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
        object MemoRotPerAno: TfrxMemoView
          AllowVectorExport = True
          Left = 638.592653171390000000
          Top = 17.341973009446700000
          Width = 52.025919028340100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 692.658804318488000000
          Top = 17.341973009446700000
          Width = 24.482785425101200000
          Height = 15.301740890688300000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoAno: TfrxMemoView
          AllowVectorExport = True
          Left = 719.181821862348000000
          Top = 17.341973009446700000
          Width = 33.663829959514200000
          Height = 15.301740890688300000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitMat: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 39.784526315789500000
          Width = 43.864990553306300000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Top = 39.784526315789500000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitNome: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 39.784526315789500000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitPresencas: TfrxMemoView
          AllowVectorExport = True
          Left = 413.147004048583000000
          Top = 39.784526315789500000
          Width = 61.206963562753000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Presen'#231'as')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitFaltas: TfrxMemoView
          AllowVectorExport = True
          Left = 478.434431848853000000
          Top = 39.784526315789500000
          Width = 61.206963562753000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Faltas')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitPercentual: TfrxMemoView
          AllowVectorExport = True
          Left = 545.762091767881000000
          Top = 39.784526315789500000
          Width = 45.905222672064800000
          Height = 15.301740890688300000
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
          WordWrap = False
        end
        object MemoRotAulas: TfrxMemoView
          AllowVectorExport = True
          Left = 603.908707152497000000
          Top = 39.784526315789500000
          Width = 72.428240215924400000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aulas dadas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoAulas: TfrxMemoView
          AllowVectorExport = True
          Left = 679.397295546559000000
          Top = 39.784526315789500000
          Width = 51.005802968960900000
          Height = 15.301740890688300000
          DataField = 'AULASDADAS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."AULASDADAS"]')
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
        Height = 13.261508771929800000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object MemoMatricula: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.020116059379220000
          Width = 43.864990553306300000
          Height = 13.261508771929800000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoMatStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 48.965570850202400000
          Top = 1.020116059379220000
          Width = 36.724178137651800000
          Height = 13.261508771929800000
          DataField = 'MAT_STATUS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoCliente: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 1.020116059379220000
          Width = 43.864990553306300000
          Height = 13.261508771929800000
          DataField = 'MAT_CLIENTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."MAT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoNome: TfrxMemoView
          AllowVectorExport = True
          Left = 138.735784075574000000
          Top = 1.020116059379220000
          Width = 270.330755735493000000
          Height = 13.261508771929800000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoPresencas: TfrxMemoView
          AllowVectorExport = True
          Left = 413.147004048583000000
          Top = 1.020116059379220000
          Width = 61.206963562753000000
          Height = 13.261508771929800000
          DataField = 'PRESENCAS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."PRESENCAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoFaltas: TfrxMemoView
          AllowVectorExport = True
          Left = 478.434431848853000000
          Top = 1.020116059379220000
          Width = 61.206963562753000000
          Height = 13.261508771929800000
          DataField = 'FALTAS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."FALTAS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoPercentual: TfrxMemoView
          AllowVectorExport = True
          Left = 545.762091767881000000
          Top = 1.020116059379220000
          Width = 45.905222672064800000
          Height = 13.261508771929800000
          DataField = 'PERCENTUAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."PERCENTUAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 29.583365721997300000
        Top = 222.992270000000000000
        Width = 755.906000000000000000
        object MemoRotTotalAlunos: TfrxMemoView
          AllowVectorExport = True
          Left = 7.140812415654520000
          Top = 4.080464237516870000
          Width = 106.092070175439000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Alunos:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoTotalAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 4.080464237516870000
          Width = 128.534623481781000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Height = 39.784526315789500000
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object MemoRotSubtotal: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 2.040232118758430000
          Width = 107.112186234818000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Alunos:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoSubtotal: TfrxSysMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 2.040232118758430000
          Width = 128.534623481781000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotTotalTurmas: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 20.402321187584300000
          Width = 107.112186234818000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Turmas:')
          ParentFont = False
          WordWrap = False
        end
        object MemoTotalTurmas: TfrxMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 20.402321187584300000
          Width = 128.534623481781000000
          Height = 17.341973009446700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TOTALTURMAS]')
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
        Top = 343.937230000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
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
            'TUR04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MAT_CODIGO=MAT_CODIGO'
      'MAT_CLIENTE=MAT_CLIENTE'
      'MAT_TURMA=MAT_TURMA'
      'MAT_STATUS=MAT_STATUS'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ANO=TUR_ANO'
      'TUR_STATUS=TUR_STATUS'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_SABADO=TUR_SABADO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'VEN_NOME=VEN_NOME'
      'CLI_NOME=CLI_NOME'
      'PRESENCAS=PRESENCAS'
      'FALTAS=FALTAS'
      'AULASDADAS=AULASDADAS'
      'PERCENTUAL=PERCENTUAL')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 112
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select X.*,'
      
        'iif(X.AULASDADAS>0, X.PRESENCAS*100.00/X.AULASDADAS, 0) as PERCE' +
        'NTUAL'
      'from ('
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_STATUS, TUR_DESCR' +
        'ICAO, TUR_ENCONTROS, TUR_DTINICIO,'
      
        'TUR_DTTERMINO, TUR_PERIODO, TUR_ANO, TUR_STATUS, TUR_PROFESSOR, ' +
        'TUR_SABADO, TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA,'
      'TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, VEN_NOME, CLI_NOME,'
      
        '(select count(CHA_CODIGO) from CHAMADAS left join CALENDARIOS on' +
        ' CHA_CALENDARIO=CAL_CODIGO'
      
        ' where CHA_MATRICULA=MAT_CODIGO and (CAL_TIPO='#39'NORMAL'#39' or CAL_TI' +
        'PO='#39'EXTRA'#39') and CAL_STATUSCHAMADA='#39'F'#39' and CHA_PRESENCA='#39'P'#39') as P' +
        'RESENCAS,'
      
        '(select count(CHA_CODIGO) from CHAMADAS left join CALENDARIOS on' +
        ' CHA_CALENDARIO=CAL_CODIGO'
      
        ' where CHA_MATRICULA=MAT_CODIGO and (CAL_TIPO='#39'NORMAL'#39' or CAL_TI' +
        'PO='#39'EXTRA'#39') and CAL_STATUSCHAMADA='#39'F'#39' and CHA_PRESENCA='#39'X'#39') as F' +
        'ALTAS,'
      '(select count(CAL_CODIGO) from CALENDARIOS'
      
        ' where CAL_TURMA=MAT_TURMA and (CAL_TIPO='#39'NORMAL'#39' or CAL_TIPO='#39'E' +
        'XTRA'#39') and CAL_STATUSCHAMADA='#39'F'#39') as AULASDADAS'
      'from MATRICULAS'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      ') X'
      'order by X.MAT_TURMA, X.CLI_NOME'
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
  object frxReport5: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR05'
    ReportOptions.LastChange = 46349.000000000000000000
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
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 625.906000000000000000
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
        Height = 18.362089068825900000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."TUR_PROFESSOR"'
        object MemoProfessorCodigo: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.402321187584300000
          DataField = 'TUR_PROFESSOR'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_PROFESSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoProfessorNome: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 408.046423751687000000
          Height = 20.402321187584300000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Height = 36.724178137651800000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset5."TUR_PERIODO"'
        object MemoRotPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 97.931141700404900000
          Top = 3.060348178137650000
          Width = 48.965570850202400000
          Height = 16.321856950067500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo:')
          ParentFont = False
          WordWrap = False
        end
        object MemoPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 149.957060728745000000
          Top = 3.060348178137650000
          Width = 38.764410256410300000
          Height = 16.321856950067500000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoAno: TfrxMemoView
          AllowVectorExport = True
          Left = 190.761703103914000000
          Top = 3.060348178137650000
          Width = 104.051838056680000000
          Height = 16.321856950067500000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 21.422437246963600000
          Width = 32.643713900134900000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit2: TfrxMemoView
          AllowVectorExport = True
          Left = 35.704062078272600000
          Top = 21.422437246963600000
          Width = 194.842167341430000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit3: TfrxMemoView
          AllowVectorExport = True
          Left = 230.546229419703000000
          Top = 21.422437246963600000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Alunos')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit4: TfrxMemoView
          AllowVectorExport = True
          Left = 272.370987854251000000
          Top = 21.422437246963600000
          Width = 19.382205128205100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'A')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit5: TfrxMemoView
          AllowVectorExport = True
          Left = 291.753192982456000000
          Top = 21.422437246963600000
          Width = 19.382205128205100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'B')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit6: TfrxMemoView
          AllowVectorExport = True
          Left = 311.135398110661000000
          Top = 21.422437246963600000
          Width = 19.382205128205100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'V')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit7: TfrxMemoView
          AllowVectorExport = True
          Left = 333.577951417004000000
          Top = 21.422437246963600000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit8: TfrxMemoView
          AllowVectorExport = True
          Left = 390.704450742240000000
          Top = 21.422437246963600000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'In'#237'cio')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit9: TfrxMemoView
          AllowVectorExport = True
          Left = 447.830950067476000000
          Top = 21.422437246963600000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit10: TfrxMemoView
          AllowVectorExport = True
          Left = 503.937333333333000000
          Top = 21.422437246963600000
          Width = 37.744294197031000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Enc.')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit11: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Seg')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit12: TfrxMemoView
          AllowVectorExport = True
          Left = 571.264993252362000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ter')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit13: TfrxMemoView
          AllowVectorExport = True
          Left = 598.808126855600000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qua')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit14: TfrxMemoView
          AllowVectorExport = True
          Left = 626.351260458839000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qui')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit15: TfrxMemoView
          AllowVectorExport = True
          Left = 653.894394062078000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sex')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit16: TfrxMemoView
          AllowVectorExport = True
          Left = 681.437527665317000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sab')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit17: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 21.422437246963600000
          Width = 26.523017543859600000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dom')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit18: TfrxMemoView
          AllowVectorExport = True
          Left = 735.503678812416000000
          Top = 21.422437246963600000
          Width = 18.362089068825900000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'St.')
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
        Height = 13.261508771929800000
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object MemoDet1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.020116059379220000
          Width = 32.643713900134900000
          Height = 13.261508771929800000
          DataField = 'TUR_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet2: TfrxMemoView
          AllowVectorExport = True
          Left = 35.704062078272600000
          Top = 1.020116059379220000
          Width = 194.842167341430000000
          Height = 13.261508771929800000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet3: TfrxMemoView
          AllowVectorExport = True
          Left = 230.546229419703000000
          Top = 1.020116059379220000
          Width = 40.804642375168700000
          Height = 13.261508771929800000
          DataField = 'ALUNOS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."ALUNOS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet4: TfrxMemoView
          AllowVectorExport = True
          Left = 272.370987854251000000
          Top = 1.020116059379220000
          Width = 19.382205128205100000
          Height = 13.261508771929800000
          DataField = 'ALUNOS_A'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."ALUNOS_A"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet5: TfrxMemoView
          AllowVectorExport = True
          Left = 291.753192982456000000
          Top = 1.020116059379220000
          Width = 19.382205128205100000
          Height = 13.261508771929800000
          DataField = 'ALUNOS_B'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."ALUNOS_B"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet6: TfrxMemoView
          AllowVectorExport = True
          Left = 311.135398110661000000
          Top = 1.020116059379220000
          Width = 19.382205128205100000
          Height = 13.261508771929800000
          DataField = 'ALUNOS_V'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."ALUNOS_V"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet7: TfrxMemoView
          AllowVectorExport = True
          Left = 333.577951417004000000
          Top = 1.020116059379220000
          Width = 55.086267206477700000
          Height = 13.261508771929800000
          DataField = 'TUR_DTCADASTRO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet8: TfrxMemoView
          AllowVectorExport = True
          Left = 390.704450742240000000
          Top = 1.020116059379220000
          Width = 55.086267206477700000
          Height = 13.261508771929800000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet9: TfrxMemoView
          AllowVectorExport = True
          Left = 447.830950067476000000
          Top = 1.020116059379220000
          Width = 55.086267206477700000
          Height = 13.261508771929800000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet10: TfrxMemoView
          AllowVectorExport = True
          Left = 503.937333333333000000
          Top = 1.020116059379220000
          Width = 37.744294197031000000
          Height = 13.261508771929800000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet11: TfrxMemoView
          AllowVectorExport = True
          Left = 543.721859649123000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_SEGUNDA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_SEGUNDA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet12: TfrxMemoView
          AllowVectorExport = True
          Left = 571.264993252362000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_TERCA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_TERCA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet13: TfrxMemoView
          AllowVectorExport = True
          Left = 598.808126855600000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_QUARTA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_QUARTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet14: TfrxMemoView
          AllowVectorExport = True
          Left = 626.351260458839000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_QUINTA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_QUINTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet15: TfrxMemoView
          AllowVectorExport = True
          Left = 653.894394062078000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_SEXTA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_SEXTA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet16: TfrxMemoView
          AllowVectorExport = True
          Left = 681.437527665317000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_SABADO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_SABADO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet17: TfrxMemoView
          AllowVectorExport = True
          Left = 710.000777327935000000
          Top = 1.020116059379220000
          Width = 26.523017543859600000
          Height = 13.261508771929800000
          DataField = 'TUR_DOMINGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_DOMINGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet18: TfrxMemoView
          AllowVectorExport = True
          Left = 735.503678812416000000
          Top = 1.020116059379220000
          Width = 18.362089068825900000
          Height = 13.261508771929800000
          DataField = 'TUR_STATUS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."TUR_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 29.583365721997300000
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        object MemoPeriodoRot: TfrxMemoView
          AllowVectorExport = True
          Left = 14.281624831309000000
          Top = 7.140812415654520000
          Width = 213.204256410256000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Turmas e Alunos no Per'#237'odo:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoPeriodoTurmas: TfrxSysMemoView
          AllowVectorExport = True
          Left = 230.546229419703000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoPeriodoBarra: TfrxMemoView
          AllowVectorExport = True
          Left = 272.370987854251000000
          Top = 7.140812415654520000
          Width = 5.100580296896090000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoPeriodoAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 278.491684210526000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."ALUNOS">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 29.583365721997300000
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        object MemoProfessorRot: TfrxMemoView
          AllowVectorExport = True
          Left = 18.362089068825900000
          Top = 7.140812415654520000
          Width = 209.123792172740000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Turmas e Alunos Professor:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoProfessorTurmas: TfrxSysMemoView
          AllowVectorExport = True
          Left = 230.546229419703000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoProfessorBarra: TfrxMemoView
          AllowVectorExport = True
          Left = 272.370987854251000000
          Top = 7.140812415654520000
          Width = 5.100580296896090000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoProfessorAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 278.491684210526000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."ALUNOS">,MasterData1)]')
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
        Height = 29.583365721997300000
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        object MemoGeralRot: TfrxMemoView
          AllowVectorExport = True
          Left = 77.528820512820500000
          Top = 7.140812415654520000
          Width = 149.957060728745000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Turmas e Alunos:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGeralTurmas: TfrxSysMemoView
          AllowVectorExport = True
          Left = 230.546229419703000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoGeralBarra: TfrxMemoView
          AllowVectorExport = True
          Left = 272.370987854251000000
          Top = 7.140812415654520000
          Width = 5.100580296896090000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '/')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGeralAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 278.491684210526000000
          Top = 7.140812415654520000
          Width = 40.804642375168700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."ALUNOS">,MasterData1)]')
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
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.906000000000000000
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
            'TUR05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TUR_CODIGO=TUR_CODIGO'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_DTCADASTRO=TUR_DTCADASTRO'
      'TUR_STATUS=TUR_STATUS'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ANO=TUR_ANO'
      'VEN_NOME=VEN_NOME'
      'ALUNOS=ALUNOS'
      'ALUNOS_A=ALUNOS_A'
      'ALUNOS_B=ALUNOS_B'
      'ALUNOS_V=ALUNOS_V')
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 112
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      
        'select TUR_CODIGO, TUR_DESCRICAO, TUR_PROFESSOR, TUR_DTINICIO, T' +
        'UR_DTTERMINO, TUR_DTCADASTRO, TUR_STATUS, TUR_ENCONTROS,'
      
        'TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR_SEXTA, TUR_S' +
        'ABADO, TUR_DOMINGO, TUR_PERIODO, TUR_ANO, VEN_NOME,'
      
        '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and ' +
        'MAT_STATUS='#39'A'#39') as ALUNOS,'
      
        '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and ' +
        'MAT_STATUS='#39'A'#39' and MAT_TIPO='#39'A'#39') as ALUNOS_A,'
      
        '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and ' +
        'MAT_STATUS='#39'A'#39' and MAT_TIPO='#39'B'#39') as ALUNOS_B,'
      
        '(select count(*) from MATRICULAS where MAT_TURMA=TUR_CODIGO and ' +
        'MAT_STATUS='#39'A'#39' and MAT_TIPO='#39'V'#39') as ALUNOS_V'
      'from TURMAS'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'order by VEN_NOME, TUR_PERIODO, TUR_DESCRICAO'
      '')
    Left = 336
    Top = 160
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object frxReport6: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR06'
    ReportOptions.LastChange = 46349.000000000000000000
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
    OnBeforePrint = frxReport6BeforePrint
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
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 625.906000000000000000
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
        Height = 55.086267206477700000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset6."CAL_TURMA"'
        ReprintOnNewPage = True
        StartNewPage = True
        object MemoTurma: TfrxMemoView
          AllowVectorExport = True
          Left = 8.160928475033740000
          Width = 49.985686909581600000
          Height = 20.402321187584300000
          DataField = 'CAL_TURMA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."CAL_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTurDescricao: TfrxMemoView
          AllowVectorExport = True
          Left = 65.287427800269900000
          Width = 327.457255060729000000
          Height = 20.402321187584300000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 393.764798920378000000
          Top = 1.020116059379220000
          Width = 75.488588394062100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Encontros:')
          ParentFont = False
          WordWrap = False
        end
        object MemoEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 470.273503373819000000
          Top = 1.020116059379220000
          Width = 30.603481781376500000
          Height = 15.301740890688300000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotDias: TfrxMemoView
          AllowVectorExport = True
          Left = 506.997681511471000000
          Top = 1.020116059379220000
          Width = 27.543133603238900000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
        end
        object MemoDias: TfrxMemoView
          AllowVectorExport = True
          Left = 537.601163292847000000
          Top = 1.020116059379220000
          Width = 132.615087719298000000
          Height = 15.301740890688300000
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
        object MemoRotStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 669.196134952766000000
          Top = 1.020116059379220000
          Width = 52.025919028340100000
          Height = 15.301740890688300000
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
          WordWrap = False
        end
        object MemoStatus: TfrxMemoView
          AllowVectorExport = True
          Left = 723.262286099865000000
          Top = 1.020116059379220000
          Width = 27.543133603238900000
          Height = 15.301740890688300000
          DataField = 'TUR_STATUS'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 408.046423751687000000
          Top = 17.341973009446700000
          Width = 61.206963562753000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 470.273503373819000000
          Top = 17.341973009446700000
          Width = 167.299033738192000000
          Height = 15.301740890688300000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotPerAno: TfrxMemoView
          AllowVectorExport = True
          Left = 640.632885290148000000
          Top = 17.341973009446700000
          Width = 52.025919028340100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 693.678920377868000000
          Top = 17.341973009446700000
          Width = 24.482785425101200000
          Height = 15.301740890688300000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_PERIODO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoAno: TfrxMemoView
          AllowVectorExport = True
          Left = 719.181821862348000000
          Top = 17.341973009446700000
          Width = 31.623597840755700000
          Height = 15.301740890688300000
          DataField = 'TUR_ANO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitContador: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 39.784526315789500000
          Width = 30.603481781376500000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '#')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitData: TfrxMemoView
          AllowVectorExport = True
          Left = 35.704062078272600000
          Top = 39.784526315789500000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitTipo: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 39.784526315789500000
          Width = 68.347775978407500000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitConteudo: TfrxMemoView
          AllowVectorExport = True
          Left = 163.218569500675000000
          Top = 39.784526315789500000
          Width = 102.011605937922000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conte'#250'do')
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
        Height = 14.281624831309000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        Stretched = True
        object MemoContador: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.020116059379220000
          Width = 30.603481781376500000
          Height = 13.261508771929800000
          DataField = 'CAL_CONTADOR'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CAL_CONTADOR"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoData: TfrxMemoView
          AllowVectorExport = True
          Left = 35.704062078272600000
          Top = 1.020116059379220000
          Width = 55.086267206477700000
          Height = 13.261508771929800000
          DataField = 'CAL_DATA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CAL_DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTipo: TfrxMemoView
          AllowVectorExport = True
          Left = 92.830561403508800000
          Top = 1.020116059379220000
          Width = 68.347775978407500000
          Height = 13.261508771929800000
          DataField = 'CAL_TIPO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CAL_TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoConteudo: TfrxMemoView
          AllowVectorExport = True
          Left = 163.218569500675000000
          Top = 1.020116059379220000
          Width = 588.606966261808000000
          Height = 13.261508771929800000
          StretchMode = smActualHeight
          DataField = 'CTO_CONTEUDO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."CTO_CONTEUDO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Height = 12.241392712550600000
        Top = 222.992270000000000000
        Width = 755.906000000000000000
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
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.906000000000000000
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
            'TUR06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CAL_CODIGO=CAL_CODIGO'
      'CAL_TURMA=CAL_TURMA'
      'CAL_CONTADOR=CAL_CONTADOR'
      'CAL_DATA=CAL_DATA'
      'CAL_TIPO=CAL_TIPO'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'TUR_STATUS=TUR_STATUS'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ANO=TUR_ANO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'VEN_NOME=VEN_NOME'
      'CTO_CONTEUDO=CTO_CONTEUDO')
    DataSet = QY06
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 112
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      
        'select CAL_CODIGO, CAL_TURMA, CAL_CONTADOR, CAL_DATA, CAL_TIPO, ' +
        'TUR_DESCRICAO, TUR_ENCONTROS, TUR_STATUS, TUR_PERIODO, TUR_ANO,'
      
        'TUR_DOMINGO, TUR_SEGUNDA, TUR_TERCA, TUR_QUARTA, TUR_QUINTA, TUR' +
        '_SEXTA, TUR_SABADO, VEN_NOME,'
      
        '(select first 1 CTO_CONTEUDO from CONTEUDOS where CTO_CALENDARIO' +
        '=CAL_CODIGO order by CTO_CODIGO) as CTO_CONTEUDO'
      'from CALENDARIOS'
      'left join TURMAS on CAL_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'order by CAL_TURMA, CAL_CONTADOR'
      '')
    Left = 408
    Top = 160
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
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR07'
    ReportOptions.LastChange = 46349.000000000000000000
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
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
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
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 625.906000000000000000
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
          WordWrap = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 15.301740890688300000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
        object MemoTit1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Width = 55.086267206477700000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit2: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Width = 242.787622132254000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit3: TfrxMemoView
          AllowVectorExport = True
          Left = 309.095165991903000000
          Width = 67.327659919028300000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit4: TfrxMemoView
          AllowVectorExport = True
          Left = 378.463058029690000000
          Width = 63.247195681511500000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'In'#237'cio')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit5: TfrxMemoView
          AllowVectorExport = True
          Left = 443.750485829959000000
          Width = 63.247195681511500000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
          WordWrap = False
        end
        object MemoTit6: TfrxMemoView
          AllowVectorExport = True
          Left = 510.058029689609000000
          Width = 66.307543859649100000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo')
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
        Height = 13.261508771929800000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object MemoDet1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.060348178137650000
          Top = 1.020116059379220000
          Width = 55.086267206477700000
          Height = 13.261508771929800000
          DataField = 'TUR_CODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet2: TfrxMemoView
          AllowVectorExport = True
          Left = 60.186847503373800000
          Top = 1.020116059379220000
          Width = 242.787622132254000000
          Height = 13.261508771929800000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet3: TfrxMemoView
          AllowVectorExport = True
          Left = 309.095165991903000000
          Top = 1.020116059379220000
          Width = 67.327659919028300000
          Height = 13.261508771929800000
          DataField = 'TUR_DTCADASTRO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet4: TfrxMemoView
          AllowVectorExport = True
          Left = 378.463058029690000000
          Top = 1.020116059379220000
          Width = 63.247195681511500000
          Height = 13.261508771929800000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet5: TfrxMemoView
          AllowVectorExport = True
          Left = 443.750485829959000000
          Top = 1.020116059379220000
          Width = 63.247195681511500000
          Height = 13.261508771929800000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoDet6: TfrxMemoView
          AllowVectorExport = True
          Left = 510.058029689609000000
          Top = 1.020116059379220000
          Width = 66.307543859649100000
          Height = 13.261508771929800000
          DataField = 'TUR_PERIODO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."TUR_PERIODO"]')
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
        Height = 29.583365721997300000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        object MemoRotTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 6.120696356275300000
          Top = 7.140812415654520000
          Width = 107.112186234818000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Turmas:')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoTotal: TfrxSysMemoView
          AllowVectorExport = True
          Left = 119.353578947368000000
          Top = 7.140812415654520000
          Width = 102.011605937922000000
          Height = 15.301740890688300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
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
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.906000000000000000
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
            'TUR07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TUR_CODIGO=TUR_CODIGO'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_DTCADASTRO=TUR_DTCADASTRO'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_PERIODO=TUR_PERIODO')
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 112
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      
        'select TUR_CODIGO, TUR_DESCRICAO, TUR_DTCADASTRO, TUR_DTINICIO, ' +
        'TUR_DTTERMINO, TUR_PERIODO from TURMAS'
      'where (TUR_DTINICIO is null) or (TUR_DTTERMINO is null)'
      'order by TUR_CODIGO'
      '')
    Left = 480
    Top = 160
  end
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 208
  end
  object frxReport8: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46349.000000000000000000
    ReportOptions.Name = 'TUR08'
    ReportOptions.LastChange = 46349.000000000000000000
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
    OnBeforePrint = frxReport8BeforePrint
    Left = 552
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
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
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        Frame.LeftLine.Width = 1.000000000000000000
        Frame.TopLine.Width = 1.000000000000000000
        Frame.RightLine.Width = 1.000000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 1084.724409000000000000
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
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 15.456694140000000000
          Width = 954.724409000000000000
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
          WordWrap = False
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 29.236240000000000000
          Width = 954.724409000000000000
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
          WordWrap = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 954.724409000000000000
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
        Height = 85.155934912149500000
        Top = 105.826840000000000000
        Width = 1084.724409000000000000
        Condition = 'frxDBDataset8."MAT_TURMA"'
        ReprintOnNewPage = True
        StartNewPage = True
        object MemoTurma: TfrxMemoView
          AllowVectorExport = True
          Left = 8.110089039252340000
          Width = 49.674295365420600000
          Height = 20.275222598130800000
          DataField = 'MAT_TURMA'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_TURMA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoTurDescricao: TfrxMemoView
          AllowVectorExport = True
          Left = 64.880712314018700000
          Width = 304.128338971963000000
          Height = 20.275222598130800000
          DataField = 'TUR_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 375.091618065421000000
          Top = 2.027522259813080000
          Width = 61.839428924299100000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Professor:')
          ParentFont = False
          WordWrap = False
        end
        object MemoProfessor: TfrxMemoView
          AllowVectorExport = True
          Left = 439.972330379439000000
          Top = 2.027522259813080000
          Width = 202.752225981308000000
          Height = 16.220178078504700000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 644.752078620561000000
          Top = 2.027522259813080000
          Width = 50.688056495327100000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'In'#237'cio:')
          ParentFont = False
          WordWrap = False
        end
        object MemoInicio: TfrxMemoView
          AllowVectorExport = True
          Left = 697.467657375701000000
          Top = 2.027522259813080000
          Width = 75.018323613084100000
          Height = 16.220178078504700000
          DataField = 'TUR_DTINICIO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_DTINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 643.738317490654000000
          Top = 20.275222598130800000
          Width = 51.701817625233600000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'T'#233'rmino:')
          ParentFont = False
          WordWrap = False
        end
        object MemoTermino: TfrxMemoView
          AllowVectorExport = True
          Left = 697.467657375701000000
          Top = 20.275222598130800000
          Width = 74.004562483177600000
          Height = 16.220178078504700000
          DataField = 'TUR_DTTERMINO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_DTTERMINO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotDias: TfrxMemoView
          AllowVectorExport = True
          Left = 773.499742118691000000
          Top = 2.027522259813080000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dias:')
          ParentFont = False
          WordWrap = False
        end
        object MemoDias: TfrxMemoView
          AllowVectorExport = True
          Left = 823.174037484112000000
          Top = 2.027522259813080000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 773.499742118691000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hor'#225'rio:')
          ParentFont = False
          WordWrap = False
        end
        object MemoHorario: TfrxMemoView
          AllowVectorExport = True
          Left = 823.174037484112000000
          Top = 20.275222598130800000
          Width = 167.270586434579000000
          Height = 16.220178078504700000
          DataField = 'TUR_HORARIO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_HORARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotSala: TfrxMemoView
          AllowVectorExport = True
          Left = 407.531974222430000000
          Top = 20.275222598130800000
          Width = 29.399072767289700000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sala:')
          ParentFont = False
          WordWrap = False
        end
        object MemoSala: TfrxMemoView
          AllowVectorExport = True
          Left = 439.972330379439000000
          Top = 20.275222598130800000
          Width = 202.752225981308000000
          Height = 16.220178078504700000
          DataField = 'TUR_SALA'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_SALA"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 202.752225981308000000
          Top = 20.275222598130800000
          Width = 46.633011975700900000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Enc:')
          ParentFont = False
          WordWrap = False
        end
        object MemoEncontros: TfrxMemoView
          AllowVectorExport = True
          Left = 252.426521346729000000
          Top = 20.275222598130800000
          Width = 21.288983728037400000
          Height = 16.220178078504700000
          DataField = 'TUR_ENCONTROS'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_ENCONTROS"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoRotPeriodo: TfrxMemoView
          AllowVectorExport = True
          Left = 273.715505074766000000
          Top = 20.275222598130800000
          Width = 76.032084742990600000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo/Ano:')
          ParentFont = False
          WordWrap = False
        end
        object MemoPeriodoAno: TfrxMemoView
          AllowVectorExport = True
          Left = 351.775112077570000000
          Top = 20.275222598130800000
          Width = 54.743101014953300000
          Height = 16.220178078504700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."TUR_PERIODO"] [frxDBDataset8."TUR_ANO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoGrupoLicoes: TfrxMemoView
          AllowVectorExport = True
          Left = 205.793509371028000000
          Top = 37.509161806542000000
          Width = 440.986091509346000000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Li'#231#245'es / Exerc'#237'cios / Revis'#245'es')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoGrupoMedia: TfrxMemoView
          AllowVectorExport = True
          Left = 646.779600880374000000
          Top = 37.509161806542000000
          Width = 50.688056495327100000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoGrupoAuditiva: TfrxMemoView
          AllowVectorExport = True
          Left = 697.467657375701000000
          Top = 37.509161806542000000
          Width = 258.509088126168000000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#225'tica de compreens'#227'o auditiva')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitD1: TfrxMemoView
          AllowVectorExport = True
          Left = 955.976745501869000000
          Top = 37.509161806542000000
          Width = 31.426595027102800000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D1')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitD2: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 37.509161806542000000
          Width = 31.426595027102800000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D2')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitL: TfrxMemoView
          AllowVectorExport = True
          Left = 1018.829935556070000000
          Top = 37.509161806542000000
          Width = 31.426595027102800000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'L')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitC: TfrxMemoView
          AllowVectorExport = True
          Left = 1050.256530583180000000
          Top = 37.509161806542000000
          Width = 33.454117286915900000
          Height = 28.385311637383200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitMat: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 67.921995703738300000
          Width = 33.454117286915900000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat.')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 67.921995703738300000
          Width = 167.270586434579000000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aluno')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitNota1: TfrxMemoView
          AllowVectorExport = True
          Left = 205.793509371028000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota2: TfrxMemoView
          AllowVectorExport = True
          Left = 235.192582138318000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota3: TfrxMemoView
          AllowVectorExport = True
          Left = 264.591654905607000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota4: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota5: TfrxMemoView
          AllowVectorExport = True
          Left = 323.389800440187000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota6: TfrxMemoView
          AllowVectorExport = True
          Left = 352.788873207477000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota7: TfrxMemoView
          AllowVectorExport = True
          Left = 382.187945974766000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota8: TfrxMemoView
          AllowVectorExport = True
          Left = 411.587018742056000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota9: TfrxMemoView
          AllowVectorExport = True
          Left = 440.986091509346000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota10: TfrxMemoView
          AllowVectorExport = True
          Left = 470.385164276635000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota11: TfrxMemoView
          AllowVectorExport = True
          Left = 499.784237043925000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.183309811215000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota13: TfrxMemoView
          AllowVectorExport = True
          Left = 558.582382578505000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota14: TfrxMemoView
          AllowVectorExport = True
          Left = 587.981455345794000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitNota15: TfrxMemoView
          AllowVectorExport = True
          Left = 617.380528113084000000
          Top = 65.894473443925200000
          Width = 29.399072767289700000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitMedia: TfrxMemoView
          AllowVectorExport = True
          Left = 646.779600880374000000
          Top = 65.894473443925200000
          Width = 50.688056495327100000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'dia')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud1: TfrxMemoView
          AllowVectorExport = True
          Left = 697.467657375701000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud2: TfrxMemoView
          AllowVectorExport = True
          Left = 714.701596584112000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud3: TfrxMemoView
          AllowVectorExport = True
          Left = 731.935535792523000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud4: TfrxMemoView
          AllowVectorExport = True
          Left = 749.169475000934000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud5: TfrxMemoView
          AllowVectorExport = True
          Left = 766.403414209346000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud6: TfrxMemoView
          AllowVectorExport = True
          Left = 783.637353417757000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud7: TfrxMemoView
          AllowVectorExport = True
          Left = 800.871292626168000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud8: TfrxMemoView
          AllowVectorExport = True
          Left = 818.105231834579000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud9: TfrxMemoView
          AllowVectorExport = True
          Left = 835.339171042991000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud10: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud11: TfrxMemoView
          AllowVectorExport = True
          Left = 869.807049459813000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud12: TfrxMemoView
          AllowVectorExport = True
          Left = 887.040988668224000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud13: TfrxMemoView
          AllowVectorExport = True
          Left = 904.274927876635000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud14: TfrxMemoView
          AllowVectorExport = True
          Left = 921.508867085047000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitAud15: TfrxMemoView
          AllowVectorExport = True
          Left = 938.742806293458000000
          Top = 65.894473443925200000
          Width = 17.233939208411200000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoTitCelD1: TfrxMemoView
          AllowVectorExport = True
          Left = 955.976745501869000000
          Top = 65.894473443925200000
          Width = 31.426595027102800000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitCelD2: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Top = 65.894473443925200000
          Width = 31.426595027102800000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitCelL: TfrxMemoView
          AllowVectorExport = True
          Left = 1018.829935556070000000
          Top = 65.894473443925200000
          Width = 31.426595027102800000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoTitCelC: TfrxMemoView
          AllowVectorExport = True
          Left = 1050.256530583180000000
          Top = 65.894473443925200000
          Width = 33.454117286915900000
          Height = 19.261461468224300000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
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
        Frame.Typ = [ftBottom]
        Height = 23.316505987850500000
        Top = 215.433210000000000000
        Width = 1084.724409000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object MemoMatricula: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 5.068805649532710000
          Width = 33.454117286915900000
          Height = 13.178894688785000000
          DataField = 'MAT_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."MAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoAluno: TfrxMemoView
          AllowVectorExport = True
          Left = 36.495400676635500000
          Top = 5.068805649532710000
          Width = 167.270586434579000000
          Height = 13.178894688785000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoNota1: TfrxMemoView
          AllowVectorExport = True
          Left = 205.793509371028000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota2: TfrxMemoView
          AllowVectorExport = True
          Left = 235.192582138318000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota3: TfrxMemoView
          AllowVectorExport = True
          Left = 264.591654905607000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota4: TfrxMemoView
          AllowVectorExport = True
          Left = 293.990727672897000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota5: TfrxMemoView
          AllowVectorExport = True
          Left = 323.389800440187000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota6: TfrxMemoView
          AllowVectorExport = True
          Left = 352.788873207477000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota7: TfrxMemoView
          AllowVectorExport = True
          Left = 382.187945974766000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota8: TfrxMemoView
          AllowVectorExport = True
          Left = 411.587018742056000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota9: TfrxMemoView
          AllowVectorExport = True
          Left = 440.986091509346000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota10: TfrxMemoView
          AllowVectorExport = True
          Left = 470.385164276635000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota11: TfrxMemoView
          AllowVectorExport = True
          Left = 499.784237043925000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.183309811215000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota13: TfrxMemoView
          AllowVectorExport = True
          Left = 558.582382578505000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota14: TfrxMemoView
          AllowVectorExport = True
          Left = 587.981455345794000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoNota15: TfrxMemoView
          AllowVectorExport = True
          Left = 617.380528113084000000
          Width = 29.399072767289700000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoMedia: TfrxMemoView
          AllowVectorExport = True
          Left = 646.779600880374000000
          Width = 50.688056495327100000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoAud1: TfrxMemoView
          AllowVectorExport = True
          Left = 697.467657375701000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud2: TfrxMemoView
          AllowVectorExport = True
          Left = 714.701596584112000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud3: TfrxMemoView
          AllowVectorExport = True
          Left = 731.935535792523000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud4: TfrxMemoView
          AllowVectorExport = True
          Left = 749.169475000934000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud5: TfrxMemoView
          AllowVectorExport = True
          Left = 766.403414209346000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud6: TfrxMemoView
          AllowVectorExport = True
          Left = 783.637353417757000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud7: TfrxMemoView
          AllowVectorExport = True
          Left = 800.871292626168000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud8: TfrxMemoView
          AllowVectorExport = True
          Left = 818.105231834579000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud9: TfrxMemoView
          AllowVectorExport = True
          Left = 835.339171042991000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud10: TfrxMemoView
          AllowVectorExport = True
          Left = 852.573110251402000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud11: TfrxMemoView
          AllowVectorExport = True
          Left = 869.807049459813000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud12: TfrxMemoView
          AllowVectorExport = True
          Left = 887.040988668224000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud13: TfrxMemoView
          AllowVectorExport = True
          Left = 904.274927876635000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud14: TfrxMemoView
          AllowVectorExport = True
          Left = 921.508867085047000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoAud15: TfrxMemoView
          AllowVectorExport = True
          Left = 938.742806293458000000
          Width = 17.233939208411200000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoCelD1: TfrxMemoView
          AllowVectorExport = True
          Left = 955.976745501869000000
          Width = 31.426595027102800000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoCelD2: TfrxMemoView
          AllowVectorExport = True
          Left = 987.403340528972000000
          Width = 31.426595027102800000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoCelL: TfrxMemoView
          AllowVectorExport = True
          Left = 1018.829935556070000000
          Width = 31.426595027102800000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
        object MemoCelC: TfrxMemoView
          AllowVectorExport = True
          Left = 1050.256530583180000000
          Width = 33.454117286915900000
          Height = 23.316505987850500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 33.454117286915900000
        Top = 264.567100000000000000
        Width = 1084.724409000000000000
        object SysMemoTotalAlunos: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Width = 202.752225981308000000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Alunos: [COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object MemoObservacoes: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 16.220178078504700000
          Width = 202.752225981308000000
          Height = 15.206416948598100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es:')
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
        Top = 325.039370000000000000
        Width = 1084.724409000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 708.724409000000000000
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
            'TUR08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemoGerado: TfrxSysMemoView
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
    end
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MAT_CODIGO=MAT_CODIGO'
      'MAT_CLIENTE=MAT_CLIENTE'
      'MAT_MEDIAFINAL=MAT_MEDIAFINAL'
      'MAT_TURMA=MAT_TURMA'
      'CLI_NOME=CLI_NOME'
      'TUR_DESCRICAO=TUR_DESCRICAO'
      'TUR_PROFESSOR=TUR_PROFESSOR'
      'TUR_SALA=TUR_SALA'
      'TUR_DTINICIO=TUR_DTINICIO'
      'TUR_DTTERMINO=TUR_DTTERMINO'
      'TUR_HORARIO=TUR_HORARIO'
      'TUR_DOMINGO=TUR_DOMINGO'
      'TUR_SEGUNDA=TUR_SEGUNDA'
      'TUR_TERCA=TUR_TERCA'
      'TUR_QUARTA=TUR_QUARTA'
      'TUR_QUINTA=TUR_QUINTA'
      'TUR_SEXTA=TUR_SEXTA'
      'TUR_SABADO=TUR_SABADO'
      'TUR_PERIODO=TUR_PERIODO'
      'TUR_ANO=TUR_ANO'
      'TUR_ENCONTROS=TUR_ENCONTROS'
      'VEN_NOME=VEN_NOME')
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 112
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      
        'select MAT_CODIGO, MAT_CLIENTE, MAT_MEDIAFINAL, MAT_TURMA, CLI_N' +
        'OME, TUR_DESCRICAO, TUR_PROFESSOR, TUR_SALA,'
      
        'TUR_DTINICIO, TUR_DTTERMINO, TUR_HORARIO, TUR_DOMINGO, TUR_SEGUN' +
        'DA, TUR_TERCA, TUR_QUARTA,'
      
        'TUR_QUINTA, TUR_SEXTA, TUR_SABADO, TUR_PERIODO, TUR_ANO, TUR_ENC' +
        'ONTROS, VEN_NOME from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'order by MAT_TURMA, CLI_NOME'
      '')
    Left = 552
    Top = 160
  end
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 208
  end
  object QY08a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08a
    SQL.Strings = (
      'select first 15 EXE_NOTA from EXERCICIOS'
      'where EXE_MATRICULA=:matricula'
      'order by EXE_DTCADASTRO')
    Left = 552
    Top = 256
    ParamData = <
      item
        Name = 'MATRICULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR08a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 304
  end
  object QY08b: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08b
    SQL.Strings = (
      'select avg(EXE_NOTA) as MEDIA from EXERCICIOS'
      'where EXE_MATRICULA=:matricula')
    Left = 552
    Top = 352
    ParamData = <
      item
        Name = 'MATRICULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR08b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 400
  end
end
