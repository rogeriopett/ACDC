object FormVendasQ29: TFormVendasQ29
  Left = 222
  Top = 67
  Caption = 'Curva ABC Produtos'
  ClientHeight = 637
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
    Width = 1123
    Height = 794
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
    object DetailBand1: TQRBand
      Left = 26
      Top = 105
      Width = 1070
      Height = 12
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 3
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
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
      object QRDBText5: TQRDBText
        Left = 492
        Top = 1
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          1301.750000000000000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'PRO_PRECOVENDA'
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
      object QRDBText6: TQRDBText
        Left = 48
        Top = 1
        Width = 217
        Height = 13
        Size.Values = (
          34.395833333333340000
          127.000000000000000000
          2.645833333333333000
          574.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'PRO_NOME'
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
      object QRDBText8: TQRDBText
        Left = 267
        Top = 1
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333340000
          706.437500000000000000
          2.645833333333333000
          58.208333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'PRO_UNIDADE'
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
      object QRDBText2: TQRDBText
        Left = 642
        Top = 1
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          1698.625000000000000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'TOTALVENDA'
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
      object QRDBText3: TQRDBText
        Left = 712
        Top = 1
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          1883.833333333333000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'TOTALVENDAREAL'
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
      object QRDBText7: TQRDBText
        Left = 829
        Top = 1
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          2193.395833333333000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'PRO_PRECOCUSTO'
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
      object QRDBText10: TQRDBText
        Left = 435
        Top = 1
        Width = 54
        Height = 13
        Size.Values = (
          34.395833333333340000
          1150.937500000000000000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'QTDEVENDIDA'
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
      object QRDBText14: TQRDBText
        Left = 900
        Top = 1
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          2381.250000000000000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'TOTALCUSTO'
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
      object QRDBText15: TQRDBText
        Left = 972
        Top = 1
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          2571.750000000000000000
          2.645833333333333000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CMV'
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
      object QRDBText17: TQRDBText
        Left = 1020
        Top = 1
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          2698.750000000000000000
          2.645833333333333000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'MARGEM'
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
      object QRDBText18: TQRDBText
        Left = 564
        Top = 1
        Width = 77
        Height = 13
        Size.Values = (
          34.395833333333340000
          1492.250000000000000000
          2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'PRECOVENDAMEDIO'
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
      object QRLabel22: TQRLabel
        Left = 783
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333340000
          2071.687500000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRDBText9: TQRDBText
        Left = 291
        Top = 1
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333340000
          769.937500000000000000
          2.645833333333333000
          58.208333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'FAM_CODIGO'
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
      object QRDBText11: TQRDBText
        Left = 317
        Top = 1
        Width = 23
        Height = 13
        Size.Values = (
          34.395833333333340000
          838.729166666666800000
          2.645833333333333000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'GRU_CODIGO'
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
      object QRDBText12: TQRDBText
        Left = 342
        Top = 1
        Width = 91
        Height = 13
        Size.Values = (
          34.395833333333340000
          904.875000000000000000
          2.645833333333333000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'GRU_DESCRICAO'
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
      object QRLabel12: TQRLabel
        Left = 952
        Top = 48
        Width = 114
        Height = 14
        Size.Values = (
          37.041666666666670000
          2518.833333333333000000
          127.000000000000000000
          301.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Curva ABC Produtos'
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
      object QRSysData3: TQRSysData
        Left = 1000
        Top = 34
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          2645.833333333333000000
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
        Left = 1010
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          2672.291666666667000000
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
    object QRBand2: TQRBand
      Left = 26
      Top = 146
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
      object QRDBText1: TQRDBText
        Left = 1002
        Top = 3
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          2651.125000000000000000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel8: TQRLabel
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
    object SummaryBand1: TQRBand
      Left = 26
      Top = 117
      Width = 1070
      Height = 29
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AfterPrint = SummaryBand1AfterPrint
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.729166666666670000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel10: TQRLabel
        Left = 3
        Top = 7
        Width = 118
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          18.520833333333340000
          312.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total de Produtos:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 123
        Top = 7
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          325.437500000000000000
          18.520833333333340000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 783
        Top = 9
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333340000
          2071.687500000000000000
          23.812500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel15: TQRLabel
        Left = 900
        Top = 9
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          2381.250000000000000000
          23.812500000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel16: TQRLabel
        Left = 972
        Top = 9
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          2571.750000000000000000
          23.812500000000000000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel24: TQRLabel
        Left = 1020
        Top = 9
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333340000
          2698.750000000000000000
          23.812500000000000000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel25: TQRLabel
        Left = 712
        Top = 9
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          1883.833333333333000000
          23.812500000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel26: TQRLabel
        Left = 642
        Top = 9
        Width = 69
        Height = 13
        Size.Values = (
          34.395833333333340000
          1698.625000000000000000
          23.812500000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel27: TQRLabel
        Left = 435
        Top = 9
        Width = 54
        Height = 13
        Size.Values = (
          34.395833333333340000
          1150.937500000000000000
          23.812500000000000000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 91
      Width = 1070
      Height = 14
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 3
        Top = 0
        Width = 22
        Height = 12
        Size.Values = (
          31.750000000000000000
          7.937500000000000000
          0.000000000000000000
          58.208333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'd.'
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
      object QRLabel3: TQRLabel
        Left = 492
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          1301.750000000000000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Pre'#231'o Venda'
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
      object QRLabel4: TQRLabel
        Left = 48
        Top = 0
        Width = 46
        Height = 12
        Size.Values = (
          31.750000000000000000
          127.000000000000000000
          0.000000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o'
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
      object QRLabel6: TQRLabel
        Left = 267
        Top = 0
        Width = 17
        Height = 12
        Size.Values = (
          31.750000000000000000
          706.437500000000000000
          0.000000000000000000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Un.'
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
      object QRLabel1: TQRLabel
        Left = 900
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          2381.250000000000000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Custo Total'
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
      object QRLabel7: TQRLabel
        Left = 829
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          2193.395833333333000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Custo'
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
      object QRLabel9: TQRLabel
        Left = 783
        Top = 0
        Width = 43
        Height = 12
        Size.Values = (
          31.750000000000000000
          2071.687500000000000000
          0.000000000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel11: TQRLabel
        Left = 972
        Top = 0
        Width = 46
        Height = 12
        Size.Values = (
          31.750000000000000000
          2571.750000000000000000
          0.000000000000000000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '%CMV'
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
      object QRLabel13: TQRLabel
        Left = 435
        Top = 0
        Width = 54
        Height = 12
        Size.Values = (
          31.750000000000000000
          1150.937500000000000000
          0.000000000000000000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Qtde'
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
      object QRLabel18: TQRLabel
        Left = 642
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          1698.625000000000000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Tot. Venda'
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
      object QRLabel19: TQRLabel
        Left = 712
        Top = 0
        Width = 69
        Height = 12
        Size.Values = (
          31.750000000000000000
          1883.833333333333000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'T. Venda Real'
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
      object QRLabel20: TQRLabel
        Left = 1020
        Top = 0
        Width = 46
        Height = 12
        Size.Values = (
          31.750000000000000000
          2698.750000000000000000
          0.000000000000000000
          121.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Margem'
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
      object QRLabel21: TQRLabel
        Left = 564
        Top = 0
        Width = 77
        Height = 12
        Size.Values = (
          31.750000000000000000
          1492.250000000000000000
          0.000000000000000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Pr. Venda M'#233'dio'
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
      object QRLabel5: TQRLabel
        Left = 291
        Top = 0
        Width = 23
        Height = 12
        Size.Values = (
          31.750000000000000000
          769.937500000000000000
          0.000000000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fam.'
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
      object QRLabel14: TQRLabel
        Left = 317
        Top = 0
        Width = 30
        Height = 12
        Size.Values = (
          31.750000000000000000
          838.729166666666700000
          0.000000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Grupo'
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
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 544
    Top = 312
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 472
    Top = 312
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 400
    Top = 312
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 328
    Top = 312
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 256
    Top = 312
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select FAM_CODIGO, FAM_DESCRICAO, GRU_CODIGO, GRU_DESCRICAO, VEI' +
        '_PRODUTO, PRO_NOME, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOVENDA,'
      'sum(VEI_QUANTIDADE) as QTDEVENDIDA,'
      
        'cast(PRO_PRECOVENDA * sum(cast(VEI_QUANTIDADE as numeric(18,4)))' +
        ' as numeric(18,2)) as TOTALVENDA,'
      'sum(cast(VEI_VALORTOTAL as numeric(18,2))) as TOTALVENDAREAL,'
      
        'cast(sum(cast(VEI_VALORTOTAL as numeric(18,2))) / sum(VEI_QUANTI' +
        'DADE) as numeric(18,2)) as PRECOVENDAMEDIO,'
      
        'cast(PRO_PRECOCUSTO * sum(cast(VEI_QUANTIDADE as numeric(18,4)))' +
        ' as numeric(18,2)) as TOTALCUSTO,'
      
        'cast((cast(PRO_PRECOCUSTO * sum(cast(VEI_QUANTIDADE as numeric(1' +
        '8,4))) as numeric(18,2)) / sum(VEI_VALORTOTAL)) * 100 as numeric' +
        '(18,4)) as CMV,'
      
        'cast((sum(cast(VEI_VALORTOTAL as numeric(18,2)))*100) / (PRO_PRE' +
        'COCUSTO * sum(cast(VEI_QUANTIDADE as numeric(18,4)))) - 100 as n' +
        'umeric(18,4)) as MARGEM'
      'from VENDASITENS'
      'left join VENDAS on VEI_VENDA=VED_CODIGO'
      'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      
        'where VED_STATUS='#39'F'#39' and VEI_VALORTOTAL<>0 and PRO_PRECOCUSTO<>0' +
        ' and VED_DTEMISSAO between :datainicial and :datafinal'
      
        'group by FAM_DESCRICAO, FAM_CODIGO, GRU_DESCRICAO, GRU_CODIGO, V' +
        'EI_PRODUTO, PRO_NOME, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOVEND' +
        'A'
      'order by TOTALVENDAREAL desc, PRO_NOME')
    Left = 184
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        ParamType = ptUnknown
      end>
    object IBQuery1FAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = '"FAMILIAS"."FAM_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1FAM_DESCRICAO: TIBStringField
      FieldName = 'FAM_DESCRICAO'
      Origin = '"FAMILIAS"."FAM_DESCRICAO"'
      Size = 50
    end
    object IBQuery1GRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Origin = '"GRUPOS"."GRU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1GRU_DESCRICAO: TIBStringField
      FieldName = 'GRU_DESCRICAO'
      Origin = '"GRUPOS"."GRU_DESCRICAO"'
      Size = 50
    end
    object IBQuery1VEI_PRODUTO: TIntegerField
      FieldName = 'VEI_PRODUTO'
      Origin = '"VENDASITENS"."VEI_PRODUTO"'
      Required = True
    end
    object IBQuery1PRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 100
    end
    object IBQuery1PRO_UNIDADE: TIBStringField
      FieldName = 'PRO_UNIDADE'
      Origin = '"PRODUTOS"."PRO_UNIDADE"'
      Size = 3
    end
    object IBQuery1PRO_PRECOCUSTO: TFMTBCDField
      FieldName = 'PRO_PRECOCUSTO'
      Origin = '"PRODUTOS"."PRO_PRECOCUSTO"'
      currency = True
      Precision = 18
    end
    object IBQuery1PRO_PRECOVENDA: TFMTBCDField
      FieldName = 'PRO_PRECOVENDA'
      Origin = '"PRODUTOS"."PRO_PRECOVENDA"'
      currency = True
      Precision = 18
    end
    object IBQuery1QTDEVENDIDA: TFMTBCDField
      FieldName = 'QTDEVENDIDA'
      ProviderFlags = []
      Precision = 18
    end
    object IBQuery1TOTALVENDA: TIBBCDField
      FieldName = 'TOTALVENDA'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery1TOTALVENDAREAL: TIBBCDField
      FieldName = 'TOTALVENDAREAL'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery1PRECOVENDAMEDIO: TIBBCDField
      FieldName = 'PRECOVENDAMEDIO'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery1TOTALCUSTO: TIBBCDField
      FieldName = 'TOTALCUSTO'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery1CMV: TIBBCDField
      FieldName = 'CMV'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1MARGEM: TIBBCDField
      FieldName = 'MARGEM'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 618
    Top = 311
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'sum(VEI_VALORTOTAL) as TOTALVENDAREAL'
      'from VENDASITENS'
      'left join VENDAS on VEI_VENDA=VED_CODIGO'
      
        'where VEI_VALORTOTAL<>0 and VED_DTEMISSAO between :datainicial a' +
        'nd :datafinal')
    Left = 184
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datainicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        ParamType = ptUnknown
      end>
    object IBQuery2TOTALVENDAREAL: TFMTBCDField
      FieldName = 'TOTALVENDAREAL'
      ProviderFlags = []
      Precision = 18
    end
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 256
    Top = 376
  end
end
