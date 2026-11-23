object FormVendasFast: TFormVendasFast
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios de Vendas'
  ClientHeight = 561
  ClientWidth = 1152
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 844
    Top = 8
    Width = 297
    Height = 529
    Lines.Strings = (
      '01 - Vendas por cliente'
      '02 - Vendas por cliente com itens'
      '03 - Vendas por vendedor sint'#233'tico'
      '04 - Vendas por vendedor anal'#237'tico'
      '05 - Vendas por grupo'
      '06 - Vendas por fam'#237'lia'
      '07 - Vendas por marca'
      '08 - Vendas por ramo de atividade'
      '09 - Vendas por condi'#231#227'o de pagamento sint'#233'tico'
      '10 - Vendas por condi'#231#227'o de pagamento anal'#237'tico'
      '11 - Comiss'#245'es por vendedor sint'#233'tico'
      '12 - Comiss'#245'es por vendedor anal'#237'tico'
      '13 - Vendas por produto'
      '14 - Produtos vendidos por cliente'
      '15 - Produtos vendidos por vendedor'
      '16 - An'#225'lise valor de venda vs tabela de pre'#231'o'
      '17 - Trocas por vendedor'
      '18 - Vendas por vendedor e tipo de frete'
      '19 - Vendas por vendedor e cidade'
      '20 - Vendas por vendedor e estado'
      '21 - Melhores clientes por item vendido'
      '22 - Rastreamento de lotes'
      '23 - Frequencia de vendas por vendedor'
      '24 - Curva ABC produtos'
      '25 - Curva ABC clientes'
      '26 - Frequencia de vendas sem agrupamento'
      '27 - Frequencia de vendas mensal por vendedor'
      '28 - Margem bruta'
      '29 - Pedido de vendas com ordem de produ'#231#227'o'
      '30 - Pedido de vendas'
      '31 - Pedido de vendas A5'
      '32 - Ordem de separa'#231#227'o'
      '33 - Etiqueta para embalagem modelo 2'
      '34 - Protocolo de entrega a transportadora'
      '35 - Vendas por classifica'#231#227'o fiscal')
    TabOrder = 0
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
  object frxReport30: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44348.615116319400000000
    ReportOptions.Name = 'VED30'
    ReportOptions.LastChange = 44953.350898506940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <CANHOTO> = '#39'NAO'#39' then'
      
        '  PageFooter1.Visible:=False;                                   ' +
        '   '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while (Engine.FreeSpace-95) > 10 do '
      '  Engine.ShowBand(Child1);'
      'end;'
      ''
      'procedure Overlay1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <OVERLAY> <> '#39#39' then'
      '  begin'
      '    Overlay1.Visible:=True;                   '
      '    Overlay1.Height         := Engine.PageHeight;'
      
        '    MemoWatermark.Width     := Overlay1.Width;                  ' +
        '                '
      '    MemoWatermark.Height    := Engine.PageHeight;'
      '    MemoWatermark.Font.Size := 70;'
      '    MemoWatermark.Rotation  := 45;'
      '    '
      '{    Memo8.Color:=clNone;'
      '    Memo9.Color:=clNone;'
      '    Memo18.Color:=clNone;'
      '    Memo20.Color:=clNone;'
      '    Memo21.Color:=clNone;'
      '    Memo22.Color:=clNone;'
      '    Memo23.Color:=clNone;'
      '    Memo220.Color:=clNone;'
      '    Memo221.Color:=clNone;'
      '    Memo222.Color:=clNone;'
      '    Memo223.Color:=clNone;'
      '    Memo224.Color:=clNone;'
      '    Memo225.Color:=clNone;'
      '    Memo226.Color:=clNone;}            '
      '  end else'
      '  Overlay1.Visible:=False;            '
      'end;'
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'var DescricaoProduto: String;'
      'begin'
      
        '{  DescricaoProduto:=<frxDBDataset1a."NFI_DESCRICAO">+'#39' '#39'+<frxDB' +
        'Dataset1a."NFI_COMPLEMENTO">;  '
      '  if <frxDBDataset1a."NFI_LOTE"> <> '#39#39' then'
      
        '  DescricaoProduto:=DescricaoProduto+'#39' Lt: '#39'+<frxDBDataset1a."NF' +
        'I_LOTE">;'
      '  if <frxDBDataset1a."NFI_QUANTIDADETROCA"> > 0 then'
      
        '  DescricaoProduto:=DescricaoProduto+'#39' - Abatimento Ref. Troca: ' +
        #39'+FloatToStr(<frxDBDataset1a."NFI_DESCVALOR">)+'#39' Qtde: '#39'+FloatTo' +
        'Str(<frxDBDataset1a."NFI_QUANTIDADETROCA">);      '
      
        '  Set('#39'DESCRICAOPRODUTO'#39','#39#39#39#39' + DescricaoProduto+ '#39#39#39#39'); }      ' +
        '   '
      ''
      '{  if <EMP_ENQUADRAMENTO> = '#39'1 - SIMPLES NACIONAL'#39' then'
      
        '  Set('#39'CSTICMS'#39','#39#39#39#39' + Copy(<frxDBDataset30a."VEI_ORIGEM">,1,1) ' +
        '+ IntToStr(<frxDBDataset30a."VEI_CSTICMS">) + '#39#39#39#39') else'
      '  if <frxDBDataset30a."VEI_CSTICMS"> = 0 then'
      '  Set('#39'CSTICMS'#39','#39#39#39#39' + '#39'00'#39' + '#39#39#39#39') else                 '
      
        '  Set('#39'CSTICMS'#39','#39#39#39#39' + IntToStr(<frxDBDataset30a."VEI_CSTICMS">)' +
        ' + '#39#39#39#39');}  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 120
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset30
        DataSetName = 'frxDBDataset30'
      end
      item
        DataSet = frxDBDataset30a
        DataSetName = 'frxDBDataset30a'
      end
      item
        DataSet = frxDBDataset30b
        DataSetName = 'frxDBDataset30b'
      end
      item
        DataSet = frxDBDataset30c
        DataSetName = 'frxDBDataset30c'
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
        Value = ''
      end
      item
        Name = 'HEADER2'
        Value = ''
      end
      item
        Name = 'HEADER3'
        Value = ''
      end
      item
        Name = 'HEADER4'
        Value = ''
      end
      item
        Name = 'EMP_NOME'
        Value = ''
      end
      item
        Name = 'OVERLAY'
        Value = ''
      end
      item
        Name = 'EMP_ENQUADRAMENTO'
        Value = ''
      end
      item
        Name = 'CSOSN-CST'
        Value = ''
      end
      item
        Name = 'CANHOTO'
        Value = ''
      end
      item
        Name = 'SALDOACUMULADO'
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
        Frame.Width = 0.500000000000000000
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
          Left = 125.842765000000000000
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
          Left = 125.509431670000000000
          Top = 16.043740460000000000
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
          Left = 416.866575000000000000
          Top = 48.000000000000000000
          Width = 335.464440010000000000
          Height = 14.230983330000000000
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
          Left = 125.504020000000000000
          Top = 32.087480920000000000
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
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 125.504020000000000000
          Top = 48.131221390000000000
          Width = 287.663883340000000000
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
        Height = 226.771653540000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset30
        DataSetName = 'frxDBDataset30'
        RowCount = 0
        object Memo257: TfrxMemoView
          AllowVectorExport = True
          Top = 86.818939130000000000
          Width = 461.102660000000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 86.818939130000000000
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
            'DATA DE ENTRADA/SA'#205'DA')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 62.251978270000000000
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
            'DATA EMISS'#195'O')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 13.118088270000000000
          Width = 90.708720000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 13.118088270000000000
          Width = 102.047310000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'INSC. ESTADUAL')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 86.818939130000000000
          Width = 102.047310000000000000
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
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 62.251978270000000000
          Width = 68.031540000000000000
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
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 62.251978270000000000
          Width = 34.015770000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 62.251978270000000000
          Width = 291.023810000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 62.251978270000000000
          Width = 272.126160000000000000
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
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Top = 177.637795280000000000
          Width = 453.543600000000000000
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
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Top = 13.118120000000000000
          Width = 438.425480000000000000
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
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 23.456702670000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CLIENTE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CLIENTE"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 37.685049130000000000
          Width = 438.425480000000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 37.685049130000000000
          Width = 162.519790000000000000
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 72.590560940000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'VED_DTEMISSAO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_DTEMISSAO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 48.023631800000000000
          Width = 430.866420000000000000
          Height = 13.228346460000000000
          DataField = 'VED_ENDERECO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_ENDERECO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 72.590560940000000000
          Width = 283.464750000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CIDADE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CIDADE"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 48.023631800000000000
          Width = 154.960730000000000000
          Height = 13.228346460000000000
          DataField = 'VED_COMPLEMENTO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 97.157521800000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'VED_DTSAIDA'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_DTSAIDA"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 72.590560940000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'VED_ESTADO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_ESTADO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 72.590560940000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CEP'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CEP"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 97.157521800000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          DataField = 'VED_FONE1'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_FONE1"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 23.456670940000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CODIGO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_CODIGO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 13.118120000000000000
          Width = 124.724431420000000000
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
          Left = 442.205010000000000000
          Top = 23.456702670000000000
          Width = 117.165371420000000000
          Height = 13.228346460000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."DOCUMENTO"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 37.685049130000000000
          Width = 64.252010000000000000
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
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 48.023631800000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          DataField = 'VED_NUMERO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_NUMERO"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 23.456670940000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          DataField = 'VED_IE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_IE"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Top = 128.504020000000000000
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
            'TOTAL PRODUTOS')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 138.842602670000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TOTALPRODUTOS'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_TOTALPRODUTOS"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 128.504020000000000000
          Width = 105.826840000000000000
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
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 138.842602670000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TOTALSERVICOS'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_TOTALSERVICOS"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 128.504020000000000000
          Width = 105.826840000000000000
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
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 138.842602670000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VALORFRETE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_VALORFRETE"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 128.504020000000000000
          Width = 105.826840000000000000
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
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 128.504020000000000000
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
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 128.504020000000000000
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
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 138.842602670000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_DESCPORC'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_DESCPORC"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 138.842602670000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_PESOBRUTO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_PESOBRUTO"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 138.842602670000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_PESOLIQ'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_PESOLIQ"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Top = 153.070844170000000000
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
            'BASE ICMS')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 163.409426840000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_BASEICMS'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_BASEICMS"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 153.070844170000000000
          Width = 105.826840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR ICMS')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 163.409426840000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TOTALICMS'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_TOTALICMS"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 153.070844170000000000
          Width = 105.826840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'BASE ICMS ST')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 163.409426840000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_BASEICMSST'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_BASEICMSST"]')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 153.070844170000000000
          Width = 105.826840000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VALOR ICMS ST')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 153.070844170000000000
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
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 153.070844170000000000
          Width = 109.606370000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 163.409426840000000000
          Width = 98.267780000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TOTALICMSST'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_TOTALICMSST"]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 163.409426840000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TOTALIPI'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_TOTALIPI"]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 163.409426840000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VALORTOTAL'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_VALORTOTAL"]')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 187.842519690000000000
          Width = 389.291590000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TRANSPNOME'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_TRANSPNOME"]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 177.637795280000000000
          Width = 128.504020000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 187.842519690000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          DataField = 'VED_FRETE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_FRETE"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 177.637795280000000000
          Width = 86.929190000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 187.842519690000000000
          Width = 79.370130000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VEICULOPLACA'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_VEICULOPLACA"]')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 177.637795280000000000
          Width = 34.015770000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 187.842519690000000000
          Width = 26.456710000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VEICULOPLACAUF'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_VEICULOPLACAUF"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Top = 202.204724410000000000
          Width = 377.953000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONDI'#199#195'O PAGAMENTO')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 212.409448820000000000
          Width = 313.700990000000000000
          Height = 13.228346460000000000
          DataField = 'CPG_DESCRICAO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."CPG_DESCRICAO"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 177.637795280000000000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VOLUMES')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 187.842519690000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VOLUMES'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_VOLUMES"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 202.204724410000000000
          Width = 377.953000000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VENDEDOR')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 212.409448820000000000
          Width = 313.700990000000000000
          Height = 13.228346460000000000
          DataField = 'VEN_NOME'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VEN_NOME"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 187.842519690000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'VED_TRANSPORTADORA'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_TRANSPORTADORA"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 212.409448820000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CONDICAO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CONDICAO"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 212.409448820000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'VED_VENDEDOR'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_VENDEDOR"]')
          ParentFont = False
        end
        object Memo252: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 72.590560940000000000
          Width = 264.567100000000000000
          Height = 13.228346460000000000
          DataField = 'VED_BAIRRO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_BAIRRO"]')
          ParentFont = False
        end
        object Memo253: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 23.456702670000000000
          Width = 374.173470000000000000
          Height = 13.228346460000000000
          DataField = 'VED_NOME'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_NOME"]')
          ParentFont = False
        end
        object Memo254: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 48.133882670000000000
          Width = 83.149601420000000000
          Height = 13.228346460000000000
          DataField = 'VED_NFE'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_NFE"]')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 86.818939130000000000
          Width = 102.047310000000000000
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
        object Memo256: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 97.157521800000000000
          Width = 94.488250000000000000
          Height = 13.228346460000000000
          DataField = 'CLI_FONE2'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."CLI_FONE2"]')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 97.157521800000000000
          Width = 453.543600000000000000
          Height = 13.228346460000000000
          DataField = 'VED_CONTATO'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CONTATO"]')
          ParentFont = False
        end
        object Memo259: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 128.504020000000000000
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
            'VALOR DESCONTO')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 138.842602670000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'VED_DESCVALOR'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
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
            '[frxDBDataset30."VED_DESCVALOR"]')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 153.070844170000000000
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
            'SALDO DE PONTOS')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 163.409426840000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          DataField = 'CLI_PONTOS'
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."CLI_PONTOS"]')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Top = 116.165430000000000000
          Width = 188.976500000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DO PEDIDO')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 188.976500000000000000
          Height = 13.228339130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DO CLIENTE')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 37.795300000000000000
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
            'NOTA FISCAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Frame.Width = 0.500000000000000000
        Height = 79.370130000000000000
        Top = 873.071430000000000000
        Width = 755.906000000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
          Top = 61.472480000000000000
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
            'VED30 - Runtime Sistemas')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 61.472480000000000000
          Width = 339.821583340000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Impresso em [DATE] [TIME]')
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 623.622391420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'RECEBEMOS OS PRODUTOS CONSTANTES NO PEDIDO DE VENDA INDICADO AO ' +
              'LADO DE')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Top = 35.905519130000000000
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
            'DATA DE RECEBIMENTO')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 35.905519130000000000
          Width = 230.551271420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 35.905519130000000000
          Width = 279.685161420000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 11.338590000000000000
          Width = 132.283491420000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'PEDIDO N'#186)
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 30.236240000000000000
          Width = 109.606311420000000000
          Height = 24.566929130000000000
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          DisplayFormat.FormatStr = '00000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30."VED_CODIGO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.559060000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 21.677172670000000000
          Width = 616.063390000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMP_NOME]')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 46.244101800000000000
          Width = 272.126160000000000000
          Height = 13.228346460000000000
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          DisplayFormat.FormatStr = '0000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_NOME"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 91.464610870000000000
        Top = 759.685530000000000000
        Width = 755.906000000000000000
        PrintAtBottom = True
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Width = 226.771741420000000000
          Height = 9.448809130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.204724410000000000
          Width = 748.346603150000000000
          Height = 77.480356460000000000
          DataSet = frxDBDataset30
          DataSetName = 'frxDBDataset30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30."VED_OBSERVACOES"]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 487.559311420000000000
          Height = 9.448809130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'SEM VALOR FISCAL - N'#195'O SUBSTITUI A NOTA FISCAL [SALDOACUMULADO]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Color = clSilver
        Frame.Style = fsDot
        Frame.Typ = [ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 634.961040000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBDataset30a
        DataSetName = 'frxDBDataset30a'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_PRODUTO'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_PRODUTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251900160000000000
          Width = 309.921259840000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'DESCRICAO'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset30a."DESCRICAO"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 26.456668500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_UNIDADE'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_UNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 52.913378500000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_QUANTIDADE'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_VALORUNIT'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_VALORUNIT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_VALORTOTAL'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_VALORTOTAL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_BASEICMS'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_BASEICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_VALORICMS'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_VALORICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo237: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.860726400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_ALIQICMS'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_ALIQICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo238: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.860726400000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VEI_ALIQIPI'
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30a."VEI_ALIQIPI"]')
          ParentFont = False
          WordWrap = False
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
        Top = 672.756340000000000000
        Width = 755.906000000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
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
          Left = 64.251900160000000000
          Width = 309.921259840000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
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
          Left = 374.173470000000000000
          Width = 26.456668500000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
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
          Left = 400.630180000000000000
          Width = 52.913378500000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795182830000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 64.252010000000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 22.860726400000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 22.860726400000000000
          Height = 3.779527559055120000
          StretchMode = smActualHeight
          DataSet = frxDBDataset30a
          DataSetName = 'frxDBDataset30a'
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
        Top = 699.213050000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 143.622140000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object MemoWatermark: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.944890430000000000
          Width = 748.346940000000000000
          Height = 24.566929130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 575293183
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Font.Quality = fqAntialiased
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[OVERLAY]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 517.795610000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset30b
        DataSetName = 'frxDBDataset30b'
        RowCount = 0
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Width = 90.708695590000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'REE_NUMDOCTO'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset30b."REE_NUMDOCTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 347.716559840000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'REE_DESCRICAO'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset30b."REE_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425111420000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'REE_DTEMISSAO'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30b."REE_DTEMISSAO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015652830000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'REE_DTVENCIMENTO'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30b."REE_DTVENCIMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'REE_VALOR'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset30b."REE_VALOR"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'STATUS'
          DataSet = frxDBDataset30b
          DataSetName = 'frxDBDataset30b'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset30b."STATUS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
        Height = 9.448816460000000000
        Top = 555.590910000000000000
        Width = 755.906000000000000000
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 13.228346460000000000
        Top = 480.000310000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = -0.000146459999999987
          Width = 90.708695590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DOCUMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708610160000000000
          Top = -0.000146459999999987
          Width = 347.716559840000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425111420000000000
          Top = -0.000146459999999987
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA EMISS'#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015652830000000000
          Top = -0.000146459999999987
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA VENCIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = -0.000146459999999987
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = -0.000146459999999987
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.787406460000000000
        Top = 589.606680000000000000
        Width = 755.906000000000000000
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251985590000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551593620000000000
          Width = 45.537906400000000000
          Height = 10.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'ALIQUOTAS')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251900160000000000
          Width = 309.921259840000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543231420000000000
          Width = 64.252010000000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR UNIT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795182830000000000
          Width = 64.252010000000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 26.456668500000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 52.913378500000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 10.582677170000000000
          Width = 22.860726400000000000
          Height = 10.204724410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 10.582677170000000000
          Width = 22.860726400000000000
          Height = 10.204724410000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 64.252010000000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 64.252010000000000000
          Height = 20.787406460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15461355
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Height = 13.228346460000000000
        Top = 442.205010000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset30c
        DataSetName = 'frxDBDataset30c'
        RowCount = 0
        Stretched = True
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 718.110700000000000000
          Height = 13.228346460000000000
          StretchMode = smMaxHeight
          DataField = 'VED_CONDICAOMEMO'
          DataSet = frxDBDataset30c
          DataSetName = 'frxDBDataset30c'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset30c."VED_CONDICAOMEMO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset30: TfrxDBDataset
    UserName = 'frxDBDataset30'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VED_BAIRRO=VED_BAIRRO'
      'VED_BASEICMS=VED_BASEICMS'
      'VED_BASEICMSST=VED_BASEICMSST'
      'VED_CEP=VED_CEP'
      'VED_CIDADE=VED_CIDADE'
      'VED_CLIENTE=VED_CLIENTE'
      'VED_CNPJ=VED_CNPJ'
      'VED_CODIGO=VED_CODIGO'
      'VED_COMPLEMENTO=VED_COMPLEMENTO'
      'VED_CONDICAO=VED_CONDICAO'
      'VED_CONTATO=VED_CONTATO'
      'VED_CPF=VED_CPF'
      'VED_DTEMISSAO=VED_DTEMISSAO'
      'VED_DTSAIDA=VED_DTSAIDA'
      'VED_ENDERECO=VED_ENDERECO'
      'VED_ESTADO=VED_ESTADO'
      'VED_FONE1=VED_FONE1'
      'VED_FRETE=VED_FRETE'
      'VED_IE=VED_IE'
      'VED_NFE=VED_NFE'
      'VED_NOME=VED_NOME'
      'VED_NOTA=VED_NOTA'
      'VED_NUMERO=VED_NUMERO'
      'VED_OBSERVACOES=VED_OBSERVACOES'
      'VED_PESOBRUTO=VED_PESOBRUTO'
      'VED_PESOLIQ=VED_PESOLIQ'
      'VED_TOTALICMS=VED_TOTALICMS'
      'VED_TOTALICMSST=VED_TOTALICMSST'
      'VED_TOTALIPI=VED_TOTALIPI'
      'VED_TOTALPRODUTOS=VED_TOTALPRODUTOS'
      'VED_TOTALSERVICOS=VED_TOTALSERVICOS'
      'VED_TRANSPNOME=VED_TRANSPNOME'
      'VED_TRANSPORTADORA=VED_TRANSPORTADORA'
      'VED_DESCPORC=VED_DESCPORC'
      'VED_DESCVALOR=VED_DESCVALOR'
      'VED_VALORFRETE=VED_VALORFRETE'
      'VED_VALORTOTAL=VED_VALORTOTAL'
      'VED_VEICULOPLACA=VED_VEICULOPLACA'
      'VED_VEICULOPLACAUF=VED_VEICULOPLACAUF'
      'VED_VENDEDOR=VED_VENDEDOR'
      'VED_VOLUMES=VED_VOLUMES'
      'CLI_FONE2=CLI_FONE2'
      'CLI_PONTOS=CLI_PONTOS'
      'CPG_DESCRICAO=CPG_DESCRICAO'
      'VEN_NOME=VEN_NOME'
      'DOCUMENTO=DOCUMENTO')
    DataSet = QY30
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 136
  end
  object DS30: TDataSource
    DataSet = QY30
    Left = 152
    Top = 88
  end
  object frxDBDataset30a: TfrxDBDataset
    UserName = 'frxDBDataset30a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VEI_ALIQICMS=VEI_ALIQICMS'
      'VEI_ALIQICMSST=VEI_ALIQICMSST'
      'VEI_ALIQIPI=VEI_ALIQIPI'
      'VEI_BASEICMS=VEI_BASEICMS'
      'VEI_CFOP=VEI_CFOP'
      'VEI_CSTICMS=VEI_CSTICMS'
      'VEI_CLASSFISCAL=VEI_CLASSFISCAL'
      'VEI_ORIGEM=VEI_ORIGEM'
      'VEI_PRODUTO=VEI_PRODUTO'
      'VEI_QUANTIDADE=VEI_QUANTIDADE'
      'VEI_TIPO=VEI_TIPO'
      'VEI_UNIDADE=VEI_UNIDADE'
      'VEI_VALORICMS=VEI_VALORICMS'
      'VEI_VALORTOTAL=VEI_VALORTOTAL'
      'VEI_VALORUNIT=VEI_VALORUNIT'
      'DESCRICAO=DESCRICAO')
    DataSet = QY30a
    BCDToCurrency = False
    DataSetOptions = []
    Left = 152
    Top = 136
  end
  object frxDBDataset30b: TfrxDBDataset
    UserName = 'frxDBDataset30b'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REE_NUMDOCTO=REE_NUMDOCTO'
      'REE_DESCRICAO=REE_DESCRICAO'
      'REE_DTEMISSAO=REE_DTEMISSAO'
      'REE_DTVENCIMENTO=REE_DTVENCIMENTO'
      'REE_VALOR=REE_VALOR'
      'STATUS=STATUS')
    DataSet = QY30b
    BCDToCurrency = False
    DataSetOptions = []
    Left = 184
    Top = 136
  end
  object frxDBDataset30c: TfrxDBDataset
    UserName = 'frxDBDataset30c'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VED_CONDICAOMEMO=VED_CONDICAOMEMO')
    DataSet = QY30c
    BCDToCurrency = False
    DataSetOptions = []
    Left = 216
    Top = 136
  end
  object QY30: TFDQuery
    Connection = DMFirenet.FDConnection1
    Transaction = TR30
    SQL.Strings = (
      'select'
      'VED_BAIRRO,'
      'VED_BASEICMS,'
      'VED_BASEICMSST,'
      'VED_CEP,'
      'VED_CIDADE,'
      'VED_CLIENTE,'
      'VED_CNPJ,'
      'VED_CODIGO,'
      'VED_COMPLEMENTO,'
      'VED_CONDICAO,'
      'VED_CONTATO,'
      'VED_CPF,'
      'VED_DTEMISSAO,'
      'VED_DTSAIDA,'
      'VED_ENDERECO,'
      'VED_ESTADO,'
      'VED_FONE1,'
      'VED_FRETE,'
      'VED_IE,'
      'VED_NFE,'
      'VED_NOME,'
      'VED_NOTA,'
      'VED_NUMERO,'
      'VED_OBSERVACOES,'
      'VED_PESOBRUTO,'
      'VED_PESOLIQ,'
      'VED_TOTALICMS,'
      'VED_TOTALICMSST,'
      'VED_TOTALIPI,'
      'VED_TOTALPRODUTOS,'
      'VED_TOTALSERVICOS,'
      'VED_TRANSPNOME,'
      'VED_TRANSPORTADORA,'
      'VED_DESCPORC,'
      'VED_DESCVALOR,'
      'VED_VALORFRETE,'
      'VED_VALORTOTAL,'
      'VED_VEICULOPLACA,'
      'VED_VEICULOPLACAUF,'
      'VED_VENDEDOR,'
      'VED_VOLUMES,'
      'CLI_FONE2,'
      'CLI_PONTOS,'
      'CPG_DESCRICAO,'
      'VEN_NOME,'
      
        'iif(CLI_TIPOPESSOA='#39'J'#39',coalesce(VED_CNPJ,'#39#39'),coalesce(VED_CPF,'#39#39 +
        ')) as DOCUMENTO'
      'from VENDAS '
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO'
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO'
      'left join CONDICOES on VED_CONDICAO=CPG_CODIGO'
      'where VED_CODIGO=:codigo'
      '')
    Left = 120
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TR30: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DMFirenet.FDConnection1
    Left = 120
    Top = 232
  end
  object QY30a: TFDQuery
    MasterSource = DS30
    MasterFields = 'VED_CODIGO'
    Connection = DMFirenet.FDConnection1
    Transaction = TR30a
    SQL.Strings = (
      'select'
      'VEI_ALIQICMS,'
      'VEI_ALIQICMSST,'
      'VEI_ALIQIPI,'
      'VEI_BASEICMS,'
      'VEI_CFOP,'
      'VEI_CSTICMS,'
      'VEI_CLASSFISCAL,'
      'VEI_ORIGEM,'
      'VEI_PRODUTO,'
      'VEI_QUANTIDADE,'
      'VEI_TIPO,'
      'VEI_UNIDADE,'
      'VEI_VALORICMS,'
      'VEI_VALORTOTAL,'
      'VEI_VALORUNIT,'
      'VEI_DESCRICAO||'
      
        'iif(coalesce(VEI_COMPLEMENTO,'#39#39')<>'#39#39','#39' - '#39'||VEI_COMPLEMENTO,'#39#39')|' +
        '|'
      
        'iif(coalesce(VEI_LOTE,'#39#39')<>'#39#39','#39' - Lote: '#39'||VEI_LOTE,'#39#39') as DESCR' +
        'ICAO'
      'from VENDASITENS'
      'where VEI_VENDA=:codigo'
      'order by VEI_CODIGO'
      '')
    Left = 152
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR30a: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DMFirenet.FDConnection1
    Left = 152
    Top = 232
  end
  object QY30b: TFDQuery
    MasterSource = DS30
    MasterFields = 'VED_CODIGO'
    Connection = DMFirenet.FDConnection1
    Transaction = TR30b
    SQL.Strings = (
      'select '
      'REE_NUMDOCTO,'
      'REE_DESCRICAO,'
      'REE_DTEMISSAO,'
      'REE_DTVENCIMENTO,'
      'REE_VALOR,'
      'case '
      '  when REE_STATUS='#39'A'#39' then '#39'ABERTO'#39
      '  when REE_STATUS='#39'B'#39' then '#39'BAIXADO'#39
      '  when REE_STATUS='#39'C'#39' then '#39'CANCELADO'#39
      '  else '#39'---'#39
      'end as STATUS'
      'from RECEBER'
      'where REE_CLIENTE=:codigo and'
      'REE_NUMDOCTO like :numdocto'
      'order by REE_DTVENCIMENTO desc'
      '')
    Left = 184
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'NUMDOCTO'
        ParamType = ptInput
      end>
  end
  object TR30b: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DMFirenet.FDConnection1
    Left = 184
    Top = 232
  end
  object QY30c: TFDQuery
    MasterSource = DS30
    MasterFields = 'VED_CODIGO'
    Connection = DMFirenet.FDConnection1
    Transaction = TR30c
    SQL.Strings = (
      'select'
      'VED_CONDICAOMEMO'
      'from VENDAS '
      'where VED_CODIGO=:codigo'
      '')
    Left = 216
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TR30c: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DMFirenet.FDConnection1
    Left = 216
    Top = 232
  end
end
