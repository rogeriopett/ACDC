object FormVendasQ34: TFormVendasQ34
  Left = 0
  Top = 0
  Caption = 'Pedido de Vendas A5'
  ClientHeight = 732
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 559
    ShowingPreview = False
    DataSet = IBQuery1
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
    Page.Orientation = poLandscape
    Page.PaperSize = A5
    Page.Continuous = False
    Page.Values = (
      180.000000000000000000
      1480.000000000000000000
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
    object QRBand2: TQRBand
      Left = 26
      Top = 333
      Width = 741
      Height = 44
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        116.416666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel78: TQRLabel
        Left = 3
        Top = 3
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          7.937500000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OBSERVA'#199#213'ES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText94: TQRDBText
        Left = 4
        Top = 27
        Width = 725
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          71.437500000000000000
          1918.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_OBSERVACOES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 424
        Top = 13
        Width = 310
        Height = 15
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          34.395833333333340000
          820.208333333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Saldo devedor acumulado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 4
        Top = 13
        Width = 219
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          34.395833333333340000
          579.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Sem valor fiscal - N'#227'o substitui a Nota Fiscal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 377
      Width = 741
      Height = 13
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText11: TQRDBText
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
      object QRLabel4: TQRLabel
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
    object QRBand4: TQRBand
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
        Left = 638
        Top = 48
        Width = 98
        Height = 14
        Size.Values = (
          37.041666666666670000
          1688.041666666667000000
          127.000000000000000000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Pedido de Vendas'
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
        FontSize = 8
      end
      object QRSysData4: TQRSysData
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
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 91
      Width = 741
      Height = 134
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        354.541666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRShape1: TQRShape
        Left = 636
        Top = 81
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1682.750000000000000000
          214.312500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 546
        Top = 81
        Width = 91
        Height = 28
        Size.Values = (
          74.083333333333340000
          1444.625000000000000000
          214.312500000000000000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 494
        Top = 81
        Width = 143
        Height = 28
        Size.Values = (
          74.083333333333340000
          1307.041666666667000000
          214.312500000000000000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 352
        Top = 81
        Width = 143
        Height = 28
        Size.Values = (
          74.083333333333340000
          931.333333333333500000
          214.312500000000000000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 0
        Top = 81
        Width = 353
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          214.312500000000000000
          933.979166666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 636
        Top = 54
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1682.750000000000000000
          142.875000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 556
        Top = 54
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333340000
          1471.083333333333000000
          142.875000000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 524
        Top = 54
        Width = 33
        Height = 28
        Size.Values = (
          74.083333333333340000
          1386.416666666667000000
          142.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 262
        Top = 54
        Width = 263
        Height = 28
        Size.Values = (
          74.083333333333340000
          693.208333333333400000
          142.875000000000000000
          695.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 0
        Top = 54
        Width = 263
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          142.875000000000000000
          695.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 636
        Top = 27
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1682.750000000000000000
          71.437500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 456
        Top = 27
        Width = 181
        Height = 28
        Size.Values = (
          74.083333333333340000
          1206.500000000000000000
          71.437500000000000000
          478.895833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape71: TQRShape
        Left = 376
        Top = 27
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333340000
          994.833333333333400000
          71.437500000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape72: TQRShape
        Left = 0
        Top = 27
        Width = 377
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          71.437500000000000000
          997.479166666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape73: TQRShape
        Left = 636
        Top = 0
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1682.750000000000000000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape74: TQRShape
        Left = 506
        Top = 0
        Width = 131
        Height = 28
        Size.Values = (
          74.083333333333340000
          1338.791666666667000000
          0.000000000000000000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 376
        Top = 0
        Width = 131
        Height = 28
        Size.Values = (
          74.083333333333340000
          994.833333333333400000
          0.000000000000000000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 643
        Top = 121
        Width = 98
        Height = 13
        Size.Values = (
          34.395833333333340000
          1701.270833333333000000
          320.145833333333400000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape77: TQRShape
        Left = 579
        Top = 121
        Height = 13
        Size.Values = (
          34.395833333333340000
          1531.937500000000000000
          320.145833333333400000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = 515
        Top = 121
        Height = 13
        Size.Values = (
          34.395833333333340000
          1362.604166666667000000
          320.145833333333400000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape79: TQRShape
        Left = 459
        Top = 121
        Width = 57
        Height = 13
        Size.Values = (
          34.395833333333340000
          1214.437500000000000000
          320.145833333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape80: TQRShape
        Left = 433
        Top = 121
        Width = 27
        Height = 13
        Size.Values = (
          34.395833333333340000
          1145.645833333333000000
          320.145833333333400000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape81: TQRShape
        Left = 407
        Top = 121
        Width = 27
        Height = 13
        Size.Values = (
          34.395833333333340000
          1076.854166666667000000
          320.145833333333400000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape82: TQRShape
        Left = 381
        Top = 121
        Width = 27
        Height = 13
        Size.Values = (
          34.395833333333340000
          1008.062500000000000000
          320.145833333333400000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape83: TQRShape
        Left = 365
        Top = 121
        Width = 17
        Height = 13
        Size.Values = (
          34.395833333333340000
          965.729166666666800000
          320.145833333333400000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape84: TQRShape
        Left = 0
        Top = 0
        Width = 377
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          0.000000000000000000
          997.479166666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 40
        Top = 12
        Width = 333
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          31.750000000000000000
          881.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_NOME'
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
      object QRDBText2: TQRDBText
        Left = 5
        Top = 12
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          31.750000000000000000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CLIENTE'
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
      object QRLabel2: TQRLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          7.937500000000000000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CLIENTE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel3: TQRLabel
        Left = 640
        Top = 3
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1693.333333333333000000
          7.937500000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText3: TQRDBText
        Left = 641
        Top = 12
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1695.979166666667000000
          31.750000000000000000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 5
        Top = 39
        Width = 368
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          103.187500000000000000
          973.666666666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_ENDERECO'
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
      object QRLabel5: TQRLabel
        Left = 3
        Top = 30
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          79.375000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ENDERE'#199'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText5: TQRDBText
        Left = 267
        Top = 66
        Width = 254
        Height = 15
        Size.Values = (
          39.687500000000000000
          706.437500000000000000
          174.625000000000000000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CIDADE'
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
      object QRLabel6: TQRLabel
        Left = 265
        Top = 57
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          701.145833333333300000
          150.812500000000000000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MUNIC'#205'PIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText6: TQRDBText
        Left = 529
        Top = 66
        Width = 24
        Height = 15
        Size.Values = (
          39.687500000000000000
          1399.645833333333000000
          174.625000000000000000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_ESTADO'
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
      object QRLabel7: TQRLabel
        Left = 527
        Top = 57
        Width = 9
        Height = 8
        Size.Values = (
          21.166666666666670000
          1394.354166666667000000
          150.812500000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel8: TQRLabel
        Left = 559
        Top = 57
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          1479.020833333333000000
          150.812500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText7: TQRDBText
        Left = 561
        Top = 66
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          1484.312500000000000000
          174.625000000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CEP'
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
      object QRLabel9: TQRLabel
        Left = 3
        Top = 84
        Width = 29
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          222.250000000000000000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONTATO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText8: TQRDBText
        Left = 5
        Top = 93
        Width = 344
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          246.062500000000000000
          910.166666666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CONTATO'
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
      object QRLabel10: TQRLabel
        Left = 510
        Top = 3
        Width = 66
        Height = 8
        Size.Values = (
          21.166666666666670000
          1349.375000000000000000
          7.937500000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText9: TQRDBText
        Left = 511
        Top = 12
        Width = 122
        Height = 15
        Size.Values = (
          39.687500000000000000
          1352.020833333333000000
          31.750000000000000000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_IE'
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
      object QRDBText10: TQRDBText
        Left = 461
        Top = 39
        Width = 172
        Height = 15
        Size.Values = (
          39.687500000000000000
          1219.729166666667000000
          103.187500000000000000
          455.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_COMPLEMENTO'
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
      object QRLabel11: TQRLabel
        Left = 459
        Top = 30
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1214.437500000000000000
          79.375000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COMPLEMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText12: TQRDBText
        Left = 381
        Top = 39
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          1008.062500000000000000
          103.187500000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_NUMERO'
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
      object QRLabel12: TQRLabel
        Left = 379
        Top = 30
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          1002.770833333333000000
          79.375000000000000000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText13: TQRDBText
        Left = 382
        Top = 12
        Width = 121
        Height = 15
        Size.Values = (
          39.687500000000000000
          1010.708333333333000000
          31.750000000000000000
          320.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CNPJ'
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
      object QRLabel13: TQRLabel
        Left = 379
        Top = 3
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          1002.770833333333000000
          7.937500000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ / CPF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel15: TQRLabel
        Left = 639
        Top = 57
        Width = 56
        Height = 8
        Size.Values = (
          21.166666666666670000
          1690.687500000000000000
          150.812500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE EMISS'#195'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText14: TQRDBText
        Left = 641
        Top = 66
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1695.979166666667000000
          174.625000000000000000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_DTEMISSAO'
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
      object QRLabel16: TQRLabel
        Left = 639
        Top = 84
        Width = 81
        Height = 8
        Size.Values = (
          21.166666666666670000
          1690.687500000000000000
          222.250000000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE ENTRADA / SA'#205'DA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText15: TQRDBText
        Left = 641
        Top = 93
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1695.979166666667000000
          246.062500000000000000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_DTSAIDA'
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
      object QRDBText16: TQRDBText
        Left = 5
        Top = 66
        Width = 254
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          174.625000000000000000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_BAIRRO'
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
      object QRLabel17: TQRLabel
        Left = 3
        Top = 57
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          150.812500000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BAIRRO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel18: TQRLabel
        Left = 355
        Top = 84
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          939.270833333333300000
          222.250000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText17: TQRDBText
        Left = 357
        Top = 93
        Width = 134
        Height = 15
        Size.Values = (
          39.687500000000000000
          944.562500000000000000
          246.062500000000000000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_FONE1'
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
      object QRDBText18: TQRDBText
        Left = 499
        Top = 93
        Width = 134
        Height = 15
        Size.Values = (
          39.687500000000000000
          1320.270833333333000000
          246.062500000000000000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_FONE2'
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
      object QRLabel19: TQRLabel
        Left = 497
        Top = 84
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1314.979166666667000000
          222.250000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel20: TQRLabel
        Left = 639
        Top = 30
        Width = 40
        Height = 8
        Size.Values = (
          21.166666666666670000
          1690.687500000000000000
          79.375000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOTA FISCAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText19: TQRDBText
        Left = 641
        Top = 39
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1695.979166666667000000
          103.187500000000000000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_NFE'
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
      object QRShape85: TQRShape
        Left = 56
        Top = 121
        Width = 310
        Height = 13
        Size.Values = (
          34.395833333333340000
          148.166666666666700000
          320.145833333333400000
          820.208333333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape86: TQRShape
        Left = 0
        Top = 121
        Width = 57
        Height = 13
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          320.145833333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 3
        Top = 124
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          328.083333333333300000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CODIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel23: TQRLabel
        Left = 59
        Top = 124
        Width = 107
        Height = 8
        Size.Values = (
          21.166666666666670000
          156.104166666666700000
          328.083333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel24: TQRLabel
        Left = 368
        Top = 124
        Width = 11
        Height = 8
        Size.Values = (
          21.166666666666670000
          973.666666666666700000
          328.083333333333300000
          29.104166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P/S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel25: TQRLabel
        Left = 384
        Top = 124
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          1016.000000000000000000
          328.083333333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UND'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel26: TQRLabel
        Left = 410
        Top = 124
        Width = 14
        Height = 8
        Size.Values = (
          21.166666666666670000
          1084.791666666667000000
          328.083333333333300000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ALIQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel27: TQRLabel
        Left = 436
        Top = 124
        Width = 9
        Height = 8
        Size.Values = (
          21.166666666666670000
          1153.583333333333000000
          328.083333333333300000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel28: TQRLabel
        Left = 462
        Top = 124
        Width = 17
        Height = 8
        Size.Values = (
          21.166666666666670000
          1222.375000000000000000
          328.083333333333300000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTDE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel29: TQRLabel
        Left = 518
        Top = 124
        Width = 50
        Height = 8
        Size.Values = (
          21.166666666666670000
          1370.541666666667000000
          328.083333333333300000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR UNIT'#193'RIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel30: TQRLabel
        Left = 582
        Top = 124
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          1539.875000000000000000
          328.083333333333300000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR ST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel31: TQRLabel
        Left = 646
        Top = 124
        Width = 41
        Height = 8
        Size.Values = (
          21.166666666666670000
          1709.208333333333000000
          328.083333333333300000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 225
      Width = 741
      Height = 13
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery2
      FooterBand = QRBand1
      HeaderBand = ColumnHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape87: TQRShape
        Left = 57
        Top = -1
        Width = 309
        Height = 28
        Size.Values = (
          74.083333333333340000
          150.812500000000000000
          -2.645833333333333000
          817.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape88: TQRShape
        Left = 366
        Top = -1
        Width = 16
        Height = 28
        Size.Values = (
          74.083333333333340000
          968.375000000000000000
          -2.645833333333333000
          42.333333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape89: TQRShape
        Left = 382
        Top = -1
        Width = 26
        Height = 28
        Size.Values = (
          74.083333333333340000
          1010.708333333333000000
          -2.645833333333333000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape90: TQRShape
        Left = 408
        Top = -1
        Width = 26
        Height = 28
        Size.Values = (
          74.083333333333340000
          1079.500000000000000000
          -2.645833333333333000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape91: TQRShape
        Left = 434
        Top = -1
        Width = 26
        Height = 28
        Size.Values = (
          74.083333333333340000
          1148.291666666667000000
          -2.645833333333333000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape92: TQRShape
        Left = 460
        Top = -1
        Width = 56
        Height = 28
        Size.Values = (
          74.083333333333340000
          1217.083333333333000000
          -2.645833333333333000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape93: TQRShape
        Left = 516
        Top = -1
        Width = 64
        Height = 28
        Size.Values = (
          74.083333333333340000
          1365.250000000000000000
          -2.645833333333333000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape94: TQRShape
        Left = 580
        Top = -1
        Width = 64
        Height = 28
        Size.Values = (
          74.083333333333340000
          1534.583333333333000000
          -2.645833333333333000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape95: TQRShape
        Left = 644
        Top = -1
        Width = 97
        Height = 28
        Size.Values = (
          74.083333333333340000
          1703.916666666667000000
          -2.645833333333333000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape96: TQRShape
        Left = 0
        Top = -1
        Width = 57
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          -2.645833333333333000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRDBText21: TQRDBText
        Left = 367
        Top = 0
        Width = 12
        Height = 13
        Size.Values = (
          34.395833333333340000
          971.020833333333400000
          0.000000000000000000
          31.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_TIPO'
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
      object QRDBText22: TQRDBText
        Left = 3
        Top = 0
        Width = 50
        Height = 13
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_PRODUTO'
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
      object QRDBText23: TQRDBText
        Left = 462
        Top = 0
        Width = 50
        Height = 13
        Size.Values = (
          34.395833333333340000
          1222.375000000000000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_QUANTIDADE'
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
      object QRDBText24: TQRDBText
        Left = 384
        Top = 0
        Width = 20
        Height = 13
        Size.Values = (
          34.395833333333340000
          1016.000000000000000000
          0.000000000000000000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_UNIDADE'
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
      object QRDBText25: TQRDBText
        Left = 518
        Top = 0
        Width = 58
        Height = 13
        Size.Values = (
          34.395833333333340000
          1370.541666666667000000
          0.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_VALORUNIT'
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
      object QRDBText26: TQRDBText
        Left = 646
        Top = 0
        Width = 92
        Height = 13
        Size.Values = (
          34.395833333333340000
          1709.208333333333000000
          0.000000000000000000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_VALORTOTAL'
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
      object QRDBText27: TQRDBText
        Left = 410
        Top = 0
        Width = 20
        Height = 13
        Size.Values = (
          34.395833333333340000
          1084.791666666667000000
          0.000000000000000000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_ALIQICMS'
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
      object QRDBText28: TQRDBText
        Left = 436
        Top = 0
        Width = 20
        Height = 13
        Size.Values = (
          34.395833333333340000
          1153.583333333333000000
          0.000000000000000000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_ALIQICMSST'
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
      object QRLabel32: TQRLabel
        Left = 59
        Top = 0
        Width = 303
        Height = 13
        Size.Values = (
          34.395833333333340000
          156.104166666666700000
          0.000000000000000000
          801.687500000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRDBText29: TQRDBText
        Left = 583
        Top = 0
        Width = 58
        Height = 13
        Size.Values = (
          34.395833333333340000
          1542.520833333333000000
          0.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_VALORICMSST'
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
    end
    object QRBand1: TQRBand
      Left = 26
      Top = 238
      Width = 741
      Height = 95
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        251.354166666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape97: TQRShape
        Left = 634
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          1677.458333333333000000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape98: TQRShape
        Left = 530
        Top = 40
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1402.291666666667000000
          105.833333333333300000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape99: TQRShape
        Left = 424
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          1121.833333333333000000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape100: TQRShape
        Left = 318
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          841.375000000000000000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape101: TQRShape
        Left = 212
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          560.916666666666800000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape102: TQRShape
        Left = 106
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          280.458333333333400000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape103: TQRShape
        Left = 0
        Top = 40
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          105.833333333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape104: TQRShape
        Left = 369
        Top = 67
        Width = 372
        Height = 28
        Size.Values = (
          74.083333333333340000
          976.312500000000000000
          177.270833333333300000
          984.249999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape108: TQRShape
        Left = 0
        Top = 67
        Width = 370
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          177.270833333333300000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape109: TQRShape
        Left = 634
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          1677.458333333333000000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape110: TQRShape
        Left = 530
        Top = 13
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1402.291666666667000000
          34.395833333333340000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = 424
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          1121.833333333333000000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape113: TQRShape
        Left = 318
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          841.375000000000000000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape114: TQRShape
        Left = 212
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          560.916666666666800000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape115: TQRShape
        Left = 106
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          280.458333333333400000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape116: TQRShape
        Left = 0
        Top = 13
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          34.395833333333340000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText36: TQRDBText
        Left = 111
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          293.687500000000000000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TOTALSERVICOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText38: TQRDBText
        Left = 217
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          574.145833333333400000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VALORFRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText39: TQRDBText
        Left = 323
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          854.604166666666800000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_DESCPORC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText40: TQRDBText
        Left = 429
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1135.062500000000000000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_DESCVALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText41: TQRDBText
        Left = 639
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1690.687500000000000000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VALORTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText44: TQRDBText
        Left = 639
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1690.687500000000000000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_PESOLIQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText45: TQRDBText
        Left = 534
        Top = 25
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1412.875000000000000000
          66.145833333333320000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_PESOBRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText48: TQRDBText
        Left = 5
        Top = 79
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          209.020833333333300000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CONDICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText50: TQRDBText
        Left = 40
        Top = 79
        Width = 326
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          209.020833333333300000
          862.541666666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CPG_DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText51: TQRDBText
        Left = 5
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_BASEICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText52: TQRDBText
        Left = 217
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          574.145833333333400000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_BASEICMSST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText88: TQRDBText
        Left = 111
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          293.687500000000000000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TOTALICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText89: TQRDBText
        Left = 323
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          854.604166666666800000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TOTALICMSST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText90: TQRDBText
        Left = 429
        Top = 52
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1135.062500000000000000
          137.583333333333300000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TOTALIPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 5
        Top = 25
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          66.145833333333340000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel33'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 3
        Top = 16
        Width = 54
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          42.333333333333330000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL PRODUTOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel36: TQRLabel
        Left = 109
        Top = 16
        Width = 52
        Height = 8
        Size.Values = (
          21.166666666666670000
          288.395833333333300000
          42.333333333333330000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL SERVICOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel37: TQRLabel
        Left = 215
        Top = 16
        Width = 42
        Height = 8
        Size.Values = (
          21.166666666666670000
          568.854166666666700000
          42.333333333333330000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR FRETE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel38: TQRLabel
        Left = 321
        Top = 16
        Width = 43
        Height = 8
        Size.Values = (
          21.166666666666670000
          849.312500000000000000
          42.333333333333330000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '% DESCONTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel39: TQRLabel
        Left = 427
        Top = 16
        Width = 54
        Height = 8
        Size.Values = (
          21.166666666666670000
          1129.770833333333000000
          42.333333333333330000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DESCONTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel40: TQRLabel
        Left = 3
        Top = 43
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          113.770833333333300000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE ICMS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel41: TQRLabel
        Left = 109
        Top = 43
        Width = 37
        Height = 8
        Size.Values = (
          21.166666666666670000
          288.395833333333300000
          113.770833333333300000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR ICMS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel42: TQRLabel
        Left = 215
        Top = 43
        Width = 44
        Height = 8
        Size.Values = (
          21.166666666666670000
          568.854166666666700000
          113.770833333333300000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE ICMS ST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel43: TQRLabel
        Left = 321
        Top = 43
        Width = 47
        Height = 8
        Size.Values = (
          21.166666666666670000
          849.312500000000000000
          113.770833333333300000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR ICMS ST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel44: TQRLabel
        Left = 427
        Top = 43
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          1129.770833333333000000
          113.770833333333300000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR IPI'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel46: TQRLabel
        Left = 533
        Top = 16
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          1410.229166666667000000
          42.333333333333330000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PESO BRUTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel47: TQRLabel
        Left = 638
        Top = 16
        Width = 42
        Height = 8
        Size.Values = (
          21.166666666666670000
          1688.041666666667000000
          42.333333333333330000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PESO L'#205'QUIDO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel48: TQRLabel
        Left = 3
        Top = 69
        Width = 70
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          182.562500000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONDI'#199#195'O PAGAMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel49: TQRLabel
        Left = 637
        Top = 43
        Width = 41
        Height = 9
        Size.Values = (
          23.812500000000000000
          1685.395833333333000000
          113.770833333333300000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel76: TQRLabel
        Left = 372
        Top = 70
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          984.250000000000000000
          185.208333333333300000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VENDEDOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText91: TQRDBText
        Left = 374
        Top = 79
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          989.541666666666800000
          209.020833333333300000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VENDEDOR'
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
      object QRDBText92: TQRDBText
        Left = 409
        Top = 79
        Width = 328
        Height = 15
        Size.Values = (
          39.687500000000000000
          1082.145833333333000000
          209.020833333333300000
          867.833333333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VEN_NOME'
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
      object QRLabel77: TQRLabel
        Left = 533
        Top = 43
        Width = 56
        Height = 8
        Size.Values = (
          21.166666666666670000
          1410.229166666667000000
          113.770833333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SALDO DE PONTOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText93: TQRDBText
        Left = 534
        Top = 52
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1412.875000000000000000
          137.583333333333300000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_PONTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRLabel132: TQRLabel
      Left = 74
      Top = 490
      Width = 593
      Height = 134
      Size.Values = (
        354.541666666666700000
        195.791666666666700000
        1296.458333333333000000
        1568.979166666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoStretch = True
      Caption = 'CANCELADA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Orientation = 420
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 72
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 400
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'VED_BAIRRO,'
      'VED_BASEICMS,'
      'VED_BASEICMSST,'
      'VED_CEP,'
      'VED_CIDADE,'
      'VED_CLIENTE,'
      'VED_CNPJ,'
      'VED_CODIGO,'
      'VED_COMPLEMENTO,'
      'VED_CONDICAO,'
      'VED_CONTATO,'
      'VED_CPF,'
      'VED_DESCPORC,'
      'VED_DESCVALOR,'
      'VED_DTEMISSAO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO,'
      'VED_ESTADO,'
      'VED_FONE1,'
      'VED_IE,'
      'VED_NFE,'
      'VED_NOME,'
      'VED_NOTA,'
      'VED_NUMERO,'
      'VED_OBSERVACOES,'
      'VED_PESOBRUTO,'
      'VED_PESOLIQ,'
      'VED_TOTALICMS,'
      'VED_TOTALICMSST,'
      'VED_TOTALIPI,'
      'VED_TOTALPRODUTOS,'
      'VED_TOTALSERVICOS,'
      'VED_VALORFRETE,'
      'VED_VALORTOTAL,'
      'VED_VENDEDOR,'
      'CLI_FONE2,'
      'CLI_PONTOS,'
      'CPG_DESCRICAO,'
      'VEN_NOME'
      'from VENDAS '
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      'where VED_CODIGO=:codigo')
    Left = 208
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1VED_BAIRRO: TIBStringField
      FieldName = 'VED_BAIRRO'
      Origin = '"VENDAS"."VED_BAIRRO"'
      Size = 50
    end
    object IBQuery1VED_BASEICMS: TFMTBCDField
      FieldName = 'VED_BASEICMS'
      Origin = '"VENDAS"."VED_BASEICMS"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_BASEICMSST: TFMTBCDField
      FieldName = 'VED_BASEICMSST'
      Origin = '"VENDAS"."VED_BASEICMSST"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_CEP: TIBStringField
      FieldName = 'VED_CEP'
      Origin = '"VENDAS"."VED_CEP"'
      Size = 10
    end
    object IBQuery1VED_CIDADE: TIBStringField
      FieldName = 'VED_CIDADE'
      Origin = '"VENDAS"."VED_CIDADE"'
      Size = 50
    end
    object IBQuery1VED_CLIENTE: TIntegerField
      FieldName = 'VED_CLIENTE'
      Origin = '"VENDAS"."VED_CLIENTE"'
      Required = True
    end
    object IBQuery1VED_CNPJ: TIBStringField
      FieldName = 'VED_CNPJ'
      Origin = '"VENDAS"."VED_CNPJ"'
    end
    object IBQuery1VED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = '"VENDAS"."VED_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object IBQuery1VED_COMPLEMENTO: TIBStringField
      FieldName = 'VED_COMPLEMENTO'
      Origin = '"VENDAS"."VED_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1VED_CONDICAO: TIntegerField
      FieldName = 'VED_CONDICAO'
      Origin = '"VENDAS"."VED_CONDICAO"'
      Required = True
    end
    object IBQuery1VED_CONTATO: TIBStringField
      FieldName = 'VED_CONTATO'
      Origin = '"VENDAS"."VED_CONTATO"'
      Size = 80
    end
    object IBQuery1VED_CPF: TIBStringField
      FieldName = 'VED_CPF'
      Origin = '"VENDAS"."VED_CPF"'
    end
    object IBQuery1VED_DESCPORC: TFMTBCDField
      FieldName = 'VED_DESCPORC'
      Origin = '"VENDAS"."VED_DESCPORC"'
      Precision = 18
    end
    object IBQuery1VED_DESCVALOR: TFMTBCDField
      FieldName = 'VED_DESCVALOR'
      Origin = '"VENDAS"."VED_DESCVALOR"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_DTEMISSAO: TDateField
      FieldName = 'VED_DTEMISSAO'
      Origin = '"VENDAS"."VED_DTEMISSAO"'
    end
    object IBQuery1VED_DTSAIDA: TDateField
      FieldName = 'VED_DTSAIDA'
      Origin = '"VENDAS"."VED_DTSAIDA"'
    end
    object IBQuery1VED_ENDERECO: TIBStringField
      FieldName = 'VED_ENDERECO'
      Origin = '"VENDAS"."VED_ENDERECO"'
      Size = 100
    end
    object IBQuery1VED_ESTADO: TIBStringField
      FieldName = 'VED_ESTADO'
      Origin = '"VENDAS"."VED_ESTADO"'
      Size = 2
    end
    object IBQuery1VED_FONE1: TIBStringField
      FieldName = 'VED_FONE1'
      Origin = '"VENDAS"."VED_FONE1"'
    end
    object IBQuery1VED_IE: TIBStringField
      FieldName = 'VED_IE'
      Origin = '"VENDAS"."VED_IE"'
    end
    object IBQuery1VED_NFE: TIntegerField
      FieldName = 'VED_NFE'
      Origin = '"VENDAS"."VED_NFE"'
    end
    object IBQuery1VED_NOME: TIBStringField
      FieldName = 'VED_NOME'
      Origin = '"VENDAS"."VED_NOME"'
      Size = 80
    end
    object IBQuery1VED_NOTA: TIntegerField
      FieldName = 'VED_NOTA'
      Origin = '"VENDAS"."VED_NOTA"'
    end
    object IBQuery1VED_NUMERO: TIBStringField
      FieldName = 'VED_NUMERO'
      Origin = '"VENDAS"."VED_NUMERO"'
      Size = 15
    end
    object IBQuery1VED_OBSERVACOES: TMemoField
      FieldName = 'VED_OBSERVACOES'
      Origin = '"VENDAS"."VED_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1VED_PESOBRUTO: TIBBCDField
      FieldName = 'VED_PESOBRUTO'
      Origin = '"VENDAS"."VED_PESOBRUTO"'
      Precision = 18
      Size = 3
    end
    object IBQuery1VED_PESOLIQ: TIBBCDField
      FieldName = 'VED_PESOLIQ'
      Origin = '"VENDAS"."VED_PESOLIQ"'
      Precision = 18
      Size = 3
    end
    object IBQuery1VED_TOTALICMS: TFMTBCDField
      FieldName = 'VED_TOTALICMS'
      Origin = '"VENDAS"."VED_TOTALICMS"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_TOTALICMSST: TFMTBCDField
      FieldName = 'VED_TOTALICMSST'
      Origin = '"VENDAS"."VED_TOTALICMSST"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_TOTALIPI: TFMTBCDField
      FieldName = 'VED_TOTALIPI'
      Origin = '"VENDAS"."VED_TOTALIPI"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'VED_TOTALPRODUTOS'
      Origin = '"VENDAS"."VED_TOTALPRODUTOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_TOTALSERVICOS: TFMTBCDField
      FieldName = 'VED_TOTALSERVICOS'
      Origin = '"VENDAS"."VED_TOTALSERVICOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_VALORFRETE: TFMTBCDField
      FieldName = 'VED_VALORFRETE'
      Origin = '"VENDAS"."VED_VALORFRETE"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = '"VENDAS"."VED_VALORTOTAL"'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = '"VENDAS"."VED_VENDEDOR"'
      Required = True
    end
    object IBQuery1CLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object IBQuery1CLI_PONTOS: TFMTBCDField
      FieldName = 'CLI_PONTOS'
      Origin = '"CLIENTES"."CLI_PONTOS"'
      Precision = 18
    end
    object IBQuery1CPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
    object IBQuery1VEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 80
    end
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 288
    Top = 400
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 368
    Top = 400
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 440
    Top = 400
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 520
    Top = 400
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 592
    Top = 400
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 448
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'VEI_ALIQICMS,'
      'VEI_ALIQICMSST,'
      'VEI_COMPLEMENTO,'
      'VEI_DESCRICAO,'
      'VEI_LOTE,'
      'VEI_PRODUTO, '
      'VEI_QUANTIDADE,'
      'VEI_TIPO,'
      'VEI_UNIDADE,'
      'VEI_VALORICMSST,'
      'VEI_VALORTOTAL,'
      'VEI_VALORUNIT'
      'from VENDASITENS'
      'where VEI_VENDA=:codigo'
      'order by VEI_CODIGO')
    Left = 208
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery2VEI_ALIQICMS: TFMTBCDField
      FieldName = 'VEI_ALIQICMS'
      Origin = '"VENDASITENS"."VEI_ALIQICMS"'
      Precision = 18
    end
    object IBQuery2VEI_ALIQICMSST: TFMTBCDField
      FieldName = 'VEI_ALIQICMSST'
      Origin = '"VENDASITENS"."VEI_ALIQICMSST"'
      Precision = 18
    end
    object IBQuery2VEI_COMPLEMENTO: TIBStringField
      FieldName = 'VEI_COMPLEMENTO'
      Origin = '"VENDASITENS"."VEI_COMPLEMENTO"'
      Size = 50
    end
    object IBQuery2VEI_DESCRICAO: TIBStringField
      FieldName = 'VEI_DESCRICAO'
      Origin = '"VENDASITENS"."VEI_DESCRICAO"'
      Size = 100
    end
    object IBQuery2VEI_LOTE: TIBStringField
      FieldName = 'VEI_LOTE'
      Origin = '"VENDASITENS"."VEI_LOTE"'
    end
    object IBQuery2VEI_PRODUTO: TIntegerField
      FieldName = 'VEI_PRODUTO'
      Origin = '"VENDASITENS"."VEI_PRODUTO"'
      Required = True
    end
    object IBQuery2VEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      Origin = '"VENDASITENS"."VEI_QUANTIDADE"'
      Precision = 18
    end
    object IBQuery2VEI_TIPO: TIBStringField
      FieldName = 'VEI_TIPO'
      Origin = '"VENDASITENS"."VEI_TIPO"'
      Size = 1
    end
    object IBQuery2VEI_UNIDADE: TIBStringField
      FieldName = 'VEI_UNIDADE'
      Origin = '"VENDASITENS"."VEI_UNIDADE"'
      Size = 3
    end
    object IBQuery2VEI_VALORICMSST: TFMTBCDField
      FieldName = 'VEI_VALORICMSST'
      Origin = '"VENDASITENS"."VEI_VALORICMSST"'
      currency = True
      Precision = 18
    end
    object IBQuery2VEI_VALORTOTAL: TFMTBCDField
      FieldName = 'VEI_VALORTOTAL'
      Origin = '"VENDASITENS"."VEI_VALORTOTAL"'
      currency = True
      Precision = 18
    end
    object IBQuery2VEI_VALORUNIT: TFMTBCDField
      FieldName = 'VEI_VALORUNIT'
      Origin = '"VENDASITENS"."VEI_VALORUNIT"'
      currency = True
      Precision = 18
    end
  end
  object IBQuery4: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction4
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(REE_VALOR) as VALOR'
      'from RECEBER where REE_CLIENTE=:cliente'
      'and REE_STATUS='#39'A'#39)
    Left = 208
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object IBQuery4VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = []
      currency = True
      Precision = 18
    end
  end
  object IBTransaction4: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 504
  end
end
