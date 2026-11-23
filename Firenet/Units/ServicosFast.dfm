object FormServicosFast: TFormServicosFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Ordens de Servi'#231'os'
  ClientHeight = 482
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 682
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - os a5 retrato aberto'
      '02 - os a5 retrato finalizada'
      '03 - os a5 paisagem'
      '04 - os a5 paisagem 2 vias'
      '05 - os a4 aberto'
      '06 - os a4 finalizada'
      '07 - Ordens de servi'#231'o por cliente'
      '08 - Ordens de servi'#231'o por cliente com valor anal'#237'tico'
      '09 - Ordens de servi'#231'o por cliente com valor sint'#233'tico'
      '10 - Ordens de servi'#231'o por t'#233'cnico'
      '11 - Ordens de servi'#231'o por t'#233'cnico com valor'
      '12 - Ordens de servi'#231'o por produto')
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_VALOR=SER_VALOR'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'ENDERECO=ENDERECO'
      'CIDADEUF=CIDADEUF'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_FONE1=CLI_FONE1'
      'CLI_FONE2=CLI_FONE2'
      'CLI_FONE3=CLI_FONE3'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE'
      'VEN_NOME=VEN_NOME')
    DataSet = QY01
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 112
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
    ReportOptions.Name = 'Ordem de servi'#231'o A5 retrato ABERTA'
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
      end
      item
        Name = 'RODAPE'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
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
        Frame.Width = 0.500000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 521.575140000000000000
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
          Width = 392.157390010000000000
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
          Top = 17.456694140000000000
          Width = 392.157390010000000000
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
          Left = 421.646105000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 392.157390010000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 392.157390010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
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
        Height = 644.409448820000000000
        Top = 143.622140000000000000
        Width = 521.575140000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 171.968503940000000000
          Width = 521.574803150000000000
          Height = 141.732359130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 33.905511800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 33.905511800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
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
            '[frxDBDataset1."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984266610000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COMPLEMENTO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 24.566929130000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'SENHA ONLINE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 49.133858270000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 73.700787400000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PREV. ENTREGA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 98.267716540000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 148.913385830000000000
          Top = 49.133858270000000000
          Width = 148.913385830000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 297.826771650000000000
          Top = 49.133858270000000000
          Width = 148.157480310000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 148.913385830000000000
          Top = 73.700787400000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 02')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 297.826771650000000000
          Top = 73.700787400000000000
          Width = 148.157480310000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 03')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716540000000000
          Width = 173.858267720000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267716535400000
          Top = 98.267716540000000000
          Width = 272.125984251968500000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 122.834645670000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 122.834645670000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716535430000000000
          Top = 122.834645670000000000
          Width = 173.858267716535400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 147.401670000000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 147.401670000000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527605430000000000
          Top = 147.401670000000000000
          Width = 101.555905511811000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 313.700990000000000000
          Width = 48.377647640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 48.377952760000000000
          Top = 313.700990000000000000
          Width = 263.811023620000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 312.188976380000000000
          Top = 313.700990000000000000
          Width = 48.377647640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 360.566929130000000000
          Top = 313.700990000000000000
          Width = 25.700467640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 386.267716540000000000
          Top = 313.700990000000000000
          Width = 67.275297640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR UNIT.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 313.700990000000000000
          Width = 68.031496062992130000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 325.039580000000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 349.606299210000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 374.173228350000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 398.740157480000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 423.307360000000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Top = 447.874015750000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 472.440944880000000000
          Width = 521.574803149606300000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 9.338582670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 58.472440940000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_COMPLEMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 151.818800000000000000
          Top = 58.472440940000000000
          Width = 140.918676670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 300.826771650000000000
          Top = 58.472440940000000000
          Width = 140.918676670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIDADEUF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CIDADEUF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 151.818800000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_FONE2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 300.826771650000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_FONE3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 107.606299210000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 178.275510000000000000
          Top = 107.606299210000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 107.606299210000000000
          Width = 217.700870390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 132.173228340000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 132.173228340000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 132.173228340000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 156.740252670000000000
          Width = 168.566980390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_ACESSORIOS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 156.740252670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 156.740252670000000000
          Width = 92.976380390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_LOCALIZACAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 33.905511800000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_SENHAONLINE'
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
            '[frxDBDataset1."SER_SENHAONLINE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 58.472440940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
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
            '[frxDBDataset1."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 83.039370070000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTPREVISAO'
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
            '[frxDBDataset1."SER_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 107.606299210000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
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
            '[frxDBDataset1."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 181.417440000000000000
          Width = 512.504210390000000000
          Height = 130.393776460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 397.606299212598400000
          Top = 497.007874020000000000
          Width = 123.968247640000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 610.283860000000000000
          Width = 236.598520390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 610.283860000000000000
          Width = 236.598520390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 629.181510000000000000
          Width = 512.504210390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 147.401670000000000000
          Width = 71.810957720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496402280000000000
          Top = 156.740252670000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_KMATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SER_KMATUAL"]')
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
        Top = 850.394250000000000000
        Width = 521.575140000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 382.779530000000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER01 - Runtime Sistemas')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 226.435683340000000000
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
    end
  end
  object frxReport11: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Ordens de servi'#231'o por t'#233'cnico com valor'
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
    Left = 768
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset11
        DataSetName = 'frxDBDataset11'
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
        Name = 'SER_TECNICO'
        Value = Null
      end
      item
        Name = 'VEN_NOME'
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
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset11
        DataSetName = 'frxDBDataset11'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 58.960642130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
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
            '[frxDBDataset11."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 234.514406400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 342.157700000000000000
          Width = 38.929094800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_STATUS'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset11."SER_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 382.732530000000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 509.457020000000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TOTALSERVICOS'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
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
            '[frxDBDataset11."SER_TOTALSERVICOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 587.827150000000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TOTALPRODUTOS'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
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
            '[frxDBDataset11."SER_TOTALPRODUTOS"]')
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
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset11."VEN_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset11."SER_TECNICO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset11
          DataSetName = 'frxDBDataset11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset11."VEN_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 58.960642130000000000
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
            'Cliente')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Top = 24.566929130000000000
          Width = 88.062984800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 587.827150000000000000
          Top = 24.566929130000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 509.457020000000000000
          Top = 24.566929130000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Servi'#231'os')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 382.732530000000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 342.157700000000000000
          Top = 24.566929130000000000
          Width = 38.929094800000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 24.566929130000000000
          Width = 234.514406400000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 287.244280000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 70.299232130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Top = 1.779530000000000000
          Width = 88.062984800000000000
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
            '[SUM(<frxDBDataset11."SER_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.827150000000000000
          Top = 1.779530000000000000
          Width = 76.724394800000000000
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
            '[SUM(<frxDBDataset11."SER_TOTALPRODUTOS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 509.457020000000000000
          Top = 1.779530000000000000
          Width = 76.724394800000000000
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
            '[SUM(<frxDBDataset11."SER_TOTALSERVICOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:'
            '')
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
        Top = 423.307360000000000000
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
            'SER11 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Top = 3.779530000000000000
          Width = 88.062984800000000000
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
            '[SUM(<frxDBDataset11."SER_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 587.827150000000000000
          Top = 3.779530000000000000
          Width = 76.724394800000000000
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
            '[SUM(<frxDBDataset11."SER_TOTALPRODUTOS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 509.457020000000000000
          Top = 3.779530000000000000
          Width = 76.724394800000000000
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
            '[SUM(<frxDBDataset11."SER_TOTALSERVICOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
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
        Height = 22.677160470000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 325.464750000000000000
          Top = 0.666666670000000000
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
          Top = 0.666666670000000000
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
            'T'#233'cnico:')
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
            '[SER_TECNICO]')
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
            '[VEN_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxDBDataset11'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_TOTALPRODUTOS=SER_TOTALPRODUTOS'
      'SER_TOTALSERVICOS=SER_TOTALSERVICOS'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY11
    BCDToCurrency = False
    DataSetOptions = []
    Left = 768
    Top = 320
  end
  object frxReport12: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Ordens de servi'#231'o por produto'
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
    Left = 840
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
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
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset12
        DataSetName = 'frxDBDataset12'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 112.874062130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
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
            '[frxDBDataset12."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 159.740260000000000000
          Width = 242.073466400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 404.630180000000000000
          Width = 80.503924800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_QUANTIDADE'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset12."SEI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 486.779840000000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORUNIT'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
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
            '[frxDBDataset12."SEI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 576.488560000000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORTOTAL'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
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
            '[frxDBDataset12."SEI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Width = 56.876496400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."SER_DTENTRADA"]')
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
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset12."PRO_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset12."SEI_PRODUTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset12
          DataSetName = 'frxDBDataset12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset12."PRO_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 112.874062130000000000
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
            'Cliente')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 665.952978030000000000
          Top = 24.566929130000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total O.S.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 576.488560000000000000
          Top = 24.566929130000000000
          Width = 88.062984800000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 486.779840000000000000
          Top = 24.566929130000000000
          Width = 88.062984800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Top = 24.566929130000000000
          Width = 56.876496400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 404.630180000000000000
          Top = 24.566929130000000000
          Width = 80.503924800000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 159.740260000000000000
          Top = 24.566929130000000000
          Width = 242.073466400000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 287.244280000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 576.488560000000000000
          Top = 1.779530000000000000
          Width = 88.062984800000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."SEI_VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 404.630180000000000000
          Top = 1.779530000000000000
          Width = 80.503924800000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset12."SEI_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:'
            '')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.779530000000000000
          Width = 94.671796400000000000
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
          Memo.UTF8W = (
            '[AVG(<frxDBDataset12."SEI_VALORUNIT">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 1.779530000000000000
          Width = 79.370105590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor M'#233'dio:')
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
        Top = 423.307360000000000000
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
            'SER12 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:')
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
        Height = 22.677160470000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 325.464750000000000000
          Top = 0.666666670000000000
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
          Top = 0.666666670000000000
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
          Left = 463.790043330000000000
          Top = 0.666666670000000000
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
            'Produto:')
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
            '[PRO_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxDBDataset12'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SEI_PRODUTO=SEI_PRODUTO'
      'SEI_VALORUNIT=SEI_VALORUNIT'
      'SEI_QUANTIDADE=SEI_QUANTIDADE'
      'SEI_VALORTOTAL=SEI_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'PRO_NOME=PRO_NOME')
    DataSet = QY12
    BCDToCurrency = False
    DataSetOptions = []
    Left = 840
    Top = 320
  end
  object frxReport10: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Ordens de servi'#231'o por t'#233'cnico'
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
    Left = 696
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset10
        DataSetName = 'frxDBDataset10'
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
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
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
        Height = 13.228346460000000000
        Top = 264.567100000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset10
        DataSetName = 'frxDBDataset10'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 54.181112130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 692.409688030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTPREVISAO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset10."SER_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 481.000310000000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 551.031850000000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_LOCALIZACAO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."SER_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset10."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 400.071120000000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."EQP_DESCRICAO"]')
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
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset10."VEN_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset10."SER_TECNICO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBDataset10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset10."VEN_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 54.181112130000000000
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
            'Cliente')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 692.409688030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Previs'#227'o')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 551.031850000000000000
          Top = 24.566929130000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 481.000310000000000000
          Top = 24.566929130000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 400.071120000000000000
          Top = 24.566929130000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 24.566929130000000000
          Width = 177.821456400000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 24.566929130000000000
          Width = 119.055118110000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 302.362400000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:'
            '')
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
        Top = 438.425480000000000000
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
            'SER10 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 389.291590000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:')
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
        Height = 37.795280470000000000
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
          Left = 189.401670000000000000
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
          Left = 337.950216670000000000
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
          Left = 403.800610370000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.645950000000000000
          Top = 0.666666670000000000
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
          Left = 528.378223700000000000
          Top = 0.666666670000000000
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
          Left = 37.795300000000000000
          Top = 15.784786670000000000
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
            'T'#233'cnico:'
            '')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
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
          Left = 144.800246670000000000
          Top = 15.784786670000000000
          Width = 231.459349310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 0.666666670000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 15.784786670000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 454.737476670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 488.737476670000000000
          Top = 15.784786670000000000
          Width = 231.459349310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTTECNICO=SER_DTTECNICO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'CLI_NOME=CLI_NOME'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY10
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 320
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
    ReportOptions.Name = 'Ordens de servi'#231'o por cliente'
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
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
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
        Height = 13.228346460000000000
        Top = 264.567100000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 54.181112130000000000
          Width = 45.537906400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 692.409688030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTPREVISAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."SER_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 481.000310000000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 551.031850000000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_LOCALIZACAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."SER_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset7."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 400.071120000000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."EQP_DESCRICAO"]')
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
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset7."CLI_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."SER_CLIENTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."CLI_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 54.181112130000000000
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
            'T'#233'cnico')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 692.409688030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Previs'#227'o')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 551.031850000000000000
          Top = 24.566929130000000000
          Width = 76.724394800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 481.000310000000000000
          Top = 24.566929130000000000
          Width = 68.215086400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 400.071120000000000000
          Top = 24.566929130000000000
          Width = 79.553676400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 24.566929130000000000
          Width = 177.821456400000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 24.566929130000000000
          Width = 119.055118110000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 302.362400000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:'
            '')
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
        Top = 438.425480000000000000
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
            'SER07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 389.291590000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:')
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
        Height = 37.795280470000000000
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
          Left = 189.401670000000000000
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
          Left = 337.950216670000000000
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
          Left = 403.800610370000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.645950000000000000
          Top = 0.666666670000000000
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
          Left = 528.378223700000000000
          Top = 0.666666670000000000
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
          Left = 37.795300000000000000
          Top = 15.784786670000000000
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
            'T'#233'cnico:'
            '')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
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
          Left = 144.800246670000000000
          Top = 15.784786670000000000
          Width = 227.679819310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 0.666666670000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 15.784786670000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 454.737476670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 488.737476670000000000
          Top = 15.784786670000000000
          Width = 231.459349310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTTECNICO=SER_DTTECNICO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'CLI_NOME=CLI_NOME'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 112
  end
  object frxReport9: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'Ordens de servi'#231'o por cliente com valor sint'#233'tico'
    ReportOptions.LastChange = 44358.692221354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      
        '  if Get('#39'DATA'#39')='#39'ENTRADA'#39'  then Memo39.DataField:='#39'SER_DTENTRAD' +
        'A'#39';'
      
        '  if Get('#39'DATA'#39')='#39'PREVISAO'#39' then Memo39.DataField:='#39'SER_DTPREVIS' +
        'AO'#39';'
      
        '  if Get('#39'DATA'#39')='#39'SAIDA'#39'    then Memo39.DataField:='#39'SER_DTSAIDA'#39 +
        ';'
      
        '  if Get('#39'DATA'#39')='#39'TECNICO'#39'  then Memo39.DataField:='#39'SER_DTTECNIC' +
        'O'#39';      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
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
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
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
        Height = 13.228346460000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 693.409688030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
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
            '[frxDBDataset9."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 53.692950000000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 406.409710000000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 566.905668030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset9."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 630.401980000000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset9."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 329.819110000000000000
          Width = 75.774146400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 233.771800000000000000
          Width = 94.671796400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 526.622362130000000000
          Width = 37.978846400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_STATUS'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset9."SER_STATUS"]')
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
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset9."CLI_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."SER_CLIENTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
          Height = 17.007874020000000000
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."CLI_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 526.622362130000000000
          Top = 24.566929130000000000
          Width = 37.978846400000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 693.409688030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 566.905668030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 630.401980000000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA]'
            '')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 329.819110000000000000
          Top = 24.566929130000000000
          Width = 75.774146400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 233.771800000000000000
          Top = 24.566929130000000000
          Width = 94.671796400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 53.692950000000000000
          Top = 24.566929130000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto'
            '')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 406.409710000000000000
          Top = 24.566929130000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#233'rie')
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
        Top = 317.480520000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:'
            '')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 1.779530000000000000
          Width = 125.858284800000000000
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
            '[SUM(<frxDBDataset9."SER_VALORTOTAL">,MasterData1)]')
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
        Top = 453.543600000000000000
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
            'SER09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 404.409710000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 3.779530000000000000
          Width = 125.858284800000000000
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
            '[SUM(<frxDBDataset9."SER_VALORTOTAL">,MasterData1)]')
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
        Height = 52.913400470000000000
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
          Left = 189.401670000000000000
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
          Left = 337.950216670000000000
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
          Left = 403.800610370000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.645950000000000000
          Top = 0.666666670000000000
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
          Left = 528.378223700000000000
          Top = 0.666666670000000000
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
          Left = 37.795300000000000000
          Top = 15.784786670000000000
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
            'T'#233'cnico:'
            '')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
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
          Left = 144.800246670000000000
          Top = 15.784786670000000000
          Width = 227.679819310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 0.666666670000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 15.784786670000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 454.737476670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 488.737476670000000000
          Top = 15.784786670000000000
          Width = 231.459349310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 30.236240000000000000
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
            'Valor Inicial:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 30.236240000000000000
          Width = 72.566955980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VALORINICIAL]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 189.401670000000000000
          Top = 30.236240000000000000
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
            'Valor Final:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
          Top = 30.236240000000000000
          Width = 72.566955980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VALORFINAL]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_STATUS=SER_STATUS'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE')
    DataSet = QY09
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 112
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
    ReportOptions.Name = 'Ordens de servi'#231'o por cliente com valor anal'#237'tico'
    ReportOptions.LastChange = 44358.692221354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      
        '  if Get('#39'DATA'#39')='#39'ENTRADA'#39'  then Memo39.DataField:='#39'SER_DTENTRAD' +
        'A'#39';'
      
        '  if Get('#39'DATA'#39')='#39'PREVISAO'#39' then Memo39.DataField:='#39'SER_DTPREVIS' +
        'AO'#39';'
      
        '  if Get('#39'DATA'#39')='#39'SAIDA'#39'    then Memo39.DataField:='#39'SER_DTSAIDA'#39 +
        ';'
      
        '  if Get('#39'DATA'#39')='#39'TECNICO'#39'  then Memo39.DataField:='#39'SER_DTTECNIC' +
        'O'#39';      '
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
      end
      item
        DataSet = frxDBDataset8b
        DataSetName = 'frxDBDataset8b'
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
        Name = 'VEN_CODIGO'
        Value = ''
      end
      item
        Name = 'VEN_NOME'
        Value = ''
      end
      item
        Name = 'DATA'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
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
        Fill.BackColor = 15921906
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 32.125996460000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."SER_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 693.409688030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
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
            '[frxDBDataset8."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 53.692950000000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 406.409710000000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 566.905668030000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
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
            '[frxDBDataset8."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 630.401980000000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
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
            '[frxDBDataset8."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 329.819110000000000000
          Width = 75.774146400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 233.771800000000000000
          Width = 94.671796400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 526.622362130000000000
          Width = 37.978846400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_STATUS'
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
            '[frxDBDataset8."SER_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 17.897650000000000000
          Width = 49.317436400000000000
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
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 17.897650000000000000
          Width = 208.057696400000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 17.897650000000000000
          Width = 37.978846400000000000
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
            'Uni.')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 17.897650000000000000
          Width = 87.112736400000000000
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 17.897650000000000000
          Width = 87.112736400000000000
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
            'Valor Total')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 17.897650000000000000
          Width = 49.317436400000000000
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
            'Qtde.')
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
        Height = 37.674540690000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        Condition = '<frxDBDataset8."CLI_NOME">'
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          AllowVectorExport = True
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8."SER_CLIENTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Width = 318.692950000000000000
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
            '[frxDBDataset8."CLI_NOME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 526.622362130000000000
          Top = 24.566929130000000000
          Width = 37.978846400000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 693.409688030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 566.905668030000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 630.401980000000000000
          Top = 24.566929130000000000
          Width = 61.606274800000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA]'
            '')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 329.819110000000000000
          Top = 24.566929130000000000
          Width = 75.774146400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 233.771800000000000000
          Top = 24.566929130000000000
          Width = 94.671796400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 53.692950000000000000
          Top = 24.566929130000000000
          Width = 177.821456400000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto'
            '')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 406.409710000000000000
          Top = 24.566929130000000000
          Width = 119.055118110000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#233'rie')
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
        Top = 408.189240000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 1.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:'
            '')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 1.779530000000000000
          Width = 125.858284800000000000
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
            '[SUM(<frxDBDataset8."SER_VALORTOTAL">,MasterData1)]')
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
        Top = 544.252320000000000000
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
            'SER08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 495.118430000000000000
        Width = 755.906000000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 62.740172130000000000
          Top = 3.779530000000000000
          Width = 60.656026400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692925590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde:')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 629.157678030000000000
          Top = 3.779530000000000000
          Width = 125.858284800000000000
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
            '[SUM(<frxDBDataset8."SER_VALORTOTAL">,MasterData1)]')
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
        Height = 52.913400470000000000
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
          Left = 189.401670000000000000
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
          Left = 337.950216670000000000
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
          Left = 403.800610370000000000
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
            '[DATAFINAL]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 476.645950000000000000
          Top = 0.666666670000000000
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
          Left = 528.378223700000000000
          Top = 0.666666670000000000
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
          Left = 37.795300000000000000
          Top = 15.784786670000000000
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
            'T'#233'cnico:'
            '')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_CODIGO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
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
          Left = 144.800246670000000000
          Top = 15.784786670000000000
          Width = 227.679819310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VEN_NOME]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
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
            'Data:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 0.666666670000000000
          Width = 76.939703330000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 15.784786670000000000
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
            'Cliente:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 454.737476670000000000
          Top = 15.784786670000000000
          Width = 30.992125980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_CODIGO]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 488.737476670000000000
          Top = 15.784786670000000000
          Width = 231.459349310000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLI_NOME]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 30.236240000000000000
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
            'Valor Inicial:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 110.800246670000000000
          Top = 30.236240000000000000
          Width = 72.566955980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VALORINICIAL]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 189.401670000000000000
          Top = 30.236240000000000000
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
            'Valor Final:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 259.181200000000000000
          Top = 30.236240000000000000
          Width = 72.566955980000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[VALORFINAL]')
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
        Height = 15.118120000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8b
        DataSetName = 'frxDBDataset8b'
        RowCount = 0
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 87.112736400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORTOTAL'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
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
            '[frxDBDataset8b."SEI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 87.112736400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORUNIT'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
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
            '[frxDBDataset8b."SEI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 37.978846400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_UNIDADE'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset8b."SEI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 49.317436400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_QUANTIDADE'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8b."SEI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 208.057696400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_DESCRICAO'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8b."SEI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 49.317436400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_PRODUTO'
          DataSet = frxDBDataset8b
          DataSetName = 'frxDBDataset8b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8b."SEI_PRODUTO"]')
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
        Height = 11.338590000000000000
        Top = 374.173470000000000000
        Width = 755.906000000000000000
      end
    end
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_STATUS=SER_STATUS'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE')
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 112
  end
  object frxDBDataset8b: TfrxDBDataset
    UserName = 'frxDBDataset8b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SEI_PRODUTO=SEI_PRODUTO'
      'SEI_DESCRICAO=SEI_DESCRICAO'
      'SEI_UNIDADE=SEI_UNIDADE'
      'SEI_QUANTIDADE=SEI_QUANTIDADE'
      'SEI_VALORUNIT=SEI_VALORUNIT'
      'SEI_VALORTOTAL=SEI_VALORTOTAL')
    DataSet = QY08b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 552
    Top = 304
  end
  object DS08: TDataSource
    DataSet = QY08
    Left = 552
    Top = 256
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DESCPORC=SER_DESCPORC'
      'SER_DESCVALOR=SER_DESCVALOR'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_TOTALHORAS=SER_TOTALHORAS'
      'SER_TOTALSERVICOS=SER_TOTALSERVICOS'
      'SER_TOTALPRODUTOS=SER_TOTALPRODUTOS'
      'SER_VALOR=SER_VALOR'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_NOME=CLI_NOME'
      'ENDERECO=ENDERECO'
      'CIDADEUF=CIDADEUF'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_FONE1=CLI_FONE1'
      'CLI_FONE2=CLI_FONE2'
      'CLI_FONE3=CLI_FONE3'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE'
      'VEN_NOME=VEN_NOME')
    DataSet = QY02
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
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
    ReportOptions.Name = 'Ordem de servi'#231'o A5 retrato FINALIZADA'
    ReportOptions.LastChange = 44358.692221354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while (Engine.FreeSpace-90) > 1 do '
      '  Engine.ShowBand(Child1);  '
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
      end
      item
        DataSet = frxDBDataset2b
        DataSetName = 'frxDBDataset2b'
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
      end
      item
        Name = 'RODAPE'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
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
        Frame.Width = 0.500000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 521.575140000000000000
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
          Width = 392.157390010000000000
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
          Top = 17.456694140000000000
          Width = 392.157390010000000000
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
          Left = 421.646105000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 392.157390010000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 392.157390010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
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
        Top = 551.811380000000000000
        Width = 521.575140000000000000
        DataSet = frxDBDataset2b
        DataSetName = 'frxDBDataset2b'
        RowCount = 0
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Width = 48.377647640000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_PRODUTO'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 48.377952760000000000
          Width = 263.811023620000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_DESCRICAO'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 312.188976380000000000
          Width = 48.377647640000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_QUANTIDADE'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 360.566929130000000000
          Width = 25.700467640000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_UNIDADE'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 386.267716540000000000
          Width = 67.275297640000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORUNIT'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 68.031496062992130000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SEI_VALORTOTAL'
          DataSet = frxDBDataset2b
          DataSetName = 'frxDBDataset2b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2b."SEI_VALORTOTAL"]')
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
        Height = 18.897650000000000000
        Top = 763.465060000000000000
        Width = 521.575140000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 226.435683340000000000
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 382.779530000000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER01 - Runtime Sistemas')
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
        Height = 3.779527560000000000
        Top = 589.606680000000000000
        Width = 521.575140000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Width = 48.377647640000000000
          Height = 3.779527560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 48.377952760000000000
          Width = 263.811023620000000000
          Height = 3.779527559055120000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 312.188976380000000000
          Width = 48.377647640000000000
          Height = 3.779527559055120000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 360.566929130000000000
          Width = 25.700467640000000000
          Height = 3.779527559055120000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 386.267716540000000000
          Width = 67.275297640000000000
          Height = 3.779527559055120000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 68.031496062992130000
          Height = 3.779527560000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 480.000310000000000000
        Width = 521.575140000000000000
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Width = 48.377647640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 48.377952760000000000
          Width = 263.811023620000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 312.188976380000000000
          Width = 48.377647640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 360.566929130000000000
          Width = 25.700467640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 386.267716540000000000
          Width = 67.275297640000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT.')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 68.031496062992130000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
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
        Height = 349.606299210000000000
        Top = 105.826840000000000000
        Width = 521.575140000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 171.968503940000000000
          Width = 521.574803149606300000
          Height = 88.818939130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 33.905511800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'ENDERECO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 33.905511800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984266610000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COMPLEMENTO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 24.566929130000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'SENHA ONLINE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 49.133858270000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 73.700787400000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'PREV. ENTREGA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 98.267716540000000000
          Width = 75.590551181102360000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 148.913385830000000000
          Top = 49.133858270000000000
          Width = 148.913385830000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 297.826771650000000000
          Top = 49.133858270000000000
          Width = 148.157480310000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 148.913385830000000000
          Top = 73.700787400000000000
          Width = 148.913385830000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 02')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 297.826771650000000000
          Top = 73.700787400000000000
          Width = 148.157480310000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 03')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716540000000000
          Width = 173.858267720000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 98.267716540000000000
          Width = 272.125984250000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 122.834645670000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 122.834645670000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716535430000000000
          Top = 122.834645670000000000
          Width = 173.858267716535400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 147.401670000000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 147.401670000000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527605430000000000
          Top = 147.401670000000000000
          Width = 102.047244094488200000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 9.338582670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 58.472440940000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_COMPLEMENTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 151.818800000000000000
          Top = 58.472440940000000000
          Width = 140.918676670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 300.826771650000000000
          Top = 58.472440940000000000
          Width = 140.918676670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CIDADEUF'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CIDADEUF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 151.818800000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE2'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_FONE2"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 300.826771650000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE3'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_FONE3"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 107.606299210000000000
          Width = 168.566980390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 178.275510000000000000
          Top = 107.606299210000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 107.606299210000000000
          Width = 217.700870390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 132.173228340000000000
          Width = 168.566980390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 132.173228340000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 132.173228340000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 156.740252670000000000
          Width = 168.566980390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 156.740252670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 156.740252670000000000
          Width = 92.976380390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_LOCALIZACAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 33.905511800000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_SENHAONLINE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_SENHAONLINE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 58.472440940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 83.039370070000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTPREVISAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 449.278290890000000000
          Top = 107.606299210000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 181.417440000000000000
          Width = 512.504210390000000000
          Height = 77.480356460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 260.787401570000000000
          Width = 521.574803149606300000
          Height = 88.818939130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONSERTO EFETUADO')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 270.346630000000000000
          Width = 512.504210390000000000
          Height = 77.480356460000000000
          DataField = 'SER_CONSERTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_CONSERTO"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 147.401670000000000000
          Width = 71.810957720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496402280000000000
          Top = 156.740252670000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."SER_KMATUAL"]')
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
        Height = 86.929116770000000000
        Top = 616.063390000000000000
        Width = 521.575140000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Width = 117.165354330708700000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 318.236213150000000000
          Width = 86.172947640000000000
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
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 232.062987240000000000
          Width = 86.172947640000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '% DESCONTO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 145.889761340000000000
          Width = 86.172947640000000000
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
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 59.716535430000000000
          Width = 86.172947640000000000
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
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Width = 59.716237640000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL HORAS')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.370130000000000000
          Width = 512.504210390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 53.472480000000000000
          Width = 236.598520390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 53.472480000000000000
          Width = 236.598520390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
          WordWrap = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 55.181080390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TOTALHORAS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_TOTALHORAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 9.338582670000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TOTALPRODUTOS'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_TOTALPRODUTOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 9.338582670000000000
          Width = 74.078730390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TOTALSERVICOS'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_TOTALSERVICOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 9.338582670000000000
          Width = 74.078730390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DESCPORC'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DESCPORC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 9.338582670000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DESCVALOR'
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_DESCVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 9.338582670000000000
          Width = 100.535440390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object DS02: TDataSource
    DataSet = QY02
    Left = 120
    Top = 256
  end
  object frxDBDataset2b: TfrxDBDataset
    UserName = 'frxDBDataset2b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SEI_DESCRICAO=SEI_DESCRICAO'
      'SEI_PRODUTO=SEI_PRODUTO'
      'SEI_QUANTIDADE=SEI_QUANTIDADE'
      'SEI_UNIDADE=SEI_UNIDADE'
      'SEI_VALORUNIT=SEI_VALORUNIT'
      'SEI_VALORTOTAL=SEI_VALORTOTAL')
    DataSet = QY02b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 304
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CODIGO=SER_CODIGO'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CPF=CLI_CPF'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_FONE1=CLI_FONE1'
      'CLI_NOME=CLI_NOME'
      'CLI_NUMERO=CLI_NUMERO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_DTNOTA=EQP_DTNOTA'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_NOTA=EQP_NOTA'
      'EQP_SERIE=EQP_SERIE'
      'EQP_TAMANHO=EQP_TAMANHO'
      'VEN_NOME=VEN_NOME')
    DataSet = QY03
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
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
    ReportOptions.Name = 'Ordem de servi'#231'o A5 paisagem'
    ReportOptions.LastChange = 44623.624259340280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  if Trim(<frxDBDataset3."CLI_CNPJ">) <> '#39#39' then'
      '  Memo56.DataField:='#39'CLI_CNPJ'#39' else      '
      '  Memo56.DataField:='#39'CLI_CPF'#39';'
      ''
      '  if <frxDBDataset3."SER_STATUS"> = '#39'A'#39' then'
      '  begin'
      '    Memo74.Visible:=False;'
      
        '    Memo77.Visible:=False;                                      ' +
        '                      '
      '  end else'
      '  begin'
      '    Memo74.Visible:=True;          '
      
        '    Memo77.Visible:=True;                                       ' +
        '                     '
      '  end;              '
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
      end
      item
        Name = 'RODAPE'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
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
        Frame.Width = 0.500000000000000000
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
          Width = 626.488250010000000000
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
          Top = 17.456694140000000000
          Width = 626.488250010000000000
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
          Left = 655.976965000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 626.488250010000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 528.220470010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
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
        Height = 18.897650000000000000
        Top = 582.047620000000000000
        Width = 755.906000000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 226.435683340000000000
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 617.110390000000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER03 - Runtime Sistemas')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 678.803530390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 415.748031500000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 66.141759130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 66.141759130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 188.976331570000000000
          Width = 377.952755910000000000
          Height = 175.748129130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO / SERVI'#199'O SOLICITADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 75.480341800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 50.913412670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 75.480341800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NUMERO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 529.354396610000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 66.141759130000000000
          Width = 234.330811180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'COMPLEMENTO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 604.945270000000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SENHA ONLINE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 41.574798270000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 66.141727400000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PREV. ENTREGA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 90.708656540000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708688270000000000
          Width = 185.196850393700800000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196850390000000000
          Top = 90.708688270000000000
          Width = 185.196850390000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 90.708688270000000000
          Width = 117.165354330000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 90.708688270000000000
          Width = 75.590551180000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149606300000000000
          Top = 90.708688270000000000
          Width = 117.165354330000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01'
            '')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842546540000000000
          Width = 302.362204724409400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362287720000000000
          Top = 139.842546540000000000
          Width = 151.181102360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 164.409475670000000000
          Width = 302.362204724409400000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362287720000000000
          Top = 164.409475670000000000
          Width = 151.181087720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#218'MERO NF')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543375430000000000
          Top = 139.842546540000000000
          Width = 151.181102360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 164.409475670000000000
          Width = 151.181102360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TAMANHO')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724687720000000000
          Top = 139.842610000000000000
          Width = 75.590502360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543375430000000000
          Top = 164.409475670000000000
          Width = 151.181102360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA NF')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 50.913412670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 532.648420890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 451.968994570000000000
          Top = 75.480341800000000000
          Width = 226.771800000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_COMPLEMENTO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.023622050000000000
          Top = 100.047270940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 188.196850390000000000
          Top = 100.047270940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 448.984540000000000000
          Top = 100.047270940000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 374.811070000000000000
          Top = 100.047270940000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 566.393871650000000000
          Top = 100.047270940000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 149.181129210000000000
          Width = 297.071000390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 149.181129210000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 173.748058340000000000
          Width = 168.566980390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 173.748058340000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_NOTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 149.181129210000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 607.724800000000000000
          Top = 173.748058340000000000
          Width = 145.889800390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_TAMANHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 149.181192670000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 173.748058340000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."EQP_DTNOTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 608.239020890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_SENHAONLINE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_SENHAONLINE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 50.913380940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 75.480310070000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTPREVISAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 100.047239210000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 196.535560000000000000
          Width = 372.661600390000000000
          Height = 164.409546460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 188.976331570000000000
          Width = 377.952755910000000000
          Height = 175.748129130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'SERVI'#199'O EFETUADO')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 380.953000000000000000
          Top = 196.535560000000000000
          Width = 372.661600390000000000
          Height = 164.409546460000000000
          DataField = 'SER_CONSERTO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."SER_CONSERTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 113.385875590000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DO CLIENTE')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 680.535870000000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 683.829620890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_SENHAONLINE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."SER_SENHAONLINE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 41.574830000000000000
          Width = 234.330811180000000000
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
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 451.968994570000000000
          Top = 50.913412670000000000
          Width = 226.771800000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 124.724490000000000000
          Width = 136.063055590000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DO PRODUTO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 397.409710000000000000
          Width = 353.763950390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 364.724436300000000000
          Width = 151.181102360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504442280000000000
          Top = 374.173255200000000000
          Width = 145.889800390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_VALORTOTAL'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 139.842610000000000000
          Width = 75.590502360000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 684.095042280000000000
          Top = 149.181192670000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."SER_KMATUAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CODIGO=SER_CODIGO'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_TECNICO=SER_TECNICO'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CPF=CLI_CPF'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_FONE1=CLI_FONE1'
      'CLI_NOME=CLI_NOME'
      'CLI_NUMERO=CLI_NUMERO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_DTNOTA=EQP_DTNOTA'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_NOTA=EQP_NOTA'
      'EQP_SERIE=EQP_SERIE'
      'VEN_NOME=VEN_NOME')
    DataSet = QY04
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 112
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
    ReportOptions.Name = 'Ordem de servi'#231'o A5 paisagem 2 vias'
    ReportOptions.LastChange = 44623.694219328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      '  CarregarLogoSVGFast(Picture2);'
      ''
      '  if Trim(<frxDBDataset4."CLI_CNPJ">) <> '#39#39' then'
      '  begin              '
      '    Memo58.DataField:='#39'CLI_CNPJ'#39';  '
      '    Memo110.DataField:='#39'CLI_CNPJ'#39';'
      '  end else'
      '  begin              '
      '    Memo58.DataField:='#39'CLI_CPF'#39';'
      '    Memo110.DataField:='#39'CLI_CPF'#39';        '
      '  end;                  '
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
        Name = 'RODAPE'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 982.677165350000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716540000000000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 33.905511800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 33.905511800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NUMERO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315126610000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393700790000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 185.196850390000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196850390000000000
          Top = 49.133858270000000000
          Width = 185.196850390000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984251970000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 234.330747720000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 49.133858270000000000
          Width = 234.330708660000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 73.700787400000000000
          Width = 151.181087720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039355430000000000
          Top = 73.700787400000000000
          Width = 120.944847720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 73.700787400000000000
          Width = 136.062967720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 73.700787400000000000
          Width = 86.929077720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 232.440944880000000000
          Width = 755.905511810000000000
          Height = 196.535433070000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ATENDIMENTOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 243.449084960000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 268.015804170000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 292.582733310000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 317.149662440000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 341.716864960000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 9.338582670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 374.929133860000000000
          Top = 58.472440940000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.023622050000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149970000000000000
          Top = 33.905511800000000000
          Width = 108.094500390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 448.448911650000000000
          Top = 33.905511800000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 448.984540000000000000
          Top = 9.338582670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 450.401670000000000000
          Top = 58.472440940000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 58.472440940000000000
          Width = 179.905570390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 83.039370070000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 83.039370070000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 622.842920000000000000
          Top = 83.039370070000000000
          Width = 130.771680390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_ACESSORIOS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 83.039370070000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 33.905511800000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 58.472440940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 107.606299210000000000
          Width = 750.614600390000000000
          Height = 122.834716460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 395.409814960000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 395.409814960000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 412.307464960000000000
          Width = 712.819300390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 427.645991500000000000
          Width = 226.435683340000000000
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 617.110390000000000000
          Top = 427.645991500000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER04 - Runtime Sistemas')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Top = 472.440944881889800000
          Width = 755.905511810000000000
          Height = 64.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 126.614173228346500000
          Top = 521.952755905511800000
          Width = 528.220470010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 561.260189140000000000
          Width = 75.590551180000000000
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
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Top = 561.260189140000000000
          Width = 370.393715430000000000
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
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = 536.693260000000000000
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 634.960976540000000000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 570.598771810000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_ENDERECO"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 546.031842670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 570.598771810000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NUMERO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315126610000000000
          Top = 536.693260000000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393700790000000000
          Top = 585.827118270000000000
          Width = 75.590551180000000000
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
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 561.260189140000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 585.827118270000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Top = 585.827118270000000000
          Width = 185.196850390000000000
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
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196850390000000000
          Top = 585.827118270000000000
          Width = 185.196850390000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 561.260189140000000000
          Width = 117.165354330000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984251970000000000
          Top = 561.260189140000000000
          Width = 117.165354330000000000
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
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 536.693260000000000000
          Width = 234.330747720000000000
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
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 585.827118270000000000
          Width = 234.330708660000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Top = 610.394047410000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 610.394047410000000000
          Width = 151.181087720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039355430000000000
          Top = 610.394047410000000000
          Width = 120.944847720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 610.394047410000000000
          Width = 136.062967720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 610.394047410000000000
          Width = 86.929077720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Top = 769.134200000000000000
          Width = 755.905511810000000000
          Height = 196.535420870000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ATENDIMENTOS')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Top = 780.362814960000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Top = 804.929534170000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Top = 829.496463310000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Top = 854.063392440000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Top = 878.630594960000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '____/____/________  ____:____ - ____:____  _____________________' +
              '_____________________________________________________')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 546.031842670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 546.031842670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 374.929133860000000000
          Top = 595.165700940000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 3.023622050000000000
          Top = 595.165700940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 595.165700940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149970000000000000
          Top = 570.598771810000000000
          Width = 108.094500390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 448.448911650000000000
          Top = 570.598771810000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 448.984540000000000000
          Top = 546.031842670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 450.401670000000000000
          Top = 595.165700940000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 595.165700940000000000
          Width = 179.905570390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 619.732630080000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 619.732630080000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 619.732630080000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 622.842920000000000000
          Top = 619.732630080000000000
          Width = 130.771680390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_ACESSORIOS'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 619.732630080000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 570.598771810000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 595.165700940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 6.779530000000000000
          Top = 644.409795440000000000
          Width = 750.614600390000000000
          Height = 122.834716460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 933.323544960000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 933.323544960000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[HEADER1]')
          ParentFont = False
          WordWrap = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 949.221194960000000000
          Width = 712.819300390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 474.330708661417300000
          Width = 120.944881890000000000
          Height = 60.472440940000000000
          Center = True
          Frame.Typ = []
          Stretched = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 126.842765000000000000
          Top = 472.440944881889800000
          Width = 626.488250010000000000
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
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 126.509431670000000000
          Top = 489.826771653543300000
          Width = 626.488250010000000000
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
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 655.976965000000000000
          Top = 519.939981600000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 505.700787401574800000
          Width = 626.488250010000000000
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
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 964.559721500000000000
          Width = 226.435683340000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 617.110390000000000000
          Top = 964.559721500000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER04 - Runtime Sistemas')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 457.323171500000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 73.700787400000000000
          Width = 86.929077720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693372280000000000
          Top = 83.039370070000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_KMATUAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_KMATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 610.394047410000000000
          Width = 86.929077720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693372280000000000
          Top = 619.732630080000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_KMATUAL'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."SER_KMATUAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 528.220470010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
          ParentFont = False
        end
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
          Top = -0.000000000000000003
          Width = 626.488250010000000000
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
          Top = 17.456694140000000000
          Width = 626.488250010000000000
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
          Left = 655.976965000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 626.488250010000000000
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
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CODIGO=SER_CODIGO'
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DESCPORC=SER_DESCPORC'
      'SER_DESCVALOR=SER_DESCVALOR'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_TOTALHORAS=SER_TOTALHORAS'
      'SER_TOTALPRODUTOS=SER_TOTALPRODUTOS'
      'SER_TOTALSERVICOS=SER_TOTALSERVICOS'
      'SER_VALOR=SER_VALOR'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_CPF=CLI_CPF'
      'CLI_NOME=CLI_NOME'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_FONE1=CLI_FONE1'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_NUMERO=CLI_NUMERO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE'
      'VEN_NOME=VEN_NOME')
    DataSet = QY05
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
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
    ReportOptions.Name = 'Ordem de servi'#231'o A4 ABERTA'
    ReportOptions.LastChange = 44624.546651608800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      ''
      '  if Trim(<frxDBDataset5."CLI_CNPJ">) <> '#39#39' then'
      '  Memo58.DataField:='#39'CLI_CNPJ'#39' else           '
      '  Memo58.DataField:='#39'CLI_CPF'#39';'
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
        Name = 'HEADER4'
        Value = Null
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'RODAPE'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 795.969009210000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716535433100000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 33.905511800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 33.905511800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NUMERO'
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
            '[frxDBDataset5."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315126610000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393700790000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 185.196850390000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196850390000000000
          Top = 49.133858270000000000
          Width = 185.196850390000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984251970000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 234.330747720000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 49.133858270000000000
          Width = 234.330708660000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 73.700787400000000000
          Width = 151.181087720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039355430000000000
          Top = 73.700787400000000000
          Width = 120.944847720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 73.700787400000000000
          Width = 147.401557720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 73.700787400000000000
          Width = 94.488137720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 393.071120000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 404.409404880000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 428.976334020000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 453.543263150000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Top = 478.110192280000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 502.677121420000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 9.338582670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset5."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 374.929133860000000000
          Top = 58.472440940000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.023622050000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149970000000000000
          Top = 33.905511800000000000
          Width = 108.094500390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 448.448911650000000000
          Top = 33.905511800000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 448.984540000000000000
          Top = 9.338582670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 450.401670000000000000
          Top = 58.472440940000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 58.472440940000000000
          Width = 179.905570390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 83.039370070000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_DESCRICAO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MARCA'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 83.039370070000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_MODELO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 611.504330000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_ACESSORIOS'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 83.039370070000000000
          Width = 85.417320390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'EQP_SERIE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 33.905511800000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
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
            '[frxDBDataset5."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 58.472440940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
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
            '[frxDBDataset5."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 106.716493940000000000
          Width = 750.614600390000000000
          Height = 122.834716460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 232.440944881890000000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONSERTO EFETUADO')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 6.779530000000000000
          Top = 240.889722280000000000
          Width = 750.614600390000000000
          Height = 122.834716460000000000
          DataField = 'SER_CONSERTO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_CONSERTO"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Top = 374.173470000000000000
          Width = 744.566921810000000000
          Height = 17.007869130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 393.071120000000000000
          Width = 340.157211810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 393.071120000000000000
          Width = 37.794811810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 393.071120000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 393.071120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR UNIT')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 393.071120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Top = 527.244050550000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Top = 551.811380000000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Top = 604.724800000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 604.724800000000000000
          Width = 453.543111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 604.724800000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'HORA INICIAL')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 604.724800000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'HORA FINAL')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Top = 616.063390000000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Top = 640.630319140000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Top = 665.197248270000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Top = 689.764177400000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Top = 714.331106540000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Top = 738.898035670000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Top = 763.465365120000000000
          Width = 755.905511810000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Top = 585.827150000000000000
          Width = 744.566921810000000000
          Height = 17.007869130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'HORAS')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 73.700787400000000000
          Width = 68.031427720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252432280000000000
          Top = 83.039370070000000000
          Width = 58.960610390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_KMATUAL'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."SER_KMATUAL"]')
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
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
        Height = 56.692950000000000000
        Top = 1001.575450000000000000
        Width = 755.906000000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 38.574830000000000000
          Width = 302.026283340000000000
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 617.110390000000000000
          Top = 38.574830000000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER05 - Runtime Sistemas')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 38.354423460000000000
          Width = 712.819300390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.559123460000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset5."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 528.220470010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
          ParentFont = False
        end
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
          Top = -0.000000000000000003
          Width = 626.488250010000000000
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
          Top = 17.456694140000000000
          Width = 626.488250010000000000
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
          Left = 655.976965000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 626.488250010000000000
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
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SER_ACESSORIOS=SER_ACESSORIOS'
      'SER_CLIENTE=SER_CLIENTE'
      'SER_CODIGO=SER_CODIGO'
      'SER_CONSERTO=SER_CONSERTO'
      'SER_DEFEITO=SER_DEFEITO'
      'SER_DESCPORC=SER_DESCPORC'
      'SER_DESCVALOR=SER_DESCVALOR'
      'SER_DTENTRADA=SER_DTENTRADA'
      'SER_DTPREVISAO=SER_DTPREVISAO'
      'SER_DTSAIDA=SER_DTSAIDA'
      'SER_EQUIPAMENTO=SER_EQUIPAMENTO'
      'SER_KMATUAL=SER_KMATUAL'
      'SER_LOCALIZACAO=SER_LOCALIZACAO'
      'SER_SENHAONLINE=SER_SENHAONLINE'
      'SER_STATUS=SER_STATUS'
      'SER_TECNICO=SER_TECNICO'
      'SER_TOTALHORAS=SER_TOTALHORAS'
      'SER_TOTALPRODUTOS=SER_TOTALPRODUTOS'
      'SER_TOTALSERVICOS=SER_TOTALSERVICOS'
      'SER_VALOR=SER_VALOR'
      'SER_VALORTOTAL=SER_VALORTOTAL'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CPF=CLI_CPF'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_FONE1=CLI_FONE1'
      'CLI_NOME=CLI_NOME'
      'CLI_NUMERO=CLI_NUMERO'
      'EQP_ACESSORIOS=EQP_ACESSORIOS'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EQP_MARCA=EQP_MARCA'
      'EQP_MODELO=EQP_MODELO'
      'EQP_SERIE=EQP_SERIE'
      'VEN_NOME=VEN_NOME')
    DataSet = QY06
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 112
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
    ReportOptions.Name = 'Ordem de servi'#231'o A4 ABERTA'
    ReportOptions.LastChange = 44627.598754641210000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      ''
      '  if Trim(<frxDBDataset6."CLI_CNPJ">) <> '#39#39' then'
      '  Memo58.DataField:='#39'CLI_CNPJ'#39' else           '
      '  Memo58.DataField:='#39'CLI_CPF'#39';'
      ''
      '     '
      '  //if <frxDBDataset6c."RecordCount"> = 0 then'
      
        '  if MasterData2.DataSet.RecordCount = 0 then                   ' +
        '        '
      '  begin'
      '    Child1.ToNRows:=42;'
      '  //  MasterData2.DataSet:=nil;'
      
        '  //  MasterData2.RowCount:=3;                                  ' +
        '                   '
      '  end;            '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  set('#39'FREE'#39','#39#39#39#39' + FloatToStr(Engine.FreeSpace) + '#39#39#39#39');  '
      '  //while (Engine.FreeSpace-350) > 2 do'
      '  {repeat                                 '
      '    Engine.ShowBand(Child2);'
      
        '  until Engine.FreeSpace < 100;}                                ' +
        '                                                    '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  set('#39'FREE'#39','#39#39#39#39' + FloatToStr(Engine.FreeSpace) + '#39#39#39#39');  '
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
      end
      item
        DataSet = frxDBDataset6b
        DataSetName = 'frxDBDataset6b'
      end
      item
        DataSet = frxDBDataset6c
        DataSetName = 'frxDBDataset6c'
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
        Name = 'HEADER4'
        Value = Null
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'RODAPE'
        Value = ''
      end
      item
        Name = 'FREE'
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
      DataSet = frxDBDataset6
      DataSetName = 'frxDBDataset6'
      Frame.Typ = []
      MirrorMode = []
      TitleBeforeHeader = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
        Height = 22.677180000000000000
        Top = 978.898270000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 0.779530000000000000
          Width = 302.026283340000000000
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 617.110390000000000000
          Top = 0.779530000000000000
          Width = 136.199321290000000000
          Height = 13.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SER06 - Runtime Sistemas')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 49.278220100000000000
          Width = 528.220470010000000000
          Height = 14.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[HEADER4]')
          ParentFont = False
        end
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
          Top = -0.000000000000000003
          Width = 626.488250010000000000
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
          Top = 17.456694140000000000
          Width = 626.488250010000000000
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
          Left = 655.976965000000000000
          Top = 49.278220100000000000
          Width = 97.354050010000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Servi'#231'o')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 126.504020000000000000
          Top = 33.236240000000000000
          Width = 626.488250010000000000
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
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 619.842920000000000000
        Width = 755.906000000000000000
        ToNRows = 30
        ToNRowsMode = rmCount
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 75.590111810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 298.582381810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 37.794811810000000000
          Height = 11.338582680000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 75.590111810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 113.385411810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 113.385411810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574341810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338582680000000000
        Top = 763.465060000000000000
        Width = 755.906000000000000000
        ToNRows = 10
        ToNRowsMode = rmCount
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590111810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 340.157211810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 113.385411810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 113.385411810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 113.385411810000000000
          Height = 11.338582677165350000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 94.488250000000000000
        Top = 861.732840000000000000
        Width = 755.906000000000000000
        PrintAtBottom = True
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 125.858267720000000000
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
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 125.858267720000000000
          Top = 15.118120000000000000
          Width = 125.858267720000000000
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
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 251.716535430000000000
          Top = 15.118120000000000000
          Width = 125.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL HORAS')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 377.574803150000000000
          Top = 15.118120000000000000
          Width = 125.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '% DESCONTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 503.433070870000000000
          Top = 15.118120000000000000
          Width = 125.858267720000000000
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
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 629.291338580000000000
          Top = 15.118120000000000000
          Width = 126.614173230000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
          Memo.UTF8W = (
            '[frxDBDataset6."SER_TOTALPRODUTOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 129.504020000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
          Memo.UTF8W = (
            '[frxDBDataset6."SER_TOTALSERVICOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 255.228510000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_TOTALHORAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 380.732530000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_DESCPORC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 507.677490000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
          Memo.UTF8W = (
            '[frxDBDataset6."SER_DESCVALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 633.181510000000000000
          Top = 25.456702670000000000
          Width = 118.299207720000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
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
          Memo.UTF8W = (
            '[frxDBDataset6."SER_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Width = 744.566921810000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 76.929253460000000000
          Width = 312.189120390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 76.929253460000000000
          Width = 395.338780390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RODAPE]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 370.393703230000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393715430000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 370.393715430000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984515590000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716540000000000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DEFEITO ALEGADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 33.905511800000000000
          Width = 362.834855590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_ENDERECO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 9.338582670000000000
          Width = 38.010342460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CLIENTE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 376.378170000000000000
          Top = 33.905511800000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NUMERO'
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
            '[frxDBDataset6."CLI_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315126610000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393700790000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 24.566929130000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA ENTRADA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 49.133858270000000000
          Width = 75.590551180000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DATA SA'#205'DA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 185.196850390000000000
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
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196850390000000000
          Top = 49.133858270000000000
          Width = 185.196850390000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CIDADE / UF')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FONE 01')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984251970000000000
          Top = 24.566929130000000000
          Width = 117.165354330000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 234.330747720000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 49.133858270000000000
          Width = 234.330708660000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#201'CNICO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700787400000000000
          Width = 173.858267720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 73.700787400000000000
          Width = 151.181087720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039355430000000000
          Top = 73.700787400000000000
          Width = 120.944847720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 73.700787400000000000
          Width = 162.519677720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ACESS'#211'RIOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984427720000000000
          Top = 73.700787400000000000
          Width = 86.929077720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 9.338582670000000000
          Width = 397.065692460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 9.338582670000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_CODIGO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6."SER_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 374.929133860000000000
          Top = 58.472440940000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.023622050000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 58.472440940000000000
          Width = 178.713976670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CIDADE'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 566.149970000000000000
          Top = 33.905511800000000000
          Width = 108.094500390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_FONE1'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_FONE1"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 448.448911650000000000
          Top = 33.905511800000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_CNPJ"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 448.984540000000000000
          Top = 9.338582670000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."CLI_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 450.401670000000000000
          Top = 58.472440940000000000
          Width = 40.062960390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_TECNICO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 58.472440940000000000
          Width = 179.905570390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 83.039370070000000000
          Width = 164.787450390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."EQP_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 83.039370070000000000
          Width = 142.110270390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."EQP_MARCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 83.039370070000000000
          Width = 111.874030390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."EQP_MODELO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 596.386210000000000000
          Top = 83.039370070000000000
          Width = 157.228390390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_ACESSORIOS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 83.039370070000000000
          Width = 77.858260390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."EQP_SERIE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 33.905511800000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTENTRADA'
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
            '[frxDBDataset6."SER_DTENTRADA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 683.609150890000000000
          Top = 58.472440940000000000
          Width = 68.246582460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'SER_DTSAIDA'
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
            '[frxDBDataset6."SER_DTSAIDA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 106.716493940000000000
          Width = 750.614600390000000000
          Height = 122.834716460000000000
          DataField = 'SER_DEFEITO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_DEFEITO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 232.440944880000000000
          Width = 755.905511810000000000
          Height = 134.173299130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONSERTO EFETUADO')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 240.889722280000000000
          Width = 754.394130390000000000
          Height = 122.834716460000000000
          DataField = 'SER_CONSERTO'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_CONSERTO"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 73.700787400000000000
          Width = 60.472367720000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693372280000000000
          Top = 83.039370070000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6."SER_KMATUAL"]')
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
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 585.827150000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Child = frxReport6.Child1
        DataSet = frxDBDataset6b
        DataSetName = 'frxDBDataset6b'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_PRODUTO'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 298.582381810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_DESCRICAO'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 37.794811810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_UNIDADE'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_QUANTIDADE'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_VALORUNIT'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEI_VALORTOTAL'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574341810000000000
          Height = 11.338450870000000000
          OnBeforePrint = 'Memo123OnBeforePrint'
          Clipped = False
          DataField = 'SEI_SEQUENCIA'
          DataSet = frxDBDataset6b
          DataSetName = 'frxDBDataset6b'
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6b."SEI_SEQUENCIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 729.449290000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        Child = frxReport6.Child2
        DataSet = frxDBDataset6c
        DataSetName = 'frxDBDataset6c'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 340.157211810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset6c."VEN_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 0.000000000000000056
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEH_HORAINICIO'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6c."SEH_HORAINICIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 0.000000000000000056
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEH_HORAFIM'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6c."SEH_HORAFIM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 0.000000000000000056
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEH_TOTALHORAS'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6c."SEH_TOTALHORAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          DataField = 'SEH_DATA'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset6c."SEH_DATA"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 680.315400000000000000
        Width = 755.906000000000000000
        ShiftEngine = seLinear
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 15.118120000000000000
          Width = 340.157211810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 15.118120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA INICIAL')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 15.118120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA FINAL')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Width = 744.566921810000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'HORAS')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 15.118120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        ReprintOnNewPage = True
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118120000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Width = 744.566921810000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 15.118120000000000000
          Width = 298.582381810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 15.118120000000000000
          Width = 37.794811810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 75.590111810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 15.118120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR UNIT')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 15.118120000000000000
          Width = 113.385411810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 41.574341810000000000
          Height = 11.338450870000000000
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          HAlign = haCenter
          Memo.UTF8W = (
            'ITEM')
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
        Height = 3.779527559055118000
        Top = 653.858690000000000000
        Width = 755.906000000000000000
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 3.779527559055118000
        Top = 797.480830000000000000
        Width = 755.906000000000000000
      end
    end
  end
  object DS06: TDataSource
    DataSet = QY06
    Left = 408
    Top = 256
  end
  object frxDBDataset6b: TfrxDBDataset
    UserName = 'frxDBDataset6b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SEI_CODIGO=SEI_CODIGO'
      'SEI_DESCRICAO=SEI_DESCRICAO'
      'SEI_PRODUTO=SEI_PRODUTO'
      'SEI_QUANTIDADE=SEI_QUANTIDADE'
      'SEI_SEQUENCIA=SEI_SEQUENCIA'
      'SEI_TIPO=SEI_TIPO'
      'SEI_UNIDADE=SEI_UNIDADE'
      'SEI_VALORUNIT=SEI_VALORUNIT'
      'SEI_VALORTOTAL=SEI_VALORTOTAL')
    DataSet = QY06b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 304
  end
  object frxDBDataset6c: TfrxDBDataset
    UserName = 'frxDBDataset6c'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SEH_DATA=SEH_DATA'
      'SEH_HORAFIM=SEH_HORAFIM'
      'SEH_HORAINICIO=SEH_HORAINICIO'
      'SEH_TOTALHORAS=SEH_TOTALHORAS'
      'VEN_NOME=VEN_NOME')
    DataSet = QY06c
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 304
  end
  object QY12: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR12
    SQL.Strings = (
      'select '
      'SER_CLIENTE,'
      'SER_CODIGO,'
      'SER_VALORTOTAL,'
      'SER_DTENTRADA,'
      'SEI_PRODUTO,'
      'SEI_VALORUNIT,'
      'SEI_QUANTIDADE,'
      'SEI_VALORTOTAL,'
      'CLI_NOME,'
      'PRO_NOME'
      'from SERVICOSITENS'
      'left join SERVICOS on SEI_SERVICO=SER_CODIGO'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join PRODUTOS on SEI_PRODUTO=PRO_CODIGO'
      'where SER_DTENTRADA between :datainicial and :datafinal'
      'and SEI_PRODUTO=:codigo and SER_STATUS='#39'B'#39
      'order by PRO_NOME, SER_DTENTRADA'
      '')
    Left = 840
    Top = 368
    ParamData = <
      item
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        Name = 'DATAFINAL'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR12: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 840
    Top = 416
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CLIENTE,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_LOCALIZACAO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TECNICO,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'CLI_ENDERECO||'#39', '#39'||CLI_NUMERO as ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CIDADEUF,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_FONE2, '
      'CLI_FONE3, '
      'CLI_CONTATO,'
      'CLI_COMPLEMENTO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_SERIE,'
      'VEN_NOME '
      'from SERVICOS '
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CLIENTE,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DESCPORC,'
      'SER_DESCVALOR,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_LOCALIZACAO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TECNICO,'
      'SER_TOTALHORAS,'
      'SER_TOTALSERVICOS,'
      'SER_TOTALPRODUTOS,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'CLI_ENDERECO||'#39', '#39'||CLI_NUMERO as ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CIDADEUF,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_FONE2, '
      'CLI_FONE3, '
      'CLI_CONTATO,'
      'CLI_COMPLEMENTO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_SERIE,'
      'VEN_NOME '
      'from SERVICOS '
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS ON SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 120
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object QY02b: TFDQuery
    MasterSource = DS02
    MasterFields = 'SER_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR02b
    SQL.Strings = (
      'select'
      'SEI_DESCRICAO,'
      'SEI_PRODUTO,'
      'SEI_QUANTIDADE,'
      'SEI_UNIDADE,'
      'SEI_VALORUNIT,'
      'SEI_VALORTOTAL'
      'from SERVICOSITENS'
      'where SEI_SERVICO=:SER_CODIGO'
      '')
    Left = 120
    Top = 352
    ParamData = <
      item
        Name = 'SER_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR02b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 400
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TECNICO,'
      'SER_VALORTOTAL,'
      'CLI_BAIRRO,'
      'CLI_CEP,'
      'CLI_CIDADE||'#39' - '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_CNPJ,'
      'CLI_CODIGO,'
      'CLI_COMPLEMENTO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_ENDERECO,'
      'CLI_FONE1,'
      'CLI_NOME,'
      'CLI_NUMERO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_DTNOTA,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_NOTA,'
      'EQP_SERIE,'
      'EQP_TAMANHO,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 192
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
  end
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_SENHAONLINE,'
      'SER_TECNICO,'
      'SER_VALORTOTAL,'
      'CLI_BAIRRO,'
      'CLI_CEP,'
      'CLI_CIDADE||'#39' - '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_CNPJ,'
      'CLI_CODIGO,'
      'CLI_COMPLEMENTO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_ENDERECO,'
      'CLI_FONE1,'
      'CLI_NOME,'
      'CLI_NUMERO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_DTNOTA,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_NOTA,'
      'EQP_SERIE,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 264
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 208
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CODIGO,'
      'SER_CLIENTE,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DESCPORC,'
      'SER_DESCVALOR,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_LOCALIZACAO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TECNICO,'
      'SER_TOTALHORAS,'
      'SER_TOTALPRODUTOS,'
      'SER_TOTALSERVICOS,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_CNPJ,'
      'CLI_CPF,'
      'CLI_NOME,'
      'CLI_ENDERECO,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_FONE1, '
      'CLI_CONTATO,'
      'CLI_COMPLEMENTO,'
      'CLI_NUMERO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_SERIE,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 336
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      'select '
      'SER_ACESSORIOS,'
      'SER_CLIENTE,'
      'SER_CODIGO,'
      'SER_CONSERTO,'
      'SER_DEFEITO,'
      'SER_DESCPORC,'
      'SER_DESCVALOR,'
      'SER_DTENTRADA,'
      'SER_DTPREVISAO,'
      'SER_DTSAIDA,'
      'SER_EQUIPAMENTO,'
      'SER_KMATUAL,'
      'SER_LOCALIZACAO,'
      'SER_SENHAONLINE,'
      'SER_STATUS,'
      'SER_TECNICO,'
      'SER_TOTALHORAS,'
      'SER_TOTALPRODUTOS,'
      'SER_TOTALSERVICOS,'
      'SER_VALOR,'
      'SER_VALORTOTAL,'
      'CLI_BAIRRO, '
      'CLI_CEP,'
      'CLI_CIDADE||'#39' / '#39'||CLI_ESTADO as CLI_CIDADE,'
      'CLI_CNPJ,'
      'CLI_COMPLEMENTO,'
      'CLI_CONTATO,'
      'CLI_CPF,'
      'CLI_ENDERECO,'
      'CLI_FONE1, '
      'CLI_NOME,'
      'CLI_NUMERO,'
      'EQP_ACESSORIOS,'
      'EQP_DESCRICAO,'
      'EQP_MARCA,'
      'EQP_MODELO,'
      'EQP_SERIE,'
      'VEN_NOME'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'where SER_CODIGO=:codigo'
      '')
    Left = 408
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 208
  end
  object QY06b: TFDQuery
    MasterSource = DS06
    MasterFields = 'SER_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR06b
    SQL.Strings = (
      'select '
      'SEI_CODIGO,'
      'SEI_DESCRICAO,'
      'SEI_PRODUTO,'
      'SEI_QUANTIDADE,'
      'SEI_SEQUENCIA,'
      'SEI_TIPO,'
      'SEI_UNIDADE,'
      'SEI_VALORUNIT,'
      'SEI_VALORTOTAL'
      'from SERVICOSITENS'
      'left join PRODUTOS on SEI_PRODUTO=PRO_CODIGO'
      'where SEI_SERVICO=:SER_CODIGO'
      'order by SEI_CODIGO'
      '')
    Left = 408
    Top = 352
    ParamData = <
      item
        Name = 'SER_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR06b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 400
  end
  object QY06c: TFDQuery
    MasterSource = DS06
    MasterFields = 'SER_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR06c
    SQL.Strings = (
      'select '
      'SEH_DATA, '
      'SEH_HORAFIM, '
      'SEH_HORAINICIO, '
      'SEH_TOTALHORAS,'
      'VEN_NOME'
      'from SERVICOSHORAS'
      'left join VENDEDORES on SEH_FUNCIONARIO=VEN_CODIGO'
      'where SEH_SERVICO=:SER_CODIGO'
      'order by SEH_FUNCIONARIO, SEH_DATA desc, SEH_CODIGO desc '
      '')
    Left = 472
    Top = 352
    ParamData = <
      item
        Name = 'SER_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR06c: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 472
    Top = 400
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select '
      'SER_CLIENTE, '
      'SER_CODIGO, '
      'SER_DTENTRADA,'
      'SER_DTPREVISAO, '
      'SER_DTTECNICO, '
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO, '
      'SER_LOCALIZACAO,'
      'SER_STATUS, '
      'SER_TECNICO, '
      'CLI_NOME, '
      'EQP_DESCRICAO,'
      'EQP_MARCA, '
      'EQP_MODELO, '
      'VEN_NOME '
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'order by VEN_NOME, CLI_NOME, SER_CODIGO'
      '')
    Left = 480
    Top = 160
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
      'SER_CLIENTE, '
      'SER_CODIGO, '
      'SER_DTENTRADA,'
      'SER_DTPREVISAO, '
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO,'
      'SER_STATUS, '
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'EQP_DESCRICAO,'
      'EQP_MARCA, '
      'EQP_MODELO, '
      'EQP_SERIE'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'order by CLI_NOME, SER_CLIENTE, SER_CODIGO'
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
  object QY08b: TFDQuery
    MasterSource = DS08
    MasterFields = 'SER_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR08b
    SQL.Strings = (
      'select '
      'SEI_PRODUTO,'
      'SEI_DESCRICAO,'
      'SEI_UNIDADE,'
      'SEI_QUANTIDADE,'
      'SEI_VALORUNIT,'
      'SEI_VALORTOTAL'
      'from SERVICOSITENS'
      'where SEI_SERVICO=:SER_CODIGO'
      'order by SEI_DESCRICAO'
      '')
    Left = 552
    Top = 352
    ParamData = <
      item
        Name = 'SER_CODIGO'
        ParamType = ptInput
      end>
  end
  object TR08b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 552
    Top = 400
  end
  object QY10: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR10
    SQL.Strings = (
      'select '
      'SER_CLIENTE,'
      'SER_CODIGO, '
      'SER_DTENTRADA,'
      'SER_DTPREVISAO, '
      'SER_DTTECNICO, '
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO,'
      'SER_LOCALIZACAO,'
      'SER_STATUS, '
      'SER_TECNICO, '
      'CLI_NOME, '
      'EQP_DESCRICAO, '
      'EQP_MARCA, '
      'EQP_MODELO,'
      'VEN_NOME '
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'order by VEN_NOME, CLI_NOME, SER_CODIGO'
      '')
    Left = 696
    Top = 368
  end
  object TR10: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 696
    Top = 416
  end
  object QY11: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR11
    SQL.Strings = (
      'select '
      'SER_CLIENTE, '
      'SER_CODIGO, '
      'SER_DTENTRADA,'
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO,'
      'SER_STATUS, '
      'SER_TECNICO, '
      'SER_TOTALPRODUTOS,'
      'SER_TOTALSERVICOS,'
      'SER_VALORTOTAL,'
      'CLI_NOME, '
      'EQP_DESCRICAO, '
      'VEN_NOME '
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO'
      'order by VEN_NOME, CLI_NOME'
      '')
    Left = 768
    Top = 368
  end
  object TR11: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 768
    Top = 416
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      'select '
      'SER_CLIENTE, '
      'SER_CODIGO, '
      'SER_DTENTRADA,'
      'SER_DTPREVISAO, '
      'SER_DTSAIDA, '
      'SER_EQUIPAMENTO,'
      'SER_STATUS, '
      'SER_VALORTOTAL,'
      'CLI_NOME,'
      'EQP_DESCRICAO,'
      'EQP_MARCA, '
      'EQP_MODELO, '
      'EQP_SERIE'
      'from SERVICOS'
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO'
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO'
      'order by CLI_NOME, SER_CLIENTE, SER_CODIGO'
      '')
    Left = 624
    Top = 160
  end
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 624
    Top = 208
  end
end
