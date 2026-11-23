object FormGnreFast: TFormGnreFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de GNRE'
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
      '01 - gnre')
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
    ReportOptions.Name = 'GNRE'
    ReportOptions.LastChange = 44358.692221354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 1022.362856460000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267780000000000000
          Width = 491.338875590000000000
          Height = 36.661417320000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 172.078850000000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 135.062984800000000000
          Width = 491.338875590000000000
          Height = 36.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESERVADO '#192' FISCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566931570000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO CONTRIBUINTE EMITENTE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 491.522446400000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 98.267780000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PER'#205'ODO DE REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 73.700794720000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DOCUMENTO DE ORIGEM')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 49.133890000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA DE VENCIMENTO')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 24.566931570000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DE CONTROLE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO DA RECEITA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UF FAVORECIDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 105.826832670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PERIODOREFERENCIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PERIODOREFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 32.125984240000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONTROLE'
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
            '[frxDBDataset1."GNR_CONTROLE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 56.692942670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTVENCIMENTO'
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
            '[frxDBDataset1."GNR_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 7.559052670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'RECEITA'
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
            '[frxDBDataset1."RECEITA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 7.559052670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_ESTADOFAVORECIDO'
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
            '[frxDBDataset1."GNR_ESTADOFAVORECIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 81.259847390000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_NUMDOCTO'
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
            '[frxDBDataset1."GNR_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 98.267780000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 122.834657870000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'VALOR PRINCIPAL')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 147.401670000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'ATUALIZA'#199#195'O MONET'#193'RIA')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 171.968521020000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JUROS')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 196.535560000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MULTA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 221.102384170000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL A RECOLHER')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 264.567100000000000000
          Width = 383.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCode128C
          DataField = 'GNR_CODIGOBARRAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Expression = '85860000000550003101613201005611615164860100'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '85860000000550003101613201005611615164860100'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 105.826840000000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PARCELA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PARCELA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 130.393710540000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORPRINCIPAL'
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
            '[frxDBDataset1."GNR_VALORPRINCIPAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 154.960722670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORATUALIZACAO'
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
            '[frxDBDataset1."GNR_VALORATUALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 179.527573690000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORJUROS'
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
            '[frxDBDataset1."GNR_VALORJUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 204.094612670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORMULTA'
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
            '[frxDBDataset1."GNR_VALORMULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 228.661436840000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORTOTAL'
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
            '[frxDBDataset1."GNR_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 38.157498620000000000
          Width = 309.921435590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITRAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITRAZAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 51.913420000000000000
          Width = 423.307335590000000000
          Height = 15.118110236220500000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITENDERECO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 66.252010000000000000
          Width = 279.685195590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'EMP_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 79.149660000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITCEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITCEP"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 38.157498620000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RAZ'#195'O SOCIAL:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 51.913420000000000000
          Width = 56.692925590000000000
          Height = 15.118110236220500000
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
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 66.252010000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 79.149660000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 66.252010000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 79.149660000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 27.236240000000000000
          Width = 83.149635590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 38.157498620000000000
          Width = 109.606345590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 118.165430000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 105.826840000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 118.165430000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTCIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 142.259941380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONV'#202'NIO/PROTOCOLO:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 155.378061380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 142.259941380000000000
          Width = 374.173445590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONVENIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CONVENIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 192.756030000000000000
          Width = 483.779815590000000000
          Height = 35.905526460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_INFOCOMPLEMENTAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_INFOCOMPLEMENTAR"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 229.551330000000000000
          Width = 166.299295590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DOCUMENTO V'#193'LIDO PARA PAGAMENTO AT'#201':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 229.551330000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTLIMITE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DTLIMITE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 247.448980000000000000
          Width = 166.299295590000000000
          Height = 10.393683700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#170' VIA - BANCO')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 249.448980000000000000
          Width = 381.732505590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REPNUMERICA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."REPNUMERICA"]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 321.260050000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 66.252010000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITESTADO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 79.149660000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITFONE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITFONE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 179.417440000000000000
          Width = 468.661695590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Top = 442.205010000000000000
          Width = 491.338875590000000000
          Height = 36.661417320000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 516.016080000000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Top = 479.000214800000000000
          Width = 491.338875590000000000
          Height = 36.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESERVADO '#192' FISCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 368.504161570000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO CONTRIBUINTE EMITENTE')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Top = 343.937230000000000000
          Width = 491.522446400000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 442.205010000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PER'#205'ODO DE REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 417.638024720000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DOCUMENTO DE ORIGEM')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 393.071120000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA DE VENCIMENTO')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 368.504161570000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DE CONTROLE')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 343.937230000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO DA RECEITA')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 343.937230000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UF FAVORECIDA')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 449.764062670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PERIODOREFERENCIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PERIODOREFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 376.063214240000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONTROLE'
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
            '[frxDBDataset1."GNR_CONTROLE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 400.630172670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTVENCIMENTO'
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
            '[frxDBDataset1."GNR_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 351.496282670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'RECEITA'
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
            '[frxDBDataset1."RECEITA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 351.496282670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_ESTADOFAVORECIDO'
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
            '[frxDBDataset1."GNR_ESTADOFAVORECIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 425.197077390000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_NUMDOCTO'
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
            '[frxDBDataset1."GNR_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 442.205010000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 466.771887870000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'VALOR PRINCIPAL')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 491.338900000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'ATUALIZA'#199#195'O MONET'#193'RIA')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 515.905751020000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JUROS')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 540.472790000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MULTA')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 565.039614170000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL A RECOLHER')
          ParentFont = False
        end
        object BarCode2: TfrxBarCodeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 608.504330000000000000
          Width = 383.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCode128C
          DataField = 'GNR_CODIGOBARRAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Expression = '85860000000550003101613201005611615164860100'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '85860000000550003101613201005611615164860100'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 449.764070000000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PARCELA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PARCELA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 474.330940540000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORPRINCIPAL'
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
            '[frxDBDataset1."GNR_VALORPRINCIPAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 498.897952670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORATUALIZACAO'
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
            '[frxDBDataset1."GNR_VALORATUALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 523.464803690000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORJUROS'
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
            '[frxDBDataset1."GNR_VALORJUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 548.031842670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORMULTA'
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
            '[frxDBDataset1."GNR_VALORMULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 572.598666840000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORTOTAL'
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
            '[frxDBDataset1."GNR_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 382.094728620000000000
          Width = 309.921435590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITRAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITRAZAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 395.850650000000000000
          Width = 423.307335590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITENDERECO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 410.189240000000000000
          Width = 279.685195590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'EMP_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 423.086890000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITCEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITCEP"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 382.094728620000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RAZ'#195'O SOCIAL:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 395.850650000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 410.189240000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 423.086890000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 410.189240000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 423.086890000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 371.173470000000000000
          Width = 83.149635590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 382.094728620000000000
          Width = 109.606345590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 449.764070000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 462.102660000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 449.764070000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 462.102660000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTCIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 486.197171380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONV'#202'NIO/PROTOCOLO:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 499.315291380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 486.197171380000000000
          Width = 374.173445590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONVENIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CONVENIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 536.693260000000000000
          Width = 483.779815590000000000
          Height = 35.905526460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_INFOCOMPLEMENTAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_INFOCOMPLEMENTAR"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 573.488560000000000000
          Width = 166.299295590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DOCUMENTO V'#193'LIDO PARA PAGAMENTO AT'#201':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 573.488560000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTLIMITE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DTLIMITE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 591.386210000000000000
          Width = 166.299295590000000000
          Height = 10.393683700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#170' VIA CONTRIBUINTE')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 593.386210000000000000
          Width = 381.732505590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REPNUMERICA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."REPNUMERICA"]')
          ParentFont = False
          WordWrap = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 665.197280000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 410.189240000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITESTADO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 423.086890000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITFONE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITFONE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 523.354670000000000000
          Width = 468.661695590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Top = 786.142240000000000000
          Width = 491.338875590000000000
          Height = 36.661417320000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Top = 859.953310000000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Top = 822.937444800000000000
          Width = 491.338875590000000000
          Height = 36.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESERVADO '#192' FISCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 712.441391570000000000
          Width = 491.338875590000000000
          Height = 73.700787400000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DO CONTRIBUINTE EMITENTE')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Top = 687.874460000000000000
          Width = 491.522446400000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 786.142240000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PER'#205'ODO DE REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 761.575254720000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DOCUMENTO DE ORIGEM')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 737.008350000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA DE VENCIMENTO')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 712.441391570000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#218'MERO DE CONTROLE')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 687.874460000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO DA RECEITA')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 687.874460000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UF FAVORECIDA')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 793.701292670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PERIODOREFERENCIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PERIODOREFERENCIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 720.000444240000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONTROLE'
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
            '[frxDBDataset1."GNR_CONTROLE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 744.567402670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTVENCIMENTO'
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
            '[frxDBDataset1."GNR_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 695.433512670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'RECEITA'
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
            '[frxDBDataset1."RECEITA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 695.433512670000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_ESTADOFAVORECIDO'
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
            '[frxDBDataset1."GNR_ESTADOFAVORECIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 769.134307390000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_NUMDOCTO'
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
            '[frxDBDataset1."GNR_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 786.142240000000000000
          Width = 113.385875590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 810.709117870000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'VALOR PRINCIPAL')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 835.276130000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'ATUALIZA'#199#195'O MONET'#193'RIA')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 859.842981020000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JUROS')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 884.410020000000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MULTA')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 908.976844170000000000
          Width = 226.771775590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL A RECOLHER')
          ParentFont = False
        end
        object BarCode3: TfrxBarCodeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 952.441560000000000000
          Width = 383.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCode128C
          DataField = 'GNR_CODIGOBARRAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Expression = '85860000000550003101613201005611615164860100'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '85860000000550003101613201005611615164860100'
          WideBarRatio = 3.000000000000000000
          Zoom = 1.000000000000000000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 793.701300000000000000
          Width = 105.826815590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_PARCELA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_PARCELA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 818.268170540000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORPRINCIPAL'
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
            '[frxDBDataset1."GNR_VALORPRINCIPAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 842.835182670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORATUALIZACAO'
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
            '[frxDBDataset1."GNR_VALORATUALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 867.402033690000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORJUROS'
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
            '[frxDBDataset1."GNR_VALORJUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 891.969072670000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORMULTA'
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
            '[frxDBDataset1."GNR_VALORMULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 916.535896840000000000
          Width = 219.212715590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_VALORTOTAL'
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
            '[frxDBDataset1."GNR_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 726.031958620000000000
          Width = 309.921435590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITRAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITRAZAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 739.787880000000000000
          Width = 423.307335590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITENDERECO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 754.126470000000000000
          Width = 279.685195590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'EMP_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_CIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 767.024120000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITCEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITCEP"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 726.031958620000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RAZ'#195'O SOCIAL:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 739.787880000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 754.126470000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 767.024120000000000000
          Width = 56.692925590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 754.126470000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 767.024120000000000000
          Width = 41.574805590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 715.110700000000000000
          Width = 83.149635590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 726.031958620000000000
          Width = 109.606345590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 793.701300000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF/INSC. EST.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 806.039890000000000000
          Width = 75.590575590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 793.701300000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTDOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTDOCUMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 806.039890000000000000
          Width = 389.291565590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DESTCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DESTCIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 830.134401380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONV'#202'NIO/PROTOCOLO:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 843.252521380000000000
          Width = 90.708695590000000000
          Height = 15.118110240000000000
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
          VAlign = vaBottom
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 830.134401380000000000
          Width = 374.173445590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CONVENIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CONVENIO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 880.630490000000000000
          Width = 483.779815590000000000
          Height = 35.905526460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_INFOCOMPLEMENTAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_INFOCOMPLEMENTAR"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 917.425790000000000000
          Width = 166.299295590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DOCUMENTO V'#193'LIDO PARA PAGAMENTO AT'#201':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 917.425790000000000000
          Width = 105.826815590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_DTLIMITE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_DTLIMITE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 935.323440000000000000
          Width = 166.299295590000000000
          Height = 10.393683700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#170' VIA CONTRIBUINTE / FISCO')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 937.323440000000000000
          Width = 381.732505590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'REPNUMERICA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."REPNUMERICA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 754.126470000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITESTADO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITESTADO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 767.024120000000000000
          Width = 86.929165590000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          DataField = 'GNR_EMITFONE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_EMITFONE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 867.291900000000000000
          Width = 468.661695590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'GNR_CHAVEACESSO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GNR_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select'
      'GNR_CHAVEACESSO,'
      'GNR_CODIGOBARRAS,'
      'GNR_CONTROLE,'
      'GNR_CONVENIO,'
      'GNR_DESTCIDADE,'
      'GNR_DESTDOCUMENTO,'
      'GNR_DTLIMITE,'
      'GNR_DTVENCIMENTO,'
      'GNR_EMITCEP,'
      'GNR_EMITDOCUMENTO,'
      'GNR_EMITENDERECO,'
      'GNR_EMITFONE,'
      'GNR_EMITRAZAO,'
      'GNR_EMITESTADO,'
      'GNR_ESTADOFAVORECIDO,'
      'GNR_INFOCOMPLEMENTAR,'
      'GNR_NUMDOCTO,'
      'GNR_PARCELA,'
      'GNR_PERIODOREFERENCIA,'
      'GNR_RECEITA,'
      'GNR_REPNUMERICA,'
      'GNR_VALORATUALIZACAO,'
      'GNR_VALORJUROS,'
      'GNR_VALORMULTA,'
      'GNR_VALORPRINCIPAL,'
      'GNR_VALORTOTAL,'
      'substring(GNR_RECEITA from 1 for 6) as RECEITA,'
      'overlay('
      '    overlay('
      '        overlay('
      '            overlay('
      '                overlay('
      '                    overlay('
      '                        overlay(GNR_REPNUMERICA'
      '                        placing '#39' '#39' from 48 for 0)'
      '                    placing '#39'  '#39' from 37 for 0)'
      '                placing '#39' '#39' from 36 for 0)'
      '            placing '#39'  '#39' from 25 for 0)'
      '        placing '#39' '#39' from 24 for 0)'
      '    placing '#39'  '#39' from 13 for 0)'
      'placing '#39' '#39' from 12 for 0) REPNUMERICA,'
      
        '(select EMP_CIDADE from EMPRESA where EMP_CODIGO=1) as EMP_CIDAD' +
        'E'
      'from GNRE where GNR_CODIGO=:codigo'
      '')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
end
