object FormTurmasQ07: TFormTurmasQ07
  Left = 191
  Top = 114
  Caption = 'Planilha de notas'
  ClientHeight = 637
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
      Top = 175
      Width = 1070
      Height = 23
      Frame.DrawBottom = True
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 36
        Top = 5
        Width = 165
        Height = 13
        Size.Values = (
          34.395833333333340000
          95.250000000000000000
          13.229166666666670000
          436.562499999999900000)
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
        Left = 3
        Top = 5
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          13.229166666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'MAT_CODIGO'
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
      object QRShape17: TQRShape
        Left = 203
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          537.104166666666800000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 232
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          613.833333333333400000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 261
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          690.562500000000000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 290
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          767.291666666666800000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 319
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          844.020833333333500000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 348
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          920.750000000000000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 377
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          997.479166666666900000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 406
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1074.208333333333000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 435
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1150.937500000000000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 464
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1227.666666666667000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 493
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1304.395833333333000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 522
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1381.125000000000000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 551
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1457.854166666667000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 580
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1534.583333333333000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 609
        Top = -1
        Width = 30
        Height = 25
        Size.Values = (
          66.145833333333340000
          1611.312500000000000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 638
        Top = -1
        Width = 51
        Height = 25
        Size.Values = (
          66.145833333333340000
          1688.041666666667000000
          -2.645833333333333000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 688
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          1820.333333333333000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 705
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          1865.312500000000000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 722
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          1910.291666666667000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 739
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          1955.270833333333000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 756
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2000.250000000000000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 773
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2045.229166666667000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 790
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2090.208333333333000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 807
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2135.187500000000000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 824
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2180.166666666667000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 841
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2225.145833333333000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 858
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2270.125000000000000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 875
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2315.104166666667000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 892
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2360.083333333333000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 909
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2405.062500000000000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape73: TQRShape
        Left = 926
        Top = -1
        Width = 18
        Height = 25
        Size.Values = (
          66.145833333333340000
          2450.041666666667000000
          -2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 943
        Top = -1
        Width = 32
        Height = 25
        Size.Values = (
          66.145833333333340000
          2495.020833333333000000
          -2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 974
        Top = -1
        Width = 32
        Height = 25
        Size.Values = (
          66.145833333333340000
          2577.041666666667000000
          -2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 1005
        Top = -1
        Width = 32
        Height = 25
        Size.Values = (
          66.145833333333340000
          2659.062500000000000000
          -2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape71: TQRShape
        Left = 1036
        Top = -1
        Width = 34
        Height = 25
        Size.Values = (
          66.145833333333340000
          2741.083333333333000000
          -2.645833333333333000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel53: TQRLabel
        Left = 205
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          542.395833333333300000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel54: TQRLabel
        Left = 234
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          619.125000000000000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel55: TQRLabel
        Left = 263
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          695.854166666666800000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel56: TQRLabel
        Left = 292
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          772.583333333333200000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel57: TQRLabel
        Left = 321
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          849.312500000000000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel58: TQRLabel
        Left = 350
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          926.041666666666800000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel59: TQRLabel
        Left = 379
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1002.770833333333000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel60: TQRLabel
        Left = 408
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1079.500000000000000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel61: TQRLabel
        Left = 437
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1156.229166666667000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel62: TQRLabel
        Left = 466
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1232.958333333333000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel63: TQRLabel
        Left = 495
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1309.687500000000000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel64: TQRLabel
        Left = 524
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1386.416666666667000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel65: TQRLabel
        Left = 553
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1463.145833333333000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel66: TQRLabel
        Left = 582
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1539.875000000000000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel67: TQRLabel
        Left = 611
        Top = 5
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333330000
          1616.604166666667000000
          13.229166666666670000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
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
      object QRLabel68: TQRLabel
        Left = 642
        Top = 4
        Width = 43
        Height = 15
        Size.Values = (
          39.687500000000000000
          1698.625000000000000000
          10.583333333333330000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 231
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
      Height = 84
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        222.250000000000000000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.MAT_TURMA'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = True
      object QRShape2: TQRShape
        Left = 203
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          537.104166666666800000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
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
        DataField = 'MAT_TURMA'
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
        Width = 241
        Height = 20
        Size.Values = (
          52.916666666666670000
          169.333333333333300000
          0.000000000000000000
          637.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_DESCRICAO'
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
        Top = 68
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          179.916666666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Mat.'
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
        Left = 36
        Top = 68
        Width = 165
        Height = 15
        Size.Values = (
          39.687500000000000000
          95.250000000000000000
          179.916666666666700000
          436.562499999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Aluno'
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
        Left = 652
        Top = 2
        Width = 34
        Height = 16
        Size.Values = (
          42.333333333333330000
          1725.083333333333000000
          5.291666666666667000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'In'#237'cio:'
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
        Left = 688
        Top = 2
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333340000
          1820.333333333333000000
          5.291666666666667000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_DTINICIO'
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
      object QRLabel10: TQRLabel
        Left = 635
        Top = 20
        Width = 51
        Height = 16
        Size.Values = (
          42.333333333333330000
          1680.104166666667000000
          52.916666666666670000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#233'rmino:'
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
      object QRDBText3: TQRDBText
        Left = 688
        Top = 20
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333340000
          1820.333333333333000000
          52.916666666666660000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_DTTERMINO'
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
        Left = 780
        Top = 2
        Width = 29
        Height = 16
        Size.Values = (
          42.333333333333330000
          2063.750000000000000000
          5.291666666666667000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dias:'
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
        Left = 812
        Top = 2
        Width = 165
        Height = 16
        Size.Values = (
          42.333333333333340000
          2148.416666666667000000
          5.291666666666667000
          436.562499999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Dias:'
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
        Left = 370
        Top = 2
        Width = 61
        Height = 16
        Size.Values = (
          42.333333333333330000
          978.958333333333300000
          5.291666666666667000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Professor:'
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
      object QRDBText4: TQRDBText
        Left = 434
        Top = 2
        Width = 217
        Height = 16
        Size.Values = (
          42.333333333333340000
          1148.291666666667000000
          5.291666666666667000
          574.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'VEN_NOME'
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
      object QRLabel17: TQRLabel
        Left = 763
        Top = 20
        Width = 46
        Height = 16
        Size.Values = (
          42.333333333333330000
          2018.770833333333000000
          52.916666666666670000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hor'#225'rio:'
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
      object QRDBText5: TQRDBText
        Left = 812
        Top = 20
        Width = 165
        Height = 16
        Size.Values = (
          42.333333333333340000
          2148.416666666667000000
          52.916666666666660000
          436.562499999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_HORARIO'
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
      object QRLabel20: TQRLabel
        Left = 402
        Top = 20
        Width = 29
        Height = 16
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          52.916666666666670000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sala:'
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
      object QRDBText7: TQRDBText
        Left = 434
        Top = 20
        Width = 201
        Height = 16
        Size.Values = (
          42.333333333333340000
          1148.291666666667000000
          52.916666666666660000
          531.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_SALA'
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
      object QRLabel21: TQRLabel
        Left = 272
        Top = 20
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          719.666666666666700000
          52.916666666666670000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per'#237'odo/Ano:'
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
      object QRDBText8: TQRDBText
        Left = 345
        Top = 20
        Width = 21
        Height = 16
        Size.Values = (
          42.333333333333340000
          912.812500000000100000
          52.916666666666660000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_PERIODO'
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
      object QRDBText9: TQRDBText
        Left = 249
        Top = 20
        Width = 21
        Height = 16
        Size.Values = (
          42.333333333333340000
          658.812500000000000000
          52.916666666666660000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_ENCONTROS'
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
      object QRLabel25: TQRLabel
        Left = 206
        Top = 20
        Width = 40
        Height = 16
        Size.Values = (
          42.333333333333330000
          545.041666666666700000
          52.916666666666670000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186' Enc:'
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
      object QRLabel3: TQRLabel
        Left = 211
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          558.270833333333300000
          179.916666666666700000
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
      object QRShape3: TQRShape
        Left = 232
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          613.833333333333400000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 261
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          690.562500000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 290
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          767.291666666666800000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 319
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          844.020833333333500000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 348
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          920.750000000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 377
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          997.479166666666900000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 406
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1074.208333333333000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 435
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1150.937500000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 464
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1227.666666666667000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 493
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1304.395833333333000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 522
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1381.125000000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 551
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1457.854166666667000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 580
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1534.583333333333000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 609
        Top = 65
        Width = 30
        Height = 19
        Size.Values = (
          50.270833333333330000
          1611.312500000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 240
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          635.000000000000000000
          179.916666666666700000
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
      object QRLabel7: TQRLabel
        Left = 269
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          711.729166666666700000
          179.916666666666700000
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
      object QRLabel13: TQRLabel
        Left = 298
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          788.458333333333300000
          179.916666666666700000
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
      object QRLabel14: TQRLabel
        Left = 327
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          865.187500000000000000
          179.916666666666700000
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
      object QRLabel15: TQRLabel
        Left = 356
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          941.916666666666700000
          179.916666666666700000
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
      object QRLabel16: TQRLabel
        Left = 385
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1018.645833333333000000
          179.916666666666700000
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
      object QRLabel18: TQRLabel
        Left = 414
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1095.375000000000000000
          179.916666666666700000
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
      object QRLabel19: TQRLabel
        Left = 443
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1172.104166666667000000
          179.916666666666700000
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
      object QRLabel23: TQRLabel
        Left = 472
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1248.833333333333000000
          179.916666666666700000
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
      object QRLabel24: TQRLabel
        Left = 501
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1325.562500000000000000
          179.916666666666700000
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
      object QRLabel26: TQRLabel
        Left = 530
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1402.291666666667000000
          179.916666666666700000
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
      object QRLabel27: TQRLabel
        Left = 559
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1479.020833333333000000
          179.916666666666700000
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
      object QRLabel28: TQRLabel
        Left = 588
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1555.750000000000000000
          179.916666666666700000
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
      object QRLabel29: TQRLabel
        Left = 617
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1632.479166666667000000
          179.916666666666700000
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
      object QRShape32: TQRShape
        Left = 638
        Top = 65
        Width = 51
        Height = 19
        Size.Values = (
          50.270833333333330000
          1688.041666666667000000
          171.979166666666700000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 646
        Top = 68
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          1709.208333333333000000
          179.916666666666700000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#233'dia'
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
      object QRShape33: TQRShape
        Left = 688
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          1820.333333333333000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 705
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          1865.312500000000000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 722
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          1910.291666666667000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 739
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          1955.270833333333000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 756
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2000.250000000000000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 773
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2045.229166666667000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 790
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2090.208333333333000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 807
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2135.187500000000000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 824
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2180.166666666667000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 841
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2225.145833333333000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 858
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2270.125000000000000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 875
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2315.104166666667000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 892
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2360.083333333333000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 909
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2405.062500000000000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 691
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1828.270833333333000000
          179.916666666666700000
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
      object QRLabel32: TQRLabel
        Left = 708
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1873.250000000000000000
          179.916666666666700000
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
      object QRLabel33: TQRLabel
        Left = 725
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1918.229166666667000000
          179.916666666666700000
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
      object QRLabel34: TQRLabel
        Left = 742
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          1963.208333333333000000
          179.916666666666700000
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
      object QRLabel35: TQRLabel
        Left = 759
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2008.187500000000000000
          179.916666666666700000
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
      object QRLabel36: TQRLabel
        Left = 776
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2053.166666666667000000
          179.916666666666700000
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
      object QRLabel37: TQRLabel
        Left = 793
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2098.145833333333000000
          179.916666666666700000
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
      object QRLabel38: TQRLabel
        Left = 810
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2143.125000000000000000
          179.916666666666700000
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
      object QRLabel39: TQRLabel
        Left = 827
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2188.104166666667000000
          179.916666666666700000
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
      object QRLabel40: TQRLabel
        Left = 844
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2233.083333333333000000
          179.916666666666700000
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
      object QRLabel41: TQRLabel
        Left = 861
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2278.062500000000000000
          179.916666666666700000
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
      object QRLabel42: TQRLabel
        Left = 878
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2323.041666666667000000
          179.916666666666700000
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
      object QRLabel43: TQRLabel
        Left = 895
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2368.020833333333000000
          179.916666666666700000
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
      object QRLabel44: TQRLabel
        Left = 912
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2413.000000000000000000
          179.916666666666700000
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
      object QRShape62: TQRShape
        Left = 203
        Top = 37
        Width = 486
        Height = 29
        Size.Values = (
          76.729166666666680000
          537.104166666666800000
          97.895833333333340000
          1285.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 362
        Top = 43
        Width = 169
        Height = 16
        Size.Values = (
          42.333333333333330000
          957.791666666666700000
          113.770833333333300000
          447.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Li'#231#245'es / Exerc'#237'cios / Revis'#245'es'
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
      object QRShape72: TQRShape
        Left = 926
        Top = 65
        Width = 18
        Height = 19
        Size.Values = (
          50.270833333333330000
          2450.041666666667000000
          171.979166666666700000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel52: TQRLabel
        Left = 929
        Top = 68
        Width = 13
        Height = 15
        Size.Values = (
          39.687500000000000000
          2457.979166666667000000
          179.916666666666700000
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
      object QRShape63: TQRShape
        Left = 688
        Top = 37
        Width = 256
        Height = 29
        Size.Values = (
          76.729166666666680000
          1820.333333333333000000
          97.895833333333340000
          677.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel47: TQRLabel
        Left = 720
        Top = 43
        Width = 188
        Height = 16
        Size.Values = (
          42.333333333333330000
          1905.000000000000000000
          113.770833333333300000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pr'#225'tica de compreens'#227'o auditiva'
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
      object QRShape65: TQRShape
        Left = 943
        Top = 65
        Width = 32
        Height = 19
        Size.Values = (
          50.270833333333330000
          2495.020833333333000000
          171.979166666666700000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 974
        Top = 65
        Width = 32
        Height = 19
        Size.Values = (
          50.270833333333330000
          2577.041666666667000000
          171.979166666666700000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape67: TQRShape
        Left = 1005
        Top = 65
        Width = 32
        Height = 19
        Size.Values = (
          50.270833333333330000
          2659.062500000000000000
          171.979166666666700000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 1036
        Top = 65
        Width = 34
        Height = 19
        Size.Values = (
          50.270833333333330000
          2741.083333333333000000
          171.979166666666700000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape64: TQRShape
        Left = 943
        Top = 37
        Width = 126
        Height = 29
        Size.Values = (
          76.729166666666680000
          2495.020833333333000000
          97.895833333333340000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 951
        Top = 43
        Width = 16
        Height = 16
        Size.Values = (
          42.333333333333330000
          2516.187500000000000000
          113.770833333333300000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D1'
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
      object QRLabel49: TQRLabel
        Left = 982
        Top = 43
        Width = 16
        Height = 16
        Size.Values = (
          42.333333333333330000
          2598.208333333333000000
          113.770833333333300000
          42.333333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'D2'
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
      object QRLabel50: TQRLabel
        Left = 1017
        Top = 43
        Width = 8
        Height = 16
        Size.Values = (
          42.333333333333330000
          2690.812500000000000000
          113.770833333333300000
          21.166666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'L'
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
      object QRLabel51: TQRLabel
        Left = 1048
        Top = 43
        Width = 9
        Height = 16
        Size.Values = (
          42.333333333333330000
          2772.833333333333000000
          113.770833333333300000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'
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
      object QRDBText10: TQRDBText
        Left = 366
        Top = 20
        Width = 35
        Height = 16
        Size.Values = (
          42.333333333333340000
          968.375000000000000000
          52.916666666666660000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'TUR_ANO'
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
        Left = 967
        Top = 48
        Width = 98
        Height = 14
        Size.Values = (
          37.041666666666670000
          2558.520833333333000000
          127.000000000000000000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Planilha de notas'
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
      Top = 198
      Width = 1070
      Height = 33
      AfterPrint = QRBand1AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel22: TQRLabel
        Left = 3
        Top = 0
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          0.000000000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Alunos:'
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
      object QRLabel45: TQRLabel
        Left = 3
        Top = 16
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          42.333333333333330000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observa'#231#245'es:'
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
    Left = 592
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 344
    Top = 472
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select '
      'MAT_CODIGO,'
      'MAT_CLIENTE,'
      'MAT_MEDIAFINAL,'
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
      'from MATRICULAS '
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      'where MAT_STATUS='#39'A'#39
      'order by MAT_TURMA, CLI_NOME'
      '')
    Left = 344
    Top = 376
    object FDQuery1MAT_CODIGO: TIntegerField
      FieldName = 'MAT_CODIGO'
      Origin = 'MAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1MAT_CLIENTE: TIntegerField
      FieldName = 'MAT_CLIENTE'
      Origin = 'MAT_CLIENTE'
      Required = True
    end
    object FDQuery1MAT_MEDIAFINAL: TFMTBCDField
      FieldName = 'MAT_MEDIAFINAL'
      Origin = 'MAT_MEDIAFINAL'
      Precision = 18
    end
    object FDQuery1MAT_TURMA: TIntegerField
      FieldName = 'MAT_TURMA'
      Origin = 'MAT_TURMA'
      Required = True
    end
    object FDQuery1CLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1TUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1TUR_PROFESSOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_PROFESSOR'
      Origin = 'TUR_PROFESSOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_SALA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_SALA'
      Origin = 'TUR_SALA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1TUR_DTINICIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DTINICIO'
      Origin = 'TUR_DTINICIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_DTTERMINO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DTTERMINO'
      Origin = 'TUR_DTTERMINO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_HORARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_HORARIO'
      Origin = 'TUR_HORARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object FDQuery1TUR_DOMINGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DOMINGO'
      Origin = 'TUR_DOMINGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_SEGUNDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_SEGUNDA'
      Origin = 'TUR_SEGUNDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_TERCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_TERCA'
      Origin = 'TUR_TERCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_QUARTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_QUARTA'
      Origin = 'TUR_QUARTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_QUINTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_QUINTA'
      Origin = 'TUR_QUINTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_SEXTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_SEXTA'
      Origin = 'TUR_SEXTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_SABADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_SABADO'
      Origin = 'TUR_SABADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1TUR_PERIODO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_PERIODO'
      Origin = 'TUR_PERIODO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_ANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_ANO'
      Origin = 'TUR_ANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object FDQuery1TUR_ENCONTROS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_ENCONTROS'
      Origin = 'TUR_ENCONTROS'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 344
    Top = 424
  end
  object FDQuery2: TFDQuery
    MasterSource = DataSource1
    MasterFields = 'MAT_CODIGO'
    Connection = DM.FDConnection1
    Transaction = FDTransaction2
    SQL.Strings = (
      'select first(15) * from EXERCICIOS'
      'where EXE_MATRICULA=:MAT_CODIGO'
      'order by EXE_DTCADASTRO'
      '')
    Left = 424
    Top = 376
    ParamData = <
      item
        Name = 'MAT_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery2EXE_NOTA: TFMTBCDField
      FieldName = 'EXE_NOTA'
      Origin = 'EXE_NOTA'
      Precision = 18
    end
  end
  object FDTransaction2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 424
    Top = 424
  end
  object FDQuery3: TFDQuery
    MasterSource = DataSource1
    MasterFields = 'MAT_CODIGO'
    Connection = DM.FDConnection1
    Transaction = FDTransaction3
    SQL.Strings = (
      'select avg(EXE_NOTA) as MEDIA from EXERCICIOS'
      'where EXE_MATRICULA=:MAT_CODIGO'
      '')
    Left = 496
    Top = 376
    ParamData = <
      item
        Name = 'MAT_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery3MEDIA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object FDTransaction3: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 496
    Top = 424
  end
end
