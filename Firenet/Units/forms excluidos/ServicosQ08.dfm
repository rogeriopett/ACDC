object FormServicosQ08: TFormServicosQ08
  Left = 222
  Top = 67
  Caption = 'Ordem de Servi'#231'o A4 retrato aberto modelo 2'
  ClientHeight = 922
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
    Width = 671
    Height = 952
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
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      150.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      1480.000000000000000000
      70.000000000000000000
      70.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
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
    PrintIfEmpty = False
    ReportTitle = 'Ordem de Servi'#231'o'
    SnapToGrid = True
    Units = MM
    Zoom = 120
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 32
      Top = 115
      Width = 608
      Height = 768
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1693.333333333333000000
        1340.555555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape37: TQRShape
        Left = 525
        Top = 390
        Width = 82
        Height = 13
        Size.Values = (
          28.663194444444440000
          1157.552083333333000000
          859.895833333333200000
          180.798611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 445
        Top = 390
        Width = 81
        Height = 13
        Size.Values = (
          28.663194444444440000
          981.163194444444400000
          859.895833333333200000
          178.593750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 412
        Top = 390
        Width = 34
        Height = 13
        Size.Values = (
          28.663194444444440000
          908.402777777777800000
          859.895833333333200000
          74.965277777777780000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 353
        Top = 390
        Width = 60
        Height = 13
        Size.Values = (
          28.663194444444440000
          778.315972222222200000
          859.895833333333200000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 57
        Top = 390
        Width = 297
        Height = 13
        Size.Values = (
          28.663194444444440000
          125.677083333333300000
          859.895833333333200000
          654.843750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 0
        Top = 390
        Width = 58
        Height = 13
        Size.Values = (
          28.663194444444440000
          0.000000000000000000
          859.895833333333200000
          127.881944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 203
        Width = 607
        Height = 188
        Size.Values = (
          414.513888888888900000
          0.000000000000000000
          447.586805555555600000
          1338.350694444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 505
        Top = 174
        Width = 102
        Height = 30
        Size.Values = (
          66.145833333333340000
          1113.454861111111000000
          383.645833333333300000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 303
        Top = 174
        Width = 203
        Height = 30
        Size.Values = (
          66.145833333333340000
          668.072916666666600000
          383.645833333333300000
          447.586805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 174
        Width = 304
        Height = 30
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          383.645833333333300000
          670.277777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 404
        Top = 145
        Width = 203
        Height = 30
        Size.Values = (
          66.145833333333340000
          890.763888888889100000
          319.704861111111200000
          447.586805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 202
        Top = 145
        Width = 203
        Height = 30
        Size.Values = (
          66.145833333333340000
          445.381944444444500000
          319.704861111111200000
          447.586805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 145
        Width = 203
        Height = 30
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          319.704861111111200000
          447.586805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 523
        Top = 116
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333320000
          1153.142361111111000000
          255.763888888888900000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 202
        Top = 116
        Width = 322
        Height = 30
        Size.Values = (
          66.145833333333320000
          445.381944444444400000
          255.763888888888900000
          709.965277777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 523
        Top = 87
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333320000
          1153.142361111111000000
          191.822916666666700000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 348
        Top = 87
        Width = 176
        Height = 30
        Size.Values = (
          66.145833333333320000
          767.291666666666800000
          191.822916666666700000
          388.055555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 174
        Top = 87
        Width = 175
        Height = 30
        Size.Values = (
          66.145833333333320000
          383.645833333333300000
          191.822916666666700000
          385.850694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 0
        Top = 87
        Width = 175
        Height = 30
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          191.822916666666700000
          385.850694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 116
        Width = 203
        Height = 30
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          255.763888888888900000
          447.586805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 523
        Top = 58
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333320000
          1153.142361111111000000
          127.881944444444400000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 348
        Top = 58
        Width = 176
        Height = 30
        Size.Values = (
          66.145833333333320000
          767.291666666666800000
          127.881944444444400000
          388.055555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 174
        Top = 58
        Width = 175
        Height = 30
        Size.Values = (
          66.145833333333320000
          383.645833333333300000
          127.881944444444400000
          385.850694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 58
        Width = 175
        Height = 30
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          127.881944444444400000
          385.850694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 523
        Top = 29
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333320000
          1153.142361111111000000
          63.940972222222220000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 430
        Top = 29
        Width = 94
        Height = 30
        Size.Values = (
          66.145833333333320000
          948.090277777777800000
          63.940972222222220000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 0
        Top = 29
        Width = 431
        Height = 30
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          63.940972222222220000
          950.295138888889000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 523
        Top = 0
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333320000
          1153.142361111111000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 0
        Width = 524
        Height = 30
        Size.Values = (
          66.145833333333320000
          0.000000000000000000
          0.000000000000000000
          1155.347222222222000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText6: TQRDBText
        Left = 4
        Top = 12
        Width = 51
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          26.458333333333330000
          112.447916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CLIENTE'
        Font.Charset = ANSI_CHARSET
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
        Left = 58
        Top = 12
        Width = 462
        Height = 17
        Size.Values = (
          37.482638888888900000
          127.881944444444500000
          26.458333333333330000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel8: TQRLabel
        Left = 3
        Top = 3
        Width = 38
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          6.614583333333332000
          83.784722222222230000)
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
      object QRLabel13: TQRLabel
        Left = 3
        Top = 148
        Width = 43
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          326.319444444444500000
          94.809027777777790000)
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
      object QRDBText7: TQRDBText
        Left = 4
        Top = 157
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          346.163194444444500000
          429.947916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_PRODUTO'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel14: TQRLabel
        Left = 407
        Top = 148
        Width = 36
        Height = 9
        Size.Values = (
          19.843750000000000000
          897.378472222222300000
          326.319444444444500000
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
      object QRDBText8: TQRDBText
        Left = 408
        Top = 157
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888900000
          899.583333333333400000
          346.163194444444500000
          429.947916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_MODELO'
        Font.Charset = ANSI_CHARSET
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
        Left = 4
        Top = 186
        Width = 296
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          410.104166666666600000
          652.638888888889000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_ACESSORIOS'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel15: TQRLabel
        Left = 3
        Top = 177
        Width = 58
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          390.260416666666700000
          127.881944444444500000)
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
      object QRLabel16: TQRLabel
        Left = 526
        Top = 61
        Width = 70
        Height = 9
        Size.Values = (
          19.843750000000000000
          1159.756944444445000000
          134.496527777777800000
          154.340277777777800000)
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
      object QRDBText10: TQRDBText
        Left = 527
        Top = 70
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888890000
          1161.961805555556000000
          154.340277777777800000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DTENTRADA'
        Font.Charset = ANSI_CHARSET
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
        Left = 509
        Top = 186
        Width = 94
        Height = 17
        Size.Values = (
          37.482638888888900000
          1122.274305555556000000
          410.104166666666600000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_LOCALIZACAO'
        Font.Charset = ANSI_CHARSET
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
        Left = 508
        Top = 177
        Width = 60
        Height = 9
        Size.Values = (
          19.843750000000000000
          1120.069444444445000000
          390.260416666666700000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LOCALIZACAO'
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
        Left = 205
        Top = 119
        Width = 40
        Height = 9
        Size.Values = (
          19.843750000000000000
          451.996527777777800000
          262.378472222222300000
          88.194444444444450000)
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
      object QRDBText15: TQRDBText
        Left = 206
        Top = 128
        Width = 51
        Height = 17
        Size.Values = (
          37.482638888888890000
          454.201388888888900000
          282.222222222222200000
          112.447916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TECNICO'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel20: TQRLabel
        Left = 526
        Top = 90
        Width = 72
        Height = 9
        Size.Values = (
          19.843750000000000000
          1159.756944444445000000
          198.437500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PREV. ENTREGA'
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
      object QRDBText14: TQRDBText
        Left = 527
        Top = 99
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888890000
          1161.961805555556000000
          218.281250000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DTPREVISAO'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText13: TQRDBText
        Left = 307
        Top = 186
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888900000
          676.892361111111000000
          410.104166666666600000
          429.947916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_SERIE'
        Font.Charset = ANSI_CHARSET
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
        Left = 306
        Top = 177
        Width = 28
        Height = 9
        Size.Values = (
          19.843750000000000000
          674.687500000000000000
          390.260416666666700000
          61.736111111111120000)
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
        Left = 205
        Top = 148
        Width = 31
        Height = 9
        Size.Values = (
          19.843750000000000000
          451.996527777777800000
          326.319444444444500000
          68.350694444444440000)
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
      object QRDBText12: TQRDBText
        Left = 206
        Top = 157
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888900000
          454.201388888889000000
          346.163194444444500000
          429.947916666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_MARCA'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel22: TQRLabel
        Left = 3
        Top = 206
        Width = 82
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          454.201388888889000000
          180.798611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DEFEITO ALEGADO'
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
        Left = 3
        Top = 392
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          864.305555555555600000
          74.965277777777790000)
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
      object QRDBText33: TQRDBText
        Left = 3
        Top = 215
        Width = 601
        Height = 173
        Size.Values = (
          381.440972222222200000
          6.614583333333332000
          474.045138888888900000
          1325.121527777778000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DEFEITO'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel1: TQRLabel
        Left = 526
        Top = 119
        Width = 54
        Height = 9
        Size.Values = (
          19.843750000000000000
          1159.756944444445000000
          262.378472222222300000
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
      object QRDBText25: TQRDBText
        Left = 526
        Top = 128
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888890000
          1159.756944444444000000
          282.222222222222200000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DTSAIDA'
        Font.Charset = ANSI_CHARSET
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
        Top = 32
        Width = 49
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          70.555555555555560000
          108.038194444444400000)
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
      object QRDBText17: TQRDBText
        Left = 4
        Top = 41
        Width = 423
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444444000
          90.399305555555560000
          932.656250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'ENDERECO'
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
        Left = 178
        Top = 70
        Width = 166
        Height = 17
        Size.Values = (
          37.482638888888890000
          392.465277777777800000
          154.340277777777800000
          366.006944444444400000)
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
      object QRLabel5: TQRLabel
        Left = 177
        Top = 61
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          390.260416666666700000
          134.496527777777800000
          74.965277777777790000)
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
      object QRLabel25: TQRLabel
        Left = 4
        Top = 90
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          198.437500000000000000
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
      object QRDBText21: TQRDBText
        Left = 5
        Top = 99
        Width = 166
        Height = 17
        Size.Values = (
          37.482638888888890000
          11.024305555555560000
          218.281250000000000000
          366.006944444444400000)
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
      object QRLabel6: TQRLabel
        Left = 351
        Top = 61
        Width = 52
        Height = 9
        Size.Values = (
          19.843750000000000000
          773.906250000000000000
          134.496527777777800000
          114.652777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CIDADE / UF'
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
      object QRDBText19: TQRDBText
        Left = 352
        Top = 70
        Width = 168
        Height = 17
        Size.Values = (
          37.482638888888890000
          776.111111111111000000
          154.340277777777800000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CIDADEUF'
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
      object QRLabel26: TQRLabel
        Left = 3
        Top = 119
        Width = 43
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          262.378472222222300000
          94.809027777777790000)
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
      object QRDBText23: TQRDBText
        Left = 4
        Top = 128
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444444000
          282.222222222222200000
          429.947916666666700000)
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
      object QRLabel24: TQRLabel
        Left = 433
        Top = 32
        Width = 19
        Height = 9
        Size.Values = (
          19.843750000000000000
          954.704861111111200000
          70.555555555555560000
          41.892361111111120000)
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
      object QRDBText26: TQRDBText
        Left = 434
        Top = 41
        Width = 86
        Height = 17
        Size.Values = (
          37.482638888888890000
          956.909722222222200000
          90.399305555555560000
          189.618055555555600000)
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
      object QRLabel9: TQRLabel
        Left = 3
        Top = 61
        Width = 66
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          134.496527777777800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COMPLEMENTO'
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
      object QRDBText3: TQRDBText
        Left = 4
        Top = 70
        Width = 166
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444444000
          154.340277777777800000
          366.006944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_COMPLEMENTO'
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
        Left = 260
        Top = 128
        Width = 260
        Height = 17
        Size.Values = (
          37.482638888888890000
          573.263888888888900000
          282.222222222222200000
          573.263888888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VEN_NOME'
        Font.Charset = ANSI_CHARSET
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
        Left = 60
        Top = 392
        Width = 52
        Height = 9
        Size.Values = (
          19.843750000000000000
          132.291666666666700000
          864.305555555555600000
          114.652777777777800000)
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
      object QRLabel10: TQRLabel
        Left = 415
        Top = 392
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          915.017361111111200000
          864.305555555555600000
          52.916666666666660000)
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
      object QRLabel11: TQRLabel
        Left = 356
        Top = 392
        Width = 25
        Height = 9
        Size.Values = (
          19.843750000000000000
          784.930555555555700000
          864.305555555555600000
          55.121527777777790000)
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
      object QRLabel12: TQRLabel
        Left = 448
        Top = 392
        Width = 55
        Height = 9
        Size.Values = (
          19.843750000000000000
          987.777777777777800000
          864.305555555555600000
          121.267361111111100000)
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
      object QRLabel23: TQRLabel
        Left = 528
        Top = 392
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1164.166666666667000000
          864.305555555555600000
          134.496527777777800000)
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
      object QRShape6: TQRShape
        Left = 0
        Top = 436
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          961.319444444444500000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 470
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          1036.284722222222000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 504
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          1111.250000000000000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 538
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          1186.215277777778000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 0
        Top = 572
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          1261.180555555556000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 606
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          1336.145833333333000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 526
        Top = 3
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          1159.756944444445000000
          6.614583333333332000
          74.965277777777790000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRLabel4: TQRLabel
        Left = 526
        Top = 32
        Width = 65
        Height = 9
        Size.Values = (
          19.843750000000000000
          1159.756944444445000000
          70.555555555555560000
          143.315972222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SENHA ONLINE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRDBText1: TQRDBText
        Left = 527
        Top = 12
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888890000
          1161.961805555556000000
          26.458333333333330000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 527
        Top = 41
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888890000
          1161.961805555556000000
          90.399305555555560000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_SENHAONLINE'
        Font.Charset = ANSI_CHARSET
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
      object QRShape13: TQRShape
        Left = 0
        Top = 640
        Width = 607
        Height = 128
        Size.Values = (
          282.222222222222200000
          0.000000000000000000
          1411.111111111111000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 471
        Top = 640
        Width = 136
        Height = 30
        Size.Values = (
          66.145833333333340000
          1038.489583333333000000
          1411.111111111111000000
          299.861111111111200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel27: TQRLabel
        Left = 336
        Top = 710
        Width = 268
        Height = 19
        Size.Values = (
          41.892361111111120000
          740.833333333333400000
          1565.451388888889000000
          590.902777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___________________________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 336
        Top = 727
        Width = 268
        Height = 19
        Size.Values = (
          41.892361111111120000
          740.833333333333400000
          1602.934027777778000000
          590.902777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOMEFANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
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
        Left = 4
        Top = 750
        Width = 599
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          1653.645833333333000000
          1320.711805555556000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_SERVICOSRPA'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel28: TQRLabel
        Left = 3
        Top = 710
        Width = 262
        Height = 19
        Size.Values = (
          41.892361111111120000
          6.614583333333332000
          1565.451388888889000000
          577.673611111111000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___________________________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 3
        Top = 727
        Width = 262
        Height = 19
        Size.Values = (
          41.892361111111120000
          6.614583333333332000
          1602.934027777778000000
          577.673611111111000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 475
        Top = 643
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1047.309027777778000000
          1417.725694444444000000
          134.496527777777800000)
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
        Left = 177
        Top = 90
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          390.260416666666700000
          198.437500000000000000
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
      object QRDBText24: TQRDBText
        Left = 178
        Top = 99
        Width = 166
        Height = 17
        Size.Values = (
          37.482638888888890000
          392.465277777777800000
          218.281250000000000000
          366.006944444444400000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 351
        Top = 90
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          773.906250000000000000
          198.437500000000000000
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
      object QRDBText27: TQRDBText
        Left = 352
        Top = 99
        Width = 168
        Height = 17
        Size.Values = (
          37.482638888888890000
          776.111111111111000000
          218.281250000000000000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_FONE3'
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
      object QRShape3: TQRShape
        Left = 0
        Top = 402
        Width = 607
        Height = 35
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          886.354166666666800000
          1338.350694444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 32
      Top = 32
      Width = 608
      Height = 83
      Frame.Width = 0
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        183.003472222222200000
        1340.555555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape39: TQRShape
        Left = 0
        Top = 0
        Width = 607
        Height = 83
        Size.Values = (
          183.003472222222200000
          0.000000000000000000
          0.000000000000000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object IMAGEM: TQRImage
        Left = 5
        Top = 4
        Width = 140
        Height = 75
        Size.Values = (
          165.364583333333300000
          11.024305555555560000
          8.819444444444444000
          308.680555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Stretch = True
      end
      object EMPRESA: TQRDBText
        Left = 149
        Top = 2
        Width = 109
        Height = 24
        Size.Values = (
          52.916666666666660000
          328.524305555555500000
          4.409722222222222000
          240.329861111111100000)
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
      object QRLabel31: TQRLabel
        Left = 149
        Top = 27
        Width = 452
        Height = 17
        Size.Values = (
          37.482638888888900000
          328.524305555555500000
          59.531250000000000000
          996.597222222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O, NUMERO, BAIRRO, CEP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel32: TQRLabel
        Left = 149
        Top = 44
        Width = 452
        Height = 17
        Size.Values = (
          37.482638888888900000
          328.524305555555500000
          97.013888888888880000
          996.597222222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel33: TQRLabel
        Left = 149
        Top = 61
        Width = 329
        Height = 17
        Size.Values = (
          37.482638888888900000
          328.524305555555500000
          134.496527777777800000
          725.399305555555700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'EMAIL - SITE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel34: TQRLabel
        Left = 479
        Top = 61
        Width = 122
        Height = 17
        Size.Values = (
          37.482638888888900000
          1056.128472222222000000
          134.496527777777800000
          268.993055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Ordem de Servi'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
    end
    object QRLabel30: TQRLabel
      Left = 33
      Top = 885
      Width = 95
      Height = 9
      Size.Values = (
        19.843750000000000000
        72.760416666666680000
        1951.302083333333000000
        209.461805555555600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Usu'#225'rio: UsuarioLogado'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 711
    Top = 201
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select SER_CODIGO,'
      'SER_CLIENTE,'
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
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'CLI_ENDERECO||'#39', '#39'||CLI_NUMERO as ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CIDADEUF,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_FONE2, '
      'CLI_FONE3, '
      'CLI_CONTATO,'
      'CLI_COMPLEMENTO,'
      'VEN_NOME from SERVICOS '
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo')
    Left = 776
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 840
    Top = 203
  end
end
