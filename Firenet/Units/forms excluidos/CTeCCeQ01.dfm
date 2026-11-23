object FormCteCCeQ01: TFormCteCCeQ01
  Left = 0
  Top = 0
  Caption = 'Impress'#227'o da Carta de Corre'#231#227'o do CTe'
  ClientHeight = 807
  ClientWidth = 840
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
      Height = 335
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        886.354166666666700000
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
        Caption = 'CHAVE DE ACESSO DO CT-e'
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
        DataField = 'CTE_DTEMISSAO'
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
        DataField = 'CTE_MODELO'
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
        DataField = 'CTE_SERIE'
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
        DataField = 'CTE_CODIGO'
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
        Caption = 'N'#218'MERO DO CT-e'
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
      object QRShape27: TQRShape
        Left = 0
        Top = 247
        Width = 740
        Height = 85
        Size.Values = (
          224.895833333333300000
          0.000000000000000000
          653.520833333333400000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 171
        Width = 348
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          452.437500000000000000
          920.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 347
        Top = 171
        Width = 393
        Height = 28
        Size.Values = (
          74.083333333333340000
          918.104166666666600000
          452.437500000000000000
          1039.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 198
        Width = 348
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          523.875000000000000000
          920.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 3
        Top = 174
        Width = 38
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          460.375000000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'REMETENTE'
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
        Left = 350
        Top = 174
        Width = 45
        Height = 8
        Size.Values = (
          21.166666666666670000
          926.041666666666700000
          460.375000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESTINAT'#193'RIO'
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
        Top = 201
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          531.812500000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EXPEDIDOR'
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
        Top = 183
        Width = 340
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          484.187500000000000000
          899.583333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CTE_REMNOME'
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
        Left = 352
        Top = 183
        Width = 385
        Height = 15
        Size.Values = (
          39.687500000000000000
          931.333333333333400000
          484.187500000000000000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CTE_DESNOME'
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
        Top = 210
        Width = 339
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          555.625000000000000000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CTE_EXPNOME'
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
        Top = 234
        Width = 90
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          619.125000000000000000
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
        Top = 250
        Width = 367
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          661.458333333333400000
          971.020833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          'A Carta de Corre'#231#227'o '#233' disciplinada pelo Art. 58-B do conv'#234'nio SI' +
          'NIEF 06/89.'
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
      object QRShape26: TQRShape
        Left = 347
        Top = 198
        Width = 393
        Height = 28
        Size.Values = (
          74.083333333333340000
          918.104166666666600000
          523.875000000000000000
          1039.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText34: TQRDBText
        Left = 352
        Top = 210
        Width = 385
        Height = 15
        Size.Values = (
          39.687500000000000000
          931.333333333333400000
          555.625000000000000000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CTE_RECNOME'
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
        Left = 350
        Top = 201
        Width = 37
        Height = 8
        Size.Values = (
          21.166666666666670000
          926.041666666666700000
          531.812500000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RECEBEDOR'
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
        Left = 5
        Top = 266
        Width = 723
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          703.791666666666700000
          1912.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'Fica permitido o uso de Carta de Corre'#231#227'o, para regulariza'#231#227'o de' +
          ' erro na presta'#231#227'o de servi'#231'o de transporte, desde que n'#227'o estej' +
          'a relacionado com:'
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
      object QRLabel4: TQRLabel
        Left = 5
        Top = 282
        Width = 675
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          746.125000000000000000
          1785.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'I - As vari'#225'veis que determinam o valor do imposto tais como: ba' +
          'se de c'#225'lculo, al'#237'quota, diferen'#231'a de pre'#231'o, quantidade, valor d' +
          'a presta'#231#227'o;'
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
      object QRLabel7: TQRLabel
        Left = 5
        Top = 298
        Width = 530
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          788.458333333333300000
          1402.291666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'II - A corre'#231#227'o de dados cadastrais que implique mudan'#231'a do emit' +
          'ente, tomador, remetente ou do destinat'#225'rio;'
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
      object QRLabel8: TQRLabel
        Left = 5
        Top = 314
        Width = 169
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          830.791666666666700000
          447.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'III - A data de emiss'#227'o ou de sa'#237'da.'
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
    end
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 361
      Width = 741
      Height = 43
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        113.770833333333300000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel106: TQRLabel
        Left = 3
        Top = 4
        Width = 112
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          10.583333333333330000
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
        Top = 17
        Height = 25
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          44.979166666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 64
        Top = 17
        Width = 161
        Height = 25
        Size.Values = (
          66.145833333333340000
          169.333333333333300000
          44.979166666666670000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 224
        Top = 17
        Width = 516
        Height = 25
        Size.Values = (
          66.145833333333340000
          592.666666666666600000
          44.979166666666670000
          1365.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel107: TQRLabel
        Left = 3
        Top = 20
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          52.916666666666670000
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
        Top = 20
        Width = 59
        Height = 8
        Size.Values = (
          21.166666666666670000
          177.270833333333300000
          52.916666666666670000
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
        Top = 20
        Width = 73
        Height = 8
        Size.Values = (
          21.166666666666670000
          600.604166666666700000
          52.916666666666670000
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
    end
    object DetailBand1: TQRBand
      Left = 26
      Top = 404
      Width = 741
      Height = 34
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333330000
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
        DataField = 'CTC_SEQUENCIAL'
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
        DataField = 'CTC_PROTOCOLODH'
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
        DataField = 'CTC_PROTOCOLO'
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
      object QRLabel9: TQRLabel
        Left = 68
        Top = 20
        Width = 64
        Height = 13
        Frame.DrawBottom = True
        Size.Values = (
          34.395833333333330000
          179.916666666666700000
          52.916666666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'NUM. ITEM'
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
      object QRLabel11: TQRLabel
        Left = 139
        Top = 20
        Width = 186
        Height = 13
        Frame.DrawBottom = True
        Size.Values = (
          34.395833333333330000
          367.770833333333300000
          52.916666666666670000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'GRUPO'
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
      object QRLabel14: TQRLabel
        Left = 331
        Top = 20
        Width = 186
        Height = 13
        Frame.DrawBottom = True
        Size.Values = (
          34.395833333333330000
          875.770833333333400000
          52.916666666666670000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CAMPO'
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
      object QRLabel15: TQRLabel
        Left = 523
        Top = 20
        Width = 186
        Height = 13
        Frame.DrawBottom = True
        Size.Values = (
          34.395833333333330000
          1383.770833333333000000
          52.916666666666670000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VALOR CORRIGIDO'
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
    end
    object QRBand1: TQRBand
      Left = 26
      Top = 451
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
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 438
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
      object QRDBText1: TQRDBText
        Left = 67
        Top = 1
        Width = 66
        Height = 11
        Size.Values = (
          29.104166666666670000
          177.270833333333300000
          2.645833333333333000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CTX_NUMITEM'
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
      object QRDBText3: TQRDBText
        Left = 139
        Top = 1
        Width = 186
        Height = 11
        Size.Values = (
          29.104166666666670000
          367.770833333333300000
          2.645833333333333000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CTX_GRUPO'
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
      object QRDBText4: TQRDBText
        Left = 331
        Top = 1
        Width = 186
        Height = 11
        Size.Values = (
          29.104166666666670000
          875.770833333333400000
          2.645833333333333000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CTX_CAMPO'
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
      object QRDBText5: TQRDBText
        Left = 523
        Top = 1
        Width = 186
        Height = 11
        Size.Values = (
          29.104166666666670000
          1383.770833333333000000
          2.645833333333333000
          492.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CTX_VALOR'
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
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'CTC_CODIGO,'
      'CTC_PROTOCOLO,'
      'CTC_PROTOCOLODH,'
      'CTC_SEQUENCIAL,'
      'CTE_CHAVEACESSO,'
      'CTE_CODIGO,'
      'CTE_MODELO,'
      'CTE_SERIE,'
      'CTE_DTEMISSAO,'
      'CTE_REMNOME,'
      'CTE_DESNOME,'
      'CTE_EXPNOME,'
      'CTE_RECNOME'
      'from CTECCE '
      'left join CTE on CTC_CTE=CTE_CODIGO'
      'where CTC_CODIGO=:codigo'
      'order by CTC_SEQUENCIAL')
    Left = 336
    Top = 491
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1CTC_CODIGO: TIntegerField
      FieldName = 'CTC_CODIGO'
      Origin = '"CTECCE"."CTC_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1CTC_PROTOCOLO: TIBStringField
      FieldName = 'CTC_PROTOCOLO'
      Origin = '"CTECCE"."CTC_PROTOCOLO"'
      Size = 40
    end
    object IBQuery1CTC_PROTOCOLODH: TIBStringField
      FieldName = 'CTC_PROTOCOLODH'
      Origin = '"CTECCE"."CTC_PROTOCOLODH"'
      Size = 30
    end
    object IBQuery1CTC_SEQUENCIAL: TIntegerField
      FieldName = 'CTC_SEQUENCIAL'
      Origin = '"CTECCE"."CTC_SEQUENCIAL"'
    end
    object IBQuery1CTE_CHAVEACESSO: TIBStringField
      FieldName = 'CTE_CHAVEACESSO'
      Origin = '"CTE"."CTE_CHAVEACESSO"'
      Size = 50
    end
    object IBQuery1CTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = '"CTE"."CTE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBQuery1CTE_MODELO: TIntegerField
      FieldName = 'CTE_MODELO'
      Origin = '"CTE"."CTE_MODELO"'
    end
    object IBQuery1CTE_SERIE: TIntegerField
      FieldName = 'CTE_SERIE'
      Origin = '"CTE"."CTE_SERIE"'
    end
    object IBQuery1CTE_DTEMISSAO: TDateField
      FieldName = 'CTE_DTEMISSAO'
      Origin = '"CTE"."CTE_DTEMISSAO"'
    end
    object IBQuery1CTE_REMNOME: TIBStringField
      FieldName = 'CTE_REMNOME'
      Origin = '"CTE"."CTE_REMNOME"'
      Size = 50
    end
    object IBQuery1CTE_DESNOME: TIBStringField
      FieldName = 'CTE_DESNOME'
      Origin = '"CTE"."CTE_DESNOME"'
      Size = 50
    end
    object IBQuery1CTE_EXPNOME: TIBStringField
      FieldName = 'CTE_EXPNOME'
      Origin = '"CTE"."CTE_EXPNOME"'
      Size = 50
    end
    object IBQuery1CTE_RECNOME: TIBStringField
      FieldName = 'CTE_RECNOME'
      Origin = '"CTE"."CTE_RECNOME"'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 336
    Top = 539
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 472
    Top = 491
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select * from CTECCEITENS'
      'where CTX_CCE=:CTC_CODIGO'
      'order by CTX_CODIGO')
    Left = 408
    Top = 491
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CTC_CODIGO'
        ParamType = ptUnknown
      end>
    object IBQuery2CTX_CODIGO: TIntegerField
      FieldName = 'CTX_CODIGO'
      Origin = '"CTECCEITENS"."CTX_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2CTX_CCE: TIntegerField
      FieldName = 'CTX_CCE'
      Origin = '"CTECCEITENS"."CTX_CCE"'
      Required = True
    end
    object IBQuery2CTX_CAMPO: TIBStringField
      FieldName = 'CTX_CAMPO'
      Origin = '"CTECCEITENS"."CTX_CAMPO"'
    end
    object IBQuery2CTX_GRUPO: TIBStringField
      FieldName = 'CTX_GRUPO'
      Origin = '"CTECCEITENS"."CTX_GRUPO"'
    end
    object IBQuery2CTX_NUMITEM: TIntegerField
      FieldName = 'CTX_NUMITEM'
      Origin = '"CTECCEITENS"."CTX_NUMITEM"'
    end
    object IBQuery2CTX_VALOR: TIBStringField
      FieldName = 'CTX_VALOR'
      Origin = '"CTECCEITENS"."CTX_VALOR"'
      Size = 255
    end
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 408
    Top = 539
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 336
    Top = 584
  end
end
