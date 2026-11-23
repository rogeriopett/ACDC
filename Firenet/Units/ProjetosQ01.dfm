object FormProjetosQ01: TFormProjetosQ01
  Left = 192
  Top = 114
  Caption = 'Ficha de Projeto'
  ClientHeight = 712
  ClientWidth = 1072
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
    BeforePrint = QuickRep1BeforePrint
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
      Top = 361
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
      DataSet = FDQuery2
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
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_TIPO'
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
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_PRODUTO'
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
        Left = 425
        Top = -1
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1124.479166666667000000
          -2.645833333333333000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_QUANTIDADE'
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
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_DESCRICAO'
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
        Left = 392
        Top = -1
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1037.166666666667000000
          -2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_UNIDADE'
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
        Left = 471
        Top = -1
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1246.187500000000000000
          -2.645833333333333000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_VALORUNIT'
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
        Left = 552
        Top = -1
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1460.500000000000000000
          -2.645833333333333000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery2
        DataField = 'PJI_VALORTOTAL'
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
      Top = 374
      Width = 741
      Height = 50
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        132.291666666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel3: TQRLabel
        Left = 384
        Top = 6
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          15.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Produtos'
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
      object QRLabel31: TQRLabel
        Left = 501
        Top = 6
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          15.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total Servi'#231'os'
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
      object QRLabel35: TQRLabel
        Left = 621
        Top = 6
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          15.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VALOR TOTAL'
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
      object QRDBText29: TQRDBText
        Left = 384
        Top = 28
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          74.083333333333340000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_TOTALPRODUTOS'
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
      object QRDBText30: TQRDBText
        Left = 501
        Top = 28
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          74.083333333333340000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_TOTALSERVICOS'
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
      object QRDBText34: TQRDBText
        Left = 621
        Top = 28
        Width = 113
        Height = 17
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          74.083333333333340000
          298.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_VALORTOTAL'
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
    end
    object QRBand2: TQRBand
      Left = 26
      Top = 424
      Width = 741
      Height = 42
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
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
        ActiveInPreview = False
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
        Top = 22
        Width = 729
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          58.208333333333340000
          1928.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_OBSERVACOES'
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
      Top = 466
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
    object QRGroup2: TQRGroup
      Left = 26
      Top = 91
      Width = 741
      Height = 270
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        714.375000000000000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.REE_CLIENTE'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText16: TQRDBText
        Left = 115
        Top = 21
        Width = 390
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          55.562500000000000000
          1031.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 3
        Top = 254
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          672.041666666666800000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 425
        Top = 254
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1124.479166666667000000
          672.041666666666800000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
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
        Top = 254
        Width = 20
        Height = 15
        Size.Values = (
          39.687500000000000000
          169.333333333333300000
          672.041666666666800000
          52.916666666666660000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Top = 254
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          232.833333333333400000
          672.041666666666800000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 392
        Top = 254
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          1037.166666666667000000
          672.041666666666800000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
      object QRLabel5: TQRLabel
        Left = 471
        Top = 254
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1246.187500000000000000
          672.041666666666800000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Unit.'
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
      object QRLabel10: TQRLabel
        Left = 552
        Top = 254
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1460.500000000000000000
          672.041666666666800000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Total'
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
        Top = 21
        Width = 43
        Height = 15
        Size.Values = (
          39.687500000000000000
          58.208333333333330000
          55.562500000000000000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Top = 21
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          55.562500000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_CLIENTE'
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
        Top = 37
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          97.895833333333330000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Top = 53
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          74.083333333333330000
          140.229166666666700000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 239
        Top = 53
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          632.354166666666700000
          140.229166666666700000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 241
        Top = 69
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          637.645833333333300000
          182.562500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
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
        Top = 37
        Width = 316
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          97.895833333333340000
          836.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 69
        Top = 53
        Width = 164
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          140.229166666666700000
          433.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 386
        Top = 37
        Width = 15
        Height = 15
        Size.Values = (
          39.687500000000000000
          1021.291666666667000000
          97.895833333333330000
          39.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Top = 37
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          1071.562500000000000000
          97.895833333333340000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 301
        Top = 53
        Width = 164
        Height = 15
        Size.Values = (
          39.687500000000000000
          796.395833333333400000
          140.229166666666700000
          433.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 40
        Top = 69
        Width = 25
        Height = 15
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          182.562500000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 69
        Top = 69
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          182.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 469
        Top = 53
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          1240.895833333333000000
          140.229166666666700000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 27
        Top = 85
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          71.437500000000000000
          224.895833333333300000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Fones:'
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
        Top = 85
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          224.895833333333300000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 250
        Top = 85
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          661.458333333333300000
          224.895833333333300000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Left = 301
        Top = 85
        Width = 204
        Height = 15
        Size.Values = (
          39.687500000000000000
          796.395833333333400000
          224.895833333333300000
          539.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 507
        Top = 125
        Width = 54
        Height = 15
        Size.Values = (
          39.687500000000000000
          1341.437500000000000000
          330.729166666666700000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data Cad.:'
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
        Left = 565
        Top = 125
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          330.729166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTCADASTRO'
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
        Left = 479
        Top = 141
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          1267.354166666667000000
          373.062500000000000000
          216.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Status Projeto:'
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
        Left = 565
        Top = 141
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          373.062500000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_STATUSPROJETO'
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
        Left = 9
        Top = 157
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          415.395833333333300000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Arquiteto:'
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
        Top = 157
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          415.395833333333400000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_ARQUITETO'
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
        Top = 157
        Width = 342
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          415.395833333333400000
          904.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        Top = 252
        Width = 729
        Height = 2
        Size.Values = (
          5.291666666666667000
          37.041666666666670000
          666.750000000000000000
          1928.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 21
        Top = 125
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          55.562500000000000000
          330.729166666666700000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Projeto:'
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
        Left = 115
        Top = 125
        Width = 342
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          330.729166666666700000
          904.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_NOME'
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
      object QRLabel12: TQRLabel
        Left = 37
        Top = 141
        Width = 28
        Height = 15
        Size.Values = (
          39.687500000000000000
          97.895833333333330000
          373.062500000000000000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Tipo:'
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
        Left = 69
        Top = 141
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          373.062500000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_TIPO'
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
      object QRDBText31: TQRDBText
        Left = 115
        Top = 141
        Width = 342
        Height = 15
        Size.Values = (
          39.687500000000000000
          304.270833333333400000
          373.062500000000000000
          904.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PJT_DESCRICAO'
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
        Left = 70
        Top = 181
        Width = 107
        Height = 15
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          478.895833333333300000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data visita prevista:'
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
      object QRDBText32: TQRDBText
        Left = 181
        Top = 181
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          478.895833333333400000
          478.895833333333400000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTVISITAPREVISTA'
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
      object QRLabel32: TQRLabel
        Left = 38
        Top = 197
        Width = 139
        Height = 15
        Size.Values = (
          39.687500000000000000
          100.541666666666700000
          521.229166666666700000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data or'#231'amento previsto:'
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
      object QRLabel33: TQRLabel
        Left = 24
        Top = 213
        Width = 153
        Height = 15
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          563.562500000000000000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data apresenta'#231#227'o prevista:'
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
      object QRDBText33: TQRDBText
        Left = 181
        Top = 197
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          478.895833333333400000
          521.229166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTORCAMENTOPREVISTO'
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
      object QRDBText35: TQRDBText
        Left = 181
        Top = 213
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          478.895833333333400000
          563.562500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTAPRESENTACAOPREVISTA'
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
      object QRLabel34: TQRLabel
        Left = 490
        Top = 181
        Width = 71
        Height = 15
        Size.Values = (
          39.687500000000000000
          1296.458333333333000000
          478.895833333333300000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Status visita:'
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
      object QRDBText36: TQRDBText
        Left = 565
        Top = 181
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          478.895833333333400000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_STATUSVISITA'
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
      object QRLabel36: TQRLabel
        Left = 459
        Top = 197
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          1214.437500000000000000
          521.229166666666700000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Status or'#231'amento:'
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
        Left = 444
        Top = 213
        Width = 117
        Height = 15
        Size.Values = (
          39.687500000000000000
          1174.750000000000000000
          563.562500000000000000
          309.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Status apresenta'#231#227'o:'
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
      object QRDBText37: TQRDBText
        Left = 565
        Top = 197
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          521.229166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_STATUSORCAMENTO'
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
      object QRDBText38: TQRDBText
        Left = 565
        Top = 213
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          563.562500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_STATUSAPRESENTACAO'
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
      object QRLabel38: TQRLabel
        Left = 302
        Top = 181
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          799.041666666666700000
          478.895833333333300000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data visita:'
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
      object QRDBText39: TQRDBText
        Left = 365
        Top = 181
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          965.729166666666800000
          478.895833333333400000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTVISITAPREVISTA'
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
      object QRLabel39: TQRLabel
        Left = 271
        Top = 197
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          717.020833333333300000
          521.229166666666700000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data or'#231'amento:'
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
      object QRLabel40: TQRLabel
        Left = 256
        Top = 213
        Width = 105
        Height = 15
        Size.Values = (
          39.687500000000000000
          677.333333333333300000
          563.562500000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data apresenta'#231#227'o:'
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
      object QRDBText40: TQRDBText
        Left = 365
        Top = 197
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          965.729166666666800000
          521.229166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTORCAMENTOPREVISTO'
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
      object QRDBText41: TQRDBText
        Left = 365
        Top = 213
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          965.729166666666800000
          563.562500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_DTAPRESENTACAOPREVISTA'
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
      object QRLabel41: TQRLabel
        Left = 467
        Top = 157
        Width = 94
        Height = 15
        Size.Values = (
          39.687500000000000000
          1235.604166666667000000
          415.395833333333300000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Status Produ'#231#227'o:'
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
      object QRDBText42: TQRDBText
        Left = 565
        Top = 157
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          415.395833333333400000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_STATUSPRODUCAO'
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
      object QRDBText44: TQRDBText
        Left = 69
        Top = 125
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          330.729166666666700000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'PRJ_CODIGO'
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
      object QRLabel42: TQRLabel
        Left = 32
        Top = 101
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          84.666666666666670000
          267.229166666666700000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Email:'
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
      object QRDBText45: TQRDBText
        Left = 69
        Top = 101
        Width = 436
        Height = 15
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          267.229166666666700000
          1153.583333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'CLI_EMAIL'
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
      object QRDBText46: TQRDBText
        Left = 301
        Top = 69
        Width = 108
        Height = 15
        Size.Values = (
          39.687500000000000000
          796.395833333333400000
          182.562500000000000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
        DataField = 'CLI_CNPJ'
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
      object QRDBText47: TQRDBText
        Left = 157
        Top = 85
        Width = 84
        Height = 15
        Size.Values = (
          39.687500000000000000
          415.395833333333400000
          224.895833333333300000
          222.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FDQuery1
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
        Left = 644
        Top = 48
        Width = 92
        Height = 14
        Size.Values = (
          37.041666666666670000
          1703.916666666667000000
          127.000000000000000000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ficha de Projeto'
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
        ActiveInPreview = False
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
        VerticalAlignment = tlTop
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
        ActiveInPreview = False
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
        VerticalAlignment = tlTop
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
        ActiveInPreview = False
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
        ActiveInPreview = False
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
        ActiveInPreview = False
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
        ActiveInPreview = False
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
        ActiveInPreview = False
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
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 280
    Top = 496
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 360
    Top = 496
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 432
    Top = 496
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 512
    Top = 496
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 586
    Top = 495
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from PROJETOS '
      'left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on PRJ_ARQUITETO=VEN_CODIGO'
      'left join PROJETOSTIPOS on PRJ_TIPO=PJT_CODIGO'
      'where PRJ_CODIGO=:codigo'
      '')
    Left = 136
    Top = 496
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery1PRJ_ARQUITETO: TIntegerField
      FieldName = 'PRJ_ARQUITETO'
      Origin = 'PRJ_ARQUITETO'
      Required = True
    end
    object FDQuery1PRJ_CLIENTE: TIntegerField
      FieldName = 'PRJ_CLIENTE'
      Origin = 'PRJ_CLIENTE'
      Required = True
    end
    object FDQuery1PRJ_CODIGO: TIntegerField
      FieldName = 'PRJ_CODIGO'
      Origin = 'PRJ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1PRJ_DTAPRESENTACAO: TDateField
      FieldName = 'PRJ_DTAPRESENTACAO'
      Origin = 'PRJ_DTAPRESENTACAO'
    end
    object FDQuery1PRJ_DTAPRESENTACAOPREVISTA: TDateField
      FieldName = 'PRJ_DTAPRESENTACAOPREVISTA'
      Origin = 'PRJ_DTAPRESENTACAOPREVISTA'
    end
    object FDQuery1PRJ_DTATUALIZACAO: TDateField
      FieldName = 'PRJ_DTATUALIZACAO'
      Origin = 'PRJ_DTATUALIZACAO'
    end
    object FDQuery1PRJ_DTCADASTRO: TDateField
      FieldName = 'PRJ_DTCADASTRO'
      Origin = 'PRJ_DTCADASTRO'
    end
    object FDQuery1PRJ_DTENTREGA: TDateField
      FieldName = 'PRJ_DTENTREGA'
      Origin = 'PRJ_DTENTREGA'
    end
    object FDQuery1PRJ_DTENTREGAPREVISTA: TDateField
      FieldName = 'PRJ_DTENTREGAPREVISTA'
      Origin = 'PRJ_DTENTREGAPREVISTA'
    end
    object FDQuery1PRJ_DTORCAMENTO: TDateField
      FieldName = 'PRJ_DTORCAMENTO'
      Origin = 'PRJ_DTORCAMENTO'
    end
    object FDQuery1PRJ_DTORCAMENTOPREVISTO: TDateField
      FieldName = 'PRJ_DTORCAMENTOPREVISTO'
      Origin = 'PRJ_DTORCAMENTOPREVISTO'
    end
    object FDQuery1PRJ_DTPRIMEIROCONTATO: TDateField
      FieldName = 'PRJ_DTPRIMEIROCONTATO'
      Origin = 'PRJ_DTPRIMEIROCONTATO'
    end
    object FDQuery1PRJ_DTPROJETOCAD: TDateField
      FieldName = 'PRJ_DTPROJETOCAD'
      Origin = 'PRJ_DTPROJETOCAD'
    end
    object FDQuery1PRJ_DTPROJETOCADPREVISTO: TDateField
      FieldName = 'PRJ_DTPROJETOCADPREVISTO'
      Origin = 'PRJ_DTPROJETOCADPREVISTO'
    end
    object FDQuery1PRJ_DTVISITA: TDateField
      FieldName = 'PRJ_DTVISITA'
      Origin = 'PRJ_DTVISITA'
    end
    object FDQuery1PRJ_DTVISITAPREVISTA: TDateField
      FieldName = 'PRJ_DTVISITAPREVISTA'
      Origin = 'PRJ_DTVISITAPREVISTA'
    end
    object FDQuery1PRJ_HRATUALIZACAO: TTimeField
      FieldName = 'PRJ_HRATUALIZACAO'
      Origin = 'PRJ_HRATUALIZACAO'
    end
    object FDQuery1PRJ_HRCADASTRO: TTimeField
      FieldName = 'PRJ_HRCADASTRO'
      Origin = 'PRJ_HRCADASTRO'
    end
    object FDQuery1PRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 80
    end
    object FDQuery1PRJ_OBSERVACOES: TMemoField
      FieldName = 'PRJ_OBSERVACOES'
      Origin = 'PRJ_OBSERVACOES'
      BlobType = ftMemo
    end
    object FDQuery1PRJ_STATUSAPRESENTACAO: TStringField
      FieldName = 'PRJ_STATUSAPRESENTACAO'
      Origin = 'PRJ_STATUSAPRESENTACAO'
    end
    object FDQuery1PRJ_STATUSORCAMENTO: TStringField
      FieldName = 'PRJ_STATUSORCAMENTO'
      Origin = 'PRJ_STATUSORCAMENTO'
    end
    object FDQuery1PRJ_STATUSPRODUCAO: TStringField
      FieldName = 'PRJ_STATUSPRODUCAO'
      Origin = 'PRJ_STATUSPRODUCAO'
    end
    object FDQuery1PRJ_STATUSPROJETO: TStringField
      FieldName = 'PRJ_STATUSPROJETO'
      Origin = 'PRJ_STATUSPROJETO'
    end
    object FDQuery1PRJ_STATUSPROJETOCAD: TStringField
      FieldName = 'PRJ_STATUSPROJETOCAD'
      Origin = 'PRJ_STATUSPROJETOCAD'
    end
    object FDQuery1PRJ_STATUSVISITA: TStringField
      FieldName = 'PRJ_STATUSVISITA'
      Origin = 'PRJ_STATUSVISITA'
    end
    object FDQuery1PRJ_TABELAPRECO: TStringField
      FieldName = 'PRJ_TABELAPRECO'
      Origin = 'PRJ_TABELAPRECO'
      Size = 1
    end
    object FDQuery1PRJ_TIPO: TIntegerField
      FieldName = 'PRJ_TIPO'
      Origin = 'PRJ_TIPO'
      Required = True
    end
    object FDQuery1PRJ_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'PRJ_TOTALPRODUTOS'
      Origin = 'PRJ_TOTALPRODUTOS'
      Precision = 18
    end
    object FDQuery1PRJ_TOTALSERVICOS: TFMTBCDField
      FieldName = 'PRJ_TOTALSERVICOS'
      Origin = 'PRJ_TOTALSERVICOS'
      Precision = 18
    end
    object FDQuery1PRJ_USUARIO: TStringField
      FieldName = 'PRJ_USUARIO'
      Origin = 'PRJ_USUARIO'
    end
    object FDQuery1PRJ_VALORTOTAL: TFMTBCDField
      FieldName = 'PRJ_VALORTOTAL'
      Origin = 'PRJ_VALORTOTAL'
      Precision = 18
    end
    object FDQuery1PRJ_VALORTOTALCUSTO: TFMTBCDField
      FieldName = 'PRJ_VALORTOTALCUSTO'
      Origin = 'PRJ_VALORTOTALCUSTO'
      Precision = 18
    end
    object FDQuery1PRJ_VALORTOTALUP: TFMTBCDField
      FieldName = 'PRJ_VALORTOTALUP'
      Origin = 'PRJ_VALORTOTALUP'
      Precision = 18
    end
    object FDQuery1PRJ_VENDA: TIntegerField
      FieldName = 'PRJ_VENDA'
      Origin = 'PRJ_VENDA'
    end
    object FDQuery1CLI_AFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_AFE'
      Origin = 'CLI_AFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_ALVARA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ALVARA'
      Origin = 'CLI_ALVARA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_ALVARASANITARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ALVARASANITARIO'
      Origin = 'CLI_ALVARASANITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_ATIVIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLI_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_ATUALIZAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ATUALIZAR'
      Origin = 'CLI_ATUALIZAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_BLOQUEARVENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_BLOQUEARVENDA'
      Origin = 'CLI_BLOQUEARVENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1CLI_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CIDADECODIGO'
      Origin = 'CLI_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CLASSIFICACAO'
      Origin = 'CLI_CLASSIFICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNPJ'
      Origin = 'CLI_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CNS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CNS'
      Origin = 'CLI_CNS'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLI_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_CONDICAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONDICAO'
      Origin = 'CLI_CONDICAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CONJUGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGE'
      Origin = 'CLI_CONJUGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_CONJUGECPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGECPF'
      Origin = 'CLI_CONJUGECPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CONJUGEDTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGEDTNASC'
      Origin = 'CLI_CONJUGEDTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CONJUGERG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONJUGERG'
      Origin = 'CLI_CONJUGERG'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONTATO'
      Origin = 'CLI_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_CONTRIBUINTEICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CONTRIBUINTEICMS'
      Origin = 'CLI_CONTRIBUINTEICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FDQuery1CLI_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DESCONTO'
      Origin = 'CLI_DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1CLI_DIACOBRANCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DIACOBRANCA'
      Origin = 'CLI_DIACOBRANCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTATUALIZACAO'
      Origin = 'CLI_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTCADASTRO'
      Origin = 'CLI_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTNASC'
      Origin = 'CLI_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_DTOBITO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_DTOBITO'
      Origin = 'CLI_DTOBITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_EMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMAIL2'
      Origin = 'CLI_EMAIL2'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLI_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_ENQUADRAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ENQUADRAMENTO'
      Origin = 'CLI_ENQUADRAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object FDQuery1CLI_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = 'CLI_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1CLI_ESTADOCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ESTADOCODIGO'
      Origin = 'CLI_ESTADOCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_FONE0800: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE0800'
      Origin = 'CLI_FONE0800'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE2'
      Origin = 'CLI_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FONE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE3'
      Origin = 'CLI_FONE3'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_FRETE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FRETE'
      Origin = 'CLI_FRETE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_HRATUALIZACAO'
      Origin = 'CLI_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_HRCADASTRO'
      Origin = 'CLI_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_IDESTRANGEIRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IDESTRANGEIRO'
      Origin = 'CLI_IDESTRANGEIRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IE'
      Origin = 'CLI_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_IM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_IM'
      Origin = 'CLI_IM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_LIMITECREDITO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LIMITECREDITO'
      Origin = 'CLI_LIMITECREDITO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1CLI_LOCALESTUDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LOCALESTUDA'
      Origin = 'CLI_LOCALESTUDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_LOCALTRABALHO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_LOCALTRABALHO'
      Origin = 'CLI_LOCALTRABALHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAE'
      Origin = 'CLI_MAE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_MAEEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAEEMAIL'
      Origin = 'CLI_MAEEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_MAEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAEFONE'
      Origin = 'CLI_MAEFONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_MAILING: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MAILING'
      Origin = 'CLI_MAILING'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_MENSALISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MENSALISTA'
      Origin = 'CLI_MENSALISTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_MSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_MSN'
      Origin = 'CLI_MSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_NATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NATURALIDADE'
      Origin = 'CLI_NATURALIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_NEXTEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NEXTEL'
      Origin = 'CLI_NEXTEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQuery1CLI_OBITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_OBITO'
      Origin = 'CLI_OBITO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_OBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_OBSERVACOES'
      Origin = 'CLI_OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object FDQuery1CLI_ORIENTACAOCOBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_ORIENTACAOCOBRANCA'
      Origin = 'CLI_ORIENTACAOCOBRANCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAI'
      Origin = 'CLI_PAI'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_PAIEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIEMAIL'
      Origin = 'CLI_PAIEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_PAIFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIFONE'
      Origin = 'CLI_PAIFONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_PAISCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PAISCODIGO'
      Origin = 'CLI_PAISCODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_PASSWORD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PASSWORD'
      Origin = 'CLI_PASSWORD'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FDQuery1CLI_PONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PONTOS'
      Origin = 'CLI_PONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1CLI_PROFISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_PROFISSAO'
      Origin = 'CLI_PROFISSAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLI_RECEBEAVISOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_RECEBEAVISOS'
      Origin = 'CLI_RECEBEAVISOS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_REGPROFISSIONAL'
      Origin = 'CLI_REGPROFISSIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_RG'
      Origin = 'CLI_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_SAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SAME'
      Origin = 'CLI_SAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_SETOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SETOR'
      Origin = 'CLI_SETOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_SEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SEXO'
      Origin = 'CLI_SEXO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SITE'
      Origin = 'CLI_SITE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1CLI_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_STATUS'
      Origin = 'CLI_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_SUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_SUFRAMA'
      Origin = 'CLI_SUFRAMA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_TABELAPRECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TABELAPRECO'
      Origin = 'CLI_TABELAPRECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_TAXA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TAXA'
      Origin = 'CLI_TAXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_TELEVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TELEVENDA'
      Origin = 'CLI_TELEVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_TIPOCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOCLIENTE'
      Origin = 'CLI_TIPOCLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_TIPOCONSUMIDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOCONSUMIDOR'
      Origin = 'CLI_TIPOCONSUMIDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQuery1CLI_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TIPOPESSOA'
      Origin = 'CLI_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1CLI_TRANSPORTADORA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_TRANSPORTADORA'
      Origin = 'CLI_TRANSPORTADORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_USUARIO'
      Origin = 'CLI_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1CLI_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_VENDEDOR'
      Origin = 'CLI_VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_ATUALIZAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ATUALIZAR'
      Origin = 'VEN_ATUALIZAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1VEN_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_BAIRRO'
      Origin = 'VEN_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1VEN_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CEP'
      Origin = 'VEN_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1VEN_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CIDADE'
      Origin = 'VEN_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1VEN_CIDADECODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CIDADECODIGO'
      Origin = 'VEN_CIDADECODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CNPJ'
      Origin = 'VEN_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CODIGO'
      Origin = 'VEN_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_COMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMISSAO'
      Origin = 'VEN_COMISSAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1VEN_COMISSAOTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMISSAOTIPO'
      Origin = 'VEN_COMISSAOTIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQuery1VEN_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COMPLEMENTO'
      Origin = 'VEN_COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1VEN_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CONTATO'
      Origin = 'VEN_CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1VEN_COR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_COR'
      Origin = 'VEN_COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_CPF'
      Origin = 'VEN_CPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTATUALIZACAO'
      Origin = 'VEN_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTCADASTRO'
      Origin = 'VEN_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_DTNASC: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_DTNASC'
      Origin = 'VEN_DTNASC'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_EMAIL'
      Origin = 'VEN_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1VEN_EMAILCONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_EMAILCONTA'
      Origin = 'VEN_EMAILCONTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ENDERECO'
      Origin = 'VEN_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1VEN_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ESTADO'
      Origin = 'VEN_ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object FDQuery1VEN_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_ESTADOCIVIL'
      Origin = 'VEN_ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1VEN_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE1'
      Origin = 'VEN_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_FONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE2'
      Origin = 'VEN_FONE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_FONE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_FONE3'
      Origin = 'VEN_FONE3'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_HRATUALIZACAO'
      Origin = 'VEN_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_HRCADASTRO'
      Origin = 'VEN_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_IE'
      Origin = 'VEN_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_MOSTRARAGENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_MOSTRARAGENDA'
      Origin = 'VEN_MOSTRARAGENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1VEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1VEN_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NUMERO'
      Origin = 'VEN_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQuery1VEN_OBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_OBSERVACOES'
      Origin = 'VEN_OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object FDQuery1VEN_REGPROFISSIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_REGPROFISSIONAL'
      Origin = 'VEN_REGPROFISSIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_RG'
      Origin = 'VEN_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_SALARIOBASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALARIOBASE'
      Origin = 'VEN_SALARIOBASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1VEN_SALDOATUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALDOATUAL'
      Origin = 'VEN_SALDOATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQuery1VEN_SALDOHORAS: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SALDOHORAS'
      Origin = 'VEN_SALDOHORAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1VEN_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_SITE'
      Origin = 'VEN_SITE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQuery1VEN_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_STATUS'
      Origin = 'VEN_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1VEN_TIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_TIPOPESSOA'
      Origin = 'VEN_TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object FDQuery1VEN_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_USUARIO'
      Origin = 'VEN_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_CODIGO'
      Origin = 'PJT_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_DESCRICAO'
      Origin = 'PJT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1PJT_DTATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_DTATUALIZACAO'
      Origin = 'PJT_DTATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_DTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_DTCADASTRO'
      Origin = 'PJT_DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_HRATUALIZACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_HRATUALIZACAO'
      Origin = 'PJT_HRATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_HRCADASTRO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_HRCADASTRO'
      Origin = 'PJT_HRCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PJT_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PJT_USUARIO'
      Origin = 'PJT_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 200
    Top = 496
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction2
    SQL.Strings = (
      'select * from PROJETOSITENS'
      'left join PRODUTOS on PJI_PRODUTO=PRO_CODIGO'
      'where PJI_PROJETO=:codigo'
      'order by PJI_DESCRICAO'
      '')
    Left = 136
    Top = 552
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery2PJI_DESCRICAO: TStringField
      FieldName = 'PJI_DESCRICAO'
      Origin = 'PJI_DESCRICAO'
      Size = 100
    end
    object FDQuery2PJI_PRODUTO: TIntegerField
      FieldName = 'PJI_PRODUTO'
      Origin = 'PJI_PRODUTO'
      Required = True
    end
    object FDQuery2PJI_QUANTIDADE: TFMTBCDField
      FieldName = 'PJI_QUANTIDADE'
      Origin = 'PJI_QUANTIDADE'
      Precision = 18
    end
    object FDQuery2PJI_TIPO: TStringField
      FieldName = 'PJI_TIPO'
      Origin = 'PJI_TIPO'
      Size = 1
    end
    object FDQuery2PJI_UNIDADE: TStringField
      FieldName = 'PJI_UNIDADE'
      Origin = 'PJI_UNIDADE'
      Size = 3
    end
    object FDQuery2PJI_VALORTOTAL: TFMTBCDField
      FieldName = 'PJI_VALORTOTAL'
      Origin = 'PJI_VALORTOTAL'
      currency = True
      Precision = 18
    end
    object FDQuery2PJI_VALORUNIT: TFMTBCDField
      FieldName = 'PJI_VALORUNIT'
      Origin = 'PJI_VALORUNIT'
      currency = True
      Precision = 18
    end
  end
  object FDTransaction2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 200
    Top = 552
  end
end
