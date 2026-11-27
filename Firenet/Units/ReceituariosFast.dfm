object FormReceituariosFast: TFormReceituariosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Receitu'#225'rios'
  ClientHeight = 320
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 260
    Top = 8
    Width = 290
    Height = 200
    Lines.Strings = (
      '01 - Ficha de receituario (antigo ReceituariosQ01)')
    TabOrder = 0
  end
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46350.000000000000000000
    ReportOptions.Name = 'RCT01'
    ReportOptions.LastChange = 46350.000000000000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' RUNTIME'
        Value = Null
      end
      item
        Name = 'USUARIO'
        Value = Null
      end
      item
        Name = 'HEADER1'
        Value = Null
      end
      item
        Name = 'HEADER2'
        Value = Null
      end
      item
        Name = 'HEADER3'
        Value = Null
      end
      item
        Name = 'TITULO'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        Frame.LeftLine.Width = 1.000000000000000000
        Frame.TopLine.Width = 1.000000000000000000
        Frame.RightLine.Width = 1.000000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object MemoHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 955.306659000000000000
          Height = 18.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
        end
        object MemoHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 956.639992340000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER2]')
          ParentFont = False
        end
        object MemoHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 956.639992340000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER3]')
          ParentFont = False
        end
        object MemoTitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 955.306659010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 44.000000000000000000
        Top = 143.622140000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDataset1."CLI_NOME"'
        ReprintOnNewPage = True
        object MemoQRDBText13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.110089039252340000
          Width = 49.674295365420600000
          Height = 20.000000000000000000
          DataField = 'RCT_CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText16: TfrxMemoView
          AllowVectorExport = True
          Left = 64.880712314018700000
          Width = 334.541172869159000000
          Height = 20.000000000000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 27.000000000000000000
          Width = 30.412833897196300000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ord.')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel6: TfrxMemoView
          AllowVectorExport = True
          Left = 37.509161806542000000
          Top = 27.000000000000000000
          Width = 195.655898071963000000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Medicamento')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel8: TfrxMemoView
          AllowVectorExport = True
          Left = 596.091544385047000000
          Top = 3.000000000000000000
          Width = 48.660534235514000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText2: TfrxMemoView
          AllowVectorExport = True
          Left = 648.807123140187000000
          Top = 3.000000000000000000
          Width = 162.201780785047000000
          Height = 16.000000000000000000
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel11: TfrxMemoView
          AllowVectorExport = True
          Left = 815.063948444860000000
          Top = 3.000000000000000000
          Width = 38.522922936448600000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fones:')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel12: TfrxMemoView
          AllowVectorExport = True
          Left = 856.628154771028000000
          Top = 3.000000000000000000
          Width = 223.027448579439000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_FONE1"] - [frxDBDataset1."CLI_FONE2"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel2: TfrxMemoView
          AllowVectorExport = True
          Left = 405.504451962617000000
          Top = 3.000000000000000000
          Width = 51.701817625233600000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Nasc:')
          ParentFont = False
          WordWrap = False
        end
        object ShapeQRShape33: TfrxShapeView
          AllowVectorExport = True
          Left = 330.458606090000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object MemoQRLabel31: TfrxMemoView
          AllowVectorExport = True
          Left = 330.458606090000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object ShapeQRShape5: TfrxShapeView
          AllowVectorExport = True
          Left = 354.788873210000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape6: TfrxShapeView
          AllowVectorExport = True
          Left = 379.119140330000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape7: TfrxShapeView
          AllowVectorExport = True
          Left = 403.449407440000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape8: TfrxShapeView
          AllowVectorExport = True
          Left = 427.779674560000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape9: TfrxShapeView
          AllowVectorExport = True
          Left = 452.109941680000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape10: TfrxShapeView
          AllowVectorExport = True
          Left = 476.440208800000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape11: TfrxShapeView
          AllowVectorExport = True
          Left = 500.770475910000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape12: TfrxShapeView
          AllowVectorExport = True
          Left = 525.100743030000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape13: TfrxShapeView
          AllowVectorExport = True
          Left = 549.431010150000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape14: TfrxShapeView
          AllowVectorExport = True
          Left = 573.761277270000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape15: TfrxShapeView
          AllowVectorExport = True
          Left = 598.091544390000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape16: TfrxShapeView
          AllowVectorExport = True
          Left = 622.421811500000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape17: TfrxShapeView
          AllowVectorExport = True
          Left = 646.752078620000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape18: TfrxShapeView
          AllowVectorExport = True
          Left = 671.082345740000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape19: TfrxShapeView
          AllowVectorExport = True
          Left = 695.412612860000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape20: TfrxShapeView
          AllowVectorExport = True
          Left = 719.742879970000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape21: TfrxShapeView
          AllowVectorExport = True
          Left = 744.073147090000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape22: TfrxShapeView
          AllowVectorExport = True
          Left = 768.403414210000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape23: TfrxShapeView
          AllowVectorExport = True
          Left = 792.733681330000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape24: TfrxShapeView
          AllowVectorExport = True
          Left = 817.063948440000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape25: TfrxShapeView
          AllowVectorExport = True
          Left = 841.394215560000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape26: TfrxShapeView
          AllowVectorExport = True
          Left = 865.724482680000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape27: TfrxShapeView
          AllowVectorExport = True
          Left = 890.054749800000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape28: TfrxShapeView
          AllowVectorExport = True
          Left = 914.385016920000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape29: TfrxShapeView
          AllowVectorExport = True
          Left = 938.715284030000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape30: TfrxShapeView
          AllowVectorExport = True
          Left = 963.045551150000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape31: TfrxShapeView
          AllowVectorExport = True
          Left = 987.375818270000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape32: TfrxShapeView
          AllowVectorExport = True
          Left = 1011.706085390000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape34: TfrxShapeView
          AllowVectorExport = True
          Left = 1036.036352500000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape35: TfrxShapeView
          AllowVectorExport = True
          Left = 1060.366619620000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object MemoQRLabel3: TfrxMemoView
          AllowVectorExport = True
          Left = 354.788873210000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel5: TfrxMemoView
          AllowVectorExport = True
          Left = 379.119140330000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel7: TfrxMemoView
          AllowVectorExport = True
          Left = 403.449407440000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel13: TfrxMemoView
          AllowVectorExport = True
          Left = 427.779674560000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel14: TfrxMemoView
          AllowVectorExport = True
          Left = 452.109941680000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel18: TfrxMemoView
          AllowVectorExport = True
          Left = 476.440208800000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel23: TfrxMemoView
          AllowVectorExport = True
          Left = 500.770475910000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel24: TfrxMemoView
          AllowVectorExport = True
          Left = 525.100743030000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel28: TfrxMemoView
          AllowVectorExport = True
          Left = 549.431010150000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel29: TfrxMemoView
          AllowVectorExport = True
          Left = 573.761277270000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel30: TfrxMemoView
          AllowVectorExport = True
          Left = 598.091544390000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel32: TfrxMemoView
          AllowVectorExport = True
          Left = 622.421811500000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel33: TfrxMemoView
          AllowVectorExport = True
          Left = 646.752078620000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel34: TfrxMemoView
          AllowVectorExport = True
          Left = 671.082345740000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel35: TfrxMemoView
          AllowVectorExport = True
          Left = 695.412612860000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel36: TfrxMemoView
          AllowVectorExport = True
          Left = 719.742879970000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '17')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel37: TfrxMemoView
          AllowVectorExport = True
          Left = 744.073147090000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '18')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel38: TfrxMemoView
          AllowVectorExport = True
          Left = 768.403414210000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '19')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel39: TfrxMemoView
          AllowVectorExport = True
          Left = 792.733681330000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '20')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel40: TfrxMemoView
          AllowVectorExport = True
          Left = 817.063948440000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '21')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel41: TfrxMemoView
          AllowVectorExport = True
          Left = 841.394215560000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '22')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel42: TfrxMemoView
          AllowVectorExport = True
          Left = 865.724482680000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '23')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel43: TfrxMemoView
          AllowVectorExport = True
          Left = 890.054749800000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '24')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel44: TfrxMemoView
          AllowVectorExport = True
          Left = 914.385016920000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '25')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel45: TfrxMemoView
          AllowVectorExport = True
          Left = 938.715284030000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '26')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel46: TfrxMemoView
          AllowVectorExport = True
          Left = 963.045551150000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '27')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel47: TfrxMemoView
          AllowVectorExport = True
          Left = 987.375818270000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '28')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel48: TfrxMemoView
          AllowVectorExport = True
          Left = 1011.706085390000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '29')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel49: TfrxMemoView
          AllowVectorExport = True
          Left = 1036.036352500000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '30')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel50: TfrxMemoView
          AllowVectorExport = True
          Left = 1060.366619620000000000
          Top = 25.000000000000000000
          Width = 24.330267120000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '31')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRLabel15: TfrxMemoView
          AllowVectorExport = True
          Left = 235.192582138318000000
          Top = 27.000000000000000000
          Width = 65.894473443925200000
          Height = 15.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dosagem')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRLabel10: TfrxMemoView
          AllowVectorExport = True
          Left = 461.261314107477000000
          Top = 3.000000000000000000
          Width = 128.747663498131000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_DTNASC"] - [frxDBDataset1."IDADE"] anos')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 19.000000000000000000
        Top = 211.653680000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object MemoQRDBText6: TfrxMemoView
          AllowVectorExport = True
          Left = 37.509161806542000000
          Top = 2.000000000000000000
          Width = 195.655898071963000000
          Height = 15.000000000000000000
          DataField = 'MTO_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MTO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.041283389719630000
          Top = 2.000000000000000000
          Width = 30.412833897196300000
          Height = 15.000000000000000000
          DataField = 'RCT_ORDEM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_ORDEM"]')
          ParentFont = False
          WordWrap = False
        end
        object ShapeQRShape50: TfrxShapeView
          AllowVectorExport = True
          Left = 330.458606089720000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape51: TfrxShapeView
          AllowVectorExport = True
          Left = 354.788873207477000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape52: TfrxShapeView
          AllowVectorExport = True
          Left = 379.119140325234000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape53: TfrxShapeView
          AllowVectorExport = True
          Left = 403.449407442991000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape54: TfrxShapeView
          AllowVectorExport = True
          Left = 427.779674560748000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape55: TfrxShapeView
          AllowVectorExport = True
          Left = 452.109941678505000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape56: TfrxShapeView
          AllowVectorExport = True
          Left = 476.440208796262000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape57: TfrxShapeView
          AllowVectorExport = True
          Left = 500.770475914019000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape58: TfrxShapeView
          AllowVectorExport = True
          Left = 525.100743031776000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape59: TfrxShapeView
          AllowVectorExport = True
          Left = 549.431010149533000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape60: TfrxShapeView
          AllowVectorExport = True
          Left = 573.761277267290000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape61: TfrxShapeView
          AllowVectorExport = True
          Left = 598.091544385047000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape62: TfrxShapeView
          AllowVectorExport = True
          Left = 622.421811502804000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape63: TfrxShapeView
          AllowVectorExport = True
          Left = 646.752078620561000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape64: TfrxShapeView
          AllowVectorExport = True
          Left = 671.082345738318000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape65: TfrxShapeView
          AllowVectorExport = True
          Left = 695.412612856075000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape66: TfrxShapeView
          AllowVectorExport = True
          Left = 719.742879973832000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape67: TfrxShapeView
          AllowVectorExport = True
          Left = 744.073147091589000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape68: TfrxShapeView
          AllowVectorExport = True
          Left = 768.403414209346000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape69: TfrxShapeView
          AllowVectorExport = True
          Left = 792.733681327103000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape70: TfrxShapeView
          AllowVectorExport = True
          Left = 817.063948444860000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape71: TfrxShapeView
          AllowVectorExport = True
          Left = 841.394215562617000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape72: TfrxShapeView
          AllowVectorExport = True
          Left = 865.724482680374000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape73: TfrxShapeView
          AllowVectorExport = True
          Left = 890.054749798131000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape74: TfrxShapeView
          AllowVectorExport = True
          Left = 914.385016915888000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape75: TfrxShapeView
          AllowVectorExport = True
          Left = 938.715284033645000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape76: TfrxShapeView
          AllowVectorExport = True
          Left = 963.045551151402000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape77: TfrxShapeView
          AllowVectorExport = True
          Left = 987.375818269159000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape78: TfrxShapeView
          AllowVectorExport = True
          Left = 1011.706085386920000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape79: TfrxShapeView
          AllowVectorExport = True
          Left = 1036.036352504670000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object ShapeQRShape1: TfrxShapeView
          AllowVectorExport = True
          Left = 1060.366619622430000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object MemoQRDBText3: TfrxMemoView
          AllowVectorExport = True
          Left = 235.192582138318000000
          Top = 2.000000000000000000
          Width = 91.238501691588800000
          Height = 15.000000000000000000
          DataField = 'RCT_DOSAGEM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DOSAGEM"]')
          ParentFont = False
          WordWrap = False
        end
        object MemoQRDBText5: TfrxMemoView
          AllowVectorExport = True
          Left = 330.458606089720000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA01'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA01"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText4: TfrxMemoView
          AllowVectorExport = True
          Left = 354.788873207477000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA02'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA02"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText7: TfrxMemoView
          AllowVectorExport = True
          Left = 379.119140325234000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA03'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA03"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText8: TfrxMemoView
          AllowVectorExport = True
          Left = 403.449407442991000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA04'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA04"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText9: TfrxMemoView
          AllowVectorExport = True
          Left = 427.779674560748000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA05'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA05"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText10: TfrxMemoView
          AllowVectorExport = True
          Left = 452.109941678505000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA06'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA06"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText12: TfrxMemoView
          AllowVectorExport = True
          Left = 476.440208796262000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA07'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA07"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText14: TfrxMemoView
          AllowVectorExport = True
          Left = 500.770475914019000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA08'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA08"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText15: TfrxMemoView
          AllowVectorExport = True
          Left = 525.100743031776000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA09'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA09"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText17: TfrxMemoView
          AllowVectorExport = True
          Left = 549.431010149533000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA10'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA10"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText18: TfrxMemoView
          AllowVectorExport = True
          Left = 573.761277267290000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA11'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA11"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText19: TfrxMemoView
          AllowVectorExport = True
          Left = 598.091544385047000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA12'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA12"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText20: TfrxMemoView
          AllowVectorExport = True
          Left = 622.421811502804000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA13'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA13"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText21: TfrxMemoView
          AllowVectorExport = True
          Left = 646.752078620561000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA14'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA14"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText22: TfrxMemoView
          AllowVectorExport = True
          Left = 671.082345738318000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA15'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA15"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText23: TfrxMemoView
          AllowVectorExport = True
          Left = 695.412612856075000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA16'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA16"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText24: TfrxMemoView
          AllowVectorExport = True
          Left = 719.742879973832000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA17'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA17"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText25: TfrxMemoView
          AllowVectorExport = True
          Left = 744.073147091589000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA18'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA18"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText26: TfrxMemoView
          AllowVectorExport = True
          Left = 768.403414209346000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA19'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA19"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText27: TfrxMemoView
          AllowVectorExport = True
          Left = 792.733681327103000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA20'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA20"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText28: TfrxMemoView
          AllowVectorExport = True
          Left = 817.063948444860000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA21'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA21"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText29: TfrxMemoView
          AllowVectorExport = True
          Left = 841.394215562617000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA22'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA22"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText30: TfrxMemoView
          AllowVectorExport = True
          Left = 865.724482680374000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA23'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA23"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText31: TfrxMemoView
          AllowVectorExport = True
          Left = 890.054749798131000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA24'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA24"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText32: TfrxMemoView
          AllowVectorExport = True
          Left = 914.385016915888000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA25'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA25"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText33: TfrxMemoView
          AllowVectorExport = True
          Left = 938.715284033645000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA26'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA26"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText34: TfrxMemoView
          AllowVectorExport = True
          Left = 963.045551151402000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA27'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA27"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText35: TfrxMemoView
          AllowVectorExport = True
          Left = 987.375818269159000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA28'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA28"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText36: TfrxMemoView
          AllowVectorExport = True
          Left = 1011.706085386920000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA29'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA29"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText37: TfrxMemoView
          AllowVectorExport = True
          Left = 1036.036352504670000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA30'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA30"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemoQRDBText38: TfrxMemoView
          AllowVectorExport = True
          Left = 1060.366619622430000000
          Width = 24.330267117757000000
          Height = 19.000000000000000000
          DataField = 'RCT_DIA31'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RCT_DIA31"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 40.000000000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object MemoQRLabel22: TfrxMemoView
          AllowVectorExport = True
          Left = 8.110089039252340000
          Top = 8.000000000000000000
          Width = 123.678857848598000000
          Height = 17.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Medicamentos: [COUNT(MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 1084.725110000000000000
        object SysMemoPagina: TfrxSysMemoView
          AllowVectorExport = True
          Left = 710.553007850000000000
          Width = 374.309711290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RCT01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemoGerado: TfrxSysMemoView
          AllowVectorExport = True
          Width = 339.821583340000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Gerado em [DATE] [TIME] por [USUARIO]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select RCT_CLIENTE,'
      
        '  RCT_DIA01, RCT_DIA02, RCT_DIA03, RCT_DIA04, RCT_DIA05, RCT_DIA' +
        '06, RCT_DIA07, RCT_DIA08,'
      
        '  RCT_DIA09, RCT_DIA10, RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA' +
        '14, RCT_DIA15, RCT_DIA16,'
      
        '  RCT_DIA17, RCT_DIA18, RCT_DIA19, RCT_DIA20, RCT_DIA21, RCT_DIA' +
        '22, RCT_DIA23, RCT_DIA24,'
      
        '  RCT_DIA25, RCT_DIA26, RCT_DIA27, RCT_DIA28, RCT_DIA29, RCT_DIA' +
        '30, RCT_DIA31,'
      
        '  RCT_DOSAGEM, RCT_MEDICAMENTO, RCT_ORDEM, CLI_CONTATO, CLI_FONE' +
        '1, CLI_FONE2, CLI_NOME, CLI_DTNASC, MTO_NOME,'
      
        '  datediff(year, CLI_DTNASC, current_date) - iif(dateadd(datedif' +
        'f(year, CLI_DTNASC, current_date) year to CLI_DTNASC) > current_' +
        'date, 1, 0) as IDADE'
      'from RECEITUARIOS'
      'left join CLIENTES on RCT_CLIENTE=CLI_CODIGO'
      'left join MEDICAMENTOS on RCT_MEDICAMENTO=MTO_CODIGO'
      'order by CLI_NOME, RCT_ORDEM, RCT_CODIGO')
    Left = 48
    Top = 160
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = '.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44348.714094444450000000
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 48
    Top = 16
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ChunkSize = 0
    ExportPageBreaks = False
    OpenAfterExport = False
    PictureType = gpPNG
    Wysiwyg = False
    Left = 120
    Top = 16
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 192
    Top = 16
  end
end
