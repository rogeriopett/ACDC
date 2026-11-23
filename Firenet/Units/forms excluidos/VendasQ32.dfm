object FormVendasQ32: TFormVendasQ32
  Left = 0
  Top = 0
  Caption = 'Impress'#227'o de pedido de venda com ordem de produ'#231#227'o'
  ClientHeight = 831
  ClientWidth = 1386
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
    Left = 3
    Top = 0
    Width = 1347
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    Zoom = 120
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 45
      Top = 339
      Width = 1256
      Height = 32
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        70.555555555555560000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel78: TQRLabel
        Left = 4
        Top = 4
        Width = 67
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          8.819444444444444000
          147.725694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OBSERVA'#199#213'ES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRHRule1: TQRHRule
        Left = 0
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          -13.229166666666670000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRFrameline1: TQRFrameline
        Left = 584
        Top = 0
        Width = 12
        Height = 33
        Size.Values = (
          72.760416666666680000
          1287.638888888889000000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline2: TQRFrameline
        Left = -6
        Top = 0
        Width = 12
        Height = 33
        Size.Values = (
          72.760416666666680000
          -13.229166666666670000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRLabel41: TQRLabel
        Left = 660
        Top = 4
        Width = 67
        Height = 9
        Size.Values = (
          19.843750000000000000
          1455.208333333333000000
          8.819444444444444000
          147.725694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OBSERVA'#199#213'ES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRFrameline3: TQRFrameline
        Left = 1240
        Top = 0
        Width = 12
        Height = 33
        Size.Values = (
          72.760416666666680000
          2734.027777777778000000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline4: TQRFrameline
        Left = 650
        Top = 0
        Width = 12
        Height = 33
        Size.Values = (
          72.760416666666680000
          1433.159722222222000000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRHRule2: TQRHRule
        Left = 656
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          1446.388888888889000000
          -13.229166666666670000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRLabel44: TQRLabel
        Left = 4
        Top = 15
        Width = 580
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444444000
          33.072916666666670000
          1278.819444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'OBSERVACOES'
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
        Left = 660
        Top = 15
        Width = 580
        Height = 17
        Size.Values = (
          37.482638888888890000
          1455.208333333333000000
          33.072916666666670000
          1278.819444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'OBSERVACOES'
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
    object QRBand4: TQRBand
      Left = 45
      Top = 45
      Width = 1256
      Height = 78
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape17: TQRShape
        Left = 656
        Top = 0
        Width = 590
        Height = 78
        Size.Values = (
          171.979166666666700000
          1446.388888888889000000
          0.000000000000000000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 0
        Top = 0
        Width = 590
        Height = 78
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          0.000000000000000000
          1300.868055555556000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 467
        Top = 58
        Width = 118
        Height = 17
        Size.Values = (
          37.482638888888890000
          1029.670138888889000000
          127.881944444444400000
          260.173611111111100000)
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
        Left = 506
        Top = 41
        Width = 79
        Height = 18
        Size.Values = (
          39.687500000000000000
          1115.659722222222000000
          90.399305555555560000
          174.184027777777800000)
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
        Left = 518
        Top = 24
        Width = 67
        Height = 18
        Size.Values = (
          39.687500000000000000
          1142.118055555556000000
          52.916666666666670000
          147.725694444444400000)
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
        Width = 144
        Height = 74
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          2.645833333333333000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object EMPRESA: TQRDBText
        Left = 149
        Top = 2
        Width = 109
        Height = 24
        Size.Values = (
          52.916666666666670000
          328.524305555555600000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object EMAIL: TQRDBText
        Left = 149
        Top = 24
        Width = 68
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.524305555555600000
          52.916666666666670000
          149.930555555555600000)
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
        Left = 149
        Top = 41
        Width = 62
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.524305555555600000
          90.399305555555560000
          136.701388888888900000)
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
        Left = 149
        Top = 58
        Width = 72
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.524305555555600000
          127.881944444444400000
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
      object QRLabel60: TQRLabel
        Left = 1109
        Top = 58
        Width = 133
        Height = 17
        Size.Values = (
          37.482638888888890000
          2445.190972222222000000
          127.881944444444400000
          293.246527777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ordem de Produ'#231#227'o'
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
        Left = 1162
        Top = 41
        Width = 79
        Height = 18
        Size.Values = (
          39.687500000000000000
          2562.048611111111000000
          90.399305555555560000
          174.184027777777800000)
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
        Left = 1174
        Top = 24
        Width = 67
        Height = 18
        Size.Values = (
          39.687500000000000000
          2588.506944444444000000
          52.916666666666670000
          147.725694444444400000)
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
      object QRDBText53: TQRDBText
        Left = 805
        Top = 2
        Width = 109
        Height = 24
        Size.Values = (
          52.916666666666670000
          1774.913194444444000000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText54: TQRDBText
        Left = 805
        Top = 24
        Width = 68
        Height = 18
        Size.Values = (
          39.687500000000000000
          1774.913194444444000000
          52.916666666666670000
          149.930555555555600000)
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
      object QRDBText55: TQRDBText
        Left = 805
        Top = 41
        Width = 62
        Height = 18
        Size.Values = (
          39.687500000000000000
          1774.913194444444000000
          90.399305555555560000
          136.701388888888900000)
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
      object QRDBText56: TQRDBText
        Left = 805
        Top = 58
        Width = 72
        Height = 18
        Size.Values = (
          39.687500000000000000
          1774.913194444444000000
          127.881944444444400000
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
      object IMAGEM2: TQRImage
        Left = 657
        Top = 1
        Width = 144
        Height = 74
        Size.Values = (
          163.159722222222200000
          1448.593750000000000000
          2.204861111111111000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 45
      Top = 123
      Width = 1256
      Height = 154
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        339.548611111111100000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRShape3: TQRShape
        Left = 1074
        Top = 92
        Width = 172
        Height = 32
        Size.Values = (
          70.555555555555560000
          2368.020833333333000000
          202.847222222222200000
          379.236111111111200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 903
        Top = 92
        Width = 172
        Height = 32
        Size.Values = (
          70.555555555555560000
          1990.989583333333000000
          202.847222222222200000
          379.236111111111200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 656
        Top = 92
        Width = 248
        Height = 32
        Size.Values = (
          70.555555555555560000
          1446.388888888889000000
          202.847222222222200000
          546.805555555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 1120
        Top = 61
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          2469.444444444445000000
          134.496527777777800000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 936
        Top = 61
        Width = 185
        Height = 32
        Size.Values = (
          70.555555555555560000
          2063.750000000000000000
          134.496527777777800000
          407.899305555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 806
        Top = 61
        Width = 131
        Height = 32
        Size.Values = (
          70.555555555555560000
          1777.118055555556000000
          134.496527777777800000
          288.836805555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 656
        Top = 61
        Width = 151
        Height = 32
        Size.Values = (
          70.555555555555560000
          1446.388888888889000000
          134.496527777777800000
          332.934027777777900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 1120
        Top = 30
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          2469.444444444445000000
          66.145833333333340000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 1027
        Top = 30
        Width = 94
        Height = 32
        Size.Values = (
          70.555555555555560000
          2264.392361111111000000
          66.145833333333340000
          207.256944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 656
        Top = 30
        Width = 372
        Height = 32
        Size.Values = (
          70.555555555555560000
          1446.388888888889000000
          66.145833333333340000
          820.208333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 1120
        Top = -1
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          2469.444444444445000000
          -2.204861111111111000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 656
        Top = -1
        Width = 465
        Height = 32
        Size.Values = (
          70.555555555555560000
          1446.388888888889000000
          -2.204861111111111000
          1025.260416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 418
        Top = 92
        Width = 172
        Height = 32
        Size.Values = (
          70.555555555555560000
          921.631944444444500000
          202.847222222222200000
          379.236111111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 247
        Top = 92
        Width = 172
        Height = 32
        Size.Values = (
          70.555555555555560000
          544.600694444444500000
          202.847222222222200000
          379.236111111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 0
        Top = 92
        Width = 248
        Height = 32
        Size.Values = (
          70.555555555555560000
          0.000000000000000000
          202.847222222222200000
          546.805555555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 464
        Top = 61
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          1023.055555555556000000
          134.496527777777800000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 280
        Top = 61
        Width = 185
        Height = 32
        Size.Values = (
          70.555555555555560000
          617.361111111111200000
          134.496527777777800000
          407.899305555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 150
        Top = 61
        Width = 131
        Height = 32
        Size.Values = (
          70.555555555555560000
          330.729166666666600000
          134.496527777777800000
          288.836805555555500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 0
        Top = 61
        Width = 151
        Height = 32
        Size.Values = (
          70.555555555555560000
          0.000000000000000000
          134.496527777777800000
          332.934027777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 464
        Top = 30
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          1023.055555555556000000
          66.145833333333340000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 371
        Top = 30
        Width = 94
        Height = 32
        Size.Values = (
          70.555555555555560000
          818.003472222222300000
          66.145833333333340000
          207.256944444444500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape72: TQRShape
        Left = 0
        Top = 30
        Width = 372
        Height = 32
        Size.Values = (
          70.555555555555560000
          0.000000000000000000
          66.145833333333340000
          820.208333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape73: TQRShape
        Left = 464
        Top = -1
        Width = 126
        Height = 32
        Size.Values = (
          70.555555555555560000
          1023.055555555556000000
          -2.204861111111111000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape84: TQRShape
        Left = 0
        Top = -1
        Width = 465
        Height = 32
        Size.Values = (
          70.555555555555560000
          0.000000000000000000
          -2.204861111111111000
          1025.260416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 507
        Top = 137
        Width = 83
        Height = 16
        Size.Values = (
          35.277777777777780000
          1117.864583333333000000
          302.065972222222200000
          183.003472222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = 430
        Top = 137
        Width = 78
        Height = 16
        Size.Values = (
          35.277777777777780000
          948.090277777777800000
          302.065972222222200000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape79: TQRShape
        Left = 379
        Top = 137
        Width = 52
        Height = 16
        Size.Values = (
          35.277777777777780000
          835.642361111111000000
          302.065972222222200000
          114.652777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 47
        Top = 13
        Width = 414
        Height = 17
        Size.Values = (
          37.482638888888890000
          103.628472222222200000
          28.663194444444440000
          912.812500000000000000)
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
        Left = 4
        Top = 13
        Width = 41
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444445000
          28.663194444444450000
          90.399305555555570000)
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
        Left = 4
        Top = 2
        Width = 38
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          4.409722222222222000
          83.784722222222220000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel3: TQRLabel
        Left = 468
        Top = 2
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          1031.875000000000000000
          4.409722222222222000
          74.965277777777780000)
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
      object QRDBText3: TQRDBText
        Left = 470
        Top = 13
        Width = 116
        Height = 17
        Size.Values = (
          37.482638888888890000
          1036.284722222222000000
          28.663194444444450000
          255.763888888888900000)
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
        Mask = '000000'
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
        Left = 4
        Top = 44
        Width = 364
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444445000
          97.013888888888900000
          802.569444444444500000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 4
        Top = 33
        Width = 49
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          72.760416666666670000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText5: TQRDBText
        Left = 284
        Top = 75
        Width = 177
        Height = 17
        Size.Values = (
          37.482638888888890000
          626.180555555555700000
          165.364583333333300000
          390.260416666666700000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 284
        Top = 64
        Width = 62
        Height = 10
        Size.Values = (
          22.048611111111110000
          626.180555555555600000
          141.111111111111100000
          136.701388888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MUNIC'#205'PIO / UF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel8: TQRLabel
        Left = 375
        Top = 33
        Width = 19
        Height = 9
        Size.Values = (
          19.843750000000000000
          826.822916666666700000
          72.760416666666670000
          41.892361111111110000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText7: TQRDBText
        Left = 375
        Top = 44
        Width = 86
        Height = 17
        Size.Values = (
          37.482638888888890000
          826.822916666666600000
          97.013888888888900000
          189.618055555555600000)
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
        Left = 4
        Top = 95
        Width = 43
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          209.461805555555600000
          94.809027777777780000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText8: TQRDBText
        Left = 4
        Top = 106
        Width = 240
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444445000
          233.715277777777800000
          529.166666666666700000)
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
      object QRDBText10: TQRDBText
        Left = 4
        Top = 75
        Width = 141
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444445000
          165.364583333333300000
          310.885416666666700000)
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
        Left = 4
        Top = 64
        Width = 66
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          141.111111111111100000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel15: TQRLabel
        Left = 468
        Top = 33
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          1031.875000000000000000
          72.760416666666670000
          176.388888888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE EMISS'#195'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText14: TQRDBText
        Left = 470
        Top = 44
        Width = 116
        Height = 17
        Size.Values = (
          37.482638888888890000
          1036.284722222222000000
          97.013888888888900000
          255.763888888888900000)
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
        Left = 468
        Top = 64
        Width = 84
        Height = 9
        Size.Values = (
          19.843750000000000000
          1031.875000000000000000
          141.111111111111100000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE ENTREGA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText15: TQRDBText
        Left = 468
        Top = 75
        Width = 118
        Height = 17
        Size.Values = (
          37.482638888888890000
          1031.875000000000000000
          165.364583333333300000
          260.173611111111100000)
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
        Left = 154
        Top = 75
        Width = 123
        Height = 17
        Size.Values = (
          37.482638888888890000
          339.548611111111100000
          165.364583333333300000
          271.197916666666700000)
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
        Left = 154
        Top = 64
        Width = 34
        Height = 10
        Size.Values = (
          22.048611111111110000
          339.548611111111100000
          141.111111111111100000
          74.965277777777780000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel18: TQRLabel
        Left = 251
        Top = 95
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          553.420138888888900000
          209.461805555555600000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText17: TQRDBText
        Left = 251
        Top = 106
        Width = 164
        Height = 17
        Size.Values = (
          37.482638888888890000
          553.420138888888900000
          233.715277777777800000
          361.597222222222300000)
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
        Left = 422
        Top = 106
        Width = 164
        Height = 17
        Size.Values = (
          37.482638888888890000
          930.451388888889000000
          233.715277777777800000
          361.597222222222300000)
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
        Left = 421
        Top = 95
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          928.246527777777800000
          209.461805555555600000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRShape85: TQRShape
        Left = 65
        Top = 137
        Width = 315
        Height = 16
        Size.Values = (
          35.277777777777780000
          143.315972222222200000
          302.065972222222200000
          694.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape86: TQRShape
        Left = 0
        Top = 137
        Width = 66
        Height = 16
        Size.Values = (
          35.277777777777780000
          0.000000000000000000
          302.065972222222200000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 4
        Top = 141
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          310.885416666666700000
          74.965277777777780000)
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
      object QRLabel23: TQRLabel
        Left = 69
        Top = 141
        Width = 156
        Height = 9
        Size.Values = (
          19.843750000000000000
          152.135416666666700000
          310.885416666666700000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O'
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
        Left = 382
        Top = 141
        Width = 25
        Height = 9
        Size.Values = (
          19.843750000000000000
          842.256944444444400000
          310.885416666666700000
          55.121527777777780000)
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
      object QRLabel29: TQRLabel
        Left = 434
        Top = 141
        Width = 73
        Height = 9
        Size.Values = (
          19.843750000000000000
          956.909722222222200000
          310.885416666666700000
          160.954861111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR UNIT'#193'RIO'
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
        Left = 510
        Top = 141
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1124.479166666667000000
          310.885416666666700000
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
      object QRDBText6: TQRDBText
        Left = 703
        Top = 13
        Width = 414
        Height = 17
        Size.Values = (
          37.482638888888900000
          1550.017361111111000000
          28.663194444444450000
          912.812500000000100000)
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
      object QRDBText9: TQRDBText
        Left = 660
        Top = 13
        Width = 41
        Height = 17
        Size.Values = (
          37.482638888888900000
          1455.208333333333000000
          28.663194444444450000
          90.399305555555570000)
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
      object QRLabel7: TQRLabel
        Left = 660
        Top = 2
        Width = 38
        Height = 9
        Size.Values = (
          19.843750000000000000
          1455.208333333333000000
          4.409722222222222000
          83.784722222222220000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel10: TQRLabel
        Left = 1124
        Top = 2
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          2478.263888888889000000
          4.409722222222222000
          74.965277777777780000)
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
      object QRDBText12: TQRDBText
        Left = 1126
        Top = 13
        Width = 116
        Height = 17
        Size.Values = (
          37.482638888888900000
          2482.673611111111000000
          28.663194444444450000
          255.763888888888900000)
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
        Mask = '000000'
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
        Left = 660
        Top = 44
        Width = 364
        Height = 17
        Size.Values = (
          37.482638888888900000
          1455.208333333333000000
          97.013888888888880000
          802.569444444444500000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 660
        Top = 33
        Width = 49
        Height = 9
        Size.Values = (
          19.843750000000000000
          1455.208333333333000000
          72.760416666666670000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText19: TQRDBText
        Left = 940
        Top = 75
        Width = 177
        Height = 17
        Size.Values = (
          37.482638888888900000
          2072.569444444445000000
          165.364583333333300000
          390.260416666666700000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 940
        Top = 64
        Width = 62
        Height = 10
        Size.Values = (
          22.048611111111110000
          2072.569444444444000000
          141.111111111111100000
          136.701388888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MUNIC'#205'PIO / UF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel14: TQRLabel
        Left = 1031
        Top = 33
        Width = 19
        Height = 9
        Size.Values = (
          19.843750000000000000
          2273.211805555556000000
          72.760416666666670000
          41.892361111111110000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText20: TQRDBText
        Left = 1031
        Top = 44
        Width = 86
        Height = 17
        Size.Values = (
          37.482638888888900000
          2273.211805555556000000
          97.013888888888880000
          189.618055555555600000)
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
      object QRLabel20: TQRLabel
        Left = 660
        Top = 95
        Width = 43
        Height = 10
        Size.Values = (
          22.048611111111110000
          1455.208333333333000000
          209.461805555555600000
          94.809027777777780000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText21: TQRDBText
        Left = 660
        Top = 106
        Width = 240
        Height = 17
        Size.Values = (
          37.482638888888900000
          1455.208333333333000000
          233.715277777777800000
          529.166666666666800000)
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
      object QRDBText24: TQRDBText
        Left = 660
        Top = 75
        Width = 141
        Height = 17
        Size.Values = (
          37.482638888888900000
          1455.208333333333000000
          165.364583333333300000
          310.885416666666700000)
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
      object QRLabel21: TQRLabel
        Left = 660
        Top = 64
        Width = 66
        Height = 10
        Size.Values = (
          22.048611111111110000
          1455.208333333333000000
          141.111111111111100000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel24: TQRLabel
        Left = 1124
        Top = 33
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          2478.263888888889000000
          72.760416666666670000
          176.388888888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE EMISS'#195'O'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText27: TQRDBText
        Left = 1126
        Top = 44
        Width = 116
        Height = 17
        Size.Values = (
          37.482638888888900000
          2482.673611111111000000
          97.013888888888880000
          255.763888888888900000)
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
      object QRLabel25: TQRLabel
        Left = 1124
        Top = 64
        Width = 84
        Height = 9
        Size.Values = (
          19.843750000000000000
          2478.263888888889000000
          141.111111111111100000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE ENTREGA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText28: TQRDBText
        Left = 1124
        Top = 75
        Width = 118
        Height = 17
        Size.Values = (
          37.482638888888900000
          2478.263888888889000000
          165.364583333333300000
          260.173611111111100000)
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
      object QRDBText29: TQRDBText
        Left = 810
        Top = 75
        Width = 123
        Height = 17
        Size.Values = (
          37.482638888888900000
          1785.937500000000000000
          165.364583333333300000
          271.197916666666700000)
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
      object QRLabel26: TQRLabel
        Left = 810
        Top = 64
        Width = 34
        Height = 10
        Size.Values = (
          22.048611111111110000
          1785.937500000000000000
          141.111111111111100000
          74.965277777777780000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel27: TQRLabel
        Left = 907
        Top = 95
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          1999.809027777778000000
          209.461805555555600000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText30: TQRDBText
        Left = 907
        Top = 106
        Width = 164
        Height = 17
        Size.Values = (
          37.482638888888900000
          1999.809027777778000000
          233.715277777777800000
          361.597222222222300000)
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
      object QRDBText31: TQRDBText
        Left = 1078
        Top = 106
        Width = 164
        Height = 17
        Size.Values = (
          37.482638888888900000
          2376.840277777778000000
          233.715277777777800000
          361.597222222222300000)
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
      object QRLabel30: TQRLabel
        Left = 1077
        Top = 95
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          2374.635416666667000000
          209.461805555555600000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE / FAX'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRShape18: TQRShape
        Left = 1179
        Top = 137
        Width = 67
        Height = 16
        Size.Values = (
          35.277777777777780000
          2599.531250000000000000
          302.065972222222200000
          147.725694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 721
        Top = 137
        Width = 459
        Height = 16
        Size.Values = (
          35.277777777777780000
          1589.704861111111000000
          302.065972222222200000
          1012.031250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 656
        Top = 137
        Width = 66
        Height = 16
        Size.Values = (
          35.277777777777780000
          1446.388888888889000000
          302.065972222222200000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 660
        Top = 141
        Width = 34
        Height = 9
        Size.Values = (
          19.843750000000000000
          1455.208333333333000000
          310.885416666666700000
          74.965277777777780000)
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
      object QRLabel37: TQRLabel
        Left = 725
        Top = 141
        Width = 156
        Height = 9
        Size.Values = (
          19.843750000000000000
          1598.524305555556000000
          310.885416666666700000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O'
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
        Left = 1182
        Top = 141
        Width = 25
        Height = 9
        Size.Values = (
          19.843750000000000000
          2606.145833333333000000
          310.885416666666700000
          55.121527777777780000)
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
    end
    object QRBand1: TQRBand
      Left = 45
      Top = 293
      Width = 1256
      Height = 46
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        101.423611111111100000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape97: TQRShape
        Left = 471
        Top = 14
        Width = 119
        Height = 32
        Size.Values = (
          70.555555555555560000
          1038.489583333333000000
          30.868055555555560000
          262.378472222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = 353
        Top = 14
        Width = 119
        Height = 32
        Size.Values = (
          70.555555555555560000
          778.315972222222300000
          30.868055555555560000
          262.378472222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape113: TQRShape
        Left = 235
        Top = 14
        Width = 119
        Height = 32
        Size.Values = (
          70.555555555555560000
          518.142361111111200000
          30.868055555555560000
          262.378472222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape115: TQRShape
        Left = 117
        Top = 14
        Width = 119
        Height = 32
        Size.Values = (
          70.555555555555560000
          257.968750000000000000
          30.868055555555560000
          262.378472222222300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape116: TQRShape
        Left = 0
        Top = 14
        Width = 118
        Height = 32
        Size.Values = (
          70.555555555555560000
          0.000000000000000000
          30.868055555555560000
          260.173611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText36: TQRDBText
        Left = 121
        Top = 28
        Width = 111
        Height = 17
        Size.Values = (
          37.482638888888890000
          266.788194444444500000
          61.736111111111100000
          244.739583333333300000)
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
      object QRDBText39: TQRDBText
        Left = 239
        Top = 28
        Width = 111
        Height = 17
        Size.Values = (
          37.482638888888890000
          526.961805555555700000
          61.736111111111100000
          244.739583333333300000)
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
        Left = 357
        Top = 28
        Width = 111
        Height = 17
        Size.Values = (
          37.482638888888890000
          787.135416666666600000
          61.736111111111100000
          244.739583333333300000)
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
        Left = 475
        Top = 28
        Width = 111
        Height = 17
        Size.Values = (
          37.482638888888890000
          1047.309027777778000000
          61.736111111111100000
          244.739583333333300000)
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
      object QRLabel35: TQRLabel
        Left = 4
        Top = 17
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          37.482638888888890000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel36: TQRLabel
        Left = 121
        Top = 17
        Width = 77
        Height = 9
        Size.Values = (
          19.843750000000000000
          266.788194444444400000
          37.482638888888890000
          169.774305555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL SERVICOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel38: TQRLabel
        Left = 239
        Top = 17
        Width = 59
        Height = 9
        Size.Values = (
          19.843750000000000000
          526.961805555555600000
          37.482638888888890000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel39: TQRLabel
        Left = 356
        Top = 17
        Width = 80
        Height = 9
        Size.Values = (
          19.843750000000000000
          784.930555555555600000
          37.482638888888890000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel49: TQRLabel
        Left = 475
        Top = 17
        Width = 61
        Height = 9
        Size.Values = (
          19.843750000000000000
          1047.309027777778000000
          37.482638888888890000
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
      object QRHRule5: TQRHRule
        Left = 656
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          1446.388888888889000000
          -13.229166666666670000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRHRule6: TQRHRule
        Left = 0
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          -13.229166666666670000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 4
        Top = 28
        Width = 111
        Height = 17
        Size.Values = (
          37.482638888888890000
          8.819444444444445000
          61.736111111111100000
          244.739583333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Produtos'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object QRSubDetail1: TQRSubDetail
      Left = 45
      Top = 277
      Width = 1256
      Height = 16
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery2
      FooterBand = QRBand1
      HeaderBand = ColumnHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText22: TQRDBText
        Left = 4
        Top = 0
        Width = 60
        Height = 16
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
        Left = 382
        Top = 0
        Width = 47
        Height = 16
        Size.Values = (
          35.277777777777780000
          842.256944444444500000
          0.000000000000000000
          103.628472222222200000)
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
      object QRDBText25: TQRDBText
        Left = 434
        Top = 0
        Width = 70
        Height = 16
        Size.Values = (
          35.277777777777780000
          956.909722222222200000
          0.000000000000000000
          154.340277777777800000)
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
        Left = 510
        Top = 0
        Width = 78
        Height = 16
        Size.Values = (
          35.277777777777780000
          1124.479166666667000000
          0.000000000000000000
          171.979166666666700000)
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
      object QRLabel32: TQRLabel
        Left = 69
        Top = 0
        Width = 308
        Height = 16
        Size.Values = (
          35.277777777777780000
          152.135416666666700000
          0.000000000000000000
          679.097222222222300000)
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
      object QRDBText32: TQRDBText
        Left = 660
        Top = 0
        Width = 60
        Height = 16
        Size.Values = (
          35.277777777777780000
          1455.208333333333000000
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
      object QRDBText33: TQRDBText
        Left = 1182
        Top = 0
        Width = 61
        Height = 15
        Size.Values = (
          33.072916666666670000
          2606.145833333333000000
          0.000000000000000000
          134.496527777777800000)
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
      object QRLabel43: TQRLabel
        Left = 725
        Top = 0
        Width = 452
        Height = 16
        Size.Values = (
          35.277777777777780000
          1598.524305555556000000
          0.000000000000000000
          996.597222222222300000)
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
      object QRFrameline5: TQRFrameline
        Left = 716
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          1578.680555555556000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline6: TQRFrameline
        Left = 1174
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          2588.506944444445000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline7: TQRFrameline
        Left = 1240
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          2734.027777777778000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline8: TQRFrameline
        Left = 650
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          1433.159722222222000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline9: TQRFrameline
        Left = 584
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          1287.638888888889000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline10: TQRFrameline
        Left = 502
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          1106.840277777778000000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline11: TQRFrameline
        Left = 425
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          937.065972222222300000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline12: TQRFrameline
        Left = 374
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          824.618055555555700000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline13: TQRFrameline
        Left = 60
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          132.291666666666700000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline14: TQRFrameline
        Left = -6
        Top = -1
        Width = 12
        Height = 17
        Size.Values = (
          37.482638888888900000
          -13.229166666666670000
          -2.204861111111111000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
    end
    object ChildBand1: TQRChildBand
      Left = 45
      Top = 371
      Width = 1256
      Height = 18
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        2769.305555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand2
      PrintOrder = cboAfterParent
      object QRDBText11: TQRDBText
        Left = 510
        Top = 4
        Width = 78
        Height = 9
        Size.Values = (
          19.843750000000000000
          1124.479166666667000000
          8.819444444444444000
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
        Left = 4
        Top = 4
        Width = 95
        Height = 9
        Size.Values = (
          19.843750000000000000
          8.819444444444444000
          8.819444444444444000
          209.461805555555600000)
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
      object QRHRule3: TQRHRule
        Left = 656
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          1446.388888888889000000
          -13.229166666666670000
          1300.868055555555000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRHRule4: TQRHRule
        Left = 0
        Top = -6
        Width = 590
        Height = 12
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          -13.229166666666670000
          1300.868055555556000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
      end
      object QRLabel42: TQRLabel
        Left = 657
        Top = 4
        Width = 95
        Height = 9
        Size.Values = (
          19.843750000000000000
          1448.593750000000000000
          8.819444444444444000
          209.461805555555600000)
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
      object QRDBText35: TQRDBText
        Left = 1163
        Top = 4
        Width = 78
        Height = 9
        Size.Values = (
          19.843750000000000000
          2564.253472222222000000
          8.819444444444444000
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
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 584
    Top = 496
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 496
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 496
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 496
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 280
    Top = 496
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'VED_BAIRRO,'
      'VED_CEP,'
      'VED_CIDADE||'#39' / '#39'||VED_ESTADO as CIDADEUF,'
      'VED_CLIENTE,'
      'VED_CODIGO,'
      'VED_COMPLEMENTO,'
      'VED_CONTATO,'
      'VED_DESCPORC,'
      'VED_DESCVALOR,'
      'VED_DTEMISSAO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO||'#39', '#39'||VED_NUMERO as ENDERECO,'
      'VED_FONE1,'
      'VED_NOME,'
      'VED_OBSERVACOES,'
      'VED_PEDIDOCLIENTE,'
      'VED_TOTALPRODUTOS,'
      'VED_TOTALSERVICOS,'
      'VED_VALORTOTAL,'
      'CLI_FONE2'
      'from VENDAS '
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      'where VED_CODIGO=:codigo')
    Left = 200
    Top = 496
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
    object IBQuery1VED_CEP: TIBStringField
      FieldName = 'VED_CEP'
      Origin = '"VENDAS"."VED_CEP"'
      Size = 10
    end
    object IBQuery1CIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object IBQuery1VED_CLIENTE: TIntegerField
      FieldName = 'VED_CLIENTE'
      Origin = '"VENDAS"."VED_CLIENTE"'
      Required = True
    end
    object IBQuery1VED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = '"VENDAS"."VED_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1VED_COMPLEMENTO: TIBStringField
      FieldName = 'VED_COMPLEMENTO'
      Origin = '"VENDAS"."VED_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1VED_CONTATO: TIBStringField
      FieldName = 'VED_CONTATO'
      Origin = '"VENDAS"."VED_CONTATO"'
      Size = 80
    end
    object IBQuery1VED_DESCPORC: TFMTBCDField
      FieldName = 'VED_DESCPORC'
      Origin = 'VENDAS.VED_DESCPORC'
      Precision = 18
    end
    object IBQuery1VED_DESCVALOR: TFMTBCDField
      FieldName = 'VED_DESCVALOR'
      Origin = 'VENDAS.VED_DESCVALOR'
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
    object IBQuery1ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 117
    end
    object IBQuery1VED_FONE1: TIBStringField
      FieldName = 'VED_FONE1'
      Origin = '"VENDAS"."VED_FONE1"'
    end
    object IBQuery1VED_NOME: TIBStringField
      FieldName = 'VED_NOME'
      Origin = '"VENDAS"."VED_NOME"'
      Size = 80
    end
    object IBQuery1VED_OBSERVACOES: TWideMemoField
      FieldName = 'VED_OBSERVACOES'
      Origin = '"VENDAS"."VED_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1VED_PEDIDOCLIENTE: TIBStringField
      FieldName = 'VED_PEDIDOCLIENTE'
      Origin = 'VENDAS.VED_PEDIDOCLIENTE'
      Size = 15
    end
    object IBQuery1VED_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'VED_TOTALPRODUTOS'
      Origin = 'VENDAS.VED_TOTALPRODUTOS'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_TOTALSERVICOS: TFMTBCDField
      FieldName = 'VED_TOTALSERVICOS'
      Origin = 'VENDAS.VED_TOTALSERVICOS'
      currency = True
      Precision = 18
    end
    object IBQuery1VED_VALORTOTAL: TFMTBCDField
      FieldName = 'VED_VALORTOTAL'
      Origin = 'VENDAS.VED_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object IBQuery1CLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 496
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 544
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'VEI_COMPLEMENTO,'
      'VEI_DESCRICAO,'
      'VEI_LOTE,'
      'VEI_PRODUTO,'
      'VEI_QUANTIDADE,'
      'VEI_VALORTOTAL,'
      'VEI_VALORUNIT'
      'from VENDASITENS'
      'where VEI_VENDA=:codigo'
      'order by VEI_CODIGO')
    Left = 200
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
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
      Origin = 'VENDASITENS.VEI_QUANTIDADE'
      Precision = 18
    end
    object IBQuery2VEI_VALORTOTAL: TFMTBCDField
      FieldName = 'VEI_VALORTOTAL'
      Origin = 'VENDASITENS.VEI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object IBQuery2VEI_VALORUNIT: TFMTBCDField
      FieldName = 'VEI_VALORUNIT'
      Origin = 'VENDASITENS.VEI_VALORUNIT'
      currency = True
      Precision = 18
    end
  end
end
