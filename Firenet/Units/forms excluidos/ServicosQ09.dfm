object FormServicosQ09: TFormServicosQ09
  Left = 222
  Top = 67
  Caption = 'Ordem de Servi'#231'o A4 retrato finalizado modelo 2'
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
    object PageHeaderBand1: TQRBand
      Left = 32
      Top = 32
      Width = 608
      Height = 83
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
          8.819444444444445000
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
    object ColumnHeaderBand1: TQRBand
      Left = 32
      Top = 115
      Width = 608
      Height = 441
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        972.343750000000000000
        1340.555555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape37: TQRShape
        Left = 525
        Top = 427
        Width = 82
        Height = 13
        Size.Values = (
          28.663194444444450000
          1157.552083333333000000
          941.475694444444400000
          180.798611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 445
        Top = 427
        Width = 81
        Height = 13
        Size.Values = (
          28.663194444444450000
          981.163194444444700000
          941.475694444444400000
          178.593750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 412
        Top = 427
        Width = 34
        Height = 13
        Size.Values = (
          28.663194444444450000
          908.402777777777900000
          941.475694444444400000
          74.965277777777790000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 353
        Top = 427
        Width = 60
        Height = 13
        Size.Values = (
          28.663194444444450000
          778.315972222222300000
          941.475694444444400000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 57
        Top = 427
        Width = 297
        Height = 13
        Size.Values = (
          28.663194444444450000
          125.677083333333300000
          941.475694444444400000
          654.843750000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 0
        Top = 427
        Width = 58
        Height = 13
        Size.Values = (
          28.663194444444450000
          0.000000000000000000
          941.475694444444400000
          127.881944444444500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 315
        Width = 607
        Height = 113
        Size.Values = (
          249.149305555555600000
          0.000000000000000000
          694.531250000000000000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 203
        Width = 607
        Height = 113
        Size.Values = (
          249.149305555555600000
          0.000000000000000000
          447.586805555555600000
          1338.350694444445000000)
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
      object QRShape32: TQRShape
        Left = 202
        Top = 116
        Width = 322
        Height = 30
        Size.Values = (
          66.145833333333340000
          445.381944444444500000
          255.763888888888900000
          709.965277777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 348
        Top = 87
        Width = 176
        Height = 30
        Size.Values = (
          66.145833333333340000
          767.291666666666600000
          191.822916666666700000
          388.055555555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 174
        Top = 87
        Width = 175
        Height = 30
        Size.Values = (
          66.145833333333340000
          383.645833333333300000
          191.822916666666700000
          385.850694444444500000)
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
          66.145833333333340000
          1153.142361111111000000
          255.763888888888900000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
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
      object QRShape19: TQRShape
        Left = 523
        Top = 87
        Width = 84
        Height = 30
        Size.Values = (
          66.145833333333340000
          1153.142361111111000000
          191.822916666666700000
          185.208333333333300000)
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
          66.145833333333340000
          0.000000000000000000
          191.822916666666700000
          385.850694444444500000)
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
          66.145833333333340000
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
          66.145833333333340000
          1153.142361111111000000
          127.881944444444500000
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
          66.145833333333340000
          767.291666666666600000
          127.881944444444500000
          388.055555555555500000)
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
          66.145833333333340000
          383.645833333333300000
          127.881944444444500000
          385.850694444444500000)
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
          66.145833333333340000
          0.000000000000000000
          127.881944444444500000
          385.850694444444500000)
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
          66.145833333333340000
          1153.142361111111000000
          63.940972222222230000
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
          66.145833333333340000
          948.090277777777800000
          63.940972222222230000
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
          66.145833333333340000
          0.000000000000000000
          63.940972222222230000
          950.295138888889100000)
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
          66.145833333333340000
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
          66.145833333333340000
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
      object QRDBText10: TQRDBText
        Left = 527
        Top = 70
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888900000
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
      object QRDBText15: TQRDBText
        Left = 206
        Top = 128
        Width = 51
        Height = 17
        Size.Values = (
          37.482638888888900000
          454.201388888889000000
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
      object QRDBText14: TQRDBText
        Left = 527
        Top = 99
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888900000
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
      object QRDBText33: TQRDBText
        Left = 3
        Top = 216
        Width = 601
        Height = 97
        Size.Values = (
          213.871527777777800000
          6.614583333333332000
          476.250000000000000000
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
      object QRDBText25: TQRDBText
        Left = 527
        Top = 128
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888900000
          1161.961805555556000000
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
      object QRDBText17: TQRDBText
        Left = 4
        Top = 40
        Width = 409
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          88.194444444444450000
          901.788194444444500000)
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
        Width = 167
        Height = 17
        Size.Values = (
          37.482638888888900000
          392.465277777777900000
          154.340277777777800000
          368.211805555555500000)
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
      object QRDBText21: TQRDBText
        Left = 4
        Top = 99
        Width = 167
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          218.281250000000000000
          368.211805555555500000)
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
      object QRDBText19: TQRDBText
        Left = 352
        Top = 70
        Width = 168
        Height = 17
        Size.Values = (
          37.482638888888900000
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
      object QRDBText23: TQRDBText
        Left = 4
        Top = 128
        Width = 195
        Height = 17
        Size.Values = (
          37.482638888888900000
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
      object QRDBText3: TQRDBText
        Left = 4
        Top = 69
        Width = 167
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          152.135416666666700000
          368.211805555555500000)
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
          37.482638888888900000
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
      object QRDBText27: TQRDBText
        Left = 3
        Top = 328
        Width = 601
        Height = 97
        Size.Values = (
          213.871527777777800000
          6.614583333333332000
          723.194444444444500000
          1325.121527777778000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CONSERTO'
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
      object QRLabel1: TQRLabel
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
      object QRLabel2: TQRLabel
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
      object QRLabel5: TQRLabel
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
      object QRLabel6: TQRLabel
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
      object QRLabel13: TQRLabel
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
      object QRLabel14: TQRLabel
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
      object QRLabel25: TQRLabel
        Left = 3
        Top = 90
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
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
      object QRLabel15: TQRLabel
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
      object QRLabel17: TQRLabel
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
      object QRLabel19: TQRLabel
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
      object QRLabel22: TQRLabel
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
      object QRLabel30: TQRLabel
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
      object QRLabel35: TQRLabel
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
      object QRDBText26: TQRDBText
        Left = 434
        Top = 40
        Width = 86
        Height = 17
        Size.Values = (
          37.482638888888900000
          956.909722222222200000
          88.194444444444450000
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
      object QRDBText1: TQRDBText
        Left = 527
        Top = 12
        Width = 78
        Height = 17
        Size.Values = (
          37.482638888888900000
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
          37.482638888888900000
          1161.961805555556000000
          90.399305555555570000
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
      object QRLabel48: TQRLabel
        Left = 3
        Top = 429
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          945.885416666666600000
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
      object QRLabel7: TQRLabel
        Left = 60
        Top = 429
        Width = 52
        Height = 9
        Size.Values = (
          19.843750000000000000
          132.291666666666700000
          945.885416666666600000
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
      object QRLabel11: TQRLabel
        Left = 356
        Top = 429
        Width = 25
        Height = 9
        Size.Values = (
          19.843750000000000000
          784.930555555555700000
          945.885416666666600000
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
      object QRLabel10: TQRLabel
        Left = 415
        Top = 429
        Width = 24
        Height = 9
        Size.Values = (
          19.843750000000000000
          915.017361111111200000
          945.885416666666600000
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
      object QRLabel12: TQRLabel
        Left = 448
        Top = 429
        Width = 55
        Height = 9
        Size.Values = (
          19.843750000000000000
          987.777777777777800000
          945.885416666666600000
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
        Top = 429
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1164.166666666667000000
          945.885416666666600000
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
      object QRLabel3: TQRLabel
        Left = 3
        Top = 318
        Width = 89
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          701.145833333333400000
          196.232638888888900000)
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
      object QRDBText20: TQRDBText
        Left = 178
        Top = 99
        Width = 167
        Height = 17
        Size.Values = (
          37.482638888888900000
          392.465277777777900000
          218.281250000000000000
          368.211805555555500000)
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
      object QRLabel41: TQRLabel
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
      object QRDBText41: TQRDBText
        Left = 352
        Top = 99
        Width = 168
        Height = 17
        Size.Values = (
          37.482638888888900000
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
      object QRLabel42: TQRLabel
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
    end
    object QRSubDetail1: TQRSubDetail
      Left = 32
      Top = 556
      Width = 608
      Height = 14
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        30.868055555555560000
        1340.555555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery2
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText28: TQRDBText
        Left = 3
        Top = 0
        Width = 52
        Height = 15
        Size.Values = (
          33.072916666666670000
          6.614583333333332000
          0.000000000000000000
          114.652777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_PRODUTO'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText29: TQRDBText
        Left = 61
        Top = 0
        Width = 291
        Height = 15
        Size.Values = (
          33.072916666666670000
          134.496527777777800000
          0.000000000000000000
          641.614583333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_DESCRICAO'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText30: TQRDBText
        Left = 527
        Top = 0
        Width = 78
        Height = 15
        Size.Values = (
          33.072916666666670000
          1161.961805555556000000
          0.000000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_VALORTOTAL'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText31: TQRDBText
        Left = 447
        Top = 0
        Width = 77
        Height = 15
        Size.Values = (
          33.072916666666670000
          985.572916666666600000
          0.000000000000000000
          169.774305555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_VALORUNIT'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText32: TQRDBText
        Left = 414
        Top = 0
        Width = 30
        Height = 15
        Size.Values = (
          33.072916666666670000
          912.812500000000100000
          0.000000000000000000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_UNIDADE'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText34: TQRDBText
        Left = 355
        Top = 0
        Width = 56
        Height = 15
        Size.Values = (
          33.072916666666670000
          782.725694444444400000
          0.000000000000000000
          123.472222222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'SEI_QUANTIDADE'
        Font.Charset = ANSI_CHARSET
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
      object QRFrameline1: TQRFrameline
        Left = -6
        Top = 0
        Width = 12
        Height = 16
        Size.Values = (
          35.277777777777780000
          -13.229166666666670000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline2: TQRFrameline
        Left = 52
        Top = 0
        Width = 12
        Height = 15
        Size.Values = (
          33.072916666666670000
          114.652777777777800000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline3: TQRFrameline
        Left = 348
        Top = 0
        Width = 12
        Height = 16
        Size.Values = (
          35.277777777777780000
          767.291666666666600000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline4: TQRFrameline
        Left = 407
        Top = 0
        Width = 12
        Height = 16
        Size.Values = (
          35.277777777777780000
          897.378472222222300000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline5: TQRFrameline
        Left = 439
        Top = 0
        Width = 12
        Height = 16
        Size.Values = (
          35.277777777777780000
          967.934027777777900000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline6: TQRFrameline
        Left = 519
        Top = 0
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          1144.322916666667000000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline7: TQRFrameline
        Left = 601
        Top = 0
        Width = 12
        Height = 16
        Size.Values = (
          35.277777777777780000
          1325.121527777778000000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
    end
    object PageFooterBand1: TQRBand
      Left = 32
      Top = 570
      Width = 608
      Height = 131
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        288.836805555555600000
        1340.555555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRShape11: TQRShape
        Left = 0
        Top = 41
        Width = 607
        Height = 89
        Size.Values = (
          196.232638888888900000
          0.000000000000000000
          90.399305555555570000
          1338.350694444445000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 472
        Top = 12
        Width = 135
        Height = 30
        Size.Values = (
          66.145833333333340000
          1040.694444444445000000
          26.458333333333330000
          297.656250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 371
        Top = 12
        Width = 102
        Height = 30
        Size.Values = (
          66.145833333333340000
          818.003472222222300000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 270
        Top = 12
        Width = 102
        Height = 30
        Size.Values = (
          66.145833333333340000
          595.312500000000000000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 169
        Top = 12
        Width = 102
        Height = 30
        Size.Values = (
          66.145833333333340000
          372.621527777777800000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 68
        Top = 12
        Width = 102
        Height = 30
        Size.Values = (
          66.145833333333340000
          149.930555555555600000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 12
        Width = 69
        Height = 30
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          26.458333333333330000
          152.135416666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel27: TQRLabel
        Left = 336
        Top = 77
        Width = 268
        Height = 19
        Size.Values = (
          41.892361111111120000
          740.833333333333400000
          169.774305555555600000
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
        Top = 94
        Width = 268
        Height = 19
        Size.Values = (
          41.892361111111120000
          740.833333333333400000
          207.256944444444400000
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
      object QRDBText22: TQRDBText
        Left = 3
        Top = 112
        Width = 601
        Height = 17
        Size.Values = (
          37.482638888888900000
          6.614583333333332000
          246.944444444444400000
          1325.121527777778000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_SERVICOSRPF'
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
        Top = 77
        Width = 262
        Height = 19
        Size.Values = (
          41.892361111111120000
          6.614583333333332000
          169.774305555555600000
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
      object QRDBText24: TQRDBText
        Left = 3
        Top = 94
        Width = 262
        Height = 19
        Size.Values = (
          41.892361111111120000
          6.614583333333332000
          207.256944444444400000
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
      object QRDBText35: TQRDBText
        Left = 476
        Top = 24
        Width = 127
        Height = 17
        Size.Values = (
          37.482638888888900000
          1049.513888888889000000
          52.916666666666660000
          280.017361111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_VALORTOTAL'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText36: TQRDBText
        Left = 72
        Top = 24
        Width = 94
        Height = 17
        Size.Values = (
          37.482638888888900000
          158.750000000000000000
          52.916666666666660000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALPRODUTOS'
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
      object QRDBText37: TQRDBText
        Left = 173
        Top = 24
        Width = 94
        Height = 17
        Size.Values = (
          37.482638888888900000
          381.440972222222200000
          52.916666666666660000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALSERVICOS'
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
      object QRDBText38: TQRDBText
        Left = 4
        Top = 24
        Width = 61
        Height = 17
        Size.Values = (
          37.482638888888900000
          8.819444444444444000
          52.916666666666660000
          134.496527777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_TOTALHORAS'
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
      object QRDBText39: TQRDBText
        Left = 375
        Top = 24
        Width = 94
        Height = 17
        Size.Values = (
          37.482638888888900000
          826.822916666666600000
          52.916666666666660000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DESCVALOR'
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
      object QRDBText40: TQRDBText
        Left = 274
        Top = 24
        Width = 94
        Height = 17
        Size.Values = (
          37.482638888888900000
          604.131944444444400000
          52.916666666666660000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_DESCPORC'
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
      object QRLabel4: TQRLabel
        Left = 3
        Top = 15
        Width = 62
        Height = 9
        Size.Values = (
          19.843750000000000000
          6.614583333333332000
          33.072916666666670000
          136.701388888888900000)
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
      object QRLabel36: TQRLabel
        Left = 71
        Top = 15
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          156.545138888888900000
          33.072916666666670000
          176.388888888888900000)
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
      object QRLabel37: TQRLabel
        Left = 172
        Top = 15
        Width = 77
        Height = 9
        Size.Values = (
          19.843750000000000000
          379.236111111111200000
          33.072916666666670000
          169.774305555555600000)
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
      object QRLabel38: TQRLabel
        Left = 273
        Top = 15
        Width = 59
        Height = 9
        Size.Values = (
          19.843750000000000000
          601.927083333333400000
          33.072916666666670000
          130.086805555555600000)
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
      object QRLabel39: TQRLabel
        Left = 374
        Top = 15
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          824.618055555555700000
          33.072916666666670000
          176.388888888888900000)
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
      object QRLabel29: TQRLabel
        Left = 476
        Top = 15
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1049.513888888889000000
          33.072916666666670000
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
    end
    object QRLabel40: TQRLabel
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
    Active = True
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
      'SER_DESCVALOR,'
      'SER_DESCPORC,'
      'SER_TECNICO,'
      'SER_LOCALIZACAO,'
      'SER_DEFEITO,'
      'SER_CONSERTO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TOTALHORAS,'
      'SER_TOTALSERVICOS,'
      'SER_TOTALPRODUTOS,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'CLI_ENDERECO||'#39', '#39'||CLI_NUMERO as ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CIDADEUF,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_FONE2,'
      'CLI_FONE3,'
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
    object IBQuery1SER_CODIGO: TIntegerField
      FieldName = 'SER_CODIGO'
      Required = True
    end
    object IBQuery1SER_CLIENTE: TIntegerField
      FieldName = 'SER_CLIENTE'
      Origin = '"SERVICOS"."SER_CLIENTE"'
      Required = True
    end
    object IBQuery1SER_PRODUTO: TIBStringField
      FieldName = 'SER_PRODUTO'
      Origin = '"SERVICOS"."SER_PRODUTO"'
      Size = 40
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
    object IBQuery1SER_SERIE: TIBStringField
      FieldName = 'SER_SERIE'
      Origin = '"SERVICOS"."SER_SERIE"'
      Size = 40
    end
    object IBQuery1SER_ACESSORIOS: TIBStringField
      FieldName = 'SER_ACESSORIOS'
      Origin = '"SERVICOS"."SER_ACESSORIOS"'
      Size = 40
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
    object IBQuery1SER_TECNICO: TIntegerField
      FieldName = 'SER_TECNICO'
      Origin = '"SERVICOS"."SER_TECNICO"'
      Required = True
    end
    object IBQuery1SER_LOCALIZACAO: TIBStringField
      FieldName = 'SER_LOCALIZACAO'
      Origin = '"SERVICOS"."SER_LOCALIZACAO"'
    end
    object IBQuery1SER_DEFEITO: TWideMemoField
      FieldName = 'SER_DEFEITO'
      Origin = '"SERVICOS"."SER_DEFEITO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1SER_CONSERTO: TWideMemoField
      FieldName = 'SER_CONSERTO'
      Origin = '"SERVICOS"."SER_CONSERTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1SER_SENHAONLINE: TIBStringField
      FieldName = 'SER_SENHAONLINE'
      Origin = '"SERVICOS"."SER_SENHAONLINE"'
      Size = 40
    end
    object IBQuery1SER_STATUS: TIBStringField
      FieldName = 'SER_STATUS'
      Origin = '"SERVICOS"."SER_STATUS"'
      Size = 1
    end
    object IBQuery1SER_TOTALHORAS: TIBStringField
      FieldName = 'SER_TOTALHORAS'
      Origin = '"SERVICOS"."SER_TOTALHORAS"'
      Size = 25
    end
    object IBQuery1SER_TOTALSERVICOS: TFMTBCDField
      FieldName = 'SER_TOTALSERVICOS'
      Origin = '"SERVICOS"."SER_TOTALSERVICOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1SER_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'SER_TOTALPRODUTOS'
      Origin = '"SERVICOS"."SER_TOTALPRODUTOS"'
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
    object IBQuery1CLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 113
    end
    object IBQuery1CIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
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
    object IBQuery1CLI_FONE1: TIBStringField
      FieldName = 'CLI_FONE1'
      Origin = '"CLIENTES"."CLI_FONE1"'
    end
    object IBQuery1CLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
    object IBQuery1CLI_FONE3: TIBStringField
      FieldName = 'CLI_FONE3'
      Origin = '"CLIENTES"."CLI_FONE3"'
    end
    object IBQuery1CLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object IBQuery1CLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1VEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 712
    Top = 144
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 711
    Top = 257
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select'
      'SEI_PRODUTO,'
      'SEI_DESCRICAO,'
      'SEI_QUANTIDADE,'
      'SEI_UNIDADE,'
      'SEI_VALORUNIT,'
      'SEI_VALORTOTAL'
      'from SERVICOSITENS'
      'where SEI_SERVICO=:SER_CODIGO')
    Left = 776
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SER_CODIGO'
        ParamType = ptUnknown
      end>
    object IBQuery2SEI_PRODUTO: TIntegerField
      FieldName = 'SEI_PRODUTO'
      Origin = '"SERVICOSITENS"."SEI_PRODUTO"'
      Required = True
    end
    object IBQuery2SEI_DESCRICAO: TIBStringField
      FieldName = 'SEI_DESCRICAO'
      Origin = '"SERVICOSITENS"."SEI_DESCRICAO"'
      Size = 100
    end
    object IBQuery2SEI_QUANTIDADE: TFMTBCDField
      FieldName = 'SEI_QUANTIDADE'
      Origin = '"SERVICOSITENS"."SEI_QUANTIDADE"'
      Precision = 18
    end
    object IBQuery2SEI_UNIDADE: TIBStringField
      FieldName = 'SEI_UNIDADE'
      Origin = '"SERVICOSITENS"."SEI_UNIDADE"'
      Size = 3
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
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 840
    Top = 200
  end
end
