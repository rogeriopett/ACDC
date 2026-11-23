object FormVendasQ23: TFormVendasQ23
  Left = 77
  Top = 83
  Caption = '23 - Impress'#227'o de Pedido de Vendas / Or'#231'amento com parcelas'
  ClientHeight = 774
  ClientWidth = 1180
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
    Width = 952
    Height = 1347
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
      Left = 32
      Top = 498
      Width = 889
      Height = 50
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
        110.243055555555600000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel78: TQRLabel
        Left = 4
        Top = 4
        Width = 54
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          8.819444444444444000
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
        Left = 5
        Top = 32
        Width = 870
        Height = 18
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
        Left = 509
        Top = 7
        Width = 372
        Height = 18
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          15.875000000000000000
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
        Left = 5
        Top = 16
        Width = 263
        Height = 18
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
      Left = 32
      Top = 547
      Width = 889
      Height = 84
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        185.208333333333300000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRShape16: TQRShape
        Left = 0
        Top = 19
        Width = 706
        Height = 24
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          42.333333333333330000
          1555.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 704
        Top = 19
        Width = 184
        Height = 62
        Size.Values = (
          137.583333333333300000
          1553.104166666667000000
          42.333333333333330000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel60: TQRLabel
        Left = 5
        Top = 24
        Width = 90
        Height = 16
        Size.Values = (
          35.277777777777780000
          11.024305555555560000
          52.916666666666670000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RECEBEMOS DE'
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
        Left = 98
        Top = 24
        Width = 599
        Height = 16
        Size.Values = (
          34.395833333333330000
          216.958333333333300000
          52.916666666666670000
          1320.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'RAZ'#195'O SOCIAL OS PRODUTOS CONSTANTES NO PV INDICADO AO LADO'
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
      object QRShape18: TQRShape
        Left = 0
        Top = 42
        Width = 126
        Height = 40
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          92.604166666666670000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 125
        Top = 42
        Width = 581
        Height = 40
        Size.Values = (
          87.312500000000000000
          275.166666666666700000
          92.604166666666670000
          1280.583333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel62: TQRLabel
        Left = 4
        Top = 46
        Width = 86
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          101.423611111111100000
          189.618055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE RECEBIMENTO'
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
      object QRLabel63: TQRLabel
        Left = 710
        Top = 30
        Width = 172
        Height = 20
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          66.145833333333330000
          378.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PEDIDO N'#186
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText53: TQRDBText
        Left = 710
        Top = 50
        Width = 172
        Height = 20
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          111.125000000000000000
          378.354166666666700000)
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
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 128
        Top = 46
        Width = 169
        Height = 10
        Size.Values = (
          22.048611111111110000
          282.222222222222200000
          101.423611111111100000
          372.621527777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR'
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
      object QRShape20: TQRShape
        Left = 5
        Top = 7
        Width = 880
        Height = 6
        Size.Values = (
          13.229166666666670000
          10.583333333333330000
          15.875000000000000000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand4: TQRBand
      Left = 32
      Top = 32
      Width = 889
      Height = 78
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 766
        Top = 58
        Width = 118
        Height = 17
        Size.Values = (
          37.482638888888890000
          1688.923611111111000000
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
        Left = 804
        Top = 41
        Width = 79
        Height = 18
        Size.Values = (
          39.687500000000000000
          1772.708333333333000000
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
        Left = 816
        Top = 24
        Width = 67
        Height = 18
        Size.Values = (
          39.687500000000000000
          1799.166666666667000000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 149
        Top = 24
        Width = 616
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          52.916666666666670000
          1357.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRLabel21: TQRLabel
        Left = 149
        Top = 41
        Width = 616
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          89.958333333333330000
          1357.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRLabel64: TQRLabel
        Left = 149
        Top = 58
        Width = 616
        Height = 18
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          127.000000000000000000
          1357.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
    object ColumnHeaderBand1: TQRBand
      Left = 32
      Top = 110
      Width = 889
      Height = 161
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        354.982638888888900000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRShape1: TQRShape
        Left = 763
        Top = 97
        Width = 126
        Height = 34
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
      object QRShape50: TQRShape
        Left = 593
        Top = 97
        Width = 172
        Height = 34
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
        Left = 422
        Top = 97
        Width = 172
        Height = 34
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
        Top = 97
        Width = 424
        Height = 34
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
        Left = 763
        Top = 65
        Width = 126
        Height = 34
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
        Left = 667
        Top = 65
        Width = 97
        Height = 34
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
        Left = 629
        Top = 65
        Width = 40
        Height = 34
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
        Left = 314
        Top = 65
        Width = 316
        Height = 34
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
        Top = 65
        Width = 316
        Height = 34
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
        Left = 763
        Top = 32
        Width = 126
        Height = 34
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
        Left = 547
        Top = 32
        Width = 217
        Height = 34
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
        Left = 451
        Top = 32
        Width = 97
        Height = 34
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
        Top = 32
        Width = 452
        Height = 34
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
        Left = 763
        Top = 0
        Width = 126
        Height = 34
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
        Left = 607
        Top = 0
        Width = 157
        Height = 34
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
        Left = 451
        Top = 0
        Width = 157
        Height = 34
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
        Left = 772
        Top = 145
        Width = 118
        Height = 16
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
        Left = 695
        Top = 145
        Width = 78
        Height = 16
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
        Left = 618
        Top = 145
        Width = 78
        Height = 16
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
        Left = 551
        Top = 145
        Width = 68
        Height = 16
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
        Left = 520
        Top = 145
        Width = 32
        Height = 16
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
        Left = 488
        Top = 145
        Width = 32
        Height = 16
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
        Left = 457
        Top = 145
        Width = 32
        Height = 16
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
        Left = 438
        Top = 145
        Width = 20
        Height = 16
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
        Width = 452
        Height = 34
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
        Left = 48
        Top = 14
        Width = 400
        Height = 18
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
        Left = 6
        Top = 14
        Width = 41
        Height = 18
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
        Left = 4
        Top = 4
        Width = 31
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          8.819444444444444000
          68.350694444444440000)
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
        Left = 768
        Top = 4
        Width = 28
        Height = 10
        Size.Values = (
          22.048611111111110000
          1693.333333333333000000
          8.819444444444444000
          61.736111111111110000)
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
        Left = 769
        Top = 14
        Width = 116
        Height = 18
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
        Left = 6
        Top = 47
        Width = 442
        Height = 18
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
        Left = 4
        Top = 36
        Width = 40
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          79.375000000000000000
          88.194444444444440000)
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
        Left = 320
        Top = 79
        Width = 305
        Height = 18
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
        Left = 318
        Top = 68
        Width = 38
        Height = 10
        Size.Values = (
          22.048611111111110000
          701.145833333333300000
          149.930555555555600000
          83.784722222222220000)
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
        Left = 635
        Top = 79
        Width = 29
        Height = 18
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
        Left = 632
        Top = 68
        Width = 11
        Height = 10
        Size.Values = (
          22.048611111111110000
          1393.472222222222000000
          149.930555555555600000
          24.253472222222220000)
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
        Left = 671
        Top = 68
        Width = 16
        Height = 10
        Size.Values = (
          22.048611111111110000
          1479.461805555556000000
          149.930555555555600000
          35.277777777777780000)
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
        Left = 673
        Top = 79
        Width = 86
        Height = 18
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
        Left = 4
        Top = 101
        Width = 35
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          222.690972222222200000
          77.170138888888890000)
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
        Left = 6
        Top = 112
        Width = 413
        Height = 18
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
        Left = 612
        Top = 4
        Width = 79
        Height = 10
        Size.Values = (
          22.048611111111110000
          1349.375000000000000000
          8.819444444444444000
          174.184027777777800000)
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
        Left = 613
        Top = 14
        Width = 146
        Height = 18
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
        Left = 553
        Top = 47
        Width = 206
        Height = 18
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
        Left = 551
        Top = 36
        Width = 55
        Height = 10
        Size.Values = (
          22.048611111111110000
          1214.878472222222000000
          79.375000000000000000
          121.267361111111100000)
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
        Left = 457
        Top = 47
        Width = 86
        Height = 18
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
        Left = 455
        Top = 36
        Width = 31
        Height = 10
        Size.Values = (
          22.048611111111110000
          1003.211805555556000000
          79.375000000000000000
          68.350694444444440000)
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
        Left = 458
        Top = 14
        Width = 145
        Height = 18
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
        Left = 455
        Top = 4
        Width = 41
        Height = 10
        Size.Values = (
          22.048611111111110000
          1003.211805555556000000
          8.819444444444444000
          90.399305555555560000)
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
        Left = 767
        Top = 68
        Width = 67
        Height = 10
        Size.Values = (
          22.048611111111110000
          1691.128472222222000000
          149.930555555555600000
          147.725694444444400000)
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
        Left = 769
        Top = 79
        Width = 116
        Height = 18
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
        Left = 767
        Top = 101
        Width = 97
        Height = 10
        Size.Values = (
          22.048611111111110000
          1691.128472222222000000
          222.690972222222200000
          213.871527777777800000)
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
        Left = 769
        Top = 112
        Width = 116
        Height = 18
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
        Left = 6
        Top = 79
        Width = 305
        Height = 18
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
        Left = 4
        Top = 68
        Width = 28
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          149.930555555555600000
          61.736111111111110000)
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
        Left = 426
        Top = 101
        Width = 42
        Height = 10
        Size.Values = (
          22.048611111111110000
          939.270833333333300000
          222.690972222222200000
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
        Left = 428
        Top = 112
        Width = 161
        Height = 18
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
        Left = 599
        Top = 112
        Width = 161
        Height = 18
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
        Left = 596
        Top = 101
        Width = 42
        Height = 10
        Size.Values = (
          22.048611111111110000
          1314.097222222222000000
          222.690972222222200000
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
        Left = 767
        Top = 36
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          1691.128472222222000000
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
        Left = 769
        Top = 47
        Width = 116
        Height = 18
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
        Left = 67
        Top = 145
        Width = 372
        Height = 16
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
        Top = 145
        Width = 68
        Height = 16
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
        Left = 4
        Top = 149
        Width = 28
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          328.524305555555600000
          61.736111111111110000)
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
        Left = 71
        Top = 149
        Width = 128
        Height = 10
        Size.Values = (
          22.048611111111110000
          156.545138888888900000
          328.524305555555600000
          282.222222222222200000)
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
        Left = 442
        Top = 149
        Width = 13
        Height = 10
        Size.Values = (
          22.048611111111110000
          974.548611111111100000
          328.524305555555600000
          28.663194444444440000)
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
        Left = 461
        Top = 149
        Width = 16
        Height = 10
        Size.Values = (
          22.048611111111110000
          1016.440972222222000000
          328.524305555555600000
          35.277777777777780000)
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
        Left = 492
        Top = 149
        Width = 17
        Height = 10
        Size.Values = (
          22.048611111111110000
          1084.791666666667000000
          328.524305555555600000
          37.482638888888890000)
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
        Left = 523
        Top = 149
        Width = 11
        Height = 10
        Size.Values = (
          22.048611111111110000
          1153.142361111111000000
          328.524305555555600000
          24.253472222222220000)
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
        Left = 554
        Top = 149
        Width = 20
        Height = 10
        Size.Values = (
          22.048611111111110000
          1221.493055555556000000
          328.524305555555600000
          44.097222222222220000)
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
        Left = 622
        Top = 149
        Width = 60
        Height = 10
        Size.Values = (
          22.048611111111110000
          1371.423611111111000000
          328.524305555555600000
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
        Left = 698
        Top = 149
        Width = 36
        Height = 10
        Size.Values = (
          22.048611111111110000
          1538.993055555556000000
          328.524305555555600000
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
        Left = 775
        Top = 149
        Width = 49
        Height = 10
        Size.Values = (
          22.048611111111110000
          1708.767361111111000000
          328.524305555555600000
          108.038194444444400000)
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
      Left = 32
      Top = 271
      Width = 889
      Height = 16
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery2
      FooterBand = QRBand1
      HeaderBand = ColumnHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape87: TQRShape
        Left = 68
        Top = -1
        Width = 371
        Height = 34
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
        Left = 439
        Top = -1
        Width = 19
        Height = 34
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
        Left = 458
        Top = -1
        Width = 31
        Height = 34
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
        Left = 490
        Top = -1
        Width = 31
        Height = 34
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
        Left = 521
        Top = -1
        Width = 31
        Height = 34
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
        Left = 552
        Top = -1
        Width = 67
        Height = 34
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
        Left = 619
        Top = -1
        Width = 77
        Height = 34
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
        Left = 696
        Top = -1
        Width = 77
        Height = 34
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
        Left = 773
        Top = -1
        Width = 116
        Height = 34
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
        Width = 68
        Height = 34
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
        Left = 440
        Top = 0
        Width = 14
        Height = 16
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
        Left = 554
        Top = 0
        Width = 60
        Height = 16
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
        Left = 461
        Top = 0
        Width = 24
        Height = 16
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
        Left = 622
        Top = 0
        Width = 70
        Height = 16
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
        Left = 775
        Top = 0
        Width = 110
        Height = 16
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
        Left = 492
        Top = 0
        Width = 24
        Height = 16
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
        Left = 523
        Top = 0
        Width = 24
        Height = 16
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
        Left = 70
        Top = 0
        Width = 364
        Height = 16
        Size.Values = (
          34.395833333333340000
          153.458333333333300000
          0.000000000000000000
          801.687500000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
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
        Left = 700
        Top = 0
        Width = 70
        Height = 16
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
      Left = 32
      Top = 287
      Width = 889
      Height = 162
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        357.187500000000000000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape97: TQRShape
        Left = 761
        Top = 48
        Width = 128
        Height = 34
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
        Left = 636
        Top = 48
        Width = 126
        Height = 34
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
        Left = 509
        Top = 48
        Width = 128
        Height = 34
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
        Left = 382
        Top = 48
        Width = 128
        Height = 34
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
        Left = 254
        Top = 48
        Width = 128
        Height = 34
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
        Left = 127
        Top = 48
        Width = 128
        Height = 34
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
        Top = 48
        Width = 128
        Height = 34
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
        Left = 443
        Top = 128
        Width = 446
        Height = 34
        Size.Values = (
          74.083333333333340000
          976.312500000000000000
          283.104166666666700000
          984.249999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape105: TQRShape
        Left = 678
        Top = 96
        Width = 211
        Height = 34
        Size.Values = (
          74.083333333333340000
          1494.895833333333000000
          211.666666666666700000
          465.666666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape106: TQRShape
        Left = 551
        Top = 96
        Height = 34
        Size.Values = (
          74.083333333333320000
          1214.437500000000000000
          211.666666666666700000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape107: TQRShape
        Left = 443
        Top = 96
        Width = 109
        Height = 34
        Size.Values = (
          74.083333333333320000
          976.312500000000000000
          211.666666666666700000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape108: TQRShape
        Left = 0
        Top = 128
        Width = 444
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          283.104166666666700000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape109: TQRShape
        Left = 761
        Top = 16
        Width = 128
        Height = 34
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
        Left = 636
        Top = 16
        Width = 126
        Height = 34
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
      object QRShape111: TQRShape
        Left = 0
        Top = 96
        Width = 444
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          211.666666666666700000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = 509
        Top = 16
        Width = 128
        Height = 34
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
        Left = 382
        Top = 16
        Width = 128
        Height = 34
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
        Left = 254
        Top = 16
        Width = 128
        Height = 34
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
        Left = 127
        Top = 16
        Width = 128
        Height = 34
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
        Top = 16
        Width = 128
        Height = 34
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
        Left = 133
        Top = 30
        Width = 118
        Height = 18
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
        Left = 260
        Top = 30
        Width = 118
        Height = 18
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
        Left = 388
        Top = 30
        Width = 118
        Height = 18
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
        Left = 515
        Top = 30
        Width = 118
        Height = 18
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
        Left = 767
        Top = 62
        Width = 118
        Height = 18
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
      object QRDBText42: TQRDBText
        Left = 6
        Top = 110
        Width = 41
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          243.416666666666700000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TRANSPORTADORA'
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
        Left = 449
        Top = 110
        Width = 97
        Height = 18
        Size.Values = (
          39.687500000000000000
          989.541666666666800000
          243.416666666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VEICULOPLACA'
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
      object QRDBText44: TQRDBText
        Left = 767
        Top = 30
        Width = 118
        Height = 18
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
        Left = 641
        Top = 30
        Width = 116
        Height = 18
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
      object QRDBText46: TQRDBText
        Left = 48
        Top = 110
        Width = 391
        Height = 18
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          243.416666666666700000
          862.541666666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_TRANSPNOME'
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
      object QRDBText47: TQRDBText
        Left = 557
        Top = 110
        Width = 53
        Height = 18
        Size.Values = (
          39.687500000000000000
          1227.666666666667000000
          243.416666666666700000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VEICULOPLACAUF'
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
        Left = 6
        Top = 143
        Width = 41
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          314.854166666666700000
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
      object QRDBText49: TQRDBText
        Left = 684
        Top = 110
        Width = 200
        Height = 18
        Size.Values = (
          39.687500000000000000
          1508.125000000000000000
          243.416666666666700000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_FRETE'
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
        Left = 48
        Top = 143
        Width = 391
        Height = 18
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          314.854166666666700000
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
        Left = 6
        Top = 62
        Width = 118
        Height = 18
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
        Left = 260
        Top = 62
        Width = 118
        Height = 18
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
        Left = 133
        Top = 62
        Width = 118
        Height = 18
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
        Left = 388
        Top = 62
        Width = 118
        Height = 18
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
        Left = 515
        Top = 62
        Width = 118
        Height = 18
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
        Left = 6
        Top = 30
        Width = 118
        Height = 18
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
        Left = 4
        Top = 19
        Width = 65
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          41.892361111111110000
          143.315972222222200000)
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
        Left = 131
        Top = 19
        Width = 62
        Height = 10
        Size.Values = (
          22.048611111111110000
          288.836805555555600000
          41.892361111111110000
          136.701388888888900000)
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
        Left = 258
        Top = 19
        Width = 50
        Height = 10
        Size.Values = (
          22.048611111111110000
          568.854166666666700000
          41.892361111111110000
          110.243055555555600000)
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
        Left = 385
        Top = 19
        Width = 52
        Height = 10
        Size.Values = (
          22.048611111111110000
          848.871527777777800000
          41.892361111111110000
          114.652777777777800000)
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
        Left = 512
        Top = 19
        Width = 65
        Height = 10
        Size.Values = (
          22.048611111111110000
          1128.888888888889000000
          41.892361111111110000
          143.315972222222200000)
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
        Left = 4
        Top = 52
        Width = 41
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          114.652777777777800000
          90.399305555555560000)
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
        Left = 131
        Top = 52
        Width = 44
        Height = 10
        Size.Values = (
          22.048611111111110000
          288.836805555555600000
          114.652777777777800000
          97.013888888888890000)
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
        Left = 258
        Top = 52
        Width = 53
        Height = 10
        Size.Values = (
          22.048611111111110000
          568.854166666666700000
          114.652777777777800000
          116.857638888888900000)
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
        Left = 385
        Top = 52
        Width = 56
        Height = 10
        Size.Values = (
          22.048611111111110000
          848.871527777777800000
          114.652777777777800000
          123.472222222222200000)
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
        Left = 512
        Top = 52
        Width = 36
        Height = 10
        Size.Values = (
          22.048611111111110000
          1128.888888888889000000
          114.652777777777800000
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
      object QRLabel45: TQRLabel
        Left = 4
        Top = 98
        Width = 68
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          216.076388888888900000
          149.930555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TRANSPORTADORA'
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
        Left = 640
        Top = 19
        Width = 47
        Height = 10
        Size.Values = (
          22.048611111111110000
          1411.111111111111000000
          41.892361111111110000
          103.628472222222200000)
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
        Left = 766
        Top = 19
        Width = 50
        Height = 10
        Size.Values = (
          22.048611111111110000
          1688.923611111111000000
          41.892361111111110000
          110.243055555555600000)
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
        Left = 4
        Top = 131
        Width = 84
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          288.836805555555600000
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
        Left = 764
        Top = 52
        Width = 49
        Height = 11
        Size.Values = (
          24.253472222222220000
          1684.513888888889000000
          114.652777777777800000
          108.038194444444400000)
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
      object QRLabel50: TQRLabel
        Left = 446
        Top = 100
        Width = 24
        Height = 10
        Size.Values = (
          22.048611111111110000
          983.368055555555600000
          220.486111111111100000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PLACA'
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
      object QRLabel51: TQRLabel
        Left = 554
        Top = 100
        Width = 36
        Height = 10
        Size.Values = (
          22.048611111111110000
          1221.493055555556000000
          220.486111111111100000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PLACA UF'
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
      object QRLabel72: TQRLabel
        Left = 682
        Top = 100
        Width = 68
        Height = 10
        Size.Values = (
          22.048611111111110000
          1503.715277777778000000
          220.486111111111100000
          149.930555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FRETE POR CONTA'
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
      object QRLabel76: TQRLabel
        Left = 446
        Top = 132
        Width = 40
        Height = 10
        Size.Values = (
          22.048611111111110000
          983.368055555555600000
          291.041666666666700000
          88.194444444444440000)
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
        Left = 449
        Top = 143
        Width = 41
        Height = 18
        Size.Values = (
          39.687500000000000000
          989.541666666666800000
          314.854166666666700000
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
        Left = 491
        Top = 143
        Width = 394
        Height = 18
        Size.Values = (
          39.687500000000000000
          1082.145833333333000000
          314.854166666666700000
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
        Left = 640
        Top = 52
        Width = 67
        Height = 10
        Size.Values = (
          22.048611111111110000
          1411.111111111111000000
          114.652777777777800000
          147.725694444444400000)
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
        Left = 641
        Top = 62
        Width = 116
        Height = 18
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
      object QRShape15: TQRShape
        Left = 614
        Top = 96
        Height = 34
        Size.Values = (
          74.083333333333320000
          1354.666666666667000000
          211.666666666666700000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel59: TQRLabel
        Left = 618
        Top = 100
        Width = 35
        Height = 10
        Size.Values = (
          22.048611111111110000
          1362.604166666667000000
          220.486111111111100000
          77.170138888888890000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VOLUMES'
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
      object QRDBText37: TQRDBText
        Left = 620
        Top = 110
        Width = 53
        Height = 18
        Size.Values = (
          39.687500000000000000
          1367.895833333333000000
          243.416666666666700000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_VOLUMES'
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
    object QRSubDetail4: TQRSubDetail
      Left = 32
      Top = 449
      Width = 889
      Height = 16
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText30: TQRDBText
        Left = 22
        Top = -1
        Width = 817
        Height = 18
        Size.Values = (
          39.687500000000000000
          47.625000000000000000
          -2.645833333333333000
          1801.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CONDICAOMEMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
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
    object QRSubDetail5: TQRSubDetail
      Left = 32
      Top = 481
      Width = 889
      Height = 16
      AlignToBottom = False
      BeforePrint = QRSubDetail5BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery3
      HeaderBand = QRBand5
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape14: TQRShape
        Left = 796
        Top = 0
        Width = 94
        Height = 16
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          0.000000000000000000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 703
        Top = 0
        Width = 92
        Height = 16
        Size.Values = (
          34.395833333333340000
          1550.458333333333000000
          0.000000000000000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 622
        Top = 0
        Width = 82
        Height = 16
        Size.Values = (
          34.395833333333340000
          1370.541666666667000000
          0.000000000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 540
        Top = 0
        Width = 82
        Height = 16
        Size.Values = (
          34.395833333333340000
          1190.625000000000000000
          0.000000000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 107
        Top = 0
        Width = 433
        Height = 16
        Size.Values = (
          34.395833333333340000
          235.479166666666700000
          0.000000000000000000
          955.145833333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 0
        Width = 107
        Height = 16
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRDBText31: TQRDBText
        Left = 4
        Top = 0
        Width = 98
        Height = 16
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          0.000000000000000000
          216.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'REE_NUMDOCTO'
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
      object QRDBText32: TQRDBText
        Left = 109
        Top = 0
        Width = 425
        Height = 16
        Size.Values = (
          34.395833333333340000
          240.770833333333300000
          0.000000000000000000
          936.625000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'REE_DESCRICAO'
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
        Left = 542
        Top = 0
        Width = 76
        Height = 16
        Size.Values = (
          34.395833333333340000
          1195.916666666667000000
          0.000000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'REE_DTEMISSAO'
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
      object QRDBText34: TQRDBText
        Left = 624
        Top = 0
        Width = 76
        Height = 16
        Size.Values = (
          34.395833333333340000
          1375.833333333333000000
          0.000000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'REE_DTVENCIMENTO'
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
      object QRDBText35: TQRDBText
        Left = 706
        Top = 0
        Width = 86
        Height = 16
        Size.Values = (
          34.395833333333340000
          1555.750000000000000000
          0.000000000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery3
        DataField = 'REE_VALOR'
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
      object QRLabel34: TQRLabel
        Left = 798
        Top = 0
        Width = 84
        Height = 16
        Size.Values = (
          34.395833333333340000
          1759.479166666667000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Status'
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
    end
    object QRBand5: TQRBand
      Left = 32
      Top = 465
      Width = 889
      Height = 16
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRShape8: TQRShape
        Left = 794
        Top = 0
        Width = 95
        Height = 16
        Size.Values = (
          34.395833333333340000
          1751.541666666667000000
          0.000000000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 702
        Top = 0
        Width = 94
        Height = 16
        Size.Values = (
          34.395833333333340000
          1547.812500000000000000
          0.000000000000000000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 620
        Top = 0
        Width = 83
        Height = 16
        Size.Values = (
          34.395833333333340000
          1367.895833333333000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 539
        Top = 0
        Width = 83
        Height = 16
        Size.Values = (
          34.395833333333340000
          1187.979166666667000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 106
        Top = 0
        Width = 434
        Height = 16
        Size.Values = (
          34.395833333333340000
          232.833333333333400000
          0.000000000000000000
          957.791666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 0
        Width = 107
        Height = 16
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          0.000000000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel53: TQRLabel
        Left = 4
        Top = 4
        Width = 78
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          8.819444444444444000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DOCUMENTO'
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
      object QRLabel54: TQRLabel
        Left = 109
        Top = 4
        Width = 42
        Height = 10
        Size.Values = (
          22.048611111111110000
          240.329861111111100000
          8.819444444444444000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCRI'#199#195'O'
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
      object QRLabel55: TQRLabel
        Left = 542
        Top = 4
        Width = 55
        Height = 10
        Size.Values = (
          22.048611111111110000
          1195.034722222222000000
          8.819444444444444000
          121.267361111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA EMISS'#195'O'
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
      object QRLabel56: TQRLabel
        Left = 624
        Top = 4
        Width = 70
        Height = 10
        Size.Values = (
          22.048611111111110000
          1375.833333333333000000
          8.819444444444444000
          154.340277777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA VENCIMENTO'
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
      object QRLabel57: TQRLabel
        Left = 706
        Top = 4
        Width = 24
        Height = 10
        Size.Values = (
          22.048611111111110000
          1556.631944444444000000
          8.819444444444444000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'VALOR'
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
      object QRLabel58: TQRLabel
        Left = 798
        Top = 4
        Width = 30
        Height = 10
        Size.Values = (
          22.048611111111110000
          1759.479166666667000000
          8.819444444444444000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'STATUS'
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
    object QRLabel132: TQRLabel
      Left = 89
      Top = 634
      Width = 712
      Height = 161
      Size.Values = (
        354.982638888888900000
        196.232638888888900000
        1397.881944444444000000
        1569.861111111111000000)
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
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 144
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
      'VED_DTEMISSAO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO,'
      'VED_ESTADO,'
      'VED_FONE1,'
      'VED_FRETE,'
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
      'VED_TRANSPNOME,'
      'VED_TRANSPORTADORA,'
      'VED_DESCPORC,'
      'VED_DESCVALOR,'
      'VED_VALORFRETE,'
      'VED_VALORTOTAL,'
      'VED_VEICULOPLACA,'
      'VED_VEICULOPLACAUF,'
      'VED_VENDEDOR,'
      'VED_VOLUMES,'
      'CLI_FONE2,'
      'CLI_PONTOS,'
      'CPG_DESCRICAO,'
      'VEN_NOME'
      'from VENDAS '
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      'where VED_CODIGO=:codigo')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
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
    object IBQuery1VED_FRETE: TIBStringField
      FieldName = 'VED_FRETE'
      Origin = '"VENDAS"."VED_FRETE"'
      Size = 50
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
    object IBQuery1VED_TRANSPORTADORA: TIntegerField
      FieldName = 'VED_TRANSPORTADORA'
      Origin = '"VENDAS"."VED_TRANSPORTADORA"'
    end
    object IBQuery1VED_TRANSPNOME: TIBStringField
      FieldName = 'VED_TRANSPNOME'
      Origin = '"VENDAS"."VED_TRANSPNOME"'
      Size = 80
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
    object IBQuery1VED_VEICULOPLACA: TIBStringField
      FieldName = 'VED_VEICULOPLACA'
      Origin = '"VENDAS"."VED_VEICULOPLACA"'
      Size = 10
    end
    object IBQuery1VED_VEICULOPLACAUF: TIBStringField
      FieldName = 'VED_VEICULOPLACAUF'
      Origin = '"VENDAS"."VED_VEICULOPLACAUF"'
      Size = 2
    end
    object IBQuery1VED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = '"VENDAS"."VED_VENDEDOR"'
      Required = True
    end
    object IBQuery1VED_VOLUMES: TIntegerField
      FieldName = 'VED_VOLUMES'
      Origin = '"VENDAS"."VED_VOLUMES"'
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
    Left = 280
    Top = 144
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 144
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 144
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 504
    Top = 144
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 584
    Top = 144
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 192
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
      'VEI_PRODUTO,'
      'VEI_QUANTIDADE,'
      'VEI_TIPO,'
      'VEI_UNIDADE,'
      'VEI_VALORICMSST,'
      'VEI_VALORTOTAL,'
      'VEI_VALORUNIT'
      'from VENDASITENS'
      'where VEI_VENDA=:codigo'
      'order by VEI_CODIGO')
    Left = 200
    Top = 192
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
    Left = 200
    Top = 288
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
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 288
  end
  object IBQuery3: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.TREmpresa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'REE_NUMDOCTO,'
      'REE_DESCRICAO,'
      'REE_DTEMISSAO,'
      'REE_DTVENCIMENTO,'
      'REE_VALOR,'
      'REE_STATUS'
      'from RECEBER'
      'where REE_CLIENTE=:codigo and'
      'REE_NUMDOCTO like :numdocto'
      'order by REE_DTVENCIMENTO desc')
    Left = 200
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numdocto'
        ParamType = ptUnknown
      end>
    object IBQuery3REE_NUMDOCTO: TIBStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = '"RECEBER"."REE_NUMDOCTO"'
    end
    object IBQuery3REE_DESCRICAO: TIBStringField
      FieldName = 'REE_DESCRICAO'
      Origin = '"RECEBER"."REE_DESCRICAO"'
      Size = 120
    end
    object IBQuery3REE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = '"RECEBER"."REE_DTEMISSAO"'
    end
    object IBQuery3REE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = '"RECEBER"."REE_DTVENCIMENTO"'
    end
    object IBQuery3REE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = '"RECEBER"."REE_VALOR"'
      currency = True
      Precision = 18
    end
    object IBQuery3REE_STATUS: TIBStringField
      FieldName = 'REE_STATUS'
      Origin = '"RECEBER"."REE_STATUS"'
      Size = 1
    end
  end
  object IBTransaction3: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 240
  end
end
