object FormVendasQ20: TFormVendasQ20
  Left = 224
  Top = 67
  Caption = 'Ordem de Entrega'
  ClientHeight = 719
  ClientWidth = 1126
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
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 224
      Width = 741
      Height = 13
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery2
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 64
        Top = -1
        Width = 20
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          -2.645833333333333000
          52.916666666666660000)
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
        Top = -1
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          -2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_PRODUTO'
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
        Left = 417
        Top = -1
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          1103.312500000000000000
          -2.645833333333333000
          169.333333333333300000)
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
        Left = 88
        Top = -1
        Width = 297
        Height = 15
        Size.Values = (
          39.687500000000000000
          232.833333333333400000
          -2.645833333333333000
          785.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_DESCRICAO'
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
        Left = 386
        Top = -1
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          -2.645833333333333000
          79.375000000000000000)
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
        Left = 488
        Top = -1
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1291.166666666667000000
          -2.645833333333333000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'VEI_LOCALIZACAO'
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
      Top = 237
      Width = 741
      Height = 36
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.250000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand2: TQRBand
      Left = 26
      Top = 273
      Width = 741
      Height = 48
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127.000000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel7: TQRLabel
        Left = 8
        Top = 3
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Observa'#231#245'es:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 8
        Top = 24
        Width = 729
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          63.500000000000000000
          1928.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_OBSERVACOES'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 321
      Width = 741
      Height = 15
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
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
      Height = 133
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        351.895833333333300000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.REE_CLIENTE'
      FooterBand = QRBand1
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
        DataField = 'VED_NOME'
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
        Top = 118
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          312.208333333333400000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
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
      object QRLabel17: TQRLabel
        Left = 417
        Top = 118
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          1103.312500000000000000
          312.208333333333400000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Qtde'
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
        Left = 64
        Top = 118
        Width = 20
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          312.208333333333400000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'P/S'
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
        Left = 88
        Top = 118
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          232.833333333333400000
          312.208333333333400000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
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
        Left = 386
        Top = 118
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          312.208333333333400000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Un.'
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
      object QRLabel11: TQRLabel
        Left = 22
        Top = 5
        Width = 43
        Height = 15
        Size.Values = (
          39.687500000000000000
          58.208333333333330000
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
        DataField = 'VED_CLIENTE'
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
          74.083333333333330000
          97.895833333333330000
          97.895833333333330000)
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
          590.020833333333300000
          97.895833333333330000
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
        DataField = 'VED_ENDERECO'
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
        DataField = 'VED_BAIRRO'
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
        DataField = 'VED_NUMERO'
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
        DataField = 'VED_CIDADE'
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
        Left = 480
        Top = 37
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1270.000000000000000000
          97.895833333333330000
          66.145833333333330000)
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
        DataField = 'VED_CEP'
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
        DataField = 'VED_ESTADO'
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
      object QRLabel25: TQRLabel
        Left = 25
        Top = 53
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          66.145833333333330000
          140.229166666666700000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Fone 1:'
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
        DataField = 'VED_FONE1'
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
        Left = 370
        Top = 53
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          978.958333333333300000
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
        Left = 421
        Top = 53
        Width = 180
        Height = 15
        Size.Values = (
          39.687500000000000000
          1113.895833333333000000
          140.229166666666700000
          476.250000000000000000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
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
          97.895833333333330000
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
        DataField = 'VED_DTEMISSAO'
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
        DataField = 'VED_DTSAIDA'
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
      object QRLabel29: TQRLabel
        Left = 621
        Top = 21
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          1643.062500000000000000
          55.562500000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'NF/NF-e:'
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
        DataField = 'VED_NFE'
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
      object QRLabel30: TQRLabel
        Left = 6
        Top = 93
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          15.875000000000000000
          246.062500000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Vendedor:'
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
        DataField = 'VED_VENDEDOR'
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 14
        Top = 116
        Width = 715
        Height = 2
        Size.Values = (
          5.291666666666667000
          37.041666666666670000
          306.916666666666700000
          1891.770833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
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
        DataField = 'VED_IE'
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
        Left = 488
        Top = 118
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1291.166666666667000000
          312.208333333333400000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Localiza'#231#227'o'
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
        Left = 241
        Top = 53
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          637.645833333333300000
          140.229166666666700000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Fone 2:'
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
      object QRDBText7: TQRDBText
        Left = 285
        Top = 53
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          754.062500000000000000
          140.229166666666700000
          222.250000000000000000)
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
      object QRLabel15: TQRLabel
        Left = 599
        Top = 5
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          1584.854166666667000000
          13.229166666666670000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Controle N'#186':'
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
      object QRDBText15: TQRDBText
        Left = 669
        Top = 5
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1770.062500000000000000
          13.229166666666670000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'VED_CODIGO'
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
        DataField = 'VED_CNPJ'
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
        Left = 636
        Top = 48
        Width = 100
        Height = 14
        Size.Values = (
          37.041666666666670000
          1682.750000000000000000
          127.000000000000000000
          264.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ordem de Entrega'
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
          1772.708333333333000000
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
        Left = 680
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          1799.166666666667000000
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
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 408
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 456
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'VEI_DESCRICAO,'
      'VEI_LOCALIZACAO,'
      'VEI_PRODUTO,'
      'VEI_QUANTIDADE,'
      'VEI_TIPO,'
      'VEI_UNIDADE'
      'from VENDASITENS'
      'where VEI_VENDA=:codigo'
      'order by VEI_CODIGO')
    Left = 200
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery2VEI_DESCRICAO: TIBStringField
      FieldName = 'VEI_DESCRICAO'
      Origin = '"VENDASITENS"."VEI_DESCRICAO"'
      Size = 100
    end
    object IBQuery2VEI_LOCALIZACAO: TIBStringField
      FieldName = 'VEI_LOCALIZACAO'
      Origin = '"VENDASITENS"."VEI_LOCALIZACAO"'
    end
    object IBQuery2VEI_PRODUTO: TIntegerField
      FieldName = 'VEI_PRODUTO'
      Origin = '"VENDASITENS"."VEI_PRODUTO"'
      Required = True
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
    object IBQuery2VEI_QUANTIDADE: TFMTBCDField
      FieldName = 'VEI_QUANTIDADE'
      Origin = '"VENDASITENS"."VEI_QUANTIDADE"'
      Precision = 18
    end
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
      'VED_CEP,'
      'VED_CIDADE,'
      'VED_CLIENTE,'
      'VED_CNPJ,'
      'VED_CODIGO,'
      'VED_CONTATO,'
      'VED_CPF,'
      'VED_DTEMISSAO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO,'
      'VED_ESTADO,'
      'VED_FONE1,'
      'VED_IE,'
      'VED_NFE,'
      'VED_NOME,'
      'VED_NOTA,'
      'VED_NUMERO,'
      'VED_OBSERVACOES,'
      'VED_VENDEDOR,'
      'CLI_FONE2,'
      'VEN_NOME'
      'from VENDAS '
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO'
      'where VED_CODIGO=:codigo')
    Left = 200
    Top = 408
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
    object IBQuery1VED_VENDEDOR: TIntegerField
      FieldName = 'VED_VENDEDOR'
      Origin = '"VENDAS"."VED_VENDEDOR"'
      Required = True
    end
    object IBQuery1CLI_FONE2: TIBStringField
      FieldName = 'CLI_FONE2'
      Origin = '"CLIENTES"."CLI_FONE2"'
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
    Top = 408
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 408
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 408
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 408
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 592
    Top = 408
  end
end
