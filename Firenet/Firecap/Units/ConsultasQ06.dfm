object FormConsultasQ06: TFormConsultasQ06
  Left = 0
  Top = 0
  Caption = 'Impress'#227'o de Imagens Maiores'
  ClientHeight = 555
  ClientWidth = 999
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
    Left = 8
    Top = 8
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
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand3: TQRBand
      Left = 26
      Top = 1040
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
      object QRLabel12: TQRLabel
        Left = 690
        Top = 48
        Width = 46
        Height = 14
        Size.Values = (
          37.041666666666670000
          1825.625000000000000000
          127.000000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Imagens'
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
    object QRGroup1: TQRGroup
      Left = 26
      Top = 91
      Width = 741
      Height = 83
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        219.604166666666700000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQuery1.COS_CODIGO'
      Master = QuickRep1
      ReprintOnNewPage = True
      object QRShape6: TQRShape
        Left = 0
        Top = 54
        Width = 740
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          142.875000000000000000
          1957.916666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 505
        Top = 27
        Width = 235
        Height = 28
        Size.Values = (
          74.083333333333340000
          1336.145833333333000000
          71.437500000000000000
          621.770833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 129
        Top = 27
        Width = 377
        Height = 28
        Size.Values = (
          74.083333333333340000
          341.312500000000000000
          71.437500000000000000
          997.479166666666900000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 27
        Width = 130
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          71.437500000000000000
          343.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 505
        Top = 0
        Width = 235
        Height = 28
        Size.Values = (
          74.083333333333340000
          1336.145833333333000000
          0.000000000000000000
          621.770833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 81
        Top = 0
        Width = 425
        Height = 28
        Size.Values = (
          74.083333333333340000
          214.312500000000000000
          0.000000000000000000
          1124.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 0
        Width = 82
        Height = 28
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          0.000000000000000000
          216.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText6: TQRDBText
        Left = 85
        Top = 12
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          224.895833333333300000
          31.750000000000000000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'COS_CLIENTE'
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
        Left = 510
        Top = 12
        Width = 225
        Height = 15
        Size.Values = (
          39.687500000000000000
          1349.375000000000000000
          31.750000000000000000
          595.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'COV_DESCRICAO'
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
        Left = 4
        Top = 12
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          31.750000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'COS_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '00000000'
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
        Left = 70
        Top = 39
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          185.208333333333300000
          103.187500000000000000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'COS_HORAINICIO'
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
        Left = 136
        Top = 12
        Width = 366
        Height = 15
        Size.Values = (
          39.687500000000000000
          359.833333333333400000
          31.750000000000000000
          968.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 510
        Top = 39
        Width = 226
        Height = 15
        Size.Values = (
          39.687500000000000000
          1349.375000000000000000
          103.187500000000000000
          597.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOMESOLICITANTE'
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
      object QRDBText3: TQRDBText
        Left = 4
        Top = 39
        Width = 61
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          103.187500000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'COS_DATAINICIO'
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
        Left = 133
        Top = 39
        Width = 369
        Height = 15
        Size.Values = (
          39.687500000000000000
          351.895833333333400000
          103.187500000000000000
          976.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
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
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 10
        Top = 66
        Width = 61
        Height = 15
        Size.Values = (
          39.687500000000000000
          26.458333333333330000
          174.625000000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CSI_SIGLA'
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
        Left = 77
        Top = 66
        Width = 659
        Height = 15
        Size.Values = (
          39.687500000000000000
          203.729166666666700000
          174.625000000000000000
          1743.604166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery2
        DataField = 'CSI_DESCRICAO'
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
      object QRLabel15: TQRLabel
        Left = 3
        Top = 3
        Width = 23
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          7.937500000000000000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO'
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
      object QRLabel1: TQRLabel
        Left = 84
        Top = 3
        Width = 26
        Height = 8
        Size.Values = (
          21.166666666666670000
          222.250000000000000000
          7.937500000000000000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CLIENTE'
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
        Left = 508
        Top = 3
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          1344.083333333333000000
          7.937500000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CONV'#202'NIO'
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
      object QRLabel8: TQRLabel
        Left = 3
        Top = 30
        Width = 39
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          79.375000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA / HORA'
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
        Left = 132
        Top = 30
        Width = 24
        Height = 8
        Size.Values = (
          21.166666666666670000
          349.250000000000000000
          79.375000000000000000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'M'#201'DICO'
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
        Left = 508
        Top = 30
        Width = 40
        Height = 8
        Size.Values = (
          21.166666666666670000
          1344.083333333333000000
          79.375000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SOLICITANTE'
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
      object QRLabel6: TQRLabel
        Left = 3
        Top = 57
        Width = 22
        Height = 8
        Size.Values = (
          21.166666666666670000
          7.937500000000000000
          150.812500000000000000
          58.208333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'EXAME'
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
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 174
      Width = 741
      Height = 866
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2291.291666666667000000
        1960.562500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = TBImagens
      PrintBefore = False
      PrintIfEmpty = True
      object QRImage1: TQRImage
        Left = 33
        Top = 4
        Width = 670
        Height = 430
        Size.Values = (
          1137.708333333333000000
          87.312500000000000000
          10.583333333333330000
          1772.708333333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Stretch = True
      end
      object QRImage2: TQRImage
        Left = 33
        Top = 435
        Width = 670
        Height = 430
        Size.Values = (
          1137.708333333333000000
          87.312500000000000000
          1150.937500000000000000
          1772.708333333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Stretch = True
      end
    end
  end
  object FileListBox1: TFileListBox
    Left = 816
    Top = 96
    Width = 161
    Height = 233
    ItemHeight = 13
    Mask = '*.jpg'
    TabOrder = 1
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    AfterOpen = IBQuery1AfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'COS_CLIENTE,'
      'COS_CODIGO,'
      'COS_CONVENIO,'
      'COS_DATAINICIO,'
      'COS_HORAINICIO,'
      'COS_MEDICO,'
      'COS_SOLICITANTE,'
      'A.CLI_NOME,'
      'B.CLI_NOME as CLI_NOMESOLICITANTE,'
      'COV_DESCRICAO,'
      'VEN_NOME'
      'from CONSULTAS'
      'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO'
      'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO'
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO'
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO'
      'where COS_CODIGO=:codigo'
      'order by A.CLI_NOME, COS_DATAINICIO, COS_HORAINICIO')
    Left = 128
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1COS_CLIENTE: TIntegerField
      FieldName = 'COS_CLIENTE'
      Origin = '"CONSULTAS"."COS_CLIENTE"'
      Required = True
    end
    object IBQuery1COS_CODIGO: TIntegerField
      FieldName = 'COS_CODIGO'
      Origin = '"CONSULTAS"."COS_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1COS_CONVENIO: TIntegerField
      FieldName = 'COS_CONVENIO'
      Origin = '"CONSULTAS"."COS_CONVENIO"'
      Required = True
    end
    object IBQuery1COS_DATAINICIO: TDateField
      FieldName = 'COS_DATAINICIO'
      Origin = 'CONSULTAS.COS_DATAINICIO'
    end
    object IBQuery1COS_HORAINICIO: TTimeField
      FieldName = 'COS_HORAINICIO'
      Origin = 'CONSULTAS.COS_HORAINICIO'
    end
    object IBQuery1COS_MEDICO: TIntegerField
      FieldName = 'COS_MEDICO'
      Origin = '"CONSULTAS"."COS_MEDICO"'
      Required = True
    end
    object IBQuery1COS_SOLICITANTE: TIntegerField
      FieldName = 'COS_SOLICITANTE'
      Origin = '"CONSULTAS"."COS_SOLICITANTE"'
      Required = True
    end
    object IBQuery1CLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1CLI_NOMESOLICITANTE: TIBStringField
      FieldName = 'CLI_NOMESOLICITANTE'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1COV_DESCRICAO: TIBStringField
      FieldName = 'COV_DESCRICAO'
      Origin = '"CONVENIOS"."COV_DESCRICAO"'
      Size = 50
    end
    object IBQuery1VEN_NOME: TIBStringField
      FieldName = 'VEN_NOME'
      Origin = '"VENDEDORES"."VEN_NOME"'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 224
  end
  object IBQuery2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction2
    AfterOpen = IBQuery1AfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select'
      'CSI_DESCRICAO,'
      'CSI_EXAME,'
      'CSI_SIGLA'
      'from CONSULTASITENS'
      'where CSI_CONSULTA=:COS_CODIGO'
      'order by CSI_CODIGO')
    Left = 128
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COS_CODIGO'
        ParamType = ptUnknown
      end>
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 200
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 280
    Top = 224
  end
  object TBImagens: TClientDataSet
    PersistDataPacket.Data = {
      A20000009619E0BD010000001800000003000000000003000000A20006434F44
      49474F040001000200010007535542545950450200490008004175746F696E63
      0007494D4147454D31010049000000010005574944544802000200960007494D
      4147454D32010049000000010005574944544802000200960002000C4155544F
      494E4356414C554504000100010000000D44454641554C545F4F524445520200
      820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'IMAGEM1'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'IMAGEM2'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CODIGO'
    Params = <>
    StoreDefs = True
    Left = 480
    Top = 224
    object TBImagensCODIGO: TAutoIncField
      FieldName = 'CODIGO'
    end
    object TBImagensIMAGEM1: TStringField
      FieldName = 'IMAGEM1'
      Size = 150
    end
    object TBImagensIMAGEM2: TStringField
      FieldName = 'IMAGEM2'
      Size = 150
    end
  end
  object DSImagens: TDataSource
    DataSet = TBImagens
    Left = 480
    Top = 272
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 664
    Top = 224
  end
end
