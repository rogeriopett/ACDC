object FormServicosQ07: TFormServicosQ07
  Left = 248
  Top = 61
  Caption = 'Impress'#227'o de OS em duas vias A5 paisagem'
  ClientHeight = 935
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
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
    object DetailBand1: TQRBand
      Left = 26
      Top = 38
      Width = 741
      Height = 1047
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2770.187500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape41: TQRShape
        Left = 518
        Top = 136
        Width = 223
        Height = 25
        Size.Values = (
          66.145833333333340000
          1370.541666666667000000
          359.833333333333400000
          590.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 407
        Top = 136
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          359.833333333333400000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 296
        Top = 136
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          783.166666666666800000
          359.833333333333400000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 185
        Top = 136
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          489.479166666666600000
          359.833333333333400000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 0
        Top = 136
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          359.833333333333400000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 0
        Top = 710
        Width = 741
        Height = 154
        Size.Values = (
          407.458333333333400000
          0.000000000000000000
          1878.541666666667000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 518
        Top = 686
        Width = 223
        Height = 25
        Size.Values = (
          66.145833333333340000
          1370.541666666667000000
          1815.041666666667000000
          590.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 407
        Top = 686
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          1815.041666666667000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 296
        Top = 686
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          783.166666666666800000
          1815.041666666667000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 185
        Top = 686
        Width = 112
        Height = 25
        Size.Values = (
          66.145833333333340000
          489.479166666666600000
          1815.041666666667000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 0
        Top = 686
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          1815.041666666667000000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 660
        Top = 662
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          1751.541666666667000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 407
        Top = 662
        Width = 254
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          1751.541666666667000000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 342
        Top = 662
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          1751.541666666667000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 157
        Top = 662
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          415.395833333333400000
          1751.541666666667000000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 0
        Top = 662
        Width = 158
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          1751.541666666667000000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 660
        Top = 638
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          1688.041666666667000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 534
        Top = 638
        Width = 127
        Height = 25
        Size.Values = (
          66.145833333333340000
          1412.875000000000000000
          1688.041666666667000000
          336.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 407
        Top = 638
        Width = 128
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          1688.041666666667000000
          338.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 342
        Top = 638
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          1688.041666666667000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 0
        Top = 638
        Width = 343
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          1688.041666666667000000
          907.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 660
        Top = 614
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          1624.541666666667000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 407
        Top = 614
        Width = 254
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          1624.541666666667000000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 614
        Width = 408
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          1624.541666666667000000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 0
        Top = 160
        Width = 741
        Height = 154
        Size.Values = (
          407.458333333333400000
          0.000000000000000000
          423.333333333333300000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 407
        Top = 112
        Width = 254
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          296.333333333333400000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 342
        Top = 112
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          296.333333333333400000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 157
        Top = 112
        Width = 186
        Height = 25
        Size.Values = (
          66.145833333333340000
          415.395833333333400000
          296.333333333333400000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 112
        Width = 158
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          296.333333333333400000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 534
        Top = 88
        Width = 127
        Height = 25
        Size.Values = (
          66.145833333333340000
          1412.875000000000000000
          232.833333333333400000
          336.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 407
        Top = 88
        Width = 128
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          232.833333333333400000
          338.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 342
        Top = 88
        Width = 66
        Height = 25
        Size.Values = (
          66.145833333333340000
          904.875000000000000000
          232.833333333333400000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 660
        Top = 112
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          296.333333333333400000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 660
        Top = 88
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          232.833333333333400000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 407
        Top = 64
        Width = 254
        Height = 25
        Size.Values = (
          66.145833333333340000
          1076.854166666667000000
          169.333333333333300000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 0
        Top = 313
        Width = 741
        Height = 184
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          486.833333333333400000
          0.000000000000000000
          828.145833333333200000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 660
        Top = 64
        Width = 81
        Height = 25
        Size.Values = (
          66.145833333333340000
          1746.250000000000000000
          169.333333333333300000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 88
        Width = 343
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          232.833333333333400000
          907.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 64
        Width = 408
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          169.333333333333300000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 741
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          0.000000000000000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 0
        Top = 550
        Width = 741
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          1455.208333333333000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 863
        Width = 741
        Height = 184
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          486.833333333333400000
          0.000000000000000000
          2283.354166666667000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText16: TQRDBText
        Left = 49
        Top = 73
        Width = 355
        Height = 15
        Size.Values = (
          39.687500000000000000
          129.645833333333300000
          193.145833333333300000
          939.270833333333400000)
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
        Left = 4
        Top = 73
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          193.145833333333300000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CODIGO'
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
        Top = 97
        Width = 335
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          256.645833333333400000
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
        Top = 121
        Width = 150
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          320.145833333333400000
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
        Top = 97
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          256.645833333333400000
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
        Top = 121
        Width = 178
        Height = 15
        Size.Values = (
          39.687500000000000000
          425.979166666666700000
          320.145833333333400000
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
        Top = 121
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          320.145833333333400000
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
      object QRDBText20: TQRDBText
        Left = 522
        Top = 145
        Width = 215
        Height = 15
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          383.645833333333400000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 538
        Top = 97
        Width = 119
        Height = 15
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          256.645833333333400000
          314.854166666666700000)
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
        Top = 73
        Width = 246
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          193.145833333333300000
          650.875000000000000000)
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
        Left = 664
        Top = 97
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          256.645833333333400000
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
        Left = 664
        Top = 121
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          320.145833333333400000
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
        Left = 664
        Top = 72
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333340000
          1756.833333333333000000
          190.500000000000000000
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
        Left = 300
        Top = 145
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          793.750000000000000000
          383.645833333333400000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 189
        Top = 145
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          500.062500000000100000
          383.645833333333400000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText37: TQRDBText
        Left = 410
        Top = 97
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          1084.791666666667000000
          256.645833333333400000
          312.208333333333400000)
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
      object QRDBText43: TQRDBText
        Left = 4
        Top = 170
        Width = 733
        Height = 141
        Size.Values = (
          373.062500000000000000
          10.583333333333330000
          449.791666666666700000
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
      object QRShape10: TQRShape
        Left = 424
        Top = 1010
        Width = 297
        Height = 2
        Size.Values = (
          5.291666666666667000
          1121.833333333333000000
          2672.291666666667000000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 240
        Top = 340
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          899.583333333333400000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 240
        Top = 367
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          971.020833333333400000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 240
        Top = 394
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          1042.458333333333000000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 240
        Top = 421
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          1113.895833333333000000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 424
        Top = 1012
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          2677.583333333333000000
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
      object QRImage1: TQRImage
        Left = 1
        Top = 551
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          1457.854166666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRDBText2: TQRDBText
        Left = 124
        Top = 552
        Width = 91
        Height = 20
        Size.Values = (
          52.916666666666660000
          328.083333333333400000
          1460.500000000000000000
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
      object QRDBText5: TQRDBText
        Left = 124
        Top = 570
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333400000
          1508.125000000000000000
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
      object QRDBText6: TQRDBText
        Left = 124
        Top = 584
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333400000
          1545.166666666667000000
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
      object QRDBText7: TQRDBText
        Left = 124
        Top = 598
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333400000
          1582.208333333333000000
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
      object QRLabel2: TQRLabel
        Left = 638
        Top = 598
        Width = 98
        Height = 14
        Size.Values = (
          37.041666666666670000
          1688.041666666667000000
          1582.208333333333000000
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
      object QRSysData2: TQRSysData
        Left = 670
        Top = 584
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          1772.708333333334000000
          1545.166666666667000000
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
      object QRSysData3: TQRSysData
        Left = 680
        Top = 570
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          1799.166666666667000000
          1508.125000000000000000
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
      object QRDBText8: TQRDBText
        Left = 49
        Top = 623
        Width = 355
        Height = 15
        Size.Values = (
          39.687500000000000000
          129.645833333333300000
          1648.354166666667000000
          939.270833333333400000)
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
      object QRDBText9: TQRDBText
        Left = 4
        Top = 623
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          1648.354166666667000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CODIGO'
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
      object QRDBText10: TQRDBText
        Left = 4
        Top = 647
        Width = 335
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          1711.854166666667000000
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
      object QRDBText12: TQRDBText
        Left = 4
        Top = 671
        Width = 150
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          1775.354166666667000000
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
      object QRDBText15: TQRDBText
        Left = 346
        Top = 647
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          1711.854166666667000000
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
      object QRDBText17: TQRDBText
        Left = 161
        Top = 671
        Width = 178
        Height = 15
        Size.Values = (
          39.687500000000000000
          425.979166666666700000
          1775.354166666667000000
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
      object QRDBText29: TQRDBText
        Left = 346
        Top = 671
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          915.458333333333200000
          1775.354166666667000000
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
      object QRDBText30: TQRDBText
        Left = 521
        Top = 695
        Width = 215
        Height = 15
        Size.Values = (
          39.687500000000000000
          1378.479166666667000000
          1838.854166666667000000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 538
        Top = 647
        Width = 119
        Height = 15
        Size.Values = (
          39.687500000000000000
          1423.458333333333000000
          1711.854166666667000000
          314.854166666666700000)
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
      object QRDBText32: TQRDBText
        Left = 411
        Top = 623
        Width = 246
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          1648.354166666667000000
          650.875000000000000000)
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
      object QRDBText33: TQRDBText
        Left = 664
        Top = 647
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          1711.854166666667000000
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
      object QRDBText34: TQRDBText
        Left = 664
        Top = 671
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          1775.354166666667000000
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
      object QRDBText35: TQRDBText
        Left = 664
        Top = 622
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333340000
          1756.833333333333000000
          1645.708333333333000000
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
      object QRDBText36: TQRDBText
        Left = 300
        Top = 695
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          793.750000000000000000
          1838.854166666667000000
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
      object QRDBText40: TQRDBText
        Left = 189
        Top = 695
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          500.062500000000100000
          1838.854166666667000000
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
      object QRDBText41: TQRDBText
        Left = 411
        Top = 647
        Width = 120
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          1711.854166666667000000
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
      object QRDBText42: TQRDBText
        Left = 4
        Top = 720
        Width = 733
        Height = 141
        Size.Values = (
          373.062500000000000000
          10.583333333333330000
          1905.000000000000000000
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
      object QRShape4: TQRShape
        Left = 240
        Top = 889
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          2352.145833333333000000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 240
        Top = 916
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          2423.583333333333000000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 240
        Top = 943
        Width = 496
        Height = 2
        Size.Values = (
          5.291666666666667000
          635.000000000000000000
          2495.020833333333000000
          1312.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 424
        Top = 461
        Width = 297
        Height = 2
        Size.Values = (
          5.291666666666667000
          1121.833333333333000000
          1219.729166666667000000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText44: TQRDBText
        Left = 424
        Top = 463
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          1225.020833333333000000
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
      object QRShape12: TQRShape
        Left = 24
        Top = 461
        Width = 297
        Height = 2
        Size.Values = (
          5.291666666666667000
          63.500000000000000000
          1219.729166666667000000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText45: TQRDBText
        Left = 24
        Top = 463
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          1225.020833333333000000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRShape18: TQRShape
        Left = 24
        Top = 1010
        Width = 297
        Height = 2
        Size.Values = (
          5.291666666666667000
          63.500000000000000000
          2672.291666666667000000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText46: TQRDBText
        Left = 24
        Top = 1012
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          2677.583333333333000000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRLabel35: TQRLabel
        Left = 5
        Top = 326
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          862.541666666666900000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 5
        Top = 353
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          933.979166666666600000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 5
        Top = 380
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          1005.416666666667000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 5
        Top = 407
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          1076.854166666667000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 5
        Top = 875
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          2315.104166666667000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 5
        Top = 902
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          2386.541666666667000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 5
        Top = 929
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          2457.979166666667000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '____/____/____  ____:____ - ____:____'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 3
        Top = 480
        Width = 734
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1270.000000000000000000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_SERVICOSRPA'
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
        Left = 3
        Top = 1029
        Width = 734
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          2722.562500000000000000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_SERVICOSRPA'
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
          1772.708333333334000000
          89.958333333333340000
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
          52.916666666666660000
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
          52.916666666666660000
          328.083333333333400000
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
          328.083333333333400000
          52.916666666666660000
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
          328.083333333333400000
          89.958333333333340000
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
          328.083333333333400000
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
      object QRDBText11: TQRDBText
        Left = 3
        Top = 695
        Width = 179
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1838.854166666667000000
          473.604166666666700000)
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
      object QRDBText48: TQRDBText
        Left = 4
        Top = 145
        Width = 178
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          383.645833333333400000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Left = 411
        Top = 671
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          1775.354166666667000000
          95.250000000000000000)
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
      object QRDBText39: TQRDBText
        Left = 451
        Top = 671
        Width = 206
        Height = 15
        Size.Values = (
          39.687500000000000000
          1193.270833333333000000
          1775.354166666667000000
          545.041666666666800000)
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
      object QRDBText49: TQRDBText
        Left = 411
        Top = 121
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          320.145833333333400000
          95.250000000000000000)
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
      object QRDBText50: TQRDBText
        Left = 451
        Top = 121
        Width = 206
        Height = 15
        Size.Values = (
          39.687500000000000000
          1193.270833333333000000
          320.145833333333400000
          545.041666666666800000)
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
      object QRLabel53: TQRLabel
        Left = 2
        Top = 66
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          174.625000000000000000
          84.666666666666680000)
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
        Top = 90
        Width = 41
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          238.125000000000000000
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
      object QRLabel19: TQRLabel
        Left = 662
        Top = 66
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          174.625000000000000000
          74.083333333333340000)
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
      object QRLabel20: TQRLabel
        Left = 409
        Top = 66
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          174.625000000000000000
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
      object QRLabel21: TQRLabel
        Left = 662
        Top = 90
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          238.125000000000000000
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
      object QRLabel22: TQRLabel
        Left = 662
        Top = 114
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          301.625000000000000000
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
      object QRLabel23: TQRLabel
        Left = 345
        Top = 90
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000100000
          238.125000000000000000
          82.020833333333340000)
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
        Top = 90
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          238.125000000000000000
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
      object QRLabel25: TQRLabel
        Left = 536
        Top = 90
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1418.166666666667000000
          238.125000000000000000
          52.916666666666660000)
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
      object QRLabel26: TQRLabel
        Left = 2
        Top = 114
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          301.625000000000000000
          74.083333333333340000)
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
        Top = 114
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          420.687500000000000000
          301.625000000000000000
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
        Top = 114
        Width = 16
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000100000
          301.625000000000000000
          42.333333333333340000)
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
      object QRLabel29: TQRLabel
        Left = 410
        Top = 114
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          1084.791666666667000000
          301.625000000000000000
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
      object QRLabel30: TQRLabel
        Left = 2
        Top = 138
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          365.125000000000000000
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
      object QRLabel42: TQRLabel
        Left = 187
        Top = 138
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          494.770833333333400000
          365.125000000000000000
          68.791666666666680000)
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
      object QRLabel50: TQRLabel
        Left = 298
        Top = 138
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          788.458333333333400000
          365.125000000000000000
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
      object QRLabel52: TQRLabel
        Left = 520
        Top = 138
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          1375.833333333333000000
          365.125000000000000000
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
      object QRLabel54: TQRLabel
        Left = 2
        Top = 162
        Width = 151
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          428.625000000000000000
          399.520833333333400000)
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
      object QRLabel3: TQRLabel
        Left = 2
        Top = 315
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          833.437500000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ATENDIMENTOS'
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
        Left = 409
        Top = 138
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          365.125000000000000000
          60.854166666666680000)
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
      object QRDBText51: TQRDBText
        Left = 411
        Top = 145
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          383.645833333333400000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 2
        Top = 616
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1629.833333333333000000
          84.666666666666680000)
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
      object QRLabel6: TQRLabel
        Left = 409
        Top = 616
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          1629.833333333333000000
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
      object QRLabel7: TQRLabel
        Left = 662
        Top = 616
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          1629.833333333333000000
          74.083333333333340000)
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
      object QRLabel8: TQRLabel
        Left = 2
        Top = 640
        Width = 41
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1693.333333333333000000
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
      object QRLabel9: TQRLabel
        Left = 345
        Top = 640
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000100000
          1693.333333333333000000
          82.020833333333340000)
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
      object QRLabel10: TQRLabel
        Left = 409
        Top = 640
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          1693.333333333333000000
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
      object QRLabel12: TQRLabel
        Left = 536
        Top = 640
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1418.166666666667000000
          1693.333333333333000000
          52.916666666666660000)
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
      object QRLabel13: TQRLabel
        Left = 662
        Top = 640
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          1693.333333333333000000
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
      object QRLabel14: TQRLabel
        Left = 2
        Top = 664
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1756.833333333333000000
          74.083333333333340000)
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
      object QRLabel16: TQRLabel
        Left = 159
        Top = 664
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          420.687500000000000000
          1756.833333333333000000
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
      object QRLabel17: TQRLabel
        Left = 345
        Top = 664
        Width = 16
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000100000
          1756.833333333333000000
          42.333333333333340000)
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
      object QRLabel18: TQRLabel
        Left = 410
        Top = 664
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          1084.791666666667000000
          1756.833333333333000000
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
      object QRLabel31: TQRLabel
        Left = 662
        Top = 664
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          1751.541666666667000000
          1756.833333333333000000
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
      object QRLabel32: TQRLabel
        Left = 2
        Top = 688
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1820.333333333333000000
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
      object QRLabel33: TQRLabel
        Left = 187
        Top = 688
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          494.770833333333400000
          1820.333333333333000000
          68.791666666666680000)
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
      object QRLabel34: TQRLabel
        Left = 298
        Top = 688
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          788.458333333333400000
          1820.333333333333000000
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
      object QRLabel49: TQRLabel
        Left = 409
        Top = 688
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1082.145833333333000000
          1820.333333333333000000
          60.854166666666680000)
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
      object QRLabel51: TQRLabel
        Left = 520
        Top = 688
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          1375.833333333333000000
          1820.333333333333000000
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
      object QRLabel55: TQRLabel
        Left = 2
        Top = 712
        Width = 151
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1883.833333333333000000
          399.520833333333400000)
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
      object QRLabel56: TQRLabel
        Left = 2
        Top = 865
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          2288.645833333333000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ATENDIMENTOS'
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
      object QRDBText52: TQRDBText
        Left = 411
        Top = 695
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          1087.437500000000000000
          1838.854166666667000000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 626
    Top = 224
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 552
    Top = 224
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 472
    Top = 224
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 400
    Top = 224
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 320
    Top = 224
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DTENTRADA,'
      'SER_DTNOTAFISCAL,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_MARCA,'
      'SER_MODELO,'
      'SER_NUMERONF'
      'SER_PRODUTO,'
      'SER_SENHAONLINE,'
      'SER_SERIE,'
      'SER_TECNICO,'
      'SER_VALORTOTAL,'
      'CLI_BAIRRO,'
      'CLI_CEP,'
      'CLI_CIDADE||'#39' - '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_CNPJ,'
      'CLI_CODIGO,'
      'CLI_COMPLEMENTO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_ENDERECO,'
      'CLI_FONE1,'
      'CLI_NOME,'
      'CLI_NUMERO,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo')
    Left = 240
    Top = 224
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
    object IBQuery1SER_DTENTRADA: TDateField
      FieldName = 'SER_DTENTRADA'
      Origin = '"SERVICOS"."SER_DTENTRADA"'
    end
    object IBQuery1SER_DTNOTAFISCAL: TDateField
      FieldName = 'SER_DTNOTAFISCAL'
      Origin = '"SERVICOS"."SER_DTNOTAFISCAL"'
    end
    object IBQuery1SER_DTPREVISAO: TDateField
      FieldName = 'SER_DTPREVISAO'
      Origin = '"SERVICOS"."SER_DTPREVISAO"'
    end
    object IBQuery1SER_DTSAIDA: TDateField
      FieldName = 'SER_DTSAIDA'
      Origin = '"SERVICOS"."SER_DTSAIDA"'
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
    object IBQuery1SER_PRODUTO: TIntegerField
      FieldName = 'SER_PRODUTO'
      Origin = '"SERVICOS"."SER_NUMERONF"'
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
    object IBQuery1SER_TECNICO: TIntegerField
      FieldName = 'SER_TECNICO'
      Origin = '"SERVICOS"."SER_TECNICO"'
      Required = True
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
    object IBQuery1CLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
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
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 176
    Top = 224
  end
end
