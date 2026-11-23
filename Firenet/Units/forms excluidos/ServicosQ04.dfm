object FormServicosQ04: TFormServicosQ04
  Left = 171
  Top = 116
  Caption = 'Ordem de servi'#231'o A4 Finalizado'
  ClientHeight = 673
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Height = 1123
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
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 446
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
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 408
        Top = -1
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          -2.645833333333333000
          82.020833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_TIPO'
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
      object QRDBText1: TQRDBText
        Left = 3
        Top = -1
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          -2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_PRODUTO'
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
        Left = 482
        Top = -1
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          1275.291666666667000000
          -2.645833333333333000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_QUANTIDADE'
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
      object QRDBText8: TQRDBText
        Left = 86
        Top = -1
        Width = 316
        Height = 15
        Size.Values = (
          39.687500000000000000
          227.541666666666700000
          -2.645833333333333000
          836.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_DESCRICAO'
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
      object QRDBText9: TQRDBText
        Left = 445
        Top = -1
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          1177.395833333333000000
          -2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_UNIDADE'
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
        Left = 538
        Top = -1
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          -2.645833333333333000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_VALORUNIT'
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
      object QRDBText12: TQRDBText
        Left = 640
        Top = -1
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333340000
          1693.333333333333000000
          -2.645833333333333000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_VALORTOTAL'
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
      object QRFrameline1: TQRFrameline
        Left = 79
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          209.020833333333300000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline2: TQRFrameline
        Left = 401
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1060.979166666667000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline3: TQRFrameline
        Left = 437
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1156.229166666667000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline4: TQRFrameline
        Left = 475
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1256.770833333333000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline5: TQRFrameline
        Left = 530
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1402.291666666667000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline6: TQRFrameline
        Left = 633
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1674.812500000000000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline7: TQRFrameline
        Left = 735
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1944.687500000000000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline8: TQRFrameline
        Left = -5
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          -13.229166666666670000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
    end
    object QRBand1: TQRBand
      Left = 26
      Top = 459
      Width = 741
      Height = 28
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape8: TQRShape
        Left = 637
        Top = 17
        Width = 103
        Height = 11
        Size.Values = (
          29.104166666666670000
          1685.395833333333000000
          44.979166666666670000
          272.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 534
        Top = 17
        Width = 104
        Height = 11
        Size.Values = (
          29.104166666666670000
          1412.875000000000000000
          44.979166666666670000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 431
        Top = 17
        Width = 104
        Height = 11
        Size.Values = (
          29.104166666666670000
          1140.354166666667000000
          44.979166666666670000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 83
        Top = 17
        Width = 349
        Height = 11
        Size.Values = (
          29.104166666666670000
          219.604166666666700000
          44.979166666666670000
          923.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 17
        Width = 84
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          44.979166666666670000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 4
        Top = 18
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          10.583333333333330000
          47.625000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel9: TQRLabel
        Left = 87
        Top = 18
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          230.187500000000000000
          47.625000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel16: TQRLabel
        Left = 538
        Top = 18
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          1423.458333333333000000
          47.625000000000000000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HORA FIM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel17: TQRLabel
        Left = 641
        Top = 18
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          1695.979166666667000000
          47.625000000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel10: TQRLabel
        Left = 435
        Top = 18
        Width = 44
        Height = 8
        Size.Values = (
          21.166666666666670000
          1150.937500000000000000
          47.625000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HORA IN'#205'CIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel2: TQRLabel
        Left = 3
        Top = 5
        Width = 33
        Height = 12
        Size.Values = (
          31.750000000000000000
          7.937500000000000000
          13.229166666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HORAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object QRGroup2: TQRGroup
      Left = 26
      Top = 91
      Width = 741
      Height = 355
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        939.270833333333300000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.REE_CLIENTE'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape16: TQRShape
        Left = 0
        Top = 211
        Width = 740
        Height = 116
        Size.Values = (
          306.916666666666700000
          0.000000000000000000
          558.270833333333400000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 0
        Top = 96
        Width = 740
        Height = 116
        Size.Values = (
          306.916666666666700000
          0.000000000000000000
          254.000000000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 405
        Top = 344
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          1071.562500000000000000
          910.166666666666600000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 637
        Top = 344
        Width = 103
        Height = 11
        Size.Values = (
          29.104166666666670000
          1685.395833333333000000
          910.166666666666600000
          272.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 534
        Top = 344
        Width = 104
        Height = 11
        Size.Values = (
          29.104166666666670000
          1412.875000000000000000
          910.166666666666600000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 479
        Top = 344
        Width = 56
        Height = 11
        Size.Values = (
          29.104166666666670000
          1267.354166666667000000
          910.166666666666600000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 442
        Top = 344
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          1169.458333333333000000
          910.166666666666600000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 83
        Top = 344
        Width = 323
        Height = 11
        Size.Values = (
          29.104166666666670000
          219.604166666666700000
          910.166666666666600000
          854.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 0
        Top = 344
        Width = 84
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          910.166666666666600000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 659
        Top = 48
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1743.604166666667000000
          127.000000000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 407
        Top = 48
        Width = 253
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          127.000000000000000000
          669.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 342
        Top = 48
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          127.000000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 157
        Top = 48
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          415.395833333333400000
          127.000000000000000000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 48
        Width = 158
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          127.000000000000000000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 659
        Top = 24
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1743.604166666667000000
          63.500000000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 534
        Top = 24
        Width = 126
        Height = 25
        Size.Values = (
          66.145833333333340000
          1412.875000000000000000
          63.500000000000000000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 407
        Top = 24
        Width = 128
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          63.500000000000000000
          338.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 342
        Top = 24
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          63.500000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 24
        Width = 343
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          63.500000000000000000
          907.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 659
        Top = 0
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1743.604166666667000000
          0.000000000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 407
        Top = 0
        Width = 253
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          0.000000000000000000
          669.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 0
        Width = 408
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          0.000000000000000000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText16: TQRDBText
        Left = 48
        Top = 9
        Width = 357
        Height = 15
        Size.Values = (
          39.687500000000000000
          127.000000000000000000
          23.812500000000000000
          944.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
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
      object QRDBText3: TQRDBText
        Left = 3
        Top = 9
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          23.812500000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CLIENTE'
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
      object QRDBText4: TQRDBText
        Left = 4
        Top = 33
        Width = 335
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          87.312500000000000000
          886.354166666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ENDERECO'
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
      object QRDBText13: TQRDBText
        Left = 4
        Top = 57
        Width = 150
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          150.812500000000000000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_BAIRRO'
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
      object QRDBText14: TQRDBText
        Left = 346
        Top = 33
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          87.312500000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NUMERO'
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
      object QRDBText18: TQRDBText
        Left = 161
        Top = 57
        Width = 178
        Height = 15
        Size.Values = (
          39.687500000000000000
          425.979166666666700000
          150.812500000000000000
          470.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CIDADE'
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
      object QRDBText19: TQRDBText
        Left = 346
        Top = 57
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          150.812500000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CEP'
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
      object QRDBText21: TQRDBText
        Left = 538
        Top = 33
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          87.312500000000000000
          312.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_FONE1'
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
      object QRDBText23: TQRDBText
        Left = 411
        Top = 9
        Width = 245
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          23.812500000000000000
          648.229166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CONTATO'
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
      object QRDBText24: TQRDBText
        Left = 663
        Top = 33
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1754.187500000000000000
          87.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DTENTRADA'
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
      object QRDBText25: TQRDBText
        Left = 663
        Top = 57
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1754.187500000000000000
          150.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DTSAIDA'
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
      object QRDBText26: TQRDBText
        Left = 663
        Top = 8
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333340000
          1754.187500000000000000
          21.166666666666670000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '00000000'
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 411
        Top = 57
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          150.812500000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TECNICO'
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
      object QRDBText28: TQRDBText
        Left = 457
        Top = 57
        Width = 199
        Height = 15
        Size.Values = (
          39.687500000000000000
          1209.145833333333000000
          150.812500000000000000
          526.520833333333400000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText37: TQRDBText
        Left = 411
        Top = 33
        Width = 120
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          87.312500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CNPJ'
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
      object QRLabel53: TQRLabel
        Left = 2
        Top = 2
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          5.291666666666667000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CLIENTE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel11: TQRLabel
        Left = 2
        Top = 26
        Width = 41
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          68.791666666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ENDERE'#199'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel26: TQRLabel
        Left = 2
        Top = 50
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          132.291666666666700000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BAIRRO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel27: TQRLabel
        Left = 159
        Top = 50
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          420.687500000000000000
          132.291666666666700000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CIDADE/UF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel28: TQRLabel
        Left = 345
        Top = 50
        Width = 16
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000000000
          132.291666666666700000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel23: TQRLabel
        Left = 345
        Top = 26
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000000000
          68.791666666666670000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel24: TQRLabel
        Left = 409
        Top = 26
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          68.791666666666670000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel20: TQRLabel
        Left = 409
        Top = 2
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          5.291666666666667000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONTATO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel25: TQRLabel
        Left = 536
        Top = 26
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1418.166666666667000000
          68.791666666666670000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel29: TQRLabel
        Left = 410
        Top = 50
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          1084.791666666667000000
          132.291666666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#201'CNICO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel22: TQRLabel
        Left = 661
        Top = 50
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          1748.895833333333000000
          132.291666666666700000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA SA'#205'DA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel21: TQRLabel
        Left = 661
        Top = 26
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          1748.895833333333000000
          68.791666666666670000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA ENTRADA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel40: TQRLabel
        Left = 661
        Top = 2
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          1748.895833333333000000
          5.291666666666667000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CODIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel48: TQRLabel
        Left = 4
        Top = 345
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          10.583333333333330000
          912.812500000000000000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel3: TQRLabel
        Left = 87
        Top = 345
        Width = 43
        Height = 8
        Size.Values = (
          21.166666666666670000
          230.187500000000000000
          912.812500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel15: TQRLabel
        Left = 483
        Top = 345
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          1277.937500000000000000
          912.812500000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTDE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel31: TQRLabel
        Left = 446
        Top = 345
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1180.041666666667000000
          912.812500000000000000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UNID.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel33: TQRLabel
        Left = 538
        Top = 345
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1423.458333333333000000
          912.812500000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR UNIT.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel34: TQRLabel
        Left = 641
        Top = 345
        Width = 51
        Height = 8
        Size.Values = (
          21.166666666666670000
          1695.979166666667000000
          912.812500000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel35: TQRLabel
        Left = 3
        Top = 332
        Width = 112
        Height = 12
        Size.Values = (
          31.750000000000000000
          7.937500000000000000
          878.416666666666700000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRODUTOS E SERVI'#199'OS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel39: TQRLabel
        Left = 409
        Top = 345
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          912.812500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'P/S'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape6: TQRShape
        Left = 518
        Top = 72
        Width = 222
        Height = 25
        Size.Values = (
          66.145833333333340000
          1370.541666666667000000
          190.500000000000000000
          587.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 407
        Top = 72
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          190.500000000000000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 296
        Top = 72
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          783.166666666666800000
          190.500000000000000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 185
        Top = 72
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          489.479166666666600000
          190.500000000000000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 72
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          190.500000000000000000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText20: TQRDBText
        Left = 522
        Top = 81
        Width = 215
        Height = 15
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          214.312500000000000000
          568.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_ACESSORIOS'
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
      object QRDBText22: TQRDBText
        Left = 300
        Top = 81
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          793.750000000000000000
          214.312500000000000000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_MODELO'
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
        Left = 4
        Top = 81
        Width = 178
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          214.312500000000000000
          470.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_PRODUTO'
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
      object QRDBText42: TQRDBText
        Left = 189
        Top = 81
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          500.062500000000100000
          214.312500000000000000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_MARCA'
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
      object QRLabel7: TQRLabel
        Left = 2
        Top = 74
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          195.791666666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRODUTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel8: TQRLabel
        Left = 187
        Top = 74
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          494.770833333333300000
          195.791666666666700000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MARCA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel13: TQRLabel
        Left = 298
        Top = 74
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          788.458333333333300000
          195.791666666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MODELO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel14: TQRLabel
        Left = 409
        Top = 74
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          195.791666666666700000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel18: TQRLabel
        Left = 520
        Top = 74
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          1375.833333333333000000
          195.791666666666700000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ACESS'#211'RIOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText44: TQRDBText
        Left = 411
        Top = 81
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          214.312500000000000000
          275.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_SERIE'
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
      object QRLabel36: TQRLabel
        Left = 2
        Top = 98
        Width = 151
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          259.291666666666700000
          399.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DEFEITO ALEGADO / SERVI'#199'O SOLICITADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel32: TQRLabel
        Left = 2
        Top = 213
        Width = 74
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          563.562500000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SERVI'#199'O EFETUADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText43: TQRDBText
        Left = 3
        Top = 106
        Width = 733
        Height = 102
        Size.Values = (
          269.875000000000000000
          7.937500000000000000
          280.458333333333400000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DEFEITO'
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
        Left = 4
        Top = 221
        Width = 733
        Height = 102
        Size.Values = (
          269.875000000000000000
          10.583333333333330000
          584.729166666666800000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CONSERTO'
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
        Caption = 'Ordem de Servi'#231'o'
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
    object QRSubDetail2: TQRSubDetail
      Left = 26
      Top = 487
      Width = 741
      Height = 13
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery3
      FooterBand = QRBand2
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText5: TQRDBText
        Left = 3
        Top = -1
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          -2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'SEH_DATA'
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
      object QRDBText7: TQRDBText
        Left = 132
        Top = -1
        Width = 297
        Height = 15
        Size.Values = (
          39.687500000000000000
          349.250000000000000000
          -2.645833333333333000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
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
      object QRDBText15: TQRDBText
        Left = 87
        Top = -1
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          230.187500000000000000
          -2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'SEH_FUNCIONARIO'
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
      object QRDBText17: TQRDBText
        Left = 434
        Top = -1
        Width = 96
        Height = 15
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          -2.645833333333333000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'SEH_HORAINICIO'
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
      object QRDBText31: TQRDBText
        Left = 537
        Top = -1
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1420.812500000000000000
          -2.645833333333333000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'SEH_HORAFIM'
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
      object QRDBText35: TQRDBText
        Left = 640
        Top = -1
        Width = 96
        Height = 16
        Size.Values = (
          42.333333333333340000
          1693.333333333333000000
          -2.645833333333333000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'SEH_TOTALHORAS'
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
      object QRFrameline9: TQRFrameline
        Left = -5
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          -13.229166666666670000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline10: TQRFrameline
        Left = 79
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          209.020833333333300000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline11: TQRFrameline
        Left = 427
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1129.770833333333000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline12: TQRFrameline
        Left = 530
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1402.291666666667000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline13: TQRFrameline
        Left = 633
        Top = -1
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1674.812500000000000000
          -2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline14: TQRFrameline
        Left = 735
        Top = -2
        Width = 10
        Height = 14
        Size.Values = (
          37.041666666666670000
          1944.687500000000000000
          -5.291666666666667000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
    end
    object PageFooterBand1: TQRBand
      Left = 26
      Top = 596
      Width = 741
      Height = 16
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel41: TQRLabel
        Left = 3
        Top = 4
        Width = 79
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          10.583333333333330000
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
      object QRDBText40: TQRDBText
        Left = 671
        Top = 4
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1775.354166666667000000
          10.583333333333330000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel42: TQRLabel
        Left = 259
        Top = 3
        Width = 204
        Height = 12
        Size.Values = (
          31.750000000000000000
          685.270833333333300000
          7.937500000000000000
          539.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sem valor fiscal - N'#227'o substitui a nota fiscal.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object QRBand2: TQRBand
      Left = 26
      Top = 500
      Width = 741
      Height = 96
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        254.000000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape40: TQRShape
        Left = 0
        Top = 41
        Width = 740
        Height = 56
        Size.Values = (
          148.166666666666700000
          0.000000000000000000
          108.479166666666700000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText11: TQRDBText
        Left = 3
        Top = 79
        Width = 415
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          209.020833333333300000
          1098.020833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_SERVICOSRPF'
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
      object QRDBText38: TQRDBText
        Left = 432
        Top = 79
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          209.020833333333300000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
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
      object QRShape10: TQRShape
        Left = 432
        Top = 76
        Width = 297
        Height = 2
        Size.Values = (
          5.291666666666667000
          1143.000000000000000000
          201.083333333333300000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 615
        Top = 17
        Width = 125
        Height = 25
        Size.Values = (
          66.145833333333340000
          1627.187500000000000000
          44.979166666666670000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 492
        Top = 17
        Width = 124
        Height = 25
        Size.Values = (
          66.145833333333340000
          1301.750000000000000000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 369
        Top = 17
        Width = 124
        Height = 25
        Size.Values = (
          66.145833333333340000
          976.312500000000000000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 246
        Top = 17
        Width = 124
        Height = 25
        Size.Values = (
          66.145833333333340000
          650.875000000000000000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 123
        Top = 17
        Width = 124
        Height = 25
        Size.Values = (
          66.145833333333340000
          325.437500000000000000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 0
        Top = 17
        Width = 124
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText36: TQRDBText
        Left = 250
        Top = 26
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          661.458333333333400000
          68.791666666666680000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALHORAS'
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
      object QRDBText29: TQRDBText
        Left = 4
        Top = 26
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          68.791666666666680000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALPRODUTOS'
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
      object QRDBText30: TQRDBText
        Left = 127
        Top = 26
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          336.020833333333400000
          68.791666666666680000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALSERVICOS'
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
      object QRDBText32: TQRDBText
        Left = 373
        Top = 26
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          986.895833333333400000
          68.791666666666680000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DESCPORC'
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
      object QRDBText33: TQRDBText
        Left = 496
        Top = 26
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          1312.333333333333000000
          68.791666666666680000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DESCVALOR'
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
      object QRDBText34: TQRDBText
        Left = 619
        Top = 26
        Width = 117
        Height = 15
        Size.Values = (
          39.687500000000000000
          1637.770833333333000000
          68.791666666666680000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_VALORTOTAL'
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
      object QRLabel4: TQRLabel
        Left = 2
        Top = 19
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          50.270833333333330000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL PRODUTOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel12: TQRLabel
        Left = 125
        Top = 19
        Width = 64
        Height = 8
        Size.Values = (
          21.166666666666670000
          330.729166666666700000
          50.270833333333330000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL SERVI'#199'OS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel30: TQRLabel
        Left = 248
        Top = 19
        Width = 52
        Height = 8
        Size.Values = (
          21.166666666666670000
          656.166666666666700000
          50.270833333333330000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL HORAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel19: TQRLabel
        Left = 371
        Top = 19
        Width = 49
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          50.270833333333330000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '% DESCONTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel37: TQRLabel
        Left = 494
        Top = 19
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          1307.041666666667000000
          50.270833333333330000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DESCONTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel38: TQRLabel
        Left = 617
        Top = 19
        Width = 51
        Height = 8
        Size.Values = (
          21.166666666666670000
          1632.479166666667000000
          50.270833333333330000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel6: TQRLabel
        Left = 3
        Top = 5
        Width = 32
        Height = 12
        Size.Values = (
          31.750000000000000000
          7.937500000000000000
          13.229166666666670000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 472
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 472
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 472
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 280
    Top = 472
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'SER_CODIGO,'
      'SER_CLIENTE,'
      'SER_DESCPORC,'
      'SER_DESCVALOR,'
      'SER_PRODUTO,'
      'SER_MARCA,'
      'SER_MODELO,'
      'SER_SERIE,'
      'SER_ACESSORIOS,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_TECNICO,'
      'SER_LOCALIZACAO,'
      'SER_DEFEITO,'
      'SER_CONSERTO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TOTALHORAS,'
      'SER_TOTALPRODUTOS,'
      'SER_TOTALSERVICOS,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_CNPJ,'
      'CLI_CPF,'
      'CLI_NOME,'
      'CLI_ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_CONTATO,'
      'CLI_COMPLEMENTO,'
      'CLI_NUMERO,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo')
    Left = 200
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1SER_ACESSORIOS: TIBStringField
      FieldName = 'SER_ACESSORIOS'
      Origin = '"SERVICOS"."SER_ACESSORIOS"'
      Size = 40
    end
    object IBQuery1SER_CLIENTE: TIntegerField
      FieldName = 'SER_CLIENTE'
      Origin = '"SERVICOS"."SER_CLIENTE"'
      Required = True
    end
    object IBQuery1SER_CODIGO: TIntegerField
      FieldName = 'SER_CODIGO'
      Origin = '"SERVICOS"."SER_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1SER_CONSERTO: TWideMemoField
      FieldName = 'SER_CONSERTO'
      Origin = '"SERVICOS"."SER_CONSERTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1SER_DEFEITO: TWideMemoField
      FieldName = 'SER_DEFEITO'
      Origin = '"SERVICOS"."SER_DEFEITO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1SER_DESCPORC: TFMTBCDField
      FieldName = 'SER_DESCPORC'
      Origin = '"SERVICOS"."SER_DESCPORC"'
      Precision = 18
    end
    object IBQuery1SER_DESCVALOR: TFMTBCDField
      FieldName = 'SER_DESCVALOR'
      Origin = '"SERVICOS"."SER_DESCVALOR"'
      currency = True
      Precision = 18
    end
    object IBQuery1SER_DTENTRADA: TDateField
      FieldName = 'SER_DTENTRADA'
      Origin = '"SERVICOS"."SER_DTENTRADA"'
    end
    object IBQuery1SER_DTPREVISAO: TDateField
      FieldName = 'SER_DTPREVISAO'
      Origin = '"SERVICOS"."SER_DTPREVISAO"'
    end
    object IBQuery1SER_DTSAIDA: TDateField
      FieldName = 'SER_DTSAIDA'
      Origin = '"SERVICOS"."SER_DTSAIDA"'
    end
    object IBQuery1SER_PRODUTO: TIBStringField
      FieldName = 'SER_PRODUTO'
      Origin = '"SERVICOS"."SER_PRODUTO"'
      Size = 40
    end
    object IBQuery1SER_LOCALIZACAO: TIBStringField
      FieldName = 'SER_LOCALIZACAO'
      Origin = '"SERVICOS"."SER_LOCALIZACAO"'
    end
    object IBQuery1SER_MARCA: TIBStringField
      FieldName = 'SER_MARCA'
      Origin = '"SERVICOS"."SER_MARCA"'
      Size = 40
    end
    object IBQuery1SER_MODELO: TIBStringField
      FieldName = 'SER_MODELO'
      Origin = '"SERVICOS"."SER_MODELO"'
      Size = 40
    end
    object IBQuery1SER_SENHAONLINE: TIBStringField
      FieldName = 'SER_SENHAONLINE'
      Origin = '"SERVICOS"."SER_SENHAONLINE"'
      Size = 40
    end
    object IBQuery1SER_SERIE: TIBStringField
      FieldName = 'SER_SERIE'
      Origin = '"SERVICOS"."SER_SERIE"'
      Size = 40
    end
    object IBQuery1SER_STATUS: TIBStringField
      FieldName = 'SER_STATUS'
      Origin = '"SERVICOS"."SER_STATUS"'
      Size = 1
    end
    object IBQuery1SER_TECNICO: TIntegerField
      FieldName = 'SER_TECNICO'
      Origin = '"SERVICOS"."SER_TECNICO"'
      Required = True
    end
    object IBQuery1SER_TOTALHORAS: TIBStringField
      FieldName = 'SER_TOTALHORAS'
      Origin = '"SERVICOS"."SER_TOTALHORAS"'
      Size = 25
    end
    object IBQuery1SER_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'SER_TOTALPRODUTOS'
      Origin = '"SERVICOS"."SER_TOTALPRODUTOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1SER_TOTALSERVICOS: TFMTBCDField
      FieldName = 'SER_TOTALSERVICOS'
      Origin = '"SERVICOS"."SER_TOTALSERVICOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1SER_VALOR: TFMTBCDField
      FieldName = 'SER_VALOR'
      Origin = '"SERVICOS"."SER_VALOR"'
      currency = True
      Precision = 18
    end
    object IBQuery1SER_VALORTOTAL: TFMTBCDField
      FieldName = 'SER_VALORTOTAL'
      Origin = '"SERVICOS"."SER_VALORTOTAL"'
      currency = True
      Precision = 18
    end
    object IBQuery1CLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object IBQuery1CLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object IBQuery1CLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = []
      Size = 55
    end
    object IBQuery1CLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object IBQuery1CLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1CLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object IBQuery1CLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object IBQuery1CLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = []
      Size = 113
    end
    object IBQuery1CLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object IBQuery1CLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1CLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
      Size = 15
    end
    object IBQuery1VEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 472
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 520
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'SEI_CODIGO,'
      'SEI_DESCRICAO,'
      'SEI_PRODUTO,'
      'SEI_TIPO,'
      'SEI_UNIDADE,'
      'SEI_QUANTIDADE,'
      'SEI_VALORUNIT,'
      'SEI_VALORTOTAL'
      'from SERVICOSITENS'
      'left join PRODUTOS on SEI_PRODUTO=PRO_CODIGO'
      'where SEI_SERVICO=:codigo'
      'order by SEI_CODIGO')
    Left = 200
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery2SEI_CODIGO: TIntegerField
      FieldName = 'SEI_CODIGO'
      Origin = '"SERVICOSITENS"."SEI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2SEI_DESCRICAO: TIBStringField
      FieldName = 'SEI_DESCRICAO'
      Origin = '"SERVICOSITENS"."SEI_DESCRICAO"'
      Size = 100
    end
    object IBQuery2SEI_PRODUTO: TIntegerField
      FieldName = 'SEI_PRODUTO'
      Origin = '"SERVICOSITENS"."SEI_PRODUTO"'
      Required = True
    end
    object IBQuery2SEI_TIPO: TIBStringField
      FieldName = 'SEI_TIPO'
      Origin = '"SERVICOSITENS"."SEI_TIPO"'
      Size = 1
    end
    object IBQuery2SEI_UNIDADE: TIBStringField
      FieldName = 'SEI_UNIDADE'
      Origin = '"SERVICOSITENS"."SEI_UNIDADE"'
      Size = 3
    end
    object IBQuery2SEI_QUANTIDADE: TFMTBCDField
      FieldName = 'SEI_QUANTIDADE'
      Origin = '"SERVICOSITENS"."SEI_QUANTIDADE"'
      Precision = 18
    end
    object IBQuery2SEI_VALORUNIT: TFMTBCDField
      FieldName = 'SEI_VALORUNIT'
      Origin = '"SERVICOSITENS"."SEI_VALORUNIT"'
      currency = True
      Precision = 18
    end
    object IBQuery2SEI_VALORTOTAL: TFMTBCDField
      FieldName = 'SEI_VALORTOTAL'
      Origin = '"SERVICOSITENS"."SEI_VALORTOTAL"'
      currency = True
      Precision = 18
    end
  end
  object IBQuery3: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from SERVICOSHORAS'
      'left join VENDEDORES on SEH_FUNCIONARIO=VEN_CODIGO'
      'where SEH_SERVICO=:codigo'
      'order by SEH_DATA desc, SEH_FUNCIONARIO')
    Left = 200
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object IBTransaction3: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 568
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 592
    Top = 472
  end
end
