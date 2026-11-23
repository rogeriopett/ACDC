object FormVendasQ33: TFormVendasQ33
  Left = 0
  Top = 0
  Caption = 'Etiquetas para embalagem modelo 2'
  ClientHeight = 681
  ClientWidth = 904
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
    AfterPrint = QuickRep1AfterPrint
    AfterPreview = QuickRep1AfterPreview
    ShowingPreview = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = TBEtiquetas
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
    Page.Columns = 2
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
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 349
      Height = 341
      Frame.DrawBottom = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        902.229166666666800000
        923.395833333333400000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 29
        Width = 329
        Height = 19
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          76.729166666666680000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_NOME'
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
      object QRDBText2: TQRDBText
        Left = 8
        Top = 149
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          394.229166666666700000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBEtiquetas
        DataField = 'NOME'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 8
        Top = 9
        Width = 96
        Height = 19
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          23.812500000000000000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'REMETENTE'
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
      object QRLabel2: TQRLabel
        Left = 8
        Top = 129
        Width = 112
        Height = 19
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          341.312500000000000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DESTINAT'#193'RIO'
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
      object QRDBText3: TQRDBText
        Left = 8
        Top = 65
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          171.979166666666700000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_BAIRRO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 8
        Top = 217
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          574.145833333333300000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBEtiquetas
        DataField = 'COMPLEMENTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 8
        Top = 99
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          261.937500000000000000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = DM.TBEmpresa
        DataField = 'EMP_CEP'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 48
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          127.000000000000000000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O'
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
      object QRLabel4: TQRLabel
        Left = 8
        Top = 82
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          216.958333333333300000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CIDADE / ESTADO'
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
      object QRLabel5: TQRLabel
        Left = 8
        Top = 166
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          439.208333333333300000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'ENDERE'#199'O'
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
        Top = 200
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          529.166666666666700000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CIDADE / ESTADO'
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
      object QRDBText6: TQRDBText
        Left = 8
        Top = 183
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          484.187500000000000000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBEtiquetas
        DataField = 'BAIRRO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 8
        Top = 249
        Width = 233
        Height = 19
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          658.812500000000000000
          616.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TRANSPORTADORA / VOLUMES'
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
      object QRLabel8: TQRLabel
        Left = 8
        Top = 287
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          759.354166666666800000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'VOLUME'
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
        Top = 270
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          714.375000000000000000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBEtiquetas
        DataField = 'TRANSPORTADORA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 8
        Top = 304
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          804.333333333333200000
          870.479166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = TBEtiquetas
        DataField = 'VOLUMESNUM'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object TBEtiquetas: TClientDataSet
    PersistDataPacket.Data = {
      6B0100009619E0BD01000000180000000C0000000000030000006B01044E4F4D
      45010049000000010005574944544802000200640008454E44455245434F0100
      490000000100055749445448020002006400064E554D45524F01004900000001
      000557494454480200020014000642414952524F010049000000010005574944
      5448020002003200064349444144450100490000000100055749445448020002
      0032000645535441444F01004900000001000557494454480200020002000343
      45500100490000000100055749445448020002000F000B434F4D504C454D454E
      544F010049000000010005574944544802000200320007564F4C554D45530100
      4900000001000557494454480200020014000A564F4C554D45534E554D010049
      00000001000557494454480200020032000E5452414E53504F525441444F5241
      0100490000000100055749445448020002003200044E4F544101004900000001
      000557494454480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VOLUMES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VOLUMESNUM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TRANSPORTADORA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOTA'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 552
    Top = 200
    object TBEtiquetasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object TBEtiquetasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object TBEtiquetasNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object TBEtiquetasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object TBEtiquetasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object TBEtiquetasESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object TBEtiquetasCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object TBEtiquetasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object TBEtiquetasVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object TBEtiquetasVOLUMESNUM: TStringField
      FieldName = 'VOLUMESNUM'
      Size = 50
    end
    object TBEtiquetasTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Size = 50
    end
    object TBEtiquetasNOTA: TStringField
      FieldName = 'NOTA'
    end
  end
end
