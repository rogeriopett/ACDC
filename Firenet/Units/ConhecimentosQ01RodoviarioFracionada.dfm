object FormConhecimentosQ01RodoviarioFracionada: TFormConhecimentosQ01RodoviarioFracionada
  Left = 0
  Top = 0
  Caption = 'FormConhecimentosQ01RodoviarioFracionada'
  ClientHeight = 786
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = -233
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = QYCte
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
    object TitleBand1: TQRBand
      Left = 26
      Top = 26
      Width = 741
      Height = 267
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        706.437500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object Shape16: TQRShape
        Left = 288
        Top = 128
        Width = 453
        Height = 58
        Size.Values = (
          153.458333333333300000
          762.000000000000000000
          338.666666666666700000
          1198.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape15: TQRShape
        Left = 622
        Top = 101
        Width = 119
        Height = 28
        Size.Values = (
          74.083333333333340000
          1645.708333333333000000
          267.229166666666700000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape14: TQRShape
        Left = 499
        Top = 101
        Width = 124
        Height = 28
        Size.Values = (
          74.083333333333340000
          1320.270833333333000000
          267.229166666666700000
          328.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape13: TQRShape
        Left = 447
        Top = 101
        Width = 53
        Height = 28
        Size.Values = (
          74.083333333333340000
          1182.687500000000000000
          267.229166666666700000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape12: TQRShape
        Left = 367
        Top = 101
        Width = 81
        Height = 28
        Size.Values = (
          74.083333333333340000
          971.020833333333400000
          267.229166666666700000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape11: TQRShape
        Left = 324
        Top = 101
        Width = 44
        Height = 28
        Size.Values = (
          74.083333333333340000
          857.250000000000000000
          267.229166666666700000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape10: TQRShape
        Left = 288
        Top = 101
        Width = 37
        Height = 28
        Size.Values = (
          74.083333333333340000
          762.000000000000000000
          267.229166666666700000
          97.895833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape9: TQRShape
        Left = 622
        Top = 74
        Width = 119
        Height = 28
        Size.Values = (
          74.083333333333340000
          1645.708333333333000000
          195.791666666666700000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape8: TQRShape
        Left = 288
        Top = 74
        Width = 335
        Height = 28
        Size.Values = (
          74.083333333333340000
          762.000000000000000000
          195.791666666666700000
          886.354166666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape7: TQRShape
        Left = 0
        Top = 74
        Width = 289
        Height = 112
        Size.Values = (
          296.333333333333400000
          0.000000000000000000
          195.791666666666700000
          764.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape17: TQRShape
        Left = 0
        Top = 185
        Width = 145
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          489.479166666666600000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape18: TQRShape
        Left = 288
        Top = 185
        Width = 453
        Height = 28
        Size.Values = (
          74.083333333333340000
          762.000000000000000000
          489.479166666666600000
          1198.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape19: TQRShape
        Left = 288
        Top = 212
        Width = 453
        Height = 28
        Size.Values = (
          74.083333333333340000
          762.000000000000000000
          560.916666666666800000
          1198.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape20: TQRShape
        Left = 144
        Top = 185
        Width = 145
        Height = 28
        Size.Values = (
          74.083333333333340000
          381.000000000000000000
          489.479166666666600000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape21: TQRShape
        Left = 0
        Top = 212
        Width = 145
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          560.916666666666800000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape22: TQRShape
        Left = 144
        Top = 212
        Width = 145
        Height = 28
        Size.Values = (
          74.083333333333340000
          381.000000000000000000
          560.916666666666800000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape23: TQRShape
        Left = 0
        Top = 239
        Width = 741
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          632.354166666666800000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object IMAGEM: TQRImage
        Left = 3
        Top = 79
        Width = 120
        Height = 62
        Size.Values = (
          164.041666666666700000
          7.937500000000000000
          209.020833333333300000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object QRLabel12: TQRLabel
        Left = 669
        Top = 76
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          1770.062500000000000000
          201.083333333333300000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MODAL'
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
      object QRLabel13: TQRLabel
        Left = 439
        Top = 75
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          1161.520833333333000000
          198.437500000000000000
          97.895833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DACTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 310
        Top = 90
        Width = 295
        Height = 11
        Size.Values = (
          29.104166666666670000
          820.208333333333200000
          238.125000000000000000
          780.520833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DOCUMENTO AUXILIAR DO CONHECIMENTO DE TRANSPORTE ELETR'#212'NICO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel15: TQRLabel
        Left = 649
        Top = 85
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          1717.145833333333000000
          224.895833333333300000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RODOVI'#193'RIO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 290
        Top = 103
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          767.291666666666800000
          272.520833333333300000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MODELO'
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
      object QRLabel17: TQRLabel
        Left = 326
        Top = 103
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          862.541666666666800000
          272.520833333333300000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE'
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
      object QRLabel18: TQRLabel
        Left = 369
        Top = 103
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          976.312500000000000000
          272.520833333333300000
          82.020833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO'
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
      object QRLabel19: TQRLabel
        Left = 449
        Top = 103
        Width = 24
        Height = 8
        Size.Values = (
          21.166666666666670000
          1187.979166666667000000
          272.520833333333300000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FOLHA'
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
      object QRLabel20: TQRLabel
        Left = 501
        Top = 103
        Width = 84
        Height = 8
        Size.Values = (
          21.166666666666670000
          1325.562500000000000000
          272.520833333333300000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA E HORA EMISS'#195'O'
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
      object QRLabel21: TQRLabel
        Left = 624
        Top = 103
        Width = 112
        Height = 8
        Size.Values = (
          21.166666666666670000
          1651.000000000000000000
          272.520833333333300000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSC. SUFRAMA DESTINAT'#193'RIO'
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
      object QRLabel22: TQRLabel
        Left = 290
        Top = 187
        Width = 448
        Height = 8
        Size.Values = (
          21.166666666666670000
          767.291666666666800000
          494.770833333333300000
          1185.333333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'CHAVE DE ACESSO PARA CONSULTA DE AUTENTICIDADE NO SITE WWW.CTE.F' +
          'AZENDA.GOV.BR OU DA SEFAZ AUTORIZADORA'
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
      object QRLabel23: TQRLabel
        Left = 290
        Top = 214
        Width = 139
        Height = 8
        Size.Values = (
          21.166666666666670000
          767.291666666666700000
          566.208333333333300000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PROTOCOLO DE AUTORIZA'#199#195'O DE USO'
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
      object QRLabel24: TQRLabel
        Left = 2
        Top = 187
        Width = 49
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          494.770833333333300000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO DO CT-E'
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
      object QRLabel25: TQRLabel
        Left = 146
        Top = 187
        Width = 64
        Height = 8
        Size.Values = (
          21.166666666666670000
          386.291666666666700000
          494.770833333333300000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO DO SERVI'#199'O'
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
      object QRLabel26: TQRLabel
        Left = 2
        Top = 214
        Width = 82
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          566.208333333333300000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOMADOR DO SERVI'#199'O'
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
      object QRLabel27: TQRLabel
        Left = 146
        Top = 214
        Width = 84
        Height = 8
        Size.Values = (
          21.166666666666670000
          386.291666666666700000
          566.208333333333300000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FORMA DE PAGAMENTO'
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
      object QRLabel28: TQRLabel
        Left = 2
        Top = 241
        Width = 124
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          637.645833333333300000
          328.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CFOP - NATUREZA DA PRESTA'#199#195'O'
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
      object QRDBText7: TQRDBText
        Left = 125
        Top = 79
        Width = 162
        Height = 62
        Size.Values = (
          164.041666666666700000
          330.729166666666700000
          209.020833333333300000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
      object QRLabel112: TQRLabel
        Left = 3
        Top = 143
        Width = 284
        Height = 41
        Size.Values = (
          108.479166666666700000
          7.937500000000000000
          378.354166666666700000
          751.416666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
      object QRAsBarcode1: TQRAsBarcode
        Left = 364
        Top = 132
        Width = 288
        Height = 50
        Size.Values = (
          132.291666666666700000
          963.083333333333300000
          349.250000000000000000
          762.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        BarcodeHeight = 50
        BarcodeWidth = 288
        Modul = 1
        Ratio = 2.000000000000000000
        Text = '42110603964470000163550010000020871242605882'
        Typ = bcCodeEAN128C
      end
      object QRDBText3: TQRDBText
        Left = 291
        Top = 113
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          769.937500000000000000
          298.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
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
      object QRDBText4: TQRDBText
        Left = 329
        Top = 113
        Width = 35
        Height = 15
        Size.Values = (
          39.687500000000000000
          870.479166666666800000
          298.979166666666700000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
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
      object QRDBText5: TQRDBText
        Left = 372
        Top = 113
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          984.249999999999900000
          298.979166666666700000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '000000000'
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 451
        Top = 113
        Width = 16
        Height = 15
        Size.Values = (
          39.687500000000000000
          1193.270833333333000000
          298.979166666666700000
          42.333333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel145: TQRLabel
        Left = 468
        Top = 113
        Width = 24
        Height = 15
        Size.Values = (
          39.687500000000000000
          1238.250000000000000000
          298.979166666666700000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'BRASIL'
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
      object QRDBText6: TQRDBText
        Left = 505
        Top = 113
        Width = 112
        Height = 15
        Size.Values = (
          39.687500000000000000
          1336.145833333333000000
          298.979166666666700000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DATAHORA'
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
        Left = 6
        Top = 197
        Width = 131
        Height = 15
        Size.Values = (
          39.687500000000000000
          15.875000000000000000
          521.229166666666800000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TIPOEMISSAO'
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
        Left = 150
        Top = 197
        Width = 131
        Height = 15
        Size.Values = (
          39.687500000000000000
          396.875000000000000000
          521.229166666666800000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TIPOSERVICO'
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
        Left = 6
        Top = 224
        Width = 131
        Height = 15
        Size.Values = (
          39.687500000000000000
          15.875000000000000000
          592.666666666666800000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADOR'
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
      object QRDBText11: TQRDBText
        Left = 150
        Top = 224
        Width = 131
        Height = 15
        Size.Values = (
          39.687500000000000000
          396.875000000000000000
          592.666666666666800000
          346.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_FORMAPAGTOSERVICO'
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
        Left = 304
        Top = 224
        Width = 201
        Height = 15
        Size.Values = (
          39.687500000000000000
          804.333333333333200000
          592.666666666666800000
          531.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_PROTOCOLO'
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
      object QRDBText80: TQRDBText
        Left = 512
        Top = 224
        Width = 201
        Height = 15
        Size.Values = (
          39.687500000000000000
          1354.666666666667000000
          592.666666666666800000
          531.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_PROTOCOLODH'
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
      object QRLabel146: TQRLabel
        Left = 304
        Top = 197
        Width = 417
        Height = 15
        Size.Values = (
          39.687500000000000000
          804.333333333333200000
          521.229166666666800000
          1103.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
      object QRDBText13: TQRDBText
        Left = 6
        Top = 251
        Width = 51
        Height = 15
        Size.Values = (
          39.687500000000000000
          15.875000000000000000
          664.104166666666800000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_CFOP'
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
      object QRDBText14: TQRDBText
        Left = 62
        Top = 251
        Width = 675
        Height = 15
        Size.Values = (
          39.687500000000000000
          164.041666666666700000
          664.104166666666800000
          1785.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_CFOPDESC'
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
      object Shape1: TQRShape
        Left = 0
        Top = 0
        Width = 741
        Height = 13
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          0.000000000000000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape2: TQRShape
        Left = 0
        Top = 12
        Width = 188
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          31.750000000000000000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape3: TQRShape
        Left = 0
        Top = 39
        Width = 188
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          103.187500000000000000
          497.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape4: TQRShape
        Left = 187
        Top = 12
        Width = 185
        Height = 55
        Size.Values = (
          145.520833333333300000
          494.770833333333400000
          31.750000000000000000
          489.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape5: TQRShape
        Left = 371
        Top = 12
        Width = 214
        Height = 55
        Size.Values = (
          145.520833333333300000
          981.604166666666800000
          31.750000000000000000
          566.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape6: TQRShape
        Left = 584
        Top = 12
        Width = 157
        Height = 55
        Size.Values = (
          145.520833333333300000
          1545.166666666667000000
          31.750000000000000000
          415.395833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 60
        Top = 1
        Width = 621
        Height = 11
        Size.Values = (
          29.104166666666670000
          158.750000000000000000
          2.645833333333333000
          1643.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'DECLARO QUE RECEBI OS VOLUMES DESTE CONHECIMENTO EM PERFEITO EST' +
          'ADO PELO QUE DOU POR CUMPRIDO O PRESENTE CONTRATO DE TRANSPORTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel2: TQRLabel
        Left = 2
        Top = 14
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          37.041666666666670000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
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
      object QRLabel3: TQRLabel
        Left = 2
        Top = 41
        Width = 11
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          108.479166666666700000
          29.104166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RG'
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
      object QRLabel4: TQRLabel
        Left = 236
        Top = 57
        Width = 86
        Height = 8
        Size.Values = (
          21.166666666666670000
          624.416666666666800000
          150.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ASSINATURA / CARIMBO'
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
      object QRLabel5: TQRLabel
        Left = 406
        Top = 14
        Width = 144
        Height = 8
        Size.Values = (
          21.166666666666670000
          1074.208333333333000000
          37.041666666666670000
          381.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#201'RMINO DA PRESTA'#199#195'O - DATA / HORA'
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
      object QRLabel6: TQRLabel
        Left = 412
        Top = 42
        Width = 133
        Height = 8
        Size.Values = (
          21.166666666666670000
          1090.083333333333000000
          111.125000000000000000
          351.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IN'#205'CIO DA PRESTA'#199#195'O - DATA / HORA'
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
      object QRLabel7: TQRLabel
        Left = 380
        Top = 58
        Width = 197
        Height = 8
        Size.Values = (
          21.166666666666670000
          1005.416666666667000000
          153.458333333333300000
          521.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '_____________________________  ___________________'
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
      object QRLabel8: TQRLabel
        Left = 380
        Top = 32
        Width = 197
        Height = 8
        Size.Values = (
          21.166666666666670000
          1005.416666666667000000
          84.666666666666680000
          521.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '_____________________________  ___________________'
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
      object QRLabel9: TQRLabel
        Left = 649
        Top = 13
        Width = 26
        Height = 15
        Size.Values = (
          39.687500000000000000
          1717.145833333333000000
          34.395833333333330000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CT-E'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 586
        Top = 32
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          1550.458333333333000000
          84.666666666666680000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NRO. DOCUMENTO'
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
      object QRLabel11: TQRLabel
        Left = 586
        Top = 49
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          1550.458333333333000000
          129.645833333333300000
          60.854166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE'
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
      object QRShape1: TQRShape
        Left = 3
        Top = 69
        Width = 734
        Height = 3
        Size.Values = (
          7.937500000000000000
          7.937500000000000000
          182.562500000000000000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDashDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 26
      Top = 293
      Width = 741
      Height = 465
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1230.312500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object Shape24: TQRShape
        Left = 0
        Top = 0
        Width = 370
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          0.000000000000000000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape25: TQRShape
        Left = 369
        Top = 0
        Width = 372
        Height = 28
        Size.Values = (
          74.083333333333340000
          976.312500000000000000
          0.000000000000000000
          984.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape26: TQRShape
        Left = 0
        Top = 27
        Width = 370
        Height = 84
        Size.Values = (
          222.250000000000000000
          0.000000000000000000
          71.437500000000000000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape27: TQRShape
        Left = 369
        Top = 27
        Width = 372
        Height = 84
        Size.Values = (
          222.250000000000000000
          976.312500000000000000
          71.437500000000000000
          984.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape28: TQRShape
        Left = 0
        Top = 110
        Width = 370
        Height = 84
        Size.Values = (
          222.250000000000000000
          0.000000000000000000
          291.041666666666700000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape29: TQRShape
        Left = 369
        Top = 110
        Width = 372
        Height = 84
        Size.Values = (
          222.250000000000000000
          976.312500000000000000
          291.041666666666700000
          984.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape30: TQRShape
        Left = 0
        Top = 193
        Width = 741
        Height = 52
        Size.Values = (
          137.583333333333300000
          0.000000000000000000
          510.645833333333300000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape31: TQRShape
        Left = 0
        Top = 244
        Width = 247
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          645.583333333333400000
          653.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape32: TQRShape
        Left = 246
        Top = 244
        Width = 247
        Height = 28
        Size.Values = (
          74.083333333333340000
          650.875000000000000000
          645.583333333333400000
          653.520833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape33: TQRShape
        Left = 492
        Top = 244
        Width = 249
        Height = 28
        Size.Values = (
          74.083333333333340000
          1301.750000000000000000
          645.583333333333400000
          658.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape34: TQRShape
        Left = 0
        Top = 341
        Width = 155
        Height = 55
        Size.Values = (
          145.520833333333300000
          0.000000000000000000
          902.229166666666800000
          410.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape35: TQRShape
        Left = 0
        Top = 271
        Width = 119
        Height = 55
        Size.Values = (
          145.520833333333300000
          0.000000000000000000
          717.020833333333400000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape36: TQRShape
        Left = 118
        Top = 271
        Width = 119
        Height = 55
        Size.Values = (
          145.520833333333300000
          312.208333333333400000
          717.020833333333400000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape37: TQRShape
        Left = 236
        Top = 271
        Width = 119
        Height = 55
        Size.Values = (
          145.520833333333300000
          624.416666666666800000
          717.020833333333400000
          314.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape38: TQRShape
        Left = 354
        Top = 271
        Width = 41
        Height = 55
        Size.Values = (
          145.520833333333300000
          936.625000000000000000
          717.020833333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape39: TQRShape
        Left = 394
        Top = 271
        Width = 37
        Height = 55
        Size.Values = (
          145.520833333333300000
          1042.458333333333000000
          717.020833333333400000
          97.895833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape40: TQRShape
        Left = 430
        Top = 271
        Width = 311
        Height = 28
        Size.Values = (
          74.083333333333340000
          1137.708333333333000000
          717.020833333333400000
          822.854166666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape41: TQRShape
        Left = 430
        Top = 298
        Width = 98
        Height = 28
        Size.Values = (
          74.083333333333340000
          1137.708333333333000000
          788.458333333333400000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape42: TQRShape
        Left = 527
        Top = 298
        Width = 107
        Height = 28
        Size.Values = (
          74.083333333333340000
          1394.354166666667000000
          788.458333333333400000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape43: TQRShape
        Left = 633
        Top = 298
        Width = 108
        Height = 28
        Size.Values = (
          74.083333333333340000
          1674.812500000000000000
          788.458333333333400000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape44: TQRShape
        Left = 154
        Top = 341
        Width = 155
        Height = 55
        Size.Values = (
          145.520833333333300000
          407.458333333333400000
          902.229166666666800000
          410.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape45: TQRShape
        Left = 308
        Top = 341
        Width = 155
        Height = 55
        Size.Values = (
          145.520833333333300000
          814.916666666666800000
          902.229166666666800000
          410.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape46: TQRShape
        Left = 462
        Top = 341
        Width = 155
        Height = 55
        Size.Values = (
          145.520833333333300000
          1222.375000000000000000
          902.229166666666800000
          410.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape47: TQRShape
        Left = 616
        Top = 341
        Width = 125
        Height = 28
        Size.Values = (
          74.083333333333340000
          1629.833333333333000000
          902.229166666666800000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape48: TQRShape
        Left = 616
        Top = 368
        Width = 125
        Height = 28
        Size.Values = (
          74.083333333333340000
          1629.833333333333000000
          973.666666666666900000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape49: TQRShape
        Left = 0
        Top = 411
        Width = 370
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          1087.437500000000000000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape50: TQRShape
        Left = 369
        Top = 411
        Width = 126
        Height = 28
        Size.Values = (
          74.083333333333340000
          976.312500000000000000
          1087.437500000000000000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape51: TQRShape
        Left = 494
        Top = 411
        Width = 61
        Height = 28
        Size.Values = (
          74.083333333333340000
          1307.041666666667000000
          1087.437500000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape52: TQRShape
        Left = 554
        Top = 411
        Width = 126
        Height = 28
        Size.Values = (
          74.083333333333340000
          1465.791666666667000000
          1087.437500000000000000
          333.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape53: TQRShape
        Left = 679
        Top = 411
        Width = 62
        Height = 28
        Size.Values = (
          74.083333333333340000
          1796.520833333334000000
          1087.437500000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape54: TQRShape
        Left = 0
        Top = 454
        Width = 370
        Height = 11
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          1201.208333333333000000
          978.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape58: TQRShape
        Left = 369
        Top = 454
        Width = 371
        Height = 11
        Size.Values = (
          29.104166666666670000
          976.312500000000000000
          1201.208333333333000000
          981.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel29: TQRLabel
        Left = 2
        Top = 2
        Width = 81
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          5.291666666666667000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IN'#205'CIO DA PRESTA'#199#195'O'
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
      object QRLabel30: TQRLabel
        Left = 371
        Top = 2
        Width = 92
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          5.291666666666667000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#201'RMINO DA PRESTA'#199#195'O'
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
      object QRLabel31: TQRLabel
        Left = 2
        Top = 34
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          89.958333333333330000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'REMETENTE:'
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
      object QRLabel32: TQRLabel
        Left = 2
        Top = 50
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          132.291666666666700000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O:'
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
      object QRLabel33: TQRLabel
        Left = 2
        Top = 66
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          174.625000000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'MUNIC'#205'PIO:'
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
      object QRLabel34: TQRLabel
        Left = 2
        Top = 82
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          216.958333333333400000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ/CPF:'
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
      object QRLabel35: TQRLabel
        Left = 2
        Top = 98
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          259.291666666666700000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'UF:'
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
      object QRLabel36: TQRLabel
        Left = 90
        Top = 98
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          238.125000000000000000
          259.291666666666700000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S:'
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
      object QRLabel37: TQRLabel
        Left = 233
        Top = 98
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666800000
          259.291666666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'FONE:'
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
      object QRLabel38: TQRLabel
        Left = 233
        Top = 82
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666700000
          216.958333333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'INSCR. EST.:'
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
      object QRLabel39: TQRLabel
        Left = 233
        Top = 66
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666800000
          174.625000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
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
      object QRLabel40: TQRLabel
        Left = 371
        Top = 34
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          89.958333333333330000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'DESTINAT'#193'RIO:'
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
      object QRLabel41: TQRLabel
        Left = 371
        Top = 50
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          132.291666666666700000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O:'
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
      object QRLabel42: TQRLabel
        Left = 371
        Top = 66
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          174.625000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'MUNIC'#205'PIO:'
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
      object QRLabel43: TQRLabel
        Left = 371
        Top = 82
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          216.958333333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ/CPF:'
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
      object QRLabel44: TQRLabel
        Left = 371
        Top = 98
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          259.291666666666700000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'UF:'
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
      object QRLabel45: TQRLabel
        Left = 459
        Top = 98
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1214.437500000000000000
          259.291666666666700000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S:'
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
      object QRLabel46: TQRLabel
        Left = 605
        Top = 98
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          259.291666666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'FONE:'
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
      object QRLabel47: TQRLabel
        Left = 605
        Top = 82
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          216.958333333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'INSCR. EST.:'
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
      object QRLabel48: TQRLabel
        Left = 605
        Top = 66
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          174.625000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
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
      object QRLabel49: TQRLabel
        Left = 2
        Top = 117
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          309.562500000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'EXPEDIDOR:'
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
      object QRLabel50: TQRLabel
        Left = 2
        Top = 133
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          351.895833333333400000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O:'
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
      object QRLabel51: TQRLabel
        Left = 2
        Top = 149
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          394.229166666666700000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'MUNIC'#205'PIO:'
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
      object QRLabel52: TQRLabel
        Left = 2
        Top = 165
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          436.562499999999900000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ/CPF:'
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
      object QRLabel53: TQRLabel
        Left = 2
        Top = 181
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          478.895833333333400000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'UF:'
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
      object QRLabel54: TQRLabel
        Left = 90
        Top = 181
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          238.125000000000000000
          478.895833333333300000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S:'
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
      object QRLabel55: TQRLabel
        Left = 233
        Top = 181
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666800000
          478.895833333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'FONE:'
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
      object QRLabel56: TQRLabel
        Left = 233
        Top = 165
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666700000
          436.562500000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'INSCR. EST.:'
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
      object QRLabel57: TQRLabel
        Left = 233
        Top = 149
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          616.479166666666800000
          394.229166666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
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
      object QRLabel58: TQRLabel
        Left = 371
        Top = 117
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          309.562500000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'RECEBEDOR:'
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
      object QRLabel59: TQRLabel
        Left = 371
        Top = 133
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          351.895833333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O:'
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
      object QRLabel60: TQRLabel
        Left = 371
        Top = 149
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          394.229166666666700000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'MUNIC'#205'PIO:'
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
      object QRLabel61: TQRLabel
        Left = 371
        Top = 165
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          436.562499999999900000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CNPJ/CPF:'
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
      object QRLabel62: TQRLabel
        Left = 371
        Top = 181
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666800000
          478.895833333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'UF:'
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
      object QRLabel63: TQRLabel
        Left = 459
        Top = 181
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1214.437500000000000000
          478.895833333333300000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S:'
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
      object QRLabel64: TQRLabel
        Left = 605
        Top = 181
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          478.895833333333300000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'FONE:'
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
      object QRLabel65: TQRLabel
        Left = 605
        Top = 165
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          436.562500000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'INSCR. EST.:'
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
      object QRLabel66: TQRLabel
        Left = 605
        Top = 149
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          1600.729166666667000000
          394.229166666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CEP:'
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
      object QRLabel67: TQRLabel
        Left = 2
        Top = 201
        Width = 84
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          531.812500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TOMADOR DO SERVI'#199'O:'
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
      object QRLabel68: TQRLabel
        Left = 2
        Top = 217
        Width = 43
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          574.145833333333300000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ENDERE'#199'O:'
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
      object QRLabel69: TQRLabel
        Left = 2
        Top = 233
        Width = 38
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          616.479166666666700000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
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
      object QRLabel70: TQRLabel
        Left = 371
        Top = 201
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          531.812500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'MUNIC'#205'PIO:'
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
      object QRLabel71: TQRLabel
        Left = 371
        Top = 233
        Width = 22
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          616.479166666666700000
          58.208333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE:'
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
      object QRLabel72: TQRLabel
        Left = 474
        Top = 217
        Width = 12
        Height = 8
        Size.Values = (
          21.166666666666670000
          1254.125000000000000000
          574.145833333333300000
          31.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UF:'
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
      object QRLabel73: TQRLabel
        Left = 546
        Top = 217
        Width = 20
        Height = 8
        Size.Values = (
          21.166666666666670000
          1444.625000000000000000
          574.145833333333300000
          52.916666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PA'#205'S:'
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
      object QRLabel74: TQRLabel
        Left = 615
        Top = 201
        Width = 18
        Height = 8
        Size.Values = (
          21.166666666666670000
          1627.187500000000000000
          531.812500000000000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CEP:'
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
      object QRLabel75: TQRLabel
        Left = 170
        Top = 233
        Width = 46
        Height = 8
        Size.Values = (
          21.166666666666670000
          449.791666666666700000
          616.479166666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSCR. EST.:'
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
      object QRLabel76: TQRLabel
        Left = 2
        Top = 246
        Width = 95
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          650.875000000000000000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRODUTO PREDOMINANTE'
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
      object QRLabel77: TQRLabel
        Left = 248
        Top = 246
        Width = 141
        Height = 8
        Size.Values = (
          21.166666666666670000
          656.166666666666700000
          650.875000000000000000
          373.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OUTRAS CARACTER'#205'STICAS DA CARGA'
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
      object QRLabel78: TQRLabel
        Left = 494
        Top = 246
        Width = 112
        Height = 8
        Size.Values = (
          21.166666666666670000
          1307.041666666667000000
          650.875000000000000000
          296.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL DA MERCADORIA'
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
      object QRLabel80: TQRLabel
        Left = 3
        Top = 329
        Width = 733
        Height = 11
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          870.479166666666800000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'COMPONENTES DO VALOR DA PRESTA'#199#195'O DE SERVI'#199'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel81: TQRLabel
        Left = 2
        Top = 343
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          907.520833333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
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
      object QRLabel82: TQRLabel
        Left = 3
        Top = 273
        Width = 47
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          722.312500000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO MEDIDA'
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
      object QRLabel83: TQRLabel
        Left = 59
        Top = 273
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          156.104166666666700000
          722.312500000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTD/UN.MEDIDA'
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
      object QRLabel84: TQRLabel
        Left = 432
        Top = 273
        Width = 85
        Height = 8
        Size.Values = (
          21.166666666666670000
          1143.000000000000000000
          722.312500000000000000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME DA SEGURADORA'
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
      object QRLabel85: TQRLabel
        Left = 356
        Top = 273
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          941.916666666666700000
          722.312500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CUBAGEM'
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
      object QRLabel86: TQRLabel
        Left = 396
        Top = 273
        Width = 32
        Height = 8
        Size.Values = (
          21.166666666666670000
          1047.750000000000000000
          722.312500000000000000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTD VOL'
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
      object QRLabel87: TQRLabel
        Left = 120
        Top = 273
        Width = 47
        Height = 8
        Size.Values = (
          21.166666666666670000
          317.500000000000000000
          722.312500000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO MEDIDA'
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
      object QRLabel88: TQRLabel
        Left = 177
        Top = 273
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          468.312500000000000000
          722.312500000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTD/UN.MEDIDA'
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
      object QRLabel89: TQRLabel
        Left = 238
        Top = 273
        Width = 47
        Height = 8
        Size.Values = (
          21.166666666666670000
          629.708333333333300000
          722.312500000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO MEDIDA'
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
      object QRLabel90: TQRLabel
        Left = 295
        Top = 273
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          780.520833333333300000
          722.312500000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QTD/UN.MEDIDA'
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
      object QRLabel91: TQRLabel
        Left = 432
        Top = 300
        Width = 55
        Height = 8
        Size.Values = (
          21.166666666666670000
          1143.000000000000000000
          793.750000000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RESPONS'#193'VEL'
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
      object QRLabel93: TQRLabel
        Left = 529
        Top = 300
        Width = 76
        Height = 8
        Size.Values = (
          21.166666666666670000
          1399.645833333333000000
          793.750000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DA APOLICE'
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
      object QRLabel94: TQRLabel
        Left = 635
        Top = 300
        Width = 90
        Height = 8
        Size.Values = (
          21.166666666666670000
          1680.104166666667000000
          793.750000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DA AVERBA'#199#195'O'
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
      object QRLabel95: TQRLabel
        Left = 122
        Top = 343
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          322.791666666666700000
          907.520833333333300000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR'
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
      object QRLabel96: TQRLabel
        Left = 156
        Top = 343
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          412.750000000000000000
          907.520833333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
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
      object QRLabel97: TQRLabel
        Left = 276
        Top = 343
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          730.250000000000000000
          907.520833333333300000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR'
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
      object QRLabel98: TQRLabel
        Left = 310
        Top = 343
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          820.208333333333300000
          907.520833333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
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
      object QRLabel99: TQRLabel
        Left = 430
        Top = 343
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          1137.708333333333000000
          907.520833333333300000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR'
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
      object QRLabel100: TQRLabel
        Left = 464
        Top = 343
        Width = 21
        Height = 8
        Size.Values = (
          21.166666666666670000
          1227.666666666667000000
          907.520833333333300000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME'
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
      object QRLabel101: TQRLabel
        Left = 585
        Top = 343
        Width = 25
        Height = 8
        Size.Values = (
          21.166666666666670000
          1547.812500000000000000
          907.520833333333300000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR'
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
      object QRLabel102: TQRLabel
        Left = 618
        Top = 343
        Width = 97
        Height = 8
        Size.Values = (
          21.166666666666670000
          1635.125000000000000000
          907.520833333333300000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR TOTAL DO SERVI'#199'O'
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
      object QRLabel103: TQRLabel
        Left = 618
        Top = 370
        Width = 69
        Height = 8
        Size.Values = (
          21.166666666666670000
          1635.125000000000000000
          978.958333333333300000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR A RECEBER'
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
      object QRLabel104: TQRLabel
        Left = 3
        Top = 399
        Width = 733
        Height = 11
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          1055.687500000000000000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'INFORMA'#199#213'ES RELATIVAS AO IMPOSTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel105: TQRLabel
        Left = 2
        Top = 413
        Width = 84
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1092.729166666667000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SITUA'#199#195'O TRIBUT'#193'RIA'
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
      object QRLabel106: TQRLabel
        Left = 371
        Top = 413
        Width = 68
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          1092.729166666667000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BASE DE C'#193'LCULO'
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
      object QRLabel107: TQRLabel
        Left = 496
        Top = 413
        Width = 38
        Height = 8
        Size.Values = (
          21.166666666666670000
          1312.333333333333000000
          1092.729166666667000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ALIQ. ICMS'
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
      object QRLabel108: TQRLabel
        Left = 556
        Top = 413
        Width = 44
        Height = 8
        Size.Values = (
          21.166666666666670000
          1471.083333333333000000
          1092.729166666667000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VALOR ICMS'
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
      object QRLabel109: TQRLabel
        Left = 681
        Top = 413
        Width = 40
        Height = 8
        Size.Values = (
          21.166666666666670000
          1801.812500000000000000
          1092.729166666667000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '% RED. BC.'
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
      object QRLabel110: TQRLabel
        Left = 4
        Top = 442
        Width = 733
        Height = 11
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          1169.458333333333000000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DOCUMENTOS ORIGIN'#193'RIOS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel111: TQRLabel
        Left = 2
        Top = 456
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1206.500000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TP. DOC'
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
      object QRLabel113: TQRLabel
        Left = 66
        Top = 456
        Width = 75
        Height = 8
        Size.Values = (
          21.166666666666670000
          174.625000000000000000
          1206.500000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF EMITENTE'
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
      object QRLabel114: TQRLabel
        Left = 202
        Top = 456
        Width = 80
        Height = 8
        Size.Values = (
          21.166666666666670000
          534.458333333333300000
          1206.500000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE/N'#186' DOCUMENTO'
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
      object QRLabel116: TQRLabel
        Left = 371
        Top = 456
        Width = 30
        Height = 8
        Size.Values = (
          21.166666666666670000
          981.604166666666700000
          1206.500000000000000000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TP. DOC'
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
      object QRLabel117: TQRLabel
        Left = 435
        Top = 456
        Width = 75
        Height = 8
        Size.Values = (
          21.166666666666670000
          1150.937500000000000000
          1206.500000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF EMITENTE'
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
      object QRLabel118: TQRLabel
        Left = 571
        Top = 456
        Width = 80
        Height = 8
        Size.Values = (
          21.166666666666670000
          1510.770833333333000000
          1206.500000000000000000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#201'RIE/N'#186' DOCUMENTO'
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
      object QRDBText15: TQRDBText
        Left = 6
        Top = 12
        Width = 359
        Height = 15
        Size.Values = (
          39.687500000000000000
          15.875000000000000000
          31.750000000000000000
          949.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMCIDADE'
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
        Left = 376
        Top = 12
        Width = 361
        Height = 15
        Size.Values = (
          39.687500000000000000
          994.833333333333200000
          31.750000000000000000
          955.145833333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESCIDADE'
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
        Left = 54
        Top = 31
        Width = 311
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          82.020833333333320000
          822.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
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
      object QRDBText19: TQRDBText
        Left = 54
        Top = 63
        Width = 171
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          166.687500000000000000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMCIDADE'
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
        Left = 54
        Top = 79
        Width = 171
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          209.020833333333300000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMCNPJ'
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
        Left = 54
        Top = 95
        Width = 35
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          251.354166666666700000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMESTADO'
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
      object QRLabel140: TQRLabel
        Left = 114
        Top = 95
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          301.625000000000000000
          251.354166666666700000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BRASIL'
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
      object QRDBText24: TQRDBText
        Left = 283
        Top = 95
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          251.354166666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMFONE'
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
      object QRDBText23: TQRDBText
        Left = 283
        Top = 79
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          209.020833333333300000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMIE'
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
        Left = 283
        Top = 63
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          166.687500000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_REMCEP'
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
        Left = 54
        Top = 114
        Width = 311
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          301.625000000000000000
          822.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
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
      object QRDBText35: TQRDBText
        Left = 54
        Top = 146
        Width = 171
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          386.291666666666700000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPCIDADE'
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
        Left = 54
        Top = 162
        Width = 171
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          428.625000000000000000
          452.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPCNPJ'
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
        Left = 54
        Top = 178
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          470.958333333333400000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPESTADO'
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
      object QRLabel142: TQRLabel
        Left = 114
        Top = 178
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          301.625000000000000000
          470.958333333333300000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BRASIL'
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
      object QRDBText40: TQRDBText
        Left = 283
        Top = 178
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          470.958333333333300000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPFONE'
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
      object QRDBText39: TQRDBText
        Left = 283
        Top = 162
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          428.625000000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPIE'
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
        Left = 283
        Top = 146
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333200000
          386.291666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_EXPCEP'
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
      object QRLabel143: TQRLabel
        Left = 484
        Top = 178
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          1280.583333333333000000
          470.958333333333300000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BRASIL'
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
      object QRDBText45: TQRDBText
        Left = 432
        Top = 178
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          470.958333333333400000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECESTADO'
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
        Left = 432
        Top = 163
        Width = 167
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          431.270833333333300000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECCNPJ'
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
        Left = 655
        Top = 162
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          428.625000000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECIE'
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
        Left = 655
        Top = 178
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          470.958333333333300000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECFONE'
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
        Left = 655
        Top = 146
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          386.291666666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECCEP'
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
        Left = 432
        Top = 146
        Width = 167
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          386.291666666666700000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_RECCIDADE'
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
      object QRDBText41: TQRDBText
        Left = 432
        Top = 114
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          301.625000000000000000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
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
      object QRLabel144: TQRLabel
        Left = 484
        Top = 95
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          1280.583333333333000000
          251.354166666666700000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BRASIL'
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
      object QRDBText29: TQRDBText
        Left = 432
        Top = 95
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          251.354166666666700000
          66.145833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESESTADO'
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
        Left = 432
        Top = 79
        Width = 167
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          209.020833333333300000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESCNPJ'
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
        Left = 432
        Top = 63
        Width = 167
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          166.687500000000000000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESCIDADE'
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
        Left = 432
        Top = 31
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          82.020833333333340000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
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
      object QRDBText30: TQRDBText
        Left = 655
        Top = 63
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          166.687500000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESCEP'
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
        Left = 655
        Top = 79
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          209.020833333333300000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESIE'
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
        Left = 655
        Top = 95
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          251.354166666666700000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_DESFONE'
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
        Left = 91
        Top = 197
        Width = 270
        Height = 15
        Size.Values = (
          39.687500000000000000
          240.770833333333300000
          521.229166666666800000
          714.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORNOME'
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
        Left = 51
        Top = 213
        Width = 334
        Height = 15
        Size.Values = (
          39.687500000000000000
          134.937500000000000000
          563.562500000000000000
          883.708333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORENDERECO'
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
      object QRDBText51: TQRDBText
        Left = 51
        Top = 229
        Width = 110
        Height = 15
        Size.Values = (
          39.687500000000000000
          134.937500000000000000
          605.895833333333400000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORCNPJ'
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
      object QRDBText52: TQRDBText
        Left = 222
        Top = 229
        Width = 110
        Height = 15
        Size.Values = (
          39.687500000000000000
          587.375000000000000000
          605.895833333333400000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORIE'
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
      object QRDBText53: TQRDBText
        Left = 398
        Top = 229
        Width = 110
        Height = 15
        Size.Values = (
          39.687500000000000000
          1053.041666666667000000
          605.895833333333400000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORFONE'
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
      object QRLabel173: TQRLabel
        Left = 399
        Top = 216
        Width = 11
        Height = 8
        Size.Values = (
          21.166666666666670000
          1055.687500000000000000
          571.500000000000000000
          29.104166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#186':'
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
      object QRDBText85: TQRDBText
        Left = 414
        Top = 213
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          1095.375000000000000000
          563.562500000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORNUMERO'
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
      object QRDBText55: TQRDBText
        Left = 414
        Top = 197
        Width = 195
        Height = 15
        Size.Values = (
          39.687500000000000000
          1095.375000000000000000
          521.229166666666800000
          515.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORCIDADE'
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
      object QRDBText54: TQRDBText
        Left = 491
        Top = 213
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          1299.104166666667000000
          563.562500000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORESTADO'
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
      object QRLabel148: TQRLabel
        Left = 572
        Top = 213
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          1513.416666666667000000
          563.562500000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'BRASIL'
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
      object QRDBText56: TQRDBText
        Left = 638
        Top = 197
        Width = 99
        Height = 15
        Size.Values = (
          39.687500000000000000
          1688.041666666667000000
          521.229166666666800000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOMADORCEP'
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
      object QRDBText58: TQRDBText
        Left = 255
        Top = 256
        Width = 234
        Height = 15
        Size.Values = (
          39.687500000000000000
          674.687500000000000000
          677.333333333333400000
          619.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_CARGAOUTRASCARAC'
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
      object QRDBText59: TQRDBText
        Left = 503
        Top = 256
        Width = 234
        Height = 15
        Size.Values = (
          39.687500000000000000
          1330.854166666667000000
          677.333333333333400000
          619.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_VALORNOTAS'
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
      object QRDBText57: TQRDBText
        Left = 7
        Top = 256
        Width = 234
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          677.333333333333400000
          619.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_PRODUTOPREDOM'
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
      object QRLabel151: TQRLabel
        Left = 2
        Top = 282
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          746.125000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel79: TQRLabel
        Left = 2
        Top = 296
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          783.166666666666800000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel156: TQRLabel
        Left = 2
        Top = 310
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          820.208333333333500000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel157: TQRLabel
        Left = 70
        Top = 310
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          820.208333333333500000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel155: TQRLabel
        Left = 70
        Top = 296
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          783.166666666666800000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel141: TQRLabel
        Left = 70
        Top = 282
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          746.125000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel158: TQRLabel
        Left = 120
        Top = 282
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          317.500000000000000000
          746.125000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel160: TQRLabel
        Left = 120
        Top = 296
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          317.500000000000000000
          783.166666666666800000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel162: TQRLabel
        Left = 120
        Top = 310
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          317.500000000000000000
          820.208333333333500000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel163: TQRLabel
        Left = 188
        Top = 310
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          497.416666666666700000
          820.208333333333500000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel161: TQRLabel
        Left = 188
        Top = 296
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          497.416666666666700000
          783.166666666666800000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel159: TQRLabel
        Left = 188
        Top = 282
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          497.416666666666700000
          746.125000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel164: TQRLabel
        Left = 238
        Top = 282
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          629.708333333333400000
          746.125000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel165: TQRLabel
        Left = 306
        Top = 282
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          809.625000000000000000
          746.125000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel167: TQRLabel
        Left = 306
        Top = 296
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          809.625000000000000000
          783.166666666666800000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRLabel166: TQRLabel
        Left = 238
        Top = 296
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          629.708333333333400000
          783.166666666666800000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel168: TQRLabel
        Left = 238
        Top = 310
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          629.708333333333400000
          820.208333333333500000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TIPO'
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
      object QRLabel169: TQRLabel
        Left = 306
        Top = 310
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          809.625000000000000000
          820.208333333333500000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QTDE/MED'
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
      object QRDBText60: TQRDBText
        Left = 437
        Top = 283
        Width = 300
        Height = 15
        Size.Values = (
          39.687500000000000000
          1156.229166666667000000
          748.770833333333400000
          793.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_SEGURONOME'
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
      object QRDBText61: TQRDBText
        Left = 437
        Top = 310
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          1156.229166666667000000
          820.208333333333500000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_SEGURO'
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
      object QRDBText62: TQRDBText
        Left = 533
        Top = 310
        Width = 95
        Height = 15
        Size.Values = (
          39.687500000000000000
          1410.229166666667000000
          820.208333333333500000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_SEGUROAPOLICE'
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
      object QRDBText63: TQRDBText
        Left = 639
        Top = 310
        Width = 95
        Height = 15
        Size.Values = (
          39.687500000000000000
          1690.687500000000000000
          820.208333333333500000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_SEGUROAVERBACAO'
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
      object QRLabel147: TQRLabel
        Left = 2
        Top = 354
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          936.625000000000000000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FRETE'
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
      object QRDBText84: TQRDBText
        Left = 52
        Top = 354
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          137.583333333333300000
          936.625000000000100000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_VALORFRETE'
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
      object QRLabel175: TQRLabel
        Left = 156
        Top = 354
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          412.750000000000000000
          936.625000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SEGURO'
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
      object QRDBText86: TQRDBText
        Left = 206
        Top = 354
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          545.041666666666800000
          936.625000000000100000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_VALORSEGURO'
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
      object QRLabel176: TQRLabel
        Left = 310
        Top = 354
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          820.208333333333300000
          936.625000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OUTROS'
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
      object QRDBText87: TQRDBText
        Left = 360
        Top = 354
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          952.500000000000000000
          936.625000000000100000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_VALOROUTROS'
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
        Left = 622
        Top = 380
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          1645.708333333333000000
          1005.416666666667000000
          304.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_VALORTOTAL'
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
      object QRDBText81: TQRDBText
        Left = 7
        Top = 423
        Width = 202
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          1119.187500000000000000
          534.458333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_ENQUADRAMENTO'
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
        Left = 375
        Top = 423
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          992.187500000000000000
          1119.187500000000000000
          304.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_BASEICMS'
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
      object QRDBText67: TQRDBText
        Left = 503
        Top = 423
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1330.854166666667000000
          1119.187500000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_ALIQICMS'
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
        Left = 567
        Top = 423
        Width = 98
        Height = 15
        Size.Values = (
          39.687500000000000000
          1500.187500000000000000
          1119.187500000000000000
          259.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_TOTALICMS'
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
      object QRDBText69: TQRDBText
        Left = 687
        Top = 423
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1817.687500000000000000
          1119.187500000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_ALIQICMSRED'
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
      object QRLabel92: TQRLabel
        Left = 622
        Top = 353
        Width = 115
        Height = 15
        Size.Values = (
          39.687500000000000000
          1645.708333333333000000
          933.979166666666600000
          304.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'OUTROS'
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
      object QRLabel119: TQRLabel
        Left = 54
        Top = 47
        Width = 311
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          124.354166666666700000
          822.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERECO, NUM, BAIRRO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel126: TQRLabel
        Left = 432
        Top = 47
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          124.354166666666700000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERECO, NUM, BAIRRO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel127: TQRLabel
        Left = 54
        Top = 130
        Width = 311
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          343.958333333333300000
          822.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERECO, NUM, BAIRRO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel128: TQRLabel
        Left = 432
        Top = 130
        Width = 305
        Height = 15
        Size.Values = (
          39.687500000000000000
          1143.000000000000000000
          343.958333333333300000
          806.979166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERECO, NUM, BAIRRO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 758
      Width = 741
      Height = 11
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        29.104166666666670000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRLabel149: TQRLabel
        Left = 2
        Top = -1
        Width = 46
        Height = 13
        Size.Values = (
          34.395833333333330000
          5.291666666666667000
          -2.645833333333333000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TIPO DOC'
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
      object QRLabel115: TQRLabel
        Left = 66
        Top = -1
        Width = 92
        Height = 13
        Size.Values = (
          34.395833333333330000
          174.625000000000000000
          -2.645833333333333000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SERIE / NUMDOCTO'
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
      object QRFrameline1: TQRFrameline
        Left = 364
        Top = 0
        Width = 10
        Height = 10
        Size.Values = (
          26.458333333333330000
          963.083333333333400000
          0.000000000000000000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object QRFrameline2: TQRFrameline
        Left = -4
        Top = 1
        Width = 9
        Height = 10
        Size.Values = (
          26.458333333333330000
          -10.583333333333330000
          2.645833333333333000
          23.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object QRFrameline3: TQRFrameline
        Left = 735
        Top = 1
        Width = 10
        Height = 10
        Size.Values = (
          26.458333333333330000
          1944.687500000000000000
          2.645833333333333000
          26.458333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
    end
    object SummaryBand1: TQRBand
      Left = 26
      Top = 769
      Width = 741
      Height = 171
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        452.437500000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object Shape62: TQRShape
        Left = 0
        Top = 15
        Width = 741
        Height = 34
        Size.Values = (
          89.958333333333320000
          0.000000000000000000
          39.687500000000000000
          1960.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape63: TQRShape
        Left = 0
        Top = 64
        Width = 110
        Height = 28
        Size.Values = (
          74.083333333333320000
          0.000000000000000000
          169.333333333333300000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape64: TQRShape
        Left = 109
        Top = 64
        Width = 110
        Height = 28
        Size.Values = (
          74.083333333333320000
          288.395833333333300000
          169.333333333333300000
          291.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape65: TQRShape
        Left = 218
        Top = 64
        Width = 125
        Height = 28
        Size.Values = (
          74.083333333333320000
          576.791666666666800000
          169.333333333333300000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape66: TQRShape
        Left = 342
        Top = 64
        Width = 399
        Height = 28
        Size.Values = (
          74.083333333333320000
          904.875000000000000000
          169.333333333333300000
          1055.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape79: TQRShape
        Left = 0
        Top = 91
        Width = 410
        Height = 14
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          240.770833333333300000
          1084.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape80: TQRShape
        Left = 409
        Top = 91
        Width = 332
        Height = 14
        Size.Values = (
          37.041666666666670000
          1082.145833333333000000
          240.770833333333300000
          878.416666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape81: TQRShape
        Left = 0
        Top = 104
        Width = 410
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          275.166666666666700000
          1084.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Shape82: TQRShape
        Left = 409
        Top = 104
        Width = 332
        Size.Values = (
          171.979166666666700000
          1082.145833333333000000
          275.166666666666700000
          878.416666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel120: TQRLabel
        Left = 4
        Top = 3
        Width = 733
        Height = 11
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          7.937500000000000000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'OBSERVA'#199#213'ES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel121: TQRLabel
        Left = 4
        Top = 52
        Width = 733
        Height = 11
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          137.583333333333300000
          1939.395833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'INFORMA'#199#213'ES ESPEC'#205'FICAS DO MODAL RODOVI'#193'RIO - CARGA FRACIONADA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel122: TQRLabel
        Left = 2
        Top = 66
        Width = 75
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          174.625000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RNTRC DA EMPRESA'
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
      object QRLabel123: TQRLabel
        Left = 111
        Top = 66
        Width = 18
        Height = 8
        Size.Values = (
          21.166666666666670000
          293.687500000000000000
          174.625000000000000000
          47.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CIOT'
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
      object QRLabel124: TQRLabel
        Left = 220
        Top = 66
        Width = 109
        Height = 8
        Size.Values = (
          21.166666666666670000
          582.083333333333300000
          174.625000000000000000
          288.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA PREVISTA DE ENTREGA'
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
      object QRLabel125: TQRLabel
        Left = 353
        Top = 74
        Width = 376
        Height = 8
        Size.Values = (
          21.166666666666670000
          933.979166666666700000
          195.791666666666700000
          994.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'ESTE CONHECIMENTO DE TRANSPORTE ATENDE A LEGISLA'#199#195'O DE TRANSPORT' +
          'E RODOVI'#193'RIO EM VIGOR'
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
      object QRLabel138: TQRLabel
        Left = 530
        Top = 93
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1402.291666666667000000
          246.062500000000000000
          235.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RESERVADO AO FISCO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRLabel139: TQRLabel
        Left = 130
        Top = 93
        Width = 151
        Height = 11
        Size.Values = (
          29.104166666666670000
          343.958333333333300000
          246.062500000000000000
          399.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'USO EXCLUSIVO DO EMISSOR DO CT-e'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText70: TQRDBText
        Left = 3
        Top = 17
        Width = 734
        Height = 29
        Size.Values = (
          76.729166666666680000
          7.937500000000000000
          44.979166666666670000
          1942.041666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CTE_OBSERVACOES'
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
      object QRLabel174: TQRLabel
        Left = 112
        Top = 20
        Width = 528
        Height = 25
        Size.Values = (
          66.145833333333330000
          296.333333333333300000
          52.916666666666670000
          1397.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'AMBIENTE DE HOMOLOGA'#199#195'O - SEM VALOR FISCAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRDBText71: TQRDBText
        Left = 233
        Top = 76
        Width = 88
        Height = 15
        Size.Values = (
          39.687500000000000000
          616.479166666666800000
          201.083333333333300000
          232.833333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_ENTREGADATAFINAL'
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
      object QRLabel150: TQRLabel
        Left = 2
        Top = 108
        Width = 405
        Height = 60
        Size.Values = (
          158.750000000000000000
          5.291666666666667000
          285.750000000000000000
          1071.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'infos'
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
      object QRDBText73: TQRDBText
        Left = 112
        Top = 76
        Width = 103
        Height = 15
        Size.Values = (
          39.687500000000000000
          296.333333333333300000
          201.083333333333300000
          272.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QYCte
        DataField = 'CTE_CIOT'
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
        Left = 4
        Top = 76
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          201.083333333333300000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBParametros
        DataField = 'PAR_RNTRC'
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
  object DataSource1: TDataSource
    DataSet = QYCte
    Left = 831
    Top = 168
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 831
    Top = 7
  end
  object TRCte: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 120
  end
  object QYCte: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCte
    SQL.Strings = (
      'select * from CTE'
      'left join CONDICOES on CTE_CONDICAO=CPG_CODIGO'
      'left join ICMS on CTE_CSTICMS=ICM_CODIGO'
      'left join VENDEDORES on CTE_VENDEDOR=VEN_CODIGO'
      'where CTE_CODIGO=:codigo'
      '')
    Left = 832
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCteCTE_AEREODIMENSAO: TStringField
      FieldName = 'CTE_AEREODIMENSAO'
      Origin = 'CTE_AEREODIMENSAO'
      Size = 14
    end
    object QYCteCTE_AEREODTPREVISTA: TDateField
      FieldName = 'CTE_AEREODTPREVISTA'
      Origin = 'CTE_AEREODTPREVISTA'
    end
    object QYCteCTE_AEREOIATA: TStringField
      FieldName = 'CTE_AEREOIATA'
      Origin = 'CTE_AEREOIATA'
      Size = 14
    end
    object QYCteCTE_AEREOIMP: TStringField
      FieldName = 'CTE_AEREOIMP'
      Origin = 'CTE_AEREOIMP'
      Size = 3
    end
    object QYCteCTE_AEREOMINUTA: TIntegerField
      FieldName = 'CTE_AEREOMINUTA'
      Origin = 'CTE_AEREOMINUTA'
    end
    object QYCteCTE_AEREONOMEFILIAL: TStringField
      FieldName = 'CTE_AEREONOMEFILIAL'
      Origin = 'CTE_AEREONOMEFILIAL'
    end
    object QYCteCTE_AEREOOCA: TStringField
      FieldName = 'CTE_AEREOOCA'
      Origin = 'CTE_AEREOOCA'
      Size = 14
    end
    object QYCteCTE_AEREOTARIFACLASSE: TStringField
      FieldName = 'CTE_AEREOTARIFACLASSE'
      Origin = 'CTE_AEREOTARIFACLASSE'
      Size = 25
    end
    object QYCteCTE_AEREOTARIFACODIGO: TIntegerField
      FieldName = 'CTE_AEREOTARIFACODIGO'
      Origin = 'CTE_AEREOTARIFACODIGO'
    end
    object QYCteCTE_AEREOTARIFAVALOR: TFMTBCDField
      FieldName = 'CTE_AEREOTARIFAVALOR'
      Origin = 'CTE_AEREOTARIFAVALOR'
      Precision = 18
    end
    object QYCteCTE_ALIQFCP: TFMTBCDField
      FieldName = 'CTE_ALIQFCP'
      Origin = 'CTE_ALIQFCP'
      Precision = 18
    end
    object QYCteCTE_ALIQICMS: TFMTBCDField
      FieldName = 'CTE_ALIQICMS'
      Origin = 'CTE_ALIQICMS'
      Precision = 18
    end
    object QYCteCTE_ALIQICMSINTER: TFMTBCDField
      FieldName = 'CTE_ALIQICMSINTER'
      Origin = 'CTE_ALIQICMSINTER'
      Precision = 18
    end
    object QYCteCTE_ALIQICMSINTERPART: TFMTBCDField
      FieldName = 'CTE_ALIQICMSINTERPART'
      Origin = 'CTE_ALIQICMSINTERPART'
      Precision = 18
    end
    object QYCteCTE_ALIQICMSRED: TFMTBCDField
      FieldName = 'CTE_ALIQICMSRED'
      Origin = 'CTE_ALIQICMSRED'
      Precision = 18
    end
    object QYCteCTE_ALIQICMSST: TFMTBCDField
      FieldName = 'CTE_ALIQICMSST'
      Origin = 'CTE_ALIQICMSST'
      Precision = 18
    end
    object QYCteCTE_ALIQICMSUFFIM: TFMTBCDField
      FieldName = 'CTE_ALIQICMSUFFIM'
      Origin = 'CTE_ALIQICMSUFFIM'
      Precision = 18
    end
    object QYCteCTE_ALIQTRIBUTOS: TFMTBCDField
      FieldName = 'CTE_ALIQTRIBUTOS'
      Origin = 'CTE_ALIQTRIBUTOS'
      Precision = 18
    end
    object QYCteCTE_BAIXADATA: TDateField
      FieldName = 'CTE_BAIXADATA'
      Origin = 'CTE_BAIXADATA'
    end
    object QYCteCTE_BAIXAPOR: TStringField
      FieldName = 'CTE_BAIXAPOR'
      Origin = 'CTE_BAIXAPOR'
    end
    object QYCteCTE_BASEICMS: TFMTBCDField
      FieldName = 'CTE_BASEICMS'
      Origin = 'CTE_BASEICMS'
      Precision = 18
    end
    object QYCteCTE_BASEICMSRED: TFMTBCDField
      FieldName = 'CTE_BASEICMSRED'
      Origin = 'CTE_BASEICMSRED'
      Precision = 18
    end
    object QYCteCTE_BASEICMSST: TFMTBCDField
      FieldName = 'CTE_BASEICMSST'
      Origin = 'CTE_BASEICMSST'
      Precision = 18
    end
    object QYCteCTE_CARGAOUTRASCARAC: TStringField
      FieldName = 'CTE_CARGAOUTRASCARAC'
      Origin = 'CTE_CARGAOUTRASCARAC'
      Size = 80
    end
    object QYCteCTE_CFOP: TIntegerField
      FieldName = 'CTE_CFOP'
      Origin = 'CTE_CFOP'
    end
    object QYCteCTE_CFOPDESC: TStringField
      FieldName = 'CTE_CFOPDESC'
      Origin = 'CTE_CFOPDESC'
      Size = 120
    end
    object QYCteCTE_CHAVEACESSO: TStringField
      FieldName = 'CTE_CHAVEACESSO'
      Origin = 'CTE_CHAVEACESSO'
      Size = 50
    end
    object QYCteCTE_CIOT: TStringField
      FieldName = 'CTE_CIOT'
      Origin = 'CTE_CIOT'
      Size = 15
    end
    object QYCteCTE_CODIGO: TIntegerField
      FieldName = 'CTE_CODIGO'
      Origin = 'CTE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCteCTE_CODIGONUMERICO: TStringField
      FieldName = 'CTE_CODIGONUMERICO'
      Origin = 'CTE_CODIGONUMERICO'
      Size = 10
    end
    object QYCteCTE_COMISSAO: TFMTBCDField
      FieldName = 'CTE_COMISSAO'
      Origin = 'CTE_COMISSAO'
      Precision = 18
    end
    object QYCteCTE_CONDICAO: TIntegerField
      FieldName = 'CTE_CONDICAO'
      Origin = 'CTE_CONDICAO'
      Required = True
    end
    object QYCteCTE_CONDICAOMEMO: TMemoField
      FieldName = 'CTE_CONDICAOMEMO'
      Origin = 'CTE_CONDICAOMEMO'
      BlobType = ftMemo
    end
    object QYCteCTE_CONSULTADA: TStringField
      FieldName = 'CTE_CONSULTADA'
      Origin = 'CTE_CONSULTADA'
      Size = 1
    end
    object QYCteCTE_CSTICMS: TIntegerField
      FieldName = 'CTE_CSTICMS'
      Origin = 'CTE_CSTICMS'
    end
    object QYCteCTE_CTEREFERENCIADO: TStringField
      FieldName = 'CTE_CTEREFERENCIADO'
      Origin = 'CTE_CTEREFERENCIADO'
      Size = 50
    end
    object QYCteCTE_DATAHORA: TStringField
      FieldName = 'CTE_DATAHORA'
      Origin = 'CTE_DATAHORA'
      Size = 30
    end
    object QYCteCTE_DATAHORACONTINGENCIA: TStringField
      FieldName = 'CTE_DATAHORACONTINGENCIA'
      Origin = 'CTE_DATAHORACONTINGENCIA'
      Size = 30
    end
    object QYCteCTE_DESBAIRRO: TStringField
      FieldName = 'CTE_DESBAIRRO'
      Origin = 'CTE_DESBAIRRO'
      Size = 50
    end
    object QYCteCTE_DESCEP: TStringField
      FieldName = 'CTE_DESCEP'
      Origin = 'CTE_DESCEP'
      Size = 10
    end
    object QYCteCTE_DESCIDADE: TStringField
      FieldName = 'CTE_DESCIDADE'
      Origin = 'CTE_DESCIDADE'
      Size = 50
    end
    object QYCteCTE_DESCIDADECODIGO: TIntegerField
      FieldName = 'CTE_DESCIDADECODIGO'
      Origin = 'CTE_DESCIDADECODIGO'
    end
    object QYCteCTE_DESCNPJ: TStringField
      FieldName = 'CTE_DESCNPJ'
      Origin = 'CTE_DESCNPJ'
    end
    object QYCteCTE_DESCOMPLEMENTO: TStringField
      FieldName = 'CTE_DESCOMPLEMENTO'
      Origin = 'CTE_DESCOMPLEMENTO'
      Size = 80
    end
    object QYCteCTE_DESCONTATO: TStringField
      FieldName = 'CTE_DESCONTATO'
      Origin = 'CTE_DESCONTATO'
      Size = 80
    end
    object QYCteCTE_DESCPF: TStringField
      FieldName = 'CTE_DESCPF'
      Origin = 'CTE_DESCPF'
    end
    object QYCteCTE_DESCPORC: TFMTBCDField
      FieldName = 'CTE_DESCPORC'
      Origin = 'CTE_DESCPORC'
      Precision = 18
    end
    object QYCteCTE_DESCVALOR: TFMTBCDField
      FieldName = 'CTE_DESCVALOR'
      Origin = 'CTE_DESCVALOR'
      Precision = 18
    end
    object QYCteCTE_DESENDERECO: TStringField
      FieldName = 'CTE_DESENDERECO'
      Origin = 'CTE_DESENDERECO'
      Size = 100
    end
    object QYCteCTE_DESESTADO: TStringField
      FieldName = 'CTE_DESESTADO'
      Origin = 'CTE_DESESTADO'
      Size = 2
    end
    object QYCteCTE_DESESTADOCODIGO: TIntegerField
      FieldName = 'CTE_DESESTADOCODIGO'
      Origin = 'CTE_DESESTADOCODIGO'
    end
    object QYCteCTE_DESFONE: TStringField
      FieldName = 'CTE_DESFONE'
      Origin = 'CTE_DESFONE'
    end
    object QYCteCTE_DESIE: TStringField
      FieldName = 'CTE_DESIE'
      Origin = 'CTE_DESIE'
    end
    object QYCteCTE_DESNOME: TStringField
      FieldName = 'CTE_DESNOME'
      Origin = 'CTE_DESNOME'
      Size = 80
    end
    object QYCteCTE_DESNUMERO: TStringField
      FieldName = 'CTE_DESNUMERO'
      Origin = 'CTE_DESNUMERO'
      Size = 15
    end
    object QYCteCTE_DESPAIS: TStringField
      FieldName = 'CTE_DESPAIS'
      Origin = 'CTE_DESPAIS'
      Size = 80
    end
    object QYCteCTE_DESPAISCODIGO: TIntegerField
      FieldName = 'CTE_DESPAISCODIGO'
      Origin = 'CTE_DESPAISCODIGO'
    end
    object QYCteCTE_DESTINATARIO: TIntegerField
      FieldName = 'CTE_DESTINATARIO'
      Origin = 'CTE_DESTINATARIO'
      Required = True
    end
    object QYCteCTE_DIAPREFERENCIAL: TIntegerField
      FieldName = 'CTE_DIAPREFERENCIAL'
      Origin = 'CTE_DIAPREFERENCIAL'
    end
    object QYCteCTE_DTATUALIZACAO: TDateField
      FieldName = 'CTE_DTATUALIZACAO'
      Origin = 'CTE_DTATUALIZACAO'
    end
    object QYCteCTE_DTCADASTRO: TDateField
      FieldName = 'CTE_DTCADASTRO'
      Origin = 'CTE_DTCADASTRO'
    end
    object QYCteCTE_DTEMISSAO: TDateField
      FieldName = 'CTE_DTEMISSAO'
      Origin = 'CTE_DTEMISSAO'
    end
    object QYCteCTE_ENTREGADATA: TStringField
      FieldName = 'CTE_ENTREGADATA'
      Origin = 'CTE_ENTREGADATA'
      Size = 30
    end
    object QYCteCTE_ENTREGADATAFINAL: TDateField
      FieldName = 'CTE_ENTREGADATAFINAL'
      Origin = 'CTE_ENTREGADATAFINAL'
    end
    object QYCteCTE_ENTREGADATAINICIAL: TDateField
      FieldName = 'CTE_ENTREGADATAINICIAL'
      Origin = 'CTE_ENTREGADATAINICIAL'
    end
    object QYCteCTE_ENTREGAHORA: TStringField
      FieldName = 'CTE_ENTREGAHORA'
      Origin = 'CTE_ENTREGAHORA'
      Size = 30
    end
    object QYCteCTE_ENTREGAHORAFINAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAFINAL'
      Origin = 'CTE_ENTREGAHORAFINAL'
    end
    object QYCteCTE_ENTREGAHORAINICIAL: TTimeField
      FieldName = 'CTE_ENTREGAHORAINICIAL'
      Origin = 'CTE_ENTREGAHORAINICIAL'
    end
    object QYCteCTE_ENVIADO: TStringField
      FieldName = 'CTE_ENVIADO'
      Origin = 'CTE_ENVIADO'
      Size = 1
    end
    object QYCteCTE_EXPBAIRRO: TStringField
      FieldName = 'CTE_EXPBAIRRO'
      Origin = 'CTE_EXPBAIRRO'
      Size = 50
    end
    object QYCteCTE_EXPCEP: TStringField
      FieldName = 'CTE_EXPCEP'
      Origin = 'CTE_EXPCEP'
      Size = 10
    end
    object QYCteCTE_EXPCIDADE: TStringField
      FieldName = 'CTE_EXPCIDADE'
      Origin = 'CTE_EXPCIDADE'
      Size = 50
    end
    object QYCteCTE_EXPCIDADECODIGO: TIntegerField
      FieldName = 'CTE_EXPCIDADECODIGO'
      Origin = 'CTE_EXPCIDADECODIGO'
    end
    object QYCteCTE_EXPCNPJ: TStringField
      FieldName = 'CTE_EXPCNPJ'
      Origin = 'CTE_EXPCNPJ'
    end
    object QYCteCTE_EXPCOMPLEMENTO: TStringField
      FieldName = 'CTE_EXPCOMPLEMENTO'
      Origin = 'CTE_EXPCOMPLEMENTO'
      Size = 80
    end
    object QYCteCTE_EXPCONTATO: TStringField
      FieldName = 'CTE_EXPCONTATO'
      Origin = 'CTE_EXPCONTATO'
      Size = 80
    end
    object QYCteCTE_EXPCPF: TStringField
      FieldName = 'CTE_EXPCPF'
      Origin = 'CTE_EXPCPF'
    end
    object QYCteCTE_EXPEDIDOR: TIntegerField
      FieldName = 'CTE_EXPEDIDOR'
      Origin = 'CTE_EXPEDIDOR'
      Required = True
    end
    object QYCteCTE_EXPENDERECO: TStringField
      FieldName = 'CTE_EXPENDERECO'
      Origin = 'CTE_EXPENDERECO'
      Size = 100
    end
    object QYCteCTE_EXPESTADO: TStringField
      FieldName = 'CTE_EXPESTADO'
      Origin = 'CTE_EXPESTADO'
      Size = 2
    end
    object QYCteCTE_EXPESTADOCODIGO: TIntegerField
      FieldName = 'CTE_EXPESTADOCODIGO'
      Origin = 'CTE_EXPESTADOCODIGO'
    end
    object QYCteCTE_EXPFONE: TStringField
      FieldName = 'CTE_EXPFONE'
      Origin = 'CTE_EXPFONE'
    end
    object QYCteCTE_EXPIE: TStringField
      FieldName = 'CTE_EXPIE'
      Origin = 'CTE_EXPIE'
    end
    object QYCteCTE_EXPNOME: TStringField
      FieldName = 'CTE_EXPNOME'
      Origin = 'CTE_EXPNOME'
      Size = 80
    end
    object QYCteCTE_EXPNUMERO: TStringField
      FieldName = 'CTE_EXPNUMERO'
      Origin = 'CTE_EXPNUMERO'
      Size = 15
    end
    object QYCteCTE_EXPPAIS: TStringField
      FieldName = 'CTE_EXPPAIS'
      Origin = 'CTE_EXPPAIS'
      Size = 80
    end
    object QYCteCTE_EXPPAISCODIGO: TIntegerField
      FieldName = 'CTE_EXPPAISCODIGO'
      Origin = 'CTE_EXPPAISCODIGO'
    end
    object QYCteCTE_FINALIDADE: TStringField
      FieldName = 'CTE_FINALIDADE'
      Origin = 'CTE_FINALIDADE'
      Size = 30
    end
    object QYCteCTE_FORMAPAGTO: TStringField
      FieldName = 'CTE_FORMAPAGTO'
      Origin = 'CTE_FORMAPAGTO'
      Size = 15
    end
    object QYCteCTE_FORMAPAGTOSERVICO: TStringField
      FieldName = 'CTE_FORMAPAGTOSERVICO'
      Origin = 'CTE_FORMAPAGTOSERVICO'
      Size = 15
    end
    object QYCteCTE_HRATUALIZACAO: TTimeField
      FieldName = 'CTE_HRATUALIZACAO'
      Origin = 'CTE_HRATUALIZACAO'
    end
    object QYCteCTE_HRCADASTRO: TTimeField
      FieldName = 'CTE_HRCADASTRO'
      Origin = 'CTE_HRCADASTRO'
    end
    object QYCteCTE_ICMSALIQUOTAUF: TFMTBCDField
      FieldName = 'CTE_ICMSALIQUOTAUF'
      Origin = 'CTE_ICMSALIQUOTAUF'
      Precision = 18
    end
    object QYCteCTE_ICMSPOR: TStringField
      FieldName = 'CTE_ICMSPOR'
      Origin = 'CTE_ICMSPOR'
      Size = 1
    end
    object QYCteCTE_INFOADICFISCO: TMemoField
      FieldName = 'CTE_INFOADICFISCO'
      Origin = 'CTE_INFOADICFISCO'
      BlobType = ftMemo
    end
    object QYCteCTE_LOTACAO: TStringField
      FieldName = 'CTE_LOTACAO'
      Origin = 'CTE_LOTACAO'
      Size = 10
    end
    object QYCteCTE_LOTE: TStringField
      FieldName = 'CTE_LOTE'
      Origin = 'CTE_LOTE'
    end
    object QYCteCTE_MODAL: TStringField
      FieldName = 'CTE_MODAL'
      Origin = 'CTE_MODAL'
      Size = 40
    end
    object QYCteCTE_MODELO: TIntegerField
      FieldName = 'CTE_MODELO'
      Origin = 'CTE_MODELO'
    end
    object QYCteCTE_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'CTE_MOTIVOCANCELAMENTO'
      Origin = 'CTE_MOTIVOCANCELAMENTO'
      Size = 120
    end
    object QYCteCTE_MOTIVOCONTINGENCIA: TStringField
      FieldName = 'CTE_MOTIVOCONTINGENCIA'
      Origin = 'CTE_MOTIVOCONTINGENCIA'
      Size = 120
    end
    object QYCteCTE_MOTIVOINUTILIZACAO: TStringField
      FieldName = 'CTE_MOTIVOINUTILIZACAO'
      Origin = 'CTE_MOTIVOINUTILIZACAO'
      Size = 120
    end
    object QYCteCTE_MOTORISTA: TStringField
      FieldName = 'CTE_MOTORISTA'
      Origin = 'CTE_MOTORISTA'
      Size = 80
    end
    object QYCteCTE_MOTORISTACPF: TStringField
      FieldName = 'CTE_MOTORISTACPF'
      Origin = 'CTE_MOTORISTACPF'
    end
    object QYCteCTE_MOVIMENTAFINANCEIRO: TStringField
      FieldName = 'CTE_MOVIMENTAFINANCEIRO'
      Origin = 'CTE_MOVIMENTAFINANCEIRO'
      Size = 1
    end
    object QYCteCTE_OBSERVACOES: TMemoField
      FieldName = 'CTE_OBSERVACOES'
      Origin = 'CTE_OBSERVACOES'
      BlobType = ftMemo
    end
    object QYCteCTE_PAGOPOR: TStringField
      FieldName = 'CTE_PAGOPOR'
      Origin = 'CTE_PAGOPOR'
      Size = 1
    end
    object QYCteCTE_PESOTOTAL: TFMTBCDField
      FieldName = 'CTE_PESOTOTAL'
      Origin = 'CTE_PESOTOTAL'
      Precision = 18
      Size = 3
    end
    object QYCteCTE_PRODUTOPREDOM: TStringField
      FieldName = 'CTE_PRODUTOPREDOM'
      Origin = 'CTE_PRODUTOPREDOM'
      Size = 50
    end
    object QYCteCTE_PROTOCOLO: TStringField
      FieldName = 'CTE_PROTOCOLO'
      Origin = 'CTE_PROTOCOLO'
      Size = 40
    end
    object QYCteCTE_PROTOCOLOCANC: TStringField
      FieldName = 'CTE_PROTOCOLOCANC'
      Origin = 'CTE_PROTOCOLOCANC'
      Size = 40
    end
    object QYCteCTE_PROTOCOLOCANCDH: TStringField
      FieldName = 'CTE_PROTOCOLOCANCDH'
      Origin = 'CTE_PROTOCOLOCANCDH'
      Size = 30
    end
    object QYCteCTE_PROTOCOLODH: TStringField
      FieldName = 'CTE_PROTOCOLODH'
      Origin = 'CTE_PROTOCOLODH'
      Size = 30
    end
    object QYCteCTE_PROTOCOLOINUT: TStringField
      FieldName = 'CTE_PROTOCOLOINUT'
      Origin = 'CTE_PROTOCOLOINUT'
      Size = 40
    end
    object QYCteCTE_PROTOCOLOINUTDH: TStringField
      FieldName = 'CTE_PROTOCOLOINUTDH'
      Origin = 'CTE_PROTOCOLOINUTDH'
      Size = 30
    end
    object QYCteCTE_RECBAIRRO: TStringField
      FieldName = 'CTE_RECBAIRRO'
      Origin = 'CTE_RECBAIRRO'
      Size = 50
    end
    object QYCteCTE_RECCEP: TStringField
      FieldName = 'CTE_RECCEP'
      Origin = 'CTE_RECCEP'
      Size = 10
    end
    object QYCteCTE_RECCIDADE: TStringField
      FieldName = 'CTE_RECCIDADE'
      Origin = 'CTE_RECCIDADE'
      Size = 50
    end
    object QYCteCTE_RECCIDADECODIGO: TIntegerField
      FieldName = 'CTE_RECCIDADECODIGO'
      Origin = 'CTE_RECCIDADECODIGO'
    end
    object QYCteCTE_RECCNPJ: TStringField
      FieldName = 'CTE_RECCNPJ'
      Origin = 'CTE_RECCNPJ'
    end
    object QYCteCTE_RECCOMPLEMENTO: TStringField
      FieldName = 'CTE_RECCOMPLEMENTO'
      Origin = 'CTE_RECCOMPLEMENTO'
      Size = 80
    end
    object QYCteCTE_RECCONTATO: TStringField
      FieldName = 'CTE_RECCONTATO'
      Origin = 'CTE_RECCONTATO'
      Size = 80
    end
    object QYCteCTE_RECCPF: TStringField
      FieldName = 'CTE_RECCPF'
      Origin = 'CTE_RECCPF'
    end
    object QYCteCTE_RECEBEDOR: TIntegerField
      FieldName = 'CTE_RECEBEDOR'
      Origin = 'CTE_RECEBEDOR'
      Required = True
    end
    object QYCteCTE_RECEBIDODATA: TDateField
      FieldName = 'CTE_RECEBIDODATA'
      Origin = 'CTE_RECEBIDODATA'
    end
    object QYCteCTE_RECEBIDOPOR: TStringField
      FieldName = 'CTE_RECEBIDOPOR'
      Origin = 'CTE_RECEBIDOPOR'
      Size = 80
    end
    object QYCteCTE_RECENDERECO: TStringField
      FieldName = 'CTE_RECENDERECO'
      Origin = 'CTE_RECENDERECO'
      Size = 100
    end
    object QYCteCTE_RECESTADO: TStringField
      FieldName = 'CTE_RECESTADO'
      Origin = 'CTE_RECESTADO'
      Size = 2
    end
    object QYCteCTE_RECESTADOCODIGO: TIntegerField
      FieldName = 'CTE_RECESTADOCODIGO'
      Origin = 'CTE_RECESTADOCODIGO'
    end
    object QYCteCTE_RECFONE: TStringField
      FieldName = 'CTE_RECFONE'
      Origin = 'CTE_RECFONE'
    end
    object QYCteCTE_RECIBO: TStringField
      FieldName = 'CTE_RECIBO'
      Origin = 'CTE_RECIBO'
      Size = 40
    end
    object QYCteCTE_RECIBODH: TStringField
      FieldName = 'CTE_RECIBODH'
      Origin = 'CTE_RECIBODH'
      Size = 30
    end
    object QYCteCTE_RECIE: TStringField
      FieldName = 'CTE_RECIE'
      Origin = 'CTE_RECIE'
    end
    object QYCteCTE_RECNOME: TStringField
      FieldName = 'CTE_RECNOME'
      Origin = 'CTE_RECNOME'
      Size = 80
    end
    object QYCteCTE_RECNUMERO: TStringField
      FieldName = 'CTE_RECNUMERO'
      Origin = 'CTE_RECNUMERO'
      Size = 15
    end
    object QYCteCTE_RECPAIS: TStringField
      FieldName = 'CTE_RECPAIS'
      Origin = 'CTE_RECPAIS'
      Size = 80
    end
    object QYCteCTE_RECPAISCODIGO: TIntegerField
      FieldName = 'CTE_RECPAISCODIGO'
      Origin = 'CTE_RECPAISCODIGO'
    end
    object QYCteCTE_REFERENCIA: TStringField
      FieldName = 'CTE_REFERENCIA'
      Origin = 'CTE_REFERENCIA'
    end
    object QYCteCTE_REMBAIRRO: TStringField
      FieldName = 'CTE_REMBAIRRO'
      Origin = 'CTE_REMBAIRRO'
      Size = 50
    end
    object QYCteCTE_REMCEP: TStringField
      FieldName = 'CTE_REMCEP'
      Origin = 'CTE_REMCEP'
      Size = 10
    end
    object QYCteCTE_REMCIDADE: TStringField
      FieldName = 'CTE_REMCIDADE'
      Origin = 'CTE_REMCIDADE'
      Size = 50
    end
    object QYCteCTE_REMCIDADECODIGO: TIntegerField
      FieldName = 'CTE_REMCIDADECODIGO'
      Origin = 'CTE_REMCIDADECODIGO'
    end
    object QYCteCTE_REMCNPJ: TStringField
      FieldName = 'CTE_REMCNPJ'
      Origin = 'CTE_REMCNPJ'
    end
    object QYCteCTE_REMCOMPLEMENTO: TStringField
      FieldName = 'CTE_REMCOMPLEMENTO'
      Origin = 'CTE_REMCOMPLEMENTO'
      Size = 80
    end
    object QYCteCTE_REMCONTATO: TStringField
      FieldName = 'CTE_REMCONTATO'
      Origin = 'CTE_REMCONTATO'
      Size = 80
    end
    object QYCteCTE_REMCPF: TStringField
      FieldName = 'CTE_REMCPF'
      Origin = 'CTE_REMCPF'
    end
    object QYCteCTE_REMENDERECO: TStringField
      FieldName = 'CTE_REMENDERECO'
      Origin = 'CTE_REMENDERECO'
      Size = 100
    end
    object QYCteCTE_REMESTADO: TStringField
      FieldName = 'CTE_REMESTADO'
      Origin = 'CTE_REMESTADO'
      Size = 2
    end
    object QYCteCTE_REMESTADOCODIGO: TIntegerField
      FieldName = 'CTE_REMESTADOCODIGO'
      Origin = 'CTE_REMESTADOCODIGO'
    end
    object QYCteCTE_REMETENTE: TIntegerField
      FieldName = 'CTE_REMETENTE'
      Origin = 'CTE_REMETENTE'
      Required = True
    end
    object QYCteCTE_REMFONE: TStringField
      FieldName = 'CTE_REMFONE'
      Origin = 'CTE_REMFONE'
    end
    object QYCteCTE_REMIE: TStringField
      FieldName = 'CTE_REMIE'
      Origin = 'CTE_REMIE'
    end
    object QYCteCTE_REMNOME: TStringField
      FieldName = 'CTE_REMNOME'
      Origin = 'CTE_REMNOME'
      Size = 80
    end
    object QYCteCTE_REMNUMERO: TStringField
      FieldName = 'CTE_REMNUMERO'
      Origin = 'CTE_REMNUMERO'
      Size = 15
    end
    object QYCteCTE_REMPAIS: TStringField
      FieldName = 'CTE_REMPAIS'
      Origin = 'CTE_REMPAIS'
      Size = 80
    end
    object QYCteCTE_REMPAISCODIGO: TIntegerField
      FieldName = 'CTE_REMPAISCODIGO'
      Origin = 'CTE_REMPAISCODIGO'
    end
    object QYCteCTE_RETIRA: TStringField
      FieldName = 'CTE_RETIRA'
      Origin = 'CTE_RETIRA'
      Size = 1
    end
    object QYCteCTE_RETIRADETALHES: TStringField
      FieldName = 'CTE_RETIRADETALHES'
      Origin = 'CTE_RETIRADETALHES'
      Size = 120
    end
    object QYCteCTE_SEGURO: TStringField
      FieldName = 'CTE_SEGURO'
      Origin = 'CTE_SEGURO'
    end
    object QYCteCTE_SEGUROAPOLICE: TStringField
      FieldName = 'CTE_SEGUROAPOLICE'
      Origin = 'CTE_SEGUROAPOLICE'
    end
    object QYCteCTE_SEGUROAVERBACAO: TStringField
      FieldName = 'CTE_SEGUROAVERBACAO'
      Origin = 'CTE_SEGUROAVERBACAO'
    end
    object QYCteCTE_SEGURONOME: TStringField
      FieldName = 'CTE_SEGURONOME'
      Origin = 'CTE_SEGURONOME'
      Size = 80
    end
    object QYCteCTE_SEGUROVALOR: TFMTBCDField
      FieldName = 'CTE_SEGUROVALOR'
      Origin = 'CTE_SEGUROVALOR'
      Precision = 18
    end
    object QYCteCTE_SERIE: TIntegerField
      FieldName = 'CTE_SERIE'
      Origin = 'CTE_SERIE'
    end
    object QYCteCTE_STATUS: TStringField
      FieldName = 'CTE_STATUS'
      Origin = 'CTE_STATUS'
      Size = 1
    end
    object QYCteCTE_TIPOCTE: TStringField
      FieldName = 'CTE_TIPOCTE'
      Origin = 'CTE_TIPOCTE'
      Size = 40
    end
    object QYCteCTE_TIPOEMISSAO: TStringField
      FieldName = 'CTE_TIPOEMISSAO'
      Origin = 'CTE_TIPOEMISSAO'
      Size = 40
    end
    object QYCteCTE_TIPOSERVICO: TStringField
      FieldName = 'CTE_TIPOSERVICO'
      Origin = 'CTE_TIPOSERVICO'
      Size = 40
    end
    object QYCteCTE_TOMADOR: TStringField
      FieldName = 'CTE_TOMADOR'
      Origin = 'CTE_TOMADOR'
    end
    object QYCteCTE_TOMADORBAIRRO: TStringField
      FieldName = 'CTE_TOMADORBAIRRO'
      Origin = 'CTE_TOMADORBAIRRO'
      Size = 50
    end
    object QYCteCTE_TOMADORCEP: TStringField
      FieldName = 'CTE_TOMADORCEP'
      Origin = 'CTE_TOMADORCEP'
      Size = 10
    end
    object QYCteCTE_TOMADORCIDADE: TStringField
      FieldName = 'CTE_TOMADORCIDADE'
      Origin = 'CTE_TOMADORCIDADE'
      Size = 50
    end
    object QYCteCTE_TOMADORCIDADECODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCIDADECODIGO'
      Origin = 'CTE_TOMADORCIDADECODIGO'
    end
    object QYCteCTE_TOMADORCNPJ: TStringField
      FieldName = 'CTE_TOMADORCNPJ'
      Origin = 'CTE_TOMADORCNPJ'
    end
    object QYCteCTE_TOMADORCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORCODIGO'
      Origin = 'CTE_TOMADORCODIGO'
    end
    object QYCteCTE_TOMADORCOMPLEMENTO: TStringField
      FieldName = 'CTE_TOMADORCOMPLEMENTO'
      Origin = 'CTE_TOMADORCOMPLEMENTO'
      Size = 80
    end
    object QYCteCTE_TOMADORCONTATO: TStringField
      FieldName = 'CTE_TOMADORCONTATO'
      Origin = 'CTE_TOMADORCONTATO'
      Size = 80
    end
    object QYCteCTE_TOMADORCPF: TStringField
      FieldName = 'CTE_TOMADORCPF'
      Origin = 'CTE_TOMADORCPF'
    end
    object QYCteCTE_TOMADORENDERECO: TStringField
      FieldName = 'CTE_TOMADORENDERECO'
      Origin = 'CTE_TOMADORENDERECO'
      Size = 100
    end
    object QYCteCTE_TOMADORESTADO: TStringField
      FieldName = 'CTE_TOMADORESTADO'
      Origin = 'CTE_TOMADORESTADO'
      Size = 2
    end
    object QYCteCTE_TOMADORESTADOCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORESTADOCODIGO'
      Origin = 'CTE_TOMADORESTADOCODIGO'
    end
    object QYCteCTE_TOMADORFONE: TStringField
      FieldName = 'CTE_TOMADORFONE'
      Origin = 'CTE_TOMADORFONE'
    end
    object QYCteCTE_TOMADORIE: TStringField
      FieldName = 'CTE_TOMADORIE'
      Origin = 'CTE_TOMADORIE'
    end
    object QYCteCTE_TOMADORNOME: TStringField
      FieldName = 'CTE_TOMADORNOME'
      Origin = 'CTE_TOMADORNOME'
      Size = 80
    end
    object QYCteCTE_TOMADORNUMERO: TStringField
      FieldName = 'CTE_TOMADORNUMERO'
      Origin = 'CTE_TOMADORNUMERO'
      Size = 15
    end
    object QYCteCTE_TOMADORPAIS: TStringField
      FieldName = 'CTE_TOMADORPAIS'
      Origin = 'CTE_TOMADORPAIS'
      Size = 80
    end
    object QYCteCTE_TOMADORPAISCODIGO: TIntegerField
      FieldName = 'CTE_TOMADORPAISCODIGO'
      Origin = 'CTE_TOMADORPAISCODIGO'
    end
    object QYCteCTE_TOTALCCE: TIntegerField
      FieldName = 'CTE_TOTALCCE'
      Origin = 'CTE_TOTALCCE'
    end
    object QYCteCTE_TOTALCOMISSAO: TFMTBCDField
      FieldName = 'CTE_TOTALCOMISSAO'
      Origin = 'CTE_TOTALCOMISSAO'
      Precision = 18
    end
    object QYCteCTE_TOTALFCP: TFMTBCDField
      FieldName = 'CTE_TOTALFCP'
      Origin = 'CTE_TOTALFCP'
      Precision = 18
    end
    object QYCteCTE_TOTALICMS: TFMTBCDField
      FieldName = 'CTE_TOTALICMS'
      Origin = 'CTE_TOTALICMS'
      Precision = 18
    end
    object QYCteCTE_TOTALICMSST: TFMTBCDField
      FieldName = 'CTE_TOTALICMSST'
      Origin = 'CTE_TOTALICMSST'
      Precision = 18
    end
    object QYCteCTE_TOTALICMSUFFIM: TFMTBCDField
      FieldName = 'CTE_TOTALICMSUFFIM'
      Origin = 'CTE_TOTALICMSUFFIM'
      Precision = 18
    end
    object QYCteCTE_TOTALICMSUFINI: TFMTBCDField
      FieldName = 'CTE_TOTALICMSUFINI'
      Origin = 'CTE_TOTALICMSUFINI'
      Precision = 18
    end
    object QYCteCTE_TOTALTRIBUTOS: TFMTBCDField
      FieldName = 'CTE_TOTALTRIBUTOS'
      Origin = 'CTE_TOTALTRIBUTOS'
      Precision = 18
    end
    object QYCteCTE_USUARIO: TStringField
      FieldName = 'CTE_USUARIO'
      Origin = 'CTE_USUARIO'
    end
    object QYCteCTE_VALORCREDITOICMS: TFMTBCDField
      FieldName = 'CTE_VALORCREDITOICMS'
      Origin = 'CTE_VALORCREDITOICMS'
      Precision = 18
    end
    object QYCteCTE_VALORFRETE: TFMTBCDField
      FieldName = 'CTE_VALORFRETE'
      Origin = 'CTE_VALORFRETE'
      Precision = 18
    end
    object QYCteCTE_VALORNOTAS: TFMTBCDField
      FieldName = 'CTE_VALORNOTAS'
      Origin = 'CTE_VALORNOTAS'
      Precision = 18
    end
    object QYCteCTE_VALOROUTROS: TFMTBCDField
      FieldName = 'CTE_VALOROUTROS'
      Origin = 'CTE_VALOROUTROS'
      Precision = 18
    end
    object QYCteCTE_VALORSEGURO: TFMTBCDField
      FieldName = 'CTE_VALORSEGURO'
      Origin = 'CTE_VALORSEGURO'
      Precision = 18
    end
    object QYCteCTE_VALORTOTAL: TFMTBCDField
      FieldName = 'CTE_VALORTOTAL'
      Origin = 'CTE_VALORTOTAL'
      Precision = 18
    end
    object QYCteCTE_VENDEDOR: TIntegerField
      FieldName = 'CTE_VENDEDOR'
      Origin = 'CTE_VENDEDOR'
      Required = True
    end
    object QYCteCPG_ATUALIZAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_ATUALIZAR'
      Origin = 'CPG_ATUALIZAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_BAIXARPRIMEIRAPARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_BAIXARPRIMEIRAPARC'
      Origin = 'CPG_BAIXARPRIMEIRAPARC'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_CODIGO'
      Origin = 'CPG_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_CONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_CONTA'
      Origin = 'CPG_CONTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_CUPOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_CUPOM'
      Origin = 'CPG_CUPOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_DESCPORC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCPORC'
      Origin = 'CPG_DESCPORC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYCteCPG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAO'
      Origin = 'CPG_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYCteCPG_DESCRICAOCUPOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DESCRICAOCUPOM'
      Origin = 'CPG_DESCRICAOCUPOM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DTATUALIZACAO'
      Origin = 'CPG_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_DTCADASTRO'
      Origin = 'CPG_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_FORMAPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_FORMAPAGTO'
      Origin = 'CPG_FORMAPAGTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYCteCPG_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_HRATUALIZACAO'
      Origin = 'CPG_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_HRCADASTRO'
      Origin = 'CPG_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_MEIOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_MEIOPAGAMENTO'
      Origin = 'CPG_MEIOPAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYCteCPG_MENSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_MENSAL'
      Origin = 'CPG_MENSAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_MOBILE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_MOBILE'
      Origin = 'CPG_MOBILE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_PARCELASIGUAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_PARCELASIGUAIS'
      Origin = 'CPG_PARCELASIGUAIS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_STATUS'
      Origin = 'CPG_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteCPG_TIPOINTEGRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TIPOINTEGRACAO'
      Origin = 'CPG_TIPOINTEGRACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QYCteCPG_TOTALPARCELAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TOTALPARCELAS'
      Origin = 'CPG_TOTALPARCELAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteCPG_TOTALPORCENTAGEM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_TOTALPORCENTAGEM'
      Origin = 'CPG_TOTALPORCENTAGEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYCteCPG_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPG_USUARIO'
      Origin = 'CPG_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_CALCULACREDITOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CALCULACREDITOSN'
      Origin = 'ICM_CALCULACREDITOSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteICM_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_CODIGO'
      Origin = 'ICM_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DESCRICAO'
      Origin = 'ICM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object QYCteICM_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DTATUALIZACAO'
      Origin = 'ICM_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_DTCADASTRO'
      Origin = 'ICM_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_HRATUALIZACAO'
      Origin = 'ICM_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_HRCADASTRO'
      Origin = 'ICM_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteICM_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICM_USUARIO'
      Origin = 'ICM_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_ATUALIZAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ATUALIZAR'
      Origin = 'VEN_ATUALIZAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteVEN_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_BAIRRO'
      Origin = 'VEN_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYCteVEN_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CEP'
      Origin = 'VEN_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYCteVEN_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CIDADE'
      Origin = 'VEN_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QYCteVEN_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CIDADECODIGO'
      Origin = 'VEN_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CNPJ'
      Origin = 'VEN_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_COMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMISSAO'
      Origin = 'VEN_COMISSAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYCteVEN_COMISSAOTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMISSAOTIPO'
      Origin = 'VEN_COMISSAOTIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYCteVEN_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMPLEMENTO'
      Origin = 'VEN_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCteVEN_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CONTATO'
      Origin = 'VEN_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCteVEN_COR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COR'
      Origin = 'VEN_COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CPF'
      Origin = 'VEN_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTATUALIZACAO'
      Origin = 'VEN_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTCADASTRO'
      Origin = 'VEN_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTNASC'
      Origin = 'VEN_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_EMAIL'
      Origin = 'VEN_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYCteVEN_EMAILCONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_EMAILCONTA'
      Origin = 'VEN_EMAILCONTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ENDERECO'
      Origin = 'VEN_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYCteVEN_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ESTADO'
      Origin = 'VEN_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QYCteVEN_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ESTADOCIVIL'
      Origin = 'VEN_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QYCteVEN_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE1'
      Origin = 'VEN_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE2'
      Origin = 'VEN_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_FONE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE3'
      Origin = 'VEN_FONE3'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_HRATUALIZACAO'
      Origin = 'VEN_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_HRCADASTRO'
      Origin = 'VEN_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_IE'
      Origin = 'VEN_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_MOSTRARAGENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_MOSTRARAGENDA'
      Origin = 'VEN_MOSTRARAGENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QYCteVEN_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NUMERO'
      Origin = 'VEN_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QYCteVEN_OBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_OBSERVACOES'
      Origin = 'VEN_OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QYCteVEN_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_REGPROFISSIONAL'
      Origin = 'VEN_REGPROFISSIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_RG'
      Origin = 'VEN_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_SALARIOBASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALARIOBASE'
      Origin = 'VEN_SALARIOBASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYCteVEN_SALDOATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALDOATUAL'
      Origin = 'VEN_SALDOATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QYCteVEN_SALDOHORAS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALDOHORAS'
      Origin = 'VEN_SALDOHORAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QYCteVEN_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SITE'
      Origin = 'VEN_SITE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QYCteVEN_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_STATUS'
      Origin = 'VEN_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteVEN_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_TIPOPESSOA'
      Origin = 'VEN_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QYCteVEN_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_USUARIO'
      Origin = 'VEN_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object TRCteNotas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 288
  end
  object QYCteNotas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCteNotas
    SQL.Strings = (
      'select * from CTENOTAS'
      'where CTN_CTE=:CTE_CODIGO'
      'order by CTN_CODIGO'
      '')
    Left = 832
    Top = 240
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCteNotasCTN_ALIQICMS: TFMTBCDField
      FieldName = 'CTN_ALIQICMS'
      Origin = 'CTN_ALIQICMS'
      Precision = 18
    end
    object QYCteNotasCTN_ALIQICMSST: TFMTBCDField
      FieldName = 'CTN_ALIQICMSST'
      Origin = 'CTN_ALIQICMSST'
      Precision = 18
    end
    object QYCteNotasCTN_BASEICMS: TFMTBCDField
      FieldName = 'CTN_BASEICMS'
      Origin = 'CTN_BASEICMS'
      Precision = 18
    end
    object QYCteNotasCTN_BASEICMSST: TFMTBCDField
      FieldName = 'CTN_BASEICMSST'
      Origin = 'CTN_BASEICMSST'
      Precision = 18
    end
    object QYCteNotasCTN_CFOP: TStringField
      FieldName = 'CTN_CFOP'
      Origin = 'CTN_CFOP'
      Size = 10
    end
    object QYCteNotasCTN_CHAVEACESSO: TStringField
      FieldName = 'CTN_CHAVEACESSO'
      Origin = 'CTN_CHAVEACESSO'
      Size = 50
    end
    object QYCteNotasCTN_CNPJREMETENTE: TStringField
      FieldName = 'CTN_CNPJREMETENTE'
      Origin = 'CTN_CNPJREMETENTE'
    end
    object QYCteNotasCTN_CODIGO: TIntegerField
      FieldName = 'CTN_CODIGO'
      Origin = 'CTN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCteNotasCTN_CTE: TIntegerField
      FieldName = 'CTN_CTE'
      Origin = 'CTN_CTE'
      Required = True
    end
    object QYCteNotasCTN_DESCRICAODOC: TStringField
      FieldName = 'CTN_DESCRICAODOC'
      Origin = 'CTN_DESCRICAODOC'
      Size = 50
    end
    object QYCteNotasCTN_DTEMISSAO: TDateField
      FieldName = 'CTN_DTEMISSAO'
      Origin = 'CTN_DTEMISSAO'
    end
    object QYCteNotasCTN_MODELO: TIntegerField
      FieldName = 'CTN_MODELO'
      Origin = 'CTN_MODELO'
    end
    object QYCteNotasCTN_NUMERO: TIntegerField
      FieldName = 'CTN_NUMERO'
      Origin = 'CTN_NUMERO'
    end
    object QYCteNotasCTN_PESO: TFMTBCDField
      FieldName = 'CTN_PESO'
      Origin = 'CTN_PESO'
      Precision = 18
      Size = 3
    end
    object QYCteNotasCTN_SERIE: TIntegerField
      FieldName = 'CTN_SERIE'
      Origin = 'CTN_SERIE'
    end
    object QYCteNotasCTN_SUFRAMA: TStringField
      FieldName = 'CTN_SUFRAMA'
      Origin = 'CTN_SUFRAMA'
    end
    object QYCteNotasCTN_TIPONOTA: TStringField
      FieldName = 'CTN_TIPONOTA'
      Origin = 'CTN_TIPONOTA'
      Size = 30
    end
    object QYCteNotasCTN_TIPOOUTROS: TStringField
      FieldName = 'CTN_TIPOOUTROS'
      Origin = 'CTN_TIPOOUTROS'
      Size = 30
    end
    object QYCteNotasCTN_TOTALICMS: TFMTBCDField
      FieldName = 'CTN_TOTALICMS'
      Origin = 'CTN_TOTALICMS'
      Precision = 18
    end
    object QYCteNotasCTN_TOTALICMSST: TFMTBCDField
      FieldName = 'CTN_TOTALICMSST'
      Origin = 'CTN_TOTALICMSST'
      Precision = 18
    end
    object QYCteNotasCTN_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'CTN_TOTALPRODUTOS'
      Origin = 'CTN_TOTALPRODUTOS'
      Precision = 18
    end
    object QYCteNotasCTN_VALORTOTAL: TFMTBCDField
      FieldName = 'CTN_VALORTOTAL'
      Origin = 'CTN_VALORTOTAL'
      Precision = 18
    end
  end
  object TRCteVeiculos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 832
    Top = 408
  end
  object QYCteVeiculos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCteVeiculos
    SQL.Strings = (
      'select '
      'CTV_ESTADO,'
      'CTV_PLACA,'
      'CTV_RNTRC,'
      'CTV_TIPOVEICULO'
      'from CTEVEICULOS'
      'where CTV_CTE=:CTE_CODIGO'
      'order by CTV_CODIGO'
      '')
    Left = 832
    Top = 360
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCteVeiculosCTV_ESTADO: TStringField
      FieldName = 'CTV_ESTADO'
      Origin = 'CTV_ESTADO'
      Size = 2
    end
    object QYCteVeiculosCTV_PLACA: TStringField
      FieldName = 'CTV_PLACA'
      Origin = 'CTV_PLACA'
      Size = 10
    end
    object QYCteVeiculosCTV_RNTRC: TStringField
      FieldName = 'CTV_RNTRC'
      Origin = 'CTV_RNTRC'
    end
    object QYCteVeiculosCTV_TIPOVEICULO: TStringField
      FieldName = 'CTV_TIPOVEICULO'
      Origin = 'CTV_TIPOVEICULO'
    end
  end
  object TRCteCarga: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 840
    Top = 528
  end
  object QYCteCarga: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRCteCarga
    SQL.Strings = (
      'select * from CTECARGA'
      'where CCG_CTE=:CTE_CODIGO'
      'order by CCG_CODIGO'
      '')
    Left = 840
    Top = 480
    ParamData = <
      item
        Name = 'CTE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QYCteCargaCCG_CODIGO: TIntegerField
      FieldName = 'CCG_CODIGO'
      Origin = 'CCG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYCteCargaCCG_CTE: TIntegerField
      FieldName = 'CCG_CTE'
      Origin = 'CCG_CTE'
      Required = True
    end
    object QYCteCargaCCG_QUANTIDADE: TFMTBCDField
      FieldName = 'CCG_QUANTIDADE'
      Origin = 'CCG_QUANTIDADE'
      Precision = 18
    end
    object QYCteCargaCCG_TIPOMEDIDA: TStringField
      FieldName = 'CCG_TIPOMEDIDA'
      Origin = 'CCG_TIPOMEDIDA'
    end
    object QYCteCargaCCG_UNIDADEMEDIDA: TStringField
      FieldName = 'CCG_UNIDADEMEDIDA'
      Origin = 'CCG_UNIDADEMEDIDA'
    end
  end
end
