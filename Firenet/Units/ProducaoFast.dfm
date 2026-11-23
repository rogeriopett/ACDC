object FormProducaoFast: TFormProducaoFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Ordens de Produ'#231#227'o'
  ClientHeight = 610
  ClientWidth = 1250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 568
    Top = 104
    Width = 638
    Height = 473
    AutoSize = False
    Caption = 
      'select '#13#10'PDC_CODIGO,'#13#10'PDC_COR,'#13#10'PDC_PRODUCAOITEM,'#13#10'PDC_PRODUTO,'#13 +
      #10'PDC_QUANTIDADE,'#13#10'PRO_NOME,'#13#10'PRO_UNIDADE,'#13#10'PDI_PRODUTO,'#13#10'PRC_QUA' +
      'NTIDADE as QTDE_PARA_UMA_PECA'#13#10'from PRODUCAOITENSCOMP'#13#10'left join' +
      ' PRODUTOS on PDC_PRODUTO=PRO_CODIGO'#13#10'left join PRODUCAOITENS on ' +
      'PDI_CODIGO=PDC_PRODUCAOITEM'#13#10'left join PRODUTOSCOMP on PRC_PRODU' +
      'TO=PDI_PRODUTO and PRC_PRODUTOCOMP=PDC_PRODUTO'#13#10'where PDC_PRODUC' +
      'AOITEM=:PDI_CODIGO'#13#10'order by PDC_CODIGO'#13#10'esse SQL acima retorna ' +
      'a composicao do item da OP e o campo PRC_QUANTIDADE '#233' a quantida' +
      'de para fazer uma pe'#231'a.'#13#10'PDC_QUANTIDADE (total para a OP) j'#225' est' +
      #225' calculada com PRD_QUANTIDADE * PDI_QUANTIDADE'#13#10#13#10'hierarquia da' +
      's tabelas de producao:'#13#10'PRODUCAO -> PRODUCAOITENS -> PRODUCAOITE' +
      'NSCOMP'#13#10'PRD_CODIGO = PK'#13#10#13#10'producaoitens.PDI_CODIGO = PK'#13#10'produc' +
      'aoitens.PDI_PRODUCAO = FK -> PRD_CODIGO'#13#10#13#10'producaoitenscomp.PDC' +
      '_PRODUCAOITEM = producaoitens.PDI_CODIGO'#13#10'producaoitenscomp.PDC_' +
      'PRODUTO'#13#10'PDI_PRODUTO = ITEM'#13#10'producaoitens.PDI_PRODUCAO = PRD_CO' +
      'DIGO (numero da OP)'
  end
  object Memo1: TMemo
    Left = 917
    Top = 8
    Width = 289
    Height = 249
    Lines.Strings = (
      '01 - Ordem de Produ'#231#227'o'
      '02 - Ordens de Produ'#231#227'o por Cliente'
      '03 - Ordens de Produ'#231#227'o por Cliente com Itens'
      '04 - Produtos Produzidos Anal'#237'tico'
      '05 - Produtos Produzidos Sint'#233'tico'
      '06 - Disponibilidade Estoque Sint'#233'tico'
      '07 - Disponibilidade Estoque Anal'#237'tico'
      '08 - Plano de Produ'#231#227'o Modelo 01'
      '09 - Disponibilidade Estoque Sint'#233'tico com Previs'#227'o')
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
      'ALM_DESCRICAO=ALM_DESCRICAO'
      'CLI_NOME=CLI_NOME'
      'DOCUMENTO=DOCUMENTO'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'PDI_ALMOXARIFADO=PDI_ALMOXARIFADO'
      'PDI_CODIGO=PDI_CODIGO'
      'PDI_PRODUTO=PDI_PRODUTO'
      'PDI_QUANTIDADE=PDI_QUANTIDADE'
      'PRD_CLIENTE=PRD_CLIENTE'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_DATABAIXA=PRD_DATABAIXA'
      'PRD_DTCADASTRO=PRD_DTCADASTRO'
      'PRD_DTPREVISAO=PRD_DTPREVISAO'
      'PRD_STATUS=PRD_STATUS'
      'PRO_OBSERVACOES=PRO_OBSERVACOES'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_NOME=PRO_NOME')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 45912.699611631940000000
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
        Frame.BottomLine.Width = 1.000000000000000000
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
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Fill.BackColor = 15790320
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 68.031496060000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 24.566929130000000000
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
            'LOCALIZA'#199#195'O')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566936450000000000
          Width = 298.582870000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FAM'#237'LIA')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 0.000007320000000005
          Width = 483.779840000000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 24.566936450000000000
          Width = 298.960629920000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'GRUPO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 0.000000000000000625
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
            'ALMOXARIFADO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 113.385900000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.204724410000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DataField = 'PDI_PRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PDI_PRODUTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 43.811026060000000000
          Top = 10.204724410000000000
          Width = 438.640522460000000000
          Height = 13.228346460000000000
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 304.362136380000000000
          Top = 34.393700780000000000
          Width = 288.378074800000000000
          Height = 13.228346460000000000
          DataField = 'GRU_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GRU_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 489.181095040000000000
          Top = 10.204724410000000000
          Width = 104.314970390000000000
          Height = 13.228346460000000000
          DataField = 'PDI_QUANTIDADE'
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
            '[frxDBDataset1."PDI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 599.543311970000000000
          Top = 10.204724410000000000
          Width = 154.960647010000000000
          Height = 13.228346460000000000
          DataField = 'ALM_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ALM_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 26.236240000000000000
          Top = 51.913427320000000000
          Width = 60.472455590000000000
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
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 88.488250000000000000
          Top = 51.913427320000000000
          Width = 266.456668500000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Top = 51.913427320000000000
          Width = 56.692925590000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 51.913427320000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '#')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 515.016080000000000000
          Top = 51.913427320000000000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 621.842920000000000000
          Top = 51.913427320000000000
          Width = 132.283525590000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 599.543311970000000000
          Top = 34.393700780000000000
          Width = 151.181117010000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_LOCALIZACAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_LOCALIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.535228030000000000
          Top = 34.393700780000000000
          Width = 292.157604800000000000
          Height = 13.228346460000000000
          DataField = 'FAM_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FAM_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 356.275820000000000000
          Top = 51.913427320000000000
          Width = 98.267755590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 51.913427320000000000
          Width = 18.897625590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C.')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Top = 51.913427320000000000
          Width = 56.692925590000000000
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
        Height = 22.677180000000000000
        Top = 483.779840000000000000
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
            'PRD01 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 434.645950000000000000
        Width = 755.906000000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.944650000000000000
          Width = 136.918676670000000000
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
        object Memo65: TfrxMemoView
          AllowVectorExport = True
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
            'TOTAL QUANTIDADE')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
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
            'TOTAL QUANTIDADE FABRICADA')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
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
            'QUANTIDADE CAIXAS')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
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
            'QUANTIDADE PE'#199'AS POR CAIXA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
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
            'PESO (KG)')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Height = 64.251978260000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 90.708661420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 10.338582670000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'PRD_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_CODIGO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 24.566929130000000000
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
            'DATA CADASTRO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 34.393693460000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DTCADASTRO'
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
            '[frxDBDataset1."PRD_DTCADASTRO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 151.181141420000000000
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
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 10.338582670000000000
          Width = 143.622081420000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 423.307360000000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.338582670000000000
          Width = 41.574830000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_CLIENTE"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 24.566929130000000000
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
            'DATA PREVIS'#195'O')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 34.393693460000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DTPREVISAO'
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
            '[frxDBDataset1."PRD_DTPREVISAO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 24.566929130000000000
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
            'DATA BAIXA')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 34.393693460000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DATABAIXA'
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
            '[frxDBDataset1."PRD_DATABAIXA"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
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
            'STATUS')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 10.338582670000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'PRD_STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_STATUS"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 10.338582670000000000
          Width = 370.393940000000000000
          Height = 13.228346460000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_NOME"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 483.779840000000000000
          Height = 24.566929130000000000
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
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.BottomLine.Color = clSilver
        Frame.BottomLine.Style = fsDot
        Height = 14.362204720000000000
        Top = 321.260050000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1a
        DataSetName = 'frxDBDataset1a'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 26.236240000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_PRODUTO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PDC_PRODUTO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 88.488250000000000000
          Width = 266.456668500000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PRO_NOME"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_QUANTIDADEUNITARIA'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."PDC_QUANTIDADEUNITARIA"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 515.016080000000000000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."PRO_UNIDADE"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 356.275820000000000000
          Width = 98.267755590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_COR'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PDC_COR"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 621.842920000000000000
          Width = 132.283525590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_LOCALIZACAO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1a."PRO_LOCALIZACAO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 18.897625590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_COMPOSTO'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1a."PDC_COMPOSTO"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 542.472790000000000000
          Width = 56.692925590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_QUANTIDADE'
          DataSet = frxDBDataset1a
          DataSetName = 'frxDBDataset1a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1a."PDC_QUANTIDADE"]')
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
        Height = 15.874015750000000000
        Top = 359.055350000000000000
        Width = 755.906000000000000000
        Stretched = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.511811020000000000
          Width = 748.346915590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRO_OBSERVACOES"]')
          ParentFont = False
        end
      end
    end
  end
  object QY01: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR01
    SQL.Strings = (
      'select'
      'ALM_DESCRICAO,'
      'CLI_NOME,'
      'iif(CLI_TIPOPESSOA='#39'J'#39',CLI_CNPJ,CLI_CPF) as DOCUMENTO,'
      'FAM_DESCRICAO,'
      'GRU_DESCRICAO,'
      'PDI_ALMOXARIFADO,'
      'PDI_CODIGO,'
      'PDI_PRODUTO,'
      'PDI_QUANTIDADE,'
      'PRD_CLIENTE,'
      'PRD_CODIGO,'
      'PRD_DATABAIXA,'
      'PRD_DTCADASTRO,'
      'PRD_DTPREViSAO,'
      'case PRD_STATUS'
      'when '#39'A'#39' then '#39'ABERTA'#39
      'when '#39'B'#39' then '#39'BAIXADA'#39
      'when '#39'C'#39' then '#39'CANCELADA'#39
      'when '#39'I'#39' then '#39'INUTILIZADA'#39
      'else PRD_STATUS'
      'end as PRD_STATUS,'
      'PRO_OBSERVACOES,'
      'PRO_LOCALIZACAO,'
      'PRO_NOME'
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'left join ALMOXARIFADOS on PDI_ALMOXARIFADO=ALM_CODIGO'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'where PDI_PRODUCAO=:codigo'
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
  object TR01: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 48
    Top = 208
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_CLIENTE=PRD_CLIENTE'
      'PRD_DTCADASTRO=PRD_DTCADASTRO'
      'PRD_DATABAIXA=PRD_DATABAIXA'
      'PRD_DTPREVISAO=PRD_DTPREVISAO'
      'PRD_STATUS=PRD_STATUS'
      'CLI_NOME=CLI_NOME')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
        Value = ''
      end
      item
        Name = 'STATUS'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_CODIGO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRD_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 40.031496060000000000
          Width = 72.026112460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTCADASTRO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRD_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 187.094620000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTPREVISAO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRD_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 281.306945040000000000
          Width = 92.976380390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DATABAIXA'
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
            '[frxDBDataset2."PRD_DATABAIXA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 114.023500000000000000
          Width = 69.107606670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_STATUS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRD_STATUS"]')
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
        Top = 442.205010000000000000
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
            'PRD02 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 393.071120000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 37.795300000000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."CLI_NOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 23.433085510000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.062992130000000000
          Top = 23.433085510000000000
          Width = 71.994616400000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 114.023500000000000000
          Top = 23.433085510000000000
          Width = 69.107606670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 187.094620000000000000
          Top = 23.433085510000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Previs'#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 281.306945040000000000
          Top = 23.433085510000000000
          Width = 92.976380390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Baixa')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 9.936631970000000000
          Top = 0.755905510000000000
          Width = 56.692867010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRD_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 0.755905510000000000
          Width = 570.708947010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CLI_NOME"]')
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
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 41.837333800000000000
          Top = 28.724409450000000000
          Width = 65.763779530000000000
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
          Left = 110.000000000000000000
          Top = 28.724409450000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
      end
    end
  end
  object QY02: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR02
    SQL.Strings = (
      'select '
      'PRD_CODIGO,'
      'PRD_CLIENTE,'
      'PRD_DTCADASTRO,'
      'PRD_DATABAIXA,'
      'PRD_DTPREVISAO,'
      'PRD_STATUS,'
      'CLI_NOME'
      'from PRODUCAO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      'order by PRD_CLIENTE'
      '')
    Left = 120
    Top = 160
  end
  object TR02: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 120
    Top = 208
  end
  object frxDBDataset1a: TfrxDBDataset
    UserName = 'frxDBDataset1a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDC_CODIGO=PDC_CODIGO'
      'PDC_COR=PDC_COR'
      'PDC_PRODUCAOITEM=PDC_PRODUCAOITEM'
      'PDC_PRODUTO=PDC_PRODUTO'
      'PDC_QUANTIDADE=PDC_QUANTIDADE'
      'PDC_QUANTIDADEUNITARIA=PDC_QUANTIDADEUNITARIA'
      'PDC_COMPOSTO=PDC_COMPOSTO'
      'PDC_BAIXAR=PDC_BAIXAR'
      'PDC_LOTE=PDC_LOTE'
      'PRO_LOCALIZACAO=PRO_LOCALIZACAO'
      'PRO_NOME=PRO_NOME'
      'PRO_UNIDADE=PRO_UNIDADE')
    DataSet = QY01a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 304
  end
  object QY01a: TFDQuery
    MasterSource = DS01
    MasterFields = 'PDI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR01a
    SQL.Strings = (
      'select '
      'PDC_CODIGO,'
      'PDC_COR,'
      'PDC_PRODUCAOITEM,'
      'PDC_PRODUTO,'
      'PDC_QUANTIDADE,'
      'PDC_QUANTIDADEUNITARIA,'
      'PDC_COMPOSTO,'
      'PDC_BAIXAR,'
      'PDC_LOTE,'
      'PRO_LOCALIZACAO,'
      'PRO_NOME,'
      'PRO_UNIDADE'
      'from PRODUCAOITENSCOMP'
      'left join PRODUTOS on PDC_PRODUTO=PRO_CODIGO'
      'where PDC_PRODUCAOITEM=:PDI_CODIGO'
      'order by PDC_ORDEM, PDC_CODIGO'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'PDI_CODIGO'
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
  object DS01: TDataSource
    DataSet = QY01
    Left = 48
    Top = 256
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_CLIENTE=PRD_CLIENTE'
      'PRD_DTCADASTRO=PRD_DTCADASTRO'
      'PRD_DATABAIXA=PRD_DATABAIXA'
      'PRD_DTPREVISAO=PRD_DTPREVISAO'
      'PRD_STATUS=PRD_STATUS'
      'CLI_NOME=CLI_NOME')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
        Value = ''
      end
      item
        Name = 'STATUS'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_CODIGO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 40.031496060000000000
          Width = 72.026112460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTCADASTRO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 175.756030000000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTPREVISAO'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 247.291175040000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DATABAIXA'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_DATABAIXA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 114.023500000000000000
          Width = 61.548546670000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_STATUS'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Width = 51.401550390000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 278.173350390000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
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
            'Qtde.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
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
            'Almox.')
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
        Top = 480.000310000000000000
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
            'PRD03 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 430.866420000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 37.795300000000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset3."CLI_NOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 23.433085510000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.062992130000000000
          Top = 23.433085510000000000
          Width = 71.994616400000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 114.023500000000000000
          Top = 23.433085510000000000
          Width = 61.548546670000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 175.756030000000000000
          Top = 23.433085510000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Previs'#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 247.291175040000000000
          Top = 23.433085510000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Baixa')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 9.936631970000000000
          Top = 0.755905510000000000
          Width = 56.692867010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."PRD_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 0.755905510000000000
          Width = 570.708947010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."CLI_NOME"]')
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
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 41.837333800000000000
          Top = 28.724409450000000000
          Width = 65.763779530000000000
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
          Left = 110.000000000000000000
          Top = 28.724409450000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.740157480314960000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset3a
        DataSetName = 'frxDBDataset3a'
        RowCount = 0
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDI_PRODUTO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3a."PDI_PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 278.173350390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3a."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDI_QUANTIDADE'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."PDI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 51.401550390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDI_ALMOXARIFADO'
          DataSet = frxDBDataset3a
          DataSetName = 'frxDBDataset3a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3a."PDI_ALMOXARIFADO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object QY03: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR03
    SQL.Strings = (
      'select '
      'PRD_CODIGO,'
      'PRD_CLIENTE,'
      'PRD_DTCADASTRO,'
      'PRD_DATABAIXA,'
      'PRD_DTPREVISAO,'
      'PRD_STATUS,'
      'CLI_NOME'
      'from PRODUCAO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      'order by PRD_CLIENTE'
      '')
    Left = 192
    Top = 160
  end
  object TR03: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 208
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
      'PDI_CODIGO=PDI_CODIGO'
      'PDI_PRODUCAO=PDI_PRODUCAO'
      'PDI_PRODUTO=PDI_PRODUTO'
      'PDI_QUANTIDADE=PDI_QUANTIDADE'
      'PDI_ALMOXARIFADO=PDI_ALMOXARIFADO'
      'PRO_NOME=PRO_NOME'
      'PRO_UNIDADE=PRO_UNIDADE')
    DataSet = QY03a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 304
  end
  object QY03a: TFDQuery
    MasterSource = DS03
    MasterFields = 'PRD_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR03a
    SQL.Strings = (
      'select '
      'PDI_CODIGO,'
      'PDI_PRODUCAO,'
      'PDI_PRODUTO,'
      'PDI_QUANTIDADE,'
      'PDI_ALMOXARIFADO,'
      'PRO_NOME,'
      'PRO_UNIDADE'
      'from PRODUCAOITENS'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'where PDI_PRODUCAO=:PRD_CODIGO'
      'order by PRO_NOME'
      ''
      '')
    Left = 192
    Top = 352
    ParamData = <
      item
        Name = 'PRD_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR03a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 192
    Top = 400
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'PDI_QUANTIDADE=PDI_QUANTIDADE'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_CLIENTE=PRD_CLIENTE'
      'PRD_DTCADASTRO=PRD_DTCADASTRO'
      'PRD_DATABAIXA=PRD_DATABAIXA'
      'PRD_DTPREVISAO=PRD_DTPREVISAO'
      'PRD_STATUS=PRD_STATUS'
      'CLI_NOME=CLI_NOME'
      'PRO_NOME=PRO_NOME')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'CLI_CODIGO'
        Value = ''
      end
      item
        Name = 'CLI_NOME'
        Value = ''
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
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
        Height = 13.228346460000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_CODIGO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRD_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 40.031496060000000000
          Width = 41.789872460000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_CLIENTE'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRD_CLIENTE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 607.346525040000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DATABAIXA'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRD_DATABAIXA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Width = 74.078730390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDI_QUANTIDADE'
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
            '[frxDBDataset4."PDI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 83.787260000000000000
          Width = 337.454236670000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 534.811380000000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTPREVISAO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRD_DTPREVISAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 461.740260000000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_DTCADASTRO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRD_DTCADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 424.307360000000000000
          Width = 36.283430390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRD_STATUS'
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
            '[frxDBDataset4."PRD_STATUS"]')
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
        Top = 442.205010000000000000
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
            'PRD04 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 393.071120000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 37.795300000000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset4."PRO_NOME"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 23.433085510000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 40.031496060000000000
          Top = 23.433085510000000000
          Width = 381.916076400000000000
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
          Left = 461.740260000000000000
          Top = 23.433085510000000000
          Width = 70.299200390000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 534.811380000000000000
          Top = 23.433085510000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Previs'#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 607.346525040000000000
          Top = 23.433085510000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Baixa')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 9.936631970000000000
          Top = 0.755905510000000000
          Width = 56.692867010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."PDI_PRODUTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 0.755905510000000000
          Width = 680.315317010000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 424.307360000000000000
          Top = 23.433085510000000000
          Width = 36.283430390000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 23.433085510000000000
          Width = 74.078730390000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 167.154916670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total: [SUM(<frxDBDataset4."PDI_QUANTIDADE">,MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 208.136653800000000000
          Top = 0.666676430000000000
          Width = 65.763779530000000000
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
          Left = 276.299320000000000000
          Top = 0.666676430000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
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
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 292.372913330000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 27.456710000000000000
          Width = 65.763779530000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 27.456710000000000000
          Width = 39.144403330000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 27.456710000000000000
          Width = 292.372913330000000000
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
  object QY04: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR04
    SQL.Strings = (
      'select '
      'PDI_PRODUTO, '
      'PDI_QUANTIDADE, '
      'PRD_CODIGO, '
      'PRD_CLIENTE, '
      'PRD_DTCADASTRO, '
      'PRD_DATABAIXA,'
      'PRD_DTPREVISAO, '
      'PRD_STATUS, '
      'CLI_NOME, '
      'PRO_NOME '
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      'where PRD_DTCADASTRO between :datainicial and :datafinal'
      'order by PRO_NOME, CLI_NOME, PRD_CODIGO')
    Left = 264
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
  object TR04: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 264
    Top = 208
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'QTDE=QTDE'
      'PRO_NOME=PRO_NOME')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
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
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDI_PRODUTO'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PDI_PRODUTO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 43.811026060000000000
          Width = 370.577486400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset5."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'QTDE'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."QTDE"]')
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
        Top = 374.173470000000000000
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
            'PRD05 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 325.039580000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 208.136653800000000000
          Top = 0.666676430000000000
          Width = 65.763779530000000000
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
          Left = 276.299320000000000000
          Top = 0.666676430000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 292.372913330000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.984251970000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 43.811026060000000000
          Width = 370.577486400000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
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
            'Quantidade')
          ParentFont = False
        end
      end
    end
  end
  object QY05: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR05
    SQL.Strings = (
      'select '
      'PDI_PRODUTO, '
      'sum(PDI_QUANTIDADE) as QTDE, '
      'PRO_NOME '
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'where PRD_DTCADASTRO between :datainicial and :datafinal '
      'group by PDI_PRODUTO, PRO_NOME'
      'order by PRO_NOME')
    Left = 336
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
  object TR05: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 336
    Top = 208
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'PRO_NOME=PRO_NOME'
      'TOTAL=TOTAL')
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
      end
      item
        DataSet = frxDBDataset6a
        DataSetName = 'frxDBDataset6a'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
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
        Height = 13.228346460000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset6c
        DataSetName = 'frxDBDataset6c'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6c."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 55.149616060000000000
          Width = 431.049966400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset6c."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6c."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NECESSARIO'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6c."PRO_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_DIFERENCA'
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset6c."PRO_DIFERENCA"]')
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
        Top = 374.173470000000000000
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
            'PRD06 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 325.039580000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 208.136653800000000000
          Top = 0.666676430000000000
          Width = 65.763779530000000000
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
          Left = 276.299320000000000000
          Top = 0.666676430000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 292.372913330000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.984251970000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 49.133865590000000000
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
          Left = 55.149616060000000000
          Width = 431.049966400000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
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
            'Est. Atual')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
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
            'Necess'#225'rio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
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
            'Diferen'#231'a')
          ParentFont = False
        end
      end
    end
  end
  object QY06: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR06
    SQL.Strings = (
      'select '
      'PDI_PRODUTO, '
      'PRO_NOME, '
      'sum(PDI_QUANTIDADE) as TOTAL'
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'where PRD_STATUS='#39'A'#39
      'and PRD_DTCADASTRO between :datainicial and :datafinal'
      'group by PDI_PRODUTO, PRO_NOME'
      '')
    Left = 408
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
  object TR06: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 208
  end
  object DS06: TDataSource
    DataSet = QY06
    Left = 408
    Top = 256
  end
  object frxDBDataset6a: TfrxDBDataset
    UserName = 'frxDBDataset6a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'PRO_NOME=PRO_NOME'
      'TOTAL=TOTAL')
    DataSet = QY06a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 304
  end
  object QY06a: TFDQuery
    MasterSource = DS06
    MasterFields = 'PDI_PRODUTO'
    Connection = DM.FDConnection1
    Transaction = TR06a
    SQL.Strings = (
      'select '
      'PRC_PRODUTO,'
      'PRC_PRODUTOCOMP,'
      'PRC_QUANTIDADE,'
      'PRO_NOME'
      'from PRODUTOSCOMP'
      'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO'
      'where PRC_PRODUTO=:PDI_PRODUTO'
      '')
    Left = 408
    Top = 352
    ParamData = <
      item
        Name = 'PDI_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR06a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 408
    Top = 400
  end
  object DS06a: TDataSource
    DataSet = QY06a
    Left = 408
    Top = 448
  end
  object frxDBDataset6b: TfrxDBDataset
    UserName = 'frxDBDataset6b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'PRO_NOME=PRO_NOME'
      'TOTAL=TOTAL')
    DataSet = QY06b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 304
  end
  object QY06b: TFDQuery
    MasterSource = DS06a
    MasterFields = 'PRC_PRODUTOCOMP'
    Connection = DM.FDConnection1
    Transaction = TR06b
    SQL.Strings = (
      'select '
      'PRO_ESTOQUEATUAL '
      'from PRODUTOS'
      'where PRO_CODIGO=:PRC_PRODUTOCOMP'
      '')
    Left = 472
    Top = 352
    ParamData = <
      item
        Name = 'PRC_PRODUTOCOMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR06b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 472
    Top = 400
  end
  object DS06b: TDataSource
    DataSet = QY06b
    Left = 472
    Top = 448
  end
  object TBProdutos: TClientDataSet
    PersistDataPacket.Data = {
      900000009619E0BD01000000180000000500000000000300000090000A50524F
      5F434F4449474F04000100000000000850524F5F4E4F4D450100490000000100
      0557494454480200020050001050524F5F4553544F515545415455414C080004
      00000000000E50524F5F4E45434553534152494F08000400000000000D50524F
      5F4449464552454E434108000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'PRO_NOME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PRO_ESTOQUEATUAL'
        DataType = ftFloat
      end
      item
        Name = 'PRO_NECESSARIO'
        DataType = ftFloat
      end
      item
        Name = 'PRO_DIFERENCA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'PRO_NOME'
    Params = <>
    StoreDefs = True
    Left = 432
    Top = 544
    object TBProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object TBProdutosPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 80
    end
    object TBProdutosPRO_ESTOQUEATUAL: TFloatField
      FieldName = 'PRO_ESTOQUEATUAL'
    end
    object TBProdutosPRO_NECESSARIO: TFloatField
      FieldName = 'PRO_NECESSARIO'
    end
    object TBProdutosPRO_DIFERENCA: TFloatField
      FieldName = 'PRO_DIFERENCA'
    end
  end
  object frxDBDataset6c: TfrxDBDataset
    UserName = 'frxDBDataset6c'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_NECESSARIO=PRO_NECESSARIO'
      'PRO_DIFERENCA=PRO_DIFERENCA')
    DataSet = TBProdutos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 432
    Top = 496
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDI_PRODUTO=PDI_PRODUTO'
      'PRO_NOME=PRO_NOME'
      'TOTAL=TOTAL')
    DataSet = QY07
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 45916.445645219910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CarregarLogoSVGFast(Picture1);'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 544
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
      end
      item
        DataSet = frxDBDataset7a
        DataSetName = 'frxDBDataset7a'
      end
      item
        DataSet = frxDBDataset7b
        DataSetName = 'frxDBDataset7b'
      end
      item
        DataSet = frxDBDataset7c
        DataSetName = 'frxDBDataset7c'
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
        Value = ''
      end
      item
        Name = 'TITULO'
        Value = Null
      end
      item
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
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
        Fill.BackColor = clWhitesmoke
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 62.740169690000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset7
        DataSetName = 'frxDBDataset7'
        RowCount = 0
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 75.590575590000000000
          Height = 20.787406460000000000
          DataField = 'PDI_PRODUTO'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."PDI_PRODUTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 480.000285590000000000
          Height = 20.787406460000000000
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7."PRO_NOME"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total a Produzir:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          DataField = 'TOTAL'
          DataSet = frxDBDataset7
          DataSetName = 'frxDBDataset7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7."TOTAL"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 15.118120000000000000
          Width = 66.519670390000000000
          Height = 13.228346460000000000
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset7a
          DataSetName = 'frxDBDataset7a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7a."PRO_ESTOQUEATUAL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 15.118120000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque Atual:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 30.236240000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Diferen'#231'a:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 30.236240000000000000
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
            '[<frxDBDataset7a."PRO_ESTOQUEATUAL"> - <frxDBDataset7."TOTAL">]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 49.133865590000000000
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
          Left = 51.370086060000000000
          Top = 49.133890000000000000
          Width = 461.286206400000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 49.133890000000000000
          Width = 74.078730390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde / 1')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 49.133890000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Necess'#225'ria')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 49.133890000000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde Atual')
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
            'PRD07 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 208.136653800000000000
          Top = 0.666676430000000000
          Width = 65.763779530000000000
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
          Left = 276.299320000000000000
          Top = 0.666676430000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 208.136653800000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 292.372913330000000000
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
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset7b
        DataSetName = 'frxDBDataset7b'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          DataField = 'PRC_PRODUTOCOMP'
          DataSet = frxDBDataset7b
          DataSetName = 'frxDBDataset7b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7b."PRC_PRODUTOCOMP"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 51.370086060000000000
          Width = 461.286206400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset7b
          DataSetName = 'frxDBDataset7b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset7b."PRO_NOME"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 74.078730390000000000
          Height = 13.228346460000000000
          DataField = 'PRC_QUANTIDADE'
          DataSet = frxDBDataset7b
          DataSetName = 'frxDBDataset7b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7b."PRC_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 89.196850390000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset6c
          DataSetName = 'frxDBDataset6c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxDBDataset7."TOTAL"> * <frxDBDataset7b."PRC_QUANTIDADE">]'
            '')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Width = 70.299200390000000000
          Height = 13.228346460000000000
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset7c
          DataSetName = 'frxDBDataset7c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset7c."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object QY07: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR07
    SQL.Strings = (
      'select '
      'PDI_PRODUTO, '
      'PRO_NOME, '
      'sum(PDI_QUANTIDADE) as TOTAL'
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      
        'where PRD_STATUS='#39'A'#39' and PRD_DTCADASTRO between :datainicial and' +
        ' :datafinal'
      'group by PDI_PRODUTO, PRO_NOME'
      '')
    Left = 544
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
  object TR07: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 208
  end
  object DS07: TDataSource
    DataSet = QY07
    Left = 544
    Top = 256
  end
  object frxDBDataset7a: TfrxDBDataset
    UserName = 'frxDBDataset7a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL')
    DataSet = QY07a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 304
  end
  object QY07a: TFDQuery
    MasterSource = DS07
    MasterFields = 'PDI_PRODUTO'
    Connection = DM.FDConnection1
    Transaction = TR07a
    SQL.Strings = (
      'select '
      'PRO_ESTOQUEATUAL '
      'from PRODUTOS '
      'where PRO_CODIGO=:PDI_PRODUTO'
      '')
    Left = 544
    Top = 352
    ParamData = <
      item
        Name = 'PDI_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 544
    Top = 400
  end
  object frxDBDataset7b: TfrxDBDataset
    UserName = 'frxDBDataset7b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRC_PRODUTOCOMP=PRC_PRODUTOCOMP'
      'PRO_NOME=PRO_NOME'
      'PRC_QUANTIDADE=PRC_QUANTIDADE')
    DataSet = QY07b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 304
  end
  object QY07b: TFDQuery
    MasterSource = DS07
    MasterFields = 'PDI_PRODUTO'
    Connection = DM.FDConnection1
    Transaction = TR07b
    SQL.Strings = (
      'select '
      'PRC_PRODUTOCOMP, '
      'PRO_NOME, '
      'PRC_QUANTIDADE'
      'from PRODUTOSCOMP'
      'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO'
      'where PRC_PRODUTO=:PDI_PRODUTO'
      '')
    Left = 608
    Top = 352
    ParamData = <
      item
        Name = 'PDI_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 608
    Top = 400
  end
  object DS07b: TDataSource
    DataSet = QY07b
    Left = 608
    Top = 448
  end
  object frxDBDataset7c: TfrxDBDataset
    UserName = 'frxDBDataset7c'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL')
    DataSet = QY07c
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 304
  end
  object QY07c: TFDQuery
    MasterSource = DS07b
    MasterFields = 'PRC_PRODUTOCOMP'
    Connection = DM.FDConnection1
    Transaction = TR07c
    SQL.Strings = (
      'select '
      'PRO_ESTOQUEATUAL '
      'from PRODUTOS '
      'where PRO_CODIGO=:PRC_PRODUTOCOMP'
      '')
    Left = 672
    Top = 352
    ParamData = <
      item
        Name = 'PRC_PRODUTOCOMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR07c: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 672
    Top = 400
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ALM_DESCRICAO=ALM_DESCRICAO'
      'CLI_NOME=CLI_NOME'
      'FAM_DESCRICAO=FAM_DESCRICAO'
      'GRU_DESCRICAO=GRU_DESCRICAO'
      'PDI_ALMOXARIFADO=PDI_ALMOXARIFADO'
      'PDI_CODIGO=PDI_CODIGO'
      'PDI_PRODUTO=PDI_PRODUTO'
      'PDI_QUANTIDADE=PDI_QUANTIDADE'
      'PRD_CLIENTE=PRD_CLIENTE'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_DATABAIXA=PRD_DATABAIXA'
      'PRD_DTCADASTRO=PRD_DTCADASTRO'
      'PRD_DTPREVISAO=PRD_DTPREVISAO'
      'PRD_OBSERVACOES=PRD_OBSERVACOES'
      'PRO_NOME=PRO_NOME'
      'PRD_STATUS=PRD_STATUS'
      'DOCUMENTO=DOCUMENTO')
    DataSet = QY08
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 45912.699611631900000000
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
    Left = 736
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
      end
      item
        DataSet = frxDBDataset8a
        DataSetName = 'frxDBDataset8a'
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
        Frame.BottomLine.Width = 1.000000000000000000
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
        Height = 213.543436460000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8
        DataSetName = 'frxDBDataset8'
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 196.535560000000000000
          Width = 755.905975590000000000
          Height = 17.007876460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15658734
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
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
            'STATUS')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 151.181141420000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 423.307360000000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 73.700819130000000000
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
            'DATA BAIXA')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 49.133890000000000000
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
            'DATA PREVIS'#195'O')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 98.157529130000000000
          Width = 483.779840000000000000
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
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 24.566929130000000000
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
            'DATA CADASTRO')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 90.708661420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 9.826771650000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'PRD_CODIGO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset8."PRD_CODIGO"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 49.023639130000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PR'#201' MONTAGEM')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 483.779840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FAM'#237'LIA')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 73.700819130000000000
          Width = 483.779840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'GRUPO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 24.456710000000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 98.157529130000000000
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
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 107.984293460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DataField = 'PDI_PRODUTO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PDI_PRODUTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 43.811026060000000000
          Top = 107.984293460000000000
          Width = 438.640522460000000000
          Height = 13.228346460000000000
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.535228030000000000
          Top = 83.527590780000000000
          Width = 473.575044800000000000
          Height = 13.228346460000000000
          DataField = 'GRU_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."GRU_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 107.984300780000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PDI_QUANTIDADE'
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
            '[frxDBDataset8."PDI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 30.015770000000000000
          Top = 198.425194410000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 92.267780000000000000
          Top = 198.425194410000000000
          Width = 255.118078500000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 198.425194410000000000
          Width = 49.133865590000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 198.425194409448800000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '#')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 482.000310000000000000
          Top = 198.425194410000000000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 636.961040000000000000
          Top = 198.425194409448800000
          Width = 117.165405590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Operador')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.535228030000000000
          Top = 59.338614410000000000
          Width = 473.575044800000000000
          Height = 13.228346460000000000
          DataField = 'FAM_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."FAM_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 349.716760000000000000
          Top = 198.425194410000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 198.425194409448800000
          Width = 49.133865590000000000
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 34.393693460000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DTCADASTRO'
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
            '[frxDBDataset8."PRD_DTCADASTRO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 59.338614410000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DTPREVISAO'
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
            '[frxDBDataset8."PRD_DTPREVISAO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 83.527590780000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'PRD_DATABAIXA'
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
            '[frxDBDataset8."PRD_DATABAIXA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 122.834645670000000000
          Width = 574.488560000000000000
          Height = 73.700819130000000000
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
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 9.826771650000000000
          Width = 143.622081420000000000
          Height = 13.228346460000000000
          DataField = 'DOCUMENTO'
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
            '[frxDBDataset8."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 9.826771650000000000
          Width = 41.574830000000000000
          Height = 13.228346460000000000
          DataField = 'PRD_CLIENTE'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRD_CLIENTE"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 9.826771650000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'PRD_STATUS'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset8."PRD_STATUS"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 9.826771650000000000
          Width = 370.393940000000000000
          Height = 13.228346460000000000
          DataField = 'CLI_NOME'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."CLI_NOME"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Top = 24.566929130000000000
          Width = 483.779840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ALMOXARIFADO')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 3.535228030000000000
          Top = 34.393700780000000000
          Width = 473.575044800000000000
          Height = 13.228346460000000000
          DataField = 'ALM_DESCRICAO'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."ALM_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 73.590600000000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MONTAGEM')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 98.267716535433100000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONEX'#213'ES')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 122.834645670000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSPE'#199#195'O')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 147.401670000000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EMBALAGEM')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 171.968503940000000000
          Width = 181.417440000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ARQUIVO')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 566.929475590000000000
          Height = 62.362236460000000000
          DataField = 'PRD_OBSERVACOES'
          DataSet = frxDBDataset8
          DataSetName = 'frxDBDataset8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8."PRD_OBSERVACOES"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 561.370440000000000000
          Top = 198.425194409448800000
          Width = 72.566929130000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lote')
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
        Top = 510.236550000000000000
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
            'PRD08 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 461.102660000000000000
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
            'Total itens na OP: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.BottomLine.Color = clSilver
        Frame.BottomLine.Style = fsDot
        Height = 17.007876460000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset8a
        DataSetName = 'frxDBDataset8a'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 30.015770000000000000
          Top = 2.000000000000000000
          Width = 60.472455590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_PRODUTO'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PDC_PRODUTO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 92.267780000000000000
          Top = 2.000000000000000000
          Width = 255.118078500000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PRO_NOME"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 2.000000000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_QUANTIDADEUNITARIA'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8a."PDC_QUANTIDADEUNITARIA"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 482.000310000000000000
          Top = 2.000000000000000000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_UNIDADE'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset8a."PRO_UNIDADE"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 2.000000000000000000
          Width = 26.456685590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 349.716760000000000000
          Top = 2.000000000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_COR'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset8a."PDC_COR"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 636.961040000000000000
          Top = 2.000000000000000000
          Width = 117.165405590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 2.000000000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PDC_QUANTIDADE'
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset8a."PDC_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 561.370440000000000000
          Top = 2.000000000000000000
          Width = 72.566929130000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset8a
          DataSetName = 'frxDBDataset8a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
    end
  end
  object QY08: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR08
    SQL.Strings = (
      'select '
      'ALM_DESCRICAO,'
      'CLI_NOME,'
      'FAM_DESCRICAO,'
      'GRU_DESCRICAO,'
      'PDI_ALMOXARIFADO,'
      'PDI_CODIGO,'
      'PDI_PRODUTO,'
      'PDI_QUANTIDADE,'
      'PRD_CLIENTE,'
      'PRD_CODIGO,'
      'PRD_DATABAIXA,'
      'PRD_DTCADASTRO,'
      'PRD_DTPREViSAO,'
      'PRD_OBSERVACOES,'
      'PRO_NOME,'
      'case PRD_STATUS'
      'when '#39'A'#39' then '#39'ABERTA'#39
      'when '#39'B'#39' then '#39'BAIXADA'#39
      'when '#39'C'#39' then '#39'CANCELADA'#39
      'when '#39'I'#39' then '#39'INUTILIZADA'#39
      'else PRD_STATUS'
      'end as PRD_STATUS,'
      'iif(CLI_TIPOPESSOA='#39'J'#39',CLI_CNPJ,CLI_CPF) as DOCUMENTO'
      'from PRODUCAOITENS'
      'left join PRODUCAO on PDI_PRODUCAO=PRD_CODIGO'
      'left join PRODUTOS on PDI_PRODUTO=PRO_CODIGO'
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO'
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO'
      'left join ALMOXARIFADOS on PDI_ALMOXARIFADO=ALM_CODIGO'
      'left join CLIENTES on PRD_CLIENTE=CLI_CODIGO'
      'where PDI_PRODUCAO=:codigo'
      'order by PRO_NOME'
      '')
    Left = 736
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR08: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 736
    Top = 208
  end
  object frxDBDataset8a: TfrxDBDataset
    UserName = 'frxDBDataset8a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PDC_CODIGO=PDC_CODIGO'
      'PDC_COR=PDC_COR'
      'PDC_ORDEM=PDC_ORDEM'
      'PDC_PRODUCAOITEM=PDC_PRODUCAOITEM'
      'PDC_PRODUTO=PDC_PRODUTO'
      'PDC_QUANTIDADE=PDC_QUANTIDADE'
      'PDC_QUANTIDADEUNITARIA=PDC_QUANTIDADEUNITARIA'
      'PRO_NOME=PRO_NOME'
      'PRO_UNIDADE=PRO_UNIDADE'
      'PDI_PRODUTO=PDI_PRODUTO')
    DataSet = QY08a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 304
  end
  object QY08a: TFDQuery
    MasterSource = DS08
    MasterFields = 'PDI_CODIGO'
    Connection = DM.FDConnection1
    Transaction = TR08a
    SQL.Strings = (
      'select '
      'PDC_CODIGO,'
      'PDC_COR,'
      'PDC_ORDEM,'
      'PDC_PRODUCAOITEM,'
      'PDC_PRODUTO,'
      'PDC_QUANTIDADE,'
      'PDC_QUANTIDADEUNITARIA,'
      'PRO_NOME,'
      'PRO_UNIDADE,'
      'PDI_PRODUTO'
      'from PRODUCAOITENSCOMP'
      'left join PRODUTOS on PDC_PRODUTO=PRO_CODIGO'
      'left join PRODUCAOITENS on PDI_CODIGO=PDC_PRODUCAOITEM'
      'where PDC_PRODUCAOITEM=:PDI_CODIGO'
      'order by PDC_ORDEM, PDC_CODIGO'
      '')
    Left = 736
    Top = 352
    ParamData = <
      item
        Name = 'PDI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TR08a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 736
    Top = 400
  end
  object DS08: TDataSource
    DataSet = QY08
    Left = 736
    Top = 256
  end
  object TBProdutos2: TClientDataSet
    PersistDataPacket.Data = {
      C80100009619E0BD010000001800000013000000000003000000C8010A50524F
      5F434F4449474F04000100000000000850524F5F4E4F4D450100490000000100
      0557494454480200020050001050524F5F4553544F515545415455414C080004
      00000000000E50524F5F4E45434553534152494F08000400000000000D50524F
      5F4449464552454E434108000400000000000A4D355F434F4E53554D4F0A0004
      00000000000A4D345F434F4E53554D4F0A000400000000000A4D335F434F4E53
      554D4F0A000400000000000A4D325F434F4E53554D4F0A000400000000000A4D
      315F434F4E53554D4F0A000400000000000A4D305F434F4E53554D4F0A000400
      000000000D434F4E53554D4F5F4D4544494F0A000400000000000D4D365F4E45
      434553534152494F0A000400000000000D4D355F4E45434553534152494F0A00
      0400000000000D4D345F4E45434553534152494F0A000400000000000D4D335F
      4E45434553534152494F0A000400000000000D4D325F4E45434553534152494F
      0A000400000000000D4D315F4E45434553534152494F0A000400000000000D4D
      305F4E45434553534152494F0A0004000000000001000D44454641554C545F4F
      524445520200820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'PRO_NOME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PRO_ESTOQUEATUAL'
        DataType = ftFloat
      end
      item
        Name = 'PRO_NECESSARIO'
        DataType = ftFloat
      end
      item
        Name = 'PRO_DIFERENCA'
        DataType = ftFloat
      end
      item
        Name = 'M5_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'M4_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'M3_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'M2_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'M1_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'M0_CONSUMO'
        DataType = ftExtended
      end
      item
        Name = 'CONSUMO_MEDIO'
        DataType = ftExtended
      end
      item
        Name = 'M6_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M5_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M4_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M3_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M2_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M1_NECESSARIO'
        DataType = ftExtended
      end
      item
        Name = 'M0_NECESSARIO'
        DataType = ftExtended
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'PRO_NOME'
    Params = <>
    StoreDefs = True
    Left = 840
    Top = 112
    object TBProdutos2PRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object TBProdutos2PRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 80
    end
    object TBProdutos2PRO_ESTOQUEATUAL: TFloatField
      FieldName = 'PRO_ESTOQUEATUAL'
    end
    object TBProdutos2PRO_NECESSARIO: TFloatField
      FieldName = 'PRO_NECESSARIO'
    end
    object TBProdutos2PRO_DIFERENCA: TFloatField
      FieldName = 'PRO_DIFERENCA'
    end
    object TBProdutos2M5_CONSUMO: TExtendedField
      FieldName = 'M5_CONSUMO'
      Precision = 19
    end
    object TBProdutos2M4_CONSUMO: TExtendedField
      FieldName = 'M4_CONSUMO'
      Precision = 19
    end
    object TBProdutos2M3_CONSUMO: TExtendedField
      FieldName = 'M3_CONSUMO'
      Precision = 19
    end
    object TBProdutos2M2_CONSUMO: TExtendedField
      FieldName = 'M2_CONSUMO'
      Precision = 19
    end
    object TBProdutos2M1_CONSUMO: TExtendedField
      FieldName = 'M1_CONSUMO'
      Precision = 19
    end
    object TBProdutos2M0_CONSUMO: TExtendedField
      FieldName = 'M0_CONSUMO'
      Precision = 19
    end
    object TBProdutos2CONSUMO_MEDIO: TExtendedField
      FieldName = 'CONSUMO_MEDIO'
      Precision = 19
    end
    object TBProdutos2M6_NECESSARIO: TExtendedField
      FieldName = 'M6_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M5_NECESSARIO: TExtendedField
      FieldName = 'M5_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M4_NECESSARIO: TExtendedField
      FieldName = 'M4_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M3_NECESSARIO: TExtendedField
      FieldName = 'M3_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M2_NECESSARIO: TExtendedField
      FieldName = 'M2_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M1_NECESSARIO: TExtendedField
      FieldName = 'M1_NECESSARIO'
      Precision = 19
    end
    object TBProdutos2M0_NECESSARIO: TExtendedField
      FieldName = 'M0_NECESSARIO'
      Precision = 19
    end
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_NECESSARIO=PRO_NECESSARIO'
      'PRO_DIFERENCA=PRO_DIFERENCA'
      'M5_CONSUMO=M5_CONSUMO'
      'M4_CONSUMO=M4_CONSUMO'
      'M3_CONSUMO=M3_CONSUMO'
      'M2_CONSUMO=M2_CONSUMO'
      'M1_CONSUMO=M1_CONSUMO'
      'M0_CONSUMO=M0_CONSUMO'
      'CONSUMO_MEDIO=CONSUMO_MEDIO'
      'M6_NECESSARIO=M6_NECESSARIO'
      'M5_NECESSARIO=M5_NECESSARIO'
      'M4_NECESSARIO=M4_NECESSARIO'
      'M3_NECESSARIO=M3_NECESSARIO'
      'M2_NECESSARIO=M2_NECESSARIO'
      'M1_NECESSARIO=M1_NECESSARIO'
      'M0_NECESSARIO=M0_NECESSARIO')
    DataSet = TBProdutos2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 808
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
    ReportOptions.Name = 'Produ'#231#227'o'
    ReportOptions.LastChange = 44361.508946365740000000
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
    Left = 808
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
        Name = 'STATUS'
        Value = ''
      end
      item
        Name = 'PRO_CODIGO'
        Value = ''
      end
      item
        Name = 'PRO_NOME'
        Value = ''
      end
      item
        Name = 'DATAINICIAL'
        Value = ''
      end
      item
        Name = 'DATAFINAL'
        Value = ''
      end
      item
        Name = 'MES0'
        Value = ''
      end
      item
        Name = 'MES1'
        Value = ''
      end
      item
        Name = 'MES2'
        Value = ''
      end
      item
        Name = 'MES3'
        Value = ''
      end
      item
        Name = 'MES4'
        Value = ''
      end
      item
        Name = 'MES5'
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
          Left = 455.661875000000000000
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
        Width = 1084.725110000000000000
        DataSet = frxDBDataset9
        DataSetName = 'frxDBDataset9'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 49.133865590000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_CODIGO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 55.149616060000000000
          Width = 385.695606400000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NOME'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_ESTOQUEATUAL'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_ESTOQUEATUAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'PRO_DIFERENCA'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."PRO_DIFERENCA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.473100000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'CONSUMO_MEDIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."CONSUMO_MEDIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M1_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M1_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M2_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M2_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 763.465060000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M3_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M3_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 827.717070000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M4_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M4_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M5_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M5_NECESSARIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 956.221090000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          StretchMode = smActualHeight
          DataField = 'M6_NECESSARIO'
          DataSet = frxDBDataset9
          DataSetName = 'frxDBDataset9'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset9."M6_NECESSARIO"]')
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
        Top = 374.173470000000000000
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
            'PRD09 - Runtime Sistemas - P'#225'gina [PAGE#] de [TOTALPAGES#]')
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
        Top = 325.039580000000000000
        Width = 1084.725110000000000000
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
            'Total Quantidade: [COUNT(MasterData1)]')
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
        Height = 43.464566930000000000
        Top = 105.826840000000000000
        Width = 1084.725110000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 0.666676430000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 0.666676430000000000
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
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.440940000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 110.000000000000000000
          Top = 15.118120000000000000
          Width = 73.160173330000000000
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
          Left = 208.136653800000000000
          Top = 0.666676430000000000
          Width = 65.763779530000000000
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
          Left = 276.299320000000000000
          Top = 0.666676430000000000
          Width = 126.073593330000000000
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
          Left = 110.000000000000000000
          Top = 0.666676430000000000
          Width = 73.160173330000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 15.118120000000000000
          Width = 65.763779530000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 276.036816200000000000
          Top = 15.118120000000000000
          Width = 39.144403330000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 15.118120000000000000
          Width = 292.372913330000000000
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
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.984251970000000000
        Top = 173.858380000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 49.133865590000000000
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
          Left = 55.149616060000000000
          Width = 385.695606400000000000
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
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Est. Atual')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Necess'#225'rio')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Diferen'#231'a')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES0]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES1]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 763.465060000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES2]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 827.717070000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES3]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES4]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 956.221090000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MES5]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.473100000000000000
          Width = 62.740140390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia 6 m.')
          ParentFont = False
        end
      end
    end
  end
  object QY09: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09
    SQL.Strings = (
      'SELECT '
      '    PDC.PDC_PRODUTO,'
      '    PRO.PRO_NOME,'
      '    PRO_ESTOQUEATUAL,'
      '    -- Total geral necess'#225'rio somando os 6 meses '#224' frente'
      '    SUM(PDC.PDC_QUANTIDADE) AS TOTAL_NECESSARIO,'
      '    PRO.PRO_ESTOQUEATUAL - SUM(PDC.PDC_QUANTIDADE) as DIFERENCA,'
      
        '    -- Necessidade dos componentes m'#234's a m'#234's (baseado na data de' +
        ' previs'#227'o do produto pai)'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 1 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M1,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 2 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M2,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 3 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M3,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 4 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M4,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 5 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M5,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, CURRENT_DATE, PRD.PRD_DTPREVIS' +
        'AO) = 6 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M6'
      'FROM PRODUCAOITENSCOMP PDC'
      
        'LEFT JOIN PRODUCAOITENS PDI ON PDC.PDC_PRODUCAOITEM = PDI.PDI_CO' +
        'DIGO'
      'LEFT JOIN PRODUCAO PRD ON PDI.PDI_PRODUCAO = PRD.PRD_CODIGO'
      'LEFT JOIN PRODUTOS PRO ON PDC.PDC_PRODUTO = PRO.PRO_CODIGO'
      
        'WHERE PRD.PRD_STATUS='#39'A'#39' AND PDC.PDC_BAIXAR='#39'S'#39' AND DATEDIFF(MON' +
        'TH, CURRENT_DATE, PRD.PRD_DTPREVISAO) BETWEEN 1 AND 6'
      'GROUP BY PDC.PDC_PRODUTO, PRO.PRO_NOME, PRO.PRO_ESTOQUEATUAL'
      'ORDER BY PRO.PRO_NOME;'
      '')
    Left = 808
    Top = 160
  end
  object TR09: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 808
    Top = 208
  end
  object frxDBDataset9a: TfrxDBDataset
    UserName = 'frxDBDataset9a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRO_CODIGO=PRO_CODIGO'
      'PRO_NOME=PRO_NOME'
      'PRO_ESTOQUEATUAL=PRO_ESTOQUEATUAL'
      'PRO_NECESSARIO=PRO_NECESSARIO'
      'PRO_DIFERENCA=PRO_DIFERENCA'
      'M5_CONSUMO=M5_CONSUMO'
      'M4_CONSUMO=M4_CONSUMO'
      'M3_CONSUMO=M3_CONSUMO'
      'M2_CONSUMO=M2_CONSUMO'
      'M1_CONSUMO=M1_CONSUMO'
      'M0_CONSUMO=M0_CONSUMO'
      'CONSUMO_MEDIO=CONSUMO_MEDIO'
      'M6_NECESSARIO=M6_NECESSARIO'
      'M5_NECESSARIO=M5_NECESSARIO'
      'M4_NECESSARIO=M4_NECESSARIO'
      'M3_NECESSARIO=M3_NECESSARIO'
      'M2_NECESSARIO=M2_NECESSARIO'
      'M1_NECESSARIO=M1_NECESSARIO'
      'M0_NECESSARIO=M0_NECESSARIO')
    DataSet = TBProdutos2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 808
    Top = 304
  end
  object QY09a: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TR09a
    SQL.Strings = (
      'SELECT '
      '    PDC.PDC_PRODUTO,'
      '    -- Consumo m'#234's a m'#234's baseado na data de baixa da OP.'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 0 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M0,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 1 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M1,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 2 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M2,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 3 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M3,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 4 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M4,'
      
        '    SUM(CASE WHEN DATEDIFF(MONTH, PRD.PRD_DATABAIXA, CURRENT_DAT' +
        'E) = 5 THEN PDC.PDC_QUANTIDADE ELSE 0 END) AS M5,'
      '    -- Total geral consumido'
      '    SUM(PDC.PDC_QUANTIDADE) AS TOTAL_CONSUMIDO,'
      '    SUM(PDC.PDC_QUANTIDADE) / 6.0 AS MEDIA_CONSUMIDO'
      'FROM PRODUCAOITENSCOMP PDC'
      
        'LEFT JOIN PRODUCAOITENS PDI ON PDC.PDC_PRODUCAOITEM = PDI.PDI_CO' +
        'DIGO'
      'LEFT JOIN PRODUCAO PRD ON PDI.PDI_PRODUCAO = PRD.PRD_CODIGO'
      'LEFT JOIN PRODUTOS PRO ON PDC.PDC_PRODUTO = PRO.PRO_CODIGO'
      
        'WHERE PRD.PRD_STATUS='#39'B'#39' AND PDC.PDC_BAIXAR='#39'S'#39' AND DATEDIFF(MON' +
        'TH, PRD.PRD_DATABAIXA, CURRENT_DATE) BETWEEN 0 AND 5'
      'GROUP BY PDC.PDC_PRODUTO, PRO.PRO_NOME'
      'ORDER BY PRO.PRO_NOME;')
    Left = 808
    Top = 352
  end
  object TR09a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 808
    Top = 400
  end
end
