object FormReceituariosQ01: TFormReceituariosQ01
  Left = 0
  Top = 0
  Caption = 'Ficha de Receitu'#225'rio'
  ClientHeight = 559
  ClientWidth = 1159
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = FDQuery1
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
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      180.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      2970.000000000000000000
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
      Top = 135
      Width = 1070
      Height = 19
      Frame.DrawBottom = True
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 37
        Top = 2
        Width = 193
        Height = 15
        Size.Values = (
          39.687500000000000000
          97.895833333333340000
          5.291666666666667000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'MTO_NOME'
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
        Top = 2
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          5.291666666666667000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_ORDEM'
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
      object QRShape50: TQRShape
        Left = 324
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          857.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 348
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          920.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 372
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          984.249999999999900000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 396
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1047.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 420
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1111.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 444
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1174.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 468
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1238.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 492
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1301.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 516
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1365.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 540
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1428.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 564
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1492.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 588
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1555.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape62: TQRShape
        Left = 612
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1619.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape63: TQRShape
        Left = 636
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1682.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape64: TQRShape
        Left = 660
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1746.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape65: TQRShape
        Left = 684
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1809.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 708
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1873.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape67: TQRShape
        Left = 732
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1936.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 756
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2000.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 780
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2063.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 804
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2127.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape71: TQRShape
        Left = 828
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2190.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape72: TQRShape
        Left = 852
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2254.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape73: TQRShape
        Left = 876
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2317.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape74: TQRShape
        Left = 900
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2381.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 924
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2444.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 948
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2508.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape77: TQRShape
        Left = 972
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2571.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = 996
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2635.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape79: TQRShape
        Left = 1020
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2698.750000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 1044
        Top = -1
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2762.250000000000000000
          -2.645833333333333000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 232
        Top = 2
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          613.833333333333400000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DOSAGEM'
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
      object QRDBText5: TQRDBText
        Left = 328
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          867.833333333333500000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA01'
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
      object QRDBText4: TQRDBText
        Left = 352
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          931.333333333333500000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA02'
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
        Left = 376
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          994.833333333333400000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA03'
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
        Left = 400
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1058.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA04'
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
        Left = 424
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA05'
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
        Left = 448
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1185.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA06'
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
        Left = 472
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1248.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA07'
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
      object QRDBText14: TQRDBText
        Left = 496
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1312.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA08'
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
        Left = 520
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1375.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA09'
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
        Left = 544
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1439.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA10'
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
        Left = 568
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1502.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA11'
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
      object QRDBText19: TQRDBText
        Left = 592
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1566.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA12'
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
      object QRDBText20: TQRDBText
        Left = 616
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1629.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA13'
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
        Left = 640
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA14'
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
        Left = 664
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA15'
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
      object QRDBText23: TQRDBText
        Left = 688
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1820.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA16'
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
      object QRDBText24: TQRDBText
        Left = 712
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1883.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA17'
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
      object QRDBText25: TQRDBText
        Left = 736
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          1947.333333333334000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA18'
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
      object QRDBText26: TQRDBText
        Left = 760
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2010.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA19'
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
      object QRDBText27: TQRDBText
        Left = 784
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2074.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA20'
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
        Left = 808
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2137.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA21'
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
        Left = 832
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2201.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA22'
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
      object QRDBText30: TQRDBText
        Left = 856
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2264.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA23'
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
        Left = 880
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2328.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA24'
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
      object QRDBText32: TQRDBText
        Left = 904
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2391.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA25'
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
      object QRDBText33: TQRDBText
        Left = 928
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2455.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA26'
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
      object QRDBText34: TQRDBText
        Left = 952
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2518.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA27'
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
        Left = 976
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2582.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA28'
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
      object QRDBText36: TQRDBText
        Left = 1000
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2645.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA29'
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
        Left = 1024
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2709.333333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA30'
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
        Left = 1048
        Top = 2
        Width = 18
        Height = 15
        Size.Values = (
          39.687500000000000000
          2772.833333333333000000
          5.291666666666667000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_DIA31'
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
    object QRBand3: TQRBand
      Left = 26
      Top = 194
      Width = 1070
      Height = 15
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText11: TQRDBText
        Left = 1001
        Top = 3
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          2648.479166666667000000
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
    object QRGroup2: TQRGroup
      Left = 26
      Top = 91
      Width = 1070
      Height = 44
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        116.416666666666700000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.CLI_NOME'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = True
      object QRDBText13: TQRDBText
        Left = 8
        Top = 0
        Width = 49
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'RCT_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText16: TQRDBText
        Left = 64
        Top = 0
        Width = 330
        Height = 20
        Size.Values = (
          52.916666666666670000
          169.333333333333300000
          0.000000000000000000
          873.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'CLI_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 3
        Top = 27
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          71.437500000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Ord.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 37
        Top = 27
        Width = 193
        Height = 15
        Size.Values = (
          39.687500000000000000
          97.895833333333340000
          71.437500000000000000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Medicamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 588
        Top = 3
        Width = 48
        Height = 16
        Size.Values = (
          42.333333333333330000
          1555.750000000000000000
          7.937500000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contato:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 640
        Top = 3
        Width = 160
        Height = 16
        Size.Values = (
          42.333333333333340000
          1693.333333333333000000
          7.937500000000000000
          423.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'CLI_CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 804
        Top = 3
        Width = 38
        Height = 16
        Size.Values = (
          42.333333333333330000
          2127.250000000000000000
          7.937500000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fones:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 845
        Top = 3
        Width = 220
        Height = 16
        Size.Values = (
          42.333333333333340000
          2235.729166666667000000
          7.937500000000000000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '(047) 99196-3060 - (047) 99999-99999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 400
        Top = 3
        Width = 51
        Height = 16
        Size.Values = (
          42.333333333333330000
          1058.333333333333000000
          7.937500000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dt. Nasc:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape33: TQRShape
        Left = 324
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          857.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 330
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          873.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '01'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 348
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          920.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 372
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          984.249999999999900000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 396
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1047.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 420
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1111.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 444
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1174.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 468
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1238.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 492
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1301.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 516
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1365.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 540
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1428.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 564
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1492.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 588
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1555.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 612
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1619.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 636
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1682.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 660
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1746.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 684
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1809.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 708
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1873.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 732
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          1936.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 756
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2000.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 780
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2063.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 804
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2127.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 828
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2190.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 852
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2254.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 876
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2317.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 900
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2381.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 924
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2444.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 948
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2508.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 972
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2571.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 996
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2635.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 1020
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2698.750000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 1044
        Top = 25
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          2762.250000000000000000
          66.145833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 354
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          936.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '02'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 378
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1000.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '03'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 402
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1063.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '04'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 426
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1127.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '05'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 450
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1190.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '06'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 474
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1254.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '07'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 498
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1317.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '08'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 522
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '09'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 546
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 570
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1508.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '11'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 594
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1571.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 618
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1635.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '13'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 642
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1698.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '14'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 666
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1762.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '15'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 690
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1825.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '16'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 714
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1889.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '17'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 738
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1952.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '18'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 762
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2016.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '19'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 786
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2079.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '20'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 810
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2143.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '21'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 834
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2206.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 858
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2270.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '23'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 882
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2333.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '24'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel44: TQRLabel
        Left = 906
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2397.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '25'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 930
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2460.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '26'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 954
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2524.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '27'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 978
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2587.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '28'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 1002
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2651.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '29'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 1026
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2714.625000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '30'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 1050
        Top = 27
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2778.125000000000000000
          71.437500000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '31'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 232
        Top = 27
        Width = 65
        Height = 15
        Size.Values = (
          39.687500000000000000
          613.833333333333400000
          71.437500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Dosagem'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 455
        Top = 3
        Width = 127
        Height = 16
        Size.Values = (
          42.333333333333340000
          1203.854166666667000000
          7.937500000000000000
          336.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '24/12/1977 - 39 anos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
    object QRBand4: TQRBand
      Left = 26
      Top = 26
      Width = 1070
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
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 950
        Top = 48
        Width = 115
        Height = 14
        Size.Values = (
          37.041666666666670000
          2513.541666666667000000
          127.000000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ficha de Receitu'#225'rio'
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
        Left = 999
        Top = 34
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          2643.187500000000000000
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
      object QRSysData4: TQRSysData
        Left = 1009
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          2669.645833333333000000
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
      Top = 154
      Width = 1070
      Height = 40
      AfterPrint = QRBand1AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel22: TQRLabel
        Left = 8
        Top = 8
        Width = 122
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Medicamentos:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 280
    Top = 312
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 312
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 312
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 312
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 584
    Top = 312
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select '
      'RCT_CLIENTE,'
      'RCT_DIA01,'
      'RCT_DIA02,'
      'RCT_DIA03,'
      'RCT_DIA04,'
      'RCT_DIA05,'
      'RCT_DIA06,'
      'RCT_DIA07,'
      'RCT_DIA08,'
      'RCT_DIA09,'
      'RCT_DIA10,'
      'RCT_DIA11,'
      'RCT_DIA12,'
      'RCT_DIA13,'
      'RCT_DIA14,'
      'RCT_DIA15,'
      'RCT_DIA16,'
      'RCT_DIA17,'
      'RCT_DIA18,'
      'RCT_DIA19,'
      'RCT_DIA20,'
      'RCT_DIA21,'
      'RCT_DIA22,'
      'RCT_DIA23,'
      'RCT_DIA24,'
      'RCT_DIA25,'
      'RCT_DIA26,'
      'RCT_DIA27,'
      'RCT_DIA28,'
      'RCT_DIA29,'
      'RCT_DIA30,'
      'RCT_DIA31,'
      'RCT_DOSAGEM,'
      'RCT_MEDICAMENTO,'
      'RCT_ORDEM,'
      'CLI_CONTATO,'
      'CLI_FONE1,'
      'CLI_FONE2,'
      'CLI_NOME,'
      'CLI_DTNASC,'
      'MTO_NOME'
      'from RECEITUARIOS'
      'left join CLIENTES on RCT_CLIENTE=CLI_CODIGO'
      'left join MEDICAMENTOS on RCT_MEDICAMENTO=MTO_CODIGO'
      'order by CLI_NOME, RCT_ORDEM, RCT_CODIGO'
      '')
    Left = 200
    Top = 312
    object FDQuery1RCT_CLIENTE: TIntegerField
      FieldName = 'RCT_CLIENTE'
      Origin = 'RCT_CLIENTE'
      Required = True
    end
    object FDQuery1RCT_DIA01: TStringField
      FieldName = 'RCT_DIA01'
      Origin = 'RCT_DIA01'
      Size = 3
    end
    object FDQuery1RCT_DIA02: TStringField
      FieldName = 'RCT_DIA02'
      Origin = 'RCT_DIA02'
      Size = 3
    end
    object FDQuery1RCT_DIA03: TStringField
      FieldName = 'RCT_DIA03'
      Origin = 'RCT_DIA03'
      Size = 3
    end
    object FDQuery1RCT_DIA04: TStringField
      FieldName = 'RCT_DIA04'
      Origin = 'RCT_DIA04'
      Size = 3
    end
    object FDQuery1RCT_DIA05: TStringField
      FieldName = 'RCT_DIA05'
      Origin = 'RCT_DIA05'
      Size = 3
    end
    object FDQuery1RCT_DIA06: TStringField
      FieldName = 'RCT_DIA06'
      Origin = 'RCT_DIA06'
      Size = 3
    end
    object FDQuery1RCT_DIA07: TStringField
      FieldName = 'RCT_DIA07'
      Origin = 'RCT_DIA07'
      Size = 3
    end
    object FDQuery1RCT_DIA08: TStringField
      FieldName = 'RCT_DIA08'
      Origin = 'RCT_DIA08'
      Size = 3
    end
    object FDQuery1RCT_DIA09: TStringField
      FieldName = 'RCT_DIA09'
      Origin = 'RCT_DIA09'
      Size = 3
    end
    object FDQuery1RCT_DIA10: TStringField
      FieldName = 'RCT_DIA10'
      Origin = 'RCT_DIA10'
      Size = 3
    end
    object FDQuery1RCT_DIA11: TStringField
      FieldName = 'RCT_DIA11'
      Origin = 'RCT_DIA11'
      Size = 3
    end
    object FDQuery1RCT_DIA12: TStringField
      FieldName = 'RCT_DIA12'
      Origin = 'RCT_DIA12'
      Size = 3
    end
    object FDQuery1RCT_DIA13: TStringField
      FieldName = 'RCT_DIA13'
      Origin = 'RCT_DIA13'
      Size = 3
    end
    object FDQuery1RCT_DIA14: TStringField
      FieldName = 'RCT_DIA14'
      Origin = 'RCT_DIA14'
      Size = 3
    end
    object FDQuery1RCT_DIA15: TStringField
      FieldName = 'RCT_DIA15'
      Origin = 'RCT_DIA15'
      Size = 3
    end
    object FDQuery1RCT_DIA16: TStringField
      FieldName = 'RCT_DIA16'
      Origin = 'RCT_DIA16'
      Size = 3
    end
    object FDQuery1RCT_DIA17: TStringField
      FieldName = 'RCT_DIA17'
      Origin = 'RCT_DIA17'
      Size = 3
    end
    object FDQuery1RCT_DIA18: TStringField
      FieldName = 'RCT_DIA18'
      Origin = 'RCT_DIA18'
      Size = 3
    end
    object FDQuery1RCT_DIA19: TStringField
      FieldName = 'RCT_DIA19'
      Origin = 'RCT_DIA19'
      Size = 3
    end
    object FDQuery1RCT_DIA20: TStringField
      FieldName = 'RCT_DIA20'
      Origin = 'RCT_DIA20'
      Size = 3
    end
    object FDQuery1RCT_DIA21: TStringField
      FieldName = 'RCT_DIA21'
      Origin = 'RCT_DIA21'
      Size = 3
    end
    object FDQuery1RCT_DIA22: TStringField
      FieldName = 'RCT_DIA22'
      Origin = 'RCT_DIA22'
      Size = 3
    end
    object FDQuery1RCT_DIA23: TStringField
      FieldName = 'RCT_DIA23'
      Origin = 'RCT_DIA23'
      Size = 3
    end
    object FDQuery1RCT_DIA24: TStringField
      FieldName = 'RCT_DIA24'
      Origin = 'RCT_DIA24'
      Size = 3
    end
    object FDQuery1RCT_DIA25: TStringField
      FieldName = 'RCT_DIA25'
      Origin = 'RCT_DIA25'
      Size = 3
    end
    object FDQuery1RCT_DIA26: TStringField
      FieldName = 'RCT_DIA26'
      Origin = 'RCT_DIA26'
      Size = 3
    end
    object FDQuery1RCT_DIA27: TStringField
      FieldName = 'RCT_DIA27'
      Origin = 'RCT_DIA27'
      Size = 3
    end
    object FDQuery1RCT_DIA28: TStringField
      FieldName = 'RCT_DIA28'
      Origin = 'RCT_DIA28'
      Size = 3
    end
    object FDQuery1RCT_DIA29: TStringField
      FieldName = 'RCT_DIA29'
      Origin = 'RCT_DIA29'
      Size = 3
    end
    object FDQuery1RCT_DIA30: TStringField
      FieldName = 'RCT_DIA30'
      Origin = 'RCT_DIA30'
      Size = 3
    end
    object FDQuery1RCT_DIA31: TStringField
      FieldName = 'RCT_DIA31'
      Origin = 'RCT_DIA31'
      Size = 3
    end
    object FDQuery1RCT_DOSAGEM: TStringField
      FieldName = 'RCT_DOSAGEM'
      Origin = 'RCT_DOSAGEM'
      Size = 50
    end
    object FDQuery1RCT_MEDICAMENTO: TIntegerField
      FieldName = 'RCT_MEDICAMENTO'
      Origin = 'RCT_MEDICAMENTO'
      Required = True
    end
    object FDQuery1RCT_ORDEM: TIntegerField
      FieldName = 'RCT_ORDEM'
      Origin = 'RCT_ORDEM'
    end
    object FDQuery1CLI_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1MTO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MTO_NOME'
      Origin = 'MTO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 136
    Top = 312
  end
end
