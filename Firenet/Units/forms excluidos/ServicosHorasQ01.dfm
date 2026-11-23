object FormServicosHorasQ01: TFormServicosHorasQ01
  Left = 191
  Top = 114
  Caption = 'Relat'#243'rio de horas da ordem de servi'#231'o'
  ClientHeight = 637
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
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 26
      Top = 241
      Width = 741
      Height = 38
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        100.541666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRDBText1: TQRDBText
        Left = 655
        Top = 1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBServicos
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
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 595
        Top = 1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1574.270833333333000000
          2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Subtotal:'
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
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 292
      Width = 741
      Height = 15
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText11: TQRDBText
        Left = 671
        Top = 3
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1775.354166666667000000
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
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
      Width = 741
      Height = 137
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        362.479166666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.REE_CLIENTE'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText16: TQRDBText
        Left = 115
        Top = 5
        Width = 374
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          13.229166666666670000
          989.541666666666800000)
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
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 22
        Top = 5
        Width = 43
        Height = 15
        Size.Values = (
          39.687500000000000000
          58.208333333333340000
          13.229166666666670000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Cliente:'
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
      object QRDBText3: TQRDBText
        Left = 69
        Top = 5
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          13.229166666666670000
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
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 9
        Top = 21
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          55.562500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
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
      object QRLabel20: TQRLabel
        Left = 28
        Top = 37
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          74.083333333333340000
          97.895833333333340000
          97.895833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Bairro:'
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
      object QRLabel21: TQRLabel
        Left = 223
        Top = 37
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          590.020833333333400000
          97.895833333333340000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Cidade/UF:'
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
      object QRLabel22: TQRLabel
        Left = 3
        Top = 69
        Width = 62
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          182.562500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CNPJ / CPF:'
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
      object QRDBText4: TQRDBText
        Left = 69
        Top = 21
        Width = 316
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          55.562500000000000000
          836.083333333333400000)
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
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 69
        Top = 37
        Width = 148
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          97.895833333333340000
          391.583333333333400000)
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
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 386
        Top = 21
        Width = 15
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          55.562500000000000000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#186':'
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
      object QRDBText14: TQRDBText
        Left = 405
        Top = 21
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          1071.562500000000000000
          55.562500000000000000
          108.479166666666700000)
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
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 285
        Top = 37
        Width = 164
        Height = 15
        Size.Values = (
          39.687500000000000000
          754.062500000000000000
          97.895833333333340000
          433.916666666666700000)
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
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 480
        Top = 37
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1270.000000000000000000
          97.895833333333340000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CEP:'
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
      object QRDBText19: TQRDBText
        Left = 509
        Top = 37
        Width = 76
        Height = 15
        Size.Values = (
          39.687500000000000000
          1346.729166666667000000
          97.895833333333340000
          201.083333333333300000)
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
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 453
        Top = 37
        Width = 23
        Height = 15
        Size.Values = (
          39.687500000000000000
          1198.562500000000000000
          97.895833333333340000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ESTADO'
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
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 34
        Top = 53
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          89.958333333333340000
          140.229166666666700000
          82.020833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Fone:'
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
      object QRDBText21: TQRDBText
        Left = 69
        Top = 53
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          140.229166666666700000
          222.250000000000000000)
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
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 234
        Top = 53
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          619.125000000000000000
          140.229166666666700000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Contato:'
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
      object QRDBText23: TQRDBText
        Left = 285
        Top = 53
        Width = 252
        Height = 15
        Size.Values = (
          39.687500000000000000
          754.062500000000000000
          140.229166666666700000
          666.750000000000000000)
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
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 588
        Top = 37
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          1555.750000000000000000
          97.895833333333340000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data Emiss'#227'o:'
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
      object QRDBText24: TQRDBText
        Left = 669
        Top = 37
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1770.062500000000000000
          97.895833333333340000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
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
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 606
        Top = 53
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          1603.375000000000000000
          140.229166666666700000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data Sa'#237'da:'
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
      object QRDBText25: TQRDBText
        Left = 669
        Top = 53
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1770.062500000000000000
          140.229166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
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
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 548
        Top = 21
        Width = 117
        Height = 15
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          55.562500000000000000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ordem de Servi'#231'o N'#186':'
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
      object QRDBText26: TQRDBText
        Left = 669
        Top = 21
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1770.062500000000000000
          55.562500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'SER_CODIGO'
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
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 18
        Top = 93
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          47.625000000000000000
          246.062500000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'T'#233'cnico:'
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
      object QRDBText27: TQRDBText
        Left = 69
        Top = 93
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          246.062500000000000000
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
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Left = 115
        Top = 93
        Width = 326
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          246.062500000000000000
          862.541666666666900000)
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
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 228
        Top = 69
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          603.250000000000000000
          182.562500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Insc. Est.:'
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
      object QRDBText22: TQRDBText
        Left = 285
        Top = 69
        Width = 124
        Height = 15
        Size.Values = (
          39.687500000000000000
          754.062500000000000000
          182.562500000000000000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_IE'
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
        FontSize = 8
      end
      object QRDBText37: TQRDBText
        Left = 69
        Top = 69
        Width = 148
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          182.562500000000000000
          391.583333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_IE'
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
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 135
        Top = 121
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          357.187500000000000000
          320.145833333333400000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Data'
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
        Left = 192
        Top = 121
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          508.000000000000000000
          320.145833333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#243'd.'
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
        Left = 236
        Top = 121
        Width = 297
        Height = 15
        Size.Values = (
          39.687500000000000000
          624.416666666666800000
          320.145833333333400000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome'
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
        Left = 535
        Top = 121
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1415.520833333333000000
          320.145833333333400000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'In'#237'cio'
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
        Left = 595
        Top = 121
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1574.270833333333000000
          320.145833333333400000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Fim'
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
        Left = 655
        Top = 121
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          320.145833333333400000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total'
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
        Left = 3
        Top = 121
        Width = 111
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          320.145833333333400000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'HORAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
      Color = clWhite
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
        Left = 537
        Top = 48
        Width = 199
        Height = 14
        Size.Values = (
          37.041666666666670000
          1420.812500000000000000
          127.000000000000000000
          526.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Relat'#243'rio de horas ordem de servi'#231'o'
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
        FontSize = 8
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 26
      Top = 228
      Width = 741
      Height = 13
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333340000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery3
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText5: TQRDBText
        Left = 135
        Top = -1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          357.187500000000000000
          -2.645833333333333000
          145.520833333333300000)
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
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 236
        Top = -1
        Width = 297
        Height = 15
        Size.Values = (
          39.687500000000000000
          624.416666666666800000
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
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 192
        Top = -1
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          508.000000000000000000
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
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 535
        Top = -1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1415.520833333333000000
          -2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
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
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 595
        Top = -1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1574.270833333333000000
          -2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
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
        FontSize = 8
      end
      object QRDBText35: TQRDBText
        Left = 655
        Top = -1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          -2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
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
        FontSize = 8
      end
    end
    object ChildBand1: TQRChildBand
      Left = 26
      Top = 279
      Width = 741
      Height = 13
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333340000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand2
      PrintOrder = cboAfterParent
      object QRDBText38: TQRDBText
        Left = 3
        Top = -1
        Width = 734
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          -2.645833333333333000
          1942.041666666667000000)
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
        FontSize = 8
      end
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
    Top = 472
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from SERVICOS'
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
    object IBQuery1SER_CODIGO: TIntegerField
      FieldName = 'SER_CODIGO'
      Origin = '"SERVICOS"."SER_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1SER_CLIENTE: TIntegerField
      FieldName = 'SER_CLIENTE'
      Origin = '"SERVICOS"."SER_CLIENTE"'
      Required = True
    end
    object IBQuery1SER_TECNICO: TIntegerField
      FieldName = 'SER_TECNICO'
      Origin = '"SERVICOS"."SER_TECNICO"'
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
    object IBQuery1SER_LOCALIZACAO: TIBStringField
      FieldName = 'SER_LOCALIZACAO'
      Origin = '"SERVICOS"."SER_LOCALIZACAO"'
    end
    object IBQuery1SER_VALOR: TIBBCDField
      FieldName = 'SER_VALOR'
      Origin = '"SERVICOS"."SER_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_VALORTOTAL: TIBBCDField
      FieldName = 'SER_VALORTOTAL'
      Origin = '"SERVICOS"."SER_VALORTOTAL"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_DEFEITO: TMemoField
      FieldName = 'SER_DEFEITO'
      Origin = '"SERVICOS"."SER_DEFEITO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1SER_CONSERTO: TMemoField
      FieldName = 'SER_CONSERTO'
      Origin = '"SERVICOS"."SER_CONSERTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1SER_STATUS: TIBStringField
      FieldName = 'SER_STATUS'
      Origin = '"SERVICOS"."SER_STATUS"'
      Size = 1
    end
    object IBQuery1SER_DTNOTAFISCAL: TDateField
      FieldName = 'SER_DTNOTAFISCAL'
      Origin = '"SERVICOS"."SER_DTNOTAFISCAL"'
    end
    object IBQuery1SER_NUMERONF: TIntegerField
      FieldName = 'SER_NUMERONF'
      Origin = '"SERVICOS"."SER_NUMERONF"'
    end
    object IBQuery1SER_REVENDEDOR: TIBStringField
      FieldName = 'SER_REVENDEDOR'
      Origin = '"SERVICOS"."SER_REVENDEDOR"'
      Size = 50
    end
    object IBQuery1SER_DTATUALIZACAO: TDateField
      FieldName = 'SER_DTATUALIZACAO'
      Origin = '"SERVICOS"."SER_DTATUALIZACAO"'
    end
    object IBQuery1SER_USUARIO: TIBStringField
      FieldName = 'SER_USUARIO'
      Origin = '"SERVICOS"."SER_USUARIO"'
    end
    object IBQuery1SER_OBSERVACOES: TMemoField
      FieldName = 'SER_OBSERVACOES'
      Origin = '"SERVICOS"."SER_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1SER_ABERTOPOR: TIBStringField
      FieldName = 'SER_ABERTOPOR'
      Origin = '"SERVICOS"."SER_ABERTOPOR"'
    end
    object IBQuery1SER_BAIXADOPOR: TIBStringField
      FieldName = 'SER_BAIXADOPOR'
      Origin = '"SERVICOS"."SER_BAIXADOPOR"'
    end
    object IBQuery1SER_FINALIZADOPOR: TIBStringField
      FieldName = 'SER_FINALIZADOPOR'
      Origin = '"SERVICOS"."SER_FINALIZADOPOR"'
    end
    object IBQuery1SER_SENHAONLINE: TIBStringField
      FieldName = 'SER_SENHAONLINE'
      Origin = '"SERVICOS"."SER_SENHAONLINE"'
    end
    object IBQuery1SER_TABELAPRECO: TIBStringField
      FieldName = 'SER_TABELAPRECO'
      Origin = '"SERVICOS"."SER_TABELAPRECO"'
      Size = 1
    end
    object IBQuery1SER_BASEICMS: TIBBCDField
      FieldName = 'SER_BASEICMS'
      Origin = '"SERVICOS"."SER_BASEICMS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_BASEICMSST: TIBBCDField
      FieldName = 'SER_BASEICMSST'
      Origin = '"SERVICOS"."SER_BASEICMSST"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_ICMSPOR: TIBStringField
      FieldName = 'SER_ICMSPOR'
      Origin = '"SERVICOS"."SER_ICMSPOR"'
      Size = 1
    end
    object IBQuery1SER_ICMSALIQUOTAUF: TIBBCDField
      FieldName = 'SER_ICMSALIQUOTAUF'
      Origin = '"SERVICOS"."SER_ICMSALIQUOTAUF"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_PESOLIQ: TIBBCDField
      FieldName = 'SER_PESOLIQ'
      Origin = '"SERVICOS"."SER_PESOLIQ"'
      Precision = 18
      Size = 3
    end
    object IBQuery1SER_TOTALPRODUTOS: TIBBCDField
      FieldName = 'SER_TOTALPRODUTOS'
      Origin = '"SERVICOS"."SER_TOTALPRODUTOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALSERVICOS: TIBBCDField
      FieldName = 'SER_TOTALSERVICOS'
      Origin = '"SERVICOS"."SER_TOTALSERVICOS"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALITENS: TIBBCDField
      FieldName = 'SER_TOTALITENS'
      Origin = '"SERVICOS"."SER_TOTALITENS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALICMS: TIBBCDField
      FieldName = 'SER_TOTALICMS'
      Origin = '"SERVICOS"."SER_TOTALICMS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALICMSST: TIBBCDField
      FieldName = 'SER_TOTALICMSST'
      Origin = '"SERVICOS"."SER_TOTALICMSST"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALIPI: TIBBCDField
      FieldName = 'SER_TOTALIPI'
      Origin = '"SERVICOS"."SER_TOTALIPI"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALISS: TIBBCDField
      FieldName = 'SER_TOTALISS'
      Origin = '"SERVICOS"."SER_TOTALISS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALPIS: TIBBCDField
      FieldName = 'SER_TOTALPIS'
      Origin = '"SERVICOS"."SER_TOTALPIS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALCOFINS: TIBBCDField
      FieldName = 'SER_TOTALCOFINS'
      Origin = '"SERVICOS"."SER_TOTALCOFINS"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_TOTALHORAS: TIBStringField
      FieldName = 'SER_TOTALHORAS'
      Origin = '"SERVICOS"."SER_TOTALHORAS"'
      Size = 25
    end
    object IBQuery1SER_TOTALHORASDEC: TIBBCDField
      FieldName = 'SER_TOTALHORASDEC'
      Origin = '"SERVICOS"."SER_TOTALHORASDEC"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_DESCPORC: TIBBCDField
      FieldName = 'SER_DESCPORC'
      Origin = '"SERVICOS"."SER_DESCPORC"'
      Precision = 18
      Size = 4
    end
    object IBQuery1SER_DESCVALOR: TIBBCDField
      FieldName = 'SER_DESCVALOR'
      Origin = '"SERVICOS"."SER_DESCVALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1VEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = '"VENDEDORES"."VEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1VEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
    object IBQuery1VEN_ENDERECO: TIBStringField
      FieldName = 'VEN_ENDERECO'
      Origin = '"VENDEDORES"."VEN_ENDERECO"'
      Size = 100
    end
    object IBQuery1VEN_CEP: TIBStringField
      FieldName = 'VEN_CEP'
      Origin = '"VENDEDORES"."VEN_CEP"'
      Size = 10
    end
    object IBQuery1VEN_BAIRRO: TIBStringField
      FieldName = 'VEN_BAIRRO'
      Origin = '"VENDEDORES"."VEN_BAIRRO"'
      Size = 50
    end
    object IBQuery1VEN_CIDADE: TIBStringField
      FieldName = 'VEN_CIDADE'
      Origin = '"VENDEDORES"."VEN_CIDADE"'
      Size = 50
    end
    object IBQuery1VEN_ESTADO: TIBStringField
      FieldName = 'VEN_ESTADO'
      Origin = '"VENDEDORES"."VEN_ESTADO"'
      Size = 2
    end
    object IBQuery1VEN_FONE1: TIBStringField
      FieldName = 'VEN_FONE1'
      Origin = '"VENDEDORES"."VEN_FONE1"'
    end
    object IBQuery1VEN_FONE2: TIBStringField
      FieldName = 'VEN_FONE2'
      Origin = '"VENDEDORES"."VEN_FONE2"'
    end
    object IBQuery1VEN_FONE3: TIBStringField
      FieldName = 'VEN_FONE3'
      Origin = '"VENDEDORES"."VEN_FONE3"'
    end
    object IBQuery1VEN_CNPJ: TIBStringField
      FieldName = 'VEN_CNPJ'
      Origin = '"VENDEDORES"."VEN_CNPJ"'
    end
    object IBQuery1VEN_IE: TIBStringField
      FieldName = 'VEN_IE'
      Origin = '"VENDEDORES"."VEN_IE"'
    end
    object IBQuery1VEN_CPF: TIBStringField
      FieldName = 'VEN_CPF'
      Origin = '"VENDEDORES"."VEN_CPF"'
    end
    object IBQuery1VEN_RG: TIBStringField
      FieldName = 'VEN_RG'
      Origin = '"VENDEDORES"."VEN_RG"'
    end
    object IBQuery1VEN_DTNASC: TDateField
      FieldName = 'VEN_DTNASC'
      Origin = '"VENDEDORES"."VEN_DTNASC"'
    end
    object IBQuery1VEN_TIPOPESSOA: TIBStringField
      FieldName = 'VEN_TIPOPESSOA'
      Origin = '"VENDEDORES"."VEN_TIPOPESSOA"'
      Size = 1
    end
    object IBQuery1VEN_ESTADOCIVIL: TIBStringField
      FieldName = 'VEN_ESTADOCIVIL'
      Origin = '"VENDEDORES"."VEN_ESTADOCIVIL"'
      Size = 10
    end
    object IBQuery1VEN_DTCADASTRO: TDateField
      FieldName = 'VEN_DTCADASTRO'
      Origin = '"VENDEDORES"."VEN_DTCADASTRO"'
    end
    object IBQuery1VEN_STATUS: TIBStringField
      FieldName = 'VEN_STATUS'
      Origin = '"VENDEDORES"."VEN_STATUS"'
      Size = 1
    end
    object IBQuery1VEN_OBSERVACOES: TMemoField
      FieldName = 'VEN_OBSERVACOES'
      Origin = '"VENDEDORES"."VEN_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1VEN_CONTATO: TIBStringField
      FieldName = 'VEN_CONTATO'
      Origin = '"VENDEDORES"."VEN_CONTATO"'
      Size = 50
    end
    object IBQuery1VEN_SITE: TIBStringField
      FieldName = 'VEN_SITE'
      Origin = '"VENDEDORES"."VEN_SITE"'
      Size = 100
    end
    object IBQuery1VEN_EMAIL: TIBStringField
      FieldName = 'VEN_EMAIL'
      Origin = '"VENDEDORES"."VEN_EMAIL"'
      Size = 100
    end
    object IBQuery1VEN_COMPLEMENTO: TIBStringField
      FieldName = 'VEN_COMPLEMENTO'
      Origin = '"VENDEDORES"."VEN_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1VEN_DTATUALIZACAO: TDateField
      FieldName = 'VEN_DTATUALIZACAO'
      Origin = '"VENDEDORES"."VEN_DTATUALIZACAO"'
    end
    object IBQuery1VEN_USUARIO: TIBStringField
      FieldName = 'VEN_USUARIO'
      Origin = '"VENDEDORES"."VEN_USUARIO"'
    end
    object IBQuery1VEN_COMISSAO: TIBBCDField
      FieldName = 'VEN_COMISSAO'
      Origin = '"VENDEDORES"."VEN_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object IBQuery1VEN_NUMERO: TIBStringField
      FieldName = 'VEN_NUMERO'
      Origin = '"VENDEDORES"."VEN_NUMERO"'
      Size = 15
    end
    object IBQuery1VEN_CIDADECODIGO: TIntegerField
      FieldName = 'VEN_CIDADECODIGO'
      Origin = '"VENDEDORES"."VEN_CIDADECODIGO"'
    end
    object IBQuery1CLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"CLIENTES"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1CLI_ATIVIDADE: TIntegerField
      FieldName = 'CLI_ATIVIDADE'
      Origin = '"CLIENTES"."CLI_ATIVIDADE"'
    end
    object IBQuery1CLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
      Origin = '"CLIENTES"."CLI_VENDEDOR"'
    end
    object IBQuery1CLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1CLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"CLIENTES"."CLI_FANTASIA"'
      Size = 50
    end
    object IBQuery1CLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
    end
    object IBQuery1CLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object IBQuery1CLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object IBQuery1CLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 50
    end
    object IBQuery1CLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
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
    object IBQuery1CLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"CLIENTES"."CLI_CNPJ"'
    end
    object IBQuery1CLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"CLIENTES"."CLI_IE"'
    end
    object IBQuery1CLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"CLIENTES"."CLI_CPF"'
    end
    object IBQuery1CLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"CLIENTES"."CLI_RG"'
    end
    object IBQuery1CLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = '"CLIENTES"."CLI_DTNASC"'
    end
    object IBQuery1CLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      Size = 1
    end
    object IBQuery1CLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"CLIENTES"."CLI_ESTADOCIVIL"'
      Size = 10
    end
    object IBQuery1CLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
      Origin = '"CLIENTES"."CLI_DTCADASTRO"'
    end
    object IBQuery1CLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Origin = '"CLIENTES"."CLI_STATUS"'
      Size = 1
    end
    object IBQuery1CLI_OBSERVACOES: TMemoField
      FieldName = 'CLI_OBSERVACOES'
      Origin = '"CLIENTES"."CLI_OBSERVACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1CLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = '"CLIENTES"."CLI_CONTATO"'
      Size = 50
    end
    object IBQuery1CLI_SITE: TIBStringField
      FieldName = 'CLI_SITE'
      Origin = '"CLIENTES"."CLI_SITE"'
      Size = 100
    end
    object IBQuery1CLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"CLIENTES"."CLI_EMAIL"'
      Size = 100
    end
    object IBQuery1CLI_EMAIL2: TIBStringField
      FieldName = 'CLI_EMAIL2'
      Origin = '"CLIENTES"."CLI_EMAIL2"'
      Size = 100
    end
    object IBQuery1CLI_DTATUALIZACAO: TDateField
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = '"CLIENTES"."CLI_DTATUALIZACAO"'
    end
    object IBQuery1CLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"CLIENTES"."CLI_COMPLEMENTO"'
      Size = 30
    end
    object IBQuery1CLI_USUARIO: TIBStringField
      FieldName = 'CLI_USUARIO'
      Origin = '"CLIENTES"."CLI_USUARIO"'
    end
    object IBQuery1CLI_ENDERECOCOB: TIBStringField
      FieldName = 'CLI_ENDERECOCOB'
      Origin = '"CLIENTES"."CLI_ENDERECOCOB"'
      Size = 100
    end
    object IBQuery1CLI_CEPCOB: TIBStringField
      FieldName = 'CLI_CEPCOB'
      Origin = '"CLIENTES"."CLI_CEPCOB"'
      Size = 10
    end
    object IBQuery1CLI_BAIRROCOB: TIBStringField
      FieldName = 'CLI_BAIRROCOB'
      Origin = '"CLIENTES"."CLI_BAIRROCOB"'
      Size = 50
    end
    object IBQuery1CLI_CIDADECOB: TIBStringField
      FieldName = 'CLI_CIDADECOB'
      Origin = '"CLIENTES"."CLI_CIDADECOB"'
      Size = 50
    end
    object IBQuery1CLI_ESTADOCOB: TIBStringField
      FieldName = 'CLI_ESTADOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCOB"'
      Size = 2
    end
    object IBQuery1CLI_COMPLEMENTOCOB: TIBStringField
      FieldName = 'CLI_COMPLEMENTOCOB'
      Origin = '"CLIENTES"."CLI_COMPLEMENTOCOB"'
      Size = 30
    end
    object IBQuery1CLI_CNPJCOB: TIBStringField
      FieldName = 'CLI_CNPJCOB'
      Origin = '"CLIENTES"."CLI_CNPJCOB"'
    end
    object IBQuery1CLI_IECOB: TIBStringField
      FieldName = 'CLI_IECOB'
      Origin = '"CLIENTES"."CLI_IECOB"'
    end
    object IBQuery1CLI_TELEVENDA: TIntegerField
      FieldName = 'CLI_TELEVENDA'
      Origin = '"CLIENTES"."CLI_TELEVENDA"'
    end
    object IBQuery1CLI_TABELAPRECO: TIBStringField
      FieldName = 'CLI_TABELAPRECO'
      Origin = '"CLIENTES"."CLI_TABELAPRECO"'
      Size = 1
    end
    object IBQuery1CLI_SETOR: TIntegerField
      FieldName = 'CLI_SETOR'
      Origin = '"CLIENTES"."CLI_SETOR"'
    end
    object IBQuery1CLI_LIMITECREDITO: TIBBCDField
      FieldName = 'CLI_LIMITECREDITO'
      Origin = '"CLIENTES"."CLI_LIMITECREDITO"'
      Precision = 18
      Size = 4
    end
    object IBQuery1CLI_BLOQUEARVENDA: TIBStringField
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = '"CLIENTES"."CLI_BLOQUEARVENDA"'
      Size = 1
    end
    object IBQuery1CLI_DESCONTO: TIBBCDField
      FieldName = 'CLI_DESCONTO'
      Origin = '"CLIENTES"."CLI_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object IBQuery1CLI_REGPROFISSIONAL: TIBStringField
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = '"CLIENTES"."CLI_REGPROFISSIONAL"'
    end
    object IBQuery1CLI_ALVARA: TIBStringField
      FieldName = 'CLI_ALVARA'
      Origin = '"CLIENTES"."CLI_ALVARA"'
    end
    object IBQuery1CLI_ALVARASANITARIO: TIBStringField
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = '"CLIENTES"."CLI_ALVARASANITARIO"'
    end
    object IBQuery1CLI_AFE: TIBStringField
      FieldName = 'CLI_AFE'
      Origin = '"CLIENTES"."CLI_AFE"'
    end
    object IBQuery1CLI_MAE: TIBStringField
      FieldName = 'CLI_MAE'
      Origin = '"CLIENTES"."CLI_MAE"'
      Size = 50
    end
    object IBQuery1CLI_MAEEMAIL: TIBStringField
      FieldName = 'CLI_MAEEMAIL'
      Origin = '"CLIENTES"."CLI_MAEEMAIL"'
      Size = 100
    end
    object IBQuery1CLI_MAEFONE: TIBStringField
      FieldName = 'CLI_MAEFONE'
      Origin = '"CLIENTES"."CLI_MAEFONE"'
    end
    object IBQuery1CLI_PAI: TIBStringField
      FieldName = 'CLI_PAI'
      Origin = '"CLIENTES"."CLI_PAI"'
      Size = 50
    end
    object IBQuery1CLI_PAIEMAIL: TIBStringField
      FieldName = 'CLI_PAIEMAIL'
      Origin = '"CLIENTES"."CLI_PAIEMAIL"'
      Size = 100
    end
    object IBQuery1CLI_PAIFONE: TIBStringField
      FieldName = 'CLI_PAIFONE'
      Origin = '"CLIENTES"."CLI_PAIFONE"'
    end
    object IBQuery1CLI_MAILING: TIntegerField
      FieldName = 'CLI_MAILING'
      Origin = '"CLIENTES"."CLI_MAILING"'
    end
    object IBQuery1CLI_CIDADECODIGO: TIntegerField
      FieldName = 'CLI_CIDADECODIGO'
      Origin = '"CLIENTES"."CLI_CIDADECODIGO"'
    end
    object IBQuery1CLI_CIDADECODIGOCOB: TIntegerField
      FieldName = 'CLI_CIDADECODIGOCOB'
      Origin = '"CLIENTES"."CLI_CIDADECODIGOCOB"'
    end
    object IBQuery1CLI_ESTADOCODIGO: TIntegerField
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGO"'
    end
    object IBQuery1CLI_ESTADOCODIGOCOB: TIntegerField
      FieldName = 'CLI_ESTADOCODIGOCOB'
      Origin = '"CLIENTES"."CLI_ESTADOCODIGOCOB"'
    end
    object IBQuery1CLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
      Size = 15
    end
    object IBQuery1CLI_NUMEROCOB: TIBStringField
      FieldName = 'CLI_NUMEROCOB'
      Origin = '"CLIENTES"."CLI_NUMEROCOB"'
      Size = 15
    end
  end
  object IBTransaction3: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 520
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
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 280
    Top = 472
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 472
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 472
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 472
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 584
    Top = 472
  end
end
