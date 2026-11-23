object FormNfseQ01: TFormNfseQ01
  Left = 0
  Top = 0
  Caption = 'DANFSe'
  ClientHeight = 809
  ClientWidth = 1156
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
    Top = -2
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
      Height = 100
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        264.583333333333300000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape7: TQRShape
        Left = 541
        Top = 64
        Width = 199
        Height = 33
        Size.Values = (
          87.312500000000000000
          1431.395833333333000000
          169.333333333333300000
          526.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 541
        Top = 32
        Width = 199
        Height = 33
        Size.Values = (
          87.312500000000000000
          1431.395833333333000000
          84.666666666666660000
          526.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 640
        Top = 0
        Width = 100
        Height = 33
        Size.Values = (
          87.312500000000000000
          1693.333333333333000000
          0.000000000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 541
        Top = 0
        Width = 100
        Height = 33
        Size.Values = (
          87.312500000000000000
          1431.395833333333000000
          0.000000000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 542
        Height = 97
        Size.Values = (
          256.645833333333300000
          0.000000000000000000
          0.000000000000000000
          1434.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 544
        Top = 35
        Width = 56
        Height = 8
        Size.Values = (
          21.166666666666670000
          1439.333333333333000000
          92.604166666666670000
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
      object QRLabel5: TQRLabel
        Left = 643
        Top = 3
        Width = 53
        Height = 8
        Size.Values = (
          21.166666666666670000
          1701.270833333333000000
          7.937500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO NOTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRDBText1: TQRDBText
        Left = 644
        Top = 15
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          1703.916666666667000000
          39.687500000000000000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_NUMERONOTA'
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
      object IMAGEM2: TQRImage
        Left = 1
        Top = 18
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          47.625000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRLabel9: TQRLabel
        Left = 127
        Top = 18
        Width = 408
        Height = 23
        Size.Values = (
          60.854166666666680000
          336.020833333333300000
          47.625000000000000000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PREFEITURA DE '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRLabel14: TQRLabel
        Left = 544
        Top = 3
        Width = 40
        Height = 8
        Size.Values = (
          21.166666666666670000
          1439.333333333333000000
          7.937500000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO RPS'
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
      object QRLabel16: TQRLabel
        Left = 544
        Top = 67
        Width = 75
        Height = 8
        Size.Values = (
          21.166666666666670000
          1439.333333333333000000
          177.270833333333300000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO DE VERIFICA'#199#195'O'
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
      object QRLabel1: TQRLabel
        Left = 127
        Top = 57
        Width = 408
        Height = 23
        Size.Values = (
          60.854166666666680000
          336.020833333333300000
          150.812500000000000000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'NOTA FISCAL DE SERVI'#199'OS ELETR'#212'NICA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRDBText39: TQRDBText
        Left = 545
        Top = 15
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          1441.979166666667000000
          39.687500000000000000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_CODIGO'
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
      object QRDBText49: TQRDBText
        Left = 545
        Top = 47
        Width = 191
        Height = 17
        Size.Values = (
          44.979166666666670000
          1441.979166666667000000
          124.354166666666700000
          505.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_DTEMISSAO'
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
      object QRDBText50: TQRDBText
        Left = 545
        Top = 79
        Width = 191
        Height = 17
        Size.Values = (
          44.979166666666670000
          1441.979166666667000000
          209.020833333333300000
          505.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_PROTOCOLO'
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
    end
    object SummaryBand1: TQRBand
      Left = 26
      Top = 524
      Width = 741
      Height = 272
      Frame.DrawTop = True
      AlignToBottom = True
      BeforePrint = SummaryBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        719.666666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape79: TQRShape
        Left = 596
        Top = 142
        Width = 144
        Height = 129
        Size.Values = (
          341.312500000000000000
          1576.916666666667000000
          375.708333333333400000
          381.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = 0
        Top = 142
        Width = 597
        Height = 129
        Size.Values = (
          341.312500000000000000
          0.000000000000000000
          375.708333333333400000
          1579.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 492
        Top = 94
        Width = 248
        Height = 28
        Size.Values = (
          74.083333333333320000
          1301.750000000000000000
          248.708333333333300000
          656.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 246
        Top = 94
        Width = 247
        Height = 28
        Size.Values = (
          74.083333333333320000
          650.875000000000000000
          248.708333333333300000
          653.520833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 0
        Top = 94
        Width = 247
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          248.708333333333300000
          653.520833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 592
        Top = 67
        Width = 148
        Height = 28
        Size.Values = (
          74.083333333333340000
          1566.333333333333000000
          177.270833333333300000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape77: TQRShape
        Left = 444
        Top = 67
        Width = 149
        Height = 28
        Size.Values = (
          74.083333333333320000
          1174.750000000000000000
          177.270833333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 296
        Top = 67
        Width = 149
        Height = 28
        Size.Values = (
          74.083333333333320000
          783.166666666666800000
          177.270833333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 148
        Top = 67
        Width = 149
        Height = 28
        Size.Values = (
          74.083333333333320000
          391.583333333333300000
          177.270833333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape74: TQRShape
        Left = 0
        Top = 67
        Width = 149
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          177.270833333333300000
          394.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 615
        Top = 20
        Width = 125
        Height = 28
        Size.Values = (
          74.083333333333340000
          1627.187500000000000000
          52.916666666666670000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape80: TQRShape
        Left = 492
        Top = 20
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333340000
          1301.750000000000000000
          52.916666666666670000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 369
        Top = 20
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333320000
          976.312500000000000000
          52.916666666666670000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 246
        Top = 20
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333320000
          650.875000000000000000
          52.916666666666670000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 123
        Top = 20
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333320000
          325.437500000000000000
          52.916666666666670000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 0
        Top = 20
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          52.916666666666670000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel114: TQRLabel
        Left = 3
        Top = 54
        Width = 32
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          142.875000000000000000
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
      object QRLabel115: TQRLabel
        Left = 3
        Top = 70
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          185.208333333333300000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESC. CONDICIONADO'
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
      object QRLabel116: TQRLabel
        Left = 151
        Top = 70
        Width = 71
        Height = 8
        Size.Values = (
          21.166666666666670000
          399.520833333333300000
          185.208333333333300000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESC. INCONDICIONADO'
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
      object QRLabel117: TQRLabel
        Left = 299
        Top = 70
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          791.104166666666700000
          185.208333333333300000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DEDU'#199#213'ES'
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
      object QRLabel118: TQRLabel
        Left = 447
        Top = 70
        Width = 55
        Height = 8
        Size.Values = (
          21.166666666666670000
          1182.687500000000000000
          185.208333333333300000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO'
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
      object QRDBText63: TQRDBText
        Left = 5
        Top = 79
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          209.020833333333300000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOTALDESCCOND'
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
      object QRDBText64: TQRDBText
        Left = 153
        Top = 79
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          404.812500000000000000
          209.020833333333300000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOTALDESCINCOND'
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
      object QRDBText65: TQRDBText
        Left = 301
        Top = 79
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          796.395833333333400000
          209.020833333333300000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOTALDEDUCOES'
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
      object QRDBText66: TQRDBText
        Left = 449
        Top = 79
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          1187.979166666667000000
          209.020833333333300000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_BASEISS'
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
      object QRLabel119: TQRLabel
        Left = 3
        Top = 129
        Width = 108
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          341.312500000000000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OUTRAS INFORMA'#199#212'ES'
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
      object QRLabel120: TQRLabel
        Left = 3
        Top = 145
        Width = 103
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          383.645833333333300000
          272.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INFORMA'#199#213'ES COMPLEMENTARES'
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
      object QRLabel121: TQRLabel
        Left = 599
        Top = 145
        Width = 83
        Height = 8
        Size.Values = (
          21.166666666666670000
          1584.854166666667000000
          383.645833333333300000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VERIFICAR AUTENTICIDADE'
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
      object QRLabel124: TQRLabel
        Left = 3
        Top = 261
        Width = 228
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          690.562500000000000000
          603.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOCUMENTO SEM VALOR FISCAL - EMITIDO EM AMBIENTE DE HOMOLOGA'#199#195'O'
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
      object QRLabel133: TQRLabel
        Left = 5
        Top = 157
        Width = 585
        Height = 105
        Size.Values = (
          277.812500000000000000
          13.229166666666670000
          415.395833333333400000
          1547.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Informa'#231#245'es adicionais fisco'
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
      object QRLabel73: TQRLabel
        Left = 3
        Top = 23
        Width = 11
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          60.854166666666670000
          29.104166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PIS'
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
      object QRLabel74: TQRLabel
        Left = 126
        Top = 23
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          333.375000000000000000
          60.854166666666670000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COFINS'
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
      object QRLabel75: TQRLabel
        Left = 249
        Top = 23
        Width = 15
        Height = 8
        Size.Values = (
          21.166666666666670000
          658.812500000000000000
          60.854166666666670000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSS'
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
        Left = 372
        Top = 23
        Width = 7
        Height = 8
        Size.Values = (
          21.166666666666670000
          984.250000000000000000
          60.854166666666670000
          18.520833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IR'
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
      object QRLabel77: TQRLabel
        Left = 618
        Top = 23
        Width = 63
        Height = 8
        Size.Values = (
          21.166666666666670000
          1635.125000000000000000
          60.854166666666670000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OUTRAS RETEN'#199#213'ES'
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
      object QRDBText32: TQRDBText
        Left = 251
        Top = 32
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          664.104166666666600000
          84.666666666666660000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORINSS'
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
        Left = 374
        Top = 32
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          989.541666666666600000
          84.666666666666660000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORIR'
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
      object QRLabel84: TQRLabel
        Left = 3
        Top = 7
        Width = 106
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          18.520833333333330000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RETEN'#199#213'ES FEDERAIS'
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
      object QRLabel131: TQRLabel
        Left = 495
        Top = 23
        Width = 15
        Height = 8
        Size.Values = (
          21.166666666666670000
          1309.687500000000000000
          60.854166666666670000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CSLL'
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
        Left = 497
        Top = 32
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          1314.979166666667000000
          84.666666666666660000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORCSLL'
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
      object QRLabel83: TQRLabel
        Left = 595
        Top = 70
        Width = 42
        Height = 8
        Size.Values = (
          21.166666666666670000
          1574.270833333333000000
          185.208333333333300000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO ISS'
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
      object QRDBText40: TQRDBText
        Left = 597
        Top = 79
        Width = 139
        Height = 15
        Size.Values = (
          39.687500000000000000
          1579.562500000000000000
          209.020833333333300000
          367.770833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOTALISS'
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
      object QRLabel91: TQRLabel
        Left = 3
        Top = 97
        Width = 42
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          256.645833333333300000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL BRUTO'
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
      object QRLabel92: TQRLabel
        Left = 249
        Top = 97
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          658.812500000000000000
          256.645833333333300000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR LIQUIDO'
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
      object QRLabel93: TQRLabel
        Left = 495
        Top = 97
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1309.687500000000000000
          256.645833333333300000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CREDITO TRIBUTARIO'
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
      object QRDBText42: TQRDBText
        Left = 5
        Top = 106
        Width = 238
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          280.458333333333300000
          629.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOTALSERVICOS'
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
      object QRDBText43: TQRDBText
        Left = 251
        Top = 106
        Width = 238
        Height = 15
        Size.Values = (
          39.687500000000000000
          664.104166666666600000
          280.458333333333300000
          629.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORLIQUIDO'
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
      object QRDBText48: TQRDBText
        Left = 497
        Top = 106
        Width = 239
        Height = 15
        Size.Values = (
          39.687500000000000000
          1314.979166666667000000
          280.458333333333400000
          632.354166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORCREDITO'
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
        Left = 5
        Top = 32
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          84.666666666666660000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORIR'
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
        Left = 128
        Top = 32
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          338.666666666666700000
          84.666666666666660000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALORCOFINS'
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
        Left = 620
        Top = 32
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          1640.416666666667000000
          84.666666666666660000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_VALOROUTRASRET'
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
      object QRQRBarcode1: TQRQRBarcode
        Left = 618
        Top = 159
        Width = 105
        Height = 105
        Size.Values = (
          277.812500000000000000
          1635.125000000000000000
          420.687500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        BarcodeText = 'unset'
        BarcodeEncoding = qrAuto
        QuietZone = 0
      end
    end
    object QRLabel132: TQRLabel
      Left = 103
      Top = 625
      Width = 593
      Height = 134
      Size.Values = (
        354.541666666666700000
        272.520833333333300000
        1653.645833333333000000
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
    object DetailBand1: TQRBand
      Left = 26
      Top = 126
      Width = 741
      Height = 398
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1053.041666666667000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape37: TQRShape
        Left = 625
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          1653.645833333333000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 570
        Top = 342
        Width = 56
        Height = 28
        Size.Values = (
          74.083333333333320000
          1508.125000000000000000
          904.875000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 456
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          1206.500000000000000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 342
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          904.875000000000000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 228
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          603.250000000000000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 114
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          301.625000000000000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 0
        Top = 342
        Width = 115
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          904.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 608
        Top = 315
        Width = 132
        Height = 28
        Size.Values = (
          74.083333333333340000
          1608.666666666667000000
          833.437500000000000000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 450
        Top = 109
        Width = 290
        Height = 28
        Size.Values = (
          74.083333333333340000
          1190.625000000000000000
          288.395833333333400000
          767.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 304
        Top = 315
        Width = 305
        Height = 28
        Size.Values = (
          74.083333333333340000
          804.333333333333200000
          833.437500000000000000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 0
        Top = 315
        Width = 305
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          833.437500000000000000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 0
        Top = 288
        Width = 740
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          762.000000000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 450
        Top = 239
        Width = 290
        Height = 28
        Size.Values = (
          74.083333333333320000
          1190.625000000000000000
          632.354166666666800000
          767.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 370
        Top = 239
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333320000
          978.958333333333200000
          632.354166666666800000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 338
        Top = 239
        Width = 33
        Height = 28
        Size.Values = (
          74.083333333333320000
          894.291666666666800000
          632.354166666666800000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 239
        Width = 339
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          632.354166666666800000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 450
        Top = 212
        Width = 290
        Height = 28
        Size.Values = (
          74.083333333333320000
          1190.625000000000000000
          560.916666666666700000
          767.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 370
        Top = 212
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333320000
          978.958333333333200000
          560.916666666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 212
        Width = 371
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          560.916666666666700000
          981.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 555
        Top = 185
        Width = 185
        Height = 28
        Size.Values = (
          74.083333333333320000
          1468.437500000000000000
          489.479166666666700000
          489.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape67: TQRShape
        Left = 370
        Top = 185
        Width = 186
        Height = 28
        Size.Values = (
          74.083333333333320000
          978.958333333333200000
          489.479166666666700000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 185
        Top = 185
        Width = 186
        Height = 28
        Size.Values = (
          74.083333333333320000
          489.479166666666700000
          489.479166666666700000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 185
        Width = 186
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          489.479166666666700000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 450
        Top = 158
        Width = 290
        Height = 28
        Size.Values = (
          74.083333333333320000
          1190.625000000000000000
          418.041666666666700000
          767.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 158
        Width = 451
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          418.041666666666700000
          1193.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 370
        Top = 109
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333320000
          978.958333333333200000
          288.395833333333300000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 338
        Top = 109
        Width = 33
        Height = 28
        Size.Values = (
          74.083333333333320000
          894.291666666666800000
          288.395833333333300000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 109
        Width = 339
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          288.395833333333300000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 450
        Top = 82
        Width = 290
        Height = 28
        Size.Values = (
          74.083333333333320000
          1190.625000000000000000
          216.958333333333300000
          767.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 370
        Top = 82
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333320000
          978.958333333333200000
          216.958333333333300000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 82
        Width = 371
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          216.958333333333300000
          981.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 590
        Top = 51
        Width = 150
        Height = 32
        Size.Values = (
          84.666666666666680000
          1561.041666666667000000
          134.937500000000000000
          396.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 434
        Top = 51
        Width = 157
        Height = 32
        Size.Values = (
          84.666666666666680000
          1148.291666666667000000
          134.937500000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 278
        Top = 51
        Width = 157
        Height = 32
        Size.Values = (
          84.666666666666680000
          735.541666666666800000
          134.937500000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 122
        Top = 51
        Width = 157
        Height = 32
        Size.Values = (
          84.666666666666680000
          322.791666666666700000
          134.937500000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 541
        Top = 20
        Width = 199
        Height = 32
        Size.Values = (
          84.666666666666680000
          1431.395833333333000000
          52.916666666666670000
          526.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 122
        Top = 20
        Width = 420
        Height = 32
        Size.Values = (
          84.666666666666680000
          322.791666666666700000
          52.916666666666670000
          1111.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 0
        Top = 20
        Width = 123
        Height = 63
        Size.Values = (
          166.687500000000000000
          0.000000000000000000
          52.916666666666670000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText16: TQRDBText
        Left = 5
        Top = 371
        Width = 731
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          981.604166666666800000
          1934.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_DESCRICAO'
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
        Left = 3
        Top = 7
        Width = 123
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          18.520833333333330000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRESTADOR DE SERVI'#199'OS'
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
      object QRLabel22: TQRLabel
        Left = 125
        Top = 23
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          330.729166666666700000
          60.854166666666670000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME / RAZ'#195'O SOCIAL'
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
      object QRLabel23: TQRLabel
        Left = 125
        Top = 54
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          330.729166666666700000
          142.875000000000000000
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
      object QRLabel25: TQRLabel
        Left = 3
        Top = 85
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          224.895833333333300000
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
      object QRLabel29: TQRLabel
        Left = 3
        Top = 112
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          296.333333333333300000
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
      object QRLabel31: TQRLabel
        Left = 341
        Top = 112
        Width = 9
        Height = 8
        Size.Values = (
          21.166666666666670000
          902.229166666666700000
          296.333333333333300000
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
      object QRLabel33: TQRLabel
        Left = 373
        Top = 112
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          986.895833333333300000
          296.333333333333300000
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
      object QRDBText18: TQRDBText
        Left = 127
        Top = 35
        Width = 411
        Height = 15
        Size.Values = (
          39.687500000000000000
          336.020833333333300000
          92.604166666666680000
          1087.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOME'
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
        Left = 127
        Top = 66
        Width = 148
        Height = 15
        Size.Values = (
          39.687500000000000000
          336.020833333333300000
          174.625000000000000000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText21: TQRDBText
        Left = 5
        Top = 94
        Width = 362
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          248.708333333333300000
          957.791666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_ENDERECO'
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
        Left = 5
        Top = 121
        Width = 330
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          320.145833333333300000
          873.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_CIDADE'
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
        Left = 343
        Top = 121
        Width = 24
        Height = 15
        Size.Values = (
          39.687500000000000000
          907.520833333333200000
          320.145833333333300000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_ESTADO'
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
        Left = 375
        Top = 121
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          320.145833333333300000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_CEP'
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
      object QRLabel72: TQRLabel
        Left = 3
        Top = 275
        Width = 148
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          727.604166666666700000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DISCRIMINA'#199#195'O DOS SERVI'#199'OS'
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
      object QRLabel78: TQRLabel
        Left = 231
        Top = 345
        Width = 41
        Height = 8
        Size.Values = (
          21.166666666666670000
          611.187500000000000000
          912.812500000000000000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel79: TQRLabel
        Left = 345
        Top = 345
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          912.812500000000000000
          912.812500000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DEDU'#199#213'ES'
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
      object QRLabel80: TQRLabel
        Left = 459
        Top = 345
        Width = 55
        Height = 8
        Size.Values = (
          21.166666666666670000
          1214.437500000000000000
          912.812500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO'
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
      object QRLabel81: TQRLabel
        Left = 573
        Top = 345
        Width = 44
        Height = 8
        Size.Values = (
          21.166666666666670000
          1516.062500000000000000
          912.812500000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'AL'#205'QUOTA (%)'
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
      object QRLabel82: TQRLabel
        Left = 628
        Top = 345
        Width = 42
        Height = 8
        Size.Values = (
          21.166666666666670000
          1661.583333333333000000
          912.812500000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO ISS'
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
      object QRDBText35: TQRDBText
        Left = 233
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          616.479166666666800000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_VALORTOTAL'
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
        Left = 347
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          918.104166666666800000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_VALORDEDUCOES'
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
        Left = 461
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          1219.729166666667000000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_BASEISS'
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
        Left = 575
        Top = 354
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          1521.354166666667000000
          936.625000000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_ALIQUOTA'
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
      object QRLabel85: TQRLabel
        Left = 3
        Top = 291
        Width = 61
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          769.937500000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO DO SERVI'#199'O'
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
      object QRLabel87: TQRLabel
        Left = 3
        Top = 318
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          841.375000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LOCAL DA PRESTA'#199#195'O'
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
      object QRLabel88: TQRLabel
        Left = 307
        Top = 318
        Width = 69
        Height = 8
        Size.Values = (
          21.166666666666670000
          812.270833333333300000
          841.375000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SITUA'#199#195'O TRIBUT'#193'RIA'
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
      object QRLabel89: TQRLabel
        Left = 3
        Top = 345
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          912.812500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QUANTIDADE'
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
      object QRLabel90: TQRLabel
        Left = 117
        Top = 345
        Width = 50
        Height = 8
        Size.Values = (
          21.166666666666670000
          309.562500000000000000
          912.812500000000000000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRDBText41: TQRDBText
        Left = 5
        Top = 300
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          793.750000000000000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_SERVICO'
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
      object QRDBText44: TQRDBText
        Left = 5
        Top = 327
        Width = 296
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          865.187500000000000000
          783.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_CIDADE'
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
      object QRDBText45: TQRDBText
        Left = 309
        Top = 327
        Width = 296
        Height = 15
        Size.Values = (
          39.687500000000000000
          817.562500000000000000
          865.187500000000000000
          783.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_CSTISS'
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
      object QRDBText46: TQRDBText
        Left = 5
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_QUANTIDADE'
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
      object QRDBText47: TQRDBText
        Left = 119
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          314.854166666666700000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_VALORUNIT'
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
      object QRDBText68: TQRDBText
        Left = 62
        Top = 300
        Width = 674
        Height = 15
        Size.Values = (
          39.687500000000000000
          164.041666666666700000
          793.750000000000000000
          1783.291666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'ISS_DESCRICAO'
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
        Left = 375
        Top = 94
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          248.708333333333300000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NUMERO'
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
      object QRLabel27: TQRLabel
        Left = 373
        Top = 85
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          986.895833333333300000
          224.895833333333300000
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
      object QRLabel26: TQRLabel
        Left = 453
        Top = 84
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1198.562500000000000000
          222.250000000000000000
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
      object QRDBText23: TQRDBText
        Left = 455
        Top = 94
        Width = 281
        Height = 15
        Size.Values = (
          39.687500000000000000
          1203.854166666667000000
          248.708333333333300000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_BAIRRO'
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
        Left = 593
        Top = 54
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1568.979166666667000000
          142.875000000000000000
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
      object QRDBText28: TQRDBText
        Left = 595
        Top = 66
        Width = 141
        Height = 15
        Size.Values = (
          39.687500000000000000
          1574.270833333333000000
          174.625000000000000000
          373.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText29: TQRDBText
        Left = 283
        Top = 66
        Width = 148
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          174.625000000000000000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_IE'
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
      object QRLabel32: TQRLabel
        Left = 281
        Top = 54
        Width = 66
        Height = 8
        Size.Values = (
          21.166666666666670000
          743.479166666666700000
          142.875000000000000000
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
      object QRDBText20: TQRDBText
        Left = 546
        Top = 35
        Width = 190
        Height = 15
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          92.604166666666680000
          502.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel24: TQRLabel
        Left = 544
        Top = 23
        Width = 19
        Height = 8
        Size.Values = (
          21.166666666666670000
          1439.333333333333000000
          60.854166666666670000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EMAIL'
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
      object QRDBText24: TQRDBText
        Left = 439
        Top = 66
        Width = 148
        Height = 15
        Size.Values = (
          39.687500000000000000
          1161.520833333333000000
          174.625000000000000000
          391.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_IM'
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
      object QRLabel28: TQRLabel
        Left = 437
        Top = 54
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          1156.229166666667000000
          142.875000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSCRI'#199#195'O MUNICIPAL'
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
      object QRLabel2: TQRLabel
        Left = 3
        Top = 161
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          425.979166666666700000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME / RAZ'#195'O SOCIAL'
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
      object QRLabel4: TQRLabel
        Left = 3
        Top = 188
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          497.416666666666700000
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
      object QRLabel6: TQRLabel
        Left = 3
        Top = 215
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          568.854166666666700000
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
      object QRLabel7: TQRLabel
        Left = 3
        Top = 242
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          640.291666666666700000
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
      object QRLabel8: TQRLabel
        Left = 341
        Top = 242
        Width = 9
        Height = 8
        Size.Values = (
          21.166666666666670000
          902.229166666666700000
          640.291666666666700000
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
      object QRLabel10: TQRLabel
        Left = 373
        Top = 242
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          986.895833333333300000
          640.291666666666700000
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
      object QRDBText2: TQRDBText
        Left = 5
        Top = 170
        Width = 442
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          449.791666666666700000
          1169.458333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMNOME'
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
        Left = 5
        Top = 224
        Width = 362
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          592.666666666666800000
          957.791666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMENDERECO'
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
        Left = 5
        Top = 251
        Width = 330
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          664.104166666666800000
          873.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMCIDADE'
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
        Left = 343
        Top = 251
        Width = 24
        Height = 15
        Size.Values = (
          39.687500000000000000
          907.520833333333200000
          664.104166666666800000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMESTADO'
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
        Left = 375
        Top = 251
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          664.104166666666800000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMCEP'
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
        Left = 375
        Top = 224
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          592.666666666666800000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMNUMERO'
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
        Left = 373
        Top = 215
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          986.895833333333300000
          568.854166666666700000
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
      object QRLabel12: TQRLabel
        Left = 453
        Top = 215
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1198.562500000000000000
          568.854166666666700000
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
      object QRDBText10: TQRDBText
        Left = 455
        Top = 224
        Width = 281
        Height = 15
        Size.Values = (
          39.687500000000000000
          1203.854166666667000000
          592.666666666666800000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMBAIRRO'
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
        Left = 558
        Top = 188
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1476.375000000000000000
          497.416666666666700000
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
      object QRDBText11: TQRDBText
        Left = 560
        Top = 197
        Width = 176
        Height = 15
        Size.Values = (
          39.687500000000000000
          1481.666666666667000000
          521.229166666666700000
          465.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMFONE1'
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
        Left = 375
        Top = 197
        Width = 177
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          521.229166666666700000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMIM'
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
      object QRLabel15: TQRLabel
        Left = 373
        Top = 188
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          986.895833333333300000
          497.416666666666700000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSCRI'#199#195'O MUNICIPAL'
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
        Left = 190
        Top = 197
        Width = 177
        Height = 15
        Size.Values = (
          39.687500000000000000
          502.708333333333300000
          521.229166666666700000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMIE'
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
        Left = 188
        Top = 188
        Width = 66
        Height = 8
        Size.Values = (
          21.166666666666670000
          497.416666666666700000
          497.416666666666700000
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
      object QRDBText14: TQRDBText
        Left = 455
        Top = 170
        Width = 281
        Height = 15
        Size.Values = (
          39.687500000000000000
          1203.854166666667000000
          449.791666666666700000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMEMAIL'
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
      object QRLabel18: TQRLabel
        Left = 453
        Top = 161
        Width = 19
        Height = 8
        Size.Values = (
          21.166666666666670000
          1198.562500000000000000
          425.979166666666700000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EMAIL'
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
      object QRLabel35: TQRLabel
        Left = 3
        Top = 145
        Width = 112
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          383.645833333333300000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOMADOR DE SERVI'#199'OS'
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
      object IMAGEM: TQRImage
        Left = 1
        Top = 21
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          55.562500000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRLabel19: TQRLabel
        Left = 453
        Top = 242
        Width = 15
        Height = 8
        Size.Values = (
          21.166666666666670000
          1198.562500000000000000
          640.291666666666700000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S'
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
        Left = 455
        Top = 251
        Width = 281
        Height = 15
        Size.Values = (
          39.687500000000000000
          1203.854166666667000000
          664.104166666666800000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_TOMPAIS'
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
        Left = 630
        Top = 354
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          1666.875000000000000000
          936.625000000000000000
          280.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NSI_VALORISS'
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
        Left = 453
        Top = 112
        Width = 15
        Height = 8
        Size.Values = (
          21.166666666666670000
          1198.562500000000000000
          296.333333333333300000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SITE'
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
      object QRDBText51: TQRDBText
        Left = 455
        Top = 121
        Width = 281
        Height = 15
        Size.Values = (
          39.687500000000000000
          1203.854166666667000000
          320.145833333333400000
          743.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_HOMEPAGE'
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
      object QRLabel34: TQRLabel
        Left = 611
        Top = 318
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          1616.604166666667000000
          841.375000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RETEN'#199#195'O'
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
      object QRDBText52: TQRDBText
        Left = 613
        Top = 327
        Width = 123
        Height = 15
        Size.Values = (
          39.687500000000000000
          1621.895833333333000000
          865.187500000000000000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFS_RETENCAO'
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
      object QRLabel36: TQRLabel
        Left = 5
        Top = 197
        Width = 177
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          521.229166666666700000
          468.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ / CPF'
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
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 898
    Top = 199
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 898
    Top = 247
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 834
    Top = 247
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 834
    Top = 199
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from NFSE'
      'where NFS_CODIGO=:codigo')
    Left = 834
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1NFS_BASEISS: TFMTBCDField
      FieldName = 'NFS_BASEISS'
      Origin = '"NFSE"."NFS_BASEISS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_BAIXADATA: TDateField
      FieldName = 'NFS_BAIXADATA'
      Origin = '"NFSE"."NFS_BAIXADATA"'
    end
    object IBQuery1NFS_BAIXAPOR: TIBStringField
      FieldName = 'NFS_BAIXAPOR'
      Origin = '"NFSE"."NFS_BAIXAPOR"'
    end
    object IBQuery1NFS_CLIENTE: TIntegerField
      FieldName = 'NFS_CLIENTE'
      Origin = '"NFSE"."NFS_CLIENTE"'
      Required = True
    end
    object IBQuery1NFS_CONDICAO: TIntegerField
      FieldName = 'NFS_CONDICAO'
      Origin = '"NFSE"."NFS_CONDICAO"'
      Required = True
    end
    object IBQuery1NFS_CANCELAMENTOCODIGO: TIBStringField
      FieldName = 'NFS_CANCELAMENTOCODIGO'
      Origin = 'NFSE.NFS_CANCELAMENTOCODIGO'
      Size = 15
    end
    object IBQuery1NFS_CANCELAMENTODATA: TDateField
      FieldName = 'NFS_CANCELAMENTODATA'
      Origin = '"NFSE"."NFS_CANCELAMENTODATA"'
    end
    object IBQuery1NFS_CANCELAMENTOHORA: TTimeField
      FieldName = 'NFS_CANCELAMENTOHORA'
      Origin = '"NFSE"."NFS_CANCELAMENTOHORA"'
    end
    object IBQuery1NFS_CANCELAMENTOMOTIVO: TIBStringField
      FieldName = 'NFS_CANCELAMENTOMOTIVO'
      Origin = '"NFSE"."NFS_CANCELAMENTOMOTIVO"'
      Size = 50
    end
    object IBQuery1NFS_CODIGO: TIntegerField
      FieldName = 'NFS_CODIGO'
      Origin = '"NFSE"."NFS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object IBQuery1NFS_CONDICAOMEMO: TWideMemoField
      FieldName = 'NFS_CONDICAOMEMO'
      Origin = '"NFSE"."NFS_CONDICAOMEMO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1NFS_CONSULTADA: TIBStringField
      FieldName = 'NFS_CONSULTADA'
      Origin = '"NFSE"."NFS_CONSULTADA"'
      Size = 1
    end
    object IBQuery1NFS_CSTISS: TIBStringField
      FieldName = 'NFS_CSTISS'
      Origin = '"NFSE"."NFS_CSTISS"'
      Size = 50
    end
    object IBQuery1NFS_DIAPREFERENCIAL: TIntegerField
      FieldName = 'NFS_DIAPREFERENCIAL'
      Origin = '"NFSE"."NFS_DIAPREFERENCIAL"'
    end
    object IBQuery1NFS_DTATUALIZACAO: TDateField
      FieldName = 'NFS_DTATUALIZACAO'
      Origin = '"NFSE"."NFS_DTATUALIZACAO"'
    end
    object IBQuery1NFS_DTCADASTRO: TDateField
      FieldName = 'NFS_DTCADASTRO'
      Origin = '"NFSE"."NFS_DTCADASTRO"'
    end
    object IBQuery1NFS_DTEMISSAO: TDateField
      FieldName = 'NFS_DTEMISSAO'
      Origin = '"NFSE"."NFS_DTEMISSAO"'
    end
    object IBQuery1NFS_FORMAPAGTO: TIBStringField
      FieldName = 'NFS_FORMAPAGTO'
      Origin = '"NFSE"."NFS_FORMAPAGTO"'
      Size = 15
    end
    object IBQuery1NFS_INFOADICIONAIS: TWideMemoField
      FieldName = 'NFS_INFOADICIONAIS'
      Origin = '"NFSE"."NFS_INFOADICIONAIS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1NFS_INTERMEDIARIOCPFCNPJ: TIBStringField
      FieldName = 'NFS_INTERMEDIARIOCPFCNPJ'
      Origin = '"NFSE"."NFS_INTERMEDIARIOCPFCNPJ"'
    end
    object IBQuery1NFS_INTERMEDIARIOIM: TIntegerField
      FieldName = 'NFS_INTERMEDIARIOIM'
      Origin = '"NFSE"."NFS_INTERMEDIARIOIM"'
    end
    object IBQuery1NFS_INTERMEDIARIONOME: TIBStringField
      FieldName = 'NFS_INTERMEDIARIONOME'
      Origin = '"NFSE"."NFS_INTERMEDIARIONOME"'
      Size = 50
    end
    object IBQuery1NFS_LINK: TIBStringField
      FieldName = 'NFS_LINK'
      Origin = '"NFSE"."NFS_LINK"'
      Size = 255
    end
    object IBQuery1NFS_LOTE: TIntegerField
      FieldName = 'NFS_LOTE'
      Origin = '"NFSE"."NFS_LOTE"'
    end
    object IBQuery1NFS_MOVIMENTAFINANCEIRO: TIBStringField
      FieldName = 'NFS_MOVIMENTAFINANCEIRO'
      Origin = '"NFSE"."NFS_MOVIMENTAFINANCEIRO"'
      Size = 1
    end
    object IBQuery1NFS_NUMERONOTA: TIntegerField
      FieldName = 'NFS_NUMERONOTA'
      Origin = '"NFSE"."NFS_NUMERONOTA"'
      DisplayFormat = '0000000'
    end
    object IBQuery1NFS_OBRAART: TIntegerField
      FieldName = 'NFS_OBRAART'
      Origin = '"NFSE"."NFS_OBRAART"'
    end
    object IBQuery1NFS_OBRACODIGO: TIntegerField
      FieldName = 'NFS_OBRACODIGO'
      Origin = '"NFSE"."NFS_OBRACODIGO"'
    end
    object IBQuery1NFS_OBSERVACOES: TWideMemoField
      FieldName = 'NFS_OBSERVACOES'
      Origin = '"NFSE"."NFS_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1NFS_PROTOCOLO: TIBStringField
      FieldName = 'NFS_PROTOCOLO'
      Origin = '"NFSE"."NFS_PROTOCOLO"'
      Size = 40
    end
    object IBQuery1NFS_PROTOCOLODH: TIBStringField
      FieldName = 'NFS_PROTOCOLODH'
      Origin = '"NFSE"."NFS_PROTOCOLODH"'
      Size = 30
    end
    object IBQuery1NFS_RECIBO: TIBStringField
      FieldName = 'NFS_RECIBO'
      Origin = '"NFSE"."NFS_RECIBO"'
      Size = 40
    end
    object IBQuery1NFS_RECIBODH: TIBStringField
      FieldName = 'NFS_RECIBODH'
      Origin = '"NFSE"."NFS_RECIBODH"'
      Size = 30
    end
    object IBQuery1NFS_RETENCAO: TIBStringField
      FieldName = 'NFS_RETENCAO'
      Origin = '"NFSE"."NFS_RETENCAO"'
      Size = 50
    end
    object IBQuery1NFS_RETENCAORESP: TIBStringField
      FieldName = 'NFS_RETENCAORESP'
      Origin = '"NFSE"."NFS_RETENCAORESP"'
      Size = 15
    end
    object IBQuery1NFS_SERIE: TIBStringField
      FieldName = 'NFS_SERIE'
      Origin = '"NFSE"."NFS_SERIE"'
      Size = 40
    end
    object IBQuery1NFS_SIMPLESNACIONAL: TIBStringField
      FieldName = 'NFS_SIMPLESNACIONAL'
      Origin = '"NFSE"."NFS_SIMPLESNACIONAL"'
      Size = 1
    end
    object IBQuery1NFS_STATUS: TIBStringField
      FieldName = 'NFS_STATUS'
      Origin = '"NFSE"."NFS_STATUS"'
      Size = 1
    end
    object IBQuery1NFS_TOMBAIRRO: TIBStringField
      FieldName = 'NFS_TOMBAIRRO'
      Origin = '"NFSE"."NFS_TOMBAIRRO"'
      Size = 50
    end
    object IBQuery1NFS_TOMCEP: TIBStringField
      FieldName = 'NFS_TOMCEP'
      Origin = '"NFSE"."NFS_TOMCEP"'
      Size = 10
    end
    object IBQuery1NFS_TOMCIDADE: TIBStringField
      FieldName = 'NFS_TOMCIDADE'
      Origin = '"NFSE"."NFS_TOMCIDADE"'
      Size = 50
    end
    object IBQuery1NFS_TOMCIDADECODIGO: TIntegerField
      FieldName = 'NFS_TOMCIDADECODIGO'
      Origin = '"NFSE"."NFS_TOMCIDADECODIGO"'
    end
    object IBQuery1NFS_TOMCNPJ: TIBStringField
      FieldName = 'NFS_TOMCNPJ'
      Origin = '"NFSE"."NFS_TOMCNPJ"'
    end
    object IBQuery1NFS_TOMCOMPLEMENTO: TIBStringField
      FieldName = 'NFS_TOMCOMPLEMENTO'
      Origin = '"NFSE"."NFS_TOMCOMPLEMENTO"'
      Size = 30
    end
    object IBQuery1NFS_TOMCONTATO: TIBStringField
      FieldName = 'NFS_TOMCONTATO'
      Origin = '"NFSE"."NFS_TOMCONTATO"'
      Size = 50
    end
    object IBQuery1NFS_TOMCPF: TIBStringField
      FieldName = 'NFS_TOMCPF'
      Origin = '"NFSE"."NFS_TOMCPF"'
    end
    object IBQuery1NFS_TOMEMAIL: TIBStringField
      FieldName = 'NFS_TOMEMAIL'
      Origin = '"NFSE"."NFS_TOMEMAIL"'
      Size = 100
    end
    object IBQuery1NFS_TOMENDERECO: TIBStringField
      FieldName = 'NFS_TOMENDERECO'
      Origin = '"NFSE"."NFS_TOMENDERECO"'
      Size = 100
    end
    object IBQuery1NFS_TOMESTADO: TIBStringField
      FieldName = 'NFS_TOMESTADO'
      Origin = '"NFSE"."NFS_TOMESTADO"'
      Size = 2
    end
    object IBQuery1NFS_TOMESTADOCODIGO: TIntegerField
      FieldName = 'NFS_TOMESTADOCODIGO'
      Origin = '"NFSE"."NFS_TOMESTADOCODIGO"'
    end
    object IBQuery1NFS_TOMFONE1: TIBStringField
      FieldName = 'NFS_TOMFONE1'
      Origin = '"NFSE"."NFS_TOMFONE1"'
    end
    object IBQuery1NFS_TOMFONE2: TIBStringField
      FieldName = 'NFS_TOMFONE2'
      Origin = '"NFSE"."NFS_TOMFONE2"'
    end
    object IBQuery1NFS_TOMIE: TIBStringField
      FieldName = 'NFS_TOMIE'
      Origin = '"NFSE"."NFS_TOMIE"'
    end
    object IBQuery1NFS_TOMIM: TIntegerField
      FieldName = 'NFS_TOMIM'
      Origin = '"NFSE"."NFS_TOMIM"'
    end
    object IBQuery1NFS_TOMNOME: TIBStringField
      FieldName = 'NFS_TOMNOME'
      Origin = '"NFSE"."NFS_TOMNOME"'
      Size = 50
    end
    object IBQuery1NFS_TOMNUMERO: TIBStringField
      FieldName = 'NFS_TOMNUMERO'
      Origin = '"NFSE"."NFS_TOMNUMERO"'
      Size = 15
    end
    object IBQuery1NFS_TOMSITE: TIBStringField
      FieldName = 'NFS_TOMSITE'
      Origin = '"NFSE"."NFS_TOMSITE"'
      Size = 100
    end
    object IBQuery1NFS_TOMPAIS: TIBStringField
      FieldName = 'NFS_TOMPAIS'
      Origin = 'NFSE.NFS_TOMPAIS'
      Size = 50
    end
    object IBQuery1NFS_TOMPAISCODIGO: TIntegerField
      FieldName = 'NFS_TOMPAISCODIGO'
      Origin = 'NFSE.NFS_TOMPAISCODIGO'
    end
    object IBQuery1NFS_TOMTIPOPESSOA: TIBStringField
      FieldName = 'NFS_TOMTIPOPESSOA'
      Origin = '"NFSE"."NFS_TOMTIPOPESSOA"'
      Size = 1
    end
    object IBQuery1NFS_TOTALDEDUCOES: TFMTBCDField
      FieldName = 'NFS_TOTALDEDUCOES'
      Origin = '"NFSE"."NFS_TOTALDEDUCOES"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALDESCCOND: TFMTBCDField
      FieldName = 'NFS_TOTALDESCCOND'
      Origin = '"NFSE"."NFS_TOTALDESCCOND"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALDESCINCOND: TFMTBCDField
      FieldName = 'NFS_TOTALDESCINCOND'
      Origin = '"NFSE"."NFS_TOTALDESCINCOND"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALISS: TFMTBCDField
      FieldName = 'NFS_TOTALISS'
      Origin = '"NFSE"."NFS_TOTALISS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALSERVICOS: TFMTBCDField
      FieldName = 'NFS_TOTALSERVICOS'
      Origin = '"NFSE"."NFS_TOTALSERVICOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'NFS_TOTALTRIBUTOS'
      Origin = '"NFSE"."NFS_TOTALTRIBUTOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'NFS_TOTALTRIBUTOSEST'
      Origin = '"NFSE"."NFS_TOTALTRIBUTOSEST"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'NFS_TOTALTRIBUTOSFED'
      Origin = '"NFSE"."NFS_TOTALTRIBUTOSFED"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALTRIBUTOSIMP: TFMTBCDField
      FieldName = 'NFS_TOTALTRIBUTOSIMP'
      Origin = '"NFSE"."NFS_TOTALTRIBUTOSIMP"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'NFS_TOTALTRIBUTOSMUN'
      Origin = '"NFSE"."NFS_TOTALTRIBUTOSMUN"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_USUARIO: TIBStringField
      FieldName = 'NFS_USUARIO'
      Origin = '"NFSE"."NFS_USUARIO"'
    end
    object IBQuery1NFS_VALORCOFINS: TFMTBCDField
      FieldName = 'NFS_VALORCOFINS'
      Origin = '"NFSE"."NFS_VALORCOFINS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORCREDITO: TFMTBCDField
      FieldName = 'NFS_VALORCREDITO'
      Origin = '"NFSE"."NFS_VALORCREDITO"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORCSLL: TFMTBCDField
      FieldName = 'NFS_VALORCSLL'
      Origin = '"NFSE"."NFS_VALORCSLL"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORINSS: TFMTBCDField
      FieldName = 'NFS_VALORINSS'
      Origin = '"NFSE"."NFS_VALORINSS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORIR: TFMTBCDField
      FieldName = 'NFS_VALORIR'
      Origin = '"NFSE"."NFS_VALORIR"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORISSRETIDO: TFMTBCDField
      FieldName = 'NFS_VALORISSRETIDO'
      Origin = '"NFSE"."NFS_VALORISSRETIDO"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORLIQUIDO: TFMTBCDField
      FieldName = 'NFS_VALORLIQUIDO'
      Origin = '"NFSE"."NFS_VALORLIQUIDO"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALOROUTRASRET: TFMTBCDField
      FieldName = 'NFS_VALOROUTRASRET'
      Origin = '"NFSE"."NFS_VALOROUTRASRET"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VALORPIS: TFMTBCDField
      FieldName = 'NFS_VALORPIS'
      Origin = '"NFSE"."NFS_VALORPIS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFS_VENDA: TIntegerField
      FieldName = 'NFS_VENDA'
      Origin = '"NFSE"."NFS_VENDA"'
    end
    object IBQuery1NFS_VENDEDOR: TIntegerField
      FieldName = 'NFS_VENDEDOR'
      Origin = '"NFSE"."NFS_VENDEDOR"'
      Required = True
    end
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select * from NFSEITENS'
      'left join ISS on NSI_SERVICO=ISS_CODIGO'
      'where NSI_NFSE=:NFS_CODIGO')
    Left = 898
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFS_CODIGO'
        ParamType = ptUnknown
      end>
    object IBQuery2NSI_ALIQUOTA: TFMTBCDField
      FieldName = 'NSI_ALIQUOTA'
      Origin = '"NFSEITENS"."NSI_ALIQUOTA"'
      Precision = 18
    end
    object IBQuery2NSI_BASEISS: TFMTBCDField
      FieldName = 'NSI_BASEISS'
      Origin = '"NFSEITENS"."NSI_BASEISS"'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_CIDADE: TIBStringField
      FieldName = 'NSI_CIDADE'
      Origin = '"NFSEITENS"."NSI_CIDADE"'
      Size = 50
    end
    object IBQuery2NSI_CIDADECODIGO: TIntegerField
      FieldName = 'NSI_CIDADECODIGO'
      Origin = '"NFSEITENS"."NSI_CIDADECODIGO"'
    end
    object IBQuery2NSI_CODIGO: TIntegerField
      FieldName = 'NSI_CODIGO'
      Origin = '"NFSEITENS"."NSI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2NSI_DESCRICAO: TWideMemoField
      FieldName = 'NSI_DESCRICAO'
      Origin = '"NFSEITENS"."NSI_DESCRICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery2NSI_NFSE: TIntegerField
      FieldName = 'NSI_NFSE'
      Origin = '"NFSEITENS"."NSI_NFSE"'
      Required = True
    end
    object IBQuery2NSI_PRESTADONOPAIS: TIBStringField
      FieldName = 'NSI_PRESTADONOPAIS'
      Origin = '"NFSEITENS"."NSI_PRESTADONOPAIS"'
      Size = 1
    end
    object IBQuery2NSI_QUANTIDADE: TFMTBCDField
      FieldName = 'NSI_QUANTIDADE'
      Origin = '"NFSEITENS"."NSI_QUANTIDADE"'
      Precision = 18
    end
    object IBQuery2NSI_SERVICO: TIBStringField
      FieldName = 'NSI_SERVICO'
      Origin = '"NFSEITENS"."NSI_SERVICO"'
      Size = 10
    end
    object IBQuery2NSI_VALORDEDUCOES: TFMTBCDField
      FieldName = 'NSI_VALORDEDUCOES'
      Origin = 'NFSEITENS.NSI_VALORDEDUCOES'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORISS: TFMTBCDField
      FieldName = 'NSI_VALORISS'
      Origin = 'NFSEITENS.NSI_VALORISS'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORTOTAL: TFMTBCDField
      FieldName = 'NSI_VALORTOTAL'
      Origin = 'NFSEITENS.NSI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORTRIBUTOSEST: TFMTBCDField
      FieldName = 'NSI_VALORTRIBUTOSEST'
      Origin = '"NFSEITENS"."NSI_VALORTRIBUTOSEST"'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORTRIBUTOSFED: TFMTBCDField
      FieldName = 'NSI_VALORTRIBUTOSFED'
      Origin = '"NFSEITENS"."NSI_VALORTRIBUTOSFED"'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORTRIBUTOSIMP: TFMTBCDField
      FieldName = 'NSI_VALORTRIBUTOSIMP'
      Origin = '"NFSEITENS"."NSI_VALORTRIBUTOSIMP"'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORTRIBUTOSMUN: TFMTBCDField
      FieldName = 'NSI_VALORTRIBUTOSMUN'
      Origin = '"NFSEITENS"."NSI_VALORTRIBUTOSMUN"'
      currency = True
      Precision = 18
    end
    object IBQuery2NSI_VALORUNIT: TFMTBCDField
      FieldName = 'NSI_VALORUNIT'
      Origin = '"NFSEITENS"."NSI_VALORUNIT"'
      currency = True
      Precision = 18
    end
    object IBQuery2ISS_DESCRICAO: TIBStringField
      FieldName = 'ISS_DESCRICAO'
      Origin = '"ISS"."ISS_DESCRICAO"'
      Size = 1000
    end
  end
end
