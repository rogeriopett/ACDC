object FormComprasFast: TFormComprasFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Compras'
  ClientHeight = 484
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 616
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - pedido de compra'
      '02 - compras sint'#233'tico'
      '03 - compras anal'#237'tico'
      '04 - compras por fornecedor sint'#233'tico'
      '05 - compras por fornecedor anal'#237'tico'
      '06 - compras por produto'
      '07 - frequ'#234'ncia de compra'
      '08 - compras por produto com complemento')
    TabOrder = 0
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
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 120
    Top = 16
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
  object frxReport1: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM01'
    ReportOptions.LastChange = 44428.608213356490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while (Engine.FreeSpace-100) > 10 do '
      '  Engine.ShowBand(Child1);'
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
      end
      item
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'CLI_STATUS'
        Value = Null
      end
      item
        Name = 'ATI_CODIGO'
        Value = Null
      end
      item
        Name = 'ATI_DESCRICAO'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'CID_NOME'
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
      end
      item
        Name = 'CLI_TIPOPESSOA'
        Value = Null
      end
      item
        Name = 'CID_CODIGO'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 119.055186460000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Width = 90.708720000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PEDIDO N'#186)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 9.338582670000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'COM_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_CODIGO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 90.708661420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DT. EMISS'#195'O')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 514.016080000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 24.566929130000000000
          Width = 120.944960000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 24.566929130000000000
          Width = 120.944960000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSC. EST.')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 309.921460000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 49.133858270000000000
          Width = 45.354360000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 49.133858270000000000
          Width = 158.740260000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BAIRRO')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 49.133858270000000000
          Width = 200.315090000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 714.331170000000000000
          Top = 49.133858270000000000
          Width = 41.574830000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ESTADO')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 90.708720000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 73.700787400000000000
          Width = 109.606370000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 73.700787400000000000
          Width = 555.590910000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONTATO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 10.338582670000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'COM_DTCADASTRO'
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
            '[frxDBDataset1."COM_DTCADASTRO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 34.015770000000000000
          Width = 461.102660000000000000
          Height = 13.228346460000000000
          DataField = 'COM_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_NOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 58.472440940000000000
          Width = 302.362400000000000000
          Height = 13.228346460000000000
          DataField = 'COM_ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_ENDERECO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 13.228346460000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 13.228346460000000000
          DataField = 'COM_IE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_IE"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 58.472440940000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          DataField = 'COM_NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_NUMERO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 58.472440940000000000
          Width = 151.181200000000000000
          Height = 13.228346460000000000
          DataField = 'COM_BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_BAIRRO"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 58.472440940000000000
          Width = 192.756030000000000000
          Height = 13.228346460000000000
          DataField = 'COM_CIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_CIDADE"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 58.472440940000000000
          Width = 34.015770000000000000
          Height = 13.228346460000000000
          DataField = 'COM_ESTADO'
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
            '[frxDBDataset1."COM_ESTADO"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'COM_CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_CEP"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'COM_FONE1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_FONE1"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 83.149660000000000000
          Width = 548.031850000000000000
          Height = 13.228346460000000000
          DataField = 'COM_CONTATO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_CONTATO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 41.574771420000000000
          Height = 13.228346460000000000
          DataField = 'COM_FORNECEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_FORNECEDOR"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 105.826840000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811023620000000000
          Top = 105.826840000000000000
          Width = 113.569446400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          Memo.UTF8W = (
            'C'#243'd. Fab.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118120000000000000
          Top = 105.826840000000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'Und.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196860160000000000
          Top = 105.826840000000000000
          Width = 309.921259840000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 521.574812910000000000
          Top = 105.826840000000000000
          Width = 49.133848500000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 570.708661420000000000
          Top = 105.826840000000000000
          Width = 90.708661420000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417322830000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
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
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 100.157536460000000000
        Top = 411.968770000000000000
        Width = 755.906000000000000000
        PrintAtBottom = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 158.740201420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FRETE')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 113.385841420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL PRODUTOS')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Width = 113.385841420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL SERVI'#199'OS')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Width = 113.385841420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR FRETE')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 68.031481420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESCONTO (%)')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 113.385841420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR DESCONTO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 113.385841420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 24.566929130000000000
          Width = 302.362341420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADORA')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 24.566929130000000000
          Width = 294.803281420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONDI'#199#195'O DE PAGAMENTO')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472421420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 60.472421420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PESO LIQ.')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 755.905941420000000000
          Height = 51.023639130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 34.905511800000000000
          Width = 253.228451420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FOR_NOME"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 34.905511800000000000
          Width = 37.795241420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_TRANSPORTADORA"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.905511800000000000
          Width = 151.181141420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_FRETE"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 34.905511800000000000
          Width = 245.669391420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CPG_DESCRICAO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 34.905511800000000000
          Width = 37.795241420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_CONDICAO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.338582670000000000
          Width = 52.913361420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_PESOBRUTO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 10.338582670000000000
          Width = 52.913361420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_PESOLIQ"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 10.338582670000000000
          Width = 105.826781420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_TOTALPRODUTOS"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 10.338582670000000000
          Width = 105.826781420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_TOTALSERVICOS"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 10.338582670000000000
          Width = 105.826781420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_VALORFRETE"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 10.338582670000000000
          Width = 60.472421420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_DESCPORC"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 10.338582670000000000
          Width = 105.826781420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_DESCVALOR"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 10.338582670000000000
          Width = 105.826781420000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."COM_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 748.346881420000000000
          Height = 39.685056460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COM_OBSERVACOES"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 287.244280000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_PRODUTO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_PRODUTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811023620000000000
          Width = 113.569446400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'PRO_CODIGOFAB'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1a."PRO_CODIGOFAB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118120000000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_UNIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 521.574812910000000000
          Width = 49.133848500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 570.708661420000000000
          Width = 90.708661420000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_VALORUNIT'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417322830000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_VALORTOTAL'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196860160000000000
          Width = 309.921259840000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'COI_DESCRICAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1a."COI_DESCRICAO"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 3.779527560000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811045590000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 113.569446400000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196860160000000000
          Width = 309.921259840000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 521.574812910000000000
          Width = 49.133848500000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118120000000000000
          Width = 26.456710000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 90.708661420000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 94.488250000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Top = 351.496290000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_BAIRRO=COM_BAIRRO'
      'COM_CEP=COM_CEP'
      'COM_CIDADE=COM_CIDADE'
      'COM_CODIGO=COM_CODIGO'
      'COM_CONDICAO=COM_CONDICAO'
      'COM_CONTATO=COM_CONTATO'
      'DOCUMENTO=DOCUMENTO'
      'COM_CNPJ=COM_CNPJ'
      'COM_CPF=COM_CPF'
      'COM_DESCPORC=COM_DESCPORC'
      'COM_DESCVALOR=COM_DESCVALOR'
      'COM_DTCADASTRO=COM_DTCADASTRO'
      'COM_ENDERECO=COM_ENDERECO'
      'COM_ESTADO=COM_ESTADO'
      'COM_FONE1=COM_FONE1'
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_FRETE=COM_FRETE'
      'COM_IE=COM_IE'
      'COM_NOME=COM_NOME'
      'COM_NUMERO=COM_NUMERO'
      'COM_OBSERVACOES=COM_OBSERVACOES'
      'COM_PESOBRUTO=COM_PESOBRUTO'
      'COM_PESOLIQ=COM_PESOLIQ'
      'COM_TOTALPRODUTOS=COM_TOTALPRODUTOS'
      'COM_TOTALSERVICOS=COM_TOTALSERVICOS'
      'COM_TRANSPORTADORA=COM_TRANSPORTADORA'
      'COM_VALORFRETE=COM_VALORFRETE'
      'COM_VALORTOTAL=COM_VALORTOTAL'
      'CPG_DESCRICAO=CPG_DESCRICAO'
      'FOR_NOME=FOR_NOME')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
  end
  object frxReport2: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM02'
    ReportOptions.LastChange = 44358.692221354170000000
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
    Left = 120
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = Null
      end
      item
        Name = 'FOR_CODIGO'
        Value = Null
      end
      item
        Name = 'FOR_NOME'
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
        Value = ''
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_FORNECEDOR'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_FORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 340.535379370000000000
          Width = 71.811057800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOTADATA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_NOTADATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 413.866420000000000000
          Width = 244.157580390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CHAVEACESSO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_CHAVEACESSO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_VALORTOTAL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."COM_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 95.125850000000000000
          Width = 242.965986670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_NOME"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset2."COM_STATUS">'
        ReprintOnNewPage = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COM_STATUS"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 24.566929130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forn.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 340.535379370000000000
          Top = 24.566929130000000000
          Width = 71.811057800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Nota')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 95.125850000000000000
          Top = 24.566929130000000000
          Width = 242.965986670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome'
            '')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 413.866420000000000000
          Top = 24.566929130000000000
          Width = 244.157580390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chave de Acesso')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = 24.566929130000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 1.889763780000000000
          Width = 390.147186670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total: [SUM(<frxDBDataset2."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 427.086890000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 1.385590000000000000
          Width = 390.147186670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal: [SUM(<frxDBDataset2."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903569999999200
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 399.874203700000000000
          Top = 0.419903570000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 463.569573330000000000
          Top = 0.419903570000000000
          Width = 69.380643330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 532.887136670000000000
          Top = 0.419903570000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 566.887136670000000000
          Top = 0.419903570000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_CODIGO=COM_CODIGO'
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_NOTADATA=COM_NOTADATA'
      'COM_NOTANUMERO=COM_NOTANUMERO'
      'COM_VALORTOTAL=COM_VALORTOTAL'
      'COM_STATUS=COM_STATUS'
      'COM_CHAVEACESSO=COM_CHAVEACESSO'
      'COM_NOME=COM_NOME')
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 112
  end
  object frxReport3: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM03'
    ReportOptions.LastChange = 44358.692221354200000000
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
    Left = 192
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end
      item
        DataSet = frxDBDataset3a
        DataSetName = 'frxDBDataset3a'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = Null
      end
      item
        Name = 'FOR_CODIGO'
        Value = Null
      end
      item
        Name = 'FOR_NOME'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Fill.BackColor = 16250871
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 49.133858267716540000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 14.897650000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COM_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 14.897650000000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_FORNECEDOR'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COM_FORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 315.299139370000000000
          Top = 14.897650000000000000
          Width = 71.811057800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOTADATA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COM_NOTADATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 388.630180000000000000
          Top = 14.897650000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_TOTALICMS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."COM_TOTALICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = 14.897650000000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_VALORTOTAL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."COM_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 95.125850000000000000
          Top = 14.897650000000000000
          Width = 219.212598430000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."COM_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 456.543600000000000000
          Top = 14.897650000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_TOTALIPI'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."COM_TOTALIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 524.575140000000000000
          Top = 14.897650000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_TOTALPIS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."COM_TOTALPIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 592.606680000000000000
          Top = 14.897650000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_TOTALCOFINS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."COM_TOTALCOFINS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 34.795300000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 34.795300000000000000
          Width = 231.685046690000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 280.685220000000000000
          Top = 34.795300000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 388.630180000000000000
          Top = 34.795300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 456.543600000000000000
          Top = 34.795300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 524.575140000000000000
          Top = 34.795300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PIS')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 592.606680000000000000
          Top = 34.795300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'COFINS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 320.260050000000000000
          Top = 34.795300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS-ST')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = 34.795300000000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = 1.000000000000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forn.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 315.299139370000000000
          Top = 1.000000000000000000
          Width = 71.811057800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Nota')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 95.125850000000000000
          Top = 1.000000000000000000
          Width = 219.212598430000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 388.630180000000000000
          Top = 1.000000000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 456.543600000000000000
          Top = 1.000000000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 524.575140000000000000
          Top = 1.000000000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PIS')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 592.606680000000000000
          Top = 1.000000000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'COFINS')
          ParentFont = False
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
        Top = 434.645950000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = 1.385590000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 1.385590000000000000
          Width = 66.519670390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_TOTALCOFINS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 1.385590000000000000
          Width = 66.519670390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_TOTALPIS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 1.385590000000000000
          Width = 66.519670390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_TOTALIPI">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 1.385590000000000000
          Width = 66.519670390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_TOTALICMS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 1.385590000000000000
          Width = 66.519670390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."COM_TOTALICMSST">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903569999999000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 399.874203700000000000
          Top = 0.419903570000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 463.569573330000000000
          Top = 0.419903570000000000
          Width = 69.380643330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 532.887136670000000000
          Top = 0.419903570000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 566.887136670000000000
          Top = 0.419903570000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_NOME]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.606299212598430000
        Top = 264.567100000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3a
        DataSetName = 'frxDBDataset3a'
        RowCount = 0
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = -0.055113230000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORICMS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = -0.055113230000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORIPI'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = -0.055113230000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORPIS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORPIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = -0.055113230000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORCOFINS'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORCOFINS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 659.842920000000000000
          Top = -0.055113230000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORTOTAL'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = -0.055113230000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORICMSST'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_VALORICMSST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 280.685220000000000000
          Top = -0.055113230000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_CFOP'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 47.622052130000000000
          Top = -0.055113230000000000
          Width = 231.685046690000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_DESCRICAO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = -0.055113230000000010
          Width = 45.354335590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_PRODUTO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."COI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 755.906000000000000000
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_CODIGO=COM_CODIGO'
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_NOTADATA=COM_NOTADATA'
      'COM_NOTANUMERO=COM_NOTANUMERO'
      'COM_NOME=COM_NOME'
      'COM_TOTALCOFINS=COM_TOTALCOFINS'
      'COM_TOTALICMS=COM_TOTALICMS'
      'COM_TOTALICMSST=COM_TOTALICMSST'
      'COM_TOTALIPI=COM_TOTALIPI'
      'COM_TOTALPIS=COM_TOTALPIS'
      'COM_VALORTOTAL=COM_VALORTOTAL')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 112
  end
  object DS03: TDataSource
    DataSet = QY03
    Left = 192
    Top = 256
  end
  object frxDBDataset3a: TfrxDBDataset
    UserName = 'frxDBDataset3a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COI_CFOP=COI_CFOP'
      'COI_DESCRICAO=COI_DESCRICAO'
      'COI_PRODUTO=COI_PRODUTO'
      'COI_VALORCOFINS=COI_VALORCOFINS'
      'COI_VALORICMS=COI_VALORICMS'
      'COI_VALORICMSST=COI_VALORICMSST'
      'COI_VALORIPI=COI_VALORIPI'
      'COI_VALORPIS=COI_VALORPIS'
      'COI_VALORTOTAL=COI_VALORTOTAL')
    DataSet = QY03a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 304
  end
  object frxReport4: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM04'
    ReportOptions.LastChange = 44358.692221354170000000
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
    Left = 264
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = Null
      end
      item
        Name = 'FOR_CODIGO'
        Value = Null
      end
      item
        Name = 'FOR_NOME'
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
        Value = ''
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_DTENTRADA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COM_DTENTRADA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'QTDE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."QTDE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 159.495958030000000000
          Width = 122.078754800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TOTAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.674540690000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset4."COM_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."COM_FORNECEDOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."COM_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 68.031515590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 24.566929130000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 159.495958030000000000
          Top = 24.566929130000000000
          Width = 122.078754800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 1.889763780000000000
          Width = 79.553676400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."QTDE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 159.495958030000000000
          Top = 1.889763780000000000
          Width = 122.078754800000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."TOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 427.086890000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 1.385590000000000000
          Width = 79.553676400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."QTDE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 159.495958030000000000
          Top = 1.385590000000000000
          Width = 122.078754800000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset4."TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 38.220470000000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 186.769016670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 252.619410370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 325.464750000000000000
          Top = 0.419903570000000000
          Width = 46.703463330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.197023700000000000
          Top = 0.419903570000000000
          Width = 80.719233330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.569573330000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.666666670000000000
          Top = 0.666666670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 570.666666670000000000
          Top = 0.666666670000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_DTENTRADA=COM_DTENTRADA'
      'TOTAL=TOTAL'
      'QTDE=QTDE'
      'COM_NOME=COM_NOME')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 112
  end
  object frxReport5: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM05'
    ReportOptions.LastChange = 44427.413856944450000000
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
    Left = 336
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
      end
      item
        DataSet = frxDBDataset5a
        DataSetName = 'frxDBDataset5a'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'CLI_STATUS'
        Value = Null
      end
      item
        Name = 'ATI_CODIGO'
        Value = Null
      end
      item
        Name = 'ATI_DESCRICAO'
        Value = Null
      end
      item
        Name = 'VEN_CODIGO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
        Value = Null
      end
      item
        Name = 'CID_NOME'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'CLI_TIPOPESSOA'
        Value = ''
      end
      item
        Name = 'CID_CODIGO'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 47.244116460000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 40.031496060000000000
          Top = 15.118120000000000000
          Width = 41.789872460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CFOP'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 331.792826670000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_DTCADASTRO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 390.189240000000000000
          Top = 15.118120000000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_VALORTOTAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."COM_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 470.323130000000000000
          Top = 15.118120000000000000
          Width = 47.564316660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CONDICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset5."COM_CONDICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 520.000310000000000000
          Top = 15.118120000000000000
          Width = 185.196970000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 83.787260000000000000
          Top = 15.118120000000000000
          Width = 246.745516670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CFOPDESC'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_CFOPDESC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.062992130000000000
          Width = 41.758376400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Top = 15.118120000000000000
          Width = 47.564316660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_STATUS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset5."COM_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 331.792826670000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 390.189240000000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 470.323130000000000000
          Width = 232.761286660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Condi'#231#227'o')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 47.564316660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 32.687502930000000000
          Top = 33.015770000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 83.787260000000000000
          Top = 33.015770000000000000
          Width = 246.745516670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 33.015770000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Unid.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 383.732530000000000000
          Top = 33.015770000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 443.205010000000000000
          Top = 33.015770000000000000
          Width = 83.149635590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 33.015770000000000000
          Width = 83.149635590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Fill.BackColor = 16316664
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 18.776890690000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset5."COM_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 0.884508335000000000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_FORNECEDOR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 0.884508335000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."COM_NOME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 318.378170000000000000
          Top = 1.889763780000000000
          Width = 149.669330390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 517.795610000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 468.661720000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 318.378170000000000000
          Top = 1.385590000000000000
          Width = 149.669330390000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 38.220470000000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903570000000000
          Width = 46.703463330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 384.756083700000000000
          Top = 0.419903570000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.569573330000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.666666670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 570.666666670000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_NOME]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 306.141930000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5a
        DataSetName = 'frxDBDataset5a'
        RowCount = 0
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 32.687502930000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_PRODUTO'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 83.787260000000000000
          Width = 246.745516670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_DESCRICAO'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_UNIDADE'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 383.732530000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_QUANTIDADE'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 443.205010000000000000
          Width = 83.149635590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORUNIT'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 83.149635590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORTOTAL'
          DataSet = frxDBDataset5a
          DataSetName = 'frxDBDataset5a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5a."COI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 15.118120000000000000
        Top = 343.937230000000000000
        Width = 755.906000000000000000
      end
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_CODIGO=COM_CODIGO'
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_NOME=COM_NOME'
      'COM_CFOP=COM_CFOP'
      'COM_CFOPDESC=COM_CFOPDESC'
      'COM_DTCADASTRO=COM_DTCADASTRO'
      'COM_VALORTOTAL=COM_VALORTOTAL'
      'COM_CONDICAO=COM_CONDICAO'
      'COM_STATUS=COM_STATUS'
      'CPG_DESCRICAO=CPG_DESCRICAO')
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 112
  end
  object DS05: TDataSource
    DataSet = QY05
    Left = 336
    Top = 256
  end
  object frxDBDataset5a: TfrxDBDataset
    UserName = 'frxDBDataset5a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COI_DESCRICAO=COI_DESCRICAO'
      'COI_PRODUTO=COI_PRODUTO'
      'COI_QUANTIDADE=COI_QUANTIDADE'
      'COI_UNIDADE=COI_UNIDADE'
      'COI_VALORTOTAL=COI_VALORTOTAL'
      'COI_VALORUNIT=COI_VALORUNIT')
    DataSet = QY05a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 304
  end
  object frxReport6: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM06'
    ReportOptions.LastChange = 44427.413856944450000000
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
    Left = 408
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_COMPRA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COI_COMPRA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Width = 41.789872460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_FORNECEDOR'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COM_FORNECEDOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 361.029066670000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_DTENTRADA'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COM_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 419.425480000000000000
          Width = 32.503900390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_UNIDADE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6."COI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 506.338900000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORUNIT'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."COI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORTOTAL'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."COI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 86.566790000000000000
          Width = 273.202226670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COM_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_VALORTOTAL'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."COM_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_QUANTIDADE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6."COI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
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
        Height = 37.674540690000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset6."COI_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 0.884508340000000000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COI_PRODUTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 0.884508340000000000
          Width = 526.567100000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."COI_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Top = 22.677180000000000000
          Width = 87.112736400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 361.029066670000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 419.425480000000000000
          Top = 22.677180000000000000
          Width = 32.503900390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Unid.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 506.338900000000000000
          Top = 22.677180000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Unit. + IPI')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 22.677180000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Nota')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 22.677180000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 1.889763780000000000
          Width = 51.401550390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COI_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 1.889763780000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 1.889763780000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 427.086890000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 1.385590000000000000
          Width = 51.401550390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COI_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 1.385590000000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 1.385590000000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset6."COM_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 38.220470000000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903570000000000
          Width = 46.703463330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 384.756083700000000000
          Top = 0.419903570000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.569573330000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.666666670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PRO_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 570.666666670000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PRO_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COI_PRODUTO=COI_PRODUTO'
      'COI_DESCRICAO=COI_DESCRICAO'
      'COI_UNIDADE=COI_UNIDADE'
      'COI_COMPRA=COI_COMPRA'
      'COI_QUANTIDADE=COI_QUANTIDADE'
      'COI_VALORUNIT=COI_VALORUNIT'
      'COI_VALORTOTAL=COI_VALORTOTAL'
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'COM_NOME=COM_NOME'
      'COM_VALORTOTAL=COM_VALORTOTAL'
      'COM_DTENTRADA=COM_DTENTRADA')
    DataSet = QY06
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 112
  end
  object frxReport7: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM07'
    ReportOptions.LastChange = 44427.413856944450000000
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
    Left = 480
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'FOR_CODIGO'
        Value = ''
      end
      item
        Name = 'FOR_NOME'
        Value = ''
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
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 955.307360000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 955.307360000000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 955.307360000000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 955.307360000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 230.551330000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_FORNECEDOR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."COM_FORNECEDOR"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Width = 143.805686400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FOR_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."FOR_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 670.020976110000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'AUG'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."AUG"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 738.999588890000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEP'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."SEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 876.956814440000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'NOV'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."NOV"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 945.935427220000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'DEZ'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."DEZ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 601.042363340000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'JUL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."JUL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1014.914040000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'TOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."TOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 807.978201670000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'OCT'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."OCT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 532.063750560000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'JUN'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."JUN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 463.085137780000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'MAY'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."MAY"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 394.106525000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'APR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."APR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 325.127912230000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'MAR'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."MAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 256.149299450000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'FEB'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."FEB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 187.170686670000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'JAN'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."JAN"]')
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
        Top = 366.614410000000000000
        Width = 1084.725110000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 707.819110000000000000
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
            'COM07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795282910000000000
        Top = 306.141930000000000000
        Width = 1084.725110000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 155.816326670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 842.941044440000000000
          Top = 1.385590000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."NOV">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 908.140127220000000000
          Top = 20.283240000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."DEZ">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 984.677800000000000000
          Top = 1.385590000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 770.182901670000000000
          Top = 20.283240000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."OCT">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 701.204288890000000000
          Top = 1.385590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."SEP">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 636.005206110000000000
          Top = 20.283240000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."AUG">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 567.026593340000000000
          Top = 1.385590000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."JUL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          AllowVectorExport = True
          Left = 498.047980560000000000
          Top = 20.283240000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."JUN">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          AllowVectorExport = True
          Left = 425.289837780000000000
          Top = 1.385590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."MAY">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          AllowVectorExport = True
          Left = 360.090755000000000000
          Top = 20.283240000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."APR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo16: TfrxSysMemoView
          AllowVectorExport = True
          Left = 287.332612230000000000
          Top = 1.385590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."MAR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo17: TfrxSysMemoView
          AllowVectorExport = True
          Left = 222.133529450000000000
          Top = 20.283240000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."FEB">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo18: TfrxSysMemoView
          AllowVectorExport = True
          Left = 160.713976670000000000
          Top = 1.385590000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset7."JAN">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 38.220470000000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903570000000000
          Width = 46.703463330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 384.756083700000000000
          Top = 0.419903570000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.569573330000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.666666670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 570.666666670000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FOR_NOME]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Width = 143.805686400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 187.170686670000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jan.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 256.149299450000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fev.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 807.978201670000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Out.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 945.935427220000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dez.')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 876.956814440000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nov.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 738.999588890000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Set.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 325.127912230000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mar.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 394.106525000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Abr.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 463.085137780000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mai.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 532.063750560000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jun.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 601.042363340000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jul.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 670.020976110000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ago.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 1014.914040000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COM_FORNECEDOR=COM_FORNECEDOR'
      'FOR_NOME=FOR_NOME'
      'JAN=JAN'
      'FEB=FEB'
      'MAR=MAR'
      'APR=APR'
      'MAY=MAY'
      'JUN=JUN'
      'JUL=JUL'
      'AUG=AUG'
      'SEP=SEP'
      'OCT=OCT'
      'NOV=NOV'
      'DEZ=DEZ'
      'TOTAL=TOTAL')
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 112
  end
  object DS01: TDataSource
    DataSet = QY01
    Left = 48
    Top = 256
  end
  object frxDBDataset1a: TfrxDBDataset
    UserName = 'frxDBDataset1a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COI_CODIGO=COI_CODIGO'
      'COI_COMPRA=COI_COMPRA'
      'COI_DESCRICAO=COI_DESCRICAO'
      'COI_PRODUTO=COI_PRODUTO'
      'COI_QUANTIDADE=COI_QUANTIDADE'
      'COI_TIPO=COI_TIPO'
      'COI_UNIDADE=COI_UNIDADE'
      'COI_VALORTOTAL=COI_VALORTOTAL'
      'COI_VALORUNIT=COI_VALORUNIT'
      'PRO_CODIGOFAB=PRO_CODIGOFAB')
    DataSet = QY01a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 304
  end
  object frxReport8: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'COM08'
    ReportOptions.LastChange = 44427.413856944450000000
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
    Left = 552
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
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
        Name = 'DATAINICIAL'
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        Value = Null
      end
      item
        Name = 'STATUS'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.889763780000000000
          Width = 120.944881889764000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Width = 626.488250000000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 15.456694140000000000
          Width = 627.821583340000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 49.278220100000000000
          Width = 626.488250010000000000
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
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 29.236240000000000000
          Width = 627.821583340000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COM_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_DTCADASTRO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COM_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 183.391156670000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOTANUMERO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COM_NOTANUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 502.575140000000000000
          Width = 32.503900390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_UNIDADE'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset8."COI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 589.488560000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORUNIT'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."COI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_VALORTOTAL'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."COI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COM_NOTADATA'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COM_NOTADATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Width = 251.658936660000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_COMPLEMENTO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COI_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'COI_QUANTIDADE'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."COI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
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
        Height = 37.674540690000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset8."COI_DESCRICAO">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 0.884508340000000000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COI_PRODUTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 0.884508340000000000
          Width = 526.567100000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."COI_DESCRICAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 41.574805590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 42.842522130000000000
          Top = 22.677180000000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 183.391156670000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Num. Nota')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 502.575140000000000000
          Top = 22.677180000000000000
          Width = 32.503900390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Unid.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 589.488560000000000000
          Top = 22.677180000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Unit'#225'rio')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 22.677180000000000000
          Width = 251.658936660000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 22.677180000000000000
          Width = 81.580086660000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 22.677180000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 22.677180000000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Nota')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 1.889763780000000000
          Width = 51.401550390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset8."COI_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 1.889763780000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset8."COI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
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
        Top = 427.086890000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
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
            'COM08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 26.456692910000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.385590000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 1.385590000000000000
          Width = 51.401550390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset8."COI_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 1.385590000000000000
          Width = 81.580086660000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset8."COI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456690470000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666666670000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtros:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 38.220470000000000000
          Top = 0.666666670000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Inicial:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 198.107606670000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Final:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 263.958000370000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 333.023810000000000000
          Top = 0.419903570000000000
          Width = 46.703463330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 384.756083700000000000
          Top = 0.419903570000000000
          Width = 73.160173330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[STATUS]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 467.569573330000000000
          Width = 65.601113330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.666666670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PRO_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 108.000000000000000000
          Top = 0.666666670000000000
          Width = 61.821583330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATAINICIAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 570.666666670000000000
          Width = 182.325459310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PRO_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COI_COMPLEMENTO=COI_COMPLEMENTO'
      'COI_DESCRICAO=COI_DESCRICAO'
      'COI_PRODUTO=COI_PRODUTO'
      'COI_QUANTIDADE=COI_QUANTIDADE'
      'COI_UNIDADE=COI_UNIDADE'
      'COI_VALORUNIT=COI_VALORUNIT'
      'COI_VALORTOTAL=COI_VALORTOTAL'
      'COM_CODIGO=COM_CODIGO'
      'COM_DTCADASTRO=COM_DTCADASTRO'
      'COM_NOTADATA=COM_NOTADATA'
      'COM_NOTANUMERO=COM_NOTANUMERO')
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 112
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'COM_BAIRRO,'
      'COM_CEP,'
      'COM_CIDADE,'
      'COM_CODIGO,'
      'COM_CONDICAO,'
      'COM_CONTATO,'
      'iif(COM_CNPJ<>'#39#39',COM_CNPJ,COM_CPF) as DOCUMENTO,'
      'COM_CNPJ,'
      'COM_CPF,'
      'COM_DESCPORC,'
      'COM_DESCVALOR,'
      'COM_DTCADASTRO,'
      'COM_ENDERECO,'
      'COM_ESTADO,'
      'COM_FONE1,'
      'COM_FORNECEDOR,'
      'COM_FRETE,'
      'COM_IE,'
      'COM_NOME,'
      'COM_NUMERO,'
      'COM_OBSERVACOES,'
      'COM_PESOBRUTO,'
      'COM_PESOLIQ,'
      'COM_TOTALPRODUTOS,'
      'COM_TOTALSERVICOS,'
      'COM_TRANSPORTADORA,'
      'COM_VALORFRETE,'
      'COM_VALORTOTAL,'
      'CPG_DESCRICAO,'
      'FOR_NOME'
      'from COMPRAS '
      'left join CONDICOES on COM_CONDICAO=CPG_CODIGO'
      'left join FORNECEDORES on COM_TRANSPORTADORA=FOR_CODIGO'
      'where COM_CODIGO=:codigo'
      '')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR01a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 400
  end
  object QY01a: TFDQuery
    MasterSource = DS01
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select '
      'COI_CODIGO,'
      'COI_COMPRA,'
      'COI_DESCRICAO,'
      'COI_PRODUTO,'
      'COI_QUANTIDADE,'
      'COI_TIPO,'
      'COI_UNIDADE,'
      'COI_VALORTOTAL,'
      'COI_VALORUNIT,'
      'PRO_CODIGOFAB'
      'from COMPRASITENS'
      'left join PRODUTOS on COI_PRODUTO=PRO_CODIGO'
      'where COI_COMPRA=:codigo'
      'order by COI_CODIGO'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select '
      'COM_CODIGO,'
      'COM_FORNECEDOR,'
      'COM_NOTADATA,'
      'COM_NOTANUMERO,'
      'COM_VALORTOTAL,'
      'COM_STATUS,'
      'COM_CHAVEACESSO,'
      'COM_NOME'
      'from COMPRAS'
      'left join FORNECEDORES on COM_FORNECEDOR=FOR_CODIGO'
      
        'where COM_STATUS='#39'F'#39' and COM_NOTADATA between :datainicial and :' +
        'datafinal'
      'order by COM_STATUS, COM_NOTADATA, COM_CODIGO desc'
      '')
    Left = 120
    Top = 160
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'COM_CODIGO, '
      'COM_FORNECEDOR, '
      'COM_NOTADATA, '
      'COM_NOTANUMERO,'
      'COM_NOME, '
      'COM_TOTALCOFINS, '
      'COM_TOTALICMS, '
      'COM_TOTALICMSST, '
      'COM_TOTALIPI, '
      'COM_TOTALPIS, '
      'COM_VALORTOTAL from COMPRAS'
      'where COM_NOTADATA between :datainicial and :datafinal'
      'order by COM_STATUS, COM_NOTADATA, COM_CODIGO desc'
      '')
    Left = 192
    Top = 160
    ParamData = <
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
  end
  object TR03a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 400
  end
  object QY03a: TFDQuery
    MasterSource = DS03
    MasterFields = 'COM_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR03a
    SQL.Strings = (
      'select '
      'COI_CFOP,'
      'COI_DESCRICAO,'
      'COI_PRODUTO,'
      'COI_VALORCOFINS,'
      'COI_VALORICMS,'
      'COI_VALORICMSST,'
      'COI_VALORIPI,'
      'COI_VALORPIS,'
      'COI_VALORTOTAL'
      'from COMPRASITENS'
      'where COI_COMPRA=:COM_CODIGO'
      'order by COI_CODIGO'
      '')
    Left = 192
    Top = 352
    ParamData = <
      item
        Name = 'COM_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 208
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      
        'select COM_FORNECEDOR, COM_DTENTRADA, sum(COM_VALORTOTAL) as TOT' +
        'AL, count(COM_FORNECEDOR) as QTDE, COM_NOME from COMPRAS'
      'group by COM_FORNECEDOR, COM_DTENTRADA, COM_NOME'
      'order by COM_FORNECEDOR, COM_DTENTRADA'
      '')
    Left = 264
    Top = 160
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select'
      'COM_CODIGO,'
      'COM_FORNECEDOR,'
      'COM_NOME,'
      'COM_CFOP,'
      'COM_CFOPDESC,'
      'COM_DTCADASTRO,'
      'COM_VALORTOTAL,'
      'COM_CONDICAO,'
      'COM_STATUS,'
      'CPG_DESCRICAO'
      'from COMPRAS'
      'left join CONDICOES on COM_CONDICAO=CPG_CODIGO'
      'order by COM_NOME, COM_DTCADASTRO desc'
      '')
    Left = 336
    Top = 160
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      'select'
      'COI_PRODUTO,'
      'COI_DESCRICAO,'
      'COI_UNIDADE,'
      'COI_COMPRA,'
      'COI_QUANTIDADE,'
      'COI_VALORUNIT+(COI_VALORIPI/COI_QUANTIDADE) as COI_VALORUNIT,'
      'COI_VALORTOTAL,'
      'COM_FORNECEDOR,'
      'COM_NOME,'
      'COM_VALORTOTAL,'
      'COM_DTENTRADA'
      'from COMPRASITENS'
      'left join COMPRAS on COI_COMPRA=COM_CODIGO'
      'order by COI_DESCRICAO'
      '')
    Left = 408
    Top = 160
  end
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 208
  end
  object TR05a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 400
  end
  object QY05a: TFDQuery
    MasterSource = DS05
    MasterFields = 'COM_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR05a
    SQL.Strings = (
      'select'
      'COI_DESCRICAO,'
      'COI_PRODUTO,'
      'COI_QUANTIDADE,'
      'COI_UNIDADE,'
      'COI_VALORTOTAL,'
      'COI_VALORUNIT'
      'from COMPRASITENS'
      'where COI_COMPRA=:COM_CODIGO'
      'order by COI_DESCRICAO'
      '')
    Left = 336
    Top = 352
    ParamData = <
      item
        Name = 'COM_CODIGO'
        ParamType = ptInput
      end>
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select'
      '  COM_FORNECEDOR, FOR_NOME,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=01,COM_VAL' +
        'ORTOTAL,0)) as JAN,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=02,COM_VAL' +
        'ORTOTAL,0)) as FEB,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=03,COM_VAL' +
        'ORTOTAL,0)) as MAR,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=04,COM_VAL' +
        'ORTOTAL,0)) as APR,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=05,COM_VAL' +
        'ORTOTAL,0)) as MAY,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=06,COM_VAL' +
        'ORTOTAL,0)) as JUN,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=07,COM_VAL' +
        'ORTOTAL,0)) as JUL,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=08,COM_VAL' +
        'ORTOTAL,0)) as AUG, '
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=09,COM_VAL' +
        'ORTOTAL,0)) as SEP, '
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=10,COM_VAL' +
        'ORTOTAL,0)) as OCT,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=11,COM_VAL' +
        'ORTOTAL,0)) as NOV,'
      
        '            sum(iif(extract(MONTH from COM_DTENTRADA)=12,COM_VAL' +
        'ORTOTAL,0)) as DEZ, '
      '  sum(COM_VALORTOTAL) as TOTAL'
      'from COMPRAS'
      'left join FORNECEDORES on COM_FORNECEDOR=FOR_CODIGO'
      
        'where COM_FORNECEDOR=:codfornecedor and COM_DTENTRADA between :d' +
        'atainicial and :datafinal and COM_STATUS='#39'F'#39
      'group by COM_FORNECEDOR, FOR_NOME'
      '')
    Left = 480
    Top = 160
    ParamData = <
      item
        Name = 'CODFORNECEDOR'
        ParamType = ptInput
      end
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
  end
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 480
    Top = 208
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      'select '
      'COI_COMPLEMENTO,'
      'COI_DESCRICAO, '
      'COI_PRODUTO, '
      'COI_QUANTIDADE, '
      'COI_UNIDADE,'
      'COI_VALORUNIT, '
      'COI_VALORTOTAL,'
      'COM_CODIGO,'
      'COM_DTCADASTRO, '
      'COM_NOTADATA, '
      'COM_NOTANUMERO'
      'from COMPRASITENS'
      'left join COMPRAS on COI_COMPRA=COM_CODIGO'
      'order by COI_DESCRICAO, COM_NOTADATA desc'
      '')
    Left = 552
    Top = 160
  end
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 208
  end
end
