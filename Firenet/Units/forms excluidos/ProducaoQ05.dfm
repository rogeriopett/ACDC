object FormProducaoQ05: TFormProducaoQ05
  Left = 191
  Top = 114
  Caption = 'Relat'#243'rio de disponibilidade de estoque sint'#233'tico'
  ClientHeight = 637
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = TBProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      180.000000000000000000
      2970.000000000000000000
      70.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      70.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 26
      Top = 26
      Width = 741
      Height = 65
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 533
        Top = 48
        Width = 203
        Height = 14
        Size.Values = (
          37.041666666666670000
          1410.229166666667000000
          127.000000000000000000
          537.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Disponibilidade em estoque sint'#233'tico'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 670
        Top = 34
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          1772.708333333333000000
          89.958333333333330000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'g.: '
        Transparent = True
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData3: TQRSysData
        Left = 680
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          1799.166666666667000000
          52.916666666666670000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = True
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object IMAGEM: TQRImage
        Left = 1
        Top = 1
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          2.645833333333333000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object EMPRESA: TQRDBText
        Left = 124
        Top = 2
        Width = 91
        Height = 20
        Size.Values = (
          52.916666666666670000
          328.083333333333300000
          5.291666666666667000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object EMAIL: TQRDBText
        Left = 124
        Top = 20
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          52.916666666666670000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object CNPJ: TQRDBText
        Left = 124
        Top = 34
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          89.958333333333330000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object FONE1: TQRDBText
        Left = 124
        Top = 48
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          127.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 26
      Top = 116
      Width = 741
      Height = 30
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRSysData2: TQRSysData
        Left = 7
        Top = 7
        Width = 205
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          18.520833333333330000
          542.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Total de Produtos: '
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 104
      Width = 741
      Height = 12
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText4: TQRDBText
        Left = 3
        Top = 1
        Width = 54
        Height = 13
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBProdutos
        DataField = 'PRC_PRODUTOCOMP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 59
        Top = 1
        Width = 310
        Height = 13
        Size.Values = (
          34.395833333333340000
          156.104166666666700000
          2.645833333333333000
          820.208333333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBProdutos
        DataField = 'PRO_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 483
        Top = 1
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333340000
          1277.937500000000000000
          2.645833333333333000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBProdutos
        DataField = 'PRO_ESTOQUEATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 371
        Top = 1
        Width = 93
        Height = 13
        Size.Values = (
          34.395833333333340000
          981.604166666666800000
          2.645833333333333000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBProdutos
        DataField = 'PRO_ESTOQUEATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 563
        Top = 1
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333340000
          1489.604166666667000000
          2.645833333333333000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Diferen'#231'a:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 146
      Width = 741
      Height = 15
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText8: TQRDBText
        Left = 671
        Top = 3
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1775.354166666667000000
          7.937500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOSSONOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel9: TQRLabel
        Left = 3
        Top = 3
        Width = 79
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          7.937500000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Usu'#225'rio: UsuarioLogado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 91
      Width = 741
      Height = 13
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 3
        Top = -2
        Width = 54
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          -5.291666666666667000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 59
        Top = -2
        Width = 230
        Height = 15
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          -5.291666666666667000
          608.541666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 371
        Top = -2
        Width = 93
        Height = 15
        Size.Values = (
          39.687500000000000000
          981.604166666666800000
          -5.291666666666667000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Qtde necess'#225'ria'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 483
        Top = -2
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          1277.937500000000000000
          -5.291666666666667000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Qtde atual'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 563
        Top = -2
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          1489.604166666667000000
          -5.291666666666667000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Diferen'#231'a:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 143
    Top = 400
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 448
    Top = 304
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 520
    Top = 304
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 600
    Top = 304
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 680
    Top = 304
  end
  object TBProdutos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'PRO_NOME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PRO_ESTOQUEATUAL'
        DataType = ftFloat
      end
      item
        Name = 'PRO_NECESSARIO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 304
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 223
    Top = 400
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 752
    Top = 304
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select '
      'PDI_PRODUTO, PRO_NOME, sum(PDI_QUANTIDADE) as TOTAL'
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'where PRD_STATUS='#39'A'#39
      'and PRD_DTCADASTRO between :datainicial and :datafinal'
      'group by PDI_PRODUTO, PRO_NOME'
      '')
    Left = 144
    Top = 304
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object FDQuery1PDI_PRODUTO: TIntegerField
      FieldName = 'PDI_PRODUTO'
      Origin = 'PDI_PRODUTO'
      Required = True
    end
    object FDQuery1PRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 144
    Top = 352
  end
  object FDQuery2: TFDQuery
    MasterSource = DataSource1
    MasterFields = 'PDI_PRODUTO'
    Connection = DM.FDConnection1
    Transaction = FDTransaction2
    SQL.Strings = (
      'select '
      'PRC_PRODUTO,'
      'PRC_PRODUTOCOMP,'
      'PRC_QUANTIDADE,'
      'PRO_NOME'
      'from PRODUTOSCOMP'
      'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO'
      'where PRC_PRODUTO=:PDI_PRODUTO'
      '')
    Left = 224
    Top = 304
    ParamData = <
      item
        Name = 'PDI_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery2PRC_PRODUTO: TIntegerField
      FieldName = 'PRC_PRODUTO'
      Origin = 'PRC_PRODUTO'
      Required = True
    end
    object FDQuery2PRC_PRODUTOCOMP: TIntegerField
      FieldName = 'PRC_PRODUTOCOMP'
      Origin = 'PRC_PRODUTOCOMP'
      Required = True
    end
    object FDQuery2PRC_QUANTIDADE: TFMTBCDField
      FieldName = 'PRC_QUANTIDADE'
      Origin = 'PRC_QUANTIDADE'
      Precision = 18
    end
    object FDQuery2PRO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object FDTransaction2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 224
    Top = 352
  end
  object FDQuery3: TFDQuery
    MasterSource = DataSource2
    MasterFields = 'PRC_PRODUTOCOMP'
    Connection = DM.FDConnection1
    Transaction = FDTransaction3
    SQL.Strings = (
      'select PRO_ESTOQUEATUAL from PRODUTOS'
      'where PRO_CODIGO=:PRC_PRODUTOCOMP'
      '')
    Left = 304
    Top = 304
    ParamData = <
      item
        Name = 'PRC_PRODUTOCOMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery3PRO_ESTOQUEATUAL: TFMTBCDField
      FieldName = 'PRO_ESTOQUEATUAL'
      Origin = 'PRO_ESTOQUEATUAL'
      Precision = 18
    end
  end
  object FDTransaction3: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 304
    Top = 352
  end
end
