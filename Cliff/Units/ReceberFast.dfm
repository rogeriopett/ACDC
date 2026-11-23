object FormReceberFast: TFormReceberFast
  Left = 0
  Top = 0
  Caption = 'FormReceberFast'
  ClientHeight = 639
  ClientWidth = 1232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 312
    Top = 16
    Width = 319
    Height = 417
    Lines.Strings = (
      '08 - Carn'#234' de pagamentos'
      '01 - Contas a receber por cliente paisagem'
      '09 - Contas a receber por data'
      '10 - Contas a receber por data sint'#233'tico'
      '03 - Contas a receber por receita sint'#233'tico'
      '04 - Contas a receber por tipo de documento sint'#233'tico'
      '05 - Contas a receber por vendedor'
      '02 - Contas a receber por vendedor sint'#233'tico'
      '06 - Recibo de pagamento - 1 via'
      '07 - Recibo de pagamento - 2 vias'
      '11 - Contas a receber por receita anal'#237'tico'
      '12 - Contas a receber por cliente retrato')
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
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
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
  object frxReport12: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Contas a Receber'
    ReportOptions.LastChange = 44694.639665104170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
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
        Name = 'DATA'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = Null
      end
      item
        Name = 'TIPODOCTO'
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
        Name = 'REC_CODIGO'
        Value = Null
      end
      item
        Name = 'REC_DESCRICAO'
        Value = Null
      end
      item
        Name = 'AGR_CODIGO'
        Value = Null
      end
      item
        Name = 'AGR_DESCRICAO'
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
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_CODIGO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."REE_CODIGO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 292.283369370000000000
          Width = 15.118110240000000000
          Height = 13.228346460000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          StretchMode = smActualHeight
          DataField = 'REE_STATUS'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 307.558979450000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_DTEMISSAO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 367.275820000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_DTVENCIMENTO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 204.732198030000000000
          Width = 86.929133860000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_NUMDOCTO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."REE_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 427.748300000000000000
          Width = 58.582545350000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_DTPAGAMENTO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_DTPAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 487.220780000000000000
          Width = 83.149577010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_VALOR'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
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
            '[frxDBDataset12."REE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 572.259810790000000000
          Width = 83.149577010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_VALORPAGO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
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
            '[frxDBDataset12."REE_VALORPAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 720.890230000000000000
          Width = 34.015687010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_VENDEDOR'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_VENDEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Width = 102.047285590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_TIPODOCTO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."REE_TIPODOCTO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 149.842610000000000000
          Width = 52.913297950000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_VENDA'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."REE_VENDA"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 692.653990000000000000
          Width = 26.456627010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_RECEITA'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_RECEITA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 34.015687010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_CONTA'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset12."REE_CONTA"]')
          ParentFont = False
          WordWrap = False
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
        Height = 28.346466460000000000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset12."CLI_NOME">'
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 14.118120000000000000
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
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 292.283369370000000000
          Top = 14.118120000000000000
          Width = 15.118110240000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'S.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 204.732198030000000000
          Top = 14.118120000000000000
          Width = 86.929133860000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'm Docto.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 307.558979450000000000
          Top = 14.118120000000000000
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
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 487.220780000000000000
          Top = 14.118120000000000000
          Width = 83.149577010000000000
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
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 572.259810790000000000
          Top = 14.118120000000000000
          Width = 83.149577010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 367.275820000000000000
          Top = 14.118120000000000000
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
            'Vecto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 427.748300000000000000
          Top = 14.118120000000000000
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
            'Pagto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 721.890230000000000000
          Top = 14.118120000000000000
          Width = 34.015687010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vend.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 149.842610000000000000
          Top = 14.118120000000000000
          Width = 52.913297950000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 46.354360000000000000
          Top = 14.118120000000000000
          Width = 102.047285590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Docto.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Width = 45.354277010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REE_CLIENTE'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."REE_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 47.913420000000000000
          Width = 631.181387950000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 692.653990000000000000
          Top = 14.118120000000000000
          Width = 26.456627010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rec.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 14.118120000000000000
          Width = 34.015687010000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
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
        Height = 26.456692910000000000
        Top = 328.819110000000000000
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
          Left = 487.220780000000000000
          Top = 1.889763780000000000
          Width = 83.149577010000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."REE_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 572.259810790000000000
          Top = 1.889763780000000000
          Width = 83.149577010000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."REE_VALORPAGO">,MasterData1)]')
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
        Top = 464.882190000000000000
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
            'REC12 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Frame.Width = 0.500000000000000000
        Height = 26.456692910000000000
        Top = 415.748300000000000000
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
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 449.425480000000000000
          Top = 1.385590000000000000
          Width = 120.944877010000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."REE_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 572.259810790000000000
          Top = 1.385590000000000000
          Width = 120.944877010000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."REE_VALORPAGO">,MasterData1)]')
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
        Height = 71.811040710000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
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
          Left = 196.960730000000000000
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
          Left = 370.819110000000000000
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
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 445.953000000000000000
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
          Left = 41.674667600000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
          Left = 109.716562280000000000
          Top = 15.118120000000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 30.236240000000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 30.236240000000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 264.960730000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 30.236240000000000000
          Width = 227.679819310000000000
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
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 45.354360000000000000
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
            'Vendedor:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 110.000000000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
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
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 143.579776670000000000
          Top = 45.354360000000000000
          Width = 227.679819310000000000
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
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 41.837333800000000000
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
            'Data:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 109.716562280000000000
          Width = 84.498763330000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 378.378170000000000000
          Top = 45.354360000000000000
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
            'Receita:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 446.378170000000000000
          Top = 45.354360000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[REC_CODIGO]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 479.957946670000000000
          Top = 45.354360000000000000
          Width = 273.034179310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[REC_DESCRICAO]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 367.039580000000000000
          Top = 15.118120000000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo Docto:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 445.953000000000000000
          Top = 15.118120000000000000
          Width = 102.803195980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIPODOCTO]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 378.378170000000000000
          Top = 30.236240000000000000
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
            'Agrupador:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 445.953000000000000000
          Top = 30.236240000000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[AGR_CODIGO]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 479.532776670000000000
          Top = 30.236240000000000000
          Width = 273.034179310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[AGR_DESCRICAO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxDBDataset12'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REE_CLIENTE=REE_CLIENTE'
      'REE_CODIGO=REE_CODIGO'
      'REE_CONTA=REE_CONTA'
      'REE_DTEMISSAO=REE_DTEMISSAO'
      'REE_DTPAGAMENTO=REE_DTPAGAMENTO'
      'REE_DTVENCIMENTO=REE_DTVENCIMENTO'
      'REE_NUMDOCTO=REE_NUMDOCTO'
      'REE_RECEITA=REE_RECEITA'
      'REE_STATUS=REE_STATUS'
      'REE_TIPODOCTO=REE_TIPODOCTO'
      'REE_VALOR=REE_VALOR'
      'REE_VALORPAGO=REE_VALORPAGO'
      'REE_VENDA=REE_VENDA'
      'REE_VENDEDOR=REE_VENDEDOR'
      'CLI_NOME=CLI_NOME')
    DataSet = QY12
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 120
  end
  object QY12: TFDQuery
    Connection = DMFirenet.FDConnection1
    Transaction = TR12
    SQL.Strings = (
      'select '
      'REE_CLIENTE,'
      'REE_CODIGO,'
      'REE_CONTA,'
      'REE_DTEMISSAO,'
      'REE_DTPAGAMENTO,'
      'REE_DTVENCIMENTO,'
      'REE_NUMDOCTO,'
      'REE_RECEITA,'
      'REE_STATUS,'
      'REE_TIPODOCTO,'
      'REE_VALOR,'
      'REE_VALORPAGO,'
      'REE_VENDA,'
      'REE_VENDEDOR,'
      'CLI_NOME'
      'from RECEBER'
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO'
      'order by CLI_NOME'
      '')
    Left = 48
    Top = 168
  end
  object TR12: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DMFirenet.FDConnection1
    Left = 48
    Top = 216
  end
end
