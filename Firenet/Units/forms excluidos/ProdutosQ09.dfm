object FormProdutosQ09: TFormProdutosQ09
  Left = 192
  Top = 114
  Caption = 'Impress'#227'o de etiquetas de produtos'
  ClientHeight = 415
  ClientWidth = 1168
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
    Width = 1111
    Height = 1572
    ShowingPreview = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    Options = []
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = A4Small
    Page.Continuous = False
    Page.Values = (
      200.000000000000000000
      2970.000000000000000000
      210.000000000000000000
      2100.000000000000000000
      45.000000000000000000
      45.000000000000000000
      50.000000000000000000)
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
    Zoom = 140
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 24
      Top = 111
      Width = 518
      Height = 180
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        340.178571428571400000
        978.958333333333300000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRAsBarcode1: TQRAsBarcode
        Left = 14
        Top = 66
        Width = 124
        Height = 50
        Size.Values = (
          94.494047619047620000
          26.458333333333330000
          124.732142857142900000
          234.345238095238100000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        AutoSize = True
        BarcodeHeight = 50
        BarcodeWidth = 124
        Modul = 1
        Ratio = 3.000000000000000000
        Text = '0013511012345'
        Typ = bcCodeEAN13
      end
      object QRDBText1: TQRDBText
        Left = 12
        Top = 16
        Width = 493
        Height = 49
        Size.Values = (
          92.604166666666680000
          22.678571428571430000
          30.238095238095240000
          931.711309523809500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PRO_NOME'
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
      object QRDBText4: TQRDBText
        Left = 372
        Top = 143
        Width = 133
        Height = 19
        Size.Values = (
          35.907738095238090000
          703.035714285714200000
          270.252976190476200000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PRO_PRECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 100
        Top = 118
        Width = 176
        Height = 20
        Size.Values = (
          37.797619047619050000
          188.988095238095200000
          223.005952380952400000
          332.619047619047700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PRO_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 16
        Top = 118
        Width = 74
        Height = 20
        Size.Values = (
          37.797619047619050000
          30.238095238095240000
          223.005952380952400000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#211'DIGO:'
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
      object QRDBText2: TQRDBText
        Left = 100
        Top = 143
        Width = 176
        Height = 20
        Size.Values = (
          37.797619047619050000
          188.988095238095200000
          270.252976190476200000
          332.619047619047700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PRO_CODIGOFAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 143
        Width = 74
        Height = 20
        Size.Values = (
          37.797619047619050000
          30.238095238095240000
          270.252976190476200000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#211'D. FAB:'
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
      object QRLabel3: TQRLabel
        Left = 288
        Top = 118
        Width = 74
        Height = 20
        Size.Values = (
          37.797619047619050000
          544.285714285714300000
          223.005952380952400000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'LOCAL:'
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
      object QRDBText5: TQRDBText
        Left = 372
        Top = 118
        Width = 133
        Height = 20
        Size.Values = (
          37.797619047619050000
          703.035714285714200000
          223.005952380952400000
          251.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PRO_LOCALIZACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 288
        Top = 143
        Width = 74
        Height = 20
        Size.Values = (
          37.797619047619050000
          544.285714285714300000
          270.252976190476200000
          139.851190476190500000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'PRE'#199'O'
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
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 649
    Top = 1050
  end
end
