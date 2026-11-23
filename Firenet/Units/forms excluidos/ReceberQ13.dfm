object FormReceberQ13: TFormReceberQ13
  Left = 224
  Top = 67
  Caption = 'Boletos Bancoob'
  ClientHeight = 877
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
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    ReportTitle = 'Boletos Bancoob'
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
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1046
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2767.541666666667000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 718
        Size.Values = (
          171.979166666666700000
          0.000000000000000000
          0.000000000000000000
          1899.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
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
      object QRLabel1: TQRLabel
        Left = 606
        Top = 48
        Width = 108
        Height = 14
        Size.Values = (
          37.041666666666670000
          1603.375000000000000000
          127.000000000000000000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Boleto de cobran'#231'a'
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
        Left = 648
        Top = 34
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          1714.500000000000000000
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
        Left = 658
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          1740.958333333333000000
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
      object QRLabel31: TQRLabel
        Left = 47
        Top = 101
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          124.354166666666700000
          267.229166666666700000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 26
        Top = 119
        Width = 60
        Height = 18
        Size.Values = (
          47.625000000000000000
          68.791666666666670000
          314.854166666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 47
        Top = 137
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          124.354166666666700000
          362.479166666666700000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 461
        Top = 119
        Width = 19
        Height = 18
        Size.Values = (
          47.625000000000000000
          1219.729166666667000000
          314.854166666666700000
          50.270833333333330000)
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
      object QRLabel58: TQRLabel
        Left = 584
        Top = 137
        Width = 32
        Height = 18
        Size.Values = (
          47.625000000000000000
          1545.166666666667000000
          362.479166666666700000
          84.666666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 90
        Top = 101
        Width = 623
        Height = 18
        Size.Values = (
          47.625000000000000000
          238.125000000000000000
          267.229166666666700000
          1648.354166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 91
        Top = 119
        Width = 359
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          314.854166666666700000
          949.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ENDERECO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 490
        Top = 119
        Width = 55
        Height = 18
        Size.Values = (
          47.625000000000000000
          1296.458333333333000000
          314.854166666666700000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NUMERO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 618
        Top = 137
        Width = 77
        Height = 18
        Size.Values = (
          47.625000000000000000
          1635.125000000000000000
          362.479166666666700000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CEP'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 90
        Top = 137
        Width = 200
        Height = 18
        Size.Values = (
          47.625000000000000000
          238.125000000000000000
          362.479166666666700000
          529.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_BAIRRO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 295
        Top = 137
        Width = 66
        Height = 18
        Size.Values = (
          47.625000000000000000
          780.520833333333300000
          362.479166666666700000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade/UF:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 364
        Top = 137
        Width = 167
        Height = 18
        Size.Values = (
          47.625000000000000000
          963.083333333333400000
          362.479166666666700000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CIDADE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 536
        Top = 137
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          1418.166666666667000000
          362.479166666666700000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ESTADO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 41
        Top = 197
        Width = 45
        Height = 18
        Size.Values = (
          47.625000000000000000
          108.479166666666700000
          521.229166666666700000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 91
        Top = 197
        Width = 94
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          521.229166666666800000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_CODIGO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 12
        Top = 221
        Width = 74
        Height = 18
        Size.Values = (
          47.625000000000000000
          31.750000000000000000
          584.729166666666700000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'm. Docto:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 91
        Top = 221
        Width = 94
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          584.729166666666800000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_NUMDOCTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 23
        Top = 245
        Width = 63
        Height = 18
        Size.Values = (
          47.625000000000000000
          60.854166666666670000
          648.229166666666700000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 91
        Top = 245
        Width = 622
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          648.229166666666800000
          1645.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_DESCRICAO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 51
        Top = 269
        Width = 35
        Height = 18
        Size.Values = (
          47.625000000000000000
          134.937500000000000000
          711.729166666666700000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 91
        Top = 269
        Width = 622
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          711.729166666666800000
          1645.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_VALOR'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 91
        Top = 293
        Width = 622
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          775.229166666666800000
          1645.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 680
        Width = 718
        Height = 219
        Size.Values = (
          579.437500000000000000
          0.000000000000000000
          1799.166666666667000000
          1899.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 898
        Width = 718
        Height = 69
        Size.Values = (
          182.562500000000000000
          0.000000000000000000
          2375.958333333333000000
          1899.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel34: TQRLabel
        Left = 138
        Top = 644
        Width = 91
        Height = 35
        Size.Values = (
          92.604166666666680000
          365.125000000000000000
          1703.916666666667000000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '|756-0|'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 22
      end
      object QRLabel35: TQRLabel
        Left = 2
        Top = 681
        Width = 83
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1801.812500000000000000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LOCAL DE PAGAMENTO'
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
      object QRLabel36: TQRLabel
        Left = 499
        Top = 681
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1801.812500000000000000
          92.604166666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PARCELA'
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
      object QRLabel37: TQRLabel
        Left = 595
        Top = 681
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          1574.270833333333000000
          1801.812500000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VENCIMENTO'
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
      object QRLabel38: TQRLabel
        Left = 2
        Top = 706
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1867.958333333333000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEDENTE'
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
      object QRLabel39: TQRLabel
        Left = 2
        Top = 730
        Width = 67
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1931.458333333333000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DE EMISS'#195'O'
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
      object QRLabel40: TQRLabel
        Left = 2
        Top = 754
        Width = 55
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1994.958333333334000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'USO DO BANCO'
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
      object QRLabel41: TQRLabel
        Left = 2
        Top = 778
        Width = 215
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          2058.458333333333000000
          568.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSTRU'#199#213'ES (TEXTO DE RESPONSABILIDADE DO CEDENTE)'
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
      object QRLabel42: TQRLabel
        Left = 2
        Top = 900
        Width = 31
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          2381.250000000000000000
          82.020833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'SACADO'
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
      object QRLabel43: TQRLabel
        Left = 499
        Top = 706
        Width = 77
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1867.958333333333000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO DO CEDENTE'
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
      object QRLabel44: TQRLabel
        Left = 499
        Top = 730
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1931.458333333333000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOSSO N'#218'MERO'
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
      object QRLabel45: TQRLabel
        Left = 499
        Top = 754
        Width = 134
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1994.958333333334000000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(+) VALOR DO DOCUMENTO / PARCELA'
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
      object QRLabel46: TQRLabel
        Left = 499
        Top = 778
        Width = 102
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          2058.458333333333000000
          269.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(-) DESCONTO / ABATIMENTO'
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
      object QRLabel47: TQRLabel
        Left = 499
        Top = 802
        Width = 81
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          2121.958333333333000000
          214.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(-) OUTRAS DEDU'#199#213'ES'
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
      object QRLabel48: TQRLabel
        Left = 499
        Top = 826
        Width = 61
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          2185.458333333333000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(+) MORA / MULTA'
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
      object QRLabel49: TQRLabel
        Left = 499
        Top = 850
        Width = 90
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          2248.958333333333000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(+) OUTROS ACR'#201'SCIMOS'
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
      object QRLabel50: TQRLabel
        Left = 499
        Top = 874
        Width = 72
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          2312.458333333333000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(+) VALOR COBRADO'
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
      object QRShape7: TQRShape
        Left = 0
        Top = 704
        Width = 717
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          1862.666666666667000000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 728
        Width = 717
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          1926.166666666667000000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 752
        Width = 717
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          1989.666666666667000000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 776
        Width = 717
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          2053.166666666667000000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 497
        Top = 800
        Width = 220
        Height = 2
        Size.Values = (
          5.291666666666667000
          1314.979166666667000000
          2116.666666666667000000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 496
        Top = 680
        Width = 1
        Height = 217
        Size.Values = (
          574.145833333333400000
          1312.333333333333000000
          1799.166666666667000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 592
        Top = 680
        Width = 1
        Height = 25
        Size.Values = (
          66.145833333333340000
          1566.333333333333000000
          1799.166666666667000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 497
        Top = 824
        Width = 220
        Height = 2
        Size.Values = (
          5.291666666666667000
          1314.979166666667000000
          2180.166666666667000000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 497
        Top = 848
        Width = 220
        Height = 2
        Size.Values = (
          5.291666666666667000
          1314.979166666667000000
          2243.666666666667000000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 497
        Top = 872
        Width = 220
        Height = 2
        Size.Values = (
          5.291666666666667000
          1314.979166666667000000
          2307.166666666667000000
          582.083333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 88
        Top = 729
        Width = 1
        Height = 48
        Size.Values = (
          127.000000000000000000
          232.833333333333400000
          1928.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 256
        Top = 729
        Width = 1
        Height = 48
        Size.Values = (
          127.000000000000000000
          677.333333333333400000
          1928.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 344
        Top = 729
        Width = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          910.166666666666600000
          1928.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 400
        Top = 729
        Width = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          1058.333333333333000000
          1928.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel51: TQRLabel
        Left = 91
        Top = 730
        Width = 90
        Height = 8
        Size.Values = (
          21.166666666666670000
          240.770833333333300000
          1931.458333333333000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#218'MERO DO DOCUMENTO'
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
      object QRLabel52: TQRLabel
        Left = 259
        Top = 730
        Width = 52
        Height = 8
        Size.Values = (
          21.166666666666670000
          685.270833333333400000
          1931.458333333333000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ESP'#201'CIE DOC.'
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
      object QRLabel53: TQRLabel
        Left = 347
        Top = 730
        Width = 28
        Height = 8
        Size.Values = (
          21.166666666666670000
          918.104166666666800000
          1931.458333333333000000
          74.083333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ACEITE'
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
      object QRLabel54: TQRLabel
        Left = 403
        Top = 730
        Width = 57
        Height = 8
        Size.Values = (
          21.166666666666670000
          1066.270833333333000000
          1931.458333333333000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA DO PROC.'
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
      object QRLabel55: TQRLabel
        Left = 91
        Top = 754
        Width = 38
        Height = 8
        Size.Values = (
          21.166666666666670000
          240.770833333333300000
          1994.958333333334000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CARTEIRA'
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
      object QRShape22: TQRShape
        Left = 176
        Top = 753
        Width = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          465.666666666666700000
          1992.312500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel56: TQRLabel
        Left = 179
        Top = 754
        Width = 33
        Height = 8
        Size.Values = (
          21.166666666666670000
          473.604166666666700000
          1994.958333333334000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ESP'#201'CIE'
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
      object QRLabel59: TQRLabel
        Left = 504
        Top = 713
        Width = 211
        Height = 16
        Size.Values = (
          42.333333333333340000
          1333.500000000000000000
          1886.479166666667000000
          558.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2707.870.00000001-0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel62: TQRLabel
        Left = 122
        Top = 761
        Width = 17
        Height = 16
        Size.Values = (
          42.333333333333340000
          322.791666666666700000
          2013.479166666667000000
          44.979166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel63: TQRLabel
        Left = 210
        Top = 761
        Width = 14
        Height = 16
        Size.Values = (
          42.333333333333340000
          555.625000000000000000
          2013.479166666667000000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel71: TQRLabel
        Left = 47
        Top = 909
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          124.354166666666700000
          2405.062500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome:'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel72: TQRLabel
        Left = 26
        Top = 927
        Width = 60
        Height = 18
        Size.Values = (
          47.625000000000000000
          68.791666666666680000
          2452.687500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 47
        Top = 945
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          124.354166666666700000
          2500.312500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel74: TQRLabel
        Left = 461
        Top = 927
        Width = 19
        Height = 18
        Size.Values = (
          47.625000000000000000
          1219.729166666667000000
          2452.687500000000000000
          50.270833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186':'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel75: TQRLabel
        Left = 584
        Top = 945
        Width = 32
        Height = 18
        Size.Values = (
          47.625000000000000000
          1545.166666666667000000
          2500.312500000000000000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP:'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRImage4: TQRImage
        Left = 9
        Top = 647
        Width = 125
        Height = 30
        Size.Values = (
          79.375000000000000000
          23.812500000000000000
          1711.854166666667000000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Picture.Data = {
          0A544A504547496D616765C85B0000FFD8FFE000104A46494600010101007800
          780000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080086027003012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
          A28A2800A28A2800A28A2800AF953F6CDFDB22DFE0769CFE18F0B4D0DDF8E6EA
          3059880E9A6C6470EE3A1908FBA87FDE3C6036B7ED89FB5CD8FC01F0FB68DA2C
          915EF8E6FE226DE03865B243C79F20FF00D054F53C9E073F931ACEB37DE22D5A
          EF53D4EEE5BED42EE569A7B99DCB3C8EC725893D49349B3E4739CDFEAE9E1E83
          F7FABEDFF07F23A9D6BE367C40F10EA6FA86A3E34D7AE6ED9B7798DA84A36FFB
          A036147B0C0ADFD07F6A8F8BBE1CDBF63F885AF305E8B7776D72A3F09370AF30
          B4B49EFAE62B7B685EE2E256091C512966763D0003926BEAEF823FB2184FB3EB
          5E3A8F7370F0E8C1B81E86623FF401F89EA291F1146589A93FDDC9DFBDD9ED1F
          B267C4EFDA57E34DDC17F79AAD8C5E0F8DF136ADAB6951833807948563F2CB9E
          DBB3B473939E0FDD83200C9C9F5AF08F03CDE26BAF234ED12E6482D2DD563518
          1E4C080600C1040007402BDBB4DB7B8B6B38E3BABA3797007CF3140993EC074A
          68FD332CBAA5693949F797E85AAA1AEEBBA7786348BBD5756BD834ED36D2332C
          F7572E1238D475249E95CE7C55F8B7E18F831E14B8F1078A7514B1B38FE58E31
          F34D70F8E238D3AB31FC87524004D7E4F7ED33FB5A789FF689D5DA0919F47F09
          DBC9BAD34689F20E3A49311F7DFF0045EC3A920B31CD29602367ACDECBFCFB23
          F4F341FDAB3E10F890A8B3F885A1216E8B79742D89FC25DA6BD1347F13E8FE21
          8BCCD2B56B2D4A3C677DA5C24A3F3526BF02AA482EA6B5956486578A45395746
          208FA1145CF9A8713545FC4A49FA3B7F99FD01820F434B5F861A17C74F88BE19
          DA34BF1D7886C917A4716A7304FF00BE7760FE55E89A17EDDBF1B741DAABE337
          BD887FCB3BEB3826CFFC08A6EFD68B9E8438970EFE3835F73FF23F62E8AFCC2F
          087FC1507E20E977510F10683A26B76608DFE42496B391DF0DB9947FDF15F7FF
          00C12F8CFA0FC78F015B78A3C3ED22DBBB982E2DA71892DA6500B46D8E320329
          C8EA181A67B584CCF0D8D7CB4A5AF67A1DF5145141EA85145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140057807ED69FB55697FB3B7857C8B5316A1E3
          2D4233FD9FA7B1C88874F3E503A203D075623038048D4FDA87F69BD13F673F07
          9B894C77FE26BD465D334ADDCBB74F324C722353D4F73C0EE47E3FF8E3C6FAD7
          C47F14EA1E22F10DF49A8EAD7D219269E43F92A8E8AA0600038000029367CBE7
          19B2C247D8D17EFBFC3FE0957C4FE27D53C67E20BFD6F5BBE9751D56FA5335C5
          CCED96763FC87600700000702B5FE1E7C32D7FE27EB2BA7687666623066B97F9
          61814FF13B76FA753D81AF46F81BFB326A9F133C9D5B5769349F0E672AF8C4D7
          43FE9983D17FDB3C7A03CE3EE1F03F80F4FF000C69F6DA1F86F4B5B680709040
          B9673DD98F563EA4D49F0F43093AEF9E7B3FBD9E79F06FF67BD03E135B25CAA8
          D4F5F65C49A8CC9CAE7AAC6BFC03F53DCF6AFA37C19F0C6EB5DD9777FBAD2C0F
          2063124A3DBD07BD6D69BE10D13E1EE8B3F88BC5F7D696905A279B2497520582
          DC7A927827FAF4CF15E0FA77EDBD3FC67FDA0FC27E01F877035BF87A5BEDF7DA
          C5C47896EE1895A5758D0FFAB4608465BE620F45EECFB0A386A183E455F46DA4
          A2B777EE7D83A6E996BA45A25B59C2B0409D1547EA7D4FBD5870C51B6901B1C1
          23201A751547D7A492B23F3D7F6A3FD8D3E337C49F105E78AAEBC5BA4F8AE388
          379164CCD622DA2EA1228DCB228F525F24F2493CD7C37E28F05EBBE0ABE367AE
          69575A64FCED1711901F1DD5BA30F7048AFDB2F89BA7417C2C22BDF1143A5477
          53A5ADADA4D802E276FBAA39CB31F4C1C004FA9AF2AF1E7C179EF74B9ECF5BD1
          EDF5AD31C7CE0279AA3DF18CA91EBDBD6A59F0799652A55253A49F9B6EFF00F0
          51F911457D17F1F3F6579FC1505C6BFE1512DEE8A997B8B26CB4B6ABDD81EAE8
          3F31DF23247CE948F8EA94A54A5CB2414514506415FABFFF0004F686D7C33F04
          34BD21E068350D464975577ED2EF202FD0F96B1D7E56E85A4CDAF6B561A6DB0D
          D7179711DBC63D599828FD4D7EC97ECFFE1A874B52B026DB6D3AD23B4841EC30
          00FC82FEB4D1F4D90297D6B9A3E9FD7DC7B4D51975CD3A091A392FED63914E19
          5A65041F719ABD5F995FF0535F871A0783BC75E19D7747B15B1BFD7D2EE5D45A
          263B67951A322423380C7CC3923AF1547DDE618A960A83AF18F35B7D6DE5D99F
          A4BFF090E97FF412B4FF00BFEBFE347FC243A5FF00D04AD3FEFF00AFF8D7E046
          F6FEF1FCE8DEDFDE3F9D2B9F2DFEB3BFF9F3FF00937FC03F7DFF00E121D2FF00
          E82569FF007FD7FC68FF0084874BFF00A095A7FDFF005FF1AFC08DEDFDE3F9D1
          BDBFBC7F3A2E1FEB3BFF009F3FF937FC03FA00B7BEB7BB5DD04F14CBEB1B861F
          A54F5FCFF5A6A175613ACF6B732DBCC9CAC9139561F422BDCBE10FEDADF143E1
          35F4006BB3F89347438934CD6A469D0AFA2393BD0FA60E3D41E945CE8A3C4B4A
          52B55A6D2EE9DFF447EC7D15C07C10F8CFA17C78F0059F8A342668E39098AE6D
          2520C96B32E3746D8FA820F7041EF5DFD33EC2138D58A9C1DD30AA0DAF6988C5
          5B51B55607041994107F3ABF5F8A9FB59DC68527ED15E395F0D5BA5A69515F98
          7CB88FC86655559D87D65121FC691E5667987F67538D451E6BBB6F6FD19FB37F
          F090E97FF412B4FF00BFEBFE347FC243A5FF00D04AD3FEFF00AFF8D7E046F6FE
          F1FCE8DEDFDE3F9D173E73FD677FF3E7FF0026FF00807EFF00DAEA36B7E5BECD
          730DC6DFBDE5481B1F5C558AF89BFE097173A04FF0D3C511DADB471F8962D454
          5FCD9CBCB014CC19F400F9C00FA9EF5F6CD33EBF0788FAD508D6B5AFF30AAD75
          A95A58B2ADCDD436ECC3204B20527F3AB35F2F7FC1423E1BF87FC47F00B5CF14
          5E5823EBFA1AC06C6F9490F1ABDC468E9C1E54863C1EF8341789AB2A1465562A
          FCAAF6DB6FBCFA47FE121D2FFE82569FF7FD7FC68FF84874BFFA095A7FDFF5FF
          001AFC08DEDFDE3F9D1BDBFBC7F3A573E37FD677FF003E7FF26FF807EFFDADFD
          B5F0636D7115C05FBC6270D8FAE2AC57C5FF00F04D6F1DF81AF3E1DDD786B4CB
          68F4CF1A42E67D4D649097BF40C764C993D143042A3EE9E7F8B27ED0A67D7E13
          10B154235975EDADBC842400493802A87FC241A5FF00D04AD3FEFF00AFF8D5E9
          23596364750C8C0AB29E841AFC78FDB87E1CE83F0BBE3EEA3A4F86AC8699A5CB
          6905D2DA46C4A46EEA7705C938048CE3A0CF1C7141C99963A580A4AAA8F32BDB
          7B7E8CFD79FF0084874BFF00A095A7FDFF005FF1AB56D7705EC7E65BCD1CF1E7
          1BA360C33F515FCFFA331751B8F27D6BF767E17FC33F0F7C25F085A787FC33A7
          A69FA7C78919549669642A0348C4924B1C0C9F6A4736599A4F3194BDCE551B75
          BEFF002F23ADA2B13C65E33D13E1F7872F75EF10EA30E95A4D9A6F9AE673803D
          001D4927800649270057E747C78FF82937897C4D7573A5FC3883FE11BD201283
          54B84592F661EAA0E56207E85BBE474A67763330C3E0637AAF5E896E7E93EA5A
          BD8E8D6CD71A85EDBD8DBAF596E6558D47E24815C3DF7ED11F0BB4D90C773F11
          3C311C83AA7F6B40587D406AFC52F12F8C75EF19DFB5F6BDACDFEB378C4933DF
          DCBCCFF9B1358F4AE7CAD4E2695FF774B4F367EE4E9DFB407C32D5E411D9FC41
          F0C4F21E91AEAD06E3F86FCD76F65A85AEA56E93DA5CC575038CAC90B8756FA1
          15FCFF00D6D786BC6BE21F065E0BAD035CD4745B9CE7CDD3EE9E063F52A45170
          A7C4D2BFEF297DCCFDEEA2BF253E1F7FC1447E2DF833CB8751BEB2F15D9AF1E5
          EAB6E04807B491ED627DDB757E81FECABE36F1BFC50F87D378D7C6660B55D6EE
          0CDA56976D0844B4B450154EE3F3317219B2C4F0411807141F4583CDA863A5C9
          493BF5D363DA28AE2FE2CFC5FF000C7C14F094FE21F14EA0B67689F245128DD3
          5CC98C88E34FE2638FA0EA48009AFCD1F8E1FF000506F883F12EEAE2CFC3370F
          E0AF0F925523B17FF4C917D5E6EAA7D936E3A64F5A6698ECCF0F8056A8EF2ECB
          7FF807EA56BFE32D03C2910935BD6F4ED1E33C87BFBB8E107F1622B8E93F695F
          84F1CBE59F88FE17DDD38D5A023F30D8AFC49D4353BCD5AEE4BABEBA9AF2E643
          B9E69E42EEC7D493C9AAD4AE7CBCF89AA5FDCA4ADE6CFDE2F0EFC4DF07F8BE40
          9A178AB45D65CF44B0D4229CFE4AC6BA5CE6BF9FA8E4789D59199194E4153820
          D7BA7C1FFDB4BE27FC21B9823875C97C41A32101F4BD65DA78F6FA2393BE3F6D
          A71EA0D173A68712C24ED5E9DBCD6BF81FB254578E7ECEDFB51784FF0068BD15
          E4D25CE9DAEDB206BCD16E5C19A2EDBD4FF1A678DC3D4640240AF63A67D852AB
          4EBC154A6EE9851484850493803BD7C4DFB4C7FC144F4FF045E5DF86FE1BC56D
          AE6AF1131CFACCDF3DA40DD088C03FBD61FDECED1FED7380C3158BA38387B4AD
          2B2FC5FA1F6B5C5C45690BCB3CA90C4832CF2305007A926B86D53E3E7C34D125
          315F78FF00C356B283831C9AB401C7E1BB35F8CBF103E31F8D7E29DEBDCF8ABC
          4BA86B2CCDB84534C4429FEE44308BF8015C76734AE7C8D5E2677FDD53D3CDFF
          0097F99FB91A77ED07F0C757944569F10BC313CA7A46BAB41B8FD06ECD775697
          B6F7F6E93DACF1DCC2E32B244E19587B115FCFED751E07F8A3E2EF86B7EB79E1
          7F116A3A24C1B711693B2A3FFBE9F7587B30228B8A97133BFEF6969E4CFDE0A2
          BE0CFD9BBFE0A4116B5796BE1FF8A51C1633C84471788AD97642CDDBCF41C267
          FBEBF2F3CAA8C9AFBBE09E3B9852685D658A450C8E872AC0F2083DC533EB7098
          CA38D873D177FCD7A905CEAD63672F973DE5BC12633B249554FE44D45FF090E9
          7FF412B4FF00BFEBFE35F17FFC14EBE1BE80BF0F34AF1BC760B0F897FB4E1D3E
          4BD42434B018A53B1867070514838C8E7D6BF3637B7F78FE74AE7878FCEE781A
          EE8BA77F3BFF00C03F7DFF00E121D2FF00E82569FF007FD7FC68FF0084874BFF
          00A095A7FDFF005FF1AFC08DEDFDE3F9D1BDBFBC7F3A2E79DFEB3BFF009F3FF9
          37FC03F7DFFE121D2FFE82569FF7FD7FC6A7B7D4ECEF33E45D43363FE79C81BF
          957E00EF6FEF1FCE9D1CF2C2EAE923A3A9C8656208345C6B89DF5A3FF937FC03
          FA04041E9CD2D7E287C33FDAA3E27FC29BD865D1FC577D3DA2302DA76A32B5CD
          B38EE36393B73EAA54FBD7EA07ECB3FB4FE93FB48F84A6B848174BF11E9DB535
          1D37764293D248CF528D83D7904107B125CF73019C50C74BD9A5CB2ECFAFA33D
          BE8A28A67BC15E47FB48FED1BA0FECEDE0A7D4F5065BCD66E43269BA52BE1EE6
          403A9FEEA2E4166FA019240ABBFB40FC7EF0F7ECF9E089B5CD66413DECB98F4F
          D3237025BB971F747A28C82CDD00F52403F8EDF163E2B7887E3378D6F7C4DE24
          BB3737D707091AE4456F18276C51AFF0A8CFE3C93924928F9CCDB358E0A3ECA9
          EB51FE1E7FE455F891F11F5EF8AFE30BFF0012F892F5AFB53BC7CB13C246BFC3
          1A2FF0AA8E00FEB935EEDFB317ECE31F8892DFC5DE28B6126999DD63A7CABC5C
          1FF9E8E3FB9E83F8BA9E3AF97FECF9F0B7FE16A7C40B7B3B9463A4598FB55F30
          E3280F099F56381F4DC7B57E9C7C3EF027FC243711DBC518B4D2ED55558C6A00
          5503011474E83F01527C56070B3C5D4E796ADBFBDF72BF84FC1979E249960B28
          8436B1E15A62B88E31E83DFD85697C59F8DBF0FF00F64FF0D97D4261A8F88AE2
          3CDBE9B030375727B13FF3CE3CFF0011E38380C462B1BF6AAF8CDE32F825E128
          F4CF877E05D4B519E487E6D6E3B333DA58AFA90B92CFDF2E028C8277722BF27B
          C4FE22D5FC57AEDE6ADAEDF5CEA3AADD485E7B9BB72D23B7B93E9D31DB18AAD8
          F7F178C8657FBBA4AF53BB5A2F4EFF00D7A1E85F1E3F696F19FED05AD1B8D7EF
          7C8D2A272D69A3DA92B6D6E3B1C7F1B63F8DB27938C0E2BD07F60769B4BF8B7A
          96B90C4924B61A5C8913B8C88E491954363FDDF33F3AF9A2BECFFD807C33F6AB
          0D6AF4AFFC7F6A105906F64193FF00A34523E670B52AD7C5C6A4A5795F73F4AB
          41130D16C4DCC8D2DC342AD23B752C464FEB5E4BFB477ED4FE14FD9DB4426FE4
          1A9F88E78CB59E896EE04B27A3C879F2E3CFF11EBCE01C1AF22FDAB3F6F5D2FE
          17ADDF857C0525BEB3E2A50629EFC61ED74F6E847A4920FEEFDD53D72415AFCC
          EF11F89354F176B777AC6B57F3EA7A9DDC8649EEAE5CBBC8C7B927F2C761C53B
          9F63996751C2AF6186779F7E8BFCD9F477C28F8DFE28F8EDFB5EF8135DF166A2
          1D22D47741688765B59C6159B6C6A4F038192724E3926BF58ED2EA2BEB68AE20
          712432A86461DC1E86BF12BF66A50DF1BFC2A0FF00CF790FFE427AFDA5F090C7
          85B48FFAF48BFF00411422387ABCEAC6A73BBB6EF7FB8C1F19FC34B0F12432CD
          6C896B7E41CB01F24BECC3FAFF003AFC9EFDACFE07BFC21F1EB4D6D6C6DB4AD4
          99DD21C605BCA3978C76DBC865F6381D2BF656BE68FDBF7E18DB78DBE00EB7AB
          246A352D0C25F46F8EA8AC038FC119FF005A1A3AF38CBA15E84AAC15A51D7FCC
          FC8EA28A2A4FCC8F61FD947C2FFF000927C64D32574DF06991C97D271DD46D4F
          FC7D94FE15FAE9F09B4DFB0F84A3948C3DD48D29F5C7DD1FCB3F8D7E767EC2DE
          1261A4EBFAE98F74977711D8C071CE146E6C7D4BAFFDF35FA77A558AE99A65AD
          A27DD82258F8EF818A68FBEE1EA368BA8FFABFFC316EBF3C3FE0AB7FF215F86F
          FF005C6FFF00F4282BF43EBF3C3FE0AB7FF215F86FFF005C6FFF00F42829B3D7
          CF3FDC2A7CBF347C0D5F5C7EC5DFB227847F68DF09788354F11EA5ACD8CFA7DE
          ADB44BA64D122B2940D96DF1B9CE4F622BE47AFAC7F636FDAFBC35FB3878535F
          D2B5CD1F55D4A6D42F56E637D3C465554205C1DCEBCF1491F9F65BF57FACAFAD
          5B935DCFA4BFE1D73F0BBFE860F167FE055B7FF23D4571FF0004B7F868C9FB8F
          1278A636F5927B761F9084557FF87A5FC3EFFA157C49FF007CC1FF00C729937F
          C1533C04B1931784FC44EFD83F90A3F3F30D3D0FB2BE47FDDFC4F9D3F6AEFD87
          E7FD9EBC35078A34AD7DB5DD0A4B95B5963B880453DBB3025092090EA7041385
          C123839C8F95EBE9BFDAA3F6DAD4FF00689D16DFC3963A22F87FC390DC0B9747
          9BCE9EE5D410BB8E0055192768CF38E78AF99A289E791238D1A491C855451924
          9E800A47C5E61F5575DFD53E0F9EFE57D4FBB7FE0959E20BA8FC53E39D0F7B1B
          296CE0BCD87A2C88E5323D090FF8E07A57E8CD7C9BFF0004FBFD9DB54F83BE07
          D4BC43E24B56B2D7FC43E595B294624B6B64C940E3F85D8B1257B00A0E0E40FA
          CA99FA464F4AA51C14235347AFE2CE0BE3B7C488BE127C22F1478ADD944BA7D9
          B9B656E8F3B7C912FE2ECA3E99AFC38BAB996F6E65B89E4696695CBBC8E72598
          9C924FAE6BF43BFE0A8FF147ECBA4F863E1FDACD892E9CEAD7CAA79D8B94841F
          62DE61FAA0AFCED0326933E3B88713ED712A92DA0BF17BFE87BCFC03FD9AAEFE
          31FC2DF89BE2689243368362A74D55CE26B9044B2281DCF948571EB2A9ED5E0C
          460D7ED07EC83F0B07C28FD9FF00C33A4CF0F95A8DE43FDA37E08C1F3A601B6B
          7BAAEC4FF8057E5D7ED57F0A4FC1DF8E7E25D0628BCAD3649BEDBA7E0617ECF2
          FCCA07B292C9F543418E6196FD570B46B25ABF8BD5EABFC8ECFF00608F8B1FF0
          ACBE3F69769733797A578897FB2AE031F9448C4185BEBE6055CF60ED5FAF55FC
          FDDB5CCB677314F048D14D1387474382AC0E4107B1AFDC0FD9F3E2845F18BE0F
          7867C54ACA6E6EED425E2AFF0005CA7C928C761BD491EC45347B7C378AE684F0
          D2E9AAFD7FAF33D12BC17F6EAFF9355F1DFF00D72B5FFD2B86BDEABC17F6EAFF
          009355F1DFFD72B5FF00D2B8699F4F8EFF0074ABFE197E4CFC71A28AF5EF875F
          B396B7F153E0FF0089BC63E1CDF7B7FE1FBB54B8D2D172F34063DC5E3EE59704
          95EE3A723060FC829D29D6972D3577BFDC79D7837C63AC7C3FF13E9FE20D06FA
          4D3B56B0944B05C447907B823A10464107820907835FB07FB2DFED33A3FED19E
          0C1729E5D8F89EC555353D3037DC6ED2C79E4C6DDBD0F07A64FE31918383D6BA
          AF861F1375FF00843E33B0F13F86EF0DA6A368DD0F31CC87EF4722FF001230E0
          8FC46080433D5CB3329E5F535D60F75FAAF3FCCFDDEAFC9CFF0082917FC9CADC
          FF00D82ED7F9357E89FECF7F1FB40FDA13C0B0EB9A438B7BE8B116A3A63B664B
          49B1D0FAA9E4AB771E84103F3B3FE0A45FF272B73FF60BB5FE4D4D9F5B9ED485
          6C046A53774DAFD4F9723FF58BF515FD00248B0DA2C8EC1115373331C0031D6B
          F9FF008FFD62FD457ECA7ED95E3A9BE1FF00ECCFE2DBEB590C579776C9A742CA
          704199963620F62119CFE1423CAE1FAAA852C45596D149FDDCC7E787ED97FB4C
          DEFC79F8817163A7DD3A782F4899A2D3EDD4E16E1870D70C3B96E76E7A291D09
          6CFCF145757F0A7E1E5EFC57F88BA0784B4F611DCEAB74B079A5770893ABC847
          70AA19BF0A47CB55A9571959CE5ACA4FFA42FC38F851E2DF8B7AC9D2FC25A15D
          6B576A0193C85023881E85DD88541EEC457D3FE1AFF825E7C43D4ADD65D63C41
          A168ECC01F251A4B8917D9B0A17F226BF43FE16FC2DF0EFC1EF0759786FC3562
          967636EBF33E3324F263E69246FE263EBF40300003AEA763EEF0BC3B42114F10
          DCA5E5A2FF0033F36751FF008256F8AE2849B1F1B68F712E385B8B69625FCC6E
          FE55E29F13BF625F8B5F0B6D66BDBCF0F7F6CE991025EF74593ED28A07525001
          2003AE4A81EF5FB2349D68B1D15787B0735685E2FD6FF99F87BFB3FF00C24BBF
          8D9F16B41F0A401D20B89BCCBD9947FA9B64F9A56F63B4607FB45477AFDA7BEB
          CD1BE1C78366B998C5A6683A2591638184820893A01E8157815C4FC3BFD9F3C3
          DF0E3E2978DBC71A7246B7DE2568BF711C0234B440A3CC55C1E7CC90798C78E7
          1C71CF907FC149FC773785BE0145A3DB4863975FD462B59769C130A032BFFE3C
          918FA1346C460F0BFD8D84AB5A7ACB5FC36FBF7F99F9F7FB46FC7CD67F682F88
          777AEDFBC90E9713343A669C5BE4B5833C0C74DEDC166EE7D8003CB28AF72FD8
          D7E0B5B7C70F8DDA7695A9C7E6E87A7C4DA96A11F3896242A0464FA33B203EC5
          A91F0115571B5D26EF293347E037EC49F103E3A5845ABC3143E1DF0E49FEAF53
          D4B23CF1EB1463E671FED1C2F5C1E2BE8CB7FF008252D80B5C4FF116E1AE31F7
          A3D254203F43293FAD7DE96D6D0D95BC56F6F1241044A1238A350AA8A0600007
          40076A969D8FD16864383A704AA4799F76DFE87E567C60FF008270F8FBE1EE9B
          71AA7876F6DFC6B610297921B588C378147391112437D158B7A035F26491BC32
          323A9475386561820FA1AFE81ABF33BFE0A57F036C3C1BE2BD27C7BA35B25ADB
          6BCEF06A3144B85FB5A8DC24F4CC8BBB3EE84F5634347859BE4B4F0D4DE230FB
          2DD7EA8F91FC07E3AD6BE1AF8B34EF11F87EF5EC355B0944914A8783EAAC3F89
          48C820F04122BF69BE027C61D3FE3A7C2FD23C5962A2192E14C5796A0E4DBDC2
          F1247F4CF23D5594F7AFC3AAFBC3FE0965E3C9ADFC45E33F07C9216B69ED1356
          863278478D847211FEF0923CFF00B829239320C64A8E25506FDD9FE7FD6876BF
          F0514FDA6EEBC1F629F0D3C3576D6FA9EA1009757BA85B0F0DBB7DD8411D0B8C
          96FF006703F8EBF36ABB3F8CDE399BE257C56F15789A790C9FDA3A84B2C649CE
          D8B76235FA2A051F85718064D079598E2E58DC44AA37A6CBD0E9FE1CFC33F12F
          C58F1341A0F8574A9B56D4A51B8A4780B1AF7777385451EA481C81D48AFB2FC1
          DFF04ADD56EECA39BC4FE38B6D3EE5802D6BA6D91B80BEDE63327FE835F507EC
          71F036C3E0B7C1BD207D9917C43AC411DFEA97257F785DD772C44FA46ADB71D3
          3B8F735EED4EC7D865F90D05494F12AF27D364BEE3F3CBC53FF04AABB8ACDE4F
          0E78F61B9B900EDB7D4AC0C48DE99911D88FFBE4D7C71F15BE0E78B7E0AF88CE
          8BE2DD2A4D3AE48DF0CA08786E13FBD1B8E187EA3A100F15FBA95E5DFB47FC13
          D37E3BFC2DD57C3F7704675158DA7D32E987CD6F72AA76107D0FDD61DC13ED45
          8BC6E414274DCB0CB964BA5F47F79F8915FA03FF0004E7FDA6EEA6BD4F857E24
          BB69E368DA4D0AE266CB26D059ED893D460165F4C30EEA07C033C0F6D3C90CA8
          6392362AC8C304107041AD6F05F8A2F3C13E2ED1BC41A7B98EF74CBB8AEE120E
          3E6460C01F638C1A47C4E07173C1578D58EDD7CD753F4D7FE0A75FF26F5A6FFD
          87EDFF00F44CF5F9635FA87FF0522D4E1D6BF664D0350B73BA0BBD66D278C9EE
          AD6F330FD0D7E5E50CF53881DF1B75D91F427EC63FB3CF87BF68BF1CEB7A3788
          AF752B1B5B1D3BED71BE992468E5FCC45C12E8E31863DABEBFFF00875CFC2EFF
          00A183C59FF8156DFF00C8F5F1DFEC71FB44689FB3978DB5AD6B5CD3AFF52B7B
          ED3FEC891D8042CADE62B64EE60318535F5BFF00C3D2FE1F7FD0ABE24FFBE60F
          FE394D1DD963CB3EACBEB56E7D77B96A5FF825C7C31287CBF1178AD5BB16B9B6
          23F2F20578CFED11FF0004E94F863E02D5FC5BE15F134FAA5B69509B8B9D3B51
          81448621F7DD6452012A39DA54700F39E0FADBFF00C1533C0014EDF0A788CB76
          056003FF0046578B7ED13FF0512BBF8ADE08D4BC25E19F0E3687A7EA51F93777
          D7938927788FDE4545002E7A124B704F03AD1A1D38B792FB19725B9ADA5AF7BF
          F5DCF8CEBE99FF008275F882EB47FDA7745B281D960D56CEEED6E147464585A6
          19FF008144B5F3357E81FF00C137FF00671D5F4BD5E6F89FE20B392C6D9AD9AD
          F4686752AF36FC6F9F0790BB72ABFDEDCC7A004A47CDE534AA55C653F66B669B
          F45B9FA0B5E7BF1C7E37F877E02F81EE7C45AFCF92331DA58C6C3CEBB9B1C468
          3F527A01CD5BF8C3F17FC3BF047C1179E26F11DD7936D08D90DBA1065BA9483B
          628C77638FA000938009AFC75F8F1F1D7C45F1FBC713F8835D97CB85731D8E9F
          1B13159C39E117D4F766EA4FB60067DEE6B9A47010E486B37B7979B29FC68F8C
          DE22F8E7E37BBF12788AE37CB27C96F6B193E4DA440FCB1C63B01EBD49C93C9A
          E128A2A4FCBE73954939CDDDB3EE9FD897C146D7E1D9D4238B75EEB97A4211D4
          A21F2D17FEFAF30FE35FA17E1BD0A1F0E68F6F63081F20CBBFF7DCF535F297EC
          0F6116A5F0DFC2D385063B4B59DFFE07E73AFF00324D7D83548FD3324A0A1875
          53B98FE2ED78785FC397FAAB468F15A44D348D2CAB1A468A09676663C000126B
          F309E3BAFDB27E395F789750B216FE0CD2D8445A28BCA37001CAA16183B9FA9E
          72ABC673827D93F6CAF8C5AC7C68F883A7FC04F876E6E67B8B958F59B989BE42
          E3E631330E89181BE43EAA07F0907DBBC2BF0FB4EF86DE11D17E16784543C76F
          86D42F76E1AE273CC923E3DC64FA00AA3A50CE3C7CBEBF55D38BF721A7F8A5D9
          7A753E52F15FEC4FE14D537C9A1EA57BA24A7A46F8B8847E070DFF008F5664DF
          06FE30783BE1EC7E0EF014116A11B34D737B79A65C7977728638DAAAFB768DA1
          41DA4B1FA75FD1393E15E832D8436ED03ACB1A053711B95763DC9EDFA566587C
          39BEF0ADC5D5DE8B7714F71244628C5D2EDF2F2412723209E3D852B18BC91C65
          7B5975E5DCFC51F13F8435DF066A4F61E20D1EFB46BE5EB05FDBBC2FF5C30191
          EF5915F587ED77E26D67E267C60B1F869A731BFBDB5BB11DC947F33CCBB61839
          233C46A4E7D32D9FBB5E837FFB1EF80AFF0046B4B510DDD95F430AC6F7D6B390
          D2B0182ECADB9793CF0075A47C94B0729549C69ED1EE7CB7FB3571F1BFC2DFF5
          DE4FFD14F5FB4BE1318F0BE91FF5E917FE802BF36FC07FB25DE7C3BF89BA2F88
          2CB5D8751D36CE5779229E2314C0146518C6437247A57E93785BFE459D27FEBD
          22FF00D005523EBF87A9CE97B48CD58D4AF2CFDA96F22B1FD9D3E22C930051B4
          4B98C67FBCE8557F5615EA75F21FFC14AFE2643E16F8296FE158A6C6A3E24BB4
          531A9E7ECF0B091DBFEFBF287BE4D33E931F5551C2D49CBB3FF247E59D1456E7
          817C38FE2EF1968BA3203FE9D77140C47F0A96018FE0327F0A83F1C49B7647E9
          2FEC75E04FEC5F07782EC1E3C398BFB467C8E773E6500FD32ABF857D8F5E49F0
          3B47485EF6ED502470C6B6F1803803A903E985AF5BAA47EB5955254B0CBCFF00
          E182BF3C3FE0AB7FF215F86FFF005C6FFF00F4282BF43EBF3C3FE0AB7FF215F8
          6FFF005C6FFF00F428286639E7FB854F97E68F81AB77C3DE02F1378BA0967D0F
          C3DAAEB30C4DB24934FB2927546C6704A29C1C56157E94FF00C12BFF00E49B78
          D3FEC2B1FF00E89148FCF32EC22C6E215193B5EE7C13FF000A57E217FD08BE24
          FF00C14DC7FF0011505D7C22F1CD926FB8F06788204FEF4BA64EA3F55AFDDBC5
          1807B53B1F5BFEACD3FF009FAFEE3F9FEBBB2B8D3EE1E0BA824B6990E1A3950A
          B29F706BD3BF678F8ECDF00FC669AEAF86349F11E480DF6F8FF7F081D4C1273E
          5B1F5DA6BF537F6AEF84FE17F88DF063C5736B7A7DB1BDD334CB8BDB3D499009
          ADA48E367521FAED257057A104D7E2F52D8F9CC760EA6515E2E13BF54EDFA6A7
          EE2FC10F8E7E18F8F9E0E4D7BC3770DF2111DDD8CF813DA498CEC703F30C3823
          A7703D09982A924E001926BF25BFE09D9E39BEF0C7ED1DA66910CAC2C35FB69E
          D2E62CFCA4A44D2A363D4347807B066F535F7FFED8BF147FE153FECFFE26D4A1
          97CAD4AFA2FECCB120E1BCD9815C8F754DEFFF0000A67DD60332FAC609E26AE8
          E37BFCB5FC4FCB6FDA87E281F8BDF1CBC53E218E5F36C1AE4DAD890723ECF17C
          9191E9B82EEFAB1A97F656F85C7E2EFC75F0B6832C5E6E9EB702F2F81195FB3C
          5F3B83ECD809F5715E4C4E4D76BF0AFE32F8B7E0AEB375AAF83B534D2B50BA83
          ECD2CED6B0CE4C7B83151E623639553C7A0A47E6D0AD19E2556C46A9BBBFCCFD
          D2000000E82BE1FF00F829F7C28FED9F05685E3EB38775CE8F2FD86F594726DE
          53F231F65938FF00B6B5F2EFFC37E7C75FFA1D57FF0005567FFC66B1BC63FB66
          FC5EF1F786351F0F6BDE288F50D235088C3736CDA65A2EF5EBD562041C804104
          10453B9F5D8DCEF078BC3CE8B8CB5DB45BF4EA789D7DF5FF0004BBF8B1E45FF8
          93E1DDE4D849D7FB5B4F563FC6309328F723CB6C7FB2C6BE05AED3E0C7C46B9F
          84BF14BC37E2CB62C4E9B78924A88799213F2CA9FF00024661F8D23E572FC4FD
          53130ABD13D7D1EE7EEA5782FEDD5FF26ABE3BFF00AE56BFFA570D7B8699A95B
          6B3A6DA5FD9CCB716975124F0CA872AE8C01561EC4106BC3FF006EAFF9355F1D
          FF00D72B5FFD2B86A8FD531CEF84AAD7F2BFC8FC71AFD24FF8256F3E00F1BFFD
          84A1FF00D155F9B75FA49FF04ADFF9103C6FFF0061287FF4554A3F3BC87FDFE1
          E8FF002390FDBBFF00635FECA7BFF895E06B1FF426266D6B4AB75FF527AB5C46
          A3F84F5751D3EF74CEDF82ABFA06923595191D43A30C15619047A57E61FEDC7F
          B1BB7C33BEB9F1DF832CCB784EE64DD7D610AE7FB36463F7947FCF2627FE024E
          3A1186CF573ACA792F8AC3AD3AAEDE6BF53E74F821F1ABC43F01FC7569E24D02
          6C95FDDDDD93B1115DC24FCD1B8FD41EA08045765FB61FC57D17E357C57B6F15
          E82EFF0063BBD26D83C328C4904AA183C6DEE0F71C1E08E0D7875148F93589A8
          A83C3DFDD6EFF31D1FFAC5FA8AFD58FF008290C5249FB3386407626AB68D263F
          BB871FCC8AFCA78FFD62FD457ED5FED43F0EA6F8A7FB3E78B340B588CD7EF642
          E6D5147CCD34244AAA3DD8A6DFF81508FA1C9E9BAB85C5423BB4BFF6E3F14ABE
          89FD802F6D6CBF6A6F0A7DA4AA9963BB8A2663802436F263F13C8FC6BE76652A
          482304704569F85FC49A8783BC47A6EB9A4DC35AEA5A75C25D5BCCBCEC746041
          C77191D3BD07CEE1AAAA15E155FD969FDCCFDF5A2BC23F671FDAEBC1FF001EF4
          4B587EDB068DE2D5402EB45B8936B17EED093FEB14F5E391DC0EFEED9CD51FB1
          D1AD4F11055293BA62D145735E39F893E17F869A43EA7E28D76CB44B250487BA
          942B3FB22FDE73ECA09A0D6528C17349D91D2D7C25FF0005568A53E12F00C833
          E4ADEDD2B7A6E2898FD0356A7C2AFDBBB4FF0019FED47AA6826F673E05D6C436
          7A34B78823305D2281903A85998B0F9B273B3A7207A1FF00C1417E1B4FF107F6
          78D42EACE2335EF87EE135655419668D4324BF8047673FEE523C0C5D7A798602
          B7B077B5FF00077FC7A1F91B5F6F7FC12BE6817E2478CE2623ED2DA546C833CE
          C1280DFA95AF886BD5BF662F8D0FF01BE30691E27911E5D30EEB4D4618C659ED
          9F1BB03B95215C0EE540A47E7D97568E1F174EACF64FFE01FB654565F867C4DA
          578CB41B2D6B44BF8352D2EF2312C1756EFB91D4FF005EC41E41041E6B52A8FD
          8535257415F1FF00FC15027813E0168D1484199FC410188679C8827C9FCB8FC4
          57D7B2CA90C6D248CA88A0B3331C0007524D7E53FF00C1403F68BB0F8C7E3CB1
          F0F7876E96EFC39E1EF317ED719CA5D5CB101DD4FF00122850A0F7F988C820D2
          67859D6221470738C9EB2D11F2957D53FF0004E3B6B9B9F8E5ACADB03B87872F
          3381EAF101FF008F15AF95ABF433FE096BF0D67B7B3F16F8EAE622915CECD26C
          DC8C6E0A449311EA33E50CFA83E9491F0594527571B4D2E9AFDC7E7AC80AC8C0
          8C104E41A584A89A32C32BB8640F4AF4BFDA5BE1BCFF000A7E3878B74092231D
          B25EBDC5992301ADE53BE323D70AC01F753E95E6348F32A539529CA12DD3B1FD
          0069F34371616D2DB90D03C6AD195E8548E31F8558AF97BF614FDA3F4CF8AFF0
          CB4DF0BDFDE245E2ED02D96D65B791806B98106D8E64FEF614286EE08C9E1857
          D43567ECB86AF0C4D28D583D1FF560A46FBA7E94B5E0BFB5EFED1DA67C07F86F
          7D1C1771B78BB5481E0D2ECD18191198106761D913AE7BB003D70155EB430F4D
          D5A8EC91F92BF12E682E7E2378A65B5C1B69355BA68B07236995B1FA57363A8A
          092C493C935D77C23F87F77F14BE25F873C2B648CD2EA7791C2ECA33E5C79CC8
          FF004540CC7E9527E3094AAD4B456ADFE67DE5FB6CC52C1FB107C388E6C89925
          D295F3D770B29335F9BF5FA93FF052FB58ECBF670D1EDE1411C316B96B1A20E8
          AA209C015F96D433DDCF63CB8B51ED146AF87BC29ADF8B6E64B7D0F47BFD66E2
          34F31E2B0B679D95738DC428240C91CD6F7FC295F885FF00422F893FF05371FF
          00C457D43FF04B3FF92B7E2CFF00B027FED78EBF4CF14EC75E5D92431D8755A5
          36AF7E87E13CDF073C7B6E85E5F04F88A241D59F4A9C0FFD02B9BD4F47BFD167
          F2350B2B8B19B19F2EE6268DB1F42057EFE607A5737E3EF877E1CF899E1BBAD1
          3C4BA4DB6ABA7CE854A4F182C848FBC8DD55876618228B1DD5386572BF67575F
          35FF0004FC47F861E3F6F865E31B1F102689A56BEF6AD9167AC5BF9D013EBB72
          30C3B1EC79AFD6EFD99FF6ABF0C7ED1BA3CA96319D1FC4765186BCD1A670CCAB
          D3CC8DB8DE992067008240206467F1E7C4FA5C5A1F89756D3A09BED305A5DCB6
          F1CDFDF5572A1BF10335DB7ECE1E39BEF877F1C3C1BACD8CAD195D4A1827553F
          EB2191824887D72AC7F1C1ED491E165798D4C0D654DFC0DEABF53A8FDB07E36E
          ADF197E32EB46E6791744D1EE65B0D32CF3F2471A3152F8FEF395DC4F5E83A28
          AF0EAFD06FDAD7F626D2356F19DDEB9E0EBE3A56A7A9EFBDBAB0BA19B679598E
          4A301B9327248C30C9E3038AF88BC6FF000C3C4FF0EAEFC8D7B499EC949C24F8
          DD0C9FEEB8CA9FA67341CD98D0AF4F11375B577DCE5A8A28A47947E8D7FC12EF
          C6F06A3E1EF1278625900BDD3D96E214279681CF381ECF9CFF00BC2BEEEAFC36
          F815F18B55F817F12B4BF15E963CDF218C5756A4E16E6DDB1E6467EA0020F660
          A7B57ED0FC34F893A07C5AF0758789BC377AB7BA6DE26476789C7DE8DD7F8594
          F047F3041AA47E959062E1570FEC1BF7A3F91C6788FC1FE09F85FAE5F789F41F
          0E69DA778BF5689A07BCB58423B296DCEE40E324E0938CB1C6738AEA3E1BF849
          B42D3DAFAF149D4AEC6E72DD514F3B7EA7A9FF00EB575179A4D96A124725CDAC
          33C9190C8F22025483918356E99EE470C955F69A596C97E2FD42BCA7F69BF8D5
          6DF01FE11EAFE236646D51D7ECBA640FFF002D6E9C1D9C770B82E7D90D7AB578
          AFED2BFB30683FB47697609ACEB5A968F3696246B596D5D4C2A5B1B9A48D861B
          851D083EF4158AF6DEC25EC3E3B687C71FB12F80EE63835EF8B1AD979F55BF92
          6B1D2A69F97677E6EAE7279CFCDB037AB3FA57DD5F0FFE1F58CDE1C13EAB68B3
          CB77F3A87C8289FC3823919EBF88AF3EF875E07B06B9D1BC33A4C463F0EE8B6E
          96F102304C49D59BFDA918963EEE6BE875508A15400A06001DA923C5CAF0718C
          3DED52D3D5F57FD743CF355F833A7DC6E6B0BB96D1BB2483CC5FE87F535DC68F
          64DA6E916568EC1DE08122665E84AA819FD2AE562F8C3C67A27803C3F77AE788
          753B7D274AB55DD2DCDCBED51E80772C7A051924F001A67B91A34683738AB772
          C7893C47A6F84341BFD6B58BC8EC34CB185A7B8B994E15114649FF00EB0E4F41
          5F8C1FB4D7C74BCF8FFF0015350F10C9E643A545FE8BA65A487FD4DB293B723F
          BCC4966F76C670057A17ED79FB63EA3F1FF503A168627D2BC0F6B26E4B773B65
          BE707892503A01FC29CE3A9C9C63E66A967E7D9D668B172F6145FB8BAF77FE41
          5EEFFB1BF85FFB6FE2C7F68BA661D26D249C1238F31BF76A3F2663FF0001AF08
          AFB6FF00616F063AF842FB52098B8D62FD6DE238EA91F00FFDF4EFF9523C3C1D
          3F695A28FD02F863A67F66F842D091892E099DBF1E9FA015D5D456B6C9676B0C
          118C47120451E800C0A96ACFD86943D9C230EC82BF3C3FE0AB7FF215F86FFF00
          5C6FFF00F4282BF43EBF39BFE0A0969E30F8CDE3AD1B4DF0D7C39F185E5A7870
          5CDBC9A82E8B3B4372EEC993132A90C804630DDF3F894CF1B3CD705282D5BB5B
          EF47C215F447ECCBFB626A3FB35F87B57D2ACBC376DADA6A374B72D24F72D114
          2102E000A73D2BCE3FE19E3E29FF00D135F177FE08EE7FF88A3FE19E3E29FF00
          D135F177FE08EE7FF88A47E7343EB5869AA94A2D3F4FF807D59FF0F56D77FE84
          1D3FFF00060FFF00C454373FF0554F12B2FF00A3F8174B8DBD64BC91C7E8057C
          B3FF000CF1F14FFE89AF8BBFF04773FF00C451FF000CF1F14FFE89AF8BBFF047
          73FF00C451A9E97F68E6BFCD2FFC07FE01E91F1ABF6E9F88DF1ABC3D73E1FB93
          61A0E8773F2DC5B695132B4EB9CED7776638F50BB41EF9AF9DABD534BFD95BE2
          F6AF32C507C3BF1046CDD0DCD93C0BF89936815EE1F0B3FE09A1E3FF00135E41
          3F8CEEECFC25A66732C292ADCDDB0F455425067D4B71E87A5072BC3E3F1F539A
          51949F77FF00074450FF00826C7C37BDF137C75FF84A7C975D33C39692BB4F8F
          90CF2A34491E7D4AB48DFF0000F7AEABFE0A81F1486B3E3AD03C0B6936EB7D1E
          037B78AA78FB44A3E4523D563008F696BECC87C35A27ECA9F056EA0F05784B52
          D7458A864D3B4B80CF797F70C42F9921519249C166C7CAA38180057E59F8F7E1
          77C67F88FE32D63C4DACFC3BF16CDA96A770D71311A1DD6D049E1546CE154600
          1D8014CF771946780C02C14137293BCAC9DBFAD17DC79359594FA8DE41696D13
          4D713C8B1471A0CB3B31C0007A926BF48F44FF00825B7839F46B06D53C53AEA6
          A6604374B6C61F284BB46F0998C9DBBB38C93C57C97F05BE14FC41F87DF15FC2
          BE24D63E1478C750D374BD422BA9ADE2D0AE0B90A720A828012A70C012324751
          5FB17A75E0D474FB6BA114D009E2594457085244C8CED653C8619C11D8D08323
          CBA8D68CE58985DE964EFF0079F1A7FC3ACFE1FF00FD0D5E23FF00BEA0FF00E3
          747FC3ACFE1FFF00D0D5E23FFBEA0FFE375F69D14CFA8FEC8C0FFCFA5F89F907
          FB64FECB36BFB366B9E1FF00EC7BEBDD4F43D56DDF1717BB77A4E8DF3AE54018
          DAC84719FBDE95F39D7EA87FC14574BD43C63F0DB49F0CE8BE0CF10789B597BD
          5BE82EF49D3A4B886D55032B09190120B07E171CE33D857E787FC33C7C53FF00
          A26BE2EFFC11DCFF00F1152CF81CD705EC71528D08BE5D364F4F23F48FFE09E1
          F163FE1617C0A8744BA9BCCD53C2F2FD81C31CB1B739681BE806E41FF5CABAAF
          DBABFE4D57C77FF5CAD7FF004AE1AF89FF0063C5F8A5FB3DFC5117F7FF000C7C
          6771E1ED522FB1EA3143A25CEE519052550500250FA9FBACD5F5D7EDDDAEEB17
          FF0007B51F04E81E0EF11F89B54D79222B71A469B25CDBDB2473A3B798C80E18
          ECC05C77CF6A67D561B12EAE5538D44D4A3171D9F6B23F23EBF493FE095BFF00
          22078DFF00EC250FFE8AAF873FE19E3E29FF00D135F177FE08EE7FF88AFB4FFE
          09D67C53F0BEF35AF09789FE1FF8B3491ACDC25C5B6A973A3CD1DAC65236DCB2
          BBA8099C0DA79C938E38CA47CD64B09D2C6C2538B4B5E8FAA3EF4AAF7F616DAA
          D8DC59DE411DD5A5C46D14D04CA192446186560782082462AC51547EA1B9F937
          FB68FEC8773F0335C7F127872092E7C0D7F2FCB8CB369D2B1FF54E7AEC3FC2C7
          FDD3CE0B7CB75FBCBF11ADF4CBAF01EBD1EB3A34FE21D2CD9CBF68D2ED6DCDC4
          D749B4E638E31CB39EC0739C74AFC67D6BF67CF88B26B17CFA67C32F1A45A6B4
          EE6D63B8D12E4C8B16E3B0310982C1719C77A968FCD339CB161AB29505A4BA25
          B7FC03CD23FF0058BF515FD0141FEA23FF00747F2AFC3D5FD9EBE29AB03FF0AD
          7C5DC1FF00A01DCFFF00115FB27F093C7D3FC48F065AEAD75E1CD67C2B760F93
          3E9DAE59B5B4C8E146E2AADCB264F0DDF07804114D1E9F0DA9539558CD34DDAD
          75DAFF00E67E77FEDDFF00B25DEFC3CF135F78FBC2F64D3F84F5294CD7B0C0B9
          FECE9D8FCC481D22663907A293B78F973F1D57F405776905FDACB6D730C7716F
          3218E48A550C8EA460820F0411DABE2CF8EDFF0004D5D07C5B7573ABFC3CD423
          F0C5FC84BB6957419AC9D8FF0071865A2FA61876000A2C4667914E5375B0AAF7
          DD7F97F91F9A28ED1B06462AC0E41070457A3F87FF00691F8A5E17B75B7D37C7
          DAFC16EBF7627BE92445F60AC481F85741E38FD8DFE30780A6905E782B50D460
          53C5CE90BF6D461EB88F2C07FBC05796EA1E11D734890C77DA36A166E3AADC5A
          BA11F98A47C9386230AF5528BF9A3D0351FDAB7E2FEA9134737C43D7955860F9
          176D09FCD304579BEB3AF6A5E22BE7BDD5750BAD4EF1FEF5C5E4CD2C8DF56624
          9A7D9F86F56D4582DA6977972C78021B777CFE42BD17C21FB2A7C5AF1BCD1A69
          BE02D65124E93DF5B9B48B1EBBE5DA08FA1A07FED38976F7A5F7B3CAE199EDE5
          4962768E442195D4E0A91D0835FB0BFB1E7C7AB6FDA1BE10247AB34771E22D31
          0586B104801F3815216623B89141CF6DC1C74C57CD3F0A7FE0977AA5E491DDFC
          42F11C5A7DBE413A768BFBC9987A34AE36A9FA2B7D6BEB4F85BFB29780FE0BF8
          A2DF5DF07C3A869372B66F657308BC6961BD5621834AAF9F9948C82A5473D29A
          3EBF25C0E370B53DA4E3683DD37AFADBCBCCFCE6FDB17F656D43E01F8C66D4F4
          BB692E3C0FA94C5ACAE541616AC727ECF21EC473B49FBCA3D4363E73AFDF6F11
          78734BF16E8B77A46B36106A7A65DC6639ED6E503A48A7B107FC8AF81FE397FC
          1326E3ED771AA7C30D4E36B7625FFB0B5490AB27FB314DCE47A07C63BB1A1A39
          B32C8AA426EAE155E2FA755E9DD1F23FC27FDA17C7FF0004E673E12F10DC585A
          C8DBA5B19009ADA43DC98DC150781F30C1F7AF79B7FF0082A07C5486D7CB7D1B
          C2D3CA0604CF693827DC81381FCABC17C61FB3AFC4DF01CEF1EB7E07D6AD550E
          0CF1DA34D0FE12C7B90FE06B859348BF8A5F2DECAE124E9B1A2607F2C523C086
          2B1B845ECE32947CB5FD4F5FF8B3FB61FC51F8C5632E9DACEBE6CB489411269B
          A5462DE1901EAAE47CCEBECCC4578AD763E19F837E3BF194C91E89E0FD6F532D
          8C3DBD84AC83DCB6DC01EE4D7D39F077FE09A3E33F13DCC179E3CBC87C29A5E4
          33D9DBBADC5EC83D3E5CA267D49623FBB40E387C6E613BD9C9F77FE6CF9E3E04
          FC0CF10FC7CF1CDB787F4281961043DF6A0EA4C5670E79763DCF5C2F563C7A91
          FB3DF0E3C01A4FC2EF04691E16D0E1F234DD36010C60FDE73D59D8F76662589F
          526AA7C2FF0084FE17F839E188741F0A6971E9B629F33B0F9A59DF1CBC8E7966
          3EA7A7418000AEBE99FA165795C72F8372779BDDFE88F973F6E3FD965FE3AF85
          21D7FC3D0A9F19E8D1308A3E01BEB7CE4C39FEF03964F72C3F8B23F282F2CEE3
          4EBB9AD6EA192DAE61731CB0CAA55D181C15607904118C1AFE80ABE78FDA3BF6
          2BF077C7E697558CFF00C237E2C2B8FED5B48C32CF81C09E3C80FF00EF021BA7
          240C50D1E7E6F933C54BDBE1FE3EABBFFC13F22F45D6F50F0E6A96DA96957D71
          A6EA16CFE643756B2B472C6DEAAC0820D7D2DE10FF00828EFC60F0BD9476D777
          1A4788C200A25D56CCF9981EAD134793EE726B9FF893FB09FC5DF87771298FC3
          ADE26B053F2DE6847ED1B87FD72C0901FF0080E3DCD78A6ABE0DD7F4298C5A96
          89A8E9F283829756B24647E0C0523E313C6E024D2E687DFF00F0C7D27E27FF00
          82947C5DD7ECDEDECBFB0FC3E5811E7E9F64CD201F595DC7E95F34789BC53AC7
          8CF59B8D5F5DD4EEB57D4EE0E65BABC94C9237A727B0E80741469BE14D6B5994
          4561A45FDF487A25BDB3C84FE0057B1FC3AFD88FE2F7C45B88BCBF0ACFA0D931
          F9AF35DCDA2A0F5D8C3CC3FF000153404A78DC7B517CD3FBCF0A8E379A454452
          EEC70AAA3249F415FA87FB04FECA373F09F497F1C78AED0C1E2AD4E1F2ED6CA5
          5F9EC2DCF2770ED23F191D540C704B0AE9FF0066FF00D853C25F042E2DF5CD5E
          45F1578B23C347773C7B6DED1BFE98C673F30FEFB64F19016BE9CA691F6194E4
          AF0D2588C47C5D176F37E67C8BFF00053AFF00937AD37FEC3F6FFF00A267AFCB
          1AFD39FF008289DE788FC75E15D3BC07E19F02F8A35EB98AFA2D4A7D4AC34A96
          6B45411C8A23574072F97048ED8F7AF81FFE19E3E29FFD135F177FE08EE7FF00
          88A4CF133C84EAE35B845B4925B33A0FD99FF68CBCFD9B7C53AA6B767A2C1ADB
          DF59FD8CC33CC620837ABEEC8073F771F8D7D19FF0F56D77FE841D3FFF00060F
          FF00C457CA7FF0CF1F14FF00E89AF8BBFF0004773FFC451FF0CF1F14FF00E89A
          F8BBFF0004773FFC451A9C343159861A1ECE95D2F4FF00807D5137FC1557C44C
          988BC07A623FABDEC8C3F2DA2B83F88BFF00051FF89DE36D16E74BD3ADF4BF0B
          C1708637B9D3E376B9DA460857762178EE1411D88AF13FF8678F8A7FF44D7C5D
          FF00823B9FFE22AE58FECC7F16B5191522F873E2542C700CFA64B10FC4BA8028
          D4D658ECD2A2E57297C95BF24799124924F24D7B07EC95F0DEF3E277C7EF08E9
          F6D0BBDB59DEC7A95EC8AB958E08583B163DB242A0F7715E8DF0EFFE09CBF15F
          C5F75136B76F65E10D3CB0DF2DFCEB2CBB7B958E32D93ECC57EB5FA15FB3EFEC
          DBE14FD9DBC392586851BDDEA575837DAB5C81E7DC11D071C2A0E70A3F1C9C9A
          2C7465B93E22B558CEB47960B5D777E563BAF14F8374FF00164282E8324D1822
          39A33865F6F715E47E2FF8377B1DA4F0BDAC3AE69D20C3C6630FB97D1A339CFE
          19AF7AA29D8FBEAF83A588D64ACFB9F9B3F123F637F0CF889E6B8D0247F0D6A1
          924C2017B666F428795FC0E07A57CB9F10FE05F8C7E1A3C8FAAE96F35829E350
          B3CCB011EA48195FF81015FB5FAF783B4AF11A9FB65AA997B4F1FCB20FC7BFE3
          9AF32F11FC1DBEB4491F4F75D46DC83985C05931E98E87FCF14AC7C962F226AF
          282FBBFCBFC8FC5EAF50F80FFB4578BBF67CF119D47C3B7425B19C8179A55C92
          D6D72A3D403C30ECC391EE320FD65F13BF64CF0978BA69DE3B293C2FAC64E65B
          38F6216FF6E2381F96D27D6BE58F88BFB3178D7E1FF9B70B67FDB9A6264FDAF4
          E05CA8F578FEF2FB9C103D691F32E8623093F690DD7547E94FC10FDB7FE1C7C6
          3B7B7B697514F0B7885C00FA5EAB2040CDE914A70AFEC386FF006457D06ACAEA
          19486079041AFE7E082A707208AF43F027ED0DF123E1A47145E1CF196ABA7DAC
          5F72D0CE65B75FA44FB93F4AAB9F4986E2494572E2617F35FE47EE2D57D42C62
          D4ECA6B59C31866528E158A920FB8AFCA3D1FF00E0A45F1934C8C2DCDD68DAB3
          0FE3BBD3C293FF007ECA0FD2B4EE3FE0A71F16A64012C3C3301FEF4765293FF8
          F4C68B9EB7FAC18292D6FF0077FC13F4DBC33E11B1F0A4770967BDBCF60CCD29
          05B03A0CE3A0E7F3AB3AFF0089748F0A69D26A1AD6A967A4D8C7F7EE6FA75863
          5FAB3102BF22FC4BFB79FC6BF1247245FF00096FF6640FC18F4EB386123E8FB4
          B8FF00BEABC57C4BE33D7FC6779F6BD7F5BD435BBAE7F7DA85D3CEC3E8589A2E
          714F88A8528F2E1E9BF9E8BF53F4C7E337FC148BC0BE0A8EE2C7C19049E32D5D
          41559D73158C6DEA5C8DCF8F45183FDE15F9F3F18FE3E78D3E3AEB42FF00C57A
          B3DCC71926DEC211E5DADB03D9231C67FDA3963DC9AF3CA295CF96C666989C6E
          952568F65B7FC1F985145148F240726BF587F64BF02FFC23DE1FF0A698D1ED36
          1622E675C749586E6FFC7DCFE55F997F093C31FF000997C4AF0E690537C57178
          8655F5894EE93FF1D56AFD91F82BA6795A7DFDF32F32B88549F45193FCC7E54D
          1F4F9150F695F99F4FD35FF23D2A8A28AA3F4C0A28AF22D7FF006A2F067877C5
          BAC786A7875EBAD5F48748EF21B0D16E6E4445D43212D1A11865208F5141954A
          B4E924EA492BF73D768AF1AB7FDADBE1D0BDB7B6D4AF355F0F9B890451CDADE8
          D75670963D0191E30ABF562057B22B0750CA41046411DE8153AD4EADFD9C93B7
          6168A4CD19A0D85A28A2800A2932077A5A0028A4240EA68CE680168A2B84F891
          F1BFC1BF0A24B5B7F10EAE21D46EC66D74CB589EE6EE7EBF7218C3311C119C63
          DE822738D38F34DD9799DDD15E2B1FED75E02B69E18F5C4D7BC251CCE123B9F1
          068973690313D3F78C9B541F5622BD7746D6F4FF001169B0EA3A55F5B6A56138
          262BAB495658A400E0ED65241E411C7A50453AF4AAE909265DA290903BD2D06C
          1452138A0107A5002D149903BD19CD002D149903BD1B87A8A005A29323D69680
          0A28A4A005A69453FC23F2A5C8F5A323D68013628FE11F953A9323D696800A29
          28C8CF5A005A28A4CE2800201EB49B17FBA3F2A5C83DE968010003A0C52D2120
          77A5A0028A64D279313C9B59F6A96DAA324E3B0AF12D3BF6C3F00EB16DF69D3E
          DBC4D7F6C59904F6BE1DBC9509524300CB191C1041FA506352B53A4D2A924AFD
          CF70A2BCBFC1BFB49F80FC6FE2483C3D69A95D69FAEDC066834FD5F4F9ECA49B
          0327679A8A1880338049F6AF4FC81DE82A9D485557A724D790B4D28A7A807F0A
          5CE6968341A1147F08FCA9D494B4005148083D0E696800A29334B40051452646
          7AD002D145140051499CD2D001451450014514500676B1E1ED3B5E87CBBEB58E
          718C06230CBF461C8AF37F10FC1A963DD2E9171E72F5FB3CE70DF83743F8E3EB
          5EB345072D6C2D2AFF001AD7BF53E1BF8ABFB34F85FC653CA35BD11F4AD59B27
          EDD68BE4CA4FA9E36BFD483F5AF953E22FEC81E2CF09F9B75A195F12E9EB9388
          1765CA8F78C9F9BFE02493E82BF61AFF004DB5D56DCC1776F1DC447F8645CFE5
          E95E7BE20F8376F3EE9748B836EFD7C89C964FC1BA8FC735363E5F1791A95E50
          D7F07FF04FC47BBB49EC2E24B7B9864B79E33B5E2954AB29F420F22A2AFD47F8
          A9F00F47F13A183C57E1E47971B63BE55DB20FF7655FE59C7A8AF943E22FEC57
          ABE97E6DDF846FD757B71922C6EC88E703D0370ADF8EDA47C8D7C055A2DAB5FF
          003FB8F99E8AD0D77C3DA9F8675092C756B0B8D3AED3EF43731946FAE0F51EF5
          9F41E6B56D185145140828A28A00FA2BF626F0BFF69FC40D4F5A74DD169967B1
          0FA4929C0FFC7564FCEBF57FC09A6FF65784F4E848C3B47E6B7D5BE6FEB8FC2B
          E0CFD85BC0C53C096D70C98975CD44B6EC73E521118FC8AC87F1AFD115508A14
          0C003000AA47E8BC3F479293A8FF00ABFF00485A28A299F5C15F26786FE235E7
          80BF6A2F8E8B6BE0BF1178B45D4DA3963A14314820DB65C6FF003244C673C633
          F74F4AFACEBE60D2759F157C32F8FF00F1735C5F871E25F11693E229F4EFB15D
          6971C3B4FD9EDBCB727CC914E0B1E0F7C67D283CCC6DD3A4D36AD2DD2BDBDD97
          A999FB42FC7CD535BF853E21D126F84DE29D26D754B56B29B56D7ECD058E9E92
          7CA6E2530B4AC0479DFC2F5515EF3A26B3A57C37F82BA6EA579ABC7A8E8FA2E8
          50C8FAA46C196E628A01FBD5E79DE06463AE4579B78CFE2AF8FBC73E14D5B40D
          03E0E7882DEFF52B592CD6E35E9ED2DED61122952EF8958B05073B40C9C62B2B
          C43F07F5997E1FFC2FF82ECBA84FE1D8E388F88F5DB3056311C085D21563C8F3
          260BDBE55519EB41CD19D48D49D48DE5A24AEADADF45B2BEF76FA185F07EE7C4
          FF000C3E28F87356F185F5DC963F13ED66945A5D4CCF168FA8798F3C36A81B84
          5681C260725E3FA0AEABF6B5F0A6ADE3AD63E1B787745F10DF7866FB53D46F21
          5BDB299D394B396640E148DC9BE24C8F4CE293E307ECC0DAC780AFE6D2FC5DE2
          FD43C41A581A9E8F1DFEAAF731ADEC397888423A9236E7B6EAD5D4E6F11F8DB5
          DF81FAF5EF86750D3AEECAF6E27D66D9A1E2C5DACA584EE39E54C920C119E393
          8C1C047B39C69CB0D34ECDC5AEBA36B9B5FC7E7E4743F067E2C3F8FEC752F0D7
          896C5343F1DE8605BEB1A393F2B0230B7109FE28641C823A6707B13E53E1AF89
          BAE781FF0064EF05CDA3CA6F3C5BE23D4D743D3EEB5191A60B733DD488B2C858
          92C11549C1E3E503A57A7FC78F85B79E21B7B7F1A784A53A6FC43F0F44F2E9D7
          51A161791E32F67328E5E393A01D558E477CF05E13F82DAF78CFF650F0C7872E
          E393C2DE36D1AE06A962D769C5ADF4570F2C6580CE5486C646786CF2462834A8
          B10A4E9ABB6A32B3EFAAFBA5BFE7E9D9E9BFB2DF8725B4497C4BAD789BC55AE3
          0DD2EAB77AEDDC0FBCF531C70C8891AE7A281C0E326B52D74E9BE007803C65AD
          EA5E26D67C57A569D6F2DFDA41AB4CB2CD6F0C511630897019CB306C33927054
          7624E3E99F1D7C5DA658A5A789FE11F8A935E8C6C90684905E59CCDD37472F9A
          BB54F5C3804671938AD6F0FE93E31F8A1E17F1769FF10F48B2D0744D7607B5B3
          D26DEE7CEBCB481E3D8E269146C2C72586DCEDCE327B06D1F63FF2E22D4ACFA3
          5D3ED5FF005B9C77C39F82D37C59F09E9DE2EF8A1AC6ADADEADAD4097C9A4DA6
          A5716561A74520DD1C51C50BA659548059CB12475EF553C49A6EA3FB3178B7C2
          17FA26B7A9EA7E01D73558743D4343D5EF1EF0D8C936443716F2C84BAA861864
          2C41CF033C8BDE01F1778EBE0A7876CBC1FE2DF04EB3E2BB6D2625B4D3FC45E1
          88A3B94BBB74188FCD84BABC52050A0F0C0919CD2EA1A378B7F683F1B785EE35
          7F0D5DF833C01E1DD41358106ACF1FDBF54BB8F3E483146CC2289092C77365B8
          18EE039B961ECE2A9C5FB5D3A3BDFADDF6EFD1F4E87D00C70A4FB57CEBFB1FE9
          96BE31D1BC41F14F538D6F3C53E24D56ED5EEA6197B5B68A531456C99FB88020
          381D72339C0AFA2ABE71B6F0978EBF670F17EBD77E0FD01BC71F0EF5CBC7D4A5
          D16D6748AFF4AB97E64308721648D8F3B3208ED8C12C1DF88BC6A53AAD5E2AF7
          EB66F676FBD7CCFA1EFF004EB5D56CA7B3BDB68AEED27431CB04E81D2453C156
          53C107D0D792FC68F1349F033E12E91A3F822C6DAD353BEBCB3F0DE83048B986
          09A66D88CC39242A866E739206739358BAAFC76F889E2881AC3C11F0835FB3D5
          25F905FF008B8C365696D9FE360B2334807F75704D68F8C3E0B78ABC79F03F4C
          F0F6B9E27B6BBF1DE9335BEA565AF456C63896F606DD1B3264E47552D819CEED
          B9E2822A55F6D192A09F359EB6B7C937D7F0EE3AC7F658F0DDE582C9E29D63C4
          9E29D7DC069F57B9D72EE07F33A931C7148A91A83D140E071CD65F81756D77E1
          1FC6B4F86DAB6B979E24F0CEAFA64BA9E877DAA49E6DE5ABC4C04D6D24B8CC8B
          860CACDC8E8735A9A6FC74F1569364969E28F84FE2B5D7625DB29D0A286F6CE6
          61FC51CBE68C03D70E0119C1A8FE1E7827C55E32F8AF3FC4CF1B69A9E1EFB3E9
          EDA5E85E1E132CD2DB42EC1A59E774F97CC7C01B5490ABC1E6831B53E687D5E2
          D4AEAFA35A75E6BFEBADCE5FE16F86EEBF6A1D2A7F1F78C757D547862FEEA74D
          0BC33A75F4B656F15AC72346B2CE626579256285B96C00781CE027C55F03DDFE
          CD5E1B97E207C3FD5B565D37489125D5BC31A8EA135E5A5E5A970B2797E73334
          52A83B832903E5C107A55BF01DA78BBF6638AF3C2A3C29A978CFE1FADD4D71A3
          5F683E5C977631CAE5CDB4D03B2960ACCC43A93C1E40E817E20B78CBF693D353
          C1D65E12D57C17E0CBB9A33AD6B1E2011C373340AC1CC16F02BB365C800BB600
          19E0D073F2C7D8D9C5FB6B6F677E6F5ED7F958C7F8FF00ABF866F7E367C2D3E2
          6F114DA1F84F53D275096E25FED99B4D8A52A2268773A489C82ED819EF5CF78F
          F57F87FE18D3ACEEBE1178FEFF0054F1E1BFB54D3F49D3BC4F73AAA5EEE99049
          1CD0BCB22F97E597258818C673EBEABE3AF05DD6A1FB457C31BC8B4396EFC3DA
          5697A8DBDCDCF921E081A458C44A73FF005CCFD38CF5AF63B4D22C74F62D6B67
          6F6CC7826289549FC8506DF569569D5BD96BBDB5D96CEFDF6F33E56F8ADAA782
          EDFF006A7BEB1F1FF89AEB42D09FC2D6D73044BADDCD844F746E2542C3CA9132
          DB140FC2BD03E187813E13F8C3518F5AF056B9A9EB6FA35D46E664F10DF5E40B
          2E32159659591B83E848C8E86B3BC4B73AE783BF69FD53C551F82BC41E23D167
          F0CDBE96B3E91044F89D6E24948FDE489C0561C8CF3C7635D9691F17EEAF75BB
          4B65F861E2FD2DAFA78E096FEF6CEDD218C138DD2324CED8193FC27AF61CD04D
          28C15593A897C4FECBBF96BFF00F0F8EEBE1D5CFC77F8B767F10FC632E8C2D35
          1B4FECDB59FC5173A722A3DAA3C9B112640417393C704D6F785F58D034FF008C
          FE0CB2F84BE30D4BC51A5DD3DC278874F1AC4FAAD8DBDB0898A4CD24AEE22904
          9B00C302D9C62BB9F853E0DBA83E31FC60D4B57D0A48EC754D46CE5D3EE6EE00
          56748ED9627284F60CA7D323047151F867C27AB7C20F8E3A85B689A55C5D7C3F
          F1706BF9D6DA3CC7A46A4301DB1DA398609C670C33C2D04428C95A6D249C9EB6
          F797BCEDD767B7A3EC69FED1BAB5DDF681A3F81746B996D75FF185F25843716E
          E565B5B64C49757208E46C8D4E0FF79D2B3BF662D66F74DD2BC49F0E75DBB9AF
          3C43E0DD41ED5EE6E9CBCB77672932DADC313C92C8C54FBA1ACB4F85FA97C60F
          8C1E24F146BF71E24F0A5A68F1A691E1F16172D6724B01F9EE2724672247DA00
          E0ED8D7239159FAAFC27D5FE0EFC65F09F8D7C332F893C5D6FA8AC9A3F88A3BE
          B93792ADA1C34530271C46E32472486200EB41AB757DB7D6797DDBDBFEDDDB6F
          5D6FD8C1FDA2FE0AE8BF0B3E0B5C6A7E1ED5BC5169A85A5CE9F6D1CE7C497C40
          47BA86271B3CDD8328CC38500678C715ECBA27C05F0C786B528B55B3B8D765B8
          86295025F6B97777190E851BE49A4600E09E460FBE322B27F6AFF0EEABE2CF83
          17DA5689A6DCEABA8CD7F60E96D6A9B98AC77514AE7D000A8DFA0EF5EAF713EC
          D36598248E0445F62A12E78CE02F5CFB506D0C3D28E225EE2B251B69D6F2FF00
          81F81F20F86FC3FE20F197EC3DE15F11695A8EA371E2CD195F5B8DCDE4A5EFBC
          AB87692094EECC8AF1A95DA73C85AF7CD7FE356936FF00021FE22D92FDB2CEE7
          4C4B9B3B6EAD34D280B141C7F11919508EC7359DFB27F86B55F087ECFDE13D0F
          5DD3E7D2F55B28A58AE2D2E170C84CCEC3D882181C8F5AF2AF047C2BF14E9BF1
          821F035CE8F731FC27D075DB8F12E977AC988A495915E1B403A848A6926704F0
          4A2FB643969AA9469D3715ACE2A2FC9DB46FF1BFA22EB5878B3C2967F0DBE0CE
          93E21BBB1F10EB76936ABE23F11994CF730449B4CAB033EEC333B796ADFC0AA0
          8E6BD026FD94BC186D83DBEA1E29B3D614646B50F88EF4DDEFFEF92D215273CE
          0AE3DAA5F8D5F0E7C457BE2BF0AFC41F04A5BDD78A3C39E742FA5DD48228F53B
          3940F321F30F08E080518F19EB51C9F1F75F92D0C16BF083C6D26B846D5B49A1
          B78ADFCCF43726628173FC433F4A0D553A54E528D78DD2B72E8DE965B79DEF7E
          BF807ECFBE37F10DF6A7E35F01F8B6F1756F107836F62B73AAAC610DEDACF1F9
          96F2BA8E049B410D8E323B9C9AA3FB60B4ABF0BB4D10DD5D59BCBE20D360696C
          EE1E09364970A8EBBD08600AB11C1EF5B9F023E1A6B5E11FF849BC4FE2D9ADE6
          F1978B2F56F7508ECC9305AC689B20B7463F78469C6EEE49EB8C9CFF00DAB743
          D5FC41F0DF4FB7D1348BCD6EF61D734FBC36B6481A431C53AC8E79207DD53D48
          E48A0B929FD4A4A57BD9FADAEEDF3B58B573FB32785BC9274DD5FC5DA2DDE3E4
          BAB3F145FB3A1EC7124ACA7E8411EB5E7D6BFB43788BC17F047C7926AE22D6FC
          6BE10D60F87629CA044D425778D6DA76518C644AA59463EE36319AF42B8F8DDE
          22B881A3D2BE1178CAE2FC8C4497DF62B587776DF21B83B47B807E95CAE9FF00
          B33DE6BFF04BC61A07896FE2B7F16F8BB51935DBCBCB2CB4567785D1E158F382
          523F2E35ED9F9BD6833A916DFF00B1AB3B3E965B69BE97BFEA6BE8BFB30697AB
          E9515CF8FF005CD77C61E269D03DD5EB6B1736D0C721192B0430BA24680F418C
          FAD656873EB5F027E367867C172EB9A8788BC13E2F86E469A3579CDC5D699770
          2798D1F9CDF33C4E9F74312411D7AE75742F8CDE36F0BE9B0E99E37F867E22BC
          D72DD446FA8786628AF6CAF48E3CD43E62B47BBAED7518CF5A87C2DE14F167C5
          2F8BDA47C41F1768CDE14D17C396F3C5A06853CC92DDBCB3AEC96E6E0A12A9F2
          7CAB182C46492477039697B9F578B53BAE8D3B5F5E66F7D2FBF5D8F727FB8DF4
          AF8E7F651F8C7A8784BE0C5869707C36F18788A286FAFC8D4349B6B77B793375
          29C297994F19C1C8EA0D7D893BF95048E433055270A324F1D80EB5F297ECF5E3
          1F197C1DF86167E17D4FE11F8C2FAEEDEEAEE633D9A5B18D965B89245C6E981E
          8E33C75A0D714DC6BD3926D692D52BF58F9328FC55F8A173F14BC7FF000CBC3F
          AA783758F875676FE24B5D4535FF00145B8883CB11256D6068CBAF992E71F338
          1C1E0D6DFC70BBF0B27ED37A05978DBC493681E1A9BC2F34C47F6E4FA6C325CA
          DCA8425A39132DB4BF19E47D38B3F13BFE13BFDA434DD2FC256FF0F353F07688
          DA95B5E6A1ADEBF716EAF0C51481F6C3146EECCEDB700F0077EB91D8EB7E13BE
          D43F6ACD0F5997469AEB4187C2D7160F7CF086812E1AE1245424F7DA8DCF4E40
          CE4D071384EA737DABCA3AB56F556D345DFCFC8F26F1D6ADE04F0FE9D6B73F06
          FC7DA96ADE3C1796E2C746D3BC4973AB477B99544893C2F248A23D85C963B76E
          339F5FA43E2F78F63F86BF0E758D79A1FB5DD45108ACECC726E6EA42121880EF
          BA4651C7624F6AE07E24782B52F017C50F0F7C45F05E912DEB5CB2E8FE23D22C
          2300DD599C94B80381E642DCE7AB2B6DC8EEDF8ABE0BD4FE33FC55F0DF87EEA2
          D6747F066890B6B326AB66C606B8D40155B78D1FAA98D59DC9C752075141D115
          528AA8A2AD276492565EBF8EBE9F7F35FB3D596B9F057E24DDFC39F166B577AE
          4BAEE9706B7A6EA37B33485A744097B6CACC7A2BE1D5474563EE6ADFED0DE2B8
          2C3E28F87347F1A6BDAA7857E195C69B2CF2DF69D2CB6F1DE5F89005B69EE22F
          9A3411E580057713D78C555F8C7FB3FEA9E1FD3349F1A78475AF14789FC63E18
          BE8AF34EB0D53526BA59D19D52784061F2EF8C904FA0AF41F12F8EBC75A6EA56
          DA85B7801FC45E0FBAB388CB696F711C7AADB4DC97DD04BB51D705576ABE72A4
          F208A08519429CA84934934D68E5A3E8EDBEB7BF958F3AF0DE81F06B5CD634F8
          BE1E7C53B8D13586B88D8DAE9DE2A96737A8181789A09A56DDB97232A3209CF3
          8C575724F37FC3684169F69B8FB1FF00C20CF77F65F39BC9F385EAC7E66CCEDD
          DB095CE338AE2FE29E9173F1E3C3E7C33E1CF84DA8F87351B9B885DBC4DAF595
          BD90D2C248ACD2C455DA47900040080039E4E335DFFF00C23BAB2FED6D6FAF7F
          66DD3686BE0C6D2CEA463FDD7DA4DDACBB33EBB149CE31DB39E28082774A31D3
          9A3AA4D2EBD1F6EFE654FD9D279E7F197C6459AE6E275B7F15C96F0ACD33388A
          310C6C1101276AEE7638181CD7B857CD9F0F3C41E20F861E36F89ED77F0EFC59
          AB5AEB5E239750B3BAD32DA068DE1F2A3407F7932119284F4E98AF55F067C52B
          CF177893FB2E6F03789BC3917D964B9FB76B56F0C7092AF1A88C18E57F98EF27
          9C7087AF60EBC2D58C60A12BDEEFA3EECC3FDA77C49AF785FE181BBD0E7BDB18
          A4D42D60D5352D361F36E6C2C1A402E27894039655EE01C649ED5E53A7C7FB39
          6AB12358FC4FB8B3D5DC02BABBF8CAEE1BBDFF00DE2649B6EECF62B8F6AFA07E
          24EA3E32D2F4DB3B9F06E8D61AEDCC7701EF2CAF6EFECCD2C001CA44DB4A8909
          2A416C2E01F5AF33D67E212F882CE6B4B9F80BE22D475799761B4D434FB2FB33
          39E30D706529B73FC5C9C738A0C71314EAB72D74D9C5BFB9AFF873D77C09A5BE
          8BE0FD26CE4D6E7F12C91DBAEED5EE5C33DD93CF9848E3073C638C62A87C56F1
          E5BFC33F87DAD788E78CDC359C07C8B65FBD713B1091443DDDD957F1AF3CF87B
          A4F8A7F67EF807E1DD2D7C3B378BB5B86EB64DA66973855B58E7B8772A8EFD52
          1570BEFB7B0E41F183C19AA7C61F89BE17F0B5C43AB697E0DD255F5ABBD5AC98
          C3E75F2605B42920E414DCF2138C6554672283A25564A82508DA765A766FCFCB
          A9C97ECFF67E20F829F13BFE105F186B175AC49E2AD262D62C2F2F2669025E44
          B8BCB44249F95770750380B9AFA76BE69F8CBFB3CEA5A568165E2CF0A6BDE29F
          1178CBC35790EA1A5596A9A93DD24C43A8962DA4701E32C09FCF8AF5E9BC7DAD
          7F6BF832DADBC1BA9CD65AE24AD7F7723A47FD9055032ACC87EF166257838E38
          2722833C2B7874E8CD3495ADD747E7EBF72B1DC5145141EA0514514005145140
          0514514011CF045731345346B2C6C30C8EA0823DC1AE1FC41F08F4CD4B74BA7B
          1D3E73CED1F3467F0EDF87E55DE51418D5A34EB2B4D5CF97BE247C158B53B07B
          4F12E856FAB5873898A6F55F7561F321F7E0D7C9FF00117F626865F36EFC19A9
          792DC9FECED4092BF45900C8FA303F5AFD502030208C83D8D725E20F863A3EB9
          BA48E3FB05C9FF0096900C293EEBD3F2C52B1F398BC96157586BF9FDE7E22F8C
          3E1FF88BC037DF65D7B49B8D3A42485791731C9FEEB8CAB7E06B9FAFD83F1AFC
          1DBBFB0CF6D7FA741AE696E30EA6212A91FED211FE3F5AF94BE237EC63E1FD74
          CB75E18BA7D02F0E4FD965CCB6CC7D39F993F323DA91F1F88CB2AD1764BEF3E2
          9A92DEDE4BAB88E1891A496460888A32589380057B15EFEC8BF126D6F0C31697
          6B791E71F6886F63087DF0C55BF4AF6AF815FB27FF00C215AC5B7883C557105E
          EA56E4496B656F968A17ECECC40DCC3B00300F393C611C30C2D59CACE363EACF
          D98BC10BE1BB1D174EDA31A3E9C88C47432ED0A4FE24B9AFA32BCFFE0E6946D3
          41B8BC75DAD752FCA7D55781FA96AF40AA47EAB97D2F65878AEFAFF5F20A28A2
          99E9051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          51400514514005145140051451400573FAFF0081748F11066B8B6115C1FF0096
          F0FCAFF8F63F8D145044E11A8B966AE8F36D77E12DE697992DEF609A0CF1E602
          AC3F0008AB1E19F8492DFBA5C5FDDC6B6B9E6383259BDB240C7EB4514AC794B0
          34156B5B43D72D6D62B2B68EDE08C450C6A15117A002A5A28A67B1B68828A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9}
        Stretch = True
      end
      object QRDBText64: TQRDBText
        Left = 10
        Top = 737
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          1949.979166666667000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_DTEMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel76: TQRLabel
        Left = 298
        Top = 737
        Width = 16
        Height = 16
        Size.Values = (
          42.333333333333340000
          788.458333333333400000
          1949.979166666667000000
          42.333333333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel77: TQRLabel
        Left = 234
        Top = 655
        Width = 482
        Height = 22
        Size.Values = (
          58.208333333333340000
          619.125000000000000000
          1733.020833333333000000
          1275.291666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '10490.00019 27078.716605 00000.003046 4 23520000001665'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRDBText65: TQRDBText
        Left = 568
        Top = 880
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333340000
          1502.833333333333000000
          2328.333333333333000000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel78: TQRLabel
        Left = 504
        Top = 737
        Width = 211
        Height = 16
        Size.Values = (
          42.333333333333340000
          1333.500000000000000000
          1949.979166666667000000
          558.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'NOSSO NUMERO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText66: TQRDBText
        Left = 90
        Top = 909
        Width = 623
        Height = 18
        Size.Values = (
          47.625000000000000000
          238.125000000000000000
          2405.062500000000000000
          1648.354166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NOME'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 91
        Top = 927
        Width = 359
        Height = 18
        Size.Values = (
          47.625000000000000000
          240.770833333333300000
          2452.687500000000000000
          949.854166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ENDERECO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText68: TQRDBText
        Left = 490
        Top = 927
        Width = 55
        Height = 18
        Size.Values = (
          47.625000000000000000
          1296.458333333333000000
          2452.687500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_NUMERO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText69: TQRDBText
        Left = 618
        Top = 945
        Width = 77
        Height = 18
        Size.Values = (
          47.625000000000000000
          1635.125000000000000000
          2500.312500000000000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CEP'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText71: TQRDBText
        Left = 90
        Top = 945
        Width = 200
        Height = 18
        Size.Values = (
          47.625000000000000000
          238.125000000000000000
          2500.312500000000000000
          529.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_BAIRRO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText73: TQRDBText
        Left = 568
        Top = 760
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333340000
          1502.833333333333000000
          2010.833333333333000000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel81: TQRLabel
        Left = 544
        Top = 689
        Width = 33
        Height = 16
        Size.Values = (
          42.333333333333340000
          1439.333333333333000000
          1822.979166666667000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '000'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape4: TQRShape
        Left = 5
        Top = 625
        Width = 708
        Height = 9
        Size.Values = (
          23.812500000000000000
          13.229166666666670000
          1653.645833333333000000
          1873.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText17: TQRDBText
        Left = 10
        Top = 689
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          1822.979166666667000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_LOCALPAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 10
        Top = 713
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          1886.479166666667000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_CEDENTENOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText19: TQRDBText
        Left = 10
        Top = 793
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          2098.145833333333000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_INSTRUCAO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 10
        Top = 813
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          2151.062500000000000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_INSTRUCAO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 10
        Top = 833
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          2203.979166666667000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_INSTRUCAO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 10
        Top = 852
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          2254.250000000000000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_INSTRUCAO4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 10
        Top = 873
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          2309.812500000000000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_INSTRUCAO5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 295
        Top = 945
        Width = 66
        Height = 18
        Size.Values = (
          47.625000000000000000
          780.520833333333400000
          2500.312500000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade/UF:'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 364
        Top = 945
        Width = 167
        Height = 18
        Size.Values = (
          47.625000000000000000
          963.083333333333400000
          2500.312500000000000000
          441.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_CIDADE'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 536
        Top = 945
        Width = 39
        Height = 18
        Size.Values = (
          47.625000000000000000
          1418.166666666667000000
          2500.312500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CLI_ESTADO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 618
        Top = 689
        Width = 96
        Height = 16
        Size.Values = (
          42.333333333333340000
          1635.125000000000000000
          1822.979166666667000000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_DTVENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 103
        Top = 737
        Width = 138
        Height = 16
        Size.Values = (
          42.333333333333340000
          272.520833333333400000
          1949.979166666667000000
          365.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 518
        Top = 969
        Width = 97
        Height = 8
        Size.Values = (
          21.166666666666670000
          1370.541666666667000000
          2563.812500000000000000
          256.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'AUTENTICA'#199#195'O MEC'#194'NICA'
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
      object QRLabel21: TQRLabel
        Left = 559
        Top = 486
        Width = 153
        Height = 20
        Size.Values = (
          52.916666666666670000
          1479.020833333333000000
          1285.875000000000000000
          404.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RECIBO DO SACADO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 512
        Width = 718
        Height = 50
        Size.Values = (
          132.291666666666700000
          0.000000000000000000
          1354.666666666667000000
          1899.708333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 138
        Top = 476
        Width = 91
        Height = 35
        Size.Values = (
          92.604166666666670000
          365.125000000000000000
          1259.416666666667000000
          240.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '|756-0|'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 22
      end
      object QRLabel3: TQRLabel
        Left = 2
        Top = 513
        Width = 83
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1357.312500000000000000
          219.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LOCAL DE PAGAMENTO'
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
      object QRLabel4: TQRLabel
        Left = 499
        Top = 513
        Width = 35
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1357.312500000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PARCELA'
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
        Left = 595
        Top = 513
        Width = 48
        Height = 8
        Size.Values = (
          21.166666666666670000
          1574.270833333333000000
          1357.312500000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'VENCIMENTO'
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
        Left = 2
        Top = 538
        Width = 36
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1423.458333333333000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEDENTE'
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
      object QRLabel11: TQRLabel
        Left = 499
        Top = 538
        Width = 77
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1423.458333333333000000
          203.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#211'DIGO DO CEDENTE'
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
      object QRLabel12: TQRLabel
        Left = 499
        Top = 562
        Width = 58
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1486.958333333333000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOSSO N'#218'MERO'
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
        Left = 499
        Top = 586
        Width = 134
        Height = 8
        Size.Values = (
          21.166666666666670000
          1320.270833333333000000
          1550.458333333333000000
          354.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '(+) VALOR DO DOCUMENTO / PARCELA'
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
      object QRShape17: TQRShape
        Left = 0
        Top = 536
        Width = 717
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          1418.166666666667000000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 496
        Top = 584
        Width = 221
        Height = 2
        Size.Values = (
          5.291666666666667000
          1312.333333333333000000
          1545.166666666667000000
          584.729166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 496
        Top = 608
        Width = 221
        Height = 2
        Size.Values = (
          5.291666666666667000
          1312.333333333333000000
          1608.666666666667000000
          584.729166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 496
        Top = 512
        Width = 1
        Height = 98
        Size.Values = (
          259.291666666666700000
          1312.333333333333000000
          1354.666666666667000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 592
        Top = 512
        Width = 1
        Height = 25
        Size.Values = (
          66.145833333333340000
          1566.333333333333000000
          1354.666666666667000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Pen.Width = 2
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel28: TQRLabel
        Left = 504
        Top = 545
        Width = 211
        Height = 16
        Size.Values = (
          42.333333333333340000
          1333.500000000000000000
          1441.979166666667000000
          558.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2707.870.00000001-0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRImage2: TQRImage
        Left = 9
        Top = 479
        Width = 125
        Height = 30
        Size.Values = (
          79.375000000000000000
          23.812500000000000000
          1267.354166666667000000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Picture.Data = {
          0A544A504547496D616765C85B0000FFD8FFE000104A46494600010101007800
          780000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC00011080086027003012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
          A28A2800A28A2800A28A2800AF953F6CDFDB22DFE0769CFE18F0B4D0DDF8E6EA
          3059880E9A6C6470EE3A1908FBA87FDE3C6036B7ED89FB5CD8FC01F0FB68DA2C
          915EF8E6FE226DE03865B243C79F20FF00D054F53C9E073F931ACEB37DE22D5A
          EF53D4EEE5BED42EE569A7B99DCB3C8EC725893D49349B3E4739CDFEAE9E1E83
          F7FABEDFF07F23A9D6BE367C40F10EA6FA86A3E34D7AE6ED9B7798DA84A36FFB
          A036147B0C0ADFD07F6A8F8BBE1CDBF63F885AF305E8B7776D72A3F09370AF30
          B4B49EFAE62B7B685EE2E256091C512966763D0003926BEAEF823FB2184FB3EB
          5E3A8F7370F0E8C1B81E86623FF401F89EA291F1146589A93FDDC9DFBDD9ED1F
          B267C4EFDA57E34DDC17F79AAD8C5E0F8DF136ADAB6951833807948563F2CB9E
          DBB3B473939E0FDD83200C9C9F5AF08F03CDE26BAF234ED12E6482D2DD563518
          1E4C080600C1040007402BDBB4DB7B8B6B38E3BABA3797007CF3140993EC074A
          68FD332CBAA5693949F797E85AAA1AEEBBA7786348BBD5756BD834ED36D2332C
          F7572E1238D475249E95CE7C55F8B7E18F831E14B8F1078A7514B1B38FE58E31
          F34D70F8E238D3AB31FC87524004D7E4F7ED33FB5A789FF689D5DA0919F47F09
          DBC9BAD34689F20E3A49311F7DFF0045EC3A920B31CD29602367ACDECBFCFB23
          F4F341FDAB3E10F890A8B3F885A1216E8B79742D89FC25DA6BD1347F13E8FE21
          8BCCD2B56B2D4A3C677DA5C24A3F3526BF02AA482EA6B5956486578A45395746
          208FA1145CF9A8713545FC4A49FA3B7F99FD01820F434B5F861A17C74F88BE19
          DA34BF1D7886C917A4716A7304FF00BE7760FE55E89A17EDDBF1B741DAABE337
          BD887FCB3BEB3826CFFC08A6EFD68B9E8438970EFE3835F73FF23F62E8AFCC2F
          087FC1507E20E977510F10683A26B76608DFE42496B391DF0DB9947FDF15F7FF
          00C12F8CFA0FC78F015B78A3C3ED22DBBB982E2DA71892DA6500B46D8E320329
          C8EA181A67B584CCF0D8D7CB4A5AF67A1DF5145141EA85145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140057807ED69FB55697FB3B7857C8B5316A1E3
          2D4233FD9FA7B1C88874F3E503A203D075623038048D4FDA87F69BD13F673F07
          9B894C77FE26BD465D334ADDCBB74F324C722353D4F73C0EE47E3FF8E3C6FAD7
          C47F14EA1E22F10DF49A8EAD7D219269E43F92A8E8AA0600038000029367CBE7
          19B2C247D8D17EFBFC3FE0957C4FE27D53C67E20BFD6F5BBE9751D56FA5335C5
          CCED96763FC87600700000702B5FE1E7C32D7FE27EB2BA7687666623066B97F9
          61814FF13B76FA753D81AF46F81BFB326A9F133C9D5B5769349F0E672AF8C4D7
          43FE9983D17FDB3C7A03CE3EE1F03F80F4FF000C69F6DA1F86F4B5B680709040
          B9673DD98F563EA4D49F0F43093AEF9E7B3FBD9E79F06FF67BD03E135B25CAA8
          D4F5F65C49A8CC9CAE7AAC6BFC03F53DCF6AFA37C19F0C6EB5DD9777FBAD2C0F
          2063124A3DBD07BD6D69BE10D13E1EE8B3F88BC5F7D696905A279B2497520582
          DC7A927827FAF4CF15E0FA77EDBD3FC67FDA0FC27E01F877035BF87A5BEDF7DA
          C5C47896EE1895A5758D0FFAB4608465BE620F45EECFB0A386A183E455F46DA4
          A2B777EE7D83A6E996BA45A25B59C2B0409D1547EA7D4FBD5870C51B6901B1C1
          23201A751547D7A492B23F3D7F6A3FD8D3E337C49F105E78AAEBC5BA4F8AE388
          379164CCD622DA2EA1228DCB228F525F24F2493CD7C37E28F05EBBE0ABE367AE
          69575A64FCED1711901F1DD5BA30F7048AFDB2F89BA7417C2C22BDF1143A5477
          53A5ADADA4D802E276FBAA39CB31F4C1C004FA9AF2AF1E7C179EF74B9ECF5BD1
          EDF5AD31C7CE0279AA3DF18CA91EBDBD6A59F0799652A55253A49F9B6EFF00F0
          51F911457D17F1F3F6579FC1505C6BFE1512DEE8A997B8B26CB4B6ABDD81EAE8
          3F31DF23247CE948F8EA94A54A5CB2414514506415FABFFF0004F686D7C33F04
          34BD21E068350D464975577ED2EF202FD0F96B1D7E56E85A4CDAF6B561A6DB0D
          D7179711DBC63D599828FD4D7EC97ECFFE1A874B52B026DB6D3AD23B4841EC30
          00FC82FEB4D1F4D90297D6B9A3E9FD7DC7B4D51975CD3A091A392FED63914E19
          5A65041F719ABD5F995FF0535F871A0783BC75E19D7747B15B1BFD7D2EE5D45A
          263B67951A322423380C7CC3923AF1547DDE618A960A83AF18F35B7D6DE5D99F
          A4BFF090E97FF412B4FF00BFEBFE347FC243A5FF00D04AD3FEFF00AFF8D7E046
          F6FEF1FCE8DEDFDE3F9D2B9F2DFEB3BFF9F3FF00937FC03F7DFF00E121D2FF00
          E82569FF007FD7FC68FF0084874BFF00A095A7FDFF005FF1AFC08DEDFDE3F9D1
          BDBFBC7F3A2E1FEB3BFF009F3FF937FC03FA00B7BEB7BB5DD04F14CBEB1B861F
          A54F5FCFF5A6A175613ACF6B732DBCC9CAC9139561F422BDCBE10FEDADF143E1
          35F4006BB3F89347438934CD6A469D0AFA2393BD0FA60E3D41E945CE8A3C4B4A
          52B55A6D2EE9DFF447EC7D15C07C10F8CFA17C78F0059F8A342668E39098AE6D
          2520C96B32E3746D8FA820F7041EF5DFD33EC2138D58A9C1DD30AA0DAF6988C5
          5B51B55607041994107F3ABF5F8A9FB59DC68527ED15E395F0D5BA5A69515F98
          7CB88FC86655559D87D65121FC691E5667987F67538D451E6BBB6F6FD19FB37F
          F090E97FF412B4FF00BFEBFE347FC243A5FF00D04AD3FEFF00AFF8D7E046F6FE
          F1FCE8DEDFDE3F9D173E73FD677FF3E7FF0026FF00807EFF00DAEA36B7E5BECD
          730DC6DFBDE5481B1F5C558AF89BFE097173A04FF0D3C511DADB471F8962D454
          5FCD9CBCB014CC19F400F9C00FA9EF5F6CD33EBF0788FAD508D6B5AFF30AAD75
          A95A58B2ADCDD436ECC3204B20527F3AB35F2F7FC1423E1BF87FC47F00B5CF14
          5E5823EBFA1AC06C6F9490F1ABDC468E9C1E54863C1EF8341789AB2A1465562A
          FCAAF6DB6FBCFA47FE121D2FFE82569FF7FD7FC68FF84874BFFA095A7FDFF5FF
          001AFC08DEDFDE3F9D1BDBFBC7F3A573E37FD677FF003E7FF26FF807EFFDADFD
          B5F0636D7115C05FBC6270D8FAE2AC57C5FF00F04D6F1DF81AF3E1DDD786B4CB
          68F4CF1A42E67D4D649097BF40C764C993D143042A3EE9E7F8B27ED0A67D7E13
          10B154235975EDADBC842400493802A87FC241A5FF00D04AD3FEFF00AFF8D5E9
          23596364750C8C0AB29E841AFC78FDB87E1CE83F0BBE3EEA3A4F86AC8699A5CB
          6905D2DA46C4A46EEA7705C938048CE3A0CF1C7141C99963A580A4AAA8F32BDB
          7B7E8CFD79FF0084874BFF00A095A7FDFF005FF1AB56D7705EC7E65BCD1CF1E7
          1BA360C33F515FCFFA331751B8F27D6BF767E17FC33F0F7C25F085A787FC33A7
          A69FA7C78919549669642A0348C4924B1C0C9F6A4736599A4F3194BDCE551B75
          BEFF002F23ADA2B13C65E33D13E1F7872F75EF10EA30E95A4D9A6F9AE673803D
          001D4927800649270057E747C78FF82937897C4D7573A5FC3883FE11BD201283
          54B84592F661EAA0E56207E85BBE474A67763330C3E0637AAF5E896E7E93EA5A
          BD8E8D6CD71A85EDBD8DBAF596E6558D47E24815C3DF7ED11F0BB4D90C773F11
          3C311C83AA7F6B40587D406AFC52F12F8C75EF19DFB5F6BDACDFEB378C4933DF
          DCBCCFF9B1358F4AE7CAD4E2695FF774B4F367EE4E9DFB407C32D5E411D9FC41
          F0C4F21E91AEAD06E3F86FCD76F65A85AEA56E93DA5CC575038CAC90B8756FA1
          15FCFF00D6D786BC6BE21F065E0BAD035CD4745B9CE7CDD3EE9E063F52A45170
          A7C4D2BFEF297DCCFDEEA2BF253E1F7FC1447E2DF833CB8751BEB2F15D9AF1E5
          EAB6E04807B491ED627DDB757E81FECABE36F1BFC50F87D378D7C6660B55D6EE
          0CDA56976D0844B4B450154EE3F3317219B2C4F0411807141F4583CDA863A5C9
          493BF5D363DA28AE2FE2CFC5FF000C7C14F094FE21F14EA0B67689F245128DD3
          5CC98C88E34FE2638FA0EA48009AFCD1F8E1FF000506F883F12EEAE2CFC3370F
          E0AF0F925523B17FF4C917D5E6EAA7D936E3A64F5A6698ECCF0F8056A8EF2ECB
          7FF807EA56BFE32D03C2910935BD6F4ED1E33C87BFBB8E107F1622B8E93F695F
          84F1CBE59F88FE17DDD38D5A023F30D8AFC49D4353BCD5AEE4BABEBA9AF2E643
          B9E69E42EEC7D493C9AAD4AE7CBCF89AA5FDCA4ADE6CFDE2F0EFC4DF07F8BE40
          9A178AB45D65CF44B0D4229CFE4AC6BA5CE6BF9FA8E4789D59199194E4153820
          D7BA7C1FFDB4BE27FC21B9823875C97C41A32101F4BD65DA78F6FA2393BE3F6D
          A71EA0D173A68712C24ED5E9DBCD6BF81FB254578E7ECEDFB51784FF0068BD15
          E4D25CE9DAEDB206BCD16E5C19A2EDBD4FF1A678DC3D4640240AF63A67D852AB
          4EBC154A6EE9851484850493803BD7C4DFB4C7FC144F4FF045E5DF86FE1BC56D
          AE6AF1131CFACCDF3DA40DD088C03FBD61FDECED1FED7380C3158BA38387B4AD
          2B2FC5FA1F6B5C5C45690BCB3CA90C4832CF2305007A926B86D53E3E7C34D125
          315F78FF00C356B283831C9AB401C7E1BB35F8CBF103E31F8D7E29DEBDCF8ABC
          4BA86B2CCDB84534C4429FEE44308BF8015C76734AE7C8D5E2677FDD53D3CDFF
          0097F99FB91A77ED07F0C757944569F10BC313CA7A46BAB41B8FD06ECD775697
          B6F7F6E93DACF1DCC2E32B244E19587B115FCFED751E07F8A3E2EF86B7EB79E1
          7F116A3A24C1B711693B2A3FFBE9F7587B30228B8A97133BFEF6969E4CFDE0A2
          BE0CFD9BBFE0A4116B5796BE1FF8A51C1633C84471788AD97642CDDBCF41C267
          FBEBF2F3CAA8C9AFBBE09E3B9852685D658A450C8E872AC0F2083DC533EB7098
          CA38D873D177FCD7A905CEAD63672F973DE5BC12633B249554FE44D45FF090E9
          7FF412B4FF00BFEBFE35F17FFC14EBE1BE80BF0F34AF1BC760B0F897FB4E1D3E
          4BD42434B018A53B1867070514838C8E7D6BF3637B7F78FE74AE7878FCEE781A
          EE8BA77F3BFF00C03F7DFF00E121D2FF00E82569FF007FD7FC68FF0084874BFF
          00A095A7FDFF005FF1AFC08DEDFDE3F9D1BDBFBC7F3A2E79DFEB3BFF009F3FF9
          37FC03F7DFFE121D2FFE82569FF7FD7FC6A7B7D4ECEF33E45D43363FE79C81BF
          957E00EF6FEF1FCE9D1CF2C2EAE923A3A9C8656208345C6B89DF5A3FF937FC03
          FA04041E9CD2D7E287C33FDAA3E27FC29BD865D1FC577D3DA2302DA76A32B5CD
          B38EE36393B73EAA54FBD7EA07ECB3FB4FE93FB48F84A6B848174BF11E9DB535
          1D37764293D248CF528D83D7904107B125CF73019C50C74BD9A5CB2ECFAFA33D
          BE8A28A67BC15E47FB48FED1BA0FECEDE0A7D4F5065BCD66E43269BA52BE1EE6
          403A9FEEA2E4166FA019240ABBFB40FC7EF0F7ECF9E089B5CD66413DECB98F4F
          D3237025BB971F747A28C82CDD00F52403F8EDF163E2B7887E3378D6F7C4DE24
          BB3737D707091AE4456F18276C51AFF0A8CFE3C93924928F9CCDB358E0A3ECA9
          EB51FE1E7FE455F891F11F5EF8AFE30BFF0012F892F5AFB53BC7CB13C246BFC3
          1A2FF0AA8E00FEB935EEDFB317ECE31F8892DFC5DE28B6126999DD63A7CABC5C
          1FF9E8E3FB9E83F8BA9E3AF97FECF9F0B7FE16A7C40B7B3B9463A4598FB55F30
          E3280F099F56381F4DC7B57E9C7C3EF027FC243711DBC518B4D2ED55558C6A00
          5503011474E83F01527C56070B3C5D4E796ADBFBDF72BF84FC1979E249960B28
          8436B1E15A62B88E31E83DFD85697C59F8DBF0FF00F64FF0D97D4261A8F88AE2
          3CDBE9B030375727B13FF3CE3CFF0011E38380C462B1BF6AAF8CDE32F825E128
          F4CF877E05D4B519E487E6D6E3B333DA58AFA90B92CFDF2E028C8277722BF27B
          C4FE22D5FC57AEDE6ADAEDF5CEA3AADD485E7B9BB72D23B7B93E9D31DB18AAD8
          F7F178C8657FBBA4AF53BB5A2F4EFF00D7A1E85F1E3F696F19FED05AD1B8D7EF
          7C8D2A272D69A3DA92B6D6E3B1C7F1B63F8DB27938C0E2BD07F60769B4BF8B7A
          96B90C4924B61A5C8913B8C88E491954363FDDF33F3AF9A2BECFFD807C33F6AB
          0D6AF4AFFC7F6A105906F64193FF00A34523E670B52AD7C5C6A4A5795F73F4AB
          41130D16C4DCC8D2DC342AD23B752C464FEB5E4BFB477ED4FE14FD9DB4426FE4
          1A9F88E78CB59E896EE04B27A3C879F2E3CFF11EBCE01C1AF22FDAB3F6F5D2FE
          17ADDF857C0525BEB3E2A50629EFC61ED74F6E847A4920FEEFDD53D72415AFCC
          EF11F89354F176B777AC6B57F3EA7A9DDC8649EEAE5CBBC8C7B927F2C761C53B
          9F63996751C2AF6186779F7E8BFCD9F477C28F8DFE28F8EDFB5EF8135DF166A2
          1D22D47741688765B59C6159B6C6A4F038192724E3926BF58ED2EA2BEB68AE20
          712432A86461DC1E86BF12BF66A50DF1BFC2A0FF00CF790FFE427AFDA5F090C7
          85B48FFAF48BFF00411422387ABCEAC6A73BBB6EF7FB8C1F19FC34B0F12432CD
          6C896B7E41CB01F24BECC3FAFF003AFC9EFDACFE07BFC21F1EB4D6D6C6DB4AD4
          99DD21C605BCA3978C76DBC865F6381D2BF656BE68FDBF7E18DB78DBE00EB7AB
          246A352D0C25F46F8EA8AC038FC119FF005A1A3AF38CBA15E84AAC15A51D7FCC
          FC8EA28A2A4FCC8F61FD947C2FFF000927C64D32574DF06991C97D271DD46D4F
          FC7D94FE15FAE9F09B4DFB0F84A3948C3DD48D29F5C7DD1FCB3F8D7E767EC2DE
          1261A4EBFAE98F74977711D8C071CE146E6C7D4BAFFDF35FA77A558AE99A65AD
          A27DD82258F8EF818A68FBEE1EA368BA8FFABFFC316EBF3C3FE0AB7FF215F86F
          FF005C6FFF00F4282BF43EBF3C3FE0AB7FF215F86FFF005C6FFF00F42829B3D7
          CF3FDC2A7CBF347C0D5F5C7EC5DFB227847F68DF09788354F11EA5ACD8CFA7DE
          ADB44BA64D122B2940D96DF1B9CE4F622BE47AFAC7F636FDAFBC35FB3878535F
          D2B5CD1F55D4A6D42F56E637D3C465554205C1DCEBCF1491F9F65BF57FACAFAD
          5B935DCFA4BFE1D73F0BBFE860F167FE055B7FF23D4571FF0004B7F868C9FB8F
          1278A636F5927B761F9084557FF87A5FC3EFFA157C49FF007CC1FF00C729937F
          C1533C04B1931784FC44EFD83F90A3F3F30D3D0FB2BE47FDDFC4F9D3F6AEFD87
          E7FD9EBC35078A34AD7DB5DD0A4B95B5963B880453DBB3025092090EA7041385
          C123839C8F95EBE9BFDAA3F6DAD4FF00689D16DFC3963A22F87FC390DC0B9747
          9BCE9EE5D410BB8E0055192768CF38E78AF99A289E791238D1A491C855451924
          9E800A47C5E61F5575DFD53E0F9EFE57D4FBB7FE0959E20BA8FC53E39D0F7B1B
          296CE0BCD87A2C88E5323D090FF8E07A57E8CD7C9BFF0004FBFD9DB54F83BE07
          D4BC43E24B56B2D7FC43E595B294624B6B64C940E3F85D8B1257B00A0E0E40FA
          CA99FA464F4AA51C14235347AFE2CE0BE3B7C488BE127C22F1478ADD944BA7D9
          B9B656E8F3B7C912FE2ECA3E99AFC38BAB996F6E65B89E4696695CBBC8E72598
          9C924FAE6BF43BFE0A8FF147ECBA4F863E1FDACD892E9CEAD7CAA79D8B94841F
          62DE61FAA0AFCED0326933E3B88713ED712A92DA0BF17BFE87BCFC03FD9AAEFE
          31FC2DF89BE2689243368362A74D55CE26B9044B2281DCF948571EB2A9ED5E0C
          460D7ED07EC83F0B07C28FD9FF00C33A4CF0F95A8DE43FDA37E08C1F3A601B6B
          7BAAEC4FF8057E5D7ED57F0A4FC1DF8E7E25D0628BCAD3649BEDBA7E0617ECF2
          FCCA07B292C9F543418E6196FD570B46B25ABF8BD5EABFC8ECFF00608F8B1FF0
          ACBE3F69769733797A578897FB2AE031F9448C4185BEBE6055CF60ED5FAF55FC
          FDDB5CCB677314F048D14D1387474382AC0E4107B1AFDC0FD9F3E2845F18BE0F
          7867C54ACA6E6EED425E2AFF0005CA7C928C761BD491EC45347B7C378AE684F0
          D2E9AAFD7FAF33D12BC17F6EAFF9355F1DFF00D72B5FFD2B86BDEABC17F6EAFF
          009355F1DFFD72B5FF00D2B8699F4F8EFF0074ABFE197E4CFC71A28AF5EF875F
          B396B7F153E0FF0089BC63E1CDF7B7FE1FBB54B8D2D172F34063DC5E3EE59704
          95EE3A723060FC829D29D6972D3577BFDC79D7837C63AC7C3FF13E9FE20D06FA
          4D3B56B0944B05C447907B823A10464107820907835FB07FB2DFED33A3FED19E
          0C1729E5D8F89EC555353D3037DC6ED2C79E4C6DDBD0F07A64FE31918383D6BA
          AF861F1375FF00843E33B0F13F86EF0DA6A368DD0F31CC87EF4722FF001230E0
          8FC46080433D5CB3329E5F535D60F75FAAF3FCCFDDEAFC9CFF0082917FC9CADC
          FF00D82ED7F9357E89FECF7F1FB40FDA13C0B0EB9A438B7BE8B116A3A63B664B
          49B1D0FAA9E4AB771E84103F3B3FE0A45FF272B73FF60BB5FE4D4D9F5B9ED485
          6C046A53774DAFD4F9723FF58BF515FD00248B0DA2C8EC1115373331C0031D6B
          F9FF008FFD62FD457ECA7ED95E3A9BE1FF00ECCFE2DBEB590C579776C9A742CA
          704199963620F62119CFE1423CAE1FAAA852C45596D149FDDCC7E787ED97FB4C
          DEFC79F8817163A7DD3A782F4899A2D3EDD4E16E1870D70C3B96E76E7A291D09
          6CFCF145757F0A7E1E5EFC57F88BA0784B4F611DCEAB74B079A5770893ABC847
          70AA19BF0A47CB55A9571959CE5ACA4FFA42FC38F851E2DF8B7AC9D2FC25A15D
          6B576A0193C85023881E85DD88541EEC457D3FE1AFF825E7C43D4ADD65D63C41
          A168ECC01F251A4B8917D9B0A17F226BF43FE16FC2DF0EFC1EF0759786FC3562
          967636EBF33E3324F263E69246FE263EBF40300003AEA763EEF0BC3B42114F10
          DCA5E5A2FF0033F36751FF008256F8AE2849B1F1B68F712E385B8B69625FCC6E
          FE55E29F13BF625F8B5F0B6D66BDBCF0F7F6CE991025EF74593ED28A07525001
          2003AE4A81EF5FB2349D68B1D15787B0735685E2FD6FF99F87BFB3FF00C24BBF
          8D9F16B41F0A401D20B89BCCBD9947FA9B64F9A56F63B4607FB45477AFDA7BEB
          CD1BE1C78366B998C5A6683A2591638184820893A01E8157815C4FC3BFD9F3C3
          DF0E3E2978DBC71A7246B7DE2568BF711C0234B440A3CC55C1E7CC90798C78E7
          1C71CF907FC149FC773785BE0145A3DB4863975FD462B59769C130A032BFFE3C
          918FA1346C460F0BFD8D84AB5A7ACB5FC36FBF7F99F9F7FB46FC7CD67F682F88
          777AEDFBC90E9713343A669C5BE4B5833C0C74DEDC166EE7D8003CB28AF72FD8
          D7E0B5B7C70F8DDA7695A9C7E6E87A7C4DA96A11F3896242A0464FA33B203EC5
          A91F0115571B5D26EF293347E037EC49F103E3A5845ABC3143E1DF0E49FEAF53
          D4B23CF1EB1463E671FED1C2F5C1E2BE8CB7FF008252D80B5C4FF116E1AE31F7
          A3D254203F43293FAD7DE96D6D0D95BC56F6F1241044A1238A350AA8A0600007
          40076A969D8FD16864383A704AA4799F76DFE87E567C60FF008270F8FBE1EE9B
          71AA7876F6DFC6B610297921B588C378147391112437D158B7A035F26491BC32
          323A9475386561820FA1AFE81ABF33BFE0A57F036C3C1BE2BD27C7BA35B25ADB
          6BCEF06A3144B85FB5A8DC24F4CC8BBB3EE84F5634347859BE4B4F0D4DE230FB
          2DD7EA8F91FC07E3AD6BE1AF8B34EF11F87EF5EC355B0944914A8783EAAC3F89
          48C820F04122BF69BE027C61D3FE3A7C2FD23C5962A2192E14C5796A0E4DBDC2
          F1247F4CF23D5594F7AFC3AAFBC3FE0965E3C9ADFC45E33F07C9216B69ED1356
          863278478D847211FEF0923CFF00B829239320C64A8E25506FDD9FE7FD6876BF
          F0514FDA6EEBC1F629F0D3C3576D6FA9EA1009757BA85B0F0DBB7DD8411D0B8C
          96FF006703F8EBF36ABB3F8CDE399BE257C56F15789A790C9FDA3A84B2C649CE
          D8B76235FA2A051F85718064D079598E2E58DC44AA37A6CBD0E9FE1CFC33F12F
          C58F1341A0F8574A9B56D4A51B8A4780B1AF7777385451EA481C81D48AFB2FC1
          DFF04ADD56EECA39BC4FE38B6D3EE5802D6BA6D91B80BEDE63327FE835F507EC
          71F036C3E0B7C1BD207D9917C43AC411DFEA97257F785DD772C44FA46ADB71D3
          3B8F735EED4EC7D865F90D05494F12AF27D364BEE3F3CBC53FF04AABB8ACDE4F
          0E78F61B9B900EDB7D4AC0C48DE99911D88FFBE4D7C71F15BE0E78B7E0AF88CE
          8BE2DD2A4D3AE48DF0CA08786E13FBD1B8E187EA3A100F15FBA95E5DFB47FC13
          D37E3BFC2DD57C3F7704675158DA7D32E987CD6F72AA76107D0FDD61DC13ED45
          8BC6E414274DCB0CB964BA5F47F79F8915FA03FF0004E7FDA6EEA6BD4F857E24
          BB69E368DA4D0AE266CB26D059ED893D460165F4C30EEA07C033C0F6D3C90CA8
          6392362AC8C304107041AD6F05F8A2F3C13E2ED1BC41A7B98EF74CBB8AEE120E
          3E6460C01F638C1A47C4E07173C1578D58EDD7CD753F4D7FE0A75FF26F5A6FFD
          87EDFF00F44CF5F9635FA87FF0522D4E1D6BF664D0350B73BA0BBD66D278C9EE
          AD6F330FD0D7E5E50CF53881DF1B75D91F427EC63FB3CF87BF68BF1CEB7A3788
          AF752B1B5B1D3BED71BE992468E5FCC45C12E8E31863DABEBFFF00875CFC2EFF
          00A183C59FF8156DFF00C8F5F1DFEC71FB44689FB3978DB5AD6B5CD3AFF52B7B
          ED3FEC891D8042CADE62B64EE60318535F5BFF00C3D2FE1F7FD0ABE24FFBE60F
          FE394D1DD963CB3EACBEB56E7D77B96A5FF825C7C31287CBF1178AD5BB16B9B6
          23F2F20578CFED11FF0004E94F863E02D5FC5BE15F134FAA5B69509B8B9D3B51
          81448621F7DD6452012A39DA54700F39E0FADBFF00C1533C0014EDF0A788CB76
          056003FF0046578B7ED13FF0512BBF8ADE08D4BC25E19F0E3687A7EA51F93777
          D7938927788FDE4545002E7A124B704F03AD1A1D38B792FB19725B9ADA5AF7BF
          F5DCF8CEBE99FF008275F882EB47FDA7745B281D960D56CEEED6E147464585A6
          19FF008144B5F3357E81FF00C137FF00671D5F4BD5E6F89FE20B392C6D9AD9AD
          F4686752AF36FC6F9F0790BB72ABFDEDCC7A004A47CDE534AA55C653F66B669B
          F45B9FA0B5E7BF1C7E37F877E02F81EE7C45AFCF92331DA58C6C3CEBB9B1C468
          3F527A01CD5BF8C3F17FC3BF047C1179E26F11DD7936D08D90DBA1065BA9483B
          628C77638FA000938009AFC75F8F1F1D7C45F1FBC713F8835D97CB85731D8E9F
          1B13159C39E117D4F766EA4FB60067DEE6B9A47010E486B37B7979B29FC68F8C
          DE22F8E7E37BBF12788AE37CB27C96F6B193E4DA440FCB1C63B01EBD49C93C9A
          E128A2A4FCBE73954939CDDDB3EE9FD897C146D7E1D9D4238B75EEB97A4211D4
          A21F2D17FEFAF30FE35FA17E1BD0A1F0E68F6F63081F20CBBFF7DCF535F297EC
          0F6116A5F0DFC2D385063B4B59DFFE07E73AFF00324D7D83548FD3324A0A1875
          53B98FE2ED78785FC397FAAB468F15A44D348D2CAB1A468A09676663C000126B
          F309E3BAFDB27E395F789750B216FE0CD2D8445A28BCA37001CAA16183B9FA9E
          72ABC673827D93F6CAF8C5AC7C68F883A7FC04F876E6E67B8B958F59B989BE42
          E3E631330E89181BE43EAA07F0907DBBC2BF0FB4EF86DE11D17E16784543C76F
          86D42F76E1AE273CC923E3DC64FA00AA3A50CE3C7CBEBF55D38BF721A7F8A5D9
          7A753E52F15FEC4FE14D537C9A1EA57BA24A7A46F8B8847E070DFF008F5664DF
          06FE30783BE1EC7E0EF014116A11B34D737B79A65C7977728638DAAAFB768DA1
          41DA4B1FA75FD1393E15E832D8436ED03ACB1A053711B95763DC9EDFA566587C
          39BEF0ADC5D5DE8B7714F71244628C5D2EDF2F2412723209E3D852B18BC91C65
          7B5975E5DCFC51F13F8435DF066A4F61E20D1EFB46BE5EB05FDBBC2FF5C30191
          EF5915F587ED77E26D67E267C60B1F869A731BFBDB5BB11DC947F33CCBB61839
          233C46A4E7D32D9FBB5E837FFB1EF80AFF0046B4B510DDD95F430AC6F7D6B390
          D2B0182ECADB9793CF0075A47C94B0729549C69ED1EE7CB7FB3571F1BFC2DFF5
          DE4FFD14F5FB4BE1318F0BE91FF5E917FE802BF36FC07FB25DE7C3BF89BA2F88
          2CB5D8751D36CE5779229E2314C0146518C6437247A57E93785BFE459D27FEBD
          22FF00D005523EBF87A9CE97B48CD58D4AF2CFDA96F22B1FD9D3E22C930051B4
          4B98C67FBCE8557F5615EA75F21FFC14AFE2643E16F8296FE158A6C6A3E24BB4
          531A9E7ECF0B091DBFEFBF287BE4D33E931F5551C2D49CBB3FF247E59D1456E7
          817C38FE2EF1968BA3203FE9D77140C47F0A96018FE0327F0A83F1C49B7647E9
          2FEC75E04FEC5F07782EC1E3C398BFB467C8E773E6500FD32ABF857D8F5E49F0
          3B47485EF6ED502470C6B6F1803803A903E985AF5BAA47EB5955254B0CBCFF00
          E182BF3C3FE0AB7FF215F86FFF005C6FFF00F4282BF43EBF3C3FE0AB7FF215F8
          6FFF005C6FFF00F428286639E7FB854F97E68F81AB77C3DE02F1378BA0967D0F
          C3DAAEB30C4DB24934FB2927546C6704A29C1C56157E94FF00C12BFF00E49B78
          D3FEC2B1FF00E89148FCF32EC22C6E215193B5EE7C13FF000A57E217FD08BE24
          FF00C14DC7FF0011505D7C22F1CD926FB8F06788204FEF4BA64EA3F55AFDDBC5
          1807B53B1F5BFEACD3FF009FAFEE3F9FEBBB2B8D3EE1E0BA824B6990E1A3950A
          B29F706BD3BF678F8ECDF00FC669AEAF86349F11E480DF6F8FF7F081D4C1273E
          5B1F5DA6BF537F6AEF84FE17F88DF063C5736B7A7DB1BDD334CB8BDB3D499009
          ADA48E367521FAED257057A104D7E2F52D8F9CC760EA6515E2E13BF54EDFA6A7
          EE2FC10F8E7E18F8F9E0E4D7BC3770DF2111DDD8CF813DA498CEC703F30C3823
          A7703D09982A924E001926BF25BFE09D9E39BEF0C7ED1DA66910CAC2C35FB69E
          D2E62CFCA4A44D2A363D4347807B066F535F7FFED8BF147FE153FECFFE26D4A1
          97CAD4AFA2FECCB120E1BCD9815C8F754DEFFF0000A67DD60332FAC609E26AE8
          E37BFCB5FC4FCB6FDA87E281F8BDF1CBC53E218E5F36C1AE4DAD890723ECF17C
          9191E9B82EEFAB1A97F656F85C7E2EFC75F0B6832C5E6E9EB702F2F81195FB3C
          5F3B83ECD809F5715E4C4E4D76BF0AFE32F8B7E0AEB375AAF83B534D2B50BA83
          ECD2CED6B0CE4C7B83151E623639553C7A0A47E6D0AD19E2556C46A9BBBFCCFD
          D2000000E82BE1FF00F829F7C28FED9F05685E3EB38775CE8F2FD86F594726DE
          53F231F65938FF00B6B5F2EFFC37E7C75FFA1D57FF0005567FFC66B1BC63FB66
          FC5EF1F786351F0F6BDE288F50D235088C3736CDA65A2EF5EBD562041C804104
          10453B9F5D8DCEF078BC3CE8B8CB5DB45BF4EA789D7DF5FF0004BBF8B1E45FF8
          93E1DDE4D849D7FB5B4F563FC6309328F723CB6C7FB2C6BE05AED3E0C7C46B9F
          84BF14BC37E2CB62C4E9B78924A88799213F2CA9FF00024661F8D23E572FC4FD
          53130ABD13D7D1EE7EEA5782FEDD5FF26ABE3BFF00AE56BFFA570D7B8699A95B
          6B3A6DA5FD9CCB716975124F0CA872AE8C01561EC4106BC3FF006EAFF9355F1D
          FF00D72B5FFD2B86A8FD531CEF84AAD7F2BFC8FC71AFD24FF8256F3E00F1BFFD
          84A1FF00D155F9B75FA49FF04ADFF9103C6FFF0061287FF4554A3F3BC87FDFE1
          E8FF002390FDBBFF00635FECA7BFF895E06B1FF426266D6B4AB75FF527AB5C46
          A3F84F5751D3EF74CEDF82ABFA06923595191D43A30C15619047A57E61FEDC7F
          B1BB7C33BEB9F1DF832CCB784EE64DD7D610AE7FB36463F7947FCF2627FE024E
          3A1186CF573ACA792F8AC3AD3AAEDE6BF53E74F821F1ABC43F01FC7569E24D02
          6C95FDDDDD93B1115DC24FCD1B8FD41EA08045765FB61FC57D17E357C57B6F15
          E82EFF0063BBD26D83C328C4904AA183C6DEE0F71C1E08E0D7875148F93589A8
          A83C3DFDD6EFF31D1FFAC5FA8AFD58FF008290C5249FB3386407626AB68D263F
          BB871FCC8AFCA78FFD62FD457ED5FED43F0EA6F8A7FB3E78B340B588CD7EF642
          E6D5147CCD34244AAA3DD8A6DFF81508FA1C9E9BAB85C5423BB4BFF6E3F14ABE
          89FD802F6D6CBF6A6F0A7DA4AA9963BB8A2663802436F263F13C8FC6BE76652A
          482304704569F85FC49A8783BC47A6EB9A4DC35AEA5A75C25D5BCCBCEC746041
          C77191D3BD07CEE1AAAA15E155FD969FDCCFDF5A2BC23F671FDAEBC1FF001EF4
          4B587EDB068DE2D5402EB45B8936B17EED093FEB14F5E391DC0EFEED9CD51FB1
          D1AD4F11055293BA62D145735E39F893E17F869A43EA7E28D76CB44B250487BA
          942B3FB22FDE73ECA09A0D6528C17349D91D2D7C25FF0005568A53E12F00C833
          E4ADEDD2B7A6E2898FD0356A7C2AFDBBB4FF0019FED47AA6826F673E05D6C436
          7A34B78823305D2281903A85998B0F9B273B3A7207A1FF00C1417E1B4FF107F6
          78D42EACE2335EF87EE135655419668D4324BF8047673FEE523C0C5D7A798602
          B7B077B5FF00077FC7A1F91B5F6F7FC12BE6817E2478CE2623ED2DA546C833CE
          C1280DFA95AF886BD5BF662F8D0FF01BE30691E27911E5D30EEB4D4618C659ED
          9F1BB03B95215C0EE540A47E7D97568E1F174EACF64FFE01FB654565F867C4DA
          578CB41B2D6B44BF8352D2EF2312C1756EFB91D4FF005EC41E41041E6B52A8FD
          8535257415F1FF00FC15027813E0168D1484199FC410188679C8827C9FCB8FC4
          57D7B2CA90C6D248CA88A0B3331C0007524D7E53FF00C1403F68BB0F8C7E3CB1
          F0F7876E96EFC39E1EF317ED719CA5D5CB101DD4FF00122850A0F7F988C820D2
          67859D6221470738C9EB2D11F2957D53FF0004E3B6B9B9F8E5ACADB03B87872F
          3381EAF101FF008F15AF95ABF433FE096BF0D67B7B3F16F8EAE622915CECD26C
          DC8C6E0A449311EA33E50CFA83E9491F0594527571B4D2E9AFDC7E7AC80AC8C0
          8C104E41A584A89A32C32BB8640F4AF4BFDA5BE1BCFF000A7E3878B74092231D
          B25EBDC5992301ADE53BE323D70AC01F753E95E6348F32A539529CA12DD3B1FD
          0069F34371616D2DB90D03C6AD195E8548E31F8558AF97BF614FDA3F4CF8AFF0
          CB4DF0BDFDE245E2ED02D96D65B791806B98106D8E64FEF614286EE08C9E1857
          D43567ECB86AF0C4D28D583D1FF560A46FBA7E94B5E0BFB5EFED1DA67C07F86F
          7D1C1771B78BB5481E0D2ECD18191198106761D913AE7BB003D70155EB430F4D
          D5A8EC91F92BF12E682E7E2378A65B5C1B69355BA68B07236995B1FA57363A8A
          092C493C935D77C23F87F77F14BE25F873C2B648CD2EA7791C2ECA33E5C79CC8
          FF004540CC7E9527E3094AAD4B456ADFE67DE5FB6CC52C1FB107C388E6C89925
          D295F3D770B29335F9BF5FA93FF052FB58ECBF670D1EDE1411C316B96B1A20E8
          AA209C015F96D433DDCF63CB8B51ED146AF87BC29ADF8B6E64B7D0F47BFD66E2
          34F31E2B0B679D95738DC428240C91CD6F7FC295F885FF00422F893FF05371FF
          00C457D43FF04B3FF92B7E2CFF00B027FED78EBF4CF14EC75E5D92431D8755A5
          36AF7E87E13CDF073C7B6E85E5F04F88A241D59F4A9C0FFD02B9BD4F47BFD167
          F2350B2B8B19B19F2EE6268DB1F42057EFE607A5737E3EF877E1CF899E1BBAD1
          3C4BA4DB6ABA7CE854A4F182C848FBC8DD55876618228B1DD5386572BF67575F
          35FF0004FC47F861E3F6F865E31B1F102689A56BEF6AD9167AC5BF9D013EBB72
          30C3B1EC79AFD6EFD99FF6ABF0C7ED1BA3CA96319D1FC4765186BCD1A670CCAB
          D3CC8DB8DE992067008240206467F1E7C4FA5C5A1F89756D3A09BED305A5DCB6
          F1CDFDF5572A1BF10335DB7ECE1E39BEF877F1C3C1BACD8CAD195D4A1827553F
          EB2191824887D72AC7F1C1ED491E165798D4C0D654DFC0DEABF53A8FDB07E36E
          ADF197E32EB46E6791744D1EE65B0D32CF3F2471A3152F8FEF395DC4F5E83A28
          AF0EAFD06FDAD7F626D2356F19DDEB9E0EBE3A56A7A9EFBDBAB0BA19B679598E
          4A301B9327248C30C9E3038AF88BC6FF000C3C4FF0EAEFC8D7B499EC949C24F8
          DD0C9FEEB8CA9FA67341CD98D0AF4F11375B577DCE5A8A28A47947E8D7FC12EF
          C6F06A3E1EF1278625900BDD3D96E214279681CF381ECF9CFF00BC2BEEEAFC36
          F815F18B55F817F12B4BF15E963CDF218C5756A4E16E6DDB1E6467EA0020F660
          A7B57ED0FC34F893A07C5AF0758789BC377AB7BA6DE26476789C7DE8DD7F8594
          F047F3041AA47E959062E1570FEC1BF7A3F91C6788FC1FE09F85FAE5F789F41F
          0E69DA778BF5689A07BCB58423B296DCEE40E324E0938CB1C6738AEA3E1BF849
          B42D3DAFAF149D4AEC6E72DD514F3B7EA7A9FF00EB575179A4D96A124725CDAC
          33C9190C8F22025483918356E99EE470C955F69A596C97E2FD42BCA7F69BF8D5
          6DF01FE11EAFE236646D51D7ECBA640FFF002D6E9C1D9C770B82E7D90D7AB578
          AFED2BFB30683FB47697609ACEB5A968F3696246B596D5D4C2A5B1B9A48D861B
          851D083EF4158AF6DEC25EC3E3B687C71FB12F80EE63835EF8B1AD979F55BF92
          6B1D2A69F97677E6EAE7279CFCDB037AB3FA57DD5F0FFE1F58CDE1C13EAB68B3
          CB77F3A87C8289FC3823919EBF88AF3EF875E07B06B9D1BC33A4C463F0EE8B6E
          96F102304C49D59BFDA918963EEE6BE875508A15400A06001DA923C5CAF0718C
          3DED52D3D5F57FD743CF355F833A7DC6E6B0BB96D1BB2483CC5FE87F535DC68F
          64DA6E916568EC1DE08122665E84AA819FD2AE562F8C3C67A27803C3F77AE788
          753B7D274AB55DD2DCDCBED51E80772C7A051924F001A67B91A34683738AB772
          C7893C47A6F84341BFD6B58BC8EC34CB185A7B8B994E15114649FF00EB0E4F41
          5F8C1FB4D7C74BCF8FFF0015350F10C9E643A545FE8BA65A487FD4DB293B723F
          BCC4966F76C670057A17ED79FB63EA3F1FF503A168627D2BC0F6B26E4B773B65
          BE707892503A01FC29CE3A9C9C63E66A967E7D9D668B172F6145FB8BAF77FE41
          5EEFFB1BF85FFB6FE2C7F68BA661D26D249C1238F31BF76A3F2663FF0001AF08
          AFB6FF00616F063AF842FB52098B8D62FD6DE238EA91F00FFDF4EFF9523C3C1D
          3F695A28FD02F863A67F66F842D091892E099DBF1E9FA015D5D456B6C9676B0C
          118C47120451E800C0A96ACFD86943D9C230EC82BF3C3FE0AB7FF215F86FFF00
          5C6FFF00F4282BF43EBF39BFE0A0969E30F8CDE3AD1B4DF0D7C39F185E5A7870
          5CDBC9A82E8B3B4372EEC993132A90C804630DDF3F894CF1B3CD705282D5BB5B
          EF47C215F447ECCBFB626A3FB35F87B57D2ACBC376DADA6A374B72D24F72D114
          2102E000A73D2BCE3FE19E3E29FF00D135F177FE08EE7FF88A3FE19E3E29FF00
          D135F177FE08EE7FF88A47E7343EB5869AA94A2D3F4FF807D59FF0F56D77FE84
          1D3FFF00060FFF00C454373FF0554F12B2FF00A3F8174B8DBD64BC91C7E8057C
          B3FF000CF1F14FFE89AF8BBFF04773FF00C451FF000CF1F14FFE89AF8BBFF047
          73FF00C451A9E97F68E6BFCD2FFC07FE01E91F1ABF6E9F88DF1ABC3D73E1FB93
          61A0E8773F2DC5B695132B4EB9CED7776638F50BB41EF9AF9DABD534BFD95BE2
          F6AF32C507C3BF1046CDD0DCD93C0BF89936815EE1F0B3FE09A1E3FF00135E41
          3F8CEEECFC25A66732C292ADCDDB0F455425067D4B71E87A5072BC3E3F1F539A
          51949F77FF00074450FF00826C7C37BDF137C75FF84A7C975D33C39692BB4F8F
          90CF2A34491E7D4AB48DFF0000F7AEABFE0A81F1486B3E3AD03C0B6936EB7D1E
          037B78AA78FB44A3E4523D563008F696BECC87C35A27ECA9F056EA0F05784B52
          D7458A864D3B4B80CF797F70C42F9921519249C166C7CAA38180057E59F8F7E1
          77C67F88FE32D63C4DACFC3BF16CDA96A770D71311A1DD6D049E1546CE154600
          1D8014CF771946780C02C14137293BCAC9DBFAD17DC79359594FA8DE41696D13
          4D713C8B1471A0CB3B31C0007A926BF48F44FF00825B7839F46B06D53C53AEA6
          A6604374B6C61F284BB46F0998C9DBBB38C93C57C97F05BE14FC41F87DF15FC2
          BE24D63E1478C750D374BD422BA9ADE2D0AE0B90A720A828012A70C012324751
          5FB17A75E0D474FB6BA114D009E2594457085244C8CED653C8619C11D8D08323
          CBA8D68CE58985DE964EFF0079F1A7FC3ACFE1FF00FD0D5E23FF00BEA0FF00E3
          747FC3ACFE1FFF00D0D5E23FFBEA0FFE375F69D14CFA8FEC8C0FFCFA5F89F907
          FB64FECB36BFB366B9E1FF00EC7BEBDD4F43D56DDF1717BB77A4E8DF3AE54018
          DAC84719FBDE95F39D7EA87FC14574BD43C63F0DB49F0CE8BE0CF10789B597BD
          5BE82EF49D3A4B886D55032B09190120B07E171CE33D857E787FC33C7C53FF00
          A26BE2EFFC11DCFF00F1152CF81CD705EC71528D08BE5D364F4F23F48FFE09E1
          F163FE1617C0A8744BA9BCCD53C2F2FD81C31CB1B739681BE806E41FF5CABAAF
          DBABFE4D57C77FF5CAD7FF004AE1AF89FF0063C5F8A5FB3DFC5117F7FF000C7C
          6771E1ED522FB1EA3143A25CEE519052550500250FA9FBACD5F5D7EDDDAEEB17
          FF0007B51F04E81E0EF11F89B54D79222B71A469B25CDBDB2473A3B798C80E18
          ECC05C77CF6A67D561B12EAE5538D44D4A3171D9F6B23F23EBF493FE095BFF00
          22078DFF00EC250FFE8AAF873FE19E3E29FF00D135F177FE08EE7FF88AFB4FFE
          09D67C53F0BEF35AF09789FE1FF8B3491ACDC25C5B6A973A3CD1DAC65236DCB2
          BBA8099C0DA79C938E38CA47CD64B09D2C6C2538B4B5E8FAA3EF4AAF7F616DAA
          D8DC59DE411DD5A5C46D14D04CA192446186560782082462AC51547EA1B9F937
          FB68FEC8773F0335C7F127872092E7C0D7F2FCB8CB369D2B1FF54E7AEC3FC2C7
          FDD3CE0B7CB75FBCBF11ADF4CBAF01EBD1EB3A34FE21D2CD9CBF68D2ED6DCDC4
          D749B4E638E31CB39EC0739C74AFC67D6BF67CF88B26B17CFA67C32F1A45A6B4
          EE6D63B8D12E4C8B16E3B0310982C1719C77A968FCD339CB161AB29505A4BA25
          B7FC03CD23FF0058BF515FD0141FEA23FF00747F2AFC3D5FD9EBE29AB03FF0AD
          7C5DC1FF00A01DCFFF00115FB27F093C7D3FC48F065AEAD75E1CD67C2B760F93
          3E9DAE59B5B4C8E146E2AADCB264F0DDF07804114D1E9F0DA9539558CD34DDAD
          75DAFF00E67E77FEDDFF00B25DEFC3CF135F78FBC2F64D3F84F5294CD7B0C0B9
          FECE9D8FCC481D22663907A293B78F973F1D57F405776905FDACB6D730C7716F
          3218E48A550C8EA460820F0411DABE2CF8EDFF0004D5D07C5B7573ABFC3CD423
          F0C5FC84BB6957419AC9D8FF0071865A2FA61876000A2C4667914E5375B0AAF7
          DD7F97F91F9A28ED1B06462AC0E41070457A3F87FF00691F8A5E17B75B7D37C7
          DAFC16EBF7627BE92445F60AC481F85741E38FD8DFE30780A6905E782B50D460
          53C5CE90BF6D461EB88F2C07FBC05796EA1E11D734890C77DA36A166E3AADC5A
          BA11F98A47C9386230AF5528BF9A3D0351FDAB7E2FEA9134737C43D7955860F9
          176D09FCD304579BEB3AF6A5E22BE7BDD5750BAD4EF1FEF5C5E4CD2C8DF56624
          9A7D9F86F56D4582DA6977972C78021B777CFE42BD17C21FB2A7C5AF1BCD1A69
          BE02D65124E93DF5B9B48B1EBBE5DA08FA1A07FED38976F7A5F7B3CAE199EDE5
          4962768E442195D4E0A91D0835FB0BFB1E7C7AB6FDA1BE10247AB34771E22D31
          0586B104801F3815216623B89141CF6DC1C74C57CD3F0A7FE0977AA5E491DDFC
          42F11C5A7DBE413A768BFBC9987A34AE36A9FA2B7D6BEB4F85BFB29780FE0BF8
          A2DF5DF07C3A869372B66F657308BC6961BD5621834AAF9F9948C82A5473D29A
          3EBF25C0E370B53DA4E3683DD37AFADBCBCCFCE6FDB17F656D43E01F8C66D4F4
          BB692E3C0FA94C5ACAE541616AC727ECF21EC473B49FBCA3D4363E73AFDF6F11
          78734BF16E8B77A46B36106A7A65DC6639ED6E503A48A7B107FC8AF81FE397FC
          1326E3ED771AA7C30D4E36B7625FFB0B5490AB27FB314DCE47A07C63BB1A1A39
          B32C8AA426EAE155E2FA755E9DD1F23FC27FDA17C7FF0004E673E12F10DC585A
          C8DBA5B19009ADA43DC98DC150781F30C1F7AF79B7FF0082A07C5486D7CB7D1B
          C2D3CA0604CF693827DC81381FCABC17C61FB3AFC4DF01CEF1EB7E07D6AD550E
          0CF1DA34D0FE12C7B90FE06B859348BF8A5F2DECAE124E9B1A2607F2C523C086
          2B1B845ECE32947CB5FD4F5FF8B3FB61FC51F8C5632E9DACEBE6CB489411269B
          A5462DE1901EAAE47CCEBECCC4578AD763E19F837E3BF194C91E89E0FD6F532D
          8C3DBD84AC83DCB6DC01EE4D7D39F077FE09A3E33F13DCC179E3CBC87C29A5E4
          33D9DBBADC5EC83D3E5CA267D49623FBB40E387C6E613BD9C9F77FE6CF9E3E04
          FC0CF10FC7CF1CDB787F4281961043DF6A0EA4C5670E79763DCF5C2F563C7A91
          FB3DF0E3C01A4FC2EF04691E16D0E1F234DD36010C60FDE73D59D8F76662589F
          526AA7C2FF0084FE17F839E188741F0A6971E9B629F33B0F9A59DF1CBC8E7966
          3EA7A7418000AEBE99FA165795C72F8372779BDDFE88F973F6E3FD965FE3AF85
          21D7FC3D0A9F19E8D1308A3E01BEB7CE4C39FEF03964F72C3F8B23F282F2CEE3
          4EBB9AD6EA192DAE61731CB0CAA55D181C15607904118C1AFE80ABE78FDA3BF6
          2BF077C7E697558CFF00C237E2C2B8FED5B48C32CF81C09E3C80FF00EF021BA7
          240C50D1E7E6F933C54BDBE1FE3EABBFFC13F22F45D6F50F0E6A96DA96957D71
          A6EA16CFE643756B2B472C6DEAAC0820D7D2DE10FF00828EFC60F0BD9476D777
          1A4788C200A25D56CCF9981EAD134793EE726B9FF893FB09FC5DF87771298FC3
          ADE26B053F2DE6847ED1B87FD72C0901FF0080E3DCD78A6ABE0DD7F4298C5A96
          89A8E9F283829756B24647E0C0523E313C6E024D2E687DFF00F0C7D27E27FF00
          82947C5DD7ECDEDECBFB0FC3E5811E7E9F64CD201F595DC7E95F34789BC53AC7
          8CF59B8D5F5DD4EEB57D4EE0E65BABC94C9237A727B0E80741469BE14D6B5994
          4561A45FDF487A25BDB3C84FE0057B1FC3AFD88FE2F7C45B88BCBF0ACFA0D931
          F9AF35DCDA2A0F5D8C3CC3FF000153404A78DC7B517CD3FBCF0A8E379A454452
          EEC70AAA3249F415FA87FB04FECA373F09F497F1C78AED0C1E2AD4E1F2ED6CA5
          5F9EC2DCF2770ED23F191D540C704B0AE9FF0066FF00D853C25F042E2DF5CD5E
          45F1578B23C347773C7B6DED1BFE98C673F30FEFB64F19016BE9CA691F6194E4
          AF0D2588C47C5D176F37E67C8BFF00053AFF00937AD37FEC3F6FFF00A267AFCB
          1AFD39FF008289DE788FC75E15D3BC07E19F02F8A35EB98AFA2D4A7D4AC34A96
          6B45411C8A23574072F97048ED8F7AF81FFE19E3E29FFD135F177FE08EE7FF00
          88A4CF133C84EAE35B845B4925B33A0FD99FF68CBCFD9B7C53AA6B767A2C1ADB
          DF59FD8CC33CC620837ABEEC8073F771F8D7D19FF0F56D77FE841D3FFF00060F
          FF00C457CA7FF0CF1F14FF00E89AF8BBFF0004773FFC451FF0CF1F14FF00E89A
          F8BBFF0004773FFC451A9C343159861A1ECE95D2F4FF00807D5137FC1557C44C
          988BC07A623FABDEC8C3F2DA2B83F88BFF00051FF89DE36D16E74BD3ADF4BF0B
          C1708637B9D3E376B9DA460857762178EE1411D88AF13FF8678F8A7FF44D7C5D
          FF00823B9FFE22AE58FECC7F16B5191522F873E2542C700CFA64B10FC4BA8028
          D4D658ECD2A2E57297C95BF24799124924F24D7B07EC95F0DEF3E277C7EF08E9
          F6D0BBDB59DEC7A95EC8AB958E08583B163DB242A0F7715E8DF0EFFE09CBF15F
          C5F75136B76F65E10D3CB0DF2DFCEB2CBB7B958E32D93ECC57EB5FA15FB3EFEC
          DBE14FD9DBC392586851BDDEA575837DAB5C81E7DC11D071C2A0E70A3F1C9C9A
          2C7465B93E22B558CEB47960B5D777E563BAF14F8374FF00164282E8324D1822
          39A33865F6F715E47E2FF8377B1DA4F0BDAC3AE69D20C3C6630FB97D1A339CFE
          19AF7AA29D8FBEAF83A588D64ACFB9F9B3F123F637F0CF889E6B8D0247F0D6A1
          924C2017B666F428795FC0E07A57CB9F10FE05F8C7E1A3C8FAAE96F35829E350
          B3CCB011EA48195FF81015FB5FAF783B4AF11A9FB65AA997B4F1FCB20FC7BFE3
          9AF32F11FC1DBEB4491F4F75D46DC83985C05931E98E87FCF14AC7C962F226AF
          282FBBFCBFC8FC5EAF50F80FFB4578BBF67CF119D47C3B7425B19C8179A55C92
          D6D72A3D403C30ECC391EE320FD65F13BF64CF0978BA69DE3B293C2FAC64E65B
          38F6216FF6E2381F96D27D6BE58F88BFB3178D7E1FF9B70B67FDB9A6264FDAF4
          E05CA8F578FEF2FB9C103D691F32E8623093F690DD7547E94FC10FDB7FE1C7C6
          3B7B7B697514F0B7885C00FA5EAB2040CDE914A70AFEC386FF006457D06ACAEA
          19486079041AFE7E082A707208AF43F027ED0DF123E1A47145E1CF196ABA7DAC
          5F72D0CE65B75FA44FB93F4AAB9F4986E2494572E2617F35FE47EE2D57D42C62
          D4ECA6B59C31866528E158A920FB8AFCA3D1FF00E0A45F1934C8C2DCDD68DAB3
          0FE3BBD3C293FF007ECA0FD2B4EE3FE0A71F16A64012C3C3301FEF4765293FF8
          F4C68B9EB7FAC18292D6FF0077FC13F4DBC33E11B1F0A4770967BDBCF60CCD29
          05B03A0CE3A0E7F3AB3AFF0089748F0A69D26A1AD6A967A4D8C7F7EE6FA75863
          5FAB3102BF22FC4BFB79FC6BF1247245FF00096FF6640FC18F4EB386123E8FB4
          B8FF00BEABC57C4BE33D7FC6779F6BD7F5BD435BBAE7F7DA85D3CEC3E8589A2E
          714F88A8528F2E1E9BF9E8BF53F4C7E337FC148BC0BE0A8EE2C7C19049E32D5D
          41559D73158C6DEA5C8DCF8F45183FDE15F9F3F18FE3E78D3E3AEB42FF00C57A
          B3DCC71926DEC211E5DADB03D9231C67FDA3963DC9AF3CA295CF96C666989C6E
          952568F65B7FC1F985145148F240726BF587F64BF02FFC23DE1FF0A698D1ED36
          1622E675C749586E6FFC7DCFE55F997F093C31FF000997C4AF0E690537C57178
          8655F5894EE93FF1D56AFD91F82BA6795A7DFDF32F32B88549F45193FCC7E54D
          1F4F9150F695F99F4FD35FF23D2A8A28AA3F4C0A28AF22D7FF006A2F067877C5
          BAC786A7875EBAD5F48748EF21B0D16E6E4445D43212D1A11865208F5141954A
          B4E924EA492BF73D768AF1AB7FDADBE1D0BDB7B6D4AF355F0F9B890451CDADE8
          D75670963D0191E30ABF562057B22B0750CA41046411DE8153AD4EADFD9C93B7
          6168A4CD19A0D85A28A2800A2932077A5A0028A4240EA68CE680168A2B84F891
          F1BFC1BF0A24B5B7F10EAE21D46EC66D74CB589EE6EE7EBF7218C3311C119C63
          DE822738D38F34DD9799DDD15E2B1FED75E02B69E18F5C4D7BC251CCE123B9F1
          068973690313D3F78C9B541F5622BD7746D6F4FF001169B0EA3A55F5B6A56138
          262BAB495658A400E0ED65241E411C7A50453AF4AAE909265DA290903BD2D06C
          1452138A0107A5002D149903BD19CD002D149903BD1B87A8A005A29323D69680
          0A28A4A005A69453FC23F2A5C8F5A323D68013628FE11F953A9323D696800A29
          28C8CF5A005A28A4CE2800201EB49B17FBA3F2A5C83DE968010003A0C52D2120
          77A5A0028A64D279313C9B59F6A96DAA324E3B0AF12D3BF6C3F00EB16DF69D3E
          DBC4D7F6C59904F6BE1DBC9509524300CB191C1041FA506352B53A4D2A924AFD
          CF70A2BCBFC1BFB49F80FC6FE2483C3D69A95D69FAEDC066834FD5F4F9ECA49B
          0327679A8A1880338049F6AF4FC81DE82A9D485557A724D790B4D28A7A807F0A
          5CE6968341A1147F08FCA9D494B4005148083D0E696800A29334B40051452646
          7AD002D145140051499CD2D001451450014514500676B1E1ED3B5E87CBBEB58E
          718C06230CBF461C8AF37F10FC1A963DD2E9171E72F5FB3CE70DF83743F8E3EB
          5EB345072D6C2D2AFF001AD7BF53E1BF8ABFB34F85FC653CA35BD11F4AD59B27
          EDD68BE4CA4FA9E36BFD483F5AF953E22FEC81E2CF09F9B75A195F12E9EB9388
          1765CA8F78C9F9BFE02493E82BF61AFF004DB5D56DCC1776F1DC447F8645CFE5
          E95E7BE20F8376F3EE9748B836EFD7C89C964FC1BA8FC735363E5F1791A95E50
          D7F07FF04FC47BBB49EC2E24B7B9864B79E33B5E2954AB29F420F22A2AFD47F8
          A9F00F47F13A183C57E1E47971B63BE55DB20FF7655FE59C7A8AF943E22FEC57
          ABE97E6DDF846FD757B71922C6EC88E703D0370ADF8EDA47C8D7C055A2DAB5FF
          003FB8F99E8AD0D77C3DA9F8675092C756B0B8D3AED3EF43731946FAE0F51EF5
          9F41E6B56D185145140828A28A00FA2BF626F0BFF69FC40D4F5A74DD169967B1
          0FA4929C0FFC7564FCEBF57FC09A6FF65784F4E848C3B47E6B7D5BE6FEB8FC2B
          E0CFD85BC0C53C096D70C98975CD44B6EC73E521118FC8AC87F1AFD115508A14
          0C003000AA47E8BC3F479293A8FF00ABFF00485A28A299F5C15F26786FE235E7
          80BF6A2F8E8B6BE0BF1178B45D4DA3963A14314820DB65C6FF003244C673C633
          F74F4AFACEBE60D2759F157C32F8FF00F1735C5F871E25F11693E229F4EFB15D
          6971C3B4FD9EDBCB727CC914E0B1E0F7C67D283CCC6DD3A4D36AD2DD2BDBDD97
          A999FB42FC7CD535BF853E21D126F84DE29D26D754B56B29B56D7ECD058E9E92
          7CA6E2530B4AC0479DFC2F5515EF3A26B3A57C37F82BA6EA579ABC7A8E8FA2E8
          50C8FAA46C196E628A01FBD5E79DE06463AE4579B78CFE2AF8FBC73E14D5B40D
          03E0E7882DEFF52B592CD6E35E9ED2DED61122952EF8958B05073B40C9C62B2B
          C43F07F5997E1FFC2FF82ECBA84FE1D8E388F88F5DB3056311C085D21563C8F3
          260BDBE55519EB41CD19D48D49D48DE5A24AEADADF45B2BEF76FA185F07EE7C4
          FF000C3E28F87356F185F5DC963F13ED66945A5D4CCF168FA8798F3C36A81B84
          5681C260725E3FA0AEABF6B5F0A6ADE3AD63E1B787745F10DF7866FB53D46F21
          5BDB299D394B396640E148DC9BE24C8F4CE293E307ECC0DAC780AFE6D2FC5DE2
          FD43C41A581A9E8F1DFEAAF731ADEC397888423A9236E7B6EAD5D4E6F11F8DB5
          DF81FAF5EF86750D3AEECAF6E27D66D9A1E2C5DACA584EE39E54C920C119E393
          8C1C047B39C69CB0D34ECDC5AEBA36B9B5FC7E7E4743F067E2C3F8FEC752F0D7
          896C5343F1DE8605BEB1A393F2B0230B7109FE28641C823A6707B13E53E1AF89
          BAE781FF0064EF05CDA3CA6F3C5BE23D4D743D3EEB5191A60B733DD488B2C858
          92C11549C1E3E503A57A7FC78F85B79E21B7B7F1A784A53A6FC43F0F44F2E9D7
          51A161791E32F67328E5E393A01D558E477CF05E13F82DAF78CFF650F0C7872E
          E393C2DE36D1AE06A962D769C5ADF4570F2C6580CE5486C646786CF2462834A8
          B10A4E9ABB6A32B3EFAAFBA5BFE7E9D9E9BFB2DF8725B4497C4BAD789BC55AE3
          0DD2EAB77AEDDC0FBCF531C70C8891AE7A281C0E326B52D74E9BE007803C65AD
          EA5E26D67C57A569D6F2DFDA41AB4CB2CD6F0C511630897019CB306C33927054
          7624E3E99F1D7C5DA658A5A789FE11F8A935E8C6C90684905E59CCDD37472F9A
          BB54F5C3804671938AD6F0FE93E31F8A1E17F1769FF10F48B2D0744D7607B5B3
          D26DEE7CEBCB481E3D8E269146C2C72586DCEDCE327B06D1F63FF2E22D4ACFA3
          5D3ED5FF005B9C77C39F82D37C59F09E9DE2EF8A1AC6ADADEADAD4097C9A4DA6
          A5716561A74520DD1C51C50BA659548059CB12475EF553C49A6EA3FB3178B7C2
          17FA26B7A9EA7E01D73558743D4343D5EF1EF0D8C936443716F2C84BAA861864
          2C41CF033C8BDE01F1778EBE0A7876CBC1FE2DF04EB3E2BB6D2625B4D3FC45E1
          88A3B94BBB74188FCD84BABC52050A0F0C0919CD2EA1A378B7F683F1B785EE35
          7F0D5DF833C01E1DD41358106ACF1FDBF54BB8F3E483146CC2289092C77365B8
          18EE039B961ECE2A9C5FB5D3A3BDFADDF6EFD1F4E87D00C70A4FB57CEBFB1FE9
          96BE31D1BC41F14F538D6F3C53E24D56ED5EEA6197B5B68A531456C99FB88020
          381D72339C0AFA2ABE71B6F0978EBF670F17EBD77E0FD01BC71F0EF5CBC7D4A5
          D16D6748AFF4AB97E64308721648D8F3B3208ED8C12C1DF88BC6A53AAD5E2AF7
          EB66F676FBD7CCFA1EFF004EB5D56CA7B3BDB68AEED27431CB04E81D2453C156
          53C107D0D792FC68F1349F033E12E91A3F822C6DAD353BEBCB3F0DE83048B986
          09A66D88CC39242A866E739206739358BAAFC76F889E2881AC3C11F0835FB3D5
          25F905FF008B8C365696D9FE360B2334807F75704D68F8C3E0B78ABC79F03F4C
          F0F6B9E27B6BBF1DE9335BEA565AF456C63896F606DD1B3264E47552D819CEED
          B9E2822A55F6D192A09F359EB6B7C937D7F0EE3AC7F658F0DDE582C9E29D63C4
          9E29D7DC069F57B9D72EE07F33A931C7148A91A83D140E071CD65F81756D77E1
          1FC6B4F86DAB6B979E24F0CEAFA64BA9E877DAA49E6DE5ABC4C04D6D24B8CC8B
          860CACDC8E8735A9A6FC74F1569364969E28F84FE2B5D7625DB29D0A286F6CE6
          61FC51CBE68C03D70E0119C1A8FE1E7827C55E32F8AF3FC4CF1B69A9E1EFB3E9
          EDA5E85E1E132CD2DB42EC1A59E774F97CC7C01B5490ABC1E6831B53E687D5E2
          D4AEAFA35A75E6BFEBADCE5FE16F86EEBF6A1D2A7F1F78C757D547862FEEA74D
          0BC33A75F4B656F15AC72346B2CE626579256285B96C00781CE027C55F03DDFE
          CD5E1B97E207C3FD5B565D37489125D5BC31A8EA135E5A5E5A970B2797E73334
          52A83B832903E5C107A55BF01DA78BBF6638AF3C2A3C29A978CFE1FADD4D71A3
          5F683E5C977631CAE5CDB4D03B2960ACCC43A93C1E40E817E20B78CBF693D353
          C1D65E12D57C17E0CBB9A33AD6B1E2011C373340AC1CC16F02BB365C800BB600
          19E0D073F2C7D8D9C5FB6B6F677E6F5ED7F958C7F8FF00ABF866F7E367C2D3E2
          6F114DA1F84F53D275096E25FED99B4D8A52A2268773A489C82ED819EF5CF78F
          F57F87FE18D3ACEEBE1178FEFF0054F1E1BFB54D3F49D3BC4F73AAA5EEE99049
          1CD0BCB22F97E597258818C673EBEABE3AF05DD6A1FB457C31BC8B4396EFC3DA
          5697A8DBDCDCF921E081A458C44A73FF005CCFD38CF5AF63B4D22C74F62D6B67
          6F6CC7826289549FC8506DF569569D5BD96BBDB5D96CEFDF6F33E56F8ADAA782
          EDFF006A7BEB1F1FF89AEB42D09FC2D6D73044BADDCD844F746E2542C3CA9132
          DB140FC2BD03E187813E13F8C3518F5AF056B9A9EB6FA35D46E664F10DF5E40B
          2E32159659591B83E848C8E86B3BC4B73AE783BF69FD53C551F82BC41E23D167
          F0CDBE96B3E91044F89D6E24948FDE489C0561C8CF3C7635D9691F17EEAF75BB
          4B65F861E2FD2DAFA78E096FEF6CEDD218C138DD2324CED8193FC27AF61CD04D
          28C15593A897C4FECBBF96BFF00F0F8EEBE1D5CFC77F8B767F10FC632E8C2D35
          1B4FECDB59FC5173A722A3DAA3C9B112640417393C704D6F785F58D034FF008C
          FE0CB2F84BE30D4BC51A5DD3DC278874F1AC4FAAD8DBDB0898A4CD24AEE22904
          9B00C302D9C62BB9F853E0DBA83E31FC60D4B57D0A48EC754D46CE5D3EE6EE00
          56748ED9627284F60CA7D323047151F867C27AB7C20F8E3A85B689A55C5D7C3F
          F1706BF9D6DA3CC7A46A4301DB1DA398609C670C33C2D04428C95A6D249C9EB6
          F797BCEDD767B7A3EC69FED1BAB5DDF681A3F81746B996D75FF185F25843716E
          E565B5B64C49757208E46C8D4E0FF79D2B3BF662D66F74DD2BC49F0E75DBB9AF
          3C43E0DD41ED5EE6E9CBCB77672932DADC313C92C8C54FBA1ACB4F85FA97C60F
          8C1E24F146BF71E24F0A5A68F1A691E1F16172D6724B01F9EE2724672247DA00
          E0ED8D7239159FAAFC27D5FE0EFC65F09F8D7C332F893C5D6FA8AC9A3F88A3BE
          B93792ADA1C34530271C46E32472486200EB41AB757DB7D6797DDBDBFEDDDB6F
          5D6FD8C1FDA2FE0AE8BF0B3E0B5C6A7E1ED5BC5169A85A5CE9F6D1CE7C497C40
          47BA86271B3CDD8328CC38500678C715ECBA27C05F0C786B528B55B3B8D765B8
          86295025F6B97777190E851BE49A4600E09E460FBE322B27F6AFF0EEABE2CF83
          17DA5689A6DCEABA8CD7F60E96D6A9B98AC77514AE7D000A8DFA0EF5EAF713EC
          D36598248E0445F62A12E78CE02F5CFB506D0C3D28E225EE2B251B69D6F2FF00
          81F81F20F86FC3FE20F197EC3DE15F11695A8EA371E2CD195F5B8DCDE4A5EFBC
          AB87692094EECC8AF1A95DA73C85AF7CD7FE356936FF00021FE22D92FDB2CEE7
          4C4B9B3B6EAD34D280B141C7F11919508EC7359DFB27F86B55F087ECFDE13D0F
          5DD3E7D2F55B28A58AE2D2E170C84CCEC3D882181C8F5AF2AF047C2BF14E9BF1
          821F035CE8F731FC27D075DB8F12E977AC988A495915E1B403A848A6926704F0
          4A2FB643969AA9469D3715ACE2A2FC9DB46FF1BFA22EB5878B3C2967F0DBE0CE
          93E21BBB1F10EB76936ABE23F11994CF730449B4CAB033EEC333B796ADFC0AA0
          8E6BD026FD94BC186D83DBEA1E29B3D614646B50F88EF4DDEFFEF92D215273CE
          0AE3DAA5F8D5F0E7C457BE2BF0AFC41F04A5BDD78A3C39E742FA5DD48228F53B
          3940F321F30F08E080518F19EB51C9F1F75F92D0C16BF083C6D26B846D5B49A1
          B78ADFCCF43726628173FC433F4A0D553A54E528D78DD2B72E8DE965B79DEF7E
          BF807ECFBE37F10DF6A7E35F01F8B6F1756F107836F62B73AAAC610DEDACF1F9
          96F2BA8E049B410D8E323B9C9AA3FB60B4ABF0BB4D10DD5D59BCBE20D360696C
          EE1E09364970A8EBBD08600AB11C1EF5B9F023E1A6B5E11FF849BC4FE2D9ADE6
          F1978B2F56F7508ECC9305AC689B20B7463F78469C6EEE49EB8C9CFF00DAB743
          D5FC41F0DF4FB7D1348BCD6EF61D734FBC36B6481A431C53AC8E79207DD53D48
          E48A0B929FD4A4A57BD9FADAEEDF3B58B573FB32785BC9274DD5FC5DA2DDE3E4
          BAB3F145FB3A1EC7124ACA7E8411EB5E7D6BFB43788BC17F047C7926AE22D6FC
          6BE10D60F87629CA044D425778D6DA76518C644AA59463EE36319AF42B8F8DDE
          22B881A3D2BE1178CAE2FC8C4497DF62B587776DF21B83B47B807E95CAE9FF00
          B33DE6BFF04BC61A07896FE2B7F16F8BB51935DBCBCB2CB4567785D1E158F382
          523F2E35ED9F9BD6833A916DFF00B1AB3B3E965B69BE97BFEA6BE8BFB30697AB
          E9515CF8FF005CD77C61E269D03DD5EB6B1736D0C721192B0430BA24680F418C
          FAD656873EB5F027E367867C172EB9A8788BC13E2F86E469A3579CDC5D699770
          2798D1F9CDF33C4E9F74312411D7AE75742F8CDE36F0BE9B0E99E37F867E22BC
          D72DD446FA8786628AF6CAF48E3CD43E62B47BBAED7518CF5A87C2DE14F167C5
          2F8BDA47C41F1768CDE14D17C396F3C5A06853CC92DDBCB3AEC96E6E0A12A9F2
          7CAB182C46492477039697B9F578B53BAE8D3B5F5E66F7D2FBF5D8F727FB8DF4
          AF8E7F651F8C7A8784BE0C5869707C36F18788A286FAFC8D4349B6B77B793375
          29C297994F19C1C8EA0D7D893BF95048E433055270A324F1D80EB5F297ECF5E3
          1F197C1DF86167E17D4FE11F8C2FAEEDEEAEE633D9A5B18D965B89245C6E981E
          8E33C75A0D714DC6BD3926D692D52BF58F9328FC55F8A173F14BC7FF000CBC3F
          AA783758F875676FE24B5D4535FF00145B8883CB11256D6068CBAF992E71F338
          1C1E0D6DFC70BBF0B27ED37A05978DBC493681E1A9BC2F34C47F6E4FA6C325CA
          DCA8425A39132DB4BF19E47D38B3F13BFE13BFDA434DD2FC256FF0F353F07688
          DA95B5E6A1ADEBF716EAF0C51481F6C3146EECCEDB700F0077EB91D8EB7E13BE
          D43F6ACD0F5997469AEB4187C2D7160F7CF086812E1AE1245424F7DA8DCF4E40
          CE4D071384EA737DABCA3AB56F556D345DFCFC8F26F1D6ADE04F0FE9D6B73F06
          FC7DA96ADE3C1796E2C746D3BC4973AB477B99544893C2F248A23D85C963B76E
          339F5FA43E2F78F63F86BF0E758D79A1FB5DD45108ACECC726E6EA42121880EF
          BA4651C7624F6AE07E24782B52F017C50F0F7C45F05E912DEB5CB2E8FE23D22C
          2300DD599C94B80381E642DCE7AB2B6DC8EEDF8ABE0BD4FE33FC55F0DF87EEA2
          D6747F066890B6B326AB66C606B8D40155B78D1FAA98D59DC9C752075141D115
          528AA8A2AD276492565EBF8EBE9F7F35FB3D596B9F057E24DDFC39F166B577AE
          4BAEE9706B7A6EA37B33485A744097B6CACC7A2BE1D5474563EE6ADFED0DE2B8
          2C3E28F87347F1A6BDAA7857E195C69B2CF2DF69D2CB6F1DE5F89005B69EE22F
          9A3411E580057713D78C555F8C7FB3FEA9E1FD3349F1A78475AF14789FC63E18
          BE8AF34EB0D53526BA59D19D52784061F2EF8C904FA0AF41F12F8EBC75A6EA56
          DA85B7801FC45E0FBAB388CB696F711C7AADB4DC97DD04BB51D705576ABE72A4
          F208A08519429CA84934934D68E5A3E8EDBEB7BF958F3AF0DE81F06B5CD634F8
          BE1E7C53B8D13586B88D8DAE9DE2A96737A8181789A09A56DDB97232A3209CF3
          8C575724F37FC3684169F69B8FB1FF00C20CF77F65F39BC9F385EAC7E66CCEDD
          DB095CE338AE2FE29E9173F1E3C3E7C33E1CF84DA8F87351B9B885DBC4DAF595
          BD90D2C248ACD2C455DA47900040080039E4E335DFFF00C23BAB2FED6D6FAF7F
          66DD3686BE0C6D2CEA463FDD7DA4DDACBB33EBB149CE31DB39E28082774A31D3
          9A3AA4D2EBD1F6EFE654FD9D279E7F197C6459AE6E275B7F15C96F0ACD33388A
          310C6C1101276AEE7638181CD7B857CD9F0F3C41E20F861E36F89ED77F0EFC59
          AB5AEB5E239750B3BAD32DA068DE1F2A3407F7932119284F4E98AF55F067C52B
          CF177893FB2E6F03789BC3917D964B9FB76B56F0C7092AF1A88C18E57F98EF27
          9C7087AF60EBC2D58C60A12BDEEFA3EECC3FDA77C49AF785FE181BBD0E7BDB18
          A4D42D60D5352D361F36E6C2C1A402E27894039655EE01C649ED5E53A7C7FB39
          6AB12358FC4FB8B3D5DC02BABBF8CAEE1BBDFF00DE2649B6EECF62B8F6AFA07E
          24EA3E32D2F4DB3B9F06E8D61AEDCC7701EF2CAF6EFECCD2C001CA44DB4A8909
          2A416C2E01F5AF33D67E212F882CE6B4B9F80BE22D475799761B4D434FB2FB33
          39E30D706529B73FC5C9C738A0C71314EAB72D74D9C5BFB9AFF873D77C09A5BE
          8BE0FD26CE4D6E7F12C91DBAEED5EE5C33DD93CF9848E3073C638C62A87C56F1
          E5BFC33F87DAD788E78CDC359C07C8B65FBD713B1091443DDDD957F1AF3CF87B
          A4F8A7F67EF807E1DD2D7C3B378BB5B86EB64DA66973855B58E7B8772A8EFD52
          1570BEFB7B0E41F183C19AA7C61F89BE17F0B5C43AB697E0DD255F5ABBD5AC98
          C3E75F2605B42920E414DCF2138C6554672283A25564A82508DA765A766FCFCB
          A9C97ECFF67E20F829F13BFE105F186B175AC49E2AD262D62C2F2F2669025E44
          B8BCB44249F95770750380B9AFA76BE69F8CBFB3CEA5A568165E2CF0A6BDE29F
          1178CBC35790EA1A5596A9A93DD24C43A8962DA4701E32C09FCF8AF5E9BC7DAD
          7F6BF832DADBC1BA9CD65AE24AD7F7723A47FD9055032ACC87EF166257838E38
          2722833C2B7874E8CD3495ADD747E7EBF72B1DC5145141EA0514514005145140
          0514514011CF045731345346B2C6C30C8EA0823DC1AE1FC41F08F4CD4B74BA7B
          1D3E73CED1F3467F0EDF87E55DE51418D5A34EB2B4D5CF97BE247C158B53B07B
          4F12E856FAB5873898A6F55F7561F321F7E0D7C9FF00117F626865F36EFC19A9
          792DC9FECED4092BF45900C8FA303F5AFD502030208C83D8D725E20F863A3EB9
          BA48E3FB05C9FF0096900C293EEBD3F2C52B1F398BC96157586BF9FDE7E22F8C
          3E1FF88BC037DF65D7B49B8D3A42485791731C9FEEB8CAB7E06B9FAFD83F1AFC
          1DBBFB0CF6D7FA741AE696E30EA6212A91FED211FE3F5AF94BE237EC63E1FD74
          CB75E18BA7D02F0E4FD965CCB6CC7D39F993F323DA91F1F88CB2AD1764BEF3E2
          9A92DEDE4BAB88E1891A496460888A32589380057B15EFEC8BF126D6F0C31697
          6B791E71F6886F63087DF0C55BF4AF6AF815FB27FF00C215AC5B7883C557105E
          EA56E4496B656F968A17ECECC40DCC3B00300F393C611C30C2D59CACE363EACF
          D98BC10BE1BB1D174EDA31A3E9C88C47432ED0A4FE24B9AFA32BCFFE0E6946D3
          41B8BC75DAD752FCA7D55781FA96AF40AA47EAB97D2F65878AEFAFF5F20A28A2
          99E9051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          51400514514005145140051451400573FAFF0081748F11066B8B6115C1FF0096
          F0FCAFF8F63F8D145044E11A8B966AE8F36D77E12DE697992DEF609A0CF1E602
          AC3F0008AB1E19F8492DFBA5C5FDDC6B6B9E6383259BDB240C7EB4514AC794B0
          34156B5B43D72D6D62B2B68EDE08C450C6A15117A002A5A28A67B1B68828A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A00FFD9}
        Stretch = True
      end
      object QRLabel64: TQRLabel
        Left = 504
        Top = 569
        Width = 211
        Height = 16
        Size.Values = (
          42.333333333333340000
          1333.500000000000000000
          1505.479166666667000000
          558.270833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'NOSSO NUMERO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 568
        Top = 592
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333340000
          1502.833333333333000000
          1566.333333333333000000
          383.645833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel65: TQRLabel
        Left = 544
        Top = 521
        Width = 33
        Height = 16
        Size.Values = (
          42.333333333333340000
          1439.333333333333000000
          1378.479166666667000000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '000'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 10
        Top = 521
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          1378.479166666667000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_LOCALPAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 10
        Top = 545
        Width = 481
        Height = 16
        Size.Values = (
          42.333333333333340000
          26.458333333333330000
          1441.979166666667000000
          1272.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'CON_CEDENTENOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRDBText29: TQRDBText
        Left = 618
        Top = 521
        Width = 96
        Height = 16
        Size.Values = (
          42.333333333333340000
          1635.125000000000000000
          1378.479166666667000000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'REE_DTVENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel67: TQRLabel
        Left = 2
        Top = 562
        Width = 97
        Height = 8
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          1486.958333333333000000
          256.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'AUTENTICA'#199#195'O MEC'#194'NICA'
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
      object QRAsBarcode1: TQRAsBarcode
        Left = 6
        Top = 978
        Width = 120
        Height = 60
        Size.Values = (
          158.750000000000000000
          15.875000000000000000
          2587.625000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        AutoSize = True
        BarcodeHeight = 60
        BarcodeWidth = 119
        Modul = 1
        Ratio = 3.000000000000000000
        Text = ''
        Typ = bcCodeEAN13
      end
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 454
    Top = 497
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      'REE_CODIGO,'
      'REE_VALOR,'
      'REE_CONTA,'
      'REE_CLIENTE, '
      'REE_DESCRICAO, '
      'REE_DTEMISSAO, '
      'REE_DTVENCIMENTO, '
      'REE_NUMDOCTO,'
      'CLI_NOME,'
      'CLI_ENDERECO,'
      'CLI_NUMERO,'
      'CLI_BAIRRO,'
      'CLI_CEP,'
      'CLI_CIDADE,'
      'CLI_ESTADO,'
      'CON_BANCO,'
      'CON_CEDENTE,'
      'CON_CEDENTENOME,'
      'CON_AGENCIA,'
      'CON_CONTA,'
      'CON_LOCALPAGTO,'
      'CON_INSTRUCAO1,'
      'CON_INSTRUCAO2,'
      'CON_INSTRUCAO3,'
      'CON_INSTRUCAO4,'
      'CON_INSTRUCAO5,'
      'BAN_NOME'
      'from RECEBER'
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO'
      'left join CONTAS on REE_CONTA=CON_CODIGO'
      'left join BANCOS on CON_BANCO=BAN_CODIGO'
      'where REE_CODIGO=:codigo')
    Left = 384
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBQuery1REE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = '"RECEBER"."REE_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1REE_VALOR: TIBBCDField
      FieldName = 'REE_VALOR'
      Origin = '"RECEBER"."REE_VALOR"'
      currency = True
      Precision = 18
      Size = 4
    end
    object IBQuery1REE_CONTA: TIntegerField
      FieldName = 'REE_CONTA'
      Origin = '"RECEBER"."REE_CONTA"'
    end
    object IBQuery1REE_CLIENTE: TIntegerField
      FieldName = 'REE_CLIENTE'
      Origin = '"RECEBER"."REE_CLIENTE"'
      Required = True
    end
    object IBQuery1REE_DESCRICAO: TIBStringField
      FieldName = 'REE_DESCRICAO'
      Origin = '"RECEBER"."REE_DESCRICAO"'
      Size = 120
    end
    object IBQuery1REE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = '"RECEBER"."REE_DTEMISSAO"'
    end
    object IBQuery1REE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = '"RECEBER"."REE_DTVENCIMENTO"'
    end
    object IBQuery1REE_NUMDOCTO: TIBStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = '"RECEBER"."REE_NUMDOCTO"'
    end
    object IBQuery1CON_BANCO: TIntegerField
      FieldName = 'CON_BANCO'
      Origin = '"CONTAS"."CON_BANCO"'
    end
    object IBQuery1CON_CEDENTE: TIBStringField
      FieldName = 'CON_CEDENTE'
      Origin = '"CONTAS"."CON_CEDENTE"'
    end
    object IBQuery1CON_CEDENTENOME: TIBStringField
      FieldName = 'CON_CEDENTENOME'
      Origin = '"CONTAS"."CON_CEDENTENOME"'
      Size = 50
    end
    object IBQuery1CON_AGENCIA: TIBStringField
      FieldName = 'CON_AGENCIA'
      Origin = '"CONTAS"."CON_AGENCIA"'
      Size = 10
    end
    object IBQuery1CON_CONTA: TIBStringField
      FieldName = 'CON_CONTA'
      Origin = '"CONTAS"."CON_CONTA"'
      Size = 15
    end
    object IBQuery1CON_INSTRUCAO1: TIBStringField
      FieldName = 'CON_INSTRUCAO1'
      Origin = '"CONTAS"."CON_INSTRUCAO1"'
      Size = 100
    end
    object IBQuery1CON_INSTRUCAO2: TIBStringField
      FieldName = 'CON_INSTRUCAO2'
      Origin = '"CONTAS"."CON_INSTRUCAO2"'
      Size = 100
    end
    object IBQuery1CON_INSTRUCAO3: TIBStringField
      FieldName = 'CON_INSTRUCAO3'
      Origin = '"CONTAS"."CON_INSTRUCAO3"'
      Size = 100
    end
    object IBQuery1CON_INSTRUCAO4: TIBStringField
      FieldName = 'CON_INSTRUCAO4'
      Origin = '"CONTAS"."CON_INSTRUCAO4"'
      Size = 100
    end
    object IBQuery1CON_INSTRUCAO5: TIBStringField
      FieldName = 'CON_INSTRUCAO5'
      Origin = '"CONTAS"."CON_INSTRUCAO5"'
      Size = 100
    end
    object IBQuery1CON_LOCALPAGTO: TIBStringField
      FieldName = 'CON_LOCALPAGTO'
      Origin = '"CONTAS"."CON_LOCALPAGTO"'
      Size = 120
    end
    object IBQuery1BAN_NOME: TIBStringField
      FieldName = 'BAN_NOME'
      Origin = '"BANCOS"."BAN_NOME"'
      Size = 50
    end
    object IBQuery1CLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"CLIENTES"."CLI_NOME"'
      Size = 50
    end
    object IBQuery1CLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Origin = '"CLIENTES"."CLI_NUMERO"'
      Size = 15
    end
    object IBQuery1CLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"CLIENTES"."CLI_ENDERECO"'
      Size = 100
    end
    object IBQuery1CLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"CLIENTES"."CLI_BAIRRO"'
      Size = 50
    end
    object IBQuery1CLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"CLIENTES"."CLI_CEP"'
      Size = 10
    end
    object IBQuery1CLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"CLIENTES"."CLI_CIDADE"'
      Size = 50
    end
    object IBQuery1CLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Origin = '"CLIENTES"."CLI_ESTADO"'
      Size = 2
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 320
    Top = 496
  end
end
