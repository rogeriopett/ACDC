object FormMatriculasQ04: TFormMatriculasQ04
  Left = 211
  Top = 116
  Caption = 'Relat'#243'rio de matr'#237'culas ativas com contas a receber anal'#237'tico'
  ClientHeight = 700
  ClientWidth = 1224
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
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = TBAux
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      180.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      2970.000000000000000000
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
    object QRBand2: TQRBand
      Left = 26
      Top = 121
      Width = 1070
      Height = 44
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AfterPrint = QRBand2AfterPrint
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        116.416666666666700000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel7: TQRLabel
        Left = 828
        Top = 4
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          2190.750000000000000000
          10.583333333333330000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total em aberto:'
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
      object QRLabel32: TQRLabel
        Left = 947
        Top = 4
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          2505.604166666667000000
          10.583333333333330000
          312.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total:'
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
      object QRLabel6: TQRLabel
        Left = 947
        Top = 20
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          2505.604166666667000000
          52.916666666666660000
          312.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total:'
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
      object QRLabel14: TQRLabel
        Left = 828
        Top = 20
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          2190.750000000000000000
          52.916666666666660000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total pago:'
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
      object QRSysData2: TQRSysData
        Left = 4
        Top = 4
        Width = 184
        Height = 17
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          10.583333333333330000
          486.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Total de matr'#237'culas: '
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 26
      Top = 165
      Width = 1070
      Height = 15
      Frame.DrawTop = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRDBText11: TQRDBText
        Left = 1002
        Top = 3
        Width = 65
        Height = 8
        Size.Values = (
          21.166666666666670000
          2651.125000000000000000
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
    object QRBand5: TQRBand
      Left = 26
      Top = 26
      Width = 1070
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
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 821
        Top = 48
        Width = 243
        Height = 14
        Size.Values = (
          37.041666666666670000
          2172.229166666667000000
          127.000000000000000000
          642.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Matr'#237'culas com contas a receber no per'#237'odo'
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
        Left = 998
        Top = 34
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          2640.541666666667000000
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
        Left = 1008
        Top = 20
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          2667.000000000000000000
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
    object QRSubDetail1: TQRSubDetail
      Left = 26
      Top = 107
      Width = 1070
      Height = 14
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = TBAux
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText7: TQRDBText
        Left = 726
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1920.875000000000000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_DTEMISSAO'
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
        Left = 704
        Top = 0
        Width = 21
        Height = 15
        Size.Values = (
          39.687500000000000000
          1862.666666666667000000
          0.000000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_DESCRICAO'
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
        Left = 917
        Top = 0
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          2426.229166666667000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_VALOR'
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
        Left = 587
        Top = 0
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1553.104166666667000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 992
        Top = 0
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          2624.666666666667000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_VALORPAGO'
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
        Left = 785
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          2076.979166666667000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_DTVENCIMENTO'
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
        Left = 844
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          2233.083333333333000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_DTPAGAMENTO'
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
        Left = 902
        Top = 0
        Width = 14
        Height = 15
        Size.Values = (
          39.687500000000000000
          2386.541666666667000000
          0.000000000000000000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_STATUS'
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
      object QRDBText15: TQRDBText
        Left = 634
        Top = 0
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          1677.458333333333000000
          0.000000000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_NUMDOCTO'
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
        Left = 97
        Top = 0
        Width = 235
        Height = 15
        Size.Values = (
          39.687500000000000000
          256.645833333333400000
          0.000000000000000000
          621.770833333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 56
        Top = 0
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          148.166666666666700000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 333
        Top = 0
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          0.000000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 540
        Top = 0
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 3
        Top = 0
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          0.000000000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
      object QRDBText18: TQRDBText
        Left = 41
        Top = 0
        Width = 14
        Height = 15
        Size.Values = (
          39.687500000000000000
          108.479166666666700000
          0.000000000000000000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 397
        Top = 0
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          1050.395833333333000000
          0.000000000000000000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
        Left = 424
        Top = 0
        Width = 116
        Height = 15
        Size.Values = (
          39.687500000000000000
          1121.833333333333000000
          0.000000000000000000
          306.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBAux
        DataField = 'REE_CODIGO'
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
    object ColumnHeaderBand1: TQRBand
      Left = 26
      Top = 91
      Width = 1070
      Height = 16
      Frame.DrawBottom = True
      Frame.Width = 2
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        2831.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel9: TQRLabel
        Left = 704
        Top = 0
        Width = 21
        Height = 15
        Size.Values = (
          39.687500000000000000
          1862.666666666667000000
          0.000000000000000000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TP'
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
      object QRLabel8: TQRLabel
        Left = 917
        Top = 0
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          2426.229166666667000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor'
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
        Left = 726
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1920.875000000000000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Emiss'#227'o'
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
        Left = 587
        Top = 0
        Width = 26
        Height = 15
        Size.Values = (
          39.687500000000000000
          1553.104166666667000000
          0.000000000000000000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
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
        Left = 992
        Top = 0
        Width = 73
        Height = 15
        Size.Values = (
          39.687500000000000000
          2624.666666666667000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor Pago'
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
      object QRLabel3: TQRLabel
        Left = 785
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          2076.979166666667000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Vecto'
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
        Left = 844
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          2233.083333333333000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Pagto'
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
      object QRLabel15: TQRLabel
        Left = 902
        Top = 0
        Width = 14
        Height = 15
        Size.Values = (
          39.687500000000000000
          2386.541666666667000000
          0.000000000000000000
          37.041666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'St.'
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
        Left = 56
        Top = 0
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          148.166666666666700000
          0.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
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
        Left = 397
        Top = 0
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          1050.395833333333000000
          0.000000000000000000
          97.895833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Turma'
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
      object QRLabel19: TQRLabel
        Left = 539
        Top = 0
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1426.104166666667000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per/Ano'
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
        Left = 634
        Top = 0
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          1677.458333333333000000
          0.000000000000000000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Num. Docto'
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
        Left = 4
        Top = 0
        Width = 24
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          0.000000000000000000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Mat.'
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
      object QRLabel24: TQRLabel
        Left = 333
        Top = 0
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          0.000000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda C/M'
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
      object QRLabel25: TQRLabel
        Left = 41
        Top = 0
        Width = 12
        Height = 15
        Size.Values = (
          39.687500000000000000
          108.479166666666700000
          0.000000000000000000
          31.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'St'
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
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 384
    Top = 312
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = DefaultEncoding
    UseXLColumns = False
    Left = 459
    Top = 312
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 536
    Top = 312
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = DefaultEncoding
    Left = 616
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 152
    Top = 408
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 688
    Top = 312
  end
  object TBAux: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbaux'
    FieldDefs = <
      item
        Name = 'Matricula'
        DataType = ftInteger
      end
      item
        Name = 'Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Turma'
        DataType = ftInteger
      end
      item
        Name = 'TurmaDesc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PeriodoAno'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Receber'
        DataType = ftInteger
      end
      item
        Name = 'NumDocto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Emissao'
        DataType = ftDate
      end
      item
        Name = 'Vencimento'
        DataType = ftDate
      end
      item
        Name = 'Pagamento'
        DataType = ftDate
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'ValorPago'
        DataType = ftCurrency
      end
      item
        Name = 'TP'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'StatusMat'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CursoMaterial'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    Left = 56
    Top = 312
    object TBAuxMatricula: TIntegerField
      FieldName = 'Matricula'
    end
    object TBAuxCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object TBAuxNome: TStringField
      DisplayWidth = 60
      FieldName = 'Nome'
      Size = 60
    end
    object TBAuxFone: TStringField
      FieldName = 'Fone'
    end
    object TBAuxTurma: TIntegerField
      FieldName = 'Turma'
    end
    object TBAuxTurmaDesc: TStringField
      FieldName = 'TurmaDesc'
    end
    object TBAuxPeriodoAno: TStringField
      FieldName = 'PeriodoAno'
    end
    object TBAuxStatusMat: TStringField
      FieldName = 'StatusMat'
    end
    object TBAuxReceber: TIntegerField
      FieldName = 'Receber'
    end
    object TBAuxNumDocto: TStringField
      FieldName = 'NumDocto'
    end
    object TBAuxTP: TIntegerField
      FieldName = 'TP'
    end
    object TBAuxEmissao: TDateField
      FieldName = 'Emissao'
    end
    object TBAuxVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TBAuxPagamento: TDateField
      FieldName = 'Pagamento'
    end
    object TBAuxStatus: TStringField
      FieldName = 'Status'
    end
    object TBAuxValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TBAuxValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object TBAuxCursoMaterial: TStringField
      FieldName = 'CursoMaterial'
    end
  end
  object DSAux: TDataSource
    DataSet = TBAux
    Left = 56
    Top = 360
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = TBAux
    Left = 56
    Top = 408
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select '
      'MAT_CODIGO,'
      'MAT_CLIENTE,'
      'MAT_STATUS,'
      'MAT_TURMA,'
      'MAT_VENDA,'
      'MAT_VENDAMATERIAL,'
      'CLI_NOME,'
      'CLI_FONE1,'
      'TUR_DESCRICAO,'
      'TUR_PERIODO,'
      'TUR_ANO'
      'from MATRICULAS'
      'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO'
      'left join TURMAS on MAT_TURMA=TUR_CODIGO'
      'where MAT_STATUS='#39'A'#39
      'order by CLI_NOME'
      '')
    Left = 152
    Top = 312
    object FDQuery1MAT_CODIGO: TIntegerField
      FieldName = 'MAT_CODIGO'
      Origin = 'MAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1MAT_CLIENTE: TIntegerField
      FieldName = 'MAT_CLIENTE'
      Origin = 'MAT_CLIENTE'
      Required = True
    end
    object FDQuery1MAT_STATUS: TStringField
      FieldName = 'MAT_STATUS'
      Origin = 'MAT_STATUS'
      Size = 1
    end
    object FDQuery1MAT_TURMA: TIntegerField
      FieldName = 'MAT_TURMA'
      Origin = 'MAT_TURMA'
      Required = True
    end
    object FDQuery1MAT_VENDA: TIntegerField
      FieldName = 'MAT_VENDA'
      Origin = 'MAT_VENDA'
      Required = True
    end
    object FDQuery1MAT_VENDAMATERIAL: TIntegerField
      FieldName = 'MAT_VENDAMATERIAL'
      Origin = 'MAT_VENDAMATERIAL'
      Required = True
    end
    object FDQuery1CLI_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1CLI_FONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_FONE1'
      Origin = 'CLI_FONE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1TUR_PERIODO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_PERIODO'
      Origin = 'TUR_PERIODO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1TUR_ANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TUR_ANO'
      Origin = 'TUR_ANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 152
    Top = 360
  end
  object FDTransaction2: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 232
    Top = 360
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction2
    SQL.Strings = (
      'select'
      'REE_CODIGO,'
      'REE_NUMDOCTO,'
      'REE_DESCRICAO,'
      'REE_STATUS,'
      'REE_DTEMISSAO,'
      'REE_DTVENCIMENTO,'
      'REE_DTPAGAMENTO,'
      'REE_VALOR,'
      'REE_VALORPAGO,'
      'REE_PARCELAQTDE'
      'from RECEBER'
      'where REE_CLIENTE=:MAT_CLIENTE and '
      'REE_DTVENCIMENTO between :datainicial and :datafinal'
      'order by REE_DTVENCIMENTO, REE_CODIGO'
      '')
    Left = 232
    Top = 312
    ParamData = <
      item
        Name = 'MAT_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end>
    object FDQuery2REE_CODIGO: TIntegerField
      FieldName = 'REE_CODIGO'
      Origin = 'REE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2REE_NUMDOCTO: TStringField
      FieldName = 'REE_NUMDOCTO'
      Origin = 'REE_NUMDOCTO'
    end
    object FDQuery2REE_DESCRICAO: TStringField
      FieldName = 'REE_DESCRICAO'
      Origin = 'REE_DESCRICAO'
      Size = 120
    end
    object FDQuery2REE_STATUS: TStringField
      FieldName = 'REE_STATUS'
      Origin = 'REE_STATUS'
      Size = 1
    end
    object FDQuery2REE_DTEMISSAO: TDateField
      FieldName = 'REE_DTEMISSAO'
      Origin = 'REE_DTEMISSAO'
    end
    object FDQuery2REE_DTVENCIMENTO: TDateField
      FieldName = 'REE_DTVENCIMENTO'
      Origin = 'REE_DTVENCIMENTO'
    end
    object FDQuery2REE_DTPAGAMENTO: TDateField
      FieldName = 'REE_DTPAGAMENTO'
      Origin = 'REE_DTPAGAMENTO'
    end
    object FDQuery2REE_VALOR: TFMTBCDField
      FieldName = 'REE_VALOR'
      Origin = 'REE_VALOR'
      Precision = 18
    end
    object FDQuery2REE_VALORPAGO: TFMTBCDField
      FieldName = 'REE_VALORPAGO'
      Origin = 'REE_VALORPAGO'
      Precision = 18
    end
    object FDQuery2REE_PARCELAQTDE: TIntegerField
      FieldName = 'REE_PARCELAQTDE'
      Origin = 'REE_PARCELAQTDE'
    end
  end
  object FDTransaction3: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 312
    Top = 360
  end
  object FDQuery3: TFDQuery
    Connection = DM.FDConnection1
    Transaction = FDTransaction3
    SQL.Strings = (
      'select '
      'VED_CODIGO, '
      'VED_NOTA, '
      'VED_NFE '
      'from VENDAS '
      'where VED_CODIGO=:codigo'
      '')
    Left = 312
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery3VED_CODIGO: TIntegerField
      FieldName = 'VED_CODIGO'
      Origin = 'VED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery3VED_NOTA: TIntegerField
      FieldName = 'VED_NOTA'
      Origin = 'VED_NOTA'
    end
    object FDQuery3VED_NFE: TIntegerField
      FieldName = 'VED_NFE'
      Origin = 'VED_NFE'
    end
  end
end
