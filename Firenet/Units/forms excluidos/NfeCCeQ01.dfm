object FormNfeCCeQ01: TFormNfeCCeQ01
  Left = 222
  Top = 67
  Caption = 'Impress'#227'o Carta de Corre'#231#227'o'
  ClientHeight = 843
  ClientWidth = 966
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
      Height = 180
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        476.250000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape3: TQRShape
        Left = 312
        Top = 0
        Width = 428
        Height = 52
        Size.Values = (
          137.583333333333300000
          825.500000000000100000
          0.000000000000000000
          1132.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 313
        Height = 145
        Size.Values = (
          383.645833333333400000
          0.000000000000000000
          0.000000000000000000
          828.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object IMAGEM: TQRImage
        Left = 99
        Top = 2
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          261.937500000000000000
          5.291666666666667000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRDBText6: TQRDBText
        Left = 4
        Top = 66
        Width = 306
        Height = 37
        Size.Values = (
          97.895833333333340000
          10.583333333333330000
          174.625000000000000000
          809.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 4
        Top = 106
        Width = 306
        Height = 34
        Size.Values = (
          89.958333333333340000
          10.583333333333330000
          280.458333333333400000
          809.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Endere'#231'o completo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape7: TQRShape
        Left = 312
        Top = 51
        Width = 428
        Height = 94
        Size.Values = (
          248.708333333333300000
          825.500000000000100000
          134.937500000000000000
          1132.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 501
        Top = 4
        Width = 46
        Height = 23
        Size.Values = (
          60.854166666666670000
          1325.562500000000000000
          10.583333333333330000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CC-e'
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
      object QRLabel13: TQRLabel
        Left = 431
        Top = 30
        Width = 186
        Height = 17
        Size.Values = (
          44.979166666666670000
          1140.354166666667000000
          79.375000000000000000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRShape9: TQRShape
        Left = 0
        Top = 144
        Width = 157
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          381.000000000000000000
          415.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 45
        Top = 147
        Width = 66
        Height = 8
        Size.Values = (
          21.166666666666670000
          119.062500000000000000
          388.937500000000000000
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
      object QRLabel24: TQRLabel
        Left = 318
        Top = 54
        Width = 82
        Height = 8
        Size.Values = (
          21.166666666666670000
          841.375000000000000000
          142.875000000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CHAVE DE ACESSO DA NF-e'
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
      object QRShape10: TQRShape
        Left = 576
        Top = 144
        Width = 105
        Height = 28
        Size.Values = (
          74.083333333333340000
          1524.000000000000000000
          381.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 384
        Top = 144
        Width = 73
        Height = 28
        Size.Values = (
          74.083333333333340000
          1016.000000000000000000
          381.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText15: TQRDBText
        Left = 9
        Top = 156
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          412.750000000000100000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRAsBarcode1: TQRAsBarcode
        Left = 388
        Top = 88
        Width = 288
        Height = 50
        Size.Values = (
          132.291666666666700000
          1026.583333333333000000
          232.833333333333300000
          762.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        BarcodeHeight = 50
        BarcodeWidth = 288
        Modul = 1
        Ratio = 2.000000000000000000
        Text = '42110603964470000163550010000020871242605882'
        Typ = bcCodeEAN128C
      end
      object QRShape12: TQRShape
        Left = 312
        Top = 144
        Width = 73
        Height = 28
        Size.Values = (
          74.083333333333340000
          825.500000000000100000
          381.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel29: TQRLabel
        Left = 336
        Top = 147
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          889.000000000000000000
          388.937500000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MODELO'
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
      object QRShape88: TQRShape
        Left = 156
        Top = 144
        Width = 157
        Height = 28
        Size.Values = (
          74.083333333333340000
          412.750000000000100000
          381.000000000000000000
          415.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 456
        Top = 144
        Width = 121
        Height = 28
        Size.Values = (
          74.083333333333340000
          1206.500000000000000000
          381.000000000000000000
          320.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText19: TQRDBText
        Left = 584
        Top = 156
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          412.750000000000100000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_DTEMISSAO'
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
        Left = 323
        Top = 156
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          854.604166666666800000
          412.750000000000100000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_MODELO'
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
        Left = 225
        Top = 147
        Width = 18
        Height = 8
        Size.Values = (
          21.166666666666670000
          595.312500000000000000
          388.937500000000000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ:'
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
        Left = 165
        Top = 156
        Width = 140
        Height = 15
        Size.Values = (
          39.687500000000000000
          436.562499999999900000
          412.750000000000100000
          370.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
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
      object QRDBText8: TQRDBText
        Left = 392
        Top = 156
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1037.166666666667000000
          412.750000000000100000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_SERIE'
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
      object QRShape1: TQRShape
        Left = 680
        Top = 144
        Width = 60
        Height = 28
        Size.Values = (
          74.083333333333340000
          1799.166666666667000000
          381.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText9: TQRDBText
        Left = 463
        Top = 156
        Width = 108
        Height = 15
        Size.Values = (
          39.687500000000000000
          1225.020833333333000000
          412.750000000000100000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CODIGO'
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
        Left = 411
        Top = 147
        Width = 19
        Height = 8
        Size.Values = (
          21.166666666666670000
          1087.437500000000000000
          388.937500000000000000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE'
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
        Left = 491
        Top = 147
        Width = 51
        Height = 8
        Size.Values = (
          21.166666666666670000
          1299.104166666667000000
          388.937500000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DA NF-e'
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
        Left = 614
        Top = 147
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          1624.541666666667000000
          388.937500000000000000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EMISS'#195'O'
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
        Left = 700
        Top = 147
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1852.083333333333000000
          388.937500000000000000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FOLHA'
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
      object QRSysData2: TQRSysData
        Left = 681
        Top = 156
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          1801.812500000000000000
          412.750000000000100000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
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
      object QRLabel125: TQRLabel
        Left = 710
        Top = 156
        Width = 21
        Height = 15
        Size.Values = (
          39.687500000000000000
          1878.541666666667000000
          412.750000000000100000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'NF-e'
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
      object QRLabel1: TQRLabel
        Left = 320
        Top = 68
        Width = 409
        Height = 15
        Size.Values = (
          39.687500000000000000
          846.666666666666600000
          179.916666666666700000
          1082.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CHAVE DE ACESSO'
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
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 206
      Width = 741
      Height = 226
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        597.958333333333300000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape27: TQRShape
        Left = 0
        Top = 114
        Width = 740
        Height = 66
        Size.Values = (
          174.625000000000000000
          0.000000000000000000
          301.625000000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 3
        Top = 1
        Width = 133
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          2.645833333333333000
          351.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESTINAT'#193'RIO / REMETENTE'
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
      object QRShape14: TQRShape
        Left = 0
        Top = 14
        Width = 553
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          37.041666666666670000
          1463.145833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 552
        Top = 14
        Width = 188
        Height = 28
        Size.Values = (
          74.083333333333340000
          1460.500000000000000000
          37.041666666666670000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 41
        Width = 460
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          108.479166666666700000
          1217.083333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 379
        Top = 68
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333340000
          1002.770833333333000000
          179.916666666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 68
        Width = 348
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          179.916666666666700000
          920.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 347
        Top = 68
        Width = 33
        Height = 28
        Size.Values = (
          74.083333333333340000
          918.104166666666800000
          179.916666666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 3
        Top = 17
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          44.979166666666670000
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
      object QRLabel35: TQRLabel
        Left = 555
        Top = 17
        Width = 34
        Height = 8
        Size.Values = (
          21.166666666666670000
          1468.437500000000000000
          44.979166666666670000
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
      object QRLabel36: TQRLabel
        Left = 3
        Top = 44
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          116.416666666666700000
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
      object QRLabel37: TQRLabel
        Left = 3
        Top = 71
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          187.854166666666700000
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
      object QRLabel38: TQRLabel
        Left = 350
        Top = 71
        Width = 9
        Height = 8
        Size.Values = (
          21.166666666666670000
          926.041666666666700000
          187.854166666666700000
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
      object QRLabel39: TQRLabel
        Left = 382
        Top = 71
        Width = 13
        Height = 8
        Size.Values = (
          21.166666666666670000
          1010.708333333333000000
          187.854166666666700000
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
      object QRDBText25: TQRDBText
        Left = 5
        Top = 26
        Width = 440
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          68.791666666666680000
          1164.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_NOME'
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
        Left = 557
        Top = 26
        Width = 180
        Height = 15
        Size.Values = (
          39.687500000000000000
          1473.729166666667000000
          68.791666666666680000
          476.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CNPJ'
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
        Left = 5
        Top = 53
        Width = 361
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          140.229166666666700000
          955.145833333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_ENDERECO'
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
      object QRDBText28: TQRDBText
        Left = 5
        Top = 80
        Width = 340
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          211.666666666666700000
          899.583333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CIDADE'
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
        Left = 352
        Top = 80
        Width = 20
        Height = 15
        Size.Values = (
          39.687500000000000000
          931.333333333333500000
          211.666666666666700000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_ESTADO'
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
        Left = 384
        Top = 80
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          1016.000000000000000000
          211.666666666666700000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CEP'
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
      object QRLabel40: TQRLabel
        Left = 3
        Top = 101
        Width = 90
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          267.229166666666700000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONDI'#199#195'O DE USO'
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
      object QRLabel41: TQRLabel
        Left = 5
        Top = 117
        Width = 732
        Height = 60
        Size.Values = (
          158.750000000000000000
          13.229166666666670000
          309.562500000000000000
          1936.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Con' +
          'v'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para r' +
          'egulariza'#231#227'o de erro ocorrido na emiss'#227'o de documento fiscal, de' +
          'sde que o erro n'#227'o esteja relacionado com: I - as vari'#225'veis que ' +
          'determinam o valor do imposto tais como: base de c'#225'lculo, al'#237'quo' +
          'ta, diferen'#231'a de pre'#231'o, quantidade, valor da opera'#231#227'o ou da pres' +
          'ta'#231#227'o; II - a corre'#231#227'o de dados cadastrais que implique mudan'#231'a ' +
          'do remetente ou do destinat'#225'rio; III - a data de emiss'#227'o ou de s' +
          'a'#237'da.'
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
      object QRLabel106: TQRLabel
        Left = 3
        Top = 188
        Width = 112
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          497.416666666666700000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EVENTOS / CORRE'#199#213'ES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape55: TQRShape
        Left = 0
        Top = 201
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          531.812500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 64
        Top = 201
        Width = 161
        Height = 25
        Size.Values = (
          66.145833333333340000
          169.333333333333300000
          531.812500000000000000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 224
        Top = 201
        Width = 516
        Height = 25
        Size.Values = (
          66.145833333333340000
          592.666666666666800000
          531.812500000000000000
          1365.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel107: TQRLabel
        Left = 3
        Top = 204
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          539.750000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SEQUENCIA'
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
      object QRLabel109: TQRLabel
        Left = 67
        Top = 204
        Width = 59
        Height = 8
        Size.Values = (
          21.166666666666670000
          177.270833333333300000
          539.750000000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DO REGISTRO'
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
      object QRLabel110: TQRLabel
        Left = 227
        Top = 204
        Width = 73
        Height = 8
        Size.Values = (
          21.166666666666670000
          600.604166666666700000
          539.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DO PROTOCOLO'
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
      object QRShape26: TQRShape
        Left = 459
        Top = 41
        Width = 94
        Height = 28
        Size.Values = (
          74.083333333333340000
          1214.437500000000000000
          108.479166666666700000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText34: TQRDBText
        Left = 464
        Top = 53
        Width = 71
        Height = 15
        Size.Values = (
          39.687500000000000000
          1227.666666666667000000
          140.229166666666700000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_NUMERO'
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
        Left = 462
        Top = 44
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          1222.375000000000000000
          116.416666666666700000
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
      object QRShape18: TQRShape
        Left = 552
        Top = 41
        Width = 188
        Height = 28
        Size.Values = (
          74.083333333333340000
          1460.500000000000000000
          108.479166666666700000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel120: TQRLabel
        Left = 555
        Top = 44
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1468.437500000000000000
          116.416666666666700000
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
      object QRDBText39: TQRDBText
        Left = 557
        Top = 53
        Width = 180
        Height = 15
        Size.Values = (
          39.687500000000000000
          1473.729166666667000000
          140.229166666666700000
          476.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_BAIRRO'
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
      object QRShape22: TQRShape
        Left = 459
        Top = 68
        Width = 145
        Height = 28
        Size.Values = (
          74.083333333333340000
          1214.437500000000000000
          179.916666666666700000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel121: TQRLabel
        Left = 462
        Top = 71
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1222.375000000000000000
          187.854166666666700000
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
      object QRDBText51: TQRDBText
        Left = 464
        Top = 80
        Width = 135
        Height = 15
        Size.Values = (
          39.687500000000000000
          1227.666666666667000000
          211.666666666666700000
          357.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_FONE1'
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
      object QRShape24: TQRShape
        Left = 603
        Top = 68
        Width = 137
        Height = 28
        Size.Values = (
          74.083333333333340000
          1595.437500000000000000
          179.916666666666700000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText52: TQRDBText
        Left = 608
        Top = 80
        Width = 129
        Height = 15
        Size.Values = (
          39.687500000000000000
          1608.666666666667000000
          211.666666666666700000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_IE'
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
      object QRLabel122: TQRLabel
        Left = 606
        Top = 71
        Width = 66
        Height = 8
        Size.Values = (
          21.166666666666670000
          1603.375000000000000000
          187.854166666666700000
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
    end
    object DetailBand1: TQRBand
      Left = 26
      Top = 432
      Width = 741
      Height = 27
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText55: TQRDBText
        Left = 3
        Top = 1
        Width = 59
        Height = 11
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NCC_SEQUENCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText70: TQRDBText
        Left = 69
        Top = 1
        Width = 148
        Height = 11
        Size.Values = (
          29.104166666666670000
          182.562500000000000000
          2.645833333333333000
          391.583333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NCC_PROTOCOLODH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText56: TQRDBText
        Left = 230
        Top = 1
        Width = 227
        Height = 11
        Size.Values = (
          29.104166666666670000
          608.541666666666800000
          2.645833333333333000
          600.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NCC_PROTOCOLO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText57: TQRDBText
        Left = 3
        Top = 14
        Width = 734
        Height = 11
        Frame.DrawBottom = True
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          37.041666666666670000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NCC_TEXTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
    end
    object QRBand1: TQRBand
      Left = 26
      Top = 459
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
      object QRDBText2: TQRDBText
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
      object QRLabel6: TQRLabel
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
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 504
    Top = 496
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 424
    Top = 496
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 352
    Top = 496
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 272
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
      'NCC_CODIGO,'
      'NCC_SEQUENCIAL,'
      'NCC_DATA,'
      'NCC_HORA,'
      'NCC_PROTOCOLO,'
      'NCC_PROTOCOLODH,'
      'NCC_TEXTO,'
      'NFE_CLIENTE,'
      'NFE_CHAVEACESSO,'
      'NFE_CODIGO,'
      'NFE_MODELO,'
      'NFE_SERIE,'
      'NFE_DTEMISSAO,'
      'NFE_NOME,'
      'NFE_CNPJ,'
      'NFE_CPF,'
      'NFE_ENDERECO,'
      'NFE_NUMERO,'
      'NFE_BAIRRO,'
      'NFE_CIDADE,'
      'NFE_ESTADO,'
      'NFE_CEP,'
      'NFE_FONE1,'
      'NFE_IE'
      'from NFECCE '
      'left join NFE on NCC_NFE=NFE_CODIGO'
      'where NCC_PROTOCOLO<>'#39#39' and NCC_NFE=:codigo'
      'order by NCC_SEQUENCIAL')
    Left = 192
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1NCC_CODIGO: TIntegerField
      FieldName = 'NCC_CODIGO'
      Origin = '"NFECCE"."NCC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1NCC_SEQUENCIAL: TIntegerField
      FieldName = 'NCC_SEQUENCIAL'
      Origin = '"NFECCE"."NCC_SEQUENCIAL"'
    end
    object IBQuery1NCC_DATA: TDateField
      FieldName = 'NCC_DATA'
      Origin = '"NFECCE"."NCC_DATA"'
    end
    object IBQuery1NCC_HORA: TTimeField
      FieldName = 'NCC_HORA'
      Origin = '"NFECCE"."NCC_HORA"'
    end
    object IBQuery1NCC_PROTOCOLO: TIBStringField
      FieldName = 'NCC_PROTOCOLO'
      Origin = '"NFECCE"."NCC_PROTOCOLO"'
      Size = 40
    end
    object IBQuery1NCC_PROTOCOLODH: TIBStringField
      FieldName = 'NCC_PROTOCOLODH'
      Origin = '"NFECCE"."NCC_PROTOCOLODH"'
      Size = 30
    end
    object IBQuery1NCC_TEXTO: TIBStringField
      FieldName = 'NCC_TEXTO'
      Origin = '"NFECCE"."NCC_TEXTO"'
      Size = 1000
    end
    object IBQuery1NFE_CLIENTE: TIntegerField
      FieldName = 'NFE_CLIENTE'
      Origin = '"NFE"."NFE_CLIENTE"'
    end
    object IBQuery1NFE_CHAVEACESSO: TIBStringField
      FieldName = 'NFE_CHAVEACESSO'
      Origin = '"NFE"."NFE_CHAVEACESSO"'
      Size = 50
    end
    object IBQuery1NFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
      Origin = '"NFE"."NFE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1NFE_MODELO: TIntegerField
      FieldName = 'NFE_MODELO'
      Origin = '"NFE"."NFE_MODELO"'
    end
    object IBQuery1NFE_SERIE: TIntegerField
      FieldName = 'NFE_SERIE'
      Origin = '"NFE"."NFE_SERIE"'
    end
    object IBQuery1NFE_DTEMISSAO: TDateField
      FieldName = 'NFE_DTEMISSAO'
      Origin = '"NFE"."NFE_DTEMISSAO"'
    end
    object IBQuery1NFE_NOME: TIBStringField
      FieldName = 'NFE_NOME'
      Origin = '"NFE"."NFE_NOME"'
      Size = 50
    end
    object IBQuery1NFE_NUMERO: TIBStringField
      FieldName = 'NFE_NUMERO'
      Origin = '"NFE"."NFE_NUMERO"'
      Size = 15
    end
    object IBQuery1NFE_CNPJ: TIBStringField
      FieldName = 'NFE_CNPJ'
      Origin = '"NFE"."NFE_CNPJ"'
    end
    object IBQuery1NFE_CPF: TIBStringField
      FieldName = 'NFE_CPF'
      Origin = '"NFE"."NFE_CPF"'
    end
    object IBQuery1NFE_ENDERECO: TIBStringField
      FieldName = 'NFE_ENDERECO'
      Origin = '"NFE"."NFE_ENDERECO"'
      Size = 100
    end
    object IBQuery1NFE_BAIRRO: TIBStringField
      FieldName = 'NFE_BAIRRO'
      Origin = '"NFE"."NFE_BAIRRO"'
      Size = 50
    end
    object IBQuery1NFE_CIDADE: TIBStringField
      FieldName = 'NFE_CIDADE'
      Origin = '"NFE"."NFE_CIDADE"'
      Size = 50
    end
    object IBQuery1NFE_ESTADO: TIBStringField
      FieldName = 'NFE_ESTADO'
      Origin = '"NFE"."NFE_ESTADO"'
      Size = 2
    end
    object IBQuery1NFE_CEP: TIBStringField
      FieldName = 'NFE_CEP'
      Origin = '"NFE"."NFE_CEP"'
      Size = 10
    end
    object IBQuery1NFE_FONE1: TIBStringField
      FieldName = 'NFE_FONE1'
      Origin = '"NFE"."NFE_FONE1"'
    end
    object IBQuery1NFE_IE: TIBStringField
      FieldName = 'NFE_IE'
      Origin = '"NFE"."NFE_IE"'
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 128
    Top = 496
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 584
    Top = 496
  end
end
