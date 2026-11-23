object FormRecibosQ04: TFormRecibosQ04
  Left = 0
  Top = 0
  Caption = 'Recibo modelo 02 2 vias'
  ClientHeight = 850
  ClientWidth = 924
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
    DataSet = DM2.TBRecibos
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
    ReportTitle = 'Recibo Avulso'
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
      Top = 26
      Width = 741
      Height = 773
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2045.229166666667000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape14: TQRShape
        Left = 1
        Top = 1
        Width = 740
        Size.Values = (
          171.979166666666700000
          2.645833333333333000
          2.645833333333333000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 1
        Top = 465
        Width = 740
        Height = 292
        Size.Values = (
          772.583333333333400000
          2.645833333333333000
          1230.312500000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 1
        Top = 401
        Width = 740
        Size.Values = (
          171.979166666666700000
          2.645833333333333000
          1060.979166666667000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 1
        Top = 65
        Width = 740
        Height = 292
        Size.Values = (
          772.583333333333400000
          2.645833333333333000
          171.979166666666700000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 304
        Top = 72
        Width = 135
        Height = 37
        Size.Values = (
          97.895833333333340000
          804.333333333333400000
          190.500000000000000000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 7
        Top = 248
        Width = 726
        Height = 102
        Size.Values = (
          269.875000000000000000
          18.520833333333330000
          656.166666666666800000
          1920.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 7
        Top = 115
        Width = 726
        Height = 134
        Size.Values = (
          354.541666666666700000
          18.520833333333330000
          304.270833333333400000
          1920.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 191
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          505.354166666666700000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'a import'#226'ncia de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 16
        Top = 122
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          322.791666666666700000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Recebi(emos) de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 16
        Top = 209
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          552.979166666666800000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'proveniente de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 484
        Top = 78
        Width = 52
        Height = 25
        Size.Values = (
          66.145833333333330000
          1280.583333333333000000
          206.375000000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape1: TQRShape
        Left = 539
        Top = 72
        Width = 194
        Height = 37
        Size.Values = (
          97.895833333333340000
          1426.104166666667000000
          190.500000000000000000
          513.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 16
        Top = 226
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          597.958333333333400000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 445
        Top = 335
        Width = 274
        Height = 11
        Size.Values = (
          29.104166666666670000
          1177.395833333333000000
          886.354166666666900000
          724.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 370
        Top = 326
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          978.958333333333300000
          862.541666666666700000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Assinatura:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 23
        Top = 309
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          817.562500000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 23
        Top = 326
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          862.541666666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fones:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 16
        Top = 139
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          367.770833333333400000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 16
        Top = 156
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          412.750000000000100000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 483
        Top = 139
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          367.770833333333400000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 483
        Top = 156
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          412.750000000000100000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 16
        Top = 173
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          457.729166666666600000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 135
        Top = 123
        Width = 560
        Height = 17
        Size.Values = (
          44.979166666666670000
          357.187500000000000000
          325.437500000000000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SNOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 134
        Top = 156
        Width = 339
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          412.750000000000100000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 134
        Top = 173
        Width = 339
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          457.729166666666600000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCNPJCPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 538
        Top = 139
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          367.770833333333400000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SBAIRRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 538
        Top = 156
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          412.750000000000100000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 134
        Top = 209
        Width = 587
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          552.979166666666800000
          1553.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_PROVENIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 134
        Top = 226
        Width = 152
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          597.958333333333400000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 23
        Top = 254
        Width = 698
        Height = 19
        Size.Values = (
          50.270833333333330000
          60.854166666666660000
          672.041666666666800000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CNOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 110
        Top = 309
        Width = 211
        Height = 17
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          817.562500000000000000
          558.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CCNPJCPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 76
        Top = 326
        Width = 157
        Height = 17
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          862.541666666666900000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CFONE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 546
        Top = 78
        Width = 183
        Height = 25
        Size.Values = (
          66.145833333333340000
          1444.625000000000000000
          206.375000000000000000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText18: TQRDBText
        Left = 134
        Top = 191
        Width = 587
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          505.354166666666700000
          1553.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_VALOREXTENSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 23
        Top = 274
        Width = 698
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666660000
          724.958333333333400000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 23
        Top = 291
        Width = 698
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666660000
          769.937500000000000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 135
        Top = 139
        Width = 338
        Height = 17
        Size.Values = (
          44.979166666666670000
          357.187500000000000000
          367.770833333333400000
          894.291666666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 11
        Top = 75
        Width = 108
        Height = 33
        Size.Values = (
          87.312500000000000000
          29.104166666666670000
          198.437500000000000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'RECIBO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRDBText1: TQRDBText
        Left = 311
        Top = 78
        Width = 122
        Height = 25
        Size.Values = (
          66.145833333333340000
          822.854166666666600000
          206.375000000000000000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
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
        FontSize = 16
      end
      object QRLabel18: TQRLabel
        Left = 277
        Top = 78
        Width = 23
        Height = 25
        Size.Values = (
          66.145833333333330000
          732.895833333333300000
          206.375000000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape7: TQRShape
        Left = 304
        Top = 472
        Width = 135
        Height = 37
        Size.Values = (
          97.895833333333340000
          804.333333333333400000
          1248.833333333333000000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 7
        Top = 648
        Width = 726
        Height = 102
        Size.Values = (
          269.875000000000000000
          18.520833333333330000
          1714.500000000000000000
          1920.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 7
        Top = 515
        Width = 726
        Height = 134
        Size.Values = (
          354.541666666666700000
          18.520833333333330000
          1362.604166666667000000
          1920.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 16
        Top = 591
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1563.687500000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'a import'#226'ncia de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 16
        Top = 522
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1381.125000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Recebi(emos) de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 16
        Top = 609
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1611.312500000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'proveniente de'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 484
        Top = 478
        Width = 52
        Height = 25
        Size.Values = (
          66.145833333333330000
          1280.583333333333000000
          1264.708333333333000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape10: TQRShape
        Left = 539
        Top = 472
        Width = 194
        Height = 37
        Size.Values = (
          97.895833333333340000
          1426.104166666667000000
          1248.833333333333000000
          513.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 16
        Top = 626
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1656.291666666667000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 445
        Top = 735
        Width = 274
        Height = 11
        Size.Values = (
          29.104166666666670000
          1177.395833333333000000
          1944.687500000000000000
          724.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 370
        Top = 726
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          978.958333333333300000
          1920.875000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Assinatura:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 23
        Top = 709
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          1875.895833333333000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 23
        Top = 726
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666670000
          1920.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fones:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 16
        Top = 539
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1426.104166666667000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 16
        Top = 556
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1471.083333333333000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 483
        Top = 539
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          1426.104166666667000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 483
        Top = 556
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          1471.083333333333000000
          132.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 16
        Top = 573
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          1516.062500000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 135
        Top = 523
        Width = 560
        Height = 17
        Size.Values = (
          44.979166666666670000
          357.187500000000000000
          1383.770833333333000000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SNOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 134
        Top = 556
        Width = 339
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          1471.083333333333000000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 134
        Top = 573
        Width = 339
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          1516.062500000000000000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCNPJCPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 538
        Top = 539
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          1426.104166666667000000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SBAIRRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 538
        Top = 556
        Width = 183
        Height = 17
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          1471.083333333333000000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_SCEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 134
        Top = 609
        Width = 587
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          1611.312500000000000000
          1553.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_PROVENIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 134
        Top = 626
        Width = 152
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          1656.291666666667000000
          402.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 23
        Top = 654
        Width = 698
        Height = 19
        Size.Values = (
          50.270833333333330000
          60.854166666666660000
          1730.375000000000000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CNOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRDBText25: TQRDBText
        Left = 110
        Top = 709
        Width = 211
        Height = 17
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          1875.895833333333000000
          558.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CCNPJCPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 76
        Top = 726
        Width = 157
        Height = 17
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          1920.875000000000000000
          415.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CFONE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 546
        Top = 478
        Width = 183
        Height = 25
        Size.Values = (
          66.145833333333340000
          1444.625000000000000000
          1264.708333333333000000
          484.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText28: TQRDBText
        Left = 134
        Top = 591
        Width = 587
        Height = 17
        Size.Values = (
          44.979166666666670000
          354.541666666666700000
          1563.687500000000000000
          1553.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_VALOREXTENSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 23
        Top = 674
        Width = 698
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666660000
          1783.291666666667000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 23
        Top = 691
        Width = 698
        Height = 17
        Size.Values = (
          44.979166666666670000
          60.854166666666660000
          1828.270833333333000000
          1846.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 135
        Top = 539
        Width = 338
        Height = 17
        Size.Values = (
          44.979166666666670000
          357.187500000000000000
          1426.104166666667000000
          894.291666666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 11
        Top = 475
        Width = 108
        Height = 33
        Size.Values = (
          87.312500000000000000
          29.104166666666670000
          1256.770833333333000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'RECIBO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRDBText29: TQRDBText
        Left = 311
        Top = 478
        Width = 122
        Height = 25
        Size.Values = (
          66.145833333333340000
          822.854166666666600000
          1264.708333333333000000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM2.TBRecibos
        DataField = 'RCB_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
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
        FontSize = 16
      end
      object QRLabel38: TQRLabel
        Left = 277
        Top = 478
        Width = 23
        Height = 25
        Size.Values = (
          66.145833333333330000
          732.895833333333300000
          1264.708333333333000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRImage1: TQRImage
        Left = 2
        Top = 402
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          5.291666666666667000
          1063.625000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRDBText30: TQRDBText
        Left = 124
        Top = 403
        Width = 91
        Height = 20
        Size.Values = (
          52.916666666666670000
          328.083333333333300000
          1066.270833333333000000
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
      object QRLabel39: TQRLabel
        Left = 124
        Top = 421
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          1113.895833333333000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel5'
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
      object QRDBText31: TQRDBText
        Left = 124
        Top = 435
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          1150.937500000000000000
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
      object QRDBText32: TQRDBText
        Left = 124
        Top = 449
        Width = 197
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333400000
          1187.979166666667000000
          521.229166666666800000)
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
      object QRDBText33: TQRDBText
        Left = 212
        Top = 435
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          560.916666666666700000
          1150.937500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_FONE2'
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
        Left = 324
        Top = 449
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          857.250000000000000000
          1187.979166666667000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
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
      object IMAGEM: TQRImage
        Left = 2
        Top = 2
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          5.291666666666667000
          5.291666666666667000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object EMPRESA: TQRDBText
        Left = 124
        Top = 3
        Width = 91
        Height = 20
        Size.Values = (
          52.916666666666670000
          328.083333333333300000
          7.937500000000000000
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
      object QRLabel8: TQRLabel
        Left = 124
        Top = 21
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          55.562500000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel5'
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
      object CNPJ: TQRDBText
        Left = 124
        Top = 35
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333300000
          92.604166666666670000
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
      object FONE1: TQRDBText
        Left = 124
        Top = 49
        Width = 197
        Height = 15
        Size.Values = (
          39.687500000000000000
          328.083333333333400000
          129.645833333333300000
          521.229166666666800000)
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
      object QRDBText19: TQRDBText
        Left = 212
        Top = 35
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          560.916666666666700000
          92.604166666666670000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_FONE2'
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
        Left = 324
        Top = 49
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          857.250000000000000000
          129.645833333333300000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRDBText35: TQRDBText
        Left = 671
        Top = 359
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1775.354166666667000000
          949.854166666666700000
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
      object QRLabel40: TQRLabel
        Left = 3
        Top = 359
        Width = 79
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          949.854166666666700000
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
      object QRLabel10: TQRLabel
        Left = 3
        Top = 759
        Width = 79
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          2008.187500000000000000
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
      object QRDBText22: TQRDBText
        Left = 671
        Top = 759
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1775.354166666667000000
          2008.187500000000000000
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
      object QRHRule1: TQRHRule
        Left = 13
        Top = 381
        Width = 713
        Height = 2
        Size.Values = (
          5.291666666666667000
          34.395833333333340000
          1008.062500000000000000
          1886.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        VertAdjust = 0
        Pen.Style = psDashDot
      end
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 459
    Top = 271
  end
end
