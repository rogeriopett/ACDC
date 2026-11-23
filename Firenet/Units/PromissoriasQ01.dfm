object FormPromissoriasQ01: TFormPromissoriasQ01
  Left = 192
  Top = 114
  Caption = 'Impress'#227'o de Notas Promiss'#243'rias'
  ClientHeight = 602
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = FDQuery1
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
    ReportTitle = 'Relat'#243'rios'
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
      Height = 326
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        862.541666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape2: TQRShape
        Left = 376
        Top = 217
        Width = 360
        Height = 104
        Size.Values = (
          275.166666666666700000
          994.833333333333400000
          574.145833333333400000
          952.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 4
        Top = 217
        Width = 369
        Height = 104
        Size.Values = (
          275.166666666666700000
          10.583333333333330000
          574.145833333333400000
          976.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText4: TQRDBText
        Left = 155
        Top = 40
        Width = 102
        Height = 25
        Size.Values = (
          66.145833333333340000
          410.104166666666800000
          105.833333333333300000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText5: TQRDBText
        Left = 16
        Top = 105
        Width = 408
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          277.812500000000000000
          1079.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_CEDENTE'
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
      object QRDBText6: TQRDBText
        Left = 8
        Top = 260
        Width = 305
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          687.916666666666800000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADOENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 560
        Top = 8
        Width = 169
        Height = 25
        Size.Values = (
          66.145833333333340000
          1481.666666666667000000
          21.166666666666670000
          447.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel1: TQRLabel
        Left = 124
        Top = 8
        Width = 268
        Height = 32
        Size.Values = (
          84.666666666666670000
          328.083333333333300000
          21.166666666666670000
          709.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOTA PROMISS'#211'RIA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
      object QRLabel2: TQRLabel
        Left = 498
        Top = 8
        Width = 57
        Height = 25
        Size.Values = (
          66.145833333333330000
          1317.625000000000000000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel5: TQRLabel
        Left = 16
        Top = 80
        Width = 353
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          211.666666666666700000
          933.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pagarei(emos) por esta '#250'nica via de NOTA PROMISS'#211'RIA '#224
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
      object QRLabel7: TQRLabel
        Left = 16
        Top = 128
        Width = 170
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          449.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ou a sua ordem, a quantia de'
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
      object QRLabel9: TQRLabel
        Left = 16
        Top = 168
        Width = 181
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          444.500000000000000000
          478.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'em moeda corrente deste pa'#237's.'
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
      object QRLabel10: TQRLabel
        Left = 444
        Top = 40
        Width = 111
        Height = 25
        Size.Values = (
          66.145833333333330000
          1174.750000000000000000
          105.833333333333300000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vencimento:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText2: TQRDBText
        Left = 560
        Top = 40
        Width = 169
        Height = 25
        Size.Values = (
          66.145833333333340000
          1481.666666666667000000
          105.833333333333300000
          447.145833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_DTVENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel11: TQRLabel
        Left = 124
        Top = 40
        Width = 22
        Height = 25
        Size.Values = (
          66.145833333333330000
          328.083333333333300000
          105.833333333333300000
          58.208333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel3: TQRLabel
        Left = 192
        Top = 128
        Width = 545
        Height = 17
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          338.666666666666700000
          1441.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'quantia por extenso'
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
      object QRDBText7: TQRDBText
        Left = 8
        Top = 241
        Width = 361
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          637.645833333333400000
          955.145833333333500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 321
        Top = 260
        Width = 48
        Height = 17
        Size.Values = (
          44.979166666666670000
          849.312499999999900000
          687.916666666666800000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADONUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 8
        Top = 279
        Width = 273
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          738.187500000000000000
          722.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADOBAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 505
        Top = 105
        Width = 232
        Height = 17
        Size.Values = (
          44.979166666666670000
          1336.145833333333000000
          277.812500000000000000
          613.833333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_CEDENTECNPJ'
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
      object QRLabel4: TQRLabel
        Left = 432
        Top = 105
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          277.812500000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF/CNPJ'
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
      object QRLabel6: TQRLabel
        Left = 8
        Top = 222
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          587.375000000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emitente:'
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
      object QRDBText11: TQRDBText
        Left = 288
        Top = 279
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          738.187500000000000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADOCEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 8
        Top = 297
        Width = 137
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          785.812500000000000000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADOCNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 152
        Top = 297
        Width = 129
        Height = 17
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          785.812500000000000000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_SACADOFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 380
        Top = 222
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          587.375000000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Avalistas:'
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
      object QRDBText14: TQRDBText
        Left = 380
        Top = 241
        Width = 354
        Height = 17
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          637.645833333333400000
          936.625000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_AVALISTA1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 380
        Top = 260
        Width = 354
        Height = 17
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          687.916666666666800000
          936.625000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_AVALISTA1CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 380
        Top = 279
        Width = 354
        Height = 17
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          738.187500000000000000
          936.625000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_AVALISTA2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 380
        Top = 297
        Width = 354
        Height = 17
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          785.812500000000000000
          936.625000000000100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRM_AVALISTA2CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 384
        Top = 192
        Width = 364
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          508.000000000000000000
          963.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ass:________________________________________________'
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
        ActiveInPreview = False
      end
    end
    object QRBand2: TQRBand
      Left = 26
      Top = 352
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
      object QRDBText1: TQRDBText
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
        ActiveInPreview = False
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
        ActiveInPreview = False
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
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 408
    Top = 392
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from PROMISSORIAS'
      '')
    Left = 344
    Top = 392
    object FDQuery1PRM_AVALISTA1: TStringField
      FieldName = 'PRM_AVALISTA1'
      Origin = 'PRM_AVALISTA1'
      Size = 80
    end
    object FDQuery1PRM_AVALISTA1CPF: TStringField
      FieldName = 'PRM_AVALISTA1CPF'
      Origin = 'PRM_AVALISTA1CPF'
    end
    object FDQuery1PRM_AVALISTA2: TStringField
      FieldName = 'PRM_AVALISTA2'
      Origin = 'PRM_AVALISTA2'
      Size = 80
    end
    object FDQuery1PRM_AVALISTA2CPF: TStringField
      FieldName = 'PRM_AVALISTA2CPF'
      Origin = 'PRM_AVALISTA2CPF'
    end
    object FDQuery1PRM_CEDENTE: TStringField
      FieldName = 'PRM_CEDENTE'
      Origin = 'PRM_CEDENTE'
      Size = 80
    end
    object FDQuery1PRM_CEDENTEBAIRRO: TStringField
      FieldName = 'PRM_CEDENTEBAIRRO'
      Origin = 'PRM_CEDENTEBAIRRO'
      Size = 50
    end
    object FDQuery1PRM_CEDENTECEP: TStringField
      FieldName = 'PRM_CEDENTECEP'
      Origin = 'PRM_CEDENTECEP'
      Size = 10
    end
    object FDQuery1PRM_CEDENTECNPJ: TStringField
      FieldName = 'PRM_CEDENTECNPJ'
      Origin = 'PRM_CEDENTECNPJ'
    end
    object FDQuery1PRM_CEDENTEENDERECO: TStringField
      FieldName = 'PRM_CEDENTEENDERECO'
      Origin = 'PRM_CEDENTEENDERECO'
      Size = 100
    end
    object FDQuery1PRM_CEDENTEFONE: TStringField
      FieldName = 'PRM_CEDENTEFONE'
      Origin = 'PRM_CEDENTEFONE'
    end
    object FDQuery1PRM_CEDENTENUMERO: TStringField
      FieldName = 'PRM_CEDENTENUMERO'
      Origin = 'PRM_CEDENTENUMERO'
      Size = 15
    end
    object FDQuery1PRM_CODIGO: TIntegerField
      FieldName = 'PRM_CODIGO'
      Origin = 'PRM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1PRM_DTATUALIZACAO: TDateField
      FieldName = 'PRM_DTATUALIZACAO'
      Origin = 'PRM_DTATUALIZACAO'
    end
    object FDQuery1PRM_DTCADASTRO: TDateField
      FieldName = 'PRM_DTCADASTRO'
      Origin = 'PRM_DTCADASTRO'
    end
    object FDQuery1PRM_DTVENCIMENTO: TDateField
      FieldName = 'PRM_DTVENCIMENTO'
      Origin = 'PRM_DTVENCIMENTO'
    end
    object FDQuery1PRM_HRATUALIZACAO: TTimeField
      FieldName = 'PRM_HRATUALIZACAO'
      Origin = 'PRM_HRATUALIZACAO'
    end
    object FDQuery1PRM_HRCADASTRO: TTimeField
      FieldName = 'PRM_HRCADASTRO'
      Origin = 'PRM_HRCADASTRO'
    end
    object FDQuery1PRM_MATRIZ: TStringField
      FieldName = 'PRM_MATRIZ'
      Origin = 'PRM_MATRIZ'
      Size = 1
    end
    object FDQuery1PRM_MULTIPLICADO: TStringField
      FieldName = 'PRM_MULTIPLICADO'
      Origin = 'PRM_MULTIPLICADO'
      Size = 1
    end
    object FDQuery1PRM_PARCELA: TIntegerField
      FieldName = 'PRM_PARCELA'
      Origin = 'PRM_PARCELA'
    end
    object FDQuery1PRM_PARCELATOTAL: TIntegerField
      FieldName = 'PRM_PARCELATOTAL'
      Origin = 'PRM_PARCELATOTAL'
    end
    object FDQuery1PRM_SACADO: TStringField
      FieldName = 'PRM_SACADO'
      Origin = 'PRM_SACADO'
      Size = 80
    end
    object FDQuery1PRM_SACADOBAIRRO: TStringField
      FieldName = 'PRM_SACADOBAIRRO'
      Origin = 'PRM_SACADOBAIRRO'
      Size = 50
    end
    object FDQuery1PRM_SACADOCEP: TStringField
      FieldName = 'PRM_SACADOCEP'
      Origin = 'PRM_SACADOCEP'
      Size = 10
    end
    object FDQuery1PRM_SACADOCNPJ: TStringField
      FieldName = 'PRM_SACADOCNPJ'
      Origin = 'PRM_SACADOCNPJ'
    end
    object FDQuery1PRM_SACADOENDERECO: TStringField
      FieldName = 'PRM_SACADOENDERECO'
      Origin = 'PRM_SACADOENDERECO'
      Size = 100
    end
    object FDQuery1PRM_SACADOFONE: TStringField
      FieldName = 'PRM_SACADOFONE'
      Origin = 'PRM_SACADOFONE'
    end
    object FDQuery1PRM_SACADONUMERO: TStringField
      FieldName = 'PRM_SACADONUMERO'
      Origin = 'PRM_SACADONUMERO'
      Size = 15
    end
    object FDQuery1PRM_STATUS: TStringField
      FieldName = 'PRM_STATUS'
      Origin = 'PRM_STATUS'
      Size = 1
    end
    object FDQuery1PRM_USUARIO: TStringField
      FieldName = 'PRM_USUARIO'
      Origin = 'PRM_USUARIO'
    end
    object FDQuery1PRM_VALOR: TFMTBCDField
      FieldName = 'PRM_VALOR'
      Origin = 'PRM_VALOR'
      Precision = 18
    end
    object FDQuery1PRM_VALORBAIXADO: TFMTBCDField
      FieldName = 'PRM_VALORBAIXADO'
      Origin = 'PRM_VALORBAIXADO'
      Precision = 18
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 280
    Top = 392
  end
end
