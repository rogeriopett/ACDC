object FormNfeQ01: TFormNfeQ01
  Left = 284
  Top = 43
  Caption = 'DANFE'
  ClientHeight = 818
  ClientWidth = 994
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
    Left = 8
    Top = 8
    Width = 952
    Height = 1347
    ShowingPreview = False
    DataSet = IBQuery2
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
      Width = 889
      Height = 288
      AlignToBottom = False
      BeforePrint = PageHeaderBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        635.000000000000000000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 706
        Height = 24
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          1555.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 704
        Top = 0
        Width = 184
        Height = 62
        Size.Values = (
          137.583333333333300000
          1553.104166666667000000
          0.000000000000000000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = 5
        Width = 90
        Height = 16
        Size.Values = (
          35.277777777777780000
          11.024305555555560000
          11.024305555555560000
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
      object QRLabel2: TQRLabel
        Left = 98
        Top = 5
        Width = 397
        Height = 16
        Size.Values = (
          35.277777777777780000
          216.076388888888900000
          11.024305555555560000
          875.329861111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RAZ'#195'O SOCIAL OS PRODUTOS CONSTANTES NA NF INDICADA AO LADO'
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
      object QRShape2: TQRShape
        Left = 0
        Top = 23
        Width = 126
        Height = 40
        Size.Values = (
          87.312500000000000000
          0.000000000000000000
          50.270833333333330000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 125
        Top = 23
        Width = 270
        Height = 40
        Size.Values = (
          87.312500000000000000
          275.166666666666700000
          50.270833333333330000
          595.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 11
        Top = 67
        Width = 865
        Height = 4
        Size.Values = (
          7.937500000000000000
          23.812500000000000000
          148.166666666666700000
          1907.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = clGray
        Brush.Style = bsFDiagonal
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 26
        Width = 86
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          57.326388888888890000
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
      object QRLabel4: TQRLabel
        Left = 779
        Top = 1
        Width = 35
        Height = 20
        Size.Values = (
          44.097222222222220000
          1717.586805555556000000
          2.204861111111111000
          77.170138888888890000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NF-e'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 726
        Top = 22
        Width = 23
        Height = 20
        Size.Values = (
          44.097222222222220000
          1600.729166666667000000
          48.506944444444440000
          50.711805555555560000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186':'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 709
        Top = 43
        Width = 40
        Height = 18
        Size.Values = (
          39.687500000000000000
          1563.246527777778000000
          94.809027777777780000
          88.194444444444440000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE:'
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
      object QRDBText1: TQRDBText
        Left = 754
        Top = 22
        Width = 131
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          47.625000000000000000
          288.395833333333400000)
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
      object QRDBText2: TQRDBText
        Left = 768
        Top = 43
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          94.809027777777780000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 77
        Width = 376
        Height = 126
        Size.Values = (
          277.812500000000000000
          0.000000000000000000
          169.333333333333300000
          828.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object IMAGEM: TQRImage
        Left = 1
        Top = 78
        Width = 144
        Height = 74
        Size.Values = (
          164.041666666666700000
          2.645833333333333000
          171.979166666666700000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRDBText3: TQRDBText
        Left = 150
        Top = 82
        Width = 222
        Height = 73
        Size.Values = (
          161.395833333333300000
          330.729166666666700000
          179.916666666666700000
          489.479166666666600000)
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
      object QRLabel8: TQRLabel
        Left = 5
        Top = 158
        Width = 367
        Height = 41
        Size.Values = (
          89.958333333333340000
          10.583333333333330000
          349.250000000000000000
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
        Left = 522
        Top = 77
        Width = 366
        Height = 126
        Size.Values = (
          277.812500000000000000
          1150.937500000000000000
          169.333333333333300000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 409
        Top = 78
        Width = 79
        Height = 28
        Size.Values = (
          61.736111111111110000
          901.788194444444400000
          171.979166666666700000
          174.184027777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DANFE'
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
      object QRLabel10: TQRLabel
        Left = 383
        Top = 103
        Width = 127
        Height = 29
        Size.Values = (
          63.500000000000000000
          844.020833333333500000
          227.541666666666700000
          280.458333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Documento Auxiliar de Nota Fiscal Eletr'#244'nica'
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
      object QRShape8: TQRShape
        Left = 470
        Top = 132
        Width = 30
        Height = 34
        Size.Values = (
          74.083333333333340000
          1037.166666666667000000
          291.041666666666700000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 389
        Top = 134
        Width = 76
        Height = 35
        Size.Values = (
          76.729166666666680000
          857.250000000000000000
          296.333333333333400000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'E - Entrada S - Sa'#237'da'
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
      object QRDBText10: TQRDBText
        Left = 479
        Top = 139
        Width = 16
        Height = 20
        Size.Values = (
          44.979166666666670000
          1055.687500000000000000
          306.916666666666700000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_ENTRADASAIDA'
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
      object QRDBText11: TQRDBText
        Left = 410
        Top = 169
        Width = 109
        Height = 18
        Size.Values = (
          39.687500000000000000
          904.875000000000000000
          373.062500000000000000
          240.770833333333300000)
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
      object QRLabel12: TQRLabel
        Left = 388
        Top = 169
        Width = 19
        Height = 18
        Size.Values = (
          39.687500000000000000
          855.486111111111100000
          372.621527777777800000
          41.892361111111110000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186':'
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
      object QRLabel13: TQRLabel
        Left = 378
        Top = 186
        Width = 40
        Height = 18
        Size.Values = (
          39.687500000000000000
          833.437500000000000000
          410.104166666666700000
          88.194444444444440000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE:'
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
      object QRDBText12: TQRDBText
        Left = 421
        Top = 186
        Width = 36
        Height = 18
        Size.Values = (
          39.687500000000000000
          928.687500000000000000
          410.104166666666800000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 211
        Width = 473
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          465.666666666666800000
          1042.458333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 128
        Top = 26
        Width = 169
        Height = 10
        Size.Values = (
          22.048611111111110000
          282.222222222222200000
          57.326388888888890000
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
      object QRLabel15: TQRLabel
        Left = 4
        Top = 215
        Width = 92
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          474.045138888888900000
          202.847222222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NATUREZA DA OPERA'#199#195'O'
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
        Left = 50
        Top = 226
        Width = 414
        Height = 18
        Size.Values = (
          39.687500000000000000
          111.125000000000000000
          497.416666666666700000
          912.812500000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CFOPDESC'
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
        Left = 526
        Top = 80
        Width = 74
        Height = 10
        Size.Values = (
          22.048611111111110000
          1159.756944444444000000
          176.388888888888900000
          163.159722222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONTROLE DO FISCO'
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
        Left = 0
        Top = 244
        Width = 164
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          537.104166666666800000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 4
        Top = 247
        Width = 79
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          544.600694444444400000
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
      object QRShape11: TQRShape
        Left = 163
        Top = 244
        Width = 164
        Height = 34
        Size.Values = (
          74.083333333333340000
          359.833333333333400000
          537.104166666666800000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 167
        Top = 247
        Width = 95
        Height = 10
        Size.Values = (
          22.048611111111110000
          368.211805555555600000
          544.600694444444400000
          209.461805555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSC. SUBST. TRIBUT'#193'RIO'
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
        Left = 6
        Top = 258
        Width = 149
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          568.854166666666800000
          328.083333333333400000)
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
      object QRDBText16: TQRDBText
        Left = 169
        Top = 258
        Width = 149
        Height = 18
        Size.Values = (
          39.687500000000000000
          373.062500000000000000
          568.854166666666800000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBAliquotas
        DataField = 'ALI_IEST'
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
      object QRShape12: TQRShape
        Left = 326
        Top = 244
        Width = 146
        Height = 34
        Size.Values = (
          74.083333333333340000
          719.666666666666800000
          537.104166666666800000
          322.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 330
        Top = 247
        Width = 19
        Height = 10
        Size.Values = (
          22.048611111111110000
          727.604166666666700000
          544.600694444444400000
          41.892361111111110000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ'
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
        Left = 332
        Top = 258
        Width = 137
        Height = 18
        Size.Values = (
          39.687500000000000000
          732.895833333333400000
          568.854166666666800000
          301.625000000000000000)
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
      object QRShape88: TQRShape
        Left = 472
        Top = 211
        Width = 416
        Height = 34
        Size.Values = (
          74.083333333333340000
          1039.812500000000000000
          465.666666666666700000
          918.104166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 472
        Top = 244
        Width = 416
        Height = 34
        Size.Values = (
          74.083333333333340000
          1039.812500000000000000
          537.104166666666700000
          918.104166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText4: TQRDBText
        Left = 496
        Top = 258
        Width = 158
        Height = 18
        Size.Values = (
          39.687500000000000000
          1092.729166666667000000
          568.854166666666700000
          349.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_PROTOCOLO'
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
        Left = 659
        Top = 258
        Width = 197
        Height = 18
        Size.Values = (
          39.687500000000000000
          1452.562500000000000000
          568.854166666666700000
          433.916666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_PROTOCOLODH'
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
        Left = 475
        Top = 247
        Width = 137
        Height = 10
        Size.Values = (
          22.048611111111110000
          1047.309027777778000000
          544.600694444444400000
          302.065972222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PROTOCOLO DE AUTORIZA'#199#195'O DE USO'
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
        Left = 475
        Top = 215
        Width = 398
        Height = 10
        Size.Values = (
          22.048611111111110000
          1047.309027777778000000
          474.045138888888900000
          877.534722222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'CHAVE DE ACESSO DA NF-e. CONSULTA DE AUTENTICIDADE NO PORTAL NAC' +
          'IONAL DA NF-e www.nfe.fazenda.gov.br'
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
        Left = 478
        Top = 226
        Width = 407
        Height = 18
        Size.Values = (
          39.687500000000000000
          1053.041666666667000000
          497.416666666666700000
          896.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CHAVEACESSO'
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
      object QRLabel125: TQRLabel
        Left = 494
        Top = 186
        Width = 25
        Height = 18
        Size.Values = (
          39.687500000000000000
          1090.083333333333000000
          410.104166666666800000
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
      object QRSysData1: TQRSysData
        Left = 460
        Top = 186
        Width = 32
        Height = 18
        Size.Values = (
          39.687500000000000000
          1013.354166666667000000
          410.104166666666800000
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
        Text = 'Pg.'
        Transparent = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel127: TQRLabel
        Left = 526
        Top = 170
        Width = 359
        Height = 19
        Size.Values = (
          42.333333333333340000
          1158.875000000000000000
          375.708333333333400000
          791.104166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CHAVE DE ACESSO'
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
      object QRDBText6: TQRDBText
        Left = 6
        Top = 226
        Width = 41
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          497.416666666666700000
          89.958333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_CFOP'
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
      object QRShape67: TQRShape
        Left = 394
        Top = 23
        Width = 312
        Height = 40
        Size.Values = (
          87.312500000000000000
          867.833333333333200000
          50.270833333333330000
          687.916666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel139: TQRLabel
        Left = 397
        Top = 24
        Width = 305
        Height = 37
        Size.Values = (
          82.020833333333320000
          875.770833333333200000
          52.916666666666670000
          672.041666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'NOME - BEFORE PRINT'
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
      object QRAsBarcode1: TQRAsBarcode
        Left = 541
        Top = 96
        Width = 96
        Height = 50
        Size.Values = (
          110.243055555555600000
          1192.829861111111000000
          211.666666666666700000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        BarcodeHeight = 50
        BarcodeWidth = 95
        Modul = 1
        Ratio = 2.000000000000000000
        Text = ''
        Typ = bcCodeEAN13
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 32
      Top = 320
      Width = 889
      Height = 460
      AlignToBottom = False
      BeforePrint = ColumnHeaderBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1014.236111111111000000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel21: TQRLabel
        Left = 4
        Top = 1
        Width = 160
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          2.204861111111111000
          352.777777777777800000)
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
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 17
        Width = 539
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          37.041666666666670000
          1187.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 538
        Top = 17
        Width = 226
        Height = 34
        Size.Values = (
          74.083333333333340000
          1185.333333333333000000
          37.041666666666670000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 49
        Width = 443
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          108.479166666666700000
          976.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 330
        Top = 82
        Width = 97
        Height = 34
        Size.Values = (
          74.083333333333340000
          727.604166666666800000
          179.916666666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 82
        Width = 293
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          179.916666666666700000
          645.583333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 292
        Top = 82
        Width = 40
        Height = 34
        Size.Values = (
          74.083333333333340000
          642.937500000000000000
          179.916666666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 4
        Top = 20
        Width = 80
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          44.097222222222220000
          176.388888888888900000)
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
        Left = 541
        Top = 20
        Width = 41
        Height = 10
        Size.Values = (
          22.048611111111110000
          1192.829861111111000000
          44.097222222222220000
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
      object QRLabel25: TQRLabel
        Left = 4
        Top = 53
        Width = 40
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          116.857638888888900000
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
      object QRLabel29: TQRLabel
        Left = 4
        Top = 85
        Width = 38
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          187.413194444444400000
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
      object QRLabel31: TQRLabel
        Left = 295
        Top = 85
        Width = 11
        Height = 10
        Size.Values = (
          22.048611111111110000
          650.434027777777800000
          187.413194444444400000
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
      object QRLabel33: TQRLabel
        Left = 334
        Top = 85
        Width = 16
        Height = 10
        Size.Values = (
          22.048611111111110000
          736.423611111111100000
          187.413194444444400000
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
      object QRDBText19: TQRDBText
        Left = 544
        Top = 31
        Width = 216
        Height = 18
        Size.Values = (
          39.687500000000000000
          1198.562500000000000000
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
      object QRDBText21: TQRDBText
        Left = 6
        Top = 64
        Width = 433
        Height = 18
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
      object QRDBText25: TQRDBText
        Left = 6
        Top = 96
        Width = 283
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          211.666666666666700000
          624.416666666666800000)
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
      object QRDBText26: TQRDBText
        Left = 298
        Top = 96
        Width = 24
        Height = 18
        Size.Values = (
          39.687500000000000000
          656.166666666666800000
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
      object QRDBText27: TQRDBText
        Left = 336
        Top = 96
        Width = 88
        Height = 18
        Size.Values = (
          39.687500000000000000
          740.833333333333400000
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
      object QRLabel35: TQRLabel
        Left = 4
        Top = 121
        Width = 46
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          266.788194444444400000
          101.423611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FATURA'
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
      object QRShape27: TQRShape
        Left = 0
        Top = 137
        Width = 888
        Height = 64
        Size.Values = (
          140.229166666666700000
          0.000000000000000000
          301.625000000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel36: TQRLabel
        Left = 6
        Top = 140
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          309.562500000000000000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A)'
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
      object QRLabel37: TQRLabel
        Left = 6
        Top = 160
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          351.895833333333400000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'B)'
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
      object QRLabel38: TQRLabel
        Left = 6
        Top = 179
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          394.229166666666700000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C)'
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
      object QRLabel39: TQRLabel
        Left = 224
        Top = 140
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          494.770833333333400000
          309.562500000000000000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'D)'
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
      object QRLabel40: TQRLabel
        Left = 224
        Top = 160
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          494.770833333333400000
          351.895833333333400000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'E)'
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
      object QRLabel41: TQRLabel
        Left = 224
        Top = 179
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          494.770833333333400000
          394.229166666666700000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'F)'
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
      object QRLabel42: TQRLabel
        Left = 445
        Top = 140
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          981.604166666666800000
          309.562500000000000000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'G)'
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
      object QRLabel43: TQRLabel
        Left = 445
        Top = 160
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          981.604166666666800000
          351.895833333333400000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'H)'
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
      object QRLabel44: TQRLabel
        Left = 445
        Top = 179
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          981.604166666666800000
          394.229166666666700000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'I)'
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
      object QRLabel45: TQRLabel
        Left = 666
        Top = 140
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          1468.437500000000000000
          309.562500000000000000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'J)'
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
      object QRLabel46: TQRLabel
        Left = 666
        Top = 160
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          1468.437500000000000000
          351.895833333333400000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'K)'
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
      object QRLabel47: TQRLabel
        Left = 666
        Top = 179
        Width = 16
        Height = 18
        Size.Values = (
          39.687500000000000000
          1468.437500000000000000
          394.229166666666700000
          34.395833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'L)'
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
      object QRLabel48: TQRLabel
        Left = 25
        Top = 140
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          55.121527777777780000
          308.680555555555600000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabel49: TQRLabel
        Left = 25
        Top = 160
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          55.121527777777780000
          352.777777777777800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel50: TQRLabel
        Left = 25
        Top = 179
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          55.121527777777780000
          394.670138888888900000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel51: TQRLabel
        Left = 244
        Top = 140
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          537.986111111111100000
          308.680555555555600000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel52: TQRLabel
        Left = 244
        Top = 160
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          537.986111111111100000
          352.777777777777800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel53: TQRLabel
        Left = 244
        Top = 179
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          537.986111111111100000
          394.670138888888900000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel54: TQRLabel
        Left = 464
        Top = 140
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1023.055555555556000000
          308.680555555555600000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel55: TQRLabel
        Left = 464
        Top = 160
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1023.055555555556000000
          352.777777777777800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel56: TQRLabel
        Left = 464
        Top = 179
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1023.055555555556000000
          394.670138888888900000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel57: TQRLabel
        Left = 685
        Top = 140
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1510.329861111111000000
          308.680555555555600000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel58: TQRLabel
        Left = 685
        Top = 160
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1510.329861111111000000
          352.777777777777800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel59: TQRLabel
        Left = 685
        Top = 179
        Width = 66
        Height = 18
        Size.Values = (
          39.687500000000000000
          1510.329861111111000000
          394.670138888888900000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '00/00/0000'
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
      object QRLabel60: TQRLabel
        Left = 95
        Top = 140
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          209.020833333333300000
          309.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel61: TQRLabel
        Left = 95
        Top = 160
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          209.020833333333300000
          351.895833333333400000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel62: TQRLabel
        Left = 95
        Top = 179
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          209.020833333333300000
          394.229166666666700000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel63: TQRLabel
        Left = 313
        Top = 140
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          690.562500000000000000
          309.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel64: TQRLabel
        Left = 313
        Top = 160
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          690.562500000000000000
          351.895833333333400000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel65: TQRLabel
        Left = 313
        Top = 179
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          690.562500000000000000
          394.229166666666700000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel66: TQRLabel
        Left = 534
        Top = 140
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1177.395833333333000000
          309.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel67: TQRLabel
        Left = 534
        Top = 160
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1177.395833333333000000
          351.895833333333400000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel68: TQRLabel
        Left = 534
        Top = 179
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1177.395833333333000000
          394.229166666666700000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel69: TQRLabel
        Left = 755
        Top = 140
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1664.229166666667000000
          309.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel70: TQRLabel
        Left = 755
        Top = 160
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1664.229166666667000000
          351.895833333333400000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel71: TQRLabel
        Left = 755
        Top = 179
        Width = 101
        Height = 18
        Size.Values = (
          39.687500000000000000
          1664.229166666667000000
          394.229166666666700000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel72: TQRLabel
        Left = 4
        Top = 206
        Width = 127
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          454.201388888888900000
          280.017361111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#193'LCULO DO IMPOSTO'
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
      object QRShape28: TQRShape
        Left = 0
        Top = 222
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          489.479166666666600000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 125
        Top = 222
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          275.166666666666700000
          489.479166666666600000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 250
        Top = 222
        Width = 145
        Height = 34
        Size.Values = (
          74.083333333333340000
          550.333333333333400000
          489.479166666666600000
          320.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 394
        Top = 222
        Width = 155
        Height = 34
        Size.Values = (
          74.083333333333340000
          867.833333333333500000
          489.479166666666600000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 695
        Top = 222
        Width = 193
        Height = 34
        Size.Values = (
          74.083333333333340000
          1531.937500000000000000
          489.479166666666600000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 0
        Top = 254
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          560.916666666666800000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 125
        Top = 254
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          275.166666666666700000
          560.916666666666800000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 250
        Top = 254
        Width = 145
        Height = 34
        Size.Values = (
          74.083333333333340000
          550.333333333333400000
          560.916666666666800000
          320.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 394
        Top = 254
        Width = 155
        Height = 34
        Size.Values = (
          74.083333333333340000
          867.833333333333500000
          560.916666666666800000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 547
        Top = 254
        Width = 149
        Height = 34
        Size.Values = (
          74.083333333333340000
          1206.500000000000000000
          560.916666666666800000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 695
        Top = 254
        Width = 193
        Height = 34
        Size.Values = (
          74.083333333333340000
          1531.937500000000000000
          560.916666666666800000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel73: TQRLabel
        Left = 4
        Top = 226
        Width = 98
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          498.298611111111100000
          216.076388888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO DO ICMS'
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
        Left = 128
        Top = 226
        Width = 56
        Height = 10
        Size.Values = (
          22.048611111111110000
          282.222222222222200000
          498.298611111111100000
          123.472222222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO ICMS'
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
        Left = 253
        Top = 226
        Width = 127
        Height = 10
        Size.Values = (
          22.048611111111110000
          557.829861111111100000
          498.298611111111100000
          280.017361111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO DO ICMS SUBST.'
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
        Left = 397
        Top = 226
        Width = 112
        Height = 10
        Size.Values = (
          22.048611111111110000
          875.329861111111100000
          498.298611111111100000
          246.944444444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO ICMS SUBSTITUI'#199#195'O'
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
        Left = 698
        Top = 226
        Width = 107
        Height = 10
        Size.Values = (
          22.048611111111110000
          1538.993055555556000000
          498.298611111111100000
          235.920138888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL DOS PRODUTOS'
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
      object QRLabel78: TQRLabel
        Left = 4
        Top = 258
        Width = 62
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          568.854166666666700000
          136.701388888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO FRETE'
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
        Left = 128
        Top = 258
        Width = 67
        Height = 10
        Size.Values = (
          22.048611111111110000
          282.222222222222200000
          568.854166666666700000
          147.725694444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO SEGURO'
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
        Left = 253
        Top = 258
        Width = 40
        Height = 10
        Size.Values = (
          22.048611111111110000
          557.829861111111100000
          568.854166666666700000
          88.194444444444440000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESCONTO'
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
        Left = 397
        Top = 258
        Width = 119
        Height = 10
        Size.Values = (
          22.048611111111110000
          875.329861111111100000
          568.854166666666700000
          262.378472222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OUTRAS DESPESAS ACESS'#211'RIAS'
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
        Left = 551
        Top = 258
        Width = 48
        Height = 10
        Size.Values = (
          22.048611111111110000
          1214.878472222222000000
          568.854166666666700000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR DO IPI'
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
      object QRLabel83: TQRLabel
        Left = 698
        Top = 258
        Width = 58
        Height = 10
        Size.Values = (
          22.048611111111110000
          1538.993055555556000000
          568.854166666666700000
          127.881944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL DA NOTA'
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
      object QRDBText32: TQRDBText
        Left = 256
        Top = 236
        Width = 130
        Height = 18
        Size.Values = (
          39.687500000000000000
          563.562500000000000000
          521.229166666666800000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_BASEICMSST'
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
        Left = 400
        Top = 236
        Width = 139
        Height = 18
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          521.229166666666800000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TOTALICMSST'
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
        Left = 6
        Top = 269
        Width = 110
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          592.666666666666800000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VALORFRETE'
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
        Left = 131
        Top = 269
        Width = 110
        Height = 18
        Size.Values = (
          39.687500000000000000
          288.395833333333400000
          592.666666666666800000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VALORSEGURO'
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
        Left = 256
        Top = 269
        Width = 130
        Height = 18
        Size.Values = (
          39.687500000000000000
          563.562500000000000000
          592.666666666666800000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_DESCVALOR'
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
        Left = 400
        Top = 269
        Width = 139
        Height = 18
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          592.666666666666800000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VALORDESPACES'
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
      object QRDBText40: TQRDBText
        Left = 701
        Top = 269
        Width = 184
        Height = 18
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          592.666666666666800000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VALORTOTAL'
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
        Left = 4
        Top = 294
        Width = 274
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          648.229166666666700000
          604.131944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TRANSPORTADORA / VOLUMES TRANSPORTADOS'
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
      object QRShape39: TQRShape
        Left = 0
        Top = 310
        Width = 379
        Height = 35
        Size.Values = (
          76.729166666666680000
          0.000000000000000000
          682.625000000000000000
          836.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 378
        Top = 310
        Width = 115
        Height = 35
        Size.Values = (
          76.729166666666680000
          833.437500000000000000
          682.625000000000000000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 492
        Top = 310
        Width = 79
        Height = 35
        Size.Values = (
          76.729166666666680000
          1084.791666666667000000
          682.625000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 570
        Top = 310
        Width = 107
        Height = 35
        Size.Values = (
          76.729166666666680000
          1256.770833333333000000
          682.625000000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 676
        Top = 310
        Width = 40
        Height = 35
        Size.Values = (
          76.729166666666680000
          1489.604166666667000000
          682.625000000000000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 714
        Top = 310
        Width = 174
        Height = 35
        Size.Values = (
          76.729166666666680000
          1574.270833333333000000
          682.625000000000000000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 0
        Top = 343
        Width = 379
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          756.708333333333400000
          836.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 378
        Top = 343
        Width = 299
        Height = 34
        Size.Values = (
          74.083333333333340000
          833.437500000000000000
          756.708333333333400000
          658.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 676
        Top = 343
        Width = 40
        Height = 34
        Size.Values = (
          74.083333333333340000
          1489.604166666667000000
          756.708333333333400000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 714
        Top = 343
        Width = 174
        Height = 34
        Size.Values = (
          74.083333333333340000
          1574.270833333333000000
          756.708333333333400000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 0
        Top = 376
        Width = 88
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          828.145833333333200000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 86
        Top = 376
        Width = 155
        Height = 34
        Size.Values = (
          74.083333333333340000
          190.500000000000000000
          828.145833333333200000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 240
        Top = 376
        Width = 139
        Height = 34
        Size.Values = (
          74.083333333333340000
          529.166666666666800000
          828.145833333333200000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 378
        Top = 376
        Width = 164
        Height = 34
        Size.Values = (
          74.083333333333340000
          833.437500000000000000
          828.145833333333200000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 541
        Top = 376
        Width = 174
        Height = 34
        Size.Values = (
          74.083333333333340000
          1193.270833333333000000
          828.145833333333200000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 714
        Top = 376
        Width = 174
        Height = 34
        Size.Values = (
          74.083333333333340000
          1574.270833333333000000
          828.145833333333200000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel85: TQRLabel
        Left = 4
        Top = 313
        Width = 53
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          690.121527777777800000
          116.857638888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RAZ'#195'O SOCIAL'
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
      object QRLabel86: TQRLabel
        Left = 382
        Top = 313
        Width = 68
        Height = 10
        Size.Values = (
          22.048611111111110000
          842.256944444444400000
          690.121527777777800000
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
      object QRLabel87: TQRLabel
        Left = 496
        Top = 313
        Width = 49
        Height = 10
        Size.Values = (
          22.048611111111110000
          1093.611111111111000000
          690.121527777777800000
          108.038194444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CODIGO ANTT'
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
        Left = 574
        Top = 313
        Width = 68
        Height = 10
        Size.Values = (
          22.048611111111110000
          1265.590277777778000000
          690.121527777777800000
          149.930555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PLACA DO VEICULO'
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
        Left = 679
        Top = 313
        Width = 11
        Height = 10
        Size.Values = (
          22.048611111111110000
          1497.100694444444000000
          690.121527777777800000
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
      object QRLabel90: TQRLabel
        Left = 718
        Top = 313
        Width = 41
        Height = 10
        Size.Values = (
          22.048611111111110000
          1583.090277777778000000
          690.121527777777800000
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
      object QRLabel91: TQRLabel
        Left = 4
        Top = 347
        Width = 40
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          765.086805555555600000
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
      object QRLabel92: TQRLabel
        Left = 382
        Top = 347
        Width = 38
        Height = 10
        Size.Values = (
          22.048611111111110000
          842.256944444444400000
          765.086805555555600000
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
      object QRLabel93: TQRLabel
        Left = 679
        Top = 347
        Width = 11
        Height = 10
        Size.Values = (
          22.048611111111110000
          1497.100694444444000000
          765.086805555555600000
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
      object QRLabel94: TQRLabel
        Left = 718
        Top = 347
        Width = 79
        Height = 10
        Size.Values = (
          22.048611111111110000
          1583.090277777778000000
          765.086805555555600000
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
      object QRLabel95: TQRLabel
        Left = 4
        Top = 379
        Width = 47
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          835.642361111111100000
          103.628472222222200000)
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
      object QRLabel96: TQRLabel
        Left = 90
        Top = 379
        Width = 32
        Height = 10
        Size.Values = (
          22.048611111111110000
          198.437500000000000000
          835.642361111111100000
          70.555555555555560000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ESPECIE'
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
      object QRLabel97: TQRLabel
        Left = 244
        Top = 379
        Width = 26
        Height = 10
        Size.Values = (
          22.048611111111110000
          537.986111111111100000
          835.642361111111100000
          57.326388888888890000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MARCA'
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
      object QRLabel98: TQRLabel
        Left = 382
        Top = 379
        Width = 46
        Height = 10
        Size.Values = (
          22.048611111111110000
          842.256944444444400000
          835.642361111111100000
          101.423611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NUMERA'#199#195'O'
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
      object QRLabel99: TQRLabel
        Left = 545
        Top = 379
        Width = 47
        Height = 10
        Size.Values = (
          22.048611111111110000
          1201.649305555556000000
          835.642361111111100000
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
      object QRLabel100: TQRLabel
        Left = 718
        Top = 379
        Width = 50
        Height = 10
        Size.Values = (
          22.048611111111110000
          1583.090277777778000000
          835.642361111111100000
          110.243055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PESO LIQUIDO'
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
        Left = 6
        Top = 325
        Width = 370
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          717.020833333333400000
          814.916666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPNOME'
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
      object QRDBText42: TQRDBText
        Left = 6
        Top = 358
        Width = 370
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          788.458333333333400000
          814.916666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPENDERECO'
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
        Left = 384
        Top = 358
        Width = 270
        Height = 18
        Size.Values = (
          39.687500000000000000
          846.666666666666600000
          788.458333333333400000
          595.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPCIDADE'
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
        Left = 498
        Top = 325
        Width = 71
        Height = 18
        Size.Values = (
          39.687500000000000000
          1098.020833333333000000
          717.020833333333400000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VEICULORNTC'
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
        Left = 576
        Top = 325
        Width = 97
        Height = 18
        Size.Values = (
          39.687500000000000000
          1270.000000000000000000
          717.020833333333400000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VEICULOPLACA'
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
        Left = 682
        Top = 325
        Width = 24
        Height = 18
        Size.Values = (
          39.687500000000000000
          1502.833333333333000000
          717.020833333333400000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VEICULOPLACAUF'
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
        Left = 720
        Top = 325
        Width = 164
        Height = 18
        Size.Values = (
          39.687500000000000000
          1587.500000000000000000
          717.020833333333400000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPCNPJ'
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
        Left = 682
        Top = 358
        Width = 24
        Height = 18
        Size.Values = (
          39.687500000000000000
          1502.833333333333000000
          788.458333333333400000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPESTADO'
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
      object QRDBText49: TQRDBText
        Left = 547
        Top = 390
        Width = 164
        Height = 18
        Size.Values = (
          39.687500000000000000
          1206.500000000000000000
          859.895833333333400000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_PESOBRUTO'
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
      object QRDBText50: TQRDBText
        Left = 720
        Top = 390
        Width = 164
        Height = 18
        Size.Values = (
          39.687500000000000000
          1587.500000000000000000
          859.895833333333400000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_PESOLIQ'
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
        Left = 384
        Top = 325
        Width = 107
        Height = 18
        Size.Values = (
          39.687500000000000000
          846.666666666666600000
          717.020833333333400000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_FRETE'
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
      object QRLabel101: TQRLabel
        Left = 4
        Top = 415
        Width = 202
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          915.017361111111100000
          445.381944444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DADOS DOS PRODUTOS / SERVI'#199'OS'
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
        Top = 431
        Width = 76
        Height = 30
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          949.854166666666800000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 74
        Top = 431
        Width = 274
        Height = 30
        Size.Values = (
          66.145833333333340000
          164.041666666666700000
          949.854166666666800000
          603.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 347
        Top = 431
        Width = 56
        Height = 30
        Size.Values = (
          66.145833333333340000
          764.645833333333400000
          949.854166666666800000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 402
        Top = 431
        Width = 32
        Height = 30
        Size.Values = (
          66.145833333333340000
          886.354166666666900000
          949.854166666666800000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 433
        Top = 431
        Width = 32
        Height = 30
        Size.Values = (
          66.145833333333320000
          955.145833333333200000
          949.854166666666800000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 464
        Top = 431
        Width = 30
        Height = 30
        Size.Values = (
          66.145833333333320000
          1023.937500000000000000
          949.854166666666800000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 493
        Top = 431
        Width = 59
        Height = 30
        Size.Values = (
          66.145833333333320000
          1087.437500000000000000
          949.854166666666800000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape62: TQRShape
        Left = 551
        Top = 431
        Width = 72
        Height = 30
        Size.Values = (
          66.145833333333320000
          1214.437500000000000000
          949.854166666666800000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape63: TQRShape
        Left = 622
        Top = 431
        Width = 72
        Height = 30
        Size.Values = (
          66.145833333333320000
          1370.541666666667000000
          949.854166666666800000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape64: TQRShape
        Left = 692
        Top = 431
        Width = 72
        Height = 30
        Size.Values = (
          66.145833333333320000
          1526.645833333333000000
          949.854166666666800000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape65: TQRShape
        Left = 763
        Top = 431
        Width = 72
        Height = 30
        Size.Values = (
          66.145833333333320000
          1682.750000000000000000
          949.854166666666800000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 834
        Top = 431
        Width = 28
        Height = 30
        Size.Values = (
          66.145833333333340000
          1838.854166666667000000
          949.854166666666800000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel102: TQRLabel
        Left = 4
        Top = 434
        Width = 28
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          956.909722222222200000
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
      object QRLabel103: TQRLabel
        Left = 78
        Top = 434
        Width = 128
        Height = 10
        Size.Values = (
          22.048611111111110000
          171.979166666666700000
          956.909722222222200000
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
      object QRLabel104: TQRLabel
        Left = 350
        Top = 434
        Width = 29
        Height = 10
        Size.Values = (
          22.048611111111110000
          771.701388888888900000
          956.909722222222200000
          63.940972222222220000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NCM-SH'
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
      object QRLabel105: TQRLabel
        Left = 407
        Top = 434
        Width = 25
        Height = 10
        Size.Values = (
          22.048611111111110000
          897.378472222222200000
          956.909722222222200000
          55.121527777777780000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CSOSN'
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
      object QRLabel106: TQRLabel
        Left = 437
        Top = 434
        Width = 20
        Height = 10
        Size.Values = (
          22.048611111111110000
          963.524305555555600000
          956.909722222222200000
          44.097222222222220000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CFOP'
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
      object QRLabel107: TQRLabel
        Left = 468
        Top = 434
        Width = 13
        Height = 10
        Size.Values = (
          22.048611111111110000
          1031.875000000000000000
          956.909722222222200000
          28.663194444444440000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UN.'
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
      object QRLabel108: TQRLabel
        Left = 497
        Top = 434
        Width = 47
        Height = 10
        Size.Values = (
          22.048611111111110000
          1095.815972222222000000
          956.909722222222200000
          103.628472222222200000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel109: TQRLabel
        Left = 554
        Top = 434
        Width = 46
        Height = 10
        Size.Values = (
          22.048611111111110000
          1221.493055555556000000
          956.909722222222200000
          101.423611111111100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR UNIT.'
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
        Left = 625
        Top = 434
        Width = 52
        Height = 10
        Size.Values = (
          22.048611111111110000
          1378.038194444444000000
          956.909722222222200000
          114.652777777777800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL.'
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
      object QRLabel111: TQRLabel
        Left = 696
        Top = 434
        Width = 31
        Height = 10
        Size.Values = (
          22.048611111111110000
          1534.583333333333000000
          956.909722222222200000
          68.350694444444440000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BC ICMS'
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
      object QRLabel112: TQRLabel
        Left = 767
        Top = 434
        Width = 44
        Height = 10
        Size.Values = (
          22.048611111111110000
          1691.128472222222000000
          956.909722222222200000
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel113: TQRLabel
        Left = 838
        Top = 434
        Width = 19
        Height = 19
        Size.Values = (
          42.333333333333340000
          1846.791666666667000000
          957.791666666666800000
          42.333333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ALIQ ICMS'
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
      object QRShape83: TQRShape
        Left = 860
        Top = 431
        Width = 28
        Height = 30
        Size.Values = (
          66.145833333333340000
          1897.062500000000000000
          949.854166666666800000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Brush.Color = 15724527
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel123: TQRLabel
        Left = 864
        Top = 434
        Width = 19
        Height = 19
        Size.Values = (
          42.333333333333340000
          1905.000000000000000000
          957.791666666666800000
          42.333333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'ALIQ IPI'
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
        Left = 442
        Top = 49
        Width = 97
        Height = 34
        Size.Values = (
          74.083333333333340000
          973.666666666666900000
          108.479166666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText22: TQRDBText
        Left = 448
        Top = 64
        Width = 85
        Height = 18
        Size.Values = (
          39.687500000000000000
          986.895833333333400000
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
      object QRLabel27: TQRLabel
        Left = 445
        Top = 53
        Width = 31
        Height = 10
        Size.Values = (
          22.048611111111110000
          981.163194444444400000
          116.857638888888900000
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
      object QRShape18: TQRShape
        Left = 538
        Top = 49
        Width = 226
        Height = 34
        Size.Values = (
          74.083333333333340000
          1185.333333333333000000
          108.479166666666700000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 541
        Top = 53
        Width = 28
        Height = 10
        Size.Values = (
          22.048611111111110000
          1192.829861111111000000
          116.857638888888900000
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
      object QRDBText23: TQRDBText
        Left = 544
        Top = 64
        Width = 216
        Height = 18
        Size.Values = (
          39.687500000000000000
          1198.562500000000000000
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
        Left = 426
        Top = 82
        Width = 174
        Height = 34
        Size.Values = (
          74.083333333333340000
          939.270833333333400000
          179.916666666666700000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 430
        Top = 85
        Width = 42
        Height = 10
        Size.Values = (
          22.048611111111110000
          948.090277777777800000
          187.413194444444400000
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
        Left = 432
        Top = 96
        Width = 162
        Height = 18
        Size.Values = (
          39.687500000000000000
          952.500000000000000000
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
        Left = 599
        Top = 82
        Width = 164
        Height = 34
        Size.Values = (
          74.083333333333340000
          1320.270833333333000000
          179.916666666666700000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText29: TQRDBText
        Left = 605
        Top = 96
        Width = 155
        Height = 18
        Size.Values = (
          39.687500000000000000
          1333.500000000000000000
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
      object QRLabel32: TQRLabel
        Left = 602
        Top = 85
        Width = 79
        Height = 10
        Size.Values = (
          22.048611111111110000
          1327.326388888889000000
          187.413194444444400000
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
      object QRShape16: TQRShape
        Left = 762
        Top = 17
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          1680.104166666667000000
          37.041666666666670000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText20: TQRDBText
        Left = 768
        Top = 31
        Width = 116
        Height = 18
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          68.791666666666680000
          256.645833333333400000)
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
      object QRLabel24: TQRLabel
        Left = 766
        Top = 20
        Width = 67
        Height = 10
        Size.Values = (
          22.048611111111110000
          1688.923611111111000000
          44.097222222222220000
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
      object QRShape20: TQRShape
        Left = 762
        Top = 49
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          1680.104166666667000000
          108.479166666666700000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText24: TQRDBText
        Left = 768
        Top = 64
        Width = 116
        Height = 18
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          140.229166666666700000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_DTSAIDA'
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
        Left = 766
        Top = 53
        Width = 97
        Height = 10
        Size.Values = (
          22.048611111111110000
          1688.923611111111000000
          116.857638888888900000
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
      object QRShape25: TQRShape
        Left = 762
        Top = 82
        Width = 126
        Height = 34
        Size.Values = (
          74.083333333333340000
          1680.104166666667000000
          179.916666666666700000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 766
        Top = 85
        Width = 56
        Height = 10
        Size.Values = (
          22.048611111111110000
          1688.923611111111000000
          187.413194444444400000
          123.472222222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HORA DA SAIDA'
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
      object QRDBText71: TQRDBText
        Left = 720
        Top = 358
        Width = 164
        Height = 18
        Size.Values = (
          39.687500000000000000
          1587.500000000000000000
          788.458333333333400000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TRANSPIE'
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
      object QRDBText72: TQRDBText
        Left = 384
        Top = 390
        Width = 155
        Height = 18
        Size.Values = (
          39.687500000000000000
          846.666666666666600000
          859.895833333333400000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VOLUMESNUM'
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
      object QRDBText73: TQRDBText
        Left = 246
        Top = 390
        Width = 130
        Height = 18
        Size.Values = (
          39.687500000000000000
          542.395833333333400000
          859.895833333333400000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_MARCA'
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
      object QRDBText74: TQRDBText
        Left = 92
        Top = 390
        Width = 145
        Height = 18
        Size.Values = (
          39.687500000000000000
          203.729166666666700000
          859.895833333333400000
          320.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_ESPECIE'
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
      object QRDBText75: TQRDBText
        Left = 6
        Top = 390
        Width = 78
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          859.895833333333400000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_VOLUMES'
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
        Left = 6
        Top = 236
        Width = 110
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          521.229166666666800000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel128: TQRLabel
        Left = 131
        Top = 236
        Width = 110
        Height = 18
        Size.Values = (
          39.687500000000000000
          288.395833333333400000
          521.229166666666800000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel129: TQRLabel
        Left = 553
        Top = 269
        Width = 139
        Height = 18
        Size.Values = (
          39.687500000000000000
          1219.729166666667000000
          592.666666666666800000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRLabel130: TQRLabel
        Left = 701
        Top = 236
        Width = 184
        Height = 18
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          521.229166666666800000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '999.999,99'
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
      object QRShape80: TQRShape
        Left = 547
        Top = 222
        Width = 148
        Height = 32
        Size.Values = (
          71.437500000000000000
          1206.500000000000000000
          489.479166666666700000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel131: TQRLabel
        Left = 551
        Top = 226
        Width = 86
        Height = 10
        Size.Values = (
          22.048611111111110000
          1214.878472222222000000
          498.298611111111100000
          189.618055555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TRIBUTOS (IBPT)'
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
        Left = 553
        Top = 236
        Width = 139
        Height = 18
        Size.Values = (
          39.687500000000000000
          1219.729166666667000000
          521.229166666666800000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TOTALTRIBUTOS'
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
      object QRLabel134: TQRLabel
        Left = 768
        Top = 96
        Width = 116
        Height = 18
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          211.666666666666700000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'HORA'
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
      object QRLabel136: TQRLabel
        Left = 6
        Top = 31
        Width = 528
        Height = 18
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
        Caption = 'NOME - BEFORE PRINT'
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
    object DetailBand1: TQRBand
      Left = 32
      Top = 780
      Width = 889
      Height = 16
      Frame.DrawBottom = True
      Frame.Style = psDashDot
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        35.277777777777780000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText55: TQRDBText
        Left = 434
        Top = 2
        Width = 29
        Height = 16
        Size.Values = (
          34.395833333333340000
          957.791666666666800000
          5.291666666666667000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText56: TQRDBText
        Left = 467
        Top = 2
        Width = 25
        Height = 16
        Size.Values = (
          34.395833333333340000
          1029.229166666667000000
          5.291666666666667000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_UNIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText57: TQRDBText
        Left = 496
        Top = 2
        Width = 54
        Height = 16
        Size.Values = (
          34.395833333333340000
          1092.729166666667000000
          5.291666666666667000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText58: TQRDBText
        Left = 553
        Top = 2
        Width = 67
        Height = 16
        Size.Values = (
          34.395833333333340000
          1219.729166666667000000
          5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_VALORUNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText59: TQRDBText
        Left = 624
        Top = 2
        Width = 67
        Height = 16
        Size.Values = (
          34.395833333333340000
          1375.833333333333000000
          5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_VALORTOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText60: TQRDBText
        Left = 695
        Top = 2
        Width = 67
        Height = 16
        Size.Values = (
          34.395833333333340000
          1531.937500000000000000
          5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_BASEICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText61: TQRDBText
        Left = 766
        Top = 2
        Width = 67
        Height = 16
        Size.Values = (
          34.395833333333340000
          1688.041666666667000000
          5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_VALORICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText62: TQRDBText
        Left = 836
        Top = 2
        Width = 23
        Height = 16
        Size.Values = (
          34.395833333333340000
          1844.145833333333000000
          5.291666666666667000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_ALIQICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRDBText69: TQRDBText
        Left = 863
        Top = 2
        Width = 23
        Height = 16
        Size.Values = (
          34.395833333333340000
          1902.354166666667000000
          5.291666666666667000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_ALIQIPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRLabel126: TQRLabel
        Left = 78
        Top = 2
        Width = 244
        Height = 16
        Size.Values = (
          34.395833333333330000
          171.979166666666700000
          5.291666666666667000
          537.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'DESCRICAO DO ITEM... VEJA BEFORE PRINT DA BAND'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRFrameline1: TQRFrameline
        Left = -5
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          -10.583333333333330000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline2: TQRFrameline
        Left = 70
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline3: TQRFrameline
        Left = 342
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          754.062500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline4: TQRFrameline
        Left = 397
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          875.770833333333400000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline5: TQRFrameline
        Left = 428
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          944.562500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline6: TQRFrameline
        Left = 460
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1013.354166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline7: TQRFrameline
        Left = 488
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1076.854166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline8: TQRFrameline
        Left = 546
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1203.854166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline9: TQRFrameline
        Left = 617
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1359.958333333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline10: TQRFrameline
        Left = 688
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1516.062500000000000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline11: TQRFrameline
        Left = 758
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1672.166666666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline12: TQRFrameline
        Left = 829
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1828.270833333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline13: TQRFrameline
        Left = 856
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1886.479166666667000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRFrameline14: TQRFrameline
        Left = 883
        Top = 0
        Width = 11
        Height = 17
        Size.Values = (
          37.041666666666670000
          1947.333333333333000000
          0.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
      end
      object QRDBText70: TQRDBText
        Left = 349
        Top = 2
        Width = 52
        Height = 16
        Size.Values = (
          34.395833333333340000
          769.937500000000000000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'NFI_CLASSFISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
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
      object QRLabel135: TQRLabel
        Left = 404
        Top = 2
        Width = 28
        Height = 16
        Size.Values = (
          34.395833333333340000
          891.645833333333200000
          5.291666666666667000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'CSOSN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel137: TQRLabel
        Left = 2
        Top = 2
        Width = 71
        Height = 16
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          5.291666666666667000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'PRODUTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 7
      end
    end
    object SummaryBand1: TQRBand
      Left = 32
      Top = 796
      Width = 889
      Height = 218
      Frame.DrawTop = True
      AlignToBottom = True
      BeforePrint = SummaryBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        480.659722222222200000
        1960.121527777778000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel114: TQRLabel
        Left = 4
        Top = 5
        Width = 113
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          11.024305555555560000
          249.149305555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#193'LCULO DO ISSQN'
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
      object QRShape74: TQRShape
        Left = 0
        Top = 20
        Width = 196
        Height = 34
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          44.979166666666670000
          431.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 194
        Top = 20
        Width = 232
        Height = 34
        Size.Values = (
          74.083333333333340000
          428.625000000000000000
          44.979166666666670000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 425
        Top = 20
        Width = 232
        Height = 34
        Size.Values = (
          74.083333333333340000
          936.625000000000100000
          44.979166666666670000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape77: TQRShape
        Left = 655
        Top = 20
        Width = 233
        Height = 34
        Size.Values = (
          74.083333333333340000
          1444.625000000000000000
          44.979166666666670000
          513.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel115: TQRLabel
        Left = 4
        Top = 24
        Width = 80
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          52.916666666666670000
          176.388888888888900000)
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 5
      end
      object QRLabel116: TQRLabel
        Left = 198
        Top = 24
        Width = 104
        Height = 10
        Size.Values = (
          22.048611111111110000
          436.562500000000000000
          52.916666666666670000
          229.305555555555600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL DOS SERVI'#199'OS'
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
        Left = 428
        Top = 24
        Width = 102
        Height = 10
        Size.Values = (
          22.048611111111110000
          943.680555555555600000
          52.916666666666670000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO DO ISSQN'
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
        Left = 659
        Top = 24
        Width = 85
        Height = 10
        Size.Values = (
          22.048611111111110000
          1453.003472222222000000
          52.916666666666670000
          187.413194444444400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL DO ISSQN'
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
        Left = 6
        Top = 35
        Width = 187
        Height = 18
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          76.729166666666680000
          412.750000000000100000)
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
      object QRDBText64: TQRDBText
        Left = 200
        Top = 35
        Width = 223
        Height = 18
        Size.Values = (
          39.687500000000000000
          441.854166666666700000
          76.729166666666680000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TOTALSERVICOS'
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
        Left = 431
        Top = 35
        Width = 223
        Height = 18
        Size.Values = (
          39.687500000000000000
          949.854166666666800000
          76.729166666666680000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_BASEISS'
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
        Left = 661
        Top = 35
        Width = 223
        Height = 18
        Size.Values = (
          39.687500000000000000
          1457.854166666667000000
          76.729166666666680000
          492.124999999999900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'NFE_TOTALISS'
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
        Left = 4
        Top = 60
        Width = 110
        Height = 16
        Size.Values = (
          35.277777777777780000
          8.819444444444444000
          132.291666666666700000
          242.534722222222200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DADOS ADICIONAIS'
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
      object QRShape78: TQRShape
        Left = 0
        Top = 76
        Width = 600
        Height = 142
        Size.Values = (
          312.208333333333300000
          0.000000000000000000
          166.687500000000000000
          1322.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape79: TQRShape
        Left = 599
        Top = 76
        Width = 290
        Height = 142
        Size.Values = (
          312.208333333333300000
          1320.270833333333000000
          166.687500000000000000
          640.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel120: TQRLabel
        Left = 4
        Top = 79
        Width = 124
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          174.184027777777800000
          273.402777777777800000)
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
        Left = 602
        Top = 79
        Width = 80
        Height = 10
        Size.Values = (
          22.048611111111110000
          1327.326388888889000000
          174.184027777777800000
          176.388888888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RESERVADO AO FISCO'
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
        Left = 4
        Top = 204
        Width = 116
        Height = 10
        Size.Values = (
          22.048611111111110000
          8.819444444444444000
          449.791666666666700000
          255.763888888888900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOCUMENTO SEM VALOR FISCAL'
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
        Left = 6
        Top = 92
        Width = 576
        Height = 113
        Size.Values = (
          248.708333333333300000
          13.229166666666670000
          203.729166666666700000
          1270.000000000000000000)
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
    end
    object QRLabel132: TQRLabel
      Left = 125
      Top = 941
      Width = 712
      Height = 161
      Size.Values = (
        354.982638888888900000
        275.607638888888900000
        2074.774305555556000000
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
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'NFE_ALIQICMSCREDSN,'
      'NFE_BAIRRO,'
      'NFE_BASEICMS,'
      'NFE_BASEICMSST,'
      'NFE_BASEISS,'
      'NFE_CEP,'
      'NFE_CFOP,'
      'NFE_CFOPDESC,'
      'NFE_CHAVEACESSO,'
      'NFE_CIDADE,'
      'NFE_CLIENTE,'
      'NFE_CNPJ,'
      'NFE_CODIGO,'
      'NFE_CPF,'
      'NFE_DESCVALOR,'
      'NFE_DTEMISSAO,'
      'NFE_DTSAIDA,'
      'NFE_ENDERECO,'
      'NFE_ENTRADASAIDA,'
      'NFE_ESPECIE,'
      'NFE_ESTADO,'
      'NFE_FONE1,'
      'NFE_FRETE,'
      'NFE_IE,'
      'NFE_INFOADICFISCO,'
      'NFE_MARCA,'
      'NFE_NOME,'
      'NFE_NUMERO,'
      'NFE_PEDIDOCLIENTE,'
      'NFE_PESOBRUTO,'
      'NFE_PESOLIQ,'
      'NFE_PROTOCOLO,'
      'NFE_PROTOCOLODH,'
      'NFE_SERIE,'
      'NFE_TOTALFCP,'
      'NFE_TOTALFCPST,'
      'NFE_TOTALICMS,'
      'NFE_TOTALICMSCREDSN,'
      'NFE_TOTALICMSST,'
      'NFE_TOTALIPI,'
      'NFE_TOTALISS,'
      'NFE_TOTALSERVICOS,'
      'NFE_TOTALTRIBUTOS,'
      'NFE_TOTALTRIBUTOSEST,'
      'NFE_TOTALTRIBUTOSFED,'
      'NFE_TOTALTRIBUTOSMUN,'
      'NFE_TRANSPCIDADE,'
      'NFE_TRANSPCNPJ,'
      'NFE_TRANSPENDERECO,'
      'NFE_TRANSPESTADO,'
      'NFE_TRANSPIE,'
      'NFE_TRANSPNOME,'
      'NFE_VALORDESPACES,'
      'NFE_VALORFRETE,'
      'NFE_VALORSEGURO,'
      'NFE_VALORTOTAL,'
      'NFE_VEICULOPLACA,'
      'NFE_VEICULOPLACAUF,'
      'NFE_VEICULORNTC,'
      'NFE_VENDA,'
      'NFE_VOLUMES,'
      'NFE_VOLUMESNUM,'
      'CPG_DESCRICAO'
      'from NFE'
      'left join CONDICOES on NFE_CONDICAO=CPG_CODIGO'
      'where NFE_CODIGO=:codigo')
    Left = 154
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1NFE_ALIQICMSCREDSN: TFMTBCDField
      FieldName = 'NFE_ALIQICMSCREDSN'
      Origin = '"NFE"."NFE_ALIQICMSCREDSN"'
      Precision = 18
    end
    object IBQuery1NFE_BAIRRO: TIBStringField
      FieldName = 'NFE_BAIRRO'
      Origin = '"NFE"."NFE_BAIRRO"'
      Size = 50
    end
    object IBQuery1NFE_BASEICMS: TFMTBCDField
      FieldName = 'NFE_BASEICMS'
      Origin = '"NFE"."NFE_BASEICMS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_BASEICMSST: TFMTBCDField
      FieldName = 'NFE_BASEICMSST'
      Origin = '"NFE"."NFE_BASEICMSST"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_BASEISS: TFMTBCDField
      FieldName = 'NFE_BASEISS'
      Origin = '"NFE"."NFE_BASEISS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_CEP: TIBStringField
      FieldName = 'NFE_CEP'
      Origin = '"NFE"."NFE_CEP"'
      Size = 10
    end
    object IBQuery1NFE_CFOP: TIntegerField
      FieldName = 'NFE_CFOP'
      Origin = '"NFE"."NFE_CFOP"'
    end
    object IBQuery1NFE_CFOPDESC: TIBStringField
      FieldName = 'NFE_CFOPDESC'
      Origin = '"NFE"."NFE_CFOPDESC"'
      Size = 120
    end
    object IBQuery1NFE_CHAVEACESSO: TIBStringField
      FieldName = 'NFE_CHAVEACESSO'
      Origin = '"NFE"."NFE_CHAVEACESSO"'
      Size = 50
    end
    object IBQuery1NFE_CIDADE: TIBStringField
      FieldName = 'NFE_CIDADE'
      Origin = '"NFE"."NFE_CIDADE"'
      Size = 50
    end
    object IBQuery1NFE_CLIENTE: TIntegerField
      FieldName = 'NFE_CLIENTE'
      Origin = '"NFE"."NFE_CLIENTE"'
      Required = True
    end
    object IBQuery1NFE_CNPJ: TIBStringField
      FieldName = 'NFE_CNPJ'
      Origin = '"NFE"."NFE_CNPJ"'
    end
    object IBQuery1NFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
      Origin = '"NFE"."NFE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'#39'.'#39'000'#39'.'#39'000'#39'.'#39'000'
    end
    object IBQuery1NFE_CPF: TIBStringField
      FieldName = 'NFE_CPF'
      Origin = '"NFE"."NFE_CPF"'
    end
    object IBQuery1NFE_DESCVALOR: TFMTBCDField
      FieldName = 'NFE_DESCVALOR'
      Origin = '"NFE"."NFE_DESCVALOR"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_DTEMISSAO: TDateField
      FieldName = 'NFE_DTEMISSAO'
      Origin = '"NFE"."NFE_DTEMISSAO"'
    end
    object IBQuery1NFE_DTSAIDA: TDateField
      FieldName = 'NFE_DTSAIDA'
      Origin = '"NFE"."NFE_DTSAIDA"'
    end
    object IBQuery1NFE_ENDERECO: TIBStringField
      FieldName = 'NFE_ENDERECO'
      Origin = '"NFE"."NFE_ENDERECO"'
      Size = 100
    end
    object IBQuery1NFE_ENTRADASAIDA: TIBStringField
      FieldName = 'NFE_ENTRADASAIDA'
      Origin = '"NFE"."NFE_ENTRADASAIDA"'
      Size = 1
    end
    object IBQuery1NFE_ESPECIE: TIBStringField
      FieldName = 'NFE_ESPECIE'
      Origin = '"NFE"."NFE_ESPECIE"'
      Size = 50
    end
    object IBQuery1NFE_ESTADO: TIBStringField
      FieldName = 'NFE_ESTADO'
      Origin = '"NFE"."NFE_ESTADO"'
      Size = 2
    end
    object IBQuery1NFE_FONE1: TIBStringField
      FieldName = 'NFE_FONE1'
      Origin = '"NFE"."NFE_FONE1"'
    end
    object IBQuery1NFE_FRETE: TIBStringField
      FieldName = 'NFE_FRETE'
      Origin = '"NFE"."NFE_FRETE"'
      Size = 50
    end
    object IBQuery1NFE_IE: TIBStringField
      FieldName = 'NFE_IE'
      Origin = '"NFE"."NFE_IE"'
    end
    object IBQuery1NFE_INFOADICFISCO: TWideMemoField
      FieldName = 'NFE_INFOADICFISCO'
      Origin = '"NFE"."NFE_INFOADICFISCO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1NFE_MARCA: TIBStringField
      FieldName = 'NFE_MARCA'
      Origin = '"NFE"."NFE_MARCA"'
      Size = 50
    end
    object IBQuery1NFE_NOME: TIBStringField
      FieldName = 'NFE_NOME'
      Origin = '"NFE"."NFE_NOME"'
      Size = 80
    end
    object IBQuery1NFE_NUMERO: TIBStringField
      FieldName = 'NFE_NUMERO'
      Origin = '"NFE"."NFE_NUMERO"'
      Size = 15
    end
    object IBQuery1NFE_PEDIDOCLIENTE: TIBStringField
      FieldName = 'NFE_PEDIDOCLIENTE'
      Origin = '"NFE"."NFE_PEDIDOCLIENTE"'
      Size = 15
    end
    object IBQuery1NFE_PESOBRUTO: TIBBCDField
      FieldName = 'NFE_PESOBRUTO'
      Origin = '"NFE"."NFE_PESOBRUTO"'
      Precision = 18
      Size = 3
    end
    object IBQuery1NFE_PESOLIQ: TIBBCDField
      FieldName = 'NFE_PESOLIQ'
      Origin = '"NFE"."NFE_PESOLIQ"'
      Precision = 18
      Size = 3
    end
    object IBQuery1NFE_PROTOCOLO: TIBStringField
      FieldName = 'NFE_PROTOCOLO'
      Origin = '"NFE"."NFE_PROTOCOLO"'
      Size = 40
    end
    object IBQuery1NFE_PROTOCOLODH: TIBStringField
      FieldName = 'NFE_PROTOCOLODH'
      Origin = '"NFE"."NFE_PROTOCOLODH"'
      Size = 30
    end
    object IBQuery1NFE_SERIE: TIntegerField
      FieldName = 'NFE_SERIE'
      Origin = '"NFE"."NFE_SERIE"'
    end
    object IBQuery1NFE_TOTALFCP: TFMTBCDField
      FieldName = 'NFE_TOTALFCP'
      Origin = '"NFE"."NFE_TOTALFCP"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALFCPST: TFMTBCDField
      FieldName = 'NFE_TOTALFCPST'
      Origin = '"NFE"."NFE_TOTALFCPST"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALICMS: TFMTBCDField
      FieldName = 'NFE_TOTALICMS'
      Origin = '"NFE"."NFE_TOTALICMS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_TOTALICMSCREDSN: TFMTBCDField
      FieldName = 'NFE_TOTALICMSCREDSN'
      Origin = '"NFE"."NFE_TOTALICMSCREDSN"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALICMSST: TFMTBCDField
      FieldName = 'NFE_TOTALICMSST'
      Origin = '"NFE"."NFE_TOTALICMSST"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_TOTALIPI: TFMTBCDField
      FieldName = 'NFE_TOTALIPI'
      Origin = '"NFE"."NFE_TOTALIPI"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALISS: TFMTBCDField
      FieldName = 'NFE_TOTALISS'
      Origin = '"NFE"."NFE_TOTALISS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_TOTALSERVICOS: TFMTBCDField
      FieldName = 'NFE_TOTALSERVICOS'
      Origin = '"NFE"."NFE_TOTALSERVICOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOS'
      Origin = '"NFE"."NFE_TOTALTRIBUTOS"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_TOTALTRIBUTOSEST: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSEST'
      Origin = '"NFE"."NFE_TOTALTRIBUTOSEST"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALTRIBUTOSFED: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSFED'
      Origin = '"NFE"."NFE_TOTALTRIBUTOSFED"'
      Precision = 18
    end
    object IBQuery1NFE_TOTALTRIBUTOSMUN: TFMTBCDField
      FieldName = 'NFE_TOTALTRIBUTOSMUN'
      Origin = '"NFE"."NFE_TOTALTRIBUTOSMUN"'
      Precision = 18
    end
    object IBQuery1NFE_TRANSPCIDADE: TIBStringField
      FieldName = 'NFE_TRANSPCIDADE'
      Origin = '"NFE"."NFE_TRANSPCIDADE"'
      Size = 50
    end
    object IBQuery1NFE_TRANSPCNPJ: TIBStringField
      FieldName = 'NFE_TRANSPCNPJ'
      Origin = '"NFE"."NFE_TRANSPCNPJ"'
    end
    object IBQuery1NFE_TRANSPENDERECO: TIBStringField
      FieldName = 'NFE_TRANSPENDERECO'
      Origin = '"NFE"."NFE_TRANSPENDERECO"'
      Size = 100
    end
    object IBQuery1NFE_TRANSPESTADO: TIBStringField
      FieldName = 'NFE_TRANSPESTADO'
      Origin = '"NFE"."NFE_TRANSPESTADO"'
      Size = 2
    end
    object IBQuery1NFE_TRANSPIE: TIBStringField
      FieldName = 'NFE_TRANSPIE'
      Origin = '"NFE"."NFE_TRANSPIE"'
    end
    object IBQuery1NFE_TRANSPNOME: TIBStringField
      FieldName = 'NFE_TRANSPNOME'
      Origin = '"NFE"."NFE_TRANSPNOME"'
      Size = 80
    end
    object IBQuery1NFE_VALORDESPACES: TFMTBCDField
      FieldName = 'NFE_VALORDESPACES'
      Origin = '"NFE"."NFE_VALORDESPACES"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_VALORFRETE: TFMTBCDField
      FieldName = 'NFE_VALORFRETE'
      Origin = '"NFE"."NFE_VALORFRETE"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_VALORSEGURO: TFMTBCDField
      FieldName = 'NFE_VALORSEGURO'
      Origin = '"NFE"."NFE_VALORSEGURO"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_VALORTOTAL: TFMTBCDField
      FieldName = 'NFE_VALORTOTAL'
      Origin = '"NFE"."NFE_VALORTOTAL"'
      currency = True
      Precision = 18
    end
    object IBQuery1NFE_VEICULOPLACA: TIBStringField
      FieldName = 'NFE_VEICULOPLACA'
      Origin = '"NFE"."NFE_VEICULOPLACA"'
      Size = 10
    end
    object IBQuery1NFE_VEICULOPLACAUF: TIBStringField
      FieldName = 'NFE_VEICULOPLACAUF'
      Origin = '"NFE"."NFE_VEICULOPLACAUF"'
      Size = 2
    end
    object IBQuery1NFE_VEICULORNTC: TIBStringField
      FieldName = 'NFE_VEICULORNTC'
      Origin = '"NFE"."NFE_VEICULORNTC"'
    end
    object IBQuery1NFE_VENDA: TIntegerField
      FieldName = 'NFE_VENDA'
      Origin = '"NFE"."NFE_VENDA"'
    end
    object IBQuery1NFE_VOLUMES: TIntegerField
      FieldName = 'NFE_VOLUMES'
      Origin = '"NFE"."NFE_VOLUMES"'
    end
    object IBQuery1NFE_VOLUMESNUM: TIBStringField
      FieldName = 'NFE_VOLUMESNUM'
      Origin = '"NFE"."NFE_VOLUMESNUM"'
      Size = 50
    end
    object IBQuery1CPG_DESCRICAO: TIBStringField
      FieldName = 'CPG_DESCRICAO'
      Origin = '"CONDICOES"."CPG_DESCRICAO"'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 154
    Top = 143
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
      'NFI_ALIQICMS,'
      'NFI_ALIQIPI,'
      'NFI_BASEICMS,'
      'NFI_CFOP,'
      'NFI_CLASSFISCAL,'
      'NFI_CODIGO,'
      'NFI_CODIGOFAB,'
      'NFI_COMPLEMENTO,'
      'NFI_CSTICMS,'
      'NFI_DESCRICAO,'
      'NFI_DESCVALOR,'
      'NFI_LOTE,'
      'NFI_ORIGEM,'
      'NFI_PRODUTO,'
      'NFI_QUANTIDADE,'
      'NFI_QUANTIDADETROCA,'
      'NFI_UNIDADE,'
      'NFI_VALORICMS,'
      'NFI_VALORTOTAL,'
      'NFI_VALORUNIT'
      'from NFEITENS'
      'where NFI_NOTA=:NFE_CODIGO')
    Left = 218
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NFE_CODIGO'
        ParamType = ptUnknown
      end>
    object IBQuery2NFI_ALIQICMS: TFMTBCDField
      FieldName = 'NFI_ALIQICMS'
      Origin = '"NFEITENS"."NFI_ALIQICMS"'
      Precision = 18
    end
    object IBQuery2NFI_ALIQIPI: TFMTBCDField
      FieldName = 'NFI_ALIQIPI'
      Origin = '"NFEITENS"."NFI_ALIQIPI"'
      Precision = 18
    end
    object IBQuery2NFI_BASEICMS: TFMTBCDField
      FieldName = 'NFI_BASEICMS'
      Origin = '"NFEITENS"."NFI_BASEICMS"'
      Precision = 18
    end
    object IBQuery2NFI_CFOP: TIntegerField
      FieldName = 'NFI_CFOP'
      Origin = '"NFEITENS"."NFI_CFOP"'
    end
    object IBQuery2NFI_CLASSFISCAL: TIBStringField
      FieldName = 'NFI_CLASSFISCAL'
      Origin = 'NFEITENS.NFI_CLASSFISCAL'
    end
    object IBQuery2NFI_CODIGO: TIntegerField
      FieldName = 'NFI_CODIGO'
      Origin = '"NFEITENS"."NFI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery2NFI_CODIGOFAB: TIBStringField
      FieldName = 'NFI_CODIGOFAB'
      Origin = '"NFEITENS"."NFI_CODIGOFAB"'
    end
    object IBQuery2NFI_COMPLEMENTO: TIBStringField
      FieldName = 'NFI_COMPLEMENTO'
      Origin = '"NFEITENS"."NFI_COMPLEMENTO"'
      Size = 50
    end
    object IBQuery2NFI_CSTICMS: TIntegerField
      FieldName = 'NFI_CSTICMS'
      Origin = '"NFEITENS"."NFI_CSTICMS"'
    end
    object IBQuery2NFI_DESCRICAO: TIBStringField
      FieldName = 'NFI_DESCRICAO'
      Origin = '"NFEITENS"."NFI_DESCRICAO"'
      Size = 100
    end
    object IBQuery2NFI_DESCVALOR: TFMTBCDField
      FieldName = 'NFI_DESCVALOR'
      Origin = '"NFEITENS"."NFI_DESCVALOR"'
      Precision = 18
    end
    object IBQuery2NFI_LOTE: TIBStringField
      FieldName = 'NFI_LOTE'
      Origin = '"NFEITENS"."NFI_LOTE"'
    end
    object IBQuery2NFI_ORIGEM: TIBStringField
      DisplayWidth = 120
      FieldName = 'NFI_ORIGEM'
      Origin = '"NFEITENS"."NFI_ORIGEM"'
      Size = 120
    end
    object IBQuery2NFI_PRODUTO: TIntegerField
      FieldName = 'NFI_PRODUTO'
      Origin = '"NFEITENS"."NFI_PRODUTO"'
      Required = True
    end
    object IBQuery2NFI_QUANTIDADE: TFMTBCDField
      FieldName = 'NFI_QUANTIDADE'
      Origin = '"NFEITENS"."NFI_QUANTIDADE"'
      Precision = 18
    end
    object IBQuery2NFI_QUANTIDADETROCA: TFMTBCDField
      FieldName = 'NFI_QUANTIDADETROCA'
      Origin = '"NFEITENS"."NFI_QUANTIDADETROCA"'
      Precision = 18
    end
    object IBQuery2NFI_UNIDADE: TIBStringField
      FieldName = 'NFI_UNIDADE'
      Origin = '"NFEITENS"."NFI_UNIDADE"'
      Size = 3
    end
    object IBQuery2NFI_VALORICMS: TFMTBCDField
      FieldName = 'NFI_VALORICMS'
      Origin = '"NFEITENS"."NFI_VALORICMS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
    end
    object IBQuery2NFI_VALORTOTAL: TFMTBCDField
      FieldName = 'NFI_VALORTOTAL'
      Origin = '"NFEITENS"."NFI_VALORTOTAL"'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object IBQuery2NFI_VALORUNIT: TFMTBCDField
      FieldName = 'NFI_VALORUNIT'
      Origin = '"NFEITENS"."NFI_VALORUNIT"'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 218
    Top = 143
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 154
    Top = 191
  end
  object IBQuery3: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select * from RECEBER')
    Left = 290
    Top = 95
    object IBQuery3REE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = '"RECEBER"."REE_DTVENCIMENTO"'
    end
    object IBQuery3REE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = '"RECEBER"."REE_VALOR"'
      Precision = 18
    end
  end
  object IBTransaction3: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 290
    Top = 143
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 218
    Top = 191
  end
end
